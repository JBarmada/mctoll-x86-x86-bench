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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	leaq	L_.str(%rip), %rax
	movq	%rax, -32(%rbp)
	movq	$0, -40(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -48(%rbp)
	movl	$0, -52(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
	movq	%rax, -64(%rbp)
	movq	-64(%rbp), %rdi
	addq	$1, %rdi
	callq	_malloc
	movq	%rax, -72(%rbp)
	movl	$0, -76(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-76(%rbp), %rax
	cmpq	-64(%rbp), %rax
	ja	LBB0_13
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movsbl	(%rax,%rcx), %edi
	callq	_isspace
	cmpl	$0, %eax
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	jne	LBB0_7
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	movl	-76(%rbp), %ecx
	subl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	$0, (%rax,%rcx)
	movq	-40(%rbp), %rdi
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rsi
	shlq	$3, %rsi
	callq	_realloc
	movq	%rax, -40(%rbp)
	movq	-72(%rbp), %rdi
	callq	_strlen
	movq	%rax, %rdi
	addq	$1, %rdi
	callq	_malloc
	movq	%rax, %rdx
	movq	-40(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movq	-40(%rbp), %rax
	movslq	-48(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-72(%rbp), %rsi
	movq	$-1, %rdx
	callq	___strcpy_chk
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	movl	$0, -44(%rbp)
	jmp	LBB0_11
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movb	(%rax,%rcx), %dl
	movq	-72(%rbp), %rax
	movl	-76(%rbp), %ecx
	subl	-52(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movq	-32(%rbp), %rdi
	movq	-8(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movsbl	(%rax,%rcx), %esi
	callq	_strchr
	cmpq	$0, %rax
	jne	LBB0_10
## %bb.8:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movzbl	(%rax,%rcx), %edi
	callq	_isalpha
	cmpl	$0, %eax
	je	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_12
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	LBB0_1
LBB0_13:
	movq	-72(%rbp), %rdi
	callq	_free
	movl	-48(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"aeiouAEIOU"

.subsections_via_symbols
