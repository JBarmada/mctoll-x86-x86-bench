.section .text
.global _func0
_func0:
    push    x29
    mov     x29, sp
    sub     sp, sp, #16
    mov     x19, xdi
    cmp     x19, #0
    b.le    LBB0_1
LBB0_2:
    mov     x20, x19
    sub     x20, #1
    mov     x19, x19
    and     x19, #3
    cmp     x20, x19
    b.ge    LBB0_7
LBB0_3:
    mov     x16, #1
    b       LBB0_4
LBB0_1:
    mov     x16, #1
    b       LBB0_6
LBB0_7:
    and     x19, #~3
    mov     x16, #1
    b       LBB0_8
LBB0_8:
    add     x16, x16, x16
    mov     x17, x16
    clt     x17
    udiv    x16, x16, xesi
    add     x16, x16, x16
    clt     x17
    udiv    x16, x16, xesi
    add     x16, x16, x16
    clt     x17
    udiv    x16, x16, xesi
    add     x16, x16, x16
    clt     x17
    udiv    x16, x16, xesi
    add     x19, x19, #-4
    b.ne     LBB0_8
LBB0_4:
    mov     x17, x19
    cmp     x17, #0
    b.eq     LBB0_6
LBB0_5:
    add     x16, x16, x16
    mov     x17, x16
    clt     x17
    udiv    x16, x16, xesi
    sub     x19, x19, #1
    b.ne     LBB0_5
LBB0_6:
    mov     x16, x16
    pop     x29
    ret
