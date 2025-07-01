; ModuleID = 'code.so'
source_filename = "code.so"

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
  %3 = add i64 %tos, 44
  %RBP_N.12 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  %6 = inttoptr i64 %memload to ptr
  %memload1 = load i64, ptr %6, align 1
  store i64 %memload1, ptr %RBP_N.24, align 1
  %memload2 = load i64, ptr %RBP_N.8, align 1
  %7 = inttoptr i64 %memload2 to ptr
  %memload3 = load i64, ptr %7, align 1
  store i64 %memload3, ptr %RBP_N.32, align 1
  store i32 1, ptr %RBP_N.36, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.8
  %memload4 = load i32, ptr %RBP_N.36, align 1
  %8 = load i32, ptr %RBP_N.12, align 1
  %9 = sub i32 %memload4, %8
  %10 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload4, i32 %8)
  %CF = extractvalue { i32, i1 } %10, 1
  %ZF = icmp eq i32 %9, 0
  %highbit = and i32 -2147483648, %9
  %SF = icmp ne i32 %highbit, 0
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload4, i32 %8)
  %OF = extractvalue { i32, i1 } %11, 1
  %12 = and i32 %9, 255
  %13 = call i32 @llvm.ctpop.i32(i32 %12)
  %14 = and i32 %13, 1
  %PF = icmp eq i32 %14, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.9, label %bb.2

bb.2:                                             ; preds = %bb.1
  %15 = load i64, ptr %RBP_N.24, align 1
  %16 = sub i64 %15, 0
  %17 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %15, i64 0)
  %CF5 = extractvalue { i64, i1 } %17, 1
  %ZF6 = icmp eq i64 %16, 0
  %highbit7 = and i64 -9223372036854775808, %16
  %SF8 = icmp ne i64 %highbit7, 0
  %18 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %15, i64 0)
  %OF9 = extractvalue { i64, i1 } %18, 1
  %19 = and i64 %16, 255
  %20 = call i64 @llvm.ctpop.i64(i64 %19)
  %21 = and i64 %20, 1
  %PF10 = icmp eq i64 %21, 0
  %CmpSFOF_JGE38 = icmp eq i1 %SF8, %OF9
  br i1 %CmpSFOF_JGE38, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload11 = load i64, ptr %RBP_N.24, align 1
  %memload12 = load i64, ptr %RBP_N.8, align 1
  %memload13 = load i64, ptr %RBP_N.36, align 1
  %22 = trunc i64 %memload13 to i32
  %RDX = sext i32 %22 to i64
  %memref-idxreg = mul i64 8, %RDX
  %memref-basereg = add i64 %memload12, %memref-idxreg
  %23 = inttoptr i64 %memref-basereg to ptr
  %memload14 = load i64, ptr %23, align 1
  %RAX = add i64 %memload11, %memload14
  %24 = and i64 %RAX, 255
  %25 = call i64 @llvm.ctpop.i64(i64 %24)
  %26 = and i64 %25, 1
  %PF15 = icmp eq i64 %26, 0
  store i64 %RAX, ptr %stktop_8, align 1
  br label %bb.5

bb.4:                                             ; preds = %bb.2
  %memload16 = load i64, ptr %RBP_N.8, align 1
  %memload17 = load i64, ptr %RBP_N.36, align 1
  %27 = trunc i64 %memload17 to i32
  %RCX = sext i32 %27 to i64
  %memref-idxreg18 = mul i64 8, %RCX
  %memref-basereg19 = add i64 %memload16, %memref-idxreg18
  %28 = inttoptr i64 %memref-basereg19 to ptr
  %memload20 = load i64, ptr %28, align 1
  store i64 %memload20, ptr %stktop_8, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3
  %memload21 = load i64, ptr %stktop_8, align 1
  store i64 %memload21, ptr %RBP_N.24, align 1
  %memload22 = load i64, ptr %RBP_N.24, align 1
  %29 = load i64, ptr %RBP_N.32, align 1
  %30 = sub i64 %memload22, %29
  %31 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %memload22, i64 %29)
  %CF23 = extractvalue { i64, i1 } %31, 1
  %ZF24 = icmp eq i64 %30, 0
  %highbit25 = and i64 -9223372036854775808, %30
  %SF26 = icmp ne i64 %highbit25, 0
  %32 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %memload22, i64 %29)
  %OF27 = extractvalue { i64, i1 } %32, 1
  %33 = and i64 %30, 255
  %34 = call i64 @llvm.ctpop.i64(i64 %33)
  %35 = and i64 %34, 1
  %PF28 = icmp eq i64 %35, 0
  %CmpSFOF_JGE39 = icmp eq i1 %SF26, %OF27
  br i1 %CmpSFOF_JGE39, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload29 = load i64, ptr %RBP_N.24, align 1
  store i64 %memload29, ptr %RBP_N.32, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.5
  br label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload30 = load i32, ptr %RBP_N.36, align 1
  %EAX = add i32 %memload30, 1
  %36 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload30, i32 1)
  %CF31 = extractvalue { i32, i1 } %36, 1
  %37 = and i32 %EAX, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF32 = icmp eq i32 %39, 0
  %ZF33 = icmp eq i32 %EAX, 0
  %highbit34 = and i32 -2147483648, %EAX
  %SF35 = icmp ne i32 %highbit34, 0
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload30, i32 1)
  %OF36 = extractvalue { i32, i1 } %40, 1
  store i32 %EAX, ptr %RBP_N.36, align 1
  br label %bb.1

bb.9:                                             ; preds = %bb.1
  %memload37 = load i64, ptr %RBP_N.32, align 1
  ret i64 %memload37
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
