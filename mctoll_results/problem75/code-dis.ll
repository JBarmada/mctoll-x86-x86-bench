; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

define dso_local i64 @func0(i64 %arg1, i32 %arg2, i64 %arg3, i32 %arg4) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %2 to ptr
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
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  store i64 %arg3, ptr %RBP_N.32, align 1
  store i32 %arg4, ptr %RBP_N.36, align 1
  %7 = ptrtoint ptr %stktop_8 to i64
  %8 = add i64 %7, 4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 1
  store i32 0, ptr %stktop_8, align 1
  store i32 0, ptr %RBP_N.40, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload = load i32, ptr %RBP_N.40, align 1
  %10 = load i32, ptr %RBP_N.20, align 1
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
  br i1 %CmpSFOF_JGE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.16, align 1
  %memload2 = load i64, ptr %RBP_N.40, align 1
  %17 = trunc i64 %memload2 to i32
  %RCX = sext i32 %17 to i64
  %memref-idxreg = mul i64 8, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %18 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load i64, ptr %18, align 1
  %19 = inttoptr i64 %memload3 to ptr
  %RAX = call i64 @strlen(ptr %19)
  %20 = ptrtoint ptr %stktop_8 to i64
  %21 = add i64 %20, 4
  %22 = inttoptr i64 %21 to ptr
  %memload4 = load i64, ptr %22, align 1
  %23 = trunc i64 %memload4 to i32
  %RAX5 = sext i32 %23 to i64
  %RAX9 = add nsw i64 %RAX5, %RAX
  %highbit6 = and i64 -9223372036854775808, %RAX9
  %SF7 = icmp ne i64 %highbit6, 0
  %ZF8 = icmp eq i64 %RAX9, 0
  %24 = ptrtoint ptr %stktop_8 to i64
  %25 = add i64 %24, 4
  %26 = trunc i64 %RAX9 to i32
  %27 = inttoptr i64 %25 to ptr
  store i32 %26, ptr %27, align 1
  %memload10 = load i32, ptr %RBP_N.40, align 1
  %EAX = add i32 %memload10, 1
  %28 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload10, i32 1)
  %CF11 = extractvalue { i32, i1 } %28, 1
  %29 = and i32 %EAX, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = and i32 %30, 1
  %PF12 = icmp eq i32 %31, 0
  %ZF13 = icmp eq i32 %EAX, 0
  %highbit14 = and i32 -2147483648, %EAX
  %SF15 = icmp ne i32 %highbit14, 0
  %32 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload10, i32 1)
  %OF16 = extractvalue { i32, i1 } %32, 1
  store i32 %EAX, ptr %RBP_N.40, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  store i32 0, ptr %RBP_N.40, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.5
  %memload17 = load i32, ptr %RBP_N.40, align 1
  %33 = load i32, ptr %RBP_N.36, align 1
  %34 = sub i32 %memload17, %33
  %35 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload17, i32 %33)
  %CF18 = extractvalue { i32, i1 } %35, 1
  %ZF19 = icmp eq i32 %34, 0
  %highbit20 = and i32 -2147483648, %34
  %SF21 = icmp ne i32 %highbit20, 0
  %36 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload17, i32 %33)
  %OF22 = extractvalue { i32, i1 } %36, 1
  %37 = and i32 %34, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF23 = icmp eq i32 %39, 0
  %CmpSFOF_JGE63 = icmp eq i1 %SF21, %OF22
  br i1 %CmpSFOF_JGE63, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload24 = load i64, ptr %RBP_N.32, align 1
  %memload25 = load i64, ptr %RBP_N.40, align 1
  %40 = trunc i64 %memload25 to i32
  %RCX26 = sext i32 %40 to i64
  %memref-idxreg27 = mul i64 8, %RCX26
  %memref-basereg28 = add i64 %memload24, %memref-idxreg27
  %41 = inttoptr i64 %memref-basereg28 to ptr
  %memload29 = load i64, ptr %41, align 1
  %42 = inttoptr i64 %memload29 to ptr
  %RAX30 = call i64 @strlen(ptr %42)
  %memload31 = load i64, ptr %stktop_8, align 1
  %43 = trunc i64 %memload31 to i32
  %RAX32 = sext i32 %43 to i64
  %RAX36 = add nsw i64 %RAX32, %RAX30
  %highbit33 = and i64 -9223372036854775808, %RAX36
  %SF34 = icmp ne i64 %highbit33, 0
  %ZF35 = icmp eq i64 %RAX36, 0
  %44 = trunc i64 %RAX36 to i32
  store i32 %44, ptr %stktop_8, align 1
  %memload37 = load i32, ptr %RBP_N.40, align 1
  %EAX44 = add i32 %memload37, 1
  %45 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload37, i32 1)
  %CF38 = extractvalue { i32, i1 } %45, 1
  %46 = and i32 %EAX44, 255
  %47 = call i32 @llvm.ctpop.i32(i32 %46)
  %48 = and i32 %47, 1
  %PF39 = icmp eq i32 %48, 0
  %ZF40 = icmp eq i32 %EAX44, 0
  %highbit41 = and i32 -2147483648, %EAX44
  %SF42 = icmp ne i32 %highbit41, 0
  %49 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload37, i32 1)
  %OF43 = extractvalue { i32, i1 } %49, 1
  store i32 %EAX44, ptr %RBP_N.40, align 1
  br label %bb.4

