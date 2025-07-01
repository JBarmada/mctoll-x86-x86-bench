	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ## -- Begin function func0
	.p2align	4, 0x90
_func0:                                 ## @func0
	.cfi_startproc
	// Save registers
	stp	x29, x30, [sp, #-16]!
	.cfi_def_cfa_offset 16
	.cfi_offset x29, -16
	.cfi_offset x30, -8

	// Allocate stack space
	sub	sp, sp, #40

	// Load arguments into registers
	mov	x0, x1          // rsi -> x0
	mov	x1, x2          // rdi -> x1

	// Initialize variables
	mov	x2, #0          // r2 -> x2
	mov	x3, #0          // r3 -> x3

	// Call strlen
	bl	_strlen

	// Store result in r14
	mov	x14, x0

	// Add 2 to the result
	add	x0, x0, #2

	// Call malloc
	bl	_malloc

	// Store result in r15
	mov	x15, x0

	// Call strcpy
	bl	_strcpy

	// Store result in r12
	mov	x12, x0

	// Call strlen again
	bl	_strlen

	// Store result in r13
	mov	x13, x0

	// Check if r13 is greater than or equal to 2147483646
	cmp	x13, #2147483646
	b.ge.LBB0_1

	// Increment r13
	add	x13, x13, #1

	// Initialize r12 and edi to 0
	mov	x12, #0
	mov	x30, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r14 to 0
	mov	x14, #0

	// Initialize r15 to 0
	mov	x15, #0

	// Load r13 into r2
	mov	x2, x13

	// Initialize r12 to 0
	mov	x12, #0

	// Initialize r