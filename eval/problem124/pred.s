	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ## -- Begin function func0
	.p2align	4, 0x90
_func0:                                 ## @func0
	.cfi_startproc
## %bb.0:
	push	x30
	.cfi_def_cfa_offset 16
	.cfi_offset x30, -16
	mov	x30, sp
	.cfi_def_cfa_register x30
	push	x15
	push	x14
	push	x13
	push	x12
	push	x11
	push	x10
	push	x9
	push	x8
	push	x7
	push	x6
	push	x5
	push	x4
	push	x3
	push	x2
	push	x1
	.cfi_offset x1, -112
	.cfi_offset x2, -104
	.cfi_offset x3, -96
	.cfi_offset x4, -88
	.cfi_offset x5, -80
	.cfi_offset x6, -72
	.cfi_offset x7, -64
	.cfi_offset x8, -56
	.cfi_offset x9, -48
	.cfi_offset x10, -40
	.cfi_offset x11, -32
	.cfi_offset x12, -24
	.cfi_offset x13, -16
	.cfi_offset x14, -8
	.cfi_offset x15, -0
	mov	x14, xrd
	mov	x12, xrsi
	mov	x11, #1
	str	x11, [x14]
	str	x11, [x12]
	cmp	x15, #1
	b.ne	LBB0_1
LBB0_6:
	cmp	x14, #2
	bl.lt	LBB0_13
## %bb.7:
	mov	x11, #1
	b	LBB0_8
	.p2align	4, 0x90
LBB0_12:                                ##   in Loop: Header=BB0_8 Depth=1
	mov	x12, xrsi
	ldr	x11, [x12]
	ldr	x11, [x11, x12, lsl #2]
	add	x12, x12, #1
	cmp	x12, x11
	b.ge	LBB0_13
LBB0_8:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_9 Depth 2
	ldr	x11, [x12, x12, lsl #2]
	ldr	x12, [x12]
	.p2align	4, 0x90
LBB0_9:                                 ##   Parent Loop BB0_8 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	sub	x12, x12, #1
	ldr	x11, [x12]
	ldr	x11, [x11, x12, lsl #2]
	ldr	x13, [x12, x12, lsl #2]
	cmp	x11, x13
	b.le	LBB0_12
## %bb.10:                              ##   in Loop: Header=BB0_9 Depth=2
	str	x11, [x12, x12, lsl #2]
	add	x12, x12, #1
	ldr	x11, [x12]
	cmp	x11, #1
	b.gt	LBB0_9
## %bb.11:                              ##   in Loop: Header=BB0_8 Depth=1
	xor	x11, x11
	b	LBB0_12
LBB0_13:
	add	sp, #112
	pop	x3
	pop	x2
	pop	x1
	pop	x10
	pop	x9
	pop	x8
	pop	x7
	pop	x6
	pop	x5
	pop	x4
	pop	x3
	pop	x12
	pop	x13
	pop	x14
	pop	x15
	pop	x30
	ret
LBB0_1:
	mov	x11, xrd
	mov	x15, xrd
	cmp	x15, #10
	bl.lt	LBB0_2
	.p2align	4, 0x90
LBB0_14:                                ##   in Loop: Header=BB0_2 Depth=1
	ldr	x11, [x11]
	orr	x11, x11, #0x80000000
	cmp	x11, #1
	b.ne	LBB0_14
## %bb.3:                               ##   in Loop: Header=BB0_2 Depth=1
	ldr	x11, [x14]
	cmp	x15, x11
	bl.lt	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_2 Depth=1
	add	x15, x15
	ldr	x11, [x14]
	orr	x11, x11, #0x80000000
	ldr	x11, [x11, x15, lsl #2]
	orr	x11, x11, #0x80000000
	ldr	x11, [x11, x15, lsl #2]
	mov	x12, #0
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12, #0x80000000
	orr	x12, x12,