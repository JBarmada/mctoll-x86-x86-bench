	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function func0
LCPI0_0:
	.quad	0x3eb0c6f7a0b5ed8d              ## double 9.9999999999999995E-7
LCPI0_2:
	.quad	0x3ff0000000000000              ## double 1
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
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movl	$1, -52(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
	movl	-52(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_8
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movsd	LCPI0_2(%rip), %xmm0            ## xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movl	$0, -56(%rbp)
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-56(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movsd	-24(%rbp), %xmm0                ## xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	movl	-56(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -56(%rbp)
	jmp	LBB0_3
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0            ## xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm2                ## xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm1                ## xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
## %bb.7:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB0_1
LBB0_8:
	jmp	LBB0_9
LBB0_9:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_11 Depth 2
                                        ##       Child Loop BB0_13 Depth 3
                                        ##     Child Loop BB0_19 Depth 2
                                        ##       Child Loop BB0_21 Depth 3
	movsd	-32(%rbp), %xmm0                ## xmm0 = mem[0],zero
	movaps	LCPI0_1(%rip), %xmm1            ## xmm1 = [NaN,NaN]
	pand	%xmm1, %xmm0
	movsd	LCPI0_0(%rip), %xmm1            ## xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB0_27
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=1
	xorps	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	$1, -52(%rbp)
LBB0_11:                                ##   Parent Loop BB0_9 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_13 Depth 3
	movl	-52(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_18
## %bb.12:                              ##   in Loop: Header=BB0_11 Depth=2
	movsd	LCPI0_2(%rip), %xmm0            ## xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movl	$1, -60(%rbp)
LBB0_13:                                ##   Parent Loop BB0_9 Depth=1
                                        ##     Parent Loop BB0_11 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-60(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	LBB0_16
## %bb.14:                              ##   in Loop: Header=BB0_13 Depth=3
	movsd	-24(%rbp), %xmm0                ## xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
## %bb.15:                              ##   in Loop: Header=BB0_13 Depth=3
	movl	-60(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -60(%rbp)
	jmp	LBB0_13
LBB0_16:                                ##   in Loop: Header=BB0_11 Depth=2
	cvtsi2sdl	-52(%rbp), %xmm0
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rcx
	mulsd	(%rax,%rcx,8), %xmm0
	movsd	-48(%rbp), %xmm2                ## xmm2 = mem[0],zero
	movsd	-40(%rbp), %xmm1                ## xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -40(%rbp)
## %bb.17:                              ##   in Loop: Header=BB0_11 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB0_11
LBB0_18:                                ##   in Loop: Header=BB0_9 Depth=1
	movsd	-24(%rbp), %xmm0                ## xmm0 = mem[0],zero
	movsd	-32(%rbp), %xmm1                ## xmm1 = mem[0],zero
	divsd	-40(%rbp), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0                   ## xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	movl	$1, -52(%rbp)
LBB0_19:                                ##   Parent Loop BB0_9 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_21 Depth 3
	movl	-52(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_26
## %bb.20:                              ##   in Loop: Header=BB0_19 Depth=2
	movsd	LCPI0_2(%rip), %xmm0            ## xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movl	$0, -64(%rbp)
LBB0_21:                                ##   Parent Loop BB0_9 Depth=1
                                        ##     Parent Loop BB0_19 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-64(%rbp), %eax
	cmpl	-52(%rbp), %eax
	jge	LBB0_24
## %bb.22:                              ##   in Loop: Header=BB0_21 Depth=3
	movsd	-24(%rbp), %xmm0                ## xmm0 = mem[0],zero
	mulsd	-48(%rbp), %xmm0
	movsd	%xmm0, -48(%rbp)
## %bb.23:                              ##   in Loop: Header=BB0_21 Depth=3
	movl	-64(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -64(%rbp)
	jmp	LBB0_21
LBB0_24:                                ##   in Loop: Header=BB0_19 Depth=2
	movq	-8(%rbp), %rax
	movslq	-52(%rbp), %rcx
	movsd	(%rax,%rcx,8), %xmm0            ## xmm0 = mem[0],zero
	movsd	-48(%rbp), %xmm2                ## xmm2 = mem[0],zero
	movsd	-32(%rbp), %xmm1                ## xmm1 = mem[0],zero
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
## %bb.25:                              ##   in Loop: Header=BB0_19 Depth=2
	movl	-52(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -52(%rbp)
	jmp	LBB0_19
LBB0_26:                                ##   in Loop: Header=BB0_9 Depth=1
	jmp	LBB0_9
LBB0_27:
	movsd	-24(%rbp), %xmm0                ## xmm0 = mem[0],zero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
