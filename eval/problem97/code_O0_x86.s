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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movslq	-4(%rbp), %rdi
	shlq	$2, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movl	$2, -28(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	LBB0_14
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$1, -36(%rbp)
	movl	$0, -32(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	LBB0_10
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movq	-24(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	imull	-40(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jle	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_10
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	movl	-28(%rbp), %eax
	cltd
	idivl	-40(%rbp)
	cmpl	$0, %edx
	jne	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -36(%rbp)
	jmp	LBB0_10
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_9
LBB0_9:                                 ##   in Loop: Header=BB0_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_3
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -36(%rbp)
	je	LBB0_12
## %bb.11:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rcx
	movslq	(%rcx), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-16(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_13
LBB0_13:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_1
LBB0_14:
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
