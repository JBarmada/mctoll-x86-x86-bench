; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2, i64 %arg3) {
entry:
  %stktop_4 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.44 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 44
  %RBP_N.12 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %8 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.9
  %memload = load i32, ptr %RBP_N.28, align 1
  %memload1 = load i32, ptr %RBP_N.12, align 1
  %ECX = sub i32 %memload1, 1
  %9 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload1, i32 1)
  %CF = extractvalue { i32, i1 } %9, 1
  %10 = and i32 %ECX, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = and i32 %11, 1
  %PF = icmp eq i32 %12, 0
  %ZF = icmp eq i32 %ECX, 0
  %highbit = and i32 -2147483648, %ECX
  %SF = icmp ne i32 %highbit, 0
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload1, i32 1)
  %OF = extractvalue { i32, i1 } %13, 1
  %14 = sub i32 %memload, %ECX
  %15 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %ECX)
  %CF2 = extractvalue { i32, i1 } %15, 1
  %ZF3 = icmp eq i32 %14, 0
  %highbit4 = and i32 -2147483648, %14
  %SF5 = icmp ne i32 %highbit4, 0
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %ECX)
  %OF6 = extractvalue { i32, i1 } %16, 1
  %17 = and i32 %14, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = and i32 %18, 1
  %PF7 = icmp eq i32 %19, 0
  %CmpSFOF_JGE = icmp eq i1 %SF5, %OF6
  br i1 %CmpSFOF_JGE, label %bb.10, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload8 = load i32, ptr %RBP_N.28, align 1
  %EAX = add i32 %memload8, 1
  %20 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload8, i32 1)
  %CF9 = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %EAX, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF10 = icmp eq i32 %23, 0
  %ZF11 = icmp eq i32 %EAX, 0
  %highbit12 = and i32 -2147483648, %EAX
  %SF13 = icmp ne i32 %highbit12, 0
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload8, i32 1)
  %OF14 = extractvalue { i32, i1 } %24, 1
  store i32 %EAX, ptr %RBP_N.32, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %memload15 = load i32, ptr %RBP_N.32, align 1
  %25 = load i32, ptr %RBP_N.12, align 1
  %26 = sub i32 %memload15, %25
  %27 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload15, i32 %25)
  %CF16 = extractvalue { i32, i1 } %27, 1
  %ZF17 = icmp eq i32 %26, 0
  %highbit18 = and i32 -2147483648, %26
  %SF19 = icmp ne i32 %highbit18, 0
  %28 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload15, i32 %25)
  %OF20 = extractvalue { i32, i1 } %28, 1
  %29 = and i32 %26, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = and i32 %30, 1
  %PF21 = icmp eq i32 %31, 0
  %CmpSFOF_JGE169 = icmp eq i1 %SF19, %OF20
  br i1 %CmpSFOF_JGE169, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload22 = load i64, ptr %RBP_N.8, align 1
  %memload23 = load i64, ptr %RBP_N.28, align 1
  %32 = trunc i64 %memload23 to i32
  %RCX = sext i32 %32 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload22, %memref-idxreg
  %33 = inttoptr i64 %memref-basereg to ptr
  %memload24 = load i32, ptr %33, align 1
  %memload25 = load i64, ptr %RBP_N.8, align 1
  %memload26 = load i64, ptr %RBP_N.32, align 1
  %34 = trunc i64 %memload26 to i32
  %RDX = sext i32 %34 to i64
  %memref-idxreg27 = mul i64 4, %RDX
  %memref-basereg28 = add i64 %memload25, %memref-idxreg27
  %35 = inttoptr i64 %memref-basereg28 to ptr
  %36 = load i32, ptr %35, align 1
  %37 = sub i32 %memload24, %36
  %38 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload24, i32 %36)
  %CF29 = extractvalue { i32, i1 } %38, 1
  %ZF30 = icmp eq i32 %37, 0
  %highbit31 = and i32 -2147483648, %37
  %SF32 = icmp ne i32 %highbit31, 0
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload24, i32 %36)
  %OF33 = extractvalue { i32, i1 } %39, 1
  %40 = and i32 %37, 255
  %41 = call i32 @llvm.ctpop.i32(i32 %40)
  %42 = and i32 %41, 1
  %PF34 = icmp eq i32 %42, 0
  %CmpZF_JLE = icmp eq i1 %ZF30, true
  %CmpOF_JLE = icmp ne i1 %SF32, %OF33
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload35 = load i64, ptr %RBP_N.8, align 1
  %memload36 = load i64, ptr %RBP_N.28, align 1
  %43 = trunc i64 %memload36 to i32
  %RCX37 = sext i32 %43 to i64
  %memref-idxreg38 = mul i64 4, %RCX37
  %memref-basereg39 = add i64 %memload35, %memref-idxreg38
  %44 = inttoptr i64 %memref-basereg39 to ptr
  %memload40 = load i32, ptr %44, align 1
  store i32 %memload40, ptr %RBP_N.36, align 1
  %memload41 = load i64, ptr %RBP_N.8, align 1
  %memload42 = load i64, ptr %RBP_N.32, align 1
  %45 = trunc i64 %memload42 to i32
  %RCX43 = sext i32 %45 to i64
  %memref-idxreg44 = mul i64 4, %RCX43
  %memref-basereg45 = add i64 %memload41, %memref-idxreg44
  %46 = inttoptr i64 %memref-basereg45 to ptr
  %memload46 = load i32, ptr %46, align 1
  %memload47 = load i64, ptr %RBP_N.8, align 1
  %memload48 = load i64, ptr %RBP_N.28, align 1
  %47 = trunc i64 %memload48 to i32
  %RCX49 = sext i32 %47 to i64
  %memref-idxreg50 = mul i64 4, %RCX49
  %memref-basereg51 = add i64 %memload47, %memref-idxreg50
  %48 = inttoptr i64 %memref-basereg51 to ptr
  store i32 %memload46, ptr %48, align 1
  %memload52 = load i32, ptr %RBP_N.36, align 1
  %memload53 = load i64, ptr %RBP_N.8, align 1
  %memload54 = load i64, ptr %RBP_N.32, align 1
  %49 = trunc i64 %memload54 to i32
  %RCX55 = sext i32 %49 to i64
  %memref-idxreg56 = mul i64 4, %RCX55
  %memref-basereg57 = add i64 %memload53, %memref-idxreg56
  %50 = inttoptr i64 %memref-basereg57 to ptr
  store i32 %memload52, ptr %50, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload58 = load i32, ptr %RBP_N.32, align 1
  %EAX65 = add i32 %memload58, 1
  %51 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload58, i32 1)
  %CF59 = extractvalue { i32, i1 } %51, 1
  %52 = and i32 %EAX65, 255
  %53 = call i32 @llvm.ctpop.i32(i32 %52)
  %54 = and i32 %53, 1
  %PF60 = icmp eq i32 %54, 0
  %ZF61 = icmp eq i32 %EAX65, 0
  %highbit62 = and i32 -2147483648, %EAX65
  %SF63 = icmp ne i32 %highbit62, 0
  %55 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload58, i32 1)
  %OF64 = extractvalue { i32, i1 } %55, 1
  store i32 %EAX65, ptr %RBP_N.32, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.3
  br label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload66 = load i32, ptr %RBP_N.28, align 1
  %EAX73 = add i32 %memload66, 1
  %56 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload66, i32 1)
  %CF67 = extractvalue { i32, i1 } %56, 1
  %57 = and i32 %EAX73, 255
  %58 = call i32 @llvm.ctpop.i32(i32 %57)
  %59 = and i32 %58, 1
  %PF68 = icmp eq i32 %59, 0
  %ZF69 = icmp eq i32 %EAX73, 0
  %highbit70 = and i32 -2147483648, %EAX73
  %SF71 = icmp ne i32 %highbit70, 0
  %60 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload66, i32 1)
  %OF72 = extractvalue { i32, i1 } %60, 1
  store i32 %EAX73, ptr %RBP_N.28, align 1
  br label %bb.1

