; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i64 %arg1, i32 %arg2, i32 %arg3, i64 %arg4) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 44
  %RBP_N.12 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i32 %arg3, ptr %RBP_N.16, align 1
  store i64 %arg4, ptr %RBP_N.24, align 1
  %8 = load i32, ptr %RBP_N.12, align 1
  %9 = zext i32 %8 to i64
  %10 = zext i32 0 to i64
  %11 = sub i64 %9, %10
  %12 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %9, i64 %10)
  %CF = extractvalue { i64, i1 } %12, 1
  %ZF = icmp eq i64 %11, 0
  %highbit = and i64 -9223372036854775808, %11
  %SF = icmp ne i64 %highbit, 0
  %13 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %9, i64 %10)
  %OF = extractvalue { i64, i1 } %13, 1
  %14 = and i64 %11, 255
  %15 = call i64 @llvm.ctpop.i64(i64 %14)
  %16 = and i64 %15, 1
  %PF = icmp eq i64 %16, 0
  %CmpZF_JLE = icmp eq i1 %ZF, true
  %CmpOF_JLE = icmp ne i1 %SF, %OF
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %memload = load i32, ptr %RBP_N.12, align 1
  %EAX = shl i32 %memload, 1
  %ZF1 = icmp eq i32 %EAX, 0
  %highbit2 = and i32 -2147483648, %EAX
  %SF3 = icmp ne i32 %highbit2, 0
  %EAX10 = sub i32 %EAX, 1
  %17 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 1)
  %CF4 = extractvalue { i32, i1 } %17, 1
  %18 = and i32 %EAX10, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = and i32 %19, 1
  %PF5 = icmp eq i32 %20, 0
  %ZF6 = icmp eq i32 %EAX10, 0
  %highbit7 = and i32 -2147483648, %EAX10
  %SF8 = icmp ne i32 %highbit7, 0
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 1)
  %OF9 = extractvalue { i32, i1 } %21, 1
  %22 = ptrtoint ptr %stktop_8 to i64
  %23 = add i64 %22, 4
  %24 = inttoptr i64 %23 to ptr
  store i32 %EAX10, ptr %24, align 1
  br label %bb.3

