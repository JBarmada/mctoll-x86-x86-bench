; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @memset(ptr, i32, i64)

define dso_local i32 @func0(i32 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 440, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.420 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %2 = inttoptr i64 %1 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.408 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 436
  %RBP_N.4 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  %6 = zext i32 400 to i64
  %7 = call ptr @memset(ptr %2, i32 0, i64 %6)
  %RAX = ptrtoint ptr %7 to i64
  %8 = getelementptr i8, ptr %2, i64 4
  store i32 0, ptr %8, align 1
  store i32 1, ptr %RBP_N.408, align 1
  store i32 3, ptr %RBP_N.420, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload = load i32, ptr %RBP_N.420, align 1
  %9 = load i32, ptr %RBP_N.4, align 1
  %10 = sub i32 %memload, %9
  %11 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %9)
  %CF = extractvalue { i32, i1 } %11, 1
  %ZF = icmp eq i32 %10, 0
  %highbit = and i32 -2147483648, %10
  %SF = icmp ne i32 %highbit, 0
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %9)
  %OF = extractvalue { i32, i1 } %12, 1
  %13 = and i32 %10, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = and i32 %14, 1
  %PF = icmp eq i32 %15, 0
  %ZFCmp_JG = icmp eq i1 %ZF, false
  %SFOFCmp_JG = icmp eq i1 %SF, %OF
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i32, ptr %RBP_N.420, align 1
  %EAX = sub i32 %memload1, 1
  %16 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload1, i32 1)
  %CF2 = extractvalue { i32, i1 } %16, 1
  %17 = and i32 %EAX, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = and i32 %18, 1
  %PF3 = icmp eq i32 %19, 0
  %ZF4 = icmp eq i32 %EAX, 0
  %highbit5 = and i32 -2147483648, %EAX
  %SF6 = icmp ne i32 %highbit5, 0
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload1, i32 1)
  %OF7 = extractvalue { i32, i1 } %20, 1
  %RAX8 = sext i32 %EAX to i64
  %sc-m = mul i64 4, %RAX8
  %21 = getelementptr i8, ptr %2, i64 %sc-m
  %memload9 = load i32, ptr %21, align 1
  %memload10 = load i32, ptr %RBP_N.420, align 1
  %EAX17 = sub i32 %memload10, 2
  %22 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload10, i32 2)
  %CF11 = extractvalue { i32, i1 } %22, 1
  %23 = and i32 %EAX17, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = and i32 %24, 1
  %PF12 = icmp eq i32 %25, 0
  %ZF13 = icmp eq i32 %EAX17, 0
  %highbit14 = and i32 -2147483648, %EAX17
  %SF15 = icmp ne i32 %highbit14, 0
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload10, i32 2)
  %OF16 = extractvalue { i32, i1 } %26, 1
  %RAX18 = sext i32 %EAX17 to i64
  %sc-m19 = mul i64 4, %RAX18
  %27 = getelementptr i8, ptr %2, i64 %sc-m19
  %memload21 = load i32, ptr %27, align 1
  %ECX = add i32 %memload9, %memload21
  %28 = and i32 %ECX, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = and i32 %29, 1
  %PF22 = icmp eq i32 %30, 0
  %memload23 = load i32, ptr %RBP_N.420, align 1
  %EAX30 = sub i32 %memload23, 3
  %31 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload23, i32 3)
  %CF24 = extractvalue { i32, i1 } %31, 1
  %32 = and i32 %EAX30, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = and i32 %33, 1
  %PF25 = icmp eq i32 %34, 0
  %ZF26 = icmp eq i32 %EAX30, 0
  %highbit27 = and i32 -2147483648, %EAX30
  %SF28 = icmp ne i32 %highbit27, 0
  %35 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload23, i32 3)
  %OF29 = extractvalue { i32, i1 } %35, 1
  %RAX31 = sext i32 %EAX30 to i64
  %sc-m32 = mul i64 4, %RAX31
  %36 = getelementptr i8, ptr %2, i64 %sc-m32
  %memload34 = load i32, ptr %36, align 1
  %ECX36 = add i32 %ECX, %memload34
  %37 = and i32 %ECX36, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF35 = icmp eq i32 %39, 0
  %memload37 = load i64, ptr %RBP_N.420, align 1
  %40 = trunc i64 %memload37 to i32
  %RAX38 = sext i32 %40 to i64
  %sc-m39 = mul i64 4, %RAX38
  %41 = getelementptr i8, ptr %2, i64 %sc-m39
  store i32 %ECX36, ptr %41, align 1
  %memload41 = load i32, ptr %RBP_N.420, align 1
  %EAX48 = add i32 %memload41, 1
  %42 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload41, i32 1)
  %CF42 = extractvalue { i32, i1 } %42, 1
  %43 = and i32 %EAX48, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF43 = icmp eq i32 %45, 0
  %ZF44 = icmp eq i32 %EAX48, 0
  %highbit45 = and i32 -2147483648, %EAX48
  %SF46 = icmp ne i32 %highbit45, 0
  %46 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload41, i32 1)
  %OF47 = extractvalue { i32, i1 } %46, 1
  store i32 %EAX48, ptr %RBP_N.420, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %memload49 = load i64, ptr %RBP_N.4, align 1
  %47 = trunc i64 %memload49 to i32
  %RAX50 = sext i32 %47 to i64
  %sc-m51 = mul i64 4, %RAX50
  %48 = getelementptr i8, ptr %2, i64 %sc-m51
  %memload53 = load i32, ptr %48, align 1
  ret i32 %memload53
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

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
