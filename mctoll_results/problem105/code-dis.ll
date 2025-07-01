; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

define dso_local i32 @func0(i64 %arg1, i32 %arg2, i64 %arg3, i64 %arg4) {
entry:
  %stktop_8 = alloca i8, i32 72, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.56 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.52 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.48 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 31
  %RBP_N.41 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.40 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 36
  %RBP_N.36 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 40
  %RBP_N.32 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 48
  %RBP_N.24 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 60
  %RBP_N.12 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 64
  %RBP_N.8 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %10 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  store i64 %arg4, ptr %RBP_N.32, align 1
  %memload = load i64, ptr %RBP_N.12, align 1
  %11 = trunc i64 %memload to i32
  %RDI = sext i32 %11 to i64
  %RDI1 = shl i64 %RDI, 2
  %ZF = icmp eq i64 %RDI1, 0
  %highbit = and i64 -9223372036854775808, %RDI1
  %SF = icmp ne i64 %highbit, 0
  %12 = call ptr @malloc(i64 %RDI1)
  %RAX = ptrtoint ptr %12 to i64
  %memload2 = load i64, ptr %RBP_N.24, align 1
  %13 = inttoptr i64 %memload2 to ptr
  store i64 %RAX, ptr %13, align 1
  %memload3 = load i64, ptr %RBP_N.32, align 1
  %14 = inttoptr i64 %memload3 to ptr
  store i32 0, ptr %14, align 1
  store i32 0, ptr %RBP_N.36, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.15
  %memload4 = load i32, ptr %RBP_N.36, align 1
  %15 = load i32, ptr %RBP_N.12, align 1
  %16 = sub i32 %memload4, %15
  %17 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload4, i32 %15)
  %CF = extractvalue { i32, i1 } %17, 1
  %ZF5 = icmp eq i32 %16, 0
  %highbit6 = and i32 -2147483648, %16
  %SF7 = icmp ne i32 %highbit6, 0
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload4, i32 %15)
  %OF = extractvalue { i32, i1 } %18, 1
  %19 = and i32 %16, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = and i32 %20, 1
  %PF = icmp eq i32 %21, 0
  %CmpSFOF_JGE = icmp eq i1 %SF7, %OF
  br i1 %CmpSFOF_JGE, label %bb.16, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload8 = load i64, ptr %RBP_N.8, align 1
  %memload9 = load i64, ptr %RBP_N.36, align 1
  %22 = trunc i64 %memload9 to i32
  %RCX = sext i32 %22 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload8, %memref-idxreg
  %23 = inttoptr i64 %memref-basereg to ptr
  %memload10 = load i32, ptr %23, align 1
  store i32 %memload10, ptr %RBP_N.40, align 1
  store i8 0, ptr %RBP_N.41, align 1
  %24 = load i32, ptr %RBP_N.40, align 1
  %25 = zext i32 %24 to i64
  %26 = zext i32 0 to i64
  %27 = sub i64 %25, %26
  %28 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %25, i64 %26)
  %CF11 = extractvalue { i64, i1 } %28, 1
  %ZF12 = icmp eq i64 %27, 0
  %highbit13 = and i64 -9223372036854775808, %27
  %SF14 = icmp ne i64 %highbit13, 0
  %29 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %25, i64 %26)
  %OF15 = extractvalue { i64, i1 } %29, 1
  %30 = and i64 %27, 255
  %31 = call i64 @llvm.ctpop.i64(i64 %30)
  %32 = and i64 %31, 1
  %PF16 = icmp eq i64 %32, 0
  %CmpZF_JNE = icmp eq i1 %ZF12, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  store i8 1, ptr %RBP_N.41, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.11, %bb.4
  %33 = load i32, ptr %RBP_N.40, align 1
  %34 = zext i32 %33 to i64
  %35 = zext i32 0 to i64
  %36 = sub i64 %34, %35
  %37 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %35)
  %CF17 = extractvalue { i64, i1 } %37, 1
  %ZF18 = icmp eq i64 %36, 0
  %highbit19 = and i64 -9223372036854775808, %36
  %SF20 = icmp ne i64 %highbit19, 0
  %38 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %34, i64 %35)
  %OF21 = extractvalue { i64, i1 } %38, 1
  %39 = and i64 %36, 255
  %40 = call i64 @llvm.ctpop.i64(i64 %39)
  %41 = and i64 %40, 1
  %PF22 = icmp eq i64 %41, 0
  %42 = ptrtoint ptr %stktop_8 to i64
  %43 = add i64 %42, 7
  %44 = trunc i32 0 to i8
  %45 = inttoptr i64 %43 to ptr
  store i8 %44, ptr %45, align 1
  %CmpZF_JLE = icmp eq i1 %ZF18, true
  %CmpOF_JLE = icmp ne i1 %SF20, %OF21
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload23 = load i8, ptr %RBP_N.41, align 1
  %AL = xor i8 %memload23, -1
  %46 = call i8 @llvm.ctpop.i8(i8 %AL)
  %47 = and i8 %46, 1
  %PF24 = icmp eq i8 %47, 0
  %ZF25 = icmp eq i8 %AL, 0
  %highbit26 = and i8 -128, %AL
  %SF27 = icmp ne i8 %highbit26, 0
  %48 = ptrtoint ptr %stktop_8 to i64
  %49 = add i64 %48, 7
  %50 = inttoptr i64 %49 to ptr
  store i8 %AL, ptr %50, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.5
  %51 = ptrtoint ptr %stktop_8 to i64
  %52 = add i64 %51, 7
  %53 = inttoptr i64 %52 to ptr
  %memload28 = load i8, ptr %53, align 1
  %54 = and i8 %memload28, 1
  %55 = call i8 @llvm.ctpop.i8(i8 %54)
  %56 = and i8 %55, 1
  %PF29 = icmp eq i8 %56, 0
  %ZF30 = icmp eq i8 %54, 0
  %highbit31 = and i8 -128, %54
  %SF32 = icmp ne i8 %highbit31, 0
  %CmpZF_JNE203 = icmp eq i1 %ZF30, false
  br i1 %CmpZF_JNE203, label %bb.9, label %bb.8

