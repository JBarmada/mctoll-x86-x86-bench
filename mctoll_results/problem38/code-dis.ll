; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

declare dso_local void @free(ptr)

define dso_local void @func0(i64 %arg1, i32 %arg2, i64 %arg3) {
entry:
  %stktop_8 = alloca i8, i32 72, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.56 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.48 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.44 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.40 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.36 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 40
  %RBP_N.32 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 48
  %RBP_N.24 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 60
  %RBP_N.12 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 64
  %RBP_N.8 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %9 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  %memload = load i32, ptr %RBP_N.12, align 1
  %10 = sext i32 %memload to i64
  %11 = lshr i64 %10, 32
  %EDX = trunc i64 %11 to i32
  %12 = sext i32 %memload to i64
  %13 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %13, 32
  %dividend = or i64 %div_hb_ls, %12
  %14 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %14
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %14
  %EDX1 = trunc i64 %div_r to i32
  %EAX2 = add i32 %EAX, 1
  %15 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EAX, i32 1)
  %CF = extractvalue { i32, i1 } %15, 1
  %16 = and i32 %EAX2, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = and i32 %17, 1
  %PF = icmp eq i32 %18, 0
  %ZF = icmp eq i32 %EAX2, 0
  %highbit = and i32 -2147483648, %EAX2
  %SF = icmp ne i32 %highbit, 0
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EAX, i32 1)
  %OF = extractvalue { i32, i1 } %19, 1
  %RDI = sext i32 %EAX2 to i64
  %RDI6 = shl i64 %RDI, 2
  %ZF3 = icmp eq i64 %RDI6, 0
  %highbit4 = and i64 -9223372036854775808, %RDI6
  %SF5 = icmp ne i64 %highbit4, 0
  %20 = call ptr @malloc(i64 %RDI6)
  %RAX = ptrtoint ptr %20 to i64
  store i64 %RAX, ptr %RBP_N.32, align 1
  store i32 0, ptr %RBP_N.44, align 1
  store i32 0, ptr %RBP_N.36, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload7 = load i32, ptr %RBP_N.36, align 1
  %21 = load i32, ptr %RBP_N.12, align 1
  %22 = sub i32 %memload7, %21
  %23 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload7, i32 %21)
  %CF8 = extractvalue { i32, i1 } %23, 1
  %ZF9 = icmp eq i32 %22, 0
  %highbit10 = and i32 -2147483648, %22
  %SF11 = icmp ne i32 %highbit10, 0
  %24 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload7, i32 %21)
  %OF12 = extractvalue { i32, i1 } %24, 1
  %25 = and i32 %22, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = and i32 %26, 1
  %PF13 = icmp eq i32 %27, 0
  %CmpSFOF_JGE = icmp eq i1 %SF11, %OF12
  br i1 %CmpSFOF_JGE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload14 = load i64, ptr %RBP_N.8, align 1
  %memload15 = load i64, ptr %RBP_N.36, align 1
  %28 = trunc i64 %memload15 to i32
  %RCX = sext i32 %28 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload14, %memref-idxreg
  %29 = inttoptr i64 %memref-basereg to ptr
  %memload16 = load float, ptr %29, align 1
  %memload17 = load i64, ptr %RBP_N.32, align 1
  %memload18 = load i32, ptr %RBP_N.44, align 1
  %EDX25 = add i32 %memload18, 1
  %30 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload18, i32 1)
  %CF19 = extractvalue { i32, i1 } %30, 1
  %31 = and i32 %EDX25, 255
  %32 = call i32 @llvm.ctpop.i32(i32 %31)
  %33 = and i32 %32, 1
  %PF20 = icmp eq i32 %33, 0
  %ZF21 = icmp eq i32 %EDX25, 0
  %highbit22 = and i32 -2147483648, %EDX25
  %SF23 = icmp ne i32 %highbit22, 0
  %34 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload18, i32 1)
  %OF24 = extractvalue { i32, i1 } %34, 1
  store i32 %EDX25, ptr %RBP_N.44, align 1
  %RCX26 = sext i32 %memload18 to i64
  %memref-idxreg27 = mul i64 4, %RCX26
  %memref-basereg28 = add i64 %memload17, %memref-idxreg27
  %35 = inttoptr i64 %memref-basereg28 to ptr
  store float %memload16, ptr %35, align 1
  %memload29 = load i32, ptr %RBP_N.36, align 1
  %EAX36 = add i32 %memload29, 2
  %36 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload29, i32 2)
  %CF30 = extractvalue { i32, i1 } %36, 1
  %37 = and i32 %EAX36, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF31 = icmp eq i32 %39, 0
  %ZF32 = icmp eq i32 %EAX36, 0
  %highbit33 = and i32 -2147483648, %EAX36
  %SF34 = icmp ne i32 %highbit33, 0
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload29, i32 2)
  %OF35 = extractvalue { i32, i1 } %40, 1
  store i32 %EAX36, ptr %RBP_N.36, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  store i32 0, ptr %RBP_N.36, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.12
  %memload37 = load i32, ptr %RBP_N.36, align 1
  %memload38 = load i32, ptr %RBP_N.44, align 1
  %ECX = sub i32 %memload38, 1
  %41 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload38, i32 1)
  %CF39 = extractvalue { i32, i1 } %41, 1
  %42 = and i32 %ECX, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = and i32 %43, 1
  %PF40 = icmp eq i32 %44, 0
  %ZF41 = icmp eq i32 %ECX, 0
  %highbit42 = and i32 -2147483648, %ECX
  %SF43 = icmp ne i32 %highbit42, 0
  %45 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload38, i32 1)
  %OF44 = extractvalue { i32, i1 } %45, 1
  %46 = sub i32 %memload37, %ECX
  %47 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload37, i32 %ECX)
  %CF45 = extractvalue { i32, i1 } %47, 1
  %ZF46 = icmp eq i32 %46, 0
  %highbit47 = and i32 -2147483648, %46
  %SF48 = icmp ne i32 %highbit47, 0
  %48 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload37, i32 %ECX)
  %OF49 = extractvalue { i32, i1 } %48, 1
  %49 = and i32 %46, 255
  %50 = call i32 @llvm.ctpop.i32(i32 %49)
  %51 = and i32 %50, 1
  %PF50 = icmp eq i32 %51, 0
  %CmpSFOF_JGE208 = icmp eq i1 %SF48, %OF49
  br i1 %CmpSFOF_JGE208, label %bb.13, label %bb.5