bb.10:                                            ; preds = %bb.1
  store i32 0, ptr %RBP_N.40, align 1
  %memload74 = load i32, ptr %RBP_N.12, align 1
  %EAX81 = sub i32 %memload74, 1
  %61 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload74, i32 1)
  %CF75 = extractvalue { i32, i1 } %61, 1
  %62 = and i32 %EAX81, 255
  %63 = call i32 @llvm.ctpop.i32(i32 %62)
  %64 = and i32 %63, 1
  %PF76 = icmp eq i32 %64, 0
  %ZF77 = icmp eq i32 %EAX81, 0
  %highbit78 = and i32 -2147483648, %EAX81
  %SF79 = icmp ne i32 %highbit78, 0
  %65 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload74, i32 1)
  %OF80 = extractvalue { i32, i1 } %65, 1
  store i32 %EAX81, ptr %RBP_N.44, align 1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.15
  %memload82 = load i32, ptr %RBP_N.40, align 1
  %66 = load i32, ptr %RBP_N.44, align 1
  %67 = sub i32 %memload82, %66
  %68 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload82, i32 %66)
  %CF83 = extractvalue { i32, i1 } %68, 1
  %ZF84 = icmp eq i32 %67, 0
  %highbit85 = and i32 -2147483648, %67
  %SF86 = icmp ne i32 %highbit85, 0
  %69 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload82, i32 %66)
  %OF87 = extractvalue { i32, i1 } %69, 1
  %70 = and i32 %67, 255
  %71 = call i32 @llvm.ctpop.i32(i32 %70)
  %72 = and i32 %71, 1
  %PF88 = icmp eq i32 %72, 0
  %ZFCmp_JG = icmp eq i1 %ZF84, false
  %SFOFCmp_JG = icmp eq i1 %SF86, %OF87
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.16, label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload89 = load i32, ptr %RBP_N.40, align 1
  %73 = load i32, ptr %RBP_N.44, align 1
  %74 = sub i32 %memload89, %73
  %75 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload89, i32 %73)
  %CF90 = extractvalue { i32, i1 } %75, 1
  %ZF91 = icmp eq i32 %74, 0
  %highbit92 = and i32 -2147483648, %74
  %SF93 = icmp ne i32 %highbit92, 0
  %76 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload89, i32 %73)
  %OF94 = extractvalue { i32, i1 } %76, 1
  %77 = and i32 %74, 255
  %78 = call i32 @llvm.ctpop.i32(i32 %77)
  %79 = and i32 %78, 1
  %PF95 = icmp eq i32 %79, 0
  %CmpZF_JNE = icmp eq i1 %ZF91, false
  br i1 %CmpZF_JNE, label %bb.14, label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload96 = load i64, ptr %RBP_N.8, align 1
  %memload97 = load i32, ptr %RBP_N.40, align 1
  %EDX = add i32 %memload97, 1
  %80 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload97, i32 1)
  %CF98 = extractvalue { i32, i1 } %80, 1
  %81 = and i32 %EDX, 255
  %82 = call i32 @llvm.ctpop.i32(i32 %81)
  %83 = and i32 %82, 1
  %PF99 = icmp eq i32 %83, 0
  %ZF100 = icmp eq i32 %EDX, 0
  %highbit101 = and i32 -2147483648, %EDX
  %SF102 = icmp ne i32 %highbit101, 0
  %84 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload97, i32 1)
  %OF103 = extractvalue { i32, i1 } %84, 1
  store i32 %EDX, ptr %RBP_N.40, align 1
  %RCX104 = sext i32 %memload97 to i64
  %memref-idxreg105 = mul i64 4, %RCX104
  %memref-basereg106 = add i64 %memload96, %memref-idxreg105
  %85 = inttoptr i64 %memref-basereg106 to ptr
  %memload107 = load i32, ptr %85, align 1
  %memload108 = load i64, ptr %RBP_N.24, align 1
  %memload109 = load i32, ptr %stktop_4, align 1
  %ESI = add i32 %memload109, 1
  %86 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload109, i32 1)
  %CF110 = extractvalue { i32, i1 } %86, 1
  %87 = and i32 %ESI, 255
  %88 = call i32 @llvm.ctpop.i32(i32 %87)
  %89 = and i32 %88, 1
  %PF111 = icmp eq i32 %89, 0
  %ZF112 = icmp eq i32 %ESI, 0
  %highbit113 = and i32 -2147483648, %ESI
  %SF114 = icmp ne i32 %highbit113, 0
  %90 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload109, i32 1)
  %OF115 = extractvalue { i32, i1 } %90, 1
  store i32 %ESI, ptr %stktop_4, align 1
  %RCX116 = sext i32 %memload109 to i64
  %memref-idxreg117 = mul i64 4, %RCX116
  %memref-basereg118 = add i64 %memload108, %memref-idxreg117
  %91 = inttoptr i64 %memref-basereg118 to ptr
  store i32 %memload107, ptr %91, align 1
  br label %bb.15

