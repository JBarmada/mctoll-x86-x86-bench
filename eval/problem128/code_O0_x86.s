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
	movl	%edi, -12(%rbp)
	movl	%esi, -16(%rbp)
	movl	%edx, -20(%rbp)
	movl	%ecx, -24(%rbp)
	movl	-12(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jle	LBB0_2
## %bb.1:
	movl	-12(%rbp), %eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
	jmp	LBB0_3
LBB0_2:
	movl	-20(%rbp), %eax
	movl	%eax, -44(%rbp)                 ## 4-byte Spill
LBB0_3:
	movl	-44(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -28(%rbp)
	movl	-16(%rbp), %eax
	cmpl	-24(%rbp), %eax
	jge	LBB0_5
## %bb.4:
	movl	-16(%rbp), %eax
	movl	%eax, -48(%rbp)                 ## 4-byte Spill
	jmp	LBB0_6
LBB0_5:
	movl	-24(%rbp), %eax
	movl	%eax, -48(%rbp)                 ## 4-byte Spill
LBB0_6:
	movl	-48(%rbp), %eax                 ## 4-byte Reload
	movl	%eax, -32(%rbp)
	movl	-32(%rbp), %eax
	subl	-28(%rbp), %eax
	movl	%eax, -36(%rbp)
	cmpl	$2, -36(%rbp)
	jge	LBB0_8
## %bb.7:
	leaq	L_.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_15
LBB0_8:
	movl	$2, -40(%rbp)
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	movl	-40(%rbp), %eax
	imull	-40(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jg	LBB0_14
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	movl	-36(%rbp), %eax
	cltd
	idivl	-40(%rbp)
	cmpl	$0, %edx
	jne	LBB0_12
## %bb.11:
	leaq	L_.str(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_15
LBB0_12:                                ##   in Loop: Header=BB0_9 Depth=1
	jmp	LBB0_13
LBB0_13:                                ##   in Loop: Header=BB0_9 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_9
LBB0_14:
	leaq	L_.str.1(%rip), %rax
	movq	%rax, -8(%rbp)
LBB0_15:
	movq	-8(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"NO"

L_.str.1:                               ## @.str.1
	.asciz	"YES"

.subsections_via_symbols
