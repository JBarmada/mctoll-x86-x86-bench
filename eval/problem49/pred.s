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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r0, [fp, #-16]
	bl	strlen
	str	r0, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2
.L5:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	sub	r1, r3, #1
	ldr	r3, [fp, #-12]
	sub	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L3
	mov	r3, #0
	b	.L4
.L3:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2:
	ldr	r3, [fp, #-8]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-12]
	cmp	r3, r2
	blt	.L5
	mov	r3, #1
.L4:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
