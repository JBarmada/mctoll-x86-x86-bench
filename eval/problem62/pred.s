	.text
	.bss
	.data
	.align 4
	.global _func0
_func0:
	// Push registers onto the stack
	push {r14, r15}
	// Save the current stack pointer to r15
	stp sp, r15, [sp, -16]!
	// Save the base pointer to r14
	mov r14, sp
	// Load the address of the input string into r14
	mov r14, rdi
	// Call the strlen function
	bl strlen
	// Check if the string length is zero
	cmp rax, #0
	je LBB0_1
	// Load the first character of the string into r14
	ldrb r14, [r14]
	// Initialize rax and rdx to zero
	mov rax, #0
	mov rdx, #0
	// Check if the first character is 'A' or 'a'
	cmp r14, #65
	bne LBB0_2
	// Increment rax if the first character is 'A' or 'a'
	add rax, #1
	// Check if the first character is 'a'
	cmp r14, #97
	bne LBB0_3
	// Increment rax if the first character is 'a'
	add rax, #1
LBB0_2:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the second character is 'B' or 'b'
	cmp r14, #66
	bne LBB0_4
	// Increment rax if the second character is 'B' or 'b'
	add rax, #1
	// Check if the second character is 'b'
	cmp r14, #98
	bne LBB0_5
	// Increment rax if the second character is 'b'
	add rax, #1
LBB0_4:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the third character is 'C' or 'c'
	cmp r14, #67
	bne LBB0_6
	// Increment rax if the third character is 'C' or 'c'
	add rax, #1
	// Check if the third character is 'c'
	cmp r14, #99
	bne LBB0_7
	// Increment rax if the third character is 'c'
	add rax, #1
LBB0_6:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the fourth character is 'D' or 'd'
	cmp r14, #68
	bne LBB0_8
	// Increment rax if the fourth character is 'D' or 'd'
	add rax, #1
	// Check if the fourth character is 'd'
	cmp r14, #100
	bne LBB0_9
	// Increment rax if the fourth character is 'd'
	add rax, #1
LBB0_8:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the fifth character is 'E' or 'e'
	cmp r14, #69
	bne LBB0_10
	// Increment rax if the fifth character is 'E' or 'e'
	add rax, #1
	// Check if the fifth character is 'e'
	cmp r14, #101
	bne LBB0_11
	// Increment rax if the fifth character is 'e'
	add rax, #1
LBB0_10:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the sixth character is 'F' or 'f'
	cmp r14, #70
	bne LBB0_12
	// Increment rax if the sixth character is 'F' or 'f'
	add rax, #1
	// Check if the sixth character is 'f'
	cmp r14, #102
	bne LBB0_13
	// Increment rax if the sixth character is 'f'
	add rax, #1
LBB0_12:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the seventh character is 'G' or 'g'
	cmp r14, #71
	bne LBB0_14
	// Increment rax if the seventh character is 'G' or 'g'
	add rax, #1
	// Check if the seventh character is 'g'
	cmp r14, #103
	bne LBB0_15
	// Increment rax if the seventh character is 'g'
	add rax, #1
LBB0_14:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the eighth character is 'H' or 'h'
	cmp r14, #72
	bne LBB0_16
	// Increment rax if the eighth character is 'H' or 'h'
	add rax, #1
	// Check if the eighth character is 'h'
	cmp r14, #104
	bne LBB0_17
	// Increment rax if the eighth character is 'h'
	add rax, #1
LBB0_16:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the ninth character is 'I' or 'i'
	cmp r14, #73
	bne LBB0_18
	// Increment rax if the ninth character is 'I' or 'i'
	add rax, #1
	// Check if the ninth character is 'i'
	cmp r14, #105
	bne LBB0_19
	// Increment rax if the ninth character is 'i'
	add rax, #1
LBB0_18:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the tenth character is 'J' or 'j'
	cmp r14, #74
	bne LBB0_20
	// Increment rax if the tenth character is 'J' or 'j'
	add rax, #1
	// Check if the tenth character is 'j'
	cmp r14, #106
	bne LBB0_21
	// Increment rax if the tenth character is 'j'
	add rax, #1
