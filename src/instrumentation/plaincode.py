import config
from utils.ail_utils import ELF_utils

keygenfunction = ''
keysize = 'long'
failfunction = ''

if ELF_utils.elf_64():
    # x86_64
    keysize = 'quad'
    keygenfunction = '''
pushq %rax
pushq %rbx
pushq %rdx
pushq %rsi
pushq %rdi
xorl %esi,%esi
movl $.LC2,%edi
xorl %eax,%eax
call open
testl %eax,%eax
js {0}
movl $8,%edx
movl ${1},%esi
movl %eax,%edi
movl %edi,%ebx
call read
cmpq $8,%rax
jne {0}
movl $8,%edx
movl ${2},%esi
movl %ebx,%edi
call read
cmpq $8,%rax
jne {0}
movl %ebx,%edi
call close
popq %rdi
popq %rsi
popq %rdx
popq %rbx
popq %rax
'''

    failfunction = '''{0}: movq stderr(%rip),%rcx
movl $.LC0,%edi
movl $18,%edx
movl $1,%esi
call fwrite
movl $-1,%edi
call exit


'''

elif ELF_utils.elf_arm():
    # ARM
    keygenfunction = '''
push {{r0,r1,r2,r4,lr}}
movw r0,#:lower16:.LC2
movt r0,#:upper16:.LC2
movs r1,#0
bl open
subs r4,r0,#0
blt {0}
movs r2,#4
movw r1,#:lower16:{1}
movt r1,#:upper16:{1}
bl read
cmp r0,#4
mov r2,r0
bne {0}
movw r1,#:lower16:{2}
movt r1,#:upper16:{2}
mov r0,r4
bl read
cmp r0,#4
bne {0}
mov r0,r4
bl close
pop {{r0, r1, r2, r4, lr}}
'''

    failfunction = '''.thumb_func
{0}: movw r3,#:lower16:stderr
movt r3,#:upper16:stderr
ldr r3,[r3]
movs r2,#18
movs r1,#1
movw r0,#:lower16:.LC0
movt r0,#:upper16:.LC0
bl fwrite
mov r0,#-1
bl exit


'''

else:
    # x86_32
    keygenfunction = '''
pushl %eax
pushl %ebx
subl $16,%esp
pushl $0
pushl $.LC2
call open
addl $16, %esp
testl %eax, %eax
js {0}
subl $4, %esp
pushl $4
pushl ${1}
pushl %eax
call read
popl %ebx
addl $12, %esp
cmpl $4, %eax
jne {0}
subl $4, %esp
pushl $4
pushl ${2}
pushl %ebx
call read
addl $16, %esp
cmpl $4, %eax
jne {0}
subl $12, %esp
pushl %ebx
call close
addl $24, %esp
popl %ebx
popl %eax
'''

    failfunction = '''{0}: pushl stderr
pushl $18
pushl $1
pushl $.LC0
call fwrite
movl $-1,(%esp)
call exit


'''


keygenfunction = keygenfunction.format(config.gfree_failfuncname, config.gfree_xorkeyvar, config.gfree_cookiekeyvar)
failfunction = failfunction.format(config.gfree_failfuncname)
instrdata = '''
.section .rodata
.LC0: .string "Fatal GFree Error\\n"
.LC2: .string "/dev/random"

.section .bss
{1}: .{0} 0
{2}: .{0} 0
'''.format(keysize, config.gfree_xorkeyvar, config.gfree_cookiekeyvar)
