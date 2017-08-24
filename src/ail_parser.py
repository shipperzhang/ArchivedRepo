
class AilParser(object):

    def __init__(self):
        self.instrs = []
        self.funcs = []
        self.secs = []
        
    def set_funcs(self, funcs):
        self.funcs = funcs
    
    def update_func_info(self, funcs):
        #TODO: stub
        pass
        
    def print_f(self, funcs):
        #TODO: stub
        pass
    
    def get_funcs(self):
        #TODO: stub
        pass
    
    def filter_func(self, funcs):
        #TODO: stub
        pass
    
    def filter_func_by_nane(self, funcs):
        #TODO: stub
        pass
    
    def filter_func_by_secs(self, funcs):
        #TODO: stub
        pass
    
    def print_funcs(self, funcs):
        #TODO: stub
        pass
    
    def func_slicing(self):
        #TODO: stub
        pass
    
    def set_secs(self, secs):
        self.secs = secs

    def processInstrs(self, ilist):
        #TODO: stub
        pass
    
    def p_instrs(self):
        #TODO: stub
        pass
    
    def get_instrs(self):
        return self.instrs[::-1]
    
    def get_instrs_len(self):
        return len(self.instrs)