bb.14:                                            ; preds = %bb.12
  %memload119 = load i64, ptr %RBP_N.8, align 1
  %memload120 = load i32, ptr %RBP_N.40, align 1
  %EDX127 = add i32 %memload120, 1
  %92 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload120, i32 1)
  %CF121 = extractvalue { i32, i1 } %92, 1
  %93 = and i32 %EDX127, 255
  %94 = call i32 @llvm.ctpop.i32(i32 %93)
  %95 = and i32 %94, 1
  %PF122 = icmp eq i32 %95, 0
  %ZF123 = icmp eq i32 %EDX127, 0
  %highbit124 = and i32 -2147483648, %EDX127
  %SF125 = icmp ne i32 %highbit124, 0
  %96 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload120, i32 1)
  %OF126 = extractvalue { i32, i1 } %96, 1
  store i32 %EDX127, ptr %RBP_N.40, align 1
  %RCX128 = sext i32 %memload120 to i64
  %memref-idxreg129 = mul i64 4, %RCX128
  %memref-basereg130 = add i64 %memload119, %memref-idxreg129
  %97 = inttoptr i64 %memref-basereg130 to ptr
  %memload131 = load i32, ptr %97, align 1
  %memload132 = load i64, ptr %RBP_N.24, align 1
  %memload133 = load i32, ptr %stktop_4, align 1
  %ESI140 = add i32 %memload133, 1
  %98 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload133, i32 1)
  %CF134 = extractvalue { i32, i1 } %98, 1
  %99 = and i32 %ESI140, 255
  %100 = call i32 @llvm.ctpop.i32(i32 %99)
  %101 = and i32 %100, 1
  %PF135 = icmp eq i32 %101, 0
  %ZF136 = icmp eq i32 %ESI140, 0
  %highbit137 = and i32 -2147483648, %ESI140
  %SF138 = icmp ne i32 %highbit137, 0
  %102 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload133, i32 1)
  %OF139 = extractvalue { i32, i1 } %102, 1
  store i32 %ESI140, ptr %stktop_4, align 1
  %RCX141 = sext i32 %memload133 to i64
  %memref-idxreg142 = mul i64 4, %RCX141
  %memref-basereg143 = add i64 %memload132, %memref-idxreg142
  %103 = inttoptr i64 %memref-basereg143 to ptr
  store i32 %memload131, ptr %103, align 1
  %memload144 = load i64, ptr %RBP_N.8, align 1
  %memload145 = load i32, ptr %RBP_N.44, align 1
  %EDX152 = add i32 %memload145, -1
  %104 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload145, i32 -1)
  %CF146 = extractvalue { i32, i1 } %104, 1
  %105 = and i32 %EDX152, 255
  %106 = call i32 @llvm.ctpop.i32(i32 %105)
  %107 = and i32 %106, 1
  %PF147 = icmp eq i32 %107, 0
  %ZF148 = icmp eq i32 %EDX152, 0
  %highbit149 = and i32 -2147483648, %EDX152
  %SF150 = icmp ne i32 %highbit149, 0
  %108 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload145, i32 -1)
  %OF151 = extractvalue { i32, i1 } %108, 1
  store i32 %EDX152, ptr %RBP_N.44, align 1
  %RCX153 = sext i32 %memload145 to i64
  %memref-idxreg154 = mul i64 4, %RCX153
  %memref-basereg155 = add i64 %memload144, %memref-idxreg154
  %109 = inttoptr i64 %memref-basereg155 to ptr
  %memload156 = load i32, ptr %109, align 1
  %memload157 = load i64, ptr %RBP_N.24, align 1
  %memload158 = load i32, ptr %stktop_4, align 1
  %ESI165 = add i32 %memload158, 1
  %110 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload158, i32 1)
  %CF159 = extractvalue { i32, i1 } %110, 1
  %111 = and i32 %ESI165, 255
  %112 = call i32 @llvm.ctpop.i32(i32 %111)
  %113 = and i32 %112, 1
  %PF160 = icmp eq i32 %113, 0
  %ZF161 = icmp eq i32 %ESI165, 0
  %highbit162 = and i32 -2147483648, %ESI165
  %SF163 = icmp ne i32 %highbit162, 0
  %114 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload158, i32 1)
  %OF164 = extractvalue { i32, i1 } %114, 1
  store i32 %ESI165, ptr %stktop_4, align 1
  %RCX166 = sext i32 %memload158 to i64
  %memref-idxreg167 = mul i64 4, %RCX166
  %memref-basereg168 = add i64 %memload157, %memref-idxreg167
  %115 = inttoptr i64 %memref-basereg168 to ptr
  store i32 %memload156, ptr %115, align 1
  br label %bb.15

bb.15:                                            ; preds = %bb.14, %bb.13
  br label %bb.11

bb.16:                                            ; preds = %bb.11
  ret i32 %memload82
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
