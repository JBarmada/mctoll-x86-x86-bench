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
	subq	$64, %rsp
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
	movl	-28(%rbp), %eax
	cmpl	-32(%rbp), %eax
	jge	LBB0_2
## %bb.1:
	movl	-28(%rbp), %eax
	movl	%eax, -56(%rbp)                 ## 4-byte Spill
	jmp	LBB0_3
LBB0_2:
	movl	-32(%rbp), %eax
	movl	%eax, -56(%rbp)                 ## 4-byte Spill
LBB0_3:
	movl	-56(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	shlq	$0, %rdi
	callq	_malloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	LBB0_5
## %bb.4:
	movq	$0, -8(%rbp)
	jmp	LBB0_10
LBB0_5:
	movl	$0, -52(%rbp)
LBB0_6:                                 ## =>This Inner Loop Header: Depth=1
	movl	-52(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB0_9
## %bb.7:                               ##   in Loop: Header=BB0_6 Depth=1
	movq	-16(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movsbl	(%rax,%rcx), %edx
	movq	-24(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movsbl	(%rax,%rcx), %esi
	movl	$49, %eax
	movl	$48, %ecx
	cmpl	%esi, %edx
	cmovel	%ecx, %eax
	movb	%al, %dl
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
## %bb.8:                               ##   in Loop: Header=BB0_6 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB0_6
LBB0_9:
	movq	-48(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_10:
	movq	-8(%rbp), %rax
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
