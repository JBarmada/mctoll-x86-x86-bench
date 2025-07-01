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
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L2
.L6:
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3]
	cmp	r3, #10
	ble	.L3
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, .L8
	smull	r1, r3, r2, r3
	asr	r1, r3, #2
	asr	r3, r2, #31
	sub	r1, r1, r3
	mov	r3, r1
	lsl	r3, r3, #2
	add	r3, r3, r1
	lsl	r3, r3, #1
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	b	.L4
.L5:
	ldr	r3, [fp, #-16]
	ldr	r2, .L8
	smull	r1, r2, r3, r2
	asr	r2, r2, #2
	asr	r3, r3, #31
	sub	r3, r2, r3
	str	r3, [fp, #-16]
.L4:
	ldr	r3, [fp, #-16]
	cmp	r3, #9
	bgt	.L5
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	and	r3, r3, #1
	rsblt	r3, r3, #0
	cmp	r3, #1
	bne	.L3
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	and	r3, r3, #1
	rsblt	r3, r3, #0
	cmp	r3, #1
	bne	.L3
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L3:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L2:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L6
	ldr	r3, [fp, #-24]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L9:
	.align	2
.L8:
	.word	1717986919
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
