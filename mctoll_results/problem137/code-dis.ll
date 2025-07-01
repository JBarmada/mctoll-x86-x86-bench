; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i64 @func0(i64 %arg1, i32 %arg2, i64 %arg3) {
entry:
  %stktop_4 = alloca i8, i32 44, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.32 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.28 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.24 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.12 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.8 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  store i32 0, ptr %RBP_N.32, align 1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.11
  %memload = load i32, ptr %stktop_4, align 1
  %6 = load i32, ptr %RBP_N.12, align 1
  %7 = sub i32 %memload, %6
  %8 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %6)
  %CF = extractvalue { i32, i1 } %8, 1
  %ZF = icmp eq i32 %7, 0
  %highbit = and i32 -2147483648, %7
  %SF = icmp ne i32 %highbit, 0
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %6)
  %OF = extractvalue { i32, i1 } %9, 1
  %10 = and i32 %7, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = and i32 %11, 1
  %PF = icmp eq i32 %12, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.12, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.8, align 1
  %memload2 = load i64, ptr %stktop_4, align 1
  %13 = trunc i64 %memload2 to i32
  %RCX = sext i32 %13 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %14 = inttoptr i64 %memref-basereg to ptr
  %15 = load i32, ptr %14, align 1
  %16 = zext i32 %15 to i64
  %17 = zext i32 0 to i64
  %18 = sub i64 %16, %17
  %19 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %16, i64 %17)
  %CF3 = extractvalue { i64, i1 } %19, 1
  %ZF4 = icmp eq i64 %18, 0
  %highbit5 = and i64 -9223372036854775808, %18
  %SF6 = icmp ne i64 %highbit5, 0
  %20 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %16, i64 %17)
  %OF7 = extractvalue { i64, i1 } %20, 1
  %21 = and i64 %18, 255
  %22 = call i64 @llvm.ctpop.i64(i64 %21)
  %23 = and i64 %22, 1
  %PF8 = icmp eq i64 %23, 0
  %CmpSFOF_JGE79 = icmp eq i1 %SF6, %OF7
  br i1 %CmpSFOF_JGE79, label %bb.6, label %bb.3

bb.3:                                             ; preds = %bb.2
  %24 = load i32, ptr %RBP_N.28, align 1
  %25 = zext i32 %24 to i64
  %26 = zext i32 0 to i64
  %27 = sub i64 %25, %26
  %28 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %25, i64 %26)
  %CF9 = extractvalue { i64, i1 } %28, 1
  %ZF10 = icmp eq i64 %27, 0
  %highbit11 = and i64 -9223372036854775808, %27
  %SF12 = icmp ne i64 %highbit11, 0
  %29 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %25, i64 %26)
  %OF13 = extractvalue { i64, i1 } %29, 1
  %30 = and i64 %27, 255
  %31 = call i64 @llvm.ctpop.i64(i64 %30)
  %32 = and i64 %31, 1
  %PF14 = icmp eq i64 %32, 0
  %CmpZF_JE = icmp eq i1 %ZF10, true
  br i1 %CmpZF_JE, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload15 = load i64, ptr %RBP_N.8, align 1
  %memload16 = load i64, ptr %stktop_4, align 1
  %33 = trunc i64 %memload16 to i32
  %RCX17 = sext i32 %33 to i64
  %memref-idxreg18 = mul i64 4, %RCX17
  %memref-basereg19 = add i64 %memload15, %memref-idxreg18
  %34 = inttoptr i64 %memref-basereg19 to ptr
  %memload20 = load i32, ptr %34, align 1
  %35 = load i32, ptr %RBP_N.28, align 1
  %36 = sub i32 %memload20, %35
  %37 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload20, i32 %35)
  %CF21 = extractvalue { i32, i1 } %37, 1
  %ZF22 = icmp eq i32 %36, 0
  %highbit23 = and i32 -2147483648, %36
  %SF24 = icmp ne i32 %highbit23, 0
  %38 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload20, i32 %35)
  %OF25 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %36, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF26 = icmp eq i32 %41, 0
  %CmpZF_JLE = icmp eq i1 %ZF22, true
  %CmpOF_JLE = icmp ne i1 %SF24, %OF25
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3
  %memload27 = load i64, ptr %RBP_N.8, align 1
  %memload28 = load i64, ptr %stktop_4, align 1
  %42 = trunc i64 %memload28 to i32
  %RCX29 = sext i32 %42 to i64
  %memref-idxreg30 = mul i64 4, %RCX29
  %memref-basereg31 = add i64 %memload27, %memref-idxreg30
  %43 = inttoptr i64 %memref-basereg31 to ptr
  %memload32 = load i32, ptr %43, align 1
  store i32 %memload32, ptr %RBP_N.28, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4, %bb.2
  %memload33 = load i64, ptr %RBP_N.8, align 1
  %memload34 = load i64, ptr %stktop_4, align 1
  %44 = trunc i64 %memload34 to i32
  %RCX35 = sext i32 %44 to i64
  %memref-idxreg36 = mul i64 4, %RCX35
  %memref-basereg37 = add i64 %memload33, %memref-idxreg36
  %45 = inttoptr i64 %memref-basereg37 to ptr
  %46 = load i32, ptr %45, align 1
  %47 = zext i32 %46 to i64
  %48 = zext i32 0 to i64
  %49 = sub i64 %47, %48
  %50 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %47, i64 %48)
  %CF38 = extractvalue { i64, i1 } %50, 1
  %ZF39 = icmp eq i64 %49, 0
  %highbit40 = and i64 -9223372036854775808, %49
  %SF41 = icmp ne i64 %highbit40, 0
  %51 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %47, i64 %48)
  %OF42 = extractvalue { i64, i1 } %51, 1
  %52 = and i64 %49, 255
  %53 = call i64 @llvm.ctpop.i64(i64 %52)
  %54 = and i64 %53, 1
  %PF43 = icmp eq i64 %54, 0
  %CmpZF_JLE80 = icmp eq i1 %ZF39, true
  %CmpOF_JLE81 = icmp ne i1 %SF41, %OF42
  %ZFOrSF_JLE82 = or i1 %CmpZF_JLE80, %CmpOF_JLE81
  br i1 %ZFOrSF_JLE82, label %bb.10, label %bb.7

