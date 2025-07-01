	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 13, 0	sdk_version 13, 3
	.globl	_func0                          ## -- Begin function func0
	.p2align	4, 0x90
_func0:                                 ## @func0
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$432, %rsp                      ## imm = 0x1B0
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movl	%edi, -420(%rbp)
	movl	$0, -416(%rbp)
	movl	$0, -412(%rbp)
	movl	$2, -408(%rbp)
	movl	$0, -404(%rbp)
	movl	$4, -424(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-424(%rbp), %eax
	cmpl	-420(%rbp), %eax
	jg	LBB0_4
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-424(%rbp), %eax
	subl	$1, %eax
	cltq
	movl	-416(%rbp,%rax,4), %ecx
	movl	-424(%rbp), %eax
	subl	$2, %eax
	cltq
	addl	-416(%rbp,%rax,4), %ecx
	movl	-424(%rbp), %eax
	subl	$3, %eax
	cltq
	addl	-416(%rbp,%rax,4), %ecx
	movl	-424(%rbp), %eax
	subl	$4, %eax
	cltq
	addl	-416(%rbp,%rax,4), %ecx
	movslq	-424(%rbp), %rax
	movl	%ecx, -416(%rbp,%rax,4)
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movl	-424(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -424(%rbp)
	jmp	LBB0_1
LBB0_4:
	movslq	-420(%rbp), %rax
	movl	-416(%rbp,%rax,4), %eax
	movl	%eax, -428(%rbp)                ## 4-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB0_6
## %bb.5:
	movl	-428(%rbp), %eax                ## 4-byte Reload
	addq	$432, %rsp                      ## imm = 0x1B0
	popq	%rbp
	retq
LBB0_6:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
