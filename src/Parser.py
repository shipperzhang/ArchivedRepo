import Types
from lex_new import Lloc, Lop, Lexp
from lex_new import prefix_identify, prefix_sub, lexer


class parse(object):

    def __init__(self):
        self.call_des = False
        self.func_list = []
        self.sec_list = []

    def pp_print(self, l):
        print ''.join(map(lambda e: 'item: ' + e, l)) + 'end'

    def conptr_symb(self, s):
        #TODO: stub
        pass

    def ptraddr_symb(self, s):
        #TODO: stub
        pass

    def ptr_symb(self, s):
        #TODO: stub
        pass

    def jumpdes_symb_bak(self, s):
        # stub not used
        pass

    def jumpdes_symb(self, s):
        if '+' in s or '-' in s:
            return Types.JumpDes(s.split()[0], 16)
        return Types.CallDes(self.calldes_symb(s))

    def calldes_symb(self, s):
        s1 = s.split()[1].strip()
        if '+' in s1:
            pass
        #TODO: stub

    def star_jmptable_symb(self, s):
        #TODO: stub
        pass

    def jmptable_m_symb(self, s):
        #TODO: stub
        pass

    def jmptable_p_symb(self, s):
        #TODO: stub
        pass

    def calljmp_symb(self, s):
        #TODO: stub
        pass

    def leades_symb(self, s):
        #TODO: stub
        pass

    def callstar_symb(self, s):
        #TODO: stub never called
        pass

    def stardes_symb(self, s):
        return self.exp_symb(s[1:])

    def symbol_symb(self, s):
        s = s.strip()
        if s[0] == '*':
            return Types.StarDes(self.stardes_symb(s))
        elif self.call_des:
            return Types.CallDes(self.calldes_symb(s))
        return self.jumpdes_symb(s)

    def reg_symb(self, s):
        r = s[1:].upper()
        return Types.RegClass(r) if r in Types.Reg else None

    def assist_sym(self, s):
        return Types.AssistOpClass(s) if s in Types.AssistOp else None

    def const_symb(self, s):
        s = s.strip()
        if s[0] == '$':
            return Types.Normal(s[1:], 16)
        try: return Types.Point(s, 16)
        except ValueError: return None

    def exp_symb(self, s):
        symbf = [self.ptr_symb, self.reg_symb, self.assist_sym, self.const_symb, self.symbol_symb]
        for f in symbf:
            res = f(s)
            if res is not None: return res
        return Types.Label(s)

    def op_symb(self, sym):
        if sym not in Types.Op: raise Exception('Invalid operator:' + sym)
        return sym

    def push_stack(self, lex):
        lext = lex.__class__
        if lext == Lop: return self.op_symb(lex)
        elif lext == Lexp: return self.exp_symb(lex)
        elif lext == Lloc: return Types.Loc('', int(lex, 16), True)
        raise Exception('Parsing error')

    def reduce_stack(self, stack, pre):
        sl = len(stack)
        stack.append(pre)
        if sl == 2: return Types.SingleInstr(stack)
        elif sl == 3: return Types.DoubleInstr(stack)
        elif sl == 4: return Types.TripleInstr(stack)
        elif sl == 5: return Types.FourInstr(stack)
        raise Exception('Parsing error')

#    def print_f(self, fl):
#        pass

    def set_funclist(self, l):
        self.func_list = l

    def get_funclist(self):
        return self.func_list

    def set_seclist(self, l):
        self.sec_list = l

    def get_func(self, name, lib):
        f = next((e for e in self.func_list if e.func_name == name), None)
        if f is None:
            f = Types.Func(name, 0, 0, lib)
            self.func_list.insert(0, f)
        return f

    def get_sec(self, addr):
        addr = int(addr, 16)
        s = next((h for h in self.sec_list if h.sec_begin_addr <= addr < h.sec_begin_addr + h.sec_size), None)
        if s is None: raise Exception("Error in get_sec")
        return s

    def init_process(self):
        self.call_des = False

    def parse_instr(self, instr, loc):
        self.init_process()
        has_pre = prefix_identify(instr)
        instr1 = prefix_sub(instr)
        lexem_list = lexer(instr1, loc)
        s = []
        for l in lexem_list:
            s.append(self.push_stack(l))
            # s.insert(0, self.push_stack(l))
        return self.reduce_stack(s, has_pre)
