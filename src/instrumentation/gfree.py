import os
from struct import unpack
from instrumentation import inlining
from utils.ail_utils import ELF_utils


class GfreeInstrumentation:

    def __init__(self, instrs, funcs):
        self.instrs = instrs
        self.funcs = funcs
        self.rets = {}
        self.indcalls = {}
        self.fIDset = set()

    @staticmethod
    def perform(instrs, funcs):
        print '     nothing done yet'
        gfree = GfreeInstrumentation(instrs, funcs)
        gfree.findfreebranches()
        gfree.returnprotection()
        gfree.indirectprotection()
        return gfree.instrs

    def findfreebranches(self):
        # TODO: find returns and call*/jmp*
        pass

    def returnprotection(self):
        # TODO: xor canary
        pass

    def indirectprotection(self):
        # TODO: stack cookie
        pass

    def enforcealignment(self):
        # TODO: nop sleds, etc
        pass

    badbytes = set(('\xc2', '\xc3', '\xca', '\xcb'))
    def generateFuncID(self):
        while True:
            fid = os.urandom(4 if ELF_utils.elf_32() else 8)
            if not fid in self.fIDset:
                if not ELF_utils.elf_arm() and \
                   next((b for b in fid if b in GfreeInstrumentation.badbytes), None) is not None:
                    continue
                self.fIDset.add(fid)
                return unpack('<I' if ELF_utils.elf_32() else '<Q', fid)[0]
