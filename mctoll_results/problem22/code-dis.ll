; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_4 = alloca i8, i32 36, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.12 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 28
  %RBP_N.8 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  %6 = inttoptr i64 %memload to ptr
  %memload1 = load float, ptr %6, align 1
  store float %memload1, ptr %RBP_N.16, align 1
  %memload2 = load i64, ptr %RBP_N.8, align 1
  %7 = inttoptr i64 %memload2 to ptr
  %memload3 = load float, ptr %7, align 1
  store float %memload3, ptr %RBP_N.20, align 1
  store i32 1, ptr %RBP_N.24, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.7
  %memload4 = load i32, ptr %RBP_N.24, align 1
  %8 = load i32, ptr %RBP_N.12, align 1
  %9 = sub i32 %memload4, %8
  %10 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload4, i32 %8)
  %CF = extractvalue { i32, i1 } %10, 1
  %ZF = icmp eq i32 %9, 0
  %highbit = and i32 -2147483648, %9
  %SF = icmp ne i32 %highbit, 0
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload4, i32 %8)
  %OF = extractvalue { i32, i1 } %11, 1
  %12 = and i32 %9, 255
  %13 = call i32 @llvm.ctpop.i32(i32 %12)
  %14 = and i32 %13, 1
  %PF = icmp eq i32 %14, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.8, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload5 = load i64, ptr %RBP_N.8, align 1
  %memload6 = load i64, ptr %RBP_N.24, align 1
  %15 = trunc i64 %memload6 to i32
  %RCX = sext i32 %15 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload5, %memref-idxreg
  %16 = inttoptr i64 %memref-basereg to ptr
  %memload7 = load float, ptr %16, align 1
  %memload8 = load float, ptr %RBP_N.16, align 1
  %17 = insertelement <4 x float> zeroinitializer, float %memload8, i64 0
  %18 = bitcast <4 x float> %17 to <4 x float>
  %19 = insertelement <4 x float> zeroinitializer, float %memload7, i64 0
  %20 = bitcast <4 x float> %19 to <4 x float>
  %cmp_operand_1 = extractelement <4 x float> %18, i64 0
  %cmp_operand_2 = extractelement <4 x float> %20, i64 0
  %CF9 = fcmp ult float %cmp_operand_1, %cmp_operand_2
  %ZF10 = fcmp ueq float %cmp_operand_1, %cmp_operand_2
  %PF11 = fcmp uno float %cmp_operand_1, %cmp_operand_2
  %CFCmp_JBE = icmp eq i1 %CF9, true
  %ZFCmp_JBE = icmp eq i1 %ZF10, true
  %CFAndZF_JBE = or i1 %ZFCmp_JBE, %CFCmp_JBE
  br i1 %CFAndZF_JBE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload12 = load i64, ptr %RBP_N.8, align 1
  %memload13 = load i64, ptr %RBP_N.24, align 1
  %21 = trunc i64 %memload13 to i32
  %RCX14 = sext i32 %21 to i64
  %memref-idxreg15 = mul i64 4, %RCX14
  %memref-basereg16 = add i64 %memload12, %memref-idxreg15
  %22 = inttoptr i64 %memref-basereg16 to ptr
  %memload17 = load float, ptr %22, align 1
  store float %memload17, ptr %RBP_N.16, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  %memload18 = load i64, ptr %RBP_N.8, align 1
  %memload19 = load i64, ptr %RBP_N.24, align 1
  %23 = trunc i64 %memload19 to i32
  %RCX20 = sext i32 %23 to i64
  %memref-idxreg21 = mul i64 4, %RCX20
  %memref-basereg22 = add i64 %memload18, %memref-idxreg21
  %24 = inttoptr i64 %memref-basereg22 to ptr
  %memload23 = load float, ptr %24, align 1
  %25 = insertelement <4 x float> zeroinitializer, float %memload23, i64 0
  %26 = bitcast <4 x float> %25 to <4 x float>
  %memload24 = load <4 x float>, ptr %RBP_N.20, align 1
  %cmp_operand_125 = extractelement <4 x float> %26, i64 0
  %cmp_operand_226 = extractelement <4 x float> %memload24, i64 0
  %CF27 = fcmp ult float %cmp_operand_125, %cmp_operand_226
  %ZF28 = fcmp ueq float %cmp_operand_125, %cmp_operand_226
  %PF29 = fcmp uno float %cmp_operand_125, %cmp_operand_226
  %CFCmp_JBE73 = icmp eq i1 %CF27, true
  %ZFCmp_JBE74 = icmp eq i1 %ZF28, true
  %CFAndZF_JBE75 = or i1 %ZFCmp_JBE74, %CFCmp_JBE73
  br i1 %CFAndZF_JBE75, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload30 = load i64, ptr %RBP_N.8, align 1
  %memload31 = load i64, ptr %RBP_N.24, align 1
  %27 = trunc i64 %memload31 to i32
  %RCX32 = sext i32 %27 to i64
  %memref-idxreg33 = mul i64 4, %RCX32
  %memref-basereg34 = add i64 %memload30, %memref-idxreg33
  %28 = inttoptr i64 %memref-basereg34 to ptr
  %memload35 = load float, ptr %28, align 1
  store float %memload35, ptr %RBP_N.20, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload36 = load i32, ptr %RBP_N.24, align 1
  %EAX = add i32 %memload36, 1
  %29 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload36, i32 1)
  %CF37 = extractvalue { i32, i1 } %29, 1
  %30 = and i32 %EAX, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = and i32 %31, 1
  %PF38 = icmp eq i32 %32, 0
  %ZF39 = icmp eq i32 %EAX, 0
  %highbit40 = and i32 -2147483648, %EAX
  %SF41 = icmp ne i32 %highbit40, 0
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload36, i32 1)
  %OF42 = extractvalue { i32, i1 } %33, 1
  store i32 %EAX, ptr %RBP_N.24, align 1
  br label %bb.1

