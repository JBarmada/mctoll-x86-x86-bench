; ModuleID = 'code.so'
source_filename = "code.so"

@rodata_13 = private unnamed_addr constant [22 x i8] c"No\00.txt\00.exe\00.dll\00Yes\00", align 1, !ROData_SecInfo !0

declare dso_local i64 @strlen(ptr)

declare dso_local i32 @strcmp(ptr, ptr)

define dso_local i64 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 27
  %RBP_N.29 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.24, align 1
  %memload = load i64, ptr %RBP_N.16, align 1
  %8 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %8)
  %9 = trunc i64 %RAX to i32
  store i32 %9, ptr %RBP_N.28, align 1
  %10 = load i32, ptr %RBP_N.28, align 1
  %11 = zext i32 %10 to i64
  %12 = zext i32 5 to i64
  %13 = sub i64 %11, %12
  %14 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %11, i64 %12)
  %CF = extractvalue { i64, i1 } %14, 1
  %ZF = icmp eq i64 %13, 0
  %highbit = and i64 -9223372036854775808, %13
  %SF = icmp ne i64 %highbit, 0
  %15 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %11, i64 %12)
  %OF = extractvalue { i64, i1 } %15, 1
  %16 = and i64 %13, 255
  %17 = call i64 @llvm.ctpop.i64(i64 %16)
  %18 = and i64 %17, 1
  %PF = icmp eq i64 %18, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %RAX1 = ptrtoint ptr @rodata_13 to i64
  store i64 %RAX1, ptr %RBP_N.8, align 1
  br label %bb.24

bb.2:                                             ; preds = %entry
  %memload2 = load i64, ptr %RBP_N.16, align 1
  %19 = inttoptr i64 %memload2 to ptr
  %memload3 = load i8, ptr %19, align 1
  store i8 %memload3, ptr %RBP_N.29, align 1
  %memload4 = load i32, ptr %RBP_N.29, align 1
  %20 = trunc i32 %memload4 to i8
  %EAX = sext i8 %20 to i32
  %21 = sub i32 %EAX, 65
  %22 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 65)
  %CF5 = extractvalue { i32, i1 } %22, 1
  %ZF6 = icmp eq i32 %21, 0
  %highbit7 = and i32 -2147483648, %21
  %SF8 = icmp ne i32 %highbit7, 0
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 65)
  %OF9 = extractvalue { i32, i1 } %23, 1
  %24 = and i32 %21, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = and i32 %25, 1
  %PF10 = icmp eq i32 %26, 0
  %SFAndOF_JL = icmp ne i1 %SF8, %OF9
  br i1 %SFAndOF_JL, label %bb.6, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload11 = load i32, ptr %RBP_N.29, align 1
  %27 = trunc i32 %memload11 to i8
  %EAX12 = sext i8 %27 to i32
  %28 = sub i32 %EAX12, 90
  %29 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX12, i32 90)
  %CF13 = extractvalue { i32, i1 } %29, 1
  %ZF14 = icmp eq i32 %28, 0
  %highbit15 = and i32 -2147483648, %28
  %SF16 = icmp ne i32 %highbit15, 0
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX12, i32 90)
  %OF17 = extractvalue { i32, i1 } %30, 1
  %31 = and i32 %28, 255
  %32 = call i32 @llvm.ctpop.i32(i32 %31)
  %33 = and i32 %32, 1
  %PF18 = icmp eq i32 %33, 0
  %CmpZF_JLE = icmp eq i1 %ZF14, true
  %CmpOF_JLE = icmp ne i1 %SF16, %OF17
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload19 = load i32, ptr %RBP_N.29, align 1
  %34 = trunc i32 %memload19 to i8
  %EAX20 = sext i8 %34 to i32
  %35 = sub i32 %EAX20, 97
  %36 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX20, i32 97)
  %CF21 = extractvalue { i32, i1 } %36, 1
  %ZF22 = icmp eq i32 %35, 0
  %highbit23 = and i32 -2147483648, %35
  %SF24 = icmp ne i32 %highbit23, 0
  %37 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX20, i32 97)
  %OF25 = extractvalue { i32, i1 } %37, 1
  %38 = and i32 %35, 255
  %39 = call i32 @llvm.ctpop.i32(i32 %38)
  %40 = and i32 %39, 1
  %PF26 = icmp eq i32 %40, 0
  %SFAndOF_JL157 = icmp ne i1 %SF24, %OF25
  br i1 %SFAndOF_JL157, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3
  %memload27 = load i32, ptr %RBP_N.29, align 1
  %41 = trunc i32 %memload27 to i8
  %EAX28 = sext i8 %41 to i32
  %42 = sub i32 %EAX28, 122
  %43 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX28, i32 122)
  %CF29 = extractvalue { i32, i1 } %43, 1
  %ZF30 = icmp eq i32 %42, 0
  %highbit31 = and i32 -2147483648, %42
  %SF32 = icmp ne i32 %highbit31, 0
  %44 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX28, i32 122)
  %OF33 = extractvalue { i32, i1 } %44, 1
  %45 = and i32 %42, 255
  %46 = call i32 @llvm.ctpop.i32(i32 %45)
  %47 = and i32 %46, 1
  %PF34 = icmp eq i32 %47, 0
  %CmpZF_JLE158 = icmp eq i1 %ZF30, true
  %CmpOF_JLE159 = icmp ne i1 %SF32, %OF33
  %ZFOrSF_JLE160 = or i1 %CmpZF_JLE158, %CmpOF_JLE159
  br i1 %ZFOrSF_JLE160, label %bb.7, label %bb.6

