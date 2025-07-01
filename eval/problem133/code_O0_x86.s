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
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movl	$0, -28(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	%rax, -40(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_strlen
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 ## 8-byte Reload
	cmpq	%rcx, %rax
	jae	LBB0_14
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$91, %eax
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$93, %eax
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -20(%rbp)
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -20(%rbp)
	jge	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -20(%rbp)
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jle	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	movl	%eax, -24(%rbp)
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	movl	-24(%rbp), %ecx
	subl	$2, %ecx
	cmpl	%ecx, %eax
	jg	LBB0_12
## %bb.11:
	movl	$1, -4(%rbp)
	jmp	LBB0_15
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_13
LBB0_13:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_1
LBB0_14:
	movl	$0, -4(%rbp)
LBB0_15:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