bb.5:                                             ; preds = %bb.4
  store i32 0, ptr %RBP_N.40, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.10
  %memload51 = load i32, ptr %RBP_N.40, align 1
  %memload52 = load i32, ptr %RBP_N.44, align 1
  %52 = load i32, ptr %RBP_N.36, align 1
  %ECX53 = sub i32 %memload52, %52
  %53 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload52, i32 %52)
  %CF54 = extractvalue { i32, i1 } %53, 1
  %ZF55 = icmp eq i32 %ECX53, 0
  %highbit56 = and i32 -2147483648, %ECX53
  %SF57 = icmp ne i32 %highbit56, 0
  %54 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload52, i32 %52)
  %OF58 = extractvalue { i32, i1 } %54, 1
  %55 = and i32 %ECX53, 255
  %56 = call i32 @llvm.ctpop.i32(i32 %55)
  %57 = and i32 %56, 1
  %PF59 = icmp eq i32 %57, 0
  %ECX66 = sub i32 %ECX53, 1
  %58 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ECX53, i32 1)
  %CF60 = extractvalue { i32, i1 } %58, 1
  %59 = and i32 %ECX66, 255
  %60 = call i32 @llvm.ctpop.i32(i32 %59)
  %61 = and i32 %60, 1
  %PF61 = icmp eq i32 %61, 0
  %ZF62 = icmp eq i32 %ECX66, 0
  %highbit63 = and i32 -2147483648, %ECX66
  %SF64 = icmp ne i32 %highbit63, 0
  %62 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ECX53, i32 1)
  %OF65 = extractvalue { i32, i1 } %62, 1
  %63 = sub i32 %memload51, %ECX66
  %64 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload51, i32 %ECX66)
  %CF67 = extractvalue { i32, i1 } %64, 1
  %ZF68 = icmp eq i32 %63, 0
  %highbit69 = and i32 -2147483648, %63
  %SF70 = icmp ne i32 %highbit69, 0
  %65 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload51, i32 %ECX66)
  %OF71 = extractvalue { i32, i1 } %65, 1
  %66 = and i32 %63, 255
  %67 = call i32 @llvm.ctpop.i32(i32 %66)
  %68 = and i32 %67, 1
  %PF72 = icmp eq i32 %68, 0
  %CmpSFOF_JGE209 = icmp eq i1 %SF70, %OF71
  br i1 %CmpSFOF_JGE209, label %bb.11, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload73 = load i64, ptr %RBP_N.32, align 1
  %memload74 = load i64, ptr %RBP_N.40, align 1
  %69 = trunc i64 %memload74 to i32
  %RCX75 = sext i32 %69 to i64
  %memref-idxreg76 = mul i64 4, %RCX75
  %memref-basereg77 = add i64 %memload73, %memref-idxreg76
  %70 = inttoptr i64 %memref-basereg77 to ptr
  %memload78 = load float, ptr %70, align 1
  %memload79 = load i64, ptr %RBP_N.32, align 1
  %memload80 = load i32, ptr %RBP_N.40, align 1
  %ECX87 = add i32 %memload80, 1
  %71 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload80, i32 1)
  %CF81 = extractvalue { i32, i1 } %71, 1
  %72 = and i32 %ECX87, 255
  %73 = call i32 @llvm.ctpop.i32(i32 %72)
  %74 = and i32 %73, 1
  %PF82 = icmp eq i32 %74, 0
  %ZF83 = icmp eq i32 %ECX87, 0
  %highbit84 = and i32 -2147483648, %ECX87
  %SF85 = icmp ne i32 %highbit84, 0
  %75 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload80, i32 1)
  %OF86 = extractvalue { i32, i1 } %75, 1
  %RCX88 = sext i32 %ECX87 to i64
  %memref-idxreg89 = mul i64 4, %RCX88
  %memref-basereg90 = add i64 %memload79, %memref-idxreg89
  %76 = insertelement <4 x float> zeroinitializer, float %memload78, i64 0
  %77 = bitcast <4 x float> %76 to <4 x float>
  %78 = inttoptr i64 %memref-basereg90 to ptr
  %memload91 = load <4 x float>, ptr %78, align 1
  %cmp_operand_1 = extractelement <4 x float> %77, i64 0
  %cmp_operand_2 = extractelement <4 x float> %memload91, i64 0
  %CF92 = fcmp ult float %cmp_operand_1, %cmp_operand_2
  %ZF93 = fcmp ueq float %cmp_operand_1, %cmp_operand_2
  %PF94 = fcmp uno float %cmp_operand_1, %cmp_operand_2
  %CFCmp_JBE = icmp eq i1 %CF92, true
  %ZFCmp_JBE = icmp eq i1 %ZF93, true
  %CFAndZF_JBE = or i1 %ZFCmp_JBE, %CFCmp_JBE
  br i1 %CFAndZF_JBE, label %bb.9, label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload95 = load i64, ptr %RBP_N.32, align 1
  %memload96 = load i64, ptr %RBP_N.40, align 1
  %79 = trunc i64 %memload96 to i32
  %RCX97 = sext i32 %79 to i64
  %memref-idxreg98 = mul i64 4, %RCX97
  %memref-basereg99 = add i64 %memload95, %memref-idxreg98
  %80 = inttoptr i64 %memref-basereg99 to ptr
  %memload100 = load float, ptr %80, align 1
  store float %memload100, ptr %RBP_N.48, align 1
  %memload101 = load i64, ptr %RBP_N.32, align 1
  %memload102 = load i32, ptr %RBP_N.40, align 1
  %ECX109 = add i32 %memload102, 1
  %81 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload102, i32 1)
  %CF103 = extractvalue { i32, i1 } %81, 1
  %82 = and i32 %ECX109, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82)
  %84 = and i32 %83, 1
  %PF104 = icmp eq i32 %84, 0
  %ZF105 = icmp eq i32 %ECX109, 0
  %highbit106 = and i32 -2147483648, %ECX109
  %SF107 = icmp ne i32 %highbit106, 0
  %85 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload102, i32 1)
  %OF108 = extractvalue { i32, i1 } %85, 1
  %RCX110 = sext i32 %ECX109 to i64
  %memref-idxreg111 = mul i64 4, %RCX110
  %memref-basereg112 = add i64 %memload101, %memref-idxreg111
  %86 = inttoptr i64 %memref-basereg112 to ptr
  %memload113 = load float, ptr %86, align 1
  %memload114 = load i64, ptr %RBP_N.32, align 1
  %memload115 = load i64, ptr %RBP_N.40, align 1
  %87 = trunc i64 %memload115 to i32
  %RCX116 = sext i32 %87 to i64
  %memref-idxreg117 = mul i64 4, %RCX116
  %memref-basereg118 = add i64 %memload114, %memref-idxreg117
  %88 = inttoptr i64 %memref-basereg118 to ptr
  store float %memload113, ptr %88, align 1
  %memload119 = load float, ptr %RBP_N.48, align 1
  %memload120 = load i64, ptr %RBP_N.32, align 1
  %memload121 = load i32, ptr %RBP_N.40, align 1
  %ECX128 = add i32 %memload121, 1
  %89 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload121, i32 1)
  %CF122 = extractvalue { i32, i1 } %89, 1
  %90 = and i32 %ECX128, 255
  %91 = call i32 @llvm.ctpop.i32(i32 %90)
  %92 = and i32 %91, 1
  %PF123 = icmp eq i32 %92, 0
  %ZF124 = icmp eq i32 %ECX128, 0
  %highbit125 = and i32 -2147483648, %ECX128
  %SF126 = icmp ne i32 %highbit125, 0
  %93 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload121, i32 1)
  %OF127 = extractvalue { i32, i1 } %93, 1
  %RCX129 = sext i32 %ECX128 to i64
  %memref-idxreg130 = mul i64 4, %RCX129
  %memref-basereg131 = add i64 %memload120, %memref-idxreg130
  %94 = inttoptr i64 %memref-basereg131 to ptr
  store float %memload119, ptr %94, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.7
  br label %bb.10

