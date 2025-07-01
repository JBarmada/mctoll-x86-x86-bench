; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

declare dso_local i32 @strcmp(ptr, ptr)

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i64 %arg1, i32 %arg2, i64 %arg3) {
entry:
  %stktop_8 = alloca i8, i32 72, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.56 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.48 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.40 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 40
  %RBP_N.32 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 44
  %RBP_N.28 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 48
  %RBP_N.24 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 60
  %RBP_N.12 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 64
  %RBP_N.8 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %8 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  %memload = load i64, ptr %RBP_N.24, align 1
  %9 = inttoptr i64 %memload to ptr
  store i32 0, ptr %9, align 1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %memload1 = load i32, ptr %RBP_N.28, align 1
  %10 = load i32, ptr %RBP_N.12, align 1
  %11 = sub i32 %memload1, %10
  %12 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload1, i32 %10)
  %CF = extractvalue { i32, i1 } %12, 1
  %ZF = icmp eq i32 %11, 0
  %highbit = and i32 -2147483648, %11
  %SF = icmp ne i32 %highbit, 0
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload1, i32 %10)
  %OF = extractvalue { i32, i1 } %13, 1
  %14 = and i32 %11, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = and i32 %15, 1
  %PF = icmp eq i32 %16, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload2 = load i64, ptr %RBP_N.8, align 1
  %memload3 = load i64, ptr %RBP_N.28, align 1
  %17 = trunc i64 %memload3 to i32
  %RCX = sext i32 %17 to i64
  %memref-idxreg = mul i64 8, %RCX
  %memref-basereg = add i64 %memload2, %memref-idxreg
  %18 = inttoptr i64 %memref-basereg to ptr
  %memload4 = load i64, ptr %18, align 1
  %19 = inttoptr i64 %memload4 to ptr
  %RAX = call i64 @strlen(ptr %19)
  %RAX9 = and i64 %RAX, 1
  %20 = and i64 %RAX9, 255
  %21 = call i64 @llvm.ctpop.i64(i64 %20)
  %22 = and i64 %21, 1
  %PF5 = icmp eq i64 %22, 0
  %ZF6 = icmp eq i64 %RAX9, 0
  %highbit7 = and i64 -9223372036854775808, %RAX9
  %SF8 = icmp ne i64 %highbit7, 0
  %23 = sub i64 %RAX9, 0
  %24 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX9, i64 0)
  %CF10 = extractvalue { i64, i1 } %24, 1
  %ZF11 = icmp eq i64 %23, 0
  %highbit12 = and i64 -9223372036854775808, %23
  %SF13 = icmp ne i64 %highbit12, 0
  %25 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX9, i64 0)
  %OF14 = extractvalue { i64, i1 } %25, 1
  %26 = and i64 %23, 255
  %27 = call i64 @llvm.ctpop.i64(i64 %26)
  %28 = and i64 %27, 1
  %PF15 = icmp eq i64 %28, 0
  %CmpZF_JNE = icmp eq i1 %ZF11, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload16 = load i64, ptr %RBP_N.8, align 1
  %memload17 = load i64, ptr %RBP_N.28, align 1
  %29 = trunc i64 %memload17 to i32
  %RCX18 = sext i32 %29 to i64
  %memref-idxreg19 = mul i64 8, %RCX18
  %memref-basereg20 = add i64 %memload16, %memref-idxreg19
  %30 = inttoptr i64 %memref-basereg20 to ptr
  %memload21 = load i64, ptr %30, align 1
  %memload22 = load i64, ptr %RBP_N.8, align 1
  %memload23 = load i64, ptr %RBP_N.24, align 1
  %31 = inttoptr i64 %memload23 to ptr
  %memload24 = load i64, ptr %31, align 1
  %32 = trunc i64 %memload24 to i32
  %RCX25 = sext i32 %32 to i64
  %memref-idxreg26 = mul i64 8, %RCX25
  %memref-basereg27 = add i64 %memload22, %memref-idxreg26
  %33 = inttoptr i64 %memref-basereg27 to ptr
  store i64 %memload21, ptr %33, align 1
  %memload28 = load i64, ptr %RBP_N.24, align 1
  %34 = inttoptr i64 %memload28 to ptr
  %memload29 = load i32, ptr %34, align 1
  %ECX = add i32 %memload29, 1
  %35 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload29, i32 1)
  %CF30 = extractvalue { i32, i1 } %35, 1
  %36 = and i32 %ECX, 255
  %37 = call i32 @llvm.ctpop.i32(i32 %36)
  %38 = and i32 %37, 1
  %PF31 = icmp eq i32 %38, 0
  %ZF32 = icmp eq i32 %ECX, 0
  %highbit33 = and i32 -2147483648, %ECX
  %SF34 = icmp ne i32 %highbit33, 0
  %39 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload29, i32 1)
  %OF35 = extractvalue { i32, i1 } %39, 1
  %40 = inttoptr i64 %memload28 to ptr
  store i32 %ECX, ptr %40, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload36 = load i32, ptr %RBP_N.28, align 1
  %EAX = add i32 %memload36, 1
  %41 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload36, i32 1)
  %CF37 = extractvalue { i32, i1 } %41, 1
  %42 = and i32 %EAX, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = and i32 %43, 1
  %PF38 = icmp eq i32 %44, 0
  %ZF39 = icmp eq i32 %EAX, 0
  %highbit40 = and i32 -2147483648, %EAX
  %SF41 = icmp ne i32 %highbit40, 0
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload36, i32 1)
  %OF42 = extractvalue { i32, i1 } %45, 1
  store i32 %EAX, ptr %RBP_N.28, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.17
  %memload43 = load i32, ptr %RBP_N.28, align 1
  %memload44 = load i64, ptr %RBP_N.24, align 1
  %46 = inttoptr i64 %memload44 to ptr
  %memload45 = load i32, ptr %46, align 1
  %ECX52 = sub i32 %memload45, 1
  %47 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload45, i32 1)
  %CF46 = extractvalue { i32, i1 } %47, 1
  %48 = and i32 %ECX52, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48)
  %50 = and i32 %49, 1
  %PF47 = icmp eq i32 %50, 0
  %ZF48 = icmp eq i32 %ECX52, 0
  %highbit49 = and i32 -2147483648, %ECX52
  %SF50 = icmp ne i32 %highbit49, 0
  %51 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload45, i32 1)
  %OF51 = extractvalue { i32, i1 } %51, 1
  %52 = sub i32 %memload43, %ECX52
  %53 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload43, i32 %ECX52)
  %CF53 = extractvalue { i32, i1 } %53, 1
  %ZF54 = icmp eq i32 %52, 0
  %highbit55 = and i32 -2147483648, %52
  %SF56 = icmp ne i32 %highbit55, 0
  %54 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload43, i32 %ECX52)
  %OF57 = extractvalue { i32, i1 } %54, 1
  %55 = and i32 %52, 255
  %56 = call i32 @llvm.ctpop.i32(i32 %55)
  %57 = and i32 %56, 1
  %PF58 = icmp eq i32 %57, 0
  %CmpSFOF_JGE231 = icmp eq i1 %SF56, %OF57
  br i1 %CmpSFOF_JGE231, label %bb.18, label %bb.8

