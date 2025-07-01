; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2, double %arg3) {
entry:
  %stktop_4 = alloca i8, i32 48, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.36 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.32 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.28 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.24 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 28
  %RBP_N.20 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 32
  %RBP_N.16 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 44
  %RBP_N.4 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  %8 = bitcast double %arg3 to <2 x float>
  %9 = extractelement <2 x float> %8, i64 0
  store float %9, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.12
  %memload = load i32, ptr %RBP_N.28, align 1
  %10 = load i32, ptr %RBP_N.20, align 1
  %11 = sub i32 %memload, %10
  %12 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %10)
  %CF = extractvalue { i32, i1 } %12, 1
  %ZF = icmp eq i32 %11, 0
  %highbit = and i32 -2147483648, %11
  %SF = icmp ne i32 %highbit, 0
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %10)
  %OF = extractvalue { i32, i1 } %13, 1
  %14 = and i32 %11, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = and i32 %15, 1
  %PF = icmp eq i32 %16, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.13, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i32, ptr %RBP_N.28, align 1
  %EAX = add i32 %memload1, 1
  %17 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload1, i32 1)
  %CF2 = extractvalue { i32, i1 } %17, 1
  %18 = and i32 %EAX, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = and i32 %19, 1
  %PF3 = icmp eq i32 %20, 0
  %ZF4 = icmp eq i32 %EAX, 0
  %highbit5 = and i32 -2147483648, %EAX
  %SF6 = icmp ne i32 %highbit5, 0
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload1, i32 1)
  %OF7 = extractvalue { i32, i1 } %21, 1
  store i32 %EAX, ptr %RBP_N.32, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.10
  %memload8 = load i32, ptr %RBP_N.32, align 1
  %22 = load i32, ptr %RBP_N.20, align 1
  %23 = sub i32 %memload8, %22
  %24 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload8, i32 %22)
  %CF9 = extractvalue { i32, i1 } %24, 1
  %ZF10 = icmp eq i32 %23, 0
  %highbit11 = and i32 -2147483648, %23
  %SF12 = icmp ne i32 %highbit11, 0
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload8, i32 %22)
  %OF13 = extractvalue { i32, i1 } %25, 1
  %26 = and i32 %23, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF14 = icmp eq i32 %28, 0
  %CmpSFOF_JGE61 = icmp eq i1 %SF12, %OF13
  br i1 %CmpSFOF_JGE61, label %bb.11, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload15 = load i64, ptr %RBP_N.16, align 1
  %memload16 = load i64, ptr %RBP_N.28, align 1
  %29 = trunc i64 %memload16 to i32
  %RCX = sext i32 %29 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload15, %memref-idxreg
  %30 = inttoptr i64 %memref-basereg to ptr
  %memload17 = load float, ptr %30, align 1
  %memload18 = load i64, ptr %RBP_N.16, align 1
  %memload19 = load i64, ptr %RBP_N.32, align 1
  %31 = trunc i64 %memload19 to i32
  %RCX20 = sext i32 %31 to i64
  %memref-idxreg21 = mul i64 4, %RCX20
  %memref-basereg22 = add i64 %memload18, %memref-idxreg21
  %32 = inttoptr i64 %memref-basereg22 to ptr
  %memload23 = load float, ptr %32, align 1
  %XMM0 = fsub float %memload17, %memload23
  store float %XMM0, ptr %RBP_N.36, align 1
  %memload24 = load float, ptr %RBP_N.36, align 1
  %33 = insertelement <4 x float> zeroinitializer, float %memload24, i64 0
  %34 = bitcast <4 x float> %33 to <4 x float>
  %cmp_operand_1 = extractelement <4 x float> %34, i64 0
  %cmp_operand_2 = extractelement <4 x float> zeroinitializer, i64 0
  %CF25 = fcmp ult float %cmp_operand_1, %cmp_operand_2
  %ZF26 = fcmp ueq float %cmp_operand_1, %cmp_operand_2
  %PF27 = fcmp uno float %cmp_operand_1, %cmp_operand_2
  %CmpCF_JB = icmp eq i1 %CF25, true
  br i1 %CmpCF_JB, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload28 = load float, ptr %RBP_N.36, align 1
  store float %memload28, ptr %stktop_4, align 1
  br label %bb.7