bb.7:                                             ; preds = %bb.5
  %memload35 = load i64, ptr %RBP_N.16, align 1
  %memload36 = load i64, ptr %RBP_N.28, align 1
  %48 = trunc i64 %memload36 to i32
  %RCX = sext i32 %48 to i64
  %RAX40 = add nsw i64 %memload35, %RCX
  %highbit37 = and i64 -9223372036854775808, %RAX40
  %SF38 = icmp ne i64 %highbit37, 0
  %ZF39 = icmp eq i64 %RAX40, 0
  %RAX47 = add i64 %RAX40, -4
  %49 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RAX40, i64 -4)
  %CF41 = extractvalue { i64, i1 } %49, 1
  %50 = and i64 %RAX47, 255
  %51 = call i64 @llvm.ctpop.i64(i64 %50)
  %52 = and i64 %51, 1
  %PF42 = icmp eq i64 %52, 0
  %ZF43 = icmp eq i64 %RAX47, 0
  %highbit44 = and i64 -9223372036854775808, %RAX47
  %SF45 = icmp ne i64 %highbit44, 0
  %53 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %RAX40, i64 -4)
  %OF46 = extractvalue { i64, i1 } %53, 1
  store i64 %RAX47, ptr %RBP_N.40, align 1
  %memload48 = load i64, ptr %RBP_N.40, align 1
  %54 = inttoptr i64 %memload48 to ptr
  %EAX49 = call i32 @strcmp(ptr %54, ptr getelementptr inbounds ([22 x i8], ptr @rodata_13, i32 0, i32 3))
  %55 = sub i32 %EAX49, 0
  %56 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX49, i32 0)
  %CF50 = extractvalue { i32, i1 } %56, 1
  %ZF51 = icmp eq i32 %55, 0
  %highbit52 = and i32 -2147483648, %55
  %SF53 = icmp ne i32 %highbit52, 0
  %57 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX49, i32 0)
  %OF54 = extractvalue { i32, i1 } %57, 1
  %58 = and i32 %55, 255
  %59 = call i32 @llvm.ctpop.i32(i32 %58)
  %60 = and i32 %59, 1
  %PF55 = icmp eq i32 %60, 0
  %CmpZF_JE = icmp eq i1 %ZF51, true
  br i1 %CmpZF_JE, label %bb.11, label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload56 = load i64, ptr %RBP_N.40, align 1
  %61 = inttoptr i64 %memload56 to ptr
  %EAX58 = call i32 @strcmp(ptr %61, ptr getelementptr inbounds ([22 x i8], ptr @rodata_13, i32 0, i32 8))
  %62 = sub i32 %EAX58, 0
  %63 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX58, i32 0)
  %CF59 = extractvalue { i32, i1 } %63, 1
  %ZF60 = icmp eq i32 %62, 0
  %highbit61 = and i32 -2147483648, %62
  %SF62 = icmp ne i32 %highbit61, 0
  %64 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX58, i32 0)
  %OF63 = extractvalue { i32, i1 } %64, 1
  %65 = and i32 %62, 255
  %66 = call i32 @llvm.ctpop.i32(i32 %65)
  %67 = and i32 %66, 1
  %PF64 = icmp eq i32 %67, 0
  %CmpZF_JE161 = icmp eq i1 %ZF60, true
  br i1 %CmpZF_JE161, label %bb.11, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload65 = load i64, ptr %RBP_N.40, align 1
  %68 = inttoptr i64 %memload65 to ptr
  %EAX67 = call i32 @strcmp(ptr %68, ptr getelementptr inbounds ([22 x i8], ptr @rodata_13, i32 0, i32 13))
  %69 = sub i32 %EAX67, 0
  %70 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX67, i32 0)
  %CF68 = extractvalue { i32, i1 } %70, 1
  %ZF69 = icmp eq i32 %69, 0
  %highbit70 = and i32 -2147483648, %69
  %SF71 = icmp ne i32 %highbit70, 0
  %71 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX67, i32 0)
  %OF72 = extractvalue { i32, i1 } %71, 1
  %72 = and i32 %69, 255
  %73 = call i32 @llvm.ctpop.i32(i32 %72)
  %74 = and i32 %73, 1
  %PF73 = icmp eq i32 %74, 0
  %CmpZF_JE162 = icmp eq i1 %ZF69, true
  br i1 %CmpZF_JE162, label %bb.11, label %bb.10

