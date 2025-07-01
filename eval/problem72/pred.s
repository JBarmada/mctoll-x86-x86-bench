	.section	.text
	.align	4
	.global	_func0
_func0:
	// Save registers
	stp	x29, x30, [sp, -16]!
	// Set frame pointer
	mov	x29, sp
	// Initialize xmm0 and xmm3
	fmov	s0, #0x0000000000000000
	fmov	s1, #0x0000000000000000
	fmov	s2, #0x0000000000000000
	fmov	s3, #0x0000000000000000
	// Move xmm1 to xmm0
	fmov	s4, s1
	// Add xmm2 to xmm0
	fadd	s0, s0, s2
	// Compare xmm0 with xmm3
	fcmp	s0, s3
	fbgt.LBB0_4
	// Branch to label .LBB0_4 if xmm0 > xmm3
.LBB0_1:
	// Move xmm3 to xmm4
	fmov	s5, s3
	// Add xmm1 to xmm4
	fadd	s5, s5, s4
	// Compare xmm4 with xmm2
	fcmp	s5, s2
	fbgt.LBB0_4
	// Branch to label .LBB0_4 if xmm4 > xmm2
.LBB0_2:
	// Move xmm3 to xmm5
	fmov	s6, s3
	// Add xmm2 to xmm5
	fadd	s6, s6, s2
	// Compare xmm5 with xmm1
	fcmp	s6, s4
	fbgt.LBB0_4
	// Branch to label .LBB0_4 if xmm5 > xmm1
.LBB0_3:
	// Add xmm2 to xmm4
	fadd	s5, s5, s2
	// Multiply xmm4 with 0.5
	fmul	s5, s5, #0x3f800000
	// Move xmm4 to xmm0
	fmov	s0, s5
	// Subtract xmm3 from xmm0
	fsub	s0, s0, s3
	// Multiply xmm4 with xmm0
	fmul	s5, s5, s0
	// Move xmm4 to xmm3
	fmov	s3, s5
	// Subtract xmm1 from xmm3
	fsub	s3, s3, s4
	// Multiply xmm0 with xmm3
	fmul	s5, s0, s3
	// Subtract xmm2 from xmm4
	fsub	s4, s4, s2
	// Multiply xmm3 with xmm4
	fmul	s5, s3, s4
	// XOR xmm0 with 0
	fxor	s0, s0, s0
	// Square root xmm4
	fsqrt	s4, s4
	// Move xmm1 to xmm0
	fmov	s0, #0x0000000000000000
	// Multiply xmm0 with xmm1
	fmul	s0, s0, s4
	// Move xmm2 to xmm1
	fmov	s1, #0x0000000000000000
	// And xmm0 with xmm2
	fand	s0, s0, s1
	// OR xmm0 with -0.0
	fmov	s1, #0x80000000
	forss	s0, s0, s1
	// Add xmm0 with -0.0
	fadd	s0, s0, s1
	// XOR xmm0 with 0
	fxor	s0, s0, s0
	// Round xmm2 to nearest integer
	frndint.s s2, s2
	// Divide xmm0 by xmm1
	fdiv.s s0, s0, s1
	// Branch to label .LBB0_4
.LBB0_4:
	// Restore registers
	ldp	x29, x30, [sp], 16
	ret
