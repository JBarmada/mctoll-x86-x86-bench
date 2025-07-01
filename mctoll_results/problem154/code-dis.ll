; ModuleID = 'code.so'
source_filename = "code.so"

@0 = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1, !ROData_SecInfo !0

declare dso_local i32 @sprintf(ptr, ptr, ...)

define dso_local i32 @func0(i64 %arg1, i64 %arg2, i32 %arg3, i64 %arg4) {
entry:
  %stktop_8 = alloca i8, i32 88, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.72 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.68 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.64 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 36
  %RBP_N.52 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 40
  %RBP_N.48 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 52
  %RBP_N.36 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 56
  %RBP_N.32 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 68
  %RBP_N.20 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 72
  %RBP_N.16 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 80
  %RBP_N.8 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %10 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  store i32 %arg3, ptr %RBP_N.20, align 1
  store i64 %arg4, ptr %RBP_N.32, align 1
  store i32 -1000, ptr %RBP_N.36, align 1
  %11 = sext i32 0 to i64
  store i64 %11, ptr %RBP_N.48, align 1
  store i32 0, ptr %RBP_N.52, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.15
  %memload = load i32, ptr %RBP_N.52, align 1
  %12 = load i32, ptr %RBP_N.20, align 1
  %13 = sub i32 %memload, %12
  %14 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %12)
  %CF = extractvalue { i32, i1 } %14, 1
  %ZF = icmp eq i32 %13, 0
  %highbit = and i32 -2147483648, %13
  %SF = icmp ne i32 %highbit, 0
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %12)
  %OF = extractvalue { i32, i1 } %15, 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = and i32 %17, 1
  %PF = icmp eq i32 %18, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.16, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.16, align 1
  %memload2 = load i64, ptr %RBP_N.52, align 1
  %19 = trunc i64 %memload2 to i32
  %RCX = sext i32 %19 to i64
  %memref-idxreg = mul i64 8, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %20 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load i64, ptr %20, align 1
  store i64 %memload3, ptr %RBP_N.64, align 1
  store i32 0, ptr %RBP_N.68, align 1
  store i32 0, ptr %RBP_N.72, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.11
  %memload4 = load i64, ptr %RBP_N.64, align 1
  %memload5 = load i64, ptr %RBP_N.72, align 1
  %21 = trunc i64 %memload5 to i32
  %RCX6 = sext i32 %21 to i64
  %memref-basereg7 = add i64 %memload4, %RCX6
  %22 = inttoptr i64 %memref-basereg7 to ptr
  %memload8 = load i32, ptr %22, align 1
  %23 = trunc i32 %memload8 to i8
  %EAX = sext i8 %23 to i32
  %24 = sub i32 %EAX, 0
  %25 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 0)
  %CF9 = extractvalue { i32, i1 } %25, 1
  %ZF10 = icmp eq i32 %24, 0
  %highbit11 = and i32 -2147483648, %24
  %SF12 = icmp ne i32 %highbit11, 0
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 0)
  %OF13 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %24, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF14 = icmp eq i32 %29, 0
  %CmpZF_JE = icmp eq i1 %ZF10, true
  br i1 %CmpZF_JE, label %bb.12, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload15 = load i64, ptr %RBP_N.64, align 1
  %memload16 = load i64, ptr %RBP_N.72, align 1
  %30 = trunc i64 %memload16 to i32
  %RCX17 = sext i32 %30 to i64
  %memref-basereg18 = add i64 %memload15, %RCX17
  %31 = inttoptr i64 %memref-basereg18 to ptr
  %memload19 = load i8, ptr %31, align 1
  %32 = ptrtoint ptr %stktop_8 to i64
  %33 = add i64 %32, 7
  %34 = inttoptr i64 %33 to ptr
  store i8 %memload19, ptr %34, align 1
  %35 = ptrtoint ptr %stktop_8 to i64
  %36 = add i64 %35, 7
  %37 = inttoptr i64 %36 to ptr
  %memload20 = load i32, ptr %37, align 1
  %38 = trunc i32 %memload20 to i8
  %EAX21 = sext i8 %38 to i32
  %39 = sub i32 %EAX21, 65
  %40 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX21, i32 65)
  %CF22 = extractvalue { i32, i1 } %40, 1
  %ZF23 = icmp eq i32 %39, 0
  %highbit24 = and i32 -2147483648, %39
  %SF25 = icmp ne i32 %highbit24, 0
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX21, i32 65)
  %OF26 = extractvalue { i32, i1 } %41, 1
  %42 = and i32 %39, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = and i32 %43, 1
  %PF27 = icmp eq i32 %44, 0
  %SFAndOF_JL = icmp ne i1 %SF25, %OF26
  br i1 %SFAndOF_JL, label %bb.7, label %bb.5

