; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i64 @func0(i64 %arg1, i64 %arg2) {
entry:
  %stktop_4 = alloca i8, i32 32, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.20 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.16 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.8 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload = load i64, ptr %RBP_N.8, align 1
  %memload1 = load i64, ptr %RBP_N.20, align 1
  %4 = trunc i64 %memload1 to i32
  %RCX = sext i32 %4 to i64
  %memref-basereg = add i64 %memload, %RCX
  %5 = inttoptr i64 %memref-basereg to ptr
  %memload2 = load i32, ptr %5, align 1
  %6 = trunc i32 %memload2 to i8
  %EAX = sext i8 %6 to i32
  %7 = sub i32 %EAX, 0
  %8 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 0)
  %CF = extractvalue { i32, i1 } %8, 1
  %ZF = icmp eq i32 %7, 0
  %highbit = and i32 -2147483648, %7
  %SF = icmp ne i32 %highbit, 0
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 0)
  %OF = extractvalue { i32, i1 } %9, 1
  %10 = and i32 %7, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = and i32 %11, 1
  %PF = icmp eq i32 %12, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload3 = load i64, ptr %RBP_N.8, align 1
  %memload4 = load i64, ptr %RBP_N.20, align 1
  %13 = trunc i64 %memload4 to i32
  %RCX5 = sext i32 %13 to i64
  %memref-basereg6 = add i64 %memload3, %RCX5
  %14 = inttoptr i64 %memref-basereg6 to ptr
  %memload7 = load i32, ptr %14, align 1
  %15 = trunc i32 %memload7 to i8
  %EAX8 = sext i8 %15 to i32
  %EAX15 = sub i32 %EAX8, 97
  %16 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX8, i32 97)
  %CF9 = extractvalue { i32, i1 } %16, 1
  %17 = and i32 %EAX15, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = and i32 %18, 1
  %PF10 = icmp eq i32 %19, 0
  %ZF11 = icmp eq i32 %EAX15, 0
  %highbit12 = and i32 -2147483648, %EAX15
  %SF13 = icmp ne i32 %highbit12, 0
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX8, i32 97)
  %OF14 = extractvalue { i32, i1 } %20, 1
  %EAX22 = add i32 %EAX15, 4
  %21 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EAX15, i32 4)
  %CF16 = extractvalue { i32, i1 } %21, 1
  %22 = and i32 %EAX22, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF17 = icmp eq i32 %24, 0
  %ZF18 = icmp eq i32 %EAX22, 0
  %highbit19 = and i32 -2147483648, %EAX22
  %SF20 = icmp ne i32 %highbit19, 0
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EAX15, i32 4)
  %OF21 = extractvalue { i32, i1 } %25, 1
  %26 = sext i32 %EAX22 to i64
  %27 = lshr i64 %26, 32
  %EDX = trunc i64 %27 to i32
  %28 = sext i32 %EAX22 to i64
  %29 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %29, 32
  %dividend = or i64 %div_hb_ls, %28
  %30 = sext i32 26 to i64
  %div_q = sdiv i64 %dividend, %30
  %EAX23 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %30
  %EDX24 = trunc i64 %div_r to i32
  %EDX31 = add i32 %EDX24, 97
  %31 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EDX24, i32 97)
  %CF25 = extractvalue { i32, i1 } %31, 1
  %32 = and i32 %EDX31, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = and i32 %33, 1
  %PF26 = icmp eq i32 %34, 0
  %ZF27 = icmp eq i32 %EDX31, 0
  %highbit28 = and i32 -2147483648, %EDX31
  %SF29 = icmp ne i32 %highbit28, 0
  %35 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EDX24, i32 97)
  %OF30 = extractvalue { i32, i1 } %35, 1
  store i32 %EDX31, ptr %stktop_4, align 1
  %memload32 = load i32, ptr %stktop_4, align 1
  %DL = trunc i32 %memload32 to i8
  %memload33 = load i64, ptr %RBP_N.16, align 1
  %memload34 = load i64, ptr %RBP_N.20, align 1
  %36 = trunc i64 %memload34 to i32
  %RCX35 = sext i32 %36 to i64
  %memref-basereg36 = add i64 %memload33, %RCX35
  %37 = inttoptr i64 %memref-basereg36 to ptr
  store i8 %DL, ptr %37, align 1
  %memload37 = load i32, ptr %RBP_N.20, align 1
  %EAX44 = add i32 %memload37, 1
  %38 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload37, i32 1)
  %CF38 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %EAX44, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF39 = icmp eq i32 %41, 0
  %ZF40 = icmp eq i32 %EAX44, 0
  %highbit41 = and i32 -2147483648, %EAX44
  %SF42 = icmp ne i32 %highbit41, 0
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload37, i32 1)
  %OF43 = extractvalue { i32, i1 } %42, 1
  store i32 %EAX44, ptr %RBP_N.20, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %memload45 = load i64, ptr %RBP_N.16, align 1
  %memload46 = load i64, ptr %RBP_N.20, align 1
  %43 = trunc i64 %memload46 to i32
  %RCX47 = sext i32 %43 to i64
  %memref-basereg48 = add i64 %memload45, %RCX47
  %44 = inttoptr i64 %memref-basereg48 to ptr
  store i8 0, ptr %44, align 1
  ret i64 %memload45
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
