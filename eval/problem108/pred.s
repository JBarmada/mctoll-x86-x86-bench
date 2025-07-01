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
	mov	r0, #8
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3]
	mov	r3, #1
	str	r3, [fp, #-24]
	b	.L2
.L7:
	mov	r3, #0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-16]
	b	.L3
.L4:
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	ip, r3
	ldr	r2, [fp, #-16]
	ldr	r3, .L9
	smull	r1, r3, r2, r3
	asr	r1, r3, #2
	asr	r3, r2, #31
	sub	r1, r1, r3
	mov	r3, r1
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #1
	sub	r1, r2, r3
	add	r3, ip, r1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	ldr	r2, .L9
	smull	r1, r2, r3, r2
	asr	r2, r2, #2
	asr	r3, r3, #31
	sub	r3, r2, r3
	str	r3, [fp, #-16]
.L3:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L4
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bne	.L5
	ldr	r3, [fp, #-8]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L6
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r3, [fp, #-12]
	str	r2, [r3]
	b	.L5
.L6:
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	ldr	r2, [r3]
	add	r2, r2, #1
	str	r2, [r3]
.L5:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L2:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	ble	.L7
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L10:
	.align	2
.L9:
	.word	1717986919
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
