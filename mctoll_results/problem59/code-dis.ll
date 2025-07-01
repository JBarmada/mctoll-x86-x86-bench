; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i64 %arg1, i32 %arg2, i64 %arg3, i32 %arg4, i64 %arg5) {
entry:
  %stktop_8 = alloca i8, i32 88, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.72 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.68 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.64 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.60 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.56 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 36
  %RBP_N.52 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 40
  %RBP_N.48 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 48
  %RBP_N.40 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 60
  %RBP_N.28 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 64
  %RBP_N.24 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 76
  %RBP_N.12 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 80
  %RBP_N.8 = inttoptr i64 %11 to ptr
  %12 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %12 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  store i32 %arg4, ptr %RBP_N.28, align 1
  store i64 %arg5, ptr %RBP_N.40, align 1
  %memload = load i64, ptr %RBP_N.12, align 1
  %13 = trunc i64 %memload to i32
  %RDI = sext i32 %13 to i64
  %RDI1 = shl i64 %RDI, 2
  %ZF = icmp eq i64 %RDI1, 0
  %highbit = and i64 -9223372036854775808, %RDI1
  %SF = icmp ne i64 %highbit, 0
  %14 = call ptr @malloc(i64 %RDI1)
  %RAX = ptrtoint ptr %14 to i64
  store i64 %RAX, ptr %RBP_N.48, align 1
  store i32 0, ptr %RBP_N.52, align 1
  store i32 0, ptr %RBP_N.56, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.17
  %memload2 = load i32, ptr %RBP_N.56, align 1
  %15 = load i32, ptr %RBP_N.12, align 1
  %16 = sub i32 %memload2, %15
  %17 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload2, i32 %15)
  %CF = extractvalue { i32, i1 } %17, 1
  %ZF3 = icmp eq i32 %16, 0
  %highbit4 = and i32 -2147483648, %16
  %SF5 = icmp ne i32 %highbit4, 0
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload2, i32 %15)
  %OF = extractvalue { i32, i1 } %18, 1
  %19 = and i32 %16, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = and i32 %20, 1
  %PF = icmp eq i32 %21, 0
  %CmpSFOF_JGE = icmp eq i1 %SF5, %OF
  br i1 %CmpSFOF_JGE, label %bb.18, label %bb.2

bb.2:                                             ; preds = %bb.1
  store i32 0, ptr %RBP_N.68, align 1
  store i32 0, ptr %RBP_N.64, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %memload6 = load i32, ptr %RBP_N.64, align 1
  %22 = load i32, ptr %RBP_N.52, align 1
  %23 = sub i32 %memload6, %22
  %24 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload6, i32 %22)
  %CF7 = extractvalue { i32, i1 } %24, 1
  %ZF8 = icmp eq i32 %23, 0
  %highbit9 = and i32 -2147483648, %23
  %SF10 = icmp ne i32 %highbit9, 0
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload6, i32 %22)
  %OF11 = extractvalue { i32, i1 } %25, 1
  %26 = and i32 %23, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF12 = icmp eq i32 %28, 0
  %CmpSFOF_JGE211 = icmp eq i1 %SF10, %OF11
  br i1 %CmpSFOF_JGE211, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload13 = load i64, ptr %RBP_N.48, align 1
  %memload14 = load i64, ptr %RBP_N.64, align 1
  %29 = trunc i64 %memload14 to i32
  %RCX = sext i32 %29 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload13, %memref-idxreg
  %30 = inttoptr i64 %memref-basereg to ptr
  %memload15 = load i32, ptr %30, align 1
  %memload16 = load i64, ptr %RBP_N.8, align 1
  %memload17 = load i64, ptr %RBP_N.56, align 1
  %31 = trunc i64 %memload17 to i32
  %RDX = sext i32 %31 to i64
  %memref-idxreg18 = mul i64 4, %RDX
  %memref-basereg19 = add i64 %memload16, %memref-idxreg18
  %32 = inttoptr i64 %memref-basereg19 to ptr
  %33 = load i32, ptr %32, align 1
  %34 = sub i32 %memload15, %33
  %35 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload15, i32 %33)
  %CF20 = extractvalue { i32, i1 } %35, 1
  %ZF21 = icmp eq i32 %34, 0
  %highbit22 = and i32 -2147483648, %34
  %SF23 = icmp ne i32 %highbit22, 0
  %36 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload15, i32 %33)
  %OF24 = extractvalue { i32, i1 } %36, 1
  %37 = and i32 %34, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF25 = icmp eq i32 %39, 0
  %CmpZF_JNE = icmp eq i1 %ZF21, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  store i32 1, ptr %RBP_N.68, align 1
  br label %bb.8

