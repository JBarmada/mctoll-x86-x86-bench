.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ## -- Begin function func0
	.p2align	4, 0x90
_func0:                                 ## @func0
	.cfi_startproc
	stp	x29, x30, [sp, #-16]!         // Save x29 and x30
	.cfi_def_cfa_offset 16
	.cfi_offset x29, -16
	.cfi_offset x30, -24
	mov	x0, x1
	mul	x0, x0
	ldp	x29, x30, [sp], #16           // Restore x29 and x30
	ret
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
