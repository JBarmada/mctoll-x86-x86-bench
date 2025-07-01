; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

define dso_local i64 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %3 to ptr
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
  %memload = load i32, ptr %RBP_N.12, align 1
  %7 = sub i32 %memload, 0
  %8 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 0)
  %CF = extractvalue { i32, i1 } %8, 1
  %ZF = icmp eq i32 %7, 0
  %highbit = and i32 -2147483648, %7
  %SF = icmp ne i32 %highbit, 0
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 0)
  %OF = extractvalue { i32, i1 } %9, 1
  %10 = and i32 %7, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = and i32 %11, 1
  %PF = icmp eq i32 %12, 0
  %Cond_CMOVNE = icmp eq i1 %ZF, false
  %CMOV = select i1 %Cond_CMOVNE, i32 5, i32 21
  store i32 %CMOV, ptr %RBP_N.16, align 1
  %memload1 = load i64, ptr %RBP_N.8, align 1
  %13 = inttoptr i64 %memload1 to ptr
  %RAX = call i64 @strlen(ptr %13)
  store i64 %RAX, ptr %RBP_N.24, align 1
  %14 = sext i32 0 to i64
  store i64 %14, ptr %RBP_N.32, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload2 = load i64, ptr %RBP_N.32, align 1
  %15 = load i64, ptr %RBP_N.24, align 1
  %16 = sub i64 %memload2, %15
  %17 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %memload2, i64 %15)
  %CF3 = extractvalue { i64, i1 } %17, 1
  %ZF4 = icmp eq i64 %16, 0
  %highbit5 = and i64 -9223372036854775808, %16
  %SF6 = icmp ne i64 %highbit5, 0
  %18 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %memload2, i64 %15)
  %OF7 = extractvalue { i64, i1 } %18, 1
  %19 = and i64 %16, 255
  %20 = call i64 @llvm.ctpop.i64(i64 %19)
  %21 = and i64 %20, 1
  %PF8 = icmp eq i64 %21, 0
  %CFCmp_JAE = icmp eq i1 %CF3, false
  br i1 %CFCmp_JAE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload9 = load i64, ptr %RBP_N.8, align 1
  %memload10 = load i64, ptr %RBP_N.32, align 1
  %memref-basereg = add i64 %memload9, %memload10
  %22 = inttoptr i64 %memref-basereg to ptr
  %memload11 = load i32, ptr %22, align 1
  %23 = trunc i32 %memload11 to i8
  %EAX = sext i8 %23 to i32
  %EAX18 = sub i32 %EAX, 97
  %24 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 97)
  %CF12 = extractvalue { i32, i1 } %24, 1
  %25 = and i32 %EAX18, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = and i32 %26, 1
  %PF13 = icmp eq i32 %27, 0
  %ZF14 = icmp eq i32 %EAX18, 0
  %highbit15 = and i32 -2147483648, %EAX18
  %SF16 = icmp ne i32 %highbit15, 0
  %28 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 97)
  %OF17 = extractvalue { i32, i1 } %28, 1
  %memload19 = load i32, ptr %RBP_N.16, align 1
  %EAX21 = add i32 %EAX18, %memload19
  %29 = and i32 %EAX21, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = and i32 %30, 1
  %PF20 = icmp eq i32 %31, 0
  %32 = sext i32 %EAX21 to i64
  %33 = lshr i64 %32, 32
  %EDX = trunc i64 %33 to i32
  %34 = sext i32 %EAX21 to i64
  %35 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %35, 32
  %dividend = or i64 %div_hb_ls, %34
  %36 = sext i32 26 to i64
  %div_q = sdiv i64 %dividend, %36
  %EAX22 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %36
  %EDX23 = trunc i64 %div_r to i32
  %EDX30 = add i32 %EDX23, 97
  %37 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EDX23, i32 97)
  %CF24 = extractvalue { i32, i1 } %37, 1
  %38 = and i32 %EDX30, 255
  %39 = call i32 @llvm.ctpop.i32(i32 %38)
  %40 = and i32 %39, 1
  %PF25 = icmp eq i32 %40, 0
  %ZF26 = icmp eq i32 %EDX30, 0
  %highbit27 = and i32 -2147483648, %EDX30
  %SF28 = icmp ne i32 %highbit27, 0
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EDX23, i32 97)
  %OF29 = extractvalue { i32, i1 } %41, 1
  store i32 %EDX30, ptr %RBP_N.36, align 1
  %memload31 = load i32, ptr %RBP_N.36, align 1
  %DL = trunc i32 %memload31 to i8
  %memload32 = load i64, ptr %RBP_N.8, align 1
  %memload33 = load i64, ptr %RBP_N.32, align 1
  %memref-basereg34 = add i64 %memload32, %memload33
  %42 = inttoptr i64 %memref-basereg34 to ptr
  store i8 %DL, ptr %42, align 1
  %memload35 = load i64, ptr %RBP_N.32, align 1
  %RAX42 = add i64 %memload35, 1
  %43 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %memload35, i64 1)
  %CF36 = extractvalue { i64, i1 } %43, 1
  %44 = and i64 %RAX42, 255
  %45 = call i64 @llvm.ctpop.i64(i64 %44)
  %46 = and i64 %45, 1
  %PF37 = icmp eq i64 %46, 0
  %ZF38 = icmp eq i64 %RAX42, 0
  %highbit39 = and i64 -9223372036854775808, %RAX42
  %SF40 = icmp ne i64 %highbit39, 0
  %47 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %memload35, i64 1)
  %OF41 = extractvalue { i64, i1 } %47, 1
  store i64 %RAX42, ptr %RBP_N.32, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  ret i64 %memload2
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
