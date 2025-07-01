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
	cmpl	$1, -8(%rbp)
	jge	LBB0_2
## %bb.1:
	movl	$0, -4(%rbp)
	jmp	LBB0_9
LBB0_2:
	cmpl	$1, -8(%rbp)
	jne	LBB0_4
## %bb.3:
	movl	$1, -4(%rbp)
	jmp	LBB0_9
LBB0_4:
	movl	$18, -12(%rbp)
	movl	$2, -16(%rbp)
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	movl	-16(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	imull	$10, -12(%rbp), %eax
	movl	%eax, -12(%rbp)
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	movl	-16(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -16(%rbp)
	jmp	LBB0_5
LBB0_8:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB0_9:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
