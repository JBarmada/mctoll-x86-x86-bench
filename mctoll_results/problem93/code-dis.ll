; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local float @roundf(float)

define dso_local i32 @func0(double %arg1, double %arg2, double %arg3) {
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
  %3 = bitcast double %arg1 to <2 x float>
  %4 = extractelement <2 x float> %3, i64 0
  store float %4, ptr %RBP_N.8, align 1
  %5 = ptrtoint ptr %stktop_8 to i64
  %6 = add i64 %5, 4
  %7 = bitcast double %arg2 to <2 x float>
  %8 = extractelement <2 x float> %7, i64 0
  %9 = inttoptr i64 %6 to ptr
  store float %8, ptr %9, align 1
  %10 = bitcast double %arg3 to <2 x float>
  %11 = extractelement <2 x float> %10, i64 0
  store float %11, ptr %stktop_8, align 1
  %memload = load float, ptr %RBP_N.8, align 1
  %XMM0 = call float @roundf(float %memload)
  %12 = insertelement <4 x float> zeroinitializer, float %XMM0, i64 0
  %13 = bitcast <4 x float> %12 to <4 x float>
  %memload1 = load <4 x float>, ptr %RBP_N.8, align 1
  %cmp_operand_1 = extractelement <4 x float> %13, i64 0
  %cmp_operand_2 = extractelement <4 x float> %memload1, i64 0
  %CF = fcmp ult float %cmp_operand_1, %cmp_operand_2
  %ZF = fcmp ueq float %cmp_operand_1, %cmp_operand_2
  %PF = fcmp uno float %cmp_operand_1, %cmp_operand_2
  %CmpZF_JNE = icmp eq i1 %ZF, false
  br i1 %CmpZF_JNE, label %bb.3, label %bb.1

bb.1:                                             ; preds = %entry
  %CmpPF_JP = icmp eq i1 %PF, true
  br i1 %CmpPF_JP, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  br label %bb.4

bb.4:                                             ; preds = %bb.2
  %14 = ptrtoint ptr %stktop_8 to i64
  %15 = add i64 %14, 4
  %16 = inttoptr i64 %15 to ptr
  %memload2 = load float, ptr %16, align 1
  %XMM03 = call float @roundf(float %memload2)
  %17 = ptrtoint ptr %stktop_8 to i64
  %18 = add i64 %17, 4
  %19 = insertelement <4 x float> zeroinitializer, float %XMM03, i64 0
  %20 = bitcast <4 x float> %19 to <4 x float>
  %21 = inttoptr i64 %18 to ptr
  %memload4 = load <4 x float>, ptr %21, align 1
  %cmp_operand_15 = extractelement <4 x float> %20, i64 0
  %cmp_operand_26 = extractelement <4 x float> %memload4, i64 0
  %CF7 = fcmp ult float %cmp_operand_15, %cmp_operand_26
  %ZF8 = fcmp ueq float %cmp_operand_15, %cmp_operand_26
  %PF9 = fcmp uno float %cmp_operand_15, %cmp_operand_26
  %CmpZF_JNE46 = icmp eq i1 %ZF8, false
  br i1 %CmpZF_JNE46, label %bb.7, label %bb.5

bb.5:                                             ; preds = %bb.4
  %CmpPF_JP47 = icmp eq i1 %PF9, true
  br i1 %CmpPF_JP47, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  br label %bb.8

bb.8:                                             ; preds = %bb.6
  %memload10 = load float, ptr %stktop_8, align 1
  %XMM011 = call float @roundf(float %memload10)
  %22 = insertelement <4 x float> zeroinitializer, float %XMM011, i64 0
  %23 = bitcast <4 x float> %22 to <4 x float>
  %memload12 = load <4 x float>, ptr %stktop_8, align 1
  %cmp_operand_113 = extractelement <4 x float> %23, i64 0
  %cmp_operand_214 = extractelement <4 x float> %memload12, i64 0
  %CF15 = fcmp ult float %cmp_operand_113, %cmp_operand_214
  %ZF16 = fcmp ueq float %cmp_operand_113, %cmp_operand_214
  %PF17 = fcmp uno float %cmp_operand_113, %cmp_operand_214
  %CmpZF_JNE48 = icmp eq i1 %ZF16, false
  br i1 %CmpZF_JNE48, label %bb.11, label %bb.9

bb.9:                                             ; preds = %bb.8
  %CmpPF_JP49 = icmp eq i1 %PF17, true
  br i1 %CmpPF_JP49, label %bb.11, label %bb.10

bb.10:                                            ; preds = %bb.9
  br label %bb.12

bb.12:                                            ; preds = %bb.10
  %memload18 = load float, ptr %RBP_N.8, align 1
  %24 = ptrtoint ptr %stktop_8 to i64
  %25 = add i64 %24, 4
  %26 = inttoptr i64 %25 to ptr
  %memload19 = load float, ptr %26, align 1
  %XMM020 = fadd float %memload18, %memload19
  %27 = insertelement <4 x float> zeroinitializer, float %XMM020, i64 0
  %28 = bitcast <4 x float> %27 to <4 x float>
  %memload21 = load <4 x float>, ptr %stktop_8, align 1
  %cmp_operand_122 = extractelement <4 x float> %28, i64 0
  %cmp_operand_223 = extractelement <4 x float> %memload21, i64 0
  %CF24 = fcmp ult float %cmp_operand_122, %cmp_operand_223
  %ZF25 = fcmp ueq float %cmp_operand_122, %cmp_operand_223
  %PF26 = fcmp uno float %cmp_operand_122, %cmp_operand_223
  %CmpZF_JNE50 = icmp eq i1 %ZF25, false
  br i1 %CmpZF_JNE50, label %bb.15, label %bb.13

bb.13:                                            ; preds = %bb.12
  %CmpPF_JP51 = icmp eq i1 %PF26, true
  br i1 %CmpPF_JP51, label %bb.15, label %bb.14

bb.14:                                            ; preds = %bb.13
  br label %bb.20

bb.15:                                            ; preds = %bb.13, %bb.12
  %memload27 = load float, ptr %RBP_N.8, align 1
  %memload28 = load float, ptr %stktop_8, align 1
  %XMM029 = fadd float %memload27, %memload28
  %29 = ptrtoint ptr %stktop_8 to i64
  %30 = add i64 %29, 4
  %31 = insertelement <4 x float> zeroinitializer, float %XMM029, i64 0
  %32 = bitcast <4 x float> %31 to <4 x float>
  %33 = inttoptr i64 %30 to ptr
  %memload30 = load <4 x float>, ptr %33, align 1
  %cmp_operand_131 = extractelement <4 x float> %32, i64 0
  %cmp_operand_232 = extractelement <4 x float> %memload30, i64 0
  %CF33 = fcmp ult float %cmp_operand_131, %cmp_operand_232
  %ZF34 = fcmp ueq float %cmp_operand_131, %cmp_operand_232
  %PF35 = fcmp uno float %cmp_operand_131, %cmp_operand_232
  %CmpZF_JNE52 = icmp eq i1 %ZF34, false
  br i1 %CmpZF_JNE52, label %bb.18, label %bb.16

bb.16:                                            ; preds = %bb.15
  %CmpPF_JP53 = icmp eq i1 %PF35, true
  br i1 %CmpPF_JP53, label %bb.18, label %bb.17

bb.17:                                            ; preds = %bb.16
  br label %bb.20

bb.18:                                            ; preds = %bb.16, %bb.15
  %34 = ptrtoint ptr %stktop_8 to i64
  %35 = add i64 %34, 4
  %36 = inttoptr i64 %35 to ptr
  %memload36 = load float, ptr %36, align 1
  %memload37 = load float, ptr %stktop_8, align 1
  %XMM038 = fadd float %memload36, %memload37
  %37 = insertelement <4 x float> zeroinitializer, float %XMM038, i64 0
  %38 = bitcast <4 x float> %37 to <4 x float>
  %memload39 = load <4 x float>, ptr %RBP_N.8, align 1
  %cmp_operand_140 = extractelement <4 x float> %38, i64 0
  %cmp_operand_241 = extractelement <4 x float> %memload39, i64 0
  %CF42 = fcmp ult float %cmp_operand_140, %cmp_operand_241
  %ZF43 = fcmp ueq float %cmp_operand_140, %cmp_operand_241
  %PF44 = fcmp uno float %cmp_operand_140, %cmp_operand_241
  %CmpZF_JNE54 = icmp eq i1 %ZF43, false
  br i1 %CmpZF_JNE54, label %bb.21, label %bb.19

bb.19:                                            ; preds = %bb.18
  %CmpPF_JP55 = icmp eq i1 %PF44, true
  br i1 %CmpPF_JP55, label %bb.21, label %bb.20

bb.20:                                            ; preds = %bb.19, %bb.17, %bb.14
  store i32 1, ptr %RBP_N.4, align 1
  br label %bb.22

bb.21:                                            ; preds = %bb.19, %bb.18
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.22

bb.11:                                            ; preds = %bb.9, %bb.8
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.22

bb.7:                                             ; preds = %bb.5, %bb.4
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.22

bb.3:                                             ; preds = %bb.1, %entry
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.22

bb.22:                                            ; preds = %bb.21, %bb.3, %bb.7, %bb.11, %bb.20
  %memload45 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload45
}
