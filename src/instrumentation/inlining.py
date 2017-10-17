import config
from disasm import Types
from utils.ail_utils import ELF_utils, set_loc, get_loc

if ELF_utils.elf_64():
    # x86_64
    returnenc = [
        Types.DoubleInstr(('pushq', Types.RegClass('rax'), None, False)),
        Types.TripleInstr(('movq', Types.RegClass('rax'), Types.Label(config.gfree_xorkeyvar), None, False)),
        Types.TripleInstr(('xorq', Types.BinOP_PLUS((Types.RegClass('rsp'), 8)), Types.RegClass('rax'), None, False)),
        Types.DoubleInstr(('popq', Types.RegClass('rax'), None, False)),
    ]

    framecookiehead = [
        ['pushq', Types.Normal(0), None, False], # Fill with FuncID
        Types.DoubleInstr(('pushq', Types.RegClass('rax'), None, False)),
        Types.TripleInstr(('movq', Types.RegClass('rax'), Types.Label(config.gfree_cookiekeyvar), None, False)),
        Types.TripleInstr(('xorq', Types.BinOP_PLUS((Types.RegClass('rsp'), 8)), Types.RegClass('rax'), None, False)),
        Types.DoubleInstr(('popq', Types.RegClass('rax'), None, False)),
    ]

    framecookiecheck = [
        Types.DoubleInstr(('pushq', Types.RegClass('rax'), None, False)),
        Types.TripleInstr(('movq', Types.RegClass('rax'), Types.Label(config.gfree_cookiekeyvar), None, False)),
        ['xorq', Types.RegClass('rax'), Types.Normal(0), None, False], # Fill with FuncID
        ['cmpq', Types.RegClass('rax'), None, None, False],            # Fill with cookie position
        Types.DoubleInstr(('popq', Types.RegClass('rax'), None, False)),
        Types.DoubleInstr(('jne', Types.Label(config.gfree_failfuncname), None, False))
    ]

    framecookietail = [
        Types.TripleInstr(('add', Types.RegClass('rsp'), Types.Normal(8), None, False))
    ]

