	.section	.text
	.global	_func0
_func0:
	stp	x30, x29, [sp, #-16]!
	mov	x29, sp
	stp	x15, x14, [sp, #-32]!
	stp	x13, x12, [sp, #-48]!
	stp	x11, x10, [sp, #-64]!
	stp	x9, x8, [sp, #-80]!
	stp	x7, x6, [sp, #-96]!
	stp	x5, x4, [sp, #-112]!
	stp	x3, x2, [sp, #-128]!
	stp	x1, x0, [sp, #-144]!
	mov	x12, xsi
	mov	x15, xdi
	adrp	x0, .Ltmp0
	add	x0, x0, :lo12:.Ltmp0
	ldr	x0, [x0]
	ldr	x1, [x0]
	str	x1, [sp, #-160]
	ldrb	x0, [x15]
	cmp	x0, #47
	b.eq	LBB0_3
.LBB0_1:
	cmp	x0, #47
	b.ne	LBB0_2
.LBB0_2:
	add	x0, x0, #1
	ldrb	x1, [x15, x0]
	cmp	x1, #47
	b.ne.LBB0_2
.LBB0_3:
	mov	x13, x0
	ldrb	x0, [x15, x13]
	strb	x0, [sp, #-160]
	ldr	x15, [x12]
	ldr	x12, [x15, x13]
	ldr	x0, [x12]
	bl	atoi
	ldr	x14, [x15, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_4
.LBB0_4:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_6:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_6
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_6
.LBB0_7:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_11
.LBB0_11:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_13:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_13
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_13
.LBB0_14:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x13, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_17
.LBB0_17:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_19:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_19
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_19
.LBB0_20:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_23
.LBB0_23:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_24:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_24
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_24
.LBB0_25:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_28
.LBB0_28:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_29:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_29
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_29
.LBB0_30:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x13, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_33
.LBB0_33:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_34:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_34
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_34
.LBB0_35:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_38
.LBB0_38:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_39:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_39
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_39
.LBB0_40:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_43
.LBB0_43:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_44:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_44
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_44
.LBB0_45:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_48
.LBB0_48:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_49:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_49
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_49
.LBB0_50:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_53
.LBB0_53:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_54:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_54
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_54
.LBB0_55:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_58
.LBB0_58:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_59:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_59
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_59
.LBB0_60:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_63
.LBB0_63:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_64:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_64
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_64
.LBB0_65:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_68
.LBB0_68:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_69:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_69
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_69
.LBB0_70:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_73
.LBB0_73:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_74:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_74
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_74
.LBB0_75:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_78
.LBB0_78:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_79:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_79
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_79
.LBB0_80:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_83
.LBB0_83:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_84:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_84
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_84
.LBB0_85:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_88
.LBB0_88:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_89:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_89
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_89
.LBB0_90:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_93
.LBB0_93:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_94:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_94
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_94
.LBB0_95:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_98
.LBB0_98:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_99:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_99
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_99
.LBB0_100:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_103
.LBB0_103:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_104:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_104
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_104
.LBB0_105:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_108
.LBB0_108:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_109:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_109
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_109
.LBB0_110:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_113
.LBB0_113:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_114:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_114
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_114
.LBB0_115:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_118
.LBB0_118:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_119:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_119
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_119
.LBB0_120:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_123
.LBB0_123:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_124:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_124
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_124
.LBB0_125:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_128
.LBB0_128:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_129:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_129
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_129
.LBB0_130:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_133
.LBB0_133:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_134:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_134
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_134
.LBB0_135:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_138
.LBB0_138:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_139:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_139
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_139
.LBB0_140:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_143
.LBB0_143:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_144:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_144
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_144
.LBB0_145:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_148
.LBB0_148:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_149:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_149
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_149
.LBB0_150:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_153
.LBB0_153:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_154:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_154
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_154
.LBB0_155:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_158
.LBB0_158:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_159:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_159
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_159
.LBB0_160:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_163
.LBB0_163:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_164:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_164
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_164
.LBB0_165:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_168
.LBB0_168:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_169:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_169
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_169
.LBB0_170:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_173
.LBB0_173:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_174:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_174
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_174
.LBB0_175:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_178
.LBB0_178:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_179:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_179
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_179
.LBB0_180:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_183
.LBB0_183:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_184:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_184
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_184
.LBB0_185:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_188
.LBB0_188:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_189:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_189
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_189
.LBB0_190:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_193
.LBB0_193:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_194:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_194
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_194
.LBB0_195:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_198
.LBB0_198:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_199:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_199
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_199
.LBB0_200:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_203
.LBB0_203:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_204:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_204
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_204
.LBB0_205:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_208
.LBB0_208:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_209:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_209
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_209
.LBB0_210:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_213
.LBB0_213:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_214:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_214
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_214
.LBB0_215:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_218
.LBB0_218:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_219:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_219
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_219
.LBB0_220:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_223
.LBB0_223:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_224:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_224
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_224
.LBB0_225:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_228
.LBB0_228:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_229:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_229
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_229
.LBB0_230:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_233
.LBB0_233:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_234:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_234
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_234
.LBB0_235:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_238
.LBB0_238:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_239:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_239
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_239
.LBB0_240:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_243
.LBB0_243:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_244:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_244
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_244
.LBB0_245:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_248
.LBB0_248:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_249:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_249
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_249
.LBB0_250:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_253
.LBB0_253:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_254:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_254
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_254
.LBB0_255:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_258
.LBB0_258:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_259:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_259
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_259
.LBB0_260:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_263
.LBB0_263:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_264:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_264
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_264
.LBB0_265:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_268
.LBB0_268:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_269:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_269
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_269
.LBB0_270:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_273
.LBB0_273:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_274:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_274
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_274
.LBB0_275:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_278
.LBB0_278:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_279:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_279
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_279
.LBB0_280:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_283
.LBB0_283:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_284:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_284
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_284
.LBB0_285:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_288
.LBB0_288:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_289:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_289
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_289
.LBB0_290:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_293
.LBB0_293:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_294:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_294
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_294
.LBB0_295:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_298
.LBB0_298:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_299:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_299
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_299
.LBB0_300:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_303
.LBB0_303:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_304:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_304
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_304
.LBB0_305:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_308
.LBB0_308:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_309:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_309
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_309
.LBB0_310:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_313
.LBB0_313:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_314:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_314
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_314
.LBB0_315:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_318
.LBB0_318:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_319:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_319
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_319
.LBB0_320:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_323
.LBB0_323:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_324:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_324
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_324
.LBB0_325:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_328
.LBB0_328:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_329:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_329
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_329
.LBB0_330:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_333
.LBB0_333:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_334:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_334
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_334
.LBB0_335:
	ldr	x0, [sp, #-160]
	ldr	x1, [sp, #-160]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_338
.LBB0_338:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_339:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_339
	strb	x1, [sp, #-272]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_339
.LBB0_340:
	ldr	x0, [sp, #-272]
	ldr	x1, [sp, #-272]
	bl	atoi
	ldr	x15, [x12, x13]
	ldrb	x0, [x12, x13]
	cmp	x0, #47
	b.eq.LBB0_343
.LBB0_343:
	ldr	x12, [x12]
	ldr	x13, [x12]
	add	x13, x13, #2
	mov	x0, #0
.LBB0_344:
	ldrb	x1, [x13]
	cmp	x1, #47
	b.ne.LBB0_344
	strb	x1, [sp, #-160]
	add	x0, x0, #1
	ldr	x13, [x12, x0]
	cmp	x13, #47
	b.ne.LBB0_344
.LBB0_345:
	ldr	x0, [sp,