LBB0_20:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the eleventh character is 'K' or 'k'
	cmp r14, #75
	bne LBB0_22
	// Increment rax if the eleventh character is 'K' or 'k'
	add rax, #1
	// Check if the eleventh character is 'k'
	cmp r14, #107
	bne LBB0_23
	// Increment rax if the eleventh character is 'k'
	add rax, #1
LBB0_22:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the twelfth character is 'L' or 'l'
	cmp r14, #76
	bne LBB0_24
	// Increment rax if the twelfth character is 'L' or 'l'
	add rax, #1
	// Check if the twelfth character is 'l'
	cmp r14, #108
	bne LBB0_25
	// Increment rax if the twelfth character is 'l'
	add rax, #1
LBB0_24:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirteenth character is 'M' or 'm'
	cmp r14, #77
	bne LBB0_26
	// Increment rax if the thirteenth character is 'M' or 'm'
	add rax, #1
	// Check if the thirteenth character is 'm'
	cmp r14, #109
	bne LBB0_27
	// Increment rax if the thirteenth character is 'm'
	add rax, #1
LBB0_26:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the fourteenth character is 'N' or 'n'
	cmp r14, #78
	bne LBB0_28
	// Increment rax if the fourteenth character is 'N' or 'n'
	add rax, #1
	// Check if the fourteenth character is 'n'
	cmp r14, #110
	bne LBB0_29
	// Increment rax if the fourteenth character is 'n'
	add rax, #1
LBB0_28:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the fifteenth character is 'O' or 'o'
	cmp r14, #79
	bne LBB0_30
	// Increment rax if the fifteenth character is 'O' or 'o'
	add rax, #1
	// Check if the fifteenth character is 'o'
	cmp r14, #111
	bne LBB0_31
	// Increment rax if the fifteenth character is 'o'
	add rax, #1
LBB0_30:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the sixteenth character is 'P' or 'p'
	cmp r14, #80
	bne LBB0_32
	// Increment rax if the sixteenth character is 'P' or 'p'
	add rax, #1
	// Check if the sixteenth character is 'p'
	cmp r14, #112
	bne LBB0_33
	// Increment rax if the sixteenth character is 'p'
	add rax, #1
LBB0_32:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the seventeenth character is 'Q' or 'q'
	cmp r14, #81
	bne LBB0_34
	// Increment rax if the seventeenth character is 'Q' or 'q'
	add rax, #1
	// Check if the seventeenth character is 'q'
	cmp r14, #113
	bne LBB0_35
	// Increment rax if the seventeenth character is 'q'
	add rax, #1
LBB0_34:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the eighteenth character is 'R' or 'r'
	cmp r14, #82
	bne LBB0_36
	// Increment rax if the eighteenth character is 'R' or 'r'
	add rax, #1
	// Check if the eighteenth character is 'r'
	cmp r14, #114
	bne LBB0_37
	// Increment rax if the eighteenth character is 'r'
	add rax, #1
LBB0_36:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the nineteenth character is 'S' or 's'
	cmp r14, #83
	bne LBB0_38
	// Increment rax if the nineteenth character is 'S' or 's'
	add rax, #1
	// Check if the nineteenth character is 's'
	cmp r14, #115
	bne LBB0_39
	// Increment rax if the nineteenth character is 's'
	add rax, #1
LBB0_38:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the twentieth character is 'T' or 't'
	cmp r14, #84
	bne LBB0_40
	// Increment rax if the twentieth character is 'T' or 't'
	add rax, #1
	// Check if the twentieth character is 't'
	cmp r14, #116
	bne LBB0_41
	// Increment rax if the twentieth character is 't'
	add rax, #1
LBB0_40:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the twenty-first character is 'U' or 'u'
	cmp r14, #85
	bne LBB0_42
	// Increment rax if the twenty-first character is 'U' or 'u'
	add rax, #1
	// Check if the twenty-first character is 'u'
	cmp r14, #117
	bne LBB0_43
	// Increment rax if the twenty-first character is 'u'
	add rax, #1
