	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	.cfi_def_cfa_offset 96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	w0, [sp, #32]
	str	w1, [sp, #28]
	str	x2, [sp, #16]
	str	wzr, [sp, #12]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #32]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_3
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #32]
	ldr	w10, [sp, #28]
	sdiv	w9, w8, w10
	mul	w9, w9, w10
	subs	w8, w8, w9
	add	w8, w8, #48
	ldrsw	x10, [sp, #12]
	mov	x9, x10
	add	w9, w9, #1
	str	w9, [sp, #12]
	add	x9, sp, #39
	strb	w8, [x9, x10]
	ldr	w8, [sp, #32]
	ldr	w9, [sp, #28]
	sdiv	w8, w8, w9
	str	w8, [sp, #32]
	b	LBB0_1
LBB0_3:
	str	wzr, [sp, #8]
	b	LBB0_4
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, le
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldr	w8, [sp, #12]
	subs	w9, w8, #1
	str	w9, [sp, #12]
	add	x8, sp, #39
	add	x8, x8, w9, sxtw
	ldrb	w8, [x8]
	ldr	x9, [sp, #16]
	ldrsw	x10, [sp, #8]
	mov	x11, x10
	add	w11, w11, #1
	str	w11, [sp, #8]
	add	x9, x9, x10
	strb	w8, [x9]
	b	LBB0_4
LBB0_6:
	ldr	x8, [sp, #16]
	ldrsw	x9, [sp, #8]
	add	x8, x8, x9
	strb	wzr, [x8]
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:
	bl	___stack_chk_fail
LBB0_8:
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
