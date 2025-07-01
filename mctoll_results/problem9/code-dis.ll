; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i64 @func0(i64 %arg1, i32 %arg2, i64 %arg3) {
entry:
  %stktop_4 = alloca i8, i32 44, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.32 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.28 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.24 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.12 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.8 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  store i32 1, ptr %RBP_N.32, align 1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload = load i32, ptr %stktop_4, align 1
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
  %memload2 = load i64, ptr %stktop_4, align 1
  %13 = trunc i64 %memload2 to i32
  %RCX = sext i32 %13 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %14 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load i32, ptr %14, align 1
  %memload4 = load i32, ptr %RBP_N.28, align 1
  %EAX = add i32 %memload3, %memload4
  %15 = and i32 %EAX, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = and i32 %16, 1
  %PF5 = icmp eq i32 %17, 0
  store i32 %EAX, ptr %RBP_N.28, align 1
  %memload6 = load i64, ptr %RBP_N.8, align 1
  %memload7 = load i64, ptr %stktop_4, align 1
  %18 = trunc i64 %memload7 to i32
  %RCX8 = sext i32 %18 to i64
  %memref-idxreg9 = mul i64 4, %RCX8
  %memref-basereg10 = add i64 %memload6, %memref-idxreg9
  %19 = inttoptr i64 %memref-basereg10 to ptr
  %memload11 = load i32, ptr %19, align 1
  %memload12 = load i32, ptr %RBP_N.32, align 1
  %EAX13 = mul i32 %memload11, %memload12
  store i32 %EAX13, ptr %RBP_N.32, align 1
  %memload14 = load i32, ptr %stktop_4, align 1
  %EAX21 = add i32 %memload14, 1
  %20 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload14, i32 1)
  %CF15 = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %EAX21, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF16 = icmp eq i32 %23, 0
  %ZF17 = icmp eq i32 %EAX21, 0
  %highbit18 = and i32 -2147483648, %EAX21
  %SF19 = icmp ne i32 %highbit18, 0
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload14, i32 1)
  %OF20 = extractvalue { i32, i1 } %24, 1
  store i32 %EAX21, ptr %stktop_4, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %memload22 = load i32, ptr %RBP_N.28, align 1
  %memload23 = load i64, ptr %RBP_N.24, align 1
  %25 = inttoptr i64 %memload23 to ptr
  store i32 %memload22, ptr %25, align 1
  %memload24 = load i32, ptr %RBP_N.32, align 1
  %memload25 = load i64, ptr %RBP_N.24, align 1
  %memref-disp = add i64 %memload25, 4
  %26 = inttoptr i64 %memref-disp to ptr
  store i32 %memload24, ptr %26, align 1
  ret i64 %memload25
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
