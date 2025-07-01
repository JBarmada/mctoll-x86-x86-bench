; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i32 @abs(i32)

define dso_local i32 @func0(i64 %arg1, i64 %arg2, i64 %arg3, i32 %arg4) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  %4 = ptrtoint ptr %stktop_8 to i64
  %5 = add i64 %4, 4
  %6 = inttoptr i64 %5 to ptr
  store i32 %arg4, ptr %6, align 1
  store i32 0, ptr %stktop_8, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload = load i32, ptr %stktop_8, align 1
  %7 = ptrtoint ptr %stktop_8 to i64
  %8 = add i64 %7, 4
  %9 = inttoptr i64 %8 to ptr
  %10 = load i32, ptr %9, align 1
  %11 = sub i32 %memload, %10
  %12 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %10)
  %CF = extractvalue { i32, i1 } %12, 1
  %ZF = icmp eq i32 %11, 0
  %highbit = and i32 -2147483648, %11
  %SF = icmp ne i32 %highbit, 0
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %10)
  %OF = extractvalue { i32, i1 } %13, 1
  %14 = and i32 %11, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = and i32 %15, 1
  %PF = icmp eq i32 %16, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.8, align 1
  %memload2 = load i64, ptr %stktop_8, align 1
  %17 = trunc i64 %memload2 to i32
  %RCX = sext i32 %17 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %18 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load i32, ptr %18, align 1
  %memload4 = load i64, ptr %RBP_N.16, align 1
  %memload5 = load i64, ptr %stktop_8, align 1
  %19 = trunc i64 %memload5 to i32
  %RCX6 = sext i32 %19 to i64
  %memref-idxreg7 = mul i64 4, %RCX6
  %memref-basereg8 = add i64 %memload4, %memref-idxreg7
  %20 = inttoptr i64 %memref-basereg8 to ptr
  %21 = load i32, ptr %20, align 1
  %EDI = sub i32 %memload3, %21
  %22 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload3, i32 %21)
  %CF9 = extractvalue { i32, i1 } %22, 1
  %ZF10 = icmp eq i32 %EDI, 0
  %highbit11 = and i32 -2147483648, %EDI
  %SF12 = icmp ne i32 %highbit11, 0
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload3, i32 %21)
  %OF13 = extractvalue { i32, i1 } %23, 1
  %24 = and i32 %EDI, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = and i32 %25, 1
  %PF14 = icmp eq i32 %26, 0
  %EAX = call i32 @abs(i32 %EDI)
  %memload15 = load i64, ptr %RBP_N.24, align 1
  %memload16 = load i64, ptr %stktop_8, align 1
  %27 = trunc i64 %memload16 to i32
  %RCX17 = sext i32 %27 to i64
  %memref-idxreg18 = mul i64 4, %RCX17
  %memref-basereg19 = add i64 %memload15, %memref-idxreg18
  %28 = inttoptr i64 %memref-basereg19 to ptr
  store i32 %EAX, ptr %28, align 1
  %memload20 = load i32, ptr %stktop_8, align 1
  %EAX27 = add i32 %memload20, 1
  %29 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload20, i32 1)
  %CF21 = extractvalue { i32, i1 } %29, 1
  %30 = and i32 %EAX27, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = and i32 %31, 1
  %PF22 = icmp eq i32 %32, 0
  %ZF23 = icmp eq i32 %EAX27, 0
  %highbit24 = and i32 -2147483648, %EAX27
  %SF25 = icmp ne i32 %highbit24, 0
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload20, i32 1)
  %OF26 = extractvalue { i32, i1 } %33, 1
  store i32 %EAX27, ptr %stktop_8, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  ret i32 %memload
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
