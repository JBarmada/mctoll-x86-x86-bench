; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i32 @atoi(ptr)

define dso_local i32 @func0(i64 %arg1, i64 %arg2) {
entry:
  %0 = alloca i8, i32 280, align 1
  %tos = ptrtoint ptr %0 to i64
  %1 = add i64 %tos, 120
  %2 = inttoptr i64 %1 to ptr
  %3 = add i64 %tos, 232
  %RBP_N.48 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 236
  %RBP_N.44 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 240
  %RBP_N.40 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 244
  %RBP_N.36 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 248
  %RBP_N.32 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 252
  %RBP_N.28 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 256
  %RBP_N.24 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 264
  %RBP_N.16 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 276
  %RBP_N.4 = inttoptr i64 %11 to ptr
  %12 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %12 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i64 %arg2, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.44, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload = load i64, ptr %RBP_N.16, align 1
  %memload1 = load i64, ptr %RBP_N.44, align 1
  %13 = trunc i64 %memload1 to i32
  %RCX = sext i32 %13 to i64
  %memref-basereg = add i64 %memload, %RCX
  %14 = inttoptr i64 %memref-basereg to ptr
  %memload2 = load i32, ptr %14, align 1
  %15 = trunc i32 %memload2 to i8
  %EAX = sext i8 %15 to i32
  %16 = sub i32 %EAX, 47
  %17 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 47)
  %CF = extractvalue { i32, i1 } %17, 1
  %ZF = icmp eq i32 %16, 0
  %highbit = and i32 -2147483648, %16
  %SF = icmp ne i32 %highbit, 0
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 47)
  %OF = extractvalue { i32, i1 } %18, 1
  %19 = and i32 %16, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = and i32 %20, 1
  %PF = icmp eq i32 %21, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload3 = load i64, ptr %RBP_N.16, align 1
  %memload4 = load i64, ptr %RBP_N.44, align 1
  %22 = trunc i64 %memload4 to i32
  %RCX5 = sext i32 %22 to i64
  %memref-basereg6 = add i64 %memload3, %RCX5
  %23 = inttoptr i64 %memref-basereg6 to ptr
  %memload7 = load i8, ptr %23, align 1
  %memload8 = load i64, ptr %RBP_N.44, align 1
  %24 = trunc i64 %memload8 to i32
  %RAX = sext i32 %24 to i64
  %25 = getelementptr i8, ptr %2, i64 %RAX
  store i8 %memload7, ptr %25, align 1
  %memload9 = load i32, ptr %RBP_N.44, align 1
  %EAX16 = add i32 %memload9, 1
  %26 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload9, i32 1)
  %CF10 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %EAX16, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF11 = icmp eq i32 %29, 0
  %ZF12 = icmp eq i32 %EAX16, 0
  %highbit13 = and i32 -2147483648, %EAX16
  %SF14 = icmp ne i32 %highbit13, 0
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload9, i32 1)
  %OF15 = extractvalue { i32, i1 } %30, 1
  store i32 %EAX16, ptr %RBP_N.44, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %memload17 = load i64, ptr %RBP_N.44, align 1
  %31 = trunc i64 %memload17 to i32
  %RAX18 = sext i32 %31 to i64
  %32 = getelementptr i8, ptr %2, i64 %RAX18
  store i8 0, ptr %32, align 1
  %EAX20 = call i32 @atoi(ptr %2)
  store i32 %EAX20, ptr %RBP_N.28, align 1
  store i32 0, ptr %RBP_N.48, align 1
  %memload21 = load i32, ptr %RBP_N.44, align 1
  %EAX28 = add i32 %memload21, 1
  %33 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload21, i32 1)
  %CF22 = extractvalue { i32, i1 } %33, 1
  %34 = and i32 %EAX28, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = and i32 %35, 1
  %PF23 = icmp eq i32 %36, 0
  %ZF24 = icmp eq i32 %EAX28, 0
  %highbit25 = and i32 -2147483648, %EAX28
  %SF26 = icmp ne i32 %highbit25, 0
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload21, i32 1)
  %OF27 = extractvalue { i32, i1 } %37, 1
  store i32 %EAX28, ptr %RBP_N.44, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.5
  %memload29 = load i64, ptr %RBP_N.16, align 1
  %memload30 = load i64, ptr %RBP_N.44, align 1
  %38 = trunc i64 %memload30 to i32
  %RCX31 = sext i32 %38 to i64
  %memref-basereg32 = add i64 %memload29, %RCX31
  %39 = inttoptr i64 %memref-basereg32 to ptr
  %memload33 = load i32, ptr %39, align 1
  %40 = trunc i32 %memload33 to i8
  %EAX34 = sext i8 %40 to i32
  %41 = sub i32 %EAX34, 0
  %42 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX34, i32 0)
  %CF35 = extractvalue { i32, i1 } %42, 1
  %ZF36 = icmp eq i32 %41, 0
  %highbit37 = and i32 -2147483648, %41
  %SF38 = icmp ne i32 %highbit37, 0
  %43 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX34, i32 0)
  %OF39 = extractvalue { i32, i1 } %43, 1
  %44 = and i32 %41, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44)
  %46 = and i32 %45, 1
  %PF40 = icmp eq i32 %46, 0
  %CmpZF_JE166 = icmp eq i1 %ZF36, true
  br i1 %CmpZF_JE166, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload41 = load i64, ptr %RBP_N.16, align 1
  %memload42 = load i64, ptr %RBP_N.44, align 1
  %47 = trunc i64 %memload42 to i32
  %RCX43 = sext i32 %47 to i64
  %memref-basereg44 = add i64 %memload41, %RCX43
  %48 = inttoptr i64 %memref-basereg44 to ptr
  %memload45 = load i8, ptr %48, align 1
  %memload46 = load i64, ptr %RBP_N.48, align 1
  %49 = trunc i64 %memload46 to i32
  %RAX47 = sext i32 %49 to i64
  %50 = ptrtoint ptr %0 to i64
  %idx-a48 = add i64 %50, %RAX47
  %51 = inttoptr i64 %idx-a48 to ptr
  store i8 %memload45, ptr %51, align 1
  %memload49 = load i32, ptr %RBP_N.44, align 1
  %EAX56 = add i32 %memload49, 1
  %52 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload49, i32 1)
  %CF50 = extractvalue { i32, i1 } %52, 1
  %53 = and i32 %EAX56, 255
  %54 = call i32 @llvm.ctpop.i32(i32 %53)
  %55 = and i32 %54, 1
  %PF51 = icmp eq i32 %55, 0
  %ZF52 = icmp eq i32 %EAX56, 0
  %highbit53 = and i32 -2147483648, %EAX56
  %SF54 = icmp ne i32 %highbit53, 0
  %56 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload49, i32 1)
  %OF55 = extractvalue { i32, i1 } %56, 1
  store i32 %EAX56, ptr %RBP_N.44, align 1
  %memload57 = load i32, ptr %RBP_N.48, align 1
  %EAX64 = add i32 %memload57, 1
  %57 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload57, i32 1)
  %CF58 = extractvalue { i32, i1 } %57, 1
  %58 = and i32 %EAX64, 255
  %59 = call i32 @llvm.ctpop.i32(i32 %58)
  %60 = and i32 %59, 1
  %PF59 = icmp eq i32 %60, 0
  %ZF60 = icmp eq i32 %EAX64, 0
  %highbit61 = and i32 -2147483648, %EAX64
  %SF62 = icmp ne i32 %highbit61, 0
  %61 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload57, i32 1)
  %OF63 = extractvalue { i32, i1 } %61, 1
  store i32 %EAX64, ptr %RBP_N.48, align 1
  br label %bb.4

