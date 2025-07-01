; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 32, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.16 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 31
  %RBP_N.1 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  %3 = load i64, ptr %RBP_N.16, align 1
  %4 = sub i64 %3, 2
  %5 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %3, i64 2)
  %CF = extractvalue { i64, i1 } %5, 1
  %ZF = icmp eq i64 %4, 0
  %highbit = and i64 -9223372036854775808, %4
  %SF = icmp ne i64 %highbit, 0
  %6 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %3, i64 2)
  %OF = extractvalue { i64, i1 } %6, 1
  %7 = and i64 %4, 255
  %8 = call i64 @llvm.ctpop.i64(i64 %7)
  %9 = and i64 %8, 1
  %PF = icmp eq i64 %9, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.9

bb.2:                                             ; preds = %entry
  %10 = sext i32 2 to i64
  store i64 %10, ptr %stktop_8, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %memload = load i64, ptr %stktop_8, align 1
  %memload1 = load i64, ptr %stktop_8, align 1
  %RAX = mul i64 %memload, %memload1
  %11 = load i64, ptr %RBP_N.16, align 1
  %12 = sub i64 %RAX, %11
  %13 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX, i64 %11)
  %CF2 = extractvalue { i64, i1 } %13, 1
  %ZF3 = icmp eq i64 %12, 0
  %highbit4 = and i64 -9223372036854775808, %12
  %SF5 = icmp ne i64 %highbit4, 0
  %14 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX, i64 %11)
  %OF6 = extractvalue { i64, i1 } %14, 1
  %15 = and i64 %12, 255
  %16 = call i64 @llvm.ctpop.i64(i64 %15)
  %17 = and i64 %16, 1
  %PF7 = icmp eq i64 %17, 0
  %ZFCmp_JG = icmp eq i1 %ZF3, false
  %SFOFCmp_JG = icmp eq i1 %SF5, %OF6
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload8 = load i64, ptr %RBP_N.16, align 1
  %18 = sext i64 %memload8 to i128
  %19 = lshr i128 %18, 64
  %RDX = trunc i128 %19 to i64
  %memload9 = load i64, ptr %stktop_8, align 1
  %20 = sext i64 %memload8 to i128
  %21 = sext i64 %RDX to i128
  %div_hb_ls = shl nuw i128 %21, 64
  %dividend = or i128 %div_hb_ls, %20
  %22 = sext i64 %memload9 to i128
  %div_q = sdiv i128 %dividend, %22
  %RAX10 = trunc i128 %div_q to i64
  %div_r = srem i128 %dividend, %22
  %RDX11 = trunc i128 %div_r to i64
  %23 = sub i64 %RDX11, 0
  %24 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RDX11, i64 0)
  %CF12 = extractvalue { i64, i1 } %24, 1
  %ZF13 = icmp eq i64 %23, 0
  %highbit14 = and i64 -9223372036854775808, %23
  %SF15 = icmp ne i64 %highbit14, 0
  %25 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RDX11, i64 0)
  %OF16 = extractvalue { i64, i1 } %25, 1
  %26 = and i64 %23, 255
  %27 = call i64 @llvm.ctpop.i64(i64 %26)
  %28 = and i64 %27, 1
  %PF17 = icmp eq i64 %28, 0
  %CmpZF_JNE = icmp eq i1 %ZF13, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.9

bb.6:                                             ; preds = %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload18 = load i64, ptr %stktop_8, align 1
  %RAX25 = add i64 %memload18, 1
  %29 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %memload18, i64 1)
  %CF19 = extractvalue { i64, i1 } %29, 1
  %30 = and i64 %RAX25, 255
  %31 = call i64 @llvm.ctpop.i64(i64 %30)
  %32 = and i64 %31, 1
  %PF20 = icmp eq i64 %32, 0
  %ZF21 = icmp eq i64 %RAX25, 0
  %highbit22 = and i64 -9223372036854775808, %RAX25
  %SF23 = icmp ne i64 %highbit22, 0
  %33 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %memload18, i64 1)
  %OF24 = extractvalue { i64, i1 } %33, 1
  store i64 %RAX25, ptr %stktop_8, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.3
  store i8 1, ptr %RBP_N.1, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.5, %bb.1
  %memload26 = load i8, ptr %RBP_N.1, align 1
  %AL = and i8 %memload26, 1
  %34 = call i8 @llvm.ctpop.i8(i8 %AL)
  %35 = and i8 %34, 1
  %PF27 = icmp eq i8 %35, 0
  %ZF28 = icmp eq i8 %AL, 0
  %highbit29 = and i8 -128, %AL
  %SF30 = icmp ne i8 %highbit29, 0
  %EAX = zext i8 %AL to i32
  ret i32 %EAX
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctpop.i8(i8) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