bb.10:                                            ; preds = %bb.9
  %memload132 = load i32, ptr %RBP_N.40, align 1
  %EAX139 = add i32 %memload132, 1
  %95 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload132, i32 1)
  %CF133 = extractvalue { i32, i1 } %95, 1
  %96 = and i32 %EAX139, 255
  %97 = call i32 @llvm.ctpop.i32(i32 %96)
  %98 = and i32 %97, 1
  %PF134 = icmp eq i32 %98, 0
  %ZF135 = icmp eq i32 %EAX139, 0
  %highbit136 = and i32 -2147483648, %EAX139
  %SF137 = icmp ne i32 %highbit136, 0
  %99 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload132, i32 1)
  %OF138 = extractvalue { i32, i1 } %99, 1
  store i32 %EAX139, ptr %RBP_N.40, align 1
  br label %bb.6

bb.11:                                            ; preds = %bb.6
  br label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload140 = load i32, ptr %RBP_N.36, align 1
  %EAX147 = add i32 %memload140, 1
  %100 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload140, i32 1)
  %CF141 = extractvalue { i32, i1 } %100, 1
  %101 = and i32 %EAX147, 255
  %102 = call i32 @llvm.ctpop.i32(i32 %101)
  %103 = and i32 %102, 1
  %PF142 = icmp eq i32 %103, 0
  %ZF143 = icmp eq i32 %EAX147, 0
  %highbit144 = and i32 -2147483648, %EAX147
  %SF145 = icmp ne i32 %highbit144, 0
  %104 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload140, i32 1)
  %OF146 = extractvalue { i32, i1 } %104, 1
  store i32 %EAX147, ptr %RBP_N.36, align 1
  br label %bb.4