bb.5:                                             ; preds = %bb.4
  %45 = ptrtoint ptr %stktop_8 to i64
  %46 = add i64 %45, 7
  %47 = inttoptr i64 %46 to ptr
  %memload28 = load i32, ptr %47, align 1
  %48 = trunc i32 %memload28 to i8
  %EAX29 = sext i8 %48 to i32
  %49 = sub i32 %EAX29, 90
  %50 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX29, i32 90)
  %CF30 = extractvalue { i32, i1 } %50, 1
  %ZF31 = icmp eq i32 %49, 0
  %highbit32 = and i32 -2147483648, %49
  %SF33 = icmp ne i32 %highbit32, 0
  %51 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX29, i32 90)
  %OF34 = extractvalue { i32, i1 } %51, 1
  %52 = and i32 %49, 255
  %53 = call i32 @llvm.ctpop.i32(i32 %52)
  %54 = and i32 %53, 1
  %PF35 = icmp eq i32 %54, 0
  %ZFCmp_JG = icmp eq i1 %ZF31, false
  %SFOFCmp_JG = icmp eq i1 %SF33, %OF34
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload36 = load i32, ptr %RBP_N.68, align 1
  %EAX43 = add i32 %memload36, 1
  %55 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload36, i32 1)
  %CF37 = extractvalue { i32, i1 } %55, 1
  %56 = and i32 %EAX43, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = and i32 %57, 1
  %PF38 = icmp eq i32 %58, 0
  %ZF39 = icmp eq i32 %EAX43, 0
  %highbit40 = and i32 -2147483648, %EAX43
  %SF41 = icmp ne i32 %highbit40, 0
  %59 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload36, i32 1)
  %OF42 = extractvalue { i32, i1 } %59, 1
  store i32 %EAX43, ptr %RBP_N.68, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.5, %bb.4
  %60 = ptrtoint ptr %stktop_8 to i64
  %61 = add i64 %60, 7
  %62 = inttoptr i64 %61 to ptr
  %memload44 = load i32, ptr %62, align 1
  %63 = trunc i32 %memload44 to i8
  %EAX45 = sext i8 %63 to i32
  %64 = sub i32 %EAX45, 97
  %65 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX45, i32 97)
  %CF46 = extractvalue { i32, i1 } %65, 1
  %ZF47 = icmp eq i32 %64, 0
  %highbit48 = and i32 -2147483648, %64
  %SF49 = icmp ne i32 %highbit48, 0
  %66 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX45, i32 97)
  %OF50 = extractvalue { i32, i1 } %66, 1
  %67 = and i32 %64, 255
  %68 = call i32 @llvm.ctpop.i32(i32 %67)
  %69 = and i32 %68, 1
  %PF51 = icmp eq i32 %69, 0
  %SFAndOF_JL97 = icmp ne i1 %SF49, %OF50
  br i1 %SFAndOF_JL97, label %bb.10, label %bb.8

