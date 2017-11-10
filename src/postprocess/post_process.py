"""
Code post processing
"""

import os
import inline_update
from utils.ail_utils import ELF_utils
from instrumentation import plaincode


def main(gfree=False):
    """
    Transform malformed code and add main symbol
    :param gfree: True to insert gfree initialization
    """

    with open("final.s") as f:
        lines = f.readlines()

    if ELF_utils.elf_exe():
        main_symbol1 = ''

        with open('main.info') as f:
            main_symbol1 = f.readline().strip()

        if main_symbol1 != '':
            def helpf(l):
                if '__gmon_start__' in l:
                    l = ''
                elif 'lea 0x7FFFFFFC(,%ebx,0x4),%edi' in l:
                    l = l.replace('0x7FFFFFFC', '0x7FFFFFFFFFFFFFFC')
                elif 'movzbl $S_' in l:
                    l = l.replace('movzbl $S_', 'movzbl S_')
                elif 'jmpq ' in l and '*' not in l:
                    l = l.replace('jmpq ', 'jmp ')
                if main_symbol1 + ' :' in l:
                    rep = '.globl main\nmain : '
                    if gfree: rep += plaincode.keygenfunction
                    l = l.replace(main_symbol1 + ' : ', rep)
                elif main_symbol1 in l:
                    l = l.replace(main_symbol1, 'main')
                return l
            lines = map(helpf, lines)

    with open("final.s", 'w') as f:
        f.writelines(lines)
        if gfree: f.write(plaincode.failfunction)

    if os.path.isfile('inline_symbols.txt'):
        inline_update.main()
