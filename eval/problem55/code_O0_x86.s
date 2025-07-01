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
	movq	%rdi, -16(%rbp)
	movq	%rsi, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -32(%rbp)
	movl	$0, -36(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	movl	-36(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB0_12
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movb	$0, -37(%rbp)
	movl	$0, -44(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-44(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	LBB0_8
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	movq	-24(%rbp), %rcx
	movslq	-44(%rbp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movb	$1, -37(%rbp)
	jmp	LBB0_8
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB0_3
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	testb	$1, -37(%rbp)
	jne	LBB0_10
## %bb.9:
	movb	$0, -1(%rbp)
	jmp	LBB0_25
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_1
LBB0_12:
	movl	$0, -48(%rbp)
LBB0_13:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_15 Depth 2
	movl	-48(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	LBB0_24
## %bb.14:                              ##   in Loop: Header=BB0_13 Depth=1
	movb	$0, -49(%rbp)
	movl	$0, -56(%rbp)
LBB0_15:                                ##   Parent Loop BB0_13 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB0_20
## %bb.16:                              ##   in Loop: Header=BB0_15 Depth=2
	movq	-24(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	movq	-16(%rbp), %rcx
	movslq	-56(%rbp), %rdx
	movsbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	jne	LBB0_18
## %bb.17:                              ##   in Loop: Header=BB0_13 Depth=1
	movb	$1, -49(%rbp)
	jmp	LBB0_20
LBB0_18:                                ##   in Loop: Header=BB0_15 Depth=2
	jmp	LBB0_19
LBB0_19:                                ##   in Loop: Header=BB0_15 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB0_15
LBB0_20:                                ##   in Loop: Header=BB0_13 Depth=1
	testb	$1, -49(%rbp)
	jne	LBB0_22
## %bb.21:
	movb	$0, -1(%rbp)
	jmp	LBB0_25
LBB0_22:                                ##   in Loop: Header=BB0_13 Depth=1
	jmp	LBB0_23
LBB0_23:                                ##   in Loop: Header=BB0_13 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB0_13
LBB0_24:
	movb	$1, -1(%rbp)
LBB0_25:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
