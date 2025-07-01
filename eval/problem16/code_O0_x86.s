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
	movl	$2, -16(%rbp)
	movl	$1, -20(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-20(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %r9d
	xorl	%eax, %eax
	movl	%eax, %esi
	xorl	%edx, %edx
	movq	$-1, %rcx
	leaq	L_.str(%rip), %r8
	movq	%rsi, %rdi
	movb	$0, %al
	callq	___snprintf_chk
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB0_1
LBB0_4:
	movslq	-16(%rbp), %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
	cmpq	$0, -32(%rbp)
	jne	LBB0_6
## %bb.5:
	movq	$0, -8(%rbp)
	jmp	LBB0_11
LBB0_6:
	movq	-32(%rbp), %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	xorl	%esi, %esi
	movq	$-1, %rdx
	leaq	L_.str.1(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
	movl	$1, -44(%rbp)
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jg	LBB0_10
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=1
	movq	-40(%rbp), %rdi
	movl	-44(%rbp), %r8d
	xorl	%esi, %esi
	movq	$-1, %rdx
	leaq	L_.str(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	movl	%eax, %ecx
	movq	-40(%rbp), %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movq	%rax, -40(%rbp)
## %bb.9:                               ##   in Loop: Header=BB0_7 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB0_7
LBB0_10:
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_11:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	" %d"

L_.str.1:                               ## @.str.1
	.asciz	"0"

.subsections_via_symbols
