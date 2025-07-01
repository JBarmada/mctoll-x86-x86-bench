.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ## -- Begin function func0
	.p2align	4, 0x90
_func0:                                 ## @func0
	.cfi_startproc
	ldr	x0, =-1
	ldr	x1, =2
	ldr	x2, [x1]
	blt.LBB0_6
	// save registers
	stp	x29, x30, [sp, -16]!
	// setup stack frame
	ldr	x29, [sp]
	// load input parameters
	ldr	x8, [x1]
	// calculate end address
	add	x9, x8, x8, lsl #2
	and	x9, x9, #0xFFFFFFFFFFFFFFF8
	// initialize loop variables
	ldr	x10, =0x7FFFFFFF
	ldr	x11, =0x7FFFFFFF
	ldr	x12, =0x7FFFFFFF
	ldr	x13, =0x7FFFFFFF
	ldr	x14, =0x7FFFFFFF
	ldr	x15, =0x7FFFFFFF
	// loop body
.LBB0_2:
	ldr	x16, [x0, x10]
	cmp	x12, x16
	cmovle	x12, x16
	cmp	x13, x16
	cmovle	x13, x16
	cmp	x14, x16
	cmovle	x14, x16
	cmp	x15, x16
	cmovle	x15, x16
	ldr	x17, [x0, x10, lsl #4]
	cmp	x12, x17
	cmovle	x12, x17
	cmp	x13, x17
	cmovle	x13, x17
	cmp	x14, x17
	cmovle	x14, x17
	cmp	x15, x17
	cmovle	x15, x17
	add	x10, x10, #8
	cmp	x10, x9
	bne.LBB0_2
	// check if bit 0 of r8 is set
	ldr	x8, [x1]
	and	x8, #1
	cmp	x8, #0
	je.LBB0_5
	// loop body (continued)
.LBB0_4:
	ldr	x16, [x0, x10]
	cmp	x12, x16
	cmovle	x12, x16
	cmp	x13, x16
	cmovle	x13, x16
	cmp	x14, x16
	cmovle	x14, x16
	cmp	x15, x16
	cmovle	x15, x16
	ldr	x17, [x0, x10, lsl #4]
	cmp	x12, x17
	cmovle	x12, x17
	cmp	x13, x17
	cmovle	x13, x17
	cmp	x14, x17
	cmovle	x14, x17
	cmp	x15, x17
	cmovle	x15, x17
	add	x10, x10, #8
	cmp	x10, x9
	bne.LBB0_4
.LBB0_5:
	cmp	x12, x11
	cmovle	x11, x12
	cmp	x13, x11
	cmovle	x13, x11
	cmp	x14, x11
	cmovle	x14, x11
	cmp	x15, x11
	cmovle	x15, x11
	ldr	x0, =-1
	cmovne	x0, x11
	// restore registers
	ldp	x29, x30, [sp], #16
	ret
.LBB0_6:
	ldr	x0, =-1
	ret
	.cfi_endproc
