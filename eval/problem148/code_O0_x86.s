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
	movl	%edi, -4(%rbp)
	movslq	-4(%rbp), %rdi
	shlq	$2, %rdi
	callq	_malloc
	movq	%rax, -16(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	shlq	$3, %rdi
	callq	_malloc
	movq	%rax, -24(%rbp)
	movl	-4(%rbp), %eax
	addl	$1, %eax
	movslq	%eax, %rdi
	shlq	$3, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
	movl	$0, -36(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	$3, %edi
	movl	$4, %esi
	callq	_calloc
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
	movl	$3, %edi
	movl	$4, %esi
	callq	_calloc
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movq	%rdx, (%rax,%rcx,8)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_1
LBB0_4:
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 8(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 4(%rax)
	movq	-24(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 8(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, 4(%rax)
	movq	-32(%rbp), %rax
	movq	(%rax), %rax
	movl	$0, (%rax)
	movl	$1, -40(%rbp)
LBB0_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_7 Depth 2
	movl	-40(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	LBB0_12
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movl	-40(%rbp), %eax
	imull	-40(%rbp), %eax
	subl	-40(%rbp), %eax
	addl	$1, %eax
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movq	-16(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	%edx, (%rax,%rcx,4)
	movl	$0, -44(%rbp)
LBB0_7:                                 ##   Parent Loop BB0_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	cmpl	$3, -44(%rbp)
	jge	LBB0_10
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=2
	movq	-24(%rbp), %rax
	movl	-40(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-44(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-24(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-44(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
## %bb.9:                               ##   in Loop: Header=BB0_7 Depth=2
	movl	-44(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -44(%rbp)
	jmp	LBB0_7
LBB0_10:                                ##   in Loop: Header=BB0_5 Depth=1
	movq	-24(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	-16(%rbp), %rcx
	movl	-40(%rbp), %edx
	subl	$1, %edx
	movslq	%edx, %rdx
	movslq	(%rcx,%rdx,4), %rcx
	movl	(%rax,%rcx,4), %edx
	addl	$1, %edx
	movl	%edx, (%rax,%rcx,4)
## %bb.11:                              ##   in Loop: Header=BB0_5 Depth=1
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_5
LBB0_12:
	movl	$1, -48(%rbp)
LBB0_13:                                ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_15 Depth 2
                                        ##       Child Loop BB0_17 Depth 3
                                        ##       Child Loop BB0_22 Depth 3
                                        ##     Child Loop BB0_29 Depth 2
                                        ##       Child Loop BB0_31 Depth 3
	cmpl	$3, -48(%rbp)
	jge	LBB0_38
## %bb.14:                              ##   in Loop: Header=BB0_13 Depth=1
	movl	$1, -52(%rbp)
LBB0_15:                                ##   Parent Loop BB0_13 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_17 Depth 3
                                        ##       Child Loop BB0_22 Depth 3
	movl	-52(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	LBB0_28
## %bb.16:                              ##   in Loop: Header=BB0_15 Depth=2
	movl	$0, -56(%rbp)
LBB0_17:                                ##   Parent Loop BB0_13 Depth=1
                                        ##     Parent Loop BB0_15 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpl	$3, -56(%rbp)
	jge	LBB0_20
## %bb.18:                              ##   in Loop: Header=BB0_17 Depth=3
	movq	-32(%rbp), %rax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-56(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-32(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-56(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
## %bb.19:                              ##   in Loop: Header=BB0_17 Depth=3
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB0_17
LBB0_20:                                ##   in Loop: Header=BB0_15 Depth=2
	cmpl	$1, -52(%rbp)
	jl	LBB0_26
## %bb.21:                              ##   in Loop: Header=BB0_15 Depth=2
	movl	$0, -60(%rbp)
LBB0_22:                                ##   Parent Loop BB0_13 Depth=1
                                        ##     Parent Loop BB0_15 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpl	$2, -60(%rbp)
	jg	LBB0_25
## %bb.23:                              ##   in Loop: Header=BB0_22 Depth=3
	movq	-24(%rbp), %rax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-60(%rbp), %rcx
	movl	(%rax,%rcx,4), %eax
	movl	%eax, -80(%rbp)                 ## 4-byte Spill
	movq	-32(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movq	%rax, -88(%rbp)                 ## 8-byte Spill
	movq	-16(%rbp), %rax
	movl	-52(%rbp), %ecx
	subl	$1, %ecx
	movslq	%ecx, %rcx
	movl	(%rax,%rcx,4), %eax
	addl	-60(%rbp), %eax
	movl	$3, %ecx
	cltd
	idivl	%ecx
	movq	-88(%rbp), %rax                 ## 8-byte Reload
	movl	%edx, %ecx
	movl	-80(%rbp), %edx                 ## 4-byte Reload
	movslq	%ecx, %rcx
	addl	(%rax,%rcx,4), %edx
	movl	%edx, (%rax,%rcx,4)
## %bb.24:                              ##   in Loop: Header=BB0_22 Depth=3
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	LBB0_22
LBB0_25:                                ##   in Loop: Header=BB0_15 Depth=2
	jmp	LBB0_26
LBB0_26:                                ##   in Loop: Header=BB0_15 Depth=2
	jmp	LBB0_27
LBB0_27:                                ##   in Loop: Header=BB0_15 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB0_15
LBB0_28:                                ##   in Loop: Header=BB0_13 Depth=1
	movl	$0, -64(%rbp)
LBB0_29:                                ##   Parent Loop BB0_13 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_31 Depth 3
	movl	-64(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	LBB0_36
## %bb.30:                              ##   in Loop: Header=BB0_29 Depth=2
	movl	$0, -68(%rbp)
LBB0_31:                                ##   Parent Loop BB0_13 Depth=1
                                        ##     Parent Loop BB0_29 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	cmpl	$3, -68(%rbp)
	jge	LBB0_34
## %bb.32:                              ##   in Loop: Header=BB0_31 Depth=3
	movq	-32(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-68(%rbp), %rcx
	movl	(%rax,%rcx,4), %edx
	movq	-24(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-68(%rbp), %rcx
	movl	%edx, (%rax,%rcx,4)
	movq	-32(%rbp), %rax
	movslq	-64(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movslq	-68(%rbp), %rcx
	movl	$0, (%rax,%rcx,4)
## %bb.33:                              ##   in Loop: Header=BB0_31 Depth=3
	movl	-68(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -68(%rbp)
	jmp	LBB0_31
LBB0_34:                                ##   in Loop: Header=BB0_29 Depth=2
	jmp	LBB0_35
LBB0_35:                                ##   in Loop: Header=BB0_29 Depth=2
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	LBB0_29
LBB0_36:                                ##   in Loop: Header=BB0_13 Depth=1
	jmp	LBB0_37
LBB0_37:                                ##   in Loop: Header=BB0_13 Depth=1
	movl	-48(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -48(%rbp)
	jmp	LBB0_13
LBB0_38:
	movq	-24(%rbp), %rax
	movslq	-4(%rbp), %rcx
	movq	(%rax,%rcx,8), %rax
	movl	(%rax), %eax
	movl	%eax, -72(%rbp)
	movl	$0, -76(%rbp)
LBB0_39:                                ## =>This Inner Loop Header: Depth=1
	movl	-76(%rbp), %eax
	cmpl	-4(%rbp), %eax
	jg	LBB0_42
## %bb.40:                              ##   in Loop: Header=BB0_39 Depth=1
	movq	-24(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	_free
	movq	-32(%rbp), %rax
	movslq	-76(%rbp), %rcx
	movq	(%rax,%rcx,8), %rdi
	callq	_free
## %bb.41:                              ##   in Loop: Header=BB0_39 Depth=1
	movl	-76(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -76(%rbp)
	jmp	LBB0_39
LBB0_42:
	movq	-24(%rbp), %rdi
	callq	_free
	movq	-32(%rbp), %rdi
	callq	_free
	movq	-16(%rbp), %rdi
	callq	_free
	movl	-72(%rbp), %eax
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
