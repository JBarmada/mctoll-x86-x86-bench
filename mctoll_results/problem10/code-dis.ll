; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  %7 = load i32, ptr %RBP_N.20, align 1
  %8 = zext i32 %7 to i64
  %9 = zext i32 0 to i64
  %10 = sub i64 %8, %9
  %11 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %8, i64 %9)
  %CF = extractvalue { i64, i1 } %11, 1
  %ZF = icmp eq i64 %10, 0
  %highbit = and i64 -9223372036854775808, %10
  %SF = icmp ne i64 %highbit, 0
  %12 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %8, i64 %9)
  %OF = extractvalue { i64, i1 } %12, 1
  %13 = and i64 %10, 255
  %14 = call i64 @llvm.ctpop.i64(i64 %13)
  %15 = and i64 %14, 1
  %PF = icmp eq i64 %15, 0
  %ZFCmp_JG = icmp eq i1 %ZF, false
  %SFOFCmp_JG = icmp eq i1 %SF, %OF
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %16 = sext i32 0 to i64
  store i64 %16, ptr %RBP_N.8, align 1
  br label %bb.10

bb.2:                                             ; preds = %entry
  %memload = load i64, ptr %RBP_N.20, align 1
  %17 = trunc i64 %memload to i32
  %RDI = sext i32 %17 to i64
  %RDI4 = shl i64 %RDI, 2
  %ZF1 = icmp eq i64 %RDI4, 0
  %highbit2 = and i64 -9223372036854775808, %RDI4
  %SF3 = icmp ne i64 %highbit2, 0
  %18 = call ptr @malloc(i64 %RDI4)
  %RAX = ptrtoint ptr %18 to i64
  store i64 %RAX, ptr %RBP_N.32, align 1
  %19 = load i64, ptr %RBP_N.32, align 1
  %20 = sub i64 %19, 0
  %21 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %19, i64 0)
  %CF5 = extractvalue { i64, i1 } %21, 1
  %ZF6 = icmp eq i64 %20, 0
  %highbit7 = and i64 -9223372036854775808, %20
  %SF8 = icmp ne i64 %highbit7, 0
  %22 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %19, i64 0)
  %OF9 = extractvalue { i64, i1 } %22, 1
  %23 = and i64 %20, 255
  %24 = call i64 @llvm.ctpop.i64(i64 %23)
  %25 = and i64 %24, 1
  %PF10 = icmp eq i64 %25, 0
  %CmpZF_JNE = icmp eq i1 %ZF6, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %26 = sext i32 0 to i64
  store i64 %26, ptr %RBP_N.8, align 1
  br label %bb.10

bb.4:                                             ; preds = %bb.2
  %memload11 = load i64, ptr %RBP_N.16, align 1
  %27 = inttoptr i64 %memload11 to ptr
  %memload12 = load i32, ptr %27, align 1
  store i32 %memload12, ptr %RBP_N.36, align 1
  store i32 0, ptr %RBP_N.40, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.8
  %memload13 = load i32, ptr %RBP_N.40, align 1
  %28 = load i32, ptr %RBP_N.20, align 1
  %29 = sub i32 %memload13, %28
  %30 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload13, i32 %28)
  %CF14 = extractvalue { i32, i1 } %30, 1
  %ZF15 = icmp eq i32 %29, 0
  %highbit16 = and i32 -2147483648, %29
  %SF17 = icmp ne i32 %highbit16, 0
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload13, i32 %28)
  %OF18 = extractvalue { i32, i1 } %31, 1
  %32 = and i32 %29, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = and i32 %33, 1
  %PF19 = icmp eq i32 %34, 0
  %CmpSFOF_JGE = icmp eq i1 %SF17, %OF18
  br i1 %CmpSFOF_JGE, label %bb.9, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload20 = load i64, ptr %RBP_N.16, align 1
  %memload21 = load i64, ptr %RBP_N.40, align 1
  %35 = trunc i64 %memload21 to i32
  %RCX = sext i32 %35 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload20, %memref-idxreg
  %36 = inttoptr i64 %memref-basereg to ptr
  %memload22 = load i32, ptr %36, align 1
  %37 = load i32, ptr %RBP_N.36, align 1
  %38 = sub i32 %memload22, %37
  %39 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload22, i32 %37)
  %CF23 = extractvalue { i32, i1 } %39, 1
  %ZF24 = icmp eq i32 %38, 0
  %highbit25 = and i32 -2147483648, %38
  %SF26 = icmp ne i32 %highbit25, 0
  %40 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload22, i32 %37)
  %OF27 = extractvalue { i32, i1 } %40, 1
  %41 = and i32 %38, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41)
  %43 = and i32 %42, 1
  %PF28 = icmp eq i32 %43, 0
  %CmpZF_JLE = icmp eq i1 %ZF24, true
  %CmpOF_JLE = icmp ne i1 %SF26, %OF27
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload29 = load i64, ptr %RBP_N.16, align 1
  %memload30 = load i64, ptr %RBP_N.40, align 1
  %44 = trunc i64 %memload30 to i32
  %RCX31 = sext i32 %44 to i64
  %memref-idxreg32 = mul i64 4, %RCX31
  %memref-basereg33 = add i64 %memload29, %memref-idxreg32
  %45 = inttoptr i64 %memref-basereg33 to ptr
  %memload34 = load i32, ptr %45, align 1
  store i32 %memload34, ptr %RBP_N.36, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.6
  %memload35 = load i32, ptr %RBP_N.36, align 1
  %memload36 = load i64, ptr %RBP_N.32, align 1
  %memload37 = load i64, ptr %RBP_N.40, align 1
  %46 = trunc i64 %memload37 to i32
  %RCX38 = sext i32 %46 to i64
  %memref-idxreg39 = mul i64 4, %RCX38
  %memref-basereg40 = add i64 %memload36, %memref-idxreg39
  %47 = inttoptr i64 %memref-basereg40 to ptr
  store i32 %memload35, ptr %47, align 1
  %memload41 = load i32, ptr %RBP_N.40, align 1
  %EAX = add i32 %memload41, 1
  %48 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload41, i32 1)
  %CF42 = extractvalue { i32, i1 } %48, 1
  %49 = and i32 %EAX, 255
  %50 = call i32 @llvm.ctpop.i32(i32 %49)
  %51 = and i32 %50, 1
  %PF43 = icmp eq i32 %51, 0
  %ZF44 = icmp eq i32 %EAX, 0
  %highbit45 = and i32 -2147483648, %EAX
  %SF46 = icmp ne i32 %highbit45, 0
  %52 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload41, i32 1)
  %OF47 = extractvalue { i32, i1 } %52, 1
  store i32 %EAX, ptr %RBP_N.40, align 1
  br label %bb.5

bb.9:                                             ; preds = %bb.5
  %memload48 = load i64, ptr %RBP_N.32, align 1
  store i64 %memload48, ptr %RBP_N.8, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.3, %bb.1
  %memload49 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload49
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

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
