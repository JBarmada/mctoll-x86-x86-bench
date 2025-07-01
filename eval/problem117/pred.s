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
	str	r3, [fp, #-16]
	b	.L2
.L11:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	b	.L3
.L10:
	mov	r3, #0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3]
	str	r3, [fp, #-20]
	b	.L4
.L5:
	ldr	r3, [fp, #-24]
	and	r3, r3, #1
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-24]
	asr	r3, r3, #1
	str	r3, [fp, #-24]
.L4:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bgt	.L5
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L6
.L7:
	ldr	r3, [fp, #-20]
	and	r3, r3, #1
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #1
	str	r3, [fp, #-20]
.L6:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bgt	.L7
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	blt	.L8
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L9
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L9
.L8:
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r2, [fp, #-8]
	str	r2, [r3]
.L9:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L3:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L10
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L11
	nop
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
