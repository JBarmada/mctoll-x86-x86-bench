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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movl	-12(%rbp), %ecx
	movq	-32(%rbp), %rax
	movl	%ecx, (%rax)
	cmpl	$0, -12(%rbp)
	jne	LBB0_2
## %bb.1:
	movq	-24(%rbp), %rax
	movq	$0, (%rax)
	jmp	LBB0_23
LBB0_2:
	movslq	-12(%rbp), %rdi
	shlq	$2, %rdi
	callq	_malloc
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-24(%rbp), %rax
	cmpq	$0, (%rax)
	jne	LBB0_4
## %bb.3:
	movl	$1, %edi
	callq	_exit
LBB0_4:
	movl	$0, -36(%rbp)
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-36(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_5
LBB0_8:
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movq	-8(%rbp), %rcx
	movl	-12(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$1, %edx
	sete	%al
	andb	$1, %al
	movzbl	%al, %eax
	movl	%eax, -40(%rbp)
	movl	$0, -44(%rbp)
LBB0_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_11 Depth 2
	movl	-44(%rbp), %eax
	movl	-12(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB0_23
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
LBB0_11:                                ##   Parent Loop BB0_9 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-48(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_21
## %bb.12:                              ##   in Loop: Header=BB0_11 Depth=2
	cmpl	$0, -40(%rbp)
	je	LBB0_16
## %bb.13:                              ##   in Loop: Header=BB0_11 Depth=2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-48(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	LBB0_15
## %bb.14:                              ##   in Loop: Header=BB0_11 Depth=2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-48(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-52(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-48(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
LBB0_15:                                ##   in Loop: Header=BB0_11 Depth=2
	jmp	LBB0_19
LBB0_16:                                ##   in Loop: Header=BB0_11 Depth=2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movslq	-48(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	LBB0_18
## %bb.17:                              ##   in Loop: Header=BB0_11 Depth=2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-48(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-44(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-56(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-48(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
LBB0_18:                                ##   in Loop: Header=BB0_11 Depth=2
	jmp	LBB0_19
LBB0_19:                                ##   in Loop: Header=BB0_11 Depth=2
	jmp	LBB0_20
LBB0_20:                                ##   in Loop: Header=BB0_11 Depth=2
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB0_11
LBB0_21:                                ##   in Loop: Header=BB0_9 Depth=1
	jmp	LBB0_22
LBB0_22:                                ##   in Loop: Header=BB0_9 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB0_9
LBB0_23:
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
