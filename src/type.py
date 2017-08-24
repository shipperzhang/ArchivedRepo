class File(object):
    def __init__(self, name, stripped, fformat, is32):
        self.name = name
        self.stripped = stripped
        self.format = fformat
        self.is32bit = is32

class Func(object):
    def __init__(self, name, begin, end, is_lib):
        self.func_name = name
        self.func_begin_addr = begin
        self.func_end_addr = end
        self.is_lib = is_lib
        
class Section(object):
    def __init__(self, name, begin, size):
        self.sec_name = name
        self.sec_begin_addr = begin
        self.sec_size = size
        
class Loc(object):
    def __init__(self, label, addr, visible):
        self.loc_label = label
        self.loc_addr = addr
        self.loc_visible = visible

class Bblock(object):
    def __init__(self, bf_name, bblock_name, bblock_begin_loc, bblock_end_loc, bblock_head_instr):
        self.bf_name = bf_name
        self.bblock_name = bblock_name
        self.bblock_begin_loc = bblock_begin_loc
        self.bblock_end_loc = bblock_end_loc
        self.bblock_head_instr = bblock_head_instr


#TODO: find smart way to represent type system