elif ELF_utils.elf_arm():
    # ARM
    returnenc = [
        Types.DoubleInstr(('push', Types.RegList((Types.RegClass('r0'),)), None, False)),
        Types.TripleInstr(('movw', Types.RegClass('r0'), Types.Label('#:lower16:' + config.gfree_xorkeyvar), None, False)),
        Types.TripleInstr(('movt', Types.RegClass('r0'), Types.Label('#:upper16:' + config.gfree_xorkeyvar), None, False)),
        Types.TripleInstr(('ldr', Types.RegClass('r0'), Types.UnOP('r0'), None, False)),
        Types.TripleInstr(('eor', Types.RegClass('lr'), Types.RegClass('r0'), None, False)),
        Types.DoubleInstr(('pop', Types.RegList((Types.RegClass('r0'),)), None, False))
    ]

    framecookiehead = [
        Types.TripleInstr(('str', Types.RegClass('r0'), Types.BinOP_MINUS((Types.RegClass('sp'), 8)), None, False)),
        Types.TripleInstr(('str', Types.RegClass('r1'), Types.BinOP_MINUS((Types.RegClass('sp'), 12)), None, False)),
        Types.TripleInstr(('movw', Types.RegClass('r0'), Types.Label('#:lower16:' + config.gfree_cookiekeyvar), None, False)),
        Types.TripleInstr(('movt', Types.RegClass('r0'), Types.Label('#:upper16:' + config.gfree_cookiekeyvar), None, False)),
        Types.TripleInstr(('ldr', Types.RegClass('r0'), Types.UnOP('r0'), None, False)),
        ['movw', Types.RegClass('r1'), None, None, False], # Fill with FuncID
        ['movt', Types.RegClass('r1'), None, None, False], # Fill with FuncID
        Types.TripleInstr(('eor', Types.RegClass('r0'), Types.RegClass('r1'), None, False)),
        Types.DoubleInstr(('push', Types.RegList((Types.RegClass('r0'),)), None, False)),
        Types.TripleInstr(('ldr', Types.RegClass('r1'), Types.BinOP_MINUS((Types.RegClass('sp'), 8)), None, False)),
        Types.TripleInstr(('ldr', Types.RegClass('r0'), Types.BinOP_MINUS((Types.RegClass('sp'), 4)), None, False))
    ]

    framecookiecheck = [
        Types.DoubleInstr(('push', Types.RegList((Types.RegClass('r0'), Types.RegClass('r1'))), None, False)),
        Types.TripleInstr(('movw', Types.RegClass('r0'), Types.Label('#:lower16:' + config.gfree_cookiekeyvar), None, False)),
        Types.TripleInstr(('movt', Types.RegClass('r0'), Types.Label('#:upper16:' + config.gfree_cookiekeyvar), None, False)),
        Types.TripleInstr(('ldr', Types.RegClass('r0'), Types.UnOP('r0'), None, False)),
        ['movw', Types.RegClass('r1'), None, None, False], # Fill with FuncID
        ['movt', Types.RegClass('r1'), None, None, False], # Fill with FuncID
        Types.TripleInstr(('eor', Types.RegClass('r0'), Types.RegClass('r1'), None, False)),
        ['ldr', Types.RegClass('r1'), None, None, False],  # Fill with cookie position
        Types.TripleInstr(('cmp', Types.RegClass('r0'), Types.RegClass('r1'), None, False)),
        Types.DoubleInstr(('bne', Types.Label(config.gfree_failfuncname), None, False)),
        Types.TripleInstr(('movw', Types.RegClass('r0'), Types.Label('#:lower16:.text-1'), None, False)),
        Types.TripleInstr(('movt', Types.RegClass('r0'), Types.Label('#:upper16:.text'), None, False)),
        ['cmp', None, Types.RegClass('r0'), None, False],  # Fill with call register
        Types.DoubleInstr(('pop', Types.RegList((Types.RegClass('r0'), Types.RegClass('r1'))), None, False)),
        Types.DoubleInstr(('it', Types.Label('hi'), None, False)),
        ['orrhi', None, Types.Normal(1), None, False]      # Fill with call register
    ]

    framecookietail = [
        Types.TripleInstr(('add', Types.RegClass('sp'), Types.Normal(4), None, False))
    ]

else:
    # x86_32
    returnenc = [
        Types.DoubleInstr(('pushl', Types.RegClass('eax'), None, False)),
        Types.TripleInstr(('movl', Types.RegClass('eax'), Types.Label(config.gfree_xorkeyvar), None, False)),
        Types.TripleInstr(('xorl', Types.BinOP_PLUS((Types.RegClass('esp'), 4)), Types.RegClass('eax'), None, False)),
        Types.DoubleInstr(('popl', Types.RegClass('eax'), None, False)),
    ]

    framecookiehead = [
        ['pushl', Types.Normal(0), None, False], # Fill with FuncID
        Types.DoubleInstr(('pushl', Types.RegClass('eax'), None, False)),
        Types.TripleInstr(('movl', Types.RegClass('eax'), Types.Label(config.gfree_cookiekeyvar), None, False)),
        Types.TripleInstr(('xorl', Types.BinOP_PLUS((Types.RegClass('esp'), 4)), Types.RegClass('eax'), None, False)),
        Types.DoubleInstr(('popl', Types.RegClass('eax'), None, False)),
    ]

    framecookiecheck = [
        Types.DoubleInstr(('pushl', Types.RegClass('eax'), None, False)),
        Types.TripleInstr(('movl', Types.RegClass('eax'), Types.Label(config.gfree_cookiekeyvar), None, False)),
        ['xorl', Types.RegClass('eax'), Types.Normal(0), None, False], # Fill with FuncID
        ['cmpl', Types.RegClass('eax'), None, None, False],            # Fill with cookie position
        Types.DoubleInstr(('popl', Types.RegClass('eax'), None, False)),
        Types.DoubleInstr(('jne', Types.Label(config.gfree_failfuncname), None, False))
    ]

    framecookietail = [
        Types.TripleInstr(('add', Types.RegClass('esp'), Types.Normal(4), None, False))
    ]


