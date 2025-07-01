	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	.cfi_def_cfa_offset 64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	str	x1, [sp, #24]
	str	wzr, [sp, #20]
	ldur	x0, [x29, #-16]
	bl	_strlen
	mov	x8, x0
	str	w8, [sp, #16]
	ldr	x0, [sp, #24]
	bl	_strlen
	mov	x8, x0
	str	w8, [sp, #12]
	mov	w8, #1
	str	w8, [sp, #4]
	str	wzr, [sp, #8]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_10
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #8]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #40
	cset	w8, ne
	tbnz	w8, #0, LBB0_4
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB0_4
LBB0_4:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #8]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #41
	cset	w8, ne
	tbnz	w8, #0, LBB0_6
	b	LBB0_5
LBB0_5:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_8
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_1 Depth=1
	str	wzr, [sp, #4]
	b	LBB0_8
LBB0_8:                                 ;   in Loop: Header=BB0_1 Depth=1
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB0_1
LBB0_10:
	str	wzr, [sp, #8]
	b	LBB0_11
LBB0_11:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_20
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #8]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #40
	cset	w8, ne
	tbnz	w8, #0, LBB0_14
	b	LBB0_13
LBB0_13:                                ;   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_11 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #8]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #41
	cset	w8, ne
	tbnz	w8, #0, LBB0_16
	b	LBB0_15
LBB0_15:                                ;   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB0_16
LBB0_16:                                ;   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_18
	b	LBB0_17
LBB0_17:                                ;   in Loop: Header=BB0_11 Depth=1
	str	wzr, [sp, #4]
	b	LBB0_18
LBB0_18:                                ;   in Loop: Header=BB0_11 Depth=1
	b	LBB0_19
LBB0_19:                                ;   in Loop: Header=BB0_11 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB0_11
LBB0_20:
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_23
	b	LBB0_21
LBB0_21:
	ldr	w8, [sp, #4]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_23
	b	LBB0_22
LBB0_22:
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	stur	x8, [x29, #-8]
	b	LBB0_47
LBB0_23:
	str	wzr, [sp, #20]
	mov	w8, #1
	str	w8, [sp, #4]
	str	wzr, [sp, #8]
	b	LBB0_24
LBB0_24:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #12]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_33
	b	LBB0_25
LBB0_25:                                ;   in Loop: Header=BB0_24 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #8]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #40
	cset	w8, ne
	tbnz	w8, #0, LBB0_27
	b	LBB0_26
LBB0_26:                                ;   in Loop: Header=BB0_24 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB0_27
LBB0_27:                                ;   in Loop: Header=BB0_24 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #8]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #41
	cset	w8, ne
	tbnz	w8, #0, LBB0_29
	b	LBB0_28
LBB0_28:                                ;   in Loop: Header=BB0_24 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB0_29
LBB0_29:                                ;   in Loop: Header=BB0_24 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_31
	b	LBB0_30
LBB0_30:                                ;   in Loop: Header=BB0_24 Depth=1
	str	wzr, [sp, #4]
	b	LBB0_31
LBB0_31:                                ;   in Loop: Header=BB0_24 Depth=1
	b	LBB0_32
LBB0_32:                                ;   in Loop: Header=BB0_24 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB0_24
LBB0_33:
	str	wzr, [sp, #8]
	b	LBB0_34
LBB0_34:                                ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #8]
	ldr	w9, [sp, #16]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_43
	b	LBB0_35
LBB0_35:                                ;   in Loop: Header=BB0_34 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #8]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #40
	cset	w8, ne
	tbnz	w8, #0, LBB0_37
	b	LBB0_36
LBB0_36:                                ;   in Loop: Header=BB0_34 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB0_37
LBB0_37:                                ;   in Loop: Header=BB0_34 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #8]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #41
	cset	w8, ne
	tbnz	w8, #0, LBB0_39
	b	LBB0_38
LBB0_38:                                ;   in Loop: Header=BB0_34 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB0_39
LBB0_39:                                ;   in Loop: Header=BB0_34 Depth=1
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	cset	w8, ge
	tbnz	w8, #0, LBB0_41
	b	LBB0_40
LBB0_40:                                ;   in Loop: Header=BB0_34 Depth=1
	str	wzr, [sp, #4]
	b	LBB0_41
LBB0_41:                                ;   in Loop: Header=BB0_34 Depth=1
	b	LBB0_42
LBB0_42:                                ;   in Loop: Header=BB0_34 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB0_34
LBB0_43:
	ldr	w8, [sp, #20]
	subs	w8, w8, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_46
	b	LBB0_44
LBB0_44:
	ldr	w8, [sp, #4]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_46
	b	LBB0_45
LBB0_45:
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	stur	x8, [x29, #-8]
	b	LBB0_47
LBB0_46:
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	stur	x8, [x29, #-8]
	b	LBB0_47
LBB0_47:
	ldur	x0, [x29, #-8]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Yes"

l_.str.1:                               ; @.str.1
	.asciz	"No"

.subsections_via_symbols
