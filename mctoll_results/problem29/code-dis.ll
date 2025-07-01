; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @malloc(i64)

declare dso_local ptr @strcat(ptr, ptr)

define dso_local i64 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %1 to ptr
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
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload = load i32, ptr %RBP_N.28, align 1
  %7 = load i32, ptr %RBP_N.20, align 1
  %8 = sub i32 %memload, %7
  %9 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %7)
  %CF = extractvalue { i32, i1 } %9, 1
  %ZF = icmp eq i32 %8, 0
  %highbit = and i32 -2147483648, %8
  %SF = icmp ne i32 %highbit, 0
  %10 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %7)
  %OF = extractvalue { i32, i1 } %10, 1
  %11 = and i32 %8, 255
  %12 = call i32 @llvm.ctpop.i32(i32 %11)
  %13 = and i32 %12, 1
  %PF = icmp eq i32 %13, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.16, align 1
  %memload2 = load i64, ptr %RBP_N.28, align 1
  %14 = trunc i64 %memload2 to i32
  %RCX = sext i32 %14 to i64
  %memref-idxreg = mul i64 8, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %15 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load i64, ptr %15, align 1
  %16 = inttoptr i64 %memload3 to ptr
  %RAX = call i64 @strlen(ptr %16)
  %memload4 = load i64, ptr %RBP_N.24, align 1
  %17 = trunc i64 %memload4 to i32
  %RAX5 = sext i32 %17 to i64
  %RAX9 = add nsw i64 %RAX5, %RAX
  %highbit6 = and i64 -9223372036854775808, %RAX9
  %SF7 = icmp ne i64 %highbit6, 0
  %ZF8 = icmp eq i64 %RAX9, 0
  %18 = trunc i64 %RAX9 to i32
  store i32 %18, ptr %RBP_N.24, align 1
  %memload10 = load i32, ptr %RBP_N.28, align 1
  %EAX = add i32 %memload10, 1
  %19 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload10, i32 1)
  %CF11 = extractvalue { i32, i1 } %19, 1
  %20 = and i32 %EAX, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = and i32 %21, 1
  %PF12 = icmp eq i32 %22, 0
  %ZF13 = icmp eq i32 %EAX, 0
  %highbit14 = and i32 -2147483648, %EAX
  %SF15 = icmp ne i32 %highbit14, 0
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload10, i32 1)
  %OF16 = extractvalue { i32, i1 } %23, 1
  store i32 %EAX, ptr %RBP_N.28, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %memload17 = load i32, ptr %RBP_N.24, align 1
  %EAX24 = add i32 %memload17, 1
  %24 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload17, i32 1)
  %CF18 = extractvalue { i32, i1 } %24, 1
  %25 = and i32 %EAX24, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = and i32 %26, 1
  %PF19 = icmp eq i32 %27, 0
  %ZF20 = icmp eq i32 %EAX24, 0
  %highbit21 = and i32 -2147483648, %EAX24
  %SF22 = icmp ne i32 %highbit21, 0
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload17, i32 1)
  %OF23 = extractvalue { i32, i1 } %28, 1
  %RDI = sext i32 %EAX24 to i64
  %29 = call ptr @malloc(i64 %RDI)
  %RAX25 = ptrtoint ptr %29 to i64
  store i64 %RAX25, ptr %RBP_N.40, align 1
  %30 = load i64, ptr %RBP_N.40, align 1
  %31 = sub i64 %30, 0
  %32 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %30, i64 0)
  %CF26 = extractvalue { i64, i1 } %32, 1
  %ZF27 = icmp eq i64 %31, 0
  %highbit28 = and i64 -9223372036854775808, %31
  %SF29 = icmp ne i64 %highbit28, 0
  %33 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %30, i64 0)
  %OF30 = extractvalue { i64, i1 } %33, 1
  %34 = and i64 %31, 255
  %35 = call i64 @llvm.ctpop.i64(i64 %34)
  %36 = and i64 %35, 1
  %PF31 = icmp eq i64 %36, 0
  %CmpZF_JNE = icmp eq i1 %ZF27, false
  br i1 %CmpZF_JNE, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %37 = sext i32 0 to i64
  store i64 %37, ptr %RBP_N.8, align 1
  br label %bb.9

