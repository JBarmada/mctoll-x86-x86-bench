.section .text
.global _func0
_func0:
    push {r4, r5, r6, r7, lr}
    mov r0, #1
    cmp r1, #4
    jl LBB0_5
    mov r0, #2
LBB0_2:
    mov r2, r1
    mov r3, #0
    mov r4, #1
LBB0_3:
    sdiv r3, r1, r2
    cmp r3, #0
    beq LBB0_4
    add r1, #1
    mov r2, r1
    mul r2, r2
    cmp r1, r2
    ble LBB0_3
    jmp LBB0_5
LBB0_4:
    mov r0, r3
LBB0_5:
    mov r0, r0
    pop {r4, r5, r6, r7, lr}
    bx lr
