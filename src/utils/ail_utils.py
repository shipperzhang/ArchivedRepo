import time
import config
from disasm import Types

def unify_int_list(intlist):
    return sorted(set(intlist))

def unify_str_list(strlist):
    return sorted(set(strlist))

def unify_funclist_by_name(funclist):
    return {f.func_name: f for f in funclist}.values()

def unify_funclist_by_addr(funclist):
    res = []
    for i in range(len(funclist)-1):
        h1 = funclist[i]
        h2 = funclist[i+1]
        if h1.func_begin_addr == h2.func_begin_addr:
            if 'S_0x' in h2.func_name: funclist[i+1] = h1
            else: res.append(h1)
        else: res.append(h1)
    res.append(funclist[-1])
    return res

def unify_hash_list(h):
    #stub never used
    pass

def string_to_int32(s):
    return int(s)

def compare_loc(l1, l2):
    return l1.loc_addr == l2.loc_addr and l1.loc_label == l2.loc_label

def get_loc(instr):
    return instr[-2]

def set_loc(instr, loc):
    t = type(instr)
    l = len(instr)
    return t(instr[:l-2] + (loc,) + instr[-1:])

def get_addr(instr):
    return get_loc(instr).loc_addr

def get_label(instr):
    return get_loc(instr).loc_label

def update_label(instr, label):
    loc = get_loc(instr)
    loc.loc_label = label
    return set_loc(instr, loc)

def get_op(instr):
    return instr[0]

def get_cf_des(instr):
    return instr[1] if isinstance(instr, Types.DoubleInstr) else None

def get_exp_1(instr):
    if isinstance(instr, Types.SingleInstr): raise Exception('No exp in single')
    return instr[1]

def read_file(filename):
    with open(filename) as f:
        lines = f.readlines()
    return map(str.rstrip, lines)

def dec_hex(val):
    return '0x%X' % val

def print_loclist(loclist):
    for loc in loclist:
        print loc.loc_label
        print dec_hex(loc.loc_addr)

def print_addrlist(intlist):
    print '\n'.join(map(dec_hex, intlist))

# zip already exists in python :D

def cat_from(strlist, v, suf):
    # return ''.join(map(lambda s: s + suf, strlist[v:]))
    return suf.join(strlist[v:])

def split_by_list(s, intlist):
    res = []
    points = [0] + intlist + [len(s)]
    for i in range(len(points)-1):
        res.append(s[points[i]:points[i+1]])
        points[i+1] += 1
    return res

def int_of_string_opt(s, base=10):
    try: return int(s, base)
    except: return None

def print_exp_type(exp):
    if isinstance(exp, Types.Const): print 'const'
    elif isinstance(exp, Types.Symbol): print 'symbol'
    elif isinstance(exp, Types.RegClass): print 'reg'
    elif isinstance(exp, Types.AssistOpClass): print 'assist'
    elif isinstance(exp, Types.Ptr): print 'ptr'
    elif isinstance(exp, Types.Label): print 'label'

def print_instr_type(instr):
    print instr.__class__.__name__

def sort_loc(loclist):
    return sorted(loclist, cmp=lambda l1,l2: l1.loc_addr - l2.loc_addr)

def get_instr_byloc(instrlist, loclist):
    res = []
    i = 0; j = 0
    while j < len(loclist):
        iloc = get_loc(instrlist[i])
        if iloc.loc_addr == loclist[j].loc_addr:
            res.append(instrlist[i])
            j += 1
        i += 1
    return res

def recover_addr_from_label(lab):
    lab = lab.strip()
    if lab.startswith('S_0x'):
        return int(lab[2:], 16)
    return -1

def get_next_bb(sn):
    assert('BB_' in sn)
    return 'BB_' + str(int(sn.strip()[3:]) + 1)

def memo_rec(f):
    # stub not used
    pass

def memo(f):
    m = {}
    def func(x):
        if x in m: return m[x]
        m[x] = f(x)
        return m[x]
    return func

def get_end_addr_sec(section):
    def addr_folder(acc, l):
        items = l.split()
        if items[0] == section:
            acc = int(items[1], 16) + int(items[3], 16)
        return acc
    lines = read_file('text_sec.info') + read_file('sections.info')
    with open('sec_all.info', 'w') as fw:
        fw.writelines(lines)
    return reduce(addr_folder, lines, 0)

def sec_end_memo():
    return memo(get_end_addr_sec)

def get_bbl(cfg):
    return unify_str_list(map(lambda e: e[0], cfg))

def f_instr(func, instrs):
    beg = func.func_begin_addr
    end = func.func_begin_addr
    return filter(lambda i: beg <= get_loc(i).loc_addr < end, instrs)

def bb_successors(cfg, b):
    res = []
    for e in cfg:
        if e[0] == b: res.insert(0, e[1][1])
    return unify_str_list(res)

