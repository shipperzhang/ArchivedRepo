import config
from disasm import Types
from utils.ail_utils import ELF_utils, set_loc

if ELF_utils.elf_64():
    # x86_64
    returnenc = [
        Types.DoubleInstr(('pushq', Types.RegClass('rax'), None, False)),
        Types.TripleInstr(('movq', Types.RegClass('rax'), Types.Label(config.gfree_xorkeyvar), None, False)),
        Types.TripleInstr(('xorq', Types.BinOP_PLUS((Types.RegClass('rsp'), 8)), Types.RegClass('rax'), None, False)),
        Types.DoubleInstr(('popq', Types.RegClass('rax'), None, False)),
    ]

    framecookiehead = [
        Types.DoubleInstr(('pushq', Types.Normal(0), None, False)), # Fill with FuncID
        Types.DoubleInstr(('pushq', Types.RegClass('rax'), None, False)),
        Types.TripleInstr(('movq', Types.RegClass('rax'), Types.Label(config.gfree_cookiekeyvar), None, False)),
        Types.TripleInstr(('xorq', Types.BinOP_PLUS((Types.RegClass('rsp'), 8)), Types.RegClass('rax'), None, False)),
        Types.DoubleInstr(('popq', Types.RegClass('rax'), None, False)),
    ]

    framecookiecheck = [
        Types.DoubleInstr(('pushq', Types.RegClass('rax'), None, False)),
        Types.TripleInstr(('movq', Types.RegClass('rax'), Types.Label(config.gfree_cookiekeyvar), None, False)),
        Types.TripleInstr(('xorq', Types.RegClass('rax'), Types.Normal(0), None, False)), # Fill with FuncID
        Types.TripleInstr(('cmpq', Types.RegClass('rax'), Types.BinOP_PLUS((Types.RegClass('rbp'), 8)), None, False)),
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
        Types.TripleInstr(('movw', Types.RegClass('r1'), '', None, False)), # Fill with FuncID
        Types.TripleInstr(('movt', Types.RegClass('r1'), '', None, False)),
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
        Types.TripleInstr(('movw', Types.RegClass('r1'), '', None, False)), # Fill with FuncID
        Types.TripleInstr(('movt', Types.RegClass('r1'), '', None, False)),
        Types.TripleInstr(('eor', Types.RegClass('r0'), Types.RegClass('r1'), None, False)),
        Types.TripleInstr(('ldr', Types.RegClass('r1'), None, None, False)), # Fill with cookie position
        Types.TripleInstr(('cmp', Types.RegClass('r0'), Types.RegClass('r1'), None, False)),
        Types.DoubleInstr(('pop', Types.RegList((Types.RegClass('r0'), Types.RegClass('r1'))), None, False)),
        Types.DoubleInstr(('bne', Types.Label(config.gfree_failfuncname), None, False)),
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
        Types.DoubleInstr(('pushl', Types.Normal(0), None, False)), # Fill with FuncID
        Types.DoubleInstr(('pushl', Types.RegClass('eax'), None, False)),
        Types.TripleInstr(('movl', Types.RegClass('eax'), Types.Label(config.gfree_cookiekeyvar), None, False)),
        Types.TripleInstr(('xorl', Types.BinOP_PLUS((Types.RegClass('esp'), 4)), Types.RegClass('eax'), None, False)),
        Types.DoubleInstr(('popl', Types.RegClass('eax'), None, False)),
    ]

    framecookiecheck = [
        Types.DoubleInstr(('pushl', Types.RegClass('eax'), None, False)),
        Types.TripleInstr(('movl', Types.RegClass('eax'), Types.Label(config.gfree_cookiekeyvar), None, False)),
        Types.TripleInstr(('xorl', Types.RegClass('eax'), Types.Normal(0), None, False)), # Fill with FuncID
        Types.TripleInstr(('cmpl', Types.RegClass('eax'), Types.BinOP_PLUS((Types.RegClass('ebp'), 4)), None, False)),
        Types.DoubleInstr(('popl', Types.RegClass('eax'), None, False)),
        Types.DoubleInstr(('jne', Types.Label(config.gfree_failfuncname), None, False))
    ]

    framecookietail = [
        Types.TripleInstr(('add', Types.RegClass('esp'), Types.Normal(4), None, False))
    ]


def set_inlineblocklocation(loc, block):
    return [set_loc(block[0], loc)] + \
        map(lambda i: set_loc(i, Types.Loc('', loc.loc_addr, loc.loc_visible)), block[1:])

def get_returnenc(loc):
    return set_inlineblocklocation(loc, returnenc)

if ELF_utils.elf_arm():
    def get_framecookiehead(loc, funcID):
        # TODO: stub
        pass

    def get_framecookiecheck(loc, funcID):
        # TODO: stub
        pass
else:
    def get_framecookiehead(loc, funcID):
        # TODO: stub
        pass

    def get_framecookiecheck(loc, funcID):
        # TODO: stub
        pass

def get_framecookietail(loc):
    # TODO: stub
    pass