LBB0_42:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the twenty-second character is 'V' or 'v'
	cmp r14, #86
	bne LBB0_44
	// Increment rax if the twenty-second character is 'V' or 'v'
	add rax, #1
	// Check if the twenty-second character is 'v'
	cmp r14, #118
	bne LBB0_45
	// Increment rax if the twenty-second character is 'v'
	add rax, #1
LBB0_44:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the twenty-third character is 'W' or 'w'
	cmp r14, #87
	bne LBB0_46
	// Increment rax if the twenty-third character is 'W' or 'w'
	add rax, #1
	// Check if the twenty-third character is 'w'
	cmp r14, #119
	bne LBB0_47
	// Increment rax if the twenty-third character is 'w'
	add rax, #1
LBB0_46:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the twenty-fourth character is 'X' or 'x'
	cmp r14, #88
	bne LBB0_48
	// Increment rax if the twenty-fourth character is 'X' or 'x'
	add rax, #1
	// Check if the twenty-fourth character is 'x'
	cmp r14, #120
	bne LBB0_49
	// Increment rax if the twenty-fourth character is 'x'
	add rax, #1
LBB0_48:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the twenty-fifth character is 'Y' or 'y'
	cmp r14, #89
	bne LBB0_50
	// Increment rax if the twenty-fifth character is 'Y' or 'y'
	add rax, #1
	// Check if the twenty-fifth character is 'y'
	cmp r14, #121
	bne LBB0_51
	// Increment rax if the twenty-fifth character is 'y'
	add rax, #1
LBB0_50:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the twenty-sixth character is 'Z' or 'z'
	cmp r14, #90
	bne LBB0_52
	// Increment rax if the twenty-sixth character is 'Z' or 'z'
	add rax, #1
	// Check if the twenty-sixth character is 'z'
	cmp r14, #122
	bne LBB0_53
	// Increment rax if the twenty-sixth character is 'z'
	add rax, #1
LBB0_52:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the twenty-seventh character is '0'
	cmp r14, #48
	bne LBB0_54
	// Increment rax if the twenty-seventh character is '0'
	add rax, #1
	// Check if the twenty-seventh character is '1'
	cmp r14, #49
	bne LBB0_55
	// Increment rax if the twenty-seventh character is '1'
	add rax, #1
LBB0_54:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the twenty-eighth character is '2'
	cmp r14, #50
	bne LBB0_56
	// Increment rax if the twenty-eighth character is '2'
	add rax, #1
	// Check if the twenty-eighth character is '3'
	cmp r14, #51
	bne LBB0_57
	// Increment rax if the twenty-eighth character is '3'
	add rax, #1
LBB0_56:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the twenty-ninth character is '4'
	cmp r14, #52
	bne LBB0_58
	// Increment rax if the twenty-ninth character is '4'
	add rax, #1
	// Check if the twenty-ninth character is '5'
	cmp r14, #53
	bne LBB0_59
	// Increment rax if the twenty-ninth character is '5'
	add rax, #1
LBB0_58:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth character is '6'
	cmp r14, #54
	bne LBB0_60
	// Increment rax if the thirtieth character is '6'
	add rax, #1
	// Check if the thirtieth character is '7'
	cmp r14, #55
	bne LBB0_61
	// Increment rax if the thirtieth character is '7'
	add rax, #1
LBB0_60:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-first character is '8'
	cmp r14, #56
	bne LBB0_62
	// Increment rax if the thirtieth-first character is '8'
	add rax, #1
	// Check if the thirtieth-first character is '9'
	cmp r14, #57
	bne LBB0_63
	// Increment rax if the thirtieth-first character is '9'
	add rax, #1
LBB0_62:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-second character is a space
	cmp r14, #32
	bne LBB0_64
	// Increment rax if the thirtieth-second character is a space
	add rax, #1
LBB0_64:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-third character is a period
	cmp r14, #46
	bne LBB0_65
	// Increment rax if the thirtieth-third character is a period
	add rax, #1
LBB0_65:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-fourth character is a comma
	cmp r14, #44
	bne LBB0_66
	// Increment rax if the thirtieth-fourth character is a comma
	add rax, #1
LBB0_66:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-fifth character is a semicolon
	cmp r14, #59
	bne LBB0_67
	// Increment rax if the thirtieth-fifth character is a semicolon
	add rax, #1
