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
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -36(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_6 Depth 2
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	LBB0_20
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$32, %eax
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB0_18
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$1, -24(%rbp)
	jle	LBB0_12
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movb	$1, -29(%rbp)
	movl	$2, -40(%rbp)
LBB0_6:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	imull	-40(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	LBB0_11
## %bb.7:                               ##   in Loop: Header=BB0_6 Depth=2
	movl	-24(%rbp), %eax
	cltd
	idivl	-40(%rbp)
	cmpl	$0, %edx
	jne	LBB0_9
## %bb.8:                               ##   in Loop: Header=BB0_1 Depth=1
	movb	$0, -29(%rbp)
	jmp	LBB0_11
LBB0_9:                                 ##   in Loop: Header=BB0_6 Depth=2
	jmp	LBB0_10
LBB0_10:                                ##   in Loop: Header=BB0_6 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_6
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_13
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	movb	$0, -29(%rbp)
LBB0_13:                                ##   in Loop: Header=BB0_1 Depth=1
	testb	$1, -29(%rbp)
	je	LBB0_17
## %bb.14:                              ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -28(%rbp)
	jle	LBB0_16
## %bb.15:                              ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -28(%rbp)
	movslq	%ecx, %rcx
	movb	$32, (%rax,%rcx)
LBB0_16:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-28(%rbp), %rax
	addq	%rax, %rdi
	movq	-8(%rbp), %rsi
	movslq	-36(%rbp), %rax
	addq	%rax, %rsi
	movslq	-24(%rbp), %rcx
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	subq	%rcx, %rax
	addq	%rax, %rsi
	movslq	-24(%rbp), %rdx
	movq	$-1, %rcx
	callq	___memcpy_chk
	movl	-24(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
LBB0_17:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -24(%rbp)
LBB0_18:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_19
LBB0_19:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_1
LBB0_20:
	cmpl	$1, -24(%rbp)
	jle	LBB0_28
## %bb.21:
	movb	$1, -29(%rbp)
	movl	$2, -40(%rbp)
LBB0_22:                                ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	imull	-40(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jg	LBB0_27
## %bb.23:                              ##   in Loop: Header=BB0_22 Depth=1
	movl	-24(%rbp), %eax
	cltd
	idivl	-40(%rbp)
	cmpl	$0, %edx
	jne	LBB0_25
## %bb.24:
	movb	$0, -29(%rbp)
	jmp	LBB0_27
LBB0_25:                                ##   in Loop: Header=BB0_22 Depth=1
	jmp	LBB0_26
LBB0_26:                                ##   in Loop: Header=BB0_22 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_22
LBB0_27:
	jmp	LBB0_29
LBB0_28:
	movb	$0, -29(%rbp)
LBB0_29:
	testb	$1, -29(%rbp)
	je	LBB0_33
## %bb.30:
	cmpl	$0, -28(%rbp)
	jle	LBB0_32
## %bb.31:
	movq	-16(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -28(%rbp)
	movslq	%ecx, %rcx
	movb	$32, (%rax,%rcx)
LBB0_32:
	movq	-16(%rbp), %rdi
	movslq	-28(%rbp), %rax
	addq	%rax, %rdi
	movq	-8(%rbp), %rsi
	movslq	-36(%rbp), %rax
	addq	%rax, %rsi
	movslq	-24(%rbp), %rcx
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	subq	%rcx, %rax
	addq	%rax, %rsi
	movslq	-24(%rbp), %rdx
	movq	$-1, %rcx
	callq	___memcpy_chk
	movl	-24(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
LBB0_33:
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
