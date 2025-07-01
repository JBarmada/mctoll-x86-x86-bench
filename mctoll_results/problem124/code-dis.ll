; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @realloc(ptr, i64)

define dso_local i32 @func0(i32 %arg1, i64 %arg2, i64 %arg3) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 52
  %RBP_N.4 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  store i32 10, ptr %RBP_N.28, align 1
  %memload = load i64, ptr %RBP_N.24, align 1
  %8 = inttoptr i64 %memload to ptr
  store i32 1, ptr %8, align 1
  %memload1 = load i64, ptr %RBP_N.16, align 1
  %9 = inttoptr i64 %memload1 to ptr
  store i32 1, ptr %9, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.7
  %10 = load i32, ptr %RBP_N.4, align 1
  %11 = zext i32 %10 to i64
  %12 = zext i32 1 to i64
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
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.8, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload2 = load i32, ptr %RBP_N.4, align 1
  %19 = sext i32 %memload2 to i64
  %20 = lshr i64 %19, 32
  %EDX = trunc i64 %20 to i32
  %21 = sext i32 %memload2 to i64
  %22 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %22, 32
  %dividend = or i64 %div_hb_ls, %21
  %23 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %23
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %23
  %EDX3 = trunc i64 %div_r to i32
  %24 = sub i32 %EDX3, 1
  %25 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX3, i32 1)
  %CF4 = extractvalue { i32, i1 } %25, 1
  %ZF5 = icmp eq i32 %24, 0
  %highbit6 = and i32 -2147483648, %24
  %SF7 = icmp ne i32 %highbit6, 0
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX3, i32 1)
  %OF8 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %24, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF9 = icmp eq i32 %29, 0
  %CmpZF_JNE = icmp eq i1 %ZF5, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload10 = load i64, ptr %RBP_N.24, align 1
  %30 = inttoptr i64 %memload10 to ptr
  %memload11 = load i32, ptr %30, align 1
  %31 = load i32, ptr %RBP_N.28, align 1
  %32 = sub i32 %memload11, %31
  %33 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload11, i32 %31)
  %CF12 = extractvalue { i32, i1 } %33, 1
  %ZF13 = icmp eq i32 %32, 0
  %highbit14 = and i32 -2147483648, %32
  %SF15 = icmp ne i32 %highbit14, 0
  %34 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload11, i32 %31)
  %OF16 = extractvalue { i32, i1 } %34, 1
  %35 = and i32 %32, 255
  %36 = call i32 @llvm.ctpop.i32(i32 %35)
  %37 = and i32 %36, 1
  %PF17 = icmp eq i32 %37, 0
  %SFAndOF_JL = icmp ne i1 %SF15, %OF16
  br i1 %SFAndOF_JL, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload18 = load i32, ptr %RBP_N.28, align 1
  %EAX22 = shl i32 %memload18, 1
  %ZF19 = icmp eq i32 %EAX22, 0
  %highbit20 = and i32 -2147483648, %EAX22
  %SF21 = icmp ne i32 %highbit20, 0
  store i32 %EAX22, ptr %RBP_N.28, align 1
  %memload23 = load i64, ptr %RBP_N.16, align 1
  %memload24 = load i64, ptr %RBP_N.28, align 1
  %38 = trunc i64 %memload24 to i32
  %RSI = sext i32 %38 to i64
  %RSI28 = shl i64 %RSI, 2
  %ZF25 = icmp eq i64 %RSI28, 0
  %highbit26 = and i64 -9223372036854775808, %RSI28
  %SF27 = icmp ne i64 %highbit26, 0
  %39 = inttoptr i64 %memload23 to ptr
  %40 = call ptr @realloc(ptr %39, i64 %RSI28)
  %RAX = ptrtoint ptr %40 to i64
  store i64 %RAX, ptr %RBP_N.16, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3
  %memload29 = load i32, ptr %RBP_N.4, align 1
  %memload30 = load i64, ptr %RBP_N.16, align 1
  %memload31 = load i64, ptr %RBP_N.24, align 1
  %41 = inttoptr i64 %memload31 to ptr
  %memload32 = load i32, ptr %41, align 1
  %EDI = add i32 %memload32, 1
  %42 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload32, i32 1)
  %CF33 = extractvalue { i32, i1 } %42, 1
  %43 = and i32 %EDI, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF34 = icmp eq i32 %45, 0
  %ZF35 = icmp eq i32 %EDI, 0
  %highbit36 = and i32 -2147483648, %EDI
  %SF37 = icmp ne i32 %highbit36, 0
  %46 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload32, i32 1)
  %OF38 = extractvalue { i32, i1 } %46, 1
  %47 = inttoptr i64 %memload31 to ptr
  store i32 %EDI, ptr %47, align 1
  %RCX = sext i32 %memload32 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload30, %memref-idxreg
  %48 = inttoptr i64 %memref-basereg to ptr
  store i32 %memload29, ptr %48, align 1
  %memload39 = load i32, ptr %RBP_N.4, align 1
  %49 = trunc i64 %memload30 to i32
  %EAX40 = mul i32 3, %memload39
  %EAX47 = add i32 %EAX40, 1
  %50 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EAX40, i32 1)
  %CF41 = extractvalue { i32, i1 } %50, 1
  %51 = and i32 %EAX47, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %51)
  %53 = and i32 %52, 1
  %PF42 = icmp eq i32 %53, 0
  %ZF43 = icmp eq i32 %EAX47, 0
  %highbit44 = and i32 -2147483648, %EAX47
  %SF45 = icmp ne i32 %highbit44, 0
  %54 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EAX40, i32 1)
  %OF46 = extractvalue { i32, i1 } %54, 1
  store i32 %EAX47, ptr %RBP_N.4, align 1
  br label %bb.7

