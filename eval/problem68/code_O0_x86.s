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
	subq	$80, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -40(%rbp)
	movl	%esi, -44(%rbp)
	leaq	-18(%rbp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	_memset
	leaq	-28(%rbp), %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	_memset
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-40(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	LBB0_13
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	callq	_isdigit
	cmpl	$0, %eax
	je	LBB0_7
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -48(%rbp)
	jne	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	cltq
	movb	%cl, -18(%rbp,%rax)
	jmp	LBB0_6
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movl	-52(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -52(%rbp)
	cltq
	movb	%cl, -28(%rbp,%rax)
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_11
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -48(%rbp)
	jne	LBB0_10
## %bb.8:                               ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -52(%rbp)
	jle	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$1, -48(%rbp)
	movl	$0, -52(%rbp)
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_12
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB0_1
LBB0_13:
	movl	-44(%rbp), %eax
	movl	%eax, -68(%rbp)                 ## 4-byte Spill
	leaq	-18(%rbp), %rdi
	callq	_atoi
	movl	%eax, %ecx
	movl	-68(%rbp), %eax                 ## 4-byte Reload
	subl	%ecx, %eax
	movl	%eax, -64(%rbp)                 ## 4-byte Spill
	leaq	-28(%rbp), %rdi
	callq	_atoi
	movl	%eax, %ecx
	movl	-64(%rbp), %eax                 ## 4-byte Reload
	subl	%ecx, %eax
	movl	%eax, -60(%rbp)                 ## 4-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB0_15
## %bb.14:
	movl	-60(%rbp), %eax                 ## 4-byte Reload
	addq	$80, %rsp
	popq	%rbp
	retq
LBB0_15:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
