; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i32 %arg1, i32 %arg2, i64 %arg3, i64 %arg4) {
entry:
  %stktop_4 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.28 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.4 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i32 %arg2, ptr %RBP_N.8, align 1
  store i64 %arg3, ptr %RBP_N.16, align 1
  store i64 %arg4, ptr %RBP_N.24, align 1
  %memload = load i64, ptr %RBP_N.24, align 1
  %6 = inttoptr i64 %memload to ptr
  store i32 0, ptr %6, align 1
  %memload1 = load i32, ptr %RBP_N.8, align 1
  %7 = load i32, ptr %RBP_N.4, align 1
  %8 = sub i32 %memload1, %7
  %9 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload1, i32 %7)
  %CF = extractvalue { i32, i1 } %9, 1
  %ZF = icmp eq i32 %8, 0
  %highbit = and i32 -2147483648, %8
  %SF = icmp ne i32 %highbit, 0
  %10 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload1, i32 %7)
  %OF = extractvalue { i32, i1 } %10, 1
  %11 = and i32 %8, 255
  %12 = call i32 @llvm.ctpop.i32(i32 %11)
  %13 = and i32 %12, 1
  %PF = icmp eq i32 %13, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %memload2 = load i32, ptr %RBP_N.4, align 1
  store i32 %memload2, ptr %RBP_N.28, align 1
  %memload3 = load i32, ptr %RBP_N.8, align 1
  store i32 %memload3, ptr %RBP_N.4, align 1
  %memload4 = load i32, ptr %RBP_N.28, align 1
  store i32 %memload4, ptr %RBP_N.8, align 1
  br label %bb.2

bb.2:                                             ; preds = %bb.1, %entry
  %memload5 = load i32, ptr %RBP_N.4, align 1
  store i32 %memload5, ptr %stktop_4, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.8
  %memload6 = load i32, ptr %stktop_4, align 1
  %14 = load i32, ptr %RBP_N.8, align 1
  %15 = sub i32 %memload6, %14
  %16 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload6, i32 %14)
  %CF7 = extractvalue { i32, i1 } %16, 1
  %ZF8 = icmp eq i32 %15, 0
  %highbit9 = and i32 -2147483648, %15
  %SF10 = icmp ne i32 %highbit9, 0
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload6, i32 %14)
  %OF11 = extractvalue { i32, i1 } %17, 1
  %18 = and i32 %15, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = and i32 %19, 1
  %PF12 = icmp eq i32 %20, 0
  %ZFCmp_JG = icmp eq i1 %ZF8, false
  %SFOFCmp_JG = icmp eq i1 %SF10, %OF11
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.9, label %bb.4

bb.4:                                             ; preds = %bb.3
  %21 = load i32, ptr %stktop_4, align 1
  %22 = zext i32 %21 to i64
  %23 = zext i32 10 to i64
  %24 = sub i64 %22, %23
  %25 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %22, i64 %23)
  %CF13 = extractvalue { i64, i1 } %25, 1
  %ZF14 = icmp eq i64 %24, 0
  %highbit15 = and i64 -9223372036854775808, %24
  %SF16 = icmp ne i64 %highbit15, 0
  %26 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %22, i64 %23)
  %OF17 = extractvalue { i64, i1 } %26, 1
  %27 = and i64 %24, 255
  %28 = call i64 @llvm.ctpop.i64(i64 %27)
  %29 = and i64 %28, 1
  %PF18 = icmp eq i64 %29, 0
  %CmpSFOF_JGE45 = icmp eq i1 %SF16, %OF17
  br i1 %CmpSFOF_JGE45, label %bb.7, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload19 = load i32, ptr %stktop_4, align 1
  %30 = sext i32 %memload19 to i64
  %31 = lshr i64 %30, 32
  %EDX = trunc i64 %31 to i32
  %32 = sext i32 %memload19 to i64
  %33 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %33, 32
  %dividend = or i64 %div_hb_ls, %32
  %34 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %34
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %34
  %EDX20 = trunc i64 %div_r to i32
  %35 = sub i32 %EDX20, 0
  %36 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX20, i32 0)
  %CF21 = extractvalue { i32, i1 } %36, 1
  %ZF22 = icmp eq i32 %35, 0
  %highbit23 = and i32 -2147483648, %35
  %SF24 = icmp ne i32 %highbit23, 0
  %37 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX20, i32 0)
  %OF25 = extractvalue { i32, i1 } %37, 1
  %38 = and i32 %35, 255
  %39 = call i32 @llvm.ctpop.i32(i32 %38)
  %40 = and i32 %39, 1
  %PF26 = icmp eq i32 %40, 0
  %CmpZF_JNE = icmp eq i1 %ZF22, false
  br i1 %CmpZF_JNE, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload27 = load i32, ptr %stktop_4, align 1
  %memload28 = load i64, ptr %RBP_N.16, align 1
  %memload29 = load i64, ptr %RBP_N.24, align 1
  %41 = inttoptr i64 %memload29 to ptr
  %memload30 = load i32, ptr %41, align 1
  %EDI = add i32 %memload30, 1
  %42 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload30, i32 1)
  %CF31 = extractvalue { i32, i1 } %42, 1
  %43 = and i32 %EDI, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF32 = icmp eq i32 %45, 0
  %ZF33 = icmp eq i32 %EDI, 0
  %highbit34 = and i32 -2147483648, %EDI
  %SF35 = icmp ne i32 %highbit34, 0
  %46 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload30, i32 1)
  %OF36 = extractvalue { i32, i1 } %46, 1
  %47 = inttoptr i64 %memload29 to ptr
  store i32 %EDI, ptr %47, align 1
  %RCX = sext i32 %memload30 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload28, %memref-idxreg
  %48 = inttoptr i64 %memref-basereg to ptr
  store i32 %memload27, ptr %48, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.5, %bb.4
  br label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload37 = load i32, ptr %stktop_4, align 1
  %EAX44 = add i32 %memload37, 1
  %49 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload37, i32 1)
  %CF38 = extractvalue { i32, i1 } %49, 1
  %50 = and i32 %EAX44, 255
  %51 = call i32 @llvm.ctpop.i32(i32 %50)
  %52 = and i32 %51, 1
  %PF39 = icmp eq i32 %52, 0
  %ZF40 = icmp eq i32 %EAX44, 0
  %highbit41 = and i32 -2147483648, %EAX44
  %SF42 = icmp ne i32 %highbit41, 0
  %53 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload37, i32 1)
  %OF43 = extractvalue { i32, i1 } %53, 1
  store i32 %EAX44, ptr %stktop_4, align 1
  br label %bb.3

bb.9:                                             ; preds = %bb.3
  ret i32 %memload6
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
