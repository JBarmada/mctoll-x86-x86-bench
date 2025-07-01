.global _func0
_func0:
    push    x29
    mov     x29, sp
    sub     sp, sp, #64
    mov     x19, x0
    mov     x20, x1
    mov     x21, x2
    mov     x22, x3
    mov     x23, x4
    mov     x24, x5
    mov     x25, x6
    mov     x26, x7
    mov     x27, x8
    mov     x28, x9
    mov     x29, x10
    mov     x30, x11
    mov     x31, x12

    cmp     x19, #2
    b.lt    .LBB0_17

.LBB0_1:
    sub     x19, x19, #1
    mov     x20, x19
    b       .LBB0_3

.LBB0_2:
    add     x20, x20, #1
    cmp     x19, x20
    b.eq    .LBB0_17

.LBB0_3:
    mov     x21, x20
    mov     x22, x19
    not     x22
    add     x22, x22, x19
    test     x22, x22
    b.ge    .LBB0_2

.LBB0_4:
    ldr     w23, [x21]
    cmp     w23, #1
    b.ne    .LBB0_9

.LBB0_5:
    mov     x24, #0
    b       .LBB0_6

.LBB0_7:
    ldr     w25, [x21, x24, lsl #2]
    cmp     w25, w23
    b.le    .LBB0_2

.LBB0_8:
    str     w25, [x21, x24, lsl #2]
    str     w23, [x21, x24, lsl #2 + #4]
    b       .LBB0_2

.LBB0_9:
    mov     x26, x20
    and     x26, x26, #1
    b.ne    .LBB0_2

.LBB0_10:
    ldr     w25, [x21, x26, lsl #2]
    ldr     w27, [x21, x26, lsl #2 + #4]
    mov     x28, x26
    b       .LBB0_12

.LBB0_11:
    cmp     x28, x26
    b.eq    .LBB0_6

.LBB0_12:
    ldr     w25, [x21, x28, lsl #2]
    cmp     w25, w23
    b.le    .LBB0_14

.LBB0_13:
    str     w25, [x21, x28, lsl #2]
    str     w23, [x21, x28, lsl #2 + #4]
    b       .LBB0_15

.LBB0_14:
    mov     w23, w25
    b       .LBB0_11

.LBB0_17:
    cmp     w24, #0
    b.lt    .LBB0_36

.LBB0_18:
    sub     w24, w24, x19
    mov     x24, w24, lsl #32
    cmp     w24, #8
    blt    .LBB0_19

.LBB0_20:
    add     x24, x24, x19
    sub     x24, x24, #32
    cmp     x24, #32
    b.ge    .LBB0_22

.LBB0_19:
    mov     w24, #0

.LBB0_30:
    mov     x25, x24
    not     x25
    add     x25, x25, x24
    mov     x24, x24
    and     x24, #3
    b.eq    .LBB0_33

.LBB0_31:
    mov     x26, x24
    add     x26, x26, #4
    ldr     w27, [x21, x26, lsl #2]
    b       .LBB0_32

.LBB0_32:
    ldr     w25, [x26, x25, lsl #2]
    str     w25, [x21, x26, lsl #2]
    add     x25, x25, #1
    and     x25, #3
    cmp     x25, #3
    b.ne    .LBB0_32

.LBB0_33:
    cmp     x25, #3
    b.lt    .LBB0_36

.LBB0_34:
    mov     x26, x24
    add     x26, x26, #4
    ldr     w27, [x21, x26, lsl #2]
    b       .LBB0_35

.LBB0_35:
    ldr     w25, [x26, x25, lsl #2]
    str     w25, [x21, x26, lsl #2]
    ldr     w25, [x26, x25, lsl #2 + #4]
    str     w25, [x21, x26, lsl #2 + #4]
    ldr     w25, [x26, x25, lsl #2 + #8]
    str     w25, [x21, x26, lsl #2 + #8]
    ldr     w25, [x26, x25, lsl #2 + #12]
    str     w25, [x21, x26, lsl #2 + #12]
    ldr     w25, [x26, x25, lsl #2 + #16]
    str     w25, [x21, x26, lsl #2 + #16]
    add     x26, x26, #4
    cmp     x26, x24
    b.ne    .LBB0_35

.LBB0_22:
    and     x24, x24, #8
    mov     x25, x24
    shr     x25, #3
    add     x25, x25, #24
    and     x25, #3
    cmp     x25, #24
    b.ge    .LBB0_24

.LBB0_23:
    mov     w25, #0
    b       .LBB0_26

.LBB0_24:
    and     x24, x24, #4
    mov     x25, x24
    add     x25, x25, #112
    ldr     x26, [x21, x25, lsl #2]
    ldr     x27, [x21, x25, lsl #2 + #4]
    b       .LBB0_25

.LBB0_25:
    ldr     w25, [x26, x25, lsl #2]
    str     w25, [x21, x26, lsl #2]
    ldr     w25, [x26, x25, lsl #2 + #4]
    str     w25, [x21, x26, lsl #2 + #4]
    ldr     w25, [x26, x25, lsl #2 + #8]
    str     w25, [x21, x26, lsl #2 + #8]
    ldr     w25, [x26, x25, lsl #2 + #12]
    str     w25, [x21, x26, lsl #2 + #12]
    ldr     w25, [x26, x25, lsl #2 + #16]
    str     w25, [x21, x26, lsl #2 + #16]
    ldr     w25, [x27, x25, lsl #2]
    str     w25, [x21, x27, lsl #2]
    ldr     w25, [x27, x25, lsl #2 + #4]
    str     w25, [x21, x27, lsl #2 + #4]
    ldr     w25, [x27, x25, lsl #2 + #8]
    str     w25, [x21, x27, lsl #2 + #8]
    ldr     w25, [x27, x25, lsl #2 + #12]
    str     w25, [x21, x27, lsl #2 + #12]
    ldr     w25, [x27, x25, lsl #2 + #16]
    str     w25, [x21, x27, lsl #2 + #16]
    add     x26, x26, #4
    add     x27, x27, #4
    cmp     x26, x25
    b.ne    .LBB0_25

.LBB0_26:
    cmp     x25, #3
    b.ne    .LBB0_29

.LBB0_27:
    add     x26, x21, x24, lsl #2
    add     x27, x21, x24, lsl #2 + #4
    ldr     w25, [x26, x24, lsl #2]
    str     w25, [x27, x24, lsl #2]
    add     x25, x25, #1
    and     x25, #3
    cmp     x25, #3
    b.ne    .LBB0_27

.LBB0_29:
    cmp     x24, x25
    b.ne    .LBB0_30

.LBB0_30:
    cmp     x24, x21
    b.ne    .LBB0_30

.LBB0_36:
    ldp     x28, x29, [sp]
    add     sp, sp, #64
    pop     x29
    ret
