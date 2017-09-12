import os
import glob
import init
import shutil
from disasm import main_discover, func_addr
from disasm.main_discover import check_exe, check_strip
from argparse import ArgumentParser, RawTextHelpFormatter
from postprocess import compile_process, post_process_data, gobmk_sub, label_adjust


f_dic = ''

def process(filepath):
    print "Start to process binary: " + filepath

    try:
        for f in glob.glob('final_*.txt'): os.remove(f)

        # suppose we use this method to obtain function information
        func_addr.func_addr(filepath, 0)

        if os.path.isfile('final_data.s'): os.remove('final_data.s')
        if os.path.isfile('useless_func.info'): os.remove('useless_func.info')

        # if iter_curr > 0: func_addr.useless_func_discover(filepath)

        # with open('count.txt', 'w') as f: f.write(str(iter_curr))
        os.system('strip ' + filepath)
        main_discover.main_discover(filepath)

        # os.system("./init.native " + filepath)
        init.main(filepath)
        if not os.path.isfile("final.s"): return False

        post_process_data.post_process_data()

        with open('final_data.s', 'a') as f:
            f.write('.section .eh_frame\n')
            with open('eh_frame_split.info') as eh: f.write(eh.read())
            f.write('.section .eh_frame_hdr\n')
            with open('eh_frame_hdr_split.info') as eh: f.write(eh.read())
        with open('final.s', 'a') as f:
            with open('final_data.s', 'r') as fd: f.write(fd.read())

        if "gobmk" in filepath:
            gobmk_sub.gobmk_sub()

        compile_process.main()
        label_adjust.label_adjust()
        compile_process.reassemble()

    except Exception as e:
        print e
        return False

    return True


def check(filepath, assumptions):
    if not assumptions: assumptions = []

    if not os.path.isfile(filepath):
        print "cannot find input binary"
        return False

    if os.path.dirname(filepath) != os.getcwd():
        shutil.copy(filepath, '.')

    os.system('file ' + filepath + ' > elf.info')
    if not check_exe():
        print "Uroboros doesn't support shared library"
        return False

    # if assumption three is utilized, then input binary must be unstripped.
    if '3' in assumptions and not check_strip():
        print 'Uroboros does not support stripped binaries when using assumption three'
        return False

    return True


def set_assumption (assumptions):
    # 2 -> assumption two: fix data section starting address
    # Note that assumption two require linker script to reassemble!
    # Some of the examples can be found at ./ld_scripts/*
    # 3 -> assumption three: function starting address + jump table
    # _ -> not defined.

    if not assumptions:
        with open('assumption_set.info', 'w') as f:
            f.write('1\n')
    else:
        chk = (i in ['2', '3'] for i in assumptions)
        if any(chk) == False:
            print "assumption undefined!"
            print "accecpt assumptions: 2 for assumption two and 3 for assumption three"
            return False
        with open('assumption_set.info', 'w') as f:
            f.write(' '.join(assumptions) + '\n')
    return True


def main():
    workdir = os.path.dirname(os.path.abspath(__file__)) + '/workdir'
    if not os.path.isdir(workdir): os.mkdir(workdir)
    os.chdir(workdir)
    p = ArgumentParser(formatter_class=RawTextHelpFormatter)
    p.add_argument("binary",
                   help="path to the input binary")
    p.add_argument("-a", "--assumption", action="append",
                   help='''this option configures three addtional assumption,
note that two basic assumptions and addtional assumption one
(n-byte alignment) are set by default,
while assumption two and three need to be configured. For example, setting
assumption two and three: -a 2 -a 3''')
    p.add_argument('--version', action='version', version='Uroboros 0.11')

    args = p.parse_args()
    binfile = args.binary

    filepath = os.path.realpath(binfile)
    if check(filepath, args.assumption) and set_assumption(args.assumption):
        if process(os.path.basename(filepath)): print "Processing succeeded"
        else: print "Exception, processing failed"


if __name__ == "__main__":
    main()
