; ModuleID = 'original_binaries/problem1_test'
source_filename = "original_binaries/problem1_test"

@rodata_17 = private unnamed_addr constant [450 x i8] c"\01\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\FF\FF\FF\FF\FF\FF\7F\FF\FF\FF\FF\FF\FF\FF\7F\9A\99\99>\CD\CCL=33s?\CD\CCL?\00\00\00@\00\00\80?\00\00\00?\00\00\00\00\00\00\80?\00\00\00@\9A\99y@\00\00\80@\00\00\A0@\CD\CC\0C@\00\00\00\00\00\00\00\00\00\00\80?\00\00\00@\CD\CC\BC@\00\00\80@\00\00\A0@\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80?\00\00\00@\00\00@@\00\00\80@\00\00\A0@\00\00\00\00\00\00\00\00\00\00\00\00\CD\CC\8C?\CD\CC\0C@ffF@33\83@33\A3@Testing case 1\0A\00func0(a, 6, 0.3) == 1\00./problem1/test.c\00int main()\00func0(a, 6, 0.05) == 10\00Testing case 2\0A\00func0(b, 5, 0.95) == 1\00func0(b, 5, 0.8) == 10\00Testing case 3\0A\00func0(c, 5, 2.0) == 1\00Testing case 4\0A\00func0(d, 5, 1.0) == 1\00func0(d, 5, 0.5) == 10\00All tests passed\0A\00", align 16, !ROData_SecInfo !0

define dso_local i32 @func0(i64 %arg1, i32 %arg2, double %arg3, double %arg4) {
entry:
  %stktop_4 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.28 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.4 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  %6 = bitcast double %arg3 to <2 x float>
  %7 = extractelement <2 x float> %6, i64 0
  store float %7, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.9
  %memload = load i32, ptr %RBP_N.28, align 1
  %8 = load i32, ptr %RBP_N.20, align 1
  %9 = sub i32 %memload, %8
  %10 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %8)
  %CF = extractvalue { i32, i1 } %10, 1
  %ZF = icmp eq i32 %9, 0
  %highbit = and i32 -2147483648, %9
  %SF = icmp ne i32 %highbit, 0
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %8)
  %OF = extractvalue { i32, i1 } %11, 1
  %12 = and i32 %9, 255
  %13 = call i32 @llvm.ctpop.i32(i32 %12)
  %14 = and i32 %13, 1
  %PF = icmp eq i32 %14, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.10, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i32, ptr %RBP_N.28, align 1
  %EAX = add i32 %memload1, 1
  %15 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload1, i32 1)
  %CF2 = extractvalue { i32, i1 } %15, 1
  %16 = and i32 %EAX, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = and i32 %17, 1
  %PF3 = icmp eq i32 %18, 0
  %ZF4 = icmp eq i32 %EAX, 0
  %highbit5 = and i32 -2147483648, %EAX
  %SF6 = icmp ne i32 %highbit5, 0
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload1, i32 1)
  %OF7 = extractvalue { i32, i1 } %19, 1
  store i32 %EAX, ptr %stktop_4, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %memload8 = load i32, ptr %stktop_4, align 1
  %20 = load i32, ptr %RBP_N.20, align 1
  %21 = sub i32 %memload8, %20
  %22 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload8, i32 %20)
  %CF9 = extractvalue { i32, i1 } %22, 1
  %ZF10 = icmp eq i32 %21, 0
  %highbit11 = and i32 -2147483648, %21
  %SF12 = icmp ne i32 %highbit11, 0
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload8, i32 %20)
  %OF13 = extractvalue { i32, i1 } %23, 1
  %24 = and i32 %21, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = and i32 %25, 1
  %PF14 = icmp eq i32 %26, 0
  %CmpSFOF_JGE48 = icmp eq i1 %SF12, %OF13
  br i1 %CmpSFOF_JGE48, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload15 = load i64, ptr %RBP_N.16, align 1
  %memload16 = load i64, ptr %RBP_N.28, align 1
  %27 = trunc i64 %memload16 to i32
  %RCX = sext i32 %27 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload15, %memref-idxreg
  %28 = inttoptr i64 %memref-basereg to ptr
  %memload17 = load float, ptr %28, align 1
  %memload18 = load i64, ptr %RBP_N.16, align 1
  %memload19 = load i64, ptr %stktop_4, align 1
  %29 = trunc i64 %memload19 to i32
  %RCX20 = sext i32 %29 to i64
  %memref-idxreg21 = mul i64 4, %RCX20
  %memref-basereg22 = add i64 %memload18, %memref-idxreg21
  %30 = inttoptr i64 %memref-basereg22 to ptr
  %memload23 = load float, ptr %30, align 1
  %XMM0 = fsub float %memload17, %memload23
  %cvt = fpext float %XMM0 to double
  %memload24 = load <4 x float>, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 16), align 1, !ROData_Content !1
  %31 = insertelement <2 x double> zeroinitializer, double %cvt, i64 0
  %32 = bitcast <2 x double> %31 to <4 x i32>
  %33 = bitcast <4 x float> %memload24 to <4 x i32>
  %bitwise_operand = bitcast <4 x i32> %32 to i128
  %bitwise_operand25 = bitcast <4 x i32> %33 to i128
  %and_result = and i128 %bitwise_operand, %bitwise_operand25
  %bitcast_result = bitcast i128 %and_result to <4 x i32>
  %memload26 = load float, ptr %RBP_N.24, align 1
  %cvt27 = fpext float %memload26 to double
  %34 = insertelement <2 x double> zeroinitializer, double %cvt27, i64 0
  %35 = bitcast <2 x double> %34 to <2 x double>
  %36 = bitcast <4 x i32> %bitcast_result to <2 x double>
  %cmp_operand_1 = extractelement <2 x double> %35, i64 0
  %cmp_operand_2 = extractelement <2 x double> %36, i64 0
  %CF28 = fcmp ult double %cmp_operand_1, %cmp_operand_2
  %ZF29 = fcmp ueq double %cmp_operand_1, %cmp_operand_2
  %PF30 = fcmp uno double %cmp_operand_1, %cmp_operand_2
  %CFCmp_JBE = icmp eq i1 %CF28, true
  %ZFCmp_JBE = icmp eq i1 %ZF29, true
  %CFAndZF_JBE = or i1 %ZFCmp_JBE, %CFCmp_JBE
  br i1 %CFAndZF_JBE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  store i32 1, ptr %RBP_N.4, align 1
  br label %bb.11

