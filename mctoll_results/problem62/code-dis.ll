; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

define dso_local i32 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 39
  %RBP_N.1 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %4 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.24, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.9
  %memload = load i64, ptr %RBP_N.24, align 1
  %5 = trunc i64 %memload to i32
  %RAX = sext i32 %5 to i64
  store i64 %RAX, ptr %stktop_8, align 1
  %memload1 = load i64, ptr %RBP_N.16, align 1
  %6 = inttoptr i64 %memload1 to ptr
  %RAX2 = call i64 @strlen(ptr %6)
  %memload3 = load i64, ptr %stktop_8, align 1
  %7 = sub i64 %memload3, %RAX2
  %8 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %memload3, i64 %RAX2)
  %CF = extractvalue { i64, i1 } %8, 1
  %ZF = icmp eq i64 %7, 0
  %highbit = and i64 -9223372036854775808, %7
  %SF = icmp ne i64 %highbit, 0
  %9 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %memload3, i64 %RAX2)
  %OF = extractvalue { i64, i1 } %9, 1
  %10 = and i64 %7, 255
  %11 = call i64 @llvm.ctpop.i64(i64 %10)
  %12 = and i64 %11, 1
  %PF = icmp eq i64 %12, 0
  %CFCmp_JAE = icmp eq i1 %CF, false
  br i1 %CFCmp_JAE, label %bb.10, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload4 = load i64, ptr %RBP_N.16, align 1
  %memload5 = load i64, ptr %RBP_N.24, align 1
  %13 = trunc i64 %memload5 to i32
  %RCX = sext i32 %13 to i64
  %memref-basereg = add i64 %memload4, %RCX
  %14 = inttoptr i64 %memref-basereg to ptr
  %memload6 = load i32, ptr %14, align 1
  %15 = trunc i32 %memload6 to i8
  %EAX = sext i8 %15 to i32
  %16 = sub i32 %EAX, 40
  %17 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 40)
  %CF7 = extractvalue { i32, i1 } %17, 1
  %ZF8 = icmp eq i32 %16, 0
  %highbit9 = and i32 -2147483648, %16
  %SF10 = icmp ne i32 %highbit9, 0
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 40)
  %OF11 = extractvalue { i32, i1 } %18, 1
  %19 = and i32 %16, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = and i32 %20, 1
  %PF12 = icmp eq i32 %21, 0
  %CmpZF_JNE = icmp eq i1 %ZF8, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload13 = load i32, ptr %RBP_N.20, align 1
  %EAX20 = add i32 %memload13, 1
  %22 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload13, i32 1)
  %CF14 = extractvalue { i32, i1 } %22, 1
  %23 = and i32 %EAX20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = and i32 %24, 1
  %PF15 = icmp eq i32 %25, 0
  %ZF16 = icmp eq i32 %EAX20, 0
  %highbit17 = and i32 -2147483648, %EAX20
  %SF18 = icmp ne i32 %highbit17, 0
  %26 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload13, i32 1)
  %OF19 = extractvalue { i32, i1 } %26, 1
  store i32 %EAX20, ptr %RBP_N.20, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  %memload21 = load i64, ptr %RBP_N.16, align 1
  %memload22 = load i64, ptr %RBP_N.24, align 1
  %27 = trunc i64 %memload22 to i32
  %RCX23 = sext i32 %27 to i64
  %memref-basereg24 = add i64 %memload21, %RCX23
  %28 = inttoptr i64 %memref-basereg24 to ptr
  %memload25 = load i32, ptr %28, align 1
  %29 = trunc i32 %memload25 to i8
  %EAX26 = sext i8 %29 to i32
  %30 = sub i32 %EAX26, 41
  %31 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX26, i32 41)
  %CF27 = extractvalue { i32, i1 } %31, 1
  %ZF28 = icmp eq i32 %30, 0
  %highbit29 = and i32 -2147483648, %30
  %SF30 = icmp ne i32 %highbit29, 0
  %32 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX26, i32 41)
  %OF31 = extractvalue { i32, i1 } %32, 1
  %33 = and i32 %30, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = and i32 %34, 1
  %PF32 = icmp eq i32 %35, 0
  %CmpZF_JNE73 = icmp eq i1 %ZF28, false
  br i1 %CmpZF_JNE73, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload33 = load i32, ptr %RBP_N.20, align 1
  %EAX40 = sub i32 %memload33, 1
  %36 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload33, i32 1)
  %CF34 = extractvalue { i32, i1 } %36, 1
  %37 = and i32 %EAX40, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF35 = icmp eq i32 %39, 0
  %ZF36 = icmp eq i32 %EAX40, 0
  %highbit37 = and i32 -2147483648, %EAX40
  %SF38 = icmp ne i32 %highbit37, 0
  %40 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload33, i32 1)
  %OF39 = extractvalue { i32, i1 } %40, 1
  store i32 %EAX40, ptr %RBP_N.20, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  %41 = load i32, ptr %RBP_N.20, align 1
  %42 = zext i32 %41 to i64
  %43 = zext i32 0 to i64
  %44 = sub i64 %42, %43
  %45 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %42, i64 %43)
  %CF41 = extractvalue { i64, i1 } %45, 1
  %ZF42 = icmp eq i64 %44, 0
  %highbit43 = and i64 -9223372036854775808, %44
  %SF44 = icmp ne i64 %highbit43, 0
  %46 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %42, i64 %43)
  %OF45 = extractvalue { i64, i1 } %46, 1
  %47 = and i64 %44, 255
  %48 = call i64 @llvm.ctpop.i64(i64 %47)
  %49 = and i64 %48, 1
  %PF46 = icmp eq i64 %49, 0
  %CmpSFOF_JGE = icmp eq i1 %SF44, %OF45
  br i1 %CmpSFOF_JGE, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.11

