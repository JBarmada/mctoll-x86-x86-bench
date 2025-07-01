; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i32 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 36
  %RBP_N.4 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  %memload = load i64, ptr %RBP_N.4, align 1
  %4 = trunc i64 %memload to i32
  %RDI = sext i32 %4 to i64
  %RDI1 = shl i64 %RDI, 2
  %ZF = icmp eq i64 %RDI1, 0
  %highbit = and i64 -9223372036854775808, %RDI1
  %SF = icmp ne i64 %highbit, 0
  %5 = call ptr @malloc(i64 %RDI1)
  %RAX = ptrtoint ptr %5 to i64
  store i64 %RAX, ptr %RBP_N.16, align 1
  %memload2 = load i32, ptr %RBP_N.4, align 1
  %memload3 = load i64, ptr %RBP_N.16, align 1
  %6 = inttoptr i64 %memload3 to ptr
  store i32 %memload2, ptr %6, align 1
  store i32 1, ptr %RBP_N.20, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload4 = load i32, ptr %RBP_N.20, align 1
  %7 = load i32, ptr %RBP_N.4, align 1
  %8 = sub i32 %memload4, %7
  %9 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload4, i32 %7)
  %CF = extractvalue { i32, i1 } %9, 1
  %ZF5 = icmp eq i32 %8, 0
  %highbit6 = and i32 -2147483648, %8
  %SF7 = icmp ne i32 %highbit6, 0
  %10 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload4, i32 %7)
  %OF = extractvalue { i32, i1 } %10, 1
  %11 = and i32 %8, 255
  %12 = call i32 @llvm.ctpop.i32(i32 %11)
  %13 = and i32 %12, 1
  %PF = icmp eq i32 %13, 0
  %CmpSFOF_JGE = icmp eq i1 %SF7, %OF
  br i1 %CmpSFOF_JGE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload8 = load i64, ptr %RBP_N.16, align 1
  %memload9 = load i64, ptr %RBP_N.20, align 1
  %14 = trunc i64 %memload9 to i32
  %RCX = sext i32 %14 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload8, %memref-idxreg
  %memref-disp = add i64 %memref-basereg, -4
  %15 = inttoptr i64 %memref-disp to ptr
  %memload10 = load i32, ptr %15, align 1
  %EDX = add i32 %memload10, 2
  %16 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload10, i32 2)
  %CF11 = extractvalue { i32, i1 } %16, 1
  %17 = and i32 %EDX, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = and i32 %18, 1
  %PF12 = icmp eq i32 %19, 0
  %ZF13 = icmp eq i32 %EDX, 0
  %highbit14 = and i32 -2147483648, %EDX
  %SF15 = icmp ne i32 %highbit14, 0
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload10, i32 2)
  %OF16 = extractvalue { i32, i1 } %20, 1
  %memload17 = load i64, ptr %RBP_N.16, align 1
  %memload18 = load i64, ptr %RBP_N.20, align 1
  %21 = trunc i64 %memload18 to i32
  %RCX19 = sext i32 %21 to i64
  %memref-idxreg20 = mul i64 4, %RCX19
  %memref-basereg21 = add i64 %memload17, %memref-idxreg20
  %22 = inttoptr i64 %memref-basereg21 to ptr
  store i32 %EDX, ptr %22, align 1
  %memload22 = load i32, ptr %RBP_N.20, align 1
  %EAX = add i32 %memload22, 1
  %23 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload22, i32 1)
  %CF23 = extractvalue { i32, i1 } %23, 1
  %24 = and i32 %EAX, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = and i32 %25, 1
  %PF24 = icmp eq i32 %26, 0
  %ZF25 = icmp eq i32 %EAX, 0
  %highbit26 = and i32 -2147483648, %EAX
  %SF27 = icmp ne i32 %highbit26, 0
  %27 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload22, i32 1)
  %OF28 = extractvalue { i32, i1 } %27, 1
  store i32 %EAX, ptr %RBP_N.20, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %memload29 = load i64, ptr %RBP_N.16, align 1
  ret i64 %memload29
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