bb.6:                                             ; preds = %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload31 = load i32, ptr %stktop_4, align 1
  %EAX38 = add i32 %memload31, 1
  %37 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload31, i32 1)
  %CF32 = extractvalue { i32, i1 } %37, 1
  %38 = and i32 %EAX38, 255
  %39 = call i32 @llvm.ctpop.i32(i32 %38)
  %40 = and i32 %39, 1
  %PF33 = icmp eq i32 %40, 0
  %ZF34 = icmp eq i32 %EAX38, 0
  %highbit35 = and i32 -2147483648, %EAX38
  %SF36 = icmp ne i32 %highbit35, 0
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload31, i32 1)
  %OF37 = extractvalue { i32, i1 } %41, 1
  store i32 %EAX38, ptr %stktop_4, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.3
  br label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload39 = load i32, ptr %RBP_N.28, align 1
  %EAX46 = add i32 %memload39, 1
  %42 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload39, i32 1)
  %CF40 = extractvalue { i32, i1 } %42, 1
  %43 = and i32 %EAX46, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF41 = icmp eq i32 %45, 0
  %ZF42 = icmp eq i32 %EAX46, 0
  %highbit43 = and i32 -2147483648, %EAX46
  %SF44 = icmp ne i32 %highbit43, 0
  %46 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload39, i32 1)
  %OF45 = extractvalue { i32, i1 } %46, 1
  store i32 %EAX46, ptr %RBP_N.28, align 1
  br label %bb.1

bb.10:                                            ; preds = %bb.1
  store i32 10, ptr %RBP_N.4, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.5
  %memload47 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload47
}

declare dso_local i32 @printf(ptr, ...)

declare dso_local void @__assert_fail(ptr, ptr, i32, ptr)

