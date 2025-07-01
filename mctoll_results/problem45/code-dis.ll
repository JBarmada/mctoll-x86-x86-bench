; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i64 @func0(i32 %arg1, i32 %arg2, i64 %arg3) {
entry:
  %stktop_4 = alloca i8, i32 76, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.64 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 56
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 60
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 68
  %RBP_N.8 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 72
  %RBP_N.4 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i32 %arg2, ptr %RBP_N.8, align 1
  store i64 %arg3, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %6 = load i32, ptr %RBP_N.4, align 1
  %7 = zext i32 %6 to i64
  %8 = zext i32 0 to i64
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
  %CmpZF_JLE = icmp eq i1 %ZF, true
  %CmpOF_JLE = icmp ne i1 %SF, %OF
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload = load i32, ptr %RBP_N.4, align 1
  %15 = sext i32 %memload to i64
  %16 = lshr i64 %15, 32
  %EDX = trunc i64 %16 to i32
  %memload1 = load i32, ptr %RBP_N.8, align 1
  %17 = sext i32 %memload to i64
  %18 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %18, 32
  %dividend = or i64 %div_hb_ls, %17
  %19 = sext i32 %memload1 to i64
  %div_q = sdiv i64 %dividend, %19
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %19
  %EDX2 = trunc i64 %div_r to i32
  %EDX9 = add i32 %EDX2, 48
  %20 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EDX2, i32 48)
  %CF3 = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %EDX9, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF4 = icmp eq i32 %23, 0
  %ZF5 = icmp eq i32 %EDX9, 0
  %highbit6 = and i32 -2147483648, %EDX9
  %SF7 = icmp ne i32 %highbit6, 0
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EDX2, i32 48)
  %OF8 = extractvalue { i32, i1 } %24, 1
  %CL = trunc i32 %EDX9 to i8
  %memload10 = load i32, ptr %RBP_N.20, align 1
  %EDX17 = add i32 %memload10, 1
  %25 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload10, i32 1)
  %CF11 = extractvalue { i32, i1 } %25, 1
  %26 = and i32 %EDX17, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF12 = icmp eq i32 %28, 0
  %ZF13 = icmp eq i32 %EDX17, 0
  %highbit14 = and i32 -2147483648, %EDX17
  %SF15 = icmp ne i32 %highbit14, 0
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload10, i32 1)
  %OF16 = extractvalue { i32, i1 } %29, 1
  store i32 %EDX17, ptr %RBP_N.20, align 1
  %RAX = sext i32 %memload10 to i64
  %30 = getelementptr i8, ptr %RBP_N.64, i64 %RAX
  store i8 %CL, ptr %30, align 1
  %memload18 = load i32, ptr %RBP_N.4, align 1
  %31 = sext i32 %memload18 to i64
  %32 = lshr i64 %31, 32
  %EDX19 = trunc i64 %32 to i32
  %memload20 = load i32, ptr %RBP_N.8, align 1
  %33 = sext i32 %memload18 to i64
  %34 = sext i32 %EDX19 to i64
  %div_hb_ls21 = shl nuw i64 %34, 32
  %dividend22 = or i64 %div_hb_ls21, %33
  %35 = sext i32 %memload20 to i64
  %div_q23 = sdiv i64 %dividend22, %35
  %EAX24 = trunc i64 %div_q23 to i32
  %div_r25 = srem i64 %dividend22, %35
  %EDX26 = trunc i64 %div_r25 to i32
  store i32 %EAX24, ptr %RBP_N.4, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.5
  %36 = load i32, ptr %RBP_N.20, align 1
  %37 = zext i32 %36 to i64
  %38 = zext i32 0 to i64
  %39 = sub i64 %37, %38
  %40 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %37, i64 %38)
  %CF27 = extractvalue { i64, i1 } %40, 1
  %ZF28 = icmp eq i64 %39, 0
  %highbit29 = and i64 -9223372036854775808, %39
  %SF30 = icmp ne i64 %highbit29, 0
  %41 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %37, i64 %38)
  %OF31 = extractvalue { i64, i1 } %41, 1
  %42 = and i64 %39, 255
  %43 = call i64 @llvm.ctpop.i64(i64 %42)
  %44 = and i64 %43, 1
  %PF32 = icmp eq i64 %44, 0
  %CmpZF_JLE56 = icmp eq i1 %ZF28, true
  %CmpOF_JLE57 = icmp ne i1 %SF30, %OF31
  %ZFOrSF_JLE58 = or i1 %CmpZF_JLE56, %CmpOF_JLE57
  br i1 %ZFOrSF_JLE58, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload33 = load i32, ptr %RBP_N.20, align 1
  %EAX40 = add i32 %memload33, -1
  %45 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload33, i32 -1)
  %CF34 = extractvalue { i32, i1 } %45, 1
  %46 = and i32 %EAX40, 255
  %47 = call i32 @llvm.ctpop.i32(i32 %46)
  %48 = and i32 %47, 1
  %PF35 = icmp eq i32 %48, 0
  %ZF36 = icmp eq i32 %EAX40, 0
  %highbit37 = and i32 -2147483648, %EAX40
  %SF38 = icmp ne i32 %highbit37, 0
  %49 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload33, i32 -1)
  %OF39 = extractvalue { i32, i1 } %49, 1
  store i32 %EAX40, ptr %RBP_N.20, align 1
  %RAX41 = sext i32 %EAX40 to i64
  %50 = getelementptr i8, ptr %RBP_N.64, i64 %RAX41
  %memload43 = load i8, ptr %50, align 1
  %memload44 = load i64, ptr %RBP_N.16, align 1
  %memload45 = load i32, ptr %stktop_4, align 1
  %ESI = add i32 %memload45, 1
  %51 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload45, i32 1)
  %CF46 = extractvalue { i32, i1 } %51, 1
  %52 = and i32 %ESI, 255
  %53 = call i32 @llvm.ctpop.i32(i32 %52)
  %54 = and i32 %53, 1
  %PF47 = icmp eq i32 %54, 0
  %ZF48 = icmp eq i32 %ESI, 0
  %highbit49 = and i32 -2147483648, %ESI
  %SF50 = icmp ne i32 %highbit49, 0
  %55 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload45, i32 1)
  %OF51 = extractvalue { i32, i1 } %55, 1
  store i32 %ESI, ptr %stktop_4, align 1
  %RCX = sext i32 %memload45 to i64
  %memref-basereg = add i64 %memload44, %RCX
  %56 = inttoptr i64 %memref-basereg to ptr
  store i8 %memload43, ptr %56, align 1
  br label %bb.4

bb.6:                                             ; preds = %bb.4
  %memload52 = load i64, ptr %RBP_N.16, align 1
  %memload53 = load i64, ptr %stktop_4, align 1
  %57 = trunc i64 %memload53 to i32
  %RCX54 = sext i32 %57 to i64
  %memref-basereg55 = add i64 %memload52, %RCX54
  %58 = inttoptr i64 %memref-basereg55 to ptr
  store i8 0, ptr %58, align 1
  ret i64 %memload52
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