bb.8:                                             ; preds = %bb.1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.10
  %memload43 = load i32, ptr %stktop_4, align 1
  %34 = load i32, ptr %RBP_N.12, align 1
  %35 = sub i32 %memload43, %34
  %36 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload43, i32 %34)
  %CF44 = extractvalue { i32, i1 } %36, 1
  %ZF45 = icmp eq i32 %35, 0
  %highbit46 = and i32 -2147483648, %35
  %SF47 = icmp ne i32 %highbit46, 0
  %37 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload43, i32 %34)
  %OF48 = extractvalue { i32, i1 } %37, 1
  %38 = and i32 %35, 255
  %39 = call i32 @llvm.ctpop.i32(i32 %38)
  %40 = and i32 %39, 1
  %PF49 = icmp eq i32 %40, 0
  %CmpSFOF_JGE76 = icmp eq i1 %SF47, %OF48
  br i1 %CmpSFOF_JGE76, label %bb.11, label %bb.10

bb.10:                                            ; preds = %bb.9
  %memload50 = load i64, ptr %RBP_N.8, align 1
  %memload51 = load i64, ptr %stktop_4, align 1
  %41 = trunc i64 %memload51 to i32
  %RCX52 = sext i32 %41 to i64
  %memref-idxreg53 = mul i64 4, %RCX52
  %memref-basereg54 = add i64 %memload50, %memref-idxreg53
  %42 = inttoptr i64 %memref-basereg54 to ptr
  %memload55 = load float, ptr %42, align 1
  %memload56 = load float, ptr %RBP_N.16, align 1
  %XMM0 = fsub float %memload55, %memload56
  %memload57 = load float, ptr %RBP_N.20, align 1
  %memload58 = load float, ptr %RBP_N.16, align 1
  %XMM1 = fsub float %memload57, %memload58
  %XMM059 = fdiv float %XMM0, %XMM1
  %memload60 = load i64, ptr %RBP_N.8, align 1
  %memload61 = load i64, ptr %stktop_4, align 1
  %43 = trunc i64 %memload61 to i32
  %RCX62 = sext i32 %43 to i64
  %memref-idxreg63 = mul i64 4, %RCX62
  %memref-basereg64 = add i64 %memload60, %memref-idxreg63
  %44 = inttoptr i64 %memref-basereg64 to ptr
  store float %XMM059, ptr %44, align 1
  %memload65 = load i32, ptr %stktop_4, align 1
  %EAX72 = add i32 %memload65, 1
  %45 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload65, i32 1)
  %CF66 = extractvalue { i32, i1 } %45, 1
  %46 = and i32 %EAX72, 255
  %47 = call i32 @llvm.ctpop.i32(i32 %46)
  %48 = and i32 %47, 1
  %PF67 = icmp eq i32 %48, 0
  %ZF68 = icmp eq i32 %EAX72, 0
  %highbit69 = and i32 -2147483648, %EAX72
  %SF70 = icmp ne i32 %highbit69, 0
  %49 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload65, i32 1)
  %OF71 = extractvalue { i32, i1 } %49, 1
  store i32 %EAX72, ptr %stktop_4, align 1
  br label %bb.9

bb.11:                                            ; preds = %bb.9
  ret i32 %memload43
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
