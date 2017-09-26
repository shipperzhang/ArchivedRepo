# this code aims at solving typical issue in 64 bit code
# typical instruction disassembled by objdump like this
#     4005c9:	48 8b 05 58 08 20 00 	mov    0x200858(%rip),%rax        # 600e28 <__libc_start_main@plt+0x200a28>
# should be rewritten in this format
#     4005c9:   ...................     mov    S_0x600e28(%rip), %rax
# also leave a symbol in file rip_symbols.txt
#     600e28

import re

def main(filepath):
    with open(filepath + '.temp') as f:
        lines = f.readlines()

    pat = re.compile(r'0x[0-9a-f]+\(%rip\)')

    for i in xrange(len(lines)):
        l = lines[i]
        if "#" in l:
            m = pat.search(l)
            if m:
                items = l.split('#')
                des = items[1].split()[0]
                sub = m.group(0)
                sub1 = "0x" + des + "(%rip)"
                l = items[0]
                l = l.replace(sub, sub1)
                lines[i] = l + "\n"

    with open(filepath + '.temp', 'w') as f:
        f.writelines(lines)
