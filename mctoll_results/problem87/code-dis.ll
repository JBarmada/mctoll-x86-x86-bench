; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 120, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 19
  %RBP_N.101 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.100 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.96 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.92 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.88 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 36
  %RBP_N.84 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 40
  %RBP_N.80 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 96
  %RBP_N.24 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 108
  %RBP_N.12 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 112
  %RBP_N.8 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %10 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  %11 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %11)
  %12 = trunc i64 %RAX to i32
  store i32 %12, ptr %RBP_N.12, align 1
  %memload1 = load i32, ptr %RBP_N.12, align 1
  %EAX = add i32 %memload1, 2
  %13 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload1, i32 2)
  %CF = extractvalue { i32, i1 } %13, 1
  %14 = and i32 %EAX, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = and i32 %15, 1
  %PF = icmp eq i32 %16, 0
  %ZF = icmp eq i32 %EAX, 0
  %highbit = and i32 -2147483648, %EAX
  %SF = icmp ne i32 %highbit, 0
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload1, i32 2)
  %OF = extractvalue { i32, i1 } %17, 1
  %RDI = sext i32 %EAX to i64
  %18 = call ptr @malloc(i64 %RDI)
  %RAX2 = ptrtoint ptr %18 to i64
  store i64 %RAX2, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.84, align 1
  store i32 0, ptr %RBP_N.88, align 1
  store i32 0, ptr %RBP_N.92, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.22
  %memload3 = load i32, ptr %RBP_N.92, align 1
  %19 = load i32, ptr %RBP_N.12, align 1
  %20 = sub i32 %memload3, %19
  %21 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload3, i32 %19)
  %CF4 = extractvalue { i32, i1 } %21, 1
  %ZF5 = icmp eq i32 %20, 0
  %highbit6 = and i32 -2147483648, %20
  %SF7 = icmp ne i32 %highbit6, 0
  %22 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload3, i32 %19)
  %OF8 = extractvalue { i32, i1 } %22, 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = and i32 %24, 1
  %PF9 = icmp eq i32 %25, 0
  %ZFCmp_JG = icmp eq i1 %ZF5, false
  %SFOFCmp_JG = icmp eq i1 %SF7, %OF8
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.23, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload10 = load i64, ptr %RBP_N.8, align 1
  %memload11 = load i64, ptr %RBP_N.92, align 1
  %26 = trunc i64 %memload11 to i32
  %RCX = sext i32 %26 to i64
  %memref-basereg = add i64 %memload10, %RCX
  %27 = inttoptr i64 %memref-basereg to ptr
  %memload12 = load i32, ptr %27, align 1
  %28 = trunc i32 %memload12 to i8
  %EAX13 = sext i8 %28 to i32
  %29 = sub i32 %EAX13, 32
  %30 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX13, i32 32)
  %CF14 = extractvalue { i32, i1 } %30, 1
  %ZF15 = icmp eq i32 %29, 0
  %highbit16 = and i32 -2147483648, %29
  %SF17 = icmp ne i32 %highbit16, 0
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX13, i32 32)
  %OF18 = extractvalue { i32, i1 } %31, 1
  %32 = and i32 %29, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = and i32 %33, 1
  %PF19 = icmp eq i32 %34, 0
  %CmpZF_JE = icmp eq i1 %ZF15, true
  br i1 %CmpZF_JE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload20 = load i64, ptr %RBP_N.8, align 1
  %memload21 = load i64, ptr %RBP_N.92, align 1
  %35 = trunc i64 %memload21 to i32
  %RCX22 = sext i32 %35 to i64
  %memref-basereg23 = add i64 %memload20, %RCX22
  %36 = inttoptr i64 %memref-basereg23 to ptr
  %memload24 = load i32, ptr %36, align 1
  %37 = trunc i32 %memload24 to i8
  %EAX25 = sext i8 %37 to i32
  %38 = sub i32 %EAX25, 0
  %39 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX25, i32 0)
  %CF26 = extractvalue { i32, i1 } %39, 1
  %ZF27 = icmp eq i32 %38, 0
  %highbit28 = and i32 -2147483648, %38
  %SF29 = icmp ne i32 %highbit28, 0
  %40 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX25, i32 0)
  %OF30 = extractvalue { i32, i1 } %40, 1
  %41 = and i32 %38, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41)
  %43 = and i32 %42, 1
  %PF31 = icmp eq i32 %43, 0
  %CmpZF_JNE = icmp eq i1 %ZF27, false
  br i1 %CmpZF_JNE, label %bb.20, label %bb.4