bb.8:                                             ; preds = %bb.7
  store i32 0, ptr %RBP_N.32, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.15
  %memload59 = load i32, ptr %RBP_N.32, align 1
  %memload60 = load i64, ptr %RBP_N.24, align 1
  %58 = inttoptr i64 %memload60 to ptr
  %memload61 = load i32, ptr %58, align 1
  %59 = load i32, ptr %RBP_N.28, align 1
  %ECX62 = sub i32 %memload61, %59
  %60 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload61, i32 %59)
  %CF63 = extractvalue { i32, i1 } %60, 1
  %ZF64 = icmp eq i32 %ECX62, 0
  %highbit65 = and i32 -2147483648, %ECX62
  %SF66 = icmp ne i32 %highbit65, 0
  %61 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload61, i32 %59)
  %OF67 = extractvalue { i32, i1 } %61, 1
  %62 = and i32 %ECX62, 255
  %63 = call i32 @llvm.ctpop.i32(i32 %62)
  %64 = and i32 %63, 1
  %PF68 = icmp eq i32 %64, 0
  %ECX75 = sub i32 %ECX62, 1
  %65 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ECX62, i32 1)
  %CF69 = extractvalue { i32, i1 } %65, 1
  %66 = and i32 %ECX75, 255
  %67 = call i32 @llvm.ctpop.i32(i32 %66)
  %68 = and i32 %67, 1
  %PF70 = icmp eq i32 %68, 0
  %ZF71 = icmp eq i32 %ECX75, 0
  %highbit72 = and i32 -2147483648, %ECX75
  %SF73 = icmp ne i32 %highbit72, 0
  %69 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ECX62, i32 1)
  %OF74 = extractvalue { i32, i1 } %69, 1
  %70 = sub i32 %memload59, %ECX75
  %71 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload59, i32 %ECX75)
  %CF76 = extractvalue { i32, i1 } %71, 1
  %ZF77 = icmp eq i32 %70, 0
  %highbit78 = and i32 -2147483648, %70
  %SF79 = icmp ne i32 %highbit78, 0
  %72 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload59, i32 %ECX75)
  %OF80 = extractvalue { i32, i1 } %72, 1
  %73 = and i32 %70, 255
  %74 = call i32 @llvm.ctpop.i32(i32 %73)
  %75 = and i32 %74, 1
  %PF81 = icmp eq i32 %75, 0
  %CmpSFOF_JGE232 = icmp eq i1 %SF79, %OF80
  br i1 %CmpSFOF_JGE232, label %bb.16, label %bb.10

