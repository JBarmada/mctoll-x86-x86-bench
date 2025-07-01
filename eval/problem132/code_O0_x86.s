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
	movl	$1, -8(%rbp)
	movl	$0, -12(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$0, -4(%rbp)
	jle	LBB0_5
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -16(%rbp)
	movl	-16(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$1, %edx
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$1, -12(%rbp)
	movl	-16(%rbp), %eax
	imull	-8(%rbp), %eax
	movl	%eax, -8(%rbp)
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-4(%rbp), %eax
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -4(%rbp)
	jmp	LBB0_1
LBB0_5:
	cmpl	$0, -12(%rbp)
	je	LBB0_7
## %bb.6:
	movl	-8(%rbp), %eax
	movl	%eax, -20(%rbp)                 ## 4-byte Spill
	jmp	LBB0_8
LBB0_7:
	xorl	%eax, %eax
	movl	%eax, -20(%rbp)                 ## 4-byte Spill
	jmp	LBB0_8
LBB0_8:
	movl	-20(%rbp), %eax                 ## 4-byte Reload
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
