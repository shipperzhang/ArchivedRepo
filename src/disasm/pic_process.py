## Some of the PIC code/module rely on typical pattern to locate
## such as:

##  804c460: push   %ebx
##  804c461: call   804c452 <__i686.get_pc_thunk.bx>
##  804c466: add    $0x2b8e,%ebx
##  804c46c: sub    $0x18,%esp

## What we can do this pattern match `<__i686.get_pc_thunk.bx>` and calculate
## the address by plusing 0x2b8e and  0x804c466, which equals to the begin address of GOT.PLT table

## symbols can be leveraged in re-assemble are
##  _GLOBAL_OFFSET_TABLE_   ==    .got.plt
##  ....

import os
from utils.ail_utils import ELF_utils

sec_symb = {".got.plt": "$_GLOBAL_OFFSET_TABLE_"}
step = 1

def info_dump(f):
    os.system("readelf -S "+ f +" | awk '$2==\".got.plt\" {print $2,$4,$5,$6}' > pic_secs.info")


def text_collect(f):
    fn = f + '.temp'
    with open(fn) as fd:
        return fd.read().splitlines()


def info_collect():
    pic_map = {}
    with open("pic_secs.info") as fd:
        ls = fd.read().splitlines()

    def helpf(l):
        items = l.split()
        # name ;  begin addr; ... ; size
        pic_map[items[0]] = (int(items[1], 16), int(items[3], 16))
    map(lambda l: helpf(l), ls)

    return pic_map


#   here is the tricky thing, in unstripped binary,
#   we can safely identify the symbol "__i686.get_pc_thunk.bx"
#   however, we have to pattern match __i686.get_pc_thunk.bx function
#   manually, then get the address

def text_process_unstrip(f):
    ls = text_collect(f)
    info_dump(f)
    pic_map = info_collect()

    for i in xrange(1,len(ls)):
        l = ls[i]
        if "<__i686.get_pc_thunk.bx>" in l and "call" in l:
            t = ls[i+1]
            # typically, t should look like this
            # 804c466: add    $0x2b8e,%ebx
            # if not, just let it crash
            last = t.split()[-1]
            addr_s = t.split(':')[0]
            off_s = last.split(',')[0][1:]
            off = int(off_s, 16)
            addr = int(addr_s, 16)

            baddr = addr + off

            for key, value in pic_map.iteritems():
                if value[0] == baddr:
                    # OK, we find it!
                    symb = sec_symb[key]
                    ls[i+1] = t.replace('$'+off_s, symb)
                elif value[0] < baddr and baddr < (value[0]+value[1]):
                    print "unhandled situation"

    with open(f+'.temp', 'w') as fd:
        map(lambda l: fd.write(l+ "\n"), ls)

def thunk_identify(f):
    global step

    ls = text_collect(f)

    for i in xrange(step, len(ls)):
        l = ls[i]
        if "(%esp),%ebx" in l and "mov" in l:
            t = ls[i+1]
            if "ret" in t.split()[-1]:
                step = i + 1
                return l.split(":")[0]
    print "PIC position location can not be found!!"

def text_process_strip(f):
    ls = text_collect(f)
    info_dump(f)
    pic_map = info_collect()
    pc_thunk_addr = thunk_identify(f)

    for i in xrange(1,len(ls)):
        l = ls[i]
        if pc_thunk_addr in l and "call" in l:
            t = ls[i+1]
            if len(t.split()) != 9 or t.split()[7] != "add":
                return False
            # typically, t should look like this
            # 804c466: add    $0x2b8e,%ebx
            # if not, just let it crash
            last = t.split()[-1]
            addr_s = t.split(':')[0]
            off_s = last.split(',')[0][1:]
            off = int(off_s, 16)
            addr = int(addr_s, 16)

            baddr = addr + off

            for key, value in pic_map.iteritems():
                if value[0] == baddr:
                    # OK, we find it!
                    symb = sec_symb[key]
                    ls[i+1] = t.replace('$'+off_s, symb)
                elif value[0] < baddr and baddr < (value[0]+value[1]):
                    print "unhandled situation"

    with open(f+'.temp', 'w') as fd:
        map(lambda l: fd.write(l+ "\n"), ls)

    return True


def main(filepath):
    global step
    step = 1
    if ELF_utils.elf_exe(): # executable
        t = text_process_strip(filepath)
        while t == False:
            t = text_process_strip(filepath)
    else:
        # shared object don't translate target addrs into
        # GLOBAL_OFFSET_TABLE, instead, dump the thunk addr for
        # analysis in share_lib_helper.ml
        addr = thunk_identify(filepath).strip()
        with open('pic_thunk.info', 'w') as f:
            f.write(addr+'\n')
