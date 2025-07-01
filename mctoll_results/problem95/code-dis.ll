; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_4 = alloca i8, i32 52, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.36 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.32 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.24 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.20 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 36
  %RBP_N.16 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 40
  %RBP_N.12 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 44
  %RBP_N.8 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %8 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i32 0, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.32, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.16
  %memload = load i32, ptr %RBP_N.32, align 1
  %9 = load i32, ptr %RBP_N.12, align 1
  %10 = sub i32 %memload, %9
  %11 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %9)
  %CF = extractvalue { i32, i1 } %11, 1
  %ZF = icmp eq i32 %10, 0
  %highbit = and i32 -2147483648, %10
  %SF = icmp ne i32 %highbit, 0
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %9)
  %OF = extractvalue { i32, i1 } %12, 1
  %13 = and i32 %10, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = and i32 %14, 1
  %PF = icmp eq i32 %15, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.17, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.8, align 1
  %memload2 = load i64, ptr %RBP_N.32, align 1
  %16 = trunc i64 %memload2 to i32
  %RCX = sext i32 %16 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %17 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load i32, ptr %17, align 1
  store i32 %memload3, ptr %RBP_N.24, align 1
  %18 = load i32, ptr %RBP_N.24, align 1
  %19 = zext i32 %18 to i64
  %20 = zext i32 1 to i64
  %21 = sub i64 %19, %20
  %22 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %19, i64 %20)
  %CF4 = extractvalue { i64, i1 } %22, 1
  %ZF5 = icmp eq i64 %21, 0
  %highbit6 = and i64 -9223372036854775808, %21
  %SF7 = icmp ne i64 %highbit6, 0
  %23 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %19, i64 %20)
  %OF8 = extractvalue { i64, i1 } %23, 1
  %24 = and i64 %21, 255
  %25 = call i64 @llvm.ctpop.i64(i64 %24)
  %26 = and i64 %25, 1
  %PF9 = icmp eq i64 %26, 0
  %CmpZF_JLE = icmp eq i1 %ZF5, true
  %CmpOF_JLE = icmp ne i1 %SF7, %OF8
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.15, label %bb.3

bb.3:                                             ; preds = %bb.2
  store i32 1, ptr %RBP_N.36, align 1
  store i32 2, ptr %RBP_N.40, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.8
  %memload10 = load i32, ptr %RBP_N.40, align 1
  %memload11 = load i32, ptr %RBP_N.40, align 1
  %EAX = mul i32 %memload10, %memload11
  %27 = load i32, ptr %RBP_N.24, align 1
  %28 = sub i32 %EAX, %27
  %29 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 %27)
  %CF12 = extractvalue { i32, i1 } %29, 1
  %ZF13 = icmp eq i32 %28, 0
  %highbit14 = and i32 -2147483648, %28
  %SF15 = icmp ne i32 %highbit14, 0
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 %27)
  %OF16 = extractvalue { i32, i1 } %30, 1
  %31 = and i32 %28, 255
  %32 = call i32 @llvm.ctpop.i32(i32 %31)
  %33 = and i32 %32, 1
  %PF17 = icmp eq i32 %33, 0
  %ZFCmp_JG = icmp eq i1 %ZF13, false
  %SFOFCmp_JG = icmp eq i1 %SF15, %OF16
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.9, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload18 = load i32, ptr %RBP_N.24, align 1
  %34 = sext i32 %memload18 to i64
  %35 = lshr i64 %34, 32
  %EDX = trunc i64 %35 to i32
  %memload19 = load i32, ptr %RBP_N.40, align 1
  %36 = sext i32 %memload18 to i64
  %37 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %37, 32
  %dividend = or i64 %div_hb_ls, %36
  %38 = sext i32 %memload19 to i64
  %div_q = sdiv i64 %dividend, %38
  %EAX20 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %38
  %EDX21 = trunc i64 %div_r to i32
  %39 = sub i32 %EDX21, 0
  %40 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX21, i32 0)
  %CF22 = extractvalue { i32, i1 } %40, 1
  %ZF23 = icmp eq i32 %39, 0
  %highbit24 = and i32 -2147483648, %39
  %SF25 = icmp ne i32 %highbit24, 0
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX21, i32 0)
  %OF26 = extractvalue { i32, i1 } %41, 1
  %42 = and i32 %39, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = and i32 %43, 1
  %PF27 = icmp eq i32 %44, 0
  %CmpZF_JNE = icmp eq i1 %ZF23, false
  br i1 %CmpZF_JNE, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  store i32 0, ptr %RBP_N.36, align 1
  br label %bb.9

