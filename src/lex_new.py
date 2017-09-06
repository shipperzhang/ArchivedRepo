import sys
import Types
from ail_utils import cat_from, split_by_list

class Lop(str): pass
class Lexp(str): pass
class Lloc(str): pass

def check_assist(exp):
    return exp in Types.AssistOp

def assist_exp(op, ass, exp, loc):
    items = exp.split(',')
    return (Lop(op), Lexp(ass), Lexp(items[0]), Lloc(loc)) \
        if  len(items) == 1 \
        else (Lop(op), Lexp(ass), Lexp(items[0]), Lexp(items[1]), Lloc(loc))

def char_collect(s, f, c):
    try: res = s[f:].index(c) + f
    except: res = None
    return res

def char_collect_all(s, c):
    start = 0
    res = []
    clen = len(c)
    while True:
        start = s.find(c, start)
        if start == -1: break
        res.append(start)
        start += clen
    return res

def bracket_collect(s):
    return zip(char_collect_all(s, '('), 
               char_collect_all(s, ')'))

def comma_collect(s):
    return char_collect_all(s, ',')

def comma_in_brackets(e):
    clist = comma_collect(e)
    blist = bracket_collect(e)
    return filter(lambda com: not any(map(lambda br: br[0] < com < br[1], blist)), clist)

def single_instr(op, l):
    return (Lop(op), Lloc(l))

def double_instr(op, e, l):
    return (Lop(op), Lexp(e.strip()), Lloc(l))

def triple_instr(op, el, l):
    return (Lop(op), Lexp(el[0].strip()), Lexp(el[1].strip()), Lloc(l))

def fourth_instr(op, el, l):
    return (Lop(op), Lexp(el[0].strip()), Lexp(el[1].strip()), Lexp(el[2].strip()), Lloc(l)) 
    
def do_exp(e, op, l):
    cl = comma_in_brackets(e)
    cl_len = len(cl)
    if cl_len == 0:
        return double_instr(op, e, l)
    elif cl_len == 1:
        el = split_by_list(e, cl)
        return triple_instr(op, el, l)
    elif cl_len == 2:
        el = split_by_list(e, cl)
        return fourth_instr(op, el, l)
    raise Exception("unsupported exp length")

def lexer1(instr, location):
    instr = instr.strip()
    location = '0x' + location.strip()
    tokens = instr.split()
    op_str = tokens[0]
    if len(tokens) == 1:
        return single_instr(op_str, location)
    elif check_assist(tokens[1]):
        return assist_exp(op_str, tokens[1], cat_from(tokens, 2, ' '), location)
    return do_exp(cat_from(tokens, 1, ' '), op_str, location)

def p_print(lexme=None):
    if lexme is None: print ' (End)'
    else:
        pref = {Lop: 'Op', Lexp: 'Exp', Lloc: 'Loc'}
        sys.stdout.write(' (' + pref[lexme.__class__] + ' ' + lexme + ')')

def prefix_identify(instr):
    return 'lock ' in instr

def prefix_sub(instr):
    return instr.replace('lock ', '') if 'lock ' in instr else instr

def lexer(instr, location):
    return lexer1(instr, location)
