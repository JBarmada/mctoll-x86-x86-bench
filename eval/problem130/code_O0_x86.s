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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movl	$0, -28(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_10
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -32(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_8
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-32(%rbp), %rcx
	cmpl	$1, (%rax,%rcx,4)
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	movl	%eax, -40(%rbp)
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_3
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_9
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_1
LBB0_10:
	movl	-12(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -44(%rbp)
	cmpl	$0, -36(%rbp)
	jle	LBB0_13
## %bb.11:
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-40(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-44(%rbp), %eax
	jge	LBB0_13
## %bb.12:
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-40(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -44(%rbp)
LBB0_13:
	movl	-36(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB0_16
## %bb.14:
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-40(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-44(%rbp), %eax
	jge	LBB0_16
## %bb.15:
	movq	-8(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-40(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -44(%rbp)
LBB0_16:
	cmpl	$0, -40(%rbp)
	jle	LBB0_19
## %bb.17:
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-44(%rbp), %eax
	jge	LBB0_19
## %bb.18:
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -44(%rbp)
LBB0_19:
	movl	-40(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB0_22
## %bb.20:
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-44(%rbp), %eax
	jge	LBB0_22
## %bb.21:
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -44(%rbp)
LBB0_22:
	movl	-16(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movslq	-16(%rbp), %rdi
	shlq	$2, %rdi
	callq	_malloc
	movq	%rax, -56(%rbp)
	movl	$0, -28(%rbp)
LBB0_23:                                ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jge	LBB0_29
## %bb.24:                              ##   in Loop: Header=BB0_23 Depth=1
	movl	-28(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB0_26
## %bb.25:                              ##   in Loop: Header=BB0_23 Depth=1
	movq	-56(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	$1, (%rax,%rcx,4)
	jmp	LBB0_27
LBB0_26:                                ##   in Loop: Header=BB0_23 Depth=1
	movl	-44(%rbp), %edx
	movq	-56(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
LBB0_27:                                ##   in Loop: Header=BB0_23 Depth=1
	jmp	LBB0_28
LBB0_28:                                ##   in Loop: Header=BB0_23 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_23
LBB0_29:
	movq	-56(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
