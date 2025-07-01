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
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -28(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	_strlen
	andq	$1, %rax
	cmpq	$0, %rax
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rcx
	movslq	(%rcx), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_5
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_1
LBB0_6:
	movl	$0, -28(%rbp)
LBB0_7:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_9 Depth 2
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB0_18
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=1
	movl	$0, -32(%rbp)
LBB0_9:                                 ##   Parent Loop BB0_7 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	-28(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB0_16
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=2
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	_strlen
	movq	%rax, -48(%rbp)
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	_strlen
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	ja	LBB0_13
## %bb.11:                              ##   in Loop: Header=BB0_9 Depth=2
	movq	-48(%rbp), %rax
	cmpq	-56(%rbp), %rax
	jne	LBB0_14
## %bb.12:                              ##   in Loop: Header=BB0_9 Depth=2
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jle	LBB0_14
LBB0_13:                                ##   in Loop: Header=BB0_9 Depth=2
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -40(%rbp)
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-40(%rbp), %rdx
	movq	-8(%rbp), %rax
	movl	-32(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movq	%rdx, (%rax,%rcx,8)
LBB0_14:                                ##   in Loop: Header=BB0_9 Depth=2
	jmp	LBB0_15
LBB0_15:                                ##   in Loop: Header=BB0_9 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_9
LBB0_16:                                ##   in Loop: Header=BB0_7 Depth=1
	jmp	LBB0_17
LBB0_17:                                ##   in Loop: Header=BB0_7 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_7
LBB0_18:
	movq	-24(%rbp), %rax
	movslq	(%rax), %rdi
	shlq	$3, %rdi
	callq	_malloc
	movq	%rax, -64(%rbp)
	movl	$0, -28(%rbp)
LBB0_19:                                ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	LBB0_22
## %bb.20:                              ##   in Loop: Header=BB0_19 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdx
	movq	-64(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
## %bb.21:                              ##   in Loop: Header=BB0_19 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_19
LBB0_22:
	movq	-64(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
