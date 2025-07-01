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
	subq	$32, %rsp
	movl	%edi, -8(%rbp)
	movl	$0, -12(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-12(%rbp), %eax
	imull	-12(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -16(%rbp)                 ## 4-byte Spill
	movl	-8(%rbp), %edi
	callq	_abs
	movl	%eax, %ecx
	movl	-16(%rbp), %eax                 ## 4-byte Reload
	cmpl	%ecx, %eax
	jg	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	imull	-12(%rbp), %eax
	imull	-12(%rbp), %eax
	movl	%eax, -20(%rbp)                 ## 4-byte Spill
	movl	-8(%rbp), %edi
	callq	_abs
	movl	%eax, %ecx
	movl	-20(%rbp), %eax                 ## 4-byte Reload
	cmpl	%ecx, %eax
	jne	LBB0_4
## %bb.3:
	movl	$1, -4(%rbp)
	jmp	LBB0_7
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_5
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-12(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -12(%rbp)
	jmp	LBB0_1
LBB0_6:
	movl	$0, -4(%rbp)
LBB0_7:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