define dso_local i32 @main() {
entry:
  %stktop_8 = alloca i8, i32 136, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.120 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.112 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 40
  %RBP_N.96 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 48
  %RBP_N.88 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 56
  %RBP_N.80 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 72
  %RBP_N.64 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 80
  %RBP_N.56 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 88
  %RBP_N.48 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 104
  %RBP_N.32 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 112
  %RBP_N.24 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 120
  %RBP_N.16 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 132
  %RBP_N.4 = inttoptr i64 %11 to ptr
  %12 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %12 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 0, ptr %RBP_N.4, align 1
  %memload = load i64, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 64), align 1, !ROData_Content !2
  store i64 %memload, ptr %RBP_N.32, align 1
  %memload1 = load i64, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 72), align 1, !ROData_Content !3
  store i64 %memload1, ptr %RBP_N.24, align 1
  %memload2 = load i64, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 80), align 1, !ROData_Content !4
  store i64 %memload2, ptr %RBP_N.16, align 1
  %EAX = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 180))
  %RDI3 = ptrtoint ptr %RBP_N.32 to i64
  %memload4 = load float, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 32), align 1, !ROData_Content !5
  %13 = insertelement <2 x float> zeroinitializer, float %memload4, i64 0
  %14 = bitcast <2 x float> %13 to double
  %EAX5 = call i32 @func0(i64 %RDI3, i32 6, double %14, double 0.000000e+00)
  %15 = sub i32 %EAX5, 1
  %16 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX5, i32 1)
  %CF = extractvalue { i32, i1 } %16, 1
  %ZF = icmp eq i32 %15, 0
  %highbit = and i32 -2147483648, %15
  %SF = icmp ne i32 %highbit, 0
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX5, i32 1)
  %OF = extractvalue { i32, i1 } %17, 1
  %18 = and i32 %15, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = and i32 %19, 1
  %PF = icmp eq i32 %20, 0
  %CmpZF_JNE = icmp eq i1 %ZF, false
  br i1 %CmpZF_JNE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  br label %bb.3

bb.2:                                             ; preds = %entry
  tail call void @__assert_fail(ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 196), ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 218), i32 9, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 236))
  br label %UnifiedUnreachableBlock

bb.3:                                             ; preds = %bb.1
  %RDI7 = ptrtoint ptr %RBP_N.32 to i64
  %memload8 = load float, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 36), align 1, !ROData_Content !6
  %21 = insertelement <2 x float> zeroinitializer, float %memload8, i64 0
  %22 = bitcast <2 x float> %21 to double
  %EAX9 = call i32 @func0(i64 %RDI7, i32 6, double %22, double 0.000000e+00)
  %23 = sub i32 %EAX9, 10
  %24 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX9, i32 10)
  %CF10 = extractvalue { i32, i1 } %24, 1
  %ZF11 = icmp eq i32 %23, 0
  %highbit12 = and i32 -2147483648, %23
  %SF13 = icmp ne i32 %highbit12, 0
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX9, i32 10)
  %OF14 = extractvalue { i32, i1 } %25, 1
  %26 = and i32 %23, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF15 = icmp eq i32 %28, 0
  %CmpZF_JNE96 = icmp eq i1 %ZF11, false
  br i1 %CmpZF_JNE96, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  br label %bb.6

bb.5:                                             ; preds = %bb.3
  tail call void @__assert_fail(ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 247), ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 218), i32 10, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 236))
  br label %UnifiedUnreachableBlock

bb.6:                                             ; preds = %bb.4
  %memload19 = load i64, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 96), align 1, !ROData_Content !7
  store i64 %memload19, ptr %RBP_N.64, align 1
  %memload20 = load i64, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 104), align 1, !ROData_Content !8
  store i64 %memload20, ptr %RBP_N.56, align 1
  %memload21 = load i32, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 112), align 1, !ROData_Content !9
  store i32 %memload21, ptr %RBP_N.48, align 1
  %EAX23 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 271))
  %RDI24 = ptrtoint ptr %RBP_N.64 to i64
  %memload25 = load float, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 40), align 1, !ROData_Content !10
  %29 = insertelement <2 x float> zeroinitializer, float %memload25, i64 0
  %30 = bitcast <2 x float> %29 to double
  %EAX26 = call i32 @func0(i64 %RDI24, i32 5, double %30, double 0.000000e+00)
  %31 = sub i32 %EAX26, 1
  %32 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX26, i32 1)
  %CF27 = extractvalue { i32, i1 } %32, 1
  %ZF28 = icmp eq i32 %31, 0
  %highbit29 = and i32 -2147483648, %31
  %SF30 = icmp ne i32 %highbit29, 0
  %33 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX26, i32 1)
  %OF31 = extractvalue { i32, i1 } %33, 1
  %34 = and i32 %31, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = and i32 %35, 1
  %PF32 = icmp eq i32 %36, 0
  %CmpZF_JNE97 = icmp eq i1 %ZF28, false
  br i1 %CmpZF_JNE97, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  br label %bb.9