bb.10:                                            ; preds = %bb.9
  %memload82 = load i64, ptr %RBP_N.8, align 1
  %memload83 = load i64, ptr %RBP_N.32, align 1
  %76 = trunc i64 %memload83 to i32
  %RCX84 = sext i32 %76 to i64
  %memref-idxreg85 = mul i64 8, %RCX84
  %memref-basereg86 = add i64 %memload82, %memref-idxreg85
  %77 = inttoptr i64 %memref-basereg86 to ptr
  %memload87 = load i64, ptr %77, align 1
  %78 = inttoptr i64 %memload87 to ptr
  %RAX88 = call i64 @strlen(ptr %78)
  store i64 %RAX88, ptr %RBP_N.48, align 1
  %memload89 = load i64, ptr %RBP_N.8, align 1
  %memload90 = load i32, ptr %RBP_N.32, align 1
  %ECX97 = add i32 %memload90, 1
  %79 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload90, i32 1)
  %CF91 = extractvalue { i32, i1 } %79, 1
  %80 = and i32 %ECX97, 255
  %81 = call i32 @llvm.ctpop.i32(i32 %80)
  %82 = and i32 %81, 1
  %PF92 = icmp eq i32 %82, 0
  %ZF93 = icmp eq i32 %ECX97, 0
  %highbit94 = and i32 -2147483648, %ECX97
  %SF95 = icmp ne i32 %highbit94, 0
  %83 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload90, i32 1)
  %OF96 = extractvalue { i32, i1 } %83, 1
  %RCX98 = sext i32 %ECX97 to i64
  %memref-idxreg99 = mul i64 8, %RCX98
  %memref-basereg100 = add i64 %memload89, %memref-idxreg99
  %84 = inttoptr i64 %memref-basereg100 to ptr
  %memload101 = load i64, ptr %84, align 1
  %85 = inttoptr i64 %memload101 to ptr
  %RAX102 = call i64 @strlen(ptr %85)
  store i64 %RAX102, ptr %RBP_N.56, align 1
  %memload103 = load i64, ptr %RBP_N.48, align 1
  %86 = load i64, ptr %RBP_N.56, align 1
  %87 = sub i64 %memload103, %86
  %88 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %memload103, i64 %86)
  %CF104 = extractvalue { i64, i1 } %88, 1
  %ZF105 = icmp eq i64 %87, 0
  %highbit106 = and i64 -9223372036854775808, %87
  %SF107 = icmp ne i64 %highbit106, 0
  %89 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %memload103, i64 %86)
  %OF108 = extractvalue { i64, i1 } %89, 1
  %90 = and i64 %87, 255
  %91 = call i64 @llvm.ctpop.i64(i64 %90)
  %92 = and i64 %91, 1
  %PF109 = icmp eq i64 %92, 0
  %CFCmp_JA = icmp eq i1 %CF104, false
  %ZFCmp_JA = icmp eq i1 %ZF105, false
  %CFAndZF_JA = and i1 %ZFCmp_JA, %CFCmp_JA
  br i1 %CFAndZF_JA, label %bb.13, label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload110 = load i64, ptr %RBP_N.48, align 1
  %93 = load i64, ptr %RBP_N.56, align 1
  %94 = sub i64 %memload110, %93
  %95 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %memload110, i64 %93)
  %CF111 = extractvalue { i64, i1 } %95, 1
  %ZF112 = icmp eq i64 %94, 0
  %highbit113 = and i64 -9223372036854775808, %94
  %SF114 = icmp ne i64 %highbit113, 0
  %96 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %memload110, i64 %93)
  %OF115 = extractvalue { i64, i1 } %96, 1
  %97 = and i64 %94, 255
  %98 = call i64 @llvm.ctpop.i64(i64 %97)
  %99 = and i64 %98, 1
  %PF116 = icmp eq i64 %99, 0
  %CmpZF_JNE233 = icmp eq i1 %ZF112, false
  br i1 %CmpZF_JNE233, label %bb.14, label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload117 = load i64, ptr %RBP_N.8, align 1
  %memload118 = load i64, ptr %RBP_N.32, align 1
  %100 = trunc i64 %memload118 to i32
  %RCX119 = sext i32 %100 to i64
  %memref-idxreg120 = mul i64 8, %RCX119
  %memref-basereg121 = add i64 %memload117, %memref-idxreg120
  %101 = inttoptr i64 %memref-basereg121 to ptr
  %memload122 = load i64, ptr %101, align 1
  %memload123 = load i64, ptr %RBP_N.8, align 1
  %memload124 = load i32, ptr %RBP_N.32, align 1
  %ECX131 = add i32 %memload124, 1
  %102 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload124, i32 1)
  %CF125 = extractvalue { i32, i1 } %102, 1
  %103 = and i32 %ECX131, 255
  %104 = call i32 @llvm.ctpop.i32(i32 %103)
  %105 = and i32 %104, 1
  %PF126 = icmp eq i32 %105, 0
  %ZF127 = icmp eq i32 %ECX131, 0
  %highbit128 = and i32 -2147483648, %ECX131
  %SF129 = icmp ne i32 %highbit128, 0
  %106 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload124, i32 1)
  %OF130 = extractvalue { i32, i1 } %106, 1
  %RCX132 = sext i32 %ECX131 to i64
  %memref-idxreg133 = mul i64 8, %RCX132
  %memref-basereg134 = add i64 %memload123, %memref-idxreg133
  %107 = inttoptr i64 %memref-basereg134 to ptr
  %memload135 = load i64, ptr %107, align 1
  %108 = inttoptr i64 %memload122 to ptr
  %109 = inttoptr i64 %memload135 to ptr
  %EAX136 = call i32 @strcmp(ptr %108, ptr %109)
  %110 = sub i32 %EAX136, 0
  %111 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX136, i32 0)
  %CF137 = extractvalue { i32, i1 } %111, 1
  %ZF138 = icmp eq i32 %110, 0
  %highbit139 = and i32 -2147483648, %110
  %SF140 = icmp ne i32 %highbit139, 0
  %112 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX136, i32 0)
  %OF141 = extractvalue { i32, i1 } %112, 1
  %113 = and i32 %110, 255
  %114 = call i32 @llvm.ctpop.i32(i32 %113)
  %115 = and i32 %114, 1
  %PF142 = icmp eq i32 %115, 0
  %CmpZF_JLE = icmp eq i1 %ZF138, true
  %CmpOF_JLE = icmp ne i1 %SF140, %OF141
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.14, label %bb.13

