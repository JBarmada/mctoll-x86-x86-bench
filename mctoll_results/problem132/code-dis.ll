; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i32 %arg1) {
entry:
  %stktop_4 = alloca i8, i32 28, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.16 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.12 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.8 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.4 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %4 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i32 1, ptr %RBP_N.8, align 1
  store i32 0, ptr %RBP_N.12, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.4
  %5 = load i32, ptr %RBP_N.4, align 1
  %6 = zext i32 %5 to i64
  %7 = zext i32 0 to i64
  %8 = sub i64 %6, %7
  %9 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %6, i64 %7)
  %CF = extractvalue { i64, i1 } %9, 1
  %ZF = icmp eq i64 %8, 0
  %highbit = and i64 -9223372036854775808, %8
  %SF = icmp ne i64 %highbit, 0
  %10 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %6, i64 %7)
  %OF = extractvalue { i64, i1 } %10, 1
  %11 = and i64 %8, 255
  %12 = call i64 @llvm.ctpop.i64(i64 %11)
  %13 = and i64 %12, 1
  %PF = icmp eq i64 %13, 0
  %CmpZF_JLE = icmp eq i1 %ZF, true
  %CmpOF_JLE = icmp ne i1 %SF, %OF
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.5, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload = load i32, ptr %RBP_N.4, align 1
  %14 = sext i32 %memload to i64
  %15 = lshr i64 %14, 32
  %EDX = trunc i64 %15 to i32
  %16 = sext i32 %memload to i64
  %17 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %17, 32
  %dividend = or i64 %div_hb_ls, %16
  %18 = sext i32 10 to i64
  %div_q = sdiv i64 %dividend, %18
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %18
  %EDX1 = trunc i64 %div_r to i32
  store i32 %EDX1, ptr %RBP_N.16, align 1
  %memload2 = load i32, ptr %RBP_N.16, align 1
  %19 = sext i32 %memload2 to i64
  %20 = lshr i64 %19, 32
  %EDX3 = trunc i64 %20 to i32
  %21 = sext i32 %memload2 to i64
  %22 = sext i32 %EDX3 to i64
  %div_hb_ls4 = shl nuw i64 %22, 32
  %dividend5 = or i64 %div_hb_ls4, %21
  %23 = sext i32 2 to i64
  %div_q6 = sdiv i64 %dividend5, %23
  %EAX7 = trunc i64 %div_q6 to i32
  %div_r8 = srem i64 %dividend5, %23
  %EDX9 = trunc i64 %div_r8 to i32
  %24 = sub i32 %EDX9, 1
  %25 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX9, i32 1)
  %CF10 = extractvalue { i32, i1 } %25, 1
  %ZF11 = icmp eq i32 %24, 0
  %highbit12 = and i32 -2147483648, %24
  %SF13 = icmp ne i32 %highbit12, 0
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX9, i32 1)
  %OF14 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %24, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF15 = icmp eq i32 %29, 0
  %CmpZF_JNE = icmp eq i1 %ZF11, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  store i32 1, ptr %RBP_N.12, align 1
  %memload16 = load i32, ptr %RBP_N.16, align 1
  %memload17 = load i32, ptr %RBP_N.8, align 1
  %EAX18 = mul i32 %memload16, %memload17
  store i32 %EAX18, ptr %RBP_N.8, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  %memload19 = load i32, ptr %RBP_N.4, align 1
  %30 = sext i32 %memload19 to i64
  %31 = lshr i64 %30, 32
  %EDX20 = trunc i64 %31 to i32
  %32 = sext i32 %memload19 to i64
  %33 = sext i32 %EDX20 to i64
  %div_hb_ls21 = shl nuw i64 %33, 32
  %dividend22 = or i64 %div_hb_ls21, %32
  %34 = sext i32 10 to i64
  %div_q23 = sdiv i64 %dividend22, %34
  %EAX24 = trunc i64 %div_q23 to i32
  %div_r25 = srem i64 %dividend22, %34
  %EDX26 = trunc i64 %div_r25 to i32
  store i32 %EAX24, ptr %RBP_N.4, align 1
  br label %bb.1

bb.5:                                             ; preds = %bb.1
  %35 = load i32, ptr %RBP_N.12, align 1
  %36 = zext i32 %35 to i64
  %37 = zext i32 0 to i64
  %38 = sub i64 %36, %37
  %39 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %36, i64 %37)
  %CF27 = extractvalue { i64, i1 } %39, 1
  %ZF28 = icmp eq i64 %38, 0
  %highbit29 = and i64 -9223372036854775808, %38
  %SF30 = icmp ne i64 %highbit29, 0
  %40 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %36, i64 %37)
  %OF31 = extractvalue { i64, i1 } %40, 1
  %41 = and i64 %38, 255
  %42 = call i64 @llvm.ctpop.i64(i64 %41)
  %43 = and i64 %42, 1
  %PF32 = icmp eq i64 %43, 0
  %CmpZF_JE = icmp eq i1 %ZF28, true
  br i1 %CmpZF_JE, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload33 = load i32, ptr %RBP_N.8, align 1
  store i32 %memload33, ptr %stktop_4, align 1
  br label %bb.8

bb.7:                                             ; preds = %bb.5
  store i32 0, ptr %stktop_4, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.6
  %memload34 = load i32, ptr %stktop_4, align 1
  ret i32 %memload34
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

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
