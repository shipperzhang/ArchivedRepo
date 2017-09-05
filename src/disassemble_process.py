import os
import filter_nop
import useless_func_del
from ail_parser import AilParser
from ail_utils import Time_Record as TR, read_file

class Disam(object):

    @staticmethod
    def disasm_skip(filepath, ba, ea):
        os.system("objdump -Dr -j .text " + filepath + " --start-address=" + str(ba) + " --stop-address=" + str(ea) + " > " + filepath + ".temp")
        useless_func_del.main(filepath)
        os.system("cat " + filepath + ".disassemble | grep \"^ \" | cut -f1,3 > instrs.info")
        filter_nop.main()
        os.system("cut -f 1 instrs.info > text_mem.info")

    @staticmethod
    def get_userfuncs(funcs):
        return filter(lambda f: not f.is_lib, funcs)

    @staticmethod
    def disassemble(filepath, funcs, secs):
        ailpar = AilParser()
        # re = reassemble()
        # dis_valid = dis_validator()
        il = []
        total = 0.0
        cond = False
        while not cond and total < 600.0:
            once = TR.get_utime()
            ailpar.set_funcs(funcs)
            ailpar.set_secs(secs)
            ailpar.processInstrs(read_file('instrs.info'))
            fl = ailpar.get_funcs()
            print "2: disassembly validates"
            #TODO: stub

            # adjust_list = dis_valid.trim_results()
            # if len(adjust_list) != 0:
            #    print "     disassembly error found!"
            #    Disam.disasm_skip(filepath, adjust_list[0][0], adjust_list[0][1])
            #    total += TR.elapsed(once)
            # else:
            #    cond = True

        print "     no disassembly error detects"
        # return (il, ailpar.get_funcs(), re)