bb.13:                                            ; preds = %bb.12, %bb.10
  %memload143 = load i64, ptr %RBP_N.8, align 1
  %memload144 = load i64, ptr %RBP_N.32, align 1
  %116 = trunc i64 %memload144 to i32
  %RCX145 = sext i32 %116 to i64
  %memref-idxreg146 = mul i64 8, %RCX145
  %memref-basereg147 = add i64 %memload143, %memref-idxreg146
  %117 = inttoptr i64 %memref-basereg147 to ptr
  %memload148 = load i64, ptr %117, align 1
  store i64 %memload148, ptr %RBP_N.40, align 1
  %memload149 = load i64, ptr %RBP_N.8, align 1
  %memload150 = load i32, ptr %RBP_N.32, align 1
  %ECX157 = add i32 %memload150, 1
  %118 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload150, i32 1)
  %CF151 = extractvalue { i32, i1 } %118, 1
  %119 = and i32 %ECX157, 255
  %120 = call i32 @llvm.ctpop.i32(i32 %119)
  %121 = and i32 %120, 1
  %PF152 = icmp eq i32 %121, 0
  %ZF153 = icmp eq i32 %ECX157, 0
  %highbit154 = and i32 -2147483648, %ECX157
  %SF155 = icmp ne i32 %highbit154, 0
  %122 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload150, i32 1)
  %OF156 = extractvalue { i32, i1 } %122, 1
  %RCX158 = sext i32 %ECX157 to i64
  %memref-idxreg159 = mul i64 8, %RCX158
  %memref-basereg160 = add i64 %memload149, %memref-idxreg159
  %123 = inttoptr i64 %memref-basereg160 to ptr
  %memload161 = load i64, ptr %123, align 1
  %memload162 = load i64, ptr %RBP_N.8, align 1
  %memload163 = load i64, ptr %RBP_N.32, align 1
  %124 = trunc i64 %memload163 to i32
  %RCX164 = sext i32 %124 to i64
  %memref-idxreg165 = mul i64 8, %RCX164
  %memref-basereg166 = add i64 %memload162, %memref-idxreg165
  %125 = inttoptr i64 %memref-basereg166 to ptr
  store i64 %memload161, ptr %125, align 1
  %memload167 = load i64, ptr %RBP_N.40, align 1
  %memload168 = load i64, ptr %RBP_N.8, align 1
  %memload169 = load i32, ptr %RBP_N.32, align 1
  %ECX176 = add i32 %memload169, 1
  %126 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload169, i32 1)
  %CF170 = extractvalue { i32, i1 } %126, 1
  %127 = and i32 %ECX176, 255
  %128 = call i32 @llvm.ctpop.i32(i32 %127)
  %129 = and i32 %128, 1
  %PF171 = icmp eq i32 %129, 0
  %ZF172 = icmp eq i32 %ECX176, 0
  %highbit173 = and i32 -2147483648, %ECX176
  %SF174 = icmp ne i32 %highbit173, 0
  %130 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload169, i32 1)
  %OF175 = extractvalue { i32, i1 } %130, 1
  %RCX177 = sext i32 %ECX176 to i64
  %memref-idxreg178 = mul i64 8, %RCX177
  %memref-basereg179 = add i64 %memload168, %memref-idxreg178
  %131 = inttoptr i64 %memref-basereg179 to ptr
  store i64 %memload167, ptr %131, align 1
  br label %bb.14

