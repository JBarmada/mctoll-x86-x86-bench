; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i32 %arg1, i32 %arg2) {
entry:
  %stktop_4 = alloca i8, i32 20, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.8 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.4 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %stktop_4, align 1
  %memload = load i32, ptr %stktop_4, align 1
  %3 = load i32, ptr %RBP_N.8, align 1
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
  br i1 %CmpSFOF_JGE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i32 -1, ptr %RBP_N.4, align 1
  br label %bb.8

bb.2:                                             ; preds = %entry
  %memload1 = load i32, ptr %stktop_4, align 1
  %10 = load i32, ptr %RBP_N.8, align 1
  %11 = sub i32 %memload1, %10
  %12 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload1, i32 %10)
  %CF2 = extractvalue { i32, i1 } %12, 1
  %ZF3 = icmp eq i32 %11, 0
  %highbit4 = and i32 -2147483648, %11
  %SF5 = icmp ne i32 %highbit4, 0
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload1, i32 %10)
  %OF6 = extractvalue { i32, i1 } %13, 1
  %14 = and i32 %11, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = and i32 %15, 1
  %PF7 = icmp eq i32 %16, 0
  %CmpZF_JNE = icmp eq i1 %ZF3, false
  br i1 %CmpZF_JNE, label %bb.5, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload8 = load i32, ptr %stktop_4, align 1
  %17 = sext i32 %memload8 to i64
  %18 = lshr i64 %17, 32
  %EDX = trunc i64 %18 to i32
  %19 = sext i32 %memload8 to i64
  %20 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %20, 32
  %dividend = or i64 %div_hb_ls, %19
  %21 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %21
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %21
  %EDX9 = trunc i64 %div_r to i32
  %22 = sub i32 %EDX9, 1
  %23 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX9, i32 1)
  %CF10 = extractvalue { i32, i1 } %23, 1
  %ZF11 = icmp eq i32 %22, 0
  %highbit12 = and i32 -2147483648, %22
  %SF13 = icmp ne i32 %highbit12, 0
  %24 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX9, i32 1)
  %OF14 = extractvalue { i32, i1 } %24, 1
  %25 = and i32 %22, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = and i32 %26, 1
  %PF15 = icmp eq i32 %27, 0
  %CmpZF_JNE40 = icmp eq i1 %ZF11, false
  br i1 %CmpZF_JNE40, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  store i32 -1, ptr %RBP_N.4, align 1
  br label %bb.8

bb.5:                                             ; preds = %bb.3, %bb.2
  %memload16 = load i32, ptr %stktop_4, align 1
  %28 = sext i32 %memload16 to i64
  %29 = lshr i64 %28, 32
  %EDX17 = trunc i64 %29 to i32
  %30 = sext i32 %memload16 to i64
  %31 = sext i32 %EDX17 to i64
  %div_hb_ls18 = shl nuw i64 %31, 32
  %dividend19 = or i64 %div_hb_ls18, %30
  %32 = sext i32 2 to i64
  %div_q20 = sdiv i64 %dividend19, %32
  %EAX21 = trunc i64 %div_q20 to i32
  %div_r22 = srem i64 %dividend19, %32
  %EDX23 = trunc i64 %div_r22 to i32
  %33 = sub i32 %EDX23, 1
  %34 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX23, i32 1)
  %CF24 = extractvalue { i32, i1 } %34, 1
  %ZF25 = icmp eq i32 %33, 0
  %highbit26 = and i32 -2147483648, %33
  %SF27 = icmp ne i32 %highbit26, 0
  %35 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX23, i32 1)
  %OF28 = extractvalue { i32, i1 } %35, 1
  %36 = and i32 %33, 255
  %37 = call i32 @llvm.ctpop.i32(i32 %36)
  %38 = and i32 %37, 1
  %PF29 = icmp eq i32 %38, 0
  %CmpZF_JNE41 = icmp eq i1 %ZF25, false
  br i1 %CmpZF_JNE41, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload30 = load i32, ptr %stktop_4, align 1
  %EAX37 = sub i32 %memload30, 1
  %39 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload30, i32 1)
  %CF31 = extractvalue { i32, i1 } %39, 1
  %40 = and i32 %EAX37, 255
  %41 = call i32 @llvm.ctpop.i32(i32 %40)
  %42 = and i32 %41, 1
  %PF32 = icmp eq i32 %42, 0
  %ZF33 = icmp eq i32 %EAX37, 0
  %highbit34 = and i32 -2147483648, %EAX37
  %SF35 = icmp ne i32 %highbit34, 0
  %43 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload30, i32 1)
  %OF36 = extractvalue { i32, i1 } %43, 1
  store i32 %EAX37, ptr %RBP_N.4, align 1
  br label %bb.8

bb.7:                                             ; preds = %bb.5
  %memload38 = load i32, ptr %stktop_4, align 1
  store i32 %memload38, ptr %RBP_N.4, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.6, %bb.4, %bb.1
  %memload39 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload39
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
