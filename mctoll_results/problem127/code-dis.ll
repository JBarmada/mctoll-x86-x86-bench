; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_4 = alloca i8, i32 32, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.20 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.16 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 31
  %RBP_N.1 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  %4 = load i32, ptr %RBP_N.20, align 1
  %5 = zext i32 %4 to i64
  %6 = zext i32 0 to i64
  %7 = sub i64 %5, %6
  %8 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %5, i64 %6)
  %CF = extractvalue { i64, i1 } %8, 1
  %ZF = icmp eq i64 %7, 0
  %highbit = and i64 -9223372036854775808, %7
  %SF = icmp ne i64 %highbit, 0
  %9 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %5, i64 %6)
  %OF = extractvalue { i64, i1 } %9, 1
  %10 = and i64 %7, 255
  %11 = call i64 @llvm.ctpop.i64(i64 %10)
  %12 = and i64 %11, 1
  %PF = icmp eq i64 %12, 0
  %CmpZF_JNE = icmp eq i1 %ZF, false
  br i1 %CmpZF_JNE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i8 1, ptr %RBP_N.1, align 1
  br label %bb.13

bb.2:                                             ; preds = %entry
  store i32 1, ptr %stktop_4, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.11
  %memload = load i32, ptr %stktop_4, align 1
  %13 = load i32, ptr %RBP_N.20, align 1
  %14 = sub i32 %memload, %13
  %15 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %13)
  %CF1 = extractvalue { i32, i1 } %15, 1
  %ZF2 = icmp eq i32 %14, 0
  %highbit3 = and i32 -2147483648, %14
  %SF4 = icmp ne i32 %highbit3, 0
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %13)
  %OF5 = extractvalue { i32, i1 } %16, 1
  %17 = and i32 %14, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = and i32 %18, 1
  %PF6 = icmp eq i32 %19, 0
  %CmpSFOF_JGE = icmp eq i1 %SF4, %OF5
  br i1 %CmpSFOF_JGE, label %bb.12, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload7 = load i64, ptr %RBP_N.16, align 1
  %memload8 = load i64, ptr %stktop_4, align 1
  %20 = trunc i64 %memload8 to i32
  %RCX = sext i32 %20 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload7, %memref-idxreg
  %21 = inttoptr i64 %memref-basereg to ptr
  %memload9 = load i32, ptr %21, align 1
  %memload10 = load i64, ptr %RBP_N.16, align 1
  %memload11 = load i32, ptr %stktop_4, align 1
  %EDX = sub i32 %memload11, 1
  %22 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload11, i32 1)
  %CF12 = extractvalue { i32, i1 } %22, 1
  %23 = and i32 %EDX, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = and i32 %24, 1
  %PF13 = icmp eq i32 %25, 0
  %ZF14 = icmp eq i32 %EDX, 0
  %highbit15 = and i32 -2147483648, %EDX
  %SF16 = icmp ne i32 %highbit15, 0
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload11, i32 1)
  %OF17 = extractvalue { i32, i1 } %26, 1
  %RDX = sext i32 %EDX to i64
  %memref-idxreg18 = mul i64 4, %RDX
  %memref-basereg19 = add i64 %memload10, %memref-idxreg18
  %27 = inttoptr i64 %memref-basereg19 to ptr
  %28 = load i32, ptr %27, align 1
  %29 = sub i32 %memload9, %28
  %30 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload9, i32 %28)
  %CF20 = extractvalue { i32, i1 } %30, 1
  %ZF21 = icmp eq i32 %29, 0
  %highbit22 = and i32 -2147483648, %29
  %SF23 = icmp ne i32 %highbit22, 0
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload9, i32 %28)
  %OF24 = extractvalue { i32, i1 } %31, 1
  %32 = and i32 %29, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = and i32 %33, 1
  %PF25 = icmp eq i32 %34, 0
  %CmpSFOF_JGE93 = icmp eq i1 %SF23, %OF24
  br i1 %CmpSFOF_JGE93, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.13