bb.6:                                             ; preds = %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload26 = load i32, ptr %RBP_N.64, align 1
  %EAX = add i32 %memload26, 1
  %40 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload26, i32 1)
  %CF27 = extractvalue { i32, i1 } %40, 1
  %41 = and i32 %EAX, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41)
  %43 = and i32 %42, 1
  %PF28 = icmp eq i32 %43, 0
  %ZF29 = icmp eq i32 %EAX, 0
  %highbit30 = and i32 -2147483648, %EAX
  %SF31 = icmp ne i32 %highbit30, 0
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload26, i32 1)
  %OF32 = extractvalue { i32, i1 } %44, 1
  store i32 %EAX, ptr %RBP_N.64, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.5, %bb.3
  %45 = load i32, ptr %RBP_N.68, align 1
  %46 = zext i32 %45 to i64
  %47 = zext i32 0 to i64
  %48 = sub i64 %46, %47
  %49 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %46, i64 %47)
  %CF33 = extractvalue { i64, i1 } %49, 1
  %ZF34 = icmp eq i64 %48, 0
  %highbit35 = and i64 -9223372036854775808, %48
  %SF36 = icmp ne i64 %highbit35, 0
  %50 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %46, i64 %47)
  %OF37 = extractvalue { i64, i1 } %50, 1
  %51 = and i64 %48, 255
  %52 = call i64 @llvm.ctpop.i64(i64 %51)
  %53 = and i64 %52, 1
  %PF38 = icmp eq i64 %53, 0
  %CmpZF_JNE212 = icmp eq i1 %ZF34, false
  br i1 %CmpZF_JNE212, label %bb.16, label %bb.9

