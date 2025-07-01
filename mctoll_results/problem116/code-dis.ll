; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2, i32 %arg3, i32 %arg4) {
entry:
  %stktop_4 = alloca i8, i32 44, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.32 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.28 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.24 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.20 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 28
  %RBP_N.16 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 32
  %RBP_N.12 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 36
  %RBP_N.8 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i32 %arg3, ptr %RBP_N.16, align 1
  store i32 %arg4, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.8
  %memload = load i32, ptr %RBP_N.28, align 1
  %8 = load i32, ptr %RBP_N.12, align 1
  %9 = sub i32 %memload, %8
  %10 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %8)
  %CF = extractvalue { i32, i1 } %10, 1
  %ZF = icmp eq i32 %9, 0
  %highbit = and i32 -2147483648, %9
  %SF = icmp ne i32 %highbit, 0
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %8)
  %OF = extractvalue { i32, i1 } %11, 1
  %12 = and i32 %9, 255
  %13 = call i32 @llvm.ctpop.i32(i32 %12)
  %14 = and i32 %13, 1
  %PF = icmp eq i32 %14, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.9, label %bb.2

bb.2:                                             ; preds = %bb.1
  store i32 0, ptr %RBP_N.32, align 1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.4
  %memload1 = load i32, ptr %stktop_4, align 1
  %15 = load i32, ptr %RBP_N.16, align 1
  %16 = sub i32 %memload1, %15
  %17 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload1, i32 %15)
  %CF2 = extractvalue { i32, i1 } %17, 1
  %ZF3 = icmp eq i32 %16, 0
  %highbit4 = and i32 -2147483648, %16
  %SF5 = icmp ne i32 %highbit4, 0
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload1, i32 %15)
  %OF6 = extractvalue { i32, i1 } %18, 1
  %19 = and i32 %16, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = and i32 %20, 1
  %PF7 = icmp eq i32 %21, 0
  %CmpSFOF_JGE58 = icmp eq i1 %SF5, %OF6
  br i1 %CmpSFOF_JGE58, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload8 = load i64, ptr %RBP_N.8, align 1
  %memload9 = load i64, ptr %RBP_N.28, align 1
  %22 = trunc i64 %memload9 to i32
  %RCX = sext i32 %22 to i64
  %memref-idxreg = mul i64 8, %RCX
  %memref-basereg = add i64 %memload8, %memref-idxreg
  %23 = inttoptr i64 %memref-basereg to ptr
  %memload10 = load i64, ptr %23, align 1
  %memload11 = load i64, ptr %stktop_4, align 1
  %24 = trunc i64 %memload11 to i32
  %RCX12 = sext i32 %24 to i64
  %memref-idxreg13 = mul i64 4, %RCX12
  %memref-basereg14 = add i64 %memload10, %memref-idxreg13
  %25 = inttoptr i64 %memref-basereg14 to ptr
  %memload15 = load i32, ptr %25, align 1
  %memload16 = load i32, ptr %RBP_N.32, align 1
  %EAX = add i32 %memload15, %memload16
  %26 = and i32 %EAX, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF17 = icmp eq i32 %28, 0
  store i32 %EAX, ptr %RBP_N.32, align 1
  %memload18 = load i32, ptr %stktop_4, align 1
  %EAX25 = add i32 %memload18, 1
  %29 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload18, i32 1)
  %CF19 = extractvalue { i32, i1 } %29, 1
  %30 = and i32 %EAX25, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = and i32 %31, 1
  %PF20 = icmp eq i32 %32, 0
  %ZF21 = icmp eq i32 %EAX25, 0
  %highbit22 = and i32 -2147483648, %EAX25
  %SF23 = icmp ne i32 %highbit22, 0
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload18, i32 1)
  %OF24 = extractvalue { i32, i1 } %33, 1
  store i32 %EAX25, ptr %stktop_4, align 1
  br label %bb.3

bb.5:                                             ; preds = %bb.3
  %34 = load i32, ptr %RBP_N.32, align 1
  %35 = zext i32 %34 to i64
  %36 = zext i32 0 to i64
  %37 = sub i64 %35, %36
  %38 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %35, i64 %36)
  %CF26 = extractvalue { i64, i1 } %38, 1
  %ZF27 = icmp eq i64 %37, 0
  %highbit28 = and i64 -9223372036854775808, %37
  %SF29 = icmp ne i64 %highbit28, 0
  %39 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %35, i64 %36)
  %OF30 = extractvalue { i64, i1 } %39, 1
  %40 = and i64 %37, 255
  %41 = call i64 @llvm.ctpop.i64(i64 %40)
  %42 = and i64 %41, 1
  %PF31 = icmp eq i64 %42, 0
  %CmpZF_JLE = icmp eq i1 %ZF27, true
  %CmpOF_JLE = icmp ne i1 %SF29, %OF30
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload32 = load i32, ptr %RBP_N.32, align 1
  %memload33 = load i32, ptr %RBP_N.20, align 1
  %EAX35 = add i32 %memload32, %memload33
  %43 = and i32 %EAX35, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF34 = icmp eq i32 %45, 0
  %EAX42 = sub i32 %EAX35, 1
  %46 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX35, i32 1)
  %CF36 = extractvalue { i32, i1 } %46, 1
  %47 = and i32 %EAX42, 255
  %48 = call i32 @llvm.ctpop.i32(i32 %47)
  %49 = and i32 %48, 1
  %PF37 = icmp eq i32 %49, 0
  %ZF38 = icmp eq i32 %EAX42, 0
  %highbit39 = and i32 -2147483648, %EAX42
  %SF40 = icmp ne i32 %highbit39, 0
  %50 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX35, i32 1)
  %OF41 = extractvalue { i32, i1 } %50, 1
  %51 = sext i32 %EAX42 to i64
  %52 = lshr i64 %51, 32
  %EDX = trunc i64 %52 to i32
  %memload43 = load i32, ptr %RBP_N.20, align 1
  %53 = sext i32 %EAX42 to i64
  %54 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %54, 32
  %dividend = or i64 %div_hb_ls, %53
  %55 = sext i32 %memload43 to i64
  %div_q = sdiv i64 %dividend, %55
  %EAX44 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %55
  %EDX45 = trunc i64 %div_r to i32
  %memload46 = load i32, ptr %RBP_N.24, align 1
  %EAX48 = add i32 %EAX44, %memload46
  %56 = and i32 %EAX48, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = and i32 %57, 1
  %PF47 = icmp eq i32 %58, 0
  store i32 %EAX48, ptr %RBP_N.24, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.5
  br label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload49 = load i32, ptr %RBP_N.28, align 1
  %EAX56 = add i32 %memload49, 1
  %59 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload49, i32 1)
  %CF50 = extractvalue { i32, i1 } %59, 1
  %60 = and i32 %EAX56, 255
  %61 = call i32 @llvm.ctpop.i32(i32 %60)
  %62 = and i32 %61, 1
  %PF51 = icmp eq i32 %62, 0
  %ZF52 = icmp eq i32 %EAX56, 0
  %highbit53 = and i32 -2147483648, %EAX56
  %SF54 = icmp ne i32 %highbit53, 0
  %63 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload49, i32 1)
  %OF55 = extractvalue { i32, i1 } %63, 1
  store i32 %EAX56, ptr %RBP_N.28, align 1
  br label %bb.1

bb.9:                                             ; preds = %bb.1
  %memload57 = load i32, ptr %RBP_N.24, align 1
  ret i32 %memload57
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
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
