; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i32 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 36
  %RBP_N.4 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  %4 = zext i32 256 to i64
  %5 = call ptr @malloc(i64 %4)
  %RAX = ptrtoint ptr %5 to i64
  store i64 %RAX, ptr %RBP_N.24, align 1
  %memload = load i64, ptr %RBP_N.16, align 1
  %6 = inttoptr i64 %memload to ptr
  store i32 0, ptr %6, align 1
  %7 = ptrtoint ptr %stktop_8 to i64
  %8 = add i64 %7, 4
  %9 = inttoptr i64 %8 to ptr
  store i32 2, ptr %9, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.6
  %10 = ptrtoint ptr %stktop_8 to i64
  %11 = add i64 %10, 4
  %12 = inttoptr i64 %11 to ptr
  %memload1 = load i32, ptr %12, align 1
  %13 = ptrtoint ptr %stktop_8 to i64
  %14 = add i64 %13, 4
  %15 = inttoptr i64 %14 to ptr
  %memload2 = load i32, ptr %15, align 1
  %EAX = mul i32 %memload1, %memload2
  %16 = load i32, ptr %RBP_N.4, align 1
  %17 = sub i32 %EAX, %16
  %18 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 %16)
  %CF = extractvalue { i32, i1 } %18, 1
  %ZF = icmp eq i32 %17, 0
  %highbit = and i32 -2147483648, %17
  %SF = icmp ne i32 %highbit, 0
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 %16)
  %OF = extractvalue { i32, i1 } %19, 1
  %20 = and i32 %17, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = and i32 %21, 1
  %PF = icmp eq i32 %22, 0
  %ZFCmp_JG = icmp eq i1 %ZF, false
  %SFOFCmp_JG = icmp eq i1 %SF, %OF
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.7, label %bb.2

bb.2:                                             ; preds = %bb.1
  br label %bb.3

bb.3:                                             ; preds = %bb.4, %bb.2
  %memload3 = load i32, ptr %RBP_N.4, align 1
  %23 = sext i32 %memload3 to i64
  %24 = lshr i64 %23, 32
  %EDX = trunc i64 %24 to i32
  %25 = ptrtoint ptr %stktop_8 to i64
  %26 = add i64 %25, 4
  %27 = inttoptr i64 %26 to ptr
  %memload4 = load i32, ptr %27, align 1
  %28 = sext i32 %memload3 to i64
  %29 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %29, 32
  %dividend = or i64 %div_hb_ls, %28
  %30 = sext i32 %memload4 to i64
  %div_q = sdiv i64 %dividend, %30
  %EAX5 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %30
  %EDX6 = trunc i64 %div_r to i32
  %31 = sub i32 %EDX6, 0
  %32 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX6, i32 0)
  %CF7 = extractvalue { i32, i1 } %32, 1
  %ZF8 = icmp eq i32 %31, 0
  %highbit9 = and i32 -2147483648, %31
  %SF10 = icmp ne i32 %highbit9, 0
  %33 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX6, i32 0)
  %OF11 = extractvalue { i32, i1 } %33, 1
  %34 = and i32 %31, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = and i32 %35, 1
  %PF12 = icmp eq i32 %36, 0
  %CmpZF_JNE = icmp eq i1 %ZF8, false
  br i1 %CmpZF_JNE, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload13 = load i32, ptr %RBP_N.4, align 1
  %37 = sext i32 %memload13 to i64
  %38 = lshr i64 %37, 32
  %EDX14 = trunc i64 %38 to i32
  %39 = ptrtoint ptr %stktop_8 to i64
  %40 = add i64 %39, 4
  %41 = inttoptr i64 %40 to ptr
  %memload15 = load i32, ptr %41, align 1
  %42 = sext i32 %memload13 to i64
  %43 = sext i32 %EDX14 to i64
  %div_hb_ls16 = shl nuw i64 %43, 32
  %dividend17 = or i64 %div_hb_ls16, %42
  %44 = sext i32 %memload15 to i64
  %div_q18 = sdiv i64 %dividend17, %44
  %EAX19 = trunc i64 %div_q18 to i32
  %div_r20 = srem i64 %dividend17, %44
  %EDX21 = trunc i64 %div_r20 to i32
  store i32 %EAX19, ptr %RBP_N.4, align 1
  %45 = ptrtoint ptr %stktop_8 to i64
  %46 = add i64 %45, 4
  %47 = inttoptr i64 %46 to ptr
  %memload22 = load i32, ptr %47, align 1
  %memload23 = load i64, ptr %RBP_N.24, align 1
  %memload24 = load i64, ptr %RBP_N.16, align 1
  %48 = inttoptr i64 %memload24 to ptr
  %memload25 = load i32, ptr %48, align 1
  %EDI = add i32 %memload25, 1
  %49 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload25, i32 1)
  %CF26 = extractvalue { i32, i1 } %49, 1
  %50 = and i32 %EDI, 255
  %51 = call i32 @llvm.ctpop.i32(i32 %50)
  %52 = and i32 %51, 1
  %PF27 = icmp eq i32 %52, 0
  %ZF28 = icmp eq i32 %EDI, 0
  %highbit29 = and i32 -2147483648, %EDI
  %SF30 = icmp ne i32 %highbit29, 0
  %53 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload25, i32 1)
  %OF31 = extractvalue { i32, i1 } %53, 1
  %54 = inttoptr i64 %memload24 to ptr
  store i32 %EDI, ptr %54, align 1
  %RCX = sext i32 %memload25 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload23, %memref-idxreg
  %55 = inttoptr i64 %memref-basereg to ptr
  store i32 %memload22, ptr %55, align 1
  br label %bb.3

