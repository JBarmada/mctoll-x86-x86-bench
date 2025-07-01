; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @memset(ptr, i32, i64)

declare dso_local i32 @tolower(i32)

declare dso_local ptr @__ctype_b_loc()

define dso_local i32 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 1064, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 19
  %RBP_N.1045 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.1044 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %3 = inttoptr i64 %2 to ptr
  %4 = add i64 %tos, 1052
  %RBP_N.12 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 1056
  %RBP_N.8 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 0, ptr %RBP_N.12, align 1
  %7 = zext i32 1024 to i64
  %8 = call ptr @memset(ptr %3, i32 0, i64 %7)
  %RAX = ptrtoint ptr %8 to i64
  store i32 0, ptr %RBP_N.1044, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.6
  %memload = load i64, ptr %RBP_N.8, align 1
  %memload1 = load i64, ptr %RBP_N.1044, align 1
  %9 = trunc i64 %memload1 to i32
  %RCX = sext i32 %9 to i64
  %memref-basereg = add i64 %memload, %RCX
  %10 = inttoptr i64 %memref-basereg to ptr
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i64
  %13 = zext i8 0 to i64
  %14 = sub i64 %12, %13
  %15 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %12, i64 %13)
  %CF = extractvalue { i64, i1 } %15, 1
  %ZF = icmp eq i64 %14, 0
  %highbit = and i64 -9223372036854775808, %14
  %SF = icmp ne i64 %highbit, 0
  %16 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %12, i64 %13)
  %OF = extractvalue { i64, i1 } %16, 1
  %17 = and i64 %14, 255
  %18 = call i64 @llvm.ctpop.i64(i64 %17)
  %19 = and i64 %18, 1
  %PF = icmp eq i64 %19, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.7, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload2 = load i64, ptr %RBP_N.8, align 1
  %memload3 = load i64, ptr %RBP_N.1044, align 1
  %20 = trunc i64 %memload3 to i32
  %RCX4 = sext i32 %20 to i64
  %memref-basereg5 = add i64 %memload2, %RCX4
  %21 = inttoptr i64 %memref-basereg5 to ptr
  %memload6 = load i32, ptr %21, align 1
  %22 = trunc i32 %memload6 to i8
  %EDI = zext i8 %22 to i32
  %EAX = call i32 @tolower(i32 %EDI)
  %23 = trunc i32 %EAX to i8
  store i8 %23, ptr %RBP_N.1045, align 1
  %memload7 = load i64, ptr %RBP_N.1045, align 1
  %24 = trunc i64 %memload7 to i8
  %RAX8 = sext i8 %24 to i64
  %sc-m = mul i64 4, %RAX8
  %25 = getelementptr i8, ptr %3, i64 %sc-m
  %26 = load i32, ptr %25, align 1
  %27 = zext i32 %26 to i64
  %28 = zext i32 0 to i64
  %29 = sub i64 %27, %28
  %30 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %27, i64 %28)
  %CF9 = extractvalue { i64, i1 } %30, 1
  %ZF10 = icmp eq i64 %29, 0
  %highbit11 = and i64 -9223372036854775808, %29
  %SF12 = icmp ne i64 %highbit11, 0
  %31 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %27, i64 %28)
  %OF13 = extractvalue { i64, i1 } %31, 1
  %32 = and i64 %29, 255
  %33 = call i64 @llvm.ctpop.i64(i64 %32)
  %34 = and i64 %33, 1
  %PF14 = icmp eq i64 %34, 0
  %CmpZF_JNE = icmp eq i1 %ZF10, false
  br i1 %CmpZF_JNE, label %bb.5, label %bb.3

bb.3:                                             ; preds = %bb.2
  %35 = call ptr @__ctype_b_loc()
  %memload16 = load i64, ptr %35, align 1
  %memload17 = load i32, ptr %RBP_N.1045, align 1
  %36 = trunc i32 %memload17 to i8
  %ECX = zext i8 %36 to i32
  %RCX18 = sext i32 %ECX to i64
  %memref-idxreg = mul i64 2, %RCX18
  %memref-basereg19 = add i64 %memload16, %memref-idxreg
  %37 = inttoptr i64 %memref-basereg19 to ptr
  %memload20 = load i32, ptr %37, align 1
  %38 = trunc i32 %memload20 to i16
  %EAX21 = zext i16 %38 to i32
  %EAX26 = and i32 %EAX21, 1024
  %39 = and i32 %EAX26, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF22 = icmp eq i32 %41, 0
  %ZF23 = icmp eq i32 %EAX26, 0
  %highbit24 = and i32 -2147483648, %EAX26
  %SF25 = icmp ne i32 %highbit24, 0
  %42 = sub i32 %EAX26, 0
  %43 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX26, i32 0)
  %CF27 = extractvalue { i32, i1 } %43, 1
  %ZF28 = icmp eq i32 %42, 0
  %highbit29 = and i32 -2147483648, %42
  %SF30 = icmp ne i32 %highbit29, 0
  %44 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX26, i32 0)
  %OF31 = extractvalue { i32, i1 } %44, 1
  %45 = and i32 %42, 255
  %46 = call i32 @llvm.ctpop.i32(i32 %45)
  %47 = and i32 %46, 1
  %PF32 = icmp eq i32 %47, 0
  %CmpZF_JE54 = icmp eq i1 %ZF28, true
  br i1 %CmpZF_JE54, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload33 = load i64, ptr %RBP_N.1045, align 1
  %48 = trunc i64 %memload33 to i8
  %RAX34 = sext i8 %48 to i64
  %sc-m35 = mul i64 4, %RAX34
  %49 = getelementptr i8, ptr %3, i64 %sc-m35
  store i32 1, ptr %49, align 1
  %memload37 = load i32, ptr %RBP_N.12, align 1
  %EAX44 = add i32 %memload37, 1
  %50 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload37, i32 1)
  %CF38 = extractvalue { i32, i1 } %50, 1
  %51 = and i32 %EAX44, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %51)
  %53 = and i32 %52, 1
  %PF39 = icmp eq i32 %53, 0
  %ZF40 = icmp eq i32 %EAX44, 0
  %highbit41 = and i32 -2147483648, %EAX44
  %SF42 = icmp ne i32 %highbit41, 0
  %54 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload37, i32 1)
  %OF43 = extractvalue { i32, i1 } %54, 1
  store i32 %EAX44, ptr %RBP_N.12, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3, %bb.2
  br label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload45 = load i32, ptr %RBP_N.1044, align 1
  %EAX52 = add i32 %memload45, 1
  %55 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload45, i32 1)
  %CF46 = extractvalue { i32, i1 } %55, 1
  %56 = and i32 %EAX52, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = and i32 %57, 1
  %PF47 = icmp eq i32 %58, 0
  %ZF48 = icmp eq i32 %EAX52, 0
  %highbit49 = and i32 -2147483648, %EAX52
  %SF50 = icmp ne i32 %highbit49, 0
  %59 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload45, i32 1)
  %OF51 = extractvalue { i32, i1 } %59, 1
  store i32 %EAX52, ptr %RBP_N.1044, align 1
  br label %bb.1

bb.7:                                             ; preds = %bb.1
  %memload53 = load i32, ptr %RBP_N.12, align 1
  ret i32 %memload53
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
