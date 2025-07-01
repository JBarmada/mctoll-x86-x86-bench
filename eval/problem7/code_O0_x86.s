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
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	movl	$0, -36(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -36(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	LBB0_13
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -41(%rbp)
	movsbl	-41(%rbp), %eax
	cmpl	$40, %eax
	jne	LBB0_6
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jle	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_11
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-41(%rbp), %eax
	cmpl	$41, %eax
	jne	LBB0_10
## %bb.7:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -28(%rbp)
	cmpl	$0, -28(%rbp)
	jne	LBB0_9
## %bb.8:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	shlq	$2, %rsi
	callq	_realloc
	movq	%rax, -24(%rbp)
	movl	-32(%rbp), %edx
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -40(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	$0, -32(%rbp)
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_10
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_12
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_1
LBB0_13:
	movl	-40(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
