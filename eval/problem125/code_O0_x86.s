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
	movq	-16(%rbp), %rdi
	callq	_strlen
	cmpq	$10, %rax
	je	LBB0_2
## %bb.1:
	movl	$0, -4(%rbp)
	jmp	LBB0_31
LBB0_2:
	movl	$0, -32(%rbp)
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$10, -32(%rbp)
	jge	LBB0_15
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	cmpl	$2, -32(%rbp)
	je	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	cmpl	$5, -32(%rbp)
	jne	LBB0_9
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$45, %eax
	je	LBB0_8
## %bb.7:
	movl	$0, -4(%rbp)
	jmp	LBB0_31
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_13
LBB0_9:                                 ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$48, %eax
	jl	LBB0_11
## %bb.10:                              ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$57, %eax
	jle	LBB0_12
LBB0_11:
	movl	$0, -4(%rbp)
	jmp	LBB0_31
LBB0_12:                                ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_13
LBB0_13:                                ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_14
LBB0_14:                                ##   in Loop: Header=BB0_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_3
LBB0_15:
	movq	-16(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -35(%rbp)
	movq	-16(%rbp), %rax
	movb	1(%rax), %al
	movb	%al, -34(%rbp)
	movb	$0, -33(%rbp)
	movq	-16(%rbp), %rax
	movb	3(%rax), %al
	movb	%al, -38(%rbp)
	movq	-16(%rbp), %rax
	movb	4(%rax), %al
	movb	%al, -37(%rbp)
	movb	$0, -36(%rbp)
	movq	-16(%rbp), %rax
	movb	6(%rax), %al
	movb	%al, -43(%rbp)
	movq	-16(%rbp), %rax
	movb	7(%rax), %al
	movb	%al, -42(%rbp)
	movq	-16(%rbp), %rax
	movb	8(%rax), %al
	movb	%al, -41(%rbp)
	movq	-16(%rbp), %rax
	movb	9(%rax), %al
	movb	%al, -40(%rbp)
	movb	$0, -39(%rbp)
	leaq	-35(%rbp), %rdi
	callq	_atoi
	movl	%eax, -20(%rbp)
	leaq	-38(%rbp), %rdi
	callq	_atoi
	movl	%eax, -24(%rbp)
	leaq	-43(%rbp), %rdi
	callq	_atoi
	movl	%eax, -28(%rbp)
	cmpl	$1, -20(%rbp)
	jl	LBB0_17
## %bb.16:
	cmpl	$12, -20(%rbp)
	jle	LBB0_18
LBB0_17:
	movl	$0, -4(%rbp)
	jmp	LBB0_31
LBB0_18:
	cmpl	$1, -24(%rbp)
	jl	LBB0_20
## %bb.19:
	cmpl	$31, -24(%rbp)
	jle	LBB0_21
LBB0_20:
	movl	$0, -4(%rbp)
	jmp	LBB0_31
LBB0_21:
	cmpl	$4, -20(%rbp)
	je	LBB0_25
## %bb.22:
	cmpl	$6, -20(%rbp)
	je	LBB0_25
## %bb.23:
	cmpl	$9, -20(%rbp)
	je	LBB0_25
## %bb.24:
	cmpl	$11, -20(%rbp)
	jne	LBB0_27
LBB0_25:
	cmpl	$31, -24(%rbp)
	jne	LBB0_27
## %bb.26:
	movl	$0, -4(%rbp)
	jmp	LBB0_31
LBB0_27:
	cmpl	$2, -20(%rbp)
	jne	LBB0_30
## %bb.28:
	cmpl	$29, -24(%rbp)
	jle	LBB0_30
## %bb.29:
	movl	$0, -4(%rbp)
	jmp	LBB0_31
LBB0_30:
	movl	$1, -4(%rbp)
LBB0_31:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