bb.9:                                             ; preds = %bb.8
  store i32 0, ptr %RBP_N.60, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.14
  %memload39 = load i32, ptr %RBP_N.60, align 1
  %54 = load i32, ptr %RBP_N.28, align 1
  %55 = sub i32 %memload39, %54
  %56 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload39, i32 %54)
  %CF40 = extractvalue { i32, i1 } %56, 1
  %ZF41 = icmp eq i32 %55, 0
  %highbit42 = and i32 -2147483648, %55
  %SF43 = icmp ne i32 %highbit42, 0
  %57 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload39, i32 %54)
  %OF44 = extractvalue { i32, i1 } %57, 1
  %58 = and i32 %55, 255
  %59 = call i32 @llvm.ctpop.i32(i32 %58)
  %60 = and i32 %59, 1
  %PF45 = icmp eq i32 %60, 0
  %CmpSFOF_JGE213 = icmp eq i1 %SF43, %OF44
  br i1 %CmpSFOF_JGE213, label %bb.15, label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload46 = load i64, ptr %RBP_N.8, align 1
  %memload47 = load i64, ptr %RBP_N.56, align 1
  %61 = trunc i64 %memload47 to i32
  %RCX48 = sext i32 %61 to i64
  %memref-idxreg49 = mul i64 4, %RCX48
  %memref-basereg50 = add i64 %memload46, %memref-idxreg49
  %62 = inttoptr i64 %memref-basereg50 to ptr
  %memload51 = load i32, ptr %62, align 1
  %memload52 = load i64, ptr %RBP_N.24, align 1
  %memload53 = load i64, ptr %RBP_N.60, align 1
  %63 = trunc i64 %memload53 to i32
  %RDX54 = sext i32 %63 to i64
  %memref-idxreg55 = mul i64 4, %RDX54
  %memref-basereg56 = add i64 %memload52, %memref-idxreg55
  %64 = inttoptr i64 %memref-basereg56 to ptr
  %65 = load i32, ptr %64, align 1
  %66 = sub i32 %memload51, %65
  %67 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload51, i32 %65)
  %CF57 = extractvalue { i32, i1 } %67, 1
  %ZF58 = icmp eq i32 %66, 0
  %highbit59 = and i32 -2147483648, %66
  %SF60 = icmp ne i32 %highbit59, 0
  %68 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload51, i32 %65)
  %OF61 = extractvalue { i32, i1 } %68, 1
  %69 = and i32 %66, 255
  %70 = call i32 @llvm.ctpop.i32(i32 %69)
  %71 = and i32 %70, 1
  %PF62 = icmp eq i32 %71, 0
  %CmpZF_JNE214 = icmp eq i1 %ZF58, false
  br i1 %CmpZF_JNE214, label %bb.13, label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload63 = load i64, ptr %RBP_N.8, align 1
  %memload64 = load i64, ptr %RBP_N.56, align 1
  %72 = trunc i64 %memload64 to i32
  %RCX65 = sext i32 %72 to i64
  %memref-idxreg66 = mul i64 4, %RCX65
  %memref-basereg67 = add i64 %memload63, %memref-idxreg66
  %73 = inttoptr i64 %memref-basereg67 to ptr
  %memload68 = load i32, ptr %73, align 1
  %memload69 = load i64, ptr %RBP_N.48, align 1
  %memload70 = load i32, ptr %RBP_N.52, align 1
  %ESI = add i32 %memload70, 1
  %74 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload70, i32 1)
  %CF71 = extractvalue { i32, i1 } %74, 1
  %75 = and i32 %ESI, 255
  %76 = call i32 @llvm.ctpop.i32(i32 %75)
  %77 = and i32 %76, 1
  %PF72 = icmp eq i32 %77, 0
  %ZF73 = icmp eq i32 %ESI, 0
  %highbit74 = and i32 -2147483648, %ESI
  %SF75 = icmp ne i32 %highbit74, 0
  %78 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload70, i32 1)
  %OF76 = extractvalue { i32, i1 } %78, 1
  store i32 %ESI, ptr %RBP_N.52, align 1
  %RCX77 = sext i32 %memload70 to i64
  %memref-idxreg78 = mul i64 4, %RCX77
  %memref-basereg79 = add i64 %memload69, %memref-idxreg78
  %79 = inttoptr i64 %memref-basereg79 to ptr
  store i32 %memload68, ptr %79, align 1
  br label %bb.15

bb.13:                                            ; preds = %bb.11
  br label %bb.14

bb.14:                                            ; preds = %bb.13
  %memload80 = load i32, ptr %RBP_N.60, align 1
  %EAX87 = add i32 %memload80, 1
  %80 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload80, i32 1)
  %CF81 = extractvalue { i32, i1 } %80, 1
  %81 = and i32 %EAX87, 255
  %82 = call i32 @llvm.ctpop.i32(i32 %81)
  %83 = and i32 %82, 1
  %PF82 = icmp eq i32 %83, 0
  %ZF83 = icmp eq i32 %EAX87, 0
  %highbit84 = and i32 -2147483648, %EAX87
  %SF85 = icmp ne i32 %highbit84, 0
  %84 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload80, i32 1)
  %OF86 = extractvalue { i32, i1 } %84, 1
  store i32 %EAX87, ptr %RBP_N.60, align 1
  br label %bb.10

bb.15:                                            ; preds = %bb.12, %bb.10
  br label %bb.16

bb.16:                                            ; preds = %bb.15, %bb.8
  br label %bb.17

bb.17:                                            ; preds = %bb.16
  %memload88 = load i32, ptr %RBP_N.56, align 1
  %EAX95 = add i32 %memload88, 1
  %85 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload88, i32 1)
  %CF89 = extractvalue { i32, i1 } %85, 1
  %86 = and i32 %EAX95, 255
  %87 = call i32 @llvm.ctpop.i32(i32 %86)
  %88 = and i32 %87, 1
  %PF90 = icmp eq i32 %88, 0
  %ZF91 = icmp eq i32 %EAX95, 0
  %highbit92 = and i32 -2147483648, %EAX95
  %SF93 = icmp ne i32 %highbit92, 0
  %89 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload88, i32 1)
  %OF94 = extractvalue { i32, i1 } %89, 1
  store i32 %EAX95, ptr %RBP_N.56, align 1
  br label %bb.1

