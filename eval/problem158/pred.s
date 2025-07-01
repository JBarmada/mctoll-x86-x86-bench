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
	.global	__aeabi_fmul
	.global	__aeabi_fadd
	.global	__aeabi_fsub
	.global	__aeabi_f2d
	.global	__aeabi_dcmplt
	.align	2
	.global	func0
	.syntax unified
	.arm
	.fpu softvfp
	.type	func0, %function
func0:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #20
	str	r0, [fp, #-16]	@ float
	str	r1, [fp, #-20]	@ float
	str	r2, [fp, #-24]	@ float
	ldr	r1, [fp, #-16]	@ float
	ldr	r0, [fp, #-16]	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r4, r3
	ldr	r1, [fp, #-20]	@ float
	ldr	r0, [fp, #-20]	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	__aeabi_fadd
	mov	r3, r0
	mov	r4, r3
	ldr	r1, [fp, #-24]	@ float
	ldr	r0, [fp, #-24]	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	__aeabi_fsub
	mov	r3, r0
	bic	r3, r3, #-2147483648
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L7
	ldr	r3, .L7+4
	bl	__aeabi_dcmplt
	mov	r3, r0
	cmp	r3, #0
	bne	.L2
	ldr	r1, [fp, #-16]	@ float
	ldr	r0, [fp, #-16]	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r4, r3
	ldr	r1, [fp, #-24]	@ float
	ldr	r0, [fp, #-24]	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	__aeabi_fadd
	mov	r3, r0
	mov	r4, r3
	ldr	r1, [fp, #-20]	@ float
	ldr	r0, [fp, #-20]	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	__aeabi_fsub
	mov	r3, r0
	bic	r3, r3, #-2147483648
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L7
	ldr	r3, .L7+4
	bl	__aeabi_dcmplt
	mov	r3, r0
	cmp	r3, #0
	bne	.L2
	ldr	r1, [fp, #-20]	@ float
	ldr	r0, [fp, #-20]	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r4, r3
	ldr	r1, [fp, #-24]	@ float
	ldr	r0, [fp, #-24]	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	__aeabi_fadd
	mov	r3, r0
	mov	r4, r3
	ldr	r1, [fp, #-16]	@ float
	ldr	r0, [fp, #-16]	@ float
	bl	__aeabi_fmul
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	__aeabi_fsub
	mov	r3, r0
	bic	r3, r3, #-2147483648
	mov	r0, r3
	bl	__aeabi_f2d
	ldr	r2, .L7
	ldr	r3, .L7+4
	bl	__aeabi_dcmplt
	mov	r3, r0
	cmp	r3, #0
	beq	.L6
.L2:
	mov	r3, #1
	b	.L5
.L6:
	mov	r3, #0
.L5:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L8:
	.align	2
.L7:
	.word	-780903145
	.word	1058682594
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
