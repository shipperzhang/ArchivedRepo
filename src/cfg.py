from visit import ailVisitor
import Types
from ail_utils import get_loc

class tb(object):
    def __init__(self, bn, baddr, eaddr):
        self.bn = bn; self.baddr = baddr; self.eaddr = eaddr


class cfg(ailVisitor):
    
    cfg_table = {}
    cfg_bdiv_table = {}
    counter = 0

    def __init__(self):
        self.found_entry = False
        self.skip_entry = False
        self.entry_loc = Types.Loc('', 0, True)
        self.last_loc = Types.Loc('', 0, True)
        self.entry_instr = Types.SingleInstr(('NOP', Types.Loc('', 0, True), None))
        self.bb_list = []
        self.bl = []
        self.bl_sort = []

    def cfg_exp(self, e, l):
        if isinstance(e, Types.JumpDes):
            cfg.cfg_table[l.loc_addr] = e
        elif isinstance(e, Types.CallDes) and not e.is_lib:
            cfg.cfg_table[l.loc_addr] = e.func_begin_addr

    def vinst1(self, i):
        # stub not used
        pass

    def vinst(self, i):
        # TODO: stub
        return ailVisitor.vinst(self, i)

    def visit(self, instrs):
        self.end_loc = get_loc(instrs[-1])
        il1 = map(self.vinst, instrs)
        self.update_bl()
        self.fb_list(self.bl)
        self.bl_sort = sorted(self.bl, cmp=lambda b1,b2: b1.bblock_begin_loc.loc_addr - b2.bblock_begin_loc.loc_addr)
        self.bl_sort = map(lambda b: tb(b.bblock_name, b.bblock_begin_loc.loc_addr, b.bblock_end_loc.loc_addr), self.bl_sort)
        return il1

    def get_fbl(self):
        return cfg.cfg_bdiv_table

    def get_bbl(self):
        return self.bl

    def fb_list(self, bl):
        for b in bl:
            fn = b.bf_name
            e = cfg.cfg_bdiv_table.get(fn, [])
            e.append(b)
            cfg.cfg_bdiv_table[fn] = e 

    def update_bl(self):
        # update in place (no return)
        # TODO: stub
        pass

    def recover_cfg(self):
        # TODO: stub
        pass

    def print_cfg_graph(self, cfg_t):
        # TODO: stub
        pass

    def get_cfg_table(self, instr_list):
        self.instrs = instr_list
        return self.recover_cfg()