bb.8:                                             ; preds = %bb.7
  %70 = ptrtoint ptr %stktop_8 to i64
  %71 = add i64 %70, 7
  %72 = inttoptr i64 %71 to ptr
  %memload52 = load i32, ptr %72, align 1
  %73 = trunc i32 %memload52 to i8
  %EAX53 = sext i8 %73 to i32
  %74 = sub i32 %EAX53, 122
  %75 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX53, i32 122)
  %CF54 = extractvalue { i32, i1 } %75, 1
  %ZF55 = icmp eq i32 %74, 0
  %highbit56 = and i32 -2147483648, %74
  %SF57 = icmp ne i32 %highbit56, 0
  %76 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX53, i32 122)
  %OF58 = extractvalue { i32, i1 } %76, 1
  %77 = and i32 %74, 255
  %78 = call i32 @llvm.ctpop.i32(i32 %77)
  %79 = and i32 %78, 1
  %PF59 = icmp eq i32 %79, 0
  %ZFCmp_JG98 = icmp eq i1 %ZF55, false
  %SFOFCmp_JG99 = icmp eq i1 %SF57, %OF58
  %ZFAndSFOF_JG100 = and i1 %ZFCmp_JG98, %SFOFCmp_JG99
  br i1 %ZFAndSFOF_JG100, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload60 = load i32, ptr %RBP_N.68, align 1
  %EAX67 = add i32 %memload60, -1
  %80 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload60, i32 -1)
  %CF61 = extractvalue { i32, i1 } %80, 1
  %81 = and i32 %EAX67, 255
  %82 = call i32 @llvm.ctpop.i32(i32 %81)
  %83 = and i32 %82, 1
  %PF62 = icmp eq i32 %83, 0
  %ZF63 = icmp eq i32 %EAX67, 0
  %highbit64 = and i32 -2147483648, %EAX67
  %SF65 = icmp ne i32 %highbit64, 0
  %84 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload60, i32 -1)
  %OF66 = extractvalue { i32, i1 } %84, 1
  store i32 %EAX67, ptr %RBP_N.68, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.8, %bb.7
  br label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload68 = load i32, ptr %RBP_N.72, align 1
  %EAX75 = add i32 %memload68, 1
  %85 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload68, i32 1)
  %CF69 = extractvalue { i32, i1 } %85, 1
  %86 = and i32 %EAX75, 255
  %87 = call i32 @llvm.ctpop.i32(i32 %86)
  %88 = and i32 %87, 1
  %PF70 = icmp eq i32 %88, 0
  %ZF71 = icmp eq i32 %EAX75, 0
  %highbit72 = and i32 -2147483648, %EAX75
  %SF73 = icmp ne i32 %highbit72, 0
  %89 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload68, i32 1)
  %OF74 = extractvalue { i32, i1 } %89, 1
  store i32 %EAX75, ptr %RBP_N.72, align 1
  br label %bb.3

bb.12:                                            ; preds = %bb.3
  %memload76 = load i32, ptr %RBP_N.68, align 1
  %90 = load i32, ptr %RBP_N.36, align 1
  %91 = sub i32 %memload76, %90
  %92 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload76, i32 %90)
  %CF77 = extractvalue { i32, i1 } %92, 1
  %ZF78 = icmp eq i32 %91, 0
  %highbit79 = and i32 -2147483648, %91
  %SF80 = icmp ne i32 %highbit79, 0
  %93 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload76, i32 %90)
  %OF81 = extractvalue { i32, i1 } %93, 1
  %94 = and i32 %91, 255
  %95 = call i32 @llvm.ctpop.i32(i32 %94)
  %96 = and i32 %95, 1
  %PF82 = icmp eq i32 %96, 0
  %CmpZF_JLE = icmp eq i1 %ZF78, true
  %CmpOF_JLE = icmp ne i1 %SF80, %OF81
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.14, label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload83 = load i32, ptr %RBP_N.68, align 1
  store i32 %memload83, ptr %RBP_N.36, align 1
  %memload84 = load i64, ptr %RBP_N.64, align 1
  store i64 %memload84, ptr %RBP_N.48, align 1
  br label %bb.14

bb.14:                                            ; preds = %bb.13, %bb.12
  br label %bb.15

bb.15:                                            ; preds = %bb.14
  %memload85 = load i32, ptr %RBP_N.52, align 1
  %EAX92 = add i32 %memload85, 1
  %97 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload85, i32 1)
  %CF86 = extractvalue { i32, i1 } %97, 1
  %98 = and i32 %EAX92, 255
  %99 = call i32 @llvm.ctpop.i32(i32 %98)
  %100 = and i32 %99, 1
  %PF87 = icmp eq i32 %100, 0
  %ZF88 = icmp eq i32 %EAX92, 0
  %highbit89 = and i32 -2147483648, %EAX92
  %SF90 = icmp ne i32 %highbit89, 0
  %101 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload85, i32 1)
  %OF91 = extractvalue { i32, i1 } %101, 1
  store i32 %EAX92, ptr %RBP_N.52, align 1
  br label %bb.1

bb.16:                                            ; preds = %bb.1
  %memload93 = load i64, ptr %RBP_N.32, align 1
  %memload94 = load i64, ptr %RBP_N.8, align 1
  %memload95 = load i64, ptr %RBP_N.48, align 1
  %102 = inttoptr i64 %memload93 to ptr
  %EAX96 = call i32 (ptr, ptr, ...) @sprintf(ptr %102, ptr @0, i64 %memload94, i64 %memload95)
  ret i32 %EAX96
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
