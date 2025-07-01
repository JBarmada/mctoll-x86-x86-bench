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
	movq	%rdi, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	cmpl	$2, -20(%rbp)
	jge	LBB0_2
## %bb.1:
	movb	$0, -1(%rbp)
	jmp	LBB0_9
LBB0_2:
	movl	$2, -24(%rbp)
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-24(%rbp), %eax
	imull	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jg	LBB0_8
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	movl	-20(%rbp), %eax
	cltd
	idivl	-24(%rbp)
	cmpl	$0, %edx
	jne	LBB0_6
## %bb.5:
	movb	$0, -1(%rbp)
	jmp	LBB0_9
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB0_3
LBB0_8:
	movb	$1, -1(%rbp)
LBB0_9:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