bb.8:                                             ; preds = %bb.6
  br label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload47 = load i32, ptr %RBP_N.24, align 1
  %EAX54 = add i32 %memload47, 1
  %50 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload47, i32 1)
  %CF48 = extractvalue { i32, i1 } %50, 1
  %51 = and i32 %EAX54, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %51)
  %53 = and i32 %52, 1
  %PF49 = icmp eq i32 %53, 0
  %ZF50 = icmp eq i32 %EAX54, 0
  %highbit51 = and i32 -2147483648, %EAX54
  %SF52 = icmp ne i32 %highbit51, 0
  %54 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload47, i32 1)
  %OF53 = extractvalue { i32, i1 } %54, 1
  store i32 %EAX54, ptr %RBP_N.24, align 1
  br label %bb.1

bb.10:                                            ; preds = %bb.1
  %55 = load i32, ptr %RBP_N.20, align 1
  %56 = zext i32 %55 to i64
  %57 = zext i32 0 to i64
  %58 = sub i64 %56, %57
  %59 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %56, i64 %57)
  %CF55 = extractvalue { i64, i1 } %59, 1
  %ZF56 = icmp eq i64 %58, 0
  %highbit57 = and i64 -9223372036854775808, %58
  %SF58 = icmp ne i64 %highbit57, 0
  %60 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %56, i64 %57)
  %OF59 = extractvalue { i64, i1 } %60, 1
  %61 = and i64 %58, 255
  %62 = call i64 @llvm.ctpop.i64(i64 %61)
  %63 = and i64 %62, 1
  %PF60 = icmp eq i64 %63, 0
  %AL = icmp eq i1 %ZF56, true
  %64 = zext i1 %AL to i8
  %AL65 = and i8 %64, 1
  %65 = call i8 @llvm.ctpop.i8(i8 %AL65)
  %66 = and i8 %65, 1
  %PF61 = icmp eq i8 %66, 0
  %ZF62 = icmp eq i8 %AL65, 0
  %highbit63 = and i8 -128, %AL65
  %SF64 = icmp ne i8 %highbit63, 0
  store i8 %AL65, ptr %RBP_N.1, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.7
  %memload66 = load i8, ptr %RBP_N.1, align 1
  %AL71 = and i8 %memload66, 1
  %67 = call i8 @llvm.ctpop.i8(i8 %AL71)
  %68 = and i8 %67, 1
  %PF67 = icmp eq i8 %68, 0
  %ZF68 = icmp eq i8 %AL71, 0
  %highbit69 = and i8 -128, %AL71
  %SF70 = icmp ne i8 %highbit69, 0
  %EAX72 = zext i8 %AL71 to i32
  ret i32 %EAX72
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
