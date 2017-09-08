import Types
import parse_init_array
import exception_process
from visit import ailVisitor
from ail_utils import get_loc, read_file, ELF_utils, dec_hex, set_loc

def rev_map(f, l):
    return map(f, l)[::-1]

class ft(object):
    def __init__(self, fn, fbaddr, feaddr):
        self.fn = fn; self.fbaddr = fbaddr; self.feaddr = feaddr


class datahandler:

    def __init__(self, label):
        self.sec = []
        self.data = []
        self.rodata = []
        self.got = []
        self.bss = []

        self.text_mem_addrs = []
        self.label_mem_addrs = []

        self.data_labels = []
        self.data_labels_reloc = []
        self.text_labels = []
        self.text_labels_reloc = []

        self.label = label
        self.label_set = []

        self.data_list = []
        self.rodata_list = []
        self.got_array = []
        self.bss_array = []

        self.text_sec = (0, 0)
        self.locations = []

        self.in_jmptable = False

        self.text_mem_arr = [0]
        self.label_mem_arr = [0]
        self.func_begin_arr = [0]
        self.label_arr = [0]

        self.fl_sort = [ft('', 0, 0)]
        self.cur_func_name = ''
        self.assumption_two = False
        self.assumption_three = False

    def set_datas(self, funcs):
        #TODO: stub
        pass

    def set_assumption_flag(self):
        #TODO: stub
        pass

    def set_datas_1(self):
        #TODO: stub
        pass

    def get_textlabel(self):
        #TODO: stub
        pass

    def text_sec_collect(self):
        #TODO: stub
        pass

    def check_text(self, addr):
        #TODO: stub
        pass

    def dump_c2d_labels(self, dl):
        #TODO: stub
        pass

    def dump_d2d_labels(self, dl):
        #TODO: stub
        pass

    def dump_d2c_labels(self, dl):
        #TODO: stub
        pass

    def data_refer_solve_64(self, funcs):
        #TODO: stub
        pass

    def data_refer_solve(self, funcs):
        #TODO: stub
        pass

    def check_jmptable_1(self, addrs):
        #TODO: stub
        pass

    def data_refer_solve1(self):
        #TODO: stub
        pass

    def fn_byloc(self, addr):
        #TODO: stub
        pass

    def check_jmptable(self, addrs, v):
        #TODO: stub
        pass

    def section_collect(self):
        #TODO: stub
        pass

    def section_offset(self, name, addr):
        #TODO: stub
        pass

    def section_addr(self, name):
        #TODO: stub
        pass

    def data_collect(self):
        #TODO: stub
        pass

    def sec_transform(self, s):
        #TODO: stub
        pass

    def check_sec(self, addr):
        #TODO: stub
        pass

    def data_transform(self, data_str):
        #TODO: stub
        pass

    def data_trans(self, data_list):
        #TODO: stub
        pass

    def label_locate(self):
        #TODO: stub
        pass

    def add_data_label(self):
        #TODO: stub
        pass

    def process(self, lbs):
        #TODO: stub
        pass

    def data_output(self):
        #TODO: stub
        pass

    def collect_ocaml(self, name):
        #TODO: stub
        pass

    def collect(self, name):
        #TODO: stub
        pass

    def collect_bss(self, name):
        #TODO: stub
        pass


class instrhandler(object):

    def __init__(self, instr_list, des):
        self.des = des
        self.locs = []
        # self.new_instrlist = []
        self.instr_list = instr_list

    def get_instr_list(self):
        return map(lambda e: set_loc(e[0],e[1]), zip(self.instr_list, self.locs))

    def set_instr_list(self):
        self.locs = map(get_loc, self.instr_list)

    def dump_c2c_labels(self, dl):
        # stub not used
        pass

    def clean_sort(self, ll):
        #TODO: stub
        pass

    def clean_sort_bdf(self, ll):
        #TODO: stub
        pass

    def process(self):
        do_update = lambda s,n: s if n in s else s + '\n' + n
        des1 = self.clean_sort(self.des)
        res = [], i = 0; j = 0
        while True:
            if j == len(des1):
                res += self.locs[i:]
        #TODO: stub <---
        return res

    def insert_dummy(self):
        #TODO: stub
        pass

    def update_loc(self, locs, d):
        #TODO: stub
        pass