LBB0_67:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-sixth character is a colon
	cmp r14, #58
	bne LBB0_68
	// Increment rax if the thirtieth-sixth character is a colon
	add rax, #1
LBB0_68:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-seventh character is an exclamation mark
	cmp r14, #33
	bne LBB0_69
	// Increment rax if the thirtieth-seventh character is an exclamation mark
	add rax, #1
LBB0_69:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-eighth character is a question mark
	cmp r14, #63
	bne LBB0_70
	// Increment rax if the thirtieth-eighth character is a question mark
	add rax, #1
LBB0_70:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-ninth character is an ampersand
	cmp r14, #38
	bne LBB0_71
	// Increment rax if the thirtieth-ninth character is an ampersand
	add rax, #1
LBB0_71:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-tenth character is a pipe
	cmp r14, #124
	bne LBB0_72
	// Increment rax if the thirtieth-tenth character is a pipe
	add rax, #1
LBB0_72:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-eleventh character is an equal sign
	cmp r14, #61
	bne LBB0_73
	// Increment rax if the thirtieth-eleventh character is an equal sign
	add rax, #1
LBB0_73:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-twelfth character is a less than sign
	cmp r14, #60
	bne LBB0_74
	// Increment rax if the thirtieth-twelfth character is a less than sign
	add rax, #1
LBB0_74:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirteenth character is a greater than sign
	cmp r14, #62
	bne LBB0_75
	// Increment rax if the thirtieth-thirteenth character is a greater than sign
	add rax, #1
LBB0_75:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-fourteenth character is an asterisk
	cmp r14, #42
	bne LBB0_76
	// Increment rax if the thirtieth-fourteenth character is an asterisk
	add rax, #1
LBB0_76:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-fifteenth character is a plus sign
	cmp r14, #43
	bne LBB0_77
	// Increment rax if the thirtieth-fifteenth character is a plus sign
	add rax, #1
LBB0_77:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-sixteenth character is a minus sign
	cmp r14, #45
	bne LBB0_78
	// Increment rax if the thirtieth-sixteenth character is a minus sign
	add rax, #1
LBB0_78:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-seventeenth character is a slash
	cmp r14, #47
	bne LBB0_79
	// Increment rax if the thirtieth-seventeenth character is a slash
	add rax, #1
LBB0_79:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-eighteenth character is an underscore
	cmp r14, #95
	bne LBB0_80
	// Increment rax if the thirtieth-eighteenth character is an underscore
	add rax, #1
LBB0_80:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-nineteenth character is a backslash
	cmp r14, #92
	bne LBB0_81
	// Increment rax if the thirtieth-nineteenth character is a backslash
	add rax, #1
LBB0_81:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-twentieth character is a forward slash
	cmp r14, #47
	bne LBB0_82
	// Increment rax if the thirtieth-twentieth character is a forward slash
	add rax, #1
LBB0_82:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-twenty-first character is a tilde
	cmp r14, #126
	bne LBB0_83
	// Increment rax if the thirtieth-twenty-first character is a tilde
	add rax, #1
LBB0_83:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-twenty-second character is a hash
	cmp r14, #35
	bne LBB0_84
	// Increment rax if the thirtieth-twenty-second character is a hash
	add rax, #1
LBB0_84:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-twenty-third character is a percent sign
	cmp r14, #37
	bne LBB0_85
	// Increment rax if the thirtieth-twenty-third character is a percent sign
	add rax, #1
LBB0_85:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-twenty-fourth character is a dollar sign
	cmp r14, #36
	bne LBB0_86
	// Increment rax if the thirtieth-twenty-fourth character is a dollar sign
	add rax, #1
LBB0_86:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-twenty-fifth character is a at symbol
	cmp r14, #64
	bne LBB0_87
	// Increment rax if the thirtieth-twenty-fifth character is a at symbol
	add rax, #1
LBB0_87:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-twenty-sixth character is a left curly brace
	cmp r14, #123
	bne LBB0_88
	// Increment rax if the thirtieth-twenty-sixth character is a left curly brace
	add rax, #1
LBB0_88:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-twenty-seventh character is a right curly brace
	cmp r14, #125
	bne LBB0_89
	// Increment rax if the thirtieth-twenty-seventh character is a right curly brace
	add rax, #1
