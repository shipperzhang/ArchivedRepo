
class ailVisitor(object):

    def __init__(self):
        self.instrs = []
        self.funcs = []
        self.secs = []

    def vinst(self, instr):
        return instr

    def v_exp(self, exp):
        return exp

    def set_funcs(self, funcs):
        self.funcs = funcs

    def set_secs(self, secs):
        self.secs = secs

    def visit(self, instrs):
        return map(self.vinst, instrs)
