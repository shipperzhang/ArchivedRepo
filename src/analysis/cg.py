import sys
from disasm import Types
from visit import ailVisitor
from utils.ail_utils import dec_hex


class cg(ailVisitor):

    cg_tbl = {}
    cfi_tbl = {}

    def update_cgtbl(self, l, func):
        ll = cg.cg_tbl.get(l.loc_addr, [])
        ll.insert(0, func)
        cg.cg_tbl[l.loc_addr] = ll

    def update_cfitbl(self, func, l):
        ll = cg.cfi_tbl.get(func.func_name, [])
        ll.insert(0, l)
        cg.cfi_tbl[func.func_name] = ll

    def func_info(self, l):
        for h in self.funcs:
            if h.func_begin_addr <= l.loc_addr < h.func_end_addr:
                return h
        raise Exception(dec_hex(l.loc_addr) + ': cannot find corresponding function')

    def cg_process(self, e, l):
        if isinstance(e, Types.JumpDes):
            f = self.func_info(l)
            if not (f.func_begin_addr <= e < f.func_end_addr):
                self.update_cgtbl(l, f)
        elif isinstance(e, Types.CallDes):
            if not e.is_lib: self.update_cgtbl(l, e)

    def vinst_tail(self, instrs):
        for h in instrs:
            if isinstance(h, Types.DoubleInstr):
                p, e, l, _ = h
                if (p in Types.JumpOp or p.upper().startswith('CALL')) and \
                        isinstance(e, (Types.JumpDes, Types.CallDes)):
                    self.cg_process(e, l)
        return instrs

    def visit(self, instrs):
        return self.vinst_tail(instrs)

    def cfi_specified_tbl(self):
        for k,v in cg.cg_tbl.iteritems():
            for f in v:
                self.update_cfitbl(f, k)

    def print_cg_graph(self):
        for k,v in cg.cfi_tbl.iteritems():
            sys.stdout.write(dec_hex(k))
            for f in v:
                print '    ' + f.func_name

    def print_cfi_specified_graph(self):
        self.cfi_specified_tbl()
        for k,v in cg.cfi_tbl.iteritems():
            print k
            for l in v:
                print '    ' + dec_hex(l)

    def get_cg_table(self):
        return cg.cg_tbl

    def get_cfi_tbl(self):
        self.cfi_specified_tbl()
        return cg.cfi_tbl
