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
  %EAX = mul i32 %memload, %memload1
  ret i32 %EAX
}