bb.20:                                            ; preds = %bb.3
  %memload32 = load i64, ptr %RBP_N.8, align 1
  %memload33 = load i64, ptr %RBP_N.92, align 1
  %44 = trunc i64 %memload33 to i32
  %RCX34 = sext i32 %44 to i64
  %memref-basereg35 = add i64 %memload32, %RCX34
  %45 = inttoptr i64 %memref-basereg35 to ptr
  %memload36 = load i8, ptr %45, align 1
  %memload37 = load i32, ptr %RBP_N.88, align 1
  %EDX = add i32 %memload37, 1
  %46 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload37, i32 1)
  %CF38 = extractvalue { i32, i1 } %46, 1
  %47 = and i32 %EDX, 255
  %48 = call i32 @llvm.ctpop.i32(i32 %47)
  %49 = and i32 %48, 1
  %PF39 = icmp eq i32 %49, 0
  %ZF40 = icmp eq i32 %EDX, 0
  %highbit41 = and i32 -2147483648, %EDX
  %SF42 = icmp ne i32 %highbit41, 0
  %50 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload37, i32 1)
  %OF43 = extractvalue { i32, i1 } %50, 1
  store i32 %EDX, ptr %RBP_N.88, align 1
  %RAX44 = sext i32 %memload37 to i64
  %51 = getelementptr i8, ptr %RBP_N.80, i64 %RAX44
  store i8 %memload36, ptr %51, align 1
  br label %bb.21

