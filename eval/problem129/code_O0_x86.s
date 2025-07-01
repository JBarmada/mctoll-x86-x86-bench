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
	subq	$32, %rsp
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	LBB0_2
## %bb.1:
	movl	$-32768, -4(%rbp)               ## imm = 0x8000
	jmp	LBB0_11
LBB0_2:
	movl	$0, -24(%rbp)
	movl	$1, -28(%rbp)
	movl	$0, -32(%rbp)
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_10
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	_abs
	addl	-24(%rbp), %eax
	movl	%eax, -24(%rbp)
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	movl	$0, -28(%rbp)
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jge	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_3 Depth=1
	xorl	%eax, %eax
	subl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_9
LBB0_9:                                 ##   in Loop: Header=BB0_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_3
LBB0_10:
	movl	-24(%rbp), %eax
	imull	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB0_11:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