LBB0_89:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-twenty-eighth character is a left square bracket
	cmp r14, #91
	bne LBB0_90
	// Increment rax if the thirtieth-twenty-eighth character is a left square bracket
	add rax, #1
LBB0_90:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-twenty-ninth character is a right square bracket
	cmp r14, #93
	bne LBB0_91
	// Increment rax if the thirtieth-twenty-ninth character is a right square bracket
	add rax, #1
LBB0_91:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth character is a left angle bracket
	cmp r14, #60
	bne LBB0_92
	// Increment rax if the thirtieth-thirtieth character is a left angle bracket
	add rax, #1
LBB0_92:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-first character is a right angle bracket
	cmp r14, #62
	bne LBB0_93
	// Increment rax if the thirtieth-thirtieth-first character is a right angle bracket
	add rax, #1
LBB0_93:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-second character is a backtick
	cmp r14, #96
	bne LBB0_94
	// Increment rax if the thirtieth-thirtieth-second character is a backtick
	add rax, #1
LBB0_94:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-third character is a grave accent
	cmp r14, #96
	bne LBB0_95
	// Increment rax if the thirtieth-thirtieth-third character is a grave accent
	add rax, #1
LBB0_95:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-fourth character is a double quote
	cmp r14, #34
	bne LBB0_96
	// Increment rax if the thirtieth-thirtieth-fourth character is a double quote
	add rax, #1
LBB0_96:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-fifth character is a single quote
	cmp r14, #39
	bne LBB0_97
	// Increment rax if the thirtieth-thirtieth-fifth character is a single quote
	add rax, #1
LBB0_97:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-sixth character is a left parenthesis
	cmp r14, #40
	bne LBB0_98
	// Increment rax if the thirtieth-thirtieth-sixth character is a left parenthesis
	add rax, #1
LBB0_98:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-seventh character is a right parenthesis
	cmp r14, #41
	bne LBB0_99
	// Increment rax if the thirtieth-thirtieth-seventh character is a right parenthesis
	add rax, #1
LBB0_99:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-eighth character is a caret
	cmp r14, #94
	bne LBB0_100
	// Increment rax if the thirtieth-thirtieth-eighth character is a caret
	add rax, #1
LBB0_100:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-ninth character is a backslash
	cmp r14, #92
	bne LBB0_101
	// Increment rax if the thirtieth-thirtieth-ninth character is a backslash
	add rax, #1
LBB0_101:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-tenth character is a vertical bar
	cmp r14, #124
	bne LBB0_102
	// Increment rax if the thirtieth-thirtieth-tenth character is a vertical bar
	add rax, #1
LBB0_102:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-eleventh character is a tilde
	cmp r14, #126
	bne LBB0_103
	// Increment rax if the thirtieth-thirtieth-eleventh character is a tilde
	add rax, #1
LBB0_103:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twelfth character is a hash
	cmp r14, #35
	bne LBB0_104
	// Increment rax if the thirtieth-thirtieth-twelfth character is a hash
	add rax, #1
LBB0_104:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-thirteenth character is a percent sign
	cmp r14, #37
	bne LBB0_105
	// Increment rax if the thirtieth-thirtieth-thirteenth character is a percent sign
	add rax, #1
LBB0_105:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-fourteenth character is a dollar sign
	cmp r14, #36
	bne LBB0_106
	// Increment rax if the thirtieth-thirtieth-fourteenth character is a dollar sign
	add rax, #1
LBB0_106:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-fifteenth character is a at symbol
	cmp r14, #64
	bne LBB0_107
	// Increment rax if the thirtieth-thirtieth-fifteenth character is a at symbol
	add rax, #1
LBB0_107:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-sixteenth character is a left curly brace
	cmp r14, #123
	bne LBB0_108
	// Increment rax if the thirtieth-thirtieth-sixteenth character is a left curly brace
	add rax, #1
LBB0_108:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-seventeenth character is a right curly brace
	cmp r14, #125
	bne LBB0_109
	// Increment rax if the thirtieth-thirtieth-seventeenth character is a right curly brace
	add rax, #1