bb.6:                                             ; preds = %bb.2
  %memload48 = load i32, ptr %RBP_N.4, align 1
  %55 = sext i32 %memload48 to i64
  %56 = lshr i64 %55, 32
  %EDX49 = trunc i64 %56 to i32
  %57 = sext i32 %memload48 to i64
  %58 = sext i32 %EDX49 to i64
  %div_hb_ls50 = shl nuw i64 %58, 32
  %dividend51 = or i64 %div_hb_ls50, %57
  %59 = sext i32 2 to i64
  %div_q52 = sdiv i64 %dividend51, %59
  %EAX53 = trunc i64 %div_q52 to i32
  %div_r54 = srem i64 %dividend51, %59
  %EDX55 = trunc i64 %div_r54 to i32
  store i32 %EAX53, ptr %RBP_N.4, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.5
  br label %bb.1

bb.8:                                             ; preds = %bb.1
  store i32 1, ptr %RBP_N.32, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.16
  %memload56 = load i32, ptr %RBP_N.32, align 1
  %memload57 = load i64, ptr %RBP_N.24, align 1
  %60 = inttoptr i64 %memload57 to ptr
  %61 = load i32, ptr %60, align 1
  %62 = sub i32 %memload56, %61
  %63 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload56, i32 %61)
  %CF58 = extractvalue { i32, i1 } %63, 1
  %ZF59 = icmp eq i32 %62, 0
  %highbit60 = and i32 -2147483648, %62
  %SF61 = icmp ne i32 %highbit60, 0
  %64 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload56, i32 %61)
  %OF62 = extractvalue { i32, i1 } %64, 1
  %65 = and i32 %62, 255
  %66 = call i32 @llvm.ctpop.i32(i32 %65)
  %67 = and i32 %66, 1
  %PF63 = icmp eq i32 %67, 0
  %CmpSFOF_JGE = icmp eq i1 %SF61, %OF62
  br i1 %CmpSFOF_JGE, label %bb.17, label %bb.10

