	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3                               ## -- Begin function func0
LCPI0_0:
	.quad	0x3f1a36e2eb1c432d              ## double 1.0E-4
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI0_1:
	.quad	0x7fffffffffffffff              ## double NaN
	.quad	0x7fffffffffffffff              ## double NaN
LCPI0_2:
	.quad	0x8000000000000000              ## double -0
	.quad	0x8000000000000000              ## double -0
LCPI0_3:
	.quad	0x3fdfffffffffffff              ## double 0.49999999999999994
	.quad	0x3fdfffffffffffff              ## double 0.49999999999999994
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
	movq	$0, -24(%rbp)
	movl	$0, -28(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-28(%rbp), %eax
	cmpl	-12(%rbp), %eax
	jge	LBB0_9
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm0, %xmm2
	movaps	LCPI0_2(%rip), %xmm3            ## xmm3 = [-0.0E+0,-0.0E+0]
	pand	%xmm3, %xmm2
	movaps	LCPI0_3(%rip), %xmm3            ## xmm3 = [4.9999999999999994E-1,4.9999999999999994E-1]
	por	%xmm3, %xmm2
	addsd	%xmm2, %xmm0
	roundsd	$11, %xmm0, %xmm0
	subsd	%xmm0, %xmm1
	movaps	LCPI0_1(%rip), %xmm0            ## xmm0 = [NaN,NaN]
	pand	%xmm0, %xmm1
	movsd	LCPI0_0(%rip), %xmm0            ## xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	LBB0_7
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	xorps	%xmm1, %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	movaps	LCPI0_2(%rip), %xmm2            ## xmm2 = [-0.0E+0,-0.0E+0]
	pand	%xmm2, %xmm1
	movaps	LCPI0_3(%rip), %xmm2            ## xmm2 = [4.9999999999999994E-1,4.9999999999999994E-1]
	por	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	roundsd	$11, %xmm0, %xmm0
	cvttsd2si	%xmm0, %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$1, %edx
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-8(%rbp), %rax
	movslq	-28(%rbp), %rcx
	movss	(%rax,%rcx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	movaps	LCPI0_2(%rip), %xmm2            ## xmm2 = [-0.0E+0,-0.0E+0]
	pand	%xmm2, %xmm1
	movaps	LCPI0_3(%rip), %xmm2            ## xmm2 = [4.9999999999999994E-1,4.9999999999999994E-1]
	por	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	roundsd	$11, %xmm0, %xmm0
	cvttsd2si	%xmm0, %eax
	movq	-8(%rbp), %rcx
	movslq	-28(%rbp), %rdx
	movss	(%rcx,%rdx,4), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movaps	%xmm0, %xmm1
	movaps	LCPI0_2(%rip), %xmm2            ## xmm2 = [-0.0E+0,-0.0E+0]
	pand	%xmm2, %xmm1
	movaps	LCPI0_3(%rip), %xmm2            ## xmm2 = [4.9999999999999994E-1,4.9999999999999994E-1]
	por	%xmm2, %xmm1
	addsd	%xmm1, %xmm0
	roundsd	$11, %xmm0, %xmm0
	cvttsd2si	%xmm0, %ecx
	imull	%ecx, %eax
	cltq
	addq	-24(%rbp), %rax
	movq	%rax, -24(%rbp)
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_7
LBB0_7:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_8
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-28(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -28(%rbp)
	jmp	LBB0_1
LBB0_9:
	movq	-24(%rbp), %rax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
