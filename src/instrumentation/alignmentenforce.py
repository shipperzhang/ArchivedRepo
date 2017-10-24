import os
from termcolor import colored
from utils.ail_utils import ELF_utils
from postprocess import compile_process
from elftools.elf.elffile import ELFFile

if ELF_utils.elf_arm():
    badbytes = set(('\xbd', '\x47'))
    badend = set([])
    sled = 'mov r0,r0; '
    barrier = ''
else:
    badbytes = set(('\xc2', '\xc3', '\xca', '\xcb', '\xff'))
    badend = set(['\xff'])
    sled = 'jmp .+11;' + ('nop;' * 9) + ' '
    barrier = 'movl %eax,%eax;'


def get_hex():
    f = open('a.out', 'rb')
    info = ELFFile(f)
    dwarf = info.get_dwarf_info()
    cu = next(dwarf.iter_CUs())
    lp = dwarf.line_program_for_CU(cu).get_entries()

    textsec = info.get_section_by_name('.text')
    datas = filter(lambda s: s.name == '$d', info.get_section_by_name('.symtab').iter_symbols())
    datas = sorted(map(lambda s: s.entry['st_value'], datas))
    datas = filter(lambda s: lp[0].args[0] < s < lp[-1].state.address, datas)
    if not ELF_utils.elf_arm(): datas.insert(0, -1)
    voff = textsec.header['sh_addr'] - textsec.header['sh_offset']

    curr_line = 0; curr_data = 0
    res = [''] * lp[-1].state.line
    f.seek(lp.pop(0).args[0] - voff, os.SEEK_SET)

    for e in lp:
        if len(e.args) == 0:
            curr_line = e.state.line - 1
        elif len(e.args) == 1:
            res[curr_line] = f.read(e.args[0])
        elif len(e.args) == 3:
            if e.args[0] == 0:
                pc = voff + f.tell()
                if pc < datas[curr_data] < pc + e.args[1]:
                    size = datas[curr_data] - pc
                    res[curr_line] = f.read(size)
                else:
                    size = 0
                f.seek(e.args[1] - size, os.SEEK_CUR)
                curr_line = e.state.line - 1
            else:
                res[curr_line] = f.read(e.args[1])
                curr_line += e.args[0]
    f.close()
    return res


def sled_insertion(lines):
    hexvals = get_hex()

    for i in xrange(len(hexvals)):
        if hexvals[i]:
            print i, lines[i].strip(), '->', map(lambda e: hex(ord(e)), hexvals[i])
        # TODO: stuff
    exit()

    with open('final.s', 'w') as f:
        f.writelines(lines)

    return 0


def enforce_alignment():
    print colored('6: ALIGNMENT ENFORCEMENT', 'green')
    with open('final.s') as f:
        lines = f.readlines()
    while True:
        compile_process.reassemble(False, [], True)
        if sled_insertion(lines) == 0: break