bb.6:                                             ; preds = %bb.4
  %memload29 = load float, ptr %RBP_N.36, align 1
  %EAX30 = bitcast float %memload29 to i32
  %EAX35 = xor i32 %EAX30, -2147483648
  %35 = and i32 %EAX35, 255
  %36 = call i32 @llvm.ctpop.i32(i32 %35)
  %37 = and i32 %36, 1
  %PF31 = icmp eq i32 %37, 0
  %ZF32 = icmp eq i32 %EAX35, 0
  %highbit33 = and i32 -2147483648, %EAX35
  %SF34 = icmp ne i32 %highbit33, 0
  %XMM036 = bitcast i32 %EAX35 to float
  store float %XMM036, ptr %stktop_4, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.5
  %memload37 = load float, ptr %stktop_4, align 1
  %memload38 = load float, ptr %RBP_N.24, align 1
  %38 = insertelement <4 x float> zeroinitializer, float %memload38, i64 0
  %39 = bitcast <4 x float> %38 to <4 x float>
  %40 = insertelement <4 x float> zeroinitializer, float %memload37, i64 0
  %41 = bitcast <4 x float> %40 to <4 x float>
  %cmp_operand_139 = extractelement <4 x float> %39, i64 0
  %cmp_operand_240 = extractelement <4 x float> %41, i64 0
  %CF41 = fcmp ult float %cmp_operand_139, %cmp_operand_240
  %ZF42 = fcmp ueq float %cmp_operand_139, %cmp_operand_240
  %PF43 = fcmp uno float %cmp_operand_139, %cmp_operand_240
  %CFCmp_JBE = icmp eq i1 %CF41, true
  %ZFCmp_JBE = icmp eq i1 %ZF42, true
  %CFAndZF_JBE = or i1 %ZFCmp_JBE, %CFCmp_JBE
  br i1 %CFAndZF_JBE, label %bb.9, label %bb.8

bb.8:                                             ; preds = %bb.7
  store i32 1, ptr %RBP_N.4, align 1
  br label %bb.14

bb.9:                                             ; preds = %bb.7
  br label %bb.10

bb.10:                                            ; preds = %bb.9
  %memload44 = load i32, ptr %RBP_N.32, align 1
  %EAX51 = add i32 %memload44, 1
  %42 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload44, i32 1)
  %CF45 = extractvalue { i32, i1 } %42, 1
  %43 = and i32 %EAX51, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF46 = icmp eq i32 %45, 0
  %ZF47 = icmp eq i32 %EAX51, 0
  %highbit48 = and i32 -2147483648, %EAX51
  %SF49 = icmp ne i32 %highbit48, 0
  %46 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload44, i32 1)
  %OF50 = extractvalue { i32, i1 } %46, 1
  store i32 %EAX51, ptr %RBP_N.32, align 1
  br label %bb.3

bb.11:                                            ; preds = %bb.3
  br label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload52 = load i32, ptr %RBP_N.28, align 1
  %EAX59 = add i32 %memload52, 1
  %47 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload52, i32 1)
  %CF53 = extractvalue { i32, i1 } %47, 1
  %48 = and i32 %EAX59, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48)
  %50 = and i32 %49, 1
  %PF54 = icmp eq i32 %50, 0
  %ZF55 = icmp eq i32 %EAX59, 0
  %highbit56 = and i32 -2147483648, %EAX59
  %SF57 = icmp ne i32 %highbit56, 0
  %51 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload52, i32 1)
  %OF58 = extractvalue { i32, i1 } %51, 1
  store i32 %EAX59, ptr %RBP_N.28, align 1
  br label %bb.1

bb.13:                                            ; preds = %bb.1
  store i32 10, ptr %RBP_N.4, align 1
  br label %bb.14

bb.14:                                            ; preds = %bb.13, %bb.8
  %memload60 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload60
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