def bb_predecessors(cfg, b):
    res = []
    for e in cfg:
        if e[1][1] == b: res.insert(0, e[0])
    return unify_str_list(res)

def bb_instrs(block, instrs):
    beg = block.bblock_begin_loc.loc_addr
    end = block.bblock_end_loc.loc_addr
    return filter(lambda i: beg <= get_loc(i).loc_addr <= end, instrs)

def remove_over_once(l):
    m = {}
    for ele in l:
        m[ele] = m.get(ele, 0) + 1
    return filter(lambda e: m[e] <= 1, l)

def bbn_byloc(e, ls):
    def bs(low, up):
        if low > up: return False
        mid = (low + up) >> 1
        if e == ls[mid]: return True
        elif e < ls[mid]: return bs(low, mid-1)
        return bs(mid+1, up)
    return bs(0, len(ls) - 1)


class ELF_utils(object):

    @staticmethod
    def elf_check(key):
        with open('elf.info') as f:
            line = f.readline()
        return key in line

    @staticmethod
    def elf_32():
        return config.is_32

    @staticmethod
    def elf_64():
        return not config.is_32

    @staticmethod
    def elf_dynamic():
        return config.is_dynamic

    @staticmethod
    def elf_static():
        return not config.is_dynamic

    @staticmethod
    def elf_unstrip():
        return ELF_utils.elf_check('not stripped')

    @staticmethod
    def elf_strip():
        return not ELF_utils.elf_unstrip()

    @staticmethod
    def elf_lib():
        return config.is_lib

    @staticmethod
    def elf_exe():
        return not config.is_lib

    @staticmethod
    def elf_arm():
        return config.arch == config.ARCH_ARMT


class Opcode_utils(object):

    @staticmethod
    def is_control_des(i):
        return ':' in get_label(i)

    @staticmethod
    def is_func(e):
        return isinstance(e, Types.CallDes)

    @staticmethod
    def is_jmp(op):
        return op.upper() == 'JMP'

    @staticmethod
    def is_cond_jmp(op):
        return op.upper() != 'JMP' and op in Types.JumpOp

    @staticmethod
    def is_assign(op):
        return op in Types.AssignOp

    @staticmethod
    def is_mem_exp(e):
        if isinstance(e, Types.StarDes):
            return Opcode_utils.is_mem_exp(e.content)
        return isinstance(e, Types.Ptr)

    @staticmethod
    def is_push(op):
        return op.upper() == 'PUSH'

    @staticmethod
    def is_stack_op(op):
        return op in Types.StackOp

    @staticmethod
    def is_mov(op):
        return op.upper() in ['MOV', 'MOVL']

    @staticmethod
    def is_call(op):
        return op.upper() in ['CALL', 'CALLQ']

    @staticmethod
    def is_ret(op):
        return op.upper() in ['RET', 'RETN']

    @staticmethod
    def is_indirect(s):
        return isinstance(s, Types.StarDes)

    @staticmethod
    def is_control_transfer_op(op):
        return Opcode_utils.is_call(op) \
            or Opcode_utils.is_jmp(op) \
            or Opcode_utils.is_cond_jmp(op) \
            or Opcode_utils.is_ret(op)

    @staticmethod
    def is_cmp_op(op):
        return op in Types.CompareOp


class Exp_utils(object):

    @staticmethod
    def is_reg(e):
        return isinstance(e, Types.RegClass)

    @staticmethod
    def is_const(e):
        return isinstance(e, Types.Const)

    @staticmethod
    def is_mem(e):
        return isinstance(e, Types.Ptr)


class Instr_utils(object):

    @staticmethod
    def sort_it_update(instrs_update):
        #TODO: stub
        pass

    @staticmethod
    def set_update_fold(i, l, acc):
        #TODO: stub
        pass

    @staticmethod
    def sub_update_fold(i, l, i1, acc):
        #TODO: stub
        pass

    @staticmethod
    def eliminate_label(i):
        return update_label(i, '')

    @staticmethod
    def tem(i):
        #TODO: stub
        pass

    @staticmethod
    def insert_instrument_instrs(il, il_update):
        #TODO: stub
        pass

    @staticmethod
    def sub_single_instr(i1, il_update, il):
        #TODO: stub
        pass

    @staticmethod
    def instrument_update(il_update, il):
        #TODO: stub
        pass

    @staticmethod
    def instrument_instrs_func(il, il_update, update_func):
        #TODO: stub
        pass

    @staticmethod
    def insert_instr_list(d, il_update, il):
        #TODO: stub
        pass

    @staticmethod
    def insert_single_instr(d, loc, il_update, il):
        #TODO: stub
        pass

    @staticmethod
    def get_bb_by_last_instr(i, bbl):
        #TODO: stub
        pass

    @staticmethod
    def gen_nop(loc):
        #TODO: stub
        pass

    @staticmethod
    def gen_4_lea(loc):
        #TODO: stub
        pass

    @staticmethod
    def gen_6_lea(loc):
        #TODO: stub
        pass

    @staticmethod
    def is_mem_write_instr(i):
        #TODO: stub
        pass

    @staticmethod
    def is_jmp_instr(i):
        #TODO: stub
        pass


