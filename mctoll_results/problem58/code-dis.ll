; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_4 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.28 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 39
  %RBP_N.1 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.28, align 1
  store i32 0, ptr %RBP_N.24, align 1
  store i32 1, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.7
  %memload = load i32, ptr %stktop_4, align 1
  %6 = load i32, ptr %RBP_N.20, align 1
  %7 = sub i32 %memload, %6
  %8 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %6)
  %CF = extractvalue { i32, i1 } %8, 1
  %ZF = icmp eq i32 %7, 0
  %highbit = and i32 -2147483648, %7
  %SF = icmp ne i32 %highbit, 0
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %6)
  %OF = extractvalue { i32, i1 } %9, 1
  %10 = and i32 %7, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = and i32 %11, 1
  %PF = icmp eq i32 %12, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.8, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.16, align 1
  %memload2 = load i64, ptr %stktop_4, align 1
  %13 = trunc i64 %memload2 to i32
  %RCX = sext i32 %13 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %14 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load float, ptr %14, align 1
  %memload4 = load i64, ptr %RBP_N.16, align 1
  %memload5 = load i32, ptr %stktop_4, align 1
  %ECX = sub i32 %memload5, 1
  %15 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload5, i32 1)
  %CF6 = extractvalue { i32, i1 } %15, 1
  %16 = and i32 %ECX, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = and i32 %17, 1
  %PF7 = icmp eq i32 %18, 0
  %ZF8 = icmp eq i32 %ECX, 0
  %highbit9 = and i32 -2147483648, %ECX
  %SF10 = icmp ne i32 %highbit9, 0
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload5, i32 1)
  %OF11 = extractvalue { i32, i1 } %19, 1
  %RCX12 = sext i32 %ECX to i64
  %memref-idxreg13 = mul i64 4, %RCX12
  %memref-basereg14 = add i64 %memload4, %memref-idxreg13
  %20 = insertelement <4 x float> zeroinitializer, float %memload3, i64 0
  %21 = bitcast <4 x float> %20 to <4 x float>
  %22 = inttoptr i64 %memref-basereg14 to ptr
  %memload15 = load <4 x float>, ptr %22, align 1
  %cmp_operand_1 = extractelement <4 x float> %21, i64 0
  %cmp_operand_2 = extractelement <4 x float> %memload15, i64 0
  %CF16 = fcmp ult float %cmp_operand_1, %cmp_operand_2
  %ZF17 = fcmp ueq float %cmp_operand_1, %cmp_operand_2
  %PF18 = fcmp uno float %cmp_operand_1, %cmp_operand_2
  %CFCmp_JBE = icmp eq i1 %CF16, true
  %ZFCmp_JBE = icmp eq i1 %ZF17, true
  %CFAndZF_JBE = or i1 %ZFCmp_JBE, %CFCmp_JBE
  br i1 %CFAndZF_JBE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  store i32 1, ptr %RBP_N.24, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  %memload19 = load i64, ptr %RBP_N.16, align 1
  %memload20 = load i64, ptr %stktop_4, align 1
  %23 = trunc i64 %memload20 to i32
  %RCX21 = sext i32 %23 to i64
  %memref-idxreg22 = mul i64 4, %RCX21
  %memref-basereg23 = add i64 %memload19, %memref-idxreg22
  %24 = inttoptr i64 %memref-basereg23 to ptr
  %memload24 = load float, ptr %24, align 1
  %memload25 = load i64, ptr %RBP_N.16, align 1
  %memload26 = load i32, ptr %stktop_4, align 1
  %ECX33 = sub i32 %memload26, 1
  %25 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload26, i32 1)
  %CF27 = extractvalue { i32, i1 } %25, 1
  %26 = and i32 %ECX33, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF28 = icmp eq i32 %28, 0
  %ZF29 = icmp eq i32 %ECX33, 0
  %highbit30 = and i32 -2147483648, %ECX33
  %SF31 = icmp ne i32 %highbit30, 0
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload26, i32 1)
  %OF32 = extractvalue { i32, i1 } %29, 1
  %RCX34 = sext i32 %ECX33 to i64
  %memref-idxreg35 = mul i64 4, %RCX34
  %memref-basereg36 = add i64 %memload25, %memref-idxreg35
  %30 = inttoptr i64 %memref-basereg36 to ptr
  %memload37 = load float, ptr %30, align 1
  %31 = insertelement <4 x float> zeroinitializer, float %memload37, i64 0
  %32 = bitcast <4 x float> %31 to <4 x float>
  %33 = insertelement <4 x float> zeroinitializer, float %memload24, i64 0
  %34 = bitcast <4 x float> %33 to <4 x float>
  %cmp_operand_138 = extractelement <4 x float> %32, i64 0
  %cmp_operand_239 = extractelement <4 x float> %34, i64 0
  %CF40 = fcmp ult float %cmp_operand_138, %cmp_operand_239
  %ZF41 = fcmp ueq float %cmp_operand_138, %cmp_operand_239
  %PF42 = fcmp uno float %cmp_operand_138, %cmp_operand_239
  %CFCmp_JBE66 = icmp eq i1 %CF40, true
  %ZFCmp_JBE67 = icmp eq i1 %ZF41, true
  %CFAndZF_JBE68 = or i1 %ZFCmp_JBE67, %CFCmp_JBE66
  br i1 %CFAndZF_JBE68, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  store i32 1, ptr %RBP_N.28, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload43 = load i32, ptr %stktop_4, align 1
  %EAX = add i32 %memload43, 1
  %35 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload43, i32 1)
  %CF44 = extractvalue { i32, i1 } %35, 1
  %36 = and i32 %EAX, 255
  %37 = call i32 @llvm.ctpop.i32(i32 %36)
  %38 = and i32 %37, 1
  %PF45 = icmp eq i32 %38, 0
  %ZF46 = icmp eq i32 %EAX, 0
  %highbit47 = and i32 -2147483648, %EAX
  %SF48 = icmp ne i32 %highbit47, 0
  %39 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload43, i32 1)
  %OF49 = extractvalue { i32, i1 } %39, 1
  store i32 %EAX, ptr %stktop_4, align 1
  br label %bb.1

