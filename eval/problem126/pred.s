.section .text
.global _func0
_func0:
    push {r4, r5, r6, r7, r8, r9, r10, r11, lr}
    mov r10, rsi
    mov r11, #2
    cmp r10, r11
    bge LBB0_11
    mov r9, [rdi]
    mov r10, [rdi, #4]
    mov r1, #1
    cmp r9, r10
    bge LBB0_12
    mov r8, rsi
    mov r1, #1
    mov r2, #2
    mov r3, #4294967295
    LBB0_4:
        mov r11, r10
        cmp r11, #2
        bge LBB0_7
        cmp r9, r11
        bne LBB0_7
        mov r11, r3
        cmp [rdi, r11], r9
        beq LBB0_12
    LBB0_7:
        cmp r8, rsi
        bne LBB0_12
        mov r11, [rdi, rsi]
        add rsi, #4
        add r8, #1
        add r11, #1
        cmp r11, r10
        bge LBB0_4
        b LBB0_12
    LBB0_9:
        mov r1, #1
        and r1, r1
        mov r1, #0
        mov r1, r1
        b LBB0_12
    LBB0_11:
        mov r1, #0
    LBB0_12:
        mov r1, #1
        and r1, r1
        mov r1, #0
        mov r1, r1
        pop {r4, r5, r6, r7, r8, r9, r10, r11, lr}
        bx lr