bb.5:                                             ; preds = %bb.3
  br label %bb.6

bb.6:                                             ; preds = %bb.5
  %56 = ptrtoint ptr %stktop_8 to i64
  %57 = add i64 %56, 4
  %58 = inttoptr i64 %57 to ptr
  %memload32 = load i32, ptr %58, align 1
  %EAX39 = add i32 %memload32, 1
  %59 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload32, i32 1)
  %CF33 = extractvalue { i32, i1 } %59, 1
  %60 = and i32 %EAX39, 255
  %61 = call i32 @llvm.ctpop.i32(i32 %60)
  %62 = and i32 %61, 1
  %PF34 = icmp eq i32 %62, 0
  %ZF35 = icmp eq i32 %EAX39, 0
  %highbit36 = and i32 -2147483648, %EAX39
  %SF37 = icmp ne i32 %highbit36, 0
  %63 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload32, i32 1)
  %OF38 = extractvalue { i32, i1 } %63, 1
  %64 = ptrtoint ptr %stktop_8 to i64
  %65 = add i64 %64, 4
  %66 = inttoptr i64 %65 to ptr
  store i32 %EAX39, ptr %66, align 1
  br label %bb.1

bb.7:                                             ; preds = %bb.1
  %67 = load i32, ptr %RBP_N.4, align 1
  %68 = zext i32 %67 to i64
  %69 = zext i32 1 to i64
  %70 = sub i64 %68, %69
  %71 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %68, i64 %69)
  %CF40 = extractvalue { i64, i1 } %71, 1
  %ZF41 = icmp eq i64 %70, 0
  %highbit42 = and i64 -9223372036854775808, %70
  %SF43 = icmp ne i64 %highbit42, 0
  %72 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %68, i64 %69)
  %OF44 = extractvalue { i64, i1 } %72, 1
  %73 = and i64 %70, 255
  %74 = call i64 @llvm.ctpop.i64(i64 %73)
  %75 = and i64 %74, 1
  %PF45 = icmp eq i64 %75, 0
  %CmpZF_JLE = icmp eq i1 %ZF41, true
  %CmpOF_JLE = icmp ne i1 %SF43, %OF44
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.9, label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload46 = load i32, ptr %RBP_N.4, align 1
  %memload47 = load i64, ptr %RBP_N.24, align 1
  %memload48 = load i64, ptr %RBP_N.16, align 1
  %76 = inttoptr i64 %memload48 to ptr
  %memload49 = load i32, ptr %76, align 1
  %EDI56 = add i32 %memload49, 1
  %77 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload49, i32 1)
  %CF50 = extractvalue { i32, i1 } %77, 1
  %78 = and i32 %EDI56, 255
  %79 = call i32 @llvm.ctpop.i32(i32 %78)
  %80 = and i32 %79, 1
  %PF51 = icmp eq i32 %80, 0
  %ZF52 = icmp eq i32 %EDI56, 0
  %highbit53 = and i32 -2147483648, %EDI56
  %SF54 = icmp ne i32 %highbit53, 0
  %81 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload49, i32 1)
  %OF55 = extractvalue { i32, i1 } %81, 1
  %82 = inttoptr i64 %memload48 to ptr
  store i32 %EDI56, ptr %82, align 1
  %RCX57 = sext i32 %memload49 to i64
  %memref-idxreg58 = mul i64 4, %RCX57
  %memref-basereg59 = add i64 %memload47, %memref-idxreg58
  %83 = inttoptr i64 %memref-basereg59 to ptr
  store i32 %memload46, ptr %83, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.7
  %memload60 = load i64, ptr %RBP_N.24, align 1
  ret i64 %memload60
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
