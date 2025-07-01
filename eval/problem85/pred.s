.section .text
.global _func0
_func0:
    push    rbp
    mov     rbp, rsp
    sub     rsp, 16
    mov     rax, rdi
    mov     rdi, rsp
    mov     rsi, .str
    xor     rdx, rdx
    mov     rcx, -14(rbp)
    mov     ebx, 6
    xor     esi, esi
    xor     eax, eax
    call    __printf_chk
    mov     al, -14(rbp)
    test    al, al
    je      LBB0_10
LBB0_1:
    leaq    -13(rbp), rcx
LBB0_2:
    movsbl   al, al
    add     eax, ebx
    add     eax, -48
    movzbl   [rcx], al
    incq    rcx
    test    al, al
    jne     LBB0_2
LBB0_3:
    mov     edi, 33
    call    malloc
    test    ebx, ebx
    je      LBB0_11
LBB0_4:
    jle     LBB0_14
LBB0_5:
    xor     esi, esi
    mov     edx, ebx
LBB0_6:
    mov     ebx, ecx
    andb    1, cl
    orb     48, cl
    movb    cl, [rax + esi]
    incq    esi
    shr     edx
    cmp     ebx, 2
    movl    edx, ebx
    jae     LBB0_6
LBB0_7:
    movb    0, [rax + esi]
    testl   -2, esi
    je      LBB0_13
LBB0_8:
    movq    esi, r8
    shrq    r8
    cmpq    1, r8
    jne     LBB0_15
LBB0_9:
    xorl    edx, edx
    jmp     LBB0_17
LBB0_10:
    mov     edi, 33
    call    malloc
    jmp     LBB0_11
LBB0_11:
    movb    48, [rax]
    movl    1, ecx
LBB0_12:
    movb    0, [rax + ecx]
    jmp     LBB0_13
LBB0_13:
    addq    8, rsp
    popq    rbx
    popq    rbp
    ret
LBB0_14:
    xorl    ecx, ecx
    jmp     LBB0_12
LBB0_15:
    leaq    -1(rsi), rdi
    andq    -2, r8
    xorl    edx, edx
LBB0_16:
    movzbl   [rax + rdx], ebx
    movzbl   [rax + rdi], ecx
    movb    ecx, [rax + rdx]
    movb    ebx, [rax + rdi]
    movzbl   1([rax + rdx]), ecx
    movzbl   -1([rax + rdi]), ebx
    movb    ebx, 1([rax + rdx])
    movb    ecx, -1([rax + rdi])
    addq    2, rdx
    addq    -2, rdi
    cmpq    rdx, r8
    jne     LBB0_16
LBB0_17:
    testb    2, sil
    je      LBB0_13
LBB0_18:
    movb    [rax + rdx], cl
    movq    rax, rdi
    subq    rdx, rdi
    movb    -1(rdi + esi), bl
    movb    bl, [rax + rdx]
    movb    cl, -1(rdi + esi)
    jmp     LBB0_13
