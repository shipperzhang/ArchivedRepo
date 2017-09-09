from visit import ailVisitor


class cg(ailVisitor):
    
    cg_tbl = {}
    cfi_tbl = {}

    def update_cgtbl(self, l, func):
        # TODO: stub
        pass

    def update_cfitbl(self, func, l):
        # TODO: stub
        pass

    def func_info(self, l):
        # TODO: stub
        pass

    def cg_process(self, e, l):
        # TODO: stub
        pass

    def vinst_tail(self, instrs):
        # TODO: stub
        pass

    def visit(self, instrs):
        return self.vinst_tail(instrs)

    def cfi_specified_tbl(self):
        # TODO: stub
        pass

    def print_cg_graph(self):
        # TODO: stub
        pass

    def print_cfi_specified_graph(self):
        # TODO: stub
        pass

    def get_cg_table(self):
        # TODO: stub
        pass

    def get_cfi_tbl(self):
        # TODO: stub
        pass
