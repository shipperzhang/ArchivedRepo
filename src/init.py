import os
import sys
import ail
import config
from termcolor import colored
from utils.ail_utils import ELF_utils
from disasm import bss_creator, pic_process, pic_process64, useless_func_del,\
                   extern_symbol_process64, arm_process


class Init(object):

    def __init__(self, filepath):
        self.file = filepath
        self.is_32 = ELF_utils.elf_32()
        self.is_arm = ELF_utils.elf_arm()

    def disassemble(self):
        print colored('1: DISASSEMBLE', 'green')
        ret = os.system(config.objdump + ' -Dr -j .text ' + self.file + ' > ' + self.file + '.temp')
        self.checkret(ret, self.file + '.temp')

        if self.is_32:
            if not self.is_arm: pic_process.main(self.file)
        else:
            extern_symbol_process64.main(self.file)
            pic_process64.main(self.file)

        ret = os.system(config.objdump + " -s -j .rodata " + self.file + " | grep \"^ \" | cut -d \" \" -f3,4,5,6 > rodata.info")
        self.checkret(ret, 'rodata.info')
        ret = os.system(config.objdump + " -s -j .data " + self.file + " | grep \"^ \" | cut -d \" \" -f3,4,5,6 > data.info")
        self.checkret(ret, 'data.info')
        os.system(config.objdump + " -s -j .eh_frame " + self.file + " | grep \"^ \" | cut -d \" \" -f3,4,5,6 > eh_frame.info")
        if not ELF_utils.elf_arm(): os.system(config.objdump + " -s -j .eh_frame_hdr " + self.file + " | grep \"^ \" | cut -d \" \" -f3,4,5,6 > eh_frame_hdr.info")
        os.system(config.objdump + " -s -j .got " + self.file + " | grep \"^ \" | cut -d \" \" -f3,4,5,6 > got.info")

    def process(self):
        self.pltProcess()
        self.textProcess()
        self.sectionProcess()
        self.bssHandler()
        self.externDataProcess()
        self.export_tbl_dump()
        self.userFuncProcess()

    def bssHandler(self):
        bss_creator.main()
        os.system('readelf -sW ' + self.file + ' | grep OBJECT | awk \'/GLOBAL/ {print $2,$8}\' > globalbss.info')

    def textProcess(self):
        useless_func_del.main(self.file)
        if self.is_arm: arm_process.arm_process(self.file)
        else: os.system("cat " + self.file + ".disassemble | grep \"^ \" | cut -f1,3 > instrs.info")
        # filter_nop.main()
        os.system("cut -f 1 instrs.info > text_mem.info")

    def userFuncProcess(self):
        os.system("cat " + self.file + ".disassemble | grep \"<\" | grep \">:\" > userfuncs.info")
        os.system("cat fl >> userfuncs.info")

    def sectionProcess(self):
        badsec = '.got.plt' if self.is_32 else'.data.rel.ro'
        os.system("readelf -SW " + self.file + " | awk \'/data|bss|got/ {print $2,$4,$5,$6} \' | awk \ '$1 != \"" + badsec + "\" {print $1,$2,$3,$4}\' > sections.info")
        os.system("readelf -SW " + self.file + " | awk \'/text/ {print $2,$4,$5,$6} \' > text_sec.info")
        os.system("readelf -SW " + self.file + " | awk \'/init/ {print $2,$4,$5,$6} \' | awk \'$1 != \".init_array\" {print $1,$2,$3,$4}\' > init_sec.info")
        if os.path.isfile('init_array.info'): os.remove('init_array.info')
        os.system(config.objdump + " -s -j .init_array " + self.file + " >> init_array.info 2>&1")
        os.system("readelf -SW " + self.file + " | awk '$2==\".plt\" {print $2,$4,$5,$6}' > plt_sec.info")

    def externFuncProcess(self):
        os.system("readelf -r " + self.file + " | awk \'/JUMP_SLOT/ {print $1,$5} \' > externfuncs.info")

    def check_disassemble(self):
        if os.system("grep \"(bad)\" " + self.file + ".temp > /dev/null") == 0:
            raise Exception('detected disassembly error')

    def export_tbl_dump(self):
        os.system("readelf -s " + self.file + " | grep GLOBAL > export_tbl.info")

    def pltProcess(self):
        os.system(config.toolprefix + "objdump -j .plt -Dr " + self.file + " | grep \">:\" > plts.info")

    def externDataProcess(self):
        os.system("readelf -r " + self.file + " | awk \'/GLOB_DAT/ {print $5} \' > externdatas.info")

    def ailProcess(self, gfree=False):
        processor = ail.Ail(self.file)
        processor.sections()
        processor.userfuncs()
        processor.externdatas()
        processor.global_bss()
        processor.instrProcess_2(gfree)

    def checkret(self, ret, path):
        if ret != 0 and os.path.isfile(path):
            os.remove(path)


def main(filepath, gfree=False):
    if ELF_utils.elf_strip() and ELF_utils.elf_exe():
        init = Init(filepath)
        init.disassemble()
        init.process()
        init.ailProcess(gfree)
    else:
        sys.stderr.write('Error: binary is not stripped or is a shared library\n')
