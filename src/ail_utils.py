import time

def unify_int_list(intlist):
    return sorted(set(intlist))

def unify_str_list(strlist):
    return sorted(set(strlist))

def unify_funclist_by_name(funclist):
    return {(f.func_name, f) for f in funclist}.values()

def unify_funclist_by_addr(funclist):
    #TODO: stub
    pass

def unif_hash_list(h):
    #TODO: stub
    pass

def string_to_int32(s):
    return int(s)

def compare_loc(l1, l2):
    return l1.loc_addr == l2.loc_addr and l1.loc_label == l2.loc_label

def get_loc(instr):
    #TODO:stub
    pass

def set_loc(instr, loc):
    #TODO:stub
    pass

def get_addr(instr):
    return get_loc(instr).loc_addr

def get_label(instr):
    return get_loc(instr).loc_label

def update_label(instr, label):
    loc = get_loc(instr)
    loc.loc_label = label
    return set_loc(instr, loc)

def get_op(instr):
    #TODO: stub
    pass

def get_cf_des(instr):
    #TODO: stub
    pass

def get_exp_1(instr):
    #TODO: stub
    pass

def read_file(filename):
    with open(filename) as f:
        lines = f.readlines()
    return lines

def dec_hex(val):
    return '0x%X' % val

def print_loclist(loclist):
    for loc in loclist:
        print loc.loc_label
        print dec_hex(loc.loc_addr)

def print_addrlist(intlist):
    print '\n'.join(map(dec_hex, intlist))

# zip already exists in python :D

def cat_from(strlist, v, suf):
    return ''.join(map(lambda s: s + suf, strlist[v:]))

def split_by_list(s, intlist):
    #TODO: stub
    pass
    
def int_of_string_opt(s):
    try: return int(s)
    except: return None
    
def print_exp_type(exp):
    #TODO: stub
    pass

def print_instr_type(inst):
    #TODO: stub
    pass

def sort_loc(loclist):
    return sorted(loclist, cmp=lambda l1,l2: l1.loc_addr - l2.loc_addr)

def get_instr_byloc(instrlist):
    #TODO: stub
    pass

def recover_addr_from_label(lab):
    lab = lab.strip()
    if lab.startswith('S_0x'):
        return int(lab[2:], 16)
    return -1

def get_next_bb(sn):
    assert('BB_' in sn)
    return 'BB_' + str(int(sn.strip()[3:]) + 1)

def memo_rec(f):
    #TODO: stub
    pass

def memo(f):
    #TODO: stub
    pass 
    
def get_end_addr_sec(section):
    def addr_folder(acc, l):
        items = l.split()
        if items[0] == section:
            acc = int(items[1], 16) + int(items[3], 16)
        return acc
    lines = read_file('text_sec.info') + read_file('sections.info')
    with open('sec_all.info', 'w') as fw:
        fw.writelines(lines)
    return reduce(addr_folder, lines, 0)
 
def sec_end_memo():
    return memo(get_end_addr_sec)

def get_bbl(cfg):
    return unify_str_list(map(lambda e: e[0], cfg))

def f_instr(func, instrs):
    beg = func.func_begin_addr
    end = func.func_begin_addr
    return filter(lambda i: beg <= get_loc(i).loc_addr < end, instrs)
            
def bb_successors(cfg, b):
    #TODO: stub
    pass

def bb_predecessors(cfg, b):
    #TODO: stub
    pass

def bb_instrs(block, instrs):
    beg = block.bblock_begin_loc.loc_addr
    end = block.bblock_end_loc.loc_addr
    return filter(lambda i: beg <= get_loc(i).loc_addr <= end, instrs)

def remove_over_once(l):
    #TODO: stub
    pass

def bbn_byloc(e, ls):
    #TODO: stub
    pass


class Algo(object):
    
    @staticmethod
    def sort_uniq(comp, l):
        #TODO: stub
        pass
    
    @staticmethod
    def b_search(e, ls, comp):
        #TODO: stub
        pass
    