bb.13:                                            ; preds = %bb.4
  store i32 0, ptr %RBP_N.36, align 1
  br label %bb.14

bb.14:                                            ; preds = %bb.13, %bb.19
  %memload148 = load i32, ptr %RBP_N.36, align 1
  %105 = load i32, ptr %RBP_N.12, align 1
  %106 = sub i32 %memload148, %105
  %107 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload148, i32 %105)
  %CF149 = extractvalue { i32, i1 } %107, 1
  %ZF150 = icmp eq i32 %106, 0
  %highbit151 = and i32 -2147483648, %106
  %SF152 = icmp ne i32 %highbit151, 0
  %108 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload148, i32 %105)
  %OF153 = extractvalue { i32, i1 } %108, 1
  %109 = and i32 %106, 255
  %110 = call i32 @llvm.ctpop.i32(i32 %109)
  %111 = and i32 %110, 1
  %PF154 = icmp eq i32 %111, 0
  %CmpSFOF_JGE210 = icmp eq i1 %SF152, %OF153
  br i1 %CmpSFOF_JGE210, label %bb.20, label %bb.15

bb.15:                                            ; preds = %bb.14
  %memload155 = load i32, ptr %RBP_N.36, align 1
  %112 = sext i32 %memload155 to i64
  %113 = lshr i64 %112, 32
  %EDX156 = trunc i64 %113 to i32
  %114 = sext i32 %memload155 to i64
  %115 = sext i32 %EDX156 to i64
  %div_hb_ls157 = shl nuw i64 %115, 32
  %dividend158 = or i64 %div_hb_ls157, %114
  %116 = sext i32 2 to i64
  %div_q159 = sdiv i64 %dividend158, %116
  %EAX160 = trunc i64 %div_q159 to i32
  %div_r161 = srem i64 %dividend158, %116
  %EDX162 = trunc i64 %div_r161 to i32
  %117 = sub i32 %EDX162, 0
  %118 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX162, i32 0)
  %CF163 = extractvalue { i32, i1 } %118, 1
  %ZF164 = icmp eq i32 %117, 0
  %highbit165 = and i32 -2147483648, %117
  %SF166 = icmp ne i32 %highbit165, 0
  %119 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX162, i32 0)
  %OF167 = extractvalue { i32, i1 } %119, 1
  %120 = and i32 %117, 255
  %121 = call i32 @llvm.ctpop.i32(i32 %120)
  %122 = and i32 %121, 1
  %PF168 = icmp eq i32 %122, 0
  %CmpZF_JNE = icmp eq i1 %ZF164, false
  br i1 %CmpZF_JNE, label %bb.17, label %bb.16

