import re
import capstone
from struct import unpack
from elfesteem import elf, elf_init

def load_size(op, exp):
    # Return byte size of the memory load
    op = op.lower()
    if op.startswith('vldr'):
        return 4 if exp.startswith('s') else 8
    if op.startswith('ldr'):
        if len(op) < 4 or op[3] == '.': return 4
        if op[3] == 'd': return 8
        if op[3] == 'h' or (op[3] == 's' and op[4] == 'h'): return 2
        return 1
    return 4

def pcrel_process(filename):
    # Disassemble the binary looking for PC relative loads and library function invokations
    # 10354:       f8df c010       ldr.w   ip, [pc, #16]   ; 10368 <_start+0x24>

    with open(filename, 'rb') as f:
        raw = f.read()
    info = elf_init.ELF(raw)

    voffset = filter(lambda h: elf.constants['PT'].get(h.ph.type, '') == 'LOAD' and h.ph.offset == 0, info.ph.phlist)
    voffset = voffset[0].ph.vaddr
    textsec = info.getsectionbyname('.text')
    textraw = raw[textsec.addr - voffset : textsec.addr + textsec.size - voffset]
    with open('plts.info') as f:
        plts = {int(l.split()[0],16): ' ' + l.split()[1].rstrip(':') for l in f}

    dis = capstone.Cs(capstone.CS_ARCH_ARM, capstone.CS_MODE_THUMB)
    dis.syntax = capstone.CS_OPT_SYNTAX_ATT

    inlinedata = {}
    pcrelre = re.compile('\[pc,\s*\#0x([0-9a-f]+)\]', re.I)
    calls = set(('bl', 'blx'))
    f = open('instrs.info', 'w')
    curr_off = 0
    while curr_off < textsec.size:
        for e in dis.disasm_lite(textraw[curr_off:], textsec.addr + curr_off):
            curr_off += e[1]
            instr = ('%x' % e[0]).rjust(8) + ':\t' + e[2].ljust(7) + ' ' + e[3].replace(', ', ',').replace(' ', '|')
            m = pcrelre.search(instr)
            if m:
                dest = (e[0] & 0xFFFFFFFC) + int(m.group(1), 16) + 4
                inlinedata[dest] = load_size(e[2], e[3])
                instr = pcrelre.sub('S_0x%X' % dest, instr)
            elif e[2] in calls and e[3].startswith('#'):
                instr += plts.get(int(e[3][1:], 16), '')
            f.write(instr + '\n')
            if curr_off + textsec.addr in inlinedata: break
        else:
            if curr_off < textsec.size: inlinedata[curr_off + textsec.addr] = 2
        while curr_off + textsec.addr in inlinedata:
            pc = curr_off + textsec.addr
            size = inlinedata.pop(pc)
            if size == 1:
                vals = unpack('<BB', textraw[curr_off:curr_off+2])
                f.write(('%x' % pc).rjust(8) + ':\t.byte   0x%x\n' % vals[0])
                f.write(('%x' % (pc+1)).rjust(8) + ':\t.byte   0x%x\n' % vals[1])
                size = 2
            else:
                if size == 8:
                    inlinedata[pc+4] = 4
                    size = 4
                val = unpack('<H' if size == 2 else '<I', textraw[curr_off:curr_off+size])[0]
                f.write(('%x' % pc).rjust(8) + ':\t' + ('.short' if size == 2 else '.word').ljust(7) + ' 0x%x\n' % val)
            curr_off += size
    f.close()
