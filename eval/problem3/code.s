	.file	"code.c"
	.option nopic
	.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.globl	func0
	.type	func0, @function
func0:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	fsw	fa0,-20(s0)
	flw	fa5,-20(s0)
	fcvt.w.s a5,fa5,rtz
	sext.w	a5,a5
	fcvt.s.w	fa5,a5
	flw	fa4,-20(s0)
	fsub.s	fa5,fa4,fa5
	fmv.s	fa0,fa5
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	func0, .-func0
	.ident	"GCC: (g04696df09) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
