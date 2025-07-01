; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1) {
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
  store i32 0, ptr %RBP_N.20, align 1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.8
  %memload = load i64, ptr %RBP_N.16, align 1
  %memload1 = load i64, ptr %stktop_4, align 1
  %4 = trunc i64 %memload1 to i32
  %RCX = sext i32 %4 to i64
  %memref-basereg = add i64 %memload, %RCX
  %5 = inttoptr i64 %memref-basereg to ptr
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i64
  %8 = zext i8 0 to i64
  %9 = sub i64 %7, %8
  %10 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %7, i64 %8)
  %CF = extractvalue { i64, i1 } %10, 1
  %ZF = icmp eq i64 %9, 0
  %highbit = and i64 -9223372036854775808, %9
  %SF = icmp ne i64 %highbit, 0
  %11 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %7, i64 %8)
  %OF = extractvalue { i64, i1 } %11, 1
  %12 = and i64 %9, 255
  %13 = call i64 @llvm.ctpop.i64(i64 %12)
  %14 = and i64 %13, 1
  %PF = icmp eq i64 %14, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.9, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload2 = load i64, ptr %RBP_N.16, align 1
  %memload3 = load i64, ptr %stktop_4, align 1
  %15 = trunc i64 %memload3 to i32
  %RCX4 = sext i32 %15 to i64
  %memref-basereg5 = add i64 %memload2, %RCX4
  %16 = inttoptr i64 %memref-basereg5 to ptr
  %memload6 = load i32, ptr %16, align 1
  %17 = trunc i32 %memload6 to i8
  %EAX = sext i8 %17 to i32
  %18 = sub i32 %EAX, 60
  %19 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 60)
  %CF7 = extractvalue { i32, i1 } %19, 1
  %ZF8 = icmp eq i32 %18, 0
  %highbit9 = and i32 -2147483648, %18
  %SF10 = icmp ne i32 %highbit9, 0
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 60)
  %OF11 = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %18, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF12 = icmp eq i32 %23, 0
  %CmpZF_JNE = icmp eq i1 %ZF8, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload13 = load i32, ptr %RBP_N.20, align 1
  %EAX20 = add i32 %memload13, 1
  %24 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload13, i32 1)
  %CF14 = extractvalue { i32, i1 } %24, 1
  %25 = and i32 %EAX20, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = and i32 %26, 1
  %PF15 = icmp eq i32 %27, 0
  %ZF16 = icmp eq i32 %EAX20, 0
  %highbit17 = and i32 -2147483648, %EAX20
  %SF18 = icmp ne i32 %highbit17, 0
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload13, i32 1)
  %OF19 = extractvalue { i32, i1 } %28, 1
  store i32 %EAX20, ptr %RBP_N.20, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  %memload21 = load i64, ptr %RBP_N.16, align 1
  %memload22 = load i64, ptr %stktop_4, align 1
  %29 = trunc i64 %memload22 to i32
  %RCX23 = sext i32 %29 to i64
  %memref-basereg24 = add i64 %memload21, %RCX23
  %30 = inttoptr i64 %memref-basereg24 to ptr
  %memload25 = load i32, ptr %30, align 1
  %31 = trunc i32 %memload25 to i8
  %EAX26 = sext i8 %31 to i32
  %32 = sub i32 %EAX26, 62
  %33 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX26, i32 62)
  %CF27 = extractvalue { i32, i1 } %33, 1
  %ZF28 = icmp eq i32 %32, 0
  %highbit29 = and i32 -2147483648, %32
  %SF30 = icmp ne i32 %highbit29, 0
  %34 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX26, i32 62)
  %OF31 = extractvalue { i32, i1 } %34, 1
  %35 = and i32 %32, 255
  %36 = call i32 @llvm.ctpop.i32(i32 %35)
  %37 = and i32 %36, 1
  %PF32 = icmp eq i32 %37, 0
  %CmpZF_JNE67 = icmp eq i1 %ZF28, false
  br i1 %CmpZF_JNE67, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload33 = load i32, ptr %RBP_N.20, align 1
  %EAX40 = add i32 %memload33, -1
  %38 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload33, i32 -1)
  %CF34 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %EAX40, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF35 = icmp eq i32 %41, 0
  %ZF36 = icmp eq i32 %EAX40, 0
  %highbit37 = and i32 -2147483648, %EAX40
  %SF38 = icmp ne i32 %highbit37, 0
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload33, i32 -1)
  %OF39 = extractvalue { i32, i1 } %42, 1
  store i32 %EAX40, ptr %RBP_N.20, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  %43 = load i32, ptr %RBP_N.20, align 1
  %44 = zext i32 %43 to i64
  %45 = zext i32 0 to i64
  %46 = sub i64 %44, %45
  %47 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %44, i64 %45)
  %CF41 = extractvalue { i64, i1 } %47, 1
  %ZF42 = icmp eq i64 %46, 0
  %highbit43 = and i64 -9223372036854775808, %46
  %SF44 = icmp ne i64 %highbit43, 0
  %48 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %44, i64 %45)
  %OF45 = extractvalue { i64, i1 } %48, 1
  %49 = and i64 %46, 255
  %50 = call i64 @llvm.ctpop.i64(i64 %49)
  %51 = and i64 %50, 1
  %PF46 = icmp eq i64 %51, 0
  %CmpSFOF_JGE = icmp eq i1 %SF44, %OF45
  br i1 %CmpSFOF_JGE, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.12

