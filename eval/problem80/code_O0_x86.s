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
	movl	%edi, -12(%rbp)
	movl	$64, %edi
	callq	_malloc
	movq	%rax, -24(%rbp)
	cmpq	$0, -24(%rbp)
	jne	LBB0_2
## %bb.1:
	movq	$0, -8(%rbp)
	jmp	LBB0_11
LBB0_2:
	movl	$62, -28(%rbp)
	movq	-24(%rbp), %rax
	movb	$0, 63(%rax)
	cmpl	$0, -12(%rbp)
	jne	LBB0_4
## %bb.3:
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	addl	$-1, %edx
	movl	%edx, -28(%rbp)
	movslq	%ecx, %rcx
	movb	$48, (%rax,%rcx)
	jmp	LBB0_8
LBB0_4:
	jmp	LBB0_5
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$0, -12(%rbp)
	jle	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movl	-12(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	addl	$48, %edx
                                        ## kill: def $dl killed $dl killed $edx
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %esi
	addl	$-1, %esi
	movl	%esi, -28(%rbp)
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
	movl	-12(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, -12(%rbp)
	jmp	LBB0_5
LBB0_7:
	jmp	LBB0_8
LBB0_8:
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	addl	$-1, %edx
	movl	%edx, -28(%rbp)
	movslq	%ecx, %rcx
	movb	$98, (%rax,%rcx)
	movq	-24(%rbp), %rax
	movl	-28(%rbp), %ecx
	movl	%ecx, %edx
	addl	$-1, %edx
	movl	%edx, -28(%rbp)
	movslq	%ecx, %rcx
	movb	$100, (%rax,%rcx)
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	movl	$62, %eax
	subl	-32(%rbp), %eax
	movl	%eax, -36(%rbp)
	movl	-36(%rbp), %eax
	addl	$3, %eax
	movslq	%eax, %rdi
	callq	_malloc
	movq	%rax, -48(%rbp)
	cmpq	$0, -48(%rbp)
	jne	LBB0_10
## %bb.9:
	movq	-24(%rbp), %rdi
	callq	_free
	movq	$0, -8(%rbp)
	jmp	LBB0_11
LBB0_10:
	movq	-48(%rbp), %rdi
	movq	-24(%rbp), %rsi
	movslq	-32(%rbp), %rax
	addq	%rax, %rsi
	movq	$-1, %rdx
	callq	___strcpy_chk
	movq	-48(%rbp), %rdi
	leaq	L_.str(%rip), %rsi
	movq	$-1, %rdx
	callq	___strcat_chk
	movq	-24(%rbp), %rdi
	callq	_free
	movq	-48(%rbp), %rax
	movq	%rax, -8(%rbp)
LBB0_11:
	movq	-8(%rbp), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"db"

.subsections_via_symbols
