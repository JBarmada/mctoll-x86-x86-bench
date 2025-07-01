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
	.section	.rodata
	.align	2
.LC0:
	.ascii	"aeiouAEIOU\000"
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
	str	r1, [fp, #-28]
	ldr	r3, .L12
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L2
.L10:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]
	strb	r3, [fp, #-17]
	bl	__ctype_b_loc
	mov	r3, r0
	ldr	r2, [r3]
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L3
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	toupper
	mov	r3, r0
	strb	r3, [fp, #-17]
	b	.L4
.L3:
	bl	__ctype_b_loc
	mov	r3, r0
	ldr	r2, [r3]
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L4
	ldrb	r3, [fp, #-17]	@ zero_extendqisi2
	mov	r0, r3
	bl	tolower
	mov	r3, r0
	strb	r3, [fp, #-17]
.L4:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L5
.L9:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [fp, #-17]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L6
	ldr	r3, [fp, #-12]
	cmp	r3, #9
	bgt	.L11
	ldrb	r3, [fp, #-17]
	add	r3, r3, #2
	strb	r3, [fp, #-17]
	b	.L11
.L6:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L5:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L9
	b	.L8
.L11:
	nop
.L8:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r2, [fp, #-17]
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L10
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3]
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L13:
	.align	2
.L12:
	.word	.LC0
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
