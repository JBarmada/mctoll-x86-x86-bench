; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

define dso_local i32 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 39
  %RBP_N.1 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  %memload = load i64, ptr %RBP_N.16, align 1
  %4 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %4)
  %5 = sub i64 %RAX, 3
  %6 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX, i64 3)
  %CF = extractvalue { i64, i1 } %6, 1
  %ZF = icmp eq i64 %5, 0
  %highbit = and i64 -9223372036854775808, %5
  %SF = icmp ne i64 %highbit, 0
  %7 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX, i64 3)
  %OF = extractvalue { i64, i1 } %7, 1
  %8 = and i64 %5, 255
  %9 = call i64 @llvm.ctpop.i64(i64 %8)
  %10 = and i64 %9, 1
  %PF = icmp eq i64 %10, 0
  %CFCmp_JAE = icmp eq i1 %CF, false
  br i1 %CFCmp_JAE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.10

bb.2:                                             ; preds = %entry
  store i32 2, ptr %RBP_N.20, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.8
  %memload1 = load i64, ptr %RBP_N.20, align 1
  %11 = trunc i64 %memload1 to i32
  %RAX2 = sext i32 %11 to i64
  store i64 %RAX2, ptr %stktop_8, align 1
  %memload3 = load i64, ptr %RBP_N.16, align 1
  %12 = inttoptr i64 %memload3 to ptr
  %RAX4 = call i64 @strlen(ptr %12)
  %memload5 = load i64, ptr %stktop_8, align 1
  %13 = sub i64 %memload5, %RAX4
  %14 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %memload5, i64 %RAX4)
  %CF6 = extractvalue { i64, i1 } %14, 1
  %ZF7 = icmp eq i64 %13, 0
  %highbit8 = and i64 -9223372036854775808, %13
  %SF9 = icmp ne i64 %highbit8, 0
  %15 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %memload5, i64 %RAX4)
  %OF10 = extractvalue { i64, i1 } %15, 1
  %16 = and i64 %13, 255
  %17 = call i64 @llvm.ctpop.i64(i64 %16)
  %18 = and i64 %17, 1
  %PF11 = icmp eq i64 %18, 0
  %CFCmp_JAE70 = icmp eq i1 %CF6, false
  br i1 %CFCmp_JAE70, label %bb.9, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload12 = load i64, ptr %RBP_N.16, align 1
  %memload13 = load i64, ptr %RBP_N.20, align 1
  %19 = trunc i64 %memload13 to i32
  %RCX = sext i32 %19 to i64
  %memref-basereg = add i64 %memload12, %RCX
  %20 = inttoptr i64 %memref-basereg to ptr
  %memload14 = load i32, ptr %20, align 1
  %21 = trunc i32 %memload14 to i8
  %EAX = sext i8 %21 to i32
  %memload15 = load i64, ptr %RBP_N.16, align 1
  %memload16 = load i32, ptr %RBP_N.20, align 1
  %EDX = sub i32 %memload16, 1
  %22 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload16, i32 1)
  %CF17 = extractvalue { i32, i1 } %22, 1
  %23 = and i32 %EDX, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = and i32 %24, 1
  %PF18 = icmp eq i32 %25, 0
  %ZF19 = icmp eq i32 %EDX, 0
  %highbit20 = and i32 -2147483648, %EDX
  %SF21 = icmp ne i32 %highbit20, 0
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload16, i32 1)
  %OF22 = extractvalue { i32, i1 } %26, 1
  %RDX = sext i32 %EDX to i64
  %memref-basereg23 = add i64 %memload15, %RDX
  %27 = inttoptr i64 %memref-basereg23 to ptr
  %memload24 = load i32, ptr %27, align 1
  %28 = trunc i32 %memload24 to i8
  %ECX = sext i8 %28 to i32
  %29 = sub i32 %EAX, %ECX
  %30 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 %ECX)
  %CF25 = extractvalue { i32, i1 } %30, 1
  %ZF26 = icmp eq i32 %29, 0
  %highbit27 = and i32 -2147483648, %29
  %SF28 = icmp ne i32 %highbit27, 0
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 %ECX)
  %OF29 = extractvalue { i32, i1 } %31, 1
  %32 = and i32 %29, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = and i32 %33, 1
  %PF30 = icmp eq i32 %34, 0
  %CmpZF_JE = icmp eq i1 %ZF26, true
  br i1 %CmpZF_JE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload31 = load i64, ptr %RBP_N.16, align 1
  %memload32 = load i64, ptr %RBP_N.20, align 1
  %35 = trunc i64 %memload32 to i32
  %RCX33 = sext i32 %35 to i64
  %memref-basereg34 = add i64 %memload31, %RCX33
  %36 = inttoptr i64 %memref-basereg34 to ptr
  %memload35 = load i32, ptr %36, align 1
  %37 = trunc i32 %memload35 to i8
  %EAX36 = sext i8 %37 to i32
  %memload37 = load i64, ptr %RBP_N.16, align 1
  %memload38 = load i32, ptr %RBP_N.20, align 1
  %EDX45 = sub i32 %memload38, 2
  %38 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload38, i32 2)
  %CF39 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %EDX45, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF40 = icmp eq i32 %41, 0
  %ZF41 = icmp eq i32 %EDX45, 0
  %highbit42 = and i32 -2147483648, %EDX45
  %SF43 = icmp ne i32 %highbit42, 0
  %42 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload38, i32 2)
  %OF44 = extractvalue { i32, i1 } %42, 1
  %RDX46 = sext i32 %EDX45 to i64
  %memref-basereg47 = add i64 %memload37, %RDX46
  %43 = inttoptr i64 %memref-basereg47 to ptr
  %memload48 = load i32, ptr %43, align 1
  %44 = trunc i32 %memload48 to i8
  %ECX49 = sext i8 %44 to i32
  %45 = sub i32 %EAX36, %ECX49
  %46 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX36, i32 %ECX49)
  %CF50 = extractvalue { i32, i1 } %46, 1
  %ZF51 = icmp eq i32 %45, 0
  %highbit52 = and i32 -2147483648, %45
  %SF53 = icmp ne i32 %highbit52, 0
  %47 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX36, i32 %ECX49)
  %OF54 = extractvalue { i32, i1 } %47, 1
  %48 = and i32 %45, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48)
  %50 = and i32 %49, 1
  %PF55 = icmp eq i32 %50, 0
  %CmpZF_JNE = icmp eq i1 %ZF51, false
  br i1 %CmpZF_JNE, label %bb.7, label %bb.6

