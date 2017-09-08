from visit import ailVisitor


class cfg(ailVisitor):

    def __init__(self):
        # TODO: stub
        pass

    def cfg_exp(self, e, l):
        # TODO: stub
        pass

    def vinst1(self, i):
        # TODO: stub
        pass

    def vinst(self, i):
        # TODO: stub
        return ailVisitor.vinst(self, i)

    def visit(self, instrs):
        # TODO: stub
        return ailVisitor.visit(self, instrs)

    def get_fbl(self):
        # TODO: stub
        pass

    def print_fbl(self):
        # TODO: stub
        pass

    def get_bbl(self):
        # TODO: stub
        pass

    def fb_list(self, bl):
        # TODO: stub
        pass

    def update_bl(self):
        # TODO: stub
        pass

    def recover_cfg(self):
        # TODO: stub
        pass

    def print_cfg_graph(self, cfg_t):
        # TODO: stub
        pass

    def get_cfg_table(self, instr_list):
        # TODO: stub
        pass
