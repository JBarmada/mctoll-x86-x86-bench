; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local float @func0(double %arg1, double %arg2) {
entry:
  %stktop_4 = alloca i8, i32 12, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %0 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  %1 = bitcast double %arg1 to <2 x float>
  %2 = extractelement <2 x float> %1, i64 0
  store float %2, ptr %stktop_4, align 1
  %memload = load float, ptr %stktop_4, align 1
  %memload1 = load float, ptr %stktop_4, align 1
  %cvt = fptosi float %memload1 to i32
  %cvt2 = sitofp i32 %cvt to float
  %XMM0 = fsub float %memload, %cvt2
  ret float %XMM0
}
