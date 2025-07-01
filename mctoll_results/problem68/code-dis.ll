; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @memset(ptr, i32, i64)

declare dso_local ptr @__ctype_b_loc()

declare dso_local i32 @atoi(ptr)

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 72, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.52 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.48 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.44 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.40 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.36 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 40
  %6 = inttoptr i64 %5 to ptr
  %7 = add i64 %tos, 50
  %8 = inttoptr i64 %7 to ptr
  %9 = add i64 %tos, 60
  %RBP_N.12 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 64
  %RBP_N.8 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %11 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  %12 = zext i32 10 to i64
  %13 = call ptr @memset(ptr %8, i32 0, i64 %12)
  %RAX = ptrtoint ptr %13 to i64
  %14 = zext i32 10 to i64
  %15 = call ptr @memset(ptr %6, i32 0, i64 %14)
  %RAX2 = ptrtoint ptr %15 to i64
  store i32 0, ptr %RBP_N.36, align 1
  store i32 0, ptr %RBP_N.40, align 1
  store i32 0, ptr %RBP_N.44, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.12
  %memload = load i64, ptr %RBP_N.8, align 1
  %memload3 = load i64, ptr %RBP_N.44, align 1
  %16 = trunc i64 %memload3 to i32
  %RCX = sext i32 %16 to i64
  %memref-basereg = add i64 %memload, %RCX
  %17 = inttoptr i64 %memref-basereg to ptr
  %memload4 = load i32, ptr %17, align 1
  %18 = trunc i32 %memload4 to i8
  %EAX = sext i8 %18 to i32
  %19 = sub i32 %EAX, 0
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 0)
  %CF = extractvalue { i32, i1 } %20, 1
  %ZF = icmp eq i32 %19, 0
  %highbit = and i32 -2147483648, %19
  %SF = icmp ne i32 %highbit, 0
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 0)
  %OF = extractvalue { i32, i1 } %21, 1
  %22 = and i32 %19, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF = icmp eq i32 %24, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.13, label %bb.2

bb.2:                                             ; preds = %bb.1
  %25 = call ptr @__ctype_b_loc()
  %memload6 = load i64, ptr %25, align 1
  %memload7 = load i64, ptr %RBP_N.8, align 1
  %memload8 = load i64, ptr %RBP_N.44, align 1
  %26 = trunc i64 %memload8 to i32
  %RDX = sext i32 %26 to i64
  %memref-basereg9 = add i64 %memload7, %RDX
  %27 = inttoptr i64 %memref-basereg9 to ptr
  %memload10 = load i32, ptr %27, align 1
  %28 = trunc i32 %memload10 to i8
  %ECX = sext i8 %28 to i32
  %RCX11 = sext i32 %ECX to i64
  %memref-idxreg = mul i64 2, %RCX11
  %memref-basereg12 = add i64 %memload6, %memref-idxreg
  %29 = inttoptr i64 %memref-basereg12 to ptr
  %memload13 = load i32, ptr %29, align 1
  %30 = trunc i32 %memload13 to i16
  %EAX14 = zext i16 %30 to i32
  %EAX19 = and i32 %EAX14, 2048
  %31 = and i32 %EAX19, 255
  %32 = call i32 @llvm.ctpop.i32(i32 %31)
  %33 = and i32 %32, 1
  %PF15 = icmp eq i32 %33, 0
  %ZF16 = icmp eq i32 %EAX19, 0
  %highbit17 = and i32 -2147483648, %EAX19
  %SF18 = icmp ne i32 %highbit17, 0
  %34 = sub i32 %EAX19, 0
  %35 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX19, i32 0)
  %CF20 = extractvalue { i32, i1 } %35, 1
  %ZF21 = icmp eq i32 %34, 0
  %highbit22 = and i32 -2147483648, %34
  %SF23 = icmp ne i32 %highbit22, 0
  %36 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX19, i32 0)
  %OF24 = extractvalue { i32, i1 } %36, 1
  %37 = and i32 %34, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF25 = icmp eq i32 %39, 0
  %CmpZF_JE101 = icmp eq i1 %ZF21, true
  br i1 %CmpZF_JE101, label %bb.7, label %bb.3

