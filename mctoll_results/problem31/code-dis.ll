; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i64 %arg1, i32 %arg2, i64 %arg3) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 44
  %RBP_N.12 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  %memload = load i64, ptr %RBP_N.12, align 1
  %6 = trunc i64 %memload to i32
  %RDI = sext i32 %6 to i64
  %RDI1 = shl i64 %RDI, 2
  %ZF = icmp eq i64 %RDI1, 0
  %highbit = and i64 -9223372036854775808, %RDI1
  %SF = icmp ne i64 %highbit, 0
  %7 = call ptr @malloc(i64 %RDI1)
  %RAX = ptrtoint ptr %7 to i64
  store i64 %RAX, ptr %RBP_N.32, align 1
  %memload2 = load i64, ptr %RBP_N.24, align 1
  %8 = inttoptr i64 %memload2 to ptr
  store i32 0, ptr %8, align 1
  store i32 0, ptr %RBP_N.36, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %memload3 = load i32, ptr %RBP_N.36, align 1
  %9 = load i32, ptr %RBP_N.12, align 1
  %10 = sub i32 %memload3, %9
  %11 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload3, i32 %9)
  %CF = extractvalue { i32, i1 } %11, 1
  %ZF4 = icmp eq i32 %10, 0
  %highbit5 = and i32 -2147483648, %10
  %SF6 = icmp ne i32 %highbit5, 0
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload3, i32 %9)
  %OF = extractvalue { i32, i1 } %12, 1
  %13 = and i32 %10, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = and i32 %14, 1
  %PF = icmp eq i32 %15, 0
  %CmpSFOF_JGE = icmp eq i1 %SF6, %OF
  br i1 %CmpSFOF_JGE, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload7 = load i64, ptr %RBP_N.8, align 1
  %memload8 = load i64, ptr %RBP_N.36, align 1
  %16 = trunc i64 %memload8 to i32
  %RCX = sext i32 %16 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload7, %memref-idxreg
  %17 = inttoptr i64 %memref-basereg to ptr
  %memload9 = load float, ptr %17, align 1
  %18 = insertelement <4 x float> zeroinitializer, float %memload9, i64 0
  %19 = bitcast <4 x float> %18 to <4 x float>
  %cmp_operand_1 = extractelement <4 x float> %19, i64 0
  %cmp_operand_2 = extractelement <4 x float> zeroinitializer, i64 0
  %CF10 = fcmp ult float %cmp_operand_1, %cmp_operand_2
  %ZF11 = fcmp ueq float %cmp_operand_1, %cmp_operand_2
  %PF12 = fcmp uno float %cmp_operand_1, %cmp_operand_2
  %CFCmp_JBE = icmp eq i1 %CF10, true
  %ZFCmp_JBE = icmp eq i1 %ZF11, true
  %CFAndZF_JBE = or i1 %ZFCmp_JBE, %CFCmp_JBE
  br i1 %CFAndZF_JBE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload13 = load i64, ptr %RBP_N.8, align 1
  %memload14 = load i64, ptr %RBP_N.36, align 1
  %20 = trunc i64 %memload14 to i32
  %RCX15 = sext i32 %20 to i64
  %memref-idxreg16 = mul i64 4, %RCX15
  %memref-basereg17 = add i64 %memload13, %memref-idxreg16
  %21 = inttoptr i64 %memref-basereg17 to ptr
  %memload18 = load float, ptr %21, align 1
  %memload19 = load i64, ptr %RBP_N.32, align 1
  %memload20 = load i64, ptr %RBP_N.24, align 1
  %22 = inttoptr i64 %memload20 to ptr
  %memload21 = load i32, ptr %22, align 1
  %ESI = add i32 %memload21, 1
  %23 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload21, i32 1)
  %CF22 = extractvalue { i32, i1 } %23, 1
  %24 = and i32 %ESI, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = and i32 %25, 1
  %PF23 = icmp eq i32 %26, 0
  %ZF24 = icmp eq i32 %ESI, 0
  %highbit25 = and i32 -2147483648, %ESI
  %SF26 = icmp ne i32 %highbit25, 0
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload21, i32 1)
  %OF27 = extractvalue { i32, i1 } %27, 1
  %28 = inttoptr i64 %memload20 to ptr
  store i32 %ESI, ptr %28, align 1
  %RCX28 = sext i32 %memload21 to i64
  %memref-idxreg29 = mul i64 4, %RCX28
  %memref-basereg30 = add i64 %memload19, %memref-idxreg29
  %29 = inttoptr i64 %memref-basereg30 to ptr
  store float %memload18, ptr %29, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload31 = load i32, ptr %RBP_N.36, align 1
  %EAX = add i32 %memload31, 1
  %30 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload31, i32 1)
  %CF32 = extractvalue { i32, i1 } %30, 1
  %31 = and i32 %EAX, 255
  %32 = call i32 @llvm.ctpop.i32(i32 %31)
  %33 = and i32 %32, 1
  %PF33 = icmp eq i32 %33, 0
  %ZF34 = icmp eq i32 %EAX, 0
  %highbit35 = and i32 -2147483648, %EAX
  %SF36 = icmp ne i32 %highbit35, 0
  %34 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload31, i32 1)
  %OF37 = extractvalue { i32, i1 } %34, 1
  store i32 %EAX, ptr %RBP_N.36, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  %memload38 = load i64, ptr %RBP_N.32, align 1
  ret i64 %memload38
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
