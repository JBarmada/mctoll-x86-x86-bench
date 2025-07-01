; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

declare dso_local void @exit(i32)

define dso_local i64 @func0(i64 %arg1, i32 %arg2, i64 %arg3, i64 %arg4) {
entry:
  %RAX-SKT-LOC = alloca i64, align 8
  %stktop_8 = alloca i8, i32 72, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.56 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.52 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.48 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.44 = inttoptr i64 %3 to ptr
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
  %memload = load i32, ptr %RBP_N.12, align 1
  %memload1 = load i64, ptr %RBP_N.32, align 1
  %11 = inttoptr i64 %memload1 to ptr
  store i32 %memload, ptr %11, align 1
  %12 = load i32, ptr %RBP_N.12, align 1
  %13 = zext i32 %12 to i64
  %14 = zext i32 0 to i64
  %15 = sub i64 %13, %14
  %16 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %13, i64 %14)
  %CF = extractvalue { i64, i1 } %16, 1
  %ZF = icmp eq i64 %15, 0
  %highbit = and i64 -9223372036854775808, %15
  %SF = icmp ne i64 %highbit, 0
  %17 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %13, i64 %14)
  %OF = extractvalue { i64, i1 } %17, 1
  %18 = and i64 %15, 255
  %19 = call i64 @llvm.ctpop.i64(i64 %18)
  %20 = and i64 %19, 1
  %PF = icmp eq i64 %20, 0
  %CmpZF_JNE = icmp eq i1 %ZF, false
  br i1 %CmpZF_JNE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %memload2 = load i64, ptr %RBP_N.24, align 1
  %21 = inttoptr i64 %memload2 to ptr
  %22 = sext i32 0 to i64
  store i64 %22, ptr %21, align 1
  store i64 %memload2, ptr %RAX-SKT-LOC, align 1
  br label %bb.22

bb.2:                                             ; preds = %entry
  %memload3 = load i64, ptr %RBP_N.12, align 1
  %23 = trunc i64 %memload3 to i32
  %RDI = sext i32 %23 to i64
  %RDI7 = shl i64 %RDI, 2
  %ZF4 = icmp eq i64 %RDI7, 0
  %highbit5 = and i64 -9223372036854775808, %RDI7
  %SF6 = icmp ne i64 %highbit5, 0
  %24 = call ptr @malloc(i64 %RDI7)
  %RAX = ptrtoint ptr %24 to i64
  %memload8 = load i64, ptr %RBP_N.24, align 1
  %25 = inttoptr i64 %memload8 to ptr
  store i64 %RAX, ptr %25, align 1
  %memload9 = load i64, ptr %RBP_N.24, align 1
  %26 = inttoptr i64 %memload9 to ptr
  %27 = load i64, ptr %26, align 1
  %28 = sub i64 %27, 0
  %29 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %27, i64 0)
  %CF10 = extractvalue { i64, i1 } %29, 1
  %ZF11 = icmp eq i64 %28, 0
  %highbit12 = and i64 -9223372036854775808, %28
  %SF13 = icmp ne i64 %highbit12, 0
  %30 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %27, i64 0)
  %OF14 = extractvalue { i64, i1 } %30, 1
  %31 = and i64 %28, 255
  %32 = call i64 @llvm.ctpop.i64(i64 %31)
  %33 = and i64 %32, 1
  %PF15 = icmp eq i64 %33, 0
  %CmpZF_JNE213 = icmp eq i1 %ZF11, false
  br i1 %CmpZF_JNE213, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  tail call void @exit(i32 1)
  unreachable

