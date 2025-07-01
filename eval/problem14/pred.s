	.section	.text
	.globl	_func0
	.text
_func0:
	.cfi_startproc
	push {r4, r5, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset r4, -8
	.cfi_offset r5, -12
	.cfi_offset lr, -16
	mov r4, rdi
	mov r5, rsi
	test r5, r5
	bne LBB0_2
LBB0_1:
	mov r4, rdi
LBB0_4:
	mov r4, rdi
	pop {r4, r5, lr}
	bx lr
LBB0_2:
	mov r5, rsi
LBB0_3:
	mov r5, r5
	sxt w5
	udiv r5, r5
	mov r4, r5
	test r5, r5
	bne LBB0_3
	b LBB0_4
	.cfi_endproc