bb.7:                                             ; preds = %bb.5
  br label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload56 = load i32, ptr %RBP_N.20, align 1
  %EAX63 = add i32 %memload56, 1
  %51 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload56, i32 1)
  %CF57 = extractvalue { i32, i1 } %51, 1
  %52 = and i32 %EAX63, 255
  %53 = call i32 @llvm.ctpop.i32(i32 %52)
  %54 = and i32 %53, 1
  %PF58 = icmp eq i32 %54, 0
  %ZF59 = icmp eq i32 %EAX63, 0
  %highbit60 = and i32 -2147483648, %EAX63
  %SF61 = icmp ne i32 %highbit60, 0
  %55 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload56, i32 1)
  %OF62 = extractvalue { i32, i1 } %55, 1
  store i32 %EAX63, ptr %RBP_N.20, align 1
  br label %bb.3

bb.6:                                             ; preds = %bb.5, %bb.4
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.10

bb.9:                                             ; preds = %bb.3
  store i8 1, ptr %RBP_N.1, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.6, %bb.1
  %memload64 = load i8, ptr %RBP_N.1, align 1
  %AL = and i8 %memload64, 1
  %56 = call i8 @llvm.ctpop.i8(i8 %AL)
  %57 = and i8 %56, 1
  %PF65 = icmp eq i8 %57, 0
  %ZF66 = icmp eq i8 %AL, 0
  %highbit67 = and i8 -128, %AL
  %SF68 = icmp ne i8 %highbit67, 0
  %EAX69 = zext i8 %AL to i32
  ret i32 %EAX69
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
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctpop.i8(i8) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
