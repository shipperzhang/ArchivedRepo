
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

    def dump_c2c_labels(self, dl):
        #TODO: stub
        pass

    def clean_sort(self, ll):
        #TODO: stub
        pass

    def clean_sort_bdf(self, ll):
        #TODO: stub
        pass

    def process(self):
        #TODO: stub
        pass

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


class reassemble(object):

    def __init__(self):
        #TODO: stub
        pass

    def section_collect(self):
        #TODO: stub
        pass

    def plt_collect(self):
        #TODO: stub
        pass

    def pic_collect(self):
        #TODO: stub
        pass

    def text_sec_collect(self):
        #TODO: stub
        pass

    def plt_sec_collect(self):
        #TODO: stub
        pass

    def check_sec(self, addr):
        #TODO: stub
        pass

    def check_text(self, addr):
        #TODO: stub
        pass

    def check_text_abd(self, addr):
        #TODO: stub
        pass

    def check_plt(self, addr):
        #TODO: stub
        pass

    def parse_const(self, c):
        #TODO: stub
        pass

    def build_symbol(self, c):
        #TODO: stub
        pass

    def build_plt_symbol(self, c):
        #TODO: stub
        pass

    def has_data(self, l):
        #TODO: stub
        pass

    def has_text(self, l):
        #TODO: stub
        pass

    def v_exp2(self, exp, instr, f, chk):
        #TODO: stub
        pass

    def vinst2(self, f, instr):
        #TODO: stub
        pass

    def visit_heuristic_analysis(self, instrs):
        #TODO: stub
        pass

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
        #TODO: stub
        pass

    def update_deslist_with_ehframe(self):
        #TODO: stub
        pass

    def update_deslist_with_excp_tbl(self):
        #TODO: stub
        pass

    def dump_c2c_labels(self, dl):
        #TODO: stub
        pass

    def dump_c2d_labels(self, dl):
        #TODO: stub
        pass

    def adjust_loclabel(self, instr_list):
        #TODO: stub
        pass

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

