from disasm import Types
from utils.ail_utils import bbn_byloc, read_file, get_loc, get_op, get_cf_des


class stack_of_loc(object):
    def __init__(self):
        self.loclist = []
    def push(self, x):
        self.loclist.append(x)
    def pop(self):
        return self.loclist.pop()
    def peek(self):
        return self.loclist[-1]
    def size(self):
        return len(self.loclist)

class simple_queue(object):
    def __init__(self):
        self.queue = []
    def add(self, elem):
        self.queue.append(elem)
    def get(self):
        return self.queue.pop(0)
    def size(self):
        return len(self.queue)
    def exists(self, func):
        return any(map(func, self.queue))


class dis_validator(object):

    icf_stack = stack_of_loc()

    def __init__(self):
        self.looking_for_cfd = False
        self.text_secs = []
        self.text_mem_addrs = []
        self.text_mem_arr = [0]
        self.locs = [] # This could be a set
        self.up_bound = Types.Loc('', 0, True)
        self.low_bound = Types.Loc('', 0, True)
        self.trim_tbl = {}
        self.five_q = simple_queue()

    def text_sec_collect(self):
        def secmapper(l):
            items = l.split()
            return (int(items[1], 16), int(items[3], 16))
        lines = read_file('text_sec.info')
        self.text_secs = map(secmapper, lines)[::-1]
        lines = read_file('text_mem.info')
        self.text_mem_addrs = map(lambda l: int(l.strip().rstrip(':'), 16), lines)
        self.text_mem_arr = list(self.text_mem_addrs)

    def invalid_opcode(self, instr):
        return instr[0] in Types.ErrorOp

    def is_des(self, e):
            if isinstance(e, Types.JumpDes): return e
            elif isinstance(e, Types.CallDes) and not e.is_lib:
                try: return int(e.func_name[2:], 16)
                except: return None
            return None

    def is_cp(self, op):
        return op in Types.JumpOp or op == 'CALL'

    def invalid_transfer(self, instr):
        is_outside = lambda d: any(map(lambda e: e[0] + e[1] <= d < e[0], self.text_secs))
        is_inside = lambda d: bbn_byloc(d, self.text_mem_arr)
        if isinstance(instr, Types.DoubleInstr) and self.is_cp(instr[0]):
            res = self.is_des(instr[1])
            return False if res is None else (is_outside(res) or is_inside(res))
        return False

    def visit(self, instrlist):
        self.locs = filter(lambda i: self.invalid_opcode(i) or self.invalid_transfer(i), instrlist)
        self.locs = map(lambda i: get_loc(i).loc_addr, self.locs)
        if len(self.locs) != 0: self.validate(instrlist)
        return instrlist

    def trim_results(self):
        return self.trim_tbl.items()

    def update_trimtbl(self, b, e):
        if b in self.trim_tbl:
            if e > self.trim_tbl[b]: self.trim_tbl[b] = e

    def is_icf(self, p, e):
        if e is None: return False
        return self.is_cp(p) and isinstance(e, Types.StarDes)

    def update_cfd(self, index, instrlist):
        if not self.looking_for_cfd: return
        tl = instrlist[index:index+5]
        inv = lambda i: get_loc(i).loc_addr in self.locs
        if not any(map(inv, tl)):
            self.looking_for_cfd = False
            self.update_trimtbl(self.up_bound.loc_addr, get_loc(tl[0]).loc_addr)

    def update_cft_track(self, i):
        self.five_q.add(i)
        if self.five_q.size() == 6: self.five_q.get()

    def update_cft_stack(self, instr):
        inv = lambda i: get_loc(i).loc_addr in self.locs
        if not self.five_q.exists(inv):
            dis_validator.icf_stack.push(get_loc(instr))

    def validate(self, instrlist):
        self.five_q = simple_queue()
        for (index, i) in enumerate(instrlist):
            loc = get_loc(i)
            if loc.loc_addr in self.locs:
                self.up_bound = dis_validator.icf_stack.pop()
                self.looking_for_cfd = True
            else:
                if len(loc.loc_label) > 1:
                    self.update_cfd(index)
                    self.update_cft_track(i)
                else:
                    p = get_op(i); e = get_cf_des(i)
                    if p == 'CALL':
                        print "detected call instruction in disassembly validator"
                        self.update_cfd(index + 1)
                        if self.is_icf(p, e): self.update_cft_stack(i)
                    elif self.is_icf(p, e):
                        self.update_cft_stack(i)
                    self.update_cft_track(i)
