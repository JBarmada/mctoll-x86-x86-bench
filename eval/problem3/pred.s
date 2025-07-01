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
	.global	__aeabi_f2iz
	.global	__aeabi_i2f
	.global	__aeabi_fsub
	.align	2
	.global	func0
	.syntax unified
	.arm
	.fpu softvfp
	.type	func0, %function
func0:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]	@ float
	ldr	r0, [fp, #-8]	@ float
	bl	__aeabi_f2iz
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_i2f
	mov	r3, r0
	mov	r1, r3
	ldr	r0, [fp, #-8]	@ float
	bl	__aeabi_fsub
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
