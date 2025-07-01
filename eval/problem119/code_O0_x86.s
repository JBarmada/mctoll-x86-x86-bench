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
	leaq	L_.str(%rip), %rax
	movq	%rax, -24(%rbp)
	movq	-16(%rbp), %rdi
	callq	_strlen
	movq	%rax, -32(%rbp)
	movq	-32(%rbp), %rax
	subq	$2, %rax
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -36(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$1, -36(%rbp)
	jl	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movsbl	(%rax,%rcx), %esi
	callq	_strchr
	cmpq	$0, %rax
	je	LBB0_6
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %esi
	callq	_strchr
	cmpq	$0, %rax
	jne	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-24(%rbp), %rdi
	movq	-16(%rbp), %rax
	movl	-36(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movsbl	(%rax,%rcx), %esi
	callq	_strchr
	cmpq	$0, %rax
	jne	LBB0_6
## %bb.5:
	movq	-16(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movb	(%rax,%rcx), %al
	movb	%al, _func0.out(%rip)
	leaq	_func0.out(%rip), %rax
	movq	%rax, -8(%rbp)
	jmp	LBB0_9
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$-1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_1
LBB0_8:
	movb	$0, _func0.out(%rip)
	leaq	_func0.out(%rip), %rax
	movq	%rax, -8(%rbp)
LBB0_9:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.zerofill __DATA,__bss,_func0.out,2,0   ## @func0.out
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"AEIOUaeiou"

.subsections_via_symbols
