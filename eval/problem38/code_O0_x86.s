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
	subq	$64, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movl	-12(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	addl	$1, %eax
	movslq	%eax, %rdi
	shlq	$2, %rdi
	callq	_malloc
	movq	%rax, -32(%rbp)
	movl	$0, -44(%rbp)
	movl	$0, -36(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movl	-44(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -44(%rbp)
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-36(%rbp), %eax
	addl	$2, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_1
LBB0_4:
	movl	$0, -36(%rbp)
LBB0_5:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_7 Depth 2
	movl	-36(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB0_14
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=1
	movl	$0, -40(%rbp)
LBB0_7:                                 ##   Parent Loop BB0_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-40(%rbp), %eax
	movl	-44(%rbp), %ecx
	subl	-36(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB0_12
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=2
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	ucomiss	(%rax,%rcx,4), %xmm0
	jbe	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_7 Depth=2
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -48(%rbp)
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movslq	-40(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	movss	-48(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	-32(%rbp), %rax
	movl	-40(%rbp), %ecx
	addl	$1, %ecx
	movslq	%ecx, %rcx
	movss	%xmm0, (%rax,%rcx,4)
LBB0_10:                                ##   in Loop: Header=BB0_7 Depth=2
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_7 Depth=2
	movl	-40(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -40(%rbp)
	jmp	LBB0_7
LBB0_12:                                ##   in Loop: Header=BB0_5 Depth=1
	jmp	LBB0_13
LBB0_13:                                ##   in Loop: Header=BB0_5 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_5
LBB0_14:
	movl	$0, -36(%rbp)
LBB0_15:                                ## =>This Inner Loop Header: Depth=1
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_21
## %bb.16:                              ##   in Loop: Header=BB0_15 Depth=1
	movl	-36(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	LBB0_18
## %bb.17:                              ##   in Loop: Header=BB0_15 Depth=1
	movq	-32(%rbp), %rax
	movq	%rax, -56(%rbp)                 ## 8-byte Spill
	movl	-36(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	movl	%eax, %ecx
	movq	-56(%rbp), %rax                 ## 8-byte Reload
	movslq	%ecx, %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
	jmp	LBB0_19
LBB0_18:                                ##   in Loop: Header=BB0_15 Depth=1
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movss	%xmm0, (%rax,%rcx,4)
LBB0_19:                                ##   in Loop: Header=BB0_15 Depth=1
	jmp	LBB0_20
LBB0_20:                                ##   in Loop: Header=BB0_15 Depth=1
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_15
LBB0_21:
	movq	-32(%rbp), %rdi
	callq	_free
	addq	$64, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
