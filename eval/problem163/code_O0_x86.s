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
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$0, (%rax)
	movl	-8(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	LBB0_2
## %bb.1:
	movl	-4(%rbp), %eax
	movl	%eax, -28(%rbp)
	movl	-8(%rbp), %eax
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %eax
	movl	%eax, -8(%rbp)
LBB0_2:
	movl	-4(%rbp), %eax
	movl	%eax, -32(%rbp)
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jg	LBB0_9
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	cmpl	$10, -32(%rbp)
	jge	LBB0_7
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	movl	-32(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_3 Depth=1
	movl	-32(%rbp), %edx
	movq	-16(%rbp), %rax
	movq	-24(%rbp), %rsi
	movl	(%rsi), %ecx
	movl	%ecx, %edi
	addl	$1, %edi
	movl	%edi, (%rsi)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_8
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_3
LBB0_9:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
