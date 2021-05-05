bn:          
	movss   (%rdx), %xmm0           
	movss	(%rcx), %xmm1          
	shufps	$0, %xmm0, %xmm0       
	shufps	$0, %xmm1, %xmm1        
	movq	$-3136, %rax             
.LBB1_1:                                
	movups	3136(%rsi,%rax), %xmm2
	mulps	%xmm0, %xmm2
	addps	%xmm1, %xmm2
	movups	%xmm2, 3136(%rdi,%rax)
	movups	3152(%rsi,%rax), %xmm2
	mulps	%xmm0, %xmm2
	addps	%xmm1, %xmm2
	movups	%xmm2, 3152(%rdi,%rax)
	movups	3168(%rsi,%rax), %xmm2
	mulps	%xmm0, %xmm2
	addps	%xmm1, %xmm2
	movups	%xmm2, 3168(%rdi,%rax)
	movups	3184(%rsi,%rax), %xmm2
	mulps	%xmm0, %xmm2
	addps	%xmm1, %xmm2
	movups	%xmm2, 3184(%rdi,%rax)
	movups	3200(%rsi,%rax), %xmm2
	mulps	%xmm0, %xmm2
	addps	%xmm1, %xmm2
	movups	%xmm2, 3200(%rdi,%rax)
	movups	3216(%rsi,%rax), %xmm2
	mulps	%xmm0, %xmm2
	addps	%xmm1, %xmm2
	movups	%xmm2, 3216(%rdi,%rax)
	movups	3232(%rsi,%rax), %xmm2
	mulps	%xmm0, %xmm2
	addps	%xmm1, %xmm2
	movups	%xmm2, 3232(%rdi,%rax)
	addq	$112, %rax
	jne	.LBB1_1                             
	retq

softmax:            
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r13
	movl	$3136, %edx            
	movl	$1, %edi
	movl	%r14d, %esi
	movl	$2, %ecx
	movl	$32, %r8d
	callq	*__TVMBackendAllocWorkspace(%rip)
	movq	%rax, %rbp
	movl	$3136, %edx             
	movl	$1, %edi
	movl	%r14d, %esi
	movl	$2, %ecx
	movl	$32, %r8d
	callq	*__TVMBackendAllocWorkspace(%rip)
	movq	%rax, %r12
	movq	$-3136, %rax            
	movaps	.LCPI3_0(%rip), %xmm0   
.LBB3_1:                                
	movups	3136(%r13,%rax), %xmm1
	movaps	%xmm0, %xmm2
	maxps	%xmm1, %xmm2
	movups	%xmm2, 3136(%rbp,%rax)
	movups	3152(%r13,%rax), %xmm1
	movaps	%xmm0, %xmm2
	maxps	%xmm1, %xmm2
	movups	%xmm2, 3152(%rbp,%rax)
	movups	3168(%r13,%rax), %xmm1
	movaps	%xmm0, %xmm2
	maxps	%xmm1, %xmm2
	movups	%xmm2, 3168(%rbp,%rax)
	movups	3184(%r13,%rax), %xmm1
	movaps	%xmm0, %xmm2
	maxps	%xmm1, %xmm2
	movups	%xmm2, 3184(%rbp,%rax)
	movups	3200(%r13,%rax), %xmm1
	movaps	%xmm0, %xmm2
	maxps	%xmm1, %xmm2
	movups	%xmm2, 3200(%rbp,%rax)
	movups	3216(%r13,%rax), %xmm1
	movaps	%xmm0, %xmm2
	maxps	%xmm1, %xmm2
	movups	%xmm2, 3216(%rbp,%rax)
	movups	3232(%r13,%rax), %xmm1
	movaps	%xmm0, %xmm2
	maxps	%xmm1, %xmm2
	movups	%xmm2, 3232(%rbp,%rax)
	addq	$112, %rax
	jne	.LBB3_1
	movq	$-3136, %rbx           
