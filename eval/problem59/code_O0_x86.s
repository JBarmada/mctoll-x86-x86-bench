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
	subq	$80, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	%ecx, -28(%rbp)
	movq	%r8, -40(%rbp)
	movslq	-12(%rbp), %rdi
	shlq	$2, %rdi
	callq	_malloc
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
                                        ##     Child Loop BB0_10 Depth 2
	movl	-56(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_18
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -68(%rbp)
	movl	$0, -64(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-64(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	LBB0_8
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movq	-48(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-8(%rbp), %rcx
	movslq	-56(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$1, -68(%rbp)
	jmp	LBB0_8
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	LBB0_3
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -68(%rbp)
	jne	LBB0_16
## %bb.9:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -60(%rbp)
LBB0_10:                                ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	cmpl	-28(%rbp), %eax
	jge	LBB0_15
## %bb.11:                              ##   in Loop: Header=BB0_10 Depth=2
	movq	-8(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-24(%rbp), %rcx
	movslq	-60(%rbp), %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jne	LBB0_13
## %bb.12:                              ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-56(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-48(%rbp), %rax
	movl	-52(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -52(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	LBB0_15
LBB0_13:                                ##   in Loop: Header=BB0_10 Depth=2
	jmp	LBB0_14
LBB0_14:                                ##   in Loop: Header=BB0_10 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	LBB0_10
LBB0_15:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_16
LBB0_16:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_17
LBB0_17:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB0_1
LBB0_18:
	movl	$0, -56(%rbp)
LBB0_19:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_21 Depth 2
	movl	-56(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB0_28
## %bb.20:                              ##   in Loop: Header=BB0_19 Depth=1
	movl	$0, -60(%rbp)
LBB0_21:                                ##   Parent Loop BB0_19 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-60(%rbp), %eax
	movl	-52(%rbp), %ecx
	subl	-56(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB0_26
## %bb.22:                              ##   in Loop: Header=BB0_21 Depth=2
	movq	-48(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movq	-48(%rbp), %rcx
	movl	-60(%rbp), %edx
	addl	$1, %edx
	movslq	%edx, %rdx
	cmpl	(%rcx,%rdx,4), %eax
	jle	LBB0_24
## %bb.23:                              ##   in Loop: Header=BB0_21 Depth=2
	movq	-48(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -72(%rbp)
	movq	-48(%rbp), %rax
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-48(%rbp), %rax
	movslq	-60(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	-72(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	-60(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
LBB0_24:                                ##   in Loop: Header=BB0_21 Depth=2
	jmp	LBB0_25
LBB0_25:                                ##   in Loop: Header=BB0_21 Depth=2
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	LBB0_21
LBB0_26:                                ##   in Loop: Header=BB0_19 Depth=1
	jmp	LBB0_27
LBB0_27:                                ##   in Loop: Header=BB0_19 Depth=1
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB0_19
LBB0_28:
	movl	-52(%rbp), %ecx
	movq	-40(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	addq	$80, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
