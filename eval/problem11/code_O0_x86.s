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
	movq	-16(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -20(%rbp)
	movl	-20(%rbp), %eax
	shll	$1, %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	callq	_malloc
	movq	%rax, -40(%rbp)
	cmpq	$0, -40(%rbp)
	jne	LBB0_2
## %bb.1:
	movq	$0, -8(%rbp)
	jmp	LBB0_23
LBB0_2:
	movl	$0, -24(%rbp)
LBB0_3:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_5 Depth 2
	movl	-24(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_18
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=1
	movl	$1, -44(%rbp)
	movl	$0, -28(%rbp)
LBB0_5:                                 ##   Parent Loop BB0_3 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-28(%rbp), %eax
	movl	%eax, -48(%rbp)                 ## 4-byte Spill
	movl	-20(%rbp), %eax
	subl	-24(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-48(%rbp), %eax                 ## 4-byte Reload
	cmpl	%ecx, %eax
	jge	LBB0_10
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=2
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %eax
	movq	-16(%rbp), %rcx
	movl	-20(%rbp), %edx
	subl	$1, %edx
	subl	-28(%rbp), %edx
	movslq	%edx, %rdx
	movsbl	(%rcx,%rdx), %ecx
	cmpl	%ecx, %eax
	je	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_3 Depth=1
	movl	$0, -44(%rbp)
	jmp	LBB0_10
LBB0_8:                                 ##   in Loop: Header=BB0_5 Depth=2
	jmp	LBB0_9
LBB0_9:                                 ##   in Loop: Header=BB0_5 Depth=2
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_5
LBB0_10:                                ##   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, -44(%rbp)
	je	LBB0_16
## %bb.11:
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	movq	$-1, %rcx
	callq	___strncpy_chk
	movl	$0, -28(%rbp)
LBB0_12:                                ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	LBB0_15
## %bb.13:                              ##   in Loop: Header=BB0_12 Depth=1
	movq	-16(%rbp), %rax
	movl	-24(%rbp), %ecx
	subl	-28(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %dl
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
## %bb.14:                              ##   in Loop: Header=BB0_12 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_12
LBB0_15:
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	-24(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	$0, (%rax,%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_23
LBB0_16:                                ##   in Loop: Header=BB0_3 Depth=1
	jmp	LBB0_17
LBB0_17:                                ##   in Loop: Header=BB0_3 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB0_3
LBB0_18:
	movq	-40(%rbp), %rdi
	movq	-16(%rbp), %rsi
	movslq	-20(%rbp), %rdx
	movq	$-1, %rcx
	callq	___strncpy_chk
	movl	$0, -28(%rbp)
LBB0_19:                                ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jge	LBB0_22
## %bb.20:                              ##   in Loop: Header=BB0_19 Depth=1
	movq	-16(%rbp), %rax
	movl	-20(%rbp), %ecx
	subl	-28(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %dl
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	addl	-28(%rbp), %ecx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
## %bb.21:                              ##   in Loop: Header=BB0_19 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_19
LBB0_22:
	movq	-40(%rbp), %rax
	movl	-20(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rcx
	movb	$0, (%rax,%rcx)
	movq	-40(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_23:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
