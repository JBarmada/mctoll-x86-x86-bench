.section .text
.global func0
func0:
    cmp     rdi, #0
    bge     .LBB0_1
    mov     eax, #1
    cmp     rdi, #1
    beq     .LBB0_17
    mov     eax, #18
    cmp     rdi, #3
    jbe     .LBB0_17
    mov     r8d, rdi
    sub     r8d, #2
    cmp     r8d, #8
    jae     .LBB0_6
    mov     eax, #18
    mov     ecx, #2
    jmp     .LBB0_15
.LBB0_1:
    mov     eax, #0
    ret
.LBB0_6:
    push    rbp
    mov     rbp, rsp
    mov     ecx, r8d
    and     ecx, #~7
    mov     edx, ecx
    shr     edx, #3
    inc     edx
    mov     eax, edx
    and     eax, #7
    cmp     edx, #56
    jae     .LBB0_8
    movdqa  [LCPI0_0], xmm1
    movdqa  [LCPI0_1], xmm0
    jmp     .LBB0_10
.LBB0_8:
    movdqa  [LCPI0_0], xmm1
    movdqa  [LCPI0_1], xmm0
    movdqa  [LCPI0_2], xmm2
.LBB0_9:
    pmullq  xmm2, xmm0
    pmullq  xmm2, xmm1
    sub     ecx, #8
    jne     .LBB0_9
.LBB0_10:
    cmp     eax, #0
    je      .LBB0_13
    movdqa  [LCPI0_3], xmm2
.LBB0_12:
    pmullq  xmm2, xmm0
    pmullq  xmm2, xmm1
    dec     eax
    jne     .LBB0_12
.LBB0_13:
    pmullq  xmm1, xmm0
    pshufd  xmm0, xmm1, #238
    pmullq  xmm0, xmm1
    pshufd  xmm1, xmm0, #85
    pmullq  xmm1, xmm0
    movd    eax, xmm0
    cmp     ecx, r8d
    pop     rbp
    je      .LBB0_17
.LBB0_14:
    or      ecx, #2
.LBB0_15:
    sub     rdi, ecx
.LBB0_16:
    add     eax, eax
    add     eax, eax
    add     eax, eax
    dec     rdi
    jne     .LBB0_16
.LBB0_17:
    ret