bb.6:                                             ; preds = %bb.4
  %memload65 = load i64, ptr %RBP_N.48, align 1
  %62 = trunc i64 %memload65 to i32
  %RAX66 = sext i32 %62 to i64
  %63 = ptrtoint ptr %0 to i64
  %idx-a67 = add i64 %63, %RAX66
  %64 = inttoptr i64 %idx-a67 to ptr
  store i8 0, ptr %64, align 1
  %EAX69 = call i32 @atoi(ptr %0)
  store i32 %EAX69, ptr %RBP_N.32, align 1
  store i32 0, ptr %RBP_N.44, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.8
  %memload70 = load i64, ptr %RBP_N.24, align 1
  %memload71 = load i64, ptr %RBP_N.44, align 1
  %65 = trunc i64 %memload71 to i32
  %RCX72 = sext i32 %65 to i64
  %memref-basereg73 = add i64 %memload70, %RCX72
  %66 = inttoptr i64 %memref-basereg73 to ptr
  %memload74 = load i32, ptr %66, align 1
  %67 = trunc i32 %memload74 to i8
  %EAX75 = sext i8 %67 to i32
  %68 = sub i32 %EAX75, 47
  %69 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX75, i32 47)
  %CF76 = extractvalue { i32, i1 } %69, 1
  %ZF77 = icmp eq i32 %68, 0
  %highbit78 = and i32 -2147483648, %68
  %SF79 = icmp ne i32 %highbit78, 0
  %70 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX75, i32 47)
  %OF80 = extractvalue { i32, i1 } %70, 1
  %71 = and i32 %68, 255
  %72 = call i32 @llvm.ctpop.i32(i32 %71)
  %73 = and i32 %72, 1
  %PF81 = icmp eq i32 %73, 0
  %CmpZF_JE167 = icmp eq i1 %ZF77, true
  br i1 %CmpZF_JE167, label %bb.9, label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload82 = load i64, ptr %RBP_N.24, align 1
  %memload83 = load i64, ptr %RBP_N.44, align 1
  %74 = trunc i64 %memload83 to i32
  %RCX84 = sext i32 %74 to i64
  %memref-basereg85 = add i64 %memload82, %RCX84
  %75 = inttoptr i64 %memref-basereg85 to ptr
  %memload86 = load i8, ptr %75, align 1
  %memload87 = load i64, ptr %RBP_N.44, align 1
  %76 = trunc i64 %memload87 to i32
  %RAX88 = sext i32 %76 to i64
  %77 = getelementptr i8, ptr %2, i64 %RAX88
  store i8 %memload86, ptr %77, align 1
  %memload90 = load i32, ptr %RBP_N.44, align 1
  %EAX97 = add i32 %memload90, 1
  %78 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload90, i32 1)
  %CF91 = extractvalue { i32, i1 } %78, 1
  %79 = and i32 %EAX97, 255
  %80 = call i32 @llvm.ctpop.i32(i32 %79)
  %81 = and i32 %80, 1
  %PF92 = icmp eq i32 %81, 0
  %ZF93 = icmp eq i32 %EAX97, 0
  %highbit94 = and i32 -2147483648, %EAX97
  %SF95 = icmp ne i32 %highbit94, 0
  %82 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload90, i32 1)
  %OF96 = extractvalue { i32, i1 } %82, 1
  store i32 %EAX97, ptr %RBP_N.44, align 1
  br label %bb.7