bb.4:                                             ; preds = %bb.3, %bb.2
  store i32 0, ptr %RBP_N.96, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.13
  %memload45 = load i32, ptr %RBP_N.96, align 1
  %memload46 = load i32, ptr %RBP_N.88, align 1
  %ECX = sub i32 %memload46, 1
  %52 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload46, i32 1)
  %CF47 = extractvalue { i32, i1 } %52, 1
  %53 = and i32 %ECX, 255
  %54 = call i32 @llvm.ctpop.i32(i32 %53)
  %55 = and i32 %54, 1
  %PF48 = icmp eq i32 %55, 0
  %ZF49 = icmp eq i32 %ECX, 0
  %highbit50 = and i32 -2147483648, %ECX
  %SF51 = icmp ne i32 %highbit50, 0
  %56 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload46, i32 1)
  %OF52 = extractvalue { i32, i1 } %56, 1
  %57 = sub i32 %memload45, %ECX
  %58 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload45, i32 %ECX)
  %CF53 = extractvalue { i32, i1 } %58, 1
  %ZF54 = icmp eq i32 %57, 0
  %highbit55 = and i32 -2147483648, %57
  %SF56 = icmp ne i32 %highbit55, 0
  %59 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload45, i32 %ECX)
  %OF57 = extractvalue { i32, i1 } %59, 1
  %60 = and i32 %57, 255
  %61 = call i32 @llvm.ctpop.i32(i32 %60)
  %62 = and i32 %61, 1
  %PF58 = icmp eq i32 %62, 0
  %CmpSFOF_JGE = icmp eq i1 %SF56, %OF57
  br i1 %CmpSFOF_JGE, label %bb.14, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload59 = load i32, ptr %RBP_N.96, align 1
  %EAX66 = add i32 %memload59, 1
  %63 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload59, i32 1)
  %CF60 = extractvalue { i32, i1 } %63, 1
  %64 = and i32 %EAX66, 255
  %65 = call i32 @llvm.ctpop.i32(i32 %64)
  %66 = and i32 %65, 1
  %PF61 = icmp eq i32 %66, 0
  %ZF62 = icmp eq i32 %EAX66, 0
  %highbit63 = and i32 -2147483648, %EAX66
  %SF64 = icmp ne i32 %highbit63, 0
  %67 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload59, i32 1)
  %OF65 = extractvalue { i32, i1 } %67, 1
  store i32 %EAX66, ptr %RBP_N.100, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.11
  %memload67 = load i32, ptr %RBP_N.100, align 1
  %68 = load i32, ptr %RBP_N.88, align 1
  %69 = sub i32 %memload67, %68
  %70 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload67, i32 %68)
  %CF68 = extractvalue { i32, i1 } %70, 1
  %ZF69 = icmp eq i32 %69, 0
  %highbit70 = and i32 -2147483648, %69
  %SF71 = icmp ne i32 %highbit70, 0
  %71 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload67, i32 %68)
  %OF72 = extractvalue { i32, i1 } %71, 1
  %72 = and i32 %69, 255
  %73 = call i32 @llvm.ctpop.i32(i32 %72)
  %74 = and i32 %73, 1
  %PF73 = icmp eq i32 %74, 0
  %CmpSFOF_JGE180 = icmp eq i1 %SF71, %OF72
  br i1 %CmpSFOF_JGE180, label %bb.12, label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload74 = load i64, ptr %RBP_N.96, align 1
  %75 = trunc i64 %memload74 to i32
  %RAX75 = sext i32 %75 to i64
  %76 = getelementptr i8, ptr %RBP_N.80, i64 %RAX75
  %memload77 = load i32, ptr %76, align 1
  %77 = trunc i32 %memload77 to i8
  %EAX78 = sext i8 %77 to i32
  %memload79 = load i64, ptr %RBP_N.100, align 1
  %78 = trunc i64 %memload79 to i32
  %RCX80 = sext i32 %78 to i64
  %79 = getelementptr i8, ptr %RBP_N.80, i64 %RCX80
  %memload82 = load i32, ptr %79, align 1
  %80 = trunc i32 %memload82 to i8
  %ECX83 = sext i8 %80 to i32
  %81 = sub i32 %EAX78, %ECX83
  %82 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX78, i32 %ECX83)
  %CF84 = extractvalue { i32, i1 } %82, 1
  %ZF85 = icmp eq i32 %81, 0
  %highbit86 = and i32 -2147483648, %81
  %SF87 = icmp ne i32 %highbit86, 0
  %83 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX78, i32 %ECX83)
  %OF88 = extractvalue { i32, i1 } %83, 1
  %84 = and i32 %81, 255
  %85 = call i32 @llvm.ctpop.i32(i32 %84)
  %86 = and i32 %85, 1
  %PF89 = icmp eq i32 %86, 0
  %CmpZF_JLE = icmp eq i1 %ZF85, true
  %CmpOF_JLE = icmp ne i1 %SF87, %OF88
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload90 = load i64, ptr %RBP_N.96, align 1
  %87 = trunc i64 %memload90 to i32
  %RAX91 = sext i32 %87 to i64
  %88 = getelementptr i8, ptr %RBP_N.80, i64 %RAX91
  %memload93 = load i8, ptr %88, align 1
  store i8 %memload93, ptr %RBP_N.101, align 1
  %memload94 = load i64, ptr %RBP_N.100, align 1
  %89 = trunc i64 %memload94 to i32
  %RAX95 = sext i32 %89 to i64
  %90 = getelementptr i8, ptr %RBP_N.80, i64 %RAX95
  %memload97 = load i8, ptr %90, align 1
  %memload98 = load i64, ptr %RBP_N.96, align 1
  %91 = trunc i64 %memload98 to i32
  %RAX99 = sext i32 %91 to i64
  %92 = getelementptr i8, ptr %RBP_N.80, i64 %RAX99
  store i8 %memload97, ptr %92, align 1
  %memload101 = load i8, ptr %RBP_N.101, align 1
  %memload102 = load i64, ptr %RBP_N.100, align 1
  %93 = trunc i64 %memload102 to i32
  %RAX103 = sext i32 %93 to i64
  %94 = getelementptr i8, ptr %RBP_N.80, i64 %RAX103
  store i8 %memload101, ptr %94, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.8
  br label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload105 = load i32, ptr %RBP_N.100, align 1
  %EAX112 = add i32 %memload105, 1
  %95 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload105, i32 1)
  %CF106 = extractvalue { i32, i1 } %95, 1
  %96 = and i32 %EAX112, 255
  %97 = call i32 @llvm.ctpop.i32(i32 %96)
  %98 = and i32 %97, 1
  %PF107 = icmp eq i32 %98, 0
  %ZF108 = icmp eq i32 %EAX112, 0
  %highbit109 = and i32 -2147483648, %EAX112
  %SF110 = icmp ne i32 %highbit109, 0
  %99 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload105, i32 1)
  %OF111 = extractvalue { i32, i1 } %99, 1
  store i32 %EAX112, ptr %RBP_N.100, align 1
  br label %bb.7

