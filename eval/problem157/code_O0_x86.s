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
	subq	$208, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -180(%rbp)
	movq	%rsi, -192(%rbp)
	leaq	-112(%rbp), %rdi
	leaq	l___const.func0.rep(%rip), %rsi
	movl	$104, %edx
	callq	_memcpy
	leaq	-176(%rbp), %rdi
	leaq	l___const.func0.num(%rip), %rsi
	movl	$52, %edx
	callq	_memcpy
	movl	$0, -196(%rbp)
	movq	-192(%rbp), %rax
	movb	$0, (%rax)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	cmpl	$0, -180(%rbp)
	jle	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_3
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-180(%rbp), %eax
	movslq	-196(%rbp), %rcx
	cmpl	-176(%rbp,%rcx,4), %eax
	jl	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movq	-192(%rbp), %rdi
	movslq	-196(%rbp), %rax
	movq	-112(%rbp,%rax,8), %rsi
	movq	$-1, %rdx
	callq	___strcat_chk
	movslq	-196(%rbp), %rax
	movl	-176(%rbp,%rax,4), %ecx
	movl	-180(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -180(%rbp)
	jmp	LBB0_3
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -180(%rbp)
	jle	LBB0_7
## %bb.6:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-196(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -196(%rbp)
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_1
LBB0_8:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB0_10
## %bb.9:
	addq	$208, %rsp
	popq	%rbp
	retq
LBB0_10:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"m"

L_.str.1:                               ## @.str.1
	.asciz	"cm"

L_.str.2:                               ## @.str.2
	.asciz	"d"

L_.str.3:                               ## @.str.3
	.asciz	"cd"

L_.str.4:                               ## @.str.4
	.asciz	"c"

L_.str.5:                               ## @.str.5
	.asciz	"xc"

L_.str.6:                               ## @.str.6
	.asciz	"l"

L_.str.7:                               ## @.str.7
	.asciz	"xl"

L_.str.8:                               ## @.str.8
	.asciz	"x"

L_.str.9:                               ## @.str.9
	.asciz	"ix"

L_.str.10:                              ## @.str.10
	.asciz	"v"

L_.str.11:                              ## @.str.11
	.asciz	"iv"

L_.str.12:                              ## @.str.12
	.asciz	"i"

	.section	__DATA,__const
	.p2align	4                               ## @__const.func0.rep
l___const.func0.rep:
	.quad	L_.str
	.quad	L_.str.1
	.quad	L_.str.2
	.quad	L_.str.3
	.quad	L_.str.4
	.quad	L_.str.5
	.quad	L_.str.6
	.quad	L_.str.7
	.quad	L_.str.8
	.quad	L_.str.9
	.quad	L_.str.10
	.quad	L_.str.11
	.quad	L_.str.12

	.section	__TEXT,__const
	.p2align	4                               ## @__const.func0.num
l___const.func0.num:
	.long	1000                            ## 0x3e8
	.long	900                             ## 0x384
	.long	500                             ## 0x1f4
	.long	400                             ## 0x190
	.long	100                             ## 0x64
	.long	90                              ## 0x5a
	.long	50                              ## 0x32
	.long	40                              ## 0x28
	.long	10                              ## 0xa
	.long	9                               ## 0x9
	.long	5                               ## 0x5
	.long	4                               ## 0x4
	.long	1                               ## 0x1

.subsections_via_symbols
