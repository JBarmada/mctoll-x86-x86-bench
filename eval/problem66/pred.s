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
	.ascii	"%d\000"
	.align	2
.LC1:
	.word	__stack_chk_guard
	.text
	.align	2
	.global	func0
	.syntax unified
	.arm
	.fpu softvfp
	.type	func0, %function
func0:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #72
	str	r0, [fp, #-72]
	str	r1, [fp, #-76]
	ldr	r3, .L8
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3,#0
	ldr	r2, [fp, #-72]
	ldr	r1, .L8+4
	ldr	r0, .L8+8
	bl	sprintf
	ldr	r0, .L8+8
	bl	strlen
	str	r0, [fp, #-60]
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-76]
	cmp	r2, r3
	bge	.L2
	mov	r3, #0
	str	r3, [fp, #-64]
	b	.L3
.L4:
	ldr	r2, .L8+8
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	ldrb	r3, [r3]
	strb	r3, [fp, #-65]
	ldr	r3, [fp, #-60]
	sub	r2, r3, #1
	ldr	r3, [fp, #-64]
	sub	r3, r2, r3
	ldr	r2, .L8+8
	ldrb	r1, [r2, r3]	@ zero_extendqisi2
	ldr	r2, .L8+8
	ldr	r3, [fp, #-64]
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-60]
	sub	r2, r3, #1
	ldr	r3, [fp, #-64]
	sub	r3, r2, r3
	ldr	r2, .L8+8
	ldrb	r1, [fp, #-65]
	strb	r1, [r2, r3]
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L3:
	ldr	r3, [fp, #-60]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-64]
	cmp	r3, r2
	blt	.L4
	b	.L5
.L2:
	ldr	r3, [fp, #-60]
	ldr	r2, [fp, #-76]
	sub	r3, r3, r2
	ldr	r2, .L8+8
	add	r2, r2, r3
	sub	r3, fp, #56
	mov	r1, r2
	mov	r0, r3
	bl	strcpy
	sub	r2, fp, #56
	ldr	r3, [fp, #-76]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3]
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-76]
	sub	r3, r2, r3
	mov	r2, r3
	sub	r3, fp, #56
	ldr	r1, .L8+8
	mov	r0, r3
	bl	strncat
	sub	r3, fp, #56
	mov	r1, r3
	ldr	r0, .L8+8
	bl	strcpy
.L5:
	ldr	r3, .L8+8
	ldr	r2, .L8
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L7
	bl	__stack_chk_fail
.L7:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L9:
	.align	2
.L8:
	.word	.LC1
	.word	.LC0
	.word	xs.4288
	.size	func0, .-func0
	.local	xs.4288
	.comm	xs.4288,50,4
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