bb.5:                                             ; preds = %bb.3
  %memload32 = load i64, ptr %RBP_N.40, align 1
  %38 = inttoptr i64 %memload32 to ptr
  store i8 0, ptr %38, align 1
  %39 = ptrtoint ptr %stktop_8 to i64
  %40 = add i64 %39, 4
  %41 = inttoptr i64 %40 to ptr
  store i32 0, ptr %41, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.7
  %42 = ptrtoint ptr %stktop_8 to i64
  %43 = add i64 %42, 4
  %44 = inttoptr i64 %43 to ptr
  %memload33 = load i32, ptr %44, align 1
  %45 = load i32, ptr %RBP_N.20, align 1
  %46 = sub i32 %memload33, %45
  %47 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload33, i32 %45)
  %CF34 = extractvalue { i32, i1 } %47, 1
  %ZF35 = icmp eq i32 %46, 0
  %highbit36 = and i32 -2147483648, %46
  %SF37 = icmp ne i32 %highbit36, 0
  %48 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload33, i32 %45)
  %OF38 = extractvalue { i32, i1 } %48, 1
  %49 = and i32 %46, 255
  %50 = call i32 @llvm.ctpop.i32(i32 %49)
  %51 = and i32 %50, 1
  %PF39 = icmp eq i32 %51, 0
  %CmpSFOF_JGE58 = icmp eq i1 %SF37, %OF38
  br i1 %CmpSFOF_JGE58, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload40 = load i64, ptr %RBP_N.40, align 1
  %memload41 = load i64, ptr %RBP_N.16, align 1
  %52 = ptrtoint ptr %stktop_8 to i64
  %53 = add i64 %52, 4
  %54 = inttoptr i64 %53 to ptr
  %memload42 = load i64, ptr %54, align 1
  %55 = trunc i64 %memload42 to i32
  %RCX43 = sext i32 %55 to i64
  %memref-idxreg44 = mul i64 8, %RCX43
  %memref-basereg45 = add i64 %memload41, %memref-idxreg44
  %56 = inttoptr i64 %memref-basereg45 to ptr
  %memload46 = load i64, ptr %56, align 1
  %57 = inttoptr i64 %memload40 to ptr
  %58 = inttoptr i64 %memload46 to ptr
  %59 = call ptr @strcat(ptr %57, ptr %58)
  %RAX47 = ptrtoint ptr %59 to i64
  %60 = ptrtoint ptr %stktop_8 to i64
  %61 = add i64 %60, 4
  %62 = inttoptr i64 %61 to ptr
  %memload48 = load i32, ptr %62, align 1
  %EAX55 = add i32 %memload48, 1
  %63 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload48, i32 1)
  %CF49 = extractvalue { i32, i1 } %63, 1
  %64 = and i32 %EAX55, 255
  %65 = call i32 @llvm.ctpop.i32(i32 %64)
  %66 = and i32 %65, 1
  %PF50 = icmp eq i32 %66, 0
  %ZF51 = icmp eq i32 %EAX55, 0
  %highbit52 = and i32 -2147483648, %EAX55
  %SF53 = icmp ne i32 %highbit52, 0
  %67 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload48, i32 1)
  %OF54 = extractvalue { i32, i1 } %67, 1
  %68 = ptrtoint ptr %stktop_8 to i64
  %69 = add i64 %68, 4
  %70 = inttoptr i64 %69 to ptr
  store i32 %EAX55, ptr %70, align 1
  br label %bb.6

bb.8:                                             ; preds = %bb.6
  %memload56 = load i64, ptr %RBP_N.40, align 1
  store i64 %memload56, ptr %RBP_N.8, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.4
  %memload57 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload57
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
