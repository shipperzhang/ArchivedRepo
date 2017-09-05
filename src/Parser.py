
#TODO: define parsings
#TODO: static methods

class parse(object):

    call_des = False

    def __init__(self):
        self.func_list = []
        self.sec_list = []

    def pp_print(self, l):
        print ''.join(map(lambda e: 'item: ' + e, l)) + 'end'

    def conptr_symb(self, s):
        #TODO: stub
        pass

    def ptraddr_symb(self, s):
        #TODO: stub
        pass

    def ptr_symb(self, s):
        #TODO: stub
        pass

    def jumpdes_symb_bak(self, s):
        pass

    def jumpdes_symb(self, s):
        #TODO: stub
        pass

    def calldes_symb(self, s):
        #TODO: stub
        pass

    def star_jmptable_symb(self, s):
        #TODO: stub
        pass

    def jmptable_m_symb(self, s):
        #TODO: stub
        pass

    def jmptable_p_symb(self, s):
        #TODO: stub
        pass

    def calljmp_symb(self, s):
        #TODO: stub
        pass

    def leades_symb(self, s):
        #TODO: stub
        pass

    def callstar_symb(self, s):
        #TODO: stub
        pass

    def stardes_symb(self, s):
        #TODO: stub
        pass

    def symbol_symb(self, s):
        #TODO: stub
        pass

    def exp_symb(self, s):
        #TODO: stub
        pass

    def push_stack(self, lex):
        #TODO: stub
        pass

    def reduce_stack(self, stack, pre):
        #TODO: stub
        pass

#    def print_f(self, fl):
#        pass

    def set_funclist(self, l):
        self.func_list = l

    def get_funclist(self):
        return self.func_list

    def set_seclist(self, l):
        self.sec_list = l

    def get_func(self, name, lib):
        #TODO: stub
        pass

    def get_sec(self, addr):
        #TODO: stub
        pass

    def init_process(self):
        parse.call_des = False

    def parse_instr(self, instr, loc):
        #TODO: stub  <-----------
        pass
