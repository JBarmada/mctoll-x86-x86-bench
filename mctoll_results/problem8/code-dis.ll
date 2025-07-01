; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @strstr(ptr, ptr)

declare dso_local ptr @realloc(ptr, i64)

define dso_local i64 @func0(i64 %arg1, i32 %arg2, i64 %arg3, i64 %arg4) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 44
  %RBP_N.12 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  store i64 %arg4, ptr %RBP_N.32, align 1
  %6 = sext i32 0 to i64
  store i64 %6, ptr %RBP_N.40, align 1
  %7 = ptrtoint ptr %stktop_8 to i64
  %8 = add i64 %7, 4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 1
  store i32 0, ptr %stktop_8, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %memload = load i32, ptr %stktop_8, align 1
  %10 = load i32, ptr %RBP_N.12, align 1
  %11 = sub i32 %memload, %10
  %12 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %10)
  %CF = extractvalue { i32, i1 } %12, 1
  %ZF = icmp eq i32 %11, 0
  %highbit = and i32 -2147483648, %11
  %SF = icmp ne i32 %highbit, 0
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %10)
  %OF = extractvalue { i32, i1 } %13, 1
  %14 = and i32 %11, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = and i32 %15, 1
  %PF = icmp eq i32 %16, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.8, align 1
  %memload2 = load i64, ptr %stktop_8, align 1
  %17 = trunc i64 %memload2 to i32
  %RCX = sext i32 %17 to i64
  %memref-idxreg = mul i64 8, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %18 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load i64, ptr %18, align 1
  %memload4 = load i64, ptr %RBP_N.24, align 1
  %19 = inttoptr i64 %memload3 to ptr
  %20 = inttoptr i64 %memload4 to ptr
  %21 = call ptr @strstr(ptr %19, ptr %20)
  %RAX = ptrtoint ptr %21 to i64
  %22 = sub i64 %RAX, 0
  %23 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX, i64 0)
  %CF5 = extractvalue { i64, i1 } %23, 1
  %ZF6 = icmp eq i64 %22, 0
  %highbit7 = and i64 -9223372036854775808, %22
  %SF8 = icmp ne i64 %highbit7, 0
  %24 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX, i64 0)
  %OF9 = extractvalue { i64, i1 } %24, 1
  %25 = and i64 %22, 255
  %26 = call i64 @llvm.ctpop.i64(i64 %25)
  %27 = and i64 %26, 1
  %PF10 = icmp eq i64 %27, 0
  %CmpZF_JE = icmp eq i1 %ZF6, true
  br i1 %CmpZF_JE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload11 = load i64, ptr %RBP_N.40, align 1
  %28 = ptrtoint ptr %stktop_8 to i64
  %29 = add i64 %28, 4
  %30 = inttoptr i64 %29 to ptr
  %memload12 = load i32, ptr %30, align 1
  %EAX = add i32 %memload12, 1
  %31 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload12, i32 1)
  %CF13 = extractvalue { i32, i1 } %31, 1
  %32 = and i32 %EAX, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = and i32 %33, 1
  %PF14 = icmp eq i32 %34, 0
  %ZF15 = icmp eq i32 %EAX, 0
  %highbit16 = and i32 -2147483648, %EAX
  %SF17 = icmp ne i32 %highbit16, 0
  %35 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload12, i32 1)
  %OF18 = extractvalue { i32, i1 } %35, 1
  %RSI = sext i32 %EAX to i64
  %RSI22 = shl i64 %RSI, 3
  %ZF19 = icmp eq i64 %RSI22, 0
  %highbit20 = and i64 -9223372036854775808, %RSI22
  %SF21 = icmp ne i64 %highbit20, 0
  %36 = inttoptr i64 %memload11 to ptr
  %37 = call ptr @realloc(ptr %36, i64 %RSI22)
  %RAX23 = ptrtoint ptr %37 to i64
  store i64 %RAX23, ptr %RBP_N.40, align 1
  %memload24 = load i64, ptr %RBP_N.8, align 1
  %memload25 = load i64, ptr %stktop_8, align 1
  %38 = trunc i64 %memload25 to i32
  %RCX26 = sext i32 %38 to i64
  %memref-idxreg27 = mul i64 8, %RCX26
  %memref-basereg28 = add i64 %memload24, %memref-idxreg27
  %39 = inttoptr i64 %memref-basereg28 to ptr
  %memload29 = load i64, ptr %39, align 1
  %memload30 = load i64, ptr %RBP_N.40, align 1
  %40 = ptrtoint ptr %stktop_8 to i64
  %41 = add i64 %40, 4
  %42 = inttoptr i64 %41 to ptr
  %memload31 = load i64, ptr %42, align 1
  %43 = trunc i64 %memload31 to i32
  %RCX32 = sext i32 %43 to i64
  %memref-idxreg33 = mul i64 8, %RCX32
  %memref-basereg34 = add i64 %memload30, %memref-idxreg33
  %44 = inttoptr i64 %memref-basereg34 to ptr
  store i64 %memload29, ptr %44, align 1
  %45 = ptrtoint ptr %stktop_8 to i64
  %46 = add i64 %45, 4
  %47 = inttoptr i64 %46 to ptr
  %memload35 = load i32, ptr %47, align 1
  %EAX42 = add i32 %memload35, 1
  %48 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload35, i32 1)
  %CF36 = extractvalue { i32, i1 } %48, 1
  %49 = and i32 %EAX42, 255
  %50 = call i32 @llvm.ctpop.i32(i32 %49)
  %51 = and i32 %50, 1
  %PF37 = icmp eq i32 %51, 0
  %ZF38 = icmp eq i32 %EAX42, 0
  %highbit39 = and i32 -2147483648, %EAX42
  %SF40 = icmp ne i32 %highbit39, 0
  %52 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload35, i32 1)
  %OF41 = extractvalue { i32, i1 } %52, 1
  %53 = ptrtoint ptr %stktop_8 to i64
  %54 = add i64 %53, 4
  %55 = inttoptr i64 %54 to ptr
  store i32 %EAX42, ptr %55, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload43 = load i32, ptr %stktop_8, align 1
  %EAX50 = add i32 %memload43, 1
  %56 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload43, i32 1)
  %CF44 = extractvalue { i32, i1 } %56, 1
  %57 = and i32 %EAX50, 255
  %58 = call i32 @llvm.ctpop.i32(i32 %57)
  %59 = and i32 %58, 1
  %PF45 = icmp eq i32 %59, 0
  %ZF46 = icmp eq i32 %EAX50, 0
  %highbit47 = and i32 -2147483648, %EAX50
  %SF48 = icmp ne i32 %highbit47, 0
  %60 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload43, i32 1)
  %OF49 = extractvalue { i32, i1 } %60, 1
  store i32 %EAX50, ptr %stktop_8, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  %61 = ptrtoint ptr %stktop_8 to i64
  %62 = add i64 %61, 4
  %63 = inttoptr i64 %62 to ptr
  %memload51 = load i32, ptr %63, align 1
  %memload52 = load i64, ptr %RBP_N.32, align 1
  %64 = inttoptr i64 %memload52 to ptr
  store i32 %memload51, ptr %64, align 1
  %memload53 = load i64, ptr %RBP_N.40, align 1
  ret i64 %memload53
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
