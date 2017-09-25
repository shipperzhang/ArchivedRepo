import Types
import config
from utils.ail_utils import cat_from, split_by_list

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

if config.arch == config.ARCH_X86:
    def comma_in_brackets(e):
        clist = comma_collect(e)
        blist = bracket_collect(e)
        return filter(lambda com: not any(map(lambda br: br[0] < com < br[1], blist)), clist)
else:
    def comma_in_brackets(e):
        clist = comma_collect(e)
        blist = zip(char_collect_all(e, '{'), char_collect_all(e, '}')) if '{' in e \
                else zip(char_collect_all(e, '['), char_collect_all(e, ']'))
        return filter(lambda com: not any(map(lambda br: br[0] < com < br[1], blist)), clist)

def do_exp(e, op, l):
    cl = comma_in_brackets(e)
    cl_len = len(cl)
    if cl_len == 0:
        return (Lop(op), Lexp(e), Lloc(l))
    elif cl_len < 4 or (config.arch == config.ARCH_ARMT and cl_len == 5):
        return (Lop(op),) + tuple(map(lambda e: Lexp(e.strip()), split_by_list(e, cl))) + (Lloc(l),)
    raise Exception("Unsupported exp length: " + str(cl_len))

def prefix_sub(instr):
    return instr.replace('lock ', '') if 'lock ' in instr else instr

def lexer(instr, location):
    instr = instr.strip()
    location = '0x' + location.strip()
    tokens = instr.split()
    op_str = tokens[0]
    if len(tokens) == 1:
        return (Lop(op_str), Lloc(location))
    elif check_assist(tokens[1]):
        return assist_exp(op_str, tokens[1], cat_from(tokens, 2, ' '), location)
    return do_exp(cat_from(tokens, 1, ' '), op_str, location)