class ELF_utils(object):
    
    @staticmethod
    def elf_check(key):
        with open('elf.info') as f:
            line = f.readline()
        return key in line
        
    @staticmethod
    def elf_32():
        return ELF_utils.elf_check('ELF 32-bit')
    
    @staticmethod
    def elf_64():
        return ELF_utils.elf_check('ELF 64-bit')
    
    @staticmethod
    def elf_dynamic():
        return ELF_utils.elf_check('dynamically linked')
    
    @staticmethod
    def elf_static():
        return not ELF_utils.elf_dynamic()
    
    @staticmethod
    def elf_unstrip():
        return ELF_utils.elf_check('not stripped')
    
    @staticmethod
    def elf_strip():
        return not ELF_utils.elf_unstrip()
    
    @staticmethod
    def elf_lib():
        return ELF_utils.elf_check('LSB shared object')
    

class Opcode_utils(object):
    
    @staticmethod
    def is_control_des(i):
        return ':' in get_label(i)
    
    @staticmethod
    def is_func(e):
        #TODO: stub
        pass
    
    @staticmethod
    def is_jmp(op):   
        #TODO: stub
        pass
    
    @staticmethod
    def is_cond_jmp(op):
        #TODO: stub
        pass
    
    @staticmethod
    def is_assign(op):
        #TODO: stub
        pass
    
    @staticmethod
    def is_mem_exp(op):
        #TODO: stub
        pass
    
    @staticmethod
    def is_push(op):
        #TODO: stub
        pass
    
    @staticmethod
    def is_stack_op(op):
        #TODO: stub
        pass
    
    @staticmethod
    def is_mov(op):
        #TODO: stub
        pass
    
    @staticmethod
    def is_call(op):
        #TODO: stub
        pass
    
    @staticmethod
    def is_ret(op):
        #TODO: stub
        pass
    
    @staticmethod
    def is_indirect(op):
        #TODO: stub
        pass
    
    @staticmethod
    def is_control_transfer_op(op):
        return is_call(op) or is_jmp(op) or is_cond_jmp(op) or is_ret(op)
    
    @staticmethod
    def is_cmp_op(op):
        #TODO: stub
        pass

        
class Exp_utils(object):
    
    @staticmethod
    def is_reg(e):
        #TODO: stub
        pass 

    @staticmethod
    def is_const(e):
        #TODO: stub
        pass
    
    @staticmethod
    def is_mem(e):
        #TODO: stub
        pass
    
    
class Instr_utils(object):      
        
    #TODO: all stub
    pass


class Instr_visitor(object):
    
    @staticmethod
    def map_instr(judge, visitor, il):
        def aux(i):
            t = judge(i)
            if t is None: return i
            return visitor(i, t)
        return map(aux, il)
    

class Instr_template(object):
    
    @staticmethod
    def gen_logging_instrs(i, iloc):
        #TODO: stub
        pass
    

class BB_utils(object):
    
    #TODO: all
    pass


class Bblock_visitor(object):
    
    @staticmethod
    def map_bblock(judge, visitor, bbl):
        def aux(i):
            t = judge(i)
            if t is None: return i
            return visitor(i, t)
        return map(aux, bbl)
    

class Func_utils(object):
    
    #TODO: all
    pass


class Function_visitor(object):
    
    @staticmethod
    def map_function(judge, visitor, fl):
        def aux(i):
            t = judge(i)
            if t is None: return i
            return visitor(i, t)
        return map(aux, fl)
    

class Cfg_utils(object):
    
    #TODO: all
    pass


class Cg_utils(object):
    
    #TODO: all
    pass
    

class Parallel(object):
    
    #TODO: all
    pass
    

class Time_Record(object):
    
    @staticmethod
    def stamp():
        print 'stamp : %f sec' % time.time()
        
    @staticmethod
    def get_utime():
        return time.time()
    
    @staticmethod
    def elapsed(t):
        print 'execution elapsed time: %f sec' % (time.time() - t)
        

class UIO(object):
    
    @staticmethod
    def lines_from_file(filename):
        return read_file(filename)
    
    @staticmethod
    def write_file(ll, fn):
        with open(fn, 'a') as f:
            f.writelines(ll)