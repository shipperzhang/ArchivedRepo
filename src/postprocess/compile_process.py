import os
import re
import config
from sets import Set
from utils.ail_utils import ELF_utils


def inferlibflags():
    try:
        with open('linkedlibs.info') as f:
            return map(lambda l: '-l' + l.split('.')[0].lstrip('lib'), f)
    except: return []


def reassemble(saveerr=False, libs=[]):
    if len(libs) == 0: libs = inferlibflags()
    return os.system(config.compiler + ' final.s '
              + ('-mthumb' if ELF_utils.elf_arm() else (' -Wa,-mindex-reg' + (' -m32' if ELF_utils.elf_32() else '')))
              + ' ' + config.gccoptions + ' ' + ' '.join(libs)
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
    if len(errors) == 0: return
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

def modifyARM():
    # final.s:36: Error: selected processor does not support `XXX' in Thumb mode
    if not os.path.isfile('final.error'): return
    with open('final.error') as f:
        bad = filter(lambda l: 'processor does not support' in l, f)
    if len(bad) == 0: return
    patt = re.compile("final\.s\:([0-9]+)\:[^`]+`([^']+)'", re.I)
    bad = map(lambda l: patt.match(l).groups(), bad)
    with open('final.s') as f:
        lines = f.readlines()
    for b in bad:
        i = int(b[0]) - 1
        lines[i] = lines[i].replace(b[1], '')
    with open("final.s", 'w') as f:
        f.writelines(lines)


def main(filepath):
    # Dump linked shared libraries
    os.system('readelf -d ' + filepath + ' | awk \'/Shared/{match($0, /\[([^\]]*)\]/, arr); print arr[1]}\' | grep -i -v "libc\\." > linkedlibs.info')
    print "     Adjusting redundant symbols"
    if ELF_utils.elf_arm():
        reassemble(True)
        modifyARM()
    reassemble(True)
    errors = parse_error()
    modify(errors)
