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
	.global	__aeabi_fcmpeq
	.global	__aeabi_fcmplt
	.global	__aeabi_fadd
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
	str	r0, [fp, #-8]	@ float
	str	r1, [fp, #-12]	@ float
	str	r2, [fp, #-16]	@ float
	ldr	r0, [fp, #-8]	@ float
	bl	roundf
	mov	r3, r0
	mov	r1, r3
	ldr	r0, [fp, #-8]	@ float
	bl	__aeabi_fcmpeq
	mov	r3, r0
	cmp	r3, #0
	bne	.L19
	mov	r3, #0
	b	.L4
.L19:
	ldr	r0, [fp, #-12]	@ float
	bl	roundf
	mov	r3, r0
	mov	r1, r3
	ldr	r0, [fp, #-12]	@ float
	bl	__aeabi_fcmpeq
	mov	r3, r0
	cmp	r3, #0
	bne	.L20
	mov	r3, #0
	b	.L4
.L20:
	ldr	r0, [fp, #-16]	@ float
	bl	roundf
	mov	r3, r0
	mov	r1, r3
	ldr	r0, [fp, #-16]	@ float
	bl	__aeabi_fcmpeq
	mov	r3, r0
	cmp	r3, #0
	bne	.L21
	mov	r3, #0
	b	.L4
.L21:
	ldr	r1, [fp, #-12]	@ float
	ldr	r0, [fp, #-8]	@ float
	bl	__aeabi_fadd
	mov	r3, r0
	mov	r1, r3
	ldr	r0, [fp, #-16]	@ float
	bl	__aeabi_fcmpeq
	mov	r3, r0
	cmp	r3, #0
	bne	.L9
	ldr	r1, [fp, #-16]	@ float
	ldr	r0, [fp, #-8]	@ float
	bl	__aeabi_fadd
	mov	r3, r0
	mov	r1, r3
	ldr	r0, [fp, #-12]	@ float
	bl	__aeabi_fcmpeq
	mov	r3, r0
	cmp	r3, #0
	bne	.L9
	ldr	r1, [fp, #-16]	@ float
	ldr	r0, [fp, #-12]	@ float
	bl	__aeabi_fadd
	mov	r3, r0
	mov	r1, r3
	ldr	r0, [fp, #-8]	@ float
	bl	__aeabi_fcmpeq
	mov	r3, r0
	cmp	r3, #0
	beq	.L12
.L9:
	mov	r3, #1
	b	.L4
.L12:
	mov	r3, #0
.L4:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
