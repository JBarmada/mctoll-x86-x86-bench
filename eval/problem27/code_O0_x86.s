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
	subq	$112, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movslq	-12(%rbp), %rdi
	shlq	$2, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
	movslq	-12(%rbp), %rdi
	movl	$4, %esi
	callq	_calloc
	movq	%rax, -40(%rbp)
	movslq	-12(%rbp), %rdi
	movl	$4, %esi
	callq	_calloc
	movq	%rax, -48(%rbp)
	movl	$0, -52(%rbp)
	movl	$0, -56(%rbp)
	movl	$0, -60(%rbp)
	movl	$0, -64(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
                                        ##     Child Loop BB0_11 Depth 2
	movl	-64(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_21
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -68(%rbp)
	movl	$0, -72(%rbp)
	movl	$0, -76(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-76(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	LBB0_8
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movq	-48(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-68(%rbp), %eax
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$1, -72(%rbp)
	jmp	LBB0_8
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=2
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	LBB0_3
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -72(%rbp)
	je	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_20
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -80(%rbp)
	movl	$0, -84(%rbp)
LBB0_11:                                ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-84(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	LBB0_16
## %bb.12:                              ##   in Loop: Header=BB0_11 Depth=2
	movq	-40(%rbp), %rax
	movslq	-84(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-68(%rbp), %eax
	jne	LBB0_14
## %bb.13:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	$1, -80(%rbp)
	jmp	LBB0_16
LBB0_14:                                ##   in Loop: Header=BB0_11 Depth=2
	jmp	LBB0_15
LBB0_15:                                ##   in Loop: Header=BB0_11 Depth=2
	movl	-84(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -84(%rbp)
	jmp	LBB0_11
LBB0_16:                                ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -80(%rbp)
	je	LBB0_18
## %bb.17:                              ##   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %edx
	movq	-48(%rbp), %rax
	movl	-56(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -56(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	jmp	LBB0_19
LBB0_18:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-68(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	-52(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -52(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
LBB0_19:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_20
LBB0_20:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	LBB0_1
LBB0_21:
	movl	$0, -88(%rbp)
LBB0_22:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_24 Depth 2
	movl	-88(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_33
## %bb.23:                              ##   in Loop: Header=BB0_22 Depth=1
	movq	-8(%rbp), %rax
	movslq	-88(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -92(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
LBB0_24:                                ##   Parent Loop BB0_22 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-100(%rbp), %eax
	cmpl	-56(%rbp), %eax
	jge	LBB0_29
## %bb.25:                              ##   in Loop: Header=BB0_24 Depth=2
	movq	-48(%rbp), %rax
	movslq	-100(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	cmpl	-92(%rbp), %eax
	jne	LBB0_27
## %bb.26:                              ##   in Loop: Header=BB0_22 Depth=1
	movl	$1, -96(%rbp)
	jmp	LBB0_29
LBB0_27:                                ##   in Loop: Header=BB0_24 Depth=2
	jmp	LBB0_28
LBB0_28:                                ##   in Loop: Header=BB0_24 Depth=2
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	LBB0_24
LBB0_29:                                ##   in Loop: Header=BB0_22 Depth=1
	cmpl	$0, -96(%rbp)
	jne	LBB0_31
## %bb.30:                              ##   in Loop: Header=BB0_22 Depth=1
	movl	-92(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	-60(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -60(%rbp)
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
LBB0_31:                                ##   in Loop: Header=BB0_22 Depth=1
	jmp	LBB0_32
LBB0_32:                                ##   in Loop: Header=BB0_22 Depth=1
	movl	-88(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -88(%rbp)
	jmp	LBB0_22
LBB0_33:
	movl	-60(%rbp), %ecx
	movq	-24(%rbp), %rax
	movl	%ecx, (%rax)
	movq	-40(%rbp), %rdi
	callq	_free
	movq	-48(%rbp), %rdi
	callq	_free
	movq	-32(%rbp), %rax
	addq	$112, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
