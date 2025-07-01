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
	movl	%edi, -8(%rbp)
	movl	$1, -12(%rbp)
	movl	$2, -16(%rbp)
	movl	$0, -24(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	LBB0_13
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-12(%rbp), %eax
	movl	%eax, -20(%rbp)
	movl	-16(%rbp), %eax
	movl	%eax, -12(%rbp)
	movl	-20(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$1, -28(%rbp)
	movl	$2, -32(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-32(%rbp), %eax
	imull	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	LBB0_8
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movl	-12(%rbp), %eax
	cltd
	idivl	-32(%rbp)
	cmpl	$0, %edx
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -28(%rbp)
	jmp	LBB0_8
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=2
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_3
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -28(%rbp)
	je	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	LBB0_12
## %bb.11:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
	jmp	LBB0_14
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_13:
	movl	$0, -4(%rbp)
LBB0_14:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
