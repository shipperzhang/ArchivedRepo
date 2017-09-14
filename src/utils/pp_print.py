import config
from disasm import Types

def flip(func, x, y):
    return func(y, x)

def last_ele(collection):
    return collection[-1]

def p_op(op):
    return str(op).lower()

def p_seg(seg):
    return '%' + str(seg).lower()

def p_typ(typ):
    return str(typ)

def p_assist(assist):
    return str(assist).lower()

def p_mathop(mathop):
    # not used
    return '+' if str(mathop).upper() == 'MATHADD' else '-'

def p_loc(loc):
    return '0x%x' % loc

def p_func(func):
    return func.func_name

def p_sec(sec):
    if sec.sec_name in ['.rodata', '.data', '.bss']: return 'ds'
    raise Exception('p sec')

if config.arch == config.ARCH_ARMT:
    ## ARM
    def p_reg(reg):
        return str(reg).lower()

    def p_shift(shift):
        return shift.op + ' #' + str(shift.val)

    def p_ptraddr(addr):
        if isinstance(addr, Types.UnOP):
            return '[' + p_reg(addr) + ']'
        elif isinstance(addr, Types.BinOP_PLUS):
            return '[' + p_reg(addr[0]) + (',#0x%x' % addr[1]) + (']!' if addr.preind else ']')
        elif isinstance(addr, Types.BinOP_PLUS_S):
            return '[' + p_reg(addr[0]) + ',' + addr[1] + (']!' if addr.preind else ']')
        elif isinstance(addr, Types.BinOP_MINUS):
            return '[' + p_reg(addr[0]) + (',#-0x%x' % addr[1]) + (']!' if addr.preind else ']')
        elif isinstance(addr, Types.BinOP_MINUS_S):
            return '[' + p_reg(addr[0]) + ',-' + addr[1] + (']!' if addr.preind else ']')
        elif isinstance(addr, Types.ThreeOP):
            return '[' + p_reg(addr[0]) + ',' + p_reg(addr[1]) + ',' + p_shift(addr[2]) + ']'

    def p_const(const):
        return ('#' if isinstance(const, Types.Normal) else '') + '0x%X' % const

    def p_symbol(sym):
        if isinstance(sym, Types.CallDes): return p_func(sym)
        elif isinstance(sym, Types.JumpDes): return p_loc(sym)
        elif isinstance(sym, Types.StarDes): return p_reg(sym.content)

    def p_reglist(exp):
        return '{' + ','.join(exp) + '}'

    def p_triple(p, e1, e2):
        p_str = p_op(p)
        e1_str = p_exp(e1)
        e2_str = p_exp(e2)
        return p_str + ' ' + e1_str + ',' + e2_str

    def p_four(p, e1, e2, e3):
        p_str = p_op(p)
        e1_str = p_exp(e1)
        e2_str = p_exp(e2)
        e3_str = p_exp(e3)
        return p_str + ' ' + e1_str + ',' + e2_str + ',' + e3_str

    def p_five(p, e1, e2, e3, e4):
        p_str = p_op(p)
        e1_str = p_exp(e1)
        e2_str = p_exp(e2)
        e3_str = p_exp(e3)
        e4_str = p_exp(e4)
        return p_str + ' ' + e1_str + ',' + e2_str + ',' + e3_str + ',' + e4_str

