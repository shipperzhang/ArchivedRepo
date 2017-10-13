from utils.ail_utils import ELF_utils


def post_process_data():

    if not ELF_utils.elf_32():
        # for 64-bit binaries, remember to align data sections with 16.
        if ELF_utils.elf_exe():
            with open("final_data.s") as f:
                lines = f.readlines()
            ll = len(lines)

            for i in range(ll - 1):
                l = lines[i]
                if ".data" in l or ".bss" in l or ".rodata" in l:
                    ln = lines[i+1]
                    if "align" not in ln:
                        # add the align macro
                        lines[i+1] = ".align 16\n" + ln
            with open('final_data.s', 'w') as f:
                f.writelines(lines)
    """else:
        if ELF_utils.elf_exe():
            with open("final_data.s") as f:
                lines = f.readlines()

            ll = len(lines)
            in_rodata = False
            in_data = False

            #if ".section .rodata" in l:
            #    for j in range(i+1, i+10):
            #          lines[j] = ""
            #if ".section .data" in l:
            #    for j in range(i+1, i+10):
            #          lines[j] = ""

            # this variable is used by basic block flattern diverisfy

            #        lines[i+1] = "global_des:\n"
            #        lines[i+2] = ".byte 0x00\n"
            #        lines[i+3] = ".byte 0x00\n"
            #        lines[i+4] = ".byte 0x00\n"
            #        lines[i+5] = ".byte 0x00\n"
            #        lines[i+6] = "branch_des:\n"
            #        lines[i+7] = ".byte 0x00\n"
            #        lines[i+8] = ".byte 0x00\n"
            #        lines[i+9] = ".byte 0x00\n"
            #        lines[i+10] = ".byte 0x00\n"

            for i in range(ll):
                l = lines[i]
                if in_data == False and ".data" in l:
                    in_data = True
                    #lines[i+2] = ""
                    #lines[i+3] = ""
                    #lines[i+4] = ""
                    #lines[i+5] = ""
                    #lines[i+6] = ""
                    #lines[i+7] = ""
                    #lines[i+8] = ""
                    #lines[i+9] = ""
            # this variable is used by basic block flattern diversify
            # please comment these lines if no bb flattern diversifying used
            #        lines[i+1] = "global_des:\n"
            #        lines[i+2] = ".byte 0x00\n"
            #        lines[i+3] = ".byte 0x00\n"
            #        lines[i+4] = ".byte 0x00\n"
            #        lines[i+5] = ".byte 0x00\n"
            #        lines[i+6] = "branch_des:\n.byte 0x00\n"
            #        lines[i+7] = ".byte 0x00\n"
            #        lines[i+8] = ".byte 0x00\n"
            #        lines[i+9] = ".byte 0x00\n"

                elif in_rodata == False and ".rodata" in l:
                    # add two instructions
                    # branch_routine :pop global_des
                    # jmp *branch_des
                    in_rodata = True
                    #lines[i+2] = ""
                    #lines[i+3] = ""
                    #lines[i+4] = ""
                    #lines[i+5] = ""
                    #lines[i+6] = ""
                    #lines[i+7] = ""
                    #lines[i+8] = ""
                    #lines[i+9] = ""
                    #lines[i+10] = ""
                elif ".bss" in l:
                    #for j in range(i+2,i+44+2):
                    #    lines[j] = ""
                    break


            with open('final_data.s', 'w') as f:
                f.writelines(lines)"""
