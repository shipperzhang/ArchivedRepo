import init_sec_adjust
from Types import Func
from ail_utils import read_file, unify_int_list, get_loc, dec_hex


class func_slicer(object):

    func_set = {}

    def __init__(self, instrs, funcs):
        self.instrs = instrs
        self.funcs = funcs

        self.baddr = -1
        self.eaddr = -1
        self.label = ''
        self.funcs1 = []
        self.func_begins = []
        self.addr_set = []
        self.text_b_addr = 0
        self.text_e_addr = 0

        self.last_nop = False
        self.last_ret = False
        self.last_xchg = False
        self.last_special = False
        self.last_jmp = False

    def update(self):
        func = 'S_' + dec_hex(self.baddr)
        if func in func_slicer.func_set:
            func_slicer.func_set[func].func_begin_addr = self.baddr
            func_slicer.func_set[func].func_end_addr = self.eaddr
            func_slicer.func_set[func].is_lib = False
        else:
            f1 = Func(func, self.baddr, self.eaddr, False)
            func_slicer.func_set[func] = f1

    def filter_addr_by_secs(self, bl):
        init_sec_adjust.main()
        with open('init_sec.info') as f:
            l = f.readline()
        items = l.split()
        baddr = int(items[1], 16)
        eaddr = baddr + int(items[3], 16)
        return filter(lambda n: n < baddr or n >= eaddr, bl)

    def update_text_info(self):
        with open('text_sec.info') as f:
            l = f.readline()
        items = l.split()
        self.text_b_addr = int(items[1], 16)
        self.text_e_addr = int(items[3], 16)

    def build_func_info(self):
        self.func_begins = unify_int_list(self.func_begins)
        self.func_begins = self.filter_addr_by_secs(self.func_begins)
        for i in range(len(self.func_begins)-1):
            self.baddr = self.func_begins[i]
            self.eaddr = self.func_begins[i+1]
            self.update()
        self.baddr = self.func_begins[-1]
        self.eaddr = get_loc(self.instrs[0]).loc_addr
        self.update()

    def process(self):
        #TODO: stub
        pass

    def check_text(self, e):
        #TODO: stub
        pass

    def process2(self):
        #TODO: stub
        pass

    def update_func(self):
        for e in self.funcs:
            func_slicer.func_set[e.func_name] = e

    def get_func_list(self):
        return func_slicer.func_set.values()

    def funcaddr_from_file(self):
        self.func_begins = map(lambda a: int(a, 16), read_file('faddr.txt'))

    def dump_funclist(self):
        #TODO: stub
        pass

    def get_funcs(self):
        self.funcaddr_from_file()
        self.build_func_info()
        fl = self.get_func_list()
        print '     func number', len(fl)
        return fl
