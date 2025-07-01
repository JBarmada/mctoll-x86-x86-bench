	.section	.text
	.build_version macos, 13, 0 sdk_version 13, 3
	.globl	_func0
	.p2align	4, 0x90
_func0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	testl	%esi, %esi
	jle	LBB0_1
	movl	(%rdi), %eax
	testl	%eax, %eax
	js	LBB0_3
	movl	%esi, %ecx
	movl	$1, %esi
LBB0_5:
	cmpq	%rsi, %rcx
	je	LBB0_7
	leaq	1(%rdx), %rsi
	addl	(%rdi,%rdx,4), %eax
	jns	LBB0_5
LBB0_7:
	xorl	%eax, %eax
	cmpq	%rcx, %rdx
	setb	%al
	popq	%rbp
	retq
LBB0_1:
	xorl	%eax, %eax
	popq	%rbp
	retq
LBB0_3:
	movl	$1, %eax
	popq	%rbp
	retq
	.cfi_endproc
