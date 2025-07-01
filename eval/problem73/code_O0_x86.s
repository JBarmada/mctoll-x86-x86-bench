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
	movl	%edx, -24(%rbp)
	movl	$0, -28(%rbp)
	movl	$0, -32(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)                 ## 4-byte Spill
	movl	-20(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-36(%rbp), %eax                 ## 4-byte Reload
	cmpl	%ecx, %eax
	jge	LBB0_6
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %edx
	subl	$1, %edx
	subl	-32(%rbp), %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	je	LBB0_4
## %bb.3:
	movb	$0, -1(%rbp)
	jmp	LBB0_9
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %edx
	subl	$1, %edx
	subl	-32(%rbp), %edx
	movslq	%edx, %rdx
	addl	(%rcx,%rdx,4), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_1
LBB0_6:
	movl	-20(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$1, %edx
	jne	LBB0_8
## %bb.7:
	movq	-16(%rbp), %rax
	movq	%rax, -48(%rbp)                 ## 8-byte Spill
	movl	-20(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movq	-48(%rbp), %rax                 ## 8-byte Reload
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -28(%rbp)
LBB0_8:
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	setle	%al
	andb	$1, %al
	movb	%al, -1(%rbp)
LBB0_9:
	movb	-1(%rbp), %al
	andb	$1, %al
	movzbl	%al, %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
