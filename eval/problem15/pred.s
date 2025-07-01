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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #36
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	ldr	r0, [fp, #-40]
	bl	strlen
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	mov	r2, #0
	strb	r2, [r3]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L2
.L3:
	ldr	r0, [fp, #-28]
	bl	strlen
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	mov	r1, r3
	ldr	r0, [fp, #-28]
	bl	realloc
	str	r0, [fp, #-28]
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-40]
	add	r2, r2, r3
	ldr	r1, [fp, #-28]
	ldr	r3, [fp, #-16]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3]
	ldr	r0, [fp, #-28]
	bl	strlen
	mov	r3, r0
	add	r1, r3, #1
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-20]
	add	r4, r2, r3
	mov	r0, r1
	bl	malloc
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldr	r3, [r3]
	ldr	r1, [fp, #-28]
	mov	r0, r3
	bl	strcpy
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L2:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	blt	.L3
	ldr	r0, [fp, #-28]
	bl	free
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-24]
	str	r2, [r3]
	ldr	r3, [fp, #-20]
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
