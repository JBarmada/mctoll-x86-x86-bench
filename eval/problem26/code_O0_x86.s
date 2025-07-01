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
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$256, %edi                      ## imm = 0x100
	callq	_malloc
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rax
	movl	$0, (%rax)
	movl	$2, -28(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	movl	-28(%rbp), %eax
	imull	-28(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	LBB0_7
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_3
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-4(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	cmpl	$0, %edx
	jne	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movl	-4(%rbp), %eax
	cltd
	idivl	-28(%rbp)
	movl	%eax, -4(%rbp)
	movl	-28(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movl	(%rsi), %ecx
	movl	%ecx, %edi
	addl	$1, %edi
	movl	%edi, (%rsi)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	LBB0_3
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_6
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_1
LBB0_7:
	cmpl	$1, -4(%rbp)
	jle	LBB0_9
## %bb.8:
	movl	-4(%rbp), %edx
	movq	-24(%rbp), %rax
	movq	-16(%rbp), %rsi
	movl	(%rsi), %ecx
	movl	%ecx, %edi
	addl	$1, %edi
	movl	%edi, (%rsi)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
LBB0_9:
	movq	-24(%rbp), %rax
	addq	$32, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
