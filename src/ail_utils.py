
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

def cat_from(strlist, v, s):
    #TODO: stub
    pass

