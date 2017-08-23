import os
from sets import Set
from main_discover import check_32

def reassemble(saveerr=False):
    os.system('gcc final.s -lm -lrt -lpthread -lcrypt' 
              + (' -m32' if check_32() else '')
              + (' 2> final.error' if saveerr else ''))


def parse_error():
    if os.path.isfile('final.error'):
        addrs = []
        with open("final.error") as ferror:
            for l in ferror:
                if 'In function' in l: pass
                elif 'undefined reference' in l and 'S_0x' in l:
                    addrs.append(l.split()[-1][1:-1])
        return Set(addrs)


def modify(errors):
    with open("final.s") as f:
        lines = f.readlines()
    def help_err(l):
        e = filter(lambda e : e in l, errors)
        if e != []:
            addr = e[0][2:]
            #print "undefined label : "+addr
            l = l.replace(e[0], addr)
        return l
    lines = map(help_err, lines)
    with open("final.s", 'w') as f:
        f.writelines(lines)


def main():
    print "     modify final.s to adjust redundant symbols"
    #os.system('gcc final.s -lm 2> final.error')
    #os.system('gcc final.s -lm -m32 2> final.error')
    reassemble(True)
    errors = parse_error()
    modify(errors)
    print "     modify finished"

if __name__ == '__main__':
    main()
