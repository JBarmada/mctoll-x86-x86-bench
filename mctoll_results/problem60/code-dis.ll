; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i32 %arg1) {
entry:
  %stktop_1 = alloca i8, i32 17, align 1
  %tos = ptrtoint ptr %stktop_1 to i64
  %0 = add i64 %tos, 9
  %RBP_N.8 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 13
  %RBP_N.4 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i32 2, ptr %RBP_N.8, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.9
  %memload = load i32, ptr %RBP_N.8, align 1
  %memload1 = load i32, ptr %RBP_N.8, align 1
  %EAX = mul i32 %memload, %memload1
  %3 = load i32, ptr %RBP_N.4, align 1
  %4 = sub i32 %EAX, %3
  %5 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 %3)
  %CF = extractvalue { i32, i1 } %5, 1
  %ZF = icmp eq i32 %4, 0
  %highbit = and i32 -2147483648, %4
  %SF = icmp ne i32 %highbit, 0
  %6 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 %3)
  %OF = extractvalue { i32, i1 } %6, 1
  %7 = and i32 %4, 255
  %8 = call i32 @llvm.ctpop.i32(i32 %7)
  %9 = and i32 %8, 1
  %PF = icmp eq i32 %9, 0
  %ZFCmp_JG = icmp eq i1 %ZF, false
  %SFOFCmp_JG = icmp eq i1 %SF, %OF
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.10, label %bb.2

bb.2:                                             ; preds = %bb.1
  br label %bb.3

bb.3:                                             ; preds = %bb.7, %bb.2
  %memload2 = load i32, ptr %RBP_N.4, align 1
  %10 = sext i32 %memload2 to i64
  %11 = lshr i64 %10, 32
  %EDX = trunc i64 %11 to i32
  %memload3 = load i32, ptr %RBP_N.8, align 1
  %12 = sext i32 %memload2 to i64
  %13 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %13, 32
  %dividend = or i64 %div_hb_ls, %12
  %14 = sext i32 %memload3 to i64
  %div_q = sdiv i64 %dividend, %14
  %EAX4 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %14
  %EDX5 = trunc i64 %div_r to i32
  %15 = sub i32 %EDX5, 0
  %16 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX5, i32 0)
  %CF6 = extractvalue { i32, i1 } %16, 1
  %ZF7 = icmp eq i32 %15, 0
  %highbit8 = and i32 -2147483648, %15
  %SF9 = icmp ne i32 %highbit8, 0
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX5, i32 0)
  %OF10 = extractvalue { i32, i1 } %17, 1
  %18 = and i32 %15, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = and i32 %19, 1
  %PF11 = icmp eq i32 %20, 0
  %21 = trunc i32 0 to i8
  store i8 %21, ptr %stktop_1, align 1
  %CmpZF_JNE = icmp eq i1 %ZF7, false
  br i1 %CmpZF_JNE, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload12 = load i32, ptr %RBP_N.4, align 1
  %22 = load i32, ptr %RBP_N.8, align 1
  %23 = sub i32 %memload12, %22
  %24 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload12, i32 %22)
  %CF13 = extractvalue { i32, i1 } %24, 1
  %ZF14 = icmp eq i32 %23, 0
  %highbit15 = and i32 -2147483648, %23
  %SF16 = icmp ne i32 %highbit15, 0
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload12, i32 %22)
  %OF17 = extractvalue { i32, i1 } %25, 1
  %26 = and i32 %23, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF18 = icmp eq i32 %28, 0
  %ZFCmp_CMOVG = icmp eq i1 %ZF14, false
  %SFOFCmp_CMOVG = icmp eq i1 %SF16, %OF17
  %Cond_CMOVG = and i1 %ZFCmp_CMOVG, %SFOFCmp_CMOVG
  %29 = zext i1 %Cond_CMOVG to i8
  store i8 %29, ptr %stktop_1, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3
  %memload19 = load i8, ptr %stktop_1, align 1
  %30 = and i8 %memload19, 1
  %31 = call i8 @llvm.ctpop.i8(i8 %30)
  %32 = and i8 %31, 1
  %PF20 = icmp eq i8 %32, 0
  %ZF21 = icmp eq i8 %30, 0
  %highbit22 = and i8 -128, %30
  %SF23 = icmp ne i8 %highbit22, 0
  %CmpZF_JNE42 = icmp eq i1 %ZF21, false
  br i1 %CmpZF_JNE42, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  br label %bb.8

bb.8:                                             ; preds = %bb.6
  br label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload24 = load i32, ptr %RBP_N.8, align 1
  %EAX31 = add i32 %memload24, 1
  %33 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload24, i32 1)
  %CF25 = extractvalue { i32, i1 } %33, 1
  %34 = and i32 %EAX31, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = and i32 %35, 1
  %PF26 = icmp eq i32 %36, 0
  %ZF27 = icmp eq i32 %EAX31, 0
  %highbit28 = and i32 -2147483648, %EAX31
  %SF29 = icmp ne i32 %highbit28, 0
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload24, i32 1)
  %OF30 = extractvalue { i32, i1 } %37, 1
  store i32 %EAX31, ptr %RBP_N.8, align 1
  br label %bb.1

bb.7:                                             ; preds = %bb.5
  %memload32 = load i32, ptr %RBP_N.4, align 1
  %38 = sext i32 %memload32 to i64
  %39 = lshr i64 %38, 32
  %EDX33 = trunc i64 %39 to i32
  %memload34 = load i32, ptr %RBP_N.8, align 1
  %40 = sext i32 %memload32 to i64
  %41 = sext i32 %EDX33 to i64
  %div_hb_ls35 = shl nuw i64 %41, 32
  %dividend36 = or i64 %div_hb_ls35, %40
  %42 = sext i32 %memload34 to i64
  %div_q37 = sdiv i64 %dividend36, %42
  %EAX38 = trunc i64 %div_q37 to i32
  %div_r39 = srem i64 %dividend36, %42
  %EDX40 = trunc i64 %div_r39 to i32
  store i32 %EAX38, ptr %RBP_N.4, align 1
  br label %bb.3

bb.10:                                            ; preds = %bb.1
  %memload41 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload41
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctpop.i8(i8) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
