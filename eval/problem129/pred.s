	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ## -- Begin function func0
	.p2align	4, 0x90
_func0:                                 ## @func0
	.cfi_startproc
	ldr	w8, [x19]
	cmp	w8, #0
	b.eq	LBB0_1
	cmp	w8, #1
	b.ge	LBB0_3
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset x29, #-16
	.cfi_offset x30, #-8
	mov	w8, x19
	mov	w9, #1
	cmp	w8, #1
	b.ne	LBB0_6
	xor	w10, w10
	mov	w8, #1
	xor	w0, w0
	b	LBB0_8
LBB0_1:
	mov	w0, #0x8000
	b	LBB0_9
LBB0_3:
	xor	w0, w0
	b	LBB0_9
LBB0_6:
	mov	w9, w19
	and	w9, #1
	xor	w10, w10
	mov	w8, #1
	xor	w0, w0
	b	LBB0_10
LBB0_7:
	ldr	w8, [x0, w10, LSL #2]
	cmp	w8, #0
	csel	w8, w8, w0, EQ
	mov	w9, w8
	neg	w9
	csel	w9, w8, w9, NE
	ldr	w8, [x0, w10, LSL #2, UXTW #1]
	cmp	w8, #0
	csel	w8, w8, w0, EQ
	add	w9, w9, w8
	ldr	w8, [x0, w10, LSL #2, UXTW #2]
	cmp	w8, #0
	csel	w8, w8, w0, EQ
	neg	w9, w9
	csel	w9, w8, w9, NE
	ldr	w8, [x0, w10, LSL #2, UXTW #3]
	cmp	w8, #0
	csel	w8, w8, w0, EQ
	add	w9, w9, w8
	cmp	w10, w9
	b.ne	LBB0_7
LBB0_10:
	mul	w0, w10, w8
	ldp	x29, x30, [sp], #16
	b	LBB0_9
LBB0_9:
	ldr	w8, [x19, #1]
	cmp	w8, #1
	b.eq	LBB0_11
	ldr	w9, [x0, w10, LSL #2]
	cmp	w9, #0
	csel	w9, w9, w0, EQ
	mov	w10, w9
	neg	w10
	csel	w10, w9, w10, NE
	ldr	w9, [x0, w10, LSL #2, UXTW #1]
	cmp	w9, #0
	csel	w9, w9, w0, EQ
	add	w10, w10, w9
	ldr	w9, [x0, w10, LSL #2, UXTW #2]
	cmp	w9, #0
	csel	w9, w9, w0, EQ
	neg	w10, w10
	csel	w10, w9, w10, NE
	ldr	w9, [x0, w10, LSL #2, UXTW #3]
	cmp	w9, #0
	csel	w9, w9, w0, EQ
	add	w10, w10, w9
	mul	w0, w10, w8
	b	LBB0_9
LBB0_11:
	ldp	x29, x30, [sp], #16
	ret
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
