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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %edx
	movl	$21, %eax
	movl	$5, %ecx
	cmpl	$0, %edx
	cmovnel	%ecx, %eax
	movl	%eax, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
	movq	%rax, -24(%rbp)
	movq	$0, -32(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-32(%rbp), %rax
	cmpq	-24(%rbp), %rax
	jae	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	subl	$97, %eax
	addl	-16(%rbp), %eax
	movl	$26, %ecx
	cltd
	idivl	%ecx
	addl	$97, %edx
	movl	%edx, -36(%rbp)
	movl	-36(%rbp), %eax
	movb	%al, %dl
	movq	-8(%rbp), %rax
	movq	-32(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	LBB0_1
LBB0_4:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
