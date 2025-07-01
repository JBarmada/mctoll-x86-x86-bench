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
	subq	$96, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -68(%rbp)
	movl	%esi, -72(%rbp)
	movl	-68(%rbp), %r8d
	leaq	_func0.xs(%rip), %rdi
	xorl	%esi, %esi
	movl	$50, %edx
	leaq	L_.str(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	leaq	_func0.xs(%rip), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	cmpl	-72(%rbp), %eax
	jge	LBB0_6
## %bb.1:
	movl	$0, -80(%rbp)
LBB0_2:                                 ## =>This Inner Loop Header: Depth=1
	movl	-80(%rbp), %eax
	movl	%eax, -88(%rbp)                 ## 4-byte Spill
	movl	-76(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movl	-88(%rbp), %eax                 ## 4-byte Reload
	cmpl	%ecx, %eax
	jge	LBB0_5
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	movslq	-80(%rbp), %rcx
	leaq	_func0.xs(%rip), %rax
	movb	(%rax,%rcx), %al
	movb	%al, -81(%rbp)
	movl	-76(%rbp), %eax
	subl	$1, %eax
	subl	-80(%rbp), %eax
	movslq	%eax, %rcx
	leaq	_func0.xs(%rip), %rax
	movb	(%rax,%rcx), %dl
	movslq	-80(%rbp), %rcx
	leaq	_func0.xs(%rip), %rax
	movb	%dl, (%rax,%rcx)
	movb	-81(%rbp), %dl
	movl	-76(%rbp), %eax
	subl	$1, %eax
	subl	-80(%rbp), %eax
	movslq	%eax, %rcx
	leaq	_func0.xs(%rip), %rax
	movb	%dl, (%rax,%rcx)
## %bb.4:                               ##   in Loop: Header=BB0_2 Depth=1
	movl	-80(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -80(%rbp)
	jmp	LBB0_2
LBB0_5:
	jmp	LBB0_7
LBB0_6:
	leaq	-64(%rbp), %rdi
	movslq	-76(%rbp), %rax
	leaq	_func0.xs(%rip), %rsi
	addq	%rax, %rsi
	movslq	-72(%rbp), %rcx
	xorl	%eax, %eax
                                        ## kill: def $rax killed $eax
	subq	%rcx, %rax
	addq	%rax, %rsi
	movl	$50, %edx
	callq	___strcpy_chk
	movslq	-72(%rbp), %rax
	movb	$0, -64(%rbp,%rax)
	leaq	-64(%rbp), %rdi
	movl	-76(%rbp), %eax
	subl	-72(%rbp), %eax
	movslq	%eax, %rdx
	leaq	_func0.xs(%rip), %rsi
	movl	$50, %ecx
	callq	___strncat_chk
	leaq	-64(%rbp), %rsi
	leaq	_func0.xs(%rip), %rdi
	movl	$50, %edx
	callq	___strcpy_chk
LBB0_7:
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB0_9
## %bb.8:
	leaq	_func0.xs(%rip), %rax
	addq	$96, %rsp
	popq	%rbp
	retq
LBB0_9:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
.zerofill __DATA,__bss,_func0.xs,50,4   ## @func0.xs
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

.subsections_via_symbols
