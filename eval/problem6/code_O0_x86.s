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
	movl	%esi, -12(%rbp)
	movl	%edx, -16(%rbp)
	movq	%rcx, -24(%rbp)
	cmpl	$0, -12(%rbp)
	jle	LBB0_2
## %bb.1:
	movl	-12(%rbp), %eax
	shll	$1, %eax
	subl	$1, %eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	jmp	LBB0_3
LBB0_2:
	xorl	%eax, %eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	jmp	LBB0_3
LBB0_3:
	movl	-44(%rbp), %ecx                 ## 4-byte Reload
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	movslq	(%rax), %rdi
	shlq	$2, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
	cmpl	$0, -12(%rbp)
	jle	LBB0_5
## %bb.4:
	movq	-8(%rbp), %rax
	movl	(%rax), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
LBB0_5:
	movl	$1, -36(%rbp)
	movl	$1, -40(%rbp)
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_9
## %bb.7:                               ##   in Loop: Header=BB0_6 Depth=1
	movl	-16(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -40(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -40(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
## %bb.8:                               ##   in Loop: Header=BB0_6 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_6
LBB0_9:
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
