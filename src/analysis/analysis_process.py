from analysis.cg import cg
from analysis.cfg import cfg
from utils.ail_utils import read_file, ELF_utils
from utils.pp_print import pp_print_list, pp_print_file
import re as regex

class Analysis(object):
    """
    Code analysis skeleton
    """

    @staticmethod
    def global_bss():
        """
        Load external bss variable information
        """
        lines = read_file('globalbss.info')
        def mapper(l):
            items = l.strip().split()
            return (items[0][1:].upper(), items[1])
        return map(mapper, lines)

    @staticmethod
    def analyze(il, fl, re, docfg=True):
        """
        Analyze code
        :param il: instruction list
        :param fl: function list
        :param re: symbol reconstruction object
        :param docfg: True to evaluate call graph and cfg
        :return: [fbl, block labels, CFG table, CG table,] instruction list, symbol reconstruction object
        """
        u_fl = list(filter(lambda f: not f.is_lib, fl))

        il = re.adjust_loclabel(il)
        re.reassemble_dump(u_fl)
        il = re.adjust_jmpref(il)

        print([f.func_name for f in fl])

        stringtable = {}
        addresstable = {}

        symbol = ''
        string = ''
        with open('final_data.s','r') as f:
            lines = f.readlines()
            for line in lines:
                if line.startswith('S_0x'):
                    if symbol: 
                        stringtable[symbol] = string
                    string = ''
                    symbol, ch = line.split(':')
                else: ch = line
                ch = ch.strip()
                if ch.startswith('.byte'):
                    string = string + chr(int(ch.split()[1],16))
                else:
                    if symbol: stringtable[symbol] = string
                    symbol = ''
                    string = ''
        
        for I in il: addresstable[I[-2].loc_addr] = I

        with open('dimension.txt','w') as f: 
            for F in fl:
                layer = False
                d = {}
                for address in range(F.func_begin_addr, F.func_end_addr):
                    I = addresstable.get(address, None)
                    if I is None: continue
                    if I[0] == 'lea': 
                        string = stringtable.get(I[2][1], None)
                        if string is None: continue
                        m = regex.match(r'Assert fail: \((\d*) == int32\(arg(\d*)\.shape\[(\d*)\]\)\), .*', string)
                        if m:
                            layer = True
                            argNum = int(m.group(2))
                            if d.get(argNum, None) is None: d[argNum] = {}
                            d[argNum][int(m.group(3))] = m.group(1)
                if layer:
                    f.write(F.func_name + '\n')
                    i = 0
                    while True:
                        if d.get(i,None) is None: break
                        argD = d[i]
                        j = 0
                        dimension = ''
                        while True:
                            if argD.get(j, None) is None: break
                            dimension = dimension + argD[j] + ','
                            j += 1
                        f.write('arg' + str(i) + '(' + dimension + ')\n')
                        i += 1
                    f.write('-----------------------------------------------------\n')



        if docfg:
            _cg = cg()
            _cg.set_funcs(fl)
            il = _cg.visit(il)

        if docfg:
            _cfg = cfg()
            _cfg.set_funcs(fl)
            il = _cfg.visit(il)
            bbl = _cfg.get_bbl()
            il = re.add_bblock_label(bbl, il)
            return (_cfg.get_fbl(), bbl, _cfg.get_cfg_table(il), _cg.get_cg_table(), il, re)

        return (None, None, None, None, il, re)

    @staticmethod
    def post_analyze(il, re):
        """
        Make final adjustments and write code to file
        :param il: instruction list
        :param re: symbol reconstruction object
        """
        il = re.unify_loc(il)
        if ELF_utils.elf_arm(): il = re.alignvldrARM(il)
        ils = pp_print_list(il)
        ils = re.adjust_globallabel(Analysis.global_bss(), ils)
        pp_print_file(ils)