bb.10:                                            ; preds = %bb.9
  %RAX74 = ptrtoint ptr @rodata_13 to i64
  store i64 %RAX74, ptr %RBP_N.8, align 1
  br label %bb.24

bb.11:                                            ; preds = %bb.9, %bb.8, %bb.7
  %75 = ptrtoint ptr %stktop_8 to i64
  %76 = add i64 %75, 4
  %77 = inttoptr i64 %76 to ptr
  store i32 0, ptr %77, align 1
  br label %bb.12

bb.12:                                            ; preds = %bb.11, %bb.19
  %78 = ptrtoint ptr %stktop_8 to i64
  %79 = add i64 %78, 4
  %80 = inttoptr i64 %79 to ptr
  %memload75 = load i32, ptr %80, align 1
  %81 = load i32, ptr %RBP_N.28, align 1
  %82 = sub i32 %memload75, %81
  %83 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload75, i32 %81)
  %CF76 = extractvalue { i32, i1 } %83, 1
  %ZF77 = icmp eq i32 %82, 0
  %highbit78 = and i32 -2147483648, %82
  %SF79 = icmp ne i32 %highbit78, 0
  %84 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload75, i32 %81)
  %OF80 = extractvalue { i32, i1 } %84, 1
  %85 = and i32 %82, 255
  %86 = call i32 @llvm.ctpop.i32(i32 %85)
  %87 = and i32 %86, 1
  %PF81 = icmp eq i32 %87, 0
  %CmpSFOF_JGE163 = icmp eq i1 %SF79, %OF80
  br i1 %CmpSFOF_JGE163, label %bb.20, label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload82 = load i64, ptr %RBP_N.16, align 1
  %88 = ptrtoint ptr %stktop_8 to i64
  %89 = add i64 %88, 4
  %90 = inttoptr i64 %89 to ptr
  %memload83 = load i64, ptr %90, align 1
  %91 = trunc i64 %memload83 to i32
  %RCX84 = sext i32 %91 to i64
  %memref-basereg = add i64 %memload82, %RCX84
  %92 = inttoptr i64 %memref-basereg to ptr
  %memload85 = load i32, ptr %92, align 1
  %93 = trunc i32 %memload85 to i8
  %EAX86 = sext i8 %93 to i32
  %94 = sub i32 %EAX86, 48
  %95 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX86, i32 48)
  %CF87 = extractvalue { i32, i1 } %95, 1
  %ZF88 = icmp eq i32 %94, 0
  %highbit89 = and i32 -2147483648, %94
  %SF90 = icmp ne i32 %highbit89, 0
  %96 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX86, i32 48)
  %OF91 = extractvalue { i32, i1 } %96, 1
  %97 = and i32 %94, 255
  %98 = call i32 @llvm.ctpop.i32(i32 %97)
  %99 = and i32 %98, 1
  %PF92 = icmp eq i32 %99, 0
  %SFAndOF_JL164 = icmp ne i1 %SF90, %OF91
  br i1 %SFAndOF_JL164, label %bb.16, label %bb.14

