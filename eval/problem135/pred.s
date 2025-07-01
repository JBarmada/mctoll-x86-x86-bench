.section .text
.global _func0
_func0:
    push {r7, lr}
    mov r7, sp
    sub sp, sp, #16
    ldr r14, [r0]
    bl strlen
    mov r12, rax
    xor r15, r15
    test r12, r12
    beq LBB0_10
LBB0_1:
    mov r12, r12
    shl r12, #32
    mov rax, #0xFFFFFFFF00000000
    add rax, r12
    sar rax, #32
    ldrb rdi, [r14, rax]
    test rdi, rdi
    jl LBB0_3
LBB0_2:
    ldr r15, =__DefaultRuneLocale
    ldr r15, [r15, #8]
    ldr r15, [r15, rdi, lsl #3]
    ldrb rdi, [r15, #0]
    test rdi, rdi
    je LBB0_5
    bx lr
LBB0_3:
    mov r15, #256
    bl ___maskrune
    test r15, r15
    je LBB0_10
LBB0_5:
    mov r15, #1
    cmp r12, #1
    je LBB0_10
LBB0_6:
    mov r12, #0xFFFFFFFE00000000
    add r12, r12
    sar r12, #32
    ldrb rdi, [r14, r12]
    test rdi, rdi
    jl LBB0_8
LBB0_7:
    ldr r15, =__DefaultRuneLocale
    ldr r15, [r15, #8]
    ldr r15, [r15, rdi, lsl #3]
    ldrb rdi, [r15, #0]
    bx lr
LBB0_8:
    mov r15, #256
    bl ___maskrune
    mov r15, #0
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15, r15, r15, lsl #28
    mov r15, r15, lsl #31
    mov r15, r15, lsr #31
    mov r15, r15, lsl #7
    orr r15, r15, r15, lsl #14
    orr r15, r15, r15, lsl #21
    orr r15