bb.3:                                             ; preds = %bb.2
  %40 = load i32, ptr %RBP_N.36, align 1
  %41 = zext i32 %40 to i64
  %42 = zext i32 0 to i64
  %43 = sub i64 %41, %42
  %44 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %41, i64 %42)
  %CF26 = extractvalue { i64, i1 } %44, 1
  %ZF27 = icmp eq i64 %43, 0
  %highbit28 = and i64 -9223372036854775808, %43
  %SF29 = icmp ne i64 %highbit28, 0
  %45 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %41, i64 %42)
  %OF30 = extractvalue { i64, i1 } %45, 1
  %46 = and i64 %43, 255
  %47 = call i64 @llvm.ctpop.i64(i64 %46)
  %48 = and i64 %47, 1
  %PF31 = icmp eq i64 %48, 0
  %CmpZF_JNE = icmp eq i1 %ZF27, false
  br i1 %CmpZF_JNE, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload32 = load i64, ptr %RBP_N.8, align 1
  %memload33 = load i64, ptr %RBP_N.44, align 1
  %49 = trunc i64 %memload33 to i32
  %RCX34 = sext i32 %49 to i64
  %memref-basereg35 = add i64 %memload32, %RCX34
  %50 = inttoptr i64 %memref-basereg35 to ptr
  %memload36 = load i8, ptr %50, align 1
  %memload37 = load i32, ptr %RBP_N.40, align 1
  %EDX = add i32 %memload37, 1
  %51 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload37, i32 1)
  %CF38 = extractvalue { i32, i1 } %51, 1
  %52 = and i32 %EDX, 255
  %53 = call i32 @llvm.ctpop.i32(i32 %52)
  %54 = and i32 %53, 1
  %PF39 = icmp eq i32 %54, 0
  %ZF40 = icmp eq i32 %EDX, 0
  %highbit41 = and i32 -2147483648, %EDX
  %SF42 = icmp ne i32 %highbit41, 0
  %55 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload37, i32 1)
  %OF43 = extractvalue { i32, i1 } %55, 1
  store i32 %EDX, ptr %RBP_N.40, align 1
  %RAX44 = sext i32 %memload37 to i64
  %56 = getelementptr i8, ptr %8, i64 %RAX44
  store i8 %memload36, ptr %56, align 1
  br label %bb.6

bb.5:                                             ; preds = %bb.3
  %memload45 = load i64, ptr %RBP_N.8, align 1
  %memload46 = load i64, ptr %RBP_N.44, align 1
  %57 = trunc i64 %memload46 to i32
  %RCX47 = sext i32 %57 to i64
  %memref-basereg48 = add i64 %memload45, %RCX47
  %58 = inttoptr i64 %memref-basereg48 to ptr
  %memload49 = load i8, ptr %58, align 1
  %memload50 = load i32, ptr %RBP_N.40, align 1
  %EDX57 = add i32 %memload50, 1
  %59 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload50, i32 1)
  %CF51 = extractvalue { i32, i1 } %59, 1
  %60 = and i32 %EDX57, 255
  %61 = call i32 @llvm.ctpop.i32(i32 %60)
  %62 = and i32 %61, 1
  %PF52 = icmp eq i32 %62, 0
  %ZF53 = icmp eq i32 %EDX57, 0
  %highbit54 = and i32 -2147483648, %EDX57
  %SF55 = icmp ne i32 %highbit54, 0
  %63 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload50, i32 1)
  %OF56 = extractvalue { i32, i1 } %63, 1
  store i32 %EDX57, ptr %RBP_N.40, align 1
  %RAX58 = sext i32 %memload50 to i64
  %64 = getelementptr i8, ptr %6, i64 %RAX58
  store i8 %memload49, ptr %64, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  br label %bb.11

bb.7:                                             ; preds = %bb.2
  %65 = load i32, ptr %RBP_N.36, align 1
  %66 = zext i32 %65 to i64
  %67 = zext i32 0 to i64
  %68 = sub i64 %66, %67
  %69 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %66, i64 %67)
  %CF60 = extractvalue { i64, i1 } %69, 1
  %ZF61 = icmp eq i64 %68, 0
  %highbit62 = and i64 -9223372036854775808, %68
  %SF63 = icmp ne i64 %highbit62, 0
  %70 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %66, i64 %67)
  %OF64 = extractvalue { i64, i1 } %70, 1
  %71 = and i64 %68, 255
  %72 = call i64 @llvm.ctpop.i64(i64 %71)
  %73 = and i64 %72, 1
  %PF65 = icmp eq i64 %73, 0
  %CmpZF_JNE102 = icmp eq i1 %ZF61, false
  br i1 %CmpZF_JNE102, label %bb.10, label %bb.8