bb.8:                                             ; preds = %bb.6
  tail call void @__assert_fail(ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 287), ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 218), i32 14, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 236))
  br label %UnifiedUnreachableBlock

bb.9:                                             ; preds = %bb.7
  %RDI36 = ptrtoint ptr %RBP_N.64 to i64
  %memload37 = load float, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 44), align 1, !ROData_Content !11
  %37 = insertelement <2 x float> zeroinitializer, float %memload37, i64 0
  %38 = bitcast <2 x float> %37 to double
  %EAX38 = call i32 @func0(i64 %RDI36, i32 5, double %38, double 0.000000e+00)
  %39 = sub i32 %EAX38, 10
  %40 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX38, i32 10)
  %CF39 = extractvalue { i32, i1 } %40, 1
  %ZF40 = icmp eq i32 %39, 0
  %highbit41 = and i32 -2147483648, %39
  %SF42 = icmp ne i32 %highbit41, 0
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX38, i32 10)
  %OF43 = extractvalue { i32, i1 } %41, 1
  %42 = and i32 %39, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = and i32 %43, 1
  %PF44 = icmp eq i32 %44, 0
  %CmpZF_JNE98 = icmp eq i1 %ZF40, false
  br i1 %CmpZF_JNE98, label %bb.11, label %bb.10

bb.10:                                            ; preds = %bb.9
  br label %bb.12

bb.11:                                            ; preds = %bb.9
  tail call void @__assert_fail(ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 310), ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 218), i32 15, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 236))
  br label %UnifiedUnreachableBlock

bb.12:                                            ; preds = %bb.10
  %memload48 = load i64, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 128), align 1, !ROData_Content !12
  store i64 %memload48, ptr %RBP_N.96, align 1
  %memload49 = load i64, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 136), align 1, !ROData_Content !13
  store i64 %memload49, ptr %RBP_N.88, align 1
  %memload50 = load i32, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 144), align 1, !ROData_Content !14
  store i32 %memload50, ptr %RBP_N.80, align 1
  %EAX52 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 333))
  %RDI53 = ptrtoint ptr %RBP_N.96 to i64
  %memload54 = load float, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 48), align 1, !ROData_Content !15
  %45 = insertelement <2 x float> zeroinitializer, float %memload54, i64 0
  %46 = bitcast <2 x float> %45 to double
  %EAX55 = call i32 @func0(i64 %RDI53, i32 5, double %46, double 0.000000e+00)
  %47 = sub i32 %EAX55, 1
  %48 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX55, i32 1)
  %CF56 = extractvalue { i32, i1 } %48, 1
  %ZF57 = icmp eq i32 %47, 0
  %highbit58 = and i32 -2147483648, %47
  %SF59 = icmp ne i32 %highbit58, 0
  %49 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX55, i32 1)
  %OF60 = extractvalue { i32, i1 } %49, 1
  %50 = and i32 %47, 255
  %51 = call i32 @llvm.ctpop.i32(i32 %50)
  %52 = and i32 %51, 1
  %PF61 = icmp eq i32 %52, 0
  %CmpZF_JNE99 = icmp eq i1 %ZF57, false
  br i1 %CmpZF_JNE99, label %bb.14, label %bb.13

bb.13:                                            ; preds = %bb.12
  br label %bb.15

bb.14:                                            ; preds = %bb.12
  tail call void @__assert_fail(ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 349), ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 218), i32 19, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 236))
  br label %UnifiedUnreachableBlock

