; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i64 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 72, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.56 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.52 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.48 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 36
  %RBP_N.36 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 40
  %RBP_N.32 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 44
  %RBP_N.28 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 48
  %RBP_N.24 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 56
  %RBP_N.16 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 64
  %RBP_N.8 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %9 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i64 %arg2, ptr %RBP_N.24, align 1
  %memload = load i64, ptr %RBP_N.16, align 1
  %10 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %10)
  %11 = trunc i64 %RAX to i32
  store i32 %11, ptr %RBP_N.28, align 1
  %memload1 = load i64, ptr %RBP_N.24, align 1
  %12 = inttoptr i64 %memload1 to ptr
  %RAX2 = call i64 @strlen(ptr %12)
  %13 = trunc i64 %RAX2 to i32
  store i32 %13, ptr %RBP_N.32, align 1
  %memload3 = load i32, ptr %RBP_N.28, align 1
  %14 = load i32, ptr %RBP_N.32, align 1
  %15 = sub i32 %memload3, %14
  %16 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload3, i32 %14)
  %CF = extractvalue { i32, i1 } %16, 1
  %ZF = icmp eq i32 %15, 0
  %highbit = and i32 -2147483648, %15
  %SF = icmp ne i32 %highbit, 0
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload3, i32 %14)
  %OF = extractvalue { i32, i1 } %17, 1
  %18 = and i32 %15, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = and i32 %19, 1
  %PF = icmp eq i32 %20, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %memload4 = load i32, ptr %RBP_N.28, align 1
  store i32 %memload4, ptr %RBP_N.56, align 1
  br label %bb.3

bb.2:                                             ; preds = %entry
  %memload5 = load i32, ptr %RBP_N.32, align 1
  store i32 %memload5, ptr %RBP_N.56, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.1
  %memload6 = load i32, ptr %RBP_N.56, align 1
  store i32 %memload6, ptr %RBP_N.36, align 1
  %memload7 = load i32, ptr %RBP_N.36, align 1
  %EAX = add i32 %memload7, 1
  %21 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload7, i32 1)
  %CF8 = extractvalue { i32, i1 } %21, 1
  %22 = and i32 %EAX, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF9 = icmp eq i32 %24, 0
  %ZF10 = icmp eq i32 %EAX, 0
  %highbit11 = and i32 -2147483648, %EAX
  %SF12 = icmp ne i32 %highbit11, 0
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload7, i32 1)
  %OF13 = extractvalue { i32, i1 } %25, 1
  %RDI = sext i32 %EAX to i64
  %RDI17 = shl i64 %RDI, 0
  %ZF14 = icmp eq i64 %RDI17, 0
  %highbit15 = and i64 -9223372036854775808, %RDI17
  %SF16 = icmp ne i64 %highbit15, 0
  %26 = call ptr @malloc(i64 %RDI17)
  %RAX18 = ptrtoint ptr %26 to i64
  store i64 %RAX18, ptr %RBP_N.48, align 1
  %27 = load i64, ptr %RBP_N.48, align 1
  %28 = sub i64 %27, 0
  %29 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %27, i64 0)
  %CF19 = extractvalue { i64, i1 } %29, 1
  %ZF20 = icmp eq i64 %28, 0
  %highbit21 = and i64 -9223372036854775808, %28
  %SF22 = icmp ne i64 %highbit21, 0
  %30 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %27, i64 0)
  %OF23 = extractvalue { i64, i1 } %30, 1
  %31 = and i64 %28, 255
  %32 = call i64 @llvm.ctpop.i64(i64 %31)
  %33 = and i64 %32, 1
  %PF24 = icmp eq i64 %33, 0
  %CmpZF_JNE = icmp eq i1 %ZF20, false
  br i1 %CmpZF_JNE, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %34 = sext i32 0 to i64
  store i64 %34, ptr %RBP_N.8, align 1
  br label %bb.9

