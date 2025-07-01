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
	cmpl	$2, -20(%rbp)
	jge	LBB0_2
## %bb.1:
	movl	$-1, -4(%rbp)
	jmp	LBB0_15
LBB0_2:
	movl	$2147483647, -24(%rbp)          ## imm = 0x7FFFFFFF
	movl	$2147483647, -28(%rbp)          ## imm = 0x7FFFFFFF
	movl	$0, -32(%rbp)
LBB0_3:                                 ## =>This Inner Loop Header: Depth=1
	movl	-32(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_12
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-24(%rbp), %eax
	jge	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=1
	movl	-24(%rbp), %eax
	movl	%eax, -28(%rbp)
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -24(%rbp)
	jmp	LBB0_10
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB0_9
## %bb.7:                               ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-24(%rbp), %eax
	je	LBB0_9
## %bb.8:                               ##   in Loop: Header=BB0_3 Depth=1
	movq	-16(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -28(%rbp)
LBB0_9:                                 ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_10
LBB0_10:                                ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_3 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_3
LBB0_12:
	cmpl	$2147483647, -28(%rbp)          ## imm = 0x7FFFFFFF
	jne	LBB0_14
## %bb.13:
	movl	$-1, -4(%rbp)
	jmp	LBB0_15
LBB0_14:
	movl	-28(%rbp), %eax
	movl	%eax, -4(%rbp)
LBB0_15:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
