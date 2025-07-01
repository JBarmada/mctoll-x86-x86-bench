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
	.align	2
	.global	func0
	.syntax unified
	.arm
	.fpu softvfp
	.type	func0, %function
func0:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-16]
	mov	r3, #1
	str	r3, [fp, #-12]
	b	.L2
.L5:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	mul	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-12]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L3
	ldr	r3, [fp, #-12]
	sub	r3, r3, #-1073741823
	lsl	r3, r3, #2
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	ldr	r2, [fp, #-16]
	str	r2, [r3]
	b	.L4
.L3:
	ldr	r3, [fp, #-12]
	sub	r3, r3, #-1073741823
	lsl	r3, r3, #2
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	ldr	r2, [fp, #-20]
	str	r2, [r3]
.L4:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	ble	.L5
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
