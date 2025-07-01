; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_4 = alloca i8, i32 28, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.16 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.12 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.8 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i32 0, ptr %RBP_N.16, align 1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %memload = load i32, ptr %stktop_4, align 1
  %EAX = shl i32 %memload, 1
  %ZF = icmp eq i32 %EAX, 0
  %highbit = and i32 -2147483648, %EAX
  %SF = icmp ne i32 %highbit, 0
  %EAX4 = add i32 %EAX, 1
  %4 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EAX, i32 1)
  %CF = extractvalue { i32, i1 } %4, 1
  %5 = and i32 %EAX4, 255
  %6 = call i32 @llvm.ctpop.i32(i32 %5)
  %7 = and i32 %6, 1
  %PF = icmp eq i32 %7, 0
  %ZF1 = icmp eq i32 %EAX4, 0
  %highbit2 = and i32 -2147483648, %EAX4
  %SF3 = icmp ne i32 %highbit2, 0
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EAX, i32 1)
  %OF = extractvalue { i32, i1 } %8, 1
  %9 = load i32, ptr %RBP_N.12, align 1
  %10 = sub i32 %EAX4, %9
  %11 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX4, i32 %9)
  %CF5 = extractvalue { i32, i1 } %11, 1
  %ZF6 = icmp eq i32 %10, 0
  %highbit7 = and i32 -2147483648, %10
  %SF8 = icmp ne i32 %highbit7, 0
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX4, i32 %9)
  %OF9 = extractvalue { i32, i1 } %12, 1
  %13 = and i32 %10, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = and i32 %14, 1
  %PF10 = icmp eq i32 %15, 0
  %CmpSFOF_JGE = icmp eq i1 %SF8, %OF9
  br i1 %CmpSFOF_JGE, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload11 = load i64, ptr %RBP_N.8, align 1
  %memload12 = load i32, ptr %stktop_4, align 1
  %ECX = shl i32 %memload12, 1
  %ZF13 = icmp eq i32 %ECX, 0
  %highbit14 = and i32 -2147483648, %ECX
  %SF15 = icmp ne i32 %highbit14, 0
  %ECX22 = add i32 %ECX, 1
  %16 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %ECX, i32 1)
  %CF16 = extractvalue { i32, i1 } %16, 1
  %17 = and i32 %ECX22, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = and i32 %18, 1
  %PF17 = icmp eq i32 %19, 0
  %ZF18 = icmp eq i32 %ECX22, 0
  %highbit19 = and i32 -2147483648, %ECX22
  %SF20 = icmp ne i32 %highbit19, 0
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ECX, i32 1)
  %OF21 = extractvalue { i32, i1 } %20, 1
  %RCX = sext i32 %ECX22 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload11, %memref-idxreg
  %21 = inttoptr i64 %memref-basereg to ptr
  %memload23 = load i32, ptr %21, align 1
  %22 = sext i32 %memload23 to i64
  %23 = lshr i64 %22, 32
  %EDX = trunc i64 %23 to i32
  %24 = sext i32 %memload23 to i64
  %25 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %25, 32
  %dividend = or i64 %div_hb_ls, %24
  %26 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %26
  %EAX24 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %26
  %EDX25 = trunc i64 %div_r to i32
  %27 = sub i32 %EDX25, 0
  %28 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX25, i32 0)
  %CF26 = extractvalue { i32, i1 } %28, 1
  %ZF27 = icmp eq i32 %27, 0
  %highbit28 = and i32 -2147483648, %27
  %SF29 = icmp ne i32 %highbit28, 0
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX25, i32 0)
  %OF30 = extractvalue { i32, i1 } %29, 1
  %30 = and i32 %27, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = and i32 %31, 1
  %PF31 = icmp eq i32 %32, 0
  %CmpZF_JNE = icmp eq i1 %ZF27, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload32 = load i64, ptr %RBP_N.8, align 1
  %memload33 = load i32, ptr %stktop_4, align 1
  %ECX37 = shl i32 %memload33, 1
  %ZF34 = icmp eq i32 %ECX37, 0
  %highbit35 = and i32 -2147483648, %ECX37
  %SF36 = icmp ne i32 %highbit35, 0
  %ECX44 = add i32 %ECX37, 1
  %33 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %ECX37, i32 1)
  %CF38 = extractvalue { i32, i1 } %33, 1
  %34 = and i32 %ECX44, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = and i32 %35, 1
  %PF39 = icmp eq i32 %36, 0
  %ZF40 = icmp eq i32 %ECX44, 0
  %highbit41 = and i32 -2147483648, %ECX44
  %SF42 = icmp ne i32 %highbit41, 0
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %ECX37, i32 1)
  %OF43 = extractvalue { i32, i1 } %37, 1
  %RCX45 = sext i32 %ECX44 to i64
  %memref-idxreg46 = mul i64 4, %RCX45
  %memref-basereg47 = add i64 %memload32, %memref-idxreg46
  %38 = inttoptr i64 %memref-basereg47 to ptr
  %memload48 = load i32, ptr %38, align 1
  %memload49 = load i32, ptr %RBP_N.16, align 1
  %EAX51 = add i32 %memload48, %memload49
  %39 = and i32 %EAX51, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF50 = icmp eq i32 %41, 0
  store i32 %EAX51, ptr %RBP_N.16, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload52 = load i32, ptr %stktop_4, align 1
  %EAX59 = add i32 %memload52, 1
  %42 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload52, i32 1)
  %CF53 = extractvalue { i32, i1 } %42, 1
  %43 = and i32 %EAX59, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF54 = icmp eq i32 %45, 0
  %ZF55 = icmp eq i32 %EAX59, 0
  %highbit56 = and i32 -2147483648, %EAX59
  %SF57 = icmp ne i32 %highbit56, 0
  %46 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload52, i32 1)
  %OF58 = extractvalue { i32, i1 } %46, 1
  store i32 %EAX59, ptr %stktop_4, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  %memload60 = load i32, ptr %RBP_N.16, align 1
  ret i32 %memload60
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

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