bb.18:                                            ; preds = %bb.1
  store i32 0, ptr %RBP_N.56, align 1
  br label %bb.19

bb.19:                                            ; preds = %bb.18, %bb.27
  %memload96 = load i32, ptr %RBP_N.56, align 1
  %memload97 = load i32, ptr %RBP_N.52, align 1
  %ECX = sub i32 %memload97, 1
  %90 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload97, i32 1)
  %CF98 = extractvalue { i32, i1 } %90, 1
  %91 = and i32 %ECX, 255
  %92 = call i32 @llvm.ctpop.i32(i32 %91)
  %93 = and i32 %92, 1
  %PF99 = icmp eq i32 %93, 0
  %ZF100 = icmp eq i32 %ECX, 0
  %highbit101 = and i32 -2147483648, %ECX
  %SF102 = icmp ne i32 %highbit101, 0
  %94 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload97, i32 1)
  %OF103 = extractvalue { i32, i1 } %94, 1
  %95 = sub i32 %memload96, %ECX
  %96 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload96, i32 %ECX)
  %CF104 = extractvalue { i32, i1 } %96, 1
  %ZF105 = icmp eq i32 %95, 0
  %highbit106 = and i32 -2147483648, %95
  %SF107 = icmp ne i32 %highbit106, 0
  %97 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload96, i32 %ECX)
  %OF108 = extractvalue { i32, i1 } %97, 1
  %98 = and i32 %95, 255
  %99 = call i32 @llvm.ctpop.i32(i32 %98)
  %100 = and i32 %99, 1
  %PF109 = icmp eq i32 %100, 0
  %CmpSFOF_JGE215 = icmp eq i1 %SF107, %OF108
  br i1 %CmpSFOF_JGE215, label %bb.28, label %bb.20

bb.20:                                            ; preds = %bb.19
  store i32 0, ptr %RBP_N.60, align 1
  br label %bb.21

bb.21:                                            ; preds = %bb.20, %bb.25
  %memload110 = load i32, ptr %RBP_N.60, align 1
  %memload111 = load i32, ptr %RBP_N.52, align 1
  %101 = load i32, ptr %RBP_N.56, align 1
  %ECX112 = sub i32 %memload111, %101
  %102 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload111, i32 %101)
  %CF113 = extractvalue { i32, i1 } %102, 1
  %ZF114 = icmp eq i32 %ECX112, 0
  %highbit115 = and i32 -2147483648, %ECX112
  %SF116 = icmp ne i32 %highbit115, 0
  %103 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload111, i32 %101)
  %OF117 = extractvalue { i32, i1 } %103, 1
  %104 = and i32 %ECX112, 255
  %105 = call i32 @llvm.ctpop.i32(i32 %104)
  %106 = and i32 %105, 1
  %PF118 = icmp eq i32 %106, 0
  %ECX125 = sub i32 %ECX112, 1
  %107 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ECX112, i32 1)
  %CF119 = extractvalue { i32, i1 } %107, 1
  %108 = and i32 %ECX125, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108)
  %110 = and i32 %109, 1
  %PF120 = icmp eq i32 %110, 0
  %ZF121 = icmp eq i32 %ECX125, 0
  %highbit122 = and i32 -2147483648, %ECX125
  %SF123 = icmp ne i32 %highbit122, 0
  %111 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ECX112, i32 1)
  %OF124 = extractvalue { i32, i1 } %111, 1
  %112 = sub i32 %memload110, %ECX125
  %113 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload110, i32 %ECX125)
  %CF126 = extractvalue { i32, i1 } %113, 1
  %ZF127 = icmp eq i32 %112, 0
  %highbit128 = and i32 -2147483648, %112
  %SF129 = icmp ne i32 %highbit128, 0
  %114 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload110, i32 %ECX125)
  %OF130 = extractvalue { i32, i1 } %114, 1
  %115 = and i32 %112, 255
  %116 = call i32 @llvm.ctpop.i32(i32 %115)
  %117 = and i32 %116, 1
  %PF131 = icmp eq i32 %117, 0
  %CmpSFOF_JGE216 = icmp eq i1 %SF129, %OF130
  br i1 %CmpSFOF_JGE216, label %bb.26, label %bb.22

