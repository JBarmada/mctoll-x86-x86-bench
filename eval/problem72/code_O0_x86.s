	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.section	__TEXT,__literal4,4byte_literals
	.p2align	2                               ## -- Begin function func0
LCPI0_0:
	.long	0x42c80000                      ## float 100
LCPI0_3:
	.long	0x40000000                      ## float 2
LCPI0_4:
	.long	0xbf800000                      ## float -1
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI0_1:
	.long	0x80000000                      ## float -0
	.long	0x80000000                      ## float -0
	.long	0x80000000                      ## float -0
	.long	0x80000000                      ## float -0
LCPI0_2:
	.long	0x3effffff                      ## float 0.49999997
	.long	0x3effffff                      ## float 0.49999997
	.long	0x3effffff                      ## float 0.49999997
	.long	0x3effffff                      ## float 0.49999997
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
	movss	%xmm0, -8(%rbp)
	movss	%xmm1, -12(%rbp)
	movss	%xmm2, -16(%rbp)
	movss	-8(%rbp), %xmm1                 ## xmm1 = mem[0],zero,zero,zero
	addss	-12(%rbp), %xmm1
	movss	-16(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jae	LBB0_3
## %bb.1:
	movss	-8(%rbp), %xmm1                 ## xmm1 = mem[0],zero,zero,zero
	addss	-16(%rbp), %xmm1
	movss	-12(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jae	LBB0_3
## %bb.2:
	movss	-12(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	addss	-16(%rbp), %xmm1
	movss	-8(%rbp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	ucomiss	%xmm1, %xmm0
	jb	LBB0_4
LBB0_3:
	movss	LCPI0_4(%rip), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	movss	%xmm0, -4(%rbp)
	jmp	LBB0_5
LBB0_4:
	movss	-8(%rbp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	addss	-12(%rbp), %xmm0
	addss	-16(%rbp), %xmm0
	movss	LCPI0_3(%rip), %xmm1            ## xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -20(%rbp)
	movss	-20(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movss	-20(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	subss	-8(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	-20(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	subss	-12(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	movss	-20(%rbp), %xmm1                ## xmm1 = mem[0],zero,zero,zero
	subss	-16(%rbp), %xmm1
	mulss	%xmm1, %xmm0
	sqrtss	%xmm0, %xmm0
	movss	%xmm0, -24(%rbp)
	movss	LCPI0_0(%rip), %xmm0            ## xmm0 = mem[0],zero,zero,zero
	mulss	-24(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	movaps	LCPI0_1(%rip), %xmm2            ## xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	pand	%xmm2, %xmm1
	movaps	LCPI0_2(%rip), %xmm2            ## xmm2 = [4.9999997E-1,4.9999997E-1,4.9999997E-1,4.9999997E-1]
	por	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	roundss	$11, %xmm0, %xmm0
	movss	LCPI0_0(%rip), %xmm1            ## xmm1 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	movss	%xmm0, -4(%rbp)
LBB0_5:
	movss	-4(%rbp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
