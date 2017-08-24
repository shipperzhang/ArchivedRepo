# this code aims at solving typical issue in 64 bit code
# typical instruction disassembled by objdump like this
#     4005c9:	48 8b 05 58 08 20 00 	mov    0x200858(%rip),%rax        # 600e28 <__libc_start_main@plt+0x200a28>
# should be rewritten in this format
#     4005c9:   ...................     mov    S_0x600e28(%rip), %rax
# also leave a symbol in file rip_symbols.txt
#     600e28


import sys, re

def main(filepath, is_32):
    if not is_32:
        lines = []
        with open(filepath + '.temp') as f:
            lines = f.readlines()

        #        pat = r'0x[0-9a-f]{6}\(%rip\)'
        #        it works fine for original binaries.
        #        however, the remaining libc prologue functions could cause very
        #        wired disassemble results after several rounds like this:
        #            400880:	48 83 3d d0 22 20 01 	cmpq   $0x0,0x12022d0(%rip)        # 1602b58 <__libc_start_main@plt+0x1202708>
        # say, extremly large pic memory addresses.
        # let's expand the regex constrains as below.
        #
        pat = r'0x[0-9a-f]+\(%rip\)'

        # symbols = []

        for i in range(len(lines)):
            l = lines[i]
            if "#" in l:
                des = l.split('#')[1].split()[0]
                #symbols.append(des+"\n")
                m = re.search(pat, l)
                try:
                    sub = m.group(0) # let it crash it not
                    sub1 = "0x"+des+"(%rip)"
                    l = l.split('#')[0]
                    l = l.replace(sub, sub1)
                    lines[i] = l+"\n"
                except Exception:
                    print "exception in pic processing of 64-bit ELF"
                    print l
        with open(filepath + '.temp', 'w') as f:
            f.writelines(lines)

        #with open('rip_symbols.txt', 'w') as f:
        #    f.writelines(sorted(set(symbols)))


if __name__ == '__main__':
    if len(sys.argv) == 3: main(sys.argv[1], sys.argv[2].lower() == 'true')
    else: sys.stderr.write('Usage: python pic_process64 binfile is_32\n')
