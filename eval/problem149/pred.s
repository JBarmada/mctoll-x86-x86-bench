.text
.global _func0
_func0:
    push     x19
    push     x20
    push     x21
    push     x22
    push     x23
    push     x24
    push     x25
    push     x26
    push     x27
    push     x28
    push     x29
    push     x30
    push     x31
    mov     x19, xrdx
    mov     x20, xrsi
    mov     x21, xrdi
    ldr     x22, =L_.str
    mov     x23, x22
    mov     x24, x21
    bl      strcmp
    mov     x25, x0
    neg     x25
    mov     x26, x0
    sub     x26, x26
    mov     x23, x22
    mov     x24, x20
    bl      strcmp
    neg     x25
    sub     x26, x26
    ldr     x22, =L_.str.1
    mov     x23, x22
    mov     x24, x21
    bl      strcmp
    cmp     x0, x0
    mov     x27, x0
    cmovle  x27, x26
    ldr     x22, =L_.str.2
    mov     x23, x22
    mov     x24, x21
    bl      strcmp
    cmp     x0, x0
    mov     x28, x0
    cmovle  x28, x26
    ldr     x22, =L_.str.3
    mov     x23, x22
    mov     x24, x21
    bl      strcmp
    cmp     x0, x0
    mov     x29, x0
    cmovle  x29, x26
    ldr     x22, =L_.str.4
    mov     x23, x22
    mov     x24, x21
    bl      strcmp
    cmp     x0, x0
    mov     x30, x0
    cmovle  x30, x26
    ldr     x22, =L_.str.5
    mov     x23, x22
    mov     x24, x21
    bl      strcmp
    cmp     x0, x0
    mov     x31, x0
    cmovle  x31, x26
    ldr     x22, =L_.str.6
    mov     x23, x22
    mov     x24, x21
    bl      strcmp
    cmp     x0, x0
    mov     x19, x0
    cmovle  x19, x26
    ldr     x22, =L_.str.7
    mov     x23, x22
    mov     x24, x21
    bl      strcmp
    cmp     x0, x0
    mov     x20, x0
    cmovle  x20, x26
    ldr     x22, =l___const.func0.planets
    mov     x23, x22
    mov     x24, x20
    bl      strcmp
    cmp     x0, x0
    mov     x21, x0
    cmovle  x21, x26
    mov     x22, x23
    mov     x23, x24
    bl      strcmp
    cmp     x0, x0
    mov     x22, x0
    cmovle  x22, x26
    mov     x22, x23
    mov     x23, x24
    bl      strcmp
    cmp     x0, x0
    mov     x22, x0
    cmovle  x22, x26
    mov     x22, x23
    mov     x23, x24
    bl      strcmp
    cmp     x0, x0
    mov     x22, x0
    cmovle  x22, x26
    mov     x22, x23
    mov     x23, x24
    bl      strcmp
    cmp     x0, x0
    mov     x22, x0
    cmovle  x22, x26
    mov     x22, x23
    mov     x23, x24
    bl      strcmp
    cmp     x0, x0
    mov     x22, x0
    cmovle  x22, x26
    cmp     x26, x0
    je      LBB0_7
    cmp     x26, x20
    je      LBB0_7
    cmp     x26, x21
    je      LBB0_7
    mov     x26, x26
    not     x26
    add     x26, x22
    str     x26, [x23]
    cmp     x0, x0
    jl      LBB0_7
    mov     x24, x22
    mov     x25, x20
    mov     x26, x21
    bl      malloc
    add     x25, #8
    sub     x25, x24
    mov     x26, x25
    lsl     x26, #3
    mov     x27, x24
    sub     x26, x27
    cmp     x26, #2
    jl      LBB0_17
    add     x26, #-2
    js      LBB0_17
    add     x26, #1
    cmp     x26, x25
    jge     LBB0_8