bb.8:                                             ; preds = %bb.7
  br label %bb.12

bb.12:                                            ; preds = %bb.8
  %57 = load i8, ptr %RBP_N.41, align 1
  %58 = zext i8 %57 to i64
  %59 = zext i8 1 to i64
  %60 = and i64 %58, %59
  %ZF33 = icmp eq i64 %60, 0
  %highbit34 = and i64 -9223372036854775808, %60
  %SF35 = icmp ne i64 %highbit34, 0
  %61 = and i64 %60, 255
  %62 = call i64 @llvm.ctpop.i64(i64 %61)
  %63 = and i64 %62, 1
  %PF36 = icmp eq i64 %63, 0
  %CmpZF_JNE204 = icmp eq i1 %ZF33, false
  br i1 %CmpZF_JNE204, label %bb.14, label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload37 = load i64, ptr %RBP_N.8, align 1
  %memload38 = load i64, ptr %RBP_N.36, align 1
  %64 = trunc i64 %memload38 to i32
  %RCX39 = sext i32 %64 to i64
  %memref-idxreg40 = mul i64 4, %RCX39
  %memref-basereg41 = add i64 %memload37, %memref-idxreg40
  %65 = inttoptr i64 %memref-basereg41 to ptr
  %memload42 = load i32, ptr %65, align 1
  %memload43 = load i64, ptr %RBP_N.24, align 1
  %66 = inttoptr i64 %memload43 to ptr
  %memload44 = load i64, ptr %66, align 1
  %memload45 = load i64, ptr %RBP_N.32, align 1
  %67 = inttoptr i64 %memload45 to ptr
  %memload46 = load i64, ptr %67, align 1
  %68 = trunc i64 %memload46 to i32
  %RCX47 = sext i32 %68 to i64
  %memref-idxreg48 = mul i64 4, %RCX47
  %memref-basereg49 = add i64 %memload44, %memref-idxreg48
  %69 = inttoptr i64 %memref-basereg49 to ptr
  store i32 %memload42, ptr %69, align 1
  %memload50 = load i64, ptr %RBP_N.32, align 1
  %70 = inttoptr i64 %memload50 to ptr
  %memload51 = load i32, ptr %70, align 1
  %ECX = add i32 %memload51, 1
  %71 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload51, i32 1)
  %CF52 = extractvalue { i32, i1 } %71, 1
  %72 = and i32 %ECX, 255
  %73 = call i32 @llvm.ctpop.i32(i32 %72)
  %74 = and i32 %73, 1
  %PF53 = icmp eq i32 %74, 0
  %ZF54 = icmp eq i32 %ECX, 0
  %highbit55 = and i32 -2147483648, %ECX
  %SF56 = icmp ne i32 %highbit55, 0
  %75 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload51, i32 1)
  %OF57 = extractvalue { i32, i1 } %75, 1
  %76 = inttoptr i64 %memload50 to ptr
  store i32 %ECX, ptr %76, align 1
  br label %bb.14