bb.9:                                             ; preds = %bb.7
  %memload98 = load i64, ptr %RBP_N.44, align 1
  %83 = trunc i64 %memload98 to i32
  %RAX99 = sext i32 %83 to i64
  %84 = getelementptr i8, ptr %2, i64 %RAX99
  store i8 0, ptr %84, align 1
  %EAX102 = call i32 @atoi(ptr %2)
  store i32 %EAX102, ptr %RBP_N.36, align 1
  store i32 0, ptr %RBP_N.48, align 1
  %memload103 = load i32, ptr %RBP_N.44, align 1
  %EAX110 = add i32 %memload103, 1
  %85 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload103, i32 1)
  %CF104 = extractvalue { i32, i1 } %85, 1
  %86 = and i32 %EAX110, 255
  %87 = call i32 @llvm.ctpop.i32(i32 %86)
  %88 = and i32 %87, 1
  %PF105 = icmp eq i32 %88, 0
  %ZF106 = icmp eq i32 %EAX110, 0
  %highbit107 = and i32 -2147483648, %EAX110
  %SF108 = icmp ne i32 %highbit107, 0
  %89 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload103, i32 1)
  %OF109 = extractvalue { i32, i1 } %89, 1
  store i32 %EAX110, ptr %RBP_N.44, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.11
  %memload111 = load i64, ptr %RBP_N.24, align 1
  %memload112 = load i64, ptr %RBP_N.44, align 1
  %90 = trunc i64 %memload112 to i32
  %RCX113 = sext i32 %90 to i64
  %memref-basereg114 = add i64 %memload111, %RCX113
  %91 = inttoptr i64 %memref-basereg114 to ptr
  %memload115 = load i32, ptr %91, align 1
  %92 = trunc i32 %memload115 to i8
  %EAX116 = sext i8 %92 to i32
  %93 = sub i32 %EAX116, 0
  %94 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX116, i32 0)
  %CF117 = extractvalue { i32, i1 } %94, 1
  %ZF118 = icmp eq i32 %93, 0
  %highbit119 = and i32 -2147483648, %93
  %SF120 = icmp ne i32 %highbit119, 0
  %95 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX116, i32 0)
  %OF121 = extractvalue { i32, i1 } %95, 1
  %96 = and i32 %93, 255
  %97 = call i32 @llvm.ctpop.i32(i32 %96)
  %98 = and i32 %97, 1
  %PF122 = icmp eq i32 %98, 0
  %CmpZF_JE168 = icmp eq i1 %ZF118, true
  br i1 %CmpZF_JE168, label %bb.12, label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload123 = load i64, ptr %RBP_N.24, align 1
  %memload124 = load i64, ptr %RBP_N.44, align 1
  %99 = trunc i64 %memload124 to i32
  %RCX125 = sext i32 %99 to i64
  %memref-basereg126 = add i64 %memload123, %RCX125
  %100 = inttoptr i64 %memref-basereg126 to ptr
  %memload127 = load i8, ptr %100, align 1
  %memload128 = load i64, ptr %RBP_N.48, align 1
  %101 = trunc i64 %memload128 to i32
  %RAX129 = sext i32 %101 to i64
  %102 = ptrtoint ptr %0 to i64
  %idx-a130 = add i64 %102, %RAX129
  %103 = inttoptr i64 %idx-a130 to ptr
  store i8 %memload127, ptr %103, align 1
  %memload131 = load i32, ptr %RBP_N.44, align 1
  %EAX138 = add i32 %memload131, 1
  %104 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload131, i32 1)
  %CF132 = extractvalue { i32, i1 } %104, 1
  %105 = and i32 %EAX138, 255
  %106 = call i32 @llvm.ctpop.i32(i32 %105)
  %107 = and i32 %106, 1
  %PF133 = icmp eq i32 %107, 0
  %ZF134 = icmp eq i32 %EAX138, 0
  %highbit135 = and i32 -2147483648, %EAX138
  %SF136 = icmp ne i32 %highbit135, 0
  %108 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload131, i32 1)
  %OF137 = extractvalue { i32, i1 } %108, 1
  store i32 %EAX138, ptr %RBP_N.44, align 1
  %memload139 = load i32, ptr %RBP_N.48, align 1
  %EAX146 = add i32 %memload139, 1
  %109 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload139, i32 1)
  %CF140 = extractvalue { i32, i1 } %109, 1
  %110 = and i32 %EAX146, 255
  %111 = call i32 @llvm.ctpop.i32(i32 %110)
  %112 = and i32 %111, 1
  %PF141 = icmp eq i32 %112, 0
  %ZF142 = icmp eq i32 %EAX146, 0
  %highbit143 = and i32 -2147483648, %EAX146
  %SF144 = icmp ne i32 %highbit143, 0
  %113 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload139, i32 1)
  %OF145 = extractvalue { i32, i1 } %113, 1
  store i32 %EAX146, ptr %RBP_N.48, align 1
  br label %bb.10

