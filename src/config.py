from subprocess import check_output

ARCH_ARMT = 'thumb'
ARCH_X86 = 'x86'
X86_TOOL = ''
ARM_TOOL = 'arm-linux-gnueabihf-'

# Defaults
is_32 = False
is_lib = False
is_dynamic = True
is_unstrip = False
arch = ARCH_X86
objdump = 'objdump'
toolprefix = ''
strip = 'strip'
compiler = 'gcc'


def setup(filepath):
    global is_32
    global is_lib
    global is_dynamic
    global is_unstrip
    with open('elf.info') as f: elf_info = f.readline()
    is_32 = 'ELF 32-bit' in elf_info
    is_lib = 'LSB shared object' in elf_info
    is_dynamic = 'dynamically linked' in elf_info
    is_unstrip = 'not stripped' in elf_info
    if ', ARM' in elf_info:
        global arch
        global strip
        global objdump
        global compiler
        global toolprefix
        entry = check_output('readelf -h ' + filepath + ' | grep Entry', shell=True)
        entry = int(entry.split()[3], 16)
        if entry & 1: print 'Thumb binary detected'
        else: raise Exception('Only thumb supported')
        arch = ARCH_ARMT
        toolprefix = ARM_TOOL
        objdump = ARM_TOOL + objdump + ' --disassembler-options=force-thumb'
        strip = ARM_TOOL + strip
        compiler = ARM_TOOL + compiler
    elif 'x86-64' in elf_info or 'Intel 80386' in elf_info:
        print ('32 bit' if is_32 else '64 bit') + ' x86 binary detected'
    else:
        raise Exception("Unkwown architecture type")
