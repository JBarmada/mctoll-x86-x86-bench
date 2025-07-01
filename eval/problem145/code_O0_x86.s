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
	subq	$288, %rsp                      ## imm = 0x120
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -240(%rbp)
	movq	%rsi, -248(%rbp)
	movl	$0, -268(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-240(%rbp), %rax
	movslq	-268(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$47, %eax
	je	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-240(%rbp), %rax
	movslq	-268(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movslq	-268(%rbp), %rax
	movb	%cl, -112(%rbp,%rax)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
	jmp	LBB0_1
LBB0_4:
	movslq	-268(%rbp), %rax
	movb	$0, -112(%rbp,%rax)
	leaq	-112(%rbp), %rdi
	callq	_atoi
	movl	%eax, -252(%rbp)
	movl	$0, -272(%rbp)
	movl	-268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
LBB0_5:                                 ## =>This Inner Loop Header: Depth=1
	movq	-240(%rbp), %rax
	movslq	-268(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	LBB0_8
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movq	-240(%rbp), %rax
	movslq	-268(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movslq	-272(%rbp), %rax
	movb	%cl, -224(%rbp,%rax)
## %bb.7:                               ##   in Loop: Header=BB0_5 Depth=1
	movl	-268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
	movl	-272(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -272(%rbp)
	jmp	LBB0_5
LBB0_8:
	movslq	-272(%rbp), %rax
	movb	$0, -224(%rbp,%rax)
	leaq	-224(%rbp), %rdi
	callq	_atoi
	movl	%eax, -256(%rbp)
	movl	$0, -268(%rbp)
LBB0_9:                                 ## =>This Inner Loop Header: Depth=1
	movq	-248(%rbp), %rax
	movslq	-268(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$47, %eax
	je	LBB0_12
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	movq	-248(%rbp), %rax
	movslq	-268(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movslq	-268(%rbp), %rax
	movb	%cl, -112(%rbp,%rax)
## %bb.11:                              ##   in Loop: Header=BB0_9 Depth=1
	movl	-268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
	jmp	LBB0_9
LBB0_12:
	movslq	-268(%rbp), %rax
	movb	$0, -112(%rbp,%rax)
	leaq	-112(%rbp), %rdi
	callq	_atoi
	movl	%eax, -260(%rbp)
	movl	$0, -272(%rbp)
	movl	-268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
LBB0_13:                                ## =>This Inner Loop Header: Depth=1
	movq	-248(%rbp), %rax
	movslq	-268(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	je	LBB0_16
## %bb.14:                              ##   in Loop: Header=BB0_13 Depth=1
	movq	-248(%rbp), %rax
	movslq	-268(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movslq	-272(%rbp), %rax
	movb	%cl, -224(%rbp,%rax)
## %bb.15:                              ##   in Loop: Header=BB0_13 Depth=1
	movl	-268(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -268(%rbp)
	movl	-272(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -272(%rbp)
	jmp	LBB0_13
LBB0_16:
	movslq	-272(%rbp), %rax
	movb	$0, -224(%rbp,%rax)
	leaq	-224(%rbp), %rdi
	callq	_atoi
	movl	%eax, -264(%rbp)
	movl	-252(%rbp), %eax
	imull	-260(%rbp), %eax
	movl	-256(%rbp), %ecx
	imull	-264(%rbp), %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB0_18
## %bb.17:
	movl	$1, -228(%rbp)
	jmp	LBB0_19
LBB0_18:
	movl	$0, -228(%rbp)
LBB0_19:
	movl	-228(%rbp), %eax
	movl	%eax, -276(%rbp)                ## 4-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB0_21
## %bb.20:
	movl	-276(%rbp), %eax                ## 4-byte Reload
	addq	$288, %rsp                      ## imm = 0x120
	popq	%rbp
	retq
LBB0_21:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
