.section .text
.global _func0
_func0:
    pushq %r15
    pushq %r14
    pushq %r13
    pushq %r12
    pushq %rbx
    pushq %rax
    movq %rsi, %r15
    movb (%rdi), %al
    testb %al, %al
    je LBB0_1
LBB0_2:
    movq %rdi, %rbx
    xorl %r12d, %r12d
    leaq -48(%rbp), %r14
    leaq _func0.out(%rip), %r13
    jmp LBB0_3
LBB0_11:
    movslq %r12d, %rdx
    incl %r12d
    movl %eax, (%r13,%rdx,4)
    movb (%rcx), %al
LBB0_16:
    movq %rcx, %rbx
    testb %al, %al
    je LBB0_17
LBB0_3:
    movsbl %al, %ecx
    addl $-48, %ecx
    cmpb $10, %ecx
    jb LBB0_7
LBB0_4:
    testb %al, %al
    je LBB0_17
LBB0_5:
    cmpb $45, %al
    je LBB0_8
LBB0_6:
    movzbl 1(%rbx), %eax
    incq %rbx
    movsbl %al, %ecx
    addl $-48, %ecx
    cmpb $9, %ecx
    ja LBB0_4
LBB0_7:
    testb %al, %al
    je LBB0_17
LBB0_8:
    movq %rbx, %rdi
    movq %r14, %rsi
    movl $10, %edx
    bl _strtol
    movq -48(%rbp), %rcx
    cmpq %rcx, %rbx
    je LBB0_12
LBB0_9:
    movb (%rcx), %dl
    cmpb $44, %dl
    je LBB0_11
LBB0_10:
    testb %dl, %dl
    je LBB0_11
    jmp LBB0_12
LBB0_14:
    incq %rcx
LBB0_12:
    movzbl (%rcx), %eax
    testb %al, %al
    je LBB0_15
LBB0_13:
    cmpb $44, %al
    jne LBB0_14
LBB0_15:
    movq %rcx, -48(%rbp)
    jmp LBB0_16
LBB0_1:
    xorl %r12d, %r12d
LBB0_17:
    movl %r12d, (%r15)
    leaq _func0.out(%rip), %rax
    addq $8, %rsp
    popq %rbx
    popq %r12
    popq %r13
    popq %r14
    popq %r15
    popq %rbp
    ret
