"""
Configuration
"""

import pkgutil
import importlib
from termcolor import colored
from subprocess import check_output

# constants
ARCH_ARMT = 'thumb'
ARCH_X86 = 'x86'
X86_TOOL = ''
ARM_TOOL = 'arm-linux-gnueabihf-'

# executable type configuration
is_32 = False
is_lib = False
is_dynamic = True
is_unstrip = False
arch = ARCH_X86

# binutils configuration
objdump = 'objdump'
toolprefix = ''
strip = 'strip'
compiler = 'gcc'

# ARM specific configurations
ARM_maxDoublemovDist = 40   # Maximum search distance between movw and movt
ARM_maxAddPcDist = 8        # Maximum search distance for indirect PC relative loads

# additional options
gccoptions = ''
excludedata = ''

# List of instrumentation modules (leave empty to apply all in alphabetic order)
# If only a subset of instrumentors needs to be used, add their package names as string to the list
instrumentors = []

# gfree configuration
# symbol names
gfree_xorkeyvar = 'xorkey'
gfree_cookiekeyvar = 'cookiekey'
gfree_keygenflagvar = 'keygenerated'
gfree_failfuncname = 'gfree_fail'
gfree_cookiestackvar = 'cookiestack'
# size of cookie stack
gfree_cookiestacksize = 2048 # KB
# maximum number of passes for alignment enforcement
gfree_maxalignmentpass = 100
# True to translate all IT block in ARM binaries
gfree_ARMITdelete = True


def setup(filepath, gccopt='', exdata='', instrument=False):
    """
    Setup global configuration values
    :param filepath: executable filepath
    :param gccopt: additional gcc options
    :param exdata: exclusion range file
    """
    global is_32
    global is_lib
    global is_dynamic
    global is_unstrip
    global gccoptions
    global excludedata
    with open('elf.info') as f: elf_info = f.readline()
    is_32 = 'ELF 32-bit' in elf_info
    is_lib = 'LSB shared object' in elf_info
    is_dynamic = 'dynamically linked' in elf_info
    is_unstrip = 'not stripped' in elf_info
    gccoptions = gccopt
    excludedata = exdata
    print(elf_info)
    if ', ARM,' in elf_info:
        global arch
        global strip
        global objdump
        global compiler
        global toolprefix
        entry = check_output('readelf -h ' + filepath + ' | grep Entry', shell=True)
        entry = int(entry.split()[3], 16)
        if entry & 1: print('Thumb binary detected')
        else: raise Exception('Only thumb supported')
        arch = ARCH_ARMT
        toolprefix = ARM_TOOL
        objdump = ARM_TOOL + objdump + ' --disassembler-options=force-thumb'
        strip = ARM_TOOL + strip
        compiler = ARM_TOOL + compiler
    elif 'x86-64' in elf_info or 'Intel 80386' in elf_info:
        print(('32 bit' if is_32 else '64 bit') + ' x86 binary detected')
    else:
        raise Exception("Unkwown architecture type")
    if instrument: loadInstrumentors()


def loadInstrumentors():
    """
    Load instrumentation modules
    """
    global instrumentors
    import instrumentation
    if len(instrumentors) == 0:
        pkgiter = pkgutil.iter_modules(instrumentation.__path__)
        instrumentors = sorted(map(lambda e: e[1], filter(lambda e: e[2], pkgiter)))
    def checker(i):
        if not (hasattr(i['main'], 'perform') and
                hasattr(i['main'], 'aftercompile') and
                hasattr(i['plain'], 'beforemain') and
                hasattr(i['plain'], 'aftercode') and
                hasattr(i['plain'], 'instrdata')):
            print(colored('Warning:', 'yellow'), 'instrumentor \'' + i['name'] + '\' is not correctly constructed and was discarded')
            return False
        return True
    instrumentors = filter(checker, map(lambda name: {
        'name': name,
        'main': importlib.import_module('instrumentation' + ('.' + name) * 2),
        'plain': importlib.import_module('instrumentation.' + name + '.plaincode')
    }, instrumentors))
