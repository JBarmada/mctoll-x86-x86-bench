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
	movq	-16(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -28(%rbp)
	movq	-24(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	_malloc
	movq	%rax, -40(%rbp)
	movl	$0, -44(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-44(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-44(%rbp), %rax
	addq	%rax, %rsi
	movl	-32(%rbp), %eax
	subl	-44(%rbp), %eax
	movslq	%eax, %rdx
	movq	$-1, %rcx
	callq	___strncpy_chk
	movq	-40(%rbp), %rdi
	movslq	-32(%rbp), %rax
	addq	%rax, %rdi
	movslq	-44(%rbp), %rcx
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	subq	%rcx, %rax
	addq	%rax, %rdi
	movq	-24(%rbp), %rsi
	movslq	-44(%rbp), %rdx
	movq	$-1, %rcx
	callq	___strncpy_chk
	movq	-40(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movq	-16(%rbp), %rdi
	movq	-40(%rbp), %rsi
	callq	_strstr
	cmpq	$0, %rax
	je	LBB0_4
## %bb.3:
	movq	-40(%rbp), %rdi
	callq	_free
	movb	$1, -1(%rbp)
	jmp	LBB0_7
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_5
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB0_1
LBB0_6:
	movq	-40(%rbp), %rdi
	callq	_free
	movb	$0, -1(%rbp)
LBB0_7:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
