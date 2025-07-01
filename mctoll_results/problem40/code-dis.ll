; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i32 %arg1) {
entry:
  %stktop_4 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.28 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 28
  %RBP_N.12 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 36
  %RBP_N.4 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.8, align 1
  store i32 1, ptr %RBP_N.12, align 1
  store i32 2, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.24, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.12
  %memload = load i32, ptr %RBP_N.24, align 1
  %8 = load i32, ptr %RBP_N.8, align 1
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
  br i1 %CmpSFOF_JGE, label %bb.13, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i32, ptr %RBP_N.12, align 1
  %memload2 = load i32, ptr %RBP_N.16, align 1
  %EAX = add i32 %memload1, %memload2
  %15 = and i32 %EAX, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = and i32 %16, 1
  %PF3 = icmp eq i32 %17, 0
  store i32 %EAX, ptr %RBP_N.12, align 1
  %memload4 = load i32, ptr %RBP_N.12, align 1
  store i32 %memload4, ptr %RBP_N.20, align 1
  %memload5 = load i32, ptr %RBP_N.16, align 1
  store i32 %memload5, ptr %RBP_N.12, align 1
  %memload6 = load i32, ptr %RBP_N.20, align 1
  store i32 %memload6, ptr %RBP_N.16, align 1
  store i32 1, ptr %RBP_N.28, align 1
  store i32 2, ptr %stktop_4, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %memload7 = load i32, ptr %stktop_4, align 1
  %memload8 = load i32, ptr %stktop_4, align 1
  %EAX9 = mul i32 %memload7, %memload8
  %18 = load i32, ptr %RBP_N.12, align 1
  %19 = sub i32 %EAX9, %18
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX9, i32 %18)
  %CF10 = extractvalue { i32, i1 } %20, 1
  %ZF11 = icmp eq i32 %19, 0
  %highbit12 = and i32 -2147483648, %19
  %SF13 = icmp ne i32 %highbit12, 0
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX9, i32 %18)
  %OF14 = extractvalue { i32, i1 } %21, 1
  %22 = and i32 %19, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF15 = icmp eq i32 %24, 0
  %ZFCmp_JG = icmp eq i1 %ZF11, false
  %SFOFCmp_JG = icmp eq i1 %SF13, %OF14
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload16 = load i32, ptr %RBP_N.12, align 1
  %25 = sext i32 %memload16 to i64
  %26 = lshr i64 %25, 32
  %EDX = trunc i64 %26 to i32
  %memload17 = load i32, ptr %stktop_4, align 1
  %27 = sext i32 %memload16 to i64
  %28 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %28, 32
  %dividend = or i64 %div_hb_ls, %27
  %29 = sext i32 %memload17 to i64
  %div_q = sdiv i64 %dividend, %29
  %EAX18 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %29
  %EDX19 = trunc i64 %div_r to i32
  %30 = sub i32 %EDX19, 0
  %31 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX19, i32 0)
  %CF20 = extractvalue { i32, i1 } %31, 1
  %ZF21 = icmp eq i32 %30, 0
  %highbit22 = and i32 -2147483648, %30
  %SF23 = icmp ne i32 %highbit22, 0
  %32 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX19, i32 0)
  %OF24 = extractvalue { i32, i1 } %32, 1
  %33 = and i32 %30, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = and i32 %34, 1
  %PF25 = icmp eq i32 %35, 0
  %CmpZF_JNE = icmp eq i1 %ZF21, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.8

bb.6:                                             ; preds = %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload26 = load i32, ptr %stktop_4, align 1
  %EAX33 = add i32 %memload26, 1
  %36 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload26, i32 1)
  %CF27 = extractvalue { i32, i1 } %36, 1
  %37 = and i32 %EAX33, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF28 = icmp eq i32 %39, 0
  %ZF29 = icmp eq i32 %EAX33, 0
  %highbit30 = and i32 -2147483648, %EAX33
  %SF31 = icmp ne i32 %highbit30, 0
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload26, i32 1)
  %OF32 = extractvalue { i32, i1 } %40, 1
  store i32 %EAX33, ptr %stktop_4, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.5, %bb.3
  %41 = load i32, ptr %RBP_N.28, align 1
  %42 = zext i32 %41 to i64
  %43 = zext i32 0 to i64
  %44 = sub i64 %42, %43
  %45 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %42, i64 %43)
  %CF34 = extractvalue { i64, i1 } %45, 1
  %ZF35 = icmp eq i64 %44, 0
  %highbit36 = and i64 -9223372036854775808, %44
  %SF37 = icmp ne i64 %highbit36, 0
  %46 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %42, i64 %43)
  %OF38 = extractvalue { i64, i1 } %46, 1
  %47 = and i64 %44, 255
  %48 = call i64 @llvm.ctpop.i64(i64 %47)
  %49 = and i64 %48, 1
  %PF39 = icmp eq i64 %49, 0
  %CmpZF_JE = icmp eq i1 %ZF35, true
  br i1 %CmpZF_JE, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload40 = load i32, ptr %RBP_N.24, align 1
  %EAX47 = add i32 %memload40, 1
  %50 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload40, i32 1)
  %CF41 = extractvalue { i32, i1 } %50, 1
  %51 = and i32 %EAX47, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %51)
  %53 = and i32 %52, 1
  %PF42 = icmp eq i32 %53, 0
  %ZF43 = icmp eq i32 %EAX47, 0
  %highbit44 = and i32 -2147483648, %EAX47
  %SF45 = icmp ne i32 %highbit44, 0
  %54 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload40, i32 1)
  %OF46 = extractvalue { i32, i1 } %54, 1
  store i32 %EAX47, ptr %RBP_N.24, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.8
  %memload48 = load i32, ptr %RBP_N.24, align 1
  %55 = load i32, ptr %RBP_N.8, align 1
  %56 = sub i32 %memload48, %55
  %57 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload48, i32 %55)
  %CF49 = extractvalue { i32, i1 } %57, 1
  %ZF50 = icmp eq i32 %56, 0
  %highbit51 = and i32 -2147483648, %56
  %SF52 = icmp ne i32 %highbit51, 0
  %58 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload48, i32 %55)
  %OF53 = extractvalue { i32, i1 } %58, 1
  %59 = and i32 %56, 255
  %60 = call i32 @llvm.ctpop.i32(i32 %59)
  %61 = and i32 %60, 1
  %PF54 = icmp eq i32 %61, 0
  %CmpZF_JNE57 = icmp eq i1 %ZF50, false
  br i1 %CmpZF_JNE57, label %bb.12, label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload55 = load i32, ptr %RBP_N.12, align 1
  store i32 %memload55, ptr %RBP_N.4, align 1
  br label %bb.14

bb.12:                                            ; preds = %bb.10
  br label %bb.1

bb.13:                                            ; preds = %bb.1
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.14

bb.14:                                            ; preds = %bb.13, %bb.11
  %memload56 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload56
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