bb.14:                                            ; preds = %bb.13, %bb.12
  br label %bb.15

bb.15:                                            ; preds = %bb.14
  %memload58 = load i32, ptr %RBP_N.36, align 1
  %EAX = add i32 %memload58, 1
  %77 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload58, i32 1)
  %CF59 = extractvalue { i32, i1 } %77, 1
  %78 = and i32 %EAX, 255
  %79 = call i32 @llvm.ctpop.i32(i32 %78)
  %80 = and i32 %79, 1
  %PF60 = icmp eq i32 %80, 0
  %ZF61 = icmp eq i32 %EAX, 0
  %highbit62 = and i32 -2147483648, %EAX
  %SF63 = icmp ne i32 %highbit62, 0
  %81 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload58, i32 1)
  %OF64 = extractvalue { i32, i1 } %81, 1
  store i32 %EAX, ptr %RBP_N.36, align 1
  br label %bb.1

bb.9:                                             ; preds = %bb.7
  %memload65 = load i32, ptr %RBP_N.40, align 1
  %82 = sext i32 %memload65 to i64
  %83 = lshr i64 %82, 32
  %EDX = trunc i64 %83 to i32
  %84 = sext i32 %memload65 to i64
  %85 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %85, 32
  %dividend = or i64 %div_hb_ls, %84
  %86 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %86
  %EAX66 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %86
  %EDX67 = trunc i64 %div_r to i32
  %87 = sub i32 %EDX67, 0
  %88 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX67, i32 0)
  %CF68 = extractvalue { i32, i1 } %88, 1
  %ZF69 = icmp eq i32 %87, 0
  %highbit70 = and i32 -2147483648, %87
  %SF71 = icmp ne i32 %highbit70, 0
  %89 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX67, i32 0)
  %OF72 = extractvalue { i32, i1 } %89, 1
  %90 = and i32 %87, 255
  %91 = call i32 @llvm.ctpop.i32(i32 %90)
  %92 = and i32 %91, 1
  %PF73 = icmp eq i32 %92, 0
  %CmpZF_JNE205 = icmp eq i1 %ZF69, false
  br i1 %CmpZF_JNE205, label %bb.11, label %bb.10

bb.10:                                            ; preds = %bb.9
  store i8 1, ptr %RBP_N.41, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.9
  %memload74 = load i32, ptr %RBP_N.40, align 1
  %93 = sext i32 %memload74 to i64
  %94 = lshr i64 %93, 32
  %EDX75 = trunc i64 %94 to i32
  %95 = sext i32 %memload74 to i64
  %96 = sext i32 %EDX75 to i64
  %div_hb_ls76 = shl nuw i64 %96, 32
  %dividend77 = or i64 %div_hb_ls76, %95
  %97 = sext i32 10 to i64
  %div_q78 = sdiv i64 %dividend77, %97
  %EAX79 = trunc i64 %div_q78 to i32
  %div_r80 = srem i64 %dividend77, %97
  %EDX81 = trunc i64 %div_r80 to i32
  store i32 %EAX79, ptr %RBP_N.40, align 1
  br label %bb.5

bb.16:                                            ; preds = %bb.1
  store i32 0, ptr %RBP_N.48, align 1
  br label %bb.17

