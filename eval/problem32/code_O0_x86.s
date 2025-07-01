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
	movq	%rdi, -16(%rbp)
	cmpq	$2, -16(%rbp)
	jge	LBB0_2
## %bb.1:
	movb	$0, -1(%rbp)
	jmp	LBB0_9
LBB0_2:
	movq	$2, -24(%rbp)
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movq	-24(%rbp), %rax
	imulq	-24(%rbp), %rax
	cmpq	-16(%rbp), %rax
	jg	LBB0_8
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	cqto
	idivq	-24(%rbp)
	cmpq	$0, %rdx
	jne	LBB0_6
## %bb.5:
	movb	$0, -1(%rbp)
	jmp	LBB0_9
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=1
	movq	-24(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -24(%rbp)
	jmp	LBB0_3
LBB0_8:
	movb	$1, -1(%rbp)
LBB0_9:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