bb.14:                                            ; preds = %bb.13
  %memload93 = load i64, ptr %RBP_N.16, align 1
  %100 = ptrtoint ptr %stktop_8 to i64
  %101 = add i64 %100, 4
  %102 = inttoptr i64 %101 to ptr
  %memload94 = load i64, ptr %102, align 1
  %103 = trunc i64 %memload94 to i32
  %RCX95 = sext i32 %103 to i64
  %memref-basereg96 = add i64 %memload93, %RCX95
  %104 = inttoptr i64 %memref-basereg96 to ptr
  %memload97 = load i32, ptr %104, align 1
  %105 = trunc i32 %memload97 to i8
  %EAX98 = sext i8 %105 to i32
  %106 = sub i32 %EAX98, 57
  %107 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX98, i32 57)
  %CF99 = extractvalue { i32, i1 } %107, 1
  %ZF100 = icmp eq i32 %106, 0
  %highbit101 = and i32 -2147483648, %106
  %SF102 = icmp ne i32 %highbit101, 0
  %108 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX98, i32 57)
  %OF103 = extractvalue { i32, i1 } %108, 1
  %109 = and i32 %106, 255
  %110 = call i32 @llvm.ctpop.i32(i32 %109)
  %111 = and i32 %110, 1
  %PF104 = icmp eq i32 %111, 0
  %ZFCmp_JG = icmp eq i1 %ZF100, false
  %SFOFCmp_JG = icmp eq i1 %SF102, %OF103
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.16, label %bb.15

bb.15:                                            ; preds = %bb.14
  %memload105 = load i32, ptr %RBP_N.20, align 1
  %EAX112 = add i32 %memload105, 1
  %112 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload105, i32 1)
  %CF106 = extractvalue { i32, i1 } %112, 1
  %113 = and i32 %EAX112, 255
  %114 = call i32 @llvm.ctpop.i32(i32 %113)
  %115 = and i32 %114, 1
  %PF107 = icmp eq i32 %115, 0
  %ZF108 = icmp eq i32 %EAX112, 0
  %highbit109 = and i32 -2147483648, %EAX112
  %SF110 = icmp ne i32 %highbit109, 0
  %116 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload105, i32 1)
  %OF111 = extractvalue { i32, i1 } %116, 1
  store i32 %EAX112, ptr %RBP_N.20, align 1
  br label %bb.16

bb.16:                                            ; preds = %bb.15, %bb.14, %bb.13
  %memload113 = load i64, ptr %RBP_N.16, align 1
  %117 = ptrtoint ptr %stktop_8 to i64
  %118 = add i64 %117, 4
  %119 = inttoptr i64 %118 to ptr
  %memload114 = load i64, ptr %119, align 1
  %120 = trunc i64 %memload114 to i32
  %RCX115 = sext i32 %120 to i64
  %memref-basereg116 = add i64 %memload113, %RCX115
  %121 = inttoptr i64 %memref-basereg116 to ptr
  %memload117 = load i32, ptr %121, align 1
  %122 = trunc i32 %memload117 to i8
  %EAX118 = sext i8 %122 to i32
  %123 = sub i32 %EAX118, 46
  %124 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX118, i32 46)
  %CF119 = extractvalue { i32, i1 } %124, 1
  %ZF120 = icmp eq i32 %123, 0
  %highbit121 = and i32 -2147483648, %123
  %SF122 = icmp ne i32 %highbit121, 0
  %125 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX118, i32 46)
  %OF123 = extractvalue { i32, i1 } %125, 1
  %126 = and i32 %123, 255
  %127 = call i32 @llvm.ctpop.i32(i32 %126)
  %128 = and i32 %127, 1
  %PF124 = icmp eq i32 %128, 0
  %CmpZF_JNE = icmp eq i1 %ZF120, false
  br i1 %CmpZF_JNE, label %bb.18, label %bb.17

bb.17:                                            ; preds = %bb.16
  %memload125 = load i32, ptr %RBP_N.24, align 1
  %EAX132 = add i32 %memload125, 1
  %129 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload125, i32 1)
  %CF126 = extractvalue { i32, i1 } %129, 1
  %130 = and i32 %EAX132, 255
  %131 = call i32 @llvm.ctpop.i32(i32 %130)
  %132 = and i32 %131, 1
  %PF127 = icmp eq i32 %132, 0
  %ZF128 = icmp eq i32 %EAX132, 0
  %highbit129 = and i32 -2147483648, %EAX132
  %SF130 = icmp ne i32 %highbit129, 0
  %133 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload125, i32 1)
  %OF131 = extractvalue { i32, i1 } %133, 1
  store i32 %EAX132, ptr %RBP_N.24, align 1
  br label %bb.18

