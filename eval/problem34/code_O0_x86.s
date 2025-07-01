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
	movl	-12(%rbp), %eax
	movl	$3, %ecx
	cltd
	idivl	%ecx
	addl	$1, %eax
	movslq	%eax, %rdi
	shlq	$2, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
	movl	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -36(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	imull	$3, -36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	imull	$3, -36(%rbp), %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_1
LBB0_4:
	movl	$0, -36(%rbp)
LBB0_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_7 Depth 2
	movl	-36(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB0_16
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movl	-36(%rbp), %eax
	movl	%eax, -48(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
LBB0_7:                                 ##   Parent Loop BB0_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	cmpl	-44(%rbp), %eax
	jge	LBB0_12
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=2
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-32(%rbp), %rcx
	movslq	-48(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_7 Depth=2
	movl	-40(%rbp), %eax
	movl	%eax, -48(%rbp)
LBB0_10:                                ##   in Loop: Header=BB0_7 Depth=2
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_7 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_7
LBB0_12:                                ##   in Loop: Header=BB0_5 Depth=1
	movl	-48(%rbp), %eax
	cmpl	-36(%rbp), %eax
	je	LBB0_14
## %bb.13:                              ##   in Loop: Header=BB0_5 Depth=1
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -52(%rbp)
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-52(%rbp), %edx
	movq	-32(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
LBB0_14:                                ##   in Loop: Header=BB0_5 Depth=1
	jmp	LBB0_15
LBB0_15:                                ##   in Loop: Header=BB0_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_5
LBB0_16:
	movl	$0, -36(%rbp)
LBB0_17:                                ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_23
## %bb.18:                              ##   in Loop: Header=BB0_17 Depth=1
	movl	-36(%rbp), %eax
	movl	$3, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB0_20
## %bb.19:                              ##   in Loop: Header=BB0_17 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -64(%rbp)                 ## 8-byte Spill
	movl	-36(%rbp), %eax
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movq	-64(%rbp), %rax                 ## 8-byte Reload
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	LBB0_21
LBB0_20:                                ##   in Loop: Header=BB0_17 Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
LBB0_21:                                ##   in Loop: Header=BB0_17 Depth=1
	jmp	LBB0_22
LBB0_22:                                ##   in Loop: Header=BB0_17 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_17
LBB0_23:
	movq	-32(%rbp), %rdi
	callq	_free
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