bb.12:                                            ; preds = %bb.10
  %memload147 = load i64, ptr %RBP_N.48, align 1
  %114 = trunc i64 %memload147 to i32
  %RAX148 = sext i32 %114 to i64
  %115 = ptrtoint ptr %0 to i64
  %idx-a149 = add i64 %115, %RAX148
  %116 = inttoptr i64 %idx-a149 to ptr
  store i8 0, ptr %116, align 1
  %EAX151 = call i32 @atoi(ptr %0)
  store i32 %EAX151, ptr %RBP_N.40, align 1
  %memload152 = load i32, ptr %RBP_N.28, align 1
  %memload153 = load i32, ptr %RBP_N.36, align 1
  %EAX154 = mul i32 %memload152, %memload153
  %memload155 = load i32, ptr %RBP_N.32, align 1
  %memload156 = load i32, ptr %RBP_N.40, align 1
  %ECX = mul i32 %memload155, %memload156
  %117 = sext i32 %EAX154 to i64
  %118 = lshr i64 %117, 32
  %EDX = trunc i64 %118 to i32
  %119 = sext i32 %EAX154 to i64
  %120 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %120, 32
  %dividend = or i64 %div_hb_ls, %119
  %121 = sext i32 %ECX to i64
  %div_q = sdiv i64 %dividend, %121
  %EAX157 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %121
  %EDX158 = trunc i64 %div_r to i32
  %122 = sub i32 %EDX158, 0
  %123 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX158, i32 0)
  %CF159 = extractvalue { i32, i1 } %123, 1
  %ZF160 = icmp eq i32 %122, 0
  %highbit161 = and i32 -2147483648, %122
  %SF162 = icmp ne i32 %highbit161, 0
  %124 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX158, i32 0)
  %OF163 = extractvalue { i32, i1 } %124, 1
  %125 = and i32 %122, 255
  %126 = call i32 @llvm.ctpop.i32(i32 %125)
  %127 = and i32 %126, 1
  %PF164 = icmp eq i32 %127, 0
  %CmpZF_JNE = icmp eq i1 %ZF160, false
  br i1 %CmpZF_JNE, label %bb.14, label %bb.13

bb.13:                                            ; preds = %bb.12
  store i32 1, ptr %RBP_N.4, align 1
  br label %bb.15

bb.14:                                            ; preds = %bb.12
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.15

bb.15:                                            ; preds = %bb.14, %bb.13
  %memload165 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload165
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
