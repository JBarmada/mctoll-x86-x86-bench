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
	movl	%edi, -4(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -12(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_5 Depth 2
	movl	-12(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jge	LBB0_12
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	movl	$11, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	movl	$13, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB0_10
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
LBB0_5:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$0, -16(%rbp)
	jle	LBB0_9
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=2
	movl	-16(%rbp), %eax
	movl	$10, %ecx
	cltd
	idivl	%ecx
	cmpl	$7, %edx
	jne	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=2
	movl	-8(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -8(%rbp)
LBB0_8:                                 ##   in Loop: Header=BB0_5 Depth=2
	movl	-16(%rbp), %eax
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -16(%rbp)
	jmp	LBB0_5
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_10
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB0_1
LBB0_12:
	movl	-8(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
