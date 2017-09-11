import os
import sys
import ail
import bss_creator
import pic_process
import pic_process64
import useless_func_del
import extern_symbol_process64
from main_discover import check_strip, check_exe, check_32
import filter_nop



class Init(object):

    def __init__(self, filepath):
        self.file = filepath
        self.is_32 = check_32()

    def disassemble(self):
        print '1: linearly disassemble'
        ret = os.system('objdump -Dr -j .text ' + self.file + ' > ' + self.file + '.temp')
        self.checkret(ret, self.file + '.temp')

        pic_process.main(self.file, self.is_32)
        extern_symbol_process64.main(self.file)
        pic_process64.main(self.file, self.is_32)

        ret = os.system("objdump -s -j .rodata " + self.file + " | grep \"^ \" | cut -d \" \" -f3,4,5,6 > rodata.info")
        self.checkret(ret, 'rodata.info')
        ret = os.system("objdump -s -j .data " + self.file + " | grep \"^ \" | cut -d \" \" -f3,4,5,6 > data.info")
        ret = os.system("objdump -s -j .eh_frame " + self.file + " | grep \"^ \" | cut -d \" \" -f3,4,5,6 > eh_frame.info")
        ret = os.system("objdump -s -j .eh_frame_hdr " + self.file + " | grep \"^ \" | cut -d \" \" -f3,4,5,6 > eh_frame_hdr.info")
        ret = os.system("objdump -s -j .got " + self.file + " | grep \"^ \" | cut -d \" \" -f3,4,5,6 > got.info")
        self.checkret(ret, 'data.info')

    def process(self):
        self.textProcess()
        if self.is_32: self.sectionProcess32()
        else: self.sectionProcess64()
        self.bssHandler()
        self.externDataProcess()
        self.export_tbl_dump()
        self.pltProcess()
        self.userFuncProcess()

    def bssHandler(self):
        bss_creator.main()
        os.system('readelf -sW ' + self.file + ' | grep OBJECT | awk \'/GLOBAL/ {print $2,$8}\' > globalbss.info')

    def textProcess(self):
        useless_func_del.main(self.file)
        os.system("cat " + self.file + ".disassemble | grep \"^ \" | cut -f1,3 > instrs.info")
        filter_nop.main()
        os.system("cut -f 1 instrs.info > text_mem.info")

    def userFuncProcess(self):
        os.system("cat " + self.file + ".disassemble | grep \"<\" | grep \">:\" > userfuncs.info")

    def sectionProcess32(self):
        os.system("readelf -S " + self.file + " | awk \'/data|bss|got/ {print $2,$4,$5,$6} \' | awk \ '$1 != \".got.plt\" {print $1,$2,$3,$4}\' > sections.info")
        os.system("readelf -S " + self.file + " | awk \'/text/ {print $2,$4,$5,$6} \' > text_sec.info")
        os.system("readelf -S " + self.file + " | awk \'/init/ {print $2,$4,$5,$6} \' | awk \'$1 != \".init_array\" {print $1,$2,$3,$4}\' > init_sec.info")
        os.system("rm init_array.info")
        os.system("objdump -s -j .init_array " + self.file + " >> init_array.info 2>&1")
        os.system("readelf -S " + self.file + " | awk '$2==\".plt\" {print $2,$4,$5,$6}' > plt_sec.info")

    def sectionProcess64(self):
        os.system("readelf -SW " + self.file + " | awk \'/data|bss|got/ {print $2,$4,$5,$6} \' | awk \ '$1 != \".data.rel.ro\" {print $1,$2,$3,$4}\' > sections.info")
        os.system("readelf -SW " + self.file + " | awk \'/text/ {print $2,$4,$5,$6} \' > text_sec.info")
        os.system("readelf -SW " + self.file + " | awk \'/init/ {print $2,$4,$5,$6} \' | awk \'$1 != \".init_array\" {print $1,$2,$3,$4}\' > init_sec.info")
        os.system("rm init_array.info")
        os.system("objdump -s -j .init_array " + self.file + " >>init_array.info 2>&1")
        os.system("readelf -SW " + self.file + " | awk '$2==\".plt\" {print $2,$4,$5,$6}' > plt_sec.info")

    def externFuncProcess(self):
        os.system("readelf -r " + self.file + " | awk \'/JUMP_SLOT/ {print $1,$5} \' > externfuncs.info")

    def check_disassemble(self):
        if os.system("grep \"(bad)\" " + self.file + ".temp > /dev/null") == 0:
            raise Exception('detected disassembly error')

    def export_tbl_dump(self):
        os.system("readelf -s " + self.file + " | grep GLOBAL > export_tbl.info")

    def pltProcess(self):
        os.system("objdump -j .plt -Dr " + self.file + " | grep \">:\" > plts.info")

    def externDataProcess(self):
        os.system("readelf -r " + self.file + " | awk \'/GLOB_DAT/ {print $5} \' > externdatas.info")

    def ailProcess(self):
        processor = ail.Ail(self.file)
        processor.sections()
        processor.userfuncs()
        processor.externdatas()
        processor.global_bss()
        processor.instrProcess_2()

    def checkret(self, ret, path):
        if ret != 0 and os.path.isfile(path):
            os.remove(path)


def clear_code():
    if os.path.isfile('final.s'): os.remove('final.s')
    if os.path.isfile('inline_symbols.txt'): os.remove('inline_symbols.txt')


def main(filepath):
    if check_strip() and check_exe():
        clear_code()
        init = Init(filepath)
        init.disassemble()
        init.process()
        init.ailProcess()
    else:
        sys.stderr.write('Error: binary is not stripped or is a shared library\n')


if __name__ == '__main__':
    if len(sys.argv) == 2: main(sys.argv[1])
    else: sys.stderr.write('Usage: ./init binfile\n')
