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
	movq	%rdx, -24(%rbp)
	movl	$10, -28(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	movq	-16(%rbp), %rax
	movl	$1, (%rax)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$1, -4(%rbp)
	je	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$1, %edx
	jne	LBB0_6
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movl	(%rax), %eax
	cmpl	-28(%rbp), %eax
	jl	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rdi
	movslq	-28(%rbp), %rsi
	shlq	$2, %rsi
	callq	_realloc
	movq	%rax, -16(%rbp)
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movl	(%rsi), %ecx
	movl	%ecx, %edi
	addl	$1, %edi
	movl	%edi, (%rsi)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	imull	$3, -4(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -4(%rbp)
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_8:
	movl	$1, -32(%rbp)
LBB0_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_11 Depth 2
	movl	-32(%rbp), %eax
	movq	-24(%rbp), %rcx
	cmpl	(%rcx), %eax
	jge	LBB0_17
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -36(%rbp)
	movl	-32(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
LBB0_11:                                ##   Parent Loop BB0_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$0, -40(%rbp)
	movb	%al, -41(%rbp)                  ## 1-byte Spill
	jl	LBB0_13
## %bb.12:                              ##   in Loop: Header=BB0_11 Depth=2
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-36(%rbp), %eax
	setg	%al
	movb	%al, -41(%rbp)                  ## 1-byte Spill
LBB0_13:                                ##   in Loop: Header=BB0_11 Depth=2
	movb	-41(%rbp), %al                  ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_14
	jmp	LBB0_15
LBB0_14:                                ##   in Loop: Header=BB0_11 Depth=2
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-16(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-40(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_11
LBB0_15:                                ##   in Loop: Header=BB0_9 Depth=1
	movl	-36(%rbp), %edx
	movq	-16(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
## %bb.16:                              ##   in Loop: Header=BB0_9 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_9
LBB0_17:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
