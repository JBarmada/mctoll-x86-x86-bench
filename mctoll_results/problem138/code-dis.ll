; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i32 %arg1) {
entry:
  %stktop_4 = alloca i8, i32 16, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.4 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %1 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %stktop_4, align 1
  %memload = load i32, ptr %stktop_4, align 1
  %2 = sext i32 %memload to i64
  %3 = lshr i64 %2, 32
  %EDX = trunc i64 %3 to i32
  %4 = sext i32 %memload to i64
  %5 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %5, 32
  %dividend = or i64 %div_hb_ls, %4
  %6 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %6
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %6
  %EDX1 = trunc i64 %div_r to i32
  %7 = sub i32 %EDX1, 0
  %8 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX1, i32 0)
  %CF = extractvalue { i32, i1 } %8, 1
  %ZF = icmp eq i32 %7, 0
  %highbit = and i32 -2147483648, %7
  %SF = icmp ne i32 %highbit, 0
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX1, i32 0)
  %OF = extractvalue { i32, i1 } %9, 1
  %10 = and i32 %7, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = and i32 %11, 1
  %PF = icmp eq i32 %12, 0
  %CmpZF_JNE = icmp eq i1 %ZF, false
  br i1 %CmpZF_JNE, label %bb.3, label %bb.1

bb.1:                                             ; preds = %entry
  %13 = load i32, ptr %stktop_4, align 1
  %14 = zext i32 %13 to i64
  %15 = zext i32 8 to i64
  %16 = sub i64 %14, %15
  %17 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %14, i64 %15)
  %CF2 = extractvalue { i64, i1 } %17, 1
  %ZF3 = icmp eq i64 %16, 0
  %highbit4 = and i64 -9223372036854775808, %16
  %SF5 = icmp ne i64 %highbit4, 0
  %18 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %14, i64 %15)
  %OF6 = extractvalue { i64, i1 } %18, 1
  %19 = and i64 %16, 255
  %20 = call i64 @llvm.ctpop.i64(i64 %19)
  %21 = and i64 %20, 1
  %PF7 = icmp eq i64 %21, 0
  %SFAndOF_JL = icmp ne i1 %SF5, %OF6
  br i1 %SFAndOF_JL, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  store i32 1, ptr %RBP_N.4, align 1
  br label %bb.4

bb.3:                                             ; preds = %bb.1, %entry
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  %memload8 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload8
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
