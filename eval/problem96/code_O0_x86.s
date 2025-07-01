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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	LBB0_2
## %bb.1:
	movl	$0, -4(%rbp)
	jmp	LBB0_19
LBB0_2:
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
LBB0_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_5 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_18
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	shlq	$4, %rcx
	addq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
LBB0_5:                                 ##   Parent Loop BB0_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	LBB0_16
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=2
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %edi
	callq	_isalpha
	cmpl	$0, %eax
	jne	LBB0_8
## %bb.7:
	movl	$0, -4(%rbp)
	jmp	LBB0_19
LBB0_8:                                 ##   in Loop: Header=BB0_5 Depth=2
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %edi
	callq	_isupper
	cmpl	$0, %eax
	je	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_5 Depth=2
	movl	$1, -28(%rbp)
LBB0_10:                                ##   in Loop: Header=BB0_5 Depth=2
	movq	-40(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movzbl	(%rax,%rcx), %edi
	callq	_islower
	cmpl	$0, %eax
	je	LBB0_12
## %bb.11:                              ##   in Loop: Header=BB0_5 Depth=2
	movl	$1, -24(%rbp)
LBB0_12:                                ##   in Loop: Header=BB0_5 Depth=2
	movl	-28(%rbp), %eax
	addl	-24(%rbp), %eax
	cmpl	$2, %eax
	jne	LBB0_14
## %bb.13:
	movl	$0, -4(%rbp)
	jmp	LBB0_19
LBB0_14:                                ##   in Loop: Header=BB0_5 Depth=2
	jmp	LBB0_15
LBB0_15:                                ##   in Loop: Header=BB0_5 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB0_5
LBB0_16:                                ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_17
LBB0_17:                                ##   in Loop: Header=BB0_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_3
LBB0_18:
	movl	$1, -4(%rbp)
LBB0_19:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