bb.8:                                             ; preds = %bb.7
  %74 = load i32, ptr %RBP_N.40, align 1
  %75 = zext i32 %74 to i64
  %76 = zext i32 0 to i64
  %77 = sub i64 %75, %76
  %78 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %75, i64 %76)
  %CF66 = extractvalue { i64, i1 } %78, 1
  %ZF67 = icmp eq i64 %77, 0
  %highbit68 = and i64 -9223372036854775808, %77
  %SF69 = icmp ne i64 %highbit68, 0
  %79 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %75, i64 %76)
  %OF70 = extractvalue { i64, i1 } %79, 1
  %80 = and i64 %77, 255
  %81 = call i64 @llvm.ctpop.i64(i64 %80)
  %82 = and i64 %81, 1
  %PF71 = icmp eq i64 %82, 0
  %CmpZF_JLE = icmp eq i1 %ZF67, true
  %CmpOF_JLE = icmp ne i1 %SF69, %OF70
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  store i32 1, ptr %RBP_N.36, align 1
  store i32 0, ptr %RBP_N.40, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.8, %bb.7
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.6
  br label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload72 = load i32, ptr %RBP_N.44, align 1
  %EAX79 = add i32 %memload72, 1
  %83 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload72, i32 1)
  %CF73 = extractvalue { i32, i1 } %83, 1
  %84 = and i32 %EAX79, 255
  %85 = call i32 @llvm.ctpop.i32(i32 %84)
  %86 = and i32 %85, 1
  %PF74 = icmp eq i32 %86, 0
  %ZF75 = icmp eq i32 %EAX79, 0
  %highbit76 = and i32 -2147483648, %EAX79
  %SF77 = icmp ne i32 %highbit76, 0
  %87 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload72, i32 1)
  %OF78 = extractvalue { i32, i1 } %87, 1
  store i32 %EAX79, ptr %RBP_N.44, align 1
  br label %bb.1

bb.13:                                            ; preds = %bb.1
  %memload80 = load i32, ptr %RBP_N.12, align 1
  store i32 %memload80, ptr %RBP_N.52, align 1
  %EAX82 = call i32 @atoi(ptr %8)
  %memload83 = load i32, ptr %RBP_N.52, align 1
  %EAX84 = sub i32 %memload83, %EAX82
  %88 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload83, i32 %EAX82)
  %CF85 = extractvalue { i32, i1 } %88, 1
  %ZF86 = icmp eq i32 %EAX84, 0
  %highbit87 = and i32 -2147483648, %EAX84
  %SF88 = icmp ne i32 %highbit87, 0
  %89 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload83, i32 %EAX82)
  %OF89 = extractvalue { i32, i1 } %89, 1
  %90 = and i32 %EAX84, 255
  %91 = call i32 @llvm.ctpop.i32(i32 %90)
  %92 = and i32 %91, 1
  %PF90 = icmp eq i32 %92, 0
  store i32 %EAX84, ptr %RBP_N.48, align 1
  %EAX92 = call i32 @atoi(ptr %6)
  %memload93 = load i32, ptr %RBP_N.48, align 1
  %EAX94 = sub i32 %memload93, %EAX92
  %93 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload93, i32 %EAX92)
  %CF95 = extractvalue { i32, i1 } %93, 1
  %ZF96 = icmp eq i32 %EAX94, 0
  %highbit97 = and i32 -2147483648, %EAX94
  %SF98 = icmp ne i32 %highbit97, 0
  %94 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload93, i32 %EAX92)
  %OF99 = extractvalue { i32, i1 } %94, 1
  %95 = and i32 %EAX94, 255
  %96 = call i32 @llvm.ctpop.i32(i32 %95)
  %97 = and i32 %96, 1
  %PF100 = icmp eq i32 %97, 0
  ret i32 %EAX94
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
