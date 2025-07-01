; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i64 @func0(i64 %arg1, i32 %arg2, i64 %arg3) {
entry:
  %stktop_4 = alloca i8, i32 52, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.36 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.32 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.20 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.16 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 44
  %RBP_N.8 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  store i64 %arg3, ptr %RBP_N.32, align 1
  store i32 2147483647, ptr %RBP_N.36, align 1
  store i32 -1, ptr %RBP_N.40, align 1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.7
  %memload = load i32, ptr %stktop_4, align 1
  %7 = load i32, ptr %RBP_N.20, align 1
  %8 = sub i32 %memload, %7
  %9 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %7)
  %CF = extractvalue { i32, i1 } %9, 1
  %ZF = icmp eq i32 %8, 0
  %highbit = and i32 -2147483648, %8
  %SF = icmp ne i32 %highbit, 0
  %10 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %7)
  %OF = extractvalue { i32, i1 } %10, 1
  %11 = and i32 %8, 255
  %12 = call i32 @llvm.ctpop.i32(i32 %11)
  %13 = and i32 %12, 1
  %PF = icmp eq i32 %13, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.8, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.16, align 1
  %memload2 = load i64, ptr %stktop_4, align 1
  %14 = trunc i64 %memload2 to i32
  %RCX = sext i32 %14 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %15 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load i32, ptr %15, align 1
  %16 = sext i32 %memload3 to i64
  %17 = lshr i64 %16, 32
  %EDX = trunc i64 %17 to i32
  %18 = sext i32 %memload3 to i64
  %19 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %19, 32
  %dividend = or i64 %div_hb_ls, %18
  %20 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %20
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %20
  %EDX4 = trunc i64 %div_r to i32
  %21 = sub i32 %EDX4, 0
  %22 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX4, i32 0)
  %CF5 = extractvalue { i32, i1 } %22, 1
  %ZF6 = icmp eq i32 %21, 0
  %highbit7 = and i32 -2147483648, %21
  %SF8 = icmp ne i32 %highbit7, 0
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX4, i32 0)
  %OF9 = extractvalue { i32, i1 } %23, 1
  %24 = and i32 %21, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = and i32 %25, 1
  %PF10 = icmp eq i32 %26, 0
  %CmpZF_JNE = icmp eq i1 %ZF6, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload11 = load i64, ptr %RBP_N.16, align 1
  %memload12 = load i64, ptr %stktop_4, align 1
  %27 = trunc i64 %memload12 to i32
  %RCX13 = sext i32 %27 to i64
  %memref-idxreg14 = mul i64 4, %RCX13
  %memref-basereg15 = add i64 %memload11, %memref-idxreg14
  %28 = inttoptr i64 %memref-basereg15 to ptr
  %memload16 = load i32, ptr %28, align 1
  %29 = load i32, ptr %RBP_N.36, align 1
  %30 = sub i32 %memload16, %29
  %31 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload16, i32 %29)
  %CF17 = extractvalue { i32, i1 } %31, 1
  %ZF18 = icmp eq i32 %30, 0
  %highbit19 = and i32 -2147483648, %30
  %SF20 = icmp ne i32 %highbit19, 0
  %32 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload16, i32 %29)
  %OF21 = extractvalue { i32, i1 } %32, 1
  %33 = and i32 %30, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = and i32 %34, 1
  %PF22 = icmp eq i32 %35, 0
  %SFAndOF_JL = icmp ne i1 %SF20, %OF21
  br i1 %SFAndOF_JL, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %36 = load i32, ptr %RBP_N.40, align 1
  %37 = zext i32 %36 to i64
  %38 = zext i32 -1 to i64
  %39 = sub i64 %37, %38
  %40 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %37, i64 %38)
  %CF23 = extractvalue { i64, i1 } %40, 1
  %ZF24 = icmp eq i64 %39, 0
  %highbit25 = and i64 -9223372036854775808, %39
  %SF26 = icmp ne i64 %highbit25, 0
  %41 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %37, i64 %38)
  %OF27 = extractvalue { i64, i1 } %41, 1
  %42 = and i64 %39, 255
  %43 = call i64 @llvm.ctpop.i64(i64 %42)
  %44 = and i64 %43, 1
  %PF28 = icmp eq i64 %44, 0
  %CmpZF_JNE56 = icmp eq i1 %ZF24, false
  br i1 %CmpZF_JNE56, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3
  %memload29 = load i64, ptr %RBP_N.16, align 1
  %memload30 = load i64, ptr %stktop_4, align 1
  %45 = trunc i64 %memload30 to i32
  %RCX31 = sext i32 %45 to i64
  %memref-idxreg32 = mul i64 4, %RCX31
  %memref-basereg33 = add i64 %memload29, %memref-idxreg32
  %46 = inttoptr i64 %memref-basereg33 to ptr
  %memload34 = load i32, ptr %46, align 1
  store i32 %memload34, ptr %RBP_N.36, align 1
  %memload35 = load i32, ptr %stktop_4, align 1
  store i32 %memload35, ptr %RBP_N.40, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4, %bb.2
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload36 = load i32, ptr %stktop_4, align 1
  %EAX43 = add i32 %memload36, 1
  %47 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload36, i32 1)
  %CF37 = extractvalue { i32, i1 } %47, 1
  %48 = and i32 %EAX43, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48)
  %50 = and i32 %49, 1
  %PF38 = icmp eq i32 %50, 0
  %ZF39 = icmp eq i32 %EAX43, 0
  %highbit40 = and i32 -2147483648, %EAX43
  %SF41 = icmp ne i32 %highbit40, 0
  %51 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload36, i32 1)
  %OF42 = extractvalue { i32, i1 } %51, 1
  store i32 %EAX43, ptr %stktop_4, align 1
  br label %bb.1

bb.8:                                             ; preds = %bb.1
  %52 = load i32, ptr %RBP_N.40, align 1
  %53 = zext i32 %52 to i64
  %54 = zext i32 -1 to i64
  %55 = sub i64 %53, %54
  %56 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %53, i64 %54)
  %CF44 = extractvalue { i64, i1 } %56, 1
  %ZF45 = icmp eq i64 %55, 0
  %highbit46 = and i64 -9223372036854775808, %55
  %SF47 = icmp ne i64 %highbit46, 0
  %57 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %53, i64 %54)
  %OF48 = extractvalue { i64, i1 } %57, 1
  %58 = and i64 %55, 255
  %59 = call i64 @llvm.ctpop.i64(i64 %58)
  %60 = and i64 %59, 1
  %PF49 = icmp eq i64 %60, 0
  %CmpZF_JNE57 = icmp eq i1 %ZF45, false
  br i1 %CmpZF_JNE57, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  %61 = sext i32 0 to i64
  store i64 %61, ptr %RBP_N.8, align 1
  br label %bb.11

bb.10:                                            ; preds = %bb.8
  %memload50 = load i32, ptr %RBP_N.36, align 1
  %memload51 = load i64, ptr %RBP_N.32, align 1
  %62 = inttoptr i64 %memload51 to ptr
  store i32 %memload50, ptr %62, align 1
  %memload52 = load i32, ptr %RBP_N.40, align 1
  %memload53 = load i64, ptr %RBP_N.32, align 1
  %memref-disp = add i64 %memload53, 4
  %63 = inttoptr i64 %memref-disp to ptr
  store i32 %memload52, ptr %63, align 1
  %memload54 = load i64, ptr %RBP_N.32, align 1
  store i64 %memload54, ptr %RBP_N.8, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.9
  %memload55 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload55
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
