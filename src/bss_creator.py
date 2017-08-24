def main():
    size = 0
    with open("sections.info") as f:
        for l in f:
            if ".bss" in l:
                size = l.split()[3]
                break
    size = int(size, 16)
    strs = ".byte 0x00\n" * size
    with open("bss.info", 'w') as f:
        f.write(strs)


if __name__ == '__main__':
    main()
