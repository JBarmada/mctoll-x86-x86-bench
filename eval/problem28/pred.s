.section .text
.global func0
.text
func0:
    push    x19
    mov     x19, x28
    sub     sp, sp, #0x20
    mov     x28, sp
    mov     x20, x10
    mov     x21, x11
    mov     x22, x12
    mov     x23, x13
    mov     x24, x14
    mov     x25, x15
    mov     x26, x16
    mov     x27, x17
    mov     x28, x18
    mov     x29, x19
    mov     x30, x20
    bl      strlen
    cmp     x0, #0
    bhi     .LBB0_16
    mov     x8, x0
    mov     x9, #0
    cmp     x8, #8
    blt     .LBB0_12
    mov     x10, x20
    sub     x10, x21
    cmp     x10, #32
    blt     .LBB0_12
    cmp     x8, #32
    bge     .LBB0_5
    mov     x9, x8
    and     x9, #31
    mov     x10, x8
    sub     x10, x9
    mov     x11, #0
    movdqa  x12, [LCPI0_0]
    movdqa  x13, [LCPI0_1]
    movdqa  x14, [LCPI0_2]
    movdqa  x15, [LCPI0_3]
    movdqa  x16, [LCPI0_4]
    movdqa  x17, [LCPI0_5]
.LBB0_6:
    ldrd    x18, [x21, x9, lsl #2]
    ldrd    x19, [x21, x9, lsl #2] + 16
    movdqa  x0, x18
    paddb   x0, x12
    movdqa  x14, x0
    pminub  x14, x13
    pcmpeqb x0, x14
    movdqa  x0, x19
    paddb   x0, x12
    movdqa  x2, x0
    pminub  x13, x2
    pcmpeqb x0, x2
    movdqa  x0, x18
    paddb   x0, x14
    movdqa  x3, x0
    pminub  x15, x3
    pcmpeqb x0, x3
    movdqa  x0, x19
    paddb   x0, x14
    movdqa  x7, x0
    pminub  x16, x7
    pcmpeqb x0, x7
    movdqa  x0, x18
    paddb   x0, x14
    movdqa  x1, x0
    pblendvb x0, x7, x1
    movdqa  x0, x19
    movdqa  x1, x7
    movdqa  x3, x0
    pblendvb x0, x5, x7
    paddb   x10, x18
    paddb   x10, x19
    movdqa  x14, x0
    pblendvb x0, x1, x18
    movdqa  x2, x0
    pblendvb x0, x7, x19
    strd    x10, [x24, x9, lsl #2]
    strd    x10, [x24, x9, lsl #2] + 16
    add     x9, #32
    cmp     x9, x10
    bne     .LBB0_6
    cmp     x21, x10
    bne     .LBB0_6
    mov     x10, x10
    mov     x11, #0
    cmp     x10, #8
    blt     .LBB0_12
.LBB0_9:
    mov     x10, x21
    mov     x11, x10
    sub     x11, x22
    cmp     x11, #8
    blt     .LBB0_12
    movdqa  x12, [LCPI0_6]
    movdqa  x13, [LCPI0_7]
    movdqa  x14, [LCPI0_8]
    movdqa  x15, [LCPI0_9]
    movdqa  x16, [LCPI0_10]
    movdqa  x17, [LCPI0_11]
.LBB0_10:
    ldr     x18, [x22, x11, lsl #2]
    movdqa  x0, x18
    paddb   x0, x12
    movdqa  x14, x0
    pmaxub  x14, x15
    pcmpeqb x0, x14
    movdqa  x18, [x22, x11, lsl #2] + 16
    movdqa  x2, x18
    pmaxub  x15, x2
    pcmpeqb x0, x2
    movdqa  x18, [x22, x11, lsl #2] + 32
    movdqa  x3, x18
    pmaxub  x15, x3
    pcmpeqb x0, x3
    movdqa  x18, [x22, x11, lsl #2] + 48
    movdqa  x7, x18
    pmaxub  x15, x7
    pcmpeqb x0, x7
    movdqa  x18, [x22, x11, lsl #2] + 64
    movdqa  x1, x18
    pblendvb x0, x7, x1
    movdqa  x18, [x22, x11, lsl #2] + 80
    movdqa  x2, x18
    pblendvb x0, x7, x1
    movdqa  x18, [x22, x11, lsl #2] + 96
    movdqa  x3, x18
    pblendvb x0, x5, x7
    str     x0, [x24, x11, lsl #2]
    str     x0, [x24, x11, lsl #2] + 16
    str     x0, [x24, x11, lsl #2] + 32
    str     x0, [x24, x11, lsl #2] + 48
    str     x0, [x24, x11, lsl #2] + 64
    str     x0, [x24, x11, lsl #2] + 80
    str     x0, [x24, x11, lsl #2] + 96
    add     x11, #8
    cmp     x11, x10
    bne     .LBB0_10
    cmp     x22, x10
    bne     .LBB0_10
    mov     x10, x10
    cltq
    strb    x0, [x24, x10]
    mov     x0, #0
    mov     sp, x28
    pop     x19
    ret
.LBB0_12:
    ldrb    x10, [x21, x9, lsl #2]
    cmpb    #25, x10
    bge     .LBB0_5
    addb    x10, #32
    cmpb    #26, x10
    bge     .LBB0_9
    cmpb    #25, x10
    bge     .LBB0_12
.LBB0_14:
    ldrb    x10, [x21, x9, lsl #2]
    cmpb    #25, x10
    bge     .LBB0_5
    addb    x10, #32
    cmpb    #26, x10
    bge     .LBB0_9
    cmpb    #25, x10
    bge     .LBB0_14
.LBB0_16:
    cltq
    strb    x0, [x24, x10]
    mov     x0, #0
    mov     sp, x28
    pop     x19
    ret
