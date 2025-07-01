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
	movq	%rdi, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	cmpl	$5, -28(%rbp)
	jge	LBB0_2
## %bb.1:
	leaq	L_.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_24
LBB0_2:
	movq	-16(%rbp), %rax
	movb	(%rax), %al
	movb	%al, -29(%rbp)
	movsbl	-29(%rbp), %eax
	cmpl	$65, %eax
	jl	LBB0_6
## %bb.3:
	movsbl	-29(%rbp), %eax
	cmpl	$90, %eax
	jle	LBB0_5
## %bb.4:
	movsbl	-29(%rbp), %eax
	cmpl	$97, %eax
	jl	LBB0_6
LBB0_5:
	movsbl	-29(%rbp), %eax
	cmpl	$122, %eax
	jle	LBB0_7
LBB0_6:
	leaq	L_.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_24
LBB0_7:
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	addq	%rcx, %rax
	addq	$-4, %rax
	movq	%rax, -40(%rbp)
	movq	-40(%rbp), %rdi
	leaq	L_.str.1(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	je	LBB0_11
## %bb.8:
	movq	-40(%rbp), %rdi
	leaq	L_.str.2(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	je	LBB0_11
## %bb.9:
	movq	-40(%rbp), %rdi
	leaq	L_.str.3(%rip), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	je	LBB0_11
## %bb.10:
	leaq	L_.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_24
LBB0_11:
	movl	$0, -44(%rbp)
LBB0_12:                                ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB0_20
## %bb.13:                              ##   in Loop: Header=BB0_12 Depth=1
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$48, %eax
	jl	LBB0_16
## %bb.14:                              ##   in Loop: Header=BB0_12 Depth=1
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$57, %eax
	jg	LBB0_16
## %bb.15:                              ##   in Loop: Header=BB0_12 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
LBB0_16:                                ##   in Loop: Header=BB0_12 Depth=1
	movq	-16(%rbp), %rax
	movslq	-44(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$46, %eax
	jne	LBB0_18
## %bb.17:                              ##   in Loop: Header=BB0_12 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
LBB0_18:                                ##   in Loop: Header=BB0_12 Depth=1
	jmp	LBB0_19
LBB0_19:                                ##   in Loop: Header=BB0_12 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB0_12
LBB0_20:
	cmpl	$3, -20(%rbp)
	jg	LBB0_22
## %bb.21:
	cmpl	$1, -24(%rbp)
	je	LBB0_23
LBB0_22:
	leaq	L_.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_24
LBB0_23:
	leaq	L_.str.4(%rip), %rax
	movq	%rax, -8(%rbp)
LBB0_24:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"No"

L_.str.1:                               ## @.str.1
	.asciz	".txt"

L_.str.2:                               ## @.str.2
	.asciz	".exe"

L_.str.3:                               ## @.str.3
	.asciz	".dll"

L_.str.4:                               ## @.str.4
	.asciz	"Yes"

.subsections_via_symbols
