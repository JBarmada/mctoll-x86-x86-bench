; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @memset(ptr, i32, i64)

define dso_local i32 @func0(i32 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 4040, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.4020 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %2 = inttoptr i64 %1 to ptr
  %3 = add i64 %tos, 4036
  %RBP_N.4 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %4 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  %5 = zext i32 4000 to i64
  %6 = call ptr @memset(ptr %2, i32 0, i64 %5)
  %RAX = ptrtoint ptr %6 to i64
  store i32 0, ptr %2, align 1
  %7 = getelementptr i8, ptr %2, i64 4
  store i32 1, ptr %7, align 1
  store i32 2, ptr %RBP_N.4020, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload = load i32, ptr %RBP_N.4020, align 1
  %8 = load i32, ptr %RBP_N.4, align 1
  %9 = sub i32 %memload, %8
  %10 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %8)
  %CF = extractvalue { i32, i1 } %10, 1
  %ZF = icmp eq i32 %9, 0
  %highbit = and i32 -2147483648, %9
  %SF = icmp ne i32 %highbit, 0
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %8)
  %OF = extractvalue { i32, i1 } %11, 1
  %12 = and i32 %9, 255
  %13 = call i32 @llvm.ctpop.i32(i32 %12)
  %14 = and i32 %13, 1
  %PF = icmp eq i32 %14, 0
  %ZFCmp_JG = icmp eq i1 %ZF, false
  %SFOFCmp_JG = icmp eq i1 %SF, %OF
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i32, ptr %RBP_N.4020, align 1
  %EAX = sub i32 %memload1, 1
  %15 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload1, i32 1)
  %CF2 = extractvalue { i32, i1 } %15, 1
  %16 = and i32 %EAX, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = and i32 %17, 1
  %PF3 = icmp eq i32 %18, 0
  %ZF4 = icmp eq i32 %EAX, 0
  %highbit5 = and i32 -2147483648, %EAX
  %SF6 = icmp ne i32 %highbit5, 0
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload1, i32 1)
  %OF7 = extractvalue { i32, i1 } %19, 1
  %RAX8 = sext i32 %EAX to i64
  %sc-m = mul i64 4, %RAX8
  %20 = getelementptr i8, ptr %2, i64 %sc-m
  %memload9 = load i32, ptr %20, align 1
  %memload10 = load i32, ptr %RBP_N.4020, align 1
  %EAX17 = sub i32 %memload10, 2
  %21 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload10, i32 2)
  %CF11 = extractvalue { i32, i1 } %21, 1
  %22 = and i32 %EAX17, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF12 = icmp eq i32 %24, 0
  %ZF13 = icmp eq i32 %EAX17, 0
  %highbit14 = and i32 -2147483648, %EAX17
  %SF15 = icmp ne i32 %highbit14, 0
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload10, i32 2)
  %OF16 = extractvalue { i32, i1 } %25, 1
  %RAX18 = sext i32 %EAX17 to i64
  %sc-m19 = mul i64 4, %RAX18
  %26 = getelementptr i8, ptr %2, i64 %sc-m19
  %memload21 = load i32, ptr %26, align 1
  %ECX = add i32 %memload9, %memload21
  %27 = and i32 %ECX, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF22 = icmp eq i32 %29, 0
  %memload23 = load i64, ptr %RBP_N.4020, align 1
  %30 = trunc i64 %memload23 to i32
  %RAX24 = sext i32 %30 to i64
  %sc-m25 = mul i64 4, %RAX24
  %31 = getelementptr i8, ptr %2, i64 %sc-m25
  store i32 %ECX, ptr %31, align 1
  %memload27 = load i32, ptr %RBP_N.4020, align 1
  %EAX34 = add i32 %memload27, 1
  %32 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload27, i32 1)
  %CF28 = extractvalue { i32, i1 } %32, 1
  %33 = and i32 %EAX34, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = and i32 %34, 1
  %PF29 = icmp eq i32 %35, 0
  %ZF30 = icmp eq i32 %EAX34, 0
  %highbit31 = and i32 -2147483648, %EAX34
  %SF32 = icmp ne i32 %highbit31, 0
  %36 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload27, i32 1)
  %OF33 = extractvalue { i32, i1 } %36, 1
  store i32 %EAX34, ptr %RBP_N.4020, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %memload35 = load i64, ptr %RBP_N.4, align 1
  %37 = trunc i64 %memload35 to i32
  %RAX36 = sext i32 %37 to i64
  %sc-m37 = mul i64 4, %RAX36
  %38 = getelementptr i8, ptr %2, i64 %sc-m37
  %memload39 = load i32, ptr %38, align 1
  ret i32 %memload39
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
