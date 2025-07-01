; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i32 @abs(i32)

define dso_local i64 @func0(i32 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 36
  %RBP_N.4 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %4 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.24, align 1
  %memload = load i32, ptr %RBP_N.4, align 1
  %EAX = call i32 @abs(i32 %memload)
  store i32 %EAX, ptr %RBP_N.4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.4
  %memload1 = load i32, ptr %RBP_N.4, align 1
  %5 = sext i32 %memload1 to i64
  %6 = lshr i64 %5, 32
  %EDX = trunc i64 %6 to i32
  %7 = sext i32 %memload1 to i64
  %8 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %8, 32
  %dividend = or i64 %div_hb_ls, %7
  %9 = sext i32 10 to i64
  %div_q = sdiv i64 %dividend, %9
  %EAX2 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %9
  %EDX3 = trunc i64 %div_r to i32
  %10 = ptrtoint ptr %stktop_8 to i64
  %11 = add i64 %10, 4
  %12 = inttoptr i64 %11 to ptr
  store i32 %EDX3, ptr %12, align 1
  %13 = ptrtoint ptr %stktop_8 to i64
  %14 = add i64 %13, 4
  %15 = inttoptr i64 %14 to ptr
  %memload4 = load i32, ptr %15, align 1
  %16 = sext i32 %memload4 to i64
  %17 = lshr i64 %16, 32
  %EDX5 = trunc i64 %17 to i32
  %18 = sext i32 %memload4 to i64
  %19 = sext i32 %EDX5 to i64
  %div_hb_ls6 = shl nuw i64 %19, 32
  %dividend7 = or i64 %div_hb_ls6, %18
  %20 = sext i32 2 to i64
  %div_q8 = sdiv i64 %dividend7, %20
  %EAX9 = trunc i64 %div_q8 to i32
  %div_r10 = srem i64 %dividend7, %20
  %EDX11 = trunc i64 %div_r10 to i32
  %21 = sub i32 %EDX11, 0
  %22 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX11, i32 0)
  %CF = extractvalue { i32, i1 } %22, 1
  %ZF = icmp eq i32 %21, 0
  %highbit = and i32 -2147483648, %21
  %SF = icmp ne i32 %highbit, 0
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX11, i32 0)
  %OF = extractvalue { i32, i1 } %23, 1
  %24 = and i32 %21, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = and i32 %25, 1
  %PF = icmp eq i32 %26, 0
  %CmpZF_JNE = icmp eq i1 %ZF, false
  br i1 %CmpZF_JNE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload12 = load i32, ptr %RBP_N.20, align 1
  %EAX19 = add i32 %memload12, 1
  %27 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload12, i32 1)
  %CF13 = extractvalue { i32, i1 } %27, 1
  %28 = and i32 %EAX19, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = and i32 %29, 1
  %PF14 = icmp eq i32 %30, 0
  %ZF15 = icmp eq i32 %EAX19, 0
  %highbit16 = and i32 -2147483648, %EAX19
  %SF17 = icmp ne i32 %highbit16, 0
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload12, i32 1)
  %OF18 = extractvalue { i32, i1 } %31, 1
  store i32 %EAX19, ptr %RBP_N.20, align 1
  br label %bb.4

bb.3:                                             ; preds = %bb.1
  %memload20 = load i32, ptr %RBP_N.24, align 1
  %EAX27 = add i32 %memload20, 1
  %32 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload20, i32 1)
  %CF21 = extractvalue { i32, i1 } %32, 1
  %33 = and i32 %EAX27, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = and i32 %34, 1
  %PF22 = icmp eq i32 %35, 0
  %ZF23 = icmp eq i32 %EAX27, 0
  %highbit24 = and i32 -2147483648, %EAX27
  %SF25 = icmp ne i32 %highbit24, 0
  %36 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload20, i32 1)
  %OF26 = extractvalue { i32, i1 } %36, 1
  store i32 %EAX27, ptr %RBP_N.24, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  %memload28 = load i32, ptr %RBP_N.4, align 1
  %37 = sext i32 %memload28 to i64
  %38 = lshr i64 %37, 32
  %EDX29 = trunc i64 %38 to i32
  %39 = sext i32 %memload28 to i64
  %40 = sext i32 %EDX29 to i64
  %div_hb_ls30 = shl nuw i64 %40, 32
  %dividend31 = or i64 %div_hb_ls30, %39
  %41 = sext i32 10 to i64
  %div_q32 = sdiv i64 %dividend31, %41
  %EAX33 = trunc i64 %div_q32 to i32
  %div_r34 = srem i64 %dividend31, %41
  %EDX35 = trunc i64 %div_r34 to i32
  store i32 %EAX33, ptr %RBP_N.4, align 1
  %42 = load i32, ptr %RBP_N.4, align 1
  %43 = zext i32 %42 to i64
  %44 = zext i32 0 to i64
  %45 = sub i64 %43, %44
  %46 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %43, i64 %44)
  %CF36 = extractvalue { i64, i1 } %46, 1
  %ZF37 = icmp eq i64 %45, 0
  %highbit38 = and i64 -9223372036854775808, %45
  %SF39 = icmp ne i64 %highbit38, 0
  %47 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %43, i64 %44)
  %OF40 = extractvalue { i64, i1 } %47, 1
  %48 = and i64 %45, 255
  %49 = call i64 @llvm.ctpop.i64(i64 %48)
  %50 = and i64 %49, 1
  %PF41 = icmp eq i64 %50, 0
  %ZFCmp_JG = icmp eq i1 %ZF37, false
  %SFOFCmp_JG = icmp eq i1 %SF39, %OF40
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.1, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload42 = load i32, ptr %RBP_N.20, align 1
  %memload43 = load i64, ptr %RBP_N.16, align 1
  %51 = inttoptr i64 %memload43 to ptr
  store i32 %memload42, ptr %51, align 1
  %memload44 = load i32, ptr %RBP_N.24, align 1
  %memload45 = load i64, ptr %RBP_N.16, align 1
  %memref-disp = add i64 %memload45, 4
  %52 = inttoptr i64 %memref-disp to ptr
  store i32 %memload44, ptr %52, align 1
  ret i64 %memload45
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
