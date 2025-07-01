; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i32 %arg1) {
entry:
  %stktop_4 = alloca i8, i32 20, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.8 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.4 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.8, align 1
  store i32 2, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %memload = load i32, ptr %stktop_4, align 1
  %memload1 = load i32, ptr %stktop_4, align 1
  %EAX = mul i32 %memload, %memload1
  %3 = load i32, ptr %RBP_N.8, align 1
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
  br i1 %ZFAndSFOF_JG, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload2 = load i32, ptr %RBP_N.8, align 1
  %10 = sext i32 %memload2 to i64
  %11 = lshr i64 %10, 32
  %EDX = trunc i64 %11 to i32
  %memload3 = load i32, ptr %stktop_4, align 1
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
  %CmpZF_JNE = icmp eq i1 %ZF7, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload12 = load i32, ptr %RBP_N.8, align 1
  %21 = sext i32 %memload12 to i64
  %22 = lshr i64 %21, 32
  %EDX13 = trunc i64 %22 to i32
  %memload14 = load i32, ptr %stktop_4, align 1
  %23 = sext i32 %memload12 to i64
  %24 = sext i32 %EDX13 to i64
  %div_hb_ls15 = shl nuw i64 %24, 32
  %dividend16 = or i64 %div_hb_ls15, %23
  %25 = sext i32 %memload14 to i64
  %div_q17 = sdiv i64 %dividend16, %25
  %EAX18 = trunc i64 %div_q17 to i32
  %div_r19 = srem i64 %dividend16, %25
  %EDX20 = trunc i64 %div_r19 to i32
  store i32 %EAX18, ptr %RBP_N.4, align 1
  br label %bb.7

bb.4:                                             ; preds = %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload21 = load i32, ptr %stktop_4, align 1
  %EAX28 = add i32 %memload21, 1
  %26 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload21, i32 1)
  %CF22 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %EAX28, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF23 = icmp eq i32 %29, 0
  %ZF24 = icmp eq i32 %EAX28, 0
  %highbit25 = and i32 -2147483648, %EAX28
  %SF26 = icmp ne i32 %highbit25, 0
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload21, i32 1)
  %OF27 = extractvalue { i32, i1 } %30, 1
  store i32 %EAX28, ptr %stktop_4, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  store i32 1, ptr %RBP_N.4, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.3
  %memload29 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload29
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
