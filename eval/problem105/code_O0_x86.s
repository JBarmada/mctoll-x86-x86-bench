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
	movslq	-12(%rbp), %rdi
	shlq	$2, %rdi
	callq	_malloc
	movq	%rax, %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, (%rax)
	movq	-32(%rbp), %rax
	movl	$0, (%rax)
	movl	$0, -36(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_5 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_15
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -40(%rbp)
	movb	$0, -41(%rbp)
	cmpl	$0, -40(%rbp)
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movb	$1, -41(%rbp)
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_5
LBB0_5:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$0, -40(%rbp)
	movb	%al, -57(%rbp)                  ## 1-byte Spill
	jle	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=2
	movb	-41(%rbp), %al
	xorb	$-1, %al
	movb	%al, -57(%rbp)                  ## 1-byte Spill
LBB0_7:                                 ##   in Loop: Header=BB0_5 Depth=2
	movb	-57(%rbp), %al                  ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_8
	jmp	LBB0_11
LBB0_8:                                 ##   in Loop: Header=BB0_5 Depth=2
	movl	-40(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_5 Depth=2
	movb	$1, -41(%rbp)
LBB0_10:                                ##   in Loop: Header=BB0_5 Depth=2
	movl	-40(%rbp), %eax
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -40(%rbp)
	jmp	LBB0_5
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	testb	$1, -41(%rbp)
	jne	LBB0_13
## %bb.12:                              ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movslq	(%rcx), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-32(%rbp), %rax
	movl	(%rax), %ecx
	addl	$1, %ecx
	movl	%ecx, (%rax)
LBB0_13:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_14
LBB0_14:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_1
LBB0_15:
	movl	$0, -48(%rbp)
LBB0_16:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_18 Depth 2
	movl	-48(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB0_25
## %bb.17:                              ##   in Loop: Header=BB0_16 Depth=1
	movl	$0, -52(%rbp)
LBB0_18:                                ##   Parent Loop BB0_16 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-52(%rbp), %eax
	movq	-32(%rbp), %rcx
	movl	(%rcx), %ecx
	subl	-48(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB0_23
## %bb.19:                              ##   in Loop: Header=BB0_18 Depth=2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-52(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movq	(%rcx), %rcx
	movl	-52(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	LBB0_21
## %bb.20:                              ##   in Loop: Header=BB0_18 Depth=2
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-52(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -56(%rbp)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movslq	-52(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-56(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	-52(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
LBB0_21:                                ##   in Loop: Header=BB0_18 Depth=2
	jmp	LBB0_22
LBB0_22:                                ##   in Loop: Header=BB0_18 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB0_18
LBB0_23:                                ##   in Loop: Header=BB0_16 Depth=1
	jmp	LBB0_24
LBB0_24:                                ##   in Loop: Header=BB0_16 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB0_16
LBB0_25:
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
