import Types

def flip(func, x, y):
    return func(y, x)

def last_ele(collection):
    return collection[-1]

def p_op(op):
    return str(op).lower()

def p_reg1(reg):
    return str(reg).lower()

def p_reg(reg):
    return '%' + p_reg1(reg)

def p_seg1(seg):
    return str(seg).lower()

def p_seg(seg):
    return '%' + p_seg1(seg)

def p_typ(typ):
    return str(typ)

def p_assist(assist):
    return str(assist).lower()

def p_mathop(mathop):
    # not used
    return '+' if str(mathop).upper() == 'MATHADD' else '-'

def p_loc(loc):
    return '0x%X' % loc

def p_func(func):
    return func.func_name

def p_sec(sec):
    if sec.sec_name in ['.rodata', '.data', '.bss']: return 'ds'
    raise Exception('p sec')

def p_ptraddr(addr):
    #TODO: stub
    pass

def p_const(const):
    #TODO: stub
    pass

def p_exp(exp):
    #TODO: stub
    pass

def dec_hex(val):
    return '0x%X' % val

def p_single(p):
    return p_op(p)

def p_double(p, e):
    return p_op(p) + ' ' + p_exp(e)

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

def p_location(loc):
    return loc.loc_label

def p_prefix(pre):
    return ' lock ' if pre else ''

def get_loc(i):
    return i[-2]

def pp_print_instr(i):
    loc = get_loc(i)
    if loc.loc_visible: return p_location(loc)
    res = p_location(loc) + p_prefix(i[-1])
    if isinstance(i, Types.SingleInstr):
        res += p_single(i[0])
    elif isinstance(i, Types.DoubleInstr):
        res += p_double(i[0], i[1])
    elif isinstance(i, Types.TripleInstr):
        res += p_triple(i[0], i[1], i[2])
    elif isinstance(i, Types.FourInstr):
        res += p_four(i[0], i[1], i[2], i[3])
    return res

def pp_print_list(ilist):
    return map(pp_print_instr, ilist)

def pp_print_file(ilist):
    with open('final.s', 'a') as f:
        f.write('.section .text\n')
        f.writelines(ilist)
