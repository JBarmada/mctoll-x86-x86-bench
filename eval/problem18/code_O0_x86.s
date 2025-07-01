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
	movq	%rsi, -16(%rbp)
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
	leaq	-35(%rbp), %rdi
	xorl	%esi, %esi
	movl	$3, %edx
	callq	_memset
	movq	-8(%rbp), %rdi
	callq	_strlen
	addq	$1, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -40(%rbp)
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	_malloc
	movq	%rax, -48(%rbp)
	movq	-48(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	$-1, %rdx
	callq	___strcpy_chk
	movq	-48(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	movq	$-1, %rdx
	callq	___strcat_chk
	movl	$0, -52(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-40(%rbp), %eax
	jge	LBB0_30
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$32, %eax
	jne	LBB0_25
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	leaq	-35(%rbp), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB0_10
## %bb.4:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	LBB0_9
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -32(%rbp)
	jle	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -68(%rbp)                 ## 4-byte Spill
	jmp	LBB0_8
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	$4, %eax
	movl	%eax, -68(%rbp)                 ## 4-byte Spill
	jmp	LBB0_8
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movslq	-32(%rbp), %rsi
	shlq	$2, %rsi
	callq	_realloc
	movq	%rax, -24(%rbp)
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -28(%rbp)
	movslq	%ecx, %rcx
	movl	$4, (%rax,%rcx,4)
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	leaq	-35(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB0_17
## %bb.11:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	LBB0_16
## %bb.12:                              ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -32(%rbp)
	jle	LBB0_14
## %bb.13:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -72(%rbp)                 ## 4-byte Spill
	jmp	LBB0_15
LBB0_14:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$4, %eax
	movl	%eax, -72(%rbp)                 ## 4-byte Spill
	jmp	LBB0_15
LBB0_15:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-72(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movslq	-32(%rbp), %rsi
	shlq	$2, %rsi
	callq	_realloc
	movq	%rax, -24(%rbp)
LBB0_16:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -28(%rbp)
	movslq	%ecx, %rcx
	movl	$2, (%rax,%rcx,4)
LBB0_17:                                ##   in Loop: Header=BB0_1 Depth=1
	leaq	-35(%rbp), %rdi
	leaq	L_.str.3(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB0_24
## %bb.18:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jne	LBB0_23
## %bb.19:                              ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -32(%rbp)
	jle	LBB0_21
## %bb.20:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	shll	$1, %eax
	movl	%eax, -76(%rbp)                 ## 4-byte Spill
	jmp	LBB0_22
LBB0_21:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$4, %eax
	movl	%eax, -76(%rbp)                 ## 4-byte Spill
	jmp	LBB0_22
LBB0_22:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-76(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	movslq	-32(%rbp), %rsi
	shlq	$2, %rsi
	callq	_realloc
	movq	%rax, -24(%rbp)
LBB0_23:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -28(%rbp)
	movslq	%ecx, %rcx
	movl	$1, (%rax,%rcx,4)
LBB0_24:                                ##   in Loop: Header=BB0_1 Depth=1
	leaq	-35(%rbp), %rdi
	leaq	L_.str.4(%rip), %rsi
	movl	$3, %edx
	callq	___strcpy_chk
	jmp	LBB0_28
LBB0_25:                                ##   in Loop: Header=BB0_1 Depth=1
	leaq	-35(%rbp), %rdi
	callq	_strlen
	movq	%rax, -64(%rbp)
	cmpq	$2, -64(%rbp)
	jae	LBB0_27
## %bb.26:                              ##   in Loop: Header=BB0_1 Depth=1
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movq	-64(%rbp), %rax
	movb	%cl, -35(%rbp,%rax)
	movq	-64(%rbp), %rax
	movb	$0, -34(%rbp,%rax)
LBB0_27:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_28
LBB0_28:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_29
LBB0_29:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB0_1
LBB0_30:
	movq	-48(%rbp), %rdi
	callq	_free
	movl	-28(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-24(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	" "

L_.str.1:                               ## @.str.1
	.asciz	"o"

L_.str.2:                               ## @.str.2
	.asciz	"o|"

L_.str.3:                               ## @.str.3
	.asciz	".|"

L_.str.4:                               ## @.str.4
	.space	1

.subsections_via_symbols
