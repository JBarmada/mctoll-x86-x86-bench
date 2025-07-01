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
	mov	r3, #1
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L9:
	bl	__ctype_b_loc
	mov	r3, r0
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-24]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	and	r3, r3, #8192
	cmp	r3, #0
	beq	.L3
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L3
	mov	r3, #0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L3:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #73
	bne	.L4
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L4
	mov	r3, #1
	str	r3, [fp, #-16]
	b	.L5
.L4:
	bl	__ctype_b_loc
	mov	r3, r0
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-24]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	and	r3, r3, #8192
	cmp	r3, #0
	bne	.L5
	mov	r3, #0
	str	r3, [fp, #-16]
.L5:
	bl	__ctype_b_loc
	mov	r3, r0
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-24]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	and	r3, r3, #8192
	cmp	r3, #0
	bne	.L6
	mov	r3, #0
	str	r3, [fp, #-20]
.L6:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #46
	beq	.L7
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #63
	beq	.L7
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #33
	bne	.L8
.L7:
	mov	r3, #1
	str	r3, [fp, #-20]
.L8:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L9
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
