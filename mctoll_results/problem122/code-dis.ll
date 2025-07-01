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
  store i32 0, ptr %RBP_N.16, align 1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %memload = load i32, ptr %stktop_4, align 1
  %EAX = shl i32 %memload, 1
  %ZF = icmp eq i32 %EAX, 0
  %highbit = and i32 -2147483648, %EAX
  %SF = icmp ne i32 %highbit, 0
  %4 = load i32, ptr %RBP_N.12, align 1
  %5 = sub i32 %EAX, %4
  %6 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 %4)
  %CF = extractvalue { i32, i1 } %6, 1
  %ZF1 = icmp eq i32 %5, 0
  %highbit2 = and i32 -2147483648, %5
  %SF3 = icmp ne i32 %highbit2, 0
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 %4)
  %OF = extractvalue { i32, i1 } %7, 1
  %8 = and i32 %5, 255
  %9 = call i32 @llvm.ctpop.i32(i32 %8)
  %10 = and i32 %9, 1
  %PF = icmp eq i32 %10, 0
  %CmpSFOF_JGE = icmp eq i1 %SF3, %OF
  br i1 %CmpSFOF_JGE, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload4 = load i64, ptr %RBP_N.8, align 1
  %memload5 = load i32, ptr %stktop_4, align 1
  %ECX = shl i32 %memload5, 1
  %ZF6 = icmp eq i32 %ECX, 0
  %highbit7 = and i32 -2147483648, %ECX
  %SF8 = icmp ne i32 %highbit7, 0
  %RCX = sext i32 %ECX to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload4, %memref-idxreg
  %11 = inttoptr i64 %memref-basereg to ptr
  %memload9 = load i32, ptr %11, align 1
  %12 = sext i32 %memload9 to i64
  %13 = lshr i64 %12, 32
  %EDX = trunc i64 %13 to i32
  %14 = sext i32 %memload9 to i64
  %15 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %15, 32
  %dividend = or i64 %div_hb_ls, %14
  %16 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %16
  %EAX10 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %16
  %EDX11 = trunc i64 %div_r to i32
  %17 = sub i32 %EDX11, 1
  %18 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX11, i32 1)
  %CF12 = extractvalue { i32, i1 } %18, 1
  %ZF13 = icmp eq i32 %17, 0
  %highbit14 = and i32 -2147483648, %17
  %SF15 = icmp ne i32 %highbit14, 0
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX11, i32 1)
  %OF16 = extractvalue { i32, i1 } %19, 1
  %20 = and i32 %17, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = and i32 %21, 1
  %PF17 = icmp eq i32 %22, 0
  %CmpZF_JNE = icmp eq i1 %ZF13, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload18 = load i64, ptr %RBP_N.8, align 1
  %memload19 = load i32, ptr %stktop_4, align 1
  %ECX23 = shl i32 %memload19, 1
  %ZF20 = icmp eq i32 %ECX23, 0
  %highbit21 = and i32 -2147483648, %ECX23
  %SF22 = icmp ne i32 %highbit21, 0
  %RCX24 = sext i32 %ECX23 to i64
  %memref-idxreg25 = mul i64 4, %RCX24
  %memref-basereg26 = add i64 %memload18, %memref-idxreg25
  %23 = inttoptr i64 %memref-basereg26 to ptr
  %memload27 = load i32, ptr %23, align 1
  %memload28 = load i32, ptr %RBP_N.16, align 1
  %EAX30 = add i32 %memload27, %memload28
  %24 = and i32 %EAX30, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = and i32 %25, 1
  %PF29 = icmp eq i32 %26, 0
  store i32 %EAX30, ptr %RBP_N.16, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload31 = load i32, ptr %stktop_4, align 1
  %EAX38 = add i32 %memload31, 1
  %27 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload31, i32 1)
  %CF32 = extractvalue { i32, i1 } %27, 1
  %28 = and i32 %EAX38, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = and i32 %29, 1
  %PF33 = icmp eq i32 %30, 0
  %ZF34 = icmp eq i32 %EAX38, 0
  %highbit35 = and i32 -2147483648, %EAX38
  %SF36 = icmp ne i32 %highbit35, 0
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload31, i32 1)
  %OF37 = extractvalue { i32, i1 } %31, 1
  store i32 %EAX38, ptr %stktop_4, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  %memload39 = load i32, ptr %RBP_N.16, align 1
  ret i32 %memload39
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
