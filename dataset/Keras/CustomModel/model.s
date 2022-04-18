	.text
	.file	"TVMMod"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function tvmgen_default_fused_nn_batch_flatten
.LCPI0_0:
	.long	2704                            # 0xa90
	.long	208                             # 0xd0
	.long	16                              # 0x10
	.long	1                               # 0x1
	.text
	.globl	tvmgen_default_fused_nn_batch_flatten
	.p2align	4, 0x90
	.type	tvmgen_default_fused_nn_batch_flatten,@function
tvmgen_default_fused_nn_batch_flatten:  # @tvmgen_default_fused_nn_batch_flatten
.Lfunc_begin0:
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpl	$2, %edx
	jne	.LBB0_1
# %bb.3:                                # %assert_end
	movl	(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB0_5
# %bb.4:                                # %assert_end
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB0_5
# %bb.6:                                # %assert_end2
	movl	4(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB0_8
# %bb.7:                                # %assert_end2
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB0_8
# %bb.9:                                # %assert_end4
	movq	(%rdi), %rdx
	cmpl	$4, 16(%rdx)
	jne	.LBB0_10
# %bb.11:                               # %assert_end8
	cmpw	$1, 22(%rdx)
	jne	.LBB0_14
# %bb.12:                               # %assert_end8
	cmpb	$32, 21(%rdx)
	jne	.LBB0_14
# %bb.13:                               # %assert_end8
	cmpb	$2, 20(%rdx)
	jne	.LBB0_14
# %bb.15:                               # %assert_end10
	movq	24(%rdx), %rax
	cmpl	$1, (%rax)
	jne	.LBB0_16
# %bb.17:                               # %assert_end12
	cmpl	$13, 8(%rax)
	jne	.LBB0_18
# %bb.19:                               # %assert_end14
	cmpl	$13, 16(%rax)
	jne	.LBB0_20
# %bb.21:                               # %assert_end16
	cmpl	$16, 24(%rax)
	jne	.LBB0_22
# %bb.23:                               # %assert_end18
	movq	8(%rdi), %rax
	movq	(%rdx), %rsi
	movq	32(%rdx), %rcx
	movl	12(%rdx), %r8d
	movq	(%rax), %rdi
	movq	24(%rax), %r9
	movq	32(%rax), %r10
	testq	%rcx, %rcx
	je	.LBB0_25
# %bb.24:                               # %if_then
	movups	(%rcx), %xmm0
	movups	16(%rcx), %xmm1
	shufps	$136, %xmm1, %xmm0              # xmm0 = xmm0[0,2],xmm1[0,2]
	pcmpeqd	.LCPI0_0(%rip), %xmm0
	movmskps	%xmm0, %ecx
	cmpl	$15, %ecx
	jne	.LBB0_50
.LBB0_25:                               # %if_end
	cmpq	$0, 40(%rdx)
	jne	.LBB0_26
# %bb.27:                               # %assert_end22
	cmpl	$1, 8(%rdx)
	jne	.LBB0_28
# %bb.29:                               # %assert_end24
	cmpl	$2, 16(%rax)
	jne	.LBB0_30
# %bb.31:                               # %assert_end28
	cmpw	$1, 22(%rax)
	jne	.LBB0_34
# %bb.32:                               # %assert_end28
	cmpb	$32, 21(%rax)
	jne	.LBB0_34
# %bb.33:                               # %assert_end28
	cmpb	$2, 20(%rax)
	jne	.LBB0_34
# %bb.35:                               # %assert_end30
	cmpl	$1, (%r9)
	jne	.LBB0_36
# %bb.37:                               # %assert_end32
	cmpl	$2704, 8(%r9)                   # imm = 0xA90
	jne	.LBB0_38
# %bb.39:                               # %assert_end34
	testq	%r10, %r10
	je	.LBB0_42
# %bb.40:                               # %if_then35
	cmpl	$2704, (%r10)                   # imm = 0xA90
	jne	.LBB0_51
# %bb.41:                               # %if_then35
	cmpl	$1, 8(%r10)
	jne	.LBB0_51
.LBB0_42:                               # %if_end36
	cmpq	$0, 40(%rax)
	jne	.LBB0_43
# %bb.44:                               # %assert_end40
	cmpl	$1, 8(%rax)
	jne	.LBB0_45
# %bb.46:                               # %assert_end42
	cmpl	12(%rax), %r8d
	jne	.LBB0_47
# %bb.48:                               # %assert_end44
	callq	tvmgen_default_fused_nn_batch_flatten_compute_
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB0_5:                                # %assert_fail1
	.cfi_def_cfa_offset 16
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.1, %edi
	jmp	.LBB0_2
.LBB0_8:                                # %assert_fail3
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.2, %edi
.LBB0_2:                                # %common.ret
	callq	*(%rax)
	movl	$-1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB0_1:                                # %assert_fail
	.cfi_def_cfa_offset 16
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str, %edi
	jmp	.LBB0_2
.LBB0_10:                               # %assert_fail5
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.3, %edi
	jmp	.LBB0_2
.LBB0_14:                               # %assert_fail9
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.4, %edi
	jmp	.LBB0_2
.LBB0_16:                               # %assert_fail11
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.5, %edi
	jmp	.LBB0_2
.LBB0_18:                               # %assert_fail13
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.6, %edi
	jmp	.LBB0_2
.LBB0_20:                               # %assert_fail15
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.7, %edi
	jmp	.LBB0_2
.LBB0_22:                               # %assert_fail17
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.8, %edi
	jmp	.LBB0_2
.LBB0_50:                               # %assert_fail19
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.9, %edi
	jmp	.LBB0_2
.LBB0_26:                               # %assert_fail21
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.10, %edi
	jmp	.LBB0_2
.LBB0_28:                               # %assert_fail23
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.11, %edi
	jmp	.LBB0_2
.LBB0_30:                               # %assert_fail25
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.12, %edi
	jmp	.LBB0_2
.LBB0_34:                               # %assert_fail29
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.13, %edi
	jmp	.LBB0_2
.LBB0_36:                               # %assert_fail31
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.14, %edi
	jmp	.LBB0_2
.LBB0_38:                               # %assert_fail33
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.15, %edi
	jmp	.LBB0_2
.LBB0_51:                               # %assert_fail37
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.16, %edi
	jmp	.LBB0_2
.LBB0_43:                               # %assert_fail39
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.17, %edi
	jmp	.LBB0_2
.LBB0_45:                               # %assert_fail41
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.18, %edi
	jmp	.LBB0_2
.LBB0_47:                               # %assert_fail43
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.19, %edi
	jmp	.LBB0_2
.Lfunc_end0:
	.size	tvmgen_default_fused_nn_batch_flatten, .Lfunc_end0-tvmgen_default_fused_nn_batch_flatten
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function tvmgen_default_fused_nn_batch_flatten_compute_
	.type	tvmgen_default_fused_nn_batch_flatten_compute_,@function
tvmgen_default_fused_nn_batch_flatten_compute_: # @tvmgen_default_fused_nn_batch_flatten_compute_
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	movl	$10816, %edx                    # imm = 0x2A40
	callq	memcpy@PLT
	popq	%rax
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end1:
	.size	tvmgen_default_fused_nn_batch_flatten_compute_, .Lfunc_end1-tvmgen_default_fused_nn_batch_flatten_compute_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function tvmgen_default_fused_nn_bias_add
.LCPI2_0:
	.long	2704                            # 0xa90
	.long	169                             # 0xa9
	.long	13                              # 0xd
	.long	1                               # 0x1
	.text
	.globl	tvmgen_default_fused_nn_bias_add
	.p2align	4, 0x90
	.type	tvmgen_default_fused_nn_bias_add,@function
tvmgen_default_fused_nn_bias_add:       # @tvmgen_default_fused_nn_bias_add
.Lfunc_begin2:
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	cmpl	$3, %edx
	jne	.LBB2_1
# %bb.3:                                # %assert_end
	movl	(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB2_5
# %bb.4:                                # %assert_end
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB2_5
# %bb.6:                                # %assert_end3
	movl	4(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB2_8
# %bb.7:                                # %assert_end3
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB2_8
# %bb.9:                                # %assert_end5
	movl	8(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB2_11
# %bb.10:                               # %assert_end5
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB2_11
# %bb.12:                               # %assert_end7
	movq	(%rdi), %rax
	cmpl	$4, 16(%rax)
	jne	.LBB2_13
# %bb.14:                               # %assert_end11
	cmpw	$1, 22(%rax)
	jne	.LBB2_17
# %bb.15:                               # %assert_end11
	cmpb	$32, 21(%rax)
	jne	.LBB2_17
# %bb.16:                               # %assert_end11
	cmpb	$2, 20(%rax)
	jne	.LBB2_17
# %bb.18:                               # %assert_end13
	movq	24(%rax), %rcx
	cmpl	$1, (%rcx)
	jne	.LBB2_19
# %bb.20:                               # %assert_end15
	cmpl	$16, 8(%rcx)
	jne	.LBB2_21
# %bb.22:                               # %assert_end17
	cmpl	$13, 16(%rcx)
	jne	.LBB2_23
# %bb.24:                               # %assert_end19
	cmpl	$13, 24(%rcx)
	jne	.LBB2_25
# %bb.26:                               # %assert_end21
	movq	8(%rdi), %rcx
	movq	16(%rdi), %r11
	movq	(%rax), %rsi
	movq	32(%rax), %rbx
	movl	12(%rax), %r8d
	movq	(%rcx), %rdx
	movq	24(%rcx), %r14
	movq	32(%rcx), %r15
	movq	(%r11), %rdi
	movq	24(%r11), %r10
	movq	32(%r11), %r9
	testq	%rbx, %rbx
	je	.LBB2_28
# %bb.27:                               # %if_then
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	shufps	$136, %xmm1, %xmm0              # xmm0 = xmm0[0,2],xmm1[0,2]
	pcmpeqd	.LCPI2_0(%rip), %xmm0
	movmskps	%xmm0, %ebx
	cmpl	$15, %ebx
	jne	.LBB2_71
.LBB2_28:                               # %if_end
	cmpq	$0, 40(%rax)
	jne	.LBB2_29
# %bb.30:                               # %assert_end25
	cmpl	$1, 8(%rax)
	jne	.LBB2_31
# %bb.32:                               # %assert_end27
	cmpl	$1, 16(%rcx)
	jne	.LBB2_33
# %bb.34:                               # %assert_end31
	cmpw	$1, 22(%rcx)
	jne	.LBB2_37
# %bb.35:                               # %assert_end31
	cmpb	$32, 21(%rcx)
	jne	.LBB2_37
# %bb.36:                               # %assert_end31
	cmpb	$2, 20(%rcx)
	jne	.LBB2_37
# %bb.38:                               # %assert_end33
	cmpl	$16, (%r14)
	jne	.LBB2_39
# %bb.40:                               # %assert_end35
	testq	%r15, %r15
	je	.LBB2_42
# %bb.41:                               # %if_then36
	cmpl	$1, (%r15)
	jne	.LBB2_72
.LBB2_42:                               # %if_end37
	cmpq	$0, 40(%rcx)
	jne	.LBB2_43
# %bb.44:                               # %assert_end41
	cmpl	$1, 8(%rcx)
	jne	.LBB2_45
# %bb.46:                               # %assert_end43
	cmpl	12(%rcx), %r8d
	jne	.LBB2_47
# %bb.48:                               # %assert_end45
	cmpl	$4, 16(%r11)
	jne	.LBB2_49
# %bb.50:                               # %assert_end49
	cmpw	$1, 22(%r11)
	jne	.LBB2_53
# %bb.51:                               # %assert_end49
	cmpb	$32, 21(%r11)
	jne	.LBB2_53
# %bb.52:                               # %assert_end49
	cmpb	$2, 20(%r11)
	jne	.LBB2_53
# %bb.54:                               # %assert_end51
	cmpl	$1, (%r10)
	jne	.LBB2_55
# %bb.56:                               # %assert_end53
	cmpl	$16, 8(%r10)
	jne	.LBB2_57
# %bb.58:                               # %assert_end55
	cmpl	$13, 16(%r10)
	jne	.LBB2_59
# %bb.60:                               # %assert_end57
	cmpl	$13, 24(%r10)
	jne	.LBB2_61
# %bb.62:                               # %assert_end59
	testq	%r9, %r9
	je	.LBB2_64
# %bb.63:                               # %if_then60
	movups	(%r9), %xmm0
	movups	16(%r9), %xmm1
	shufps	$136, %xmm1, %xmm0              # xmm0 = xmm0[0,2],xmm1[0,2]
	pcmpeqd	.LCPI2_0(%rip), %xmm0
	movmskps	%xmm0, %eax
	cmpl	$15, %eax
	jne	.LBB2_73
.LBB2_64:                               # %if_end61
	cmpq	$0, 40(%r11)
	jne	.LBB2_65
# %bb.66:                               # %assert_end65
	cmpl	$1, 8(%r11)
	jne	.LBB2_67
# %bb.68:                               # %assert_end67
	cmpl	12(%r11), %r8d
	jne	.LBB2_69
# %bb.70:                               # %assert_end69
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	tvmgen_default_fused_nn_bias_add_compute_ # TAILCALL
.LBB2_5:                                # %assert_fail2
	.cfi_def_cfa_offset 32
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.21, %edi
	jmp	.LBB2_2
.LBB2_8:                                # %assert_fail4
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.22, %edi
	jmp	.LBB2_2
.LBB2_11:                               # %assert_fail6
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.23, %edi
.LBB2_2:                                # %common.ret
	callq	*(%rax)
	movl	$-1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB2_1:                                # %assert_fail
	.cfi_def_cfa_offset 32
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.20, %edi
	jmp	.LBB2_2
.LBB2_13:                               # %assert_fail8
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.3, %edi
	jmp	.LBB2_2
.LBB2_17:                               # %assert_fail12
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.4, %edi
	jmp	.LBB2_2
.LBB2_19:                               # %assert_fail14
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.5, %edi
	jmp	.LBB2_2
.LBB2_21:                               # %assert_fail16
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.24, %edi
	jmp	.LBB2_2
.LBB2_23:                               # %assert_fail18
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.7, %edi
	jmp	.LBB2_2
.LBB2_25:                               # %assert_fail20
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.25, %edi
	jmp	.LBB2_2
.LBB2_71:                               # %assert_fail22
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.26, %edi
	jmp	.LBB2_2
.LBB2_29:                               # %assert_fail24
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.10, %edi
	jmp	.LBB2_2
.LBB2_31:                               # %assert_fail26
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.11, %edi
	jmp	.LBB2_2
.LBB2_33:                               # %assert_fail28
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.27, %edi
	jmp	.LBB2_2
.LBB2_37:                               # %assert_fail32
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.13, %edi
	jmp	.LBB2_2
.LBB2_39:                               # %assert_fail34
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.28, %edi
	jmp	.LBB2_2
.LBB2_72:                               # %assert_fail38
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.29, %edi
	jmp	.LBB2_2
.LBB2_43:                               # %assert_fail40
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.17, %edi
	jmp	.LBB2_2
.LBB2_45:                               # %assert_fail42
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.18, %edi
	jmp	.LBB2_2
.LBB2_47:                               # %assert_fail44
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.19, %edi
	jmp	.LBB2_2
.LBB2_49:                               # %assert_fail46
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.30, %edi
	jmp	.LBB2_2
.LBB2_53:                               # %assert_fail50
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.31, %edi
	jmp	.LBB2_2
.LBB2_55:                               # %assert_fail52
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.32, %edi
	jmp	.LBB2_2
.LBB2_57:                               # %assert_fail54
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.33, %edi
	jmp	.LBB2_2
.LBB2_59:                               # %assert_fail56
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.34, %edi
	jmp	.LBB2_2
.LBB2_61:                               # %assert_fail58
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.35, %edi
	jmp	.LBB2_2
.LBB2_73:                               # %assert_fail62
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.36, %edi
	jmp	.LBB2_2
.LBB2_65:                               # %assert_fail64
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.37, %edi
	jmp	.LBB2_2
.LBB2_67:                               # %assert_fail66
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.38, %edi
	jmp	.LBB2_2
.LBB2_69:                               # %assert_fail68
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.39, %edi
	jmp	.LBB2_2
.Lfunc_end2:
	.size	tvmgen_default_fused_nn_bias_add, .Lfunc_end2-tvmgen_default_fused_nn_bias_add
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function tvmgen_default_fused_nn_bias_add_compute_
	.type	tvmgen_default_fused_nn_bias_add_compute_,@function
tvmgen_default_fused_nn_bias_add_compute_: # @tvmgen_default_fused_nn_bias_add_compute_
.Lfunc_begin3:
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, (%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	__TVMBackendParallelLaunch@GOTPCREL(%rip), %rax
	movq	%rsp, %rsi
	movl	$.L__tvm_parallel_lambda, %edi
	xorl	%edx, %edx
	callq	*(%rax)
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end3:
	.size	tvmgen_default_fused_nn_bias_add_compute_, .Lfunc_end3-tvmgen_default_fused_nn_bias_add_compute_
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __tvm_parallel_lambda
	.type	.L__tvm_parallel_lambda,@function
.L__tvm_parallel_lambda:                # @__tvm_parallel_lambda
.Lfunc_begin4:
	.cfi_startproc
# %bb.0:                                # %parallel_closure_entry
	movq	%rdx, %r8
                                        # kill: def $edi killed $edi def $rdi
	movl	8(%rsi), %ecx
	leal	15(%rcx), %eax
	cltd
	idivl	%ecx
	leal	1(%rdi), %ecx
	imull	%eax, %ecx
	cmpl	$16, %ecx
	movl	$16, %edx
	cmovgel	%edx, %ecx
	imull	%edi, %eax
	cmpl	$16, %eax
	cmovgel	%edx, %eax
	cmpl	%ecx, %eax
	jge	.LBB4_3
# %bb.1:                                # %for_begin_ax2.preheader.preheader
	movq	(%r8), %rdx
	movq	8(%r8), %rsi
	movq	16(%r8), %r8
	movslq	%eax, %rdi
	movslq	%ecx, %rax
	subq	%rdi, %rax
	leaq	(%r8,%rdi,4), %rcx
	imulq	$676, %rdi, %rdi                # imm = 0x2A4
	.p2align	4, 0x90
.LBB4_2:                                # %for_begin_ax2.preheader
                                        # =>This Inner Loop Header: Depth=1
	movss	(%rcx), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	shufps	$0, %xmm0, %xmm1                # xmm1 = xmm1[0,0],xmm0[0,0]
	movups	(%rsi,%rdi), %xmm2
	movups	16(%rsi,%rdi), %xmm3
	movups	32(%rsi,%rdi), %xmm4
	addps	%xmm1, %xmm2
	addps	%xmm1, %xmm4
	addps	%xmm1, %xmm3
	movss	48(%rsi,%rdi), %xmm5            # xmm5 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm5
	movss	%xmm5, 48(%rdx,%rdi)
	movups	%xmm3, 16(%rdx,%rdi)
	movups	%xmm4, 32(%rdx,%rdi)
	movups	%xmm2, (%rdx,%rdi)
	movups	52(%rsi,%rdi), %xmm2
	movups	68(%rsi,%rdi), %xmm3
	movups	84(%rsi,%rdi), %xmm4
	addps	%xmm1, %xmm2
	addps	%xmm1, %xmm3
	addps	%xmm1, %xmm4
	movss	100(%rsi,%rdi), %xmm5           # xmm5 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm5
	movss	%xmm5, 100(%rdx,%rdi)
	movups	%xmm4, 84(%rdx,%rdi)
	movups	%xmm3, 68(%rdx,%rdi)
	movups	%xmm2, 52(%rdx,%rdi)
	movups	104(%rsi,%rdi), %xmm2
	movups	120(%rsi,%rdi), %xmm3
	movups	136(%rsi,%rdi), %xmm4
	addps	%xmm1, %xmm2
	addps	%xmm1, %xmm3
	addps	%xmm1, %xmm4
	movss	152(%rsi,%rdi), %xmm5           # xmm5 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm5
	movss	%xmm5, 152(%rdx,%rdi)
	movups	%xmm4, 136(%rdx,%rdi)
	movups	%xmm3, 120(%rdx,%rdi)
	movups	%xmm2, 104(%rdx,%rdi)
	movups	156(%rsi,%rdi), %xmm2
	movups	172(%rsi,%rdi), %xmm3
	movups	188(%rsi,%rdi), %xmm4
	addps	%xmm1, %xmm2
	addps	%xmm1, %xmm3
	addps	%xmm1, %xmm4
	movss	204(%rsi,%rdi), %xmm5           # xmm5 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm5
	movss	%xmm5, 204(%rdx,%rdi)
	movups	%xmm4, 188(%rdx,%rdi)
	movups	%xmm3, 172(%rdx,%rdi)
	movups	%xmm2, 156(%rdx,%rdi)
	movups	208(%rsi,%rdi), %xmm2
	movups	224(%rsi,%rdi), %xmm3
	movups	240(%rsi,%rdi), %xmm4
	addps	%xmm1, %xmm2
	addps	%xmm1, %xmm3
	addps	%xmm1, %xmm4
	movss	256(%rsi,%rdi), %xmm5           # xmm5 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm5
	movss	%xmm5, 256(%rdx,%rdi)
	movups	%xmm4, 240(%rdx,%rdi)
	movups	%xmm3, 224(%rdx,%rdi)
	movups	%xmm2, 208(%rdx,%rdi)
	movups	260(%rsi,%rdi), %xmm2
	movups	276(%rsi,%rdi), %xmm3
	movups	292(%rsi,%rdi), %xmm4
	addps	%xmm1, %xmm2
	addps	%xmm1, %xmm3
	addps	%xmm1, %xmm4
	movss	308(%rsi,%rdi), %xmm5           # xmm5 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm5
	movss	%xmm5, 308(%rdx,%rdi)
	movups	%xmm4, 292(%rdx,%rdi)
	movups	%xmm3, 276(%rdx,%rdi)
	movups	%xmm2, 260(%rdx,%rdi)
	movups	312(%rsi,%rdi), %xmm2
	movups	328(%rsi,%rdi), %xmm3
	movups	344(%rsi,%rdi), %xmm4
	addps	%xmm1, %xmm2
	addps	%xmm1, %xmm3
	addps	%xmm1, %xmm4
	movss	360(%rsi,%rdi), %xmm5           # xmm5 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm5
	movss	%xmm5, 360(%rdx,%rdi)
	movups	%xmm4, 344(%rdx,%rdi)
	movups	%xmm3, 328(%rdx,%rdi)
	movups	%xmm2, 312(%rdx,%rdi)
	movups	364(%rsi,%rdi), %xmm2
	movups	380(%rsi,%rdi), %xmm3
	movups	396(%rsi,%rdi), %xmm4
	addps	%xmm1, %xmm2
	addps	%xmm1, %xmm3
	addps	%xmm1, %xmm4
	movss	412(%rsi,%rdi), %xmm5           # xmm5 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm5
	movss	%xmm5, 412(%rdx,%rdi)
	movups	%xmm4, 396(%rdx,%rdi)
	movups	%xmm3, 380(%rdx,%rdi)
	movups	%xmm2, 364(%rdx,%rdi)
	movups	416(%rsi,%rdi), %xmm2
	movups	432(%rsi,%rdi), %xmm3
	movups	448(%rsi,%rdi), %xmm4
	addps	%xmm1, %xmm2
	addps	%xmm1, %xmm3
	addps	%xmm1, %xmm4
	movss	464(%rsi,%rdi), %xmm5           # xmm5 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm5
	movss	%xmm5, 464(%rdx,%rdi)
	movups	%xmm4, 448(%rdx,%rdi)
	movups	%xmm3, 432(%rdx,%rdi)
	movups	%xmm2, 416(%rdx,%rdi)
	movups	468(%rsi,%rdi), %xmm2
	movups	484(%rsi,%rdi), %xmm3
	movups	500(%rsi,%rdi), %xmm4
	addps	%xmm1, %xmm2
	addps	%xmm1, %xmm3
	addps	%xmm1, %xmm4
	movss	516(%rsi,%rdi), %xmm5           # xmm5 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm5
	movss	%xmm5, 516(%rdx,%rdi)
	movups	%xmm4, 500(%rdx,%rdi)
	movups	%xmm3, 484(%rdx,%rdi)
	movups	%xmm2, 468(%rdx,%rdi)
	movups	520(%rsi,%rdi), %xmm2
	movups	536(%rsi,%rdi), %xmm3
	movups	552(%rsi,%rdi), %xmm4
	addps	%xmm1, %xmm2
	addps	%xmm1, %xmm3
	addps	%xmm1, %xmm4
	movss	568(%rsi,%rdi), %xmm5           # xmm5 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm5
	movss	%xmm5, 568(%rdx,%rdi)
	movups	%xmm4, 552(%rdx,%rdi)
	movups	%xmm3, 536(%rdx,%rdi)
	movups	%xmm2, 520(%rdx,%rdi)
	movups	572(%rsi,%rdi), %xmm2
	movups	588(%rsi,%rdi), %xmm3
	movups	604(%rsi,%rdi), %xmm4
	addps	%xmm1, %xmm2
	addps	%xmm1, %xmm3
	addps	%xmm1, %xmm4
	movss	620(%rsi,%rdi), %xmm5           # xmm5 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm5
	movss	%xmm5, 620(%rdx,%rdi)
	movups	%xmm4, 604(%rdx,%rdi)
	movups	%xmm3, 588(%rdx,%rdi)
	movups	%xmm2, 572(%rdx,%rdi)
	movups	624(%rsi,%rdi), %xmm2
	movups	640(%rsi,%rdi), %xmm3
	movups	656(%rsi,%rdi), %xmm4
	addps	%xmm1, %xmm2
	addps	%xmm1, %xmm3
	addps	%xmm1, %xmm4
	addss	672(%rsi,%rdi), %xmm0
	movss	%xmm0, 672(%rdx,%rdi)
	movups	%xmm4, 656(%rdx,%rdi)
	movups	%xmm3, 640(%rdx,%rdi)
	movups	%xmm2, 624(%rdx,%rdi)
	addq	$4, %rcx
	addq	$676, %rdi                      # imm = 0x2A4
	decq	%rax
	jne	.LBB4_2
.LBB4_3:                                # %for_end_ax0.ax1.fused
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	.L__tvm_parallel_lambda, .Lfunc_end4-.L__tvm_parallel_lambda
	.cfi_endproc
                                        # -- End function
	.globl	tvmgen_default_fused_nn_bias_add_1 # -- Begin function tvmgen_default_fused_nn_bias_add_1
	.p2align	4, 0x90
	.type	tvmgen_default_fused_nn_bias_add_1,@function
tvmgen_default_fused_nn_bias_add_1:     # @tvmgen_default_fused_nn_bias_add_1
.Lfunc_begin5:
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	cmpl	$3, %edx
	jne	.LBB5_1
# %bb.3:                                # %assert_end
	movl	(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB5_5
# %bb.4:                                # %assert_end
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB5_5
# %bb.6:                                # %assert_end3
	movl	4(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB5_8
# %bb.7:                                # %assert_end3
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB5_8
# %bb.9:                                # %assert_end5
	movl	8(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB5_11
# %bb.10:                               # %assert_end5
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB5_11
# %bb.12:                               # %assert_end7
	movq	(%rdi), %rax
	cmpl	$2, 16(%rax)
	jne	.LBB5_13
# %bb.14:                               # %assert_end11
	cmpw	$1, 22(%rax)
	jne	.LBB5_17
# %bb.15:                               # %assert_end11
	cmpb	$32, 21(%rax)
	jne	.LBB5_17
# %bb.16:                               # %assert_end11
	cmpb	$2, 20(%rax)
	jne	.LBB5_17
# %bb.18:                               # %assert_end13
	movq	24(%rax), %rcx
	cmpl	$1, (%rcx)
	jne	.LBB5_19
# %bb.20:                               # %assert_end15
	cmpl	$32, 8(%rcx)
	jne	.LBB5_21
# %bb.22:                               # %assert_end17
	movq	8(%rdi), %rcx
	movq	16(%rdi), %r11
	movq	(%rax), %rsi
	movq	32(%rax), %rbx
	movl	12(%rax), %r8d
	movq	(%rcx), %rdx
	movq	24(%rcx), %r14
	movq	32(%rcx), %r15
	movq	(%r11), %rdi
	movq	24(%r11), %r9
	movq	32(%r11), %r10
	testq	%rbx, %rbx
	je	.LBB5_25
# %bb.23:                               # %if_then
	cmpl	$32, (%rbx)
	jne	.LBB5_66
# %bb.24:                               # %if_then
	cmpl	$1, 8(%rbx)
	jne	.LBB5_66
.LBB5_25:                               # %if_end
	cmpq	$0, 40(%rax)
	jne	.LBB5_26
# %bb.27:                               # %assert_end21
	cmpl	$1, 8(%rax)
	jne	.LBB5_28
# %bb.29:                               # %assert_end23
	cmpl	$1, 16(%rcx)
	jne	.LBB5_30
# %bb.31:                               # %assert_end27
	cmpw	$1, 22(%rcx)
	jne	.LBB5_34
# %bb.32:                               # %assert_end27
	cmpb	$32, 21(%rcx)
	jne	.LBB5_34
# %bb.33:                               # %assert_end27
	cmpb	$2, 20(%rcx)
	jne	.LBB5_34
# %bb.35:                               # %assert_end29
	cmpl	$32, (%r14)
	jne	.LBB5_36
# %bb.37:                               # %assert_end31
	testq	%r15, %r15
	je	.LBB5_39
# %bb.38:                               # %if_then32
	cmpl	$1, (%r15)
	jne	.LBB5_67
.LBB5_39:                               # %if_end33
	cmpq	$0, 40(%rcx)
	jne	.LBB5_40
# %bb.41:                               # %assert_end37
	cmpl	$1, 8(%rcx)
	jne	.LBB5_42
# %bb.43:                               # %assert_end39
	cmpl	12(%rcx), %r8d
	jne	.LBB5_44
# %bb.45:                               # %assert_end41
	cmpl	$2, 16(%r11)
	jne	.LBB5_46
# %bb.47:                               # %assert_end45
	cmpw	$1, 22(%r11)
	jne	.LBB5_50
# %bb.48:                               # %assert_end45
	cmpb	$32, 21(%r11)
	jne	.LBB5_50
# %bb.49:                               # %assert_end45
	cmpb	$2, 20(%r11)
	jne	.LBB5_50
# %bb.51:                               # %assert_end47
	cmpl	$1, (%r9)
	jne	.LBB5_52
# %bb.53:                               # %assert_end49
	cmpl	$32, 8(%r9)
	jne	.LBB5_54
# %bb.55:                               # %assert_end51
	testq	%r10, %r10
	je	.LBB5_58
# %bb.56:                               # %if_then52
	cmpl	$32, (%r10)
	jne	.LBB5_68
# %bb.57:                               # %if_then52
	cmpl	$1, 8(%r10)
	jne	.LBB5_68
.LBB5_58:                               # %if_end53
	cmpq	$0, 40(%r11)
	jne	.LBB5_59
# %bb.60:                               # %assert_end57
	cmpl	$1, 8(%r11)
	jne	.LBB5_61
# %bb.62:                               # %assert_end59
	cmpl	12(%r11), %r8d
	jne	.LBB5_63
# %bb.64:                               # %assert_end61
	callq	tvmgen_default_fused_nn_bias_add_1_compute_
	xorl	%eax, %eax
	jmp	.LBB5_65
.LBB5_5:                                # %assert_fail2
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.41, %edi
	jmp	.LBB5_2
.LBB5_8:                                # %assert_fail4
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.42, %edi
	jmp	.LBB5_2
.LBB5_11:                               # %assert_fail6
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.43, %edi
.LBB5_2:                                # %common.ret
	callq	*(%rax)
	movl	$-1, %eax
.LBB5_65:                               # %common.ret
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB5_1:                                # %assert_fail
	.cfi_def_cfa_offset 32
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.40, %edi
	jmp	.LBB5_2
.LBB5_13:                               # %assert_fail8
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.44, %edi
	jmp	.LBB5_2
.LBB5_17:                               # %assert_fail12
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.4, %edi
	jmp	.LBB5_2
.LBB5_19:                               # %assert_fail14
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.5, %edi
	jmp	.LBB5_2
.LBB5_21:                               # %assert_fail16
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.45, %edi
	jmp	.LBB5_2
.LBB5_66:                               # %assert_fail18
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.46, %edi
	jmp	.LBB5_2
.LBB5_26:                               # %assert_fail20
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.10, %edi
	jmp	.LBB5_2
.LBB5_28:                               # %assert_fail22
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.11, %edi
	jmp	.LBB5_2
.LBB5_30:                               # %assert_fail24
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.27, %edi
	jmp	.LBB5_2
.LBB5_34:                               # %assert_fail28
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.13, %edi
	jmp	.LBB5_2
.LBB5_36:                               # %assert_fail30
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.47, %edi
	jmp	.LBB5_2
.LBB5_67:                               # %assert_fail34
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.29, %edi
	jmp	.LBB5_2
.LBB5_40:                               # %assert_fail36
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.17, %edi
	jmp	.LBB5_2
.LBB5_42:                               # %assert_fail38
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.18, %edi
	jmp	.LBB5_2
.LBB5_44:                               # %assert_fail40
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.19, %edi
	jmp	.LBB5_2
.LBB5_46:                               # %assert_fail42
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.48, %edi
	jmp	.LBB5_2
.LBB5_50:                               # %assert_fail46
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.31, %edi
	jmp	.LBB5_2
.LBB5_52:                               # %assert_fail48
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.32, %edi
	jmp	.LBB5_2
.LBB5_54:                               # %assert_fail50
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.49, %edi
	jmp	.LBB5_2
.LBB5_68:                               # %assert_fail54
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.50, %edi
	jmp	.LBB5_2
.LBB5_59:                               # %assert_fail56
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.37, %edi
	jmp	.LBB5_2
.LBB5_61:                               # %assert_fail58
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.38, %edi
	jmp	.LBB5_2
.LBB5_63:                               # %assert_fail60
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.39, %edi
	jmp	.LBB5_2
.Lfunc_end5:
	.size	tvmgen_default_fused_nn_bias_add_1, .Lfunc_end5-tvmgen_default_fused_nn_bias_add_1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function tvmgen_default_fused_nn_bias_add_1_compute_
	.type	tvmgen_default_fused_nn_bias_add_1_compute_,@function
tvmgen_default_fused_nn_bias_add_1_compute_: # @tvmgen_default_fused_nn_bias_add_1_compute_
.Lfunc_begin6:
	.cfi_startproc
# %bb.0:                                # %entry
	movaps	(%rdx), %xmm0
	movaps	16(%rdx), %xmm1
	movaps	32(%rdx), %xmm2
	movaps	48(%rdx), %xmm3
	addps	(%rsi), %xmm0
	addps	16(%rsi), %xmm1
	addps	32(%rsi), %xmm2
	addps	48(%rsi), %xmm3
	movaps	%xmm3, 48(%rdi)
	movaps	%xmm2, 32(%rdi)
	movaps	%xmm1, 16(%rdi)
	movaps	%xmm0, (%rdi)
	movaps	64(%rdx), %xmm0
	movaps	80(%rdx), %xmm1
	movaps	96(%rdx), %xmm2
	movaps	112(%rdx), %xmm3
	addps	80(%rsi), %xmm1
	addps	64(%rsi), %xmm0
	addps	112(%rsi), %xmm3
	addps	96(%rsi), %xmm2
	movaps	%xmm2, 96(%rdi)
	movaps	%xmm3, 112(%rdi)
	movaps	%xmm0, 64(%rdi)
	movaps	%xmm1, 80(%rdi)
	retq
.Lfunc_end6:
	.size	tvmgen_default_fused_nn_bias_add_1_compute_, .Lfunc_end6-tvmgen_default_fused_nn_bias_add_1_compute_
	.cfi_endproc
                                        # -- End function
	.globl	tvmgen_default_fused_nn_bias_add_2 # -- Begin function tvmgen_default_fused_nn_bias_add_2
	.p2align	4, 0x90
	.type	tvmgen_default_fused_nn_bias_add_2,@function
tvmgen_default_fused_nn_bias_add_2:     # @tvmgen_default_fused_nn_bias_add_2
.Lfunc_begin7:
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	subq	$96, %rsp
	.cfi_def_cfa_offset 128
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	cmpl	$3, %edx
	jne	.LBB7_1
# %bb.3:                                # %assert_end
	movl	(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB7_5
# %bb.4:                                # %assert_end
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB7_5
# %bb.6:                                # %assert_end3
	movl	4(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB7_8
# %bb.7:                                # %assert_end3
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB7_8
# %bb.9:                                # %assert_end5
	movl	8(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB7_11
# %bb.10:                               # %assert_end5
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB7_11
# %bb.12:                               # %assert_end7
	movq	(%rdi), %rax
	cmpl	$2, 16(%rax)
	jne	.LBB7_13
# %bb.14:                               # %assert_end11
	cmpw	$1, 22(%rax)
	jne	.LBB7_17
# %bb.15:                               # %assert_end11
	cmpb	$32, 21(%rax)
	jne	.LBB7_17
# %bb.16:                               # %assert_end11
	cmpb	$2, 20(%rax)
	jne	.LBB7_17
# %bb.18:                               # %assert_end13
	movq	24(%rax), %rcx
	cmpl	$1, (%rcx)
	jne	.LBB7_19
# %bb.20:                               # %assert_end15
	cmpl	$10, 8(%rcx)
	jne	.LBB7_21
# %bb.22:                               # %assert_end17
	movq	8(%rdi), %rcx
	movq	16(%rdi), %rdx
	movq	(%rax), %r9
	movq	32(%rax), %rsi
	movl	12(%rax), %r8d
	movq	(%rcx), %r10
	movq	24(%rcx), %r14
	movq	32(%rcx), %rbx
	movq	(%rdx), %rdi
	movq	24(%rdx), %r11
	movq	32(%rdx), %r15
	testq	%rsi, %rsi
	je	.LBB7_25
# %bb.23:                               # %if_then
	cmpl	$10, (%rsi)
	jne	.LBB7_66
# %bb.24:                               # %if_then
	cmpl	$1, 8(%rsi)
	jne	.LBB7_66
.LBB7_25:                               # %if_end
	cmpq	$0, 40(%rax)
	jne	.LBB7_26
# %bb.27:                               # %assert_end21
	cmpl	$1, 8(%rax)
	jne	.LBB7_28
# %bb.29:                               # %assert_end23
	cmpl	$1, 16(%rcx)
	jne	.LBB7_30
# %bb.31:                               # %assert_end27
	cmpw	$1, 22(%rcx)
	jne	.LBB7_34
# %bb.32:                               # %assert_end27
	cmpb	$32, 21(%rcx)
	jne	.LBB7_34
# %bb.33:                               # %assert_end27
	cmpb	$2, 20(%rcx)
	jne	.LBB7_34
# %bb.35:                               # %assert_end29
	cmpl	$10, (%r14)
	jne	.LBB7_36
# %bb.37:                               # %assert_end31
	testq	%rbx, %rbx
	je	.LBB7_39
# %bb.38:                               # %if_then32
	cmpl	$1, (%rbx)
	jne	.LBB7_67
.LBB7_39:                               # %if_end33
	cmpq	$0, 40(%rcx)
	jne	.LBB7_40
# %bb.41:                               # %assert_end37
	cmpl	$1, 8(%rcx)
	jne	.LBB7_42
# %bb.43:                               # %assert_end39
	cmpl	12(%rcx), %r8d
	jne	.LBB7_44
# %bb.45:                               # %assert_end41
	cmpl	$2, 16(%rdx)
	jne	.LBB7_46
# %bb.47:                               # %assert_end45
	cmpw	$1, 22(%rdx)
	jne	.LBB7_50
# %bb.48:                               # %assert_end45
	cmpb	$32, 21(%rdx)
	jne	.LBB7_50
# %bb.49:                               # %assert_end45
	cmpb	$2, 20(%rdx)
	jne	.LBB7_50
# %bb.51:                               # %assert_end47
	cmpl	$1, (%r11)
	jne	.LBB7_52
# %bb.53:                               # %assert_end49
	cmpl	$10, 8(%r11)
	jne	.LBB7_54
# %bb.55:                               # %assert_end51
	testq	%r15, %r15
	je	.LBB7_58
# %bb.56:                               # %if_then52
	cmpl	$10, (%r15)
	jne	.LBB7_68
# %bb.57:                               # %if_then52
	cmpl	$1, 8(%r15)
	jne	.LBB7_68
.LBB7_58:                               # %if_end53
	cmpq	$0, 40(%rdx)
	jne	.LBB7_59
# %bb.60:                               # %assert_end57
	cmpl	$1, 8(%rdx)
	jne	.LBB7_61
# %bb.62:                               # %assert_end59
	cmpl	12(%rdx), %r8d
	jne	.LBB7_63
# %bb.64:                               # %assert_end61
	movaps	(%r9), %xmm0
	movaps	16(%r9), %xmm4
	movaps	32(%r9), %xmm1
	movaps	(%r10), %xmm2
	movaps	16(%r10), %xmm3
	movaps	32(%r10), %xmm5
	movaps	%xmm5, %xmm6
	shufps	$85, %xmm5, %xmm6               # xmm6 = xmm6[1,1],xmm5[1,1]
	movss	%xmm6, 88(%rsp)
	movss	%xmm5, 80(%rsp)
	movaps	%xmm3, %xmm5
	shufps	$255, %xmm3, %xmm5              # xmm5 = xmm5[3,3],xmm3[3,3]
	movss	%xmm5, 72(%rsp)
	movaps	%xmm3, %xmm5
	unpckhpd	%xmm3, %xmm5                    # xmm5 = xmm5[1],xmm3[1]
	movss	%xmm5, 64(%rsp)
	movaps	%xmm3, %xmm5
	shufps	$85, %xmm3, %xmm5               # xmm5 = xmm5[1,1],xmm3[1,1]
	movss	%xmm5, 56(%rsp)
	movss	%xmm3, 48(%rsp)
	movaps	%xmm2, %xmm3
	shufps	$255, %xmm2, %xmm3              # xmm3 = xmm3[3,3],xmm2[3,3]
	movss	%xmm3, 40(%rsp)
	movaps	%xmm2, %xmm3
	unpckhpd	%xmm2, %xmm3                    # xmm3 = xmm3[1],xmm2[1]
	movss	%xmm3, 32(%rsp)
	movaps	%xmm2, %xmm3
	shufps	$85, %xmm2, %xmm3               # xmm3 = xmm3[1,1],xmm2[1,1]
	movss	%xmm3, 24(%rsp)
	movss	%xmm2, 16(%rsp)
	movaps	%xmm1, %xmm2
	shufps	$85, %xmm1, %xmm2               # xmm2 = xmm2[1,1],xmm1[1,1]
	movss	%xmm2, 8(%rsp)
	movss	%xmm1, (%rsp)
	movaps	%xmm0, %xmm1
	shufps	$85, %xmm0, %xmm1               # xmm1 = xmm1[1,1],xmm0[1,1]
	movaps	%xmm0, %xmm2
	unpckhpd	%xmm0, %xmm2                    # xmm2 = xmm2[1],xmm0[1]
	movaps	%xmm0, %xmm3
	shufps	$255, %xmm0, %xmm3              # xmm3 = xmm3[3,3],xmm0[3,3]
	movaps	%xmm4, %xmm5
	shufps	$85, %xmm4, %xmm5               # xmm5 = xmm5[1,1],xmm4[1,1]
	movaps	%xmm4, %xmm6
	unpckhpd	%xmm4, %xmm6                    # xmm6 = xmm6[1],xmm4[1]
	movaps	%xmm4, %xmm7
	shufps	$255, %xmm4, %xmm7              # xmm7 = xmm7[3,3],xmm4[3,3]
	callq	tvmgen_default_fused_nn_bias_add_2_compute_
	xorl	%eax, %eax
	jmp	.LBB7_65
.LBB7_5:                                # %assert_fail2
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.52, %edi
	jmp	.LBB7_2
.LBB7_8:                                # %assert_fail4
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.53, %edi
	jmp	.LBB7_2
.LBB7_11:                               # %assert_fail6
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.54, %edi
.LBB7_2:                                # %common.ret
	callq	*(%rax)
	movl	$-1, %eax
.LBB7_65:                               # %common.ret
	addq	$96, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB7_1:                                # %assert_fail
	.cfi_def_cfa_offset 128
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.51, %edi
	jmp	.LBB7_2
.LBB7_13:                               # %assert_fail8
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.44, %edi
	jmp	.LBB7_2
.LBB7_17:                               # %assert_fail12
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.4, %edi
	jmp	.LBB7_2
.LBB7_19:                               # %assert_fail14
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.5, %edi
	jmp	.LBB7_2
.LBB7_21:                               # %assert_fail16
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.55, %edi
	jmp	.LBB7_2
.LBB7_66:                               # %assert_fail18
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.56, %edi
	jmp	.LBB7_2
.LBB7_26:                               # %assert_fail20
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.10, %edi
	jmp	.LBB7_2
.LBB7_28:                               # %assert_fail22
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.11, %edi
	jmp	.LBB7_2
.LBB7_30:                               # %assert_fail24
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.27, %edi
	jmp	.LBB7_2
.LBB7_34:                               # %assert_fail28
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.13, %edi
	jmp	.LBB7_2
.LBB7_36:                               # %assert_fail30
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.57, %edi
	jmp	.LBB7_2
.LBB7_67:                               # %assert_fail34
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.29, %edi
	jmp	.LBB7_2
.LBB7_40:                               # %assert_fail36
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.17, %edi
	jmp	.LBB7_2
.LBB7_42:                               # %assert_fail38
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.18, %edi
	jmp	.LBB7_2
.LBB7_44:                               # %assert_fail40
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.19, %edi
	jmp	.LBB7_2
.LBB7_46:                               # %assert_fail42
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.48, %edi
	jmp	.LBB7_2
.LBB7_50:                               # %assert_fail46
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.31, %edi
	jmp	.LBB7_2
.LBB7_52:                               # %assert_fail48
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.32, %edi
	jmp	.LBB7_2
.LBB7_54:                               # %assert_fail50
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.58, %edi
	jmp	.LBB7_2
.LBB7_68:                               # %assert_fail54
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.59, %edi
	jmp	.LBB7_2
.LBB7_59:                               # %assert_fail56
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.37, %edi
	jmp	.LBB7_2
.LBB7_61:                               # %assert_fail58
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.38, %edi
	jmp	.LBB7_2
.LBB7_63:                               # %assert_fail60
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.39, %edi
	jmp	.LBB7_2
.Lfunc_end7:
	.size	tvmgen_default_fused_nn_bias_add_2, .Lfunc_end7-tvmgen_default_fused_nn_bias_add_2
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function tvmgen_default_fused_nn_bias_add_2_compute_
	.type	tvmgen_default_fused_nn_bias_add_2_compute_,@function
tvmgen_default_fused_nn_bias_add_2_compute_: # @tvmgen_default_fused_nn_bias_add_2_compute_
.Lfunc_begin8:
	.cfi_startproc
# %bb.0:                                # %entry
	movss	80(%rsp), %xmm8                 # xmm8 = mem[0],zero,zero,zero
	movss	72(%rsp), %xmm9                 # xmm9 = mem[0],zero,zero,zero
	unpcklps	%xmm8, %xmm9                    # xmm9 = xmm9[0],xmm8[0],xmm9[1],xmm8[1]
	movss	64(%rsp), %xmm8                 # xmm8 = mem[0],zero,zero,zero
	movss	56(%rsp), %xmm10                # xmm10 = mem[0],zero,zero,zero
	unpcklps	%xmm8, %xmm10                   # xmm10 = xmm10[0],xmm8[0],xmm10[1],xmm8[1]
	movlhps	%xmm9, %xmm10                   # xmm10 = xmm10[0],xmm9[0]
	unpcklps	%xmm7, %xmm6                    # xmm6 = xmm6[0],xmm7[0],xmm6[1],xmm7[1]
	unpcklps	%xmm5, %xmm4                    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movlhps	%xmm6, %xmm4                    # xmm4 = xmm4[0],xmm6[0]
	addps	%xmm10, %xmm4
	movss	48(%rsp), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	movss	40(%rsp), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	unpcklps	%xmm5, %xmm6                    # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movss	32(%rsp), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	movss	24(%rsp), %xmm7                 # xmm7 = mem[0],zero,zero,zero
	unpcklps	%xmm5, %xmm7                    # xmm7 = xmm7[0],xmm5[0],xmm7[1],xmm5[1]
	movlhps	%xmm6, %xmm7                    # xmm7 = xmm7[0],xmm6[0]
	unpcklps	%xmm3, %xmm2                    # xmm2 = xmm2[0],xmm3[0],xmm2[1],xmm3[1]
	unpcklps	%xmm1, %xmm0                    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movlhps	%xmm2, %xmm0                    # xmm0 = xmm0[0],xmm2[0]
	addps	%xmm7, %xmm0
	movss	96(%rsp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movss	88(%rsp), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm2                    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movss	16(%rsp), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	movss	8(%rsp), %xmm3                  # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm3                    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	addps	%xmm2, %xmm3
	movlps	%xmm3, 32(%rdi)
	movaps	%xmm4, 16(%rdi)
	movaps	%xmm0, (%rdi)
	retq
.Lfunc_end8:
	.size	tvmgen_default_fused_nn_bias_add_2_compute_, .Lfunc_end8-tvmgen_default_fused_nn_bias_add_2_compute_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function tvmgen_default_fused_nn_conv2d
.LCPI9_0:
	.long	196                             # 0xc4
	.long	196                             # 0xc4
	.long	14                              # 0xe
	.long	1                               # 0x1
.LCPI9_1:
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	2                               # 0x2
	.long	1                               # 0x1
.LCPI9_2:
	.long	2704                            # 0xa90
	.long	169                             # 0xa9
	.long	13                              # 0xd
	.long	1                               # 0x1
	.text
	.globl	tvmgen_default_fused_nn_conv2d
	.p2align	4, 0x90
	.type	tvmgen_default_fused_nn_conv2d,@function
tvmgen_default_fused_nn_conv2d:         # @tvmgen_default_fused_nn_conv2d
.Lfunc_begin9:
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	cmpl	$3, %edx
	jne	.LBB9_1
# %bb.3:                                # %assert_end
	movl	(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB9_5
# %bb.4:                                # %assert_end
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB9_5
# %bb.6:                                # %assert_end3
	movl	4(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB9_8
# %bb.7:                                # %assert_end3
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB9_8
# %bb.9:                                # %assert_end5
	movl	8(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB9_11
# %bb.10:                               # %assert_end5
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB9_11
# %bb.12:                               # %assert_end7
	movq	(%rdi), %rax
	cmpl	$4, 16(%rax)
	jne	.LBB9_13
# %bb.14:                               # %assert_end11
	cmpw	$1, 22(%rax)
	jne	.LBB9_17
# %bb.15:                               # %assert_end11
	cmpb	$32, 21(%rax)
	jne	.LBB9_17
# %bb.16:                               # %assert_end11
	cmpb	$2, 20(%rax)
	jne	.LBB9_17
# %bb.18:                               # %assert_end13
	movq	24(%rax), %rcx
	cmpl	$1, (%rcx)
	jne	.LBB9_19
# %bb.20:                               # %assert_end15
	cmpl	$1, 8(%rcx)
	jne	.LBB9_21
# %bb.22:                               # %assert_end17
	cmpl	$14, 16(%rcx)
	jne	.LBB9_23
# %bb.24:                               # %assert_end19
	cmpl	$14, 24(%rcx)
	jne	.LBB9_25
# %bb.26:                               # %assert_end21
	movq	8(%rdi), %rcx
	movq	16(%rdi), %r11
	movq	(%rax), %rdi
	movq	32(%rax), %rbx
	movl	12(%rax), %r8d
	movq	(%rcx), %rsi
	movq	24(%rcx), %r15
	movq	32(%rcx), %r14
	movq	(%r11), %rdx
	movq	24(%r11), %r10
	movq	32(%r11), %r9
	testq	%rbx, %rbx
	je	.LBB9_28
# %bb.27:                               # %if_then
	movups	(%rbx), %xmm0
	movups	16(%rbx), %xmm1
	shufps	$136, %xmm1, %xmm0              # xmm0 = xmm0[0,2],xmm1[0,2]
	pcmpeqd	.LCPI9_0(%rip), %xmm0
	movmskps	%xmm0, %ebx
	cmpl	$15, %ebx
	jne	.LBB9_77
.LBB9_28:                               # %if_end
	cmpq	$0, 40(%rax)
	jne	.LBB9_29
# %bb.30:                               # %assert_end25
	cmpl	$1, 8(%rax)
	jne	.LBB9_31
# %bb.32:                               # %assert_end27
	cmpl	$4, 16(%rcx)
	jne	.LBB9_33
# %bb.34:                               # %assert_end31
	cmpw	$1, 22(%rcx)
	jne	.LBB9_37
# %bb.35:                               # %assert_end31
	cmpb	$32, 21(%rcx)
	jne	.LBB9_37
# %bb.36:                               # %assert_end31
	cmpb	$2, 20(%rcx)
	jne	.LBB9_37
# %bb.38:                               # %assert_end33
	cmpl	$16, (%r15)
	jne	.LBB9_39
# %bb.40:                               # %assert_end35
	cmpl	$1, 8(%r15)
	jne	.LBB9_41
# %bb.42:                               # %assert_end37
	cmpl	$2, 16(%r15)
	jne	.LBB9_43
# %bb.44:                               # %assert_end39
	cmpl	$2, 24(%r15)
	jne	.LBB9_45
# %bb.46:                               # %assert_end41
	testq	%r14, %r14
	je	.LBB9_48
# %bb.47:                               # %if_then42
	movups	(%r14), %xmm0
	movups	16(%r14), %xmm1
	shufps	$136, %xmm1, %xmm0              # xmm0 = xmm0[0,2],xmm1[0,2]
	pcmpeqd	.LCPI9_1(%rip), %xmm0
	movmskps	%xmm0, %eax
	cmpl	$15, %eax
	jne	.LBB9_78
.LBB9_48:                               # %if_end43
	cmpq	$0, 40(%rcx)
	jne	.LBB9_49
# %bb.50:                               # %assert_end47
	cmpl	$1, 8(%rcx)
	jne	.LBB9_51
# %bb.52:                               # %assert_end49
	cmpl	12(%rcx), %r8d
	jne	.LBB9_53
# %bb.54:                               # %assert_end51
	cmpl	$4, 16(%r11)
	jne	.LBB9_55
# %bb.56:                               # %assert_end55
	cmpw	$1, 22(%r11)
	jne	.LBB9_59
# %bb.57:                               # %assert_end55
	cmpb	$32, 21(%r11)
	jne	.LBB9_59
# %bb.58:                               # %assert_end55
	cmpb	$2, 20(%r11)
	jne	.LBB9_59
# %bb.60:                               # %assert_end57
	cmpl	$1, (%r10)
	jne	.LBB9_61
# %bb.62:                               # %assert_end59
	cmpl	$16, 8(%r10)
	jne	.LBB9_63
# %bb.64:                               # %assert_end61
	cmpl	$13, 16(%r10)
	jne	.LBB9_65
# %bb.66:                               # %assert_end63
	cmpl	$13, 24(%r10)
	jne	.LBB9_67
# %bb.68:                               # %assert_end65
	testq	%r9, %r9
	je	.LBB9_70
# %bb.69:                               # %if_then66
	movups	(%r9), %xmm0
	movups	16(%r9), %xmm1
	shufps	$136, %xmm1, %xmm0              # xmm0 = xmm0[0,2],xmm1[0,2]
	pcmpeqd	.LCPI9_2(%rip), %xmm0
	movmskps	%xmm0, %eax
	cmpl	$15, %eax
	jne	.LBB9_79
.LBB9_70:                               # %if_end67
	cmpq	$0, 40(%r11)
	jne	.LBB9_71
# %bb.72:                               # %assert_end71
	cmpl	$1, 8(%r11)
	jne	.LBB9_73
# %bb.74:                               # %assert_end73
	cmpl	12(%r11), %r8d
	jne	.LBB9_75
# %bb.76:                               # %assert_end75
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	tvmgen_default_fused_nn_conv2d_compute_ # TAILCALL
.LBB9_5:                                # %assert_fail2
	.cfi_def_cfa_offset 32
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.61, %edi
	jmp	.LBB9_2
.LBB9_8:                                # %assert_fail4
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.62, %edi
	jmp	.LBB9_2
.LBB9_11:                               # %assert_fail6
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.63, %edi
.LBB9_2:                                # %common.ret
	callq	*(%rax)
	movl	$-1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB9_1:                                # %assert_fail
	.cfi_def_cfa_offset 32
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.60, %edi
	jmp	.LBB9_2
.LBB9_13:                               # %assert_fail8
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.3, %edi
	jmp	.LBB9_2
.LBB9_17:                               # %assert_fail12
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.4, %edi
	jmp	.LBB9_2
.LBB9_19:                               # %assert_fail14
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.5, %edi
	jmp	.LBB9_2
.LBB9_21:                               # %assert_fail16
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.64, %edi
	jmp	.LBB9_2
.LBB9_23:                               # %assert_fail18
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.65, %edi
	jmp	.LBB9_2
.LBB9_25:                               # %assert_fail20
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.66, %edi
	jmp	.LBB9_2
.LBB9_77:                               # %assert_fail22
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.67, %edi
	jmp	.LBB9_2
.LBB9_29:                               # %assert_fail24
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.10, %edi
	jmp	.LBB9_2
.LBB9_31:                               # %assert_fail26
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.11, %edi
	jmp	.LBB9_2
.LBB9_33:                               # %assert_fail28
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.68, %edi
	jmp	.LBB9_2
.LBB9_37:                               # %assert_fail32
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.13, %edi
	jmp	.LBB9_2
.LBB9_39:                               # %assert_fail34
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.28, %edi
	jmp	.LBB9_2
.LBB9_41:                               # %assert_fail36
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.69, %edi
	jmp	.LBB9_2
.LBB9_43:                               # %assert_fail38
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.70, %edi
	jmp	.LBB9_2
.LBB9_45:                               # %assert_fail40
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.71, %edi
	jmp	.LBB9_2
.LBB9_78:                               # %assert_fail44
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.72, %edi
	jmp	.LBB9_2
.LBB9_49:                               # %assert_fail46
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.17, %edi
	jmp	.LBB9_2
.LBB9_51:                               # %assert_fail48
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.18, %edi
	jmp	.LBB9_2
.LBB9_53:                               # %assert_fail50
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.19, %edi
	jmp	.LBB9_2
.LBB9_55:                               # %assert_fail52
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.30, %edi
	jmp	.LBB9_2
.LBB9_59:                               # %assert_fail56
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.31, %edi
	jmp	.LBB9_2
.LBB9_61:                               # %assert_fail58
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.32, %edi
	jmp	.LBB9_2
.LBB9_63:                               # %assert_fail60
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.33, %edi
	jmp	.LBB9_2
.LBB9_65:                               # %assert_fail62
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.34, %edi
	jmp	.LBB9_2
.LBB9_67:                               # %assert_fail64
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.35, %edi
	jmp	.LBB9_2
.LBB9_79:                               # %assert_fail68
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.36, %edi
	jmp	.LBB9_2
.LBB9_71:                               # %assert_fail70
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.37, %edi
	jmp	.LBB9_2
.LBB9_73:                               # %assert_fail72
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.38, %edi
	jmp	.LBB9_2
.LBB9_75:                               # %assert_fail74
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.39, %edi
	jmp	.LBB9_2
.Lfunc_end9:
	.size	tvmgen_default_fused_nn_conv2d, .Lfunc_end9-tvmgen_default_fused_nn_conv2d
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function tvmgen_default_fused_nn_conv2d_compute_
	.type	tvmgen_default_fused_nn_conv2d_compute_,@function
tvmgen_default_fused_nn_conv2d_compute_: # @tvmgen_default_fused_nn_conv2d_compute_
.Lfunc_begin10:
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1064, %rsp                     # imm = 0x428
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movq	%rdx, %r14
	movq	%rsi, %rbx
	leaq	-1104(%rbp), %r12
	movq	%r12, -56(%rbp)
	movq	%rdi, -48(%rbp)
	movq	__TVMBackendParallelLaunch@GOTPCREL(%rip), %r15
	leaq	-56(%rbp), %rsi
	movl	$.L__tvm_parallel_lambda.73, %edi
	xorl	%edx, %edx
	callq	*(%r15)
	testl	%eax, %eax
	jne	.LBB10_3
# %bb.1:                                # %call_end
	movq	%rsp, %rax
	leaq	-16(%rax), %rsi
	movq	%rsi, %rsp
	leaq	-320(%rbp), %r13
	movq	%r13, -16(%rax)
	movq	%rbx, -8(%rax)
	movl	$.L__tvm_parallel_lambda.74, %edi
	xorl	%edx, %edx
	callq	*(%r15)
	testl	%eax, %eax
	jne	.LBB10_3
# %bb.2:                                # %call_end2
	movq	%rsp, %rax
	leaq	-32(%rax), %rsi
	movq	%rsi, %rsp
	movq	%r12, -32(%rax)
	movq	%r13, -24(%rax)
	movq	%r14, -16(%rax)
	movl	$.L__tvm_parallel_lambda.75, %edi
	xorl	%edx, %edx
	callq	*(%r15)
.LBB10_3:                               # %common.ret
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.Lfunc_end10:
	.size	tvmgen_default_fused_nn_conv2d_compute_, .Lfunc_end10-tvmgen_default_fused_nn_conv2d_compute_
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __tvm_parallel_lambda.73
	.type	.L__tvm_parallel_lambda.73,@function
.L__tvm_parallel_lambda.73:             # @__tvm_parallel_lambda.73
.Lfunc_begin11:
	.cfi_startproc
# %bb.0:                                # %parallel_closure_entry
	movq	%rdx, %rcx
                                        # kill: def $edi killed $edi def $rdi
	movl	8(%rsi), %esi
	leal	13(%rsi), %eax
	cltd
	idivl	%esi
	leal	1(%rdi), %esi
	imull	%eax, %esi
	cmpl	$14, %esi
	movl	$14, %edx
	cmovgel	%edx, %esi
	imull	%edi, %eax
	cmpl	$14, %eax
	cmovgel	%edx, %eax
	cmpl	%esi, %eax
	jge	.LBB11_3
# %bb.1:                                # %for_begin_w.preheader.preheader
	movq	(%rcx), %rdx
	movq	8(%rcx), %rcx
	movslq	%eax, %rdi
	movslq	%esi, %rax
	subq	%rdi, %rax
	imulq	$56, %rdi, %rsi
	addq	$52, %rsi
	.p2align	4, 0x90
.LBB11_2:                               # %for_begin_w.preheader
                                        # =>This Inner Loop Header: Depth=1
	movups	-52(%rcx,%rsi), %xmm0
	movups	%xmm0, -52(%rdx,%rsi)
	movups	-36(%rcx,%rsi), %xmm0
	movups	%xmm0, -36(%rdx,%rsi)
	movups	-20(%rcx,%rsi), %xmm0
	movups	%xmm0, -20(%rdx,%rsi)
	movss	-4(%rcx,%rsi), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rdx,%rsi)
	movss	(%rcx,%rsi), %xmm0              # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, (%rdx,%rsi)
	addq	$56, %rsi
	decq	%rax
	jne	.LBB11_2
.LBB11_3:                               # %for_end_bs.c.fused.h.fused
	xorl	%eax, %eax
	retq
.Lfunc_end11:
	.size	.L__tvm_parallel_lambda.73, .Lfunc_end11-.L__tvm_parallel_lambda.73
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __tvm_parallel_lambda.74
	.type	.L__tvm_parallel_lambda.74,@function
.L__tvm_parallel_lambda.74:             # @__tvm_parallel_lambda.74
.Lfunc_begin12:
	.cfi_startproc
# %bb.0:                                # %parallel_closure_entry
	movq	%rdx, %rcx
                                        # kill: def $edi killed $edi def $rdi
	movl	8(%rsi), %esi
	leal	7(%rsi), %eax
	cltd
	idivl	%esi
                                        # kill: def $eax killed $eax def $rax
	leal	1(%rdi), %edx
	imull	%eax, %edx
	cmpl	$8, %edx
	movl	$8, %esi
	cmovgel	%esi, %edx
	imull	%edi, %eax
	cmpl	$8, %eax
	cmovgel	%esi, %eax
	cmpl	%edx, %eax
	jge	.LBB12_3
# %bb.1:                                # %for_begin_k_w.preheader.preheader
	movq	(%rcx), %r8
	movq	8(%rcx), %rcx
	movslq	%eax, %rdi
	movslq	%edx, %r9
	subq	%rdi, %r9
	leal	(%rax,%rax), %esi
	shll	$3, %eax
	.p2align	4, 0x90
.LBB12_2:                               # %for_begin_k_w.preheader
                                        # =>This Inner Loop Header: Depth=1
	movl	%esi, %edi
	andl	$2, %edi
	movslq	%eax, %rdx
	andl	$-16, %eax
	orl	%edi, %eax
	cltq
	movss	(%rcx,%rax,4), %xmm0            # xmm0 = mem[0],zero,zero,zero
	movss	16(%rcx,%rax,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm0                    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movss	32(%rcx,%rax,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movss	48(%rcx,%rax,4), %xmm2          # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movlhps	%xmm1, %xmm0                    # xmm0 = xmm0[0],xmm1[0]
	leaq	(,%rdx,4), %rdi
	movaps	%xmm0, (%r8,%rdx,4)
	movss	4(%rcx,%rax,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	20(%rcx,%rax,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm0                    # xmm0 = xmm0[0],xmm1[0],xmm0[1],xmm1[1]
	movss	36(%rcx,%rax,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	movss	52(%rcx,%rax,4), %xmm2          # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	movlhps	%xmm1, %xmm0                    # xmm0 = xmm0[0],xmm1[0]
	orq	$16, %rdi
	movaps	%xmm0, (%r8,%rdi)
	addl	$2, %esi
	addl	$8, %edx
	decq	%r9
	movl	%edx, %eax
	jne	.LBB12_2
.LBB12_3:                               # %for_end_occ.k_h.fused
	xorl	%eax, %eax
	retq
.Lfunc_end12:
	.size	.L__tvm_parallel_lambda.74, .Lfunc_end12-.L__tvm_parallel_lambda.74
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __tvm_parallel_lambda.75
	.type	.L__tvm_parallel_lambda.75,@function
.L__tvm_parallel_lambda.75:             # @__tvm_parallel_lambda.75
.Lfunc_begin13:
	.cfi_startproc
# %bb.0:                                # %parallel_closure_entry
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
	movq	%rdx, %rcx
                                        # kill: def $edi killed $edi def $rdi
	movl	8(%rsi), %esi
	leal	51(%rsi), %eax
	cltd
	idivl	%esi
                                        # kill: def $eax killed $eax def $rax
	leal	1(%rdi), %r8d
	imull	%eax, %r8d
	cmpl	$52, %r8d
	movl	$52, %edx
	cmovgel	%edx, %r8d
	imull	%edi, %eax
	cmpl	$52, %eax
	cmovgel	%edx, %eax
	cmpl	%r8d, %eax
	jge	.LBB13_3
# %bb.1:                                # %for_body_n.c.outer.fused.h.fused.preheader
	movq	(%rcx), %rsi
	movq	8(%rcx), %r9
	movq	16(%rcx), %rcx
	.p2align	4, 0x90
.LBB13_2:                               # %for_body_n.c.outer.fused.h.fused
                                        # =>This Inner Loop Header: Depth=1
	cltq
	imulq	$1321528399, %rax, %rdx         # imm = 0x4EC4EC4F
	movq	%rdx, %rdi
	shrq	$63, %rdi
	sarq	$34, %rdx
	addl	%edi, %edx
	leal	(%rdx,%rdx,2), %edi
	leal	(%rdx,%rdi,4), %edi
	movl	%eax, %r10d
	subl	%edi, %r10d
	movl	%edx, %edi
	shll	$4, %edi
	movslq	%edi, %r11
	movl	%r10d, %edi
	shll	$4, %edi
	subl	%r10d, %edi
	subl	%r10d, %edi
	movslq	%edi, %rdi
	movss	(%rsi,%rdi,4), %xmm6            # xmm6 = mem[0],zero,zero,zero
	movss	4(%rsi,%rdi,4), %xmm0           # xmm0 = mem[0],zero,zero,zero
	movss	8(%rsi,%rdi,4), %xmm12          # xmm12 = mem[0],zero,zero,zero
	movss	12(%rsi,%rdi,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	shufps	$0, %xmm6, %xmm6                # xmm6 = xmm6[0,0,0,0]
	movaps	(%r9,%r11,4), %xmm4
	movaps	16(%r9,%r11,4), %xmm5
	movaps	32(%r9,%r11,4), %xmm2
	movaps	%xmm2, 32(%rsp)                 # 16-byte Spill
	mulps	%xmm4, %xmm6
	xorps	%xmm3, %xmm3
	addps	%xmm3, %xmm6
	shufps	$0, %xmm0, %xmm0                # xmm0 = xmm0[0,0,0,0]
	movaps	%xmm0, %xmm8
	mulps	%xmm4, %xmm8
	addps	%xmm3, %xmm8
	shufps	$0, %xmm12, %xmm12              # xmm12 = xmm12[0,0,0,0]
	movaps	%xmm12, %xmm7
	mulps	%xmm4, %xmm7
	addps	%xmm3, %xmm7
	shufps	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, %xmm9
	mulps	%xmm4, %xmm9
	addps	%xmm3, %xmm9
	movss	16(%rsi,%rdi,4), %xmm11         # xmm11 = mem[0],zero,zero,zero
	shufps	$0, %xmm11, %xmm11              # xmm11 = xmm11[0,0,0,0]
	movaps	%xmm11, %xmm2
	mulps	%xmm4, %xmm2
	addps	%xmm3, %xmm2
	movss	20(%rsi,%rdi,4), %xmm13         # xmm13 = mem[0],zero,zero,zero
	shufps	$0, %xmm13, %xmm13              # xmm13 = xmm13[0,0,0,0]
	movaps	%xmm13, %xmm10
	mulps	%xmm4, %xmm10
	addps	%xmm3, %xmm10
	xorps	%xmm15, %xmm15
	movss	24(%rsi,%rdi,4), %xmm14         # xmm14 = mem[0],zero,zero,zero
	shufps	$0, %xmm14, %xmm14              # xmm14 = xmm14[0,0,0,0]
	movaps	%xmm14, -128(%rsp)              # 16-byte Spill
	mulps	%xmm4, %xmm14
	addps	%xmm15, %xmm14
	mulps	%xmm5, %xmm0
	addps	%xmm6, %xmm0
	movss	28(%rsi,%rdi,4), %xmm6          # xmm6 = mem[0],zero,zero,zero
	shufps	$0, %xmm6, %xmm6                # xmm6 = xmm6[0,0,0,0]
	mulps	%xmm5, %xmm12
	addps	%xmm8, %xmm12
	movaps	%xmm6, %xmm3
	mulps	%xmm4, %xmm3
	xorps	%xmm8, %xmm8
	addps	%xmm8, %xmm3
	mulps	%xmm5, %xmm1
	addps	%xmm7, %xmm1
	movaps	%xmm1, %xmm15
	movss	32(%rsi,%rdi,4), %xmm7          # xmm7 = mem[0],zero,zero,zero
	shufps	$0, %xmm7, %xmm7                # xmm7 = xmm7[0,0,0,0]
	mulps	%xmm5, %xmm11
	addps	%xmm9, %xmm11
	movaps	%xmm7, %xmm9
	mulps	%xmm4, %xmm9
	addps	%xmm8, %xmm9
	mulps	%xmm5, %xmm13
	addps	%xmm2, %xmm13
	movss	36(%rsi,%rdi,4), %xmm2          # xmm2 = mem[0],zero,zero,zero
	shufps	$0, %xmm2, %xmm2                # xmm2 = xmm2[0,0,0,0]
	movaps	-128(%rsp), %xmm1               # 16-byte Reload
	mulps	%xmm5, %xmm1
	addps	%xmm10, %xmm1
	movaps	%xmm1, -128(%rsp)               # 16-byte Spill
	movaps	%xmm2, %xmm10
	mulps	%xmm4, %xmm10
	addps	%xmm8, %xmm10
	xorps	%xmm1, %xmm1
	mulps	%xmm5, %xmm6
	addps	%xmm14, %xmm6
	movss	40(%rsi,%rdi,4), %xmm8          # xmm8 = mem[0],zero,zero,zero
	shufps	$0, %xmm8, %xmm8                # xmm8 = xmm8[0,0,0,0]
	mulps	%xmm5, %xmm7
	addps	%xmm3, %xmm7
	movaps	%xmm8, %xmm14
	mulps	%xmm4, %xmm14
	addps	%xmm1, %xmm14
	mulps	%xmm5, %xmm2
	addps	%xmm9, %xmm2
	movss	44(%rsi,%rdi,4), %xmm9          # xmm9 = mem[0],zero,zero,zero
	shufps	$0, %xmm9, %xmm9                # xmm9 = xmm9[0,0,0,0]
	mulps	%xmm5, %xmm8
	addps	%xmm10, %xmm8
	movaps	%xmm9, %xmm3
	mulps	%xmm4, %xmm3
	addps	%xmm1, %xmm3
	mulps	%xmm5, %xmm9
	addps	%xmm14, %xmm9
	movss	48(%rsi,%rdi,4), %xmm10         # xmm10 = mem[0],zero,zero,zero
	shufps	$0, %xmm10, %xmm10              # xmm10 = xmm10[0,0,0,0]
	mulps	%xmm10, %xmm4
	addps	%xmm1, %xmm4
	mulps	%xmm5, %xmm10
	addps	%xmm3, %xmm10
	movss	52(%rsi,%rdi,4), %xmm14         # xmm14 = mem[0],zero,zero,zero
	shufps	$0, %xmm14, %xmm14              # xmm14 = xmm14[0,0,0,0]
	mulps	%xmm5, %xmm14
	addps	%xmm4, %xmm14
	movss	56(%rsi,%rdi,4), %xmm3          # xmm3 = mem[0],zero,zero,zero
	shufps	$0, %xmm3, %xmm3                # xmm3 = xmm3[0,0,0,0]
	movaps	32(%rsp), %xmm4                 # 16-byte Reload
	mulps	%xmm4, %xmm3
	addps	%xmm0, %xmm3
	movss	60(%rsi,%rdi,4), %xmm1          # xmm1 = mem[0],zero,zero,zero
	shufps	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, %xmm0
	mulps	%xmm4, %xmm0
	addps	%xmm12, %xmm0
	movaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	movss	64(%rsi,%rdi,4), %xmm5          # xmm5 = mem[0],zero,zero,zero
	shufps	$0, %xmm5, %xmm5                # xmm5 = xmm5[0,0,0,0]
	movaps	%xmm5, %xmm12
	mulps	%xmm4, %xmm12
	movaps	%xmm4, %xmm0
	addps	%xmm15, %xmm12
	movaps	%xmm12, (%rsp)                  # 16-byte Spill
	movss	68(%rsi,%rdi,4), %xmm12         # xmm12 = mem[0],zero,zero,zero
	shufps	$0, %xmm12, %xmm12              # xmm12 = xmm12[0,0,0,0]
	movaps	%xmm12, %xmm4
	mulps	%xmm0, %xmm4
	addps	%xmm11, %xmm4
	movaps	%xmm4, -16(%rsp)                # 16-byte Spill
	movss	72(%rsi,%rdi,4), %xmm11         # xmm11 = mem[0],zero,zero,zero
	shufps	$0, %xmm11, %xmm11              # xmm11 = xmm11[0,0,0,0]
	movaps	%xmm11, %xmm4
	mulps	%xmm0, %xmm4
	addps	%xmm13, %xmm4
	movaps	%xmm4, -32(%rsp)                # 16-byte Spill
	movss	76(%rsi,%rdi,4), %xmm15         # xmm15 = mem[0],zero,zero,zero
	shufps	$0, %xmm15, %xmm15              # xmm15 = xmm15[0,0,0,0]
	movaps	%xmm15, %xmm4
	mulps	%xmm0, %xmm4
	addps	-128(%rsp), %xmm4               # 16-byte Folded Reload
	movaps	%xmm4, -48(%rsp)                # 16-byte Spill
	movss	80(%rsi,%rdi,4), %xmm4          # xmm4 = mem[0],zero,zero,zero
	shufps	$0, %xmm4, %xmm4                # xmm4 = xmm4[0,0,0,0]
	movaps	%xmm4, -112(%rsp)               # 16-byte Spill
	mulps	%xmm0, %xmm4
	addps	%xmm6, %xmm4
	movss	84(%rsi,%rdi,4), %xmm6          # xmm6 = mem[0],zero,zero,zero
	shufps	$0, %xmm6, %xmm6                # xmm6 = xmm6[0,0,0,0]
	movaps	%xmm6, -96(%rsp)                # 16-byte Spill
	mulps	%xmm0, %xmm6
	addps	%xmm7, %xmm6
	movss	88(%rsi,%rdi,4), %xmm7          # xmm7 = mem[0],zero,zero,zero
	shufps	$0, %xmm7, %xmm7                # xmm7 = xmm7[0,0,0,0]
	movaps	%xmm7, -128(%rsp)               # 16-byte Spill
	mulps	%xmm0, %xmm7
	addps	%xmm2, %xmm7
	movss	92(%rsi,%rdi,4), %xmm2          # xmm2 = mem[0],zero,zero,zero
	shufps	$0, %xmm2, %xmm2                # xmm2 = xmm2[0,0,0,0]
	movaps	%xmm2, -64(%rsp)                # 16-byte Spill
	mulps	%xmm0, %xmm2
	addps	%xmm8, %xmm2
	movss	96(%rsi,%rdi,4), %xmm8          # xmm8 = mem[0],zero,zero,zero
	shufps	$0, %xmm8, %xmm8                # xmm8 = xmm8[0,0,0,0]
	movaps	%xmm8, -80(%rsp)                # 16-byte Spill
	mulps	%xmm0, %xmm8
	addps	%xmm9, %xmm8
	movss	100(%rsi,%rdi,4), %xmm13        # xmm13 = mem[0],zero,zero,zero
	shufps	$0, %xmm13, %xmm13              # xmm13 = xmm13[0,0,0,0]
	movaps	%xmm13, %xmm9
	mulps	%xmm0, %xmm9
	addps	%xmm10, %xmm9
	movss	104(%rsi,%rdi,4), %xmm10        # xmm10 = mem[0],zero,zero,zero
	shufps	$0, %xmm10, %xmm10              # xmm10 = xmm10[0,0,0,0]
	mulps	%xmm10, %xmm0
	addps	%xmm14, %xmm0
	movaps	48(%r9,%r11,4), %xmm14
	mulps	%xmm14, %xmm1
	addps	%xmm3, %xmm1
	mulps	%xmm14, %xmm5
	addps	16(%rsp), %xmm5                 # 16-byte Folded Reload
	mulps	%xmm14, %xmm12
	addps	(%rsp), %xmm12                  # 16-byte Folded Reload
	mulps	%xmm14, %xmm11
	addps	-16(%rsp), %xmm11               # 16-byte Folded Reload
	mulps	%xmm14, %xmm15
	addps	-32(%rsp), %xmm15               # 16-byte Folded Reload
	movaps	-112(%rsp), %xmm3               # 16-byte Reload
	mulps	%xmm14, %xmm3
	addps	-48(%rsp), %xmm3                # 16-byte Folded Reload
	movaps	%xmm3, -112(%rsp)               # 16-byte Spill
	movaps	-96(%rsp), %xmm3                # 16-byte Reload
	mulps	%xmm14, %xmm3
	addps	%xmm4, %xmm3
	movaps	%xmm3, -96(%rsp)                # 16-byte Spill
	movaps	-128(%rsp), %xmm3               # 16-byte Reload
	mulps	%xmm14, %xmm3
	addps	%xmm6, %xmm3
	movaps	%xmm3, -128(%rsp)               # 16-byte Spill
	movaps	-64(%rsp), %xmm6                # 16-byte Reload
	mulps	%xmm14, %xmm6
	addps	%xmm7, %xmm6
	movaps	-80(%rsp), %xmm7                # 16-byte Reload
	mulps	%xmm14, %xmm7
	addps	%xmm2, %xmm7
	mulps	%xmm14, %xmm13
	addps	%xmm8, %xmm13
	mulps	%xmm14, %xmm10
	addps	%xmm9, %xmm10
	movss	108(%rsi,%rdi,4), %xmm2         # xmm2 = mem[0],zero,zero,zero
	shufps	$0, %xmm2, %xmm2                # xmm2 = xmm2[0,0,0,0]
	mulps	%xmm14, %xmm2
	imull	$676, %edx, %edx                # imm = 0x2A4
	addps	%xmm0, %xmm2
	leal	(%r10,%r10,2), %edi
	leal	(%r10,%rdi,4), %edi
	addl	%edi, %edx
	movslq	%edx, %rdx
	movss	%xmm1, (%rcx,%rdx,4)
	movaps	%xmm1, %xmm3
	shufps	$85, %xmm1, %xmm3               # xmm3 = xmm3[1,1],xmm1[1,1]
	movss	%xmm3, 676(%rcx,%rdx,4)
	movaps	%xmm1, %xmm3
	unpckhpd	%xmm1, %xmm3                    # xmm3 = xmm3[1],xmm1[1]
	movss	%xmm3, 1352(%rcx,%rdx,4)
	shufps	$255, %xmm1, %xmm1              # xmm1 = xmm1[3,3,3,3]
	movss	%xmm1, 2028(%rcx,%rdx,4)
	movss	%xmm5, 4(%rcx,%rdx,4)
	movaps	%xmm5, %xmm0
	shufps	$85, %xmm5, %xmm0               # xmm0 = xmm0[1,1],xmm5[1,1]
	movss	%xmm0, 680(%rcx,%rdx,4)
	movaps	%xmm5, %xmm0
	unpckhpd	%xmm5, %xmm0                    # xmm0 = xmm0[1],xmm5[1]
	movss	%xmm0, 1356(%rcx,%rdx,4)
	shufps	$255, %xmm5, %xmm5              # xmm5 = xmm5[3,3,3,3]
	movss	%xmm5, 2032(%rcx,%rdx,4)
	movss	%xmm12, 8(%rcx,%rdx,4)
	movaps	%xmm12, %xmm0
	shufps	$85, %xmm12, %xmm0              # xmm0 = xmm0[1,1],xmm12[1,1]
	movss	%xmm0, 684(%rcx,%rdx,4)
	movaps	%xmm12, %xmm0
	unpckhpd	%xmm12, %xmm0                   # xmm0 = xmm0[1],xmm12[1]
	movss	%xmm0, 1360(%rcx,%rdx,4)
	shufps	$255, %xmm12, %xmm12            # xmm12 = xmm12[3,3,3,3]
	movss	%xmm12, 2036(%rcx,%rdx,4)
	movss	%xmm11, 12(%rcx,%rdx,4)
	movaps	%xmm11, %xmm0
	shufps	$85, %xmm11, %xmm0              # xmm0 = xmm0[1,1],xmm11[1,1]
	movss	%xmm0, 688(%rcx,%rdx,4)
	movaps	%xmm11, %xmm0
	unpckhpd	%xmm11, %xmm0                   # xmm0 = xmm0[1],xmm11[1]
	movss	%xmm0, 1364(%rcx,%rdx,4)
	shufps	$255, %xmm11, %xmm11            # xmm11 = xmm11[3,3,3,3]
	movss	%xmm11, 2040(%rcx,%rdx,4)
	movss	%xmm15, 16(%rcx,%rdx,4)
	movaps	%xmm15, %xmm0
	shufps	$85, %xmm15, %xmm0              # xmm0 = xmm0[1,1],xmm15[1,1]
	movss	%xmm0, 692(%rcx,%rdx,4)
	movaps	%xmm15, %xmm0
	unpckhpd	%xmm15, %xmm0                   # xmm0 = xmm0[1],xmm15[1]
	movss	%xmm0, 1368(%rcx,%rdx,4)
	shufps	$255, %xmm15, %xmm15            # xmm15 = xmm15[3,3,3,3]
	movss	%xmm15, 2044(%rcx,%rdx,4)
	movaps	-112(%rsp), %xmm1               # 16-byte Reload
	movss	%xmm1, 20(%rcx,%rdx,4)
	movaps	%xmm1, %xmm0
	shufps	$85, %xmm1, %xmm0               # xmm0 = xmm0[1,1],xmm1[1,1]
	movss	%xmm0, 696(%rcx,%rdx,4)
	movaps	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	movss	%xmm0, 1372(%rcx,%rdx,4)
	shufps	$255, %xmm1, %xmm1              # xmm1 = xmm1[3,3,3,3]
	movss	%xmm1, 2048(%rcx,%rdx,4)
	movaps	-96(%rsp), %xmm1                # 16-byte Reload
	movss	%xmm1, 24(%rcx,%rdx,4)
	movaps	%xmm1, %xmm0
	shufps	$85, %xmm1, %xmm0               # xmm0 = xmm0[1,1],xmm1[1,1]
	movss	%xmm0, 700(%rcx,%rdx,4)
	movaps	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	movss	%xmm0, 1376(%rcx,%rdx,4)
	shufps	$255, %xmm1, %xmm1              # xmm1 = xmm1[3,3,3,3]
	movss	%xmm1, 2052(%rcx,%rdx,4)
	movaps	-128(%rsp), %xmm1               # 16-byte Reload
	movss	%xmm1, 28(%rcx,%rdx,4)
	movaps	%xmm1, %xmm0
	shufps	$85, %xmm1, %xmm0               # xmm0 = xmm0[1,1],xmm1[1,1]
	movss	%xmm0, 704(%rcx,%rdx,4)
	movaps	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0                    # xmm0 = xmm0[1],xmm1[1]
	movss	%xmm0, 1380(%rcx,%rdx,4)
	shufps	$255, %xmm1, %xmm1              # xmm1 = xmm1[3,3,3,3]
	movss	%xmm1, 2056(%rcx,%rdx,4)
	movss	%xmm6, 32(%rcx,%rdx,4)
	movaps	%xmm6, %xmm0
	shufps	$85, %xmm6, %xmm0               # xmm0 = xmm0[1,1],xmm6[1,1]
	movss	%xmm0, 708(%rcx,%rdx,4)
	movaps	%xmm6, %xmm0
	unpckhpd	%xmm6, %xmm0                    # xmm0 = xmm0[1],xmm6[1]
	movss	%xmm0, 1384(%rcx,%rdx,4)
	shufps	$255, %xmm6, %xmm6              # xmm6 = xmm6[3,3,3,3]
	movss	%xmm6, 2060(%rcx,%rdx,4)
	movaps	%xmm7, %xmm1
	movss	%xmm7, 36(%rcx,%rdx,4)
	movaps	%xmm7, %xmm0
	shufps	$85, %xmm7, %xmm0               # xmm0 = xmm0[1,1],xmm7[1,1]
	movss	%xmm0, 712(%rcx,%rdx,4)
	movaps	%xmm7, %xmm0
	unpckhpd	%xmm7, %xmm0                    # xmm0 = xmm0[1],xmm7[1]
	movss	%xmm0, 1388(%rcx,%rdx,4)
	shufps	$255, %xmm7, %xmm1              # xmm1 = xmm1[3,3],xmm7[3,3]
	movss	%xmm1, 2064(%rcx,%rdx,4)
	movss	%xmm13, 40(%rcx,%rdx,4)
	movaps	%xmm13, %xmm0
	shufps	$85, %xmm13, %xmm0              # xmm0 = xmm0[1,1],xmm13[1,1]
	movss	%xmm0, 716(%rcx,%rdx,4)
	movaps	%xmm13, %xmm0
	unpckhpd	%xmm13, %xmm0                   # xmm0 = xmm0[1],xmm13[1]
	movss	%xmm0, 1392(%rcx,%rdx,4)
	shufps	$255, %xmm13, %xmm13            # xmm13 = xmm13[3,3,3,3]
	movss	%xmm13, 2068(%rcx,%rdx,4)
	movss	%xmm10, 44(%rcx,%rdx,4)
	movaps	%xmm10, %xmm0
	shufps	$85, %xmm10, %xmm0              # xmm0 = xmm0[1,1],xmm10[1,1]
	movss	%xmm0, 720(%rcx,%rdx,4)
	movaps	%xmm10, %xmm0
	unpckhpd	%xmm10, %xmm0                   # xmm0 = xmm0[1],xmm10[1]
	movss	%xmm0, 1396(%rcx,%rdx,4)
	shufps	$255, %xmm10, %xmm10            # xmm10 = xmm10[3,3,3,3]
	movss	%xmm10, 2072(%rcx,%rdx,4)
	movss	%xmm2, 48(%rcx,%rdx,4)
	movaps	%xmm2, %xmm0
	shufps	$85, %xmm2, %xmm0               # xmm0 = xmm0[1,1],xmm2[1,1]
	movss	%xmm0, 724(%rcx,%rdx,4)
	movaps	%xmm2, %xmm0
	unpckhpd	%xmm2, %xmm0                    # xmm0 = xmm0[1],xmm2[1]
	movss	%xmm0, 1400(%rcx,%rdx,4)
	shufps	$255, %xmm2, %xmm2              # xmm2 = xmm2[3,3,3,3]
	movss	%xmm2, 2076(%rcx,%rdx,4)
	incl	%eax
	cmpl	%eax, %r8d
	jne	.LBB13_2
.LBB13_3:                               # %for_end_n.c.outer.fused.h.fused
	xorl	%eax, %eax
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end13:
	.size	.L__tvm_parallel_lambda.75, .Lfunc_end13-.L__tvm_parallel_lambda.75
	.cfi_endproc
                                        # -- End function
	.globl	tvmgen_default_fused_nn_dense   # -- Begin function tvmgen_default_fused_nn_dense
	.p2align	4, 0x90
	.type	tvmgen_default_fused_nn_dense,@function
tvmgen_default_fused_nn_dense:          # @tvmgen_default_fused_nn_dense
.Lfunc_begin14:
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	cmpl	$3, %edx
	jne	.LBB14_1
# %bb.3:                                # %assert_end
	movl	(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB14_5
# %bb.4:                                # %assert_end
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB14_5
# %bb.6:                                # %assert_end3
	movl	4(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB14_8
# %bb.7:                                # %assert_end3
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB14_8
# %bb.9:                                # %assert_end5
	movl	8(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB14_11
# %bb.10:                               # %assert_end5
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB14_11
# %bb.12:                               # %assert_end7
	movq	(%rdi), %rbx
	cmpl	$2, 16(%rbx)
	jne	.LBB14_13
# %bb.14:                               # %assert_end11
	cmpw	$1, 22(%rbx)
	jne	.LBB14_17
# %bb.15:                               # %assert_end11
	cmpb	$32, 21(%rbx)
	jne	.LBB14_17
# %bb.16:                               # %assert_end11
	cmpb	$2, 20(%rbx)
	jne	.LBB14_17
# %bb.18:                               # %assert_end13
	movq	24(%rbx), %rax
	cmpl	$1, (%rax)
	jne	.LBB14_19
# %bb.20:                               # %assert_end15
	cmpl	$2704, 8(%rax)                  # imm = 0xA90
	jne	.LBB14_21
# %bb.22:                               # %assert_end17
	movq	8(%rdi), %rax
	movq	16(%rdi), %r10
	movq	(%rbx), %rsi
	movq	32(%rbx), %r15
	movl	12(%rbx), %ecx
	movq	(%rax), %rdi
	movq	24(%rax), %r14
	movq	32(%rax), %r11
	movq	(%r10), %rdx
	movq	24(%r10), %r9
	movq	32(%r10), %r8
	testq	%r15, %r15
	je	.LBB14_25
# %bb.23:                               # %if_then
	cmpl	$2704, (%r15)                   # imm = 0xA90
	jne	.LBB14_68
# %bb.24:                               # %if_then
	cmpl	$1, 8(%r15)
	jne	.LBB14_68
.LBB14_25:                              # %if_end
	cmpq	$0, 40(%rbx)
	jne	.LBB14_26
# %bb.27:                               # %assert_end21
	cmpl	$1, 8(%rbx)
	jne	.LBB14_28
# %bb.29:                               # %assert_end23
	cmpl	$2, 16(%rax)
	jne	.LBB14_30
# %bb.31:                               # %assert_end27
	cmpw	$1, 22(%rax)
	jne	.LBB14_34
# %bb.32:                               # %assert_end27
	cmpb	$32, 21(%rax)
	jne	.LBB14_34
# %bb.33:                               # %assert_end27
	cmpb	$2, 20(%rax)
	jne	.LBB14_34
# %bb.35:                               # %assert_end29
	cmpl	$32, (%r14)
	jne	.LBB14_36
# %bb.37:                               # %assert_end31
	cmpl	$2704, 8(%r14)                  # imm = 0xA90
	jne	.LBB14_38
# %bb.39:                               # %assert_end33
	testq	%r11, %r11
	je	.LBB14_42
# %bb.40:                               # %if_then34
	cmpl	$2704, (%r11)                   # imm = 0xA90
	jne	.LBB14_69
# %bb.41:                               # %if_then34
	cmpl	$1, 8(%r11)
	jne	.LBB14_69
.LBB14_42:                              # %if_end35
	cmpq	$0, 40(%rax)
	jne	.LBB14_43
# %bb.44:                               # %assert_end39
	cmpl	$1, 8(%rax)
	jne	.LBB14_45
# %bb.46:                               # %assert_end41
	cmpl	12(%rax), %ecx
	jne	.LBB14_47
# %bb.48:                               # %assert_end43
	cmpl	$2, 16(%r10)
	jne	.LBB14_49
# %bb.50:                               # %assert_end47
	cmpw	$1, 22(%r10)
	jne	.LBB14_53
# %bb.51:                               # %assert_end47
	cmpb	$32, 21(%r10)
	jne	.LBB14_53
# %bb.52:                               # %assert_end47
	cmpb	$2, 20(%r10)
	jne	.LBB14_53
# %bb.54:                               # %assert_end49
	cmpl	$1, (%r9)
	jne	.LBB14_55
# %bb.56:                               # %assert_end51
	cmpl	$32, 8(%r9)
	jne	.LBB14_57
# %bb.58:                               # %assert_end53
	testq	%r8, %r8
	je	.LBB14_61
# %bb.59:                               # %if_then54
	cmpl	$32, (%r8)
	jne	.LBB14_70
# %bb.60:                               # %if_then54
	cmpl	$1, 8(%r8)
	jne	.LBB14_70
.LBB14_61:                              # %if_end55
	cmpq	$0, 40(%r10)
	jne	.LBB14_62
# %bb.63:                               # %assert_end59
	cmpl	$1, 8(%r10)
	jne	.LBB14_64
# %bb.65:                               # %assert_end61
	cmpl	12(%r10), %ecx
	jne	.LBB14_66
# %bb.67:                               # %assert_end63
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	tvmgen_default_fused_nn_dense_compute_ # TAILCALL
.LBB14_5:                               # %assert_fail2
	.cfi_def_cfa_offset 32
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.77, %edi
	jmp	.LBB14_2
.LBB14_8:                               # %assert_fail4
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.78, %edi
	jmp	.LBB14_2
.LBB14_11:                              # %assert_fail6
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.79, %edi
.LBB14_2:                               # %common.ret
	callq	*(%rax)
	movl	$-1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB14_1:                               # %assert_fail
	.cfi_def_cfa_offset 32
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.76, %edi
	jmp	.LBB14_2
.LBB14_13:                              # %assert_fail8
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.44, %edi
	jmp	.LBB14_2
.LBB14_17:                              # %assert_fail12
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.4, %edi
	jmp	.LBB14_2
.LBB14_19:                              # %assert_fail14
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.5, %edi
	jmp	.LBB14_2
.LBB14_21:                              # %assert_fail16
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.80, %edi
	jmp	.LBB14_2
.LBB14_68:                              # %assert_fail18
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.81, %edi
	jmp	.LBB14_2
.LBB14_26:                              # %assert_fail20
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.10, %edi
	jmp	.LBB14_2
.LBB14_28:                              # %assert_fail22
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.11, %edi
	jmp	.LBB14_2
.LBB14_30:                              # %assert_fail24
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.12, %edi
	jmp	.LBB14_2
.LBB14_34:                              # %assert_fail28
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.13, %edi
	jmp	.LBB14_2
.LBB14_36:                              # %assert_fail30
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.47, %edi
	jmp	.LBB14_2
.LBB14_38:                              # %assert_fail32
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.15, %edi
	jmp	.LBB14_2
.LBB14_69:                              # %assert_fail36
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.16, %edi
	jmp	.LBB14_2
.LBB14_43:                              # %assert_fail38
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.17, %edi
	jmp	.LBB14_2
.LBB14_45:                              # %assert_fail40
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.18, %edi
	jmp	.LBB14_2
.LBB14_47:                              # %assert_fail42
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.19, %edi
	jmp	.LBB14_2
.LBB14_49:                              # %assert_fail44
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.48, %edi
	jmp	.LBB14_2
.LBB14_53:                              # %assert_fail48
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.31, %edi
	jmp	.LBB14_2
.LBB14_55:                              # %assert_fail50
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.32, %edi
	jmp	.LBB14_2
.LBB14_57:                              # %assert_fail52
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.49, %edi
	jmp	.LBB14_2
.LBB14_70:                              # %assert_fail56
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.50, %edi
	jmp	.LBB14_2
.LBB14_62:                              # %assert_fail58
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.37, %edi
	jmp	.LBB14_2
.LBB14_64:                              # %assert_fail60
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.38, %edi
	jmp	.LBB14_2
.LBB14_66:                              # %assert_fail62
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.39, %edi
	jmp	.LBB14_2
.Lfunc_end14:
	.size	tvmgen_default_fused_nn_dense, .Lfunc_end14-tvmgen_default_fused_nn_dense
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function tvmgen_default_fused_nn_dense_compute_
	.type	tvmgen_default_fused_nn_dense_compute_,@function
tvmgen_default_fused_nn_dense_compute_: # @tvmgen_default_fused_nn_dense_compute_
.Lfunc_begin15:
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	__TVMBackendAllocWorkspace@GOTPCREL(%rip), %rax
	movl	$346112, %edx                   # imm = 0x54800
	movl	$1, %edi
	movl	%ecx, %esi
	movl	$2, %ecx
	movl	$32, %r8d
	callq	*(%rax)
	movq	%rax, %rbx
	movl	$-1, %eax
	testq	%rbx, %rbx
	jne	.LBB15_1
.LBB15_11:                              # %common.ret
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB15_1:                               # %for_begin_z.preheader
	.cfi_def_cfa %rbp, 16
	movq	$-10816, %rax                   # imm = 0xD5C0
	.p2align	4, 0x90
.LBB15_2:                               # %vector.body
                                        # =>This Inner Loop Header: Depth=1
	movaps	10816(%r13,%rax), %xmm9
	movaps	21632(%r13,%rax), %xmm0
	movaps	32448(%r13,%rax), %xmm5
	movaps	43264(%r13,%rax), %xmm11
	movaps	54080(%r13,%rax), %xmm8
	movaps	64896(%r13,%rax), %xmm2
	movaps	75712(%r13,%rax), %xmm4
	movaps	86528(%r13,%rax), %xmm10
	movaps	%xmm11, %xmm3
	movlhps	%xmm5, %xmm3                    # xmm3 = xmm3[0],xmm5[0]
	movaps	%xmm9, %xmm12
	unpcklps	%xmm0, %xmm12                   # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1]
	shufps	$36, %xmm3, %xmm12              # xmm12 = xmm12[0,1],xmm3[2,0]
	movaps	%xmm10, %xmm3
	movlhps	%xmm4, %xmm3                    # xmm3 = xmm3[0],xmm4[0]
	movaps	%xmm8, %xmm13
	unpcklps	%xmm2, %xmm13                   # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1]
	shufps	$36, %xmm3, %xmm13              # xmm13 = xmm13[0,1],xmm3[2,0]
	movaps	%xmm5, %xmm6
	unpcklps	%xmm11, %xmm6                   # xmm6 = xmm6[0],xmm11[0],xmm6[1],xmm11[1]
	movaps	%xmm0, %xmm14
	shufps	$17, %xmm9, %xmm14              # xmm14 = xmm14[1,0],xmm9[1,0]
	shufps	$226, %xmm6, %xmm14             # xmm14 = xmm14[2,0],xmm6[2,3]
	movaps	%xmm4, %xmm6
	unpcklps	%xmm10, %xmm6                   # xmm6 = xmm6[0],xmm10[0],xmm6[1],xmm10[1]
	movaps	%xmm2, %xmm1
	shufps	$17, %xmm8, %xmm1               # xmm1 = xmm1[1,0],xmm8[1,0]
	shufps	$226, %xmm6, %xmm1              # xmm1 = xmm1[2,0],xmm6[2,3]
	movaps	%xmm11, %xmm6
	unpckhpd	%xmm5, %xmm6                    # xmm6 = xmm6[1],xmm5[1]
	movaps	%xmm9, %xmm7
	unpckhps	%xmm0, %xmm7                    # xmm7 = xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	shufps	$36, %xmm6, %xmm7               # xmm7 = xmm7[0,1],xmm6[2,0]
	movaps	%xmm10, %xmm6
	unpckhpd	%xmm4, %xmm6                    # xmm6 = xmm6[1],xmm4[1]
	movaps	%xmm8, %xmm3
	unpckhps	%xmm2, %xmm3                    # xmm3 = xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	shufps	$36, %xmm6, %xmm3               # xmm3 = xmm3[0,1],xmm6[2,0]
	unpckhps	%xmm11, %xmm5                   # xmm5 = xmm5[2],xmm11[2],xmm5[3],xmm11[3]
	shufps	$51, %xmm9, %xmm0               # xmm0 = xmm0[3,0],xmm9[3,0]
	shufps	$226, %xmm5, %xmm0              # xmm0 = xmm0[2,0],xmm5[2,3]
	unpckhps	%xmm10, %xmm4                   # xmm4 = xmm4[2],xmm10[2],xmm4[3],xmm10[3]
	shufps	$51, %xmm8, %xmm2               # xmm2 = xmm2[3,0],xmm8[3,0]
	shufps	$226, %xmm4, %xmm2              # xmm2 = xmm2[2,0],xmm4[2,3]
	movaps	%xmm2, 86640(%rbx,%rax,8)
	movaps	%xmm0, 86624(%rbx,%rax,8)
	movaps	%xmm3, 86608(%rbx,%rax,8)
	movaps	%xmm7, 86592(%rbx,%rax,8)
	movaps	%xmm1, 86576(%rbx,%rax,8)
	movaps	%xmm14, 86560(%rbx,%rax,8)
	movaps	%xmm13, 86544(%rbx,%rax,8)
	movaps	%xmm12, 86528(%rbx,%rax,8)
	addq	$16, %rax
	jne	.LBB15_2
# %bb.3:                                # %vector.body23.preheader
	movq	$-10816, %rax                   # imm = 0xD5C0
	.p2align	4, 0x90
.LBB15_4:                               # %vector.body23
                                        # =>This Inner Loop Header: Depth=1
	movaps	97344(%r13,%rax), %xmm9
	movaps	108160(%r13,%rax), %xmm0
	movaps	118976(%r13,%rax), %xmm5
	movaps	129792(%r13,%rax), %xmm11
	movaps	140608(%r13,%rax), %xmm8
	movaps	151424(%r13,%rax), %xmm2
	movaps	162240(%r13,%rax), %xmm4
	movaps	173056(%r13,%rax), %xmm10
	movaps	%xmm11, %xmm3
	movlhps	%xmm5, %xmm3                    # xmm3 = xmm3[0],xmm5[0]
	movaps	%xmm9, %xmm12
	unpcklps	%xmm0, %xmm12                   # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1]
	shufps	$36, %xmm3, %xmm12              # xmm12 = xmm12[0,1],xmm3[2,0]
	movaps	%xmm10, %xmm3
	movlhps	%xmm4, %xmm3                    # xmm3 = xmm3[0],xmm4[0]
	movaps	%xmm8, %xmm13
	unpcklps	%xmm2, %xmm13                   # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1]
	shufps	$36, %xmm3, %xmm13              # xmm13 = xmm13[0,1],xmm3[2,0]
	movaps	%xmm5, %xmm6
	unpcklps	%xmm11, %xmm6                   # xmm6 = xmm6[0],xmm11[0],xmm6[1],xmm11[1]
	movaps	%xmm0, %xmm14
	shufps	$17, %xmm9, %xmm14              # xmm14 = xmm14[1,0],xmm9[1,0]
	shufps	$226, %xmm6, %xmm14             # xmm14 = xmm14[2,0],xmm6[2,3]
	movaps	%xmm4, %xmm6
	unpcklps	%xmm10, %xmm6                   # xmm6 = xmm6[0],xmm10[0],xmm6[1],xmm10[1]
	movaps	%xmm2, %xmm1
	shufps	$17, %xmm8, %xmm1               # xmm1 = xmm1[1,0],xmm8[1,0]
	shufps	$226, %xmm6, %xmm1              # xmm1 = xmm1[2,0],xmm6[2,3]
	movaps	%xmm11, %xmm6
	unpckhpd	%xmm5, %xmm6                    # xmm6 = xmm6[1],xmm5[1]
	movaps	%xmm9, %xmm7
	unpckhps	%xmm0, %xmm7                    # xmm7 = xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	shufps	$36, %xmm6, %xmm7               # xmm7 = xmm7[0,1],xmm6[2,0]
	movaps	%xmm10, %xmm6
	unpckhpd	%xmm4, %xmm6                    # xmm6 = xmm6[1],xmm4[1]
	movaps	%xmm8, %xmm3
	unpckhps	%xmm2, %xmm3                    # xmm3 = xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	shufps	$36, %xmm6, %xmm3               # xmm3 = xmm3[0,1],xmm6[2,0]
	unpckhps	%xmm11, %xmm5                   # xmm5 = xmm5[2],xmm11[2],xmm5[3],xmm11[3]
	shufps	$51, %xmm9, %xmm0               # xmm0 = xmm0[3,0],xmm9[3,0]
	shufps	$226, %xmm5, %xmm0              # xmm0 = xmm0[2,0],xmm5[2,3]
	unpckhps	%xmm10, %xmm4                   # xmm4 = xmm4[2],xmm10[2],xmm4[3],xmm10[3]
	shufps	$51, %xmm8, %xmm2               # xmm2 = xmm2[3,0],xmm8[3,0]
	shufps	$226, %xmm4, %xmm2              # xmm2 = xmm2[2,0],xmm4[2,3]
	movaps	%xmm2, 173168(%rbx,%rax,8)
	movaps	%xmm0, 173152(%rbx,%rax,8)
	movaps	%xmm3, 173136(%rbx,%rax,8)
	movaps	%xmm7, 173120(%rbx,%rax,8)
	movaps	%xmm1, 173104(%rbx,%rax,8)
	movaps	%xmm14, 173088(%rbx,%rax,8)
	movaps	%xmm13, 173072(%rbx,%rax,8)
	movaps	%xmm12, 173056(%rbx,%rax,8)
	addq	$16, %rax
	jne	.LBB15_4
# %bb.5:                                # %vector.body40.preheader
	movq	$-10816, %rax                   # imm = 0xD5C0
	.p2align	4, 0x90
.LBB15_6:                               # %vector.body40
                                        # =>This Inner Loop Header: Depth=1
	movaps	183872(%r13,%rax), %xmm9
	movaps	194688(%r13,%rax), %xmm0
	movaps	205504(%r13,%rax), %xmm5
	movaps	216320(%r13,%rax), %xmm11
	movaps	227136(%r13,%rax), %xmm8
	movaps	237952(%r13,%rax), %xmm2
	movaps	248768(%r13,%rax), %xmm4
	movaps	259584(%r13,%rax), %xmm10
	movaps	%xmm11, %xmm3
	movlhps	%xmm5, %xmm3                    # xmm3 = xmm3[0],xmm5[0]
	movaps	%xmm9, %xmm12
	unpcklps	%xmm0, %xmm12                   # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1]
	shufps	$36, %xmm3, %xmm12              # xmm12 = xmm12[0,1],xmm3[2,0]
	movaps	%xmm10, %xmm3
	movlhps	%xmm4, %xmm3                    # xmm3 = xmm3[0],xmm4[0]
	movaps	%xmm8, %xmm13
	unpcklps	%xmm2, %xmm13                   # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1]
	shufps	$36, %xmm3, %xmm13              # xmm13 = xmm13[0,1],xmm3[2,0]
	movaps	%xmm5, %xmm6
	unpcklps	%xmm11, %xmm6                   # xmm6 = xmm6[0],xmm11[0],xmm6[1],xmm11[1]
	movaps	%xmm0, %xmm14
	shufps	$17, %xmm9, %xmm14              # xmm14 = xmm14[1,0],xmm9[1,0]
	shufps	$226, %xmm6, %xmm14             # xmm14 = xmm14[2,0],xmm6[2,3]
	movaps	%xmm4, %xmm6
	unpcklps	%xmm10, %xmm6                   # xmm6 = xmm6[0],xmm10[0],xmm6[1],xmm10[1]
	movaps	%xmm2, %xmm1
	shufps	$17, %xmm8, %xmm1               # xmm1 = xmm1[1,0],xmm8[1,0]
	shufps	$226, %xmm6, %xmm1              # xmm1 = xmm1[2,0],xmm6[2,3]
	movaps	%xmm11, %xmm6
	unpckhpd	%xmm5, %xmm6                    # xmm6 = xmm6[1],xmm5[1]
	movaps	%xmm9, %xmm7
	unpckhps	%xmm0, %xmm7                    # xmm7 = xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	shufps	$36, %xmm6, %xmm7               # xmm7 = xmm7[0,1],xmm6[2,0]
	movaps	%xmm10, %xmm6
	unpckhpd	%xmm4, %xmm6                    # xmm6 = xmm6[1],xmm4[1]
	movaps	%xmm8, %xmm3
	unpckhps	%xmm2, %xmm3                    # xmm3 = xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	shufps	$36, %xmm6, %xmm3               # xmm3 = xmm3[0,1],xmm6[2,0]
	unpckhps	%xmm11, %xmm5                   # xmm5 = xmm5[2],xmm11[2],xmm5[3],xmm11[3]
	shufps	$51, %xmm9, %xmm0               # xmm0 = xmm0[3,0],xmm9[3,0]
	shufps	$226, %xmm5, %xmm0              # xmm0 = xmm0[2,0],xmm5[2,3]
	unpckhps	%xmm10, %xmm4                   # xmm4 = xmm4[2],xmm10[2],xmm4[3],xmm10[3]
	shufps	$51, %xmm8, %xmm2               # xmm2 = xmm2[3,0],xmm8[3,0]
	shufps	$226, %xmm4, %xmm2              # xmm2 = xmm2[2,0],xmm4[2,3]
	movaps	%xmm2, 259696(%rbx,%rax,8)
	movaps	%xmm0, 259680(%rbx,%rax,8)
	movaps	%xmm3, 259664(%rbx,%rax,8)
	movaps	%xmm7, 259648(%rbx,%rax,8)
	movaps	%xmm1, 259632(%rbx,%rax,8)
	movaps	%xmm14, 259616(%rbx,%rax,8)
	movaps	%xmm13, 259600(%rbx,%rax,8)
	movaps	%xmm12, 259584(%rbx,%rax,8)
	addq	$16, %rax
	jne	.LBB15_6
# %bb.7:                                # %vector.body57.preheader
	movq	$-10816, %rax                   # imm = 0xD5C0
	.p2align	4, 0x90
.LBB15_8:                               # %vector.body57
                                        # =>This Inner Loop Header: Depth=1
	movaps	270400(%r13,%rax), %xmm9
	movaps	281216(%r13,%rax), %xmm0
	movaps	292032(%r13,%rax), %xmm5
	movaps	302848(%r13,%rax), %xmm11
	movaps	313664(%r13,%rax), %xmm8
	movaps	324480(%r13,%rax), %xmm2
	movaps	335296(%r13,%rax), %xmm4
	movaps	346112(%r13,%rax), %xmm10
	movaps	%xmm11, %xmm3
	movlhps	%xmm5, %xmm3                    # xmm3 = xmm3[0],xmm5[0]
	movaps	%xmm9, %xmm12
	unpcklps	%xmm0, %xmm12                   # xmm12 = xmm12[0],xmm0[0],xmm12[1],xmm0[1]
	shufps	$36, %xmm3, %xmm12              # xmm12 = xmm12[0,1],xmm3[2,0]
	movaps	%xmm10, %xmm3
	movlhps	%xmm4, %xmm3                    # xmm3 = xmm3[0],xmm4[0]
	movaps	%xmm8, %xmm13
	unpcklps	%xmm2, %xmm13                   # xmm13 = xmm13[0],xmm2[0],xmm13[1],xmm2[1]
	shufps	$36, %xmm3, %xmm13              # xmm13 = xmm13[0,1],xmm3[2,0]
	movaps	%xmm5, %xmm6
	unpcklps	%xmm11, %xmm6                   # xmm6 = xmm6[0],xmm11[0],xmm6[1],xmm11[1]
	movaps	%xmm0, %xmm14
	shufps	$17, %xmm9, %xmm14              # xmm14 = xmm14[1,0],xmm9[1,0]
	shufps	$226, %xmm6, %xmm14             # xmm14 = xmm14[2,0],xmm6[2,3]
	movaps	%xmm4, %xmm6
	unpcklps	%xmm10, %xmm6                   # xmm6 = xmm6[0],xmm10[0],xmm6[1],xmm10[1]
	movaps	%xmm2, %xmm1
	shufps	$17, %xmm8, %xmm1               # xmm1 = xmm1[1,0],xmm8[1,0]
	shufps	$226, %xmm6, %xmm1              # xmm1 = xmm1[2,0],xmm6[2,3]
	movaps	%xmm11, %xmm6
	unpckhpd	%xmm5, %xmm6                    # xmm6 = xmm6[1],xmm5[1]
	movaps	%xmm9, %xmm7
	unpckhps	%xmm0, %xmm7                    # xmm7 = xmm7[2],xmm0[2],xmm7[3],xmm0[3]
	shufps	$36, %xmm6, %xmm7               # xmm7 = xmm7[0,1],xmm6[2,0]
	movaps	%xmm10, %xmm6
	unpckhpd	%xmm4, %xmm6                    # xmm6 = xmm6[1],xmm4[1]
	movaps	%xmm8, %xmm3
	unpckhps	%xmm2, %xmm3                    # xmm3 = xmm3[2],xmm2[2],xmm3[3],xmm2[3]
	shufps	$36, %xmm6, %xmm3               # xmm3 = xmm3[0,1],xmm6[2,0]
	unpckhps	%xmm11, %xmm5                   # xmm5 = xmm5[2],xmm11[2],xmm5[3],xmm11[3]
	shufps	$51, %xmm9, %xmm0               # xmm0 = xmm0[3,0],xmm9[3,0]
	shufps	$226, %xmm5, %xmm0              # xmm0 = xmm0[2,0],xmm5[2,3]
	unpckhps	%xmm10, %xmm4                   # xmm4 = xmm4[2],xmm10[2],xmm4[3],xmm10[3]
	shufps	$51, %xmm8, %xmm2               # xmm2 = xmm2[3,0],xmm8[3,0]
	shufps	$226, %xmm4, %xmm2              # xmm2 = xmm2[2,0],xmm4[2,3]
	movaps	%xmm2, 346224(%rbx,%rax,8)
	movaps	%xmm0, 346208(%rbx,%rax,8)
	movaps	%xmm3, 346192(%rbx,%rax,8)
	movaps	%xmm7, 346176(%rbx,%rax,8)
	movaps	%xmm1, 346160(%rbx,%rax,8)
	movaps	%xmm14, 346144(%rbx,%rax,8)
	movaps	%xmm13, 346128(%rbx,%rax,8)
	movaps	%xmm12, 346112(%rbx,%rax,8)
	addq	$16, %rax
	jne	.LBB15_8
# %bb.9:                                # %for_end_y.3
	movq	%rsp, %rax
	leaq	-32(%rax), %rsi
	movq	%rsi, %rsp
	movq	%r12, -32(%rax)
	movq	%rbx, -24(%rax)
	movq	%r15, -16(%rax)
	movq	__TVMBackendParallelLaunch@GOTPCREL(%rip), %rax
	xorl	%r15d, %r15d
	movl	$.L__tvm_parallel_lambda.82, %edi
	xorl	%edx, %edx
	callq	*(%rax)
	testl	%eax, %eax
	jne	.LBB15_11
# %bb.10:                               # %call_end
	movq	__TVMBackendFreeWorkspace@GOTPCREL(%rip), %rax
	movl	$1, %edi
	movl	%r14d, %esi
	movq	%rbx, %rdx
	callq	*(%rax)
	negl	%eax
	sbbl	%r15d, %r15d
	movl	%r15d, %eax
	jmp	.LBB15_11
.Lfunc_end15:
	.size	tvmgen_default_fused_nn_dense_compute_, .Lfunc_end15-tvmgen_default_fused_nn_dense_compute_
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __tvm_parallel_lambda.82
	.type	.L__tvm_parallel_lambda.82,@function
.L__tvm_parallel_lambda.82:             # @__tvm_parallel_lambda.82
.Lfunc_begin16:
	.cfi_startproc
# %bb.0:                                # %parallel_closure_entry
	movq	%rdx, %rcx
                                        # kill: def $edi killed $edi def $rdi
	movl	8(%rsi), %esi
	leal	3(%rsi), %eax
	cltd
	idivl	%esi
	leal	1(%rdi), %esi
	imull	%eax, %esi
	cmpl	$4, %esi
	movl	$4, %edx
	cmovgel	%edx, %esi
	imull	%edi, %eax
	cmpl	$4, %eax
	cmovgel	%edx, %eax
	cmpl	%esi, %eax
	jge	.LBB16_5
# %bb.1:                                # %for_begin_k.outer.preheader.preheader
	movq	(%rcx), %rdx
	movq	8(%rcx), %rdi
	movq	16(%rcx), %rcx
	cltq
	movslq	%esi, %r8
	imulq	$86528, %rax, %rsi              # imm = 0x15200
	leaq	32(%rsi,%rdi), %rdi
	.p2align	4, 0x90
.LBB16_2:                               # %for_begin_k.outer.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB16_3 Depth 2
	xorps	%xmm1, %xmm1
	movq	$-10816, %rsi                   # imm = 0xD5C0
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB16_3:                               # %for_body_k.outer
                                        #   Parent Loop BB16_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	10816(%rdx,%rsi), %xmm2         # xmm2 = mem[0],zero,zero,zero
	shufps	$0, %xmm2, %xmm2                # xmm2 = xmm2[0,0,0,0]
	movaps	86496(%rdi,%rsi,8), %xmm3
	mulps	%xmm2, %xmm3
	addps	%xmm1, %xmm3
	movss	10820(%rdx,%rsi), %xmm1         # xmm1 = mem[0],zero,zero,zero
	mulps	86512(%rdi,%rsi,8), %xmm2
	addps	%xmm0, %xmm2
	shufps	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	movaps	86544(%rdi,%rsi,8), %xmm0
	mulps	%xmm1, %xmm0
	addps	%xmm2, %xmm0
	mulps	86528(%rdi,%rsi,8), %xmm1
	addps	%xmm3, %xmm1
	addq	$8, %rsi
	jne	.LBB16_3
# %bb.4:                                # %for_end_k.outer
                                        #   in Loop: Header=BB16_2 Depth=1
	leal	(,%rax,8), %esi
	movslq	%esi, %rsi
	movaps	%xmm0, 16(%rcx,%rsi,4)
	movaps	%xmm1, (%rcx,%rsi,4)
	incq	%rax
	addq	$86528, %rdi                    # imm = 0x15200
	cmpq	%r8, %rax
	jne	.LBB16_2
.LBB16_5:                               # %for_end_x.outer.y.outer.fused
	xorl	%eax, %eax
	retq
.Lfunc_end16:
	.size	.L__tvm_parallel_lambda.82, .Lfunc_end16-.L__tvm_parallel_lambda.82
	.cfi_endproc
                                        # -- End function
	.globl	tvmgen_default_fused_nn_dense_1 # -- Begin function tvmgen_default_fused_nn_dense_1
	.p2align	4, 0x90
	.type	tvmgen_default_fused_nn_dense_1,@function
tvmgen_default_fused_nn_dense_1:        # @tvmgen_default_fused_nn_dense_1
.Lfunc_begin17:
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%r15
	.cfi_def_cfa_offset 16
	pushq	%r14
	.cfi_def_cfa_offset 24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset %rbx, -32
	.cfi_offset %r14, -24
	.cfi_offset %r15, -16
	cmpl	$3, %edx
	jne	.LBB17_1
# %bb.3:                                # %assert_end
	movl	(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB17_5
# %bb.4:                                # %assert_end
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB17_5
# %bb.6:                                # %assert_end3
	movl	4(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB17_8
# %bb.7:                                # %assert_end3
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB17_8
# %bb.9:                                # %assert_end5
	movl	8(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB17_11
# %bb.10:                               # %assert_end5
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB17_11
# %bb.12:                               # %assert_end7
	movq	(%rdi), %rbx
	cmpl	$2, 16(%rbx)
	jne	.LBB17_13
# %bb.14:                               # %assert_end11
	cmpw	$1, 22(%rbx)
	jne	.LBB17_17
# %bb.15:                               # %assert_end11
	cmpb	$32, 21(%rbx)
	jne	.LBB17_17
# %bb.16:                               # %assert_end11
	cmpb	$2, 20(%rbx)
	jne	.LBB17_17
# %bb.18:                               # %assert_end13
	movq	24(%rbx), %rax
	cmpl	$1, (%rax)
	jne	.LBB17_19
# %bb.20:                               # %assert_end15
	cmpl	$32, 8(%rax)
	jne	.LBB17_21
# %bb.22:                               # %assert_end17
	movq	8(%rdi), %rax
	movq	16(%rdi), %r10
	movq	(%rbx), %rsi
	movq	32(%rbx), %r15
	movl	12(%rbx), %ecx
	movq	(%rax), %rdi
	movq	24(%rax), %r14
	movq	32(%rax), %r11
	movq	(%r10), %rdx
	movq	24(%r10), %r9
	movq	32(%r10), %r8
	testq	%r15, %r15
	je	.LBB17_25
# %bb.23:                               # %if_then
	cmpl	$32, (%r15)
	jne	.LBB17_68
# %bb.24:                               # %if_then
	cmpl	$1, 8(%r15)
	jne	.LBB17_68
.LBB17_25:                              # %if_end
	cmpq	$0, 40(%rbx)
	jne	.LBB17_26
# %bb.27:                               # %assert_end21
	cmpl	$1, 8(%rbx)
	jne	.LBB17_28
# %bb.29:                               # %assert_end23
	cmpl	$2, 16(%rax)
	jne	.LBB17_30
# %bb.31:                               # %assert_end27
	cmpw	$1, 22(%rax)
	jne	.LBB17_34
# %bb.32:                               # %assert_end27
	cmpb	$32, 21(%rax)
	jne	.LBB17_34
# %bb.33:                               # %assert_end27
	cmpb	$2, 20(%rax)
	jne	.LBB17_34
# %bb.35:                               # %assert_end29
	cmpl	$10, (%r14)
	jne	.LBB17_36
# %bb.37:                               # %assert_end31
	cmpl	$32, 8(%r14)
	jne	.LBB17_38
# %bb.39:                               # %assert_end33
	testq	%r11, %r11
	je	.LBB17_42
# %bb.40:                               # %if_then34
	cmpl	$32, (%r11)
	jne	.LBB17_69
# %bb.41:                               # %if_then34
	cmpl	$1, 8(%r11)
	jne	.LBB17_69
.LBB17_42:                              # %if_end35
	cmpq	$0, 40(%rax)
	jne	.LBB17_43
# %bb.44:                               # %assert_end39
	cmpl	$1, 8(%rax)
	jne	.LBB17_45
# %bb.46:                               # %assert_end41
	cmpl	12(%rax), %ecx
	jne	.LBB17_47
# %bb.48:                               # %assert_end43
	cmpl	$2, 16(%r10)
	jne	.LBB17_49
# %bb.50:                               # %assert_end47
	cmpw	$1, 22(%r10)
	jne	.LBB17_53
# %bb.51:                               # %assert_end47
	cmpb	$32, 21(%r10)
	jne	.LBB17_53
# %bb.52:                               # %assert_end47
	cmpb	$2, 20(%r10)
	jne	.LBB17_53
# %bb.54:                               # %assert_end49
	cmpl	$1, (%r9)
	jne	.LBB17_55
# %bb.56:                               # %assert_end51
	cmpl	$10, 8(%r9)
	jne	.LBB17_57
# %bb.58:                               # %assert_end53
	testq	%r8, %r8
	je	.LBB17_61
# %bb.59:                               # %if_then54
	cmpl	$10, (%r8)
	jne	.LBB17_70
# %bb.60:                               # %if_then54
	cmpl	$1, 8(%r8)
	jne	.LBB17_70
.LBB17_61:                              # %if_end55
	cmpq	$0, 40(%r10)
	jne	.LBB17_62
# %bb.63:                               # %assert_end59
	cmpl	$1, 8(%r10)
	jne	.LBB17_64
# %bb.65:                               # %assert_end61
	cmpl	12(%r10), %ecx
	jne	.LBB17_66
# %bb.67:                               # %assert_end63
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	jmp	tvmgen_default_fused_nn_dense_1_compute_ # TAILCALL
.LBB17_5:                               # %assert_fail2
	.cfi_def_cfa_offset 32
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.84, %edi
	jmp	.LBB17_2
.LBB17_8:                               # %assert_fail4
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.85, %edi
	jmp	.LBB17_2
.LBB17_11:                              # %assert_fail6
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.86, %edi
.LBB17_2:                               # %common.ret
	callq	*(%rax)
	movl	$-1, %eax
	popq	%rbx
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	retq
.LBB17_1:                               # %assert_fail
	.cfi_def_cfa_offset 32
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.83, %edi
	jmp	.LBB17_2
.LBB17_13:                              # %assert_fail8
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.44, %edi
	jmp	.LBB17_2
.LBB17_17:                              # %assert_fail12
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.4, %edi
	jmp	.LBB17_2
.LBB17_19:                              # %assert_fail14
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.5, %edi
	jmp	.LBB17_2
.LBB17_21:                              # %assert_fail16
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.45, %edi
	jmp	.LBB17_2
.LBB17_68:                              # %assert_fail18
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.46, %edi
	jmp	.LBB17_2
.LBB17_26:                              # %assert_fail20
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.10, %edi
	jmp	.LBB17_2
.LBB17_28:                              # %assert_fail22
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.11, %edi
	jmp	.LBB17_2
.LBB17_30:                              # %assert_fail24
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.12, %edi
	jmp	.LBB17_2
.LBB17_34:                              # %assert_fail28
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.13, %edi
	jmp	.LBB17_2
.LBB17_36:                              # %assert_fail30
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.57, %edi
	jmp	.LBB17_2
.LBB17_38:                              # %assert_fail32
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.87, %edi
	jmp	.LBB17_2
.LBB17_69:                              # %assert_fail36
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.88, %edi
	jmp	.LBB17_2
.LBB17_43:                              # %assert_fail38
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.17, %edi
	jmp	.LBB17_2
.LBB17_45:                              # %assert_fail40
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.18, %edi
	jmp	.LBB17_2
.LBB17_47:                              # %assert_fail42
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.19, %edi
	jmp	.LBB17_2
.LBB17_49:                              # %assert_fail44
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.48, %edi
	jmp	.LBB17_2
.LBB17_53:                              # %assert_fail48
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.31, %edi
	jmp	.LBB17_2
.LBB17_55:                              # %assert_fail50
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.32, %edi
	jmp	.LBB17_2
.LBB17_57:                              # %assert_fail52
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.58, %edi
	jmp	.LBB17_2
.LBB17_70:                              # %assert_fail56
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.59, %edi
	jmp	.LBB17_2
.LBB17_62:                              # %assert_fail58
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.37, %edi
	jmp	.LBB17_2
.LBB17_64:                              # %assert_fail60
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.38, %edi
	jmp	.LBB17_2
.LBB17_66:                              # %assert_fail62
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.39, %edi
	jmp	.LBB17_2
.Lfunc_end17:
	.size	tvmgen_default_fused_nn_dense_1, .Lfunc_end17-tvmgen_default_fused_nn_dense_1
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function tvmgen_default_fused_nn_dense_1_compute_
	.type	tvmgen_default_fused_nn_dense_1_compute_,@function
tvmgen_default_fused_nn_dense_1_compute_: # @tvmgen_default_fused_nn_dense_1_compute_
.Lfunc_begin18:
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	.cfi_offset %rbx, -56
	.cfi_offset %r12, -48
	.cfi_offset %r13, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %r13
	movq	__TVMBackendAllocWorkspace@GOTPCREL(%rip), %rax
	movl	$1280, %edx                     # imm = 0x500
	movl	$1, %edi
	movl	%ecx, %esi
	movl	$2, %ecx
	movl	$32, %r8d
	callq	*(%rax)
	movq	%rax, %rbx
	movl	$-1, %eax
	testq	%rbx, %rbx
	jne	.LBB18_1
.LBB18_3:                               # %common.ret
	leaq	-40(%rbp), %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa %rsp, 8
	retq
.LBB18_1:                               # %vector.body
	.cfi_def_cfa %rbp, 16
	movaps	(%r13), %xmm0
	movaps	128(%r13), %xmm1
	movaps	256(%r13), %xmm9
	movaps	384(%r13), %xmm4
	movaps	512(%r13), %xmm5
	movaps	%xmm0, %xmm3
	movaps	%xmm4, %xmm8
	unpckhps	%xmm5, %xmm8                    # xmm8 = xmm8[2],xmm5[2],xmm8[3],xmm5[3]
	movaps	%xmm0, %xmm7
	shufps	$35, %xmm5, %xmm7               # xmm7 = xmm7[3,0],xmm5[2,0]
	movaps	%xmm9, %xmm2
	unpckhps	%xmm4, %xmm2                    # xmm2 = xmm2[2],xmm4[2],xmm2[3],xmm4[3]
	movaps	%xmm1, %xmm6
	unpckhpd	%xmm0, %xmm6                    # xmm6 = xmm6[1],xmm0[1]
	shufps	$1, %xmm5, %xmm0                # xmm0 = xmm0[1,0],xmm5[0,0]
	shufps	$17, %xmm4, %xmm5               # xmm5 = xmm5[1,0],xmm4[1,0]
	movlhps	%xmm9, %xmm4                    # xmm4 = xmm4[0],xmm9[0]
	unpcklps	%xmm1, %xmm3                    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	shufps	$36, %xmm4, %xmm3               # xmm3 = xmm3[0,1],xmm4[2,0]
	movaps	%xmm9, %xmm4
	shufps	$51, %xmm1, %xmm4               # xmm4 = xmm4[3,0],xmm1[3,0]
	shufps	$226, %xmm8, %xmm4              # xmm4 = xmm4[2,0],xmm8[2,3]
	shufps	$36, %xmm7, %xmm2               # xmm2 = xmm2[0,1],xmm7[2,0]
	shufps	$34, %xmm6, %xmm5               # xmm5 = xmm5[2,0],xmm6[2,0]
	unpcklps	%xmm9, %xmm1                    # xmm1 = xmm1[0],xmm9[0],xmm1[1],xmm9[1]
	shufps	$226, %xmm1, %xmm0              # xmm0 = xmm0[2,0],xmm1[2,3]
	movaps	%xmm0, 16(%rbx)
	movaps	%xmm5, 32(%rbx)
	movaps	%xmm2, 48(%rbx)
	movaps	%xmm4, 64(%rbx)
	movaps	%xmm3, (%rbx)
	movaps	16(%r13), %xmm1
	movaps	144(%r13), %xmm8
	movaps	272(%r13), %xmm3
	movaps	400(%r13), %xmm2
	movaps	528(%r13), %xmm4
	movaps	%xmm2, %xmm5
	movlhps	%xmm3, %xmm5                    # xmm5 = xmm5[0],xmm3[0]
	movaps	%xmm1, %xmm6
	unpcklps	%xmm8, %xmm6                    # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1]
	shufps	$36, %xmm5, %xmm6               # xmm6 = xmm6[0,1],xmm5[2,0]
	movaps	%xmm1, %xmm5
	shufps	$1, %xmm4, %xmm5                # xmm5 = xmm5[1,0],xmm4[0,0]
	movaps	%xmm8, %xmm7
	unpcklps	%xmm3, %xmm7                    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	shufps	$226, %xmm7, %xmm5              # xmm5 = xmm5[2,0],xmm7[2,3]
	movaps	%xmm4, %xmm7
	shufps	$17, %xmm2, %xmm7               # xmm7 = xmm7[1,0],xmm2[1,0]
	movaps	%xmm3, %xmm0
	shufps	$51, %xmm8, %xmm3               # xmm3 = xmm3[3,0],xmm8[3,0]
	unpckhpd	%xmm1, %xmm8                    # xmm8 = xmm8[1],xmm1[1]
	shufps	$34, %xmm8, %xmm7               # xmm7 = xmm7[2,0],xmm8[2,0]
	shufps	$35, %xmm4, %xmm1               # xmm1 = xmm1[3,0],xmm4[2,0]
	unpckhps	%xmm2, %xmm0                    # xmm0 = xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	shufps	$36, %xmm1, %xmm0               # xmm0 = xmm0[0,1],xmm1[2,0]
	unpckhps	%xmm4, %xmm2                    # xmm2 = xmm2[2],xmm4[2],xmm2[3],xmm4[3]
	shufps	$226, %xmm2, %xmm3              # xmm3 = xmm3[2,0],xmm2[2,3]
	movaps	%xmm3, 144(%rbx)
	movaps	%xmm0, 128(%rbx)
	movaps	%xmm7, 112(%rbx)
	movaps	%xmm5, 96(%rbx)
	movaps	%xmm6, 80(%rbx)
	movaps	32(%r13), %xmm0
	movaps	160(%r13), %xmm1
	movaps	288(%r13), %xmm2
	movaps	416(%r13), %xmm3
	movaps	544(%r13), %xmm4
	movaps	%xmm3, %xmm5
	movlhps	%xmm2, %xmm5                    # xmm5 = xmm5[0],xmm2[0]
	movaps	%xmm0, %xmm6
	unpcklps	%xmm1, %xmm6                    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1]
	shufps	$36, %xmm5, %xmm6               # xmm6 = xmm6[0,1],xmm5[2,0]
	movaps	%xmm4, %xmm5
	shufps	$17, %xmm3, %xmm5               # xmm5 = xmm5[1,0],xmm3[1,0]
	movaps	%xmm1, %xmm7
	unpckhpd	%xmm0, %xmm7                    # xmm7 = xmm7[1],xmm0[1]
	shufps	$34, %xmm7, %xmm5               # xmm5 = xmm5[2,0],xmm7[2,0]
	movaps	%xmm2, %xmm7
	shufps	$51, %xmm1, %xmm7               # xmm7 = xmm7[3,0],xmm1[3,0]
	unpcklps	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	unpckhps	%xmm3, %xmm2                    # xmm2 = xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	unpckhps	%xmm4, %xmm3                    # xmm3 = xmm3[2],xmm4[2],xmm3[3],xmm4[3]
	shufps	$226, %xmm3, %xmm7              # xmm7 = xmm7[2,0],xmm3[2,3]
	movaps	%xmm0, %xmm3
	shufps	$35, %xmm4, %xmm3               # xmm3 = xmm3[3,0],xmm4[2,0]
	shufps	$36, %xmm3, %xmm2               # xmm2 = xmm2[0,1],xmm3[2,0]
	shufps	$1, %xmm4, %xmm0                # xmm0 = xmm0[1,0],xmm4[0,0]
	shufps	$226, %xmm1, %xmm0              # xmm0 = xmm0[2,0],xmm1[2,3]
	movaps	%xmm0, 176(%rbx)
	movaps	%xmm2, 208(%rbx)
	movaps	%xmm7, 224(%rbx)
	movaps	%xmm5, 192(%rbx)
	movaps	%xmm6, 160(%rbx)
	movaps	48(%r13), %xmm0
	movaps	176(%r13), %xmm8
	movaps	304(%r13), %xmm3
	movaps	432(%r13), %xmm2
	movaps	560(%r13), %xmm4
	movaps	%xmm2, %xmm5
	movlhps	%xmm3, %xmm5                    # xmm5 = xmm5[0],xmm3[0]
	movaps	%xmm0, %xmm6
	unpcklps	%xmm8, %xmm6                    # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1]
	shufps	$36, %xmm5, %xmm6               # xmm6 = xmm6[0,1],xmm5[2,0]
	movaps	%xmm0, %xmm5
	shufps	$1, %xmm4, %xmm5                # xmm5 = xmm5[1,0],xmm4[0,0]
	movaps	%xmm8, %xmm7
	unpcklps	%xmm3, %xmm7                    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	shufps	$226, %xmm7, %xmm5              # xmm5 = xmm5[2,0],xmm7[2,3]
	movaps	%xmm4, %xmm7
	shufps	$17, %xmm2, %xmm7               # xmm7 = xmm7[1,0],xmm2[1,0]
	movaps	%xmm3, %xmm1
	shufps	$51, %xmm8, %xmm3               # xmm3 = xmm3[3,0],xmm8[3,0]
	unpckhpd	%xmm0, %xmm8                    # xmm8 = xmm8[1],xmm0[1]
	shufps	$34, %xmm8, %xmm7               # xmm7 = xmm7[2,0],xmm8[2,0]
	shufps	$35, %xmm4, %xmm0               # xmm0 = xmm0[3,0],xmm4[2,0]
	unpckhps	%xmm2, %xmm1                    # xmm1 = xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	shufps	$36, %xmm0, %xmm1               # xmm1 = xmm1[0,1],xmm0[2,0]
	unpckhps	%xmm4, %xmm2                    # xmm2 = xmm2[2],xmm4[2],xmm2[3],xmm4[3]
	shufps	$226, %xmm2, %xmm3              # xmm3 = xmm3[2,0],xmm2[2,3]
	movaps	%xmm3, 304(%rbx)
	movaps	%xmm1, 288(%rbx)
	movaps	%xmm7, 272(%rbx)
	movaps	%xmm5, 256(%rbx)
	movaps	%xmm6, 240(%rbx)
	movaps	64(%r13), %xmm0
	movaps	192(%r13), %xmm1
	movaps	320(%r13), %xmm9
	movaps	448(%r13), %xmm4
	movaps	576(%r13), %xmm5
	movaps	%xmm0, %xmm3
	movaps	%xmm4, %xmm8
	unpckhps	%xmm5, %xmm8                    # xmm8 = xmm8[2],xmm5[2],xmm8[3],xmm5[3]
	movaps	%xmm0, %xmm7
	shufps	$35, %xmm5, %xmm7               # xmm7 = xmm7[3,0],xmm5[2,0]
	movaps	%xmm9, %xmm2
	unpckhps	%xmm4, %xmm2                    # xmm2 = xmm2[2],xmm4[2],xmm2[3],xmm4[3]
	movaps	%xmm1, %xmm6
	unpckhpd	%xmm0, %xmm6                    # xmm6 = xmm6[1],xmm0[1]
	shufps	$1, %xmm5, %xmm0                # xmm0 = xmm0[1,0],xmm5[0,0]
	shufps	$17, %xmm4, %xmm5               # xmm5 = xmm5[1,0],xmm4[1,0]
	movlhps	%xmm9, %xmm4                    # xmm4 = xmm4[0],xmm9[0]
	unpcklps	%xmm1, %xmm3                    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	shufps	$36, %xmm4, %xmm3               # xmm3 = xmm3[0,1],xmm4[2,0]
	movaps	%xmm9, %xmm4
	shufps	$51, %xmm1, %xmm4               # xmm4 = xmm4[3,0],xmm1[3,0]
	shufps	$226, %xmm8, %xmm4              # xmm4 = xmm4[2,0],xmm8[2,3]
	shufps	$36, %xmm7, %xmm2               # xmm2 = xmm2[0,1],xmm7[2,0]
	shufps	$34, %xmm6, %xmm5               # xmm5 = xmm5[2,0],xmm6[2,0]
	unpcklps	%xmm9, %xmm1                    # xmm1 = xmm1[0],xmm9[0],xmm1[1],xmm9[1]
	shufps	$226, %xmm1, %xmm0              # xmm0 = xmm0[2,0],xmm1[2,3]
	movaps	%xmm0, 336(%rbx)
	movaps	%xmm5, 352(%rbx)
	movaps	%xmm2, 368(%rbx)
	movaps	%xmm4, 384(%rbx)
	movaps	%xmm3, 320(%rbx)
	movaps	80(%r13), %xmm1
	movaps	208(%r13), %xmm8
	movaps	336(%r13), %xmm3
	movaps	464(%r13), %xmm2
	movaps	592(%r13), %xmm4
	movaps	%xmm2, %xmm5
	movlhps	%xmm3, %xmm5                    # xmm5 = xmm5[0],xmm3[0]
	movaps	%xmm1, %xmm6
	unpcklps	%xmm8, %xmm6                    # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1]
	shufps	$36, %xmm5, %xmm6               # xmm6 = xmm6[0,1],xmm5[2,0]
	movaps	%xmm1, %xmm5
	shufps	$1, %xmm4, %xmm5                # xmm5 = xmm5[1,0],xmm4[0,0]
	movaps	%xmm8, %xmm7
	unpcklps	%xmm3, %xmm7                    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	shufps	$226, %xmm7, %xmm5              # xmm5 = xmm5[2,0],xmm7[2,3]
	movaps	%xmm4, %xmm7
	shufps	$17, %xmm2, %xmm7               # xmm7 = xmm7[1,0],xmm2[1,0]
	movaps	%xmm3, %xmm0
	shufps	$51, %xmm8, %xmm3               # xmm3 = xmm3[3,0],xmm8[3,0]
	unpckhpd	%xmm1, %xmm8                    # xmm8 = xmm8[1],xmm1[1]
	shufps	$34, %xmm8, %xmm7               # xmm7 = xmm7[2,0],xmm8[2,0]
	shufps	$35, %xmm4, %xmm1               # xmm1 = xmm1[3,0],xmm4[2,0]
	unpckhps	%xmm2, %xmm0                    # xmm0 = xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	shufps	$36, %xmm1, %xmm0               # xmm0 = xmm0[0,1],xmm1[2,0]
	unpckhps	%xmm4, %xmm2                    # xmm2 = xmm2[2],xmm4[2],xmm2[3],xmm4[3]
	shufps	$226, %xmm2, %xmm3              # xmm3 = xmm3[2,0],xmm2[2,3]
	movaps	%xmm3, 464(%rbx)
	movaps	%xmm0, 448(%rbx)
	movaps	%xmm7, 432(%rbx)
	movaps	%xmm5, 416(%rbx)
	movaps	%xmm6, 400(%rbx)
	movaps	96(%r13), %xmm0
	movaps	224(%r13), %xmm1
	movaps	352(%r13), %xmm2
	movaps	480(%r13), %xmm3
	movaps	608(%r13), %xmm4
	movaps	%xmm3, %xmm5
	movlhps	%xmm2, %xmm5                    # xmm5 = xmm5[0],xmm2[0]
	movaps	%xmm0, %xmm6
	unpcklps	%xmm1, %xmm6                    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1]
	shufps	$36, %xmm5, %xmm6               # xmm6 = xmm6[0,1],xmm5[2,0]
	movaps	%xmm4, %xmm5
	shufps	$17, %xmm3, %xmm5               # xmm5 = xmm5[1,0],xmm3[1,0]
	movaps	%xmm1, %xmm7
	unpckhpd	%xmm0, %xmm7                    # xmm7 = xmm7[1],xmm0[1]
	shufps	$34, %xmm7, %xmm5               # xmm5 = xmm5[2,0],xmm7[2,0]
	movaps	%xmm2, %xmm7
	shufps	$51, %xmm1, %xmm7               # xmm7 = xmm7[3,0],xmm1[3,0]
	unpcklps	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	unpckhps	%xmm3, %xmm2                    # xmm2 = xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	unpckhps	%xmm4, %xmm3                    # xmm3 = xmm3[2],xmm4[2],xmm3[3],xmm4[3]
	shufps	$226, %xmm3, %xmm7              # xmm7 = xmm7[2,0],xmm3[2,3]
	movaps	%xmm0, %xmm3
	shufps	$35, %xmm4, %xmm3               # xmm3 = xmm3[3,0],xmm4[2,0]
	shufps	$36, %xmm3, %xmm2               # xmm2 = xmm2[0,1],xmm3[2,0]
	shufps	$1, %xmm4, %xmm0                # xmm0 = xmm0[1,0],xmm4[0,0]
	shufps	$226, %xmm1, %xmm0              # xmm0 = xmm0[2,0],xmm1[2,3]
	movaps	%xmm0, 496(%rbx)
	movaps	%xmm2, 528(%rbx)
	movaps	%xmm7, 544(%rbx)
	movaps	%xmm5, 512(%rbx)
	movaps	%xmm6, 480(%rbx)
	movaps	112(%r13), %xmm0
	movaps	240(%r13), %xmm8
	movaps	368(%r13), %xmm3
	movaps	496(%r13), %xmm2
	movaps	624(%r13), %xmm4
	movaps	%xmm2, %xmm5
	movlhps	%xmm3, %xmm5                    # xmm5 = xmm5[0],xmm3[0]
	movaps	%xmm0, %xmm6
	unpcklps	%xmm8, %xmm6                    # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1]
	shufps	$36, %xmm5, %xmm6               # xmm6 = xmm6[0,1],xmm5[2,0]
	movaps	%xmm0, %xmm5
	shufps	$1, %xmm4, %xmm5                # xmm5 = xmm5[1,0],xmm4[0,0]
	movaps	%xmm8, %xmm7
	unpcklps	%xmm3, %xmm7                    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	shufps	$226, %xmm7, %xmm5              # xmm5 = xmm5[2,0],xmm7[2,3]
	movaps	%xmm4, %xmm7
	shufps	$17, %xmm2, %xmm7               # xmm7 = xmm7[1,0],xmm2[1,0]
	movaps	%xmm3, %xmm1
	shufps	$51, %xmm8, %xmm3               # xmm3 = xmm3[3,0],xmm8[3,0]
	unpckhpd	%xmm0, %xmm8                    # xmm8 = xmm8[1],xmm0[1]
	shufps	$34, %xmm8, %xmm7               # xmm7 = xmm7[2,0],xmm8[2,0]
	shufps	$35, %xmm4, %xmm0               # xmm0 = xmm0[3,0],xmm4[2,0]
	unpckhps	%xmm2, %xmm1                    # xmm1 = xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	shufps	$36, %xmm0, %xmm1               # xmm1 = xmm1[0,1],xmm0[2,0]
	unpckhps	%xmm4, %xmm2                    # xmm2 = xmm2[2],xmm4[2],xmm2[3],xmm4[3]
	shufps	$226, %xmm2, %xmm3              # xmm3 = xmm3[2,0],xmm2[2,3]
	movaps	%xmm3, 624(%rbx)
	movaps	%xmm1, 608(%rbx)
	movaps	%xmm7, 592(%rbx)
	movaps	%xmm5, 576(%rbx)
	movaps	%xmm6, 560(%rbx)
	movaps	640(%r13), %xmm0
	movaps	768(%r13), %xmm1
	movaps	896(%r13), %xmm9
	movaps	1024(%r13), %xmm4
	movaps	1152(%r13), %xmm5
	movaps	%xmm0, %xmm3
	movaps	%xmm4, %xmm8
	unpckhps	%xmm5, %xmm8                    # xmm8 = xmm8[2],xmm5[2],xmm8[3],xmm5[3]
	movaps	%xmm0, %xmm7
	shufps	$35, %xmm5, %xmm7               # xmm7 = xmm7[3,0],xmm5[2,0]
	movaps	%xmm9, %xmm2
	unpckhps	%xmm4, %xmm2                    # xmm2 = xmm2[2],xmm4[2],xmm2[3],xmm4[3]
	movaps	%xmm1, %xmm6
	unpckhpd	%xmm0, %xmm6                    # xmm6 = xmm6[1],xmm0[1]
	shufps	$1, %xmm5, %xmm0                # xmm0 = xmm0[1,0],xmm5[0,0]
	shufps	$17, %xmm4, %xmm5               # xmm5 = xmm5[1,0],xmm4[1,0]
	movlhps	%xmm9, %xmm4                    # xmm4 = xmm4[0],xmm9[0]
	unpcklps	%xmm1, %xmm3                    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	shufps	$36, %xmm4, %xmm3               # xmm3 = xmm3[0,1],xmm4[2,0]
	movaps	%xmm9, %xmm4
	shufps	$51, %xmm1, %xmm4               # xmm4 = xmm4[3,0],xmm1[3,0]
	shufps	$226, %xmm8, %xmm4              # xmm4 = xmm4[2,0],xmm8[2,3]
	shufps	$36, %xmm7, %xmm2               # xmm2 = xmm2[0,1],xmm7[2,0]
	shufps	$34, %xmm6, %xmm5               # xmm5 = xmm5[2,0],xmm6[2,0]
	unpcklps	%xmm9, %xmm1                    # xmm1 = xmm1[0],xmm9[0],xmm1[1],xmm9[1]
	shufps	$226, %xmm1, %xmm0              # xmm0 = xmm0[2,0],xmm1[2,3]
	movaps	%xmm0, 656(%rbx)
	movaps	%xmm5, 672(%rbx)
	movaps	%xmm2, 688(%rbx)
	movaps	%xmm4, 704(%rbx)
	movaps	%xmm3, 640(%rbx)
	movaps	656(%r13), %xmm1
	movaps	784(%r13), %xmm8
	movaps	912(%r13), %xmm3
	movaps	1040(%r13), %xmm2
	movaps	1168(%r13), %xmm4
	movaps	%xmm2, %xmm5
	movlhps	%xmm3, %xmm5                    # xmm5 = xmm5[0],xmm3[0]
	movaps	%xmm1, %xmm6
	unpcklps	%xmm8, %xmm6                    # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1]
	shufps	$36, %xmm5, %xmm6               # xmm6 = xmm6[0,1],xmm5[2,0]
	movaps	%xmm1, %xmm5
	shufps	$1, %xmm4, %xmm5                # xmm5 = xmm5[1,0],xmm4[0,0]
	movaps	%xmm8, %xmm7
	unpcklps	%xmm3, %xmm7                    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	shufps	$226, %xmm7, %xmm5              # xmm5 = xmm5[2,0],xmm7[2,3]
	movaps	%xmm4, %xmm7
	shufps	$17, %xmm2, %xmm7               # xmm7 = xmm7[1,0],xmm2[1,0]
	movaps	%xmm3, %xmm0
	shufps	$51, %xmm8, %xmm3               # xmm3 = xmm3[3,0],xmm8[3,0]
	unpckhpd	%xmm1, %xmm8                    # xmm8 = xmm8[1],xmm1[1]
	shufps	$34, %xmm8, %xmm7               # xmm7 = xmm7[2,0],xmm8[2,0]
	shufps	$35, %xmm4, %xmm1               # xmm1 = xmm1[3,0],xmm4[2,0]
	unpckhps	%xmm2, %xmm0                    # xmm0 = xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	shufps	$36, %xmm1, %xmm0               # xmm0 = xmm0[0,1],xmm1[2,0]
	unpckhps	%xmm4, %xmm2                    # xmm2 = xmm2[2],xmm4[2],xmm2[3],xmm4[3]
	shufps	$226, %xmm2, %xmm3              # xmm3 = xmm3[2,0],xmm2[2,3]
	movaps	%xmm3, 784(%rbx)
	movaps	%xmm0, 768(%rbx)
	movaps	%xmm7, 752(%rbx)
	movaps	%xmm5, 736(%rbx)
	movaps	%xmm6, 720(%rbx)
	movaps	672(%r13), %xmm0
	movaps	800(%r13), %xmm1
	movaps	928(%r13), %xmm2
	movaps	1056(%r13), %xmm3
	movaps	1184(%r13), %xmm4
	movaps	%xmm3, %xmm5
	movlhps	%xmm2, %xmm5                    # xmm5 = xmm5[0],xmm2[0]
	movaps	%xmm0, %xmm6
	unpcklps	%xmm1, %xmm6                    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1]
	shufps	$36, %xmm5, %xmm6               # xmm6 = xmm6[0,1],xmm5[2,0]
	movaps	%xmm4, %xmm5
	shufps	$17, %xmm3, %xmm5               # xmm5 = xmm5[1,0],xmm3[1,0]
	movaps	%xmm1, %xmm7
	unpckhpd	%xmm0, %xmm7                    # xmm7 = xmm7[1],xmm0[1]
	shufps	$34, %xmm7, %xmm5               # xmm5 = xmm5[2,0],xmm7[2,0]
	movaps	%xmm2, %xmm7
	shufps	$51, %xmm1, %xmm7               # xmm7 = xmm7[3,0],xmm1[3,0]
	unpcklps	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	unpckhps	%xmm3, %xmm2                    # xmm2 = xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	unpckhps	%xmm4, %xmm3                    # xmm3 = xmm3[2],xmm4[2],xmm3[3],xmm4[3]
	shufps	$226, %xmm3, %xmm7              # xmm7 = xmm7[2,0],xmm3[2,3]
	movaps	%xmm0, %xmm3
	shufps	$35, %xmm4, %xmm3               # xmm3 = xmm3[3,0],xmm4[2,0]
	shufps	$36, %xmm3, %xmm2               # xmm2 = xmm2[0,1],xmm3[2,0]
	shufps	$1, %xmm4, %xmm0                # xmm0 = xmm0[1,0],xmm4[0,0]
	shufps	$226, %xmm1, %xmm0              # xmm0 = xmm0[2,0],xmm1[2,3]
	movaps	%xmm0, 816(%rbx)
	movaps	%xmm2, 848(%rbx)
	movaps	%xmm7, 864(%rbx)
	movaps	%xmm5, 832(%rbx)
	movaps	%xmm6, 800(%rbx)
	movaps	688(%r13), %xmm0
	movaps	816(%r13), %xmm8
	movaps	944(%r13), %xmm3
	movaps	1072(%r13), %xmm2
	movaps	1200(%r13), %xmm4
	movaps	%xmm2, %xmm5
	movlhps	%xmm3, %xmm5                    # xmm5 = xmm5[0],xmm3[0]
	movaps	%xmm0, %xmm6
	unpcklps	%xmm8, %xmm6                    # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1]
	shufps	$36, %xmm5, %xmm6               # xmm6 = xmm6[0,1],xmm5[2,0]
	movaps	%xmm0, %xmm5
	shufps	$1, %xmm4, %xmm5                # xmm5 = xmm5[1,0],xmm4[0,0]
	movaps	%xmm8, %xmm7
	unpcklps	%xmm3, %xmm7                    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	shufps	$226, %xmm7, %xmm5              # xmm5 = xmm5[2,0],xmm7[2,3]
	movaps	%xmm4, %xmm7
	shufps	$17, %xmm2, %xmm7               # xmm7 = xmm7[1,0],xmm2[1,0]
	movaps	%xmm3, %xmm1
	shufps	$51, %xmm8, %xmm3               # xmm3 = xmm3[3,0],xmm8[3,0]
	unpckhpd	%xmm0, %xmm8                    # xmm8 = xmm8[1],xmm0[1]
	shufps	$34, %xmm8, %xmm7               # xmm7 = xmm7[2,0],xmm8[2,0]
	shufps	$35, %xmm4, %xmm0               # xmm0 = xmm0[3,0],xmm4[2,0]
	unpckhps	%xmm2, %xmm1                    # xmm1 = xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	shufps	$36, %xmm0, %xmm1               # xmm1 = xmm1[0,1],xmm0[2,0]
	unpckhps	%xmm4, %xmm2                    # xmm2 = xmm2[2],xmm4[2],xmm2[3],xmm4[3]
	shufps	$226, %xmm2, %xmm3              # xmm3 = xmm3[2,0],xmm2[2,3]
	movaps	%xmm3, 944(%rbx)
	movaps	%xmm1, 928(%rbx)
	movaps	%xmm7, 912(%rbx)
	movaps	%xmm5, 896(%rbx)
	movaps	%xmm6, 880(%rbx)
	movaps	704(%r13), %xmm0
	movaps	832(%r13), %xmm1
	movaps	960(%r13), %xmm9
	movaps	1088(%r13), %xmm4
	movaps	1216(%r13), %xmm5
	movaps	%xmm0, %xmm3
	movaps	%xmm4, %xmm8
	unpckhps	%xmm5, %xmm8                    # xmm8 = xmm8[2],xmm5[2],xmm8[3],xmm5[3]
	movaps	%xmm0, %xmm7
	shufps	$35, %xmm5, %xmm7               # xmm7 = xmm7[3,0],xmm5[2,0]
	movaps	%xmm9, %xmm2
	unpckhps	%xmm4, %xmm2                    # xmm2 = xmm2[2],xmm4[2],xmm2[3],xmm4[3]
	movaps	%xmm1, %xmm6
	unpckhpd	%xmm0, %xmm6                    # xmm6 = xmm6[1],xmm0[1]
	shufps	$1, %xmm5, %xmm0                # xmm0 = xmm0[1,0],xmm5[0,0]
	shufps	$17, %xmm4, %xmm5               # xmm5 = xmm5[1,0],xmm4[1,0]
	movlhps	%xmm9, %xmm4                    # xmm4 = xmm4[0],xmm9[0]
	unpcklps	%xmm1, %xmm3                    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	shufps	$36, %xmm4, %xmm3               # xmm3 = xmm3[0,1],xmm4[2,0]
	movaps	%xmm9, %xmm4
	shufps	$51, %xmm1, %xmm4               # xmm4 = xmm4[3,0],xmm1[3,0]
	shufps	$226, %xmm8, %xmm4              # xmm4 = xmm4[2,0],xmm8[2,3]
	shufps	$36, %xmm7, %xmm2               # xmm2 = xmm2[0,1],xmm7[2,0]
	shufps	$34, %xmm6, %xmm5               # xmm5 = xmm5[2,0],xmm6[2,0]
	unpcklps	%xmm9, %xmm1                    # xmm1 = xmm1[0],xmm9[0],xmm1[1],xmm9[1]
	shufps	$226, %xmm1, %xmm0              # xmm0 = xmm0[2,0],xmm1[2,3]
	movaps	%xmm0, 976(%rbx)
	movaps	%xmm5, 992(%rbx)
	movaps	%xmm2, 1008(%rbx)
	movaps	%xmm4, 1024(%rbx)
	movaps	%xmm3, 960(%rbx)
	movaps	720(%r13), %xmm1
	movaps	848(%r13), %xmm8
	movaps	976(%r13), %xmm3
	movaps	1104(%r13), %xmm2
	movaps	1232(%r13), %xmm4
	movaps	%xmm2, %xmm5
	movlhps	%xmm3, %xmm5                    # xmm5 = xmm5[0],xmm3[0]
	movaps	%xmm1, %xmm6
	unpcklps	%xmm8, %xmm6                    # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1]
	shufps	$36, %xmm5, %xmm6               # xmm6 = xmm6[0,1],xmm5[2,0]
	movaps	%xmm1, %xmm5
	shufps	$1, %xmm4, %xmm5                # xmm5 = xmm5[1,0],xmm4[0,0]
	movaps	%xmm8, %xmm7
	unpcklps	%xmm3, %xmm7                    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	shufps	$226, %xmm7, %xmm5              # xmm5 = xmm5[2,0],xmm7[2,3]
	movaps	%xmm4, %xmm7
	shufps	$17, %xmm2, %xmm7               # xmm7 = xmm7[1,0],xmm2[1,0]
	movaps	%xmm3, %xmm0
	shufps	$51, %xmm8, %xmm3               # xmm3 = xmm3[3,0],xmm8[3,0]
	unpckhpd	%xmm1, %xmm8                    # xmm8 = xmm8[1],xmm1[1]
	shufps	$34, %xmm8, %xmm7               # xmm7 = xmm7[2,0],xmm8[2,0]
	shufps	$35, %xmm4, %xmm1               # xmm1 = xmm1[3,0],xmm4[2,0]
	unpckhps	%xmm2, %xmm0                    # xmm0 = xmm0[2],xmm2[2],xmm0[3],xmm2[3]
	shufps	$36, %xmm1, %xmm0               # xmm0 = xmm0[0,1],xmm1[2,0]
	unpckhps	%xmm4, %xmm2                    # xmm2 = xmm2[2],xmm4[2],xmm2[3],xmm4[3]
	shufps	$226, %xmm2, %xmm3              # xmm3 = xmm3[2,0],xmm2[2,3]
	movaps	%xmm3, 1104(%rbx)
	movaps	%xmm0, 1088(%rbx)
	movaps	%xmm7, 1072(%rbx)
	movaps	%xmm5, 1056(%rbx)
	movaps	%xmm6, 1040(%rbx)
	movaps	736(%r13), %xmm0
	movaps	864(%r13), %xmm1
	movaps	992(%r13), %xmm2
	movaps	1120(%r13), %xmm3
	movaps	1248(%r13), %xmm4
	movaps	%xmm3, %xmm5
	movlhps	%xmm2, %xmm5                    # xmm5 = xmm5[0],xmm2[0]
	movaps	%xmm0, %xmm6
	unpcklps	%xmm1, %xmm6                    # xmm6 = xmm6[0],xmm1[0],xmm6[1],xmm1[1]
	shufps	$36, %xmm5, %xmm6               # xmm6 = xmm6[0,1],xmm5[2,0]
	movaps	%xmm4, %xmm5
	shufps	$17, %xmm3, %xmm5               # xmm5 = xmm5[1,0],xmm3[1,0]
	movaps	%xmm1, %xmm7
	unpckhpd	%xmm0, %xmm7                    # xmm7 = xmm7[1],xmm0[1]
	shufps	$34, %xmm7, %xmm5               # xmm5 = xmm5[2,0],xmm7[2,0]
	movaps	%xmm2, %xmm7
	shufps	$51, %xmm1, %xmm7               # xmm7 = xmm7[3,0],xmm1[3,0]
	unpcklps	%xmm2, %xmm1                    # xmm1 = xmm1[0],xmm2[0],xmm1[1],xmm2[1]
	unpckhps	%xmm3, %xmm2                    # xmm2 = xmm2[2],xmm3[2],xmm2[3],xmm3[3]
	unpckhps	%xmm4, %xmm3                    # xmm3 = xmm3[2],xmm4[2],xmm3[3],xmm4[3]
	shufps	$226, %xmm3, %xmm7              # xmm7 = xmm7[2,0],xmm3[2,3]
	movaps	%xmm0, %xmm3
	shufps	$35, %xmm4, %xmm3               # xmm3 = xmm3[3,0],xmm4[2,0]
	shufps	$36, %xmm3, %xmm2               # xmm2 = xmm2[0,1],xmm3[2,0]
	shufps	$1, %xmm4, %xmm0                # xmm0 = xmm0[1,0],xmm4[0,0]
	shufps	$226, %xmm1, %xmm0              # xmm0 = xmm0[2,0],xmm1[2,3]
	movaps	%xmm0, 1136(%rbx)
	movaps	%xmm2, 1168(%rbx)
	movaps	%xmm7, 1184(%rbx)
	movaps	%xmm5, 1152(%rbx)
	movaps	%xmm6, 1120(%rbx)
	movaps	752(%r13), %xmm0
	movaps	880(%r13), %xmm8
	movaps	1008(%r13), %xmm3
	movaps	1136(%r13), %xmm2
	movaps	1264(%r13), %xmm4
	movaps	%xmm2, %xmm5
	movlhps	%xmm3, %xmm5                    # xmm5 = xmm5[0],xmm3[0]
	movaps	%xmm0, %xmm6
	unpcklps	%xmm8, %xmm6                    # xmm6 = xmm6[0],xmm8[0],xmm6[1],xmm8[1]
	shufps	$36, %xmm5, %xmm6               # xmm6 = xmm6[0,1],xmm5[2,0]
	movaps	%xmm0, %xmm5
	shufps	$1, %xmm4, %xmm5                # xmm5 = xmm5[1,0],xmm4[0,0]
	movaps	%xmm8, %xmm7
	unpcklps	%xmm3, %xmm7                    # xmm7 = xmm7[0],xmm3[0],xmm7[1],xmm3[1]
	shufps	$226, %xmm7, %xmm5              # xmm5 = xmm5[2,0],xmm7[2,3]
	movaps	%xmm4, %xmm7
	shufps	$17, %xmm2, %xmm7               # xmm7 = xmm7[1,0],xmm2[1,0]
	movaps	%xmm3, %xmm1
	shufps	$51, %xmm8, %xmm3               # xmm3 = xmm3[3,0],xmm8[3,0]
	unpckhpd	%xmm0, %xmm8                    # xmm8 = xmm8[1],xmm0[1]
	shufps	$34, %xmm8, %xmm7               # xmm7 = xmm7[2,0],xmm8[2,0]
	shufps	$35, %xmm4, %xmm0               # xmm0 = xmm0[3,0],xmm4[2,0]
	unpckhps	%xmm2, %xmm1                    # xmm1 = xmm1[2],xmm2[2],xmm1[3],xmm2[3]
	shufps	$36, %xmm0, %xmm1               # xmm1 = xmm1[0,1],xmm0[2,0]
	unpckhps	%xmm4, %xmm2                    # xmm2 = xmm2[2],xmm4[2],xmm2[3],xmm4[3]
	shufps	$226, %xmm2, %xmm3              # xmm3 = xmm3[2,0],xmm2[2,3]
	movaps	%xmm3, 1264(%rbx)
	movaps	%xmm1, 1248(%rbx)
	movaps	%xmm7, 1232(%rbx)
	movaps	%xmm5, 1216(%rbx)
	movaps	%xmm6, 1200(%rbx)
	movq	%rsp, %rax
	leaq	-32(%rax), %rsi
	movq	%rsi, %rsp
	movq	%r12, -32(%rax)
	movq	%rbx, -24(%rax)
	movq	%r15, -16(%rax)
	movq	__TVMBackendParallelLaunch@GOTPCREL(%rip), %rax
	xorl	%r15d, %r15d
	movl	$.L__tvm_parallel_lambda.89, %edi
	xorl	%edx, %edx
	callq	*(%rax)
	testl	%eax, %eax
	jne	.LBB18_3
# %bb.2:                                # %call_end
	movq	__TVMBackendFreeWorkspace@GOTPCREL(%rip), %rax
	movl	$1, %edi
	movl	%r14d, %esi
	movq	%rbx, %rdx
	callq	*(%rax)
	negl	%eax
	sbbl	%r15d, %r15d
	movl	%r15d, %eax
	jmp	.LBB18_3
.Lfunc_end18:
	.size	tvmgen_default_fused_nn_dense_1_compute_, .Lfunc_end18-tvmgen_default_fused_nn_dense_1_compute_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function __tvm_parallel_lambda.89
.LCPI19_0:
	.zero	16
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI19_1:
	.long	0x00000000                      # float 0
	.text
	.p2align	4, 0x90
	.type	.L__tvm_parallel_lambda.89,@function
.L__tvm_parallel_lambda.89:             # @__tvm_parallel_lambda.89
.Lfunc_begin19:
	.cfi_startproc
# %bb.0:                                # %parallel_closure_entry
	subq	$904, %rsp                      # imm = 0x388
	.cfi_def_cfa_offset 912
	movq	%rdx, %rcx
                                        # kill: def $edi killed $edi def $rdi
	movl	8(%rsi), %esi
	leal	1(%rsi), %eax
	cltd
	idivl	%esi
	leal	1(%rdi), %esi
	imull	%eax, %esi
	cmpl	$2, %esi
	movl	$2, %edx
	cmovgel	%edx, %esi
	imull	%edi, %eax
	cmpl	$2, %eax
	cmovgel	%edx, %eax
	cmpl	%esi, %eax
	jge	.LBB19_3
# %bb.1:                                # %for_begin_k.outer.preheader.preheader
	movq	(%rcx), %rdi
	movq	16(%rcx), %r8
	movslq	%eax, %rdx
	movslq	%esi, %rax
	movss	(%rdi), %xmm0                   # xmm0 = mem[0],zero,zero,zero
	movss	4(%rdi), %xmm8                  # xmm8 = mem[0],zero,zero,zero
	movss	8(%rdi), %xmm2                  # xmm2 = mem[0],zero,zero,zero
	movss	12(%rdi), %xmm3                 # xmm3 = mem[0],zero,zero,zero
	movss	16(%rdi), %xmm4                 # xmm4 = mem[0],zero,zero,zero
	movss	20(%rdi), %xmm5                 # xmm5 = mem[0],zero,zero,zero
	movss	24(%rdi), %xmm6                 # xmm6 = mem[0],zero,zero,zero
	movss	28(%rdi), %xmm7                 # xmm7 = mem[0],zero,zero,zero
	subq	%rdx, %rax
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%r8,%rdx,4), %rsi
	shlq	$7, %rdx
	addq	8(%rcx), %rdx
	movaps	%xmm0, %xmm1
	movaps	%xmm0, 160(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 880(%rsp)                # 16-byte Spill
	movaps	%xmm8, %xmm0
	movaps	%xmm8, 144(%rsp)                # 16-byte Spill
	unpcklps	%xmm8, %xmm0                    # xmm0 = xmm0[0],xmm8[0],xmm0[1],xmm8[1]
	movaps	%xmm0, 864(%rsp)                # 16-byte Spill
	movaps	%xmm2, %xmm0
	movaps	%xmm2, 128(%rsp)                # 16-byte Spill
	unpcklps	%xmm2, %xmm0                    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movaps	%xmm0, 848(%rsp)                # 16-byte Spill
	movaps	%xmm3, %xmm0
	movaps	%xmm3, 112(%rsp)                # 16-byte Spill
	unpcklps	%xmm3, %xmm0                    # xmm0 = xmm0[0],xmm3[0],xmm0[1],xmm3[1]
	movaps	%xmm0, 832(%rsp)                # 16-byte Spill
	movaps	%xmm4, %xmm0
	movaps	%xmm4, 96(%rsp)                 # 16-byte Spill
	unpcklps	%xmm4, %xmm0                    # xmm0 = xmm0[0],xmm4[0],xmm0[1],xmm4[1]
	movaps	%xmm0, 816(%rsp)                # 16-byte Spill
	movaps	%xmm5, %xmm0
	movaps	%xmm5, 80(%rsp)                 # 16-byte Spill
	unpcklps	%xmm5, %xmm0                    # xmm0 = xmm0[0],xmm5[0],xmm0[1],xmm5[1]
	movaps	%xmm0, 800(%rsp)                # 16-byte Spill
	movaps	%xmm6, %xmm0
	movaps	%xmm6, 64(%rsp)                 # 16-byte Spill
	unpcklps	%xmm6, %xmm0                    # xmm0 = xmm0[0],xmm6[0],xmm0[1],xmm6[1]
	movaps	%xmm0, 784(%rsp)                # 16-byte Spill
	movaps	%xmm7, %xmm0
	movaps	%xmm7, 48(%rsp)                 # 16-byte Spill
	unpcklps	%xmm7, %xmm0                    # xmm0 = xmm0[0],xmm7[0],xmm0[1],xmm7[1]
	movaps	%xmm0, 768(%rsp)                # 16-byte Spill
	movss	32(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 752(%rsp)                # 16-byte Spill
	movss	36(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 736(%rsp)                # 16-byte Spill
	movss	40(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, (%rsp)                   # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 720(%rsp)                # 16-byte Spill
	movss	44(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, -16(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 704(%rsp)                # 16-byte Spill
	movss	48(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, -32(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 688(%rsp)                # 16-byte Spill
	movss	52(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, -48(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 672(%rsp)                # 16-byte Spill
	movss	56(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, -64(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 656(%rsp)                # 16-byte Spill
	movss	60(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, -80(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 640(%rsp)                # 16-byte Spill
	movss	64(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, -96(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 624(%rsp)                # 16-byte Spill
	movss	68(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, -112(%rsp)               # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 608(%rsp)                # 16-byte Spill
	movss	72(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, -128(%rsp)               # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 592(%rsp)                # 16-byte Spill
	movss	76(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, 576(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 560(%rsp)                # 16-byte Spill
	movss	80(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, 544(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 528(%rsp)                # 16-byte Spill
	movss	84(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, 512(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 496(%rsp)                # 16-byte Spill
	movss	88(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, 480(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 464(%rsp)                # 16-byte Spill
	movss	92(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, 448(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 432(%rsp)                # 16-byte Spill
	movss	96(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, 416(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 400(%rsp)                # 16-byte Spill
	movss	100(%rdi), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, 384(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 368(%rsp)                # 16-byte Spill
	movss	104(%rdi), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, 352(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 336(%rsp)                # 16-byte Spill
	movss	108(%rdi), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, 320(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 304(%rsp)                # 16-byte Spill
	movss	112(%rdi), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, 288(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 272(%rsp)                # 16-byte Spill
	movss	116(%rdi), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, 256(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 240(%rsp)                # 16-byte Spill
	movss	120(%rdi), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, 224(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 208(%rsp)                # 16-byte Spill
	movss	124(%rdi), %xmm0                # xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	%xmm0, 192(%rsp)                # 16-byte Spill
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movaps	%xmm1, 176(%rsp)                # 16-byte Spill
	movaps	576(%rsp), %xmm14               # 16-byte Reload
	movaps	544(%rsp), %xmm13               # 16-byte Reload
	movaps	512(%rsp), %xmm12               # 16-byte Reload
	movaps	480(%rsp), %xmm11               # 16-byte Reload
	movaps	448(%rsp), %xmm10               # 16-byte Reload
	movaps	416(%rsp), %xmm9                # 16-byte Reload
	movaps	384(%rsp), %xmm8                # 16-byte Reload
	movaps	352(%rsp), %xmm7                # 16-byte Reload
	movaps	320(%rsp), %xmm6                # 16-byte Reload
	movaps	288(%rsp), %xmm5                # 16-byte Reload
	movaps	256(%rsp), %xmm4                # 16-byte Reload
	.p2align	4, 0x90
.LBB19_2:                               # %for_begin_k.outer.preheader
                                        # =>This Inner Loop Header: Depth=1
	movaps	160(%rsp), %xmm0                # 16-byte Reload
	movaps	%xmm0, %xmm1
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	unpcklpd	880(%rsp), %xmm1                # 16-byte Folded Reload
                                        # xmm1 = xmm1[0],mem[0]
	movups	(%rdx), %xmm2
	mulps	%xmm1, %xmm2
	addps	.LCPI19_0(%rip), %xmm2
	movups	20(%rdx), %xmm1
	movaps	144(%rsp), %xmm0                # 16-byte Reload
	movaps	%xmm0, %xmm3
	unpcklps	%xmm0, %xmm3                    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	unpcklpd	864(%rsp), %xmm3                # 16-byte Folded Reload
                                        # xmm3 = xmm3[0],mem[0]
	mulps	%xmm1, %xmm3
	movups	40(%rdx), %xmm1
	addps	%xmm2, %xmm3
	movaps	128(%rsp), %xmm0                # 16-byte Reload
	movaps	%xmm0, %xmm2
	unpcklps	%xmm0, %xmm2                    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	unpcklpd	848(%rsp), %xmm2                # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	mulps	%xmm1, %xmm2
	movups	60(%rdx), %xmm1
	addps	%xmm3, %xmm2
	movaps	112(%rsp), %xmm0                # 16-byte Reload
	movaps	%xmm0, %xmm3
	unpcklps	%xmm0, %xmm3                    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	unpcklpd	832(%rsp), %xmm3                # 16-byte Folded Reload
                                        # xmm3 = xmm3[0],mem[0]
	mulps	%xmm1, %xmm3
	addps	%xmm2, %xmm3
	movups	80(%rdx), %xmm1
	movaps	96(%rsp), %xmm0                 # 16-byte Reload
	movaps	%xmm0, %xmm2
	unpcklps	%xmm0, %xmm2                    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	unpcklpd	816(%rsp), %xmm2                # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	mulps	%xmm1, %xmm2
	addps	%xmm3, %xmm2
	movups	100(%rdx), %xmm1
	movaps	80(%rsp), %xmm0                 # 16-byte Reload
	movaps	%xmm0, %xmm3
	unpcklps	%xmm0, %xmm3                    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	unpcklpd	800(%rsp), %xmm3                # 16-byte Folded Reload
                                        # xmm3 = xmm3[0],mem[0]
	mulps	%xmm1, %xmm3
	addps	%xmm2, %xmm3
	movups	120(%rdx), %xmm1
	movaps	64(%rsp), %xmm0                 # 16-byte Reload
	movaps	%xmm0, %xmm2
	unpcklps	%xmm0, %xmm2                    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	unpcklpd	784(%rsp), %xmm2                # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	mulps	%xmm1, %xmm2
	addps	%xmm3, %xmm2
	movups	140(%rdx), %xmm1
	movaps	48(%rsp), %xmm0                 # 16-byte Reload
	movaps	%xmm0, %xmm3
	unpcklps	%xmm0, %xmm3                    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	unpcklpd	768(%rsp), %xmm3                # 16-byte Folded Reload
                                        # xmm3 = xmm3[0],mem[0]
	mulps	%xmm1, %xmm3
	addps	%xmm2, %xmm3
	movups	160(%rdx), %xmm1
	movaps	32(%rsp), %xmm0                 # 16-byte Reload
	movaps	%xmm0, %xmm2
	unpcklps	%xmm0, %xmm2                    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	unpcklpd	752(%rsp), %xmm2                # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	mulps	%xmm1, %xmm2
	addps	%xmm3, %xmm2
	movups	180(%rdx), %xmm1
	movaps	16(%rsp), %xmm0                 # 16-byte Reload
	movaps	%xmm0, %xmm3
	unpcklps	%xmm0, %xmm3                    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	unpcklpd	736(%rsp), %xmm3                # 16-byte Folded Reload
                                        # xmm3 = xmm3[0],mem[0]
	mulps	%xmm1, %xmm3
	addps	%xmm2, %xmm3
	movups	200(%rdx), %xmm1
	movaps	(%rsp), %xmm0                   # 16-byte Reload
	movaps	%xmm0, %xmm2
	unpcklps	%xmm0, %xmm2                    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	unpcklpd	720(%rsp), %xmm2                # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	mulps	%xmm1, %xmm2
	addps	%xmm3, %xmm2
	movups	220(%rdx), %xmm1
	movaps	-16(%rsp), %xmm0                # 16-byte Reload
	movaps	%xmm0, %xmm3
	unpcklps	%xmm0, %xmm3                    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	unpcklpd	704(%rsp), %xmm3                # 16-byte Folded Reload
                                        # xmm3 = xmm3[0],mem[0]
	mulps	%xmm1, %xmm3
	addps	%xmm2, %xmm3
	movups	240(%rdx), %xmm1
	movaps	-32(%rsp), %xmm0                # 16-byte Reload
	movaps	%xmm0, %xmm2
	unpcklps	%xmm0, %xmm2                    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	unpcklpd	688(%rsp), %xmm2                # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	mulps	%xmm1, %xmm2
	addps	%xmm3, %xmm2
	movups	260(%rdx), %xmm1
	movaps	-48(%rsp), %xmm0                # 16-byte Reload
	movaps	%xmm0, %xmm3
	unpcklps	%xmm0, %xmm3                    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	unpcklpd	672(%rsp), %xmm3                # 16-byte Folded Reload
                                        # xmm3 = xmm3[0],mem[0]
	mulps	%xmm1, %xmm3
	addps	%xmm2, %xmm3
	movups	280(%rdx), %xmm1
	movaps	-64(%rsp), %xmm0                # 16-byte Reload
	movaps	%xmm0, %xmm2
	unpcklps	%xmm0, %xmm2                    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	unpcklpd	656(%rsp), %xmm2                # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	mulps	%xmm1, %xmm2
	addps	%xmm3, %xmm2
	movups	300(%rdx), %xmm1
	movaps	-80(%rsp), %xmm0                # 16-byte Reload
	movaps	%xmm0, %xmm3
	unpcklps	%xmm0, %xmm3                    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	unpcklpd	640(%rsp), %xmm3                # 16-byte Folded Reload
                                        # xmm3 = xmm3[0],mem[0]
	mulps	%xmm1, %xmm3
	addps	%xmm2, %xmm3
	movups	320(%rdx), %xmm1
	movaps	-96(%rsp), %xmm0                # 16-byte Reload
	movaps	%xmm0, %xmm2
	unpcklps	%xmm0, %xmm2                    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	unpcklpd	624(%rsp), %xmm2                # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	mulps	%xmm1, %xmm2
	addps	%xmm3, %xmm2
	movups	340(%rdx), %xmm1
	movaps	-112(%rsp), %xmm0               # 16-byte Reload
	movaps	%xmm0, %xmm3
	unpcklps	%xmm0, %xmm3                    # xmm3 = xmm3[0],xmm0[0],xmm3[1],xmm0[1]
	unpcklpd	608(%rsp), %xmm3                # 16-byte Folded Reload
                                        # xmm3 = xmm3[0],mem[0]
	mulps	%xmm1, %xmm3
	addps	%xmm2, %xmm3
	movups	360(%rdx), %xmm1
	movaps	-128(%rsp), %xmm0               # 16-byte Reload
	movaps	%xmm0, %xmm2
	unpcklps	%xmm0, %xmm2                    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	unpcklpd	592(%rsp), %xmm2                # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	mulps	%xmm1, %xmm2
	addps	%xmm3, %xmm2
	movups	380(%rdx), %xmm1
	movaps	%xmm14, %xmm3
	unpcklps	%xmm14, %xmm3                   # xmm3 = xmm3[0],xmm14[0],xmm3[1],xmm14[1]
	unpcklpd	560(%rsp), %xmm3                # 16-byte Folded Reload
                                        # xmm3 = xmm3[0],mem[0]
	mulps	%xmm1, %xmm3
	addps	%xmm2, %xmm3
	movups	400(%rdx), %xmm1
	movaps	%xmm13, %xmm2
	unpcklps	%xmm13, %xmm2                   # xmm2 = xmm2[0],xmm13[0],xmm2[1],xmm13[1]
	unpcklpd	528(%rsp), %xmm2                # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	mulps	%xmm1, %xmm2
	addps	%xmm3, %xmm2
	movups	420(%rdx), %xmm1
	movaps	%xmm12, %xmm3
	unpcklps	%xmm12, %xmm3                   # xmm3 = xmm3[0],xmm12[0],xmm3[1],xmm12[1]
	unpcklpd	496(%rsp), %xmm3                # 16-byte Folded Reload
                                        # xmm3 = xmm3[0],mem[0]
	mulps	%xmm1, %xmm3
	addps	%xmm2, %xmm3
	movups	440(%rdx), %xmm1
	movaps	%xmm11, %xmm2
	unpcklps	%xmm11, %xmm2                   # xmm2 = xmm2[0],xmm11[0],xmm2[1],xmm11[1]
	unpcklpd	464(%rsp), %xmm2                # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	mulps	%xmm1, %xmm2
	addps	%xmm3, %xmm2
	movups	460(%rdx), %xmm1
	movaps	%xmm10, %xmm3
	unpcklps	%xmm10, %xmm3                   # xmm3 = xmm3[0],xmm10[0],xmm3[1],xmm10[1]
	unpcklpd	432(%rsp), %xmm3                # 16-byte Folded Reload
                                        # xmm3 = xmm3[0],mem[0]
	mulps	%xmm1, %xmm3
	addps	%xmm2, %xmm3
	movups	480(%rdx), %xmm1
	movaps	%xmm9, %xmm2
	unpcklps	%xmm9, %xmm2                    # xmm2 = xmm2[0],xmm9[0],xmm2[1],xmm9[1]
	unpcklpd	400(%rsp), %xmm2                # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	mulps	%xmm1, %xmm2
	addps	%xmm3, %xmm2
	movups	500(%rdx), %xmm1
	movaps	%xmm8, %xmm3
	unpcklps	%xmm8, %xmm3                    # xmm3 = xmm3[0],xmm8[0],xmm3[1],xmm8[1]
	unpcklpd	368(%rsp), %xmm3                # 16-byte Folded Reload
                                        # xmm3 = xmm3[0],mem[0]
	mulps	%xmm1, %xmm3
	addps	%xmm2, %xmm3
	movups	520(%rdx), %xmm1
	movaps	%xmm7, %xmm2
	unpcklps	%xmm7, %xmm2                    # xmm2 = xmm2[0],xmm7[0],xmm2[1],xmm7[1]
	unpcklpd	336(%rsp), %xmm2                # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	mulps	%xmm1, %xmm2
	addps	%xmm3, %xmm2
	movups	540(%rdx), %xmm1
	movaps	%xmm6, %xmm3
	unpcklps	%xmm6, %xmm3                    # xmm3 = xmm3[0],xmm6[0],xmm3[1],xmm6[1]
	unpcklpd	304(%rsp), %xmm3                # 16-byte Folded Reload
                                        # xmm3 = xmm3[0],mem[0]
	mulps	%xmm1, %xmm3
	addps	%xmm2, %xmm3
	movups	560(%rdx), %xmm1
	movaps	%xmm5, %xmm2
	unpcklps	%xmm5, %xmm2                    # xmm2 = xmm2[0],xmm5[0],xmm2[1],xmm5[1]
	unpcklpd	272(%rsp), %xmm2                # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	mulps	%xmm1, %xmm2
	addps	%xmm3, %xmm2
	movups	580(%rdx), %xmm1
	movaps	%xmm4, %xmm3
	unpcklps	%xmm4, %xmm3                    # xmm3 = xmm3[0],xmm4[0],xmm3[1],xmm4[1]
	unpcklpd	240(%rsp), %xmm3                # 16-byte Folded Reload
                                        # xmm3 = xmm3[0],mem[0]
	mulps	%xmm1, %xmm3
	addps	%xmm2, %xmm3
	movups	600(%rdx), %xmm1
	movaps	224(%rsp), %xmm0                # 16-byte Reload
	movaps	%xmm0, %xmm2
	unpcklps	%xmm0, %xmm2                    # xmm2 = xmm2[0],xmm0[0],xmm2[1],xmm0[1]
	unpcklpd	208(%rsp), %xmm2                # 16-byte Folded Reload
                                        # xmm2 = xmm2[0],mem[0]
	mulps	%xmm1, %xmm2
	addps	%xmm3, %xmm2
	movups	620(%rdx), %xmm1
	movaps	192(%rsp), %xmm3                # 16-byte Reload
	movaps	%xmm3, %xmm15
	unpcklps	%xmm3, %xmm15                   # xmm15 = xmm15[0],xmm3[0],xmm15[1],xmm3[1]
	unpcklpd	176(%rsp), %xmm15               # 16-byte Folded Reload
                                        # xmm15 = xmm15[0],mem[0]
	mulps	%xmm1, %xmm15
	addps	%xmm2, %xmm15
	movss	36(%rdx), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	mulss	144(%rsp), %xmm1                # 16-byte Folded Reload
	movss	16(%rdx), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	mulss	160(%rsp), %xmm2                # 16-byte Folded Reload
	addss	.LCPI19_1(%rip), %xmm2
	addss	%xmm1, %xmm2
	movss	56(%rdx), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	mulss	128(%rsp), %xmm1                # 16-byte Folded Reload
	addss	%xmm2, %xmm1
	movss	76(%rdx), %xmm2                 # xmm2 = mem[0],zero,zero,zero
	mulss	112(%rsp), %xmm2                # 16-byte Folded Reload
	addss	%xmm1, %xmm2
	movss	96(%rdx), %xmm1                 # xmm1 = mem[0],zero,zero,zero
	mulss	96(%rsp), %xmm1                 # 16-byte Folded Reload
	addss	%xmm2, %xmm1
	movss	116(%rdx), %xmm2                # xmm2 = mem[0],zero,zero,zero
	mulss	80(%rsp), %xmm2                 # 16-byte Folded Reload
	addss	%xmm1, %xmm2
	movss	136(%rdx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	64(%rsp), %xmm1                 # 16-byte Folded Reload
	addss	%xmm2, %xmm1
	movss	156(%rdx), %xmm2                # xmm2 = mem[0],zero,zero,zero
	mulss	48(%rsp), %xmm2                 # 16-byte Folded Reload
	addss	%xmm1, %xmm2
	movss	176(%rdx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	32(%rsp), %xmm1                 # 16-byte Folded Reload
	addss	%xmm2, %xmm1
	movss	196(%rdx), %xmm2                # xmm2 = mem[0],zero,zero,zero
	mulss	16(%rsp), %xmm2                 # 16-byte Folded Reload
	addss	%xmm1, %xmm2
	movss	216(%rdx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	(%rsp), %xmm1                   # 16-byte Folded Reload
	addss	%xmm2, %xmm1
	movss	236(%rdx), %xmm2                # xmm2 = mem[0],zero,zero,zero
	mulss	-16(%rsp), %xmm2                # 16-byte Folded Reload
	addss	%xmm1, %xmm2
	movss	256(%rdx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	-32(%rsp), %xmm1                # 16-byte Folded Reload
	addss	%xmm2, %xmm1
	movss	276(%rdx), %xmm2                # xmm2 = mem[0],zero,zero,zero
	mulss	-48(%rsp), %xmm2                # 16-byte Folded Reload
	addss	%xmm1, %xmm2
	movss	296(%rdx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	-64(%rsp), %xmm1                # 16-byte Folded Reload
	addss	%xmm2, %xmm1
	movss	316(%rdx), %xmm2                # xmm2 = mem[0],zero,zero,zero
	mulss	-80(%rsp), %xmm2                # 16-byte Folded Reload
	addss	%xmm1, %xmm2
	movss	336(%rdx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	-96(%rsp), %xmm1                # 16-byte Folded Reload
	addss	%xmm2, %xmm1
	movss	356(%rdx), %xmm2                # xmm2 = mem[0],zero,zero,zero
	mulss	-112(%rsp), %xmm2               # 16-byte Folded Reload
	addss	%xmm1, %xmm2
	movss	376(%rdx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	-128(%rsp), %xmm1               # 16-byte Folded Reload
	addss	%xmm2, %xmm1
	movss	396(%rdx), %xmm2                # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm14, %xmm2
	addss	%xmm1, %xmm2
	movss	416(%rdx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm13, %xmm1
	addss	%xmm2, %xmm1
	movss	436(%rdx), %xmm2                # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm12, %xmm2
	addss	%xmm1, %xmm2
	movss	456(%rdx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm11, %xmm1
	addss	%xmm2, %xmm1
	movss	476(%rdx), %xmm2                # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm10, %xmm2
	addss	%xmm1, %xmm2
	movss	496(%rdx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm9, %xmm1
	addss	%xmm2, %xmm1
	movss	516(%rdx), %xmm2                # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm8, %xmm2
	addss	%xmm1, %xmm2
	movss	536(%rdx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm7, %xmm1
	addss	%xmm2, %xmm1
	movss	556(%rdx), %xmm2                # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm6, %xmm2
	addss	%xmm1, %xmm2
	movss	576(%rdx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm5, %xmm1
	addss	%xmm2, %xmm1
	movss	596(%rdx), %xmm2                # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm4, %xmm2
	addss	%xmm1, %xmm2
	movss	616(%rdx), %xmm1                # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	addss	%xmm2, %xmm1
	movss	636(%rdx), %xmm2                # xmm2 = mem[0],zero,zero,zero
	mulss	%xmm3, %xmm2
	addss	%xmm1, %xmm2
	movss	%xmm2, 16(%rsi)
	movups	%xmm15, (%rsi)
	addq	$20, %rsi
	addq	$640, %rdx                      # imm = 0x280
	decq	%rax
	jne	.LBB19_2
.LBB19_3:                               # %for_end_x.outer.y.outer.fused
	xorl	%eax, %eax
	addq	$904, %rsp                      # imm = 0x388
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end19:
	.size	.L__tvm_parallel_lambda.89, .Lfunc_end19-.L__tvm_parallel_lambda.89
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function tvmgen_default_fused_nn_max_pool2d
.LCPI20_0:
	.long	784                             # 0x310
	.long	784                             # 0x310
	.long	28                              # 0x1c
	.long	1                               # 0x1
.LCPI20_1:
	.long	196                             # 0xc4
	.long	196                             # 0xc4
	.long	14                              # 0xe
	.long	1                               # 0x1
	.text
	.globl	tvmgen_default_fused_nn_max_pool2d
	.p2align	4, 0x90
	.type	tvmgen_default_fused_nn_max_pool2d,@function
tvmgen_default_fused_nn_max_pool2d:     # @tvmgen_default_fused_nn_max_pool2d
.Lfunc_begin20:
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpl	$2, %edx
	jne	.LBB20_1
# %bb.3:                                # %assert_end
	movl	(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB20_5
# %bb.4:                                # %assert_end
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB20_5
# %bb.6:                                # %assert_end2
	movl	4(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB20_8
# %bb.7:                                # %assert_end2
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB20_8
# %bb.9:                                # %assert_end4
	movq	(%rdi), %rcx
	cmpl	$4, 16(%rcx)
	jne	.LBB20_10
# %bb.11:                               # %assert_end8
	cmpw	$1, 22(%rcx)
	jne	.LBB20_14
# %bb.12:                               # %assert_end8
	cmpb	$32, 21(%rcx)
	jne	.LBB20_14
# %bb.13:                               # %assert_end8
	cmpb	$2, 20(%rcx)
	jne	.LBB20_14
# %bb.15:                               # %assert_end10
	movq	24(%rcx), %rax
	cmpl	$1, (%rax)
	jne	.LBB20_16
# %bb.17:                               # %assert_end12
	cmpl	$1, 8(%rax)
	jne	.LBB20_18
# %bb.19:                               # %assert_end14
	cmpl	$28, 16(%rax)
	jne	.LBB20_20
# %bb.21:                               # %assert_end16
	cmpl	$28, 24(%rax)
	jne	.LBB20_22
# %bb.23:                               # %assert_end18
	movq	8(%rdi), %rax
	movq	(%rcx), %rsi
	movq	32(%rcx), %rdx
	movl	12(%rcx), %r8d
	movq	(%rax), %rdi
	movq	24(%rax), %r10
	movq	32(%rax), %r9
	testq	%rdx, %rdx
	je	.LBB20_25
# %bb.24:                               # %if_then
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	shufps	$136, %xmm1, %xmm0              # xmm0 = xmm0[0,2],xmm1[0,2]
	pcmpeqd	.LCPI20_0(%rip), %xmm0
	movmskps	%xmm0, %edx
	cmpl	$15, %edx
	jne	.LBB20_53
.LBB20_25:                              # %if_end
	cmpq	$0, 40(%rcx)
	jne	.LBB20_26
# %bb.27:                               # %assert_end22
	cmpl	$1, 8(%rcx)
	jne	.LBB20_28
# %bb.29:                               # %assert_end24
	cmpl	$4, 16(%rax)
	jne	.LBB20_30
# %bb.31:                               # %assert_end28
	cmpw	$1, 22(%rax)
	jne	.LBB20_34
# %bb.32:                               # %assert_end28
	cmpb	$32, 21(%rax)
	jne	.LBB20_34
# %bb.33:                               # %assert_end28
	cmpb	$2, 20(%rax)
	jne	.LBB20_34
# %bb.35:                               # %assert_end30
	cmpl	$1, (%r10)
	jne	.LBB20_36
# %bb.37:                               # %assert_end32
	cmpl	$1, 8(%r10)
	jne	.LBB20_38
# %bb.39:                               # %assert_end34
	cmpl	$14, 16(%r10)
	jne	.LBB20_40
# %bb.41:                               # %assert_end36
	cmpl	$14, 24(%r10)
	jne	.LBB20_42
# %bb.43:                               # %assert_end38
	testq	%r9, %r9
	je	.LBB20_45
# %bb.44:                               # %if_then39
	movups	(%r9), %xmm0
	movups	16(%r9), %xmm1
	shufps	$136, %xmm1, %xmm0              # xmm0 = xmm0[0,2],xmm1[0,2]
	pcmpeqd	.LCPI20_1(%rip), %xmm0
	movmskps	%xmm0, %ecx
	cmpl	$15, %ecx
	jne	.LBB20_54
.LBB20_45:                              # %if_end40
	cmpq	$0, 40(%rax)
	jne	.LBB20_46
# %bb.47:                               # %assert_end44
	cmpl	$1, 8(%rax)
	jne	.LBB20_48
# %bb.49:                               # %assert_end46
	cmpl	12(%rax), %r8d
	jne	.LBB20_50
# %bb.51:                               # %assert_end48
	callq	tvmgen_default_fused_nn_max_pool2d_compute_
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB20_5:                               # %assert_fail1
	.cfi_def_cfa_offset 16
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.91, %edi
	jmp	.LBB20_2
.LBB20_8:                               # %assert_fail3
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.92, %edi
.LBB20_2:                               # %common.ret
	callq	*(%rax)
	movl	$-1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB20_1:                               # %assert_fail
	.cfi_def_cfa_offset 16
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.90, %edi
	jmp	.LBB20_2
.LBB20_10:                              # %assert_fail5
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.3, %edi
	jmp	.LBB20_2
.LBB20_14:                              # %assert_fail9
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.4, %edi
	jmp	.LBB20_2
.LBB20_16:                              # %assert_fail11
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.5, %edi
	jmp	.LBB20_2
.LBB20_18:                              # %assert_fail13
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.64, %edi
	jmp	.LBB20_2
.LBB20_20:                              # %assert_fail15
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.93, %edi
	jmp	.LBB20_2
.LBB20_22:                              # %assert_fail17
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.94, %edi
	jmp	.LBB20_2
.LBB20_53:                              # %assert_fail19
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.95, %edi
	jmp	.LBB20_2
.LBB20_26:                              # %assert_fail21
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.10, %edi
	jmp	.LBB20_2
.LBB20_28:                              # %assert_fail23
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.11, %edi
	jmp	.LBB20_2
.LBB20_30:                              # %assert_fail25
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.68, %edi
	jmp	.LBB20_2
.LBB20_34:                              # %assert_fail29
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.13, %edi
	jmp	.LBB20_2
.LBB20_36:                              # %assert_fail31
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.14, %edi
	jmp	.LBB20_2
.LBB20_38:                              # %assert_fail33
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.69, %edi
	jmp	.LBB20_2
.LBB20_40:                              # %assert_fail35
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.96, %edi
	jmp	.LBB20_2
.LBB20_42:                              # %assert_fail37
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.97, %edi
	jmp	.LBB20_2
.LBB20_54:                              # %assert_fail41
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.98, %edi
	jmp	.LBB20_2
.LBB20_46:                              # %assert_fail43
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.17, %edi
	jmp	.LBB20_2
.LBB20_48:                              # %assert_fail45
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.18, %edi
	jmp	.LBB20_2
.LBB20_50:                              # %assert_fail47
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.19, %edi
	jmp	.LBB20_2
.Lfunc_end20:
	.size	tvmgen_default_fused_nn_max_pool2d, .Lfunc_end20-tvmgen_default_fused_nn_max_pool2d
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function tvmgen_default_fused_nn_max_pool2d_compute_
.LCPI21_0:
	.long	0xff7fffff                      # float -3.40282347E+38
	.text
	.p2align	4, 0x90
	.type	tvmgen_default_fused_nn_max_pool2d_compute_,@function
tvmgen_default_fused_nn_max_pool2d_compute_: # @tvmgen_default_fused_nn_max_pool2d_compute_
.Lfunc_begin21:
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$-784, %rax                     # imm = 0xFCF0
	movss	.LCPI21_0(%rip), %xmm0          # xmm0 = mem[0],zero,zero,zero
	.p2align	4, 0x90
.LBB21_1:                               # %for_begin_ax3.preheader
                                        # =>This Inner Loop Header: Depth=1
	movaps	%xmm0, %xmm1
	maxss	3136(%rsi,%rax,4), %xmm1
	maxss	3140(%rsi,%rax,4), %xmm1
	maxss	3248(%rsi,%rax,4), %xmm1
	maxss	3252(%rsi,%rax,4), %xmm1
	movss	%xmm1, 784(%rdi,%rax)
	movaps	%xmm0, %xmm1
	maxss	3144(%rsi,%rax,4), %xmm1
	maxss	3148(%rsi,%rax,4), %xmm1
	maxss	3256(%rsi,%rax,4), %xmm1
	maxss	3260(%rsi,%rax,4), %xmm1
	movss	%xmm1, 788(%rdi,%rax)
	movaps	%xmm0, %xmm1
	maxss	3152(%rsi,%rax,4), %xmm1
	maxss	3156(%rsi,%rax,4), %xmm1
	maxss	3264(%rsi,%rax,4), %xmm1
	maxss	3268(%rsi,%rax,4), %xmm1
	movss	%xmm1, 792(%rdi,%rax)
	movaps	%xmm0, %xmm1
	maxss	3160(%rsi,%rax,4), %xmm1
	maxss	3164(%rsi,%rax,4), %xmm1
	maxss	3272(%rsi,%rax,4), %xmm1
	maxss	3276(%rsi,%rax,4), %xmm1
	movss	%xmm1, 796(%rdi,%rax)
	movaps	%xmm0, %xmm1
	maxss	3168(%rsi,%rax,4), %xmm1
	maxss	3172(%rsi,%rax,4), %xmm1
	maxss	3280(%rsi,%rax,4), %xmm1
	maxss	3284(%rsi,%rax,4), %xmm1
	movss	%xmm1, 800(%rdi,%rax)
	movaps	%xmm0, %xmm1
	maxss	3176(%rsi,%rax,4), %xmm1
	maxss	3180(%rsi,%rax,4), %xmm1
	maxss	3288(%rsi,%rax,4), %xmm1
	maxss	3292(%rsi,%rax,4), %xmm1
	movss	%xmm1, 804(%rdi,%rax)
	movaps	%xmm0, %xmm1
	maxss	3184(%rsi,%rax,4), %xmm1
	maxss	3188(%rsi,%rax,4), %xmm1
	maxss	3296(%rsi,%rax,4), %xmm1
	maxss	3300(%rsi,%rax,4), %xmm1
	movss	%xmm1, 808(%rdi,%rax)
	movaps	%xmm0, %xmm1
	maxss	3192(%rsi,%rax,4), %xmm1
	maxss	3196(%rsi,%rax,4), %xmm1
	maxss	3304(%rsi,%rax,4), %xmm1
	maxss	3308(%rsi,%rax,4), %xmm1
	movss	%xmm1, 812(%rdi,%rax)
	movaps	%xmm0, %xmm1
	maxss	3200(%rsi,%rax,4), %xmm1
	maxss	3204(%rsi,%rax,4), %xmm1
	maxss	3312(%rsi,%rax,4), %xmm1
	maxss	3316(%rsi,%rax,4), %xmm1
	movss	%xmm1, 816(%rdi,%rax)
	movaps	%xmm0, %xmm1
	maxss	3208(%rsi,%rax,4), %xmm1
	maxss	3212(%rsi,%rax,4), %xmm1
	maxss	3320(%rsi,%rax,4), %xmm1
	maxss	3324(%rsi,%rax,4), %xmm1
	movss	%xmm1, 820(%rdi,%rax)
	movaps	%xmm0, %xmm1
	maxss	3216(%rsi,%rax,4), %xmm1
	maxss	3220(%rsi,%rax,4), %xmm1
	maxss	3328(%rsi,%rax,4), %xmm1
	maxss	3332(%rsi,%rax,4), %xmm1
	movss	%xmm1, 824(%rdi,%rax)
	movaps	%xmm0, %xmm1
	maxss	3224(%rsi,%rax,4), %xmm1
	maxss	3228(%rsi,%rax,4), %xmm1
	maxss	3336(%rsi,%rax,4), %xmm1
	maxss	3340(%rsi,%rax,4), %xmm1
	movss	%xmm1, 828(%rdi,%rax)
	movaps	%xmm0, %xmm1
	maxss	3232(%rsi,%rax,4), %xmm1
	maxss	3236(%rsi,%rax,4), %xmm1
	maxss	3344(%rsi,%rax,4), %xmm1
	maxss	3348(%rsi,%rax,4), %xmm1
	movss	%xmm1, 832(%rdi,%rax)
	movaps	%xmm0, %xmm1
	maxss	3240(%rsi,%rax,4), %xmm1
	maxss	3244(%rsi,%rax,4), %xmm1
	maxss	3352(%rsi,%rax,4), %xmm1
	maxss	3356(%rsi,%rax,4), %xmm1
	movss	%xmm1, 836(%rdi,%rax)
	addq	$56, %rax
	jne	.LBB21_1
# %bb.2:                                # %for_end_ax2
	retq
.Lfunc_end21:
	.size	tvmgen_default_fused_nn_max_pool2d_compute_, .Lfunc_end21-tvmgen_default_fused_nn_max_pool2d_compute_
	.cfi_endproc
                                        # -- End function
	.globl	tvmgen_default_fused_nn_relu    # -- Begin function tvmgen_default_fused_nn_relu
	.p2align	4, 0x90
	.type	tvmgen_default_fused_nn_relu,@function
tvmgen_default_fused_nn_relu:           # @tvmgen_default_fused_nn_relu
.Lfunc_begin22:
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpl	$2, %edx
	jne	.LBB22_1
# %bb.3:                                # %assert_end
	movl	(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB22_5
# %bb.4:                                # %assert_end
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB22_5
# %bb.6:                                # %assert_end2
	movl	4(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB22_8
# %bb.7:                                # %assert_end2
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB22_8
# %bb.9:                                # %assert_end4
	movq	(%rdi), %rcx
	cmpl	$2, 16(%rcx)
	jne	.LBB22_10
# %bb.11:                               # %assert_end8
	cmpw	$1, 22(%rcx)
	jne	.LBB22_14
# %bb.12:                               # %assert_end8
	cmpb	$32, 21(%rcx)
	jne	.LBB22_14
# %bb.13:                               # %assert_end8
	cmpb	$2, 20(%rcx)
	jne	.LBB22_14
# %bb.15:                               # %assert_end10
	movq	24(%rcx), %rax
	cmpl	$1, (%rax)
	jne	.LBB22_16
# %bb.17:                               # %assert_end12
	cmpl	$32, 8(%rax)
	jne	.LBB22_18
# %bb.19:                               # %assert_end14
	movq	8(%rdi), %rax
	movq	(%rcx), %rsi
	movq	32(%rcx), %rdx
	movl	12(%rcx), %r8d
	movq	(%rax), %rdi
	movq	24(%rax), %r9
	movq	32(%rax), %r10
	testq	%rdx, %rdx
	je	.LBB22_22
# %bb.20:                               # %if_then
	cmpl	$32, (%rdx)
	jne	.LBB22_47
# %bb.21:                               # %if_then
	cmpl	$1, 8(%rdx)
	jne	.LBB22_47
.LBB22_22:                              # %if_end
	cmpq	$0, 40(%rcx)
	jne	.LBB22_23
# %bb.24:                               # %assert_end18
	cmpl	$1, 8(%rcx)
	jne	.LBB22_25
# %bb.26:                               # %assert_end20
	cmpl	$2, 16(%rax)
	jne	.LBB22_27
# %bb.28:                               # %assert_end24
	cmpw	$1, 22(%rax)
	jne	.LBB22_31
# %bb.29:                               # %assert_end24
	cmpb	$32, 21(%rax)
	jne	.LBB22_31
# %bb.30:                               # %assert_end24
	cmpb	$2, 20(%rax)
	jne	.LBB22_31
# %bb.32:                               # %assert_end26
	cmpl	$1, (%r9)
	jne	.LBB22_33
# %bb.34:                               # %assert_end28
	cmpl	$32, 8(%r9)
	jne	.LBB22_35
# %bb.36:                               # %assert_end30
	testq	%r10, %r10
	je	.LBB22_39
# %bb.37:                               # %if_then31
	cmpl	$32, (%r10)
	jne	.LBB22_48
# %bb.38:                               # %if_then31
	cmpl	$1, 8(%r10)
	jne	.LBB22_48
.LBB22_39:                              # %if_end32
	cmpq	$0, 40(%rax)
	jne	.LBB22_40
# %bb.41:                               # %assert_end36
	cmpl	$1, 8(%rax)
	jne	.LBB22_42
# %bb.43:                               # %assert_end38
	cmpl	12(%rax), %r8d
	jne	.LBB22_44
# %bb.45:                               # %assert_end40
	callq	tvmgen_default_fused_nn_relu_compute_
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB22_5:                               # %assert_fail1
	.cfi_def_cfa_offset 16
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.100, %edi
	jmp	.LBB22_2
.LBB22_8:                               # %assert_fail3
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.101, %edi
.LBB22_2:                               # %common.ret
	callq	*(%rax)
	movl	$-1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB22_1:                               # %assert_fail
	.cfi_def_cfa_offset 16
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.99, %edi
	jmp	.LBB22_2
.LBB22_10:                              # %assert_fail5
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.44, %edi
	jmp	.LBB22_2
.LBB22_14:                              # %assert_fail9
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.4, %edi
	jmp	.LBB22_2
.LBB22_16:                              # %assert_fail11
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.5, %edi
	jmp	.LBB22_2
.LBB22_18:                              # %assert_fail13
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.45, %edi
	jmp	.LBB22_2
.LBB22_47:                              # %assert_fail15
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.46, %edi
	jmp	.LBB22_2
.LBB22_23:                              # %assert_fail17
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.10, %edi
	jmp	.LBB22_2
.LBB22_25:                              # %assert_fail19
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.11, %edi
	jmp	.LBB22_2
.LBB22_27:                              # %assert_fail21
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.12, %edi
	jmp	.LBB22_2
.LBB22_31:                              # %assert_fail25
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.13, %edi
	jmp	.LBB22_2
.LBB22_33:                              # %assert_fail27
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.14, %edi
	jmp	.LBB22_2
.LBB22_35:                              # %assert_fail29
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.87, %edi
	jmp	.LBB22_2
.LBB22_48:                              # %assert_fail33
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.88, %edi
	jmp	.LBB22_2
.LBB22_40:                              # %assert_fail35
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.17, %edi
	jmp	.LBB22_2
.LBB22_42:                              # %assert_fail37
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.18, %edi
	jmp	.LBB22_2
.LBB22_44:                              # %assert_fail39
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.19, %edi
	jmp	.LBB22_2
.Lfunc_end22:
	.size	tvmgen_default_fused_nn_relu, .Lfunc_end22-tvmgen_default_fused_nn_relu
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function tvmgen_default_fused_nn_relu_compute_
	.type	tvmgen_default_fused_nn_relu_compute_,@function
tvmgen_default_fused_nn_relu_compute_:  # @tvmgen_default_fused_nn_relu_compute_
.Lfunc_begin23:
	.cfi_startproc
# %bb.0:                                # %entry
	movaps	(%rsi), %xmm0
	movaps	16(%rsi), %xmm1
	movaps	32(%rsi), %xmm2
	movaps	48(%rsi), %xmm3
	xorps	%xmm4, %xmm4
	maxps	%xmm4, %xmm1
	maxps	%xmm4, %xmm0
	maxps	%xmm4, %xmm3
	maxps	%xmm4, %xmm2
	movaps	%xmm2, 32(%rdi)
	movaps	%xmm3, 48(%rdi)
	movaps	%xmm0, (%rdi)
	movaps	%xmm1, 16(%rdi)
	movaps	64(%rsi), %xmm0
	movaps	80(%rsi), %xmm1
	movaps	96(%rsi), %xmm2
	movaps	112(%rsi), %xmm3
	maxps	%xmm4, %xmm2
	maxps	%xmm4, %xmm1
	maxps	%xmm4, %xmm0
	maxps	%xmm4, %xmm3
	movaps	%xmm3, 112(%rdi)
	movaps	%xmm0, 64(%rdi)
	movaps	%xmm1, 80(%rdi)
	movaps	%xmm2, 96(%rdi)
	retq
.Lfunc_end23:
	.size	tvmgen_default_fused_nn_relu_compute_, .Lfunc_end23-tvmgen_default_fused_nn_relu_compute_
	.cfi_endproc
                                        # -- End function
	.globl	tvmgen_default_fused_nn_softmax # -- Begin function tvmgen_default_fused_nn_softmax
	.p2align	4, 0x90
	.type	tvmgen_default_fused_nn_softmax,@function
tvmgen_default_fused_nn_softmax:        # @tvmgen_default_fused_nn_softmax
.Lfunc_begin24:
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpl	$2, %edx
	jne	.LBB24_1
# %bb.3:                                # %assert_end
	movl	(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB24_5
# %bb.4:                                # %assert_end
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB24_5
# %bb.6:                                # %assert_end2
	movl	4(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB24_8
# %bb.7:                                # %assert_end2
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB24_8
# %bb.9:                                # %assert_end4
	movq	(%rdi), %rcx
	cmpl	$2, 16(%rcx)
	jne	.LBB24_10
# %bb.11:                               # %assert_end8
	cmpw	$1, 22(%rcx)
	jne	.LBB24_14
# %bb.12:                               # %assert_end8
	cmpb	$32, 21(%rcx)
	jne	.LBB24_14
# %bb.13:                               # %assert_end8
	cmpb	$2, 20(%rcx)
	jne	.LBB24_14
# %bb.15:                               # %assert_end10
	movq	24(%rcx), %rax
	cmpl	$1, (%rax)
	jne	.LBB24_16
# %bb.17:                               # %assert_end12
	cmpl	$10, 8(%rax)
	jne	.LBB24_18
# %bb.19:                               # %assert_end14
	movq	8(%rdi), %rax
	movq	(%rcx), %rdi
	movq	32(%rcx), %rdx
	movl	12(%rcx), %r8d
	movq	(%rax), %rsi
	movq	24(%rax), %r9
	movq	32(%rax), %r10
	testq	%rdx, %rdx
	je	.LBB24_22
# %bb.20:                               # %if_then
	cmpl	$10, (%rdx)
	jne	.LBB24_47
# %bb.21:                               # %if_then
	cmpl	$1, 8(%rdx)
	jne	.LBB24_47
.LBB24_22:                              # %if_end
	cmpq	$0, 40(%rcx)
	jne	.LBB24_23
# %bb.24:                               # %assert_end18
	cmpl	$1, 8(%rcx)
	jne	.LBB24_25
# %bb.26:                               # %assert_end20
	cmpl	$2, 16(%rax)
	jne	.LBB24_27
# %bb.28:                               # %assert_end24
	cmpw	$1, 22(%rax)
	jne	.LBB24_31
# %bb.29:                               # %assert_end24
	cmpb	$32, 21(%rax)
	jne	.LBB24_31
# %bb.30:                               # %assert_end24
	cmpb	$2, 20(%rax)
	jne	.LBB24_31
# %bb.32:                               # %assert_end26
	cmpl	$1, (%r9)
	jne	.LBB24_33
# %bb.34:                               # %assert_end28
	cmpl	$10, 8(%r9)
	jne	.LBB24_35
# %bb.36:                               # %assert_end30
	testq	%r10, %r10
	je	.LBB24_39
# %bb.37:                               # %if_then31
	cmpl	$10, (%r10)
	jne	.LBB24_48
# %bb.38:                               # %if_then31
	cmpl	$1, 8(%r10)
	jne	.LBB24_48
.LBB24_39:                              # %if_end32
	cmpq	$0, 40(%rax)
	jne	.LBB24_40
# %bb.41:                               # %assert_end36
	cmpl	$1, 8(%rax)
	jne	.LBB24_42
# %bb.43:                               # %assert_end38
	cmpl	12(%rax), %r8d
	jne	.LBB24_44
# %bb.45:                               # %assert_end40
	callq	tvmgen_default_fused_nn_softmax_compute_
	xorl	%eax, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB24_5:                               # %assert_fail1
	.cfi_def_cfa_offset 16
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.103, %edi
	jmp	.LBB24_2
.LBB24_8:                               # %assert_fail3
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.104, %edi
.LBB24_2:                               # %common.ret
	callq	*(%rax)
	movl	$-1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB24_1:                               # %assert_fail
	.cfi_def_cfa_offset 16
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.102, %edi
	jmp	.LBB24_2
.LBB24_10:                              # %assert_fail5
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.44, %edi
	jmp	.LBB24_2
.LBB24_14:                              # %assert_fail9
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.4, %edi
	jmp	.LBB24_2
.LBB24_16:                              # %assert_fail11
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.5, %edi
	jmp	.LBB24_2
.LBB24_18:                              # %assert_fail13
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.55, %edi
	jmp	.LBB24_2
.LBB24_47:                              # %assert_fail15
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.56, %edi
	jmp	.LBB24_2
.LBB24_23:                              # %assert_fail17
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.10, %edi
	jmp	.LBB24_2
.LBB24_25:                              # %assert_fail19
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.11, %edi
	jmp	.LBB24_2
.LBB24_27:                              # %assert_fail21
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.12, %edi
	jmp	.LBB24_2
.LBB24_31:                              # %assert_fail25
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.13, %edi
	jmp	.LBB24_2
.LBB24_33:                              # %assert_fail27
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.14, %edi
	jmp	.LBB24_2
.LBB24_35:                              # %assert_fail29
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.105, %edi
	jmp	.LBB24_2
.LBB24_48:                              # %assert_fail33
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.106, %edi
	jmp	.LBB24_2
.LBB24_40:                              # %assert_fail35
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.17, %edi
	jmp	.LBB24_2
.LBB24_42:                              # %assert_fail37
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.18, %edi
	jmp	.LBB24_2
.LBB24_44:                              # %assert_fail39
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.19, %edi
	jmp	.LBB24_2
.Lfunc_end24:
	.size	tvmgen_default_fused_nn_softmax, .Lfunc_end24-tvmgen_default_fused_nn_softmax
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function tvmgen_default_fused_nn_softmax_compute_
.LCPI25_0:
	.long	0xff7fffff                      # float -3.40282347E+38
	.text
	.p2align	4, 0x90
	.type	tvmgen_default_fused_nn_softmax_compute_,@function
tvmgen_default_fused_nn_softmax_compute_: # @tvmgen_default_fused_nn_softmax_compute_
.Lfunc_begin25:
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rbx
	.cfi_def_cfa_offset 16
	subq	$176, %rsp
	.cfi_def_cfa_offset 192
	.cfi_offset %rbx, -16
	movq	%rsi, %rbx
	movaps	(%rdi), %xmm3
	movaps	16(%rdi), %xmm2
	movaps	%xmm2, 32(%rsp)                 # 16-byte Spill
	movss	.LCPI25_0(%rip), %xmm1          # xmm1 = mem[0],zero,zero,zero
	maxss	%xmm3, %xmm1
	movaps	%xmm3, %xmm0
	shufps	$85, %xmm3, %xmm0               # xmm0 = xmm0[1,1],xmm3[1,1]
	maxss	%xmm0, %xmm1
	movaps	%xmm3, %xmm0
	unpckhpd	%xmm3, %xmm0                    # xmm0 = xmm0[1],xmm3[1]
	maxss	%xmm0, %xmm1
	movaps	%xmm3, %xmm0
	shufps	$255, %xmm3, %xmm0              # xmm0 = xmm0[3,3],xmm3[3,3]
	maxss	%xmm0, %xmm1
	maxss	%xmm2, %xmm1
	movaps	%xmm2, %xmm0
	shufps	$85, %xmm2, %xmm0               # xmm0 = xmm0[1,1],xmm2[1,1]
	maxss	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	unpckhpd	%xmm2, %xmm0                    # xmm0 = xmm0[1],xmm2[1]
	maxss	%xmm0, %xmm1
	movaps	%xmm2, %xmm0
	shufps	$255, %xmm2, %xmm0              # xmm0 = xmm0[3,3],xmm2[3,3]
	maxss	%xmm0, %xmm1
	movss	32(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
	maxss	%xmm0, %xmm1
	movss	36(%rdi), %xmm0                 # xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, 60(%rsp)                 # 4-byte Spill
	maxss	%xmm0, %xmm1
	movaps	%xmm1, 128(%rsp)                # 16-byte Spill
	shufps	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	movaps	%xmm1, 64(%rsp)                 # 16-byte Spill
	movaps	%xmm3, %xmm0
	subps	%xmm1, %xmm0
	movaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	shufps	$255, %xmm0, %xmm0              # xmm0 = xmm0[3,3,3,3]
	callq	expf@PLT
	movaps	%xmm0, 144(%rsp)                # 16-byte Spill
	movaps	16(%rsp), %xmm0                 # 16-byte Reload
	movhlps	%xmm0, %xmm0                    # xmm0 = xmm0[1,1]
	callq	expf@PLT
	unpcklps	144(%rsp), %xmm0                # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	movaps	%xmm0, 112(%rsp)                # 16-byte Spill
	movaps	16(%rsp), %xmm0                 # 16-byte Reload
	callq	expf@PLT
	movaps	%xmm0, 80(%rsp)                 # 16-byte Spill
	movaps	16(%rsp), %xmm0                 # 16-byte Reload
	shufps	$85, %xmm0, %xmm0               # xmm0 = xmm0[1,1,1,1]
	callq	expf@PLT
	movaps	%xmm0, 160(%rsp)                # 16-byte Spill
	movaps	80(%rsp), %xmm1                 # 16-byte Reload
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	unpcklpd	112(%rsp), %xmm1                # 16-byte Folded Reload
                                        # xmm1 = xmm1[0],mem[0]
	movaps	%xmm1, 80(%rsp)                 # 16-byte Spill
	movaps	32(%rsp), %xmm0                 # 16-byte Reload
	subps	64(%rsp), %xmm0                 # 16-byte Folded Reload
	movaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	shufps	$255, %xmm0, %xmm0              # xmm0 = xmm0[3,3,3,3]
	callq	expf@PLT
	movaps	%xmm0, 64(%rsp)                 # 16-byte Spill
	movaps	32(%rsp), %xmm0                 # 16-byte Reload
	movhlps	%xmm0, %xmm0                    # xmm0 = xmm0[1,1]
	callq	expf@PLT
	unpcklps	64(%rsp), %xmm0                 # 16-byte Folded Reload
                                        # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	movaps	%xmm0, 96(%rsp)                 # 16-byte Spill
	movaps	32(%rsp), %xmm0                 # 16-byte Reload
	callq	expf@PLT
	movaps	%xmm0, 16(%rsp)                 # 16-byte Spill
	movaps	32(%rsp), %xmm0                 # 16-byte Reload
	shufps	$85, %xmm0, %xmm0               # xmm0 = xmm0[1,1,1,1]
	callq	expf@PLT
	movaps	%xmm0, 32(%rsp)                 # 16-byte Spill
	movaps	16(%rsp), %xmm1                 # 16-byte Reload
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	unpcklpd	96(%rsp), %xmm1                 # 16-byte Folded Reload
                                        # xmm1 = xmm1[0],mem[0]
	movaps	%xmm1, 16(%rsp)                 # 16-byte Spill
	movss	12(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	subss	128(%rsp), %xmm0                # 16-byte Folded Reload
	callq	expf@PLT
	movss	%xmm0, 12(%rsp)                 # 4-byte Spill
	movss	60(%rsp), %xmm0                 # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	subss	128(%rsp), %xmm0                # 16-byte Folded Reload
	callq	expf@PLT
	xorps	%xmm1, %xmm1
	movaps	80(%rsp), %xmm2                 # 16-byte Reload
	addss	%xmm2, %xmm1
	addss	160(%rsp), %xmm1                # 16-byte Folded Reload
	addss	112(%rsp), %xmm1                # 16-byte Folded Reload
	addss	144(%rsp), %xmm1                # 16-byte Folded Reload
	movaps	16(%rsp), %xmm3                 # 16-byte Reload
	addss	%xmm3, %xmm1
	addss	32(%rsp), %xmm1                 # 16-byte Folded Reload
	addss	96(%rsp), %xmm1                 # 16-byte Folded Reload
	addss	64(%rsp), %xmm1                 # 16-byte Folded Reload
	movss	12(%rsp), %xmm4                 # 4-byte Reload
                                        # xmm4 = mem[0],zero,zero,zero
	addss	%xmm4, %xmm1
	addss	%xmm0, %xmm1
	divss	%xmm1, %xmm4
	divss	%xmm1, %xmm0
	shufps	$0, %xmm1, %xmm1                # xmm1 = xmm1[0,0,0,0]
	divps	%xmm1, %xmm2
	movaps	%xmm2, (%rbx)
	movaps	%xmm3, %xmm2
	divps	%xmm1, %xmm2
	movaps	%xmm2, 16(%rbx)
	movss	%xmm4, 32(%rbx)
	movss	%xmm0, 36(%rbx)
	addq	$176, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end25:
	.size	tvmgen_default_fused_nn_softmax_compute_, .Lfunc_end25-tvmgen_default_fused_nn_softmax_compute_
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function tvmgen_default_fused_transpose
.LCPI26_0:
	.long	2704                            # 0xa90
	.long	169                             # 0xa9
	.long	13                              # 0xd
	.long	1                               # 0x1
.LCPI26_1:
	.long	2704                            # 0xa90
	.long	208                             # 0xd0
	.long	16                              # 0x10
	.long	1                               # 0x1
	.text
	.globl	tvmgen_default_fused_transpose
	.p2align	4, 0x90
	.type	tvmgen_default_fused_transpose,@function
tvmgen_default_fused_transpose:         # @tvmgen_default_fused_transpose
.Lfunc_begin26:
	.cfi_startproc
# %bb.0:                                # %entry
	pushq	%rax
	.cfi_def_cfa_offset 16
	cmpl	$2, %edx
	jne	.LBB26_1
# %bb.3:                                # %assert_end
	movl	(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB26_5
# %bb.4:                                # %assert_end
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB26_5
# %bb.6:                                # %assert_end2
	movl	4(%rsi), %eax
	cmpl	$13, %eax
	ja	.LBB26_8
# %bb.7:                                # %assert_end2
	movl	$8344, %ecx                     # imm = 0x2098
	btl	%eax, %ecx
	jae	.LBB26_8
# %bb.9:                                # %assert_end4
	movq	(%rdi), %rcx
	cmpl	$4, 16(%rcx)
	jne	.LBB26_10
# %bb.11:                               # %assert_end8
	cmpw	$1, 22(%rcx)
	jne	.LBB26_14
# %bb.12:                               # %assert_end8
	cmpb	$32, 21(%rcx)
	jne	.LBB26_14
# %bb.13:                               # %assert_end8
	cmpb	$2, 20(%rcx)
	jne	.LBB26_14
# %bb.15:                               # %assert_end10
	movq	24(%rcx), %rax
	cmpl	$1, (%rax)
	jne	.LBB26_16
# %bb.17:                               # %assert_end12
	cmpl	$16, 8(%rax)
	jne	.LBB26_18
# %bb.19:                               # %assert_end14
	cmpl	$13, 16(%rax)
	jne	.LBB26_20
# %bb.21:                               # %assert_end16
	cmpl	$13, 24(%rax)
	jne	.LBB26_22
# %bb.23:                               # %assert_end18
	movq	8(%rdi), %rax
	movq	(%rcx), %rsi
	movq	32(%rcx), %rdx
	movl	12(%rcx), %r8d
	movq	(%rax), %rdi
	movq	24(%rax), %r10
	movq	32(%rax), %r9
	testq	%rdx, %rdx
	je	.LBB26_25
# %bb.24:                               # %if_then
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	shufps	$136, %xmm1, %xmm0              # xmm0 = xmm0[0,2],xmm1[0,2]
	pcmpeqd	.LCPI26_0(%rip), %xmm0
	movmskps	%xmm0, %edx
	cmpl	$15, %edx
	jne	.LBB26_52
.LBB26_25:                              # %if_end
	cmpq	$0, 40(%rcx)
	jne	.LBB26_26
# %bb.27:                               # %assert_end22
	cmpl	$1, 8(%rcx)
	jne	.LBB26_28
# %bb.29:                               # %assert_end24
	cmpl	$4, 16(%rax)
	jne	.LBB26_30
# %bb.31:                               # %assert_end28
	cmpw	$1, 22(%rax)
	jne	.LBB26_34
# %bb.32:                               # %assert_end28
	cmpb	$32, 21(%rax)
	jne	.LBB26_34
# %bb.33:                               # %assert_end28
	cmpb	$2, 20(%rax)
	jne	.LBB26_34
# %bb.35:                               # %assert_end30
	cmpl	$1, (%r10)
	jne	.LBB26_36
# %bb.37:                               # %assert_end32
	cmpl	$13, 8(%r10)
	jne	.LBB26_38
# %bb.39:                               # %assert_end34
	cmpl	$13, 16(%r10)
	jne	.LBB26_40
# %bb.41:                               # %assert_end36
	cmpl	$16, 24(%r10)
	jne	.LBB26_42
# %bb.43:                               # %assert_end38
	testq	%r9, %r9
	je	.LBB26_45
# %bb.44:                               # %if_then39
	movups	(%r9), %xmm0
	movups	16(%r9), %xmm1
	shufps	$136, %xmm1, %xmm0              # xmm0 = xmm0[0,2],xmm1[0,2]
	pcmpeqd	.LCPI26_1(%rip), %xmm0
	movmskps	%xmm0, %ecx
	cmpl	$15, %ecx
	jne	.LBB26_53
.LBB26_45:                              # %if_end40
	cmpq	$0, 40(%rax)
	jne	.LBB26_46
# %bb.47:                               # %assert_end44
	cmpl	$1, 8(%rax)
	jne	.LBB26_48
# %bb.49:                               # %assert_end46
	cmpl	12(%rax), %r8d
	jne	.LBB26_50
# %bb.51:                               # %assert_end48
	popq	%rax
	.cfi_def_cfa_offset 8
	jmp	tvmgen_default_fused_transpose_compute_ # TAILCALL
.LBB26_5:                               # %assert_fail1
	.cfi_def_cfa_offset 16
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.108, %edi
	jmp	.LBB26_2
.LBB26_8:                               # %assert_fail3
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.109, %edi
.LBB26_2:                               # %common.ret
	callq	*(%rax)
	movl	$-1, %eax
	popq	%rcx
	.cfi_def_cfa_offset 8
	retq
.LBB26_1:                               # %assert_fail
	.cfi_def_cfa_offset 16
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.107, %edi
	jmp	.LBB26_2
.LBB26_10:                              # %assert_fail5
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.3, %edi
	jmp	.LBB26_2
.LBB26_14:                              # %assert_fail9
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.4, %edi
	jmp	.LBB26_2
.LBB26_16:                              # %assert_fail11
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.5, %edi
	jmp	.LBB26_2
.LBB26_18:                              # %assert_fail13
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.24, %edi
	jmp	.LBB26_2
.LBB26_20:                              # %assert_fail15
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.7, %edi
	jmp	.LBB26_2
.LBB26_22:                              # %assert_fail17
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.25, %edi
	jmp	.LBB26_2
.LBB26_52:                              # %assert_fail19
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.26, %edi
	jmp	.LBB26_2
.LBB26_26:                              # %assert_fail21
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.10, %edi
	jmp	.LBB26_2
.LBB26_28:                              # %assert_fail23
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.11, %edi
	jmp	.LBB26_2
.LBB26_30:                              # %assert_fail25
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.68, %edi
	jmp	.LBB26_2
.LBB26_34:                              # %assert_fail29
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.13, %edi
	jmp	.LBB26_2
.LBB26_36:                              # %assert_fail31
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.14, %edi
	jmp	.LBB26_2
.LBB26_38:                              # %assert_fail33
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.110, %edi
	jmp	.LBB26_2
.LBB26_40:                              # %assert_fail35
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.111, %edi
	jmp	.LBB26_2
.LBB26_42:                              # %assert_fail37
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.112, %edi
	jmp	.LBB26_2
.LBB26_53:                              # %assert_fail41
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.113, %edi
	jmp	.LBB26_2
.LBB26_46:                              # %assert_fail43
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.17, %edi
	jmp	.LBB26_2
.LBB26_48:                              # %assert_fail45
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.18, %edi
	jmp	.LBB26_2
.LBB26_50:                              # %assert_fail47
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.19, %edi
	jmp	.LBB26_2
.Lfunc_end26:
	.size	tvmgen_default_fused_transpose, .Lfunc_end26-tvmgen_default_fused_transpose
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function tvmgen_default_fused_transpose_compute_
	.type	tvmgen_default_fused_transpose_compute_,@function
tvmgen_default_fused_transpose_compute_: # @tvmgen_default_fused_transpose_compute_
.Lfunc_begin27:
	.cfi_startproc
# %bb.0:                                # %entry
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	movq	%rdi, 8(%rsp)
	movq	%rsi, 16(%rsp)
	movq	__TVMBackendParallelLaunch@GOTPCREL(%rip), %rax
	leaq	8(%rsp), %rsi
	movl	$.L__tvm_parallel_lambda.114, %edi
	xorl	%edx, %edx
	callq	*(%rax)
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end27:
	.size	tvmgen_default_fused_transpose_compute_, .Lfunc_end27-tvmgen_default_fused_transpose_compute_
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90                         # -- Begin function __tvm_parallel_lambda.114
	.type	.L__tvm_parallel_lambda.114,@function
.L__tvm_parallel_lambda.114:            # @__tvm_parallel_lambda.114
.Lfunc_begin28:
	.cfi_startproc
# %bb.0:                                # %parallel_closure_entry
	movq	%rdx, %rcx
                                        # kill: def $edi killed $edi def $rdi
	movl	8(%rsi), %esi
	leal	12(%rsi), %eax
	cltd
	idivl	%esi
	leal	1(%rdi), %edx
	imull	%eax, %edx
	cmpl	$13, %edx
	movl	$13, %esi
	cmovgel	%esi, %edx
	imull	%edi, %eax
	cmpl	$13, %eax
	cmovgel	%esi, %eax
	cmpl	%edx, %eax
	jge	.LBB28_5
# %bb.1:                                # %for_begin_ax2.preheader.preheader
	movq	8(%rcx), %rsi
	cltq
	movslq	%edx, %r8
	imulq	$52, %rax, %rdx
	leaq	10140(%rdx,%rsi), %rsi
	imulq	$832, %rax, %rdx                # imm = 0x340
	addq	(%rcx), %rdx
	.p2align	4, 0x90
.LBB28_2:                               # %for_begin_ax2.preheader
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB28_3 Depth 2
	movq	$-52, %rcx
	movq	%rdx, %rdi
	.p2align	4, 0x90
.LBB28_3:                               # %for_body_ax2
                                        #   Parent Loop BB28_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movss	-8060(%rsi,%rcx), %xmm0         # xmm0 = mem[0],zero,zero,zero
	movss	-8736(%rsi,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	unpcklps	%xmm0, %xmm1                    # xmm1 = xmm1[0],xmm0[0],xmm1[1],xmm0[1]
	movss	-9412(%rsi,%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	movss	-10088(%rsi,%rcx), %xmm0        # xmm0 = mem[0],zero,zero,zero
	unpcklps	%xmm2, %xmm0                    # xmm0 = xmm0[0],xmm2[0],xmm0[1],xmm2[1]
	movlhps	%xmm1, %xmm0                    # xmm0 = xmm0[0],xmm1[0]
	movss	-5356(%rsi,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	-6032(%rsi,%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm2                    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movss	-6708(%rsi,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	-7384(%rsi,%rcx), %xmm3         # xmm3 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm3                    # xmm3 = xmm3[0],xmm1[0],xmm3[1],xmm1[1]
	movlhps	%xmm2, %xmm3                    # xmm3 = xmm3[0],xmm2[0]
	movss	-2652(%rsi,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	-3328(%rsi,%rcx), %xmm2         # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm2                    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movss	-4004(%rsi,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	-4680(%rsi,%rcx), %xmm4         # xmm4 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm4                    # xmm4 = xmm4[0],xmm1[0],xmm4[1],xmm1[1]
	movlhps	%xmm2, %xmm4                    # xmm4 = xmm4[0],xmm2[0]
	movss	52(%rsi,%rcx), %xmm1            # xmm1 = mem[0],zero,zero,zero
	movss	-624(%rsi,%rcx), %xmm2          # xmm2 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm2                    # xmm2 = xmm2[0],xmm1[0],xmm2[1],xmm1[1]
	movss	-1300(%rsi,%rcx), %xmm1         # xmm1 = mem[0],zero,zero,zero
	movss	-1976(%rsi,%rcx), %xmm5         # xmm5 = mem[0],zero,zero,zero
	unpcklps	%xmm1, %xmm5                    # xmm5 = xmm5[0],xmm1[0],xmm5[1],xmm1[1]
	movlhps	%xmm2, %xmm5                    # xmm5 = xmm5[0],xmm2[0]
	movaps	%xmm5, 48(%rdi)
	movaps	%xmm4, 32(%rdi)
	movaps	%xmm3, 16(%rdi)
	movaps	%xmm0, (%rdi)
	addq	$64, %rdi
	addq	$4, %rcx
	jne	.LBB28_3
# %bb.4:                                # %for_end_ax2
                                        #   in Loop: Header=BB28_2 Depth=1
	incq	%rax
	addq	$52, %rsi
	addq	$832, %rdx                      # imm = 0x340
	cmpq	%r8, %rax
	jne	.LBB28_2
.LBB28_5:                               # %for_end_ax0.ax1.fused
	xorl	%eax, %eax
	retq
.Lfunc_end28:
	.size	.L__tvm_parallel_lambda.114, .Lfunc_end28-.L__tvm_parallel_lambda.114
	.cfi_endproc
                                        # -- End function
	.type	__TVMAPISetLastError,@object    # @__TVMAPISetLastError
	.bss
	.weak	__TVMAPISetLastError
	.p2align	3
__TVMAPISetLastError:
	.quad	0
	.size	__TVMAPISetLastError, 8

	.type	__TVMBackendParallelLaunch,@object # @__TVMBackendParallelLaunch
	.weak	__TVMBackendParallelLaunch
	.p2align	3
__TVMBackendParallelLaunch:
	.quad	0
	.size	__TVMBackendParallelLaunch, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata,"a",@progbits
.L.str:
	.asciz	"Assert fail: (num_args == 2), tvmgen_default_fused_nn_batch_flatten: num_args should be 2"
	.size	.L.str, 90

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_batch_flatten: Expect arg[0] to be pointer"
	.size	.L.str.1, 165

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_batch_flatten: Expect arg[1] to be pointer"
	.size	.L.str.2, 165

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Assert fail: (4 == tir.tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 4"
	.size	.L.str.3, 85

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Assert fail: (((tir.tvm_struct_get(arg0, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be float32"
	.size	.L.str.4, 198

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Assert fail: (1 == int32(arg0.shape[0])), Argument arg0.shape[0] has an unsatisfied constraint: (1 == int32(arg0.shape[0]))"
	.size	.L.str.5, 124

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Assert fail: (13 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (13 == int32(arg0.shape[1]))"
	.size	.L.str.6, 126

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Assert fail: (13 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint: (13 == int32(arg0.shape[2]))"
	.size	.L.str.7, 126

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Assert fail: (16 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint: (16 == int32(arg0.shape[3]))"
	.size	.L.str.8, 126

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Assert fail: ((((1 == int32(arg0.strides[3])) && (16 == int32(arg0.strides[2]))) && (208 == int32(arg0.strides[1]))) && (2704 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array"
	.size	.L.str.9, 198

	.type	.L.str.10,@object               # @.str.10
.L.str.10:
	.asciz	"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8))"
	.size	.L.str.10, 163

	.type	.L.str.11,@object               # @.str.11
.L.str.11:
	.asciz	"Assert fail: (1 == tir.tvm_struct_get(arg0, 0, 10)), Argument arg0.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg0, 0, 10))"
	.size	.L.str.11, 149

	.type	.L.str.12,@object               # @.str.12
.L.str.12:
	.asciz	"Assert fail: (2 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 2"
	.size	.L.str.12, 85

	.type	.L.str.13,@object               # @.str.13
.L.str.13:
	.asciz	"Assert fail: (((tir.tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32"
	.size	.L.str.13, 198

	.type	.L.str.14,@object               # @.str.14
.L.str.14:
	.asciz	"Assert fail: (1 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (1 == int32(arg1.shape[0]))"
	.size	.L.str.14, 124

	.type	.L.str.15,@object               # @.str.15
.L.str.15:
	.asciz	"Assert fail: (2704 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (2704 == int32(arg1.shape[1]))"
	.size	.L.str.15, 130

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Assert fail: ((1 == int32(arg1.strides[1])) && (2704 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array"
	.size	.L.str.16, 125

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8))"
	.size	.L.str.17, 163

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg1, 0, 10))"
	.size	.L.str.18, 149

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Assert fail: (dev_id == tir.tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg1, 0, 9))"
	.size	.L.str.19, 155

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Assert fail: (num_args == 3), tvmgen_default_fused_nn_bias_add: num_args should be 3"
	.size	.L.str.20, 85

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_bias_add: Expect arg[0] to be pointer"
	.size	.L.str.21, 160

	.type	.L.str.22,@object               # @.str.22
.L.str.22:
	.asciz	"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_bias_add: Expect arg[1] to be pointer"
	.size	.L.str.22, 160

	.type	.L.str.23,@object               # @.str.23
.L.str.23:
	.asciz	"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_nn_bias_add: Expect arg[2] to be pointer"
	.size	.L.str.23, 160

	.type	.L.str.24,@object               # @.str.24
.L.str.24:
	.asciz	"Assert fail: (16 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (16 == int32(arg0.shape[1]))"
	.size	.L.str.24, 126

	.type	.L.str.25,@object               # @.str.25
.L.str.25:
	.asciz	"Assert fail: (13 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint: (13 == int32(arg0.shape[3]))"
	.size	.L.str.25, 126

	.type	.L.str.26,@object               # @.str.26
.L.str.26:
	.asciz	"Assert fail: ((((1 == int32(arg0.strides[3])) && (13 == int32(arg0.strides[2]))) && (169 == int32(arg0.strides[1]))) && (2704 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array"
	.size	.L.str.26, 198

	.type	.L.str.27,@object               # @.str.27
.L.str.27:
	.asciz	"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 1"
	.size	.L.str.27, 85

	.type	.L.str.28,@object               # @.str.28
.L.str.28:
	.asciz	"Assert fail: (16 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (16 == int32(arg1.shape[0]))"
	.size	.L.str.28, 126

	.type	.L.str.29,@object               # @.str.29
.L.str.29:
	.asciz	"Assert fail: (1 == int32(arg1.strides[0])), arg1.strides: expected to be compact array"
	.size	.L.str.29, 87

	.type	.L.str.30,@object               # @.str.30
.L.str.30:
	.asciz	"Assert fail: (4 == tir.tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 4"
	.size	.L.str.30, 85

	.type	.L.str.31,@object               # @.str.31
.L.str.31:
	.asciz	"Assert fail: (((tir.tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32"
	.size	.L.str.31, 198

	.type	.L.str.32,@object               # @.str.32
.L.str.32:
	.asciz	"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint: (1 == int32(arg2.shape[0]))"
	.size	.L.str.32, 124

	.type	.L.str.33,@object               # @.str.33
.L.str.33:
	.asciz	"Assert fail: (16 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint: (16 == int32(arg2.shape[1]))"
	.size	.L.str.33, 126

	.type	.L.str.34,@object               # @.str.34
.L.str.34:
	.asciz	"Assert fail: (13 == int32(arg2.shape[2])), Argument arg2.shape[2] has an unsatisfied constraint: (13 == int32(arg2.shape[2]))"
	.size	.L.str.34, 126

	.type	.L.str.35,@object               # @.str.35
.L.str.35:
	.asciz	"Assert fail: (13 == int32(arg2.shape[3])), Argument arg2.shape[3] has an unsatisfied constraint: (13 == int32(arg2.shape[3]))"
	.size	.L.str.35, 126

	.type	.L.str.36,@object               # @.str.36
.L.str.36:
	.asciz	"Assert fail: ((((1 == int32(arg2.strides[3])) && (13 == int32(arg2.strides[2]))) && (169 == int32(arg2.strides[1]))) && (2704 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array"
	.size	.L.str.36, 198

	.type	.L.str.37,@object               # @.str.37
.L.str.37:
	.asciz	"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg2, 0, 8)), Argument arg2.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg2, 0, 8))"
	.size	.L.str.37, 163

	.type	.L.str.38,@object               # @.str.38
.L.str.38:
	.asciz	"Assert fail: (1 == tir.tvm_struct_get(arg2, 0, 10)), Argument arg2.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg2, 0, 10))"
	.size	.L.str.38, 149

	.type	.L.str.39,@object               # @.str.39
.L.str.39:
	.asciz	"Assert fail: (dev_id == tir.tvm_struct_get(arg2, 0, 9)), Argument arg2.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg2, 0, 9))"
	.size	.L.str.39, 155

	.type	.L.str.40,@object               # @.str.40
.L.str.40:
	.asciz	"Assert fail: (num_args == 3), tvmgen_default_fused_nn_bias_add_1: num_args should be 3"
	.size	.L.str.40, 87

	.type	.L.str.41,@object               # @.str.41
.L.str.41:
	.asciz	"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_bias_add_1: Expect arg[0] to be pointer"
	.size	.L.str.41, 162

	.type	.L.str.42,@object               # @.str.42
.L.str.42:
	.asciz	"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_bias_add_1: Expect arg[1] to be pointer"
	.size	.L.str.42, 162

	.type	.L.str.43,@object               # @.str.43
.L.str.43:
	.asciz	"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_nn_bias_add_1: Expect arg[2] to be pointer"
	.size	.L.str.43, 162

	.type	.L.str.44,@object               # @.str.44
.L.str.44:
	.asciz	"Assert fail: (2 == tir.tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 2"
	.size	.L.str.44, 85

	.type	.L.str.45,@object               # @.str.45
.L.str.45:
	.asciz	"Assert fail: (32 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (32 == int32(arg0.shape[1]))"
	.size	.L.str.45, 126

	.type	.L.str.46,@object               # @.str.46
.L.str.46:
	.asciz	"Assert fail: ((1 == int32(arg0.strides[1])) && (32 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array"
	.size	.L.str.46, 123

	.type	.L.str.47,@object               # @.str.47
.L.str.47:
	.asciz	"Assert fail: (32 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (32 == int32(arg1.shape[0]))"
	.size	.L.str.47, 126

	.type	.L.str.48,@object               # @.str.48
.L.str.48:
	.asciz	"Assert fail: (2 == tir.tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 2"
	.size	.L.str.48, 85

	.type	.L.str.49,@object               # @.str.49
.L.str.49:
	.asciz	"Assert fail: (32 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint: (32 == int32(arg2.shape[1]))"
	.size	.L.str.49, 126

	.type	.L.str.50,@object               # @.str.50
.L.str.50:
	.asciz	"Assert fail: ((1 == int32(arg2.strides[1])) && (32 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array"
	.size	.L.str.50, 123

	.type	.L.str.51,@object               # @.str.51
.L.str.51:
	.asciz	"Assert fail: (num_args == 3), tvmgen_default_fused_nn_bias_add_2: num_args should be 3"
	.size	.L.str.51, 87

	.type	.L.str.52,@object               # @.str.52
.L.str.52:
	.asciz	"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_bias_add_2: Expect arg[0] to be pointer"
	.size	.L.str.52, 162

	.type	.L.str.53,@object               # @.str.53
.L.str.53:
	.asciz	"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_bias_add_2: Expect arg[1] to be pointer"
	.size	.L.str.53, 162

	.type	.L.str.54,@object               # @.str.54
.L.str.54:
	.asciz	"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_nn_bias_add_2: Expect arg[2] to be pointer"
	.size	.L.str.54, 162

	.type	.L.str.55,@object               # @.str.55
.L.str.55:
	.asciz	"Assert fail: (10 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (10 == int32(arg0.shape[1]))"
	.size	.L.str.55, 126

	.type	.L.str.56,@object               # @.str.56
.L.str.56:
	.asciz	"Assert fail: ((1 == int32(arg0.strides[1])) && (10 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array"
	.size	.L.str.56, 123

	.type	.L.str.57,@object               # @.str.57
.L.str.57:
	.asciz	"Assert fail: (10 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (10 == int32(arg1.shape[0]))"
	.size	.L.str.57, 126

	.type	.L.str.58,@object               # @.str.58
.L.str.58:
	.asciz	"Assert fail: (10 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint: (10 == int32(arg2.shape[1]))"
	.size	.L.str.58, 126

	.type	.L.str.59,@object               # @.str.59
.L.str.59:
	.asciz	"Assert fail: ((1 == int32(arg2.strides[1])) && (10 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array"
	.size	.L.str.59, 123

	.type	.L.str.60,@object               # @.str.60
.L.str.60:
	.asciz	"Assert fail: (num_args == 3), tvmgen_default_fused_nn_conv2d: num_args should be 3"
	.size	.L.str.60, 83

	.type	.L.str.61,@object               # @.str.61
.L.str.61:
	.asciz	"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_conv2d: Expect arg[0] to be pointer"
	.size	.L.str.61, 158

	.type	.L.str.62,@object               # @.str.62
.L.str.62:
	.asciz	"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_conv2d: Expect arg[1] to be pointer"
	.size	.L.str.62, 158

	.type	.L.str.63,@object               # @.str.63
.L.str.63:
	.asciz	"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_nn_conv2d: Expect arg[2] to be pointer"
	.size	.L.str.63, 158

	.type	.L.str.64,@object               # @.str.64
.L.str.64:
	.asciz	"Assert fail: (1 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (1 == int32(arg0.shape[1]))"
	.size	.L.str.64, 124

	.type	.L.str.65,@object               # @.str.65
.L.str.65:
	.asciz	"Assert fail: (14 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint: (14 == int32(arg0.shape[2]))"
	.size	.L.str.65, 126

	.type	.L.str.66,@object               # @.str.66
.L.str.66:
	.asciz	"Assert fail: (14 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint: (14 == int32(arg0.shape[3]))"
	.size	.L.str.66, 126

	.type	.L.str.67,@object               # @.str.67
.L.str.67:
	.asciz	"Assert fail: ((((1 == int32(arg0.strides[3])) && (14 == int32(arg0.strides[2]))) && (196 == int32(arg0.strides[1]))) && (196 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array"
	.size	.L.str.67, 197

	.type	.L.str.68,@object               # @.str.68
.L.str.68:
	.asciz	"Assert fail: (4 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4"
	.size	.L.str.68, 85

	.type	.L.str.69,@object               # @.str.69
.L.str.69:
	.asciz	"Assert fail: (1 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (1 == int32(arg1.shape[1]))"
	.size	.L.str.69, 124

	.type	.L.str.70,@object               # @.str.70
.L.str.70:
	.asciz	"Assert fail: (2 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint: (2 == int32(arg1.shape[2]))"
	.size	.L.str.70, 124

	.type	.L.str.71,@object               # @.str.71
.L.str.71:
	.asciz	"Assert fail: (2 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint: (2 == int32(arg1.shape[3]))"
	.size	.L.str.71, 124

	.type	.L.str.72,@object               # @.str.72
.L.str.72:
	.asciz	"Assert fail: ((((1 == int32(arg1.strides[3])) && (2 == int32(arg1.strides[2]))) && (4 == int32(arg1.strides[1]))) && (4 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array"
	.size	.L.str.72, 192

	.type	.L.str.76,@object               # @.str.76
.L.str.76:
	.asciz	"Assert fail: (num_args == 3), tvmgen_default_fused_nn_dense: num_args should be 3"
	.size	.L.str.76, 82

	.type	.L.str.77,@object               # @.str.77
.L.str.77:
	.asciz	"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_dense: Expect arg[0] to be pointer"
	.size	.L.str.77, 157

	.type	.L.str.78,@object               # @.str.78
.L.str.78:
	.asciz	"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_dense: Expect arg[1] to be pointer"
	.size	.L.str.78, 157

	.type	.L.str.79,@object               # @.str.79
.L.str.79:
	.asciz	"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_nn_dense: Expect arg[2] to be pointer"
	.size	.L.str.79, 157

	.type	.L.str.80,@object               # @.str.80
.L.str.80:
	.asciz	"Assert fail: (2704 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (2704 == int32(arg0.shape[1]))"
	.size	.L.str.80, 130

	.type	.L.str.81,@object               # @.str.81
.L.str.81:
	.asciz	"Assert fail: ((1 == int32(arg0.strides[1])) && (2704 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array"
	.size	.L.str.81, 125

	.type	__TVMBackendAllocWorkspace,@object # @__TVMBackendAllocWorkspace
	.bss
	.weak	__TVMBackendAllocWorkspace
	.p2align	3
__TVMBackendAllocWorkspace:
	.quad	0
	.size	__TVMBackendAllocWorkspace, 8

	.type	__TVMBackendFreeWorkspace,@object # @__TVMBackendFreeWorkspace
	.weak	__TVMBackendFreeWorkspace
	.p2align	3
__TVMBackendFreeWorkspace:
	.quad	0
	.size	__TVMBackendFreeWorkspace, 8

	.type	.L.str.83,@object               # @.str.83
	.section	.rodata,"a",@progbits
.L.str.83:
	.asciz	"Assert fail: (num_args == 3), tvmgen_default_fused_nn_dense_1: num_args should be 3"
	.size	.L.str.83, 84

	.type	.L.str.84,@object               # @.str.84
.L.str.84:
	.asciz	"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_dense_1: Expect arg[0] to be pointer"
	.size	.L.str.84, 159

	.type	.L.str.85,@object               # @.str.85
.L.str.85:
	.asciz	"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_dense_1: Expect arg[1] to be pointer"
	.size	.L.str.85, 159

	.type	.L.str.86,@object               # @.str.86
.L.str.86:
	.asciz	"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_nn_dense_1: Expect arg[2] to be pointer"
	.size	.L.str.86, 159

	.type	.L.str.87,@object               # @.str.87
.L.str.87:
	.asciz	"Assert fail: (32 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (32 == int32(arg1.shape[1]))"
	.size	.L.str.87, 126

	.type	.L.str.88,@object               # @.str.88
.L.str.88:
	.asciz	"Assert fail: ((1 == int32(arg1.strides[1])) && (32 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array"
	.size	.L.str.88, 123

	.type	.L.str.90,@object               # @.str.90
.L.str.90:
	.asciz	"Assert fail: (num_args == 2), tvmgen_default_fused_nn_max_pool2d: num_args should be 2"
	.size	.L.str.90, 87

	.type	.L.str.91,@object               # @.str.91
.L.str.91:
	.asciz	"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_max_pool2d: Expect arg[0] to be pointer"
	.size	.L.str.91, 162

	.type	.L.str.92,@object               # @.str.92
.L.str.92:
	.asciz	"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_max_pool2d: Expect arg[1] to be pointer"
	.size	.L.str.92, 162

	.type	.L.str.93,@object               # @.str.93
.L.str.93:
	.asciz	"Assert fail: (28 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint: (28 == int32(arg0.shape[2]))"
	.size	.L.str.93, 126

	.type	.L.str.94,@object               # @.str.94
.L.str.94:
	.asciz	"Assert fail: (28 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint: (28 == int32(arg0.shape[3]))"
	.size	.L.str.94, 126

	.type	.L.str.95,@object               # @.str.95
.L.str.95:
	.asciz	"Assert fail: ((((1 == int32(arg0.strides[3])) && (28 == int32(arg0.strides[2]))) && (784 == int32(arg0.strides[1]))) && (784 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array"
	.size	.L.str.95, 197

	.type	.L.str.96,@object               # @.str.96
.L.str.96:
	.asciz	"Assert fail: (14 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint: (14 == int32(arg1.shape[2]))"
	.size	.L.str.96, 126

	.type	.L.str.97,@object               # @.str.97
.L.str.97:
	.asciz	"Assert fail: (14 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint: (14 == int32(arg1.shape[3]))"
	.size	.L.str.97, 126

	.type	.L.str.98,@object               # @.str.98
.L.str.98:
	.asciz	"Assert fail: ((((1 == int32(arg1.strides[3])) && (14 == int32(arg1.strides[2]))) && (196 == int32(arg1.strides[1]))) && (196 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array"
	.size	.L.str.98, 197

	.type	.L.str.99,@object               # @.str.99
.L.str.99:
	.asciz	"Assert fail: (num_args == 2), tvmgen_default_fused_nn_relu: num_args should be 2"
	.size	.L.str.99, 81

	.type	.L.str.100,@object              # @.str.100
.L.str.100:
	.asciz	"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_relu: Expect arg[0] to be pointer"
	.size	.L.str.100, 156

	.type	.L.str.101,@object              # @.str.101
.L.str.101:
	.asciz	"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_relu: Expect arg[1] to be pointer"
	.size	.L.str.101, 156

	.type	.L.str.102,@object              # @.str.102
.L.str.102:
	.asciz	"Assert fail: (num_args == 2), tvmgen_default_fused_nn_softmax: num_args should be 2"
	.size	.L.str.102, 84

	.type	.L.str.103,@object              # @.str.103
.L.str.103:
	.asciz	"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_softmax: Expect arg[0] to be pointer"
	.size	.L.str.103, 159

	.type	.L.str.104,@object              # @.str.104
.L.str.104:
	.asciz	"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_softmax: Expect arg[1] to be pointer"
	.size	.L.str.104, 159

	.type	.L.str.105,@object              # @.str.105
.L.str.105:
	.asciz	"Assert fail: (10 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (10 == int32(arg1.shape[1]))"
	.size	.L.str.105, 126

	.type	.L.str.106,@object              # @.str.106
.L.str.106:
	.asciz	"Assert fail: ((1 == int32(arg1.strides[1])) && (10 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array"
	.size	.L.str.106, 123

	.type	.L.str.107,@object              # @.str.107
.L.str.107:
	.asciz	"Assert fail: (num_args == 2), tvmgen_default_fused_transpose: num_args should be 2"
	.size	.L.str.107, 83

	.type	.L.str.108,@object              # @.str.108
.L.str.108:
	.asciz	"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_transpose: Expect arg[0] to be pointer"
	.size	.L.str.108, 158

	.type	.L.str.109,@object              # @.str.109
.L.str.109:
	.asciz	"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_transpose: Expect arg[1] to be pointer"
	.size	.L.str.109, 158

	.type	.L.str.110,@object              # @.str.110
.L.str.110:
	.asciz	"Assert fail: (13 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (13 == int32(arg1.shape[1]))"
	.size	.L.str.110, 126

	.type	.L.str.111,@object              # @.str.111
.L.str.111:
	.asciz	"Assert fail: (13 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint: (13 == int32(arg1.shape[2]))"
	.size	.L.str.111, 126

	.type	.L.str.112,@object              # @.str.112
.L.str.112:
	.asciz	"Assert fail: (16 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint: (16 == int32(arg1.shape[3]))"
	.size	.L.str.112, 126

	.type	.L.str.113,@object              # @.str.113
.L.str.113:
	.asciz	"Assert fail: ((((1 == int32(arg1.strides[3])) && (16 == int32(arg1.strides[2]))) && (208 == int32(arg1.strides[1]))) && (2704 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array"
	.size	.L.str.113, 198

	.section	.debug_abbrev,"",@progbits
	.byte	1                               # Abbreviation Code
	.byte	17                              # DW_TAG_compile_unit
	.byte	0                               # DW_CHILDREN_no
	.byte	37                              # DW_AT_producer
	.byte	14                              # DW_FORM_strp
	.byte	19                              # DW_AT_language
	.byte	5                               # DW_FORM_data2
	.byte	3                               # DW_AT_name
	.byte	14                              # DW_FORM_strp
	.byte	16                              # DW_AT_stmt_list
	.byte	23                              # DW_FORM_sec_offset
	.byte	27                              # DW_AT_comp_dir
	.byte	14                              # DW_FORM_strp
	.ascii	"\264B"                         # DW_AT_GNU_pubnames
	.byte	25                              # DW_FORM_flag_present
	.ascii	"\261B"                         # DW_AT_GNU_dwo_id
	.byte	7                               # DW_FORM_data8
	.byte	0                               # EOM(1)
	.byte	0                               # EOM(2)
	.byte	0                               # EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 # Length of Unit
.Ldebug_info_start0:
	.short	4                               # DWARF version number
	.long	.debug_abbrev                   # Offset Into Abbrev. Section
	.byte	8                               # Address Size (in bytes)
	.byte	1                               # Abbrev [1] 0xb:0x1b DW_TAG_compile_unit
	.long	.Linfo_string0                  # DW_AT_producer
	.short	2                               # DW_AT_language
	.long	.Linfo_string1                  # DW_AT_name
	.long	.Lline_table_start0             # DW_AT_stmt_list
	.long	.Linfo_string2                  # DW_AT_comp_dir
                                        # DW_AT_GNU_pubnames
	.quad	1                               # DW_AT_GNU_dwo_id
.Ldebug_info_end0:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"TVM"                           # string offset=0
.Linfo_string1:
	.asciz	"model.tvm"                     # string offset=4
.Linfo_string2:
	.asciz	"/tmp/"                         # string offset=14
	.section	.debug_pubnames,"",@progbits
	.long	.LpubNames_end0-.LpubNames_start0 # Length of Public Names Info
.LpubNames_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	38                              # Compilation Unit Length
	.long	0                               # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
	.long	.LpubTypes_end0-.LpubTypes_start0 # Length of Public Types Info
.LpubTypes_start0:
	.short	2                               # DWARF Version
	.long	.Lcu_begin0                     # Offset of Compilation Unit Info
	.long	38                              # Compilation Unit Length
	.long	0                               # End Mark
.LpubTypes_end0:
	.section	".note.GNU-stack","",@progbits
	.section	.debug_line,"",@progbits
.Lline_table_start0:
