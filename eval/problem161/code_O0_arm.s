	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ; -- Begin function func0
	.p2align	2
_func0:                                 ; @func0
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	stur	w2, [x29, #-20]
	stur	w3, [x29, #-24]
	ldursw	x8, [x29, #-24]
	lsl	x0, x8, #2
	bl	_malloc
	str	x0, [sp, #32]
	ldursw	x8, [x29, #-24]
	lsl	x0, x8, #2
	bl	_malloc
	str	x0, [sp, #24]
	str	wzr, [sp, #20]
	b	LBB0_1
LBB0_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #20]
	ldur	w9, [x29, #-24]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_4
	b	LBB0_2
LBB0_2:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldur	x8, [x29, #-16]
	ldrsw	x9, [sp, #20]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #32]
	ldrsw	x10, [sp, #20]
	str	w8, [x9, x10, lsl #2]
	ldr	w8, [sp, #20]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #20]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_3
LBB0_3:                                 ;   in Loop: Header=BB0_1 Depth=1
	ldr	w8, [sp, #20]
	add	w8, w8, #1
	str	w8, [sp, #20]
	b	LBB0_1
LBB0_4:
	str	wzr, [sp, #16]
	b	LBB0_5
LBB0_5:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_8 Depth 2
                                        ;     Child Loop BB0_11 Depth 2
	ldr	w8, [sp, #16]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_16
	b	LBB0_6
LBB0_6:                                 ;   in Loop: Header=BB0_5 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #16]
	ldr	x0, [x8, x9, lsl #3]
	adrp	x1, l_.str@PAGE
	add	x1, x1, l_.str@PAGEOFF
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_14
	b	LBB0_7
LBB0_7:                                 ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_8
LBB0_8:                                 ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #16]
	ldrsw	x9, [x9, x10, lsl #2]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #16]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_10
	b	LBB0_9
LBB0_9:                                 ;   in Loop: Header=BB0_8 Depth=2
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #16]
	ldrsw	x9, [x9, x10, lsl #2]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #16]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_8
LBB0_10:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_11
LBB0_11:                                ;   Parent Loop BB0_5 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #16]
	add	w10, w10, #1
	ldrsw	x9, [x9, w10, sxtw #2]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #16]
	add	w10, w10, #1
	ldr	w9, [x9, w10, sxtw #2]
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_13
	b	LBB0_12
LBB0_12:                                ;   in Loop: Header=BB0_11 Depth=2
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #16]
	add	w10, w10, #1
	ldrsw	x9, [x9, w10, sxtw #2]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #16]
	add	w10, w10, #1
	str	w8, [x9, w10, sxtw #2]
	b	LBB0_11
LBB0_13:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #16]
	ldrsw	x9, [x9, x10, lsl #2]
	ldr	s1, [x8, x9, lsl #2]
                                        ; implicit-def: $d0
	fmov	s0, s1
	sshll.2d	v0, v0, #0
                                        ; kill: def $d0 killed $d0 killed $q0
	scvtf	d0, d0
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #16]
	add	w10, w10, #1
	ldrsw	x9, [x9, w10, sxtw #2]
	ldr	s2, [x8, x9, lsl #2]
                                        ; implicit-def: $d1
	fmov	s1, s2
	sshll.2d	v1, v1, #0
                                        ; kill: def $d1 killed $d1 killed $q1
	scvtf	d1, d1
	bl	_pow
	fcvtzs	w8, d0
	ldr	x9, [sp, #32]
	ldr	x10, [sp, #24]
	ldrsw	x11, [sp, #16]
	ldrsw	x10, [x10, x11, lsl #2]
	str	w8, [x9, x10, lsl #2]
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #16]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #16]
	add	w10, w10, #1
	str	w8, [x9, w10, sxtw #2]
	b	LBB0_14
LBB0_14:                                ;   in Loop: Header=BB0_5 Depth=1
	b	LBB0_15
LBB0_15:                                ;   in Loop: Header=BB0_5 Depth=1
	ldr	w8, [sp, #16]
	add	w8, w8, #1
	str	w8, [sp, #16]
	b	LBB0_5
LBB0_16:
	str	wzr, [sp, #12]
	b	LBB0_17
LBB0_17:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_21 Depth 2
                                        ;     Child Loop BB0_24 Depth 2
	ldr	w8, [sp, #12]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_32
	b	LBB0_18
LBB0_18:                                ;   in Loop: Header=BB0_17 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	ldr	x0, [x8, x9, lsl #3]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_20
	b	LBB0_19
LBB0_19:                                ;   in Loop: Header=BB0_17 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	ldr	x0, [x8, x9, lsl #3]
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_30
	b	LBB0_20
LBB0_20:                                ;   in Loop: Header=BB0_17 Depth=1
	b	LBB0_21
LBB0_21:                                ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #12]
	ldrsw	x9, [x9, x10, lsl #2]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #12]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_23
	b	LBB0_22
LBB0_22:                                ;   in Loop: Header=BB0_21 Depth=2
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #12]
	ldrsw	x9, [x9, x10, lsl #2]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #12]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_21
LBB0_23:                                ;   in Loop: Header=BB0_17 Depth=1
	b	LBB0_24
LBB0_24:                                ;   Parent Loop BB0_17 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #12]
	add	w10, w10, #1
	ldrsw	x9, [x9, w10, sxtw #2]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #12]
	add	w10, w10, #1
	ldr	w9, [x9, w10, sxtw #2]
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_26
	b	LBB0_25
LBB0_25:                                ;   in Loop: Header=BB0_24 Depth=2
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #12]
	add	w10, w10, #1
	ldrsw	x9, [x9, w10, sxtw #2]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #12]
	add	w10, w10, #1
	str	w8, [x9, w10, sxtw #2]
	b	LBB0_24
LBB0_26:                                ;   in Loop: Header=BB0_17 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #12]
	ldr	x0, [x8, x9, lsl #3]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_28
	b	LBB0_27
LBB0_27:                                ;   in Loop: Header=BB0_17 Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #12]
	add	w10, w10, #1
	ldrsw	x9, [x9, w10, sxtw #2]
	ldr	w10, [x8, x9, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	ldrsw	x11, [sp, #12]
	ldrsw	x9, [x9, x11, lsl #2]
	add	x9, x8, x9, lsl #2
	ldr	w8, [x9]
	mul	w8, w8, w10
	str	w8, [x9]
	b	LBB0_29
LBB0_28:                                ;   in Loop: Header=BB0_17 Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #12]
	add	w10, w10, #1
	ldrsw	x9, [x9, w10, sxtw #2]
	ldr	w10, [x8, x9, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	ldrsw	x11, [sp, #12]
	ldrsw	x9, [x9, x11, lsl #2]
	add	x9, x8, x9, lsl #2
	ldr	w8, [x9]
	sdiv	w8, w8, w10
	str	w8, [x9]
	b	LBB0_29
LBB0_29:                                ;   in Loop: Header=BB0_17 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #12]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #12]
	add	w10, w10, #1
	str	w8, [x9, w10, sxtw #2]
	b	LBB0_30
LBB0_30:                                ;   in Loop: Header=BB0_17 Depth=1
	b	LBB0_31
LBB0_31:                                ;   in Loop: Header=BB0_17 Depth=1
	ldr	w8, [sp, #12]
	add	w8, w8, #1
	str	w8, [sp, #12]
	b	LBB0_17
LBB0_32:
	str	wzr, [sp, #8]
	b	LBB0_33
LBB0_33:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_37 Depth 2
                                        ;     Child Loop BB0_40 Depth 2
	ldr	w8, [sp, #8]
	ldur	w9, [x29, #-20]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB0_48
	b	LBB0_34
LBB0_34:                                ;   in Loop: Header=BB0_33 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #8]
	ldr	x0, [x8, x9, lsl #3]
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, eq
	tbnz	w8, #0, LBB0_36
	b	LBB0_35
LBB0_35:                                ;   in Loop: Header=BB0_33 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #8]
	ldr	x0, [x8, x9, lsl #3]
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_46
	b	LBB0_36
LBB0_36:                                ;   in Loop: Header=BB0_33 Depth=1
	b	LBB0_37
LBB0_37:                                ;   Parent Loop BB0_33 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #8]
	ldrsw	x9, [x9, x10, lsl #2]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #8]
	ldr	w9, [x9, x10, lsl #2]
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_39
	b	LBB0_38
LBB0_38:                                ;   in Loop: Header=BB0_37 Depth=2
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #8]
	ldrsw	x9, [x9, x10, lsl #2]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldrsw	x10, [sp, #8]
	str	w8, [x9, x10, lsl #2]
	b	LBB0_37
LBB0_39:                                ;   in Loop: Header=BB0_33 Depth=1
	b	LBB0_40
LBB0_40:                                ;   Parent Loop BB0_33 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #8]
	add	w10, w10, #1
	ldrsw	x9, [x9, w10, sxtw #2]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #8]
	add	w10, w10, #1
	ldr	w9, [x9, w10, sxtw #2]
	subs	w8, w8, w9
	cset	w8, eq
	tbnz	w8, #0, LBB0_42
	b	LBB0_41
LBB0_41:                                ;   in Loop: Header=BB0_40 Depth=2
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #8]
	add	w10, w10, #1
	ldrsw	x9, [x9, w10, sxtw #2]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #8]
	add	w10, w10, #1
	str	w8, [x9, w10, sxtw #2]
	b	LBB0_40
LBB0_42:                                ;   in Loop: Header=BB0_33 Depth=1
	ldur	x8, [x29, #-8]
	ldrsw	x9, [sp, #8]
	ldr	x0, [x8, x9, lsl #3]
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_strcmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB0_44
	b	LBB0_43
LBB0_43:                                ;   in Loop: Header=BB0_33 Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #8]
	add	w10, w10, #1
	ldrsw	x9, [x9, w10, sxtw #2]
	ldr	w10, [x8, x9, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	ldrsw	x11, [sp, #8]
	ldrsw	x9, [x9, x11, lsl #2]
	add	x9, x8, x9, lsl #2
	ldr	w8, [x9]
	add	w8, w8, w10
	str	w8, [x9]
	b	LBB0_45
LBB0_44:                                ;   in Loop: Header=BB0_33 Depth=1
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #8]
	add	w10, w10, #1
	ldrsw	x9, [x9, w10, sxtw #2]
	ldr	w10, [x8, x9, lsl #2]
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #24]
	ldrsw	x11, [sp, #8]
	ldrsw	x9, [x9, x11, lsl #2]
	add	x9, x8, x9, lsl #2
	ldr	w8, [x9]
	subs	w8, w8, w10
	str	w8, [x9]
	b	LBB0_45
LBB0_45:                                ;   in Loop: Header=BB0_33 Depth=1
	ldr	x8, [sp, #24]
	ldrsw	x9, [sp, #8]
	ldr	w8, [x8, x9, lsl #2]
	ldr	x9, [sp, #24]
	ldr	w10, [sp, #8]
	add	w10, w10, #1
	str	w8, [x9, w10, sxtw #2]
	b	LBB0_46
LBB0_46:                                ;   in Loop: Header=BB0_33 Depth=1
	b	LBB0_47
LBB0_47:                                ;   in Loop: Header=BB0_33 Depth=1
	ldr	w8, [sp, #8]
	add	w8, w8, #1
	str	w8, [sp, #8]
	b	LBB0_33
LBB0_48:
	ldr	x8, [sp, #32]
	ldr	w8, [x8]
	str	w8, [sp, #4]
	ldr	x0, [sp, #32]
	bl	_free
	ldr	x0, [sp, #24]
	bl	_free
	ldr	w0, [sp, #4]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"**"

l_.str.1:                               ; @.str.1
	.asciz	"*"

l_.str.2:                               ; @.str.2
	.asciz	"//"

l_.str.3:                               ; @.str.3
	.asciz	"+"

l_.str.4:                               ; @.str.4
	.asciz	"-"

.subsections_via_symbols
