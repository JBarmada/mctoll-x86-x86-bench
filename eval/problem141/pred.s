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
	str	r1, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2
.L8:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L3
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	b	.L4
.L3:
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	bne	.L5
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	str	r2, [fp, #-12]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	mov	r2, #95
	strb	r2, [r3]
.L5:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	bne	.L6
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	str	r2, [fp, #-12]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	mov	r2, #95
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	str	r2, [fp, #-12]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	mov	r2, #95
	strb	r2, [r3]
.L6:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	ble	.L7
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	str	r2, [fp, #-12]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	mov	r2, #45
	strb	r2, [r3]
.L7:
	mov	r3, #0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r1, r3, #1
	str	r1, [fp, #-12]
	mov	r1, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L4:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2:
	ldr	r0, [fp, #-24]
	bl	strlen
	mov	r2, r0
	ldr	r3, [fp, #-8]
	cmp	r2, r3
	bhi	.L8
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	bne	.L9
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	str	r2, [fp, #-12]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	mov	r2, #95
	strb	r2, [r3]
.L9:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	bne	.L10
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	str	r2, [fp, #-12]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	mov	r2, #95
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	str	r2, [fp, #-12]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	mov	r2, #95
	strb	r2, [r3]
.L10:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	ble	.L11
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	str	r2, [fp, #-12]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	mov	r2, #45
	strb	r2, [r3]
.L11:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3]
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