bb.12:                                            ; preds = %bb.7
  br label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload113 = load i32, ptr %RBP_N.96, align 1
  %EAX120 = add i32 %memload113, 1
  %100 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload113, i32 1)
  %CF114 = extractvalue { i32, i1 } %100, 1
  %101 = and i32 %EAX120, 255
  %102 = call i32 @llvm.ctpop.i32(i32 %101)
  %103 = and i32 %102, 1
  %PF115 = icmp eq i32 %103, 0
  %ZF116 = icmp eq i32 %EAX120, 0
  %highbit117 = and i32 -2147483648, %EAX120
  %SF118 = icmp ne i32 %highbit117, 0
  %104 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload113, i32 1)
  %OF119 = extractvalue { i32, i1 } %104, 1
  store i32 %EAX120, ptr %RBP_N.96, align 1
  br label %bb.5

bb.14:                                            ; preds = %bb.5
  %105 = load i32, ptr %RBP_N.84, align 1
  %106 = zext i32 %105 to i64
  %107 = zext i32 0 to i64
  %108 = sub i64 %106, %107
  %109 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %106, i64 %107)
  %CF121 = extractvalue { i64, i1 } %109, 1
  %ZF122 = icmp eq i64 %108, 0
  %highbit123 = and i64 -9223372036854775808, %108
  %SF124 = icmp ne i64 %highbit123, 0
  %110 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %106, i64 %107)
  %OF125 = extractvalue { i64, i1 } %110, 1
  %111 = and i64 %108, 255
  %112 = call i64 @llvm.ctpop.i64(i64 %111)
  %113 = and i64 %112, 1
  %PF126 = icmp eq i64 %113, 0
  %CmpZF_JLE181 = icmp eq i1 %ZF122, true
  %CmpOF_JLE182 = icmp ne i1 %SF124, %OF125
  %ZFOrSF_JLE183 = or i1 %CmpZF_JLE181, %CmpOF_JLE182
  br i1 %ZFOrSF_JLE183, label %bb.16, label %bb.15

bb.15:                                            ; preds = %bb.14
  %memload127 = load i64, ptr %RBP_N.24, align 1
  %memload128 = load i32, ptr %RBP_N.84, align 1
  %EDX135 = add i32 %memload128, 1
  %114 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload128, i32 1)
  %CF129 = extractvalue { i32, i1 } %114, 1
  %115 = and i32 %EDX135, 255
  %116 = call i32 @llvm.ctpop.i32(i32 %115)
  %117 = and i32 %116, 1
  %PF130 = icmp eq i32 %117, 0
  %ZF131 = icmp eq i32 %EDX135, 0
  %highbit132 = and i32 -2147483648, %EDX135
  %SF133 = icmp ne i32 %highbit132, 0
  %118 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload128, i32 1)
  %OF134 = extractvalue { i32, i1 } %118, 1
  store i32 %EDX135, ptr %RBP_N.84, align 1
  %RCX136 = sext i32 %memload128 to i64
  %memref-basereg137 = add i64 %memload127, %RCX136
  %119 = inttoptr i64 %memref-basereg137 to ptr
  store i8 32, ptr %119, align 1
  br label %bb.16

bb.16:                                            ; preds = %bb.15, %bb.14
  %120 = ptrtoint ptr %stktop_8 to i64
  %121 = add i64 %120, 4
  %122 = inttoptr i64 %121 to ptr
  store i32 0, ptr %122, align 1
  br label %bb.17

bb.17:                                            ; preds = %bb.16, %bb.18
  %123 = ptrtoint ptr %stktop_8 to i64
  %124 = add i64 %123, 4
  %125 = inttoptr i64 %124 to ptr
  %memload138 = load i32, ptr %125, align 1
  %126 = load i32, ptr %RBP_N.88, align 1
  %127 = sub i32 %memload138, %126
  %128 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload138, i32 %126)
  %CF139 = extractvalue { i32, i1 } %128, 1
  %ZF140 = icmp eq i32 %127, 0
  %highbit141 = and i32 -2147483648, %127
  %SF142 = icmp ne i32 %highbit141, 0
  %129 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload138, i32 %126)
  %OF143 = extractvalue { i32, i1 } %129, 1
  %130 = and i32 %127, 255
  %131 = call i32 @llvm.ctpop.i32(i32 %130)
  %132 = and i32 %131, 1
  %PF144 = icmp eq i32 %132, 0
  %CmpSFOF_JGE184 = icmp eq i1 %SF142, %OF143
  br i1 %CmpSFOF_JGE184, label %bb.19, label %bb.18

