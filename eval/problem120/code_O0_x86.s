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
	movq	%rsi, -24(%rbp)
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
	movl	$1, -44(%rbp)
	movl	$0, -40(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	LBB0_10
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$40, %eax
	jne	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$41, %eax
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -28(%rbp)
	jge	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -44(%rbp)
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_9
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_1
LBB0_10:
	movl	$0, -40(%rbp)
LBB0_11:                                ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB0_20
## %bb.12:                              ##   in Loop: Header=BB0_11 Depth=1
	movq	-24(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$40, %eax
	jne	LBB0_14
## %bb.13:                              ##   in Loop: Header=BB0_11 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
LBB0_14:                                ##   in Loop: Header=BB0_11 Depth=1
	movq	-24(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$41, %eax
	jne	LBB0_16
## %bb.15:                              ##   in Loop: Header=BB0_11 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
LBB0_16:                                ##   in Loop: Header=BB0_11 Depth=1
	cmpl	$0, -28(%rbp)
	jge	LBB0_18
## %bb.17:                              ##   in Loop: Header=BB0_11 Depth=1
	movl	$0, -44(%rbp)
LBB0_18:                                ##   in Loop: Header=BB0_11 Depth=1
	jmp	LBB0_19
LBB0_19:                                ##   in Loop: Header=BB0_11 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_11
LBB0_20:
	cmpl	$0, -28(%rbp)
	jne	LBB0_23
## %bb.21:
	cmpl	$0, -44(%rbp)
	je	LBB0_23
## %bb.22:
	leaq	L_.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_47
LBB0_23:
	movl	$0, -28(%rbp)
	movl	$1, -44(%rbp)
	movl	$0, -40(%rbp)
LBB0_24:                                ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB0_33
## %bb.25:                              ##   in Loop: Header=BB0_24 Depth=1
	movq	-24(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$40, %eax
	jne	LBB0_27
## %bb.26:                              ##   in Loop: Header=BB0_24 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
LBB0_27:                                ##   in Loop: Header=BB0_24 Depth=1
	movq	-24(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$41, %eax
	jne	LBB0_29
## %bb.28:                              ##   in Loop: Header=BB0_24 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
LBB0_29:                                ##   in Loop: Header=BB0_24 Depth=1
	cmpl	$0, -28(%rbp)
	jge	LBB0_31
## %bb.30:                              ##   in Loop: Header=BB0_24 Depth=1
	movl	$0, -44(%rbp)
LBB0_31:                                ##   in Loop: Header=BB0_24 Depth=1
	jmp	LBB0_32
LBB0_32:                                ##   in Loop: Header=BB0_24 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_24
LBB0_33:
	movl	$0, -40(%rbp)
LBB0_34:                                ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	LBB0_43
## %bb.35:                              ##   in Loop: Header=BB0_34 Depth=1
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$40, %eax
	jne	LBB0_37
## %bb.36:                              ##   in Loop: Header=BB0_34 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
LBB0_37:                                ##   in Loop: Header=BB0_34 Depth=1
	movq	-16(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$41, %eax
	jne	LBB0_39
## %bb.38:                              ##   in Loop: Header=BB0_34 Depth=1
	movl	-28(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -28(%rbp)
LBB0_39:                                ##   in Loop: Header=BB0_34 Depth=1
	cmpl	$0, -28(%rbp)
	jge	LBB0_41
## %bb.40:                              ##   in Loop: Header=BB0_34 Depth=1
	movl	$0, -44(%rbp)
LBB0_41:                                ##   in Loop: Header=BB0_34 Depth=1
	jmp	LBB0_42
LBB0_42:                                ##   in Loop: Header=BB0_34 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_34
LBB0_43:
	cmpl	$0, -28(%rbp)
	jne	LBB0_46
## %bb.44:
	cmpl	$0, -44(%rbp)
	je	LBB0_46
## %bb.45:
	leaq	L_.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_47
LBB0_46:
	leaq	L_.str.1(%rip), %rax
	movq	%rax, -8(%rbp)
LBB0_47:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Yes"

L_.str.1:                               ## @.str.1
	.asciz	"No"

.subsections_via_symbols
