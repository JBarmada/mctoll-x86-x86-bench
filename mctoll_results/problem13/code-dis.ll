; ModuleID = 'code.so'
source_filename = "code.so"

@rodata_13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !ROData_SecInfo !0

declare dso_local i64 @strlen(ptr)

define dso_local i64 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 44
  %RBP_N.12 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  %RAX = ptrtoint ptr @rodata_13 to i64
  store i64 %RAX, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  store i32 0, ptr %RBP_N.32, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %memload = load i32, ptr %RBP_N.32, align 1
  %7 = load i32, ptr %RBP_N.12, align 1
  %8 = sub i32 %memload, %7
  %9 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %7)
  %CF = extractvalue { i32, i1 } %9, 1
  %ZF = icmp eq i32 %8, 0
  %highbit = and i32 -2147483648, %8
  %SF = icmp ne i32 %highbit, 0
  %10 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %7)
  %OF = extractvalue { i32, i1 } %10, 1
  %11 = and i32 %8, 255
  %12 = call i32 @llvm.ctpop.i32(i32 %11)
  %13 = and i32 %12, 1
  %PF = icmp eq i32 %13, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.8, align 1
  %memload2 = load i64, ptr %RBP_N.32, align 1
  %14 = trunc i64 %memload2 to i32
  %RCX = sext i32 %14 to i64
  %memref-idxreg = mul i64 8, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %15 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load i64, ptr %15, align 1
  %16 = inttoptr i64 %memload3 to ptr
  %RAX4 = call i64 @strlen(ptr %16)
  %17 = trunc i64 %RAX4 to i32
  store i32 %17, ptr %RBP_N.36, align 1
  %memload5 = load i32, ptr %RBP_N.36, align 1
  %18 = load i32, ptr %RBP_N.28, align 1
  %19 = sub i32 %memload5, %18
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload5, i32 %18)
  %CF6 = extractvalue { i32, i1 } %20, 1
  %ZF7 = icmp eq i32 %19, 0
  %highbit8 = and i32 -2147483648, %19
  %SF9 = icmp ne i32 %highbit8, 0
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload5, i32 %18)
  %OF10 = extractvalue { i32, i1 } %21, 1
  %22 = and i32 %19, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF11 = icmp eq i32 %24, 0
  %CmpZF_JLE = icmp eq i1 %ZF7, true
  %CmpOF_JLE = icmp ne i1 %SF9, %OF10
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload12 = load i64, ptr %RBP_N.8, align 1
  %memload13 = load i64, ptr %RBP_N.32, align 1
  %25 = trunc i64 %memload13 to i32
  %RCX14 = sext i32 %25 to i64
  %memref-idxreg15 = mul i64 8, %RCX14
  %memref-basereg16 = add i64 %memload12, %memref-idxreg15
  %26 = inttoptr i64 %memref-basereg16 to ptr
  %memload17 = load i64, ptr %26, align 1
  store i64 %memload17, ptr %RBP_N.24, align 1
  %memload18 = load i32, ptr %RBP_N.36, align 1
  store i32 %memload18, ptr %RBP_N.28, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload19 = load i32, ptr %RBP_N.32, align 1
  %EAX = add i32 %memload19, 1
  %27 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload19, i32 1)
  %CF20 = extractvalue { i32, i1 } %27, 1
  %28 = and i32 %EAX, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = and i32 %29, 1
  %PF21 = icmp eq i32 %30, 0
  %ZF22 = icmp eq i32 %EAX, 0
  %highbit23 = and i32 -2147483648, %EAX
  %SF24 = icmp ne i32 %highbit23, 0
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload19, i32 1)
  %OF25 = extractvalue { i32, i1 } %31, 1
  store i32 %EAX, ptr %RBP_N.32, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  %memload26 = load i64, ptr %RBP_N.24, align 1
  ret i64 %memload26
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

!0 = !{i64 8192}