bb.17:                                            ; preds = %bb.16, %bb.25
  %memload82 = load i32, ptr %RBP_N.48, align 1
  %memload83 = load i64, ptr %RBP_N.32, align 1
  %98 = inttoptr i64 %memload83 to ptr
  %memload84 = load i32, ptr %98, align 1
  %ECX91 = sub i32 %memload84, 1
  %99 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload84, i32 1)
  %CF85 = extractvalue { i32, i1 } %99, 1
  %100 = and i32 %ECX91, 255
  %101 = call i32 @llvm.ctpop.i32(i32 %100)
  %102 = and i32 %101, 1
  %PF86 = icmp eq i32 %102, 0
  %ZF87 = icmp eq i32 %ECX91, 0
  %highbit88 = and i32 -2147483648, %ECX91
  %SF89 = icmp ne i32 %highbit88, 0
  %103 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload84, i32 1)
  %OF90 = extractvalue { i32, i1 } %103, 1
  %104 = sub i32 %memload82, %ECX91
  %105 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload82, i32 %ECX91)
  %CF92 = extractvalue { i32, i1 } %105, 1
  %ZF93 = icmp eq i32 %104, 0
  %highbit94 = and i32 -2147483648, %104
  %SF95 = icmp ne i32 %highbit94, 0
  %106 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload82, i32 %ECX91)
  %OF96 = extractvalue { i32, i1 } %106, 1
  %107 = and i32 %104, 255
  %108 = call i32 @llvm.ctpop.i32(i32 %107)
  %109 = and i32 %108, 1
  %PF97 = icmp eq i32 %109, 0
  %CmpSFOF_JGE206 = icmp eq i1 %SF95, %OF96
  br i1 %CmpSFOF_JGE206, label %bb.26, label %bb.18

bb.18:                                            ; preds = %bb.17
  store i32 0, ptr %RBP_N.52, align 1
  br label %bb.19

bb.19:                                            ; preds = %bb.18, %bb.23
  %memload98 = load i32, ptr %RBP_N.52, align 1
  %memload99 = load i64, ptr %RBP_N.32, align 1
  %110 = inttoptr i64 %memload99 to ptr
  %memload100 = load i32, ptr %110, align 1
  %111 = load i32, ptr %RBP_N.48, align 1
  %ECX101 = sub i32 %memload100, %111
  %112 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload100, i32 %111)
  %CF102 = extractvalue { i32, i1 } %112, 1
  %ZF103 = icmp eq i32 %ECX101, 0
  %highbit104 = and i32 -2147483648, %ECX101
  %SF105 = icmp ne i32 %highbit104, 0
  %113 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload100, i32 %111)
  %OF106 = extractvalue { i32, i1 } %113, 1
  %114 = and i32 %ECX101, 255
  %115 = call i32 @llvm.ctpop.i32(i32 %114)
  %116 = and i32 %115, 1
  %PF107 = icmp eq i32 %116, 0
  %ECX114 = sub i32 %ECX101, 1
  %117 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ECX101, i32 1)
  %CF108 = extractvalue { i32, i1 } %117, 1
  %118 = and i32 %ECX114, 255
  %119 = call i32 @llvm.ctpop.i32(i32 %118)
  %120 = and i32 %119, 1
  %PF109 = icmp eq i32 %120, 0
  %ZF110 = icmp eq i32 %ECX114, 0
  %highbit111 = and i32 -2147483648, %ECX114
  %SF112 = icmp ne i32 %highbit111, 0
  %121 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ECX101, i32 1)
  %OF113 = extractvalue { i32, i1 } %121, 1
  %122 = sub i32 %memload98, %ECX114
  %123 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload98, i32 %ECX114)
  %CF115 = extractvalue { i32, i1 } %123, 1
  %ZF116 = icmp eq i32 %122, 0
  %highbit117 = and i32 -2147483648, %122
  %SF118 = icmp ne i32 %highbit117, 0
  %124 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload98, i32 %ECX114)
  %OF119 = extractvalue { i32, i1 } %124, 1
  %125 = and i32 %122, 255
  %126 = call i32 @llvm.ctpop.i32(i32 %125)
  %127 = and i32 %126, 1
  %PF120 = icmp eq i32 %127, 0
  %CmpSFOF_JGE207 = icmp eq i1 %SF118, %OF119
  br i1 %CmpSFOF_JGE207, label %bb.24, label %bb.20

