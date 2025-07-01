; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
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
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload = load i32, ptr %stktop_4, align 1
  %3 = load i32, ptr %RBP_N.12, align 1
  %4 = sub i32 %memload, %3
  %5 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %3)
  %CF = extractvalue { i32, i1 } %5, 1
  %ZF = icmp eq i32 %4, 0
  %highbit = and i32 -2147483648, %4
  %SF = icmp ne i32 %highbit, 0
  %6 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %3)
  %OF = extractvalue { i32, i1 } %6, 1
  %7 = and i32 %4, 255
  %8 = call i32 @llvm.ctpop.i32(i32 %7)
  %9 = and i32 %8, 1
  %PF = icmp eq i32 %9, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.8, align 1
  %memload2 = load i64, ptr %stktop_4, align 1
  %10 = trunc i64 %memload2 to i32
  %RCX = sext i32 %10 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %11 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load i32, ptr %11, align 1
  %EDX = add i32 %memload3, 1
  %12 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload3, i32 1)
  %CF4 = extractvalue { i32, i1 } %12, 1
  %13 = and i32 %EDX, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = and i32 %14, 1
  %PF5 = icmp eq i32 %15, 0
  %ZF6 = icmp eq i32 %EDX, 0
  %highbit7 = and i32 -2147483648, %EDX
  %SF8 = icmp ne i32 %highbit7, 0
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload3, i32 1)
  %OF9 = extractvalue { i32, i1 } %16, 1
  %memref-idxreg10 = mul i64 4, %RCX
  %memref-basereg11 = add i64 %memload1, %memref-idxreg10
  %17 = inttoptr i64 %memref-basereg11 to ptr
  store i32 %EDX, ptr %17, align 1
  %memload12 = load i32, ptr %stktop_4, align 1
  %EAX = add i32 %memload12, 1
  %18 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload12, i32 1)
  %CF13 = extractvalue { i32, i1 } %18, 1
  %19 = and i32 %EAX, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = and i32 %20, 1
  %PF14 = icmp eq i32 %21, 0
  %ZF15 = icmp eq i32 %EAX, 0
  %highbit16 = and i32 -2147483648, %EAX
  %SF17 = icmp ne i32 %highbit16, 0
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload12, i32 1)
  %OF18 = extractvalue { i32, i1 } %22, 1
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
