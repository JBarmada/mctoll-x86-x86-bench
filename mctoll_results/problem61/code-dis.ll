; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i32 %arg1) {
entry:
  %stktop_4 = alloca i8, i32 12, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %0 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %stktop_4, align 1
  %memload = load i32, ptr %stktop_4, align 1
  %memload1 = load i32, ptr %stktop_4, align 1
  %ECX = add i32 %memload1, 1
  %1 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload1, i32 1)
  %CF = extractvalue { i32, i1 } %1, 1
  %2 = and i32 %ECX, 255
  %3 = call i32 @llvm.ctpop.i32(i32 %2)
  %4 = and i32 %3, 1
  %PF = icmp eq i32 %4, 0
  %ZF = icmp eq i32 %ECX, 0
  %highbit = and i32 -2147483648, %ECX
  %SF = icmp ne i32 %highbit, 0
  %5 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload1, i32 1)
  %OF = extractvalue { i32, i1 } %5, 1
  %EAX = mul nsw i32 %memload, %ECX
  %6 = sext i32 %EAX to i64
  %7 = lshr i64 %6, 32
  %EDX = trunc i64 %7 to i32
  %8 = sext i32 %EAX to i64
  %9 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %9, 32
  %dividend = or i64 %div_hb_ls, %8
  %10 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %10
  %EAX2 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %10
  %EDX3 = trunc i64 %div_r to i32
  ret i32 %EAX2
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
