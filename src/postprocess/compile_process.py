import os
import config
from sets import Set
from utils.ail_utils import ELF_utils


def reassemble(saveerr=False, libs=[]):
    os.system(config.compiler + ' final.s ' + ' '.join(libs)
              + (' -m32' if ELF_utils.elf_32() else '')
              + (' 2> final.error' if saveerr else ''))


def parse_error():
    if os.path.isfile('final.error'):
        addrs = []
        with open("final.error") as ferror:
            for l in ferror:
                if 'In function' in l: pass
                elif 'undefined reference' in l and 'S_0x' in l:
                    addrs.append(l.split()[-1][1:-1])
        return Set(addrs)


def modify(errors):
    with open("final.s") as f:
        lines = f.readlines()
    def help_err(l):
        e = filter(lambda e : e in l, errors)
        if e != []:
            addr = e[0][2:]
            #print "undefined label : "+addr
            l = l.replace(e[0], addr)
        return l
    lines = map(help_err, lines)
    with open("final.s", 'w') as f:
        f.writelines(lines)


def main():
    print "     modify final.s to adjust redundant symbols"
    reassemble(True)
    errors = parse_error()
    modify(errors)
    print "     modify finished"
