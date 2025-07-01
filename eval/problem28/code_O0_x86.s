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
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	movl	$0, -24(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_11
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -25(%rbp)
	movsbl	-25(%rbp), %eax
	cmpl	$97, %eax
	jl	LBB0_5
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$122, %eax
	jg	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-25(%rbp), %eax
	subl	$32, %eax
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -25(%rbp)
	jmp	LBB0_9
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$65, %eax
	jl	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-25(%rbp), %eax
	cmpl	$90, %eax
	jg	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-25(%rbp), %eax
	addl	$32, %eax
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -25(%rbp)
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_9
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	movb	-25(%rbp), %dl
	movq	-16(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
## %bb.10:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB0_1
LBB0_11:
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