bb.8:                                             ; preds = %bb.6
  %memload47 = load i32, ptr %stktop_4, align 1
  %EAX54 = add i32 %memload47, 1
  %52 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload47, i32 1)
  %CF48 = extractvalue { i32, i1 } %52, 1
  %53 = and i32 %EAX54, 255
  %54 = call i32 @llvm.ctpop.i32(i32 %53)
  %55 = and i32 %54, 1
  %PF49 = icmp eq i32 %55, 0
  %ZF50 = icmp eq i32 %EAX54, 0
  %highbit51 = and i32 -2147483648, %EAX54
  %SF52 = icmp ne i32 %highbit51, 0
  %56 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload47, i32 1)
  %OF53 = extractvalue { i32, i1 } %56, 1
  store i32 %EAX54, ptr %stktop_4, align 1
  br label %bb.1

bb.9:                                             ; preds = %bb.1
  %57 = load i32, ptr %RBP_N.20, align 1
  %58 = zext i32 %57 to i64
  %59 = zext i32 0 to i64
  %60 = sub i64 %58, %59
  %61 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %58, i64 %59)
  %CF55 = extractvalue { i64, i1 } %61, 1
  %ZF56 = icmp eq i64 %60, 0
  %highbit57 = and i64 -9223372036854775808, %60
  %SF58 = icmp ne i64 %highbit57, 0
  %62 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %58, i64 %59)
  %OF59 = extractvalue { i64, i1 } %62, 1
  %63 = and i64 %60, 255
  %64 = call i64 @llvm.ctpop.i64(i64 %63)
  %65 = and i64 %64, 1
  %PF60 = icmp eq i64 %65, 0
  %CmpZF_JE68 = icmp eq i1 %ZF56, true
  br i1 %CmpZF_JE68, label %bb.11, label %bb.10

bb.10:                                            ; preds = %bb.9
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.12

bb.11:                                            ; preds = %bb.9
  store i8 1, ptr %RBP_N.1, align 1
  br label %bb.12

bb.12:                                            ; preds = %bb.11, %bb.10, %bb.7
  %memload61 = load i8, ptr %RBP_N.1, align 1
  %AL = and i8 %memload61, 1
  %66 = call i8 @llvm.ctpop.i8(i8 %AL)
  %67 = and i8 %66, 1
  %PF62 = icmp eq i8 %67, 0
  %ZF63 = icmp eq i8 %AL, 0
  %highbit64 = and i8 -128, %AL
  %SF65 = icmp ne i8 %highbit64, 0
  %EAX66 = zext i8 %AL to i32
  ret i32 %EAX66
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