class Instr_visitor(object):

    @staticmethod
    def map_instr(judge, visitor, il):
        def aux(i):
            t = judge(i)
            if t is None: return i
            return visitor(i, t)
        return map(aux, il)


class Instr_template(object):

    @staticmethod
    def gen_logging_instrs(i, iloc):
        #TODO: stub
        pass


class BB_utils(object):

    @staticmethod
    def bb_map(bbl, instrs):
        #TODO: stub
        pass

    @staticmethod
    def bb_instrs(b, instrs):
        #TODO: stub
        pass

    @staticmethod
    def bbl_sort(bbl):
        #TODO: stub
        pass

    @staticmethod
    def get_range(b):
        #TODO: stub
        pass

    @staticmethod
    def start_with_fallthrough(b, bmap):
        #TODO: stub
        pass

    @staticmethod
    def start_with_cft(b, bmap):
        #TODO: stub
        pass

    @staticmethod
    def end_with_fallthrough(b, bmap):
        #TODO: stub
        pass

    @staticmethod
    def end_with_cft(b, bmap):
        #TODO: stub
        pass

    @staticmethod
    def start_with_jmp(b, bmap):
        #TODO: stub
        pass

    @staticmethod
    def start_with_mem_write(b, bmap):
        #TODO: stub
        pass

    @staticmethod
    def end_with_jmp(b, bmap):
        #TODO: stub
        pass

    @staticmethod
    def end_with_mem_write(b, bmap):
        #TODO: stub
        pass



class Bblock_visitor(object):

    @staticmethod
    def map_bblock(judge, visitor, bbl):
        def aux(i):
            t = judge(i)
            if t is None: return i
            return visitor(i, t)
        return map(aux, bbl)


class Func_utils(object):

    @staticmethod
    def func_map(fl, instrs):
        #TODO: stub
        pass

    @staticmethod
    def func_sort(fl):
        #TODO: stub
        pass

    @staticmethod
    def get_range(f):
        #TODO: stub
        pass

    @staticmethod
    def start_with_fallthrough(f, fmap):
        #TODO: stub
        pass

    @staticmethod
    def start_with_cft(f, fmap):
        #TODO: stub
        pass

    @staticmethod
    def end_with_fallthrough(f, fmap):
        #TODO: stub
        pass

    @staticmethod
    def end_with_cft(f, fmap):
        #TODO: stub
        pass

    @staticmethod
    def start_with_jmp(f, fmap):
        #TODO: stub
        pass

    @staticmethod
    def start_with_mem_write(f, fmap):
        #TODO: stub
        pass

    @staticmethod
    def end_with_jmp(f, fmap):
        #TODO: stub
        pass

    @staticmethod
    def end_with_mem_write(f, fmap):
        #TODO: stub
        pass

    @staticmethod
    def caller_collect(fn, instrs):
        #TODO: stub
        pass


class Function_visitor(object):

    @staticmethod
    def map_function(judge, visitor, fl):
        def aux(i):
            t = judge(i)
            if t is None: return i
            return visitor(i, t)
        return map(aux, fl)


class Cfg_utils(object):

    @staticmethod
    def mergeable_bb(cfg):
        #TODO: stub
        pass

    @staticmethod
    def map_jmp(visitor, instrs):
        #TODO: stub
        pass

    @staticmethod
    def map_mem_write(visitor, instrs):
        #TODO: stub
        pass


class Cg_utils(object):

    @staticmethod
    def show_call_graph(cg):
        #TODO: stub
        pass

    @staticmethod
    def show_cfi_specified_graph(cfi_cg):
        #TODO: stub
        pass

    @staticmethod
    def map_cfi_des(cfi_cg, fn, visit):
        #TODO: stub
        pass

    @staticmethod
    def map_cfi_des_cond(cfi_cg, fn, visit, judge):
        #TODO: stub
        pass


class Parallel(object):

    @staticmethod
    def pmap(ncores, f, il):
        #TODO: stub
        pass

    @staticmethod
    def piter(ncores, f, il):
        #TODO: stub
        pass

    @staticmethod
    def pfold(ncores, concat, f, il, acc):
        #TODO: stub
        pass


class Time_Record(object):

    @staticmethod
    def stamp():
        print 'stamp : %f sec' % time.time()

    @staticmethod
    def get_utime():
        return time.time()

    @staticmethod
    def elapsed(t):
        print 'execution elapsed time: %f sec' % (time.time() - t)


class UIO(object):

    @staticmethod
    def lines_from_file(filename):
        return read_file(filename)

    @staticmethod
    def write_file(ll, fn):
        with open(fn, 'a') as f:
            f.writelines(ll)
