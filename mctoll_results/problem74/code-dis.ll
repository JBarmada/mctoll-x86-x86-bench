; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_4 = alloca i8, i32 32, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.20 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.16 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.12 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.8 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %4 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i32 0, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %memload = load i32, ptr %RBP_N.20, align 1
  store i32 %memload, ptr %stktop_4, align 1
  %memload1 = load i32, ptr %RBP_N.12, align 1
  %5 = sext i32 %memload1 to i64
  %6 = lshr i64 %5, 32
  %EDX = trunc i64 %6 to i32
  %7 = sext i32 %memload1 to i64
  %8 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %8, 32
  %dividend = or i64 %div_hb_ls, %7
  %9 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %9
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %9
  %EDX2 = trunc i64 %div_r to i32
  %memload3 = load i32, ptr %stktop_4, align 1
  %10 = sub i32 %memload3, %EAX
  %11 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload3, i32 %EAX)
  %CF = extractvalue { i32, i1 } %11, 1
  %ZF = icmp eq i32 %10, 0
  %highbit = and i32 -2147483648, %10
  %SF = icmp ne i32 %highbit, 0
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload3, i32 %EAX)
  %OF = extractvalue { i32, i1 } %12, 1
  %13 = and i32 %10, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = and i32 %14, 1
  %PF = icmp eq i32 %15, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload4 = load i64, ptr %RBP_N.8, align 1
  %memload5 = load i64, ptr %RBP_N.20, align 1
  %16 = trunc i64 %memload5 to i32
  %RCX = sext i32 %16 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload4, %memref-idxreg
  %17 = inttoptr i64 %memref-basereg to ptr
  %memload6 = load i32, ptr %17, align 1
  %memload7 = load i64, ptr %RBP_N.8, align 1
  %memload8 = load i32, ptr %RBP_N.12, align 1
  %EDX15 = sub i32 %memload8, 1
  %18 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload8, i32 1)
  %CF9 = extractvalue { i32, i1 } %18, 1
  %19 = and i32 %EDX15, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = and i32 %20, 1
  %PF10 = icmp eq i32 %21, 0
  %ZF11 = icmp eq i32 %EDX15, 0
  %highbit12 = and i32 -2147483648, %EDX15
  %SF13 = icmp ne i32 %highbit12, 0
  %22 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload8, i32 1)
  %OF14 = extractvalue { i32, i1 } %22, 1
  %23 = load i32, ptr %RBP_N.20, align 1
  %EDX16 = sub i32 %EDX15, %23
  %24 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX15, i32 %23)
  %CF17 = extractvalue { i32, i1 } %24, 1
  %ZF18 = icmp eq i32 %EDX16, 0
  %highbit19 = and i32 -2147483648, %EDX16
  %SF20 = icmp ne i32 %highbit19, 0
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX15, i32 %23)
  %OF21 = extractvalue { i32, i1 } %25, 1
  %26 = and i32 %EDX16, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF22 = icmp eq i32 %28, 0
  %RDX = sext i32 %EDX16 to i64
  %memref-idxreg23 = mul i64 4, %RDX
  %memref-basereg24 = add i64 %memload7, %memref-idxreg23
  %29 = inttoptr i64 %memref-basereg24 to ptr
  %30 = load i32, ptr %29, align 1
  %31 = sub i32 %memload6, %30
  %32 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload6, i32 %30)
  %CF25 = extractvalue { i32, i1 } %32, 1
  %ZF26 = icmp eq i32 %31, 0
  %highbit27 = and i32 -2147483648, %31
  %SF28 = icmp ne i32 %highbit27, 0
  %33 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload6, i32 %30)
  %OF29 = extractvalue { i32, i1 } %33, 1
  %34 = and i32 %31, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = and i32 %35, 1
  %PF30 = icmp eq i32 %36, 0
  %CmpZF_JE = icmp eq i1 %ZF26, true
  br i1 %CmpZF_JE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload31 = load i32, ptr %RBP_N.16, align 1
  %EAX38 = add i32 %memload31, 1
  %37 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload31, i32 1)
  %CF32 = extractvalue { i32, i1 } %37, 1
  %38 = and i32 %EAX38, 255
  %39 = call i32 @llvm.ctpop.i32(i32 %38)
  %40 = and i32 %39, 1
  %PF33 = icmp eq i32 %40, 0
  %ZF34 = icmp eq i32 %EAX38, 0
  %highbit35 = and i32 -2147483648, %EAX38
  %SF36 = icmp ne i32 %highbit35, 0
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload31, i32 1)
  %OF37 = extractvalue { i32, i1 } %41, 1
  store i32 %EAX38, ptr %RBP_N.16, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload39 = load i32, ptr %RBP_N.20, align 1
  %EAX46 = add i32 %memload39, 1
  %42 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload39, i32 1)
  %CF40 = extractvalue { i32, i1 } %42, 1
  %43 = and i32 %EAX46, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF41 = icmp eq i32 %45, 0
  %ZF42 = icmp eq i32 %EAX46, 0
  %highbit43 = and i32 -2147483648, %EAX46
  %SF44 = icmp ne i32 %highbit43, 0
  %46 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload39, i32 1)
  %OF45 = extractvalue { i32, i1 } %46, 1
  store i32 %EAX46, ptr %RBP_N.20, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  %memload47 = load i32, ptr %RBP_N.16, align 1
  ret i32 %memload47
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
