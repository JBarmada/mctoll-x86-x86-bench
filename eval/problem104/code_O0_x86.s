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
	subq	$48, %rsp
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jle	LBB0_2
## %bb.1:
	leaq	L_.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_6
LBB0_2:
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -20(%rbp)
	movl	$33, %edi
	callq	_malloc
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	movb	$0, (%rax)
	movl	$32, -36(%rbp)
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %edx
	addl	$-1, %edx
	movl	%edx, -36(%rbp)
	movslq	%ecx, %rcx
	movb	$0, (%rax,%rcx)
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	addl	$48, %edx
                                        ## kill: def $dl killed $dl killed $edx
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %esi
	addl	$-1, %esi
	movl	%esi, -36(%rbp)
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movl	-20(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -20(%rbp)
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -20(%rbp)
	jg	LBB0_3
## %bb.5:
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -8(%rbp)
LBB0_6:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"-1"

.subsections_via_symbols
