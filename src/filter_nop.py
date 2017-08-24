from main_discover import check_32


def main():
    if not check_32():
        lines = []
        with open('instrs.info') as f:
            lines = f.readlines()

        for i in range(len(lines)):
            l = lines[i]
            l = l.strip()
            if 'nop' in l:
                items = l.split()
                if 'nop' == items[-1]:
                    #l = l.split(':')[0] + " :"
                    l = l
            lines[i] = l+"\n"

        with open('instrs.info', 'w') as f:
            f.writelines(lines)


if __name__ == '__main__':
    main()
