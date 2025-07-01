; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i32 %arg1) {
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
  %memload = load i64, ptr %RBP_N.4, align 1
  %5 = trunc i64 %memload to i32
  %RDI = sext i32 %5 to i64
  %RDI1 = shl i64 %RDI, 2
  %ZF = icmp eq i64 %RDI1, 0
  %highbit = and i64 -9223372036854775808, %RDI1
  %SF = icmp ne i64 %highbit, 0
  %6 = call ptr @malloc(i64 %RDI1)
  %RAX = ptrtoint ptr %6 to i64
  store i64 %RAX, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  store i32 1, ptr %RBP_N.24, align 1
  %7 = ptrtoint ptr %stktop_8 to i64
  %8 = add i64 %7, 4
  %9 = inttoptr i64 %8 to ptr
  store i32 1, ptr %9, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.6
  %10 = ptrtoint ptr %stktop_8 to i64
  %11 = add i64 %10, 4
  %12 = inttoptr i64 %11 to ptr
  %memload2 = load i32, ptr %12, align 1
  %13 = load i32, ptr %RBP_N.4, align 1
  %14 = sub i32 %memload2, %13
  %15 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload2, i32 %13)
  %CF = extractvalue { i32, i1 } %15, 1
  %ZF3 = icmp eq i32 %14, 0
  %highbit4 = and i32 -2147483648, %14
  %SF5 = icmp ne i32 %highbit4, 0
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload2, i32 %13)
  %OF = extractvalue { i32, i1 } %16, 1
  %17 = and i32 %14, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = and i32 %18, 1
  %PF = icmp eq i32 %19, 0
  %ZFCmp_JG = icmp eq i1 %ZF3, false
  %SFOFCmp_JG = icmp eq i1 %SF5, %OF
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.7, label %bb.2

bb.2:                                             ; preds = %bb.1
  %20 = ptrtoint ptr %stktop_8 to i64
  %21 = add i64 %20, 4
  %22 = inttoptr i64 %21 to ptr
  %memload6 = load i32, ptr %22, align 1
  %memload7 = load i32, ptr %RBP_N.20, align 1
  %EAX = add i32 %memload6, %memload7
  %23 = and i32 %EAX, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = and i32 %24, 1
  %PF8 = icmp eq i32 %25, 0
  store i32 %EAX, ptr %RBP_N.20, align 1
  %26 = ptrtoint ptr %stktop_8 to i64
  %27 = add i64 %26, 4
  %28 = inttoptr i64 %27 to ptr
  %memload9 = load i32, ptr %28, align 1
  %memload10 = load i32, ptr %RBP_N.24, align 1
  %EAX11 = mul i32 %memload9, %memload10
  store i32 %EAX11, ptr %RBP_N.24, align 1
  %29 = ptrtoint ptr %stktop_8 to i64
  %30 = add i64 %29, 4
  %31 = inttoptr i64 %30 to ptr
  %memload12 = load i32, ptr %31, align 1
  %32 = sext i32 %memload12 to i64
  %33 = lshr i64 %32, 32
  %EDX = trunc i64 %33 to i32
  %34 = sext i32 %memload12 to i64
  %35 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %35, 32
  %dividend = or i64 %div_hb_ls, %34
  %36 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %36
  %EAX13 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %36
  %EDX14 = trunc i64 %div_r to i32
  %37 = sub i32 %EDX14, 0
  %38 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX14, i32 0)
  %CF15 = extractvalue { i32, i1 } %38, 1
  %ZF16 = icmp eq i32 %37, 0
  %highbit17 = and i32 -2147483648, %37
  %SF18 = icmp ne i32 %highbit17, 0
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX14, i32 0)
  %OF19 = extractvalue { i32, i1 } %39, 1
  %40 = and i32 %37, 255
  %41 = call i32 @llvm.ctpop.i32(i32 %40)
  %42 = and i32 %41, 1
  %PF20 = icmp eq i32 %42, 0
  %CmpZF_JNE = icmp eq i1 %ZF16, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload21 = load i32, ptr %RBP_N.24, align 1
  %memload22 = load i64, ptr %RBP_N.16, align 1
  %43 = ptrtoint ptr %stktop_8 to i64
  %44 = add i64 %43, 4
  %45 = inttoptr i64 %44 to ptr
  %memload23 = load i32, ptr %45, align 1
  %ECX = sub i32 %memload23, 1
  %46 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload23, i32 1)
  %CF24 = extractvalue { i32, i1 } %46, 1
  %47 = and i32 %ECX, 255
  %48 = call i32 @llvm.ctpop.i32(i32 %47)
  %49 = and i32 %48, 1
  %PF25 = icmp eq i32 %49, 0
  %ZF26 = icmp eq i32 %ECX, 0
  %highbit27 = and i32 -2147483648, %ECX
  %SF28 = icmp ne i32 %highbit27, 0
  %50 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload23, i32 1)
  %OF29 = extractvalue { i32, i1 } %50, 1
  %RCX = sext i32 %ECX to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload22, %memref-idxreg
  %51 = inttoptr i64 %memref-basereg to ptr
  store i32 %memload21, ptr %51, align 1
  br label %bb.5

