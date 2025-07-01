; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local double @ceil(double)

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.12 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i32 0, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload = load i32, ptr %RBP_N.20, align 1
  %6 = load i32, ptr %RBP_N.12, align 1
  %7 = sub i32 %memload, %6
  %8 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %6)
  %CF = extractvalue { i32, i1 } %8, 1
  %ZF = icmp eq i32 %7, 0
  %highbit = and i32 -2147483648, %7
  %SF = icmp ne i32 %highbit, 0
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %6)
  %OF = extractvalue { i32, i1 } %9, 1
  %10 = and i32 %7, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = and i32 %11, 1
  %PF = icmp eq i32 %12, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.8, align 1
  %memload2 = load i64, ptr %RBP_N.20, align 1
  %13 = trunc i64 %memload2 to i32
  %RCX = sext i32 %13 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %14 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load float, ptr %14, align 1
  %cvt = fpext float %memload3 to double
  %XMM0 = call double @ceil(double %cvt)
  %cvt4 = fptosi double %XMM0 to i32
  store i32 %cvt4, ptr %RBP_N.24, align 1
  %memload5 = load i64, ptr %RBP_N.8, align 1
  %memload6 = load i64, ptr %RBP_N.20, align 1
  %15 = trunc i64 %memload6 to i32
  %RCX7 = sext i32 %15 to i64
  %memref-idxreg8 = mul i64 4, %RCX7
  %memref-basereg9 = add i64 %memload5, %memref-idxreg8
  %16 = inttoptr i64 %memref-basereg9 to ptr
  %memload10 = load float, ptr %16, align 1
  %cvt11 = fpext float %memload10 to double
  %XMM012 = call double @ceil(double %cvt11)
  %memload13 = load i32, ptr %RBP_N.24, align 1
  %cvt14 = fptosi double %XMM012 to i32
  %EAX = mul nsw i32 %memload13, %cvt14
  %memload15 = load i32, ptr %RBP_N.16, align 1
  %EAX17 = add i32 %EAX, %memload15
  %17 = and i32 %EAX17, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = and i32 %18, 1
  %PF16 = icmp eq i32 %19, 0
  store i32 %EAX17, ptr %RBP_N.16, align 1
  %memload18 = load i32, ptr %RBP_N.20, align 1
  %EAX25 = add i32 %memload18, 1
  %20 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload18, i32 1)
  %CF19 = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %EAX25, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF20 = icmp eq i32 %23, 0
  %ZF21 = icmp eq i32 %EAX25, 0
  %highbit22 = and i32 -2147483648, %EAX25
  %SF23 = icmp ne i32 %highbit22, 0
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload18, i32 1)
  %OF24 = extractvalue { i32, i1 } %24, 1
  store i32 %EAX25, ptr %RBP_N.20, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %memload26 = load i32, ptr %RBP_N.16, align 1
  ret i32 %memload26
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
