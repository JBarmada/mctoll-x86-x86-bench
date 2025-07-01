.section .text
.global _func0
_func0:
    push     rbp
    mov     rbp, rsp
    sub     rsp, 240
    mov     rdi, rsi
    mov     rax, [rip + __stack_chk_guard]
    mov     rax, [rax]
    mov     [rbp - 192], rax
    xor     r13d, r13d
    mov     r13d, rdi
    test    r13d, r13d
    jne     .LBB0_15
    mov     r11, rdi
    mov     rdi, [rbp - 192]
    inc     rax
    mov     [rbp - 192], rax
    xor     r12d, r12d
    xor     r13d, r13d
    xor     r14d, r14d
    jmp     .LBB0_2
.LBB0_17:
    mov     ecx, [r11 + r12 * 4]
    inc     r14d
    movb    al, [rbp - 192 + ecx]
    mov     r14d, ecx
.LBB0_18:
    inc     r12
    mov     ecx, r14d
    cmp     [rbp - 192], r12
    je     .LBB0_15
.LBB0_2:
    testb    al, al
    jne     .LBB0_17
    cmp     r14d, 2
    jl     .LBB0_11
    lea     r8d, [r14d - 1]
    mov     r9d, r14d
    lea     rdx, [r9d - 1]
    lea     rsi, [rbp - 224]
    xor     r10d, r10d
    jmp     .LBB0_5
.LBB0_10:
    inc     rsi
    dec     rdx
    cmp     r8, r10
    je     .LBB0_11
.LBB0_5:
    inc     r10
    cmp     r9, r10
    jae     .LBB0_10
    xor     eax, eax
    jmp     .LBB0_7
.LBB0_9:
    inc     eax
    cmp     eax, rdx
    je     .LBB0_10
.LBB0_7:
    movzx   ecx, byte ptr [rbp - 224 + r10 * 4]
    movzx   ebx, byte ptr [rsi + rax * 4]
    cmpb    bl, cl
    jle     .LBB0_9
    movb    bl, byte ptr [rbp - 224 + r10 * 4]
    movb    cl, byte ptr [rsi + rax * 4]
    jmp     .LBB0_9
.LBB0_11:
    test    r13d, r13d
    jle     .LBB0_13
    mov     eax, r13d
    inc     r13d
    mov     ecx, [rbp - 192]
    movb    32, [ecx + eax * 1]
.LBB0_13:
    xor     r15d, r15d
    test    r14d, r14d
    jle     .LBB0_18
.LBB0_14:
    mov     ecx, r13d
    mov     eax, [rbp - 192]
    lea     rdi, [rax + ecx * 1]
    mov     edx, r14d
    lea     rsi, [rbp - 224]
    mov     r11, rdi
    call    memcpy
    mov     rdi, r11
    add     r14d, ecx
    jmp     .LBB0_18
.LBB0_15:
    mov     ecx, r13d
    mov     eax, [rbp - 192]
    movb    0, [eax + ecx * 1]
    mov     ecx, [rip + __stack_chk_guard]
    mov     ecx, [ecx]
    cmp     [rbp - 192], ecx
    jne     .LBB0_19
    add     rsp, 240
    pop     rbp
    ret
.LBB0_19:
    call    ___stack_chk_fail