bb.14:                                            ; preds = %bb.13, %bb.12, %bb.11
  br label %bb.15

bb.15:                                            ; preds = %bb.14
  %memload180 = load i32, ptr %RBP_N.32, align 1
  %EAX187 = add i32 %memload180, 1
  %132 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload180, i32 1)
  %CF181 = extractvalue { i32, i1 } %132, 1
  %133 = and i32 %EAX187, 255
  %134 = call i32 @llvm.ctpop.i32(i32 %133)
  %135 = and i32 %134, 1
  %PF182 = icmp eq i32 %135, 0
  %ZF183 = icmp eq i32 %EAX187, 0
  %highbit184 = and i32 -2147483648, %EAX187
  %SF185 = icmp ne i32 %highbit184, 0
  %136 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload180, i32 1)
  %OF186 = extractvalue { i32, i1 } %136, 1
  store i32 %EAX187, ptr %RBP_N.32, align 1
  br label %bb.9

bb.16:                                            ; preds = %bb.9
  br label %bb.17

bb.17:                                            ; preds = %bb.16
  %memload188 = load i32, ptr %RBP_N.28, align 1
  %EAX195 = add i32 %memload188, 1
  %137 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload188, i32 1)
  %CF189 = extractvalue { i32, i1 } %137, 1
  %138 = and i32 %EAX195, 255
  %139 = call i32 @llvm.ctpop.i32(i32 %138)
  %140 = and i32 %139, 1
  %PF190 = icmp eq i32 %140, 0
  %ZF191 = icmp eq i32 %EAX195, 0
  %highbit192 = and i32 -2147483648, %EAX195
  %SF193 = icmp ne i32 %highbit192, 0
  %141 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload188, i32 1)
  %OF194 = extractvalue { i32, i1 } %141, 1
  store i32 %EAX195, ptr %RBP_N.28, align 1
  br label %bb.7

