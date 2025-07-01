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
	.word	__stack_chk_guard
	.text
	.align	2
	.global	func0
	.syntax unified
	.arm
	.fpu softvfp
	.type	func0, %function
func0:
	@ args = 0, pretend = 0, frame = 1048
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #1040
	sub	sp, sp, #8
	str	r0, [fp, #-1048]
	ldr	r3, .L7
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	mov	r3,#0
	mov	r3, #0
	str	r3, [fp, #-1040]
	sub	r3, fp, #1024
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r2, #1024
	mov	r1, #0
	mov	r0, r3
	bl	memset
	mov	r3, #0
	str	r3, [fp, #-1036]
	b	.L2
.L4:
	ldr	r3, [fp, #-1036]
	ldr	r2, [fp, #-1048]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	tolower
	mov	r3, r0
	strb	r3, [fp, #-1041]
	ldrb	r3, [fp, #-1041]	@ zero_extendqisi2
	sub	r2, fp, #4
	sub	r2, r2, #1024
	sub	r2, r2, #4
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r3, [r3, #-1028]
	cmp	r3, #0
	bne	.L3
	bl	__ctype_b_loc
	mov	r3, r0
	ldr	r2, [r3]
	ldrb	r3, [fp, #-1041]	@ zero_extendqisi2
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L3
	ldrb	r3, [fp, #-1041]	@ zero_extendqisi2
	sub	r2, fp, #4
	sub	r2, r2, #1024
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, #1
	str	r2, [r3, #-1028]
	ldr	r3, [fp, #-1040]
	add	r3, r3, #1
	str	r3, [fp, #-1040]
.L3:
	ldr	r3, [fp, #-1036]
	add	r3, r3, #1
	str	r3, [fp, #-1036]
.L2:
	ldr	r3, [fp, #-1036]
	ldr	r2, [fp, #-1048]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L4
	ldr	r3, [fp, #-1040]
	ldr	r2, .L7
	ldr	r1, [r2]
	ldr	r2, [fp, #-8]
	eors	r1, r2, r1
	mov	r2, #0
	beq	.L6
	bl	__stack_chk_fail
.L6:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L8:
	.align	2
.L7:
	.word	.LC0
	.size	func0, .-func0
	.ident	"GCC: (Ubuntu 10.5.0-1ubuntu1~20.04) 10.5.0"
	.section	.note.GNU-stack,"",%progbits