LBB0_109:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-eighteenth character is a left square bracket
	cmp r14, #91
	bne LBB0_110
	// Increment rax if the thirtieth-thirtieth-eighteenth character is a left square bracket
	add rax, #1
LBB0_110:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-nineteenth character is a right square bracket
	cmp r14, #93
	bne LBB0_111
	// Increment rax if the thirtieth-thirtieth-nineteenth character is a right square bracket
	add rax, #1
LBB0_111:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twentieth character is a left angle bracket
	cmp r14, #60
	bne LBB0_112
	// Increment rax if the thirtieth-thirtieth-twentieth character is a left angle bracket
	add rax, #1
LBB0_112:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-first character is a right angle bracket
	cmp r14, #62
	bne LBB0_113
	// Increment rax if the thirtieth-thirtieth-twenty-first character is a right angle bracket
	add rax, #1
LBB0_113:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-second character is a backtick
	cmp r14, #96
	bne LBB0_114
	// Increment rax if the thirtieth-thirtieth-twenty-second character is a backtick
	add rax, #1
LBB0_114:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-third character is a grave accent
	cmp r14, #96
	bne LBB0_115
	// Increment rax if the thirtieth-thirtieth-twenty-third character is a grave accent
	add rax, #1
LBB0_115:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-fourth character is a double quote
	cmp r14, #34
	bne LBB0_116
	// Increment rax if the thirtieth-thirtieth-twenty-fourth character is a double quote
	add rax, #1
LBB0_116:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-fifth character is a single quote
	cmp r14, #39
	bne LBB0_117
	// Increment rax if the thirtieth-thirtieth-twenty-fifth character is a single quote
	add rax, #1
LBB0_117:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-sixteenth character is a left parenthesis
	cmp r14, #40
	bne LBB0_118
	// Increment rax if the thirtieth-thirtieth-sixteenth character is a left parenthesis
	add rax, #1
LBB0_118:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-seventeenth character is a right parenthesis
	cmp r14, #41
	bne LBB0_119
	// Increment rax if the thirtieth-thirtieth-seventeenth character is a right parenthesis
	add rax, #1
LBB0_119:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-eighteenth character is a caret
	cmp r14, #94
	bne LBB0_120
	// Increment rax if the thirtieth-thirtieth-eighteenth character is a caret
	add rax, #1
LBB0_120:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-nineteenth character is a backslash
	cmp r14, #92
	bne LBB0_121
	// Increment rax if the thirtieth-thirtieth-nineteenth character is a backslash
	add rax, #1
LBB0_121:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twentieth character is a vertical bar
	cmp r14, #124
	bne LBB0_122
	// Increment rax if the thirtieth-thirtieth-twentieth character is a vertical bar
	add rax, #1
LBB0_122:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-first character is a tilde
	cmp r14, #126
	bne LBB0_123
	// Increment rax if the thirtieth-thirtieth-twenty-first character is a tilde
	add rax, #1
LBB0_123:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-second character is a hash
	cmp r14, #35
	bne LBB0_124
	// Increment rax if the thirtieth-thirtieth-twenty-second character is a hash
	add rax, #1
LBB0_124:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-third character is a percent sign
	cmp r14, #37
	bne LBB0_125
	// Increment rax if the thirtieth-thirtieth-twenty-third character is a percent sign
	add rax, #1
LBB0_125:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-fourteenth character is a dollar sign
	cmp r14, #36
	bne LBB0_126
	// Increment rax if the thirtieth-thirtieth-fourteenth character is a dollar sign
	add rax, #1
LBB0_126:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-fifteenth character is a at symbol
	cmp r14, #64
	bne LBB0_127
	// Increment rax if the thirtieth-thirtieth-fifteenth character is a at symbol
	add rax, #1
LBB0_127:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-sixteenth character is a left curly brace
	cmp r14, #123
	bne LBB0_128
	// Increment rax if the thirtieth-thirtieth-sixteenth character is a left curly brace
	add rax, #1
LBB0_128:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-seventeenth character is a right curly brace
	cmp r14, #125
	bne LBB0_129
	// Increment rax if the thirtieth-thirtieth-seventeenth character is a right curly brace
	add rax, #1