bb.4:                                             ; preds = %bb.2
  store i32 0, ptr %RBP_N.36, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.6
  %memload16 = load i32, ptr %RBP_N.36, align 1
  %34 = load i32, ptr %RBP_N.12, align 1
  %35 = sub i32 %memload16, %34
  %36 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload16, i32 %34)
  %CF17 = extractvalue { i32, i1 } %36, 1
  %ZF18 = icmp eq i32 %35, 0
  %highbit19 = and i32 -2147483648, %35
  %SF20 = icmp ne i32 %highbit19, 0
  %37 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload16, i32 %34)
  %OF21 = extractvalue { i32, i1 } %37, 1
  %38 = and i32 %35, 255
  %39 = call i32 @llvm.ctpop.i32(i32 %38)
  %40 = and i32 %39, 1
  %PF22 = icmp eq i32 %40, 0
  %CmpSFOF_JGE = icmp eq i1 %SF20, %OF21
  br i1 %CmpSFOF_JGE, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload23 = load i64, ptr %RBP_N.8, align 1
  %memload24 = load i64, ptr %RBP_N.36, align 1
  %41 = trunc i64 %memload24 to i32
  %RCX = sext i32 %41 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload23, %memref-idxreg
  %42 = inttoptr i64 %memref-basereg to ptr
  %memload25 = load i32, ptr %42, align 1
  %memload26 = load i64, ptr %RBP_N.24, align 1
  %43 = inttoptr i64 %memload26 to ptr
  %memload27 = load i64, ptr %43, align 1
  %memload28 = load i64, ptr %RBP_N.36, align 1
  %44 = trunc i64 %memload28 to i32
  %RCX29 = sext i32 %44 to i64
  %memref-idxreg30 = mul i64 4, %RCX29
  %memref-basereg31 = add i64 %memload27, %memref-idxreg30
  %45 = inttoptr i64 %memref-basereg31 to ptr
  store i32 %memload25, ptr %45, align 1
  %memload32 = load i32, ptr %RBP_N.36, align 1
  %EAX = add i32 %memload32, 1
  %46 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload32, i32 1)
  %CF33 = extractvalue { i32, i1 } %46, 1
  %47 = and i32 %EAX, 255
  %48 = call i32 @llvm.ctpop.i32(i32 %47)
  %49 = and i32 %48, 1
  %PF34 = icmp eq i32 %49, 0
  %ZF35 = icmp eq i32 %EAX, 0
  %highbit36 = and i32 -2147483648, %EAX
  %SF37 = icmp ne i32 %highbit36, 0
  %50 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload32, i32 1)
  %OF38 = extractvalue { i32, i1 } %50, 1
  store i32 %EAX, ptr %RBP_N.36, align 1
  br label %bb.5