bb.18:                                            ; preds = %bb.17
  %133 = ptrtoint ptr %stktop_8 to i64
  %134 = add i64 %133, 4
  %135 = inttoptr i64 %134 to ptr
  %memload145 = load i64, ptr %135, align 1
  %136 = trunc i64 %memload145 to i32
  %RAX146 = sext i32 %136 to i64
  %137 = getelementptr i8, ptr %RBP_N.80, i64 %RAX146
  %memload148 = load i8, ptr %137, align 1
  %memload149 = load i64, ptr %RBP_N.24, align 1
  %memload150 = load i32, ptr %RBP_N.84, align 1
  %ESI = add i32 %memload150, 1
  %138 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload150, i32 1)
  %CF151 = extractvalue { i32, i1 } %138, 1
  %139 = and i32 %ESI, 255
  %140 = call i32 @llvm.ctpop.i32(i32 %139)
  %141 = and i32 %140, 1
  %PF152 = icmp eq i32 %141, 0
  %ZF153 = icmp eq i32 %ESI, 0
  %highbit154 = and i32 -2147483648, %ESI
  %SF155 = icmp ne i32 %highbit154, 0
  %142 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload150, i32 1)
  %OF156 = extractvalue { i32, i1 } %142, 1
  store i32 %ESI, ptr %RBP_N.84, align 1
  %RCX157 = sext i32 %memload150 to i64
  %memref-basereg158 = add i64 %memload149, %RCX157
  %143 = inttoptr i64 %memref-basereg158 to ptr
  store i8 %memload148, ptr %143, align 1
  %144 = ptrtoint ptr %stktop_8 to i64
  %145 = add i64 %144, 4
  %146 = inttoptr i64 %145 to ptr
  %memload159 = load i32, ptr %146, align 1
  %EAX166 = add i32 %memload159, 1
  %147 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload159, i32 1)
  %CF160 = extractvalue { i32, i1 } %147, 1
  %148 = and i32 %EAX166, 255
  %149 = call i32 @llvm.ctpop.i32(i32 %148)
  %150 = and i32 %149, 1
  %PF161 = icmp eq i32 %150, 0
  %ZF162 = icmp eq i32 %EAX166, 0
  %highbit163 = and i32 -2147483648, %EAX166
  %SF164 = icmp ne i32 %highbit163, 0
  %151 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload159, i32 1)
  %OF165 = extractvalue { i32, i1 } %151, 1
  %152 = ptrtoint ptr %stktop_8 to i64
  %153 = add i64 %152, 4
  %154 = inttoptr i64 %153 to ptr
  store i32 %EAX166, ptr %154, align 1
  br label %bb.17

bb.19:                                            ; preds = %bb.17
  store i32 0, ptr %RBP_N.88, align 1
  br label %bb.21

bb.21:                                            ; preds = %bb.20, %bb.19
  br label %bb.22

bb.22:                                            ; preds = %bb.21
  %memload167 = load i32, ptr %RBP_N.92, align 1
  %EAX174 = add i32 %memload167, 1
  %155 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload167, i32 1)
  %CF168 = extractvalue { i32, i1 } %155, 1
  %156 = and i32 %EAX174, 255
  %157 = call i32 @llvm.ctpop.i32(i32 %156)
  %158 = and i32 %157, 1
  %PF169 = icmp eq i32 %158, 0
  %ZF170 = icmp eq i32 %EAX174, 0
  %highbit171 = and i32 -2147483648, %EAX174
  %SF172 = icmp ne i32 %highbit171, 0
  %159 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload167, i32 1)
  %OF173 = extractvalue { i32, i1 } %159, 1
  store i32 %EAX174, ptr %RBP_N.92, align 1
  br label %bb.1

bb.23:                                            ; preds = %bb.1
  %memload175 = load i64, ptr %RBP_N.24, align 1
  %memload176 = load i64, ptr %RBP_N.84, align 1
  %160 = trunc i64 %memload176 to i32
  %RCX177 = sext i32 %160 to i64
  %memref-basereg178 = add i64 %memload175, %RCX177
  %161 = inttoptr i64 %memref-basereg178 to ptr
  store i8 0, ptr %161, align 1
  %memload179 = load i64, ptr %RBP_N.24, align 1
  ret i64 %memload179
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