bb.22:                                            ; preds = %bb.21
  %memload132 = load i64, ptr %RBP_N.48, align 1
  %memload133 = load i64, ptr %RBP_N.60, align 1
  %118 = trunc i64 %memload133 to i32
  %RCX134 = sext i32 %118 to i64
  %memref-idxreg135 = mul i64 4, %RCX134
  %memref-basereg136 = add i64 %memload132, %memref-idxreg135
  %119 = inttoptr i64 %memref-basereg136 to ptr
  %memload137 = load i32, ptr %119, align 1
  %memload138 = load i64, ptr %RBP_N.48, align 1
  %memload139 = load i32, ptr %RBP_N.60, align 1
  %EDX = add i32 %memload139, 1
  %120 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload139, i32 1)
  %CF140 = extractvalue { i32, i1 } %120, 1
  %121 = and i32 %EDX, 255
  %122 = call i32 @llvm.ctpop.i32(i32 %121)
  %123 = and i32 %122, 1
  %PF141 = icmp eq i32 %123, 0
  %ZF142 = icmp eq i32 %EDX, 0
  %highbit143 = and i32 -2147483648, %EDX
  %SF144 = icmp ne i32 %highbit143, 0
  %124 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload139, i32 1)
  %OF145 = extractvalue { i32, i1 } %124, 1
  %RDX146 = sext i32 %EDX to i64
  %memref-idxreg147 = mul i64 4, %RDX146
  %memref-basereg148 = add i64 %memload138, %memref-idxreg147
  %125 = inttoptr i64 %memref-basereg148 to ptr
  %126 = load i32, ptr %125, align 1
  %127 = sub i32 %memload137, %126
  %128 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload137, i32 %126)
  %CF149 = extractvalue { i32, i1 } %128, 1
  %ZF150 = icmp eq i32 %127, 0
  %highbit151 = and i32 -2147483648, %127
  %SF152 = icmp ne i32 %highbit151, 0
  %129 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload137, i32 %126)
  %OF153 = extractvalue { i32, i1 } %129, 1
  %130 = and i32 %127, 255
  %131 = call i32 @llvm.ctpop.i32(i32 %130)
  %132 = and i32 %131, 1
  %PF154 = icmp eq i32 %132, 0
  %CmpZF_JLE = icmp eq i1 %ZF150, true
  %CmpOF_JLE = icmp ne i1 %SF152, %OF153
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.24, label %bb.23

