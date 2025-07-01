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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movl	$0, -32(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
                                        ##       Child Loop BB0_5 Depth 3
                                        ##       Child Loop BB0_8 Depth 3
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_18
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_5 Depth 3
                                        ##       Child Loop BB0_8 Depth 3
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_16
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movl	$0, -16(%rbp)
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -20(%rbp)
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -24(%rbp)
LBB0_5:                                 ##   Parent Loop BB0_1 Depth=1
                                        ##     Parent Loop BB0_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpl	$0, -20(%rbp)
	jle	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=3
	movl	-20(%rbp), %eax
	andl	$1, %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-20(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB0_5
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=2
	movl	-16(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	$0, -16(%rbp)
LBB0_8:                                 ##   Parent Loop BB0_1 Depth=1
                                        ##     Parent Loop BB0_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpl	$0, -24(%rbp)
	jle	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_8 Depth=3
	movl	-24(%rbp), %eax
	andl	$1, %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	-24(%rbp), %eax
	sarl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB0_8
LBB0_10:                                ##   in Loop: Header=BB0_3 Depth=2
	movl	-16(%rbp), %eax
	movl	%eax, -24(%rbp)
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jl	LBB0_13
## %bb.11:                              ##   in Loop: Header=BB0_3 Depth=2
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jne	LBB0_14
## %bb.12:                              ##   in Loop: Header=BB0_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-8(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	LBB0_14
LBB0_13:                                ##   in Loop: Header=BB0_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -28(%rbp)
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-28(%rbp), %edx
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
LBB0_14:                                ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_15
LBB0_15:                                ##   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_3
LBB0_16:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_17
LBB0_17:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_1
LBB0_18:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