bb.7:                                             ; preds = %bb.6
  %55 = load i32, ptr %RBP_N.32, align 1
  %56 = zext i32 %55 to i64
  %57 = zext i32 0 to i64
  %58 = sub i64 %56, %57
  %59 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %56, i64 %57)
  %CF44 = extractvalue { i64, i1 } %59, 1
  %ZF45 = icmp eq i64 %58, 0
  %highbit46 = and i64 -9223372036854775808, %58
  %SF47 = icmp ne i64 %highbit46, 0
  %60 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %56, i64 %57)
  %OF48 = extractvalue { i64, i1 } %60, 1
  %61 = and i64 %58, 255
  %62 = call i64 @llvm.ctpop.i64(i64 %61)
  %63 = and i64 %62, 1
  %PF49 = icmp eq i64 %63, 0
  %CmpZF_JE83 = icmp eq i1 %ZF45, true
  br i1 %CmpZF_JE83, label %bb.9, label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload50 = load i64, ptr %RBP_N.8, align 1
  %memload51 = load i64, ptr %stktop_4, align 1
  %64 = trunc i64 %memload51 to i32
  %RCX52 = sext i32 %64 to i64
  %memref-idxreg53 = mul i64 4, %RCX52
  %memref-basereg54 = add i64 %memload50, %memref-idxreg53
  %65 = inttoptr i64 %memref-basereg54 to ptr
  %memload55 = load i32, ptr %65, align 1
  %66 = load i32, ptr %RBP_N.32, align 1
  %67 = sub i32 %memload55, %66
  %68 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload55, i32 %66)
  %CF56 = extractvalue { i32, i1 } %68, 1
  %ZF57 = icmp eq i32 %67, 0
  %highbit58 = and i32 -2147483648, %67
  %SF59 = icmp ne i32 %highbit58, 0
  %69 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload55, i32 %66)
  %OF60 = extractvalue { i32, i1 } %69, 1
  %70 = and i32 %67, 255
  %71 = call i32 @llvm.ctpop.i32(i32 %70)
  %72 = and i32 %71, 1
  %PF61 = icmp eq i32 %72, 0
  %CmpSFOF_JGE84 = icmp eq i1 %SF59, %OF60
  br i1 %CmpSFOF_JGE84, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.7
  %memload62 = load i64, ptr %RBP_N.8, align 1
  %memload63 = load i64, ptr %stktop_4, align 1
  %73 = trunc i64 %memload63 to i32
  %RCX64 = sext i32 %73 to i64
  %memref-idxreg65 = mul i64 4, %RCX64
  %memref-basereg66 = add i64 %memload62, %memref-idxreg65
  %74 = inttoptr i64 %memref-basereg66 to ptr
  %memload67 = load i32, ptr %74, align 1
  store i32 %memload67, ptr %RBP_N.32, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.8, %bb.6
  br label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload68 = load i32, ptr %stktop_4, align 1
  %EAX = add i32 %memload68, 1
  %75 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload68, i32 1)
  %CF69 = extractvalue { i32, i1 } %75, 1
  %76 = and i32 %EAX, 255
  %77 = call i32 @llvm.ctpop.i32(i32 %76)
  %78 = and i32 %77, 1
  %PF70 = icmp eq i32 %78, 0
  %ZF71 = icmp eq i32 %EAX, 0
  %highbit72 = and i32 -2147483648, %EAX
  %SF73 = icmp ne i32 %highbit72, 0
  %79 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload68, i32 1)
  %OF74 = extractvalue { i32, i1 } %79, 1
  store i32 %EAX, ptr %stktop_4, align 1
  br label %bb.1

bb.12:                                            ; preds = %bb.1
  %memload75 = load i32, ptr %RBP_N.28, align 1
  %memload76 = load i64, ptr %RBP_N.24, align 1
  %80 = inttoptr i64 %memload76 to ptr
  store i32 %memload75, ptr %80, align 1
  %memload77 = load i32, ptr %RBP_N.32, align 1
  %memload78 = load i64, ptr %RBP_N.24, align 1
  %memref-disp = add i64 %memload78, 4
  %81 = inttoptr i64 %memref-disp to ptr
  store i32 %memload77, ptr %81, align 1
  ret i64 %memload78
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