bb.7:                                             ; preds = %bb.5
  %memload39 = load i64, ptr %RBP_N.8, align 1
  %51 = inttoptr i64 %memload39 to ptr
  %memload40 = load i32, ptr %51, align 1
  %memload41 = load i64, ptr %RBP_N.8, align 1
  %memload42 = load i32, ptr %RBP_N.12, align 1
  %EDX = sub i32 %memload42, 1
  %52 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload42, i32 1)
  %CF43 = extractvalue { i32, i1 } %52, 1
  %53 = and i32 %EDX, 255
  %54 = call i32 @llvm.ctpop.i32(i32 %53)
  %55 = and i32 %54, 1
  %PF44 = icmp eq i32 %55, 0
  %ZF45 = icmp eq i32 %EDX, 0
  %highbit46 = and i32 -2147483648, %EDX
  %SF47 = icmp ne i32 %highbit46, 0
  %56 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload42, i32 1)
  %OF48 = extractvalue { i32, i1 } %56, 1
  %RDX = sext i32 %EDX to i64
  %memref-idxreg49 = mul i64 4, %RDX
  %memref-basereg50 = add i64 %memload41, %memref-idxreg49
  %57 = inttoptr i64 %memref-basereg50 to ptr
  %memload51 = load i32, ptr %57, align 1
  %EAX53 = add i32 %memload40, %memload51
  %58 = and i32 %EAX53, 255
  %59 = call i32 @llvm.ctpop.i32(i32 %58)
  %60 = and i32 %59, 1
  %PF52 = icmp eq i32 %60, 0
  %61 = sext i32 %EAX53 to i64
  %62 = lshr i64 %61, 32
  %EDX54 = trunc i64 %62 to i32
  %63 = sext i32 %EAX53 to i64
  %64 = sext i32 %EDX54 to i64
  %div_hb_ls = shl nuw i64 %64, 32
  %dividend = or i64 %div_hb_ls, %63
  %65 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %65
  %EAX55 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %65
  %EDX56 = trunc i64 %div_r to i32
  %66 = sub i32 %EDX56, 1
  %67 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX56, i32 1)
  %CF57 = extractvalue { i32, i1 } %67, 1
  %ZF58 = icmp eq i32 %66, 0
  %highbit59 = and i32 -2147483648, %66
  %SF60 = icmp ne i32 %highbit59, 0
  %68 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX56, i32 1)
  %OF61 = extractvalue { i32, i1 } %68, 1
  %69 = and i32 %66, 255
  %70 = call i32 @llvm.ctpop.i32(i32 %69)
  %71 = and i32 %70, 1
  %PF62 = icmp eq i32 %71, 0
  %AL = icmp eq i1 %ZF58, true
  %72 = zext i1 %AL to i8
  %AL67 = and i8 %72, 1
  %73 = call i8 @llvm.ctpop.i8(i8 %AL67)
  %74 = and i8 %73, 1
  %PF63 = icmp eq i8 %74, 0
  %ZF64 = icmp eq i8 %AL67, 0
  %highbit65 = and i8 -128, %AL67
  %SF66 = icmp ne i8 %highbit65, 0
  %EAX68 = zext i8 %AL67 to i32
  store i32 %EAX68, ptr %RBP_N.40, align 1
  store i32 0, ptr %RBP_N.44, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.21
  %memload69 = load i32, ptr %RBP_N.44, align 1
  %memload70 = load i32, ptr %RBP_N.12, align 1
  %ECX = sub i32 %memload70, 1
  %75 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload70, i32 1)
  %CF71 = extractvalue { i32, i1 } %75, 1
  %76 = and i32 %ECX, 255
  %77 = call i32 @llvm.ctpop.i32(i32 %76)
  %78 = and i32 %77, 1
  %PF72 = icmp eq i32 %78, 0
  %ZF73 = icmp eq i32 %ECX, 0
  %highbit74 = and i32 -2147483648, %ECX
  %SF75 = icmp ne i32 %highbit74, 0
  %79 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload70, i32 1)
  %OF76 = extractvalue { i32, i1 } %79, 1
  %80 = sub i32 %memload69, %ECX
  %81 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload69, i32 %ECX)
  %CF77 = extractvalue { i32, i1 } %81, 1
  %ZF78 = icmp eq i32 %80, 0
  %highbit79 = and i32 -2147483648, %80
  %SF80 = icmp ne i32 %highbit79, 0
  %82 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload69, i32 %ECX)
  %OF81 = extractvalue { i32, i1 } %82, 1
  %83 = and i32 %80, 255
  %84 = call i32 @llvm.ctpop.i32(i32 %83)
  %85 = and i32 %84, 1
  %PF82 = icmp eq i32 %85, 0
  %86 = zext i32 %memload69 to i64
  store i64 %86, ptr %RAX-SKT-LOC, align 1
  %CmpSFOF_JGE214 = icmp eq i1 %SF80, %OF81
  br i1 %CmpSFOF_JGE214, label %bb.22, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload83 = load i32, ptr %RBP_N.44, align 1
  %EAX90 = add i32 %memload83, 1
  %87 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload83, i32 1)
  %CF84 = extractvalue { i32, i1 } %87, 1
  %88 = and i32 %EAX90, 255
  %89 = call i32 @llvm.ctpop.i32(i32 %88)
  %90 = and i32 %89, 1
  %PF85 = icmp eq i32 %90, 0
  %ZF86 = icmp eq i32 %EAX90, 0
  %highbit87 = and i32 -2147483648, %EAX90
  %SF88 = icmp ne i32 %highbit87, 0
  %91 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload83, i32 1)
  %OF89 = extractvalue { i32, i1 } %91, 1
  store i32 %EAX90, ptr %RBP_N.48, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.19
  %memload91 = load i32, ptr %RBP_N.48, align 1
  %92 = load i32, ptr %RBP_N.12, align 1
  %93 = sub i32 %memload91, %92
  %94 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload91, i32 %92)
  %CF92 = extractvalue { i32, i1 } %94, 1
  %ZF93 = icmp eq i32 %93, 0
  %highbit94 = and i32 -2147483648, %93
  %SF95 = icmp ne i32 %highbit94, 0
  %95 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload91, i32 %92)
  %OF96 = extractvalue { i32, i1 } %95, 1
  %96 = and i32 %93, 255
  %97 = call i32 @llvm.ctpop.i32(i32 %96)
  %98 = and i32 %97, 1
  %PF97 = icmp eq i32 %98, 0
  %CmpSFOF_JGE215 = icmp eq i1 %SF95, %OF96
  br i1 %CmpSFOF_JGE215, label %bb.20, label %bb.11

