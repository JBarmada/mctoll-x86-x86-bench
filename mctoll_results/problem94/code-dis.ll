; ModuleID = 'code.so'
source_filename = "code.so"

@rodata_13 = private unnamed_addr constant [11 x i8] c"aeiouAEIOU\00", align 1, !ROData_SecInfo !0

declare dso_local ptr @__ctype_b_loc()

declare dso_local i32 @toupper(i32)

declare dso_local i32 @tolower(i32)

define dso_local i64 @func0(i64 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 23
  %RBP_N.33 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  %RAX = ptrtoint ptr @rodata_13 to i64
  store i64 %RAX, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.15
  %memload = load i64, ptr %RBP_N.8, align 1
  %memload1 = load i64, ptr %RBP_N.28, align 1
  %7 = trunc i64 %memload1 to i32
  %RCX = sext i32 %7 to i64
  %memref-basereg = add i64 %memload, %RCX
  %8 = inttoptr i64 %memref-basereg to ptr
  %memload2 = load i32, ptr %8, align 1
  %9 = trunc i32 %memload2 to i8
  %EAX = sext i8 %9 to i32
  %10 = sub i32 %EAX, 0
  %11 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 0)
  %CF = extractvalue { i32, i1 } %11, 1
  %ZF = icmp eq i32 %10, 0
  %highbit = and i32 -2147483648, %10
  %SF = icmp ne i32 %highbit, 0
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 0)
  %OF = extractvalue { i32, i1 } %12, 1
  %13 = and i32 %10, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = and i32 %14, 1
  %PF = icmp eq i32 %15, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.16, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload3 = load i64, ptr %RBP_N.8, align 1
  %memload4 = load i64, ptr %RBP_N.28, align 1
  %16 = trunc i64 %memload4 to i32
  %RCX5 = sext i32 %16 to i64
  %memref-basereg6 = add i64 %memload3, %RCX5
  %17 = inttoptr i64 %memref-basereg6 to ptr
  %memload7 = load i8, ptr %17, align 1
  store i8 %memload7, ptr %RBP_N.33, align 1
  %18 = call ptr @__ctype_b_loc()
  %memload9 = load i64, ptr %18, align 1
  %memload10 = load i32, ptr %RBP_N.33, align 1
  %19 = trunc i32 %memload10 to i8
  %ECX = sext i8 %19 to i32
  %RCX11 = sext i32 %ECX to i64
  %memref-idxreg = mul i64 2, %RCX11
  %memref-basereg12 = add i64 %memload9, %memref-idxreg
  %20 = inttoptr i64 %memref-basereg12 to ptr
  %memload13 = load i32, ptr %20, align 1
  %21 = trunc i32 %memload13 to i16
  %EAX14 = zext i16 %21 to i32
  %EAX19 = and i32 %EAX14, 512
  %22 = and i32 %EAX19, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF15 = icmp eq i32 %24, 0
  %ZF16 = icmp eq i32 %EAX19, 0
  %highbit17 = and i32 -2147483648, %EAX19
  %SF18 = icmp ne i32 %highbit17, 0
  %25 = sub i32 %EAX19, 0
  %26 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX19, i32 0)
  %CF20 = extractvalue { i32, i1 } %26, 1
  %ZF21 = icmp eq i32 %25, 0
  %highbit22 = and i32 -2147483648, %25
  %SF23 = icmp ne i32 %highbit22, 0
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX19, i32 0)
  %OF24 = extractvalue { i32, i1 } %27, 1
  %28 = and i32 %25, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = and i32 %29, 1
  %PF25 = icmp eq i32 %30, 0
  %CmpZF_JE116 = icmp eq i1 %ZF21, true
  br i1 %CmpZF_JE116, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload26 = load i32, ptr %RBP_N.33, align 1
  %31 = trunc i32 %memload26 to i8
  %EDI = sext i8 %31 to i32
  %EAX27 = call i32 @toupper(i32 %EDI)
  %32 = trunc i32 %EAX27 to i8
  store i8 %32, ptr %RBP_N.33, align 1
  br label %bb.7

