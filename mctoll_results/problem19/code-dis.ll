; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

declare dso_local i32 @strncmp(ptr, ptr, i64)

define dso_local i32 @func0(i64 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 52
  %RBP_N.4 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i64 %arg2, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  %memload = load i64, ptr %RBP_N.16, align 1
  %8 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %8)
  %9 = trunc i64 %RAX to i32
  store i32 %9, ptr %RBP_N.32, align 1
  %memload1 = load i64, ptr %RBP_N.24, align 1
  %10 = inttoptr i64 %memload1 to ptr
  %RAX2 = call i64 @strlen(ptr %10)
  %11 = trunc i64 %RAX2 to i32
  store i32 %11, ptr %RBP_N.36, align 1
  %12 = load i32, ptr %RBP_N.32, align 1
  %13 = zext i32 %12 to i64
  %14 = zext i32 0 to i64
  %15 = sub i64 %13, %14
  %16 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %13, i64 %14)
  %CF = extractvalue { i64, i1 } %16, 1
  %ZF = icmp eq i64 %15, 0
  %highbit = and i64 -9223372036854775808, %15
  %SF = icmp ne i64 %highbit, 0
  %17 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %13, i64 %14)
  %OF = extractvalue { i64, i1 } %17, 1
  %18 = and i64 %15, 255
  %19 = call i64 @llvm.ctpop.i64(i64 %18)
  %20 = and i64 %19, 1
  %PF = icmp eq i64 %20, 0
  %CmpZF_JNE = icmp eq i1 %ZF, false
  br i1 %CmpZF_JNE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.9

bb.2:                                             ; preds = %entry
  store i32 0, ptr %RBP_N.40, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %memload3 = load i32, ptr %RBP_N.40, align 1
  %memload4 = load i32, ptr %RBP_N.32, align 1
  %21 = load i32, ptr %RBP_N.36, align 1
  %ECX = sub i32 %memload4, %21
  %22 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload4, i32 %21)
  %CF5 = extractvalue { i32, i1 } %22, 1
  %ZF6 = icmp eq i32 %ECX, 0
  %highbit7 = and i32 -2147483648, %ECX
  %SF8 = icmp ne i32 %highbit7, 0
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload4, i32 %21)
  %OF9 = extractvalue { i32, i1 } %23, 1
  %24 = and i32 %ECX, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = and i32 %25, 1
  %PF10 = icmp eq i32 %26, 0
  %27 = sub i32 %memload3, %ECX
  %28 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload3, i32 %ECX)
  %CF11 = extractvalue { i32, i1 } %28, 1
  %ZF12 = icmp eq i32 %27, 0
  %highbit13 = and i32 -2147483648, %27
  %SF14 = icmp ne i32 %highbit13, 0
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload3, i32 %ECX)
  %OF15 = extractvalue { i32, i1 } %29, 1
  %30 = and i32 %27, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = and i32 %31, 1
  %PF16 = icmp eq i32 %32, 0
  %ZFCmp_JG = icmp eq i1 %ZF12, false
  %SFOFCmp_JG = icmp eq i1 %SF14, %OF15
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload17 = load i64, ptr %RBP_N.16, align 1
  %memload18 = load i64, ptr %RBP_N.40, align 1
  %33 = trunc i64 %memload18 to i32
  %RAX19 = sext i32 %33 to i64
  %RDI = add nsw i64 %memload17, %RAX19
  %highbit20 = and i64 -9223372036854775808, %RDI
  %SF21 = icmp ne i64 %highbit20, 0
  %ZF22 = icmp eq i64 %RDI, 0
  %memload23 = load i64, ptr %RBP_N.24, align 1
  %memload24 = load i64, ptr %RBP_N.36, align 1
  %34 = trunc i64 %memload24 to i32
  %RDX = sext i32 %34 to i64
  %35 = inttoptr i64 %RDI to ptr
  %36 = inttoptr i64 %memload23 to ptr
  %EAX = call i32 @strncmp(ptr %35, ptr %36, i64 %RDX)
  %37 = sub i32 %EAX, 0
  %38 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 0)
  %CF25 = extractvalue { i32, i1 } %38, 1
  %ZF26 = icmp eq i32 %37, 0
  %highbit27 = and i32 -2147483648, %37
  %SF28 = icmp ne i32 %highbit27, 0
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 0)
  %OF29 = extractvalue { i32, i1 } %39, 1
  %40 = and i32 %37, 255
  %41 = call i32 @llvm.ctpop.i32(i32 %40)
  %42 = and i32 %41, 1
  %PF30 = icmp eq i32 %42, 0
  %CmpZF_JNE49 = icmp eq i1 %ZF26, false
  br i1 %CmpZF_JNE49, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload31 = load i32, ptr %RBP_N.28, align 1
  %EAX38 = add i32 %memload31, 1
  %43 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload31, i32 1)
  %CF32 = extractvalue { i32, i1 } %43, 1
  %44 = and i32 %EAX38, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44)
  %46 = and i32 %45, 1
  %PF33 = icmp eq i32 %46, 0
  %ZF34 = icmp eq i32 %EAX38, 0
  %highbit35 = and i32 -2147483648, %EAX38
  %SF36 = icmp ne i32 %highbit35, 0
  %47 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload31, i32 1)
  %OF37 = extractvalue { i32, i1 } %47, 1
  store i32 %EAX38, ptr %RBP_N.28, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload39 = load i32, ptr %RBP_N.40, align 1
  %EAX46 = add i32 %memload39, 1
  %48 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload39, i32 1)
  %CF40 = extractvalue { i32, i1 } %48, 1
  %49 = and i32 %EAX46, 255
  %50 = call i32 @llvm.ctpop.i32(i32 %49)
  %51 = and i32 %50, 1
  %PF41 = icmp eq i32 %51, 0
  %ZF42 = icmp eq i32 %EAX46, 0
  %highbit43 = and i32 -2147483648, %EAX46
  %SF44 = icmp ne i32 %highbit43, 0
  %52 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload39, i32 1)
  %OF45 = extractvalue { i32, i1 } %52, 1
  store i32 %EAX46, ptr %RBP_N.40, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.3
  %memload47 = load i32, ptr %RBP_N.28, align 1
  store i32 %memload47, ptr %RBP_N.4, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.1
  %memload48 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload48
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
