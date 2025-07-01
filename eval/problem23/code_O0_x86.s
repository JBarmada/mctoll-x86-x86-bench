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
	subq	$48, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movl	$0, -20(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, -32(%rbp)
LBB0_1:                                 ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB0_3 Depth 2
                                        ##     Child Loop BB0_15 Depth 2
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	je	LBB0_21
## %bb.2:                               ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_3
LBB0_3:                                 ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %ecx
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -45(%rbp)                  ## 1-byte Spill
	je	LBB0_6
## %bb.4:                               ##   in Loop: Header=BB0_3 Depth=2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %edi
	callq	_isdigit
	movl	%eax, %ecx
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -45(%rbp)                  ## 1-byte Spill
	jne	LBB0_6
## %bb.5:                               ##   in Loop: Header=BB0_3 Depth=2
	movq	-32(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$45, %eax
	setne	%al
	movb	%al, -45(%rbp)                  ## 1-byte Spill
LBB0_6:                                 ##   in Loop: Header=BB0_3 Depth=2
	movb	-45(%rbp), %al                  ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_7
	jmp	LBB0_8
LBB0_7:                                 ##   in Loop: Header=BB0_3 Depth=2
	movq	-32(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -32(%rbp)
	jmp	LBB0_3
LBB0_8:                                 ##   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	jne	LBB0_10
## %bb.9:
	jmp	LBB0_21
LBB0_10:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-32(%rbp), %rdi
	leaq	-40(%rbp), %rsi
	movl	$10, %edx
	callq	_strtol
                                        ## kill: def $eax killed $eax killed $rax
	movl	%eax, -44(%rbp)
	movq	-32(%rbp), %rax
	cmpq	-40(%rbp), %rax
	je	LBB0_14
## %bb.11:                              ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$44, %eax
	je	LBB0_13
## %bb.12:                              ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$0, %eax
	jne	LBB0_14
LBB0_13:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-44(%rbp), %edx
	movl	-20(%rbp), %eax
	movl	%eax, %ecx
	addl	$1, %ecx
	movl	%ecx, -20(%rbp)
	movslq	%eax, %rcx
	leaq	_func0.out(%rip), %rax
	movl	%edx, (%rax,%rcx,4)
	jmp	LBB0_20
LBB0_14:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_15
LBB0_15:                                ##   Parent Loop BB0_1 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	movq	-40(%rbp), %rax
	movsbl	(%rax), %ecx
	xorl	%eax, %eax
                                        ## kill: def $al killed $al killed $eax
	cmpl	$0, %ecx
	movb	%al, -46(%rbp)                  ## 1-byte Spill
	je	LBB0_17
## %bb.16:                              ##   in Loop: Header=BB0_15 Depth=2
	movq	-40(%rbp), %rax
	movsbl	(%rax), %eax
	cmpl	$44, %eax
	setne	%al
	movb	%al, -46(%rbp)                  ## 1-byte Spill
LBB0_17:                                ##   in Loop: Header=BB0_15 Depth=2
	movb	-46(%rbp), %al                  ## 1-byte Reload
	testb	$1, %al
	jne	LBB0_18
	jmp	LBB0_19
LBB0_18:                                ##   in Loop: Header=BB0_15 Depth=2
	movq	-40(%rbp), %rax
	addq	$1, %rax
	movq	%rax, -40(%rbp)
	jmp	LBB0_15
LBB0_19:                                ##   in Loop: Header=BB0_1 Depth=1
	jmp	LBB0_20
LBB0_20:                                ##   in Loop: Header=BB0_1 Depth=1
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	jmp	LBB0_1
LBB0_21:
	movl	-20(%rbp), %ecx
	movq	-16(%rbp), %rax
	movl	%ecx, (%rax)
	leaq	_func0.out(%rip), %rax
	addq	$48, %rsp
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
.zerofill __DATA,__bss,_func0.out,1024,4 ## @func0.out
.subsections_via_symbols
