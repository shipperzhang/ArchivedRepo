import config
from termcolor import colored
from subprocess import check_output
from utils.ail_utils import ELF_utils
from postprocess import compile_process

if ELF_utils.elf_arm():
    badbytes = set(('\xbd', '\x47'))
    sled = 'mov r0,r0; '
    barrier = ''
else:
    badbytes = set(('\xc2', '\xc3', '\xca', '\xcb', '\xff'))
    sled = 'jmp .+11;' + ('nop;' * 9) + ' '
    barrier = 'movl %eax,%eax'


def get_symbol_values():
    def symmapper(s):
        s = s.split()
        return (s[1], int(s[0], 16))
    def pltmapper(s):
        s = s.split()
        return (s[1].split('@')[0][1:], int(s[0], 16))
    syms = check_output("readelf -Ws a.out| grep S_ | tr -s ' ' | cut -d ' ' -f3,9", shell=True)
    syms = dict(map(symmapper, syms.strip().split('\n')))
    plts = check_output(config.objdump + " -j .plt -S a.out | grep '>:'", shell=True)
    syms.update(map(pltmapper, plts.strip().split('\n')))
    return syms

def sled_insertion():
    syms = get_symbol_values()
    with open('final.s') as f:
        lines = f.readlines()

        # TODO: stuff

    with open('final.s', 'w') as f:
        f.writelines(lines)

    return 0

def enforce_alignment():
    print colored('6: ALIGNMENT ENFORCEMENT', 'green')
    while True:
        compile_process.reassemble()
        if sled_insertion() == 0: break
