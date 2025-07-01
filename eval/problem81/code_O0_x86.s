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
	cmpq	$3, %rax
	jae	LBB0_2
## %bb.1:
	movb	$0, -1(%rbp)
	jmp	LBB0_10
LBB0_2:
	movl	$2, -20(%rbp)
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movq	%rax, -32(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rdi
	callq	_strlen
	movq	%rax, %rcx
	movq	-32(%rbp), %rax                 ## 8-byte Reload
	cmpq	%rcx, %rax
	jae	LBB0_9
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	movsbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	je	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-20(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %edx
	subl	$2, %edx
	movslq	%edx, %rdx
	movsbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	jne	LBB0_7
LBB0_6:
	movb	$0, -1(%rbp)
	jmp	LBB0_10
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_8
LBB0_8:                                 ##   in Loop: Header=BB0_3 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB0_3
LBB0_9:
	movb	$1, -1(%rbp)
LBB0_10:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
