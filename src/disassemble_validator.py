import Types


class stack_of_loc(object):
    def __init__(self, params):
        self.loclist = []
    def push(self, x):
        return self.loclist.append(x)
    def pop(self):
        return self.loclist.pop()
    def peek(self):
        return self.loclist[-1]
    def size(self):
        return len(self.loclist)


class dis_validator(object):

    def __init__(self):
        self.icf_stack = stack_of_loc()
        self.text_secs = []
        self.text_mem_addrs = []
        self.locs = []
        self.up_bound = Types.Loc('', 0, True)
        self.low_bound = Types.Loc('', 0, True)
        self.trim_tbl = {}

    def text_sec_collect(self):
        #TODO: stub
        pass

    def invalid_opcode(self, instr):
        #TODO: stub
        pass

    def invalid_transfer(self, instr):
        #TODO: stub
        pass

    def visit(self, instrlist):
        #TODO: stub
        pass

    def trim_results(self):
        #TODO: stub
        pass

    def validate(self, instrlist):
        #TODO: stub
        pass

