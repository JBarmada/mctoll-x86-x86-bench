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
	subq	$336, %rsp                      ## imm = 0x150
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -280(%rbp)
	movl	%esi, -284(%rbp)
	leaq	L_.str(%rip), %rax
	movq	%rax, -296(%rbp)
	movl	$0, -300(%rbp)
	movl	$0, -304(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	movl	-304(%rbp), %eax
	cmpl	-284(%rbp), %eax
	jge	LBB0_14
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	leaq	-272(%rbp), %rdi
	xorl	%esi, %esi
	movl	$256, %edx                      ## imm = 0x100
	callq	_memset
	movl	$0, -308(%rbp)
	movl	$0, -312(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-280(%rbp), %rax
	movslq	-304(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-312(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	LBB0_8
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	leaq	-272(%rbp), %rdi
	movq	-280(%rbp), %rax
	movslq	-304(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-312(%rbp), %rcx
	movsbl	(%rax,%rcx), %esi
	callq	_strchr
	cmpq	$0, %rax
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	leaq	-272(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -316(%rbp)
	movq	-280(%rbp), %rax
	movslq	-304(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-312(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movslq	-316(%rbp), %rax
	movb	%cl, -272(%rbp,%rax)
	movl	-316(%rbp), %eax
	addl	$1, %eax
	cltq
	movb	$0, -272(%rbp,%rax)
	movl	-308(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -308(%rbp)
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=2
	movl	-312(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -312(%rbp)
	jmp	LBB0_3
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-308(%rbp), %eax
	cmpl	-300(%rbp), %eax
	jg	LBB0_11
## %bb.9:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-308(%rbp), %eax
	cmpl	-300(%rbp), %eax
	jne	LBB0_12
## %bb.10:                              ##   in Loop: Header=BB0_1 Depth=1
	movq	-280(%rbp), %rax
	movslq	-304(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	movq	-296(%rbp), %rsi
	callq	_strcmp
	cmpl	$0, %eax
	jge	LBB0_12
LBB0_11:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-280(%rbp), %rax
	movslq	-304(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -296(%rbp)
	movl	-308(%rbp), %eax
	movl	%eax, -300(%rbp)
LBB0_12:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_13
LBB0_13:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-304(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -304(%rbp)
	jmp	LBB0_1
LBB0_14:
	movq	-296(%rbp), %rax
	movq	%rax, -328(%rbp)                ## 8-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB0_16
## %bb.15:
	movq	-328(%rbp), %rax                ## 8-byte Reload
	addq	$336, %rsp                      ## imm = 0x150
	popq	%rbp
	retq
LBB0_16:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.space	1

.subsections_via_symbols