bb.20:                                            ; preds = %bb.19
  %memload121 = load i64, ptr %RBP_N.24, align 1
  %128 = inttoptr i64 %memload121 to ptr
  %memload122 = load i64, ptr %128, align 1
  %memload123 = load i64, ptr %RBP_N.52, align 1
  %129 = trunc i64 %memload123 to i32
  %RCX124 = sext i32 %129 to i64
  %memref-idxreg125 = mul i64 4, %RCX124
  %memref-basereg126 = add i64 %memload122, %memref-idxreg125
  %130 = inttoptr i64 %memref-basereg126 to ptr
  %memload127 = load i32, ptr %130, align 1
  %memload128 = load i64, ptr %RBP_N.24, align 1
  %131 = inttoptr i64 %memload128 to ptr
  %memload129 = load i64, ptr %131, align 1
  %memload130 = load i32, ptr %RBP_N.52, align 1
  %EDX137 = add i32 %memload130, 1
  %132 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload130, i32 1)
  %CF131 = extractvalue { i32, i1 } %132, 1
  %133 = and i32 %EDX137, 255
  %134 = call i32 @llvm.ctpop.i32(i32 %133)
  %135 = and i32 %134, 1
  %PF132 = icmp eq i32 %135, 0
  %ZF133 = icmp eq i32 %EDX137, 0
  %highbit134 = and i32 -2147483648, %EDX137
  %SF135 = icmp ne i32 %highbit134, 0
  %136 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload130, i32 1)
  %OF136 = extractvalue { i32, i1 } %136, 1
  %RDX = sext i32 %EDX137 to i64
  %memref-idxreg138 = mul i64 4, %RDX
  %memref-basereg139 = add i64 %memload129, %memref-idxreg138
  %137 = inttoptr i64 %memref-basereg139 to ptr
  %138 = load i32, ptr %137, align 1
  %139 = sub i32 %memload127, %138
  %140 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload127, i32 %138)
  %CF140 = extractvalue { i32, i1 } %140, 1
  %ZF141 = icmp eq i32 %139, 0
  %highbit142 = and i32 -2147483648, %139
  %SF143 = icmp ne i32 %highbit142, 0
  %141 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload127, i32 %138)
  %OF144 = extractvalue { i32, i1 } %141, 1
  %142 = and i32 %139, 255
  %143 = call i32 @llvm.ctpop.i32(i32 %142)
  %144 = and i32 %143, 1
  %PF145 = icmp eq i32 %144, 0
  %CmpZF_JLE208 = icmp eq i1 %ZF141, true
  %CmpOF_JLE209 = icmp ne i1 %SF143, %OF144
  %ZFOrSF_JLE210 = or i1 %CmpZF_JLE208, %CmpOF_JLE209
  br i1 %ZFOrSF_JLE210, label %bb.22, label %bb.21