bb.11:                                            ; preds = %bb.10
  %99 = load i32, ptr %RBP_N.40, align 1
  %100 = zext i32 %99 to i64
  %101 = zext i32 0 to i64
  %102 = sub i64 %100, %101
  %103 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %100, i64 %101)
  %CF98 = extractvalue { i64, i1 } %103, 1
  %ZF99 = icmp eq i64 %102, 0
  %highbit100 = and i64 -9223372036854775808, %102
  %SF101 = icmp ne i64 %highbit100, 0
  %104 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %100, i64 %101)
  %OF102 = extractvalue { i64, i1 } %104, 1
  %105 = and i64 %102, 255
  %106 = call i64 @llvm.ctpop.i64(i64 %105)
  %107 = and i64 %106, 1
  %PF103 = icmp eq i64 %107, 0
  %CmpZF_JE = icmp eq i1 %ZF99, true
  br i1 %CmpZF_JE, label %bb.15, label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload104 = load i64, ptr %RBP_N.24, align 1
  %108 = inttoptr i64 %memload104 to ptr
  %memload105 = load i64, ptr %108, align 1
  %memload106 = load i64, ptr %RBP_N.44, align 1
  %109 = trunc i64 %memload106 to i32
  %RCX107 = sext i32 %109 to i64
  %memref-idxreg108 = mul i64 4, %RCX107
  %memref-basereg109 = add i64 %memload105, %memref-idxreg108
  %110 = inttoptr i64 %memref-basereg109 to ptr
  %memload110 = load i32, ptr %110, align 1
  %memload111 = load i64, ptr %RBP_N.24, align 1
  %111 = inttoptr i64 %memload111 to ptr
  %memload112 = load i64, ptr %111, align 1
  %memload113 = load i64, ptr %RBP_N.48, align 1
  %112 = trunc i64 %memload113 to i32
  %RDX114 = sext i32 %112 to i64
  %memref-idxreg115 = mul i64 4, %RDX114
  %memref-basereg116 = add i64 %memload112, %memref-idxreg115
  %113 = inttoptr i64 %memref-basereg116 to ptr
  %114 = load i32, ptr %113, align 1
  %115 = sub i32 %memload110, %114
  %116 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload110, i32 %114)
  %CF117 = extractvalue { i32, i1 } %116, 1
  %ZF118 = icmp eq i32 %115, 0
  %highbit119 = and i32 -2147483648, %115
  %SF120 = icmp ne i32 %highbit119, 0
  %117 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload110, i32 %114)
  %OF121 = extractvalue { i32, i1 } %117, 1
  %118 = and i32 %115, 255
  %119 = call i32 @llvm.ctpop.i32(i32 %118)
  %120 = and i32 %119, 1
  %PF122 = icmp eq i32 %120, 0
  %CmpZF_JLE = icmp eq i1 %ZF118, true
  %CmpOF_JLE = icmp ne i1 %SF120, %OF121
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.14, label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload123 = load i64, ptr %RBP_N.24, align 1
  %121 = inttoptr i64 %memload123 to ptr
  %memload124 = load i64, ptr %121, align 1
  %memload125 = load i64, ptr %RBP_N.44, align 1
  %122 = trunc i64 %memload125 to i32
  %RCX126 = sext i32 %122 to i64
  %memref-idxreg127 = mul i64 4, %RCX126
  %memref-basereg128 = add i64 %memload124, %memref-idxreg127
  %123 = inttoptr i64 %memref-basereg128 to ptr
  %memload129 = load i32, ptr %123, align 1
  store i32 %memload129, ptr %RBP_N.52, align 1
  %memload130 = load i64, ptr %RBP_N.24, align 1
  %124 = inttoptr i64 %memload130 to ptr
  %memload131 = load i64, ptr %124, align 1
  %memload132 = load i64, ptr %RBP_N.48, align 1
  %125 = trunc i64 %memload132 to i32
  %RCX133 = sext i32 %125 to i64
  %memref-idxreg134 = mul i64 4, %RCX133
  %memref-basereg135 = add i64 %memload131, %memref-idxreg134
  %126 = inttoptr i64 %memref-basereg135 to ptr
  %memload136 = load i32, ptr %126, align 1
  %memload137 = load i64, ptr %RBP_N.24, align 1
  %127 = inttoptr i64 %memload137 to ptr
  %memload138 = load i64, ptr %127, align 1
  %memload139 = load i64, ptr %RBP_N.44, align 1
  %128 = trunc i64 %memload139 to i32
  %RCX140 = sext i32 %128 to i64
  %memref-idxreg141 = mul i64 4, %RCX140
  %memref-basereg142 = add i64 %memload138, %memref-idxreg141
  %129 = inttoptr i64 %memref-basereg142 to ptr
  store i32 %memload136, ptr %129, align 1
  %memload143 = load i32, ptr %RBP_N.52, align 1
  %memload144 = load i64, ptr %RBP_N.24, align 1
  %130 = inttoptr i64 %memload144 to ptr
  %memload145 = load i64, ptr %130, align 1
  %memload146 = load i64, ptr %RBP_N.48, align 1
  %131 = trunc i64 %memload146 to i32
  %RCX147 = sext i32 %131 to i64
  %memref-idxreg148 = mul i64 4, %RCX147
  %memref-basereg149 = add i64 %memload145, %memref-idxreg148
  %132 = inttoptr i64 %memref-basereg149 to ptr
  store i32 %memload143, ptr %132, align 1
  br label %bb.14

