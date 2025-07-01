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
	movq	%rdx, -32(%rbp)
	movl	%ecx, -36(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -40(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	_strlen
	movq	%rax, %rcx
	movslq	-44(%rbp), %rax
	addq	%rcx, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -44(%rbp)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_1
LBB0_4:
	movl	$0, -40(%rbp)
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	_strlen
	movq	%rax, %rcx
	movslq	-48(%rbp), %rax
	addq	%rcx, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -48(%rbp)
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_5
LBB0_8:
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jge	LBB0_10
## %bb.9:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_13
LBB0_10:
	movl	-44(%rbp), %eax
	cmpl	-48(%rbp), %eax
	jle	LBB0_12
## %bb.11:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_13
LBB0_12:
	movq	-16(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_13:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