.LBB3_3:                               
	movups	3136(%r13,%rbx), %xmm1
	movups	3136(%rbp,%rbx), %xmm0
	subps	%xmm0, %xmm1
	movaps	%xmm1, (%rsp)           
	movups	3152(%rbp,%rbx), %xmm0
	movaps	%xmm0, 48(%rsp)         
	movups	3168(%rbp,%rbx), %xmm0
	movaps	%xmm0, 32(%rsp)         
	movups	3184(%rbp,%rbx), %xmm0
	movaps	%xmm0, 16(%rsp)         
	movaps	%xmm1, %xmm0
	shufps	$231, %xmm1, %xmm0     
	callq	expf
	movaps	%xmm0, 64(%rsp)         
	movaps	(%rsp), %xmm0           
	movhlps	%xmm0, %xmm0            
	callq	expf
	unpcklps	64(%rsp), %xmm0 
	movaps	%xmm0, 64(%rsp)         
	movaps	(%rsp), %xmm0           
	callq	expf
	movaps	%xmm0, 80(%rsp)         
	movaps	(%rsp), %xmm0           
	shufps	$229, %xmm0, %xmm0      
	callq	expf
	movaps	80(%rsp), %xmm1         
	unpcklps	%xmm0, %xmm1    
	unpcklpd	64(%rsp), %xmm1 
	movups	%xmm1, 3136(%rbp,%rbx)
	movups	3152(%r13,%rbx), %xmm0
	subps	48(%rsp), %xmm0         
	movaps	%xmm0, (%rsp)           
	shufps	$231, %xmm0, %xmm0      
	callq	expf
	movaps	%xmm0, 48(%rsp)         
	movaps	(%rsp), %xmm0           
	movhlps	%xmm0, %xmm0            
	callq	expf
	unpcklps	48(%rsp), %xmm0 
	movaps	%xmm0, 48(%rsp)         
	movaps	(%rsp), %xmm0           
	callq	expf
	movaps	%xmm0, 64(%rsp)         
	movaps	(%rsp), %xmm0           
	shufps	$229, %xmm0, %xmm0      
	callq	expf
	movaps	64(%rsp), %xmm1       
	unpcklps	%xmm0, %xmm1    
	unpcklpd	48(%rsp), %xmm1 
	movups	%xmm1, 3152(%rbp,%rbx)
	movups	3168(%r13,%rbx), %xmm0
	subps	32(%rsp), %xmm0         
	movaps	%xmm0, (%rsp)           
	shufps	$231, %xmm0, %xmm0      
	callq	expf
	movaps	%xmm0, 32(%rsp)         
	movaps	(%rsp), %xmm0           
	movhlps	%xmm0, %xmm0            
	callq	expf
	unpcklps	32(%rsp), %xmm0 
	movaps	%xmm0, 32(%rsp)        
	movaps	(%rsp), %xmm0 
	callq	expf
	movaps	%xmm0, 48(%rsp)
	movaps	(%rsp), %xmm0           
	shufps	$229, %xmm0, %xmm0      
	callq	expf
	movaps	48(%rsp), %xmm1         
	unpcklps	%xmm0, %xmm1    
	unpcklpd	32(%rsp), %xmm1 
	movups	%xmm1, 3168(%rbp,%rbx)
	movups	3184(%r13,%rbx), %xmm0
	subps	16(%rsp), %xmm0         
	movaps	%xmm0, (%rsp)          
	shufps	$231, %xmm0, %xmm0  
	callq	expf
	movaps	%xmm0, 16(%rsp) 
	movaps	(%rsp), %xmm0    
	movhlps	%xmm0, %xmm0     
	callq	expf
	unpcklps	16(%rsp), %xmm0 
	movaps	%xmm0, 16(%rsp)        
	movaps	(%rsp), %xmm0           
	callq	expf
	movaps	%xmm0, 32(%rsp)  
	movaps	(%rsp), %xmm0     
	shufps	$229, %xmm0, %xmm0      
	callq	expf
	movaps	32(%rsp), %xmm1     
	unpcklps	%xmm0, %xmm1    
	unpcklpd	16(%rsp), %xmm1 
	movups	%xmm1, 3184(%rbp,%rbx)
	movups	3200(%rbp,%rbx), %xmm0
	movups	3200(%r13,%rbx), %xmm1
	subps	%xmm0, %xmm1
	movaps	%xmm1, (%rsp)          
	movaps	%xmm1, %xmm0
	shufps	$231, %xmm1, %xmm0      
	callq	expf
	movaps	%xmm0, 16(%rsp)      
	movaps	(%rsp), %xmm0         
	movhlps	%xmm0, %xmm0            
	callq	expf
	unpcklps	16(%rsp), %xmm0 
	movaps	%xmm0, 16(%rsp)        
	movaps	(%rsp), %xmm0           
	callq	expf
	movaps	%xmm0, 32(%rsp)  
	movaps	(%rsp), %xmm0     
	shufps	$229, %xmm0, %xmm0      
	callq	expf
	movaps	32(%rsp), %xmm1          
	unpcklps	%xmm0, %xmm1     
	unpcklpd	16(%rsp), %xmm1 
	movups	%xmm1, 3200(%rbp,%rbx)
	movups	3216(%rbp,%rbx), %xmm0
	movups	3216(%r13,%rbx), %xmm1
	subps	%xmm0, %xmm1
	movaps	%xmm1, (%rsp)            
	movaps	%xmm1, %xmm0
	shufps	$231, %xmm1, %xmm0       
	callq	expf
	movaps	%xmm0, 16(%rsp)          
	movaps	(%rsp), %xmm0            
	movhlps	%xmm0, %xmm0             
	callq	expf
	unpcklps	16(%rsp), %xmm0  
	movaps	%xmm0, 16(%rsp)          
	movaps	(%rsp), %xmm0            
	callq	expf
	movaps	%xmm0, 32(%rsp)          
	movaps	(%rsp), %xmm0            
	shufps	$229, %xmm0, %xmm0      
	callq	expf
	movaps	32(%rsp), %xmm1          
	unpcklps	%xmm0, %xmm1     
	unpcklpd	16(%rsp), %xmm1 
	movups	%xmm1, 3216(%rbp,%rbx)
	movups	3232(%rbp,%rbx), %xmm0
	movups	3232(%r13,%rbx), %xmm1
	subps	%xmm0, %xmm1
	movaps	%xmm1, (%rsp)            
	movaps	%xmm1, %xmm0
	shufps	$231, %xmm1, %xmm0       
	callq	expf
	movaps	%xmm0, 16(%rsp)          
	movaps	(%rsp), %xmm0            
	movhlps	%xmm0, %xmm0             
	callq	expf
	unpcklps	16(%rsp), %xmm0  
	movaps	%xmm0, 16(%rsp)          
	movaps	(%rsp), %xmm0            
	callq	expf
	movaps	%xmm0, 32(%rsp)          
	movaps	(%rsp), %xmm0            
	shufps	$229, %xmm0, %xmm0      
	callq	expf
	movaps	32(%rsp), %xmm1          
	unpcklps	%xmm0, %xmm1     
	unpcklpd	16(%rsp), %xmm1  
	movups	%xmm1, 3232(%rbp,%rbx)
	addq	$112, %rbx
	jne	.LBB3_3
	movq	$-3136, %rax           
	xorps	%xmm0, %xmm0
