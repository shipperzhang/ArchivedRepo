import os
from disasm import Types
from struct import unpack
from instrumentation import inlining
from utils.ail_utils import ELF_utils, get_loc, Opcode_utils


class GfreeInstrumentation:

    def __init__(self, instrs, funcs):
        self.instrs = instrs
        self.funcs = {f.func_begin_addr: f for f in funcs}.values()
        self.funcs.sort(key=lambda f: f.func_begin_addr)
        self.rets = {f.func_begin_addr: list() for f in self.funcs}
        self.indcalls = {f.func_begin_addr: list() for f in self.funcs}
        self.fIDset = set()
        self.avoid = set()
        if os.path.isfile('pic_thunk.info'):
            with open('pic_thunk.info') as f:
                self.avoid = set(map(lambda l: int(l, 16), f))

    @staticmethod
    def perform(instrs, funcs):
        print '     nothing done yet'
        gfree = GfreeInstrumentation(instrs, funcs)
        gfree.findfreebranches()

        # print '|'.join(map(lambda e: '%x:' % e, sorted(filter(lambda a: len(gfree.rets[a]) == 0, gfree.rets))))
        # exit()

        gfree.indirectprotection()
        gfree.returnprotection()
        gfree.enforcealignment()
        return gfree.instrs

    def findfreebranches(self):
        j = 0; curr_func = self.funcs[0]
        for ins in self.instrs:
            loc_addr = get_loc(ins).loc_addr
            # TODO: some indirect calls are also exit points
            if loc_addr >= self.funcs[j].func_end_addr and j < len(self.funcs) - 1:
                j += 1
                curr_func = self.funcs[j]
            if Opcode_utils.is_indirect(ins[1]):
                self.indcalls[curr_func.func_begin_addr].append(loc_addr)
            elif Opcode_utils.is_ret(ins[0], ins[1]):
                self.rets[curr_func.func_begin_addr].append(loc_addr)
            elif Opcode_utils.is_any_jump(ins[0]):
                if (isinstance(ins[1], Types.Label) \
                    and (not ins[1].startswith('S_0') \
                    or int(ins[1].lstrip('S_'), 16) not in curr_func)) \
                  or Opcode_utils.is_func(ins[1]):
                    self.rets[curr_func.func_begin_addr].append(loc_addr)

    def addxorcanary(self, i, func):
        if func.func_begin_addr in self.avoid: return i + 1
        if len(self.indcalls[func.func_begin_addr]) == 0:
            header = inlining.get_returnenc(self.instrs[i])
            self.instrs[i:i+1] = header
            i += len(header) - 1
            popcookie = False
        else: popcookie = True
        for t in self.rets[func.func_begin_addr]:
            while get_loc(self.instrs[i]).loc_addr != t: i += 1
            footer = inlining.get_returnenc(self.instrs[i], popcookie)
            self.instrs[i:i+1] = footer
            i += len(footer)
        return i

    def addframecookie(self, i, func):
        fID = self.generateFuncID()
        header = inlining.get_framecookiehead(self.instrs[i], fID)
        self.instrs[i:i+1] = header
        i += len(header) - 1
        for t in self.indcalls[func.func_begin_addr]:
            while get_loc(self.instrs[i]).loc_addr != t: i += 1
            # TODO: find cookie position
            check = inlining.get_framecookiecheck(self.instrs[i], fID)
            self.instrs[i:i+1] = check
            i += len(check)
        return i

    def returnprotection(self):
        i = 0; j = 0
        while i < len(self.instrs):
            loc_addr = get_loc(self.instrs[i]).loc_addr
            if loc_addr >= self.funcs[j].func_end_addr and j < len(self.funcs) - 1: j += 1
            if loc_addr == self.funcs[j].func_begin_addr and len(self.rets[loc_addr]) > 0:
                i = self.addxorcanary(i, self.funcs[j])
            else: i += 1

    def indirectprotection(self):
        i = 0; j = 0
        while i < len(self.instrs):
            loc_addr = get_loc(self.instrs[i]).loc_addr
            if loc_addr >= self.funcs[j].func_end_addr and j < len(self.funcs) - 1: j += 1
            if loc_addr == self.funcs[j].func_begin_addr and len(self.indcalls[loc_addr]) > 0:
                # self.adjuststack(i, self.funcs[j])
                i = self.addframecookie(i, self.funcs[j])
            else: i += 1

    badbytes = set(('\xc2', '\xc3', '\xca', '\xcb', '\xff'))

    if ELF_utils.elf_arm():
        def enforcealignment(self):
            # TODO:
            pass

        def adjuststack(self, i, curr_func):
            # TODO: stub
            pass
    else:
        def enforcealignemt(self):
            # TODO: nop sled, etc
            pass

        def adjuststack(self, i, curr_func):
            # TODO: stub
            pass

    def generateFuncID(self):
        while True:
            fid = os.urandom(4)
            if not fid in self.fIDset:
                if not ELF_utils.elf_arm() and \
                   next((b for b in fid if b in GfreeInstrumentation.badbytes), None) is not None:
                    continue
                self.fIDset.add(fid)
                return unpack('<HH', fid) if ELF_utils.elf_arm() \
                       else unpack('<i', fid)
