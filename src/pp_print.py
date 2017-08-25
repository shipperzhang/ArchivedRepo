
def flip(func, x, y):
    return func(y, x)

def last_ele(collection):
    return collection[-1]

def p_op(op):
    return str(op).split()[-1].lower()

def p_reg1(reg):
    return str(reg).split()[-1].lower()

def p_reg(reg):
    return '%' + p_reg1(reg)

def p_seg1(seg):
    return str(seg).split()[-1].lower()

def p_seg(seg):
    return '%' + p_seg1(seg)

def p_typ(typ):
    return str(typ).split()[-1].lower()

def p_assist(assist):
    return str(assist).split()[-1].lower()

def p_mathop(mathop):
    return '+' if str(mathop).split()[-1] == 'MATHADD' else '-'

def p_loc(loc):
    return '0x%x' % loc

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
    #TODO: stub
    pass

def p_four(p, e1, e2, e3):
    #TODO: stub
    pass

def p_location(loc):
    return loc.loc_label

def p_prefix(pre):
    #TODO: stub
    pass

def get_loc(i):
    #TODO: stub
    pass

def pp_print_instr(i):
    #TODO: stub
    pass

def pp_print_list(ilist):
    return map(pp_print_instr, ilist)

def pp_print_file(ilist):
    with open('final.s', 'a') as f:
        f.write('.section .text\n')
        for l in ilist: f.write(l + '\n')