else:
    ## X86
    def p_reg(reg):
        return '%' + str(reg).lower()

    def p_ptraddr(addr):
        if isinstance(addr, Types.UnOP):
            return '(' + p_reg(addr) + ')'
        elif isinstance(addr, Types.BinOP_PLUS):
            return p_loc(addr[1]) + '(' + p_reg(addr[0]) + ')'
        elif isinstance(addr, Types.BinOP_PLUS_S):
            return addr[1] + '(' + p_reg(addr[0]) + ')'
        elif isinstance(addr, Types.BinOP_MINUS):
            return '-' + p_loc(addr[1]) + '(' + p_reg(addr[0]) + ')'
        elif isinstance(addr, Types.BinOP_MINUS_S):
            return '-' + addr[1] + '(' + p_reg(addr[0]) + ')'
        elif isinstance(addr, Types.ThreeOP):
            return '(' + p_reg(addr[0]) + ',' + p_reg(addr[1]) + ',' + p_loc(addr[2]) + ')'
        elif isinstance(addr, Types.FourOP_PLUS):
            return p_loc(addr[3]) + '(' + p_reg(addr[0]) + ',' + p_reg(addr[1]) + ',' + str(addr[2]) + ')'
        elif isinstance(addr, Types.FourOP_MINUS):
            return '-' + p_loc(addr[3]) + '(' + p_reg(addr[0]) + ',' + p_reg(addr[1]) + ',' + str(addr[2]) + ')'
        elif isinstance(addr, Types.FourOP_PLUS_S):
            return addr[3] + '(' + p_reg(addr[0]) + ',' + p_reg(addr[1]) + ',' + str(addr[2]) + ')'
        elif isinstance(addr, Types.FourOP_MINUS_S):
            return '-' + addr[3] + '(' + p_reg(addr[0]) + ',' + p_reg(addr[1]) + ',' + str(addr[2]) + ')'
        elif isinstance(addr, Types.JmpTable_PLUS):
            return p_loc(addr[0]) + '(,' + p_reg(addr[1]) + ',' + p_loc(addr[2]) + ')'
        elif isinstance(addr, Types.JmpTable_MINUS):
            return '-' + p_loc(addr[0]) + '(,' + p_reg(addr[1]) + ',' + p_loc(addr[2]) + ')'
        elif isinstance(addr, Types.JmpTable_PLUS_S):
            return addr[0] + '(,' + p_reg(addr[1]) + ',' + p_loc(addr[2]) + ')'
        elif isinstance(addr, Types.JmpTable_MINUS_S):
            return '-' + addr[0] + '(,' + p_reg(addr[1]) + ',' + p_loc(addr[2]) + ')'
        elif isinstance(addr, Types.SegRef):
            return p_seg(addr[0]) + ':' + p_exp(addr[1])

    def p_const(const):
        if isinstance(const, Types.Normal): return '$0x%X' % const
        elif isinstance(const, Types.Point): return '0x%X' % const

    def p_symbol(sym):
        if isinstance(sym, Types.CallDes): return p_func(sym)
        elif isinstance(sym, Types.JumpDes): return p_loc(sym)
        elif isinstance(sym, Types.StarDes): return '*' + p_exp(sym.content)

    def p_triple(p, e1, e2):
        p_str = p_op(p)
        e1_str = p_exp(e1)
        e2_str = p_exp(e2)
        if e2_str.lower() == 'pop':
            return p_str + ' ' + e2_str + ' ' + e1_str
        return p_str + ' ' + e2_str + ',' + e1_str

    def p_four(p, e1, e2, e3):
        p_str = p_op(p)
        e1_str = p_exp(e1)
        e2_str = p_exp(e2)
        e3_str = p_exp(e3)
        if e3_str in Types.AssistOp:
            return p_str + ' ' + e3_str + ' ' + e2_str + ',' + e1_str
        return p_str + ' ' + e3_str + ',' + e2_str + ',' + e1_str


def p_exp(exp):
    if isinstance(exp, Types.Const): return p_const(exp)
    elif isinstance(exp, Types.Symbol): return p_symbol(exp)
    elif isinstance(exp, Types.AssistOpClass): return p_assist(exp)
    elif isinstance(exp, Types.Ptr): return p_ptraddr(exp)
    elif isinstance(exp, Types.RegClass): return p_reg(exp)
    elif isinstance(exp, Types.Label): return str(exp)
    elif config.arch == config.ARCH_ARMT:
        if isinstance(exp, Types.ShiftExp): return p_shift(exp)
        elif isinstance(exp, Types.RegList): return p_reglist(exp)

def p_single(p):
    return p_op(p)

def p_double(p, e):
    return p_op(p) + ' ' + p_exp(e)

def p_location(loc):
    return loc.loc_label

def p_prefix(pre):
    return ' lock ' if pre else ''

def get_loc(i):
    return i[-2]

def pp_print_instr(i):
    loc = get_loc(i)
    if not loc.loc_visible: return p_location(loc)
    res = p_location(loc) + p_prefix(i[-1])
    if isinstance(i, Types.SingleInstr):
        res += p_single(i[0])
    elif isinstance(i, Types.DoubleInstr):
        res += p_double(i[0], i[1])
    elif isinstance(i, Types.TripleInstr):
        res += p_triple(i[0], i[1], i[2])
    elif isinstance(i, Types.FourInstr):
        res += p_four(i[0], i[1], i[2], i[3])
    elif isinstance(i, Types.FiveInstr):
        res += p_five(i[0], i[1], i[2], i[3], i[4])
    return res

def pp_print_list(ilist):
    return map(pp_print_instr, ilist)

def pp_print_file(ilist):
    with open('final.s', 'a') as f:
        f.write('.section .text\n')
        f.write('\n'.join(ilist))