bb.16:                                            ; preds = %bb.15
  %memload169 = load i64, ptr %RBP_N.32, align 1
  store i64 %memload169, ptr %RBP_N.56, align 1
  %memload170 = load i32, ptr %RBP_N.36, align 1
  %123 = sext i32 %memload170 to i64
  %124 = lshr i64 %123, 32
  %EDX171 = trunc i64 %124 to i32
  %125 = sext i32 %memload170 to i64
  %126 = sext i32 %EDX171 to i64
  %div_hb_ls172 = shl nuw i64 %126, 32
  %dividend173 = or i64 %div_hb_ls172, %125
  %127 = sext i32 2 to i64
  %div_q174 = sdiv i64 %dividend173, %127
  %EAX175 = trunc i64 %div_q174 to i32
  %div_r176 = srem i64 %dividend173, %127
  %EDX177 = trunc i64 %div_r176 to i32
  %memload178 = load i64, ptr %RBP_N.56, align 1
  %RCX179 = sext i32 %EAX175 to i64
  %memref-idxreg180 = mul i64 4, %RCX179
  %memref-basereg181 = add i64 %memload178, %memref-idxreg180
  %128 = inttoptr i64 %memref-basereg181 to ptr
  %memload182 = load float, ptr %128, align 1
  %memload183 = load i64, ptr %RBP_N.24, align 1
  %memload184 = load i64, ptr %RBP_N.36, align 1
  %129 = trunc i64 %memload184 to i32
  %RCX185 = sext i32 %129 to i64
  %memref-idxreg186 = mul i64 4, %RCX185
  %memref-basereg187 = add i64 %memload183, %memref-idxreg186
  %130 = inttoptr i64 %memref-basereg187 to ptr
  store float %memload182, ptr %130, align 1
  br label %bb.18

bb.17:                                            ; preds = %bb.15
  %memload188 = load i64, ptr %RBP_N.8, align 1
  %memload189 = load i64, ptr %RBP_N.36, align 1
  %131 = trunc i64 %memload189 to i32
  %RCX190 = sext i32 %131 to i64
  %memref-idxreg191 = mul i64 4, %RCX190
  %memref-basereg192 = add i64 %memload188, %memref-idxreg191
  %132 = inttoptr i64 %memref-basereg192 to ptr
  %memload193 = load float, ptr %132, align 1
  %memload194 = load i64, ptr %RBP_N.24, align 1
  %memload195 = load i64, ptr %RBP_N.36, align 1
  %133 = trunc i64 %memload195 to i32
  %RCX196 = sext i32 %133 to i64
  %memref-idxreg197 = mul i64 4, %RCX196
  %memref-basereg198 = add i64 %memload194, %memref-idxreg197
  %134 = inttoptr i64 %memref-basereg198 to ptr
  store float %memload193, ptr %134, align 1
  br label %bb.18

bb.18:                                            ; preds = %bb.17, %bb.16
  br label %bb.19

bb.19:                                            ; preds = %bb.18
  %memload199 = load i32, ptr %RBP_N.36, align 1
  %EAX206 = add i32 %memload199, 1
  %135 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload199, i32 1)
  %CF200 = extractvalue { i32, i1 } %135, 1
  %136 = and i32 %EAX206, 255
  %137 = call i32 @llvm.ctpop.i32(i32 %136)
  %138 = and i32 %137, 1
  %PF201 = icmp eq i32 %138, 0
  %ZF202 = icmp eq i32 %EAX206, 0
  %highbit203 = and i32 -2147483648, %EAX206
  %SF204 = icmp ne i32 %highbit203, 0
  %139 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload199, i32 1)
  %OF205 = extractvalue { i32, i1 } %139, 1
  store i32 %EAX206, ptr %RBP_N.36, align 1
  br label %bb.14

bb.20:                                            ; preds = %bb.14
  %memload207 = load i64, ptr %RBP_N.32, align 1
  %140 = inttoptr i64 %memload207 to ptr
  call void @free(ptr %140)
  ret void
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

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