LBB0_129:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-eighteenth character is a left square bracket
	cmp r14, #91
	bne LBB0_130
	// Increment rax if the thirtieth-thirtieth-eighteenth character is a left square bracket
	add rax, #1
LBB0_130:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-nineteenth character is a right square bracket
	cmp r14, #93
	bne LBB0_131
	// Increment rax if the thirtieth-thirtieth-nineteenth character is a right square bracket
	add rax, #1
LBB0_131:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twentieth character is a left angle bracket
	cmp r14, #60
	bne LBB0_132
	// Increment rax if the thirtieth-thirtieth-twentieth character is a left angle bracket
	add rax, #1
LBB0_132:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-first character is a right angle bracket
	cmp r14, #62
	bne LBB0_133
	// Increment rax if the thirtieth-thirtieth-twenty-first character is a right angle bracket
	add rax, #1
LBB0_133:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-second character is a backtick
	cmp r14, #96
	bne LBB0_134
	// Increment rax if the thirtieth-thirtieth-twenty-second character is a backtick
	add rax, #1
LBB0_134:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-third character is a grave accent
	cmp r14, #96
	bne LBB0_135
	// Increment rax if the thirtieth-thirtieth-twenty-third character is a grave accent
	add rax, #1
LBB0_135:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-fourth character is a double quote
	cmp r14, #34
	bne LBB0_136
	// Increment rax if the thirtieth-thirtieth-twenty-fourth character is a double quote
	add rax, #1
LBB0_136:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-fifth character is a single quote
	cmp r14, #39
	bne LBB0_137
	// Increment rax if the thirtieth-thirtieth-twenty-fifth character is a single quote
	add rax, #1
LBB0_137:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-sixteenth character is a left parenthesis
	cmp r14, #40
	bne LBB0_138
	// Increment rax if the thirtieth-thirtieth-sixteenth character is a left parenthesis
	add rax, #1
LBB0_138:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-seventeenth character is a right parenthesis
	cmp r14, #41
	bne LBB0_139
	// Increment rax if the thirtieth-thirtieth-seventeenth character is a right parenthesis
	add rax, #1
LBB0_139:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-eighteenth character is a caret
	cmp r14, #94
	bne LBB0_140
	// Increment rax if the thirtieth-thirtieth-eighteenth character is a caret
	add rax, #1
LBB0_140:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-nineteenth character is a backslash
	cmp r14, #92
	bne LBB0_141
	// Increment rax if the thirtieth-thirtieth-nineteenth character is a backslash
	add rax, #1
LBB0_141:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twentieth character is a vertical bar
	cmp r14, #124
	bne LBB0_142
	// Increment rax if the thirtieth-thirtieth-twentieth character is a vertical bar
	add rax, #1
LBB0_142:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-first character is a tilde
	cmp r14, #126
	bne LBB0_143
	// Increment rax if the thirtieth-thirtieth-twenty-first character is a tilde
	add rax, #1
LBB0_143:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-second character is a hash
	cmp r14, #35
	bne LBB0_144
	// Increment rax if the thirtieth-thirtieth-twenty-second character is a hash
	add rax, #1
LBB0_144:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-third character is a percent sign
	cmp r14, #37
	bne LBB0_145
	// Increment rax if the thirtieth-thirtieth-twenty-third character is a percent sign
	add rax, #1
LBB0_145:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-fourteenth character is a dollar sign
	cmp r14, #36
	bne LBB0_146
	// Increment rax if the thirtieth-thirtieth-fourteenth character is a dollar sign
	add rax, #1
LBB0_146:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-fifteenth character is a at symbol
	cmp r14, #64
	bne LBB0_147
	// Increment rax if the thirtieth-thirtieth-fifteenth character is a at symbol
	add rax, #1
LBB0_147:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-sixteenth character is a left curly brace
	cmp r14, #123
	bne LBB0_148
	// Increment rax if the thirtieth-thirtieth-sixteenth character is a left curly brace
	add rax, #1
LBB0_148:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-seventeenth character is a right curly brace
	cmp r14, #125
	bne LBB0_149
	// Increment rax if the thirtieth-thirtieth-seventeenth character is a right curly brace
	add rax, #1
