.section .text
.global _func0
_func0:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 48
    mov     rax, rdi
    call    strlen
    cmp     rax, 10
    jne     .LBB0_16
    mov     cl, [rdi]
    lea     edx, [cl - 58]
    cmp     dl, -10
    jbe     .LBB0_16
    mov     r9b, [rdi + 1]
    lea     esi, [r9b - 58]
    cmp     sil, -10
    jbe     .LBB0_16
    cmp     byte ptr [rdi + 2], 45
    jne     .LBB0_16
    mov     sil, [rdi + 3]
    lea     edi, [sil - 58]
    cmp     dil, -10
    jbe     .LBB0_16
    cmp     byte ptr [rdi + 4], 45
    jne     .LBB0_16
    mov     r8b, [rdi + 5]
    lea     edi, [r8b - 58]
    cmp     dil, -10
    jbe     .LBB0_16
    cmp     byte ptr [rdi + 6], 45
    jne     .LBB0_16
    mov     dl, [rdi + 7]
    add     dl, -58
    cmp     dl, -10
    jbe     .LBB0_16
    mov     dl, [rdi + 8]
    add     dl, -58
    cmp     dl, -10
    jbe     .LBB0_16
    mov     dl, [rdi + 9]
    add     dl, -58
    cmp     dl, -10
    jbe     .LBB0_16
    mov     [rbp - 14], cl
    mov     [rbp - 13], r9b
    mov     [rbp - 12], 0
    mov     [rbp - 11], sil
    mov     [rbp - 10], r8b
    mov     [rbp - 9], 0
    lea     rdi, [rbp - 14]
    call    atoi
    mov     ebx, eax
    lea     rdi, [rbp - 11]
    call    atoi
    mov     ecx, eax
    lea     edx, [rbp - 13]
    xor     eax, eax
    cmp     edx, -12
    jbe     .LBB0_16
    lea     edx, [ecx - 32]
    cmp     edx, -31
    jbe     .LBB0_16
    mov     edx, ebx
    and     edx, -3
    cmp     edx, 4
    setne   sil
    cmp     edx, 9
    setne   dl
    testb   sil, dl
    jne     .LBB0_15
    cmp     ecx, 31
    je      .LBB0_16
.LBB0_15:
    cmp     ebx, 2
    setne   al
    cmp     ecx, 30
    setb   cl
    orb     al, cl
    movzbl  cl, eax
.LBB0_16:
    add     rsp, 48
    pop     rbp
    ret
