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
	movq	%rdi, -16(%rbp)
	movl	%esi, -20(%rbp)
	movl	$0, -24(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
                                        ##       Child Loop BB0_5 Depth 3
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_14
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_5 Depth 3
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_12
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
LBB0_5:                                 ##   Parent Loop BB0_1 Depth=1
                                        ##     Parent Loop BB0_3 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_10
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=3
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	addl	(%rcx,%rdx,4), %eax
	movq	-16(%rbp), %rcx
	movslq	-32(%rbp), %rdx
	addl	(%rcx,%rdx,4), %eax
	cmpl	$0, %eax
	jne	LBB0_8
## %bb.7:
	movb	$1, -1(%rbp)
	jmp	LBB0_15
LBB0_8:                                 ##   in Loop: Header=BB0_5 Depth=3
	jmp	LBB0_9
LBB0_9:                                 ##   in Loop: Header=BB0_5 Depth=3
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_5
LBB0_10:                                ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_3 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_3
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_13
LBB0_13:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB0_1
LBB0_14:
	movb	$0, -1(%rbp)
LBB0_15:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
