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
	.ascii	"AEIOUaeiou\000"
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
	ldr	r3, .L6
	str	r3, [fp, #-12]
	ldr	r0, [fp, #-24]
	bl	strlen
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #2
	str	r3, [fp, #-16]
	b	.L2
.L5:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [fp, #-12]
	bl	strchr
	mov	r3, r0
	cmp	r3, #0
	beq	.L3
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [fp, #-12]
	bl	strchr
	mov	r3, r0
	cmp	r3, #0
	bne	.L3
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [fp, #-12]
	bl	strchr
	mov	r3, r0
	cmp	r3, #0
	bne	.L3
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, .L6+4
	strb	r2, [r3]
	ldr	r3, .L6+4
	b	.L4
.L3:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bgt	.L5
	ldr	r3, .L6+4
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, .L6+4
.L4:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L7:
	.align	2
.L6:
	.word	.LC0
	.word	out.4288
	.size	func0, .-func0
	.local	out.4288
	.comm	out.4288,2,4
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
