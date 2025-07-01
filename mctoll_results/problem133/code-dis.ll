; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

define dso_local i32 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 52
  %RBP_N.4 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.13
  %memload = load i64, ptr %RBP_N.28, align 1
  %7 = trunc i64 %memload to i32
  %RAX = sext i32 %7 to i64
  store i64 %RAX, ptr %RBP_N.40, align 1
  %memload1 = load i64, ptr %RBP_N.16, align 1
  %8 = inttoptr i64 %memload1 to ptr
  %RAX2 = call i64 @strlen(ptr %8)
  %memload3 = load i64, ptr %RBP_N.40, align 1
  %9 = sub i64 %memload3, %RAX2
  %10 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %memload3, i64 %RAX2)
  %CF = extractvalue { i64, i1 } %10, 1
  %ZF = icmp eq i64 %9, 0
  %highbit = and i64 -9223372036854775808, %9
  %SF = icmp ne i64 %highbit, 0
  %11 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %memload3, i64 %RAX2)
  %OF = extractvalue { i64, i1 } %11, 1
  %12 = and i64 %9, 255
  %13 = call i64 @llvm.ctpop.i64(i64 %12)
  %14 = and i64 %13, 1
  %PF = icmp eq i64 %14, 0
  %CFCmp_JAE = icmp eq i1 %CF, false
  br i1 %CFCmp_JAE, label %bb.14, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload4 = load i64, ptr %RBP_N.16, align 1
  %memload5 = load i64, ptr %RBP_N.28, align 1
  %15 = trunc i64 %memload5 to i32
  %RCX = sext i32 %15 to i64
  %memref-basereg = add i64 %memload4, %RCX
  %16 = inttoptr i64 %memref-basereg to ptr
  %memload6 = load i32, ptr %16, align 1
  %17 = trunc i32 %memload6 to i8
  %EAX = sext i8 %17 to i32
  %18 = sub i32 %EAX, 91
  %19 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 91)
  %CF7 = extractvalue { i32, i1 } %19, 1
  %ZF8 = icmp eq i32 %18, 0
  %highbit9 = and i32 -2147483648, %18
  %SF10 = icmp ne i32 %highbit9, 0
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 91)
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
  %memload22 = load i64, ptr %RBP_N.28, align 1
  %29 = trunc i64 %memload22 to i32
  %RCX23 = sext i32 %29 to i64
  %memref-basereg24 = add i64 %memload21, %RCX23
  %30 = inttoptr i64 %memref-basereg24 to ptr
  %memload25 = load i32, ptr %30, align 1
  %31 = trunc i32 %memload25 to i8
  %EAX26 = sext i8 %31 to i32
  %32 = sub i32 %EAX26, 93
  %33 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX26, i32 93)
  %CF27 = extractvalue { i32, i1 } %33, 1
  %ZF28 = icmp eq i32 %32, 0
  %highbit29 = and i32 -2147483648, %32
  %SF30 = icmp ne i32 %highbit29, 0
  %34 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX26, i32 93)
  %OF31 = extractvalue { i32, i1 } %34, 1
  %35 = and i32 %32, 255
  %36 = call i32 @llvm.ctpop.i32(i32 %35)
  %37 = and i32 %36, 1
  %PF32 = icmp eq i32 %37, 0
  %CmpZF_JNE78 = icmp eq i1 %ZF28, false
  br i1 %CmpZF_JNE78, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload33 = load i32, ptr %RBP_N.20, align 1
  %EAX40 = sub i32 %memload33, 1
  %38 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload33, i32 1)
  %CF34 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %EAX40, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF35 = icmp eq i32 %41, 0
  %ZF36 = icmp eq i32 %EAX40, 0
  %highbit37 = and i32 -2147483648, %EAX40
  %SF38 = icmp ne i32 %highbit37, 0
  %42 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload33, i32 1)
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
  store i32 0, ptr %RBP_N.20, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.6
  %memload47 = load i32, ptr %RBP_N.20, align 1
  %52 = load i32, ptr %RBP_N.24, align 1
  %53 = sub i32 %memload47, %52
  %54 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload47, i32 %52)
  %CF48 = extractvalue { i32, i1 } %54, 1
  %ZF49 = icmp eq i32 %53, 0
  %highbit50 = and i32 -2147483648, %53
  %SF51 = icmp ne i32 %highbit50, 0
  %55 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload47, i32 %52)
  %OF52 = extractvalue { i32, i1 } %55, 1
  %56 = and i32 %53, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = and i32 %57, 1
  %PF53 = icmp eq i32 %58, 0
  %CmpZF_JLE = icmp eq i1 %ZF49, true
  %CmpOF_JLE = icmp ne i1 %SF51, %OF52
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload54 = load i32, ptr %RBP_N.20, align 1
  store i32 %memload54, ptr %RBP_N.24, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.8
  %memload55 = load i32, ptr %RBP_N.20, align 1
  %memload56 = load i32, ptr %RBP_N.24, align 1
  %ECX = sub i32 %memload56, 2
  %59 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload56, i32 2)
  %CF57 = extractvalue { i32, i1 } %59, 1
  %60 = and i32 %ECX, 255
  %61 = call i32 @llvm.ctpop.i32(i32 %60)
  %62 = and i32 %61, 1
  %PF58 = icmp eq i32 %62, 0
  %ZF59 = icmp eq i32 %ECX, 0
  %highbit60 = and i32 -2147483648, %ECX
  %SF61 = icmp ne i32 %highbit60, 0
  %63 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload56, i32 2)
  %OF62 = extractvalue { i32, i1 } %63, 1
  %64 = sub i32 %memload55, %ECX
  %65 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload55, i32 %ECX)
  %CF63 = extractvalue { i32, i1 } %65, 1
  %ZF64 = icmp eq i32 %64, 0
  %highbit65 = and i32 -2147483648, %64
  %SF66 = icmp ne i32 %highbit65, 0
  %66 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload55, i32 %ECX)
  %OF67 = extractvalue { i32, i1 } %66, 1
  %67 = and i32 %64, 255
  %68 = call i32 @llvm.ctpop.i32(i32 %67)
  %69 = and i32 %68, 1
  %PF68 = icmp eq i32 %69, 0
  %ZFCmp_JG = icmp eq i1 %ZF64, false
  %SFOFCmp_JG = icmp eq i1 %SF66, %OF67
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.12, label %bb.11

bb.11:                                            ; preds = %bb.10
  store i32 1, ptr %RBP_N.4, align 1
  br label %bb.15

bb.12:                                            ; preds = %bb.10
  br label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload69 = load i32, ptr %RBP_N.28, align 1
  %EAX76 = add i32 %memload69, 1
  %70 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload69, i32 1)
  %CF70 = extractvalue { i32, i1 } %70, 1
  %71 = and i32 %EAX76, 255
  %72 = call i32 @llvm.ctpop.i32(i32 %71)
  %73 = and i32 %72, 1
  %PF71 = icmp eq i32 %73, 0
  %ZF72 = icmp eq i32 %EAX76, 0
  %highbit73 = and i32 -2147483648, %EAX76
  %SF74 = icmp ne i32 %highbit73, 0
  %74 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload69, i32 1)
  %OF75 = extractvalue { i32, i1 } %74, 1
  store i32 %EAX76, ptr %RBP_N.28, align 1
  br label %bb.1

bb.14:                                            ; preds = %bb.1
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.15

bb.15:                                            ; preds = %bb.14, %bb.11
  %memload77 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload77
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

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
