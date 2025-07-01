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
  store i32 -1, ptr %RBP_N.16, align 1
  store i32 1, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
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
  br i1 %CmpSFOF_JGE, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.8, align 1
  %memload2 = load i64, ptr %stktop_4, align 1
  %11 = trunc i64 %memload2 to i32
  %RCX = sext i32 %11 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %12 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load i32, ptr %12, align 1
  %memload4 = load i64, ptr %RBP_N.8, align 1
  %memload5 = load i32, ptr %stktop_4, align 1
  %EDX = sub i32 %memload5, 1
  %13 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload5, i32 1)
  %CF6 = extractvalue { i32, i1 } %13, 1
  %14 = and i32 %EDX, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = and i32 %15, 1
  %PF7 = icmp eq i32 %16, 0
  %ZF8 = icmp eq i32 %EDX, 0
  %highbit9 = and i32 -2147483648, %EDX
  %SF10 = icmp ne i32 %highbit9, 0
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload5, i32 1)
  %OF11 = extractvalue { i32, i1 } %17, 1
  %RDX = sext i32 %EDX to i64
  %memref-idxreg12 = mul i64 4, %RDX
  %memref-basereg13 = add i64 %memload4, %memref-idxreg12
  %18 = inttoptr i64 %memref-basereg13 to ptr
  %19 = load i32, ptr %18, align 1
  %20 = sub i32 %memload3, %19
  %21 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload3, i32 %19)
  %CF14 = extractvalue { i32, i1 } %21, 1
  %ZF15 = icmp eq i32 %20, 0
  %highbit16 = and i32 -2147483648, %20
  %SF17 = icmp ne i32 %highbit16, 0
  %22 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload3, i32 %19)
  %OF18 = extractvalue { i32, i1 } %22, 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = and i32 %24, 1
  %PF19 = icmp eq i32 %25, 0
  %CmpSFOF_JGE29 = icmp eq i1 %SF17, %OF18
  br i1 %CmpSFOF_JGE29, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload20 = load i32, ptr %stktop_4, align 1
  store i32 %memload20, ptr %RBP_N.16, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload21 = load i32, ptr %stktop_4, align 1
  %EAX = add i32 %memload21, 1
  %26 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload21, i32 1)
  %CF22 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %EAX, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF23 = icmp eq i32 %29, 0
  %ZF24 = icmp eq i32 %EAX, 0
  %highbit25 = and i32 -2147483648, %EAX
  %SF26 = icmp ne i32 %highbit25, 0
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload21, i32 1)
  %OF27 = extractvalue { i32, i1 } %30, 1
  store i32 %EAX, ptr %stktop_4, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  %memload28 = load i32, ptr %RBP_N.16, align 1
  ret i32 %memload28
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
