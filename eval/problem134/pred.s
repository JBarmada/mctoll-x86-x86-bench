	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ## -- Begin function func0
	.p2align	4, 0x90
_func0:                                 ## @func0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%esi, %esi
	jle	LBB0_1
## %bb.2:
	movl	%esi, %ecx
	cmpl	$8, %esi
	jae	LBB0_4
## %bb.3:
	xorl	%eax, %eax
	jmp	LBB0_11
LBB0_1:
	xorl	%eax, %eax
	popq	%rbp
	retq
LBB0_4:
	movl	%ecx, %edx
	andl	$-8, %edx
	leaq	-8(%rdx), %rax
	movq	%rax, %r8
	shrq	$3, %r8
	incq	%r8
	testq	%rax, %rax
	je	LBB0_5
## %bb.6:
	movq	%r8, %rax
	andq	$-2, %rax
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	pxor	%xmm1, %xmm1
	.p2align	4, 0x90
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	vmovups	(%rdi,%rsi,4), %xmm2
	vmovups	16(%rdi,%rsi,4), %xmm3
	vmovups	32(%rdi,%rsi,4), %xmm4
	vmovups	48(%rdi,%rsi,4), %xmm5
	vrndps	%xmm2, %xmm2
	vcvttps2dq	%xmm2, %xmm2
	vmulld	%xmm2, %xmm2
	vpaddd	%xmm0, %xmm2
	vmulld	%xmm3, %xmm3
	vpaddd	%xmm1, %xmm3
	vrndps	%xmm4, %xmm0
	vrndps	%xmm5, %xmm1
	vcvttps2dq	%xmm0, %xmm0
	vcvttps2dq	%xmm1, %xmm1
	vmulld	%xmm0, %xmm0
	vpaddd	%xmm2, %xmm0
	vmulld	%xmm1, %xmm1
	vpaddd	%xmm3, %xmm1
	addq	$16, %rsi
	addq	$-2, %rax
	jne	LBB0_7
## %bb.8:
	testb	$1, %r8b
	je	LBB0_10
LBB0_9:
	vmovups	(%rdi,%rsi,4), %xmm2
	vmovups	16(%rdi,%rsi,4), %xmm3
	vrndps	%xmm2, %xmm2
	vrndps	%xmm3, %xmm3
	vcvttps2dq	%xmm2, %xmm2
	vcvttps2dq	%xmm3, %xmm3
	vmulld	%xmm2, %xmm2
	vpaddd	%xmm2, %xmm0
	vmulld	%xmm3, %xmm3
	vpaddd	%xmm3, %xmm1
LBB0_10:
	vpaddd	%xmm1, %xmm0
	vshufps	$238, %xmm0, %xmm1              ## xmm1 = xmm0[2,3,2,3]
	vpaddd	%xmm0, %xmm1
	vshufps	$85, %xmm1, %xmm0               ## xmm0 = xmm1[1,1,1,1]
	vpaddd	%xmm1, %xmm0
	vmovd	%xmm0, %eax
	vcmpq	%rcx, %rdx
	je	LBB0_12
	.p2align	4, 0x90
LBB0_11:                                ## =>This Inner Loop Header: Depth=1
	vmovss	(%rdi,%rdx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	vrndss	%xmm0, %xmm0
	vcvttss2si	%xmm0, %esi
	imull	%esi, %esi
	addl	%esi, %eax
	incq	%rdx
	cmpq	%rdx, %rcx
	jne	LBB0_11
LBB0_12:
	popq	%rbp
	retq
LBB0_5:
	pxor	%xmm0, %xmm0
	xorl	%esi, %esi
	pxor	%xmm1, %xmm1
	testb	$1, %r8b
	jne	LBB0_9
	jmp	LBB0_10
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
