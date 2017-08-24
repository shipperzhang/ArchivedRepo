
class ailVisitor(object):

    def __init__(self, params):
        self.instrs = []
        self.funcs = []
        self.secs = []
        
    def vinst(self, instr):
        #TODO: boh
        return instr
    
    def v_exp(self, exp):
        #TODO: boh
        return exp
    
    def set_funcs(self, funcs):
        self.funcs = funcs
        
    def set_secs(self, secs):
        self.secs = secs
        
    def visit(self, instrs):
        return map(self.vinst, instrs)