bb.2:                                             ; preds = %entry
  %25 = ptrtoint ptr %stktop_8 to i64
  %26 = add i64 %25, 4
  %27 = inttoptr i64 %26 to ptr
  store i32 0, ptr %27, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.1
  %28 = ptrtoint ptr %stktop_8 to i64
  %29 = add i64 %28, 4
  %30 = inttoptr i64 %29 to ptr
  %memload11 = load i32, ptr %30, align 1
  %memload12 = load i64, ptr %RBP_N.24, align 1
  %31 = inttoptr i64 %memload12 to ptr
  store i32 %memload11, ptr %31, align 1
  %memload13 = load i64, ptr %RBP_N.24, align 1
  %32 = inttoptr i64 %memload13 to ptr
  %memload14 = load i64, ptr %32, align 1
  %33 = trunc i64 %memload14 to i32
  %RDI = sext i32 %33 to i64
  %RDI18 = shl i64 %RDI, 2
  %ZF15 = icmp eq i64 %RDI18, 0
  %highbit16 = and i64 -9223372036854775808, %RDI18
  %SF17 = icmp ne i64 %highbit16, 0
  %34 = call ptr @malloc(i64 %RDI18)
  %RAX = ptrtoint ptr %34 to i64
  store i64 %RAX, ptr %RBP_N.32, align 1
  %35 = load i32, ptr %RBP_N.12, align 1
  %36 = zext i32 %35 to i64
  %37 = zext i32 0 to i64
  %38 = sub i64 %36, %37
  %39 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %36, i64 %37)
  %CF19 = extractvalue { i64, i1 } %39, 1
  %ZF20 = icmp eq i64 %38, 0
  %highbit21 = and i64 -9223372036854775808, %38
  %SF22 = icmp ne i64 %highbit21, 0
  %40 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %36, i64 %37)
  %OF23 = extractvalue { i64, i1 } %40, 1
  %41 = and i64 %38, 255
  %42 = call i64 @llvm.ctpop.i64(i64 %41)
  %43 = and i64 %42, 1
  %PF24 = icmp eq i64 %43, 0
  %CmpZF_JLE71 = icmp eq i1 %ZF20, true
  %CmpOF_JLE72 = icmp ne i1 %SF22, %OF23
  %ZFOrSF_JLE73 = or i1 %CmpZF_JLE71, %CmpOF_JLE72
  br i1 %ZFOrSF_JLE73, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload25 = load i64, ptr %RBP_N.8, align 1
  %44 = inttoptr i64 %memload25 to ptr
  %memload26 = load i32, ptr %44, align 1
  %memload27 = load i64, ptr %RBP_N.32, align 1
  %45 = inttoptr i64 %memload27 to ptr
  store i32 %memload26, ptr %45, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3
  store i32 1, ptr %RBP_N.36, align 1
  store i32 1, ptr %RBP_N.40, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.7
  %memload28 = load i32, ptr %RBP_N.36, align 1
  %46 = load i32, ptr %RBP_N.12, align 1
  %47 = sub i32 %memload28, %46
  %48 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload28, i32 %46)
  %CF29 = extractvalue { i32, i1 } %48, 1
  %ZF30 = icmp eq i32 %47, 0
  %highbit31 = and i32 -2147483648, %47
  %SF32 = icmp ne i32 %highbit31, 0
  %49 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload28, i32 %46)
  %OF33 = extractvalue { i32, i1 } %49, 1
  %50 = and i32 %47, 255
  %51 = call i32 @llvm.ctpop.i32(i32 %50)
  %52 = and i32 %51, 1
  %PF34 = icmp eq i32 %52, 0
  %CmpSFOF_JGE = icmp eq i1 %SF32, %OF33
  br i1 %CmpSFOF_JGE, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload35 = load i32, ptr %RBP_N.16, align 1
  %memload36 = load i64, ptr %RBP_N.32, align 1
  %memload37 = load i32, ptr %RBP_N.40, align 1
  %ESI = add i32 %memload37, 1
  %53 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload37, i32 1)
  %CF38 = extractvalue { i32, i1 } %53, 1
  %54 = and i32 %ESI, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54)
  %56 = and i32 %55, 1
  %PF39 = icmp eq i32 %56, 0
  %ZF40 = icmp eq i32 %ESI, 0
  %highbit41 = and i32 -2147483648, %ESI
  %SF42 = icmp ne i32 %highbit41, 0
  %57 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload37, i32 1)
  %OF43 = extractvalue { i32, i1 } %57, 1
  store i32 %ESI, ptr %RBP_N.40, align 1
  %RCX = sext i32 %memload37 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload36, %memref-idxreg
  %58 = inttoptr i64 %memref-basereg to ptr
  store i32 %memload35, ptr %58, align 1
  %memload44 = load i64, ptr %RBP_N.8, align 1
  %memload45 = load i64, ptr %RBP_N.36, align 1
  %59 = trunc i64 %memload45 to i32
  %RCX46 = sext i32 %59 to i64
  %memref-idxreg47 = mul i64 4, %RCX46
  %memref-basereg48 = add i64 %memload44, %memref-idxreg47
  %60 = inttoptr i64 %memref-basereg48 to ptr
  %memload49 = load i32, ptr %60, align 1
  %memload50 = load i64, ptr %RBP_N.32, align 1
  %memload51 = load i32, ptr %RBP_N.40, align 1
  %ESI58 = add i32 %memload51, 1
  %61 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload51, i32 1)
  %CF52 = extractvalue { i32, i1 } %61, 1
  %62 = and i32 %ESI58, 255
  %63 = call i32 @llvm.ctpop.i32(i32 %62)
  %64 = and i32 %63, 1
  %PF53 = icmp eq i32 %64, 0
  %ZF54 = icmp eq i32 %ESI58, 0
  %highbit55 = and i32 -2147483648, %ESI58
  %SF56 = icmp ne i32 %highbit55, 0
  %65 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload51, i32 1)
  %OF57 = extractvalue { i32, i1 } %65, 1
  store i32 %ESI58, ptr %RBP_N.40, align 1
  %RCX59 = sext i32 %memload51 to i64
  %memref-idxreg60 = mul i64 4, %RCX59
  %memref-basereg61 = add i64 %memload50, %memref-idxreg60
  %66 = inttoptr i64 %memref-basereg61 to ptr
  store i32 %memload49, ptr %66, align 1
  %memload62 = load i32, ptr %RBP_N.36, align 1
  %EAX69 = add i32 %memload62, 1
  %67 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload62, i32 1)
  %CF63 = extractvalue { i32, i1 } %67, 1
  %68 = and i32 %EAX69, 255
  %69 = call i32 @llvm.ctpop.i32(i32 %68)
  %70 = and i32 %69, 1
  %PF64 = icmp eq i32 %70, 0
  %ZF65 = icmp eq i32 %EAX69, 0
  %highbit66 = and i32 -2147483648, %EAX69
  %SF67 = icmp ne i32 %highbit66, 0
  %71 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload62, i32 1)
  %OF68 = extractvalue { i32, i1 } %71, 1
  store i32 %EAX69, ptr %RBP_N.36, align 1
  br label %bb.6

bb.8:                                             ; preds = %bb.6
  %memload70 = load i64, ptr %RBP_N.32, align 1
  ret i64 %memload70
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

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
