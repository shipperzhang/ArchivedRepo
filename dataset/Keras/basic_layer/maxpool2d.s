	.text
	.file	"TVMMod"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4                               # -- Begin function tvmgen_default_fused_nn_max_pool2d
.LCPI0_0:
	.long	784                             # 0x310
	.long	784                             # 0x310
	.long	28                              # 0x1c
	.long	1                               # 0x1
.LCPI0_1:
	.long	196                             # 0xc4
	.long	196                             # 0xc4
	.long	14                              # 0xe
	.long	1                               # 0x1
	.text
	.globl	tvmgen_default_fused_nn_max_pool2d
	.p2align	4, 0x90
	.type	tvmgen_default_fused_nn_max_pool2d,@function
tvmgen_default_fused_nn_max_pool2d:     # @tvmgen_default_fused_nn_max_pool2d
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
	movq	(%rdi), %rcx
	cmpl	$4, 16(%rcx)
	jne	.LBB0_10
# %bb.11:                               # %assert_end8
	cmpw	$1, 22(%rcx)
	jne	.LBB0_14
# %bb.12:                               # %assert_end8
	cmpb	$32, 21(%rcx)
	jne	.LBB0_14
# %bb.13:                               # %assert_end8
	cmpb	$2, 20(%rcx)
	jne	.LBB0_14
# %bb.15:                               # %assert_end10
	movq	24(%rcx), %rax
	cmpl	$1, (%rax)
	jne	.LBB0_16
# %bb.17:                               # %assert_end12
	cmpl	$1, 8(%rax)
	jne	.LBB0_18
# %bb.19:                               # %assert_end14
	cmpl	$28, 16(%rax)
	jne	.LBB0_20
# %bb.21:                               # %assert_end16
	cmpl	$28, 24(%rax)
	jne	.LBB0_22
# %bb.23:                               # %assert_end18
	movq	8(%rdi), %rax
	movq	(%rcx), %rsi
	movq	32(%rcx), %rdx
	movl	12(%rcx), %r8d
	movq	(%rax), %rdi
	movq	24(%rax), %r10
	movq	32(%rax), %r9
	testq	%rdx, %rdx
	je	.LBB0_25
# %bb.24:                               # %if_then
	movups	(%rdx), %xmm0
	movups	16(%rdx), %xmm1
	shufps	$136, %xmm1, %xmm0              # xmm0 = xmm0[0,2],xmm1[0,2]
	pcmpeqd	.LCPI0_0(%rip), %xmm0
	movmskps	%xmm0, %edx
	cmpl	$15, %edx
	jne	.LBB0_53
.LBB0_25:                               # %if_end
	cmpq	$0, 40(%rcx)
	jne	.LBB0_26
# %bb.27:                               # %assert_end22
	cmpl	$1, 8(%rcx)
	jne	.LBB0_28
# %bb.29:                               # %assert_end24
	cmpl	$4, 16(%rax)
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
	cmpl	$1, (%r10)
	jne	.LBB0_36
# %bb.37:                               # %assert_end32
	cmpl	$1, 8(%r10)
	jne	.LBB0_38
# %bb.39:                               # %assert_end34
	cmpl	$14, 16(%r10)
	jne	.LBB0_40
# %bb.41:                               # %assert_end36
	cmpl	$14, 24(%r10)
	jne	.LBB0_42
# %bb.43:                               # %assert_end38
	testq	%r9, %r9
	je	.LBB0_45
# %bb.44:                               # %if_then39
	movups	(%r9), %xmm0
	movups	16(%r9), %xmm1
	shufps	$136, %xmm1, %xmm0              # xmm0 = xmm0[0,2],xmm1[0,2]
	pcmpeqd	.LCPI0_1(%rip), %xmm0
	movmskps	%xmm0, %ecx
	cmpl	$15, %ecx
	jne	.LBB0_54
.LBB0_45:                               # %if_end40
	cmpq	$0, 40(%rax)
	jne	.LBB0_46
# %bb.47:                               # %assert_end44
	cmpl	$1, 8(%rax)
	jne	.LBB0_48
# %bb.49:                               # %assert_end46
	cmpl	12(%rax), %r8d
	jne	.LBB0_50
# %bb.51:                               # %assert_end48
	callq	tvmgen_default_fused_nn_max_pool2d_compute_
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
.LBB0_53:                               # %assert_fail19
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
.LBB0_40:                               # %assert_fail35
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.16, %edi
	jmp	.LBB0_2
.LBB0_42:                               # %assert_fail37
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.17, %edi
	jmp	.LBB0_2
.LBB0_54:                               # %assert_fail41
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.18, %edi
	jmp	.LBB0_2
.LBB0_46:                               # %assert_fail43
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.19, %edi
	jmp	.LBB0_2
