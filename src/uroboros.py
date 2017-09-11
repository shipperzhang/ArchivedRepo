import os
import glob
import init
import time
import shutil
import datetime
import func_addr
import gobmk_sub
import label_adjust
import main_discover
import compile_process
import post_process_data
from argparse import ArgumentParser
from argparse import RawTextHelpFormatter
from main_discover import check_exe, check_strip
import traceback


f_dic = ''


def process(filepath, iter_curr, iter_num, keep):
    try:
        for f in glob.glob('final_*.txt'): os.remove(f)

        # suppose we use this method to obtain function information
        func_addr.func_addr(filepath, iter_curr)

        if os.path.isfile('final_data.s'): os.remove('final_data.s')
        if os.path.isfile('useless_func.info'): os.remove('useless_func.info')

        if iter_curr > 0: func_addr.useless_func_discover(filepath)

        with open('count.txt', 'w') as f: f.write(str(iter_curr))
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

        if keep:
            shutil.copy('final.s', 'final.s.' + str(iter_curr))

        if "gobmk" in filepath:
            gobmk_sub.gobmk_sub()

        compile_process.main()
        label_adjust.label_adjust()
        compile_process.reassemble()

        if iter_num > 1:
            shutil.copy('a.out', filepath)

        if keep:
            print f_dic
            shutil.copy('a.out', f_dic + "/" + filepath + "." + str(iter_curr + 1))
            shutil.move('final.s.' + str(iter_curr), f_dic)
    except Exception as e:
        print e
        return False
    else:
        if os.path.isfile('faddr_old.txt.' + str(iter_curr)):
            os.remove('faddr_old.txt.' + str(iter_curr))
        if os.path.isfile('faddr.txt.' + str(iter_curr)):
            os.remove('faddr.txt.' + str(iter_curr))

    return True


def iterate (filepath, iterations, keep):
    print "Start to process binary: " + filepath

    for i in range(iterations):
        print ("########## Iteration round " + str(i+1) + " begin ! ###########")
        if not process(filepath, i, iterations, keep): return False
        print ("########## Iteration round " + str(i+1) + " finish ! ##########")
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


def fold_withtamp(filepath):
    global f_dic
    ts = time.time()
    st = datetime.datetime.fromtimestamp(ts).strftime('%Y-%m-%d_%H:%M:%S')
    f_dic = "test_fold_" + filepath + '_' + st
    os.mkdir(f_dic)


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
    os.chdir(os.path.dirname(os.path.abspath(__file__)))
    p = ArgumentParser(formatter_class=RawTextHelpFormatter)
    p.add_argument("binary",
                   help="path to the input binary")
    p.add_argument("-i", "--iteration", type=int,
                   help="the number of disassemble-(instrument)-reassemble iterations")
    p.add_argument("-k", "--keep", action="count",
                   help="if multiple iteration processing, whether to keep itermediate binaries")
    p.add_argument("-a", "--assumption", action="append",
                   help='''this option configures three addtional assumption,
note that two basic assumptions and addtional assumption one
(n-byte alignment) are set by default,
while assumption two and three need to be configured. For example, setting
assumption two and three: -a 2 -a 3''')
    p.add_argument('--version', action='version', version='Uroboros 0.11')

    args = p.parse_args()
    binfile = args.binary
    iter_num = args.iteration if args.iteration else 1
    keep = (args.keep > 0)

    filepath = os.path.realpath(binfile)
    if check(filepath, args.assumption) and set_assumption(args.assumption):
        if keep: fold_withtamp(filepath)
        if iterate(os.path.basename(filepath), iter_num, keep): print "Processing succeeded"
        else: print "Exception, processing failed"


if __name__ == "__main__":
    main()
