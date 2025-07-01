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
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-28(%rbp), %rax
	movq	%rax, -40(%rbp)                 ## 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	_strlen
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 ## 8-byte Reload
	cmpq	%rcx, %rax
	jae	LBB0_13
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$32, %eax
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB0_11
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$1, -20(%rbp)
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -24(%rbp)
	movslq	%ecx, %rcx
	movb	$95, (%rax,%rcx)
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$2, -20(%rbp)
	jne	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -24(%rbp)
	movslq	%ecx, %rcx
	movb	$95, (%rax,%rcx)
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -24(%rbp)
	movslq	%ecx, %rcx
	movb	$95, (%rax,%rcx)
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$2, -20(%rbp)
	jle	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -24(%rbp)
	movslq	%ecx, %rcx
	movb	$45, (%rax,%rcx)
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -24(%rbp)
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_12
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_1
LBB0_13:
	cmpl	$1, -20(%rbp)
	jne	LBB0_15
## %bb.14:
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -24(%rbp)
	movslq	%ecx, %rcx
	movb	$95, (%rax,%rcx)
LBB0_15:
	cmpl	$2, -20(%rbp)
	jne	LBB0_17
## %bb.16:
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -24(%rbp)
	movslq	%ecx, %rcx
	movb	$95, (%rax,%rcx)
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -24(%rbp)
	movslq	%ecx, %rcx
	movb	$95, (%rax,%rcx)
LBB0_17:
	cmpl	$2, -20(%rbp)
	jle	LBB0_19
## %bb.18:
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -24(%rbp)
	movslq	%ecx, %rcx
	movb	$45, (%rax,%rcx)
LBB0_19:
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
