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
	movq	%rdi, -8(%rbp)
	leaq	L_.str(%rip), %rax
	movq	%rax, -16(%rbp)
	movl	$0, -20(%rbp)
	movl	$0, -24(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-8(%rbp), %rax
	movslq	-24(%rbp), %rcx
	movsbl	(%rax,%rcx), %ecx
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -25(%rbp)                  ## 1-byte Spill
	je	LBB0_3
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	shll	$1, %eax
	cltq
	movq	%rax, -40(%rbp)                 ## 8-byte Spill
	movq	-8(%rbp), %rdi
	callq	_strlen
	movq	%rax, %rcx
	movq	-40(%rbp), %rax                 ## 8-byte Reload
	cmpq	%rcx, %rax
	setb	%al
	movb	%al, -25(%rbp)                  ## 1-byte Spill
LBB0_3:                                 ##   in Loop: Header=BB0_1 Depth=1
	movb	-25(%rbp), %al                  ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_4
	jmp	LBB0_8
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rax
	movl	-24(%rbp), %ecx
	shll	$1, %ecx
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %esi
	callq	_strchr
	cmpq	$0, %rax
	je	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-20(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -20(%rbp)
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-24(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -24(%rbp)
	jmp	LBB0_1
LBB0_8:
	movl	-20(%rbp), %eax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"AEIOU"

.subsections_via_symbols
