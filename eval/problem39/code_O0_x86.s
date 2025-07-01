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
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	-8(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %eax
	addl	$2, %eax
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -20(%rbp)
	movl	$0, -28(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_12
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	imull	$3, -28(%rbp), %eax
	addl	$3, %eax
	cmpl	-16(%rbp), %eax
	jg	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$3, %eax
	movl	%eax, -40(%rbp)                 ## 4-byte Spill
	jmp	LBB0_5
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-16(%rbp), %eax
	imull	$3, -28(%rbp), %ecx
	subl	%ecx, %eax
	movl	%eax, -40(%rbp)                 ## 4-byte Spill
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-40(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -32(%rbp)
	leaq	-24(%rbp), %rdi
	movq	-8(%rbp), %rsi
	imull	$3, -28(%rbp), %eax
	cltq
	addq	%rax, %rsi
	movslq	-32(%rbp), %rdx
	movl	$4, %ecx
	callq	___strncpy_chk
	movslq	-32(%rbp), %rax
	movb	$0, -24(%rbp,%rax)
	cmpl	$3, -32(%rbp)
	jne	LBB0_10
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -12(%rbp)
	je	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_1 Depth=1
	movb	-22(%rbp), %al
	movb	%al, -33(%rbp)
	movb	-23(%rbp), %al
	movb	%al, -22(%rbp)
	movb	-24(%rbp), %al
	movb	%al, -23(%rbp)
	movb	-33(%rbp), %al
	movb	%al, -24(%rbp)
	jmp	LBB0_9
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	movb	-24(%rbp), %al
	movb	%al, -34(%rbp)
	movb	-23(%rbp), %al
	movb	%al, -24(%rbp)
	movb	-22(%rbp), %al
	movb	%al, -23(%rbp)
	movb	-34(%rbp), %al
	movb	%al, -22(%rbp)
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_10
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rdi
	imull	$3, -28(%rbp), %eax
	cltq
	addq	%rax, %rdi
	leaq	-24(%rbp), %rsi
	movslq	-32(%rbp), %rdx
	movq	$-1, %rcx
	callq	___strncpy_chk
## %bb.11:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_1
LBB0_12:
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