bb.10:                                            ; preds = %bb.9
  %memload64 = load i64, ptr %RBP_N.16, align 1
  %memload65 = load i64, ptr %RBP_N.32, align 1
  %68 = trunc i64 %memload65 to i32
  %RCX66 = sext i32 %68 to i64
  %memref-idxreg67 = mul i64 4, %RCX66
  %memref-basereg68 = add i64 %memload64, %memref-idxreg67
  %69 = inttoptr i64 %memref-basereg68 to ptr
  %memload69 = load i32, ptr %69, align 1
  store i32 %memload69, ptr %RBP_N.36, align 1
  %memload70 = load i32, ptr %RBP_N.32, align 1
  %EAX77 = sub i32 %memload70, 1
  %70 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload70, i32 1)
  %CF71 = extractvalue { i32, i1 } %70, 1
  %71 = and i32 %EAX77, 255
  %72 = call i32 @llvm.ctpop.i32(i32 %71)
  %73 = and i32 %72, 1
  %PF72 = icmp eq i32 %73, 0
  %ZF73 = icmp eq i32 %EAX77, 0
  %highbit74 = and i32 -2147483648, %EAX77
  %SF75 = icmp ne i32 %highbit74, 0
  %74 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload70, i32 1)
  %OF76 = extractvalue { i32, i1 } %74, 1
  store i32 %EAX77, ptr %RBP_N.40, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.15
  %75 = load i32, ptr %RBP_N.40, align 1
  %76 = zext i32 %75 to i64
  %77 = zext i32 0 to i64
  %78 = sub i64 %76, %77
  %79 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %76, i64 %77)
  %CF78 = extractvalue { i64, i1 } %79, 1
  %ZF79 = icmp eq i64 %78, 0
  %highbit80 = and i64 -9223372036854775808, %78
  %SF81 = icmp ne i64 %highbit80, 0
  %80 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %76, i64 %77)
  %OF82 = extractvalue { i64, i1 } %80, 1
  %81 = and i64 %78, 255
  %82 = call i64 @llvm.ctpop.i64(i64 %81)
  %83 = and i64 %82, 1
  %PF83 = icmp eq i64 %83, 0
  %84 = ptrtoint ptr %stktop_8 to i64
  %85 = add i64 %84, 7
  %86 = trunc i32 0 to i8
  %87 = inttoptr i64 %85 to ptr
  store i8 %86, ptr %87, align 1
  %SFAndOF_JL147 = icmp ne i1 %SF81, %OF82
  br i1 %SFAndOF_JL147, label %bb.13, label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload84 = load i64, ptr %RBP_N.16, align 1
  %memload85 = load i64, ptr %RBP_N.40, align 1
  %88 = trunc i64 %memload85 to i32
  %RCX86 = sext i32 %88 to i64
  %memref-idxreg87 = mul i64 4, %RCX86
  %memref-basereg88 = add i64 %memload84, %memref-idxreg87
  %89 = inttoptr i64 %memref-basereg88 to ptr
  %memload89 = load i32, ptr %89, align 1
  %90 = load i32, ptr %RBP_N.36, align 1
  %91 = sub i32 %memload89, %90
  %92 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload89, i32 %90)
  %CF90 = extractvalue { i32, i1 } %92, 1
  %ZF91 = icmp eq i32 %91, 0
  %highbit92 = and i32 -2147483648, %91
  %SF93 = icmp ne i32 %highbit92, 0
  %93 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload89, i32 %90)
  %OF94 = extractvalue { i32, i1 } %93, 1
  %94 = and i32 %91, 255
  %95 = call i32 @llvm.ctpop.i32(i32 %94)
  %96 = and i32 %95, 1
  %PF95 = icmp eq i32 %96, 0
  %ZFCmp_CMOVG = icmp eq i1 %ZF91, false
  %SFOFCmp_CMOVG = icmp eq i1 %SF93, %OF94
  %Cond_CMOVG = and i1 %ZFCmp_CMOVG, %SFOFCmp_CMOVG
  %97 = ptrtoint ptr %stktop_8 to i64
  %98 = add i64 %97, 7
  %99 = zext i1 %Cond_CMOVG to i8
  %100 = inttoptr i64 %98 to ptr
  store i8 %99, ptr %100, align 1
  br label %bb.13

bb.13:                                            ; preds = %bb.12, %bb.11
  %101 = ptrtoint ptr %stktop_8 to i64
  %102 = add i64 %101, 7
  %103 = inttoptr i64 %102 to ptr
  %memload96 = load i8, ptr %103, align 1
  %104 = and i8 %memload96, 1
  %105 = call i8 @llvm.ctpop.i8(i8 %104)
  %106 = and i8 %105, 1
  %PF97 = icmp eq i8 %106, 0
  %ZF98 = icmp eq i8 %104, 0
  %highbit99 = and i8 -128, %104
  %SF100 = icmp ne i8 %highbit99, 0
  %CmpZF_JNE148 = icmp eq i1 %ZF98, false
  br i1 %CmpZF_JNE148, label %bb.15, label %bb.14

bb.14:                                            ; preds = %bb.13
  br label %bb.16

