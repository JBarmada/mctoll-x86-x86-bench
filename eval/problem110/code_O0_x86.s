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
	movl	%esi, -20(%rbp)
	movl	$0, -24(%rbp)
	cmpl	$0, -20(%rbp)
	jne	LBB0_2
## %bb.1:
	movb	$1, -1(%rbp)
	jmp	LBB0_13
LBB0_2:
	movl	$1, -28(%rbp)
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_8
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movl	-28(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jge	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_3
LBB0_8:
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	cmpl	(%rcx), %eax
	jle	LBB0_10
## %bb.9:
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
LBB0_10:
	cmpl	$2, -24(%rbp)
	jge	LBB0_12
## %bb.11:
	movb	$1, -1(%rbp)
	jmp	LBB0_13
LBB0_12:
	movb	$0, -1(%rbp)
LBB0_13:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
