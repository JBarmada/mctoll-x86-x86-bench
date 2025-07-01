	.section	.text
	.align	4
	.global	_func0
_func0:
	// Push registers
	stp	x30, x29, [sp, -16]!
	movk	x29, sp, lsl #32
	// Set r15-r12 to zero
	movz	x12, #0
	movz	x13, #0
	movz	x14, #0
	movz	x15, #0
	// Set rsi to 0
	movk	x0, #0, lsl #0
	// Check if edi is less than or equal to 0
	cmp	x0, #0
	b.le	LBB0_6
	// Load rsi with edi
	movk	x14, x0, lsl #0
	// Load ebx with edi
	movk	x0, x0, lsl #0
	// Clear eax
	movk	x1, #0, lsl #0
	// Jump to LBB0_2
	b	LBB0_2
	// Label LBB0_5
LBB0_5:
	// Clear eax
	movk	x1, #0, lsl #0
	// Compare ebx with zero
	cmp	x0, #0
	b.gt	LBB0_6
	// Add r12d to eax
	add x1, x1, x12d
	// Compare ebx with zero
	cmp	x0, #0
	b.le	LBB0_6
	// Label LBB0_2
LBB0_2:
	// Move eax to r12d
	movk	x12d, x1, lsl #0
	// Load rax with the address of l___const.func0.num
	adrp	x0, l___const.func0.num
	// Load r13d with the value at the address in rax
	add x13d, x0, l___const.func0.num, lsl #2
	// Compare r13d with ebx
	cmp x13d, x0
	b.lt	LBB0_5
	// Load rax with the address of l_reltable.func0
	adrp	x0, l_reltable.func0
	// Load r15 with the value at the address in rax
	add x15, x0, l_reltable.func0, lsl #2
	// Label LBB0_4
LBB0_4:
	// Move r14 to rdi
	movk	x14, x14, lsl #0
	// Move r15 to rsi
	movk	x15, x15, lsl #0
	// Call strcat
	bl	strcat
	// Subtract r13d from ebx
	sub x0, x0, x13d
	// Compare r13d with ebx
	cmp x13d, x0
	b.ge	LBB0_4
	// Jump to LBB0_5
	b	LBB0_5
	// Label LBB0_6
LBB0_6:
	// Pop registers
	ldp	x29, x30, [sp], #16
	ret
