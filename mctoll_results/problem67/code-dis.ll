; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1) {
entry:
  %stktop_4 = alloca i8, i32 24, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.12 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.8 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 0, ptr %RBP_N.12, align 1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.6
  %memload = load i64, ptr %RBP_N.8, align 1
  %memload1 = load i64, ptr %stktop_4, align 1
  %3 = trunc i64 %memload1 to i32
  %RCX = sext i32 %3 to i64
  %memref-basereg = add i64 %memload, %RCX
  %4 = inttoptr i64 %memref-basereg to ptr
  %memload2 = load i32, ptr %4, align 1
  %5 = trunc i32 %memload2 to i8
  %EAX = sext i8 %5 to i32
  %6 = sub i32 %EAX, 0
  %7 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 0)
  %CF = extractvalue { i32, i1 } %7, 1
  %ZF = icmp eq i32 %6, 0
  %highbit = and i32 -2147483648, %6
  %SF = icmp ne i32 %highbit, 0
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 0)
  %OF = extractvalue { i32, i1 } %8, 1
  %9 = and i32 %6, 255
  %10 = call i32 @llvm.ctpop.i32(i32 %9)
  %11 = and i32 %10, 1
  %PF = icmp eq i32 %11, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.7, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload3 = load i64, ptr %RBP_N.8, align 1
  %memload4 = load i64, ptr %stktop_4, align 1
  %12 = trunc i64 %memload4 to i32
  %RCX5 = sext i32 %12 to i64
  %memref-basereg6 = add i64 %memload3, %RCX5
  %13 = inttoptr i64 %memref-basereg6 to ptr
  %memload7 = load i32, ptr %13, align 1
  %14 = trunc i32 %memload7 to i8
  %EAX8 = sext i8 %14 to i32
  %15 = sub i32 %EAX8, 65
  %16 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX8, i32 65)
  %CF9 = extractvalue { i32, i1 } %16, 1
  %ZF10 = icmp eq i32 %15, 0
  %highbit11 = and i32 -2147483648, %15
  %SF12 = icmp ne i32 %highbit11, 0
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX8, i32 65)
  %OF13 = extractvalue { i32, i1 } %17, 1
  %18 = and i32 %15, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = and i32 %19, 1
  %PF14 = icmp eq i32 %20, 0
  %SFAndOF_JL = icmp ne i1 %SF12, %OF13
  br i1 %SFAndOF_JL, label %bb.5, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload15 = load i64, ptr %RBP_N.8, align 1
  %memload16 = load i64, ptr %stktop_4, align 1
  %21 = trunc i64 %memload16 to i32
  %RCX17 = sext i32 %21 to i64
  %memref-basereg18 = add i64 %memload15, %RCX17
  %22 = inttoptr i64 %memref-basereg18 to ptr
  %memload19 = load i32, ptr %22, align 1
  %23 = trunc i32 %memload19 to i8
  %EAX20 = sext i8 %23 to i32
  %24 = sub i32 %EAX20, 90
  %25 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX20, i32 90)
  %CF21 = extractvalue { i32, i1 } %25, 1
  %ZF22 = icmp eq i32 %24, 0
  %highbit23 = and i32 -2147483648, %24
  %SF24 = icmp ne i32 %highbit23, 0
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX20, i32 90)
  %OF25 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %24, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF26 = icmp eq i32 %29, 0
  %ZFCmp_JG = icmp eq i1 %ZF22, false
  %SFOFCmp_JG = icmp eq i1 %SF24, %OF25
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload27 = load i64, ptr %RBP_N.8, align 1
  %memload28 = load i64, ptr %stktop_4, align 1
  %30 = trunc i64 %memload28 to i32
  %RCX29 = sext i32 %30 to i64
  %memref-basereg30 = add i64 %memload27, %RCX29
  %31 = inttoptr i64 %memref-basereg30 to ptr
  %memload31 = load i32, ptr %31, align 1
  %32 = trunc i32 %memload31 to i8
  %EAX32 = sext i8 %32 to i32
  %memload33 = load i32, ptr %RBP_N.12, align 1
  %EAX35 = add i32 %EAX32, %memload33
  %33 = and i32 %EAX35, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = and i32 %34, 1
  %PF34 = icmp eq i32 %35, 0
  store i32 %EAX35, ptr %RBP_N.12, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3, %bb.2
  br label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload36 = load i32, ptr %stktop_4, align 1
  %EAX43 = add i32 %memload36, 1
  %36 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload36, i32 1)
  %CF37 = extractvalue { i32, i1 } %36, 1
  %37 = and i32 %EAX43, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF38 = icmp eq i32 %39, 0
  %ZF39 = icmp eq i32 %EAX43, 0
  %highbit40 = and i32 -2147483648, %EAX43
  %SF41 = icmp ne i32 %highbit40, 0
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload36, i32 1)
  %OF42 = extractvalue { i32, i1 } %40, 1
  store i32 %EAX43, ptr %stktop_4, align 1
  br label %bb.1

bb.7:                                             ; preds = %bb.1
  %memload44 = load i32, ptr %RBP_N.12, align 1
  ret i32 %memload44
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