bb.4:                                             ; preds = %bb.2
  %33 = call ptr @__ctype_b_loc()
  %memload29 = load i64, ptr %33, align 1
  %memload30 = load i32, ptr %RBP_N.33, align 1
  %34 = trunc i32 %memload30 to i8
  %ECX31 = sext i8 %34 to i32
  %RCX32 = sext i32 %ECX31 to i64
  %memref-idxreg33 = mul i64 2, %RCX32
  %memref-basereg34 = add i64 %memload29, %memref-idxreg33
  %35 = inttoptr i64 %memref-basereg34 to ptr
  %memload35 = load i32, ptr %35, align 1
  %36 = trunc i32 %memload35 to i16
  %EAX36 = zext i16 %36 to i32
  %EAX41 = and i32 %EAX36, 256
  %37 = and i32 %EAX41, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF37 = icmp eq i32 %39, 0
  %ZF38 = icmp eq i32 %EAX41, 0
  %highbit39 = and i32 -2147483648, %EAX41
  %SF40 = icmp ne i32 %highbit39, 0
  %40 = sub i32 %EAX41, 0
  %41 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX41, i32 0)
  %CF42 = extractvalue { i32, i1 } %41, 1
  %ZF43 = icmp eq i32 %40, 0
  %highbit44 = and i32 -2147483648, %40
  %SF45 = icmp ne i32 %highbit44, 0
  %42 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX41, i32 0)
  %OF46 = extractvalue { i32, i1 } %42, 1
  %43 = and i32 %40, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF47 = icmp eq i32 %45, 0
  %CmpZF_JE117 = icmp eq i1 %ZF43, true
  br i1 %CmpZF_JE117, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload48 = load i32, ptr %RBP_N.33, align 1
  %46 = trunc i32 %memload48 to i8
  %EDI49 = sext i8 %46 to i32
  %EAX50 = call i32 @tolower(i32 %EDI49)
  %47 = trunc i32 %EAX50 to i8
  store i8 %47, ptr %RBP_N.33, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.3
  store i32 0, ptr %RBP_N.32, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.14
  %memload51 = load i64, ptr %RBP_N.24, align 1
  %memload52 = load i64, ptr %RBP_N.32, align 1
  %48 = trunc i64 %memload52 to i32
  %RCX53 = sext i32 %48 to i64
  %memref-basereg54 = add i64 %memload51, %RCX53
  %49 = inttoptr i64 %memref-basereg54 to ptr
  %memload55 = load i32, ptr %49, align 1
  %50 = trunc i32 %memload55 to i8
  %EAX56 = sext i8 %50 to i32
  %51 = sub i32 %EAX56, 0
  %52 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX56, i32 0)
  %CF57 = extractvalue { i32, i1 } %52, 1
  %ZF58 = icmp eq i32 %51, 0
  %highbit59 = and i32 -2147483648, %51
  %SF60 = icmp ne i32 %highbit59, 0
  %53 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX56, i32 0)
  %OF61 = extractvalue { i32, i1 } %53, 1
  %54 = and i32 %51, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54)
  %56 = and i32 %55, 1
  %PF62 = icmp eq i32 %56, 0
  %CmpZF_JE118 = icmp eq i1 %ZF58, true
  br i1 %CmpZF_JE118, label %bb.15, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload63 = load i32, ptr %RBP_N.33, align 1
  %57 = trunc i32 %memload63 to i8
  %EAX64 = sext i8 %57 to i32
  %memload65 = load i64, ptr %RBP_N.24, align 1
  %memload66 = load i64, ptr %RBP_N.32, align 1
  %58 = trunc i64 %memload66 to i32
  %RDX = sext i32 %58 to i64
  %memref-basereg67 = add i64 %memload65, %RDX
  %59 = inttoptr i64 %memref-basereg67 to ptr
  %memload68 = load i32, ptr %59, align 1
  %60 = trunc i32 %memload68 to i8
  %ECX69 = sext i8 %60 to i32
  %61 = sub i32 %EAX64, %ECX69
  %62 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX64, i32 %ECX69)
  %CF70 = extractvalue { i32, i1 } %62, 1
  %ZF71 = icmp eq i32 %61, 0
  %highbit72 = and i32 -2147483648, %61
  %SF73 = icmp ne i32 %highbit72, 0
  %63 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX64, i32 %ECX69)
  %OF74 = extractvalue { i32, i1 } %63, 1
  %64 = and i32 %61, 255
  %65 = call i32 @llvm.ctpop.i32(i32 %64)
  %66 = and i32 %65, 1
  %PF75 = icmp eq i32 %66, 0
  %CmpZF_JNE = icmp eq i1 %ZF71, false
  br i1 %CmpZF_JNE, label %bb.13, label %bb.10

