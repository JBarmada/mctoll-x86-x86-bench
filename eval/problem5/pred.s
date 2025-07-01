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
	.global	__aeabi_fadd
	.global	__aeabi_i2f
	.global	__aeabi_fdiv
	.global	__aeabi_fsub
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
	str	r1, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-20]	@ float
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2
.L3:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3]	@ float
	mov	r1, r3
	ldr	r0, [fp, #-20]	@ float
	bl	__aeabi_fadd
	mov	r3, r0
	str	r3, [fp, #-20]	@ float
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L3
	ldr	r0, [fp, #-28]
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r1, r3
	ldr	r0, [fp, #-20]	@ float
	bl	__aeabi_fdiv
	mov	r3, r0
	str	r3, [fp, #-8]	@ float
	mov	r3, #0
	str	r3, [fp, #-16]	@ float
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L4
.L5:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldr	r3, [r3]	@ float
	ldr	r1, [fp, #-8]	@ float
	mov	r0, r3
	bl	__aeabi_fsub
	mov	r3, r0
	bic	r3, r3, #-2147483648
	mov	r1, r3
	ldr	r0, [fp, #-16]	@ float
	bl	__aeabi_fadd
	mov	r3, r0
	str	r3, [fp, #-16]	@ float
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L4:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L5
	ldr	r0, [fp, #-28]
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r1, r3
	ldr	r0, [fp, #-16]	@ float
	bl	__aeabi_fdiv
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