bb.15:                                            ; preds = %bb.13
  %memload65 = load i64, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 160), align 1, !ROData_Content !16
  store i64 %memload65, ptr %stktop_8, align 1
  %memload66 = load i64, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 168), align 1, !ROData_Content !17
  store i64 %memload66, ptr %RBP_N.120, align 1
  %memload67 = load i32, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 176), align 1, !ROData_Content !18
  store i32 %memload67, ptr %RBP_N.112, align 1
  %EAX69 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 371))
  %RDI70 = ptrtoint ptr %stktop_8 to i64
  %memload71 = load float, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 52), align 1, !ROData_Content !19
  %53 = insertelement <2 x float> zeroinitializer, float %memload71, i64 0
  %54 = bitcast <2 x float> %53 to double
  %EAX72 = call i32 @func0(i64 %RDI70, i32 5, double %54, double 0.000000e+00)
  %55 = sub i32 %EAX72, 1
  %56 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX72, i32 1)
  %CF73 = extractvalue { i32, i1 } %56, 1
  %ZF74 = icmp eq i32 %55, 0
  %highbit75 = and i32 -2147483648, %55
  %SF76 = icmp ne i32 %highbit75, 0
  %57 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX72, i32 1)
  %OF77 = extractvalue { i32, i1 } %57, 1
  %58 = and i32 %55, 255
  %59 = call i32 @llvm.ctpop.i32(i32 %58)
  %60 = and i32 %59, 1
  %PF78 = icmp eq i32 %60, 0
  %CmpZF_JNE100 = icmp eq i1 %ZF74, false
  br i1 %CmpZF_JNE100, label %bb.17, label %bb.16

bb.16:                                            ; preds = %bb.15
  br label %bb.18

bb.17:                                            ; preds = %bb.15
  tail call void @__assert_fail(ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 387), ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 218), i32 23, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 236))
  br label %UnifiedUnreachableBlock

bb.18:                                            ; preds = %bb.16
  %RDI82 = ptrtoint ptr %stktop_8 to i64
  %memload83 = load float, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 56), align 1, !ROData_Content !20
  %61 = insertelement <2 x float> zeroinitializer, float %memload83, i64 0
  %62 = bitcast <2 x float> %61 to double
  %EAX84 = call i32 @func0(i64 %RDI82, i32 5, double %62, double 0.000000e+00)
  %63 = sub i32 %EAX84, 10
  %64 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX84, i32 10)
  %CF85 = extractvalue { i32, i1 } %64, 1
  %ZF86 = icmp eq i32 %63, 0
  %highbit87 = and i32 -2147483648, %63
  %SF88 = icmp ne i32 %highbit87, 0
  %65 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX84, i32 10)
  %OF89 = extractvalue { i32, i1 } %65, 1
  %66 = and i32 %63, 255
  %67 = call i32 @llvm.ctpop.i32(i32 %66)
  %68 = and i32 %67, 1
  %PF90 = icmp eq i32 %68, 0
  %CmpZF_JNE101 = icmp eq i1 %ZF86, false
  br i1 %CmpZF_JNE101, label %bb.20, label %bb.19

bb.19:                                            ; preds = %bb.18
  br label %bb.21

bb.20:                                            ; preds = %bb.18
  tail call void @__assert_fail(ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 409), ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 218), i32 24, ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 236))
  br label %UnifiedUnreachableBlock

bb.21:                                            ; preds = %bb.19
  %EAX95 = call i32 (ptr, ...) @printf(ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 432))
  ret i32 0

UnifiedUnreachableBlock:                          ; preds = %bb.20, %bb.17, %bb.14, %bb.11, %bb.8, %bb.5, %bb.2
  unreachable
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

!0 = !{i64 8192}
!1 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 16)}
!2 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 64)}
!3 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 72)}
!4 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 80)}
!5 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 32)}
!6 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 36)}
!7 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 96)}
!8 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 104)}
!9 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 112)}
!10 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 40)}
!11 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 44)}
!12 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 128)}
!13 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 136)}
!14 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 144)}
!15 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 48)}
!16 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 160)}
!17 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 168)}
!18 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 176)}
!19 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 52)}
!20 = !{ptr getelementptr inbounds ([450 x i8], ptr @rodata_17, i32 0, i32 56)}
