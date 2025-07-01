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
	subq	$128, %rsp
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, -8(%rbp)
	movq	%rdi, -72(%rbp)
	movq	-72(%rbp), %rdi
	callq	_strlen
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -76(%rbp)
	movl	-76(%rbp), %eax
	addl	$2, %eax
	movslq	%eax, %rdi
	callq	_malloc
	movq	%rax, -88(%rbp)
	movl	$0, -92(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -100(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_5 Depth 2
                                        ##       Child Loop BB0_7 Depth 3
                                        ##     Child Loop BB0_17 Depth 2
	movl	-100(%rbp), %eax
	cmpl	-76(%rbp), %eax
	jg	LBB0_24
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	movslq	-100(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$32, %eax
	je	LBB0_4
## %bb.3:                               ##   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	movslq	-100(%rbp), %rcx
	movsbl	(%rax,%rcx), %eax
	cmpl	$0, %eax
	jne	LBB0_21
LBB0_4:                                 ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -104(%rbp)
LBB0_5:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Loop Header: Depth=2
                                        ##       Child Loop BB0_7 Depth 3
	movl	-104(%rbp), %eax
	movl	-96(%rbp), %ecx
	subl	$1, %ecx
	cmpl	%ecx, %eax
	jge	LBB0_14
## %bb.6:                               ##   in Loop: Header=BB0_5 Depth=2
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
LBB0_7:                                 ##   Parent Loop BB0_1 Depth=1
                                        ##     Parent Loop BB0_5 Depth=2
                                        ## =>    This Inner Loop Header: Depth=3
	movl	-108(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	LBB0_12
## %bb.8:                               ##   in Loop: Header=BB0_7 Depth=3
	movslq	-104(%rbp), %rax
	movsbl	-64(%rbp,%rax), %eax
	movslq	-108(%rbp), %rcx
	movsbl	-64(%rbp,%rcx), %ecx
	cmpl	%ecx, %eax
	jle	LBB0_10
## %bb.9:                               ##   in Loop: Header=BB0_7 Depth=3
	movslq	-104(%rbp), %rax
	movb	-64(%rbp,%rax), %al
	movb	%al, -109(%rbp)
	movslq	-108(%rbp), %rax
	movb	-64(%rbp,%rax), %cl
	movslq	-104(%rbp), %rax
	movb	%cl, -64(%rbp,%rax)
	movb	-109(%rbp), %cl
	movslq	-108(%rbp), %rax
	movb	%cl, -64(%rbp,%rax)
LBB0_10:                                ##   in Loop: Header=BB0_7 Depth=3
	jmp	LBB0_11
LBB0_11:                                ##   in Loop: Header=BB0_7 Depth=3
	movl	-108(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -108(%rbp)
	jmp	LBB0_7
LBB0_12:                                ##   in Loop: Header=BB0_5 Depth=2
	jmp	LBB0_13
LBB0_13:                                ##   in Loop: Header=BB0_5 Depth=2
	movl	-104(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -104(%rbp)
	jmp	LBB0_5
LBB0_14:                                ##   in Loop: Header=BB0_1 Depth=1
	cmpl	$0, -92(%rbp)
	jle	LBB0_16
## %bb.15:                              ##   in Loop: Header=BB0_1 Depth=1
	movq	-88(%rbp), %rax
	movl	-92(%rbp), %ecx
	movl	%ecx, %edx
	addl	$1, %edx
	movl	%edx, -92(%rbp)
	movslq	%ecx, %rcx
	movb	$32, (%rax,%rcx)
LBB0_16:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -116(%rbp)
LBB0_17:                                ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movl	-116(%rbp), %eax
	cmpl	-96(%rbp), %eax
	jge	LBB0_20
## %bb.18:                              ##   in Loop: Header=BB0_17 Depth=2
	movslq	-116(%rbp), %rax
	movb	-64(%rbp,%rax), %dl
	movq	-88(%rbp), %rax
	movl	-92(%rbp), %ecx
	movl	%ecx, %esi
	addl	$1, %esi
	movl	%esi, -92(%rbp)
	movslq	%ecx, %rcx
	movb	%dl, (%rax,%rcx)
## %bb.19:                              ##   in Loop: Header=BB0_17 Depth=2
	movl	-116(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -116(%rbp)
	jmp	LBB0_17
LBB0_20:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	$0, -96(%rbp)
	jmp	LBB0_22
LBB0_21:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-72(%rbp), %rax
	movslq	-100(%rbp), %rcx
	movb	(%rax,%rcx), %cl
	movl	-96(%rbp), %eax
	movl	%eax, %edx
	addl	$1, %edx
	movl	%edx, -96(%rbp)
	cltq
	movb	%cl, -64(%rbp,%rax)
LBB0_22:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_23
LBB0_23:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-100(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -100(%rbp)
	jmp	LBB0_1
LBB0_24:
	movq	-88(%rbp), %rax
	movslq	-92(%rbp), %rcx
	movb	$0, (%rax,%rcx)
	movq	-88(%rbp), %rax
	movq	%rax, -128(%rbp)                ## 8-byte Spill
	movq	___stack_chk_guard@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	-8(%rbp), %rcx
	cmpq	%rcx, %rax
	jne	LBB0_26
## %bb.25:
	movq	-128(%rbp), %rax                ## 8-byte Reload
	addq	$128, %rsp
	popq	%rbp
	retq
LBB0_26:
	callq	___stack_chk_fail
	ud2
	.cfi_endproc
                                        ## -- End function
.subsections_via_symbols
