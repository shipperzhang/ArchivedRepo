import re
import Types
import config
from utils.ail_utils import Opcode_utils
from lex_new import Lloc, Lop, Lexp, prefix_sub, lexer


class base_parser(object):

    def __init__(self):
        self.func_list = []
        self.sec_list = []
        self.call_des = False
        self.jmp_des = False

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


class parseX86(base_parser):

    def unptr_symb(self, s):
        r = self.reg_symb(s[1:-1])
        return Types.UnOP(r) if r is not None else None

    def binptr_m_symb(self, s):
        if ',' in s or ':' in s: return None
        items = s.split('(')
        offset = items[0]
        if offset[0] != '-': return None
        reg = self.reg_symb(items[1][:-1])
        return None if reg is None else Types.BinOP_MINUS((reg, int(offset[1:], 16)))

    def binptr_p_symb(self, s):
        if ',' in s or ':' in s: return None
        items = s.split('(')
        offset = items[0]
        reg = self.reg_symb(items[1][:-1])
        return None if reg is None else Types.BinOP_PLUS((reg, int(offset, 16)))

    def threeptr_symb(self, s):
        if s[0] == '(' and s[-1] == ')':
            items = s[1:-1].split(',')
            if len(items) != 3: return None
            reg1 = self.reg_symb(items[0])
            reg2 = self.reg_symb(items[1])
            return None if reg1 is None or reg2 is None \
                else Types.ThreeOP((reg1, reg2, int(items[2])))
        return None

    def fourptr_m_symb(self, s):
        items = s.split('(')
        offset = items[0]
        if offset[0] != '-': return None
        offset = offset[1:]
        items1 = items[1][:-1].split(',')
        if len(items1) != 3: return None
        reg1 = self.reg_symb(items1[0])
        reg2 = self.reg_symb(items1[1])
        return None if reg1 is None or reg2 is None \
            else Types.FourOP_MINUS((reg1, reg2, int(items1[2]), int(offset, 16)))

    def fourptr_p_symb(self, s):
        items = s.split('(')
        offset = items[0]
        if offset[0] == '%' or offset[0] == '*': return None
        items1 = items[1][:-1].split(',')
        if len(items1) != 3: return None
        reg1 = self.reg_symb(items1[0])
        reg2 = self.reg_symb(items1[1])
        return None if reg1 is None or reg2 is None \
            else Types.FourOP_PLUS((reg1, reg2, int(items1[2]), int(offset, 16)))

    def segref_symb(self, s):
        if ':' not in s: return None
        items = s.split(':')
        se = items[0].strip()[1:]
        if len(items) != 2 or se not in Types.Seg: return None
        return Types.SegRef((Types.SegClass(se), self.exp_symb(items[1].strip())))

    def jmptable_m_symb(self, s):
        if '(,' not in s: return None
        tokens = s.split(',')
        if tokens[0][0] != '-': return None
        addr = tokens[0][1:-1]
        reg = self.reg_symb(tokens[1])
        off = tokens[2][:-1]
        return None if reg is None \
            else Types.JmpTable_MINUS((int(addr, 16), reg, int(off)))

    def jmptable_p_symb(self, s):
        if '(,' not in s: return None
        tokens = s.split(',')
        addr = tokens[0][:-1]
        reg = self.reg_symb(tokens[1])
        off = tokens[2][:-1]
        return None if reg is None \
            else Types.JmpTable_PLUS((int(addr, 16), reg, int(off)))

    def ptraddr_symb(self, s):
        mappers = [self.unptr_symb, self.binptr_m_symb, self.binptr_p_symb,
                   self.threeptr_symb, self.fourptr_m_symb, self.fourptr_p_symb,
                   self.jmptable_m_symb, self.jmptable_p_symb, self.segref_symb]
        for m in mappers:
            res = m(s)
            if res is not None: return res
        return None

    def ptr_symb(self, s):
        if '(' in s and ')' in s:
            return self.ptraddr_symb(s)
        return None

    def jumpdes_symb(self, s):
        if '+' in s or '-' in s:
            return Types.JumpDes(s.split()[0], 16)
        try: return Types.CallDes(self.calldes_symb(s))
        except AttributeError: return None

    def calldes_symb(self, s):
        items = s.split()
        if len(items) < 2: return None
        s1 = items[1].strip()
        if '+' in s1 or '-' in s1:
            return self.get_func('S_0x' + items[0], False)
        elif '@' in s1:
            name = s1.split('@')[0]
            return self.get_func(name[1:], True)
        return self.get_func(s1[1:-1], True)

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
        try:
            if s[0] == '$': return Types.Normal(s[1:], 16)
            return Types.Point(s, 16)
        except ValueError: return None

    def exp_symb(self, s):
        if s[0] == '*': return Types.StarDes(self.stardes_symb(s))
        symbf = [self.ptr_symb, self.reg_symb, self.assist_sym, self.const_symb, self.symbol_symb]
        for f in symbf:
            res = f(s)
            if res is not None: return res
        return Types.Label(s)

    def op_symb(self, sym):
        if sym not in Types.Op: raise Exception('Invalid operator: ' + sym)
        if Opcode_utils.call_patt.match(sym): self.call_des = True  # @UndefinedVariable
        return sym

    def prefix_identify(self, instr):
        return 'lock ' in instr