bb.14:                                            ; preds = %bb.13, %bb.12
  br label %bb.18

bb.15:                                            ; preds = %bb.11
  %memload150 = load i64, ptr %RBP_N.24, align 1
  %133 = inttoptr i64 %memload150 to ptr
  %memload151 = load i64, ptr %133, align 1
  %memload152 = load i64, ptr %RBP_N.44, align 1
  %134 = trunc i64 %memload152 to i32
  %RCX153 = sext i32 %134 to i64
  %memref-idxreg154 = mul i64 4, %RCX153
  %memref-basereg155 = add i64 %memload151, %memref-idxreg154
  %135 = inttoptr i64 %memref-basereg155 to ptr
  %memload156 = load i32, ptr %135, align 1
  %memload157 = load i64, ptr %RBP_N.24, align 1
  %136 = inttoptr i64 %memload157 to ptr
  %memload158 = load i64, ptr %136, align 1
  %memload159 = load i64, ptr %RBP_N.48, align 1
  %137 = trunc i64 %memload159 to i32
  %RDX160 = sext i32 %137 to i64
  %memref-idxreg161 = mul i64 4, %RDX160
  %memref-basereg162 = add i64 %memload158, %memref-idxreg161
  %138 = inttoptr i64 %memref-basereg162 to ptr
  %139 = load i32, ptr %138, align 1
  %140 = sub i32 %memload156, %139
  %141 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload156, i32 %139)
  %CF163 = extractvalue { i32, i1 } %141, 1
  %ZF164 = icmp eq i32 %140, 0
  %highbit165 = and i32 -2147483648, %140
  %SF166 = icmp ne i32 %highbit165, 0
  %142 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload156, i32 %139)
  %OF167 = extractvalue { i32, i1 } %142, 1
  %143 = and i32 %140, 255
  %144 = call i32 @llvm.ctpop.i32(i32 %143)
  %145 = and i32 %144, 1
  %PF168 = icmp eq i32 %145, 0
  %CmpSFOF_JGE216 = icmp eq i1 %SF166, %OF167
  br i1 %CmpSFOF_JGE216, label %bb.17, label %bb.16