bb.7:                                             ; preds = %bb.5
  br label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload28 = load i32, ptr %RBP_N.40, align 1
  %EAX35 = add i32 %memload28, 1
  %45 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload28, i32 1)
  %CF29 = extractvalue { i32, i1 } %45, 1
  %46 = and i32 %EAX35, 255
  %47 = call i32 @llvm.ctpop.i32(i32 %46)
  %48 = and i32 %47, 1
  %PF30 = icmp eq i32 %48, 0
  %ZF31 = icmp eq i32 %EAX35, 0
  %highbit32 = and i32 -2147483648, %EAX35
  %SF33 = icmp ne i32 %highbit32, 0
  %49 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload28, i32 1)
  %OF34 = extractvalue { i32, i1 } %49, 1
  store i32 %EAX35, ptr %RBP_N.40, align 1
  br label %bb.4

bb.9:                                             ; preds = %bb.6, %bb.4
  %50 = load i32, ptr %RBP_N.36, align 1
  %51 = zext i32 %50 to i64
  %52 = zext i32 0 to i64
  %53 = sub i64 %51, %52
  %54 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %51, i64 %52)
  %CF36 = extractvalue { i64, i1 } %54, 1
  %ZF37 = icmp eq i64 %53, 0
  %highbit38 = and i64 -9223372036854775808, %53
  %SF39 = icmp ne i64 %highbit38, 0
  %55 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %51, i64 %52)
  %OF40 = extractvalue { i64, i1 } %55, 1
  %56 = and i64 %53, 255
  %57 = call i64 @llvm.ctpop.i64(i64 %56)
  %58 = and i64 %57, 1
  %PF41 = icmp eq i64 %58, 0
  %CmpZF_JE = icmp eq i1 %ZF37, true
  br i1 %CmpZF_JE, label %bb.14, label %bb.10

bb.10:                                            ; preds = %bb.9
  %memload42 = load i32, ptr %RBP_N.24, align 1
  %59 = load i32, ptr %RBP_N.16, align 1
  %60 = sub i32 %memload42, %59
  %61 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload42, i32 %59)
  %CF43 = extractvalue { i32, i1 } %61, 1
  %ZF44 = icmp eq i32 %60, 0
  %highbit45 = and i32 -2147483648, %60
  %SF46 = icmp ne i32 %highbit45, 0
  %62 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload42, i32 %59)
  %OF47 = extractvalue { i32, i1 } %62, 1
  %63 = and i32 %60, 255
  %64 = call i32 @llvm.ctpop.i32(i32 %63)
  %65 = and i32 %64, 1
  %PF48 = icmp eq i32 %65, 0
  %CmpZF_JLE86 = icmp eq i1 %ZF44, true
  %CmpOF_JLE87 = icmp ne i1 %SF46, %OF47
  %ZFOrSF_JLE88 = or i1 %CmpZF_JLE86, %CmpOF_JLE87
  br i1 %ZFOrSF_JLE88, label %bb.12, label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload49 = load i32, ptr %RBP_N.24, align 1
  store i32 %memload49, ptr %stktop_4, align 1
  br label %bb.13

bb.12:                                            ; preds = %bb.10
  %memload50 = load i32, ptr %RBP_N.16, align 1
  store i32 %memload50, ptr %stktop_4, align 1
  br label %bb.13

bb.13:                                            ; preds = %bb.12, %bb.11
  %memload51 = load i32, ptr %stktop_4, align 1
  store i32 %memload51, ptr %RBP_N.16, align 1
  br label %bb.14

bb.14:                                            ; preds = %bb.13, %bb.9
  br label %bb.15

bb.15:                                            ; preds = %bb.14, %bb.2
  br label %bb.16

