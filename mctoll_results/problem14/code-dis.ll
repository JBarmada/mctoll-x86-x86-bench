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
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i32 %arg2, ptr %RBP_N.8, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %3 = load i32, ptr %RBP_N.8, align 1
  %4 = zext i32 %3 to i64
  %5 = zext i32 0 to i64
  %6 = sub i64 %4, %5
  %7 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %4, i64 %5)
  %CF = extractvalue { i64, i1 } %7, 1
  %ZF = icmp eq i64 %6, 0
  %highbit = and i64 -9223372036854775808, %6
  %SF = icmp ne i64 %highbit, 0
  %8 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %4, i64 %5)
  %OF = extractvalue { i64, i1 } %8, 1
  %9 = and i64 %6, 255
  %10 = call i64 @llvm.ctpop.i64(i64 %9)
  %11 = and i64 %10, 1
  %PF = icmp eq i64 %11, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload = load i32, ptr %RBP_N.4, align 1
  %12 = sext i32 %memload to i64
  %13 = lshr i64 %12, 32
  %EDX = trunc i64 %13 to i32
  %memload1 = load i32, ptr %RBP_N.8, align 1
  %14 = sext i32 %memload to i64
  %15 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %15, 32
  %dividend = or i64 %div_hb_ls, %14
  %16 = sext i32 %memload1 to i64
  %div_q = sdiv i64 %dividend, %16
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %16
  %EDX2 = trunc i64 %div_r to i32
  store i32 %EDX2, ptr %stktop_4, align 1
  %memload3 = load i32, ptr %RBP_N.8, align 1
  store i32 %memload3, ptr %RBP_N.4, align 1
  %memload4 = load i32, ptr %stktop_4, align 1
  store i32 %memload4, ptr %RBP_N.8, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %memload5 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload5
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
