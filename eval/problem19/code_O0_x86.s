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
	movl	$0, -28(%rbp)
	movq	-16(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -32(%rbp)
	movq	-24(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
	cmpl	$0, -32(%rbp)
	jne	LBB0_2
## %bb.1:
	movl	$0, -4(%rbp)
	jmp	LBB0_9
LBB0_2:
	movl	$0, -40(%rbp)
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movl	-32(%rbp), %ecx
	subl	-36(%rbp), %ecx
	cmpl	%ecx, %eax
	jg	LBB0_8
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rdi
	movslq	-40(%rbp), %rax
	addq	%rax, %rdi
	movq	-24(%rbp), %rsi
	movslq	-36(%rbp), %rdx
	callq	_strncmp
	cmpl	$0, %eax
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_3
LBB0_8:
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB0_9:
	movl	-4(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