bb.18:                                            ; preds = %bb.7
  %memload196 = load i64, ptr %RBP_N.24, align 1
  %142 = inttoptr i64 %memload196 to ptr
  %memload197 = load i64, ptr %142, align 1
  %143 = trunc i64 %memload197 to i32
  %RDI = sext i32 %143 to i64
  %RDI201 = shl i64 %RDI, 3
  %ZF198 = icmp eq i64 %RDI201, 0
  %highbit199 = and i64 -9223372036854775808, %RDI201
  %SF200 = icmp ne i64 %highbit199, 0
  %144 = call ptr @malloc(i64 %RDI201)
  %RAX202 = ptrtoint ptr %144 to i64
  store i64 %RAX202, ptr %stktop_8, align 1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.19

bb.19:                                            ; preds = %bb.18, %bb.20
  %memload203 = load i32, ptr %RBP_N.28, align 1
  %memload204 = load i64, ptr %RBP_N.24, align 1
  %145 = inttoptr i64 %memload204 to ptr
  %146 = load i32, ptr %145, align 1
  %147 = sub i32 %memload203, %146
  %148 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload203, i32 %146)
  %CF205 = extractvalue { i32, i1 } %148, 1
  %ZF206 = icmp eq i32 %147, 0
  %highbit207 = and i32 -2147483648, %147
  %SF208 = icmp ne i32 %highbit207, 0
  %149 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload203, i32 %146)
  %OF209 = extractvalue { i32, i1 } %149, 1
  %150 = and i32 %147, 255
  %151 = call i32 @llvm.ctpop.i32(i32 %150)
  %152 = and i32 %151, 1
  %PF210 = icmp eq i32 %152, 0
  %CmpSFOF_JGE234 = icmp eq i1 %SF208, %OF209
  br i1 %CmpSFOF_JGE234, label %bb.21, label %bb.20

bb.20:                                            ; preds = %bb.19
  %memload211 = load i64, ptr %RBP_N.8, align 1
  %memload212 = load i64, ptr %RBP_N.28, align 1
  %153 = trunc i64 %memload212 to i32
  %RCX213 = sext i32 %153 to i64
  %memref-idxreg214 = mul i64 8, %RCX213
  %memref-basereg215 = add i64 %memload211, %memref-idxreg214
  %154 = inttoptr i64 %memref-basereg215 to ptr
  %memload216 = load i64, ptr %154, align 1
  %memload217 = load i64, ptr %stktop_8, align 1
  %memload218 = load i64, ptr %RBP_N.28, align 1
  %155 = trunc i64 %memload218 to i32
  %RCX219 = sext i32 %155 to i64
  %memref-idxreg220 = mul i64 8, %RCX219
  %memref-basereg221 = add i64 %memload217, %memref-idxreg220
  %156 = inttoptr i64 %memref-basereg221 to ptr
  store i64 %memload216, ptr %156, align 1
  %memload222 = load i32, ptr %RBP_N.28, align 1
  %EAX229 = add i32 %memload222, 1
  %157 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload222, i32 1)
  %CF223 = extractvalue { i32, i1 } %157, 1
  %158 = and i32 %EAX229, 255
  %159 = call i32 @llvm.ctpop.i32(i32 %158)
  %160 = and i32 %159, 1
  %PF224 = icmp eq i32 %160, 0
  %ZF225 = icmp eq i32 %EAX229, 0
  %highbit226 = and i32 -2147483648, %EAX229
  %SF227 = icmp ne i32 %highbit226, 0
  %161 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload222, i32 1)
  %OF228 = extractvalue { i32, i1 } %161, 1
  store i32 %EAX229, ptr %RBP_N.28, align 1
  br label %bb.19

bb.21:                                            ; preds = %bb.19
  %memload230 = load i64, ptr %stktop_8, align 1
  ret i64 %memload230
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
