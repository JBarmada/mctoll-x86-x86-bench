; ModuleID = 'code.so'
source_filename = "code.so"

@rodata_13 = private unnamed_addr constant [6 x i8] c"AEIOU\00", align 1, !ROData_SecInfo !0

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @strchr(ptr, i32)

define dso_local i32 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 31
  %RBP_N.25 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  %RAX = ptrtoint ptr @rodata_13 to i64
  store i64 %RAX, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.24, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.8
  %memload = load i64, ptr %RBP_N.8, align 1
  %memload1 = load i64, ptr %RBP_N.24, align 1
  %7 = trunc i64 %memload1 to i32
  %RCX = sext i32 %7 to i64
  %memref-basereg = add i64 %memload, %RCX
  %8 = inttoptr i64 %memref-basereg to ptr
  %memload2 = load i32, ptr %8, align 1
  %9 = trunc i32 %memload2 to i8
  %ECX = sext i8 %9 to i32
  %10 = sub i32 %ECX, 0
  %11 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ECX, i32 0)
  %CF = extractvalue { i32, i1 } %11, 1
  %ZF = icmp eq i32 %10, 0
  %highbit = and i32 -2147483648, %10
  %SF = icmp ne i32 %highbit, 0
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ECX, i32 0)
  %OF = extractvalue { i32, i1 } %12, 1
  %13 = and i32 %10, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = and i32 %14, 1
  %PF = icmp eq i32 %15, 0
  %16 = trunc i32 0 to i8
  store i8 %16, ptr %RBP_N.25, align 1
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload3 = load i32, ptr %RBP_N.24, align 1
  %EAX = shl i32 %memload3, 1
  %ZF4 = icmp eq i32 %EAX, 0
  %highbit5 = and i32 -2147483648, %EAX
  %SF6 = icmp ne i32 %highbit5, 0
  %RAX7 = sext i32 %EAX to i64
  store i64 %RAX7, ptr %RBP_N.40, align 1
  %memload8 = load i64, ptr %RBP_N.8, align 1
  %17 = inttoptr i64 %memload8 to ptr
  %RAX9 = call i64 @strlen(ptr %17)
  %memload10 = load i64, ptr %RBP_N.40, align 1
  %18 = sub i64 %memload10, %RAX9
  %19 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %memload10, i64 %RAX9)
  %CF11 = extractvalue { i64, i1 } %19, 1
  %ZF12 = icmp eq i64 %18, 0
  %highbit13 = and i64 -9223372036854775808, %18
  %SF14 = icmp ne i64 %highbit13, 0
  %20 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %memload10, i64 %RAX9)
  %OF15 = extractvalue { i64, i1 } %20, 1
  %21 = and i64 %18, 255
  %22 = call i64 @llvm.ctpop.i64(i64 %21)
  %23 = and i64 %22, 1
  %PF16 = icmp eq i64 %23, 0
  %AL = icmp eq i1 %CF11, true
  %24 = zext i1 %AL to i8
  store i8 %24, ptr %RBP_N.25, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.1
  %memload17 = load i8, ptr %RBP_N.25, align 1
  %25 = and i8 %memload17, 1
  %26 = call i8 @llvm.ctpop.i8(i8 %25)
  %27 = and i8 %26, 1
  %PF18 = icmp eq i8 %27, 0
  %ZF19 = icmp eq i8 %25, 0
  %highbit20 = and i8 -128, %25
  %SF21 = icmp ne i8 %highbit20, 0
  %CmpZF_JNE = icmp eq i1 %ZF19, false
  br i1 %CmpZF_JNE, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  br label %bb.9

bb.9:                                             ; preds = %bb.4
  %memload22 = load i32, ptr %RBP_N.20, align 1
  ret i32 %memload22

bb.5:                                             ; preds = %bb.3
  %memload23 = load i64, ptr %RBP_N.16, align 1
  %memload24 = load i64, ptr %RBP_N.8, align 1
  %memload25 = load i32, ptr %RBP_N.24, align 1
  %ECX29 = shl i32 %memload25, 1
  %ZF26 = icmp eq i32 %ECX29, 0
  %highbit27 = and i32 -2147483648, %ECX29
  %SF28 = icmp ne i32 %highbit27, 0
  %RCX30 = sext i32 %ECX29 to i64
  %memref-basereg31 = add i64 %memload24, %RCX30
  %28 = inttoptr i64 %memref-basereg31 to ptr
  %memload32 = load i32, ptr %28, align 1
  %29 = trunc i32 %memload32 to i8
  %ESI = sext i8 %29 to i32
  %30 = inttoptr i64 %memload23 to ptr
  %31 = call ptr @strchr(ptr %30, i32 %ESI)
  %RAX33 = ptrtoint ptr %31 to i64
  %32 = sub i64 %RAX33, 0
  %33 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX33, i64 0)
  %CF34 = extractvalue { i64, i1 } %33, 1
  %ZF35 = icmp eq i64 %32, 0
  %highbit36 = and i64 -9223372036854775808, %32
  %SF37 = icmp ne i64 %highbit36, 0
  %34 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX33, i64 0)
  %OF38 = extractvalue { i64, i1 } %34, 1
  %35 = and i64 %32, 255
  %36 = call i64 @llvm.ctpop.i64(i64 %35)
  %37 = and i64 %36, 1
  %PF39 = icmp eq i64 %37, 0
  %CmpZF_JE56 = icmp eq i1 %ZF35, true
  br i1 %CmpZF_JE56, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload40 = load i32, ptr %RBP_N.20, align 1
  %EAX47 = add i32 %memload40, 1
  %38 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload40, i32 1)
  %CF41 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %EAX47, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF42 = icmp eq i32 %41, 0
  %ZF43 = icmp eq i32 %EAX47, 0
  %highbit44 = and i32 -2147483648, %EAX47
  %SF45 = icmp ne i32 %highbit44, 0
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload40, i32 1)
  %OF46 = extractvalue { i32, i1 } %42, 1
  store i32 %EAX47, ptr %RBP_N.20, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.5
  br label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload48 = load i32, ptr %RBP_N.24, align 1
  %EAX55 = add i32 %memload48, 1
  %43 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload48, i32 1)
  %CF49 = extractvalue { i32, i1 } %43, 1
  %44 = and i32 %EAX55, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44)
  %46 = and i32 %45, 1
  %PF50 = icmp eq i32 %46, 0
  %ZF51 = icmp eq i32 %EAX55, 0
  %highbit52 = and i32 -2147483648, %EAX55
  %SF53 = icmp ne i32 %highbit52, 0
  %47 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload48, i32 1)
  %OF54 = extractvalue { i32, i1 } %47, 1
  store i32 %EAX55, ptr %RBP_N.24, align 1
  br label %bb.1
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
declare i8 @llvm.ctpop.i8(i8) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 8192}
