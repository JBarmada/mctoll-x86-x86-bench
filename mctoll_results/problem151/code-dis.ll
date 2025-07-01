; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i32 %arg1, i32 %arg2, i32 %arg3) {
entry:
  %stktop_4 = alloca i8, i32 32, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.20 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.16 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.12 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.8 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 28
  %RBP_N.4 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i32 %arg3, ptr %RBP_N.16, align 1
  store i32 1, ptr %RBP_N.20, align 1
  %6 = load i32, ptr %RBP_N.8, align 1
  %7 = zext i32 %6 to i64
  %8 = zext i32 2 to i64
  %9 = sub i64 %7, %8
  %10 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %7, i64 %8)
  %CF = extractvalue { i64, i1 } %10, 1
  %ZF = icmp eq i64 %9, 0
  %highbit = and i64 -9223372036854775808, %9
  %SF = icmp ne i64 %highbit, 0
  %11 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %7, i64 %8)
  %OF = extractvalue { i64, i1 } %11, 1
  %12 = and i64 %9, 255
  %13 = call i64 @llvm.ctpop.i64(i64 %12)
  %14 = and i64 %13, 1
  %PF = icmp eq i64 %14, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i32 0, ptr %RBP_N.20, align 1
  br label %bb.2

bb.2:                                             ; preds = %bb.1, %entry
  store i32 2, ptr %stktop_4, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %memload = load i32, ptr %stktop_4, align 1
  %memload1 = load i32, ptr %stktop_4, align 1
  %EAX = mul i32 %memload, %memload1
  %15 = load i32, ptr %RBP_N.8, align 1
  %16 = sub i32 %EAX, %15
  %17 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 %15)
  %CF2 = extractvalue { i32, i1 } %17, 1
  %ZF3 = icmp eq i32 %16, 0
  %highbit4 = and i32 -2147483648, %16
  %SF5 = icmp ne i32 %highbit4, 0
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 %15)
  %OF6 = extractvalue { i32, i1 } %18, 1
  %19 = and i32 %16, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = and i32 %20, 1
  %PF7 = icmp eq i32 %21, 0
  %ZFCmp_JG = icmp eq i1 %ZF3, false
  %SFOFCmp_JG = icmp eq i1 %SF5, %OF6
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload8 = load i32, ptr %RBP_N.8, align 1
  %22 = sext i32 %memload8 to i64
  %23 = lshr i64 %22, 32
  %EDX = trunc i64 %23 to i32
  %memload9 = load i32, ptr %stktop_4, align 1
  %24 = sext i32 %memload8 to i64
  %25 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %25, 32
  %dividend = or i64 %div_hb_ls, %24
  %26 = sext i32 %memload9 to i64
  %div_q = sdiv i64 %dividend, %26
  %EAX10 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %26
  %EDX11 = trunc i64 %div_r to i32
  %27 = sub i32 %EDX11, 0
  %28 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX11, i32 0)
  %CF12 = extractvalue { i32, i1 } %28, 1
  %ZF13 = icmp eq i32 %27, 0
  %highbit14 = and i32 -2147483648, %27
  %SF15 = icmp ne i32 %highbit14, 0
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX11, i32 0)
  %OF16 = extractvalue { i32, i1 } %29, 1
  %30 = and i32 %27, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = and i32 %31, 1
  %PF17 = icmp eq i32 %32, 0
  %CmpZF_JNE = icmp eq i1 %ZF13, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  store i32 0, ptr %RBP_N.20, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload18 = load i32, ptr %stktop_4, align 1
  %EAX25 = add i32 %memload18, 1
  %33 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload18, i32 1)
  %CF19 = extractvalue { i32, i1 } %33, 1
  %34 = and i32 %EAX25, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = and i32 %35, 1
  %PF20 = icmp eq i32 %36, 0
  %ZF21 = icmp eq i32 %EAX25, 0
  %highbit22 = and i32 -2147483648, %EAX25
  %SF23 = icmp ne i32 %highbit22, 0
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload18, i32 1)
  %OF24 = extractvalue { i32, i1 } %37, 1
  store i32 %EAX25, ptr %stktop_4, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.3
  %38 = load i32, ptr %RBP_N.20, align 1
  %39 = zext i32 %38 to i64
  %40 = zext i32 0 to i64
  %41 = sub i64 %39, %40
  %42 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %39, i64 %40)
  %CF26 = extractvalue { i64, i1 } %42, 1
  %ZF27 = icmp eq i64 %41, 0
  %highbit28 = and i64 -9223372036854775808, %41
  %SF29 = icmp ne i64 %highbit28, 0
  %43 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %39, i64 %40)
  %OF30 = extractvalue { i64, i1 } %43, 1
  %44 = and i64 %41, 255
  %45 = call i64 @llvm.ctpop.i64(i64 %44)
  %46 = and i64 %45, 1
  %PF31 = icmp eq i64 %46, 0
  %CmpZF_JE = icmp eq i1 %ZF27, true
  br i1 %CmpZF_JE, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload32 = load i32, ptr %RBP_N.12, align 1
  store i32 %memload32, ptr %RBP_N.4, align 1
  br label %bb.11

bb.10:                                            ; preds = %bb.8
  %memload33 = load i32, ptr %RBP_N.16, align 1
  store i32 %memload33, ptr %RBP_N.4, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.9
  %memload34 = load i32, ptr %RBP_N.4, align 1
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