.LBB0_48:                               # %assert_fail45
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.20, %edi
	jmp	.LBB0_2
.LBB0_50:                               # %assert_fail47
	movq	__TVMAPISetLastError@GOTPCREL(%rip), %rax
	movl	$.L.str.21, %edi
	jmp	.LBB0_2
.Lfunc_end0:
	.size	tvmgen_default_fused_nn_max_pool2d, .Lfunc_end0-tvmgen_default_fused_nn_max_pool2d
	.cfi_endproc
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2                               # -- Begin function tvmgen_default_fused_nn_max_pool2d_compute_
.LCPI1_0:
	.long	0xff7fffff                      # float -3.40282347E+38
	.text
	.p2align	4, 0x90
	.type	tvmgen_default_fused_nn_max_pool2d_compute_,@function
tvmgen_default_fused_nn_max_pool2d_compute_: # @tvmgen_default_fused_nn_max_pool2d_compute_
.Lfunc_begin1:
	.cfi_startproc
# %bb.0:                                # %entry
	movq	$-784, %rax                     # imm = 0xFCF0
	movss	.LCPI1_0(%rip), %xmm0           # xmm0 = mem[0],zero,zero,zero
	.p2align	4, 0x90
.LBB1_1:                                # %for_begin_ax3.preheader
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
	jne	.LBB1_1
# %bb.2:                                # %for_end_ax2
	retq
.Lfunc_end1:
	.size	tvmgen_default_fused_nn_max_pool2d_compute_, .Lfunc_end1-tvmgen_default_fused_nn_max_pool2d_compute_
	.cfi_endproc
                                        # -- End function
	.type	__TVMAPISetLastError,@object    # @__TVMAPISetLastError
	.bss
	.weak	__TVMAPISetLastError
	.p2align	3
__TVMAPISetLastError:
	.quad	0
	.size	__TVMAPISetLastError, 8

	.type	.L.str,@object                  # @.str
	.section	.rodata,"a",@progbits
.L.str:
	.asciz	"Assert fail: (num_args == 2), tvmgen_default_fused_nn_max_pool2d: num_args should be 2"
	.size	.L.str, 87

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_max_pool2d: Expect arg[0] to be pointer"
	.size	.L.str.1, 162

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_max_pool2d: Expect arg[1] to be pointer"
	.size	.L.str.2, 162

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
	.asciz	"Assert fail: (1 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (1 == int32(arg0.shape[1]))"
	.size	.L.str.6, 124

	.type	.L.str.7,@object                # @.str.7
.L.str.7:
	.asciz	"Assert fail: (28 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint: (28 == int32(arg0.shape[2]))"
	.size	.L.str.7, 126

	.type	.L.str.8,@object                # @.str.8
.L.str.8:
	.asciz	"Assert fail: (28 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint: (28 == int32(arg0.shape[3]))"
	.size	.L.str.8, 126

	.type	.L.str.9,@object                # @.str.9
.L.str.9:
	.asciz	"Assert fail: ((((1 == int32(arg0.strides[3])) && (28 == int32(arg0.strides[2]))) && (784 == int32(arg0.strides[1]))) && (784 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array"
	.size	.L.str.9, 197

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
	.asciz	"Assert fail: (4 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4"
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
	.asciz	"Assert fail: (1 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (1 == int32(arg1.shape[1]))"
	.size	.L.str.15, 124

	.type	.L.str.16,@object               # @.str.16
.L.str.16:
	.asciz	"Assert fail: (14 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint: (14 == int32(arg1.shape[2]))"
	.size	.L.str.16, 126

	.type	.L.str.17,@object               # @.str.17
.L.str.17:
	.asciz	"Assert fail: (14 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint: (14 == int32(arg1.shape[3]))"
	.size	.L.str.17, 126

	.type	.L.str.18,@object               # @.str.18
.L.str.18:
	.asciz	"Assert fail: ((((1 == int32(arg1.strides[3])) && (14 == int32(arg1.strides[2]))) && (196 == int32(arg1.strides[1]))) && (196 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array"
	.size	.L.str.18, 197

	.type	.L.str.19,@object               # @.str.19
.L.str.19:
	.asciz	"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8))"
	.size	.L.str.19, 163

	.type	.L.str.20,@object               # @.str.20
.L.str.20:
	.asciz	"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg1, 0, 10))"
	.size	.L.str.20, 149

	.type	.L.str.21,@object               # @.str.21
.L.str.21:
	.asciz	"Assert fail: (dev_id == tir.tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg1, 0, 9))"
	.size	.L.str.21, 155

	.type	__tvm_main__,@object            # @__tvm_main__
	.weak	__tvm_main__
__tvm_main__:
	.asciz	"tvmgen_default_fused_nn_max_pool2d"
	.size	__tvm_main__, 35

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