bb.8:                                             ; preds = %bb.1
  %memload50 = load i32, ptr %RBP_N.24, align 1
  %memload51 = load i32, ptr %RBP_N.28, align 1
  %EAX53 = add i32 %memload50, %memload51
  %40 = and i32 %EAX53, 255
  %41 = call i32 @llvm.ctpop.i32(i32 %40)
  %42 = and i32 %41, 1
  %PF52 = icmp eq i32 %42, 0
  %43 = sub i32 %EAX53, 2
  %44 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX53, i32 2)
  %CF54 = extractvalue { i32, i1 } %44, 1
  %ZF55 = icmp eq i32 %43, 0
  %highbit56 = and i32 -2147483648, %43
  %SF57 = icmp ne i32 %highbit56, 0
  %45 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX53, i32 2)
  %OF58 = extractvalue { i32, i1 } %45, 1
  %46 = and i32 %43, 255
  %47 = call i32 @llvm.ctpop.i32(i32 %46)
  %48 = and i32 %47, 1
  %PF59 = icmp eq i32 %48, 0
  %CmpZF_JNE = icmp eq i1 %ZF55, false
  br i1 %CmpZF_JNE, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.11

bb.10:                                            ; preds = %bb.8
  store i8 1, ptr %RBP_N.1, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.9
  %memload60 = load i8, ptr %RBP_N.1, align 1
  %AL = and i8 %memload60, 1
  %49 = call i8 @llvm.ctpop.i8(i8 %AL)
  %50 = and i8 %49, 1
  %PF61 = icmp eq i8 %50, 0
  %ZF62 = icmp eq i8 %AL, 0
  %highbit63 = and i8 -128, %AL
  %SF64 = icmp ne i8 %highbit63, 0
  %EAX65 = zext i8 %AL to i32
  ret i32 %EAX65
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctpop.i8(i8) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