LBB0_149:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-eighteenth character is a left square bracket
	cmp r14, #91
	bne LBB0_150
	// Increment rax if the thirtieth-thirtieth-eighteenth character is a left square bracket
	add rax, #1
LBB0_150:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-nineteenth character is a right square bracket
	cmp r14, #93
	bne LBB0_151
	// Increment rax if the thirtieth-thirtieth-nineteenth character is a right square bracket
	add rax, #1
LBB0_151:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twentieth character is a left angle bracket
	cmp r14, #60
	bne LBB0_152
	// Increment rax if the thirtieth-thirtieth-twentieth character is a left angle bracket
	add rax, #1
LBB0_152:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-first character is a right angle bracket
	cmp r14, #62
	bne LBB0_153
	// Increment rax if the thirtieth-thirtieth-twenty-first character is a right angle bracket
	add rax, #1
LBB0_153:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-second character is a backtick
	cmp r14, #96
	bne LBB0_154
	// Increment rax if the thirtieth-thirtieth-twenty-second character is a backtick
	add rax, #1
LBB0_154:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-third character is a grave accent
	cmp r14, #96
	bne LBB0_155
	// Increment rax if the thirtieth-thirtieth-twenty-third character is a grave accent
	add rax, #1
LBB0_155:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-fourth character is a double quote
	cmp r14, #34
	bne LBB0_156
	// Increment rax if the thirtieth-thirtieth-twenty-fourth character is a double quote
	add rax, #1
LBB0_156:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-fifth character is a single quote
	cmp r14, #39
	bne LBB0_157
	// Increment rax if the thirtieth-thirtieth-twenty-fifth character is a single quote
	add rax, #1
LBB0_157:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-sixteenth character is a left parenthesis
	cmp r14, #40
	bne LBB0_158
	// Increment rax if the thirtieth-thirtieth-sixteenth character is a left parenthesis
	add rax, #1
LBB0_158:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-seventeenth character is a right parenthesis
	cmp r14, #41
	bne LBB0_159
	// Increment rax if the thirtieth-thirtieth-seventeenth character is a right parenthesis
	add rax, #1
LBB0_159:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-eighteenth character is a caret
	cmp r14, #94
	bne LBB0_160
	// Increment rax if the thirtieth-thirtieth-eighteenth character is a caret
	add rax, #1
LBB0_160:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-nineteenth character is a backslash
	cmp r14, #92
	bne LBB0_161
	// Increment rax if the thirtieth-thirtieth-nineteenth character is a backslash
	add rax, #1
LBB0_161:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twentieth character is a vertical bar
	cmp r14, #124
	bne LBB0_162
	// Increment rax if the thirtieth-thirtieth-twentieth character is a vertical bar
	add rax, #1
LBB0_162:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-first character is a tilde
	cmp r14, #126
	bne LBB0_163
	// Increment rax if the thirtieth-thirtieth-twenty-first character is a tilde
	add rax, #1
LBB0_163:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-second character is a hash
	cmp r14, #35
	bne LBB0_164
	// Increment rax if the thirtieth-thirtieth-twenty-second character is a hash
	add rax, #1
LBB0_164:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-twenty-third character is a percent sign
	cmp r14, #37
	bne LBB0_165
	// Increment rax if the thirtieth-thirtieth-twenty-third character is a percent sign
	add rax, #1
LBB0_165:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-fourteenth character is a dollar sign
	cmp r14, #36
	bne LBB0_166
	// Increment rax if the thirtieth-thirtieth-fourteenth character is a dollar sign
	add rax, #1
LBB0_166:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-fifteenth character is a at symbol
	cmp r14, #64
	bne LBB0_167
	// Increment rax if the thirtieth-thirtieth-fifteenth character is a at symbol
	add rax, #1
LBB0_167:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-sixteenth character is a left curly brace
	cmp r14, #123
	bne LBB0_168
	// Increment rax if the thirtieth-thirtieth-sixteenth character is a left curly brace
	add rax, #1
LBB0_168:
	// Load the next character of the string into r14
	ldrb r14, [r14, #1]
	// Check if the thirtieth-thirtieth-sevent