def set_inlineblocklocation(loc, block):
    return [set_loc(block[0], loc)] + \
        map(lambda i: set_loc(i, Types.Loc('', loc.loc_addr, loc.loc_visible)), block[1:])


if ELF_utils.elf_arm():
    # ARM
    def get_returnenc(curr_instr, popcookie=False):
        pre = list(framecookietail) if popcookie else []
        loc = get_loc(curr_instr)
        if curr_instr[0].upper().startswith('POP'):
            i = map(str.upper, curr_instr[1]).index('PC')
            rlist = curr_instr[1][:i] + ('lr',) + curr_instr[1][i+1:]
            pre.insert(0, Types.DoubleInstr((curr_instr[0], Types.RegList(rlist), None, False)))
            curr_instr = Types.DoubleInstr(('bx', Types.RegClass('lr'), None, False))
        return set_inlineblocklocation(loc, pre + returnenc) + \
               [set_loc(curr_instr, Types.Loc('', loc.loc_addr, loc.loc_visible))]

    def get_framecookiehead(curr_instr, funcID):
        loc = get_loc(curr_instr)
        tmp = list(framecookiehead)
        tmp[5][2] = Types.Normal(funcID[0])
        tmp[6][2] = Types.Normal(funcID[1])
        tmp[5] = Types.TripleInstr(tmp[5])
        tmp[6] = Types.TripleInstr(tmp[6])
        return set_inlineblocklocation(loc, returnenc + tmp) + \
               [set_loc(curr_instr, Types.Loc('', loc.loc_addr, loc.loc_visible))]

    def get_framecookiecheck(curr_instr, funcID, cookiePos=Types.BinOP_PLUS((Types.RegClass('r7'), 8))):
        loc = get_loc(curr_instr)
        tmp = list(framecookiecheck)
        tmp[4][2] = Types.Normal(funcID[0])
        tmp[5][2] = Types.Normal(funcID[1])
        tmp[7][2] = cookiePos
        tmp[-4][1] = curr_instr[1]
        tmp[-1][1] = curr_instr[1]
        tmp[4] = Types.TripleInstr(tmp[4])
        tmp[5] = Types.TripleInstr(tmp[5])
        tmp[7] = Types.TripleInstr(tmp[7])
        tmp[-4] = Types.TripleInstr(tmp[-4])
        tmp[-1] = Types.TripleInstr(tmp[-1])
        return set_inlineblocklocation(loc, tmp) + \
               [set_loc(curr_instr, Types.Loc('', loc.loc_addr, loc.loc_visible))]

else:
    # x86
    def get_returnenc(curr_instr, popcookie=False):
        loc = get_loc(curr_instr)
        return set_inlineblocklocation(loc, framecookietail + returnenc if popcookie else returnenc) + \
               [set_loc(curr_instr, Types.Loc('', loc.loc_addr, loc.loc_visible))]

    def get_framecookiehead(curr_instr, funcID):
        loc = get_loc(curr_instr)
        tmp = list(framecookiehead)
        tmp[0][1] = Types.Normal(funcID)
        tmp[0] = Types.DoubleInstr(tmp[0])
        return set_inlineblocklocation(loc, returnenc + tmp) + \
               [set_loc(curr_instr, Types.Loc('', loc.loc_addr, loc.loc_visible))]

    def get_framecookiecheck(curr_instr, funcID, cookiePos=None):
        if cookiePos is None: cookiePos = Types.BinOP_PLUS((Types.RegClass('ebp'), 4 if ELF_utils.elf_32() else 8))
        loc = get_loc(curr_instr)
        tmp = list(framecookiecheck)
        tmp[2][2] = Types.Normal(funcID)
        tmp[3][2] = cookiePos
        tmp[2] = Types.TripleInstr(tmp[2])
        tmp[3] = Types.TripleInstr(tmp[3])
        return set_inlineblocklocation(loc, tmp) + \
               [set_loc(curr_instr, Types.Loc('', loc.loc_addr, loc.loc_visible))]
