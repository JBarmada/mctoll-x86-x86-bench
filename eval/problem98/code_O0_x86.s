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
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %edi
	callq	_abs
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	%edx, -12(%rbp)                 ## 4-byte Spill
	movl	-8(%rbp), %edi
	callq	_abs
	movl	$10, %ecx
	cltd
	idivl	%ecx
	movl	-12(%rbp), %eax                 ## 4-byte Reload
	imull	%edx, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