bb.16:                                            ; preds = %bb.14
  %memload101 = load i32, ptr %RBP_N.36, align 1
  %memload102 = load i64, ptr %RBP_N.16, align 1
  %memload103 = load i32, ptr %RBP_N.40, align 1
  %ECX = add i32 %memload103, 1
  %107 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload103, i32 1)
  %CF104 = extractvalue { i32, i1 } %107, 1
  %108 = and i32 %ECX, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108)
  %110 = and i32 %109, 1
  %PF105 = icmp eq i32 %110, 0
  %ZF106 = icmp eq i32 %ECX, 0
  %highbit107 = and i32 -2147483648, %ECX
  %SF108 = icmp ne i32 %highbit107, 0
  %111 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload103, i32 1)
  %OF109 = extractvalue { i32, i1 } %111, 1
  %RCX110 = sext i32 %ECX to i64
  %memref-idxreg111 = mul i64 4, %RCX110
  %memref-basereg112 = add i64 %memload102, %memref-idxreg111
  %112 = inttoptr i64 %memref-basereg112 to ptr
  store i32 %memload101, ptr %112, align 1
  %memload113 = load i32, ptr %RBP_N.32, align 1
  %EAX120 = add i32 %memload113, 1
  %113 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload113, i32 1)
  %CF114 = extractvalue { i32, i1 } %113, 1
  %114 = and i32 %EAX120, 255
  %115 = call i32 @llvm.ctpop.i32(i32 %114)
  %116 = and i32 %115, 1
  %PF115 = icmp eq i32 %116, 0
  %ZF116 = icmp eq i32 %EAX120, 0
  %highbit117 = and i32 -2147483648, %EAX120
  %SF118 = icmp ne i32 %highbit117, 0
  %117 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload113, i32 1)
  %OF119 = extractvalue { i32, i1 } %117, 1
  store i32 %EAX120, ptr %RBP_N.32, align 1
  br label %bb.9

bb.15:                                            ; preds = %bb.13
  %memload121 = load i64, ptr %RBP_N.16, align 1
  %memload122 = load i64, ptr %RBP_N.40, align 1
  %118 = trunc i64 %memload122 to i32
  %RCX123 = sext i32 %118 to i64
  %memref-idxreg124 = mul i64 4, %RCX123
  %memref-basereg125 = add i64 %memload121, %memref-idxreg124
  %119 = inttoptr i64 %memref-basereg125 to ptr
  %memload126 = load i32, ptr %119, align 1
  %memload127 = load i64, ptr %RBP_N.16, align 1
  %memload128 = load i32, ptr %RBP_N.40, align 1
  %ECX135 = add i32 %memload128, 1
  %120 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload128, i32 1)
  %CF129 = extractvalue { i32, i1 } %120, 1
  %121 = and i32 %ECX135, 255
  %122 = call i32 @llvm.ctpop.i32(i32 %121)
  %123 = and i32 %122, 1
  %PF130 = icmp eq i32 %123, 0
  %ZF131 = icmp eq i32 %ECX135, 0
  %highbit132 = and i32 -2147483648, %ECX135
  %SF133 = icmp ne i32 %highbit132, 0
  %124 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload128, i32 1)
  %OF134 = extractvalue { i32, i1 } %124, 1
  %RCX136 = sext i32 %ECX135 to i64
  %memref-idxreg137 = mul i64 4, %RCX136
  %memref-basereg138 = add i64 %memload127, %memref-idxreg137
  %125 = inttoptr i64 %memref-basereg138 to ptr
  store i32 %memload126, ptr %125, align 1
  %memload139 = load i32, ptr %RBP_N.40, align 1
  %EAX146 = sub i32 %memload139, 1
  %126 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload139, i32 1)
  %CF140 = extractvalue { i32, i1 } %126, 1
  %127 = and i32 %EAX146, 255
  %128 = call i32 @llvm.ctpop.i32(i32 %127)
  %129 = and i32 %128, 1
  %PF141 = icmp eq i32 %129, 0
  %ZF142 = icmp eq i32 %EAX146, 0
  %highbit143 = and i32 -2147483648, %EAX146
  %SF144 = icmp ne i32 %highbit143, 0
  %130 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload139, i32 1)
  %OF145 = extractvalue { i32, i1 } %130, 1
  store i32 %EAX146, ptr %RBP_N.40, align 1
  br label %bb.11

bb.17:                                            ; preds = %bb.9
  ret i32 %memload56
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
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctpop.i8(i8) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
