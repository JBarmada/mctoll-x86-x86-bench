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
	movq	%rdi, -32(%rbp)
	movl	%esi, -36(%rbp)
	movslq	-36(%rbp), %rdi
	shlq	$2, %rdi
	callq	_malloc
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	movl	-52(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB0_11
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	leaq	-20(%rbp), %rax
	movq	%rax, -88(%rbp)                 ## 8-byte Spill
	movq	-32(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movl	(%rax,%rcx,4), %edi
	callq	_abs
	movq	-88(%rbp), %rdi                 ## 8-byte Reload
	movl	%eax, %r8d
	xorl	%esi, %esi
	movl	$12, %edx
	leaq	L_.str(%rip), %rcx
	movb	$0, %al
	callq	___sprintf_chk
	movl	$0, -56(%rbp)
	leaq	-20(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -60(%rbp)
	movl	$1, -64(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jge	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movslq	-64(%rbp), %rax
	movsbl	-20(%rbp,%rax), %eax
	subl	$48, %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	LBB0_3
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	movslq	-52(%rbp), %rcx
	cmpl	$0, (%rax,%rcx,4)
	jle	LBB0_8
## %bb.7:                               ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-20(%rbp), %eax
	subl	$48, %eax
	addl	-56(%rbp), %eax
	movl	%eax, -56(%rbp)
	jmp	LBB0_9
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	movsbl	-20(%rbp), %ecx
	subl	$48, %ecx
	movl	-56(%rbp), %eax
	subl	%ecx, %eax
	movl	%eax, -56(%rbp)
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-56(%rbp), %edx
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
## %bb.10:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB0_1
LBB0_11:
	movl	$0, -72(%rbp)
LBB0_12:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_14 Depth 2
	movl	-72(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB0_21
## %bb.13:                              ##   in Loop: Header=BB0_12 Depth=1
	movl	$1, -76(%rbp)
LBB0_14:                                ##   Parent Loop BB0_12 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jge	LBB0_19
## %bb.15:                              ##   in Loop: Header=BB0_14 Depth=2
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-48(%rbp), %rcx
	movslq	-76(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	LBB0_17
## %bb.16:                              ##   in Loop: Header=BB0_14 Depth=2
	movq	-48(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -68(%rbp)
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-48(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-68(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	-76(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-32(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -68(%rbp)
	movq	-32(%rbp), %rax
	movl	-76(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-32(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-68(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	-76(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
LBB0_17:                                ##   in Loop: Header=BB0_14 Depth=2
	jmp	LBB0_18
LBB0_18:                                ##   in Loop: Header=BB0_14 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	LBB0_14
LBB0_19:                                ##   in Loop: Header=BB0_12 Depth=1
	jmp	LBB0_20
LBB0_20:                                ##   in Loop: Header=BB0_12 Depth=1
	movl	-72(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -72(%rbp)
	jmp	LBB0_12
LBB0_21:
	movq	-48(%rbp), %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movq	%rax, -96(%rbp)                 ## 8-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB0_23
## %bb.22:
	movq	-96(%rbp), %rax                 ## 8-byte Reload
	addq	$96, %rsp
	popq	%rbp
	retq
LBB0_23:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d"

.subsections_via_symbols
