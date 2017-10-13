from Parser import parse
from func_slicer import func_slicer
from utils.pp_print import pp_print_instr
from utils.ail_utils import dec_hex, unify_funclist_by_name, unify_funclist_by_addr, int_of_string_opt
from disasm.Parser import InvalidOpException


class AilParser(object):

    def __init__(self):
        self.instrs = []
        self.funcs = []
        self.secs = []

    def set_funcs(self, funcs):
        self.funcs = funcs

    def update_func_info(self, fl):
        for i in range(len(fl)-1):
            if fl[i].func_begin_addr == fl[i+1].func_begin_addr:
                if 'S_0x' in fl[i].func_name:
                    fl[i+1].func_end_addr = fl[i].func_end_addr
                elif 'S_0x' in fl[i+1].func_name:
                    fl[i].func_end_addr = fl[i+1].func_end_addr
        return fl

    def print_f(self, funcs):
        for f in funcs:
            print ' '.join((f.func_name,
                dec_hex(f.func_begin_addr),
                dec_hex(f.func_end_addr),
                str(f.is_lib).lower()
            ))

    def get_funcs(self):
        fl = unify_funclist_by_name(self.func_slicing())
        fl.sort(cmp=lambda f1, f2: f1.func_begin_addr - f2.func_begin_addr)
        fl = self.filter_func_by_name(fl)
        fl = self.update_func_info(fl)
        fl = self.filter_func_by_secs(fl)
        return unify_funclist_by_addr(fl)

    def filter_func_by_name(self, funcs):
        return filter(lambda f: '.text' not in f.func_name and f.func_name[:3] != '..@', funcs)

    def filter_func_by_secs(self, funcs):
        with open('text_sec.info') as f:
            l = f.readline()
        items = l.split()
        addr = int(items[1], 16)
        end = addr + int(items[3], 16)
        def fil(f):
            if f.func_begin_addr == 0: return False
            if len(f.func_name) < 3: return True
            opt = int_of_string_opt(f.func_name[2:], 16)
            return True if opt is None else (addr <= opt < end)
        return filter(fil, funcs)


    def print_funcs(self, funcs):
        self.print_f(filter(lambda f: not f.is_lib, funcs))

    def func_slicing(self):
        fs = func_slicer(self.instrs, self.funcs)
        fs.update_text_info()
        fs.update_func()
        return fs.get_funcs()

    def set_secs(self, secs):
        self.secs = secs

    def processInstrs(self, ilist):
        invalid = set()
        p = parse()
        p.set_funclist(self.funcs)
        p.set_seclist(self.secs)
        for i in ilist:
            items = filter(len, i.split(':'))
            if len(items) > 1:
                loc = items[0]
                instr = ':'.join(items[1:])
                try: self.instrs.insert(0, p.parse_instr(instr, loc))
                except InvalidOpException as e: invalid.add(e.getop())
        if len(invalid) != 0:
            raise Exception('Some instructions are not known: ' + str(invalid))
        self.funcs = p.get_funclist()

    def p_instrs(self):
        print '\n'.join(map(pp_print_instr, self.instrs[::-1]))

    def get_instrs(self):
        return self.instrs[::-1]

    def get_instrs_len(self):
        return len(self.instrs)
