; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_4 = alloca i8, i32 36, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 35
  %RBP_N.1 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %4 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.24, align 1
  %5 = load i32, ptr %RBP_N.20, align 1
  %6 = zext i32 %5 to i64
  %7 = zext i32 0 to i64
  %8 = sub i64 %6, %7
  %9 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %6, i64 %7)
  %CF = extractvalue { i64, i1 } %9, 1
  %ZF = icmp eq i64 %8, 0
  %highbit = and i64 -9223372036854775808, %8
  %SF = icmp ne i64 %highbit, 0
  %10 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %6, i64 %7)
  %OF = extractvalue { i64, i1 } %10, 1
  %11 = and i64 %8, 255
  %12 = call i64 @llvm.ctpop.i64(i64 %11)
  %13 = and i64 %12, 1
  %PF = icmp eq i64 %13, 0
  %CmpZF_JNE = icmp eq i1 %ZF, false
  br i1 %CmpZF_JNE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i8 1, ptr %RBP_N.1, align 1
  br label %bb.13

bb.2:                                             ; preds = %entry
  store i32 1, ptr %stktop_4, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %memload = load i32, ptr %stktop_4, align 1
  %14 = load i32, ptr %RBP_N.20, align 1
  %15 = sub i32 %memload, %14
  %16 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %14)
  %CF1 = extractvalue { i32, i1 } %16, 1
  %ZF2 = icmp eq i32 %15, 0
  %highbit3 = and i32 -2147483648, %15
  %SF4 = icmp ne i32 %highbit3, 0
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %14)
  %OF5 = extractvalue { i32, i1 } %17, 1
  %18 = and i32 %15, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = and i32 %19, 1
  %PF6 = icmp eq i32 %20, 0
  %CmpSFOF_JGE = icmp eq i1 %SF4, %OF5
  br i1 %CmpSFOF_JGE, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload7 = load i64, ptr %RBP_N.16, align 1
  %memload8 = load i64, ptr %stktop_4, align 1
  %21 = trunc i64 %memload8 to i32
  %RCX = sext i32 %21 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload7, %memref-idxreg
  %22 = inttoptr i64 %memref-basereg to ptr
  %memload9 = load i32, ptr %22, align 1
  %memload10 = load i64, ptr %RBP_N.16, align 1
  %memload11 = load i32, ptr %stktop_4, align 1
  %EDX = sub i32 %memload11, 1
  %23 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload11, i32 1)
  %CF12 = extractvalue { i32, i1 } %23, 1
  %24 = and i32 %EDX, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = and i32 %25, 1
  %PF13 = icmp eq i32 %26, 0
  %ZF14 = icmp eq i32 %EDX, 0
  %highbit15 = and i32 -2147483648, %EDX
  %SF16 = icmp ne i32 %highbit15, 0
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload11, i32 1)
  %OF17 = extractvalue { i32, i1 } %27, 1
  %RDX = sext i32 %EDX to i64
  %memref-idxreg18 = mul i64 4, %RDX
  %memref-basereg19 = add i64 %memload10, %memref-idxreg18
  %28 = inttoptr i64 %memref-basereg19 to ptr
  %29 = load i32, ptr %28, align 1
  %30 = sub i32 %memload9, %29
  %31 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload9, i32 %29)
  %CF20 = extractvalue { i32, i1 } %31, 1
  %ZF21 = icmp eq i32 %30, 0
  %highbit22 = and i32 -2147483648, %30
  %SF23 = icmp ne i32 %highbit22, 0
  %32 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload9, i32 %29)
  %OF24 = extractvalue { i32, i1 } %32, 1
  %33 = and i32 %30, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = and i32 %34, 1
  %PF25 = icmp eq i32 %35, 0
  %CmpSFOF_JGE80 = icmp eq i1 %SF23, %OF24
  br i1 %CmpSFOF_JGE80, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload26 = load i32, ptr %RBP_N.24, align 1
  %EAX = add i32 %memload26, 1
  %36 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload26, i32 1)
  %CF27 = extractvalue { i32, i1 } %36, 1
  %37 = and i32 %EAX, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF28 = icmp eq i32 %39, 0
  %ZF29 = icmp eq i32 %EAX, 0
  %highbit30 = and i32 -2147483648, %EAX
  %SF31 = icmp ne i32 %highbit30, 0
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload26, i32 1)
  %OF32 = extractvalue { i32, i1 } %40, 1
  store i32 %EAX, ptr %RBP_N.24, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload33 = load i32, ptr %stktop_4, align 1
  %EAX40 = add i32 %memload33, 1
  %41 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload33, i32 1)
  %CF34 = extractvalue { i32, i1 } %41, 1
  %42 = and i32 %EAX40, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = and i32 %43, 1
  %PF35 = icmp eq i32 %44, 0
  %ZF36 = icmp eq i32 %EAX40, 0
  %highbit37 = and i32 -2147483648, %EAX40
  %SF38 = icmp ne i32 %highbit37, 0
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload33, i32 1)
  %OF39 = extractvalue { i32, i1 } %45, 1
  store i32 %EAX40, ptr %stktop_4, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.3
  %memload41 = load i64, ptr %RBP_N.16, align 1
  %memload42 = load i32, ptr %RBP_N.20, align 1
  %ECX = sub i32 %memload42, 1
  %46 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload42, i32 1)
  %CF43 = extractvalue { i32, i1 } %46, 1
  %47 = and i32 %ECX, 255
  %48 = call i32 @llvm.ctpop.i32(i32 %47)
  %49 = and i32 %48, 1
  %PF44 = icmp eq i32 %49, 0
  %ZF45 = icmp eq i32 %ECX, 0
  %highbit46 = and i32 -2147483648, %ECX
  %SF47 = icmp ne i32 %highbit46, 0
  %50 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload42, i32 1)
  %OF48 = extractvalue { i32, i1 } %50, 1
  %RCX49 = sext i32 %ECX to i64
  %memref-idxreg50 = mul i64 4, %RCX49
  %memref-basereg51 = add i64 %memload41, %memref-idxreg50
  %51 = inttoptr i64 %memref-basereg51 to ptr
  %memload52 = load i32, ptr %51, align 1
  %memload53 = load i64, ptr %RBP_N.16, align 1
  %52 = inttoptr i64 %memload53 to ptr
  %53 = load i32, ptr %52, align 1
  %54 = sub i32 %memload52, %53
  %55 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload52, i32 %53)
  %CF54 = extractvalue { i32, i1 } %55, 1
  %ZF55 = icmp eq i32 %54, 0
  %highbit56 = and i32 -2147483648, %54
  %SF57 = icmp ne i32 %highbit56, 0
  %56 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload52, i32 %53)
  %OF58 = extractvalue { i32, i1 } %56, 1
  %57 = and i32 %54, 255
  %58 = call i32 @llvm.ctpop.i32(i32 %57)
  %59 = and i32 %58, 1
  %PF59 = icmp eq i32 %59, 0
  %CmpZF_JLE = icmp eq i1 %ZF55, true
  %CmpOF_JLE = icmp ne i1 %SF57, %OF58
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload60 = load i32, ptr %RBP_N.24, align 1
  %EAX67 = add i32 %memload60, 1
  %60 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload60, i32 1)
  %CF61 = extractvalue { i32, i1 } %60, 1
  %61 = and i32 %EAX67, 255
  %62 = call i32 @llvm.ctpop.i32(i32 %61)
  %63 = and i32 %62, 1
  %PF62 = icmp eq i32 %63, 0
  %ZF63 = icmp eq i32 %EAX67, 0
  %highbit64 = and i32 -2147483648, %EAX67
  %SF65 = icmp ne i32 %highbit64, 0
  %64 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload60, i32 1)
  %OF66 = extractvalue { i32, i1 } %64, 1
  store i32 %EAX67, ptr %RBP_N.24, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.8
  %65 = load i32, ptr %RBP_N.24, align 1
  %66 = zext i32 %65 to i64
  %67 = zext i32 2 to i64
  %68 = sub i64 %66, %67
  %69 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %66, i64 %67)
  %CF68 = extractvalue { i64, i1 } %69, 1
  %ZF69 = icmp eq i64 %68, 0
  %highbit70 = and i64 -9223372036854775808, %68
  %SF71 = icmp ne i64 %highbit70, 0
  %70 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %66, i64 %67)
  %OF72 = extractvalue { i64, i1 } %70, 1
  %71 = and i64 %68, 255
  %72 = call i64 @llvm.ctpop.i64(i64 %71)
  %73 = and i64 %72, 1
  %PF73 = icmp eq i64 %73, 0
  %CmpSFOF_JGE81 = icmp eq i1 %SF71, %OF72
  br i1 %CmpSFOF_JGE81, label %bb.12, label %bb.11

bb.11:                                            ; preds = %bb.10
  store i8 1, ptr %RBP_N.1, align 1
  br label %bb.13

bb.12:                                            ; preds = %bb.10
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.13

bb.13:                                            ; preds = %bb.12, %bb.11, %bb.1
  %memload74 = load i8, ptr %RBP_N.1, align 1
  %AL = and i8 %memload74, 1
  %74 = call i8 @llvm.ctpop.i8(i8 %AL)
  %75 = and i8 %74, 1
  %PF75 = icmp eq i8 %75, 0
  %ZF76 = icmp eq i8 %AL, 0
  %highbit77 = and i8 -128, %AL
  %SF78 = icmp ne i8 %highbit77, 0
  %EAX79 = zext i8 %AL to i32
  ret i32 %EAX79
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