bb.16:                                            ; preds = %bb.15
  %memload52 = load i32, ptr %RBP_N.32, align 1
  %EAX59 = add i32 %memload52, 1
  %66 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload52, i32 1)
  %CF53 = extractvalue { i32, i1 } %66, 1
  %67 = and i32 %EAX59, 255
  %68 = call i32 @llvm.ctpop.i32(i32 %67)
  %69 = and i32 %68, 1
  %PF54 = icmp eq i32 %69, 0
  %ZF55 = icmp eq i32 %EAX59, 0
  %highbit56 = and i32 -2147483648, %EAX59
  %SF57 = icmp ne i32 %highbit56, 0
  %70 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload52, i32 1)
  %OF58 = extractvalue { i32, i1 } %70, 1
  store i32 %EAX59, ptr %RBP_N.32, align 1
  br label %bb.1

bb.17:                                            ; preds = %bb.1
  br label %bb.18

bb.18:                                            ; preds = %bb.19, %bb.17
  %71 = load i32, ptr %RBP_N.16, align 1
  %72 = zext i32 %71 to i64
  %73 = zext i32 0 to i64
  %74 = sub i64 %72, %73
  %75 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %72, i64 %73)
  %CF60 = extractvalue { i64, i1 } %75, 1
  %ZF61 = icmp eq i64 %74, 0
  %highbit62 = and i64 -9223372036854775808, %74
  %SF63 = icmp ne i64 %highbit62, 0
  %76 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %72, i64 %73)
  %OF64 = extractvalue { i64, i1 } %76, 1
  %77 = and i64 %74, 255
  %78 = call i64 @llvm.ctpop.i64(i64 %77)
  %79 = and i64 %78, 1
  %PF65 = icmp eq i64 %79, 0
  %CmpZF_JLE89 = icmp eq i1 %ZF61, true
  %CmpOF_JLE90 = icmp ne i1 %SF63, %OF64
  %ZFOrSF_JLE91 = or i1 %CmpZF_JLE89, %CmpOF_JLE90
  br i1 %ZFOrSF_JLE91, label %bb.20, label %bb.19

bb.19:                                            ; preds = %bb.18
  %memload66 = load i32, ptr %RBP_N.16, align 1
  %80 = sext i32 %memload66 to i64
  %81 = lshr i64 %80, 32
  %EDX67 = trunc i64 %81 to i32
  %82 = sext i32 %memload66 to i64
  %83 = sext i32 %EDX67 to i64
  %div_hb_ls68 = shl nuw i64 %83, 32
  %dividend69 = or i64 %div_hb_ls68, %82
  %84 = sext i32 10 to i64
  %div_q70 = sdiv i64 %dividend69, %84
  %EAX71 = trunc i64 %div_q70 to i32
  %div_r72 = srem i64 %dividend69, %84
  %EDX73 = trunc i64 %div_r72 to i32
  %memload74 = load i32, ptr %RBP_N.20, align 1
  %EDX76 = add i32 %EDX73, %memload74
  %85 = and i32 %EDX76, 255
  %86 = call i32 @llvm.ctpop.i32(i32 %85)
  %87 = and i32 %86, 1
  %PF75 = icmp eq i32 %87, 0
  store i32 %EDX76, ptr %RBP_N.20, align 1
  %memload77 = load i32, ptr %RBP_N.16, align 1
  %88 = sext i32 %memload77 to i64
  %89 = lshr i64 %88, 32
  %EDX78 = trunc i64 %89 to i32
  %90 = sext i32 %memload77 to i64
  %91 = sext i32 %EDX78 to i64
  %div_hb_ls79 = shl nuw i64 %91, 32
  %dividend80 = or i64 %div_hb_ls79, %90
  %92 = sext i32 10 to i64
  %div_q81 = sdiv i64 %dividend80, %92
  %EAX82 = trunc i64 %div_q81 to i32
  %div_r83 = srem i64 %dividend80, %92
  %EDX84 = trunc i64 %div_r83 to i32
  store i32 %EAX82, ptr %RBP_N.16, align 1
  br label %bb.18

bb.20:                                            ; preds = %bb.18
  %memload85 = load i32, ptr %RBP_N.20, align 1
  ret i32 %memload85
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
