; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2, i64 %arg3, double %arg4) {
entry:
  %stktop_4 = alloca i8, i32 36, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.12 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.8 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  store i32 1, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
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
  br i1 %CmpSFOF_JGE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i32, ptr %stktop_4, align 1
  %cvt = sitofp i32 %memload1 to float
  %memload2 = load i64, ptr %RBP_N.8, align 1
  %memload3 = load i64, ptr %stktop_4, align 1
  %11 = trunc i64 %memload3 to i32
  %RCX = sext i32 %11 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload2, %memref-idxreg
  %12 = inttoptr i64 %memref-basereg to ptr
  %memload4 = load float, ptr %12, align 1
  %XMM0 = fmul float %cvt, %memload4
  %memload5 = load i64, ptr %RBP_N.24, align 1
  %memload6 = load i32, ptr %stktop_4, align 1
  %ECX = sub i32 %memload6, 1
  %13 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload6, i32 1)
  %CF7 = extractvalue { i32, i1 } %13, 1
  %14 = and i32 %ECX, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = and i32 %15, 1
  %PF8 = icmp eq i32 %16, 0
  %ZF9 = icmp eq i32 %ECX, 0
  %highbit10 = and i32 -2147483648, %ECX
  %SF11 = icmp ne i32 %highbit10, 0
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload6, i32 1)
  %OF12 = extractvalue { i32, i1 } %17, 1
  %RCX13 = sext i32 %ECX to i64
  %memref-idxreg14 = mul i64 4, %RCX13
  %memref-basereg15 = add i64 %memload5, %memref-idxreg14
  %18 = inttoptr i64 %memref-basereg15 to ptr
  store float %XMM0, ptr %18, align 1
  %memload16 = load i32, ptr %stktop_4, align 1
  %EAX = add i32 %memload16, 1
  %19 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload16, i32 1)
  %CF17 = extractvalue { i32, i1 } %19, 1
  %20 = and i32 %EAX, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = and i32 %21, 1
  %PF18 = icmp eq i32 %22, 0
  %ZF19 = icmp eq i32 %EAX, 0
  %highbit20 = and i32 -2147483648, %EAX
  %SF21 = icmp ne i32 %highbit20, 0
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload16, i32 1)
  %OF22 = extractvalue { i32, i1 } %23, 1
  store i32 %EAX, ptr %stktop_4, align 1
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
