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
	.ascii	"True\000"
	.align	2
.LC1:
	.ascii	"False\000"
	.text
	.align	2
	.global	func0
	.syntax unified
	.arm
	.fpu softvfp
	.type	func0, %function
func0:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	ldr	r0, [fp, #-40]
	bl	strlen
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L2
.L8:
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-20]
	mov	r3, #0
	strb	r3, [fp, #-34]
	b	.L3
.L6:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L4
	mov	r3, #1
	strb	r3, [fp, #-34]
	b	.L5
.L4:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L3:
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L6
.L5:
	ldrb	r3, [fp, #-34]
	eor	r3, r3, #1
	and	r3, r3, #255
	cmp	r3, #0
	beq	.L7
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-40]
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	add	r1, r3, #1
	str	r1, [fp, #-32]
	mov	r1, r3
	ldr	r3, [fp, #-12]
	add	r3, r3, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L7:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L2:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L8
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3]
	ldr	r0, [fp, #-12]
	bl	strlen
	str	r0, [fp, #-8]
	mov	r3, #1
	strb	r3, [fp, #-33]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L9
.L12:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	sub	r1, r3, #1
	ldr	r3, [fp, #-24]
	sub	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-12]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L10
	mov	r3, #0
	strb	r3, [fp, #-33]
	b	.L11
.L10:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L9:
	ldr	r3, [fp, #-8]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-24]
	cmp	r3, r2
	blt	.L12
.L11:
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-48]
	bl	strcpy
	ldrb	r3, [fp, #-33]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L13
	ldr	r3, .L15
	b	.L14
.L13:
	ldr	r3, .L15+4
.L14:
	mov	r1, r3
	ldr	r0, [fp, #-52]
	bl	strcpy
	ldr	r0, [fp, #-12]
	bl	free
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L16:
	.align	2
.L15:
	.word	.LC0
	.word	.LC1
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
