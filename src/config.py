from subprocess import check_output

ARCH_ARMT = 'thumb'
ARCH_X86 = 'x86'
X86_TOOL = ''
ARM_TOOL = 'arm-linux-gnueabihf-'

# Defaults
arch = ARCH_X86
objdump = 'objdump'
toolprefix = ''
strip = 'strip'
compiler = 'gcc'


def setup(filepath):
    global arch
    global strip
    global objdump
    global compiler
    global toolprefix
    if 'executable, ARM' in check_output('file ' + filepath, shell=True):
        entry = check_output('readelf -h ' + filepath + ' | grep Entry', shell=True)
        entry = int(entry.split()[3], 16)
        if entry & 1: print 'Thumb binary detected'
        else: raise Exception('Only thumb supported')
        arch = ARCH_ARMT
        objdump = ARM_TOOL + objdump + ' --disassembler-options=force-thumb'
        toolprefix = ARM_TOOL
        strip = ARM_TOOL + strip
        compiler = ARM_TOOL + compiler