bb.21:                                            ; preds = %bb.20
  %memload146 = load i64, ptr %RBP_N.24, align 1
  %145 = inttoptr i64 %memload146 to ptr
  %memload147 = load i64, ptr %145, align 1
  %memload148 = load i64, ptr %RBP_N.52, align 1
  %146 = trunc i64 %memload148 to i32
  %RCX149 = sext i32 %146 to i64
  %memref-idxreg150 = mul i64 4, %RCX149
  %memref-basereg151 = add i64 %memload147, %memref-idxreg150
  %147 = inttoptr i64 %memref-basereg151 to ptr
  %memload152 = load i32, ptr %147, align 1
  store i32 %memload152, ptr %RBP_N.56, align 1
  %memload153 = load i64, ptr %RBP_N.24, align 1
  %148 = inttoptr i64 %memload153 to ptr
  %memload154 = load i64, ptr %148, align 1
  %memload155 = load i32, ptr %RBP_N.52, align 1
  %ECX162 = add i32 %memload155, 1
  %149 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload155, i32 1)
  %CF156 = extractvalue { i32, i1 } %149, 1
  %150 = and i32 %ECX162, 255
  %151 = call i32 @llvm.ctpop.i32(i32 %150)
  %152 = and i32 %151, 1
  %PF157 = icmp eq i32 %152, 0
  %ZF158 = icmp eq i32 %ECX162, 0
  %highbit159 = and i32 -2147483648, %ECX162
  %SF160 = icmp ne i32 %highbit159, 0
  %153 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload155, i32 1)
  %OF161 = extractvalue { i32, i1 } %153, 1
  %RCX163 = sext i32 %ECX162 to i64
  %memref-idxreg164 = mul i64 4, %RCX163
  %memref-basereg165 = add i64 %memload154, %memref-idxreg164
  %154 = inttoptr i64 %memref-basereg165 to ptr
  %memload166 = load i32, ptr %154, align 1
  %memload167 = load i64, ptr %RBP_N.24, align 1
  %155 = inttoptr i64 %memload167 to ptr
  %memload168 = load i64, ptr %155, align 1
  %memload169 = load i64, ptr %RBP_N.52, align 1
  %156 = trunc i64 %memload169 to i32
  %RCX170 = sext i32 %156 to i64
  %memref-idxreg171 = mul i64 4, %RCX170
  %memref-basereg172 = add i64 %memload168, %memref-idxreg171
  %157 = inttoptr i64 %memref-basereg172 to ptr
  store i32 %memload166, ptr %157, align 1
  %memload173 = load i32, ptr %RBP_N.56, align 1
  %memload174 = load i64, ptr %RBP_N.24, align 1
  %158 = inttoptr i64 %memload174 to ptr
  %memload175 = load i64, ptr %158, align 1
  %memload176 = load i32, ptr %RBP_N.52, align 1
  %ECX183 = add i32 %memload176, 1
  %159 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload176, i32 1)
  %CF177 = extractvalue { i32, i1 } %159, 1
  %160 = and i32 %ECX183, 255
  %161 = call i32 @llvm.ctpop.i32(i32 %160)
  %162 = and i32 %161, 1
  %PF178 = icmp eq i32 %162, 0
  %ZF179 = icmp eq i32 %ECX183, 0
  %highbit180 = and i32 -2147483648, %ECX183
  %SF181 = icmp ne i32 %highbit180, 0
  %163 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload176, i32 1)
  %OF182 = extractvalue { i32, i1 } %163, 1
  %RCX184 = sext i32 %ECX183 to i64
  %memref-idxreg185 = mul i64 4, %RCX184
  %memref-basereg186 = add i64 %memload175, %memref-idxreg185
  %164 = inttoptr i64 %memref-basereg186 to ptr
  store i32 %memload173, ptr %164, align 1
  br label %bb.22

bb.22:                                            ; preds = %bb.21, %bb.20
  br label %bb.23

bb.23:                                            ; preds = %bb.22
  %memload187 = load i32, ptr %RBP_N.52, align 1
  %EAX194 = add i32 %memload187, 1
  %165 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload187, i32 1)
  %CF188 = extractvalue { i32, i1 } %165, 1
  %166 = and i32 %EAX194, 255
  %167 = call i32 @llvm.ctpop.i32(i32 %166)
  %168 = and i32 %167, 1
  %PF189 = icmp eq i32 %168, 0
  %ZF190 = icmp eq i32 %EAX194, 0
  %highbit191 = and i32 -2147483648, %EAX194
  %SF192 = icmp ne i32 %highbit191, 0
  %169 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload187, i32 1)
  %OF193 = extractvalue { i32, i1 } %169, 1
  store i32 %EAX194, ptr %RBP_N.52, align 1
  br label %bb.19

bb.24:                                            ; preds = %bb.19
  br label %bb.25

bb.25:                                            ; preds = %bb.24
  %memload195 = load i32, ptr %RBP_N.48, align 1
  %EAX202 = add i32 %memload195, 1
  %170 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload195, i32 1)
  %CF196 = extractvalue { i32, i1 } %170, 1
  %171 = and i32 %EAX202, 255
  %172 = call i32 @llvm.ctpop.i32(i32 %171)
  %173 = and i32 %172, 1
  %PF197 = icmp eq i32 %173, 0
  %ZF198 = icmp eq i32 %EAX202, 0
  %highbit199 = and i32 -2147483648, %EAX202
  %SF200 = icmp ne i32 %highbit199, 0
  %174 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload195, i32 1)
  %OF201 = extractvalue { i32, i1 } %174, 1
  store i32 %EAX202, ptr %RBP_N.48, align 1
  br label %bb.17

bb.26:                                            ; preds = %bb.17
  ret i32 %memload82
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
declare i8 @llvm.ctpop.i8(i8) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
