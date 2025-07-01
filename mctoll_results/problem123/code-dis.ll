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

bb.1:                                             ; preds = %entry, %bb.6
  %memload = load i32, ptr %stktop_4, align 1
  %4 = load i32, ptr %RBP_N.12, align 1
  %5 = sub i32 %memload, %4
  %6 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %4)
  %CF = extractvalue { i32, i1 } %6, 1
  %ZF = icmp eq i32 %5, 0
  %highbit = and i32 -2147483648, %5
  %SF = icmp ne i32 %highbit, 0
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %4)
  %OF = extractvalue { i32, i1 } %7, 1
  %8 = and i32 %5, 255
  %9 = call i32 @llvm.ctpop.i32(i32 %8)
  %10 = and i32 %9, 1
  %PF = icmp eq i32 %10, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.7, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.8, align 1
  %memload2 = load i64, ptr %stktop_4, align 1
  %11 = trunc i64 %memload2 to i32
  %RCX = sext i32 %11 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %12 = inttoptr i64 %memref-basereg to ptr
  %13 = load i32, ptr %12, align 1
  %14 = zext i32 %13 to i64
  %15 = zext i32 -99 to i64
  %16 = sub i64 %14, %15
  %17 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %14, i64 %15)
  %CF3 = extractvalue { i64, i1 } %17, 1
  %ZF4 = icmp eq i64 %16, 0
  %highbit5 = and i64 -9223372036854775808, %16
  %SF6 = icmp ne i64 %highbit5, 0
  %18 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %14, i64 %15)
  %OF7 = extractvalue { i64, i1 } %18, 1
  %19 = and i64 %16, 255
  %20 = call i64 @llvm.ctpop.i64(i64 %19)
  %21 = and i64 %20, 1
  %PF8 = icmp eq i64 %21, 0
  %SFAndOF_JL = icmp ne i1 %SF6, %OF7
  br i1 %SFAndOF_JL, label %bb.5, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload9 = load i64, ptr %RBP_N.8, align 1
  %memload10 = load i64, ptr %stktop_4, align 1
  %22 = trunc i64 %memload10 to i32
  %RCX11 = sext i32 %22 to i64
  %memref-idxreg12 = mul i64 4, %RCX11
  %memref-basereg13 = add i64 %memload9, %memref-idxreg12
  %23 = inttoptr i64 %memref-basereg13 to ptr
  %24 = load i32, ptr %23, align 1
  %25 = zext i32 %24 to i64
  %26 = zext i32 99 to i64
  %27 = sub i64 %25, %26
  %28 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %25, i64 %26)
  %CF14 = extractvalue { i64, i1 } %28, 1
  %ZF15 = icmp eq i64 %27, 0
  %highbit16 = and i64 -9223372036854775808, %27
  %SF17 = icmp ne i64 %highbit16, 0
  %29 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %25, i64 %26)
  %OF18 = extractvalue { i64, i1 } %29, 1
  %30 = and i64 %27, 255
  %31 = call i64 @llvm.ctpop.i64(i64 %30)
  %32 = and i64 %31, 1
  %PF19 = icmp eq i64 %32, 0
  %ZFCmp_JG = icmp eq i1 %ZF15, false
  %SFOFCmp_JG = icmp eq i1 %SF17, %OF18
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload20 = load i64, ptr %RBP_N.8, align 1
  %memload21 = load i64, ptr %stktop_4, align 1
  %33 = trunc i64 %memload21 to i32
  %RCX22 = sext i32 %33 to i64
  %memref-idxreg23 = mul i64 4, %RCX22
  %memref-basereg24 = add i64 %memload20, %memref-idxreg23
  %34 = inttoptr i64 %memref-basereg24 to ptr
  %memload25 = load i32, ptr %34, align 1
  %memload26 = load i32, ptr %RBP_N.16, align 1
  %EAX = add i32 %memload25, %memload26
  %35 = and i32 %EAX, 255
  %36 = call i32 @llvm.ctpop.i32(i32 %35)
  %37 = and i32 %36, 1
  %PF27 = icmp eq i32 %37, 0
  store i32 %EAX, ptr %RBP_N.16, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3, %bb.2
  br label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload28 = load i32, ptr %stktop_4, align 1
  %EAX35 = add i32 %memload28, 1
  %38 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload28, i32 1)
  %CF29 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %EAX35, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF30 = icmp eq i32 %41, 0
  %ZF31 = icmp eq i32 %EAX35, 0
  %highbit32 = and i32 -2147483648, %EAX35
  %SF33 = icmp ne i32 %highbit32, 0
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload28, i32 1)
  %OF34 = extractvalue { i32, i1 } %42, 1
  store i32 %EAX35, ptr %stktop_4, align 1
  br label %bb.1

bb.7:                                             ; preds = %bb.1
  %memload36 = load i32, ptr %RBP_N.16, align 1
  ret i32 %memload36
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
