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
	movl	%edi, -52(%rbp)
	movl	%esi, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movl	$0, -68(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$0, -52(%rbp)
	jle	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	cltd
	idivl	-56(%rbp)
	addl	$48, %edx
	movb	%dl, %cl
	movl	-68(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -68(%rbp)
	cltq
	movb	%cl, -48(%rbp,%rax)
	movl	-52(%rbp), %eax
	cltd
	idivl	-56(%rbp)
	movl	%eax, -52(%rbp)
	jmp	LBB0_1
LBB0_3:
	movl	$0, -72(%rbp)
LBB0_4:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$0, -68(%rbp)
	jle	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_4 Depth=1
	movl	-68(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -68(%rbp)
	cltq
	movb	-48(%rbp,%rax), %dl
	movq	-64(%rbp), %rax
	movl	-72(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -72(%rbp)
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	jmp	LBB0_4
LBB0_6:
	movq	-64(%rbp), %rax
	movslq	-72(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB0_8
## %bb.7:
	addq	$80, %rsp
	popq	%rbp
	retq
LBB0_8:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