bb.5:                                             ; preds = %bb.3
  store i32 0, ptr %RBP_N.52, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.7
  %memload25 = load i32, ptr %RBP_N.52, align 1
  %35 = load i32, ptr %RBP_N.36, align 1
  %36 = sub i32 %memload25, %35
  %37 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload25, i32 %35)
  %CF26 = extractvalue { i32, i1 } %37, 1
  %ZF27 = icmp eq i32 %36, 0
  %highbit28 = and i32 -2147483648, %36
  %SF29 = icmp ne i32 %highbit28, 0
  %38 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload25, i32 %35)
  %OF30 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %36, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF31 = icmp eq i32 %41, 0
  %CmpSFOF_JGE64 = icmp eq i1 %SF29, %OF30
  br i1 %CmpSFOF_JGE64, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload32 = load i64, ptr %RBP_N.16, align 1
  %memload33 = load i64, ptr %RBP_N.52, align 1
  %42 = trunc i64 %memload33 to i32
  %RCX = sext i32 %42 to i64
  %memref-basereg = add i64 %memload32, %RCX
  %43 = inttoptr i64 %memref-basereg to ptr
  %memload34 = load i32, ptr %43, align 1
  %44 = trunc i32 %memload34 to i8
  %EDX = sext i8 %44 to i32
  %memload35 = load i64, ptr %RBP_N.24, align 1
  %memload36 = load i64, ptr %RBP_N.52, align 1
  %45 = trunc i64 %memload36 to i32
  %RCX37 = sext i32 %45 to i64
  %memref-basereg38 = add i64 %memload35, %RCX37
  %46 = inttoptr i64 %memref-basereg38 to ptr
  %memload39 = load i32, ptr %46, align 1
  %47 = trunc i32 %memload39 to i8
  %ESI = sext i8 %47 to i32
  %48 = sub i32 %EDX, %ESI
  %49 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX, i32 %ESI)
  %CF40 = extractvalue { i32, i1 } %49, 1
  %ZF41 = icmp eq i32 %48, 0
  %highbit42 = and i32 -2147483648, %48
  %SF43 = icmp ne i32 %highbit42, 0
  %50 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX, i32 %ESI)
  %OF44 = extractvalue { i32, i1 } %50, 1
  %51 = and i32 %48, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %51)
  %53 = and i32 %52, 1
  %PF45 = icmp eq i32 %53, 0
  %Cond_CMOVE = icmp eq i1 %ZF41, true
  %CMOV = select i1 %Cond_CMOVE, i32 48, i32 49
  %DL = trunc i32 %CMOV to i8
  %memload46 = load i64, ptr %RBP_N.48, align 1
  %memload47 = load i64, ptr %RBP_N.52, align 1
  %54 = trunc i64 %memload47 to i32
  %RCX48 = sext i32 %54 to i64
  %memref-basereg49 = add i64 %memload46, %RCX48
  %55 = inttoptr i64 %memref-basereg49 to ptr
  store i8 %DL, ptr %55, align 1
  %memload50 = load i32, ptr %RBP_N.52, align 1
  %EAX57 = add i32 %memload50, 1
  %56 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload50, i32 1)
  %CF51 = extractvalue { i32, i1 } %56, 1
  %57 = and i32 %EAX57, 255
  %58 = call i32 @llvm.ctpop.i32(i32 %57)
  %59 = and i32 %58, 1
  %PF52 = icmp eq i32 %59, 0
  %ZF53 = icmp eq i32 %EAX57, 0
  %highbit54 = and i32 -2147483648, %EAX57
  %SF55 = icmp ne i32 %highbit54, 0
  %60 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload50, i32 1)
  %OF56 = extractvalue { i32, i1 } %60, 1
  store i32 %EAX57, ptr %RBP_N.52, align 1
  br label %bb.6

bb.8:                                             ; preds = %bb.6
  %memload58 = load i64, ptr %RBP_N.48, align 1
  %memload59 = load i64, ptr %RBP_N.36, align 1
  %61 = trunc i64 %memload59 to i32
  %RCX60 = sext i32 %61 to i64
  %memref-basereg61 = add i64 %memload58, %RCX60
  %62 = inttoptr i64 %memref-basereg61 to ptr
  store i8 0, ptr %62, align 1
  %memload62 = load i64, ptr %RBP_N.48, align 1
  store i64 %memload62, ptr %RBP_N.8, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.4
  %memload63 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload63
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
