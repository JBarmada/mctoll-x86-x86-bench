	.section	.text
	.global	_func0
_func0:
	// Push registers onto the stack
	push {r4-r11, lr}
	// Save the base pointer
	mov r4, sp
	// Initialize variables
	mov r5, #0
	mov r6, #0
	mov r7, #0
	mov r8, #0
	mov r9, #0
	mov r10, #0
	mov r11, #0
	// Load arguments
	mov r14, rsi
	mov r13, rdi
	// Initialize loop variables
	mov r12, #0
	// Start the loop
.LBB0_1:
	// Load the next byte from the source
	ldrb r15, [r13], #1
	// Check if the byte is 40
	cmp r15, #40
	bne .LBB0_2
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_1
.LBB0_2:
	// Check if the byte is 41
	cmp r15, #41
	bne .LBB0_3
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_1
.LBB0_3:
	// Compare the loop counter with 0
	cmp r12, #0
	bne .LBB0_4
	// Allocate memory
	mov r13, r14
	add r13, r13, #8
	bl _realloc
	// Copy the data to the new memory location
	ldr r14, [r14]
	str r14, [r13, r12, lsl #2]
	// Initialize the loop counter
	mov r12, #0
	// Start the loop
.LBB0_5:
	// Load the next byte from the source
	ldrb r15, [r13], #1
	// Compare the loop counter with 0
	cmp r12, #0
	bne .LBB0_6
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_7
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_6:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_8
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_7:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_9
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_8:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_10
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_9:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_11
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_10:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_12
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_11:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_13
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_12:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_14
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_13:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_15
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_14:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_16
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_15:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_17
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_16:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_18
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_17:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_19
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_18:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_20
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_19:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_21
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_20:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_22
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_21:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_23
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_22:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_24
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_23:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_25
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_24:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_26
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_25:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_27
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_26:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_28
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_27:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_29
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_28:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_30
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_29:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_31
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_30:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_32
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_31:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_33
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_32:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_34
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_33:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_35
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_34:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_36
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_35:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_37
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_36:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_38
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_37:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_39
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_38:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_40
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_39:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_41
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_40:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_42
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_41:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_43
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_42:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_44
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_43:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_45
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_44:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_46
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_45:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_47
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_46:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_48
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_47:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_49
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_48:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_50
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_49:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_51
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_50:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_52
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_51:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_53
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_52:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_54
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_53:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_55
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_54:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_56
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_55:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_57
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_56:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_58
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_57:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_59
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_58:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_60
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_59:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_61
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_60:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_62
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_61:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_63
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_62:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_64
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_63:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_65
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_64:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_66
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_65:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_67
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_66:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_68
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_67:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_69
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_68:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_70
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_69:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_71
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_70:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_72
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_71:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_73
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_72:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_74
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_73:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_75
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_74:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_76
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_75:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_77
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_76:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_78
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_77:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_79
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_78:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_80
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_79:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_81
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_80:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_82
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_81:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_83
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_82:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_84
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_83:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_85
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_84:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_86
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_85:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_87
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_86:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_88
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_87:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_89
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_88:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_90
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_89:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_91
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_90:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_92
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_91:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_93
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_92:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_94
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_93:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_95
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_94:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_96
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_95:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_97
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_96:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_98
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_97:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_99
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_98:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_100
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_99:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_101
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_100:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_102
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_101:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_103
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_102:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_104
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_103:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_105
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_104:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_106
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_105:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_107
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_106:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_108
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_107:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_109
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_108:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_110
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_109:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_111
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_110:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_112
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_111:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_113
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_112:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_114
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_113:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_115
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_114:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_116
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_115:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_117
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_116:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_118
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_117:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_119
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_118:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_120
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_119:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_121
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_120:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_122
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_121:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_123
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_122:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_124
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_123:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_125
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_124:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_126
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_125:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_127
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_126:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_128
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_127:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_129
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_128:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_130
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_129:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_131
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_130:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_132
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_131:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_133
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_132:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_134
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_133:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_135
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_134:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_136
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_135:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_137
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_136:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_138
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_137:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_139
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_138:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_140
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_139:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_141
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_140:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_142
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_141:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_143
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_142:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_144
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_143:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_145
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_144:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_146
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_145:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_147
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_146:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_148
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_147:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_149
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_148:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_150
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_149:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_151
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_150:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_152
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_151:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_153
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_152:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_154
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_153:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_155
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_154:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_156
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_155:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_157
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_156:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_158
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_157:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_159
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_158:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_160
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_159:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_161
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_160:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_162
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_161:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_163
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_162:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bne .LBB0_164
	// Decrement the loop counter
	sub r12, r12, #1
	b .LBB0_5
.LBB0_163:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r15
	bge .LBB0_165
	// Increment the loop counter
	add r12, r12, #1
	b .LBB0_5
.LBB0_164:
	// Load the previous byte from the source
	ldrb r14, [r13, r12, lsl #2]
	// Compare the previous byte with the current byte
	cmp r14, r1