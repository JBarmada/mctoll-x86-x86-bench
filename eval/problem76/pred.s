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
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.align	2
	.global	func0
	.syntax unified
	.arm
	.fpu softvfp
	.type	func0, %function
func0:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	bgt	.L2
	mov	r3, #0
	b	.L3
.L2:
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #2
	str	r3, [fp, #-8]
	b	.L4
.L6:
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-16]
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L5:
	ldr	r3, [fp, #-16]
	ldr	r1, [fp, #-8]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	cmp	r3, #0
	beq	.L6
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L4:
	ldr	r3, [fp, #-8]
	mov	r2, r3
	mul	r2, r3, r2
	mov	r3, r2
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bge	.L5
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	ble	.L8
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L8:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	moveq	r3, #1
	movne	r3, #0
	and	r3, r3, #255
.L3:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