bb.18:                                            ; preds = %bb.17, %bb.16
  br label %bb.19

bb.19:                                            ; preds = %bb.18
  %134 = ptrtoint ptr %stktop_8 to i64
  %135 = add i64 %134, 4
  %136 = inttoptr i64 %135 to ptr
  %memload133 = load i32, ptr %136, align 1
  %EAX140 = add i32 %memload133, 1
  %137 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload133, i32 1)
  %CF134 = extractvalue { i32, i1 } %137, 1
  %138 = and i32 %EAX140, 255
  %139 = call i32 @llvm.ctpop.i32(i32 %138)
  %140 = and i32 %139, 1
  %PF135 = icmp eq i32 %140, 0
  %ZF136 = icmp eq i32 %EAX140, 0
  %highbit137 = and i32 -2147483648, %EAX140
  %SF138 = icmp ne i32 %highbit137, 0
  %141 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload133, i32 1)
  %OF139 = extractvalue { i32, i1 } %141, 1
  %142 = ptrtoint ptr %stktop_8 to i64
  %143 = add i64 %142, 4
  %144 = inttoptr i64 %143 to ptr
  store i32 %EAX140, ptr %144, align 1
  br label %bb.12

bb.20:                                            ; preds = %bb.12
  %145 = load i32, ptr %RBP_N.20, align 1
  %146 = zext i32 %145 to i64
  %147 = zext i32 3 to i64
  %148 = sub i64 %146, %147
  %149 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %146, i64 %147)
  %CF141 = extractvalue { i64, i1 } %149, 1
  %ZF142 = icmp eq i64 %148, 0
  %highbit143 = and i64 -9223372036854775808, %148
  %SF144 = icmp ne i64 %highbit143, 0
  %150 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %146, i64 %147)
  %OF145 = extractvalue { i64, i1 } %150, 1
  %151 = and i64 %148, 255
  %152 = call i64 @llvm.ctpop.i64(i64 %151)
  %153 = and i64 %152, 1
  %PF146 = icmp eq i64 %153, 0
  %ZFCmp_JG165 = icmp eq i1 %ZF142, false
  %SFOFCmp_JG166 = icmp eq i1 %SF144, %OF145
  %ZFAndSFOF_JG167 = and i1 %ZFCmp_JG165, %SFOFCmp_JG166
  br i1 %ZFAndSFOF_JG167, label %bb.22, label %bb.21

bb.21:                                            ; preds = %bb.20
  %154 = load i32, ptr %RBP_N.24, align 1
  %155 = zext i32 %154 to i64
  %156 = zext i32 1 to i64
  %157 = sub i64 %155, %156
  %158 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %155, i64 %156)
  %CF147 = extractvalue { i64, i1 } %158, 1
  %ZF148 = icmp eq i64 %157, 0
  %highbit149 = and i64 -9223372036854775808, %157
  %SF150 = icmp ne i64 %highbit149, 0
  %159 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %155, i64 %156)
  %OF151 = extractvalue { i64, i1 } %159, 1
  %160 = and i64 %157, 255
  %161 = call i64 @llvm.ctpop.i64(i64 %160)
  %162 = and i64 %161, 1
  %PF152 = icmp eq i64 %162, 0
  %CmpZF_JE168 = icmp eq i1 %ZF148, true
  br i1 %CmpZF_JE168, label %bb.23, label %bb.22

bb.23:                                            ; preds = %bb.21
  %RAX153 = ptrtoint ptr getelementptr inbounds ([22 x i8], ptr @rodata_13, i32 0, i32 18) to i64, !ROData_Index !1
  store i64 %RAX153, ptr %RBP_N.8, align 1
  br label %bb.24

bb.22:                                            ; preds = %bb.21, %bb.20
  %RAX154 = ptrtoint ptr @rodata_13 to i64
  store i64 %RAX154, ptr %RBP_N.8, align 1
  br label %bb.24

bb.6:                                             ; preds = %bb.5, %bb.4, %bb.2
  %RAX155 = ptrtoint ptr @rodata_13 to i64
  store i64 %RAX155, ptr %RBP_N.8, align 1
  br label %bb.24

bb.24:                                            ; preds = %bb.23, %bb.6, %bb.22, %bb.10, %bb.1
  %memload156 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload156
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 8192}
!1 = !{ptr getelementptr inbounds ([22 x i8], ptr @rodata_13, i32 0, i32 18)}