bb.6:                                             ; preds = %bb.4
  %50 = ptrtoint ptr %stktop_8 to i64
  %51 = add i64 %50, 4
  %52 = inttoptr i64 %51 to ptr
  %memload45 = load i32, ptr %52, align 1
  %53 = load i32, ptr %stktop_8, align 1
  %54 = sub i32 %memload45, %53
  %55 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload45, i32 %53)
  %CF46 = extractvalue { i32, i1 } %55, 1
  %ZF47 = icmp eq i32 %54, 0
  %highbit48 = and i32 -2147483648, %54
  %SF49 = icmp ne i32 %highbit48, 0
  %56 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload45, i32 %53)
  %OF50 = extractvalue { i32, i1 } %56, 1
  %57 = and i32 %54, 255
  %58 = call i32 @llvm.ctpop.i32(i32 %57)
  %59 = and i32 %58, 1
  %PF51 = icmp eq i32 %59, 0
  %CmpSFOF_JGE64 = icmp eq i1 %SF49, %OF50
  br i1 %CmpSFOF_JGE64, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload52 = load i64, ptr %RBP_N.16, align 1
  store i64 %memload52, ptr %RBP_N.8, align 1
  br label %bb.11

bb.8:                                             ; preds = %bb.6
  %60 = ptrtoint ptr %stktop_8 to i64
  %61 = add i64 %60, 4
  %62 = inttoptr i64 %61 to ptr
  %memload53 = load i32, ptr %62, align 1
  %63 = load i32, ptr %stktop_8, align 1
  %64 = sub i32 %memload53, %63
  %65 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload53, i32 %63)
  %CF54 = extractvalue { i32, i1 } %65, 1
  %ZF55 = icmp eq i32 %64, 0
  %highbit56 = and i32 -2147483648, %64
  %SF57 = icmp ne i32 %highbit56, 0
  %66 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload53, i32 %63)
  %OF58 = extractvalue { i32, i1 } %66, 1
  %67 = and i32 %64, 255
  %68 = call i32 @llvm.ctpop.i32(i32 %67)
  %69 = and i32 %68, 1
  %PF59 = icmp eq i32 %69, 0
  %CmpZF_JLE = icmp eq i1 %ZF55, true
  %CmpOF_JLE = icmp ne i1 %SF57, %OF58
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload60 = load i64, ptr %RBP_N.32, align 1
  store i64 %memload60, ptr %RBP_N.8, align 1
  br label %bb.11

bb.10:                                            ; preds = %bb.8
  %memload61 = load i64, ptr %RBP_N.16, align 1
  store i64 %memload61, ptr %RBP_N.8, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.9, %bb.7
  %memload62 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload62
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