bb.10:                                            ; preds = %bb.9
  %67 = load i32, ptr %RBP_N.32, align 1
  %68 = zext i32 %67 to i64
  %69 = zext i32 10 to i64
  %70 = sub i64 %68, %69
  %71 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %68, i64 %69)
  %CF76 = extractvalue { i64, i1 } %71, 1
  %ZF77 = icmp eq i64 %70, 0
  %highbit78 = and i64 -9223372036854775808, %70
  %SF79 = icmp ne i64 %highbit78, 0
  %72 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %68, i64 %69)
  %OF80 = extractvalue { i64, i1 } %72, 1
  %73 = and i64 %70, 255
  %74 = call i64 @llvm.ctpop.i64(i64 %73)
  %75 = and i64 %74, 1
  %PF81 = icmp eq i64 %75, 0
  %CmpSFOF_JGE = icmp eq i1 %SF79, %OF80
  br i1 %CmpSFOF_JGE, label %bb.12, label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload82 = load i32, ptr %RBP_N.33, align 1
  %76 = trunc i32 %memload82 to i8
  %EAX83 = sext i8 %76 to i32
  %EAX90 = add i32 %EAX83, 2
  %77 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EAX83, i32 2)
  %CF84 = extractvalue { i32, i1 } %77, 1
  %78 = and i32 %EAX90, 255
  %79 = call i32 @llvm.ctpop.i32(i32 %78)
  %80 = and i32 %79, 1
  %PF85 = icmp eq i32 %80, 0
  %ZF86 = icmp eq i32 %EAX90, 0
  %highbit87 = and i32 -2147483648, %EAX90
  %SF88 = icmp ne i32 %highbit87, 0
  %81 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EAX83, i32 2)
  %OF89 = extractvalue { i32, i1 } %81, 1
  %82 = trunc i32 %EAX90 to i8
  store i8 %82, ptr %RBP_N.33, align 1
  br label %bb.12

bb.12:                                            ; preds = %bb.11, %bb.10
  br label %bb.15

bb.13:                                            ; preds = %bb.9
  br label %bb.14

bb.14:                                            ; preds = %bb.13
  %memload91 = load i32, ptr %RBP_N.32, align 1
  %EAX98 = add i32 %memload91, 1
  %83 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload91, i32 1)
  %CF92 = extractvalue { i32, i1 } %83, 1
  %84 = and i32 %EAX98, 255
  %85 = call i32 @llvm.ctpop.i32(i32 %84)
  %86 = and i32 %85, 1
  %PF93 = icmp eq i32 %86, 0
  %ZF94 = icmp eq i32 %EAX98, 0
  %highbit95 = and i32 -2147483648, %EAX98
  %SF96 = icmp ne i32 %highbit95, 0
  %87 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload91, i32 1)
  %OF97 = extractvalue { i32, i1 } %87, 1
  store i32 %EAX98, ptr %RBP_N.32, align 1
  br label %bb.8

bb.15:                                            ; preds = %bb.12, %bb.8
  %memload99 = load i8, ptr %RBP_N.33, align 1
  %memload100 = load i64, ptr %RBP_N.16, align 1
  %memload101 = load i64, ptr %RBP_N.28, align 1
  %88 = trunc i64 %memload101 to i32
  %RCX102 = sext i32 %88 to i64
  %memref-basereg103 = add i64 %memload100, %RCX102
  %89 = inttoptr i64 %memref-basereg103 to ptr
  store i8 %memload99, ptr %89, align 1
  %memload104 = load i32, ptr %RBP_N.28, align 1
  %EAX111 = add i32 %memload104, 1
  %90 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload104, i32 1)
  %CF105 = extractvalue { i32, i1 } %90, 1
  %91 = and i32 %EAX111, 255
  %92 = call i32 @llvm.ctpop.i32(i32 %91)
  %93 = and i32 %92, 1
  %PF106 = icmp eq i32 %93, 0
  %ZF107 = icmp eq i32 %EAX111, 0
  %highbit108 = and i32 -2147483648, %EAX111
  %SF109 = icmp ne i32 %highbit108, 0
  %94 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload104, i32 1)
  %OF110 = extractvalue { i32, i1 } %94, 1
  store i32 %EAX111, ptr %RBP_N.28, align 1
  br label %bb.1

bb.16:                                            ; preds = %bb.1
  %memload112 = load i64, ptr %RBP_N.16, align 1
  %memload113 = load i64, ptr %RBP_N.28, align 1
  %95 = trunc i64 %memload113 to i32
  %RCX114 = sext i32 %95 to i64
  %memref-basereg115 = add i64 %memload112, %RCX114
  %96 = inttoptr i64 %memref-basereg115 to ptr
  store i8 0, ptr %96, align 1
  ret i64 %memload112
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 8192}