bb.16:                                            ; preds = %bb.15
  %memload169 = load i64, ptr %RBP_N.24, align 1
  %146 = inttoptr i64 %memload169 to ptr
  %memload170 = load i64, ptr %146, align 1
  %memload171 = load i64, ptr %RBP_N.44, align 1
  %147 = trunc i64 %memload171 to i32
  %RCX172 = sext i32 %147 to i64
  %memref-idxreg173 = mul i64 4, %RCX172
  %memref-basereg174 = add i64 %memload170, %memref-idxreg173
  %148 = inttoptr i64 %memref-basereg174 to ptr
  %memload175 = load i32, ptr %148, align 1
  store i32 %memload175, ptr %RBP_N.56, align 1
  %memload176 = load i64, ptr %RBP_N.24, align 1
  %149 = inttoptr i64 %memload176 to ptr
  %memload177 = load i64, ptr %149, align 1
  %memload178 = load i64, ptr %RBP_N.48, align 1
  %150 = trunc i64 %memload178 to i32
  %RCX179 = sext i32 %150 to i64
  %memref-idxreg180 = mul i64 4, %RCX179
  %memref-basereg181 = add i64 %memload177, %memref-idxreg180
  %151 = inttoptr i64 %memref-basereg181 to ptr
  %memload182 = load i32, ptr %151, align 1
  %memload183 = load i64, ptr %RBP_N.24, align 1
  %152 = inttoptr i64 %memload183 to ptr
  %memload184 = load i64, ptr %152, align 1
  %memload185 = load i64, ptr %RBP_N.44, align 1
  %153 = trunc i64 %memload185 to i32
  %RCX186 = sext i32 %153 to i64
  %memref-idxreg187 = mul i64 4, %RCX186
  %memref-basereg188 = add i64 %memload184, %memref-idxreg187
  %154 = inttoptr i64 %memref-basereg188 to ptr
  store i32 %memload182, ptr %154, align 1
  %memload189 = load i32, ptr %RBP_N.56, align 1
  %memload190 = load i64, ptr %RBP_N.24, align 1
  %155 = inttoptr i64 %memload190 to ptr
  %memload191 = load i64, ptr %155, align 1
  %memload192 = load i64, ptr %RBP_N.48, align 1
  %156 = trunc i64 %memload192 to i32
  %RCX193 = sext i32 %156 to i64
  %memref-idxreg194 = mul i64 4, %RCX193
  %memref-basereg195 = add i64 %memload191, %memref-idxreg194
  %157 = inttoptr i64 %memref-basereg195 to ptr
  store i32 %memload189, ptr %157, align 1
  br label %bb.17

bb.17:                                            ; preds = %bb.16, %bb.15
  br label %bb.18

bb.18:                                            ; preds = %bb.17, %bb.14
  br label %bb.19

bb.19:                                            ; preds = %bb.18
  %memload196 = load i32, ptr %RBP_N.48, align 1
  %EAX203 = add i32 %memload196, 1
  %158 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload196, i32 1)
  %CF197 = extractvalue { i32, i1 } %158, 1
  %159 = and i32 %EAX203, 255
  %160 = call i32 @llvm.ctpop.i32(i32 %159)
  %161 = and i32 %160, 1
  %PF198 = icmp eq i32 %161, 0
  %ZF199 = icmp eq i32 %EAX203, 0
  %highbit200 = and i32 -2147483648, %EAX203
  %SF201 = icmp ne i32 %highbit200, 0
  %162 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload196, i32 1)
  %OF202 = extractvalue { i32, i1 } %162, 1
  store i32 %EAX203, ptr %RBP_N.48, align 1
  br label %bb.10

bb.20:                                            ; preds = %bb.10
  br label %bb.21

bb.21:                                            ; preds = %bb.20
  %memload204 = load i32, ptr %RBP_N.44, align 1
  %EAX211 = add i32 %memload204, 1
  %163 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload204, i32 1)
  %CF205 = extractvalue { i32, i1 } %163, 1
  %164 = and i32 %EAX211, 255
  %165 = call i32 @llvm.ctpop.i32(i32 %164)
  %166 = and i32 %165, 1
  %PF206 = icmp eq i32 %166, 0
  %ZF207 = icmp eq i32 %EAX211, 0
  %highbit208 = and i32 -2147483648, %EAX211
  %SF209 = icmp ne i32 %highbit208, 0
  %167 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload204, i32 1)
  %OF210 = extractvalue { i32, i1 } %167, 1
  store i32 %EAX211, ptr %RBP_N.44, align 1
  br label %bb.8

bb.22:                                            ; preds = %bb.8, %bb.1
  %RAX212 = load i64, ptr %RAX-SKT-LOC, align 1
  ret i64 %RAX212
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
