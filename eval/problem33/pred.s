	.section	.rodata
	.align	4
	.type	LCPI0_0, @object
	.size	LCPI0_0, 8
LCPI0_0:
	.quad	0x3ff0000000000000
	.type	LCPI0_2, @object
	.size	LCPI0_2, 8
LCPI0_2:
	.quad	0x3eb0c6f7a0b5ed8d
	.type	LCPI0_3, @object
	.size	LCPI0_3, 8
	.type	LCPI0_1, @object
	.size	LCPI0_1, 16
LCPI0_1:
	.quad	0x7fffffffffffffff
	.quad	0x7fffffffffffffff
	.type	_func0, @function
	.text
	.align	4
_func0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movsd	(%rdi), %xmm1
	movl	%esi, %r9d
	movapd	%xmm1, %xmm2
	cmpl	$2, %esi
	jl	LBB0_9
	movl	$1, %edx
	xorl	%r8d, %r8d
	movsd	LCPI0_0, %xmm0
	xorpd	%xmm3, %xmm3
	movapd	%xmm1, %xmm2
	jmp	LBB0_2
LBB0_8:
	mulsd	(%rdi, %rdx, 8), %xmm4
	addsd	%xmm4, %xmm2
	incq	%rdx
	incq	%r8
	cmpq	%r9, %rdx
	je	LBB0_9
LBB0_2:
	movapd	%xmm0, %xmm4
	cmpq	$7, %r8
	jb	LBB0_5
LBB0_4:
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	mulsd	%xmm3, %xmm4
	addq	$-8, %rcx
	jne	LBB0_4
LBB0_5:
	testb	$7, %dl
	je	LBB0_8
LBB0_6:
	movl	%edx, %eax
	andl	$7, %eax
LBB0_7:
	mulsd	%xmm3, %xmm4
	decq	%rax
	jne	LBB0_7
	jmp	LBB0_8
LBB0_9:
	movapd	LCPI0_1, %xmm3
	andpd	%xmm2, %xmm3
	xorpd	%xmm0, %xmm0
	ucomisd	LCPI0_2, %xmm3
	jbe	LBB0_33
LBB0_10:
	xorpd	%xmm0, %xmm0
	movsd	LCPI0_0, %xmm6
	movapd	LCPI0_1, %xmm9
	movsd	LCPI0_2, %xmm5
	movsd	LCPI0_3, %xmm8
	jmp	LBB0_14
LBB0_11:
	divsd	%xmm8, %xmm2
	addsd	%xmm2, %xmm0
LBB0_12:
	movapd	%xmm1, %xmm2
LBB0_13:
	movapd	%xmm2, %xmm3
	andpd	%xmm9, %xmm3
	ucomisd	%xmm5, %xmm3
	jbe	LBB0_33
LBB0_14:
	cmpl	$2, %esi
	jl	LBB0_11
LBB0_15:
	xorpd	%xmm7, %xmm7
	movl	$1, %ecx
	xorl	%eax, %eax
	jmp	LBB0_16
LBB0_23:
	xorps	%xmm4, %xmm4
	cvtsi2sd	%ecx, %xmm4
	mulsd	(%rdi, %rcx, 8), %xmm4
	mulsd	%xmm3, %xmm4
	addsd	%xmm4, %xmm7
	incq	%rcx
	incq	%rax
	cmpq	%r9, %rcx
	je	LBB0_24
LBB0_16:
	movapd	%xmm6, %xmm3
	cmpq	$2, %rcx
	jb	LBB0_23
LBB0_17:
	leaq	-1(%rax), %rdx
	movapd	%xmm6, %xmm3
	cmpq	$7, %rdx
	jb	LBB0_20
LBB0_18:
	movq	%rax, %rdx
	andq	$-8, %rdx
	movapd	%xmm6, %xmm3
LBB0_19:
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	addq	$-8, %rdx
	jne	LBB0_19
LBB0_20:
	testb	$7, %al
	je	LBB0_23
LBB0_21:
	movl	%eax, %edx
	andl	$7, %edx
LBB0_22:
	mulsd	%xmm0, %xmm3
	decq	%rdx
	jne	LBB0_22
	jmp	LBB0_23
LBB0_24:
	divsd	%xmm7, %xmm2
	subsd	%xmm2, %xmm0
	cmpl	$2, %esi
	jl	LBB0_12
LBB0_25:
	movl	$1, %ecx
	xorl	%edx, %edx
	movapd	%xmm1, %xmm2
	jmp	LBB0_26
LBB0_32:
	mulsd	(%rdi, %rcx, 8), %xmm3
	addsd	%xmm3, %xmm2
	incq	%rcx
	incq	%rdx
	cmpq	%r9, %rcx
	je	LBB0_13
LBB0_26:
	movapd	%xmm6, %xmm3
	cmpq	$7, %rdx
	jb	LBB0_29
LBB0_28:
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	mulsd	%xmm0, %xmm3
	addq	$-8, %rax
	jne	LBB0_28
LBB0_29:
	testb	$7, %cl
	je	LBB0_32
LBB0_30:
	movl	%ecx, %eax
	andl	$7, %eax
LBB0_31:
	mulsd	%xmm0, %xmm3
	decq	%rax
	jne	LBB0_31
	jmp	LBB0_32
LBB0_33:
	popq	%rbp
	ret
	.cfi_endproc
