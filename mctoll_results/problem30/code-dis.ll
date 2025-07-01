; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @malloc(i64)

declare dso_local i32 @strncmp(ptr, ptr, i64)

define dso_local i32 @func0(i64 %arg1, i32 %arg2, i64 %arg3, i64 %arg4) {
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
  %4 = add i64 %tos, 44
  %RBP_N.12 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  store i64 %arg4, ptr %RBP_N.32, align 1
  %memload = load i64, ptr %RBP_N.24, align 1
  %7 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %7)
  %8 = trunc i64 %RAX to i32
  store i32 %8, ptr %RBP_N.36, align 1
  %memload1 = load i64, ptr %RBP_N.12, align 1
  %9 = trunc i64 %memload1 to i32
  %RDI = sext i32 %9 to i64
  %RDI2 = shl i64 %RDI, 3
  %ZF = icmp eq i64 %RDI2, 0
  %highbit = and i64 -9223372036854775808, %RDI2
  %SF = icmp ne i64 %highbit, 0
  %10 = call ptr @malloc(i64 %RDI2)
  %RAX3 = ptrtoint ptr %10 to i64
  %memload4 = load i64, ptr %RBP_N.32, align 1
  %11 = inttoptr i64 %memload4 to ptr
  store i64 %RAX3, ptr %11, align 1
  store i32 0, ptr %RBP_N.40, align 1
  %12 = ptrtoint ptr %stktop_8 to i64
  %13 = add i64 %12, 4
  %14 = inttoptr i64 %13 to ptr
  store i32 0, ptr %14, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %15 = ptrtoint ptr %stktop_8 to i64
  %16 = add i64 %15, 4
  %17 = inttoptr i64 %16 to ptr
  %memload5 = load i32, ptr %17, align 1
  %18 = load i32, ptr %RBP_N.12, align 1
  %19 = sub i32 %memload5, %18
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload5, i32 %18)
  %CF = extractvalue { i32, i1 } %20, 1
  %ZF6 = icmp eq i32 %19, 0
  %highbit7 = and i32 -2147483648, %19
  %SF8 = icmp ne i32 %highbit7, 0
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload5, i32 %18)
  %OF = extractvalue { i32, i1 } %21, 1
  %22 = and i32 %19, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF = icmp eq i32 %24, 0
  %CmpSFOF_JGE = icmp eq i1 %SF8, %OF
  br i1 %CmpSFOF_JGE, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload9 = load i64, ptr %RBP_N.8, align 1
  %25 = ptrtoint ptr %stktop_8 to i64
  %26 = add i64 %25, 4
  %27 = inttoptr i64 %26 to ptr
  %memload10 = load i64, ptr %27, align 1
  %28 = trunc i64 %memload10 to i32
  %RCX = sext i32 %28 to i64
  %memref-idxreg = mul i64 8, %RCX
  %memref-basereg = add i64 %memload9, %memref-idxreg
  %29 = inttoptr i64 %memref-basereg to ptr
  %memload11 = load i64, ptr %29, align 1
  %memload12 = load i64, ptr %RBP_N.24, align 1
  %memload13 = load i64, ptr %RBP_N.36, align 1
  %30 = trunc i64 %memload13 to i32
  %RDX = sext i32 %30 to i64
  %31 = inttoptr i64 %memload11 to ptr
  %32 = inttoptr i64 %memload12 to ptr
  %EAX = call i32 @strncmp(ptr %31, ptr %32, i64 %RDX)
  %33 = sub i32 %EAX, 0
  %34 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 0)
  %CF14 = extractvalue { i32, i1 } %34, 1
  %ZF15 = icmp eq i32 %33, 0
  %highbit16 = and i32 -2147483648, %33
  %SF17 = icmp ne i32 %highbit16, 0
  %35 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 0)
  %OF18 = extractvalue { i32, i1 } %35, 1
  %36 = and i32 %33, 255
  %37 = call i32 @llvm.ctpop.i32(i32 %36)
  %38 = and i32 %37, 1
  %PF19 = icmp eq i32 %38, 0
  %CmpZF_JNE = icmp eq i1 %ZF15, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload20 = load i64, ptr %RBP_N.8, align 1
  %39 = ptrtoint ptr %stktop_8 to i64
  %40 = add i64 %39, 4
  %41 = inttoptr i64 %40 to ptr
  %memload21 = load i64, ptr %41, align 1
  %42 = trunc i64 %memload21 to i32
  %RCX22 = sext i32 %42 to i64
  %memref-idxreg23 = mul i64 8, %RCX22
  %memref-basereg24 = add i64 %memload20, %memref-idxreg23
  %43 = inttoptr i64 %memref-basereg24 to ptr
  %memload25 = load i64, ptr %43, align 1
  %memload26 = load i64, ptr %RBP_N.32, align 1
  %44 = inttoptr i64 %memload26 to ptr
  %memload27 = load i64, ptr %44, align 1
  %memload28 = load i32, ptr %RBP_N.40, align 1
  %ESI = add i32 %memload28, 1
  %45 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload28, i32 1)
  %CF29 = extractvalue { i32, i1 } %45, 1
  %46 = and i32 %ESI, 255
  %47 = call i32 @llvm.ctpop.i32(i32 %46)
  %48 = and i32 %47, 1
  %PF30 = icmp eq i32 %48, 0
  %ZF31 = icmp eq i32 %ESI, 0
  %highbit32 = and i32 -2147483648, %ESI
  %SF33 = icmp ne i32 %highbit32, 0
  %49 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload28, i32 1)
  %OF34 = extractvalue { i32, i1 } %49, 1
  store i32 %ESI, ptr %RBP_N.40, align 1
  %RCX35 = sext i32 %memload28 to i64
  %memref-idxreg36 = mul i64 8, %RCX35
  %memref-basereg37 = add i64 %memload27, %memref-idxreg36
  %50 = inttoptr i64 %memref-basereg37 to ptr
  store i64 %memload25, ptr %50, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %51 = ptrtoint ptr %stktop_8 to i64
  %52 = add i64 %51, 4
  %53 = inttoptr i64 %52 to ptr
  %memload38 = load i32, ptr %53, align 1
  %EAX45 = add i32 %memload38, 1
  %54 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload38, i32 1)
  %CF39 = extractvalue { i32, i1 } %54, 1
  %55 = and i32 %EAX45, 255
  %56 = call i32 @llvm.ctpop.i32(i32 %55)
  %57 = and i32 %56, 1
  %PF40 = icmp eq i32 %57, 0
  %ZF41 = icmp eq i32 %EAX45, 0
  %highbit42 = and i32 -2147483648, %EAX45
  %SF43 = icmp ne i32 %highbit42, 0
  %58 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload38, i32 1)
  %OF44 = extractvalue { i32, i1 } %58, 1
  %59 = ptrtoint ptr %stktop_8 to i64
  %60 = add i64 %59, 4
  %61 = inttoptr i64 %60 to ptr
  store i32 %EAX45, ptr %61, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  %memload46 = load i32, ptr %RBP_N.40, align 1
  ret i32 %memload46
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
