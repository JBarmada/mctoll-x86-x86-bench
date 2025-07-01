	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ## -- Begin function func0
LCPI0_0:
	.long	0x7f7fffff                      ## float 3.40282347E+38
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI0_1:
	.quad	0x7fffffffffffffff              ## double NaN
	.quad	0x7fffffffffffffff              ## double NaN
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_func0
	.p2align	4, 0x90
_func0:                                 ## @func0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	%rdi, -8(%rbp)
	movl	%esi, -12(%rbp)
	movq	%rdx, -24(%rbp)
	movss	LCPI0_0(%rip), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -28(%rbp)
	movq	-8(%rbp), %rax
	movss	(%rax), %xmm0                   ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movss	4(%rax), %xmm0                  ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movss	%xmm0, 4(%rax)
	movl	$0, -32(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	movl	-32(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_10
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-36(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_8
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	subss	(%rax,%rcx,4), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movaps	LCPI0_1(%rip), %xmm1            ## xmm1 = [NaN,NaN]
	pand	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -40(%rbp)
	movss	-40(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	movss	-28(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jbe	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	movss	-40(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -28(%rbp)
	movq	-8(%rbp), %rax
	movslq	-32(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	movslq	-36(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movss	%xmm0, 4(%rax)
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=2
	movl	-36(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -36(%rbp)
	jmp	LBB0_3
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_9
LBB0_9:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-32(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -32(%rbp)
	jmp	LBB0_1
LBB0_10:
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0                   ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	ucomiss	4(%rax), %xmm0
	jbe	LBB0_12
## %bb.11:
	movq	-24(%rbp), %rax
	movss	(%rax), %xmm0                   ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -44(%rbp)
	movq	-24(%rbp), %rax
	movss	4(%rax), %xmm0                  ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movss	%xmm0, (%rax)
	movss	-44(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movq	-24(%rbp), %rax
	movss	%xmm0, 4(%rax)
LBB0_12:
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
