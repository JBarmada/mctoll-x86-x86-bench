; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

define dso_local i32 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 39
  %RBP_N.1 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %4 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  %memload = load i64, ptr %RBP_N.16, align 1
  %5 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %5)
  %6 = trunc i64 %RAX to i32
  store i32 %6, ptr %RBP_N.20, align 1
  %7 = load i32, ptr %RBP_N.20, align 1
  %8 = zext i32 %7 to i64
  %9 = zext i32 2 to i64
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
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.9

bb.2:                                             ; preds = %entry
  store i32 2, ptr %RBP_N.24, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %memload1 = load i32, ptr %RBP_N.24, align 1
  %memload2 = load i32, ptr %RBP_N.24, align 1
  %EAX = mul i32 %memload1, %memload2
  %16 = load i32, ptr %RBP_N.20, align 1
  %17 = sub i32 %EAX, %16
  %18 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 %16)
  %CF3 = extractvalue { i32, i1 } %18, 1
  %ZF4 = icmp eq i32 %17, 0
  %highbit5 = and i32 -2147483648, %17
  %SF6 = icmp ne i32 %highbit5, 0
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 %16)
  %OF7 = extractvalue { i32, i1 } %19, 1
  %20 = and i32 %17, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = and i32 %21, 1
  %PF8 = icmp eq i32 %22, 0
  %ZFCmp_JG = icmp eq i1 %ZF4, false
  %SFOFCmp_JG = icmp eq i1 %SF6, %OF7
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload9 = load i32, ptr %RBP_N.20, align 1
  %23 = sext i32 %memload9 to i64
  %24 = lshr i64 %23, 32
  %EDX = trunc i64 %24 to i32
  %memload10 = load i32, ptr %RBP_N.24, align 1
  %25 = sext i32 %memload9 to i64
  %26 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %26, 32
  %dividend = or i64 %div_hb_ls, %25
  %27 = sext i32 %memload10 to i64
  %div_q = sdiv i64 %dividend, %27
  %EAX11 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %27
  %EDX12 = trunc i64 %div_r to i32
  %28 = sub i32 %EDX12, 0
  %29 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX12, i32 0)
  %CF13 = extractvalue { i32, i1 } %29, 1
  %ZF14 = icmp eq i32 %28, 0
  %highbit15 = and i32 -2147483648, %28
  %SF16 = icmp ne i32 %highbit15, 0
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX12, i32 0)
  %OF17 = extractvalue { i32, i1 } %30, 1
  %31 = and i32 %28, 255
  %32 = call i32 @llvm.ctpop.i32(i32 %31)
  %33 = and i32 %32, 1
  %PF18 = icmp eq i32 %33, 0
  %CmpZF_JNE = icmp eq i1 %ZF14, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.9

bb.6:                                             ; preds = %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload19 = load i32, ptr %RBP_N.24, align 1
  %EAX26 = add i32 %memload19, 1
  %34 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload19, i32 1)
  %CF20 = extractvalue { i32, i1 } %34, 1
  %35 = and i32 %EAX26, 255
  %36 = call i32 @llvm.ctpop.i32(i32 %35)
  %37 = and i32 %36, 1
  %PF21 = icmp eq i32 %37, 0
  %ZF22 = icmp eq i32 %EAX26, 0
  %highbit23 = and i32 -2147483648, %EAX26
  %SF24 = icmp ne i32 %highbit23, 0
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload19, i32 1)
  %OF25 = extractvalue { i32, i1 } %38, 1
  store i32 %EAX26, ptr %RBP_N.24, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.3
  store i8 1, ptr %RBP_N.1, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.5, %bb.1
  %memload27 = load i8, ptr %RBP_N.1, align 1
  %AL = and i8 %memload27, 1
  %39 = call i8 @llvm.ctpop.i8(i8 %AL)
  %40 = and i8 %39, 1
  %PF28 = icmp eq i8 %40, 0
  %ZF29 = icmp eq i8 %AL, 0
  %highbit30 = and i8 -128, %AL
  %SF31 = icmp ne i8 %highbit30, 0
  %EAX32 = zext i8 %AL to i32
  ret i32 %EAX32
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctpop.i8(i8) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
