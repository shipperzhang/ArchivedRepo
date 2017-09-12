from disasm import Types
from utils.pp_print import p_exp, p_reg
from utils.ail_utils import ELF_utils, unify_int_list, dec_hex


class lib32_helper(object):

    r = 6
    rv = 0
    pic_addr = ''
    reg_map = {'EAX': 0, 'EBX': 1, 'ECX': 2,
               'EDX': 3, 'EDI': 4, 'ESI': 5}

    def __init__(self, instrs):
        self.instr_list = instrs
        self.label = []
        self.instrs = []
        self.sec = []
        self.section_collect()
        with open('pic_thunk.info') as f:
            lib32_helper.pic_addr = '0x' + f.readline().strip().upper()

    @staticmethod
    def reg_to_index(reg):
        return lib32_helper.reg_map.get(reg, -1)

    @staticmethod
    def index_of_reg(reg):
        if reg not in lib32_helper.reg_map:
            raise Exception('unsupported register')
        return lib32_helper.reg_map[reg]

    @staticmethod
    def value_of_reg(e, l):
        if not isinstance(e, Types.Normal):
            raise Exception('Not a normal')
        return e + l.loc_addr

    @staticmethod
    def is_call_op(op):
        return op.upper().startswith('CALL')

    @staticmethod
    def is_get_pc_thunk(e):
        if isinstance(e, Types.CallDes):
            return lib32_helper.pic_addr in e.func_name
        elif isinstance(e, Types.Label):
            return lib32_helper.pic_addr in e
        return False

    @staticmethod
    def match_add(op):
        return op.upper() == 'ADD'

    @staticmethod
    def is_const(e):
        return isinstance(e, Types.Normal)

    @staticmethod
    def is_reg(r):
        return r in Types.CommonReg

    @staticmethod
    def match_get_pc_thunk(op, e):
        return lib32_helper.is_call_op(op) and \
            lib32_helper.is_get_pc_thunk(e)

    @staticmethod
    def match_global_tbl(op, e):
        es = p_exp(e)
        return lib32_helper.match_add(op) and \
            "_GLOBAL_OFFSET_TABLE_" in es

    @staticmethod
    def update_track(i):
        if not isinstance(i, Types.TripleInstr):
            raise Exception('unsupported pic register pattern')
        lib32_helper.r = lib32_helper.index_of_reg(i[1])
        lib32_helper.rv = lib32_helper.value_of_reg(i[2], i[3])
        return Types.TripleInstr((i[0], i[1], Types.Label('$_GLOBAL_OFFSET_TABLE_'), i[3], i[4]))

    def check_elf(self):
        return ELF_utils.elf_32() and ELF_utils.elf_lib()

    def v_exp(self, e):
        if isinstance(e, (Types.BinOP_PLUS, Types.BinOP_MINUS)):
            r1, addr = e
            if lib32_helper.reg_to_index(r1) == lib32_helper.r:
                addr = -addr if isinstance(e, Types.BinOP_MINUS) else addr
                des = lib32_helper.rv + addr
                s = self.check_sec(des)
                if s is not None:
                    s_label = 'S_' + dec_hex(des) + '@GOTOFF(' + p_reg(r1) + ')'
                    self.label.insert(0, des)
                    return Types.Label(s_label)
        return e

    def pic_locating(self, i):
        if isinstance(i, Types.DoubleInstr):
            return Types.DoubleInstr((i[0], self.v_exp(i[1]), i[2], i[3]))
        elif isinstance(i, Types.TripleInstr):
            return Types.TripleInstr((i[0], self.v_exp(i[1]), self.v_exp(i[2]), i[3], i[4]))
        elif isinstance(i, Types.FourInstr):
            return Types.FourInstr((i[0], i[1], self.v_exp(i[2]), i[3], i[4], i[5]))
        return i

    def __scan(self):
        i = 0
        self.instrs = []
        ilen = len(self.instr_list)
        while i < ilen:
            if i >= ilen: break
            h1 = self.instr_list[i]
            if i == ilen - 1:
                self.instrs.append(h1)
                break
            if isinstance(h1, Types.DoubleInstr) and \
               lib32_helper.match_get_pc_thunk(h1[0], h1[1]):
                h2 = lib32_helper.update_track(self.instr_list[i+1])
                self.instrs.append(h1)
                self.instrs.append(h2)
                i += 1
            else:
                self.instrs.append(self.pic_locating(h1))
            i += 1

    def traverse(self):
        if self.check_elf():
            self.__scan()
            return unify_int_list(self.label)
        self.instrs = self.instr_list
        return []

    def get_instrs(self):
        return self.instrs

    def section_collect(self):
        with open('sections.info') as f:
            for l in f:
                items = l.split()
                addr = int(items[1], 16)
                size = int(items[3], 16)
                self.sec.insert(0, Types.Section(items[0], addr, size))

    def check_sec(self, addr):
        for h in self.sec:
            b = h.sec_begin_addr
            e = b + h.sec_size
            if b <= addr < e: return h
        return None
