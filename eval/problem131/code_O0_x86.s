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
	subq	$32, %rsp
	movl	%edi, -12(%rbp)
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	shlq	$2, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movq	-24(%rbp), %rax
	movl	$1, (%rax)
	cmpl	$0, -12(%rbp)
	jne	LBB0_2
## %bb.1:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_10
LBB0_2:
	movq	-24(%rbp), %rax
	movl	$3, 4(%rax)
	movl	$2, -28(%rbp)
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	LBB0_9
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %edx
	addl	$1, %edx
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	LBB0_7
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)                 ## 4-byte Spill
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	-32(%rbp), %edx                 ## 4-byte Reload
	addl	%eax, %edx
	movq	-24(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_8
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_3
LBB0_9:
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_10:
	movq	-8(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
