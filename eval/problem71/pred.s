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
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L2
.L6:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-24]
	b	.L3
.L5:
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L4
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-32]
	add	r3, r1, r3
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	ldr	r2, [fp, #-8]
	str	r2, [r3]
.L4:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L3:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L5
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L2:
	ldr	r3, [fp, #-36]
	sub	r3, r3, #1
	ldr	r2, [fp, #-28]
	cmp	r2, r3
	blt	.L6
	mov	r3, #0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-36]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L7
.L9:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bne	.L8
	ldr	r3, [fp, #-20]
	add	r2, r3, #1
	str	r2, [fp, #-20]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r1, r3, #1
	str	r1, [fp, #-12]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-40]
	add	r3, r1, r3
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L7
.L8:
	ldr	r3, [fp, #-20]
	add	r2, r3, #1
	str	r2, [fp, #-20]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r1, r3, #1
	str	r1, [fp, #-12]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-40]
	add	r3, r1, r3
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [fp, #-16]
	sub	r2, r3, #1
	str	r2, [fp, #-16]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r1, r3, #1
	str	r1, [fp, #-12]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-40]
	add	r3, r1, r3
	ldr	r2, [r2]
	str	r2, [r3]
.L7:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	ble	.L9
	nop
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
