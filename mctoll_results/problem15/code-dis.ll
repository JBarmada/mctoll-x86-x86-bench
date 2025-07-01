; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @malloc(i64)

declare dso_local ptr @realloc(ptr, i64)

declare dso_local ptr @strcpy(ptr, ptr)

declare dso_local void @free(ptr)

define dso_local i64 @func0(i64 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 72, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.56 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 28
  %RBP_N.44 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.40 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 40
  %RBP_N.32 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 52
  %RBP_N.20 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 56
  %RBP_N.16 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 64
  %RBP_N.8 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  %8 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %8)
  %9 = trunc i64 %RAX to i32
  store i32 %9, ptr %RBP_N.20, align 1
  %memload1 = load i64, ptr %RBP_N.20, align 1
  %10 = trunc i64 %memload1 to i32
  %RDI = sext i32 %10 to i64
  %RDI2 = shl i64 %RDI, 3
  %ZF = icmp eq i64 %RDI2, 0
  %highbit = and i64 -9223372036854775808, %RDI2
  %SF = icmp ne i64 %highbit, 0
  %11 = call ptr @malloc(i64 %RDI2)
  %RAX3 = ptrtoint ptr %11 to i64
  store i64 %RAX3, ptr %RBP_N.32, align 1
  %memload4 = load i32, ptr %RBP_N.20, align 1
  %EAX = add i32 %memload4, 1
  %12 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload4, i32 1)
  %CF = extractvalue { i32, i1 } %12, 1
  %13 = and i32 %EAX, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = and i32 %14, 1
  %PF = icmp eq i32 %15, 0
  %ZF5 = icmp eq i32 %EAX, 0
  %highbit6 = and i32 -2147483648, %EAX
  %SF7 = icmp ne i32 %highbit6, 0
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload4, i32 1)
  %OF = extractvalue { i32, i1 } %16, 1
  %RDI8 = sext i32 %EAX to i64
  %17 = call ptr @malloc(i64 %RDI8)
  %RAX9 = ptrtoint ptr %17 to i64
  store i64 %RAX9, ptr %RBP_N.40, align 1
  %memload10 = load i64, ptr %RBP_N.40, align 1
  %18 = inttoptr i64 %memload10 to ptr
  store i8 0, ptr %18, align 1
  store i32 0, ptr %RBP_N.44, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload11 = load i32, ptr %RBP_N.44, align 1
  %19 = load i32, ptr %RBP_N.20, align 1
  %20 = sub i32 %memload11, %19
  %21 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload11, i32 %19)
  %CF12 = extractvalue { i32, i1 } %21, 1
  %ZF13 = icmp eq i32 %20, 0
  %highbit14 = and i32 -2147483648, %20
  %SF15 = icmp ne i32 %highbit14, 0
  %22 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload11, i32 %19)
  %OF16 = extractvalue { i32, i1 } %22, 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = and i32 %24, 1
  %PF17 = icmp eq i32 %25, 0
  %CmpSFOF_JGE = icmp eq i1 %SF15, %OF16
  br i1 %CmpSFOF_JGE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload18 = load i64, ptr %RBP_N.40, align 1
  %26 = inttoptr i64 %memload18 to ptr
  %RAX19 = call i64 @strlen(ptr %26)
  store i64 %RAX19, ptr %RBP_N.56, align 1
  %memload20 = load i64, ptr %RBP_N.40, align 1
  %memload21 = load i64, ptr %RBP_N.56, align 1
  %RSI = add i64 %memload21, 2
  %27 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %memload21, i64 2)
  %CF22 = extractvalue { i64, i1 } %27, 1
  %28 = and i64 %RSI, 255
  %29 = call i64 @llvm.ctpop.i64(i64 %28)
  %30 = and i64 %29, 1
  %PF23 = icmp eq i64 %30, 0
  %ZF24 = icmp eq i64 %RSI, 0
  %highbit25 = and i64 -9223372036854775808, %RSI
  %SF26 = icmp ne i64 %highbit25, 0
  %31 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %memload21, i64 2)
  %OF27 = extractvalue { i64, i1 } %31, 1
  %32 = inttoptr i64 %memload20 to ptr
  %33 = call ptr @realloc(ptr %32, i64 %RSI)
  %RAX28 = ptrtoint ptr %33 to i64
  store i64 %RAX28, ptr %RBP_N.40, align 1
  %memload29 = load i64, ptr %RBP_N.8, align 1
  %memload30 = load i64, ptr %RBP_N.44, align 1
  %34 = trunc i64 %memload30 to i32
  %RCX = sext i32 %34 to i64
  %memref-basereg = add i64 %memload29, %RCX
  %35 = inttoptr i64 %memref-basereg to ptr
  %memload31 = load i8, ptr %35, align 1
  %memload32 = load i64, ptr %RBP_N.40, align 1
  %memload33 = load i64, ptr %RBP_N.56, align 1
  %memref-basereg34 = add i64 %memload32, %memload33
  %36 = inttoptr i64 %memref-basereg34 to ptr
  store i8 %memload31, ptr %36, align 1
  %memload35 = load i64, ptr %RBP_N.40, align 1
  %memload36 = load i64, ptr %RBP_N.56, align 1
  %memref-basereg37 = add i64 %memload35, %memload36
  %memref-disp = add i64 %memref-basereg37, 1
  %37 = inttoptr i64 %memref-disp to ptr
  store i8 0, ptr %37, align 1
  %memload38 = load i64, ptr %RBP_N.40, align 1
  %38 = inttoptr i64 %memload38 to ptr
  %RAX39 = call i64 @strlen(ptr %38)
  %RDI46 = add i64 %RAX39, 1
  %39 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RAX39, i64 1)
  %CF40 = extractvalue { i64, i1 } %39, 1
  %40 = and i64 %RDI46, 255
  %41 = call i64 @llvm.ctpop.i64(i64 %40)
  %42 = and i64 %41, 1
  %PF41 = icmp eq i64 %42, 0
  %ZF42 = icmp eq i64 %RDI46, 0
  %highbit43 = and i64 -9223372036854775808, %RDI46
  %SF44 = icmp ne i64 %highbit43, 0
  %43 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %RAX39, i64 1)
  %OF45 = extractvalue { i64, i1 } %43, 1
  %44 = call ptr @malloc(i64 %RDI46)
  %RAX47 = ptrtoint ptr %44 to i64
  %memload48 = load i64, ptr %RBP_N.32, align 1
  %memload49 = load i64, ptr %RBP_N.44, align 1
  %45 = trunc i64 %memload49 to i32
  %RCX50 = sext i32 %45 to i64
  %memref-idxreg = mul i64 8, %RCX50
  %memref-basereg51 = add i64 %memload48, %memref-idxreg
  %46 = inttoptr i64 %memref-basereg51 to ptr
  store i64 %RAX47, ptr %46, align 1
  %memload52 = load i64, ptr %RBP_N.32, align 1
  %memload53 = load i64, ptr %RBP_N.44, align 1
  %47 = trunc i64 %memload53 to i32
  %RCX54 = sext i32 %47 to i64
  %memref-idxreg55 = mul i64 8, %RCX54
  %memref-basereg56 = add i64 %memload52, %memref-idxreg55
  %48 = inttoptr i64 %memref-basereg56 to ptr
  %memload57 = load i64, ptr %48, align 1
  %memload58 = load i64, ptr %RBP_N.40, align 1
  %49 = inttoptr i64 %memload57 to ptr
  %50 = inttoptr i64 %memload58 to ptr
  %51 = call ptr @strcpy(ptr %49, ptr %50)
  %RAX59 = ptrtoint ptr %51 to i64
  %memload60 = load i32, ptr %RBP_N.44, align 1
  %EAX67 = add i32 %memload60, 1
  %52 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload60, i32 1)
  %CF61 = extractvalue { i32, i1 } %52, 1
  %53 = and i32 %EAX67, 255
  %54 = call i32 @llvm.ctpop.i32(i32 %53)
  %55 = and i32 %54, 1
  %PF62 = icmp eq i32 %55, 0
  %ZF63 = icmp eq i32 %EAX67, 0
  %highbit64 = and i32 -2147483648, %EAX67
  %SF65 = icmp ne i32 %highbit64, 0
  %56 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload60, i32 1)
  %OF66 = extractvalue { i32, i1 } %56, 1
  store i32 %EAX67, ptr %RBP_N.44, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %memload68 = load i64, ptr %RBP_N.40, align 1
  %57 = inttoptr i64 %memload68 to ptr
  call void @free(ptr %57)
  %memload69 = load i32, ptr %RBP_N.20, align 1
  %memload70 = load i64, ptr %RBP_N.16, align 1
  %58 = inttoptr i64 %memload70 to ptr
  store i32 %memload69, ptr %58, align 1
  %memload71 = load i64, ptr %RBP_N.32, align 1
  ret i64 %memload71
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
