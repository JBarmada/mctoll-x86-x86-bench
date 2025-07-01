; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i32 %arg1, i32 %arg2) {
entry:
  %stktop_4 = alloca i8, i32 24, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.12 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.8 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.4 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i32 %arg2, ptr %RBP_N.8, align 1
  store i32 1, ptr %RBP_N.12, align 1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload = load i32, ptr %stktop_4, align 1
  %4 = load i32, ptr %RBP_N.4, align 1
  %5 = sub i32 %memload, %4
  %6 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %4)
  %CF = extractvalue { i32, i1 } %6, 1
  %ZF = icmp eq i32 %5, 0
  %highbit = and i32 -2147483648, %5
  %SF = icmp ne i32 %highbit, 0
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %4)
  %OF = extractvalue { i32, i1 } %7, 1
  %8 = and i32 %5, 255
  %9 = call i32 @llvm.ctpop.i32(i32 %8)
  %10 = and i32 %9, 1
  %PF = icmp eq i32 %10, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i32, ptr %RBP_N.12, align 1
  %EAX = shl i32 %memload1, 1
  %ZF2 = icmp eq i32 %EAX, 0
  %highbit3 = and i32 -2147483648, %EAX
  %SF4 = icmp ne i32 %highbit3, 0
  %11 = sext i32 %EAX to i64
  %12 = lshr i64 %11, 32
  %EDX = trunc i64 %12 to i32
  %memload5 = load i32, ptr %RBP_N.8, align 1
  %13 = sext i32 %EAX to i64
  %14 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %14, 32
  %dividend = or i64 %div_hb_ls, %13
  %15 = sext i32 %memload5 to i64
  %div_q = sdiv i64 %dividend, %15
  %EAX6 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %15
  %EDX7 = trunc i64 %div_r to i32
  store i32 %EDX7, ptr %RBP_N.12, align 1
  %memload8 = load i32, ptr %stktop_4, align 1
  %EAX15 = add i32 %memload8, 1
  %16 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload8, i32 1)
  %CF9 = extractvalue { i32, i1 } %16, 1
  %17 = and i32 %EAX15, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = and i32 %18, 1
  %PF10 = icmp eq i32 %19, 0
  %ZF11 = icmp eq i32 %EAX15, 0
  %highbit12 = and i32 -2147483648, %EAX15
  %SF13 = icmp ne i32 %highbit12, 0
  %20 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload8, i32 1)
  %OF14 = extractvalue { i32, i1 } %20, 1
  store i32 %EAX15, ptr %stktop_4, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %memload16 = load i32, ptr %RBP_N.12, align 1
  ret i32 %memload16
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