LBB0_12:
    ldr     x27, [x24]
    ldr     x28, [x24, #16]
    ldr     x29, [x24, #32]
    ldr     x30, [x24, #48]
    str     x27, [x25]
    str     x28, [x25, #16]
    add     x24, #8
    add     x26, #2
    cmp     x26, x25
    jne     LBB0_12
    mov     x24, x25
LBB0_13:
    cmp     x29, x0
    je      LBB0_15
LBB0_14:
    ldr     x29, [x24, #16]
    ldr     x30, [x24, #32]
    lsl     x29, #3
    lsl     x30, #3
    mov     x27, x29
    mov     x28, x30
    str     x27, [x24, #16]
    str     x28, [x24, #32]
    add     x24, #16
    add     x26, #1
    cmp     x26, x25
    jne     LBB0_14
    jmp     LBB0_8
LBB0_15:
    cmp     x26, x24
    je      LBB0_8
LBB0_16:
    add     x26, x24
    add     x24, #16
    mov     x27, x26
    lsl     x27, #3
    lsl     x28, #3
    ldr     x29, [x27]
    ldr     x30, [x28]
    str     x29, [x24, #16]
    str     x30, [x24, #32]
    add     x24, #16
    add     x26, #1
    cmp     x26, x25
    jne     LBB0_16
    jmp     LBB0_8
LBB0_17:
    mov     x24, x26
    mov     x25, x20
    mov     x26, x21
    bl      malloc
    mov     x25, #8
    sub     x25, x24
    mov     x26, x25
    lsl     x26, #3
    mov     x27, x24
    sub     x26, x27
    cmp     x26, #2
    jl      LBB0_17
    add     x26, #-2
    js      LBB0_17
    add     x26, #1
    cmp     x26, x25
    jge     LBB0_8
LBB0_22:
    ldr     x27, [x24]
    ldr     x28, [x24, #16]
    lsl     x27, #3
    lsl     x28, #3
    mov     x29, x27
    mov     x30, x28
    str     x29, [x24, #16]
    str     x30, [x24, #32]
    add     x24, #16
    add     x26, #1
    cmp     x26, x25
    jne     LBB0_22
    mov     x24, x25
LBB0_23:
    cmp     x26, x24
    je      LBB0_8
LBB0_24:
    mov     x26, x24
    sub     x26, x25
    mov     x27, x24
    lsl     x27, #3
    lsl     x28, #3
    ldr     x29, [x27]
    ldr     x30, [x28]
    str     x29, [x24, #16]
    str     x30, [x24, #32]
    add     x24, #16
    add     x26, #1
    cmp     x26, x25
    jne     LBB0_24
    jmp     LBB0_8
LBB0_7:
    mov     [x23], x0
    mov     x0, x0
LBB0_8:
    pop     x31
    pop     x30
    pop     x29
    pop     x28
    pop     x27
    pop     x26
    pop     x25
    pop     x24
    pop     x23
    pop     x22
    pop     x21
    pop     x20
    pop     x19
    ret
LBB0_17:
    mov     x24, x26
    mov     x25, x20
    mov     x26, x21
    bl      malloc
    mov     x25, #8
    sub     x25, x24
    mov     x26, x25
    lsl     x26, #3
    mov     x27, x24
    sub     x26, x27
    cmp     x26, #2
    jl      LBB0_17
    add     x26, #-2
    js      LBB0_17
    add     x26, #1
    cmp     x26, x25
    jge     LBB0_8
LBB0_22:
    ldr     x27, [x24]
    ldr     x28, [x24, #16]
    lsl     x27, #3
    lsl     x28, #3
    mov     x29, x27
    mov     x30, x28
    str     x29, [x24, #16]
    str     x30, [x24, #32]
    add     x24, #16
    add     x26, #1
    cmp     x26, x25
    jne     LBB0_22
    mov     x24, x25
LBB0_23:
    cmp     x26, x24
    je      LBB0_8
LBB0_24:
    mov     x26, x24
    sub     x26, x25
    mov     x27, x24
    lsl     x27, #3
    lsl     x28, #3
    ldr     x29, [x27]
    ldr     x30, [x28]
    str     x29, [x24, #16]
    str     x30, [x24, #32]
    add     x24, #16
    add     x26, #1
    cmp     x26, x25
    jne     LBB0_24
    jmp     LBB0_8
