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
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	ldr	r0, [fp, #-40]
	bl	strlen
	str	r0, [fp, #-12]
	ldr	r0, [fp, #-44]
	bl	strlen
	str	r0, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L2
.L9:
	mov	r3, #0
	strb	r3, [fp, #-30]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L3
.L6:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #-44]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L4
	mov	r3, #1
	strb	r3, [fp, #-30]
	b	.L5
.L4:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L3:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	blt	.L6
.L5:
	ldrb	r3, [fp, #-30]
	eor	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L7
	mov	r3, #0
	b	.L8
.L7:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L2:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	blt	.L9
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L10
.L16:
	mov	r3, #0
	strb	r3, [fp, #-29]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L11
.L14:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-44]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	ldr	r1, [fp, #-40]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L12
	mov	r3, #1
	strb	r3, [fp, #-29]
	b	.L13
.L12:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L11:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	blt	.L14
.L13:
	ldrb	r3, [fp, #-29]
	eor	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L15
	mov	r3, #0
	b	.L8
.L15:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L10:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	blt	.L16
	mov	r3, #1
.L8:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
