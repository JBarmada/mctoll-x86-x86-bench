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
	movl	%esi, -12(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jge	LBB0_2
## %bb.1:
	movl	$-1, -4(%rbp)
	jmp	LBB0_8
LBB0_2:
	movl	-12(%rbp), %eax
	cmpl	-8(%rbp), %eax
	jne	LBB0_5
## %bb.3:
	movl	-12(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$1, %edx
	jne	LBB0_5
## %bb.4:
	movl	$-1, -4(%rbp)
	jmp	LBB0_8
LBB0_5:
	movl	-12(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$1, %edx
	jne	LBB0_7
## %bb.6:
	movl	-12(%rbp), %eax
	subl	$1, %eax
	movl	%eax, -4(%rbp)
	jmp	LBB0_8
LBB0_7:
	movl	-12(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB0_8:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