bb.6:                                             ; preds = %bb.4
  %35 = load i32, ptr %stktop_4, align 1
  %36 = zext i32 %35 to i64
  %37 = zext i32 2 to i64
  %38 = sub i64 %36, %37
  %39 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %36, i64 %37)
  %CF26 = extractvalue { i64, i1 } %39, 1
  %ZF27 = icmp eq i64 %38, 0
  %highbit28 = and i64 -9223372036854775808, %38
  %SF29 = icmp ne i64 %highbit28, 0
  %40 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %36, i64 %37)
  %OF30 = extractvalue { i64, i1 } %40, 1
  %41 = and i64 %38, 255
  %42 = call i64 @llvm.ctpop.i64(i64 %41)
  %43 = and i64 %42, 1
  %PF31 = icmp eq i64 %43, 0
  %SFAndOF_JL = icmp ne i1 %SF29, %OF30
  br i1 %SFAndOF_JL, label %bb.10, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload32 = load i64, ptr %RBP_N.16, align 1
  %memload33 = load i64, ptr %stktop_4, align 1
  %44 = trunc i64 %memload33 to i32
  %RCX34 = sext i32 %44 to i64
  %memref-idxreg35 = mul i64 4, %RCX34
  %memref-basereg36 = add i64 %memload32, %memref-idxreg35
  %45 = inttoptr i64 %memref-basereg36 to ptr
  %memload37 = load i32, ptr %45, align 1
  %memload38 = load i64, ptr %RBP_N.16, align 1
  %memload39 = load i32, ptr %stktop_4, align 1
  %EDX46 = sub i32 %memload39, 1
  %46 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload39, i32 1)
  %CF40 = extractvalue { i32, i1 } %46, 1
  %47 = and i32 %EDX46, 255
  %48 = call i32 @llvm.ctpop.i32(i32 %47)
  %49 = and i32 %48, 1
  %PF41 = icmp eq i32 %49, 0
  %ZF42 = icmp eq i32 %EDX46, 0
  %highbit43 = and i32 -2147483648, %EDX46
  %SF44 = icmp ne i32 %highbit43, 0
  %50 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload39, i32 1)
  %OF45 = extractvalue { i32, i1 } %50, 1
  %RDX47 = sext i32 %EDX46 to i64
  %memref-idxreg48 = mul i64 4, %RDX47
  %memref-basereg49 = add i64 %memload38, %memref-idxreg48
  %51 = inttoptr i64 %memref-basereg49 to ptr
  %52 = load i32, ptr %51, align 1
  %53 = sub i32 %memload37, %52
  %54 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload37, i32 %52)
  %CF50 = extractvalue { i32, i1 } %54, 1
  %ZF51 = icmp eq i32 %53, 0
  %highbit52 = and i32 -2147483648, %53
  %SF53 = icmp ne i32 %highbit52, 0
  %55 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload37, i32 %52)
  %OF54 = extractvalue { i32, i1 } %55, 1
  %56 = and i32 %53, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = and i32 %57, 1
  %PF55 = icmp eq i32 %58, 0
  %CmpZF_JNE94 = icmp eq i1 %ZF51, false
  br i1 %CmpZF_JNE94, label %bb.10, label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload56 = load i64, ptr %RBP_N.16, align 1
  %memload57 = load i64, ptr %stktop_4, align 1
  %59 = trunc i64 %memload57 to i32
  %RCX58 = sext i32 %59 to i64
  %memref-idxreg59 = mul i64 4, %RCX58
  %memref-basereg60 = add i64 %memload56, %memref-idxreg59
  %60 = inttoptr i64 %memref-basereg60 to ptr
  %memload61 = load i32, ptr %60, align 1
  %memload62 = load i64, ptr %RBP_N.16, align 1
  %memload63 = load i32, ptr %stktop_4, align 1
  %EDX70 = sub i32 %memload63, 2
  %61 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload63, i32 2)
  %CF64 = extractvalue { i32, i1 } %61, 1
  %62 = and i32 %EDX70, 255
  %63 = call i32 @llvm.ctpop.i32(i32 %62)
  %64 = and i32 %63, 1
  %PF65 = icmp eq i32 %64, 0
  %ZF66 = icmp eq i32 %EDX70, 0
  %highbit67 = and i32 -2147483648, %EDX70
  %SF68 = icmp ne i32 %highbit67, 0
  %65 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload63, i32 2)
  %OF69 = extractvalue { i32, i1 } %65, 1
  %RDX71 = sext i32 %EDX70 to i64
  %memref-idxreg72 = mul i64 4, %RDX71
  %memref-basereg73 = add i64 %memload62, %memref-idxreg72
  %66 = inttoptr i64 %memref-basereg73 to ptr
  %67 = load i32, ptr %66, align 1
  %68 = sub i32 %memload61, %67
  %69 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload61, i32 %67)
  %CF74 = extractvalue { i32, i1 } %69, 1
  %ZF75 = icmp eq i32 %68, 0
  %highbit76 = and i32 -2147483648, %68
  %SF77 = icmp ne i32 %highbit76, 0
  %70 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload61, i32 %67)
  %OF78 = extractvalue { i32, i1 } %70, 1
  %71 = and i32 %68, 255
  %72 = call i32 @llvm.ctpop.i32(i32 %71)
  %73 = and i32 %72, 1
  %PF79 = icmp eq i32 %73, 0
  %CmpZF_JNE95 = icmp eq i1 %ZF75, false
  br i1 %CmpZF_JNE95, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.13

bb.10:                                            ; preds = %bb.8, %bb.7, %bb.6
  br label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload80 = load i32, ptr %stktop_4, align 1
  %EAX = add i32 %memload80, 1
  %74 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload80, i32 1)
  %CF81 = extractvalue { i32, i1 } %74, 1
  %75 = and i32 %EAX, 255
  %76 = call i32 @llvm.ctpop.i32(i32 %75)
  %77 = and i32 %76, 1
  %PF82 = icmp eq i32 %77, 0
  %ZF83 = icmp eq i32 %EAX, 0
  %highbit84 = and i32 -2147483648, %EAX
  %SF85 = icmp ne i32 %highbit84, 0
  %78 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload80, i32 1)
  %OF86 = extractvalue { i32, i1 } %78, 1
  store i32 %EAX, ptr %stktop_4, align 1
  br label %bb.3

bb.12:                                            ; preds = %bb.3
  store i8 1, ptr %RBP_N.1, align 1
  br label %bb.13

bb.13:                                            ; preds = %bb.12, %bb.9, %bb.5, %bb.1
  %memload87 = load i8, ptr %RBP_N.1, align 1
  %AL = and i8 %memload87, 1
  %79 = call i8 @llvm.ctpop.i8(i8 %AL)
  %80 = and i8 %79, 1
  %PF88 = icmp eq i8 %80, 0
  %ZF89 = icmp eq i8 %AL, 0
  %highbit90 = and i8 -128, %AL
  %SF91 = icmp ne i8 %highbit90, 0
  %EAX92 = zext i8 %AL to i32
  ret i32 %EAX92
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