bb.23:                                            ; preds = %bb.22
  %memload155 = load i64, ptr %RBP_N.48, align 1
  %memload156 = load i64, ptr %RBP_N.60, align 1
  %133 = trunc i64 %memload156 to i32
  %RCX157 = sext i32 %133 to i64
  %memref-idxreg158 = mul i64 4, %RCX157
  %memref-basereg159 = add i64 %memload155, %memref-idxreg158
  %134 = inttoptr i64 %memref-basereg159 to ptr
  %memload160 = load i32, ptr %134, align 1
  store i32 %memload160, ptr %RBP_N.72, align 1
  %memload161 = load i64, ptr %RBP_N.48, align 1
  %memload162 = load i32, ptr %RBP_N.60, align 1
  %ECX169 = add i32 %memload162, 1
  %135 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload162, i32 1)
  %CF163 = extractvalue { i32, i1 } %135, 1
  %136 = and i32 %ECX169, 255
  %137 = call i32 @llvm.ctpop.i32(i32 %136)
  %138 = and i32 %137, 1
  %PF164 = icmp eq i32 %138, 0
  %ZF165 = icmp eq i32 %ECX169, 0
  %highbit166 = and i32 -2147483648, %ECX169
  %SF167 = icmp ne i32 %highbit166, 0
  %139 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload162, i32 1)
  %OF168 = extractvalue { i32, i1 } %139, 1
  %RCX170 = sext i32 %ECX169 to i64
  %memref-idxreg171 = mul i64 4, %RCX170
  %memref-basereg172 = add i64 %memload161, %memref-idxreg171
  %140 = inttoptr i64 %memref-basereg172 to ptr
  %memload173 = load i32, ptr %140, align 1
  %memload174 = load i64, ptr %RBP_N.48, align 1
  %memload175 = load i64, ptr %RBP_N.60, align 1
  %141 = trunc i64 %memload175 to i32
  %RCX176 = sext i32 %141 to i64
  %memref-idxreg177 = mul i64 4, %RCX176
  %memref-basereg178 = add i64 %memload174, %memref-idxreg177
  %142 = inttoptr i64 %memref-basereg178 to ptr
  store i32 %memload173, ptr %142, align 1
  %memload179 = load i32, ptr %RBP_N.72, align 1
  %memload180 = load i64, ptr %RBP_N.48, align 1
  %memload181 = load i32, ptr %RBP_N.60, align 1
  %ECX188 = add i32 %memload181, 1
  %143 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload181, i32 1)
  %CF182 = extractvalue { i32, i1 } %143, 1
  %144 = and i32 %ECX188, 255
  %145 = call i32 @llvm.ctpop.i32(i32 %144)
  %146 = and i32 %145, 1
  %PF183 = icmp eq i32 %146, 0
  %ZF184 = icmp eq i32 %ECX188, 0
  %highbit185 = and i32 -2147483648, %ECX188
  %SF186 = icmp ne i32 %highbit185, 0
  %147 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload181, i32 1)
  %OF187 = extractvalue { i32, i1 } %147, 1
  %RCX189 = sext i32 %ECX188 to i64
  %memref-idxreg190 = mul i64 4, %RCX189
  %memref-basereg191 = add i64 %memload180, %memref-idxreg190
  %148 = inttoptr i64 %memref-basereg191 to ptr
  store i32 %memload179, ptr %148, align 1
  br label %bb.24

bb.24:                                            ; preds = %bb.23, %bb.22
  br label %bb.25

bb.25:                                            ; preds = %bb.24
  %memload192 = load i32, ptr %RBP_N.60, align 1
  %EAX199 = add i32 %memload192, 1
  %149 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload192, i32 1)
  %CF193 = extractvalue { i32, i1 } %149, 1
  %150 = and i32 %EAX199, 255
  %151 = call i32 @llvm.ctpop.i32(i32 %150)
  %152 = and i32 %151, 1
  %PF194 = icmp eq i32 %152, 0
  %ZF195 = icmp eq i32 %EAX199, 0
  %highbit196 = and i32 -2147483648, %EAX199
  %SF197 = icmp ne i32 %highbit196, 0
  %153 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload192, i32 1)
  %OF198 = extractvalue { i32, i1 } %153, 1
  store i32 %EAX199, ptr %RBP_N.60, align 1
  br label %bb.21

bb.26:                                            ; preds = %bb.21
  br label %bb.27

bb.27:                                            ; preds = %bb.26
  %memload200 = load i32, ptr %RBP_N.56, align 1
  %EAX207 = add i32 %memload200, 1
  %154 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload200, i32 1)
  %CF201 = extractvalue { i32, i1 } %154, 1
  %155 = and i32 %EAX207, 255
  %156 = call i32 @llvm.ctpop.i32(i32 %155)
  %157 = and i32 %156, 1
  %PF202 = icmp eq i32 %157, 0
  %ZF203 = icmp eq i32 %EAX207, 0
  %highbit204 = and i32 -2147483648, %EAX207
  %SF205 = icmp ne i32 %highbit204, 0
  %158 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload200, i32 1)
  %OF206 = extractvalue { i32, i1 } %158, 1
  store i32 %EAX207, ptr %RBP_N.56, align 1
  br label %bb.19

bb.28:                                            ; preds = %bb.19
  %memload208 = load i32, ptr %RBP_N.52, align 1
  %memload209 = load i64, ptr %RBP_N.40, align 1
  %159 = inttoptr i64 %memload209 to ptr
  store i32 %memload208, ptr %159, align 1
  %memload210 = load i64, ptr %RBP_N.48, align 1
  ret i64 %memload210
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
