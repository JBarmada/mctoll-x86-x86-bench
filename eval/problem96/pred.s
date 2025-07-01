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
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L2
	mov	r3, #0
	b	.L3
.L2:
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L4
.L11:
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L5
.L10:
	bl	__ctype_b_loc
	mov	r3, r0
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r1, [fp, #-8]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	and	r3, r3, #1024
	cmp	r3, #0
	bne	.L6
	mov	r3, #0
	b	.L3
.L6:
	bl	__ctype_b_loc
	mov	r3, r0
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r1, [fp, #-8]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L7
	mov	r3, #1
	str	r3, [fp, #-20]
.L7:
	bl	__ctype_b_loc
	mov	r3, r0
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r1, [fp, #-8]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L8
	mov	r3, #1
	str	r3, [fp, #-24]
.L8:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	cmp	r3, #2
	bne	.L9
	mov	r3, #0
	b	.L3
.L9:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L5:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L10
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L4:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L11
	mov	r3, #1
.L3:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
