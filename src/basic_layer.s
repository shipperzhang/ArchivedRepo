bnscale: 
	movss (%rdx),%xmm0
	movss (%rcx),%xmm1
	shufps $0x0,%xmm0,%xmm0
	shufps $0x0,%xmm1,%xmm1
	mov $0xFFFFFFFFFFFFF3C0,%rax
S_0xCE0: 
	movups 0xc40(%rsi,%rax,1),%xmm2
	mulps %xmm0,%xmm2
	addps %xmm1,%xmm2
	movups %xmm2,0xc40(%rdi,%rax,1)
	movups 0xc50(%rsi,%rax,1),%xmm2
	mulps %xmm0,%xmm2
	addps %xmm1,%xmm2
	movups %xmm2,0xc50(%rdi,%rax,1)
	movups 0xc60(%rsi,%rax,1),%xmm2
	mulps %xmm0,%xmm2
	addps %xmm1,%xmm2
	movups %xmm2,0xc60(%rdi,%rax,1)
	movups 0xc70(%rsi,%rax,1),%xmm2
	mulps %xmm0,%xmm2
	addps %xmm1,%xmm2
	movups %xmm2,0xc70(%rdi,%rax,1)
	movups 0xc80(%rsi,%rax,1),%xmm2
	mulps %xmm0,%xmm2
	addps %xmm1,%xmm2
	movups %xmm2,0xc80(%rdi,%rax,1)
	movups 0xc90(%rsi,%rax,1),%xmm2
	mulps %xmm0,%xmm2
	addps %xmm1,%xmm2
	movups %xmm2,0xc90(%rdi,%rax,1)
	movups 0xca0(%rsi,%rax,1),%xmm2
	mulps %xmm0,%xmm2
	addps %xmm1,%xmm2
	movups %xmm2,0xca0(%rdi,%rax,1)
	add $0x70,%rax
	jne S_0xCE0
	retq



relu: 
	mov $0xFFFFFFFFFFFFF3C0,%rax
	xorps %xmm0,%xmm0
S_0x9A0: 
	movups 0xc40(%rsi,%rax,1),%xmm1
	maxps %xmm0,%xmm1
	movups %xmm1,0xc40(%rdi,%rax,1)
	movups 0xc50(%rsi,%rax,1),%xmm1
	maxps %xmm0,%xmm1
	movups %xmm1,0xc50(%rdi,%rax,1)
	movups 0xc60(%rsi,%rax,1),%xmm1
	maxps %xmm0,%xmm1
	movups %xmm1,0xc60(%rdi,%rax,1)
	movups 0xc70(%rsi,%rax,1),%xmm1
	maxps %xmm0,%xmm1
	movups %xmm1,0xc70(%rdi,%rax,1)
	movups 0xc80(%rsi,%rax,1),%xmm1
	maxps %xmm0,%xmm1
	movups %xmm1,0xc80(%rdi,%rax,1)
	movups 0xc90(%rsi,%rax,1),%xmm1
	maxps %xmm0,%xmm1
	movups %xmm1,0xc90(%rdi,%rax,1)
	movups 0xca0(%rsi,%rax,1),%xmm1
	maxps %xmm0,%xmm1
	movups %xmm1,0xca0(%rdi,%rax,1)
	add $0x70,%rax
	jne S_0x9A0
	retq


add: 
	mov $0xFFFFFFFFFFFFF3C0,%rax
S_0x9A0: 
	movups 0xc40(%rsi,%rax,1),%xmm0
	addps %xmm0,%xmm0
	movups %xmm0,0xc40(%rdi,%rax,1)
	movups 0xc50(%rsi,%rax,1),%xmm0
	addps %xmm0,%xmm0
	movups %xmm0,0xc50(%rdi,%rax,1)
	movups 0xc60(%rsi,%rax,1),%xmm0
	addps %xmm0,%xmm0
	movups %xmm0,0xc60(%rdi,%rax,1)
	movups 0xc70(%rsi,%rax,1),%xmm0
	addps %xmm0,%xmm0
	movups %xmm0,0xc70(%rdi,%rax,1)
	movups 0xc80(%rsi,%rax,1),%xmm0
	addps %xmm0,%xmm0
	movups %xmm0,0xc80(%rdi,%rax,1)
	movups 0xc90(%rsi,%rax,1),%xmm0
	addps %xmm0,%xmm0
	movups %xmm0,0xc90(%rdi,%rax,1)
	movups 0xca0(%rsi,%rax,1),%xmm0
	addps %xmm0,%xmm0
	movups %xmm0,0xca0(%rdi,%rax,1)
	add $0x70,%rax
	jne S_0x9A0
	retq