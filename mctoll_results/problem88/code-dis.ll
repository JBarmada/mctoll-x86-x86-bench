; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i64 %arg1, i32 %arg2, i64 %arg3, i32 %arg4, i64 %arg5) {
entry:
  %stktop_8 = alloca i8, i32 72, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.56 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.52 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.48 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.40 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 44
  %RBP_N.28 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 48
  %RBP_N.24 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 60
  %RBP_N.12 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 64
  %RBP_N.8 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %8 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  store i32 %arg4, ptr %RBP_N.28, align 1
  store i64 %arg5, ptr %RBP_N.40, align 1
  %9 = zext i32 800 to i64
  %10 = call ptr @malloc(i64 %9)
  %RAX = ptrtoint ptr %10 to i64
  store i64 %RAX, ptr %RBP_N.48, align 1
  store i32 0, ptr %RBP_N.52, align 1
  store i32 0, ptr %RBP_N.56, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.9
  %memload = load i32, ptr %RBP_N.56, align 1
  %11 = load i32, ptr %RBP_N.12, align 1
  %12 = sub i32 %memload, %11
  %13 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %11)
  %CF = extractvalue { i32, i1 } %13, 1
  %ZF = icmp eq i32 %12, 0
  %highbit = and i32 -2147483648, %12
  %SF = icmp ne i32 %highbit, 0
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %11)
  %OF = extractvalue { i32, i1 } %14, 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = and i32 %16, 1
  %PF = icmp eq i32 %17, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.10, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.24, align 1
  %memload2 = load i64, ptr %RBP_N.56, align 1
  %18 = trunc i64 %memload2 to i32
  %RCX = sext i32 %18 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %19 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load i32, ptr %19, align 1
  %EAX = sub i32 %memload3, 1
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload3, i32 1)
  %CF4 = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %EAX, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF5 = icmp eq i32 %23, 0
  %ZF6 = icmp eq i32 %EAX, 0
  %highbit7 = and i32 -2147483648, %EAX
  %SF8 = icmp ne i32 %highbit7, 0
  %24 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload3, i32 1)
  %OF9 = extractvalue { i32, i1 } %24, 1
  %25 = ptrtoint ptr %stktop_8 to i64
  %26 = add i64 %25, 4
  %27 = inttoptr i64 %26 to ptr
  store i32 %EAX, ptr %27, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %28 = ptrtoint ptr %stktop_8 to i64
  %29 = add i64 %28, 4
  %30 = inttoptr i64 %29 to ptr
  %31 = load i32, ptr %30, align 1
  %32 = zext i32 %31 to i64
  %33 = zext i32 0 to i64
  %34 = sub i64 %32, %33
  %35 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %32, i64 %33)
  %CF10 = extractvalue { i64, i1 } %35, 1
  %ZF11 = icmp eq i64 %34, 0
  %highbit12 = and i64 -9223372036854775808, %34
  %SF13 = icmp ne i64 %highbit12, 0
  %36 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %32, i64 %33)
  %OF14 = extractvalue { i64, i1 } %36, 1
  %37 = and i64 %34, 255
  %38 = call i64 @llvm.ctpop.i64(i64 %37)
  %39 = and i64 %38, 1
  %PF15 = icmp eq i64 %39, 0
  %SFAndOF_JL = icmp ne i1 %SF13, %OF14
  br i1 %SFAndOF_JL, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload16 = load i64, ptr %RBP_N.8, align 1
  %memload17 = load i64, ptr %RBP_N.56, align 1
  %40 = trunc i64 %memload17 to i32
  %RCX18 = sext i32 %40 to i64
  %memref-idxreg19 = mul i64 8, %RCX18
  %memref-basereg20 = add i64 %memload16, %memref-idxreg19
  %41 = inttoptr i64 %memref-basereg20 to ptr
  %memload21 = load i64, ptr %41, align 1
  %42 = ptrtoint ptr %stktop_8 to i64
  %43 = add i64 %42, 4
  %44 = inttoptr i64 %43 to ptr
  %memload22 = load i64, ptr %44, align 1
  %45 = trunc i64 %memload22 to i32
  %RCX23 = sext i32 %45 to i64
  %memref-idxreg24 = mul i64 4, %RCX23
  %memref-basereg25 = add i64 %memload21, %memref-idxreg24
  %46 = inttoptr i64 %memref-basereg25 to ptr
  %memload26 = load i32, ptr %46, align 1
  %47 = load i32, ptr %RBP_N.28, align 1
  %48 = sub i32 %memload26, %47
  %49 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload26, i32 %47)
  %CF27 = extractvalue { i32, i1 } %49, 1
  %ZF28 = icmp eq i32 %48, 0
  %highbit29 = and i32 -2147483648, %48
  %SF30 = icmp ne i32 %highbit29, 0
  %50 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload26, i32 %47)
  %OF31 = extractvalue { i32, i1 } %50, 1
  %51 = and i32 %48, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %51)
  %53 = and i32 %52, 1
  %PF32 = icmp eq i32 %53, 0
  %CmpZF_JNE = icmp eq i1 %ZF28, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %54 = zext i32 8 to i64
  %55 = call ptr @malloc(i64 %54)
  %RAX33 = ptrtoint ptr %55 to i64
  %memload34 = load i64, ptr %RBP_N.48, align 1
  %memload35 = load i64, ptr %RBP_N.52, align 1
  %56 = trunc i64 %memload35 to i32
  %RCX36 = sext i32 %56 to i64
  %memref-idxreg37 = mul i64 8, %RCX36
  %memref-basereg38 = add i64 %memload34, %memref-idxreg37
  %57 = inttoptr i64 %memref-basereg38 to ptr
  store i64 %RAX33, ptr %57, align 1
  %memload39 = load i32, ptr %RBP_N.56, align 1
  %memload40 = load i64, ptr %RBP_N.48, align 1
  %memload41 = load i64, ptr %RBP_N.52, align 1
  %58 = trunc i64 %memload41 to i32
  %RDX = sext i32 %58 to i64
  %memref-idxreg42 = mul i64 8, %RDX
  %memref-basereg43 = add i64 %memload40, %memref-idxreg42
  %59 = inttoptr i64 %memref-basereg43 to ptr
  %memload44 = load i64, ptr %59, align 1
  %60 = inttoptr i64 %memload44 to ptr
  store i32 %memload39, ptr %60, align 1
  %61 = ptrtoint ptr %stktop_8 to i64
  %62 = add i64 %61, 4
  %63 = inttoptr i64 %62 to ptr
  %memload45 = load i32, ptr %63, align 1
  %memload46 = load i64, ptr %RBP_N.48, align 1
  %memload47 = load i64, ptr %RBP_N.52, align 1
  %64 = trunc i64 %memload47 to i32
  %RDX48 = sext i32 %64 to i64
  %memref-idxreg49 = mul i64 8, %RDX48
  %memref-basereg50 = add i64 %memload46, %memref-idxreg49
  %65 = inttoptr i64 %memref-basereg50 to ptr
  %memload51 = load i64, ptr %65, align 1
  %memref-disp = add i64 %memload51, 4
  %66 = inttoptr i64 %memref-disp to ptr
  store i32 %memload45, ptr %66, align 1
  %memload52 = load i32, ptr %RBP_N.52, align 1
  %EAX59 = add i32 %memload52, 1
  %67 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload52, i32 1)
  %CF53 = extractvalue { i32, i1 } %67, 1
  %68 = and i32 %EAX59, 255
  %69 = call i32 @llvm.ctpop.i32(i32 %68)
  %70 = and i32 %69, 1
  %PF54 = icmp eq i32 %70, 0
  %ZF55 = icmp eq i32 %EAX59, 0
  %highbit56 = and i32 -2147483648, %EAX59
  %SF57 = icmp ne i32 %highbit56, 0
  %71 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload52, i32 1)
  %OF58 = extractvalue { i32, i1 } %71, 1
  store i32 %EAX59, ptr %RBP_N.52, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %72 = ptrtoint ptr %stktop_8 to i64
  %73 = add i64 %72, 4
  %74 = inttoptr i64 %73 to ptr
  %memload60 = load i32, ptr %74, align 1
  %EAX67 = add i32 %memload60, -1
  %75 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload60, i32 -1)
  %CF61 = extractvalue { i32, i1 } %75, 1
  %76 = and i32 %EAX67, 255
  %77 = call i32 @llvm.ctpop.i32(i32 %76)
  %78 = and i32 %77, 1
  %PF62 = icmp eq i32 %78, 0
  %ZF63 = icmp eq i32 %EAX67, 0
  %highbit64 = and i32 -2147483648, %EAX67
  %SF65 = icmp ne i32 %highbit64, 0
  %79 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload60, i32 -1)
  %OF66 = extractvalue { i32, i1 } %79, 1
  %80 = ptrtoint ptr %stktop_8 to i64
  %81 = add i64 %80, 4
  %82 = inttoptr i64 %81 to ptr
  store i32 %EAX67, ptr %82, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.3
  br label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload68 = load i32, ptr %RBP_N.56, align 1
  %EAX75 = add i32 %memload68, 1
  %83 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload68, i32 1)
  %CF69 = extractvalue { i32, i1 } %83, 1
  %84 = and i32 %EAX75, 255
  %85 = call i32 @llvm.ctpop.i32(i32 %84)
  %86 = and i32 %85, 1
  %PF70 = icmp eq i32 %86, 0
  %ZF71 = icmp eq i32 %EAX75, 0
  %highbit72 = and i32 -2147483648, %EAX75
  %SF73 = icmp ne i32 %highbit72, 0
  %87 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload68, i32 1)
  %OF74 = extractvalue { i32, i1 } %87, 1
  store i32 %EAX75, ptr %RBP_N.56, align 1
  br label %bb.1

bb.10:                                            ; preds = %bb.1
  %memload76 = load i32, ptr %RBP_N.52, align 1
  %memload77 = load i64, ptr %RBP_N.40, align 1
  %88 = inttoptr i64 %memload77 to ptr
  store i32 %memload76, ptr %88, align 1
  %memload78 = load i64, ptr %RBP_N.48, align 1
  ret i64 %memload78
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