class funchandler(object):

    def __init__(self, instr_list, u_funcs):
        #TODO: stub
        pass

    def print_loclist(self):
        #TODO: stub
        pass

    def get_instr_list(self):
        #TODO: stub
        pass

    def set_instr_list(self):
        #TODO: stub
        pass

    def process(self):
        #TODO: stub
        pass

    def func_sort(self, ll):
        #TODO: stub
        pass

    def process2(self):
        #TODO: stub
        pass

    def insert_dummy(self):
        #TODO: stub
        pass

    def update_loc(self, locs, d):
        #TODO: stub
        pass


class reassemble(ailVisitor):

    data_set = {}
    plt_hash = {}
    pic_hash = {}
    text_set = {}

    def __init__(self):
        super(reassemble, self).__init__()
        self.label = []
        # collect relocation info in c2d
        self.c2d_addr = []
        self.deslist = []
        # only collect the relocated symbol
        self.deslist_reloc = []
        self.init_array_list = []
        self.eh_frame_list = []
        self.excpt_tbl_list = []
        self.jmpreflist = []
        self.sec = []
        self.instr_list = []
        self.text_sec = (0,0) # begin, size
        self.plt_sec = (0,0)  # begin, size
        self.text_mem_addrs = []
        # collect all the symbols from code section or from data sections
        self.symbol_list = []
        # Initializer
        self.section_collect()
        self.plt_collect()
        self.plt_sec_collect()
        self.text_sec_collect()

    def section_collect(self):
        def secmapper(l):
            items = l.split()
            return Types.Section(items[0], int(items[1], 16), int(items[3], 16))
        lines = read_file('sections.info')
        self.sec = map(secmapper, lines)[::-1]
        self.text_mem_addrs = map(str.strip, read_file('text_mem.info'))

    def plt_collect(self):
        lines = read_file('plts.info')
        for l in lines:
            items = l.split()
            addr = int(items[0][1:], 16)
            name = items[1].split('@')[0][1:]
            reassemble.plt_hash[addr] = name

    def pic_collect(self):
        lines = read_file('pic_secs.info')
        for l in lines:
            items = l.split()
            reassemble.pic_hash[items[0]] = (int(items[1], 16), int(items[3], 16))

    def text_sec_collect(self):
        lines = read_file('text_sec.info')
        for l in lines:
            items = l.split()
            self.text_sec = (int(items[1], 16), int(items[3], 16))

    def plt_sec_collect(self):
        lines = read_file('plt_sec.info')
        for l in lines:
            items = l.split()
            self.plt_sec = (int(items[1], 16), int(items[3], 16))

    def check_sec(self, addr):
        for s in self.sec:
            b = s.sec_begin_addr
            e = b + s.sec_size
            if b <= addr < e: return s
        return None

    def check_text(self, addr):
        # Not used stuff here...
        e = sum(self.text_sec)
        if addr == 0xffff: return False
        return self.text_sec[0] <= addr < e

    def check_text_abd(self, addr):
        e = sum(self.text_sec)
        return self.text_sec[0] <= addr <= e

    def check_plt(self, addr):
        e = sum(self.plt_sec)
        return self.plt_sec[0] <= addr < e

    def parse_const(self, c):
        if isinstance(c, Types.Const): return c
        raise Exception("Not a constant")

    def build_symbol(self, c):
        if isinstance(c, Types.Point):
            return 'S_' + dec_hex(c)
        elif isinstance(c, Types.Normal):
            return '$S_' + dec_hex(c)

    def build_plt_symbol(self, c):
        n = reassemble.plt_hash[c]
        if isinstance(c, Types.Point):
            return n
        elif isinstance(c, Types.Normal):
            return '$' + n
        raise Exception("Failed plt symbol")

    def has_data(self, l):
        return l in reassemble.data_set

    def has_text(self, l):
        return l in reassemble.text_set

    def v_exp2(self, exp, instr, f, chk):
        # TODO: create subfunction to simplify this mess
        # check_test_condition = lambda l,c: not (isinstance(l, Types.Normal) and c)
        if isinstance(exp, Types.Const):
            if isinstance(exp, Types.Normal) and chk: return exp
            l1 = self.parse_const(exp)
            s = self.check_sec(l1)
            if s is not None:
                s_label = self.build_symbol(exp)
                loc1 = get_loc(instr)
                if not self.has_data(l1):
                    reassemble.data_set[l1] = ''
                    self.label.insert(0, (s.sec_name, l1))
                self.c2d_addr.insert(0, loc1.loc_addr)
                return Types.Label(s_label)
            if self.check_text(l1):
                s_label = self.build_symbol(exp)
                loc1 = get_loc(instr)
                if not self.has_text(l1):
                    reassemble.text_set[l1] = ''
                    self.deslist.insert(0, s_label)
                self.deslist_reloc.insert(0, loc1.loc_addr)
                return Types.Label(s_label)
            if self.check_plt(l1):
                return Types.Label(self.build_plt_symbol(exp))
        elif isinstance(exp, Types.Symbol):
            if isinstance(exp, Types.JumpDes):
                if self.check_text(exp):
                    s_label = 'S_' + dec_hex(exp)
                    if not self.has_text(exp):
                        reassemble.text_set[exp] = ''
                        self.deslist.insert(0, s_label)
                    return Types.Label(s_label)
            elif isinstance(exp, Types.StarDes):
                return Types.StarDes(self.v_exp2(exp.content, instr, f, chk))
            elif isinstance(exp, Types.CallDes):
                fn = exp.func_name[2:]
                is_dig_loc = False
                try:
                    addr = int(fn, 16)
                    is_dig_loc = True
                except: self.symbol_list.insert(0, exp.func_begin_addr)
                if is_dig_loc:
                    if self.check_text(addr):
                        s_label = 'S_' + dec_hex(addr)
                        if not self.has_text(addr):
                            reassemble.text_set[addr] = ''
                            self.deslist.insert(0, s_label)
                        return Types.Label(s_label)
        elif isinstance(exp, Types.Ptr):
            if isinstance(exp, (Types.BinOP_PLUS, Types.BinOP_MINUS)):
                r, addr = exp
                s = self.check_sec(addr)
                if s is not None:
                    s_label = 'S_' + dec_hex(addr)
                    loc1 = get_loc(instr)
                    if not self.has_data(addr):
                        reassemble.data_set[addr] = ''
                        self.label.insert(0, (s.sec_name, addr))
                    self.c2d_addr.insert(0, loc1.loc_addr)
                    return Types.BinOP_PLUS_S((r, s_label)) \
                        if isinstance(exp, Types.BinOP_PLUS) \
                        else Types.BinOP_MINUS_S((r, s_label))
            elif isinstance(exp, (Types.FourOP_PLUS, Types.FourOP_MINUS)):
                r1, r2, off, addr = exp
                s = self.check_sec(addr)
                if s is not None:
                    s_label = 'S_' + dec_hex(addr)
                    loc1 = get_loc(instr)
                    if not self.has_data(addr):
                        reassemble.data_set[addr] = ''
                        self.label.insert(0, (s.sec_name, addr))
                    self.c2d_addr.insert(0, loc1.loc_addr)
                    return Types.FourOP_PLUS_S((r1,r2,off,s_label)) \
                        if isinstance(exp, Types.FourOP_PLUS) \
                        else Types.FourOP_MINUS_S((r1,r2,off,s_label))
            elif isinstance(exp, Types.JmpTable_PLUS):
                addr, r, off = exp
                s = self.check_sec(addr)
                if s is not None:
                    s_label = 'S_' + dec_hex(addr)
                    loc1 = get_loc(instr)
                    if not self.has_data(addr):
                        reassemble.data_set[addr] = ''
                        self.label.insert(0, (s.sec_name, addr))
                    self.c2d_addr.insert(0, loc1.loc_addr)
                    return Types.JmpTable_PLUS_S((s_label, r, off))
                if self.check_text(addr):
                    s_label = 'S_' + dec_hex(addr)
                    loc1 = get_loc(instr)
                    if not self.has_text(addr):
                        reassemble.text_set[addr] = ''
                        self.deslist.insert(0, s_label)
                    self.deslist_reloc.insert(0, loc1.loc_addr)
                    return Types.JmpTable_PLUS_S((s_label, r, off))
            elif isinstance(exp, Types.JmpTable_MINUS):
                addr, r, off = exp
                s = self.check_sec(addr)
                if s is not None:
                    s_label = '-S_' + dec_hex(addr)
                    loc1 = get_loc(instr)
                    if not self.has_data(addr):
                        reassemble.data_set[addr] = ''
                        self.label.insert(0, (s.sec_name, addr))
                    self.c2d_addr.insert(0, loc1.loc_addr)
                    return Types.JmpTable_MINUS_S((s_label, r, off))
                if self.check_text(addr):
                    s_label = '-S_' + dec_hex(addr)
                    loc1 = get_loc(instr)
                    if not self.has_text(addr):
                        reassemble.text_set[addr] = ''
                        self.deslist.insert(0, s_label)
                    self.deslist_reloc.insert(0, loc1.loc_addr)
                    return Types.JmpTable_MINUS_S((s_label, r, off))
        return exp

    def vinst2(self, f, instr):
        if isinstance(instr, Types.SingleInstr): return instr
        elif isinstance(instr, Types.DoubleInstr):
            return Types.DoubleInstr((instr[0], self.v_exp2(instr[1], instr, f, False),
                                      instr[2], instr[3]))
        elif isinstance(instr, Types.TripleInstr):
            is_test = instr[0].upper() in ['TEST', 'TESTL', 'TESTW', 'TESTB']
            return Types.TripleInstr((instr[0], self.v_exp2(instr[1], instr, f, is_test),
                                      self.v_exp2(instr[2], instr, f, is_test), instr[3], instr[4]))
        elif isinstance(instr, Types.FourInstr):
            return Types.FourInstr((instr[0], instr[1], self.v_exp2(instr[2], instr, f, False),
                                    instr[3], instr[4], instr[5]))

    def visit_heuristic_analysis(self, instrs):
        func = lambda i: self.check_text(get_loc(i).loc_addr)
        self.instr_list = instrs
        tl = map(lambda i: self.vinst2(func, i), instrs)
        is_32 = 1 if ELF_utils.elf_32() else 0
        def desmapper(l):
            try: return int(l[2:10+is_32], 16)
            except: return int(l[3:11+is_32], 16)
        tl1 = map(desmapper, self.deslist)
        self.symbol_list = tl1 + self.symbol_list
        return tl

    def visit_type_infer_analysis(self, bbl, instrs):
        #TODO: stub
        pass

    def share_lib_processing(self, instrs):
        #TODO: stub
        pass

    def check_bss(self, addr):
        #TODO: stub
        pass

    def update_deslist_with_initarray(self):
        self.init_array_list = parse_init_array.main()

    def update_deslist_with_ehframe(self):
        self.eh_frame_list = exception_process.main('eh_frame')

    def update_deslist_with_excp_tbl(self):
        self.excpt_tbl_list = exception_process.main('gcc_exception_table')

    def dump_c2c_labels(self, dl):
        with open('final_c2c_label.txt', 'w') as f:
            f.write('\n'.join(map(dec_hex, dl)))

    def dump_c2d_labels(self, dl):
        with open('final_c2d_label.txt', 'w') as f:
            f.write('\n'.join(map(dec_hex, dl)))

    def adjust_loclabel(self, instr_list):
        self.update_deslist_with_initarray()
        self.dump_c2c_labels(self.deslist_reloc)
        t = self.init_array_list + self.deslist
        p = instrhandler(instr_list, t)
        p.set_instr_list()
        p.process()
        return p.get_instr_list()

    def adjust_jmpref(self, instr_list):
        #TODO: stub
        pass

    def adjust_funclabel(self, u_funcs, instr_list):
        #TODO: stub
        pass

    def adjust_globallabel(self, g_bss, instr_list):
        #TODO: stub
        pass

    def data_dump(self, funcs):
        #TODO: stub
        pass

    def data_dump_1(self):
        #TODO: stub
        pass

    def dump_funclist(self, bs, fn):
        #TODO: stub
        pass

    def unify_funclist(self, sl1, sl2):
        #TODO: stub
        pass

    def init_array_dump(self):
        #TODO: stub
        pass

    def export_data_dump(self):
        #TODO: stub
        pass

    def ehframe_dump(self):
        #TODO: stub
        pass

    def excpt_tbl_dump(self):
        #TODO: stub
        pass

    def reassemble_dump(self, u_funcs):
        #TODO: stub
        pass

    def reassemble_dump_1(self):
        #TODO: stub
        pass

    def add_func_label(self, ufuncs, instrs):
        #TODO: stub
        pass

    def add_bblock_label(self, bbl, instrs):
        #TODO: stub
        pass

    def unify_loc1(self, instrs):
        #TODO: stub
        pass

    def update_instrs(self, instrs):
        #TODO: stub
        pass

    def set_list(self, instrs):
        #TODO: stub
        pass

    def unify_loc(self, instrs):
        #TODO: stub
        pass

    def unify_instrs(self, instrs):
        #TODO: stub
        pass