class parseARM(base_parser):

    def reg_symb(self, sym):
        if sym in Types.Reg:
            return Types.StarDes(Types.RegClass(sym)) if self.call_des else Types.RegClass(sym)
        return None

    def const_symb(self, sym):
        if self.jmp_des: return None
        try:
            if sym[0] == '#': return Types.Normal(sym[1:], 16)
            return Types.Point(sym, 16)
        except ValueError: return None

    def unptr_symb(self, sym):
        # LDR R0, [R1]
        r = self.reg_symb(sym[1:-1])
        return Types.UnOP(r) if r is not None else None

    def binptr_symb(self, sym):
        # LDR R0, [R1, #0x10]
        preind = sym[-1] == '!'
        items = sym[1:(-2 if preind else -1)].split(',')
        if len(items) == 2 and items[1][0] == '#':
            off = int(items[1][1:], 16)
            return Types.BinOP_PLUS((self.reg_symb(items[0]), off), preind) if off >= 0 else \
                   Types.BinOP_MINUS((self.reg_symb(items[0]), -off), preind)
        return None

    def threeptr_symb(self, sym):
        # LDR R0, [R1, R2, LSL #1]
        items = sym[1:-1].split(',')
        if len(items) == 2: items.append('lsl|#0')
        return Types.ThreeOP((self.reg_symb(items[0]), self.reg_symb(items[1]), self.shift_symb(items[2])))

    def ptr_symb(self, sym):
        if sym[0] != '[': return None
        mappers = [self.unptr_symb, self.binptr_symb, self.threeptr_symb]
        for m in mappers:
            res = m(sym)
            if res is not None: return res
        return None

    def shift_symb(self, sym):
        # ADD R0, R1, R2, LSL #8
        if sym[0] != '[' and '|' in sym:
            items = sym.split('|')
            return Types.ShiftExp(items[0], int(items[1][1:]))
        return None

    def jmpdes_symb(self, sym):
        # B #0x1010
        if sym[0] == '#':
            if '.' in sym: return None
            addr = int(sym[1:], 16) & (-2)
            return Types.JumpDes(addr)
        try: return Types.CallDes(self.calldes_symb(sym))
        except: return None

    def calldes_symb(self, sym):
        # BLX #0x10338 <abort@plt>
        items = sym.split()
        if (len(items) < 2 and items[0][0] == '#') or \
           ('+' in items[1] or '-' in items[1]):
            addr = int(items[0][1:], 16) & (-2)
            return self.get_func('S_0x%X' % addr, False)
        if '@' in items[1]:
            name = items[1].split('@')[0]
            return self.get_func(name[1:], True)
        return None

    def symbol_symb(self, sym):
        return Types.CallDes(self.calldes_symb(sym)) if self.call_des else self.jmpdes_symb(sym)

    def reg_list(self, sym):
        # POP {R1, R2}
        if sym[0] == '{':
            return Types.RegList(map(Types.RegClass, sym[1:-1].split(',')))
        return None

    tb_matcher = re.compile('\((S_0x[0-9a-f]+)\-(S_0x[0-9a-f]+)\)\/2', re.I)
    def tb_symb(self, sym):
        m = parseARM.tb_matcher.search(sym)
        if m: return Types.TBExp(m.group(2), m.group(1))
        return None

    def exp_symb(self, s):
        symbf = [self.reg_list, self.tb_symb, self.shift_symb, self.ptr_symb,
                 self.reg_symb, self.const_symb, self.symbol_symb]
        for f in symbf:
            res = f(s)
            if res is not None: return res
        return Types.Label(s)

    def op_symb(self, sym):
        if sym in Types.DataTypes: return Types.InlineData(sym)
        parts = sym.split('.')
        if (parts[0] in Types.Op or
           (parts[0][-2:] in Types.CondSuff and parts[0][:-2] in Types.Op)) and \
           all(map(lambda e: e in Types.OpQualifier, parts[1:])):
            self.jmp_des = parts[0] in Types.ControlOp or \
                           (parts[0][-2:] in Types.CondSuff and parts[0][:-2] in Types.ControlOp)
            self.call_des = Opcode_utils.call_patt.match(parts[0]) is not None  # @UndefinedVariable
            return sym
        raise Exception('Invalid operator: ' + sym)

    def prefix_identify(self, instr):
        return False


class parse(parseARM if (config.arch == config.ARCH_ARMT) else parseX86):

    def push_stack(self, lex):
        lext = lex.__class__
        if lext == Lop: return self.op_symb(lex)
        elif lext == Lexp: return self.exp_symb(lex)
        elif lext == Lloc: return Types.Loc('', int(lex, 16), True)
        raise Exception('Parsing error')

    def reduce_stack(self, stack, pre):
        sl = len(stack)
        stack = stack[:1] + \
                (stack[::-1][1:-1] if isinstance(self, parseX86) else stack[1:-1]) + \
                stack[-1:] + [pre]
        if sl == 2: return Types.SingleInstr(stack)
        elif sl == 3: return Types.DoubleInstr(stack)
        elif sl == 4: return Types.TripleInstr(stack)
        elif sl == 5: return Types.FourInstr(stack)
        elif sl == 6: return Types.FiveInstr(stack)
        raise Exception('Parsing error')

    def parse_instr(self, instr, loc):
        self.call_des = False
        self.jmp_des = False
        has_pre = self.prefix_identify(instr)
        if has_pre: instr = prefix_sub(instr)
        lexem_list = lexer(instr, loc)
        s = map(self.push_stack, lexem_list)
        return self.reduce_stack(s, has_pre)


