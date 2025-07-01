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
	cmpl	$0, -20(%rbp)
	jne	LBB0_2
## %bb.1:
	movl	$0, -4(%rbp)
	jmp	LBB0_9
LBB0_2:
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -21(%rbp)
	movzbl	-21(%rbp), %edi
	callq	_isalpha
	cmpl	$0, %eax
	jne	LBB0_4
## %bb.3:
	movl	$0, -4(%rbp)
	jmp	LBB0_9
LBB0_4:
	cmpl	$1, -20(%rbp)
	jne	LBB0_6
## %bb.5:
	movl	$1, -4(%rbp)
	jmp	LBB0_9
LBB0_6:
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	subl	$2, %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -22(%rbp)
	movzbl	-22(%rbp), %edi
	callq	_isalpha
	cmpl	$0, %eax
	je	LBB0_8
## %bb.7:
	movl	$0, -4(%rbp)
	jmp	LBB0_9
LBB0_8:
	movl	$1, -4(%rbp)
LBB0_9:
	movl	-4(%rbp), %eax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
