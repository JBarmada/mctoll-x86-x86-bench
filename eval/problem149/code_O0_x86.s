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
	subq	$144, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -96(%rbp)
	movq	%rsi, -104(%rbp)
	movq	%rdx, -112(%rbp)
	leaq	-80(%rbp), %rdi
	leaq	l___const.func0.planets(%rip), %rsi
	movl	$64, %edx
	callq	_memcpy
	movl	$-1, -116(%rbp)
	movl	$-1, -120(%rbp)
	movl	$0, -124(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$8, -124(%rbp)
	jge	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movslq	-124(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rdi
	movq	-96(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-124(%rbp), %eax
	movl	%eax, -116(%rbp)
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movslq	-124(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rdi
	movq	-104(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-124(%rbp), %eax
	movl	%eax, -120(%rbp)
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	LBB0_1
LBB0_8:
	cmpl	$-1, -116(%rbp)
	je	LBB0_11
## %bb.9:
	cmpl	$-1, -120(%rbp)
	je	LBB0_11
## %bb.10:
	movl	-116(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jne	LBB0_12
LBB0_11:
	movq	-112(%rbp), %rax
	movl	$0, (%rax)
	movq	$0, -88(%rbp)
	jmp	LBB0_21
LBB0_12:
	movl	-116(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jle	LBB0_14
## %bb.13:
	movl	-116(%rbp), %eax
	movl	%eax, -128(%rbp)
	movl	-120(%rbp), %eax
	movl	%eax, -116(%rbp)
	movl	-128(%rbp), %eax
	movl	%eax, -120(%rbp)
LBB0_14:
	movl	-120(%rbp), %ecx
	subl	-116(%rbp), %ecx
	subl	$1, %ecx
	movq	-112(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-112(%rbp), %rax
	cmpl	$0, (%rax)
	jg	LBB0_16
## %bb.15:
	movq	-112(%rbp), %rax
	movl	$0, (%rax)
	movq	$0, -88(%rbp)
	jmp	LBB0_21
LBB0_16:
	movq	-112(%rbp), %rax
	movslq	(%rax), %rdi
	shlq	$3, %rdi
	callq	_malloc
	movq	%rax, -136(%rbp)
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
LBB0_17:                                ## =>This Inner Loop Header: Depth=1
	movl	-124(%rbp), %eax
	cmpl	-120(%rbp), %eax
	jge	LBB0_20
## %bb.18:                              ##   in Loop: Header=BB0_17 Depth=1
	movslq	-124(%rbp), %rax
	movq	-80(%rbp,%rax,8), %rdx
	movq	-136(%rbp), %rax
	movl	-124(%rbp), %ecx
	subl	-116(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	%rdx, (%rax,%rcx,8)
## %bb.19:                              ##   in Loop: Header=BB0_17 Depth=1
	movl	-124(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -124(%rbp)
	jmp	LBB0_17
LBB0_20:
	movq	-136(%rbp), %rax
	movq	%rax, -88(%rbp)
LBB0_21:
	movq	-88(%rbp), %rax
	movq	%rax, -144(%rbp)                ## 8-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB0_23
## %bb.22:
	movq	-144(%rbp), %rax                ## 8-byte Reload
	addq	$144, %rsp
	popq	%rbp
	retq
LBB0_23:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Mercury"

L_.str.1:                               ## @.str.1
	.asciz	"Venus"

L_.str.2:                               ## @.str.2
	.asciz	"Earth"

L_.str.3:                               ## @.str.3
	.asciz	"Mars"

L_.str.4:                               ## @.str.4
	.asciz	"Jupiter"

L_.str.5:                               ## @.str.5
	.asciz	"Saturn"

L_.str.6:                               ## @.str.6
	.asciz	"Uranus"

L_.str.7:                               ## @.str.7
	.asciz	"Neptune"

	.section	__DATA,__const
	.p2align	4                               ## @__const.func0.planets
l___const.func0.planets:
	.quad	L_.str
	.quad	L_.str.1
	.quad	L_.str.2
	.quad	L_.str.3
	.quad	L_.str.4
	.quad	L_.str.5
	.quad	L_.str.6
	.quad	L_.str.7

.subsections_via_symbols
