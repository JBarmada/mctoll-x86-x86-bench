	.arch armv5t
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"code.c"
	.text
	.section	.rodata
	.align	2
.LC0:
	.word	__stack_chk_guard
	.text
	.align	2
	.global	func0
	.syntax unified
	.arm
	.fpu softvfp
	.type	func0, %function
func0:
	@ args = 0, pretend = 0, frame = 424
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #424
	str	r0, [fp, #-424]
	ldr	r3, .L6
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3,#0
	sub	r3, fp, #408
	mov	r2, #400
	mov	r1, #0
	mov	r0, r3
	bl	memset
	mov	r3, #0
	str	r3, [fp, #-404]
	mov	r3, #1
	str	r3, [fp, #-400]
	mov	r3, #3
	str	r3, [fp, #-412]
	b	.L2
.L3:
	ldr	r3, [fp, #-412]
	sub	r3, r3, #1
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r2, [r3, #-404]
	ldr	r3, [fp, #-412]
	sub	r3, r3, #2
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-404]
	add	r2, r2, r3
	ldr	r3, [fp, #-412]
	sub	r3, r3, #3
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-404]
	add	r2, r2, r3
	ldr	r3, [fp, #-412]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	str	r2, [r3, #-404]
	ldr	r3, [fp, #-412]
	add	r3, r3, #1
	str	r3, [fp, #-412]
.L2:
	ldr	r2, [fp, #-412]
	ldr	r3, [fp, #-424]
	cmp	r2, r3
	ble	.L3
	ldr	r3, [fp, #-424]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-404]
	ldr	r2, .L6
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L5
	bl	__stack_chk_fail
.L5:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L7:
	.align	2
.L6:
	.word	.LC0
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
