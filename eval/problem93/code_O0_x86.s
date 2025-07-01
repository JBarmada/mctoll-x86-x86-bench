	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4                               ## -- Begin function func0
LCPI0_0:
	.long	0x80000000                      ## float -0
	.long	0x80000000                      ## float -0
	.long	0x80000000                      ## float -0
	.long	0x80000000                      ## float -0
LCPI0_1:
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
	movss	-8(%rbp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	LCPI0_0(%rip), %xmm2            ## xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	pand	%xmm2, %xmm1
	movaps	LCPI0_1(%rip), %xmm2            ## xmm2 = [4.9999997E-1,4.9999997E-1,4.9999997E-1,4.9999997E-1]
	por	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	roundss	$11, %xmm0, %xmm0
	ucomiss	-8(%rbp), %xmm0
	jne	LBB0_1
	jp	LBB0_1
	jmp	LBB0_2
LBB0_1:
	movl	$0, -4(%rbp)
	jmp	LBB0_11
LBB0_2:
	movss	-12(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	LCPI0_0(%rip), %xmm2            ## xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	pand	%xmm2, %xmm1
	movaps	LCPI0_1(%rip), %xmm2            ## xmm2 = [4.9999997E-1,4.9999997E-1,4.9999997E-1,4.9999997E-1]
	por	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	roundss	$11, %xmm0, %xmm0
	ucomiss	-12(%rbp), %xmm0
	jne	LBB0_3
	jp	LBB0_3
	jmp	LBB0_4
LBB0_3:
	movl	$0, -4(%rbp)
	jmp	LBB0_11
LBB0_4:
	movss	-16(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	movaps	%xmm0, %xmm1
	movaps	LCPI0_0(%rip), %xmm2            ## xmm2 = [-0.0E+0,-0.0E+0,-0.0E+0,-0.0E+0]
	pand	%xmm2, %xmm1
	movaps	LCPI0_1(%rip), %xmm2            ## xmm2 = [4.9999997E-1,4.9999997E-1,4.9999997E-1,4.9999997E-1]
	por	%xmm2, %xmm1
	addss	%xmm1, %xmm0
	roundss	$11, %xmm0, %xmm0
	ucomiss	-16(%rbp), %xmm0
	jne	LBB0_5
	jp	LBB0_5
	jmp	LBB0_6
LBB0_5:
	movl	$0, -4(%rbp)
	jmp	LBB0_11
LBB0_6:
	movss	-8(%rbp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	addss	-12(%rbp), %xmm0
	ucomiss	-16(%rbp), %xmm0
	jne	LBB0_7
	jp	LBB0_7
	jmp	LBB0_9
LBB0_7:
	movss	-8(%rbp), %xmm0                 ## xmm0 = mem[0],zero,zero,zero
	addss	-16(%rbp), %xmm0
	ucomiss	-12(%rbp), %xmm0
	jne	LBB0_8
	jp	LBB0_8
	jmp	LBB0_9
LBB0_8:
	movss	-12(%rbp), %xmm0                ## xmm0 = mem[0],zero,zero,zero
	addss	-16(%rbp), %xmm0
	ucomiss	-8(%rbp), %xmm0
	jne	LBB0_10
	jp	LBB0_10
LBB0_9:
	movl	$1, -4(%rbp)
	jmp	LBB0_11
LBB0_10:
	movl	$0, -4(%rbp)
LBB0_11:
	movl	-4(%rbp), %eax
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
