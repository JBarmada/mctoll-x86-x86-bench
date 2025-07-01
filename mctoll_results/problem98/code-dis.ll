; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i32 @abs(i32)

define dso_local i32 @func0(i32 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 24, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.8 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.4 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %2 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i32 %arg2, ptr %RBP_N.8, align 1
  %memload = load i32, ptr %RBP_N.4, align 1
  %EAX = call i32 @abs(i32 %memload)
  %3 = sext i32 %EAX to i64
  %4 = lshr i64 %3, 32
  %EDX = trunc i64 %4 to i32
  %5 = sext i32 %EAX to i64
  %6 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %6, 32
  %dividend = or i64 %div_hb_ls, %5
  %7 = sext i32 10 to i64
  %div_q = sdiv i64 %dividend, %7
  %EAX1 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %7
  %EDX2 = trunc i64 %div_r to i32
  %8 = ptrtoint ptr %stktop_8 to i64
  %9 = add i64 %8, 4
  %10 = inttoptr i64 %9 to ptr
  store i32 %EDX2, ptr %10, align 1
  %memload3 = load i32, ptr %RBP_N.8, align 1
  %EAX4 = call i32 @abs(i32 %memload3)
  %11 = sext i32 %EAX4 to i64
  %12 = lshr i64 %11, 32
  %EDX5 = trunc i64 %12 to i32
  %13 = sext i32 %EAX4 to i64
  %14 = sext i32 %EDX5 to i64
  %div_hb_ls6 = shl nuw i64 %14, 32
  %dividend7 = or i64 %div_hb_ls6, %13
  %15 = sext i32 10 to i64
  %div_q8 = sdiv i64 %dividend7, %15
  %EAX9 = trunc i64 %div_q8 to i32
  %div_r10 = srem i64 %dividend7, %15
  %EDX11 = trunc i64 %div_r10 to i32
  %16 = ptrtoint ptr %stktop_8 to i64
  %17 = add i64 %16, 4
  %18 = inttoptr i64 %17 to ptr
  %memload12 = load i32, ptr %18, align 1
  %EAX13 = mul nsw i32 %memload12, %EDX11
  ret i32 %EAX13
}
