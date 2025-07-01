; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_4 = alloca i8, i32 36, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.4 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %4 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.24, align 1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %memload = load i32, ptr %stktop_4, align 1
  %5 = load i32, ptr %RBP_N.20, align 1
  %6 = sub i32 %memload, %5
  %7 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %5)
  %CF = extractvalue { i32, i1 } %7, 1
  %ZF = icmp eq i32 %6, 0
  %highbit = and i32 -2147483648, %6
  %SF = icmp ne i32 %highbit, 0
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %5)
  %OF = extractvalue { i32, i1 } %8, 1
  %9 = and i32 %6, 255
  %10 = call i32 @llvm.ctpop.i32(i32 %9)
  %11 = and i32 %10, 1
  %PF = icmp eq i32 %11, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.16, align 1
  %memload2 = load i64, ptr %stktop_4, align 1
  %12 = trunc i64 %memload2 to i32
  %RCX = sext i32 %12 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %13 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load i32, ptr %13, align 1
  %memload4 = load i32, ptr %RBP_N.24, align 1
  %EAX = add i32 %memload3, %memload4
  %14 = and i32 %EAX, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = and i32 %15, 1
  %PF5 = icmp eq i32 %16, 0
  store i32 %EAX, ptr %RBP_N.24, align 1
  %17 = load i32, ptr %RBP_N.24, align 1
  %18 = zext i32 %17 to i64
  %19 = zext i32 0 to i64
  %20 = sub i64 %18, %19
  %21 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %18, i64 %19)
  %CF6 = extractvalue { i64, i1 } %21, 1
  %ZF7 = icmp eq i64 %20, 0
  %highbit8 = and i64 -9223372036854775808, %20
  %SF9 = icmp ne i64 %highbit8, 0
  %22 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %18, i64 %19)
  %OF10 = extractvalue { i64, i1 } %22, 1
  %23 = and i64 %20, 255
  %24 = call i64 @llvm.ctpop.i64(i64 %23)
  %25 = and i64 %24, 1
  %PF11 = icmp eq i64 %25, 0
  %CmpSFOF_JGE21 = icmp eq i1 %SF9, %OF10
  br i1 %CmpSFOF_JGE21, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  store i32 1, ptr %RBP_N.4, align 1
  br label %bb.7

bb.4:                                             ; preds = %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload12 = load i32, ptr %stktop_4, align 1
  %EAX19 = add i32 %memload12, 1
  %26 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload12, i32 1)
  %CF13 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %EAX19, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF14 = icmp eq i32 %29, 0
  %ZF15 = icmp eq i32 %EAX19, 0
  %highbit16 = and i32 -2147483648, %EAX19
  %SF17 = icmp ne i32 %highbit16, 0
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload12, i32 1)
  %OF18 = extractvalue { i32, i1 } %30, 1
  store i32 %EAX19, ptr %stktop_4, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.3
  %memload20 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload20
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