.LBB3_5:                                
	movups	3136(%rbp,%rax), %xmm1
	addps	%xmm0, %xmm1
	movups	%xmm1, 3136(%r12,%rax)
	movups	3152(%rbp,%rax), %xmm1
	addps	%xmm0, %xmm1
	movups	%xmm1, 3152(%r12,%rax)
	movups	3168(%rbp,%rax), %xmm1
	addps	%xmm0, %xmm1
	movups	%xmm1, 3168(%r12,%rax)
	movups	3184(%rbp,%rax), %xmm1
	addps	%xmm0, %xmm1
	movups	%xmm1, 3184(%r12,%rax)
	movups	3200(%rbp,%rax), %xmm1
	addps	%xmm0, %xmm1
	movups	%xmm1, 3200(%r12,%rax)
	movups	3216(%rbp,%rax), %xmm1
	addps	%xmm0, %xmm1
	movups	%xmm1, 3216(%r12,%rax)
	movups	3232(%rbp,%rax), %xmm1
	addps	%xmm0, %xmm1
	movups	%xmm1, 3232(%r12,%rax)
	addq	$112, %rax
	jne	.LBB3_5
	movq	$-3136, %rax            
.LBB3_7:                                
	movups	3136(%rbp,%rax), %xmm0
	movups	3136(%r12,%rax), %xmm1
	divps	%xmm1, %xmm0
	movups	%xmm0, 3136(%r15,%rax)
	movups	3152(%rbp,%rax), %xmm0
	movups	3152(%r12,%rax), %xmm1
	divps	%xmm1, %xmm0
	movups	%xmm0, 3152(%r15,%rax)
	movups	3168(%rbp,%rax), %xmm0
	movups	3168(%r12,%rax), %xmm1
	divps	%xmm1, %xmm0
	movups	%xmm0, 3168(%r15,%rax)
	movups	3184(%rbp,%rax), %xmm0
	movups	3184(%r12,%rax), %xmm1
	divps	%xmm1, %xmm0
	movups	%xmm0, 3184(%r15,%rax)
	movups	3200(%rbp,%rax), %xmm0
	movups	3200(%r12,%rax), %xmm1
	divps	%xmm1, %xmm0
	movups	%xmm0, 3200(%r15,%rax)
	movups	3216(%rbp,%rax), %xmm0
	movups	3216(%r12,%rax), %xmm1
	divps	%xmm1, %xmm0
	movups	%xmm0, 3216(%r15,%rax)
	movups	3232(%rbp,%rax), %xmm0
	movups	3232(%r12,%rax), %xmm1
	divps	%xmm1, %xmm0
	movups	%xmm0, 3232(%r15,%rax)
	addq	$112, %rax
	jne	.LBB3_7
	movl	$1, %edi
	movl	%r14d, %esi
	movq	%r12, %rdx
	callq	*__TVMBackendFreeWorkspace(%rip)
	movq	__TVMBackendFreeWorkspace(%rip), %rax
	movl	$1, %edi
	movl	%r14d, %esi
	movq	%rbp, %rdx
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                  