bb.4:                                             ; preds = %bb.2
  %memload30 = load i32, ptr %RBP_N.20, align 1
  %memload31 = load i64, ptr %RBP_N.16, align 1
  %52 = ptrtoint ptr %stktop_8 to i64
  %53 = add i64 %52, 4
  %54 = inttoptr i64 %53 to ptr
  %memload32 = load i32, ptr %54, align 1
  %ECX39 = sub i32 %memload32, 1
  %55 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload32, i32 1)
  %CF33 = extractvalue { i32, i1 } %55, 1
  %56 = and i32 %ECX39, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = and i32 %57, 1
  %PF34 = icmp eq i32 %58, 0
  %ZF35 = icmp eq i32 %ECX39, 0
  %highbit36 = and i32 -2147483648, %ECX39
  %SF37 = icmp ne i32 %highbit36, 0
  %59 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload32, i32 1)
  %OF38 = extractvalue { i32, i1 } %59, 1
  %RCX40 = sext i32 %ECX39 to i64
  %memref-idxreg41 = mul i64 4, %RCX40
  %memref-basereg42 = add i64 %memload31, %memref-idxreg41
  %60 = inttoptr i64 %memref-basereg42 to ptr
  store i32 %memload30, ptr %60, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3
  br label %bb.6

bb.6:                                             ; preds = %bb.5
  %61 = ptrtoint ptr %stktop_8 to i64
  %62 = add i64 %61, 4
  %63 = inttoptr i64 %62 to ptr
  %memload43 = load i32, ptr %63, align 1
  %EAX50 = add i32 %memload43, 1
  %64 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload43, i32 1)
  %CF44 = extractvalue { i32, i1 } %64, 1
  %65 = and i32 %EAX50, 255
  %66 = call i32 @llvm.ctpop.i32(i32 %65)
  %67 = and i32 %66, 1
  %PF45 = icmp eq i32 %67, 0
  %ZF46 = icmp eq i32 %EAX50, 0
  %highbit47 = and i32 -2147483648, %EAX50
  %SF48 = icmp ne i32 %highbit47, 0
  %68 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload43, i32 1)
  %OF49 = extractvalue { i32, i1 } %68, 1
  %69 = ptrtoint ptr %stktop_8 to i64
  %70 = add i64 %69, 4
  %71 = inttoptr i64 %70 to ptr
  store i32 %EAX50, ptr %71, align 1
  br label %bb.1

bb.7:                                             ; preds = %bb.1
  %memload51 = load i64, ptr %RBP_N.16, align 1
  ret i64 %memload51
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
