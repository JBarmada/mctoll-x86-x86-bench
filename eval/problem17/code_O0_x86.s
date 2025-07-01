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
	subq	$1072, %rsp                     ## imm = 0x430
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -1048(%rbp)
	movl	$0, -1052(%rbp)
	leaq	-1040(%rbp), %rdi
	xorl	%esi, %esi
	movl	$1024, %edx                     ## imm = 0x400
	callq	_memset
	movl	$0, -1056(%rbp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	movq	-1048(%rbp), %rax
	movslq	-1056(%rbp), %rcx
	cmpb	$0, (%rax,%rcx)
	je	LBB0_7
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-1048(%rbp), %rax
	movslq	-1056(%rbp), %rcx
	movzbl	(%rax,%rcx), %edi
	callq	_tolower
                                        ## kill: def $al killed $al killed $eax
	movb	%al, -1057(%rbp)
	movsbq	-1057(%rbp), %rax
	cmpl	$0, -1040(%rbp,%rax,4)
	jne	LBB0_5
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movzbl	-1057(%rbp), %edi
	callq	_isalpha
	cmpl	$0, %eax
	je	LBB0_5
## %bb.4:                               ##   in Loop: Header=BB0_1 Depth=1
	movsbq	-1057(%rbp), %rax
	movl	$1, -1040(%rbp,%rax,4)
	movl	-1052(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1052(%rbp)
LBB0_5:                                 ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_6
LBB0_6:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	-1056(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -1056(%rbp)
	jmp	LBB0_1
LBB0_7:
	movl	-1052(%rbp), %eax
	movl	%eax, -1064(%rbp)               ## 4-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB0_9
## %bb.8:
	movl	-1064(%rbp), %eax               ## 4-byte Reload
	addq	$1072, %rsp                     ## imm = 0x430
	popq	%rbp
	retq
LBB0_9:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
