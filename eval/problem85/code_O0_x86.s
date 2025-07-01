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
	movl	%edi, -4(%rbp)
	leaq	-10(%rbp), %rdi
	movl	-4(%rbp), %r8d
	xorl	%esi, %esi
	movl	$6, %edx
	leaq	L_.str(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	movl	$0, -16(%rbp)
	movl	$0, -20(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movslq	-20(%rbp), %rax
	movsbl	-10(%rbp,%rax), %eax
	cmpl	$0, %eax
	je	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movslq	-20(%rbp), %rax
	movsbl	-10(%rbp,%rax), %eax
	subl	$48, %eax
	addl	-16(%rbp), %eax
	movl	%eax, -16(%rbp)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
	jmp	LBB0_1
LBB0_4:
	movl	$33, %edi
	callq	_malloc
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
	cmpl	$0, -16(%rbp)
	jne	LBB0_6
## %bb.5:
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -36(%rbp)
	movslq	%ecx, %rcx
	movb	$48, (%rax,%rcx)
	jmp	LBB0_10
LBB0_6:
	jmp	LBB0_7
LBB0_7:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$0, -16(%rbp)
	jle	LBB0_9
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=1
	movl	-16(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	addl	$48, %edx
                                        ## kill: def $dl killed $dl killed $edx
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -36(%rbp)
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movl	-16(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -16(%rbp)
	jmp	LBB0_7
LBB0_9:
	jmp	LBB0_10
LBB0_10:
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movl	$0, -40(%rbp)
LBB0_11:                                ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	movl	%eax, -48(%rbp)                 ## 4-byte Spill
	movl	-36(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-48(%rbp), %eax                 ## 4-byte Reload
	cmpl	%ecx, %eax
	jge	LBB0_14
## %bb.12:                              ##   in Loop: Header=BB0_11 Depth=1
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, -41(%rbp)
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movb	(%rax,%rcx), %dl
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movb	%dl, (%rax,%rcx)
	movb	-41(%rbp), %dl
	movq	-32(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
## %bb.13:                              ##   in Loop: Header=BB0_11 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_11
LBB0_14:
	movq	-32(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

.subsections_via_symbols
