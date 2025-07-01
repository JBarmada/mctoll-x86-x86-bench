; ModuleID = 'code.so'
source_filename = "code.so"

@0 = private unnamed_addr constant [10 x i8] c"**\00//\00+\00-\00", align 1, !ROData_SecInfo !0

declare dso_local ptr @malloc(i64)

declare dso_local i32 @strcmp(ptr, ptr)

declare dso_local double @pow(double, double)

declare dso_local void @free(ptr)

define dso_local i32 @func0(i64 %arg1, i64 %arg2, i32 %arg3, i32 %arg4, double %arg5, double %arg6) {
entry:
  %stktop_8 = alloca i8, i32 88, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.72 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 28
  %RBP_N.60 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.56 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 36
  %RBP_N.52 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 40
  %RBP_N.48 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 44
  %RBP_N.44 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 48
  %RBP_N.40 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 56
  %RBP_N.32 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 64
  %RBP_N.24 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 68
  %RBP_N.20 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 72
  %RBP_N.16 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 80
  %RBP_N.8 = inttoptr i64 %11 to ptr
  %12 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %12 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  store i32 %arg3, ptr %RBP_N.20, align 1
  store i32 %arg4, ptr %RBP_N.24, align 1
  %memload = load i64, ptr %RBP_N.24, align 1
  %13 = trunc i64 %memload to i32
  %RDI = sext i32 %13 to i64
  %RDI1 = shl i64 %RDI, 2
  %ZF = icmp eq i64 %RDI1, 0
  %highbit = and i64 -9223372036854775808, %RDI1
  %SF = icmp ne i64 %highbit, 0
  %14 = call ptr @malloc(i64 %RDI1)
  %RAX = ptrtoint ptr %14 to i64
  store i64 %RAX, ptr %RBP_N.32, align 1
  %memload2 = load i64, ptr %RBP_N.24, align 1
  %15 = trunc i64 %memload2 to i32
  %RDI3 = sext i32 %15 to i64
  %RDI7 = shl i64 %RDI3, 2
  %ZF4 = icmp eq i64 %RDI7, 0
  %highbit5 = and i64 -9223372036854775808, %RDI7
  %SF6 = icmp ne i64 %highbit5, 0
  %16 = call ptr @malloc(i64 %RDI7)
  %RAX8 = ptrtoint ptr %16 to i64
  store i64 %RAX8, ptr %RBP_N.40, align 1
  store i32 0, ptr %RBP_N.44, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload9 = load i32, ptr %RBP_N.44, align 1
  %17 = load i32, ptr %RBP_N.24, align 1
  %18 = sub i32 %memload9, %17
  %19 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload9, i32 %17)
  %CF = extractvalue { i32, i1 } %19, 1
  %ZF10 = icmp eq i32 %18, 0
  %highbit11 = and i32 -2147483648, %18
  %SF12 = icmp ne i32 %highbit11, 0
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload9, i32 %17)
  %OF = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %18, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF = icmp eq i32 %23, 0
  %CmpSFOF_JGE = icmp eq i1 %SF12, %OF
  br i1 %CmpSFOF_JGE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload13 = load i64, ptr %RBP_N.16, align 1
  %memload14 = load i64, ptr %RBP_N.44, align 1
  %24 = trunc i64 %memload14 to i32
  %RCX = sext i32 %24 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload13, %memref-idxreg
  %25 = inttoptr i64 %memref-basereg to ptr
  %memload15 = load i32, ptr %25, align 1
  %memload16 = load i64, ptr %RBP_N.32, align 1
  %memload17 = load i64, ptr %RBP_N.44, align 1
  %26 = trunc i64 %memload17 to i32
  %RCX18 = sext i32 %26 to i64
  %memref-idxreg19 = mul i64 4, %RCX18
  %memref-basereg20 = add i64 %memload16, %memref-idxreg19
  %27 = inttoptr i64 %memref-basereg20 to ptr
  store i32 %memload15, ptr %27, align 1
  %memload21 = load i32, ptr %RBP_N.44, align 1
  %memload22 = load i64, ptr %RBP_N.40, align 1
  %memload23 = load i64, ptr %RBP_N.44, align 1
  %28 = trunc i64 %memload23 to i32
  %RCX24 = sext i32 %28 to i64
  %memref-idxreg25 = mul i64 4, %RCX24
  %memref-basereg26 = add i64 %memload22, %memref-idxreg25
  %29 = inttoptr i64 %memref-basereg26 to ptr
  store i32 %memload21, ptr %29, align 1
  %memload27 = load i32, ptr %RBP_N.44, align 1
  %EAX = add i32 %memload27, 1
  %30 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload27, i32 1)
  %CF28 = extractvalue { i32, i1 } %30, 1
  %31 = and i32 %EAX, 255
  %32 = call i32 @llvm.ctpop.i32(i32 %31)
  %33 = and i32 %32, 1
  %PF29 = icmp eq i32 %33, 0
  %ZF30 = icmp eq i32 %EAX, 0
  %highbit31 = and i32 -2147483648, %EAX
  %SF32 = icmp ne i32 %highbit31, 0
  %34 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload27, i32 1)
  %OF33 = extractvalue { i32, i1 } %34, 1
  store i32 %EAX, ptr %RBP_N.44, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  store i32 0, ptr %RBP_N.48, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.14
  %memload34 = load i32, ptr %RBP_N.48, align 1
  %35 = load i32, ptr %RBP_N.20, align 1
  %36 = sub i32 %memload34, %35
  %37 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload34, i32 %35)
  %CF35 = extractvalue { i32, i1 } %37, 1
  %ZF36 = icmp eq i32 %36, 0
  %highbit37 = and i32 -2147483648, %36
  %SF38 = icmp ne i32 %highbit37, 0
  %38 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload34, i32 %35)
  %OF39 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %36, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF40 = icmp eq i32 %41, 0
  %CmpSFOF_JGE723 = icmp eq i1 %SF38, %OF39
  br i1 %CmpSFOF_JGE723, label %bb.15, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload41 = load i64, ptr %RBP_N.8, align 1
  %memload42 = load i64, ptr %RBP_N.48, align 1
  %42 = trunc i64 %memload42 to i32
  %RCX43 = sext i32 %42 to i64
  %memref-idxreg44 = mul i64 8, %RCX43
  %memref-basereg45 = add i64 %memload41, %memref-idxreg44
  %43 = inttoptr i64 %memref-basereg45 to ptr
  %memload46 = load i64, ptr %43, align 1
  %44 = inttoptr i64 %memload46 to ptr
  %EAX47 = call i32 @strcmp(ptr %44, ptr @0)
  %45 = sub i32 %EAX47, 0
  %46 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX47, i32 0)
  %CF48 = extractvalue { i32, i1 } %46, 1
  %ZF49 = icmp eq i32 %45, 0
  %highbit50 = and i32 -2147483648, %45
  %SF51 = icmp ne i32 %highbit50, 0
  %47 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX47, i32 0)
  %OF52 = extractvalue { i32, i1 } %47, 1
  %48 = and i32 %45, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48)
  %50 = and i32 %49, 1
  %PF53 = icmp eq i32 %50, 0
  %CmpZF_JNE = icmp eq i1 %ZF49, false
  br i1 %CmpZF_JNE, label %bb.13, label %bb.6

bb.6:                                             ; preds = %bb.5
  br label %bb.7

bb.7:                                             ; preds = %bb.8, %bb.6
  %memload54 = load i64, ptr %RBP_N.40, align 1
  %memload55 = load i64, ptr %RBP_N.40, align 1
  %memload56 = load i64, ptr %RBP_N.48, align 1
  %51 = trunc i64 %memload56 to i32
  %RDX = sext i32 %51 to i64
  %memref-idxreg57 = mul i64 4, %RDX
  %memref-basereg58 = add i64 %memload55, %memref-idxreg57
  %52 = inttoptr i64 %memref-basereg58 to ptr
  %memload59 = load i64, ptr %52, align 1
  %53 = trunc i64 %memload59 to i32
  %RCX60 = sext i32 %53 to i64
  %memref-idxreg61 = mul i64 4, %RCX60
  %memref-basereg62 = add i64 %memload54, %memref-idxreg61
  %54 = inttoptr i64 %memref-basereg62 to ptr
  %memload63 = load i32, ptr %54, align 1
  %memload64 = load i64, ptr %RBP_N.40, align 1
  %memload65 = load i64, ptr %RBP_N.48, align 1
  %55 = trunc i64 %memload65 to i32
  %RDX66 = sext i32 %55 to i64
  %memref-idxreg67 = mul i64 4, %RDX66
  %memref-basereg68 = add i64 %memload64, %memref-idxreg67
  %56 = inttoptr i64 %memref-basereg68 to ptr
  %57 = load i32, ptr %56, align 1
  %58 = sub i32 %memload63, %57
  %59 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload63, i32 %57)
  %CF69 = extractvalue { i32, i1 } %59, 1
  %ZF70 = icmp eq i32 %58, 0
  %highbit71 = and i32 -2147483648, %58
  %SF72 = icmp ne i32 %highbit71, 0
  %60 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload63, i32 %57)
  %OF73 = extractvalue { i32, i1 } %60, 1
  %61 = and i32 %58, 255
  %62 = call i32 @llvm.ctpop.i32(i32 %61)
  %63 = and i32 %62, 1
  %PF74 = icmp eq i32 %63, 0
  %CmpZF_JE = icmp eq i1 %ZF70, true
  br i1 %CmpZF_JE, label %bb.9, label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload75 = load i64, ptr %RBP_N.40, align 1
  %memload76 = load i64, ptr %RBP_N.40, align 1
  %memload77 = load i64, ptr %RBP_N.48, align 1
  %64 = trunc i64 %memload77 to i32
  %RDX78 = sext i32 %64 to i64
  %memref-idxreg79 = mul i64 4, %RDX78
  %memref-basereg80 = add i64 %memload76, %memref-idxreg79
  %65 = inttoptr i64 %memref-basereg80 to ptr
  %memload81 = load i64, ptr %65, align 1
  %66 = trunc i64 %memload81 to i32
  %RCX82 = sext i32 %66 to i64
  %memref-idxreg83 = mul i64 4, %RCX82
  %memref-basereg84 = add i64 %memload75, %memref-idxreg83
  %67 = inttoptr i64 %memref-basereg84 to ptr
  %memload85 = load i32, ptr %67, align 1
  %memload86 = load i64, ptr %RBP_N.40, align 1
  %memload87 = load i64, ptr %RBP_N.48, align 1
  %68 = trunc i64 %memload87 to i32
  %RCX88 = sext i32 %68 to i64
  %memref-idxreg89 = mul i64 4, %RCX88
  %memref-basereg90 = add i64 %memload86, %memref-idxreg89
  %69 = inttoptr i64 %memref-basereg90 to ptr
  store i32 %memload85, ptr %69, align 1
  br label %bb.7

bb.9:                                             ; preds = %bb.7
  br label %bb.10

bb.10:                                            ; preds = %bb.11, %bb.9
  %memload91 = load i64, ptr %RBP_N.40, align 1
  %memload92 = load i64, ptr %RBP_N.40, align 1
  %memload93 = load i32, ptr %RBP_N.48, align 1
  %EDX = add i32 %memload93, 1
  %70 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload93, i32 1)
  %CF94 = extractvalue { i32, i1 } %70, 1
  %71 = and i32 %EDX, 255
  %72 = call i32 @llvm.ctpop.i32(i32 %71)
  %73 = and i32 %72, 1
  %PF95 = icmp eq i32 %73, 0
  %ZF96 = icmp eq i32 %EDX, 0
  %highbit97 = and i32 -2147483648, %EDX
  %SF98 = icmp ne i32 %highbit97, 0
  %74 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload93, i32 1)
  %OF99 = extractvalue { i32, i1 } %74, 1
  %RDX100 = sext i32 %EDX to i64
  %memref-idxreg101 = mul i64 4, %RDX100
  %memref-basereg102 = add i64 %memload92, %memref-idxreg101
  %75 = inttoptr i64 %memref-basereg102 to ptr
  %memload103 = load i64, ptr %75, align 1
  %76 = trunc i64 %memload103 to i32
  %RCX104 = sext i32 %76 to i64
  %memref-idxreg105 = mul i64 4, %RCX104
  %memref-basereg106 = add i64 %memload91, %memref-idxreg105
  %77 = inttoptr i64 %memref-basereg106 to ptr
  %memload107 = load i32, ptr %77, align 1
  %memload108 = load i64, ptr %RBP_N.40, align 1
  %memload109 = load i32, ptr %RBP_N.48, align 1
  %EDX116 = add i32 %memload109, 1
  %78 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload109, i32 1)
  %CF110 = extractvalue { i32, i1 } %78, 1
  %79 = and i32 %EDX116, 255
  %80 = call i32 @llvm.ctpop.i32(i32 %79)
  %81 = and i32 %80, 1
  %PF111 = icmp eq i32 %81, 0
  %ZF112 = icmp eq i32 %EDX116, 0
  %highbit113 = and i32 -2147483648, %EDX116
  %SF114 = icmp ne i32 %highbit113, 0
  %82 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload109, i32 1)
  %OF115 = extractvalue { i32, i1 } %82, 1
  %RDX117 = sext i32 %EDX116 to i64
  %memref-idxreg118 = mul i64 4, %RDX117
  %memref-basereg119 = add i64 %memload108, %memref-idxreg118
  %83 = inttoptr i64 %memref-basereg119 to ptr
  %84 = load i32, ptr %83, align 1
  %85 = sub i32 %memload107, %84
  %86 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload107, i32 %84)
  %CF120 = extractvalue { i32, i1 } %86, 1
  %ZF121 = icmp eq i32 %85, 0
  %highbit122 = and i32 -2147483648, %85
  %SF123 = icmp ne i32 %highbit122, 0
  %87 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload107, i32 %84)
  %OF124 = extractvalue { i32, i1 } %87, 1
  %88 = and i32 %85, 255
  %89 = call i32 @llvm.ctpop.i32(i32 %88)
  %90 = and i32 %89, 1
  %PF125 = icmp eq i32 %90, 0
  %CmpZF_JE724 = icmp eq i1 %ZF121, true
  br i1 %CmpZF_JE724, label %bb.12, label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload126 = load i64, ptr %RBP_N.40, align 1
  %memload127 = load i64, ptr %RBP_N.40, align 1
  %memload128 = load i32, ptr %RBP_N.48, align 1
  %EDX135 = add i32 %memload128, 1
  %91 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload128, i32 1)
  %CF129 = extractvalue { i32, i1 } %91, 1
  %92 = and i32 %EDX135, 255
  %93 = call i32 @llvm.ctpop.i32(i32 %92)
  %94 = and i32 %93, 1
  %PF130 = icmp eq i32 %94, 0
  %ZF131 = icmp eq i32 %EDX135, 0
  %highbit132 = and i32 -2147483648, %EDX135
  %SF133 = icmp ne i32 %highbit132, 0
  %95 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload128, i32 1)
  %OF134 = extractvalue { i32, i1 } %95, 1
  %RDX136 = sext i32 %EDX135 to i64
  %memref-idxreg137 = mul i64 4, %RDX136
  %memref-basereg138 = add i64 %memload127, %memref-idxreg137
  %96 = inttoptr i64 %memref-basereg138 to ptr
  %memload139 = load i64, ptr %96, align 1
  %97 = trunc i64 %memload139 to i32
  %RCX140 = sext i32 %97 to i64
  %memref-idxreg141 = mul i64 4, %RCX140
  %memref-basereg142 = add i64 %memload126, %memref-idxreg141
  %98 = inttoptr i64 %memref-basereg142 to ptr
  %memload143 = load i32, ptr %98, align 1
  %memload144 = load i64, ptr %RBP_N.40, align 1
  %memload145 = load i32, ptr %RBP_N.48, align 1
  %ECX = add i32 %memload145, 1
  %99 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload145, i32 1)
  %CF146 = extractvalue { i32, i1 } %99, 1
  %100 = and i32 %ECX, 255
  %101 = call i32 @llvm.ctpop.i32(i32 %100)
  %102 = and i32 %101, 1
  %PF147 = icmp eq i32 %102, 0
  %ZF148 = icmp eq i32 %ECX, 0
  %highbit149 = and i32 -2147483648, %ECX
  %SF150 = icmp ne i32 %highbit149, 0
  %103 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload145, i32 1)
  %OF151 = extractvalue { i32, i1 } %103, 1
  %RCX152 = sext i32 %ECX to i64
  %memref-idxreg153 = mul i64 4, %RCX152
  %memref-basereg154 = add i64 %memload144, %memref-idxreg153
  %104 = inttoptr i64 %memref-basereg154 to ptr
  store i32 %memload143, ptr %104, align 1
  br label %bb.10

bb.12:                                            ; preds = %bb.10
  %memload155 = load i64, ptr %RBP_N.32, align 1
  %memload156 = load i64, ptr %RBP_N.40, align 1
  %memload157 = load i64, ptr %RBP_N.48, align 1
  %105 = trunc i64 %memload157 to i32
  %RDX158 = sext i32 %105 to i64
  %memref-idxreg159 = mul i64 4, %RDX158
  %memref-basereg160 = add i64 %memload156, %memref-idxreg159
  %106 = inttoptr i64 %memref-basereg160 to ptr
  %memload161 = load i64, ptr %106, align 1
  %107 = trunc i64 %memload161 to i32
  %RCX162 = sext i32 %107 to i64
  %memref-idxreg163 = mul i64 4, %RCX162
  %memref-basereg164 = add i64 %memload155, %memref-idxreg163
  %108 = inttoptr i64 %memref-basereg164 to ptr
  %memload165 = load i32, ptr %108, align 1
  %cvt = sitofp i32 %memload165 to double
  %memload166 = load i64, ptr %RBP_N.32, align 1
  %memload167 = load i64, ptr %RBP_N.40, align 1
  %memload168 = load i32, ptr %RBP_N.48, align 1
  %EDX175 = add i32 %memload168, 1
  %109 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload168, i32 1)
  %CF169 = extractvalue { i32, i1 } %109, 1
  %110 = and i32 %EDX175, 255
  %111 = call i32 @llvm.ctpop.i32(i32 %110)
  %112 = and i32 %111, 1
  %PF170 = icmp eq i32 %112, 0
  %ZF171 = icmp eq i32 %EDX175, 0
  %highbit172 = and i32 -2147483648, %EDX175
  %SF173 = icmp ne i32 %highbit172, 0
  %113 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload168, i32 1)
  %OF174 = extractvalue { i32, i1 } %113, 1
  %RDX176 = sext i32 %EDX175 to i64
  %memref-idxreg177 = mul i64 4, %RDX176
  %memref-basereg178 = add i64 %memload167, %memref-idxreg177
  %114 = inttoptr i64 %memref-basereg178 to ptr
  %memload179 = load i64, ptr %114, align 1
  %115 = trunc i64 %memload179 to i32
  %RCX180 = sext i32 %115 to i64
  %memref-idxreg181 = mul i64 4, %RCX180
  %memref-basereg182 = add i64 %memload166, %memref-idxreg181
  %116 = inttoptr i64 %memref-basereg182 to ptr
  %memload183 = load i32, ptr %116, align 1
  %cvt184 = sitofp i32 %memload183 to double
  %XMM0 = call double @pow(double %cvt, double %cvt184)
  %cvt185 = fptosi double %XMM0 to i32
  %memload186 = load i64, ptr %RBP_N.32, align 1
  %memload187 = load i64, ptr %RBP_N.40, align 1
  %memload188 = load i64, ptr %RBP_N.48, align 1
  %117 = trunc i64 %memload188 to i32
  %RSI189 = sext i32 %117 to i64
  %memref-idxreg190 = mul i64 4, %RSI189
  %memref-basereg191 = add i64 %memload187, %memref-idxreg190
  %118 = inttoptr i64 %memref-basereg191 to ptr
  %memload192 = load i64, ptr %118, align 1
  %119 = trunc i64 %memload192 to i32
  %RCX193 = sext i32 %119 to i64
  %memref-idxreg194 = mul i64 4, %RCX193
  %memref-basereg195 = add i64 %memload186, %memref-idxreg194
  %120 = inttoptr i64 %memref-basereg195 to ptr
  store i32 %cvt185, ptr %120, align 1
  %memload196 = load i64, ptr %RBP_N.40, align 1
  %memload197 = load i64, ptr %RBP_N.48, align 1
  %121 = trunc i64 %memload197 to i32
  %RCX198 = sext i32 %121 to i64
  %memref-idxreg199 = mul i64 4, %RCX198
  %memref-basereg200 = add i64 %memload196, %memref-idxreg199
  %122 = inttoptr i64 %memref-basereg200 to ptr
  %memload201 = load i32, ptr %122, align 1
  %memload202 = load i64, ptr %RBP_N.40, align 1
  %memload203 = load i32, ptr %RBP_N.48, align 1
  %ECX210 = add i32 %memload203, 1
  %123 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload203, i32 1)
  %CF204 = extractvalue { i32, i1 } %123, 1
  %124 = and i32 %ECX210, 255
  %125 = call i32 @llvm.ctpop.i32(i32 %124)
  %126 = and i32 %125, 1
  %PF205 = icmp eq i32 %126, 0
  %ZF206 = icmp eq i32 %ECX210, 0
  %highbit207 = and i32 -2147483648, %ECX210
  %SF208 = icmp ne i32 %highbit207, 0
  %127 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload203, i32 1)
  %OF209 = extractvalue { i32, i1 } %127, 1
  %RCX211 = sext i32 %ECX210 to i64
  %memref-idxreg212 = mul i64 4, %RCX211
  %memref-basereg213 = add i64 %memload202, %memref-idxreg212
  %128 = inttoptr i64 %memref-basereg213 to ptr
  store i32 %memload201, ptr %128, align 1
  br label %bb.13

bb.13:                                            ; preds = %bb.12, %bb.5
  br label %bb.14

bb.14:                                            ; preds = %bb.13
  %memload214 = load i32, ptr %RBP_N.48, align 1
  %EAX221 = add i32 %memload214, 1
  %129 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload214, i32 1)
  %CF215 = extractvalue { i32, i1 } %129, 1
  %130 = and i32 %EAX221, 255
  %131 = call i32 @llvm.ctpop.i32(i32 %130)
  %132 = and i32 %131, 1
  %PF216 = icmp eq i32 %132, 0
  %ZF217 = icmp eq i32 %EAX221, 0
  %highbit218 = and i32 -2147483648, %EAX221
  %SF219 = icmp ne i32 %highbit218, 0
  %133 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload214, i32 1)
  %OF220 = extractvalue { i32, i1 } %133, 1
  store i32 %EAX221, ptr %RBP_N.48, align 1
  br label %bb.4

bb.15:                                            ; preds = %bb.4
  store i32 0, ptr %RBP_N.52, align 1
  br label %bb.16

bb.16:                                            ; preds = %bb.15, %bb.30
  %memload222 = load i32, ptr %RBP_N.52, align 1
  %134 = load i32, ptr %RBP_N.20, align 1
  %135 = sub i32 %memload222, %134
  %136 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload222, i32 %134)
  %CF223 = extractvalue { i32, i1 } %136, 1
  %ZF224 = icmp eq i32 %135, 0
  %highbit225 = and i32 -2147483648, %135
  %SF226 = icmp ne i32 %highbit225, 0
  %137 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload222, i32 %134)
  %OF227 = extractvalue { i32, i1 } %137, 1
  %138 = and i32 %135, 255
  %139 = call i32 @llvm.ctpop.i32(i32 %138)
  %140 = and i32 %139, 1
  %PF228 = icmp eq i32 %140, 0
  %CmpSFOF_JGE725 = icmp eq i1 %SF226, %OF227
  br i1 %CmpSFOF_JGE725, label %bb.31, label %bb.17

bb.17:                                            ; preds = %bb.16
  %memload229 = load i64, ptr %RBP_N.8, align 1
  %memload230 = load i64, ptr %RBP_N.52, align 1
  %141 = trunc i64 %memload230 to i32
  %RCX231 = sext i32 %141 to i64
  %memref-idxreg232 = mul i64 8, %RCX231
  %memref-basereg233 = add i64 %memload229, %memref-idxreg232
  %142 = inttoptr i64 %memref-basereg233 to ptr
  %memload234 = load i64, ptr %142, align 1
  %143 = inttoptr i64 %memload234 to ptr
  %EAX236 = call i32 @strcmp(ptr %143, ptr getelementptr inbounds ([10 x i8], ptr @0, i32 0, i32 1))
  %144 = sub i32 %EAX236, 0
  %145 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX236, i32 0)
  %CF237 = extractvalue { i32, i1 } %145, 1
  %ZF238 = icmp eq i32 %144, 0
  %highbit239 = and i32 -2147483648, %144
  %SF240 = icmp ne i32 %highbit239, 0
  %146 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX236, i32 0)
  %OF241 = extractvalue { i32, i1 } %146, 1
  %147 = and i32 %144, 255
  %148 = call i32 @llvm.ctpop.i32(i32 %147)
  %149 = and i32 %148, 1
  %PF242 = icmp eq i32 %149, 0
  %CmpZF_JE726 = icmp eq i1 %ZF238, true
  br i1 %CmpZF_JE726, label %bb.19, label %bb.18

bb.18:                                            ; preds = %bb.17
  %memload243 = load i64, ptr %RBP_N.8, align 1
  %memload244 = load i64, ptr %RBP_N.52, align 1
  %150 = trunc i64 %memload244 to i32
  %RCX245 = sext i32 %150 to i64
  %memref-idxreg246 = mul i64 8, %RCX245
  %memref-basereg247 = add i64 %memload243, %memref-idxreg246
  %151 = inttoptr i64 %memref-basereg247 to ptr
  %memload248 = load i64, ptr %151, align 1
  %152 = inttoptr i64 %memload248 to ptr
  %EAX250 = call i32 @strcmp(ptr %152, ptr getelementptr inbounds ([10 x i8], ptr @0, i32 0, i32 3))
  %153 = sub i32 %EAX250, 0
  %154 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX250, i32 0)
  %CF251 = extractvalue { i32, i1 } %154, 1
  %ZF252 = icmp eq i32 %153, 0
  %highbit253 = and i32 -2147483648, %153
  %SF254 = icmp ne i32 %highbit253, 0
  %155 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX250, i32 0)
  %OF255 = extractvalue { i32, i1 } %155, 1
  %156 = and i32 %153, 255
  %157 = call i32 @llvm.ctpop.i32(i32 %156)
  %158 = and i32 %157, 1
  %PF256 = icmp eq i32 %158, 0
  %CmpZF_JNE727 = icmp eq i1 %ZF252, false
  br i1 %CmpZF_JNE727, label %bb.29, label %bb.19

bb.19:                                            ; preds = %bb.18, %bb.17
  br label %bb.20

bb.20:                                            ; preds = %bb.21, %bb.19
  %memload257 = load i64, ptr %RBP_N.40, align 1
  %memload258 = load i64, ptr %RBP_N.40, align 1
  %memload259 = load i64, ptr %RBP_N.52, align 1
  %159 = trunc i64 %memload259 to i32
  %RDX260 = sext i32 %159 to i64
  %memref-idxreg261 = mul i64 4, %RDX260
  %memref-basereg262 = add i64 %memload258, %memref-idxreg261
  %160 = inttoptr i64 %memref-basereg262 to ptr
  %memload263 = load i64, ptr %160, align 1
  %161 = trunc i64 %memload263 to i32
  %RCX264 = sext i32 %161 to i64
  %memref-idxreg265 = mul i64 4, %RCX264
  %memref-basereg266 = add i64 %memload257, %memref-idxreg265
  %162 = inttoptr i64 %memref-basereg266 to ptr
  %memload267 = load i32, ptr %162, align 1
  %memload268 = load i64, ptr %RBP_N.40, align 1
  %memload269 = load i64, ptr %RBP_N.52, align 1
  %163 = trunc i64 %memload269 to i32
  %RDX270 = sext i32 %163 to i64
  %memref-idxreg271 = mul i64 4, %RDX270
  %memref-basereg272 = add i64 %memload268, %memref-idxreg271
  %164 = inttoptr i64 %memref-basereg272 to ptr
  %165 = load i32, ptr %164, align 1
  %166 = sub i32 %memload267, %165
  %167 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload267, i32 %165)
  %CF273 = extractvalue { i32, i1 } %167, 1
  %ZF274 = icmp eq i32 %166, 0
  %highbit275 = and i32 -2147483648, %166
  %SF276 = icmp ne i32 %highbit275, 0
  %168 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload267, i32 %165)
  %OF277 = extractvalue { i32, i1 } %168, 1
  %169 = and i32 %166, 255
  %170 = call i32 @llvm.ctpop.i32(i32 %169)
  %171 = and i32 %170, 1
  %PF278 = icmp eq i32 %171, 0
  %CmpZF_JE728 = icmp eq i1 %ZF274, true
  br i1 %CmpZF_JE728, label %bb.22, label %bb.21

bb.21:                                            ; preds = %bb.20
  %memload279 = load i64, ptr %RBP_N.40, align 1
  %memload280 = load i64, ptr %RBP_N.40, align 1
  %memload281 = load i64, ptr %RBP_N.52, align 1
  %172 = trunc i64 %memload281 to i32
  %RDX282 = sext i32 %172 to i64
  %memref-idxreg283 = mul i64 4, %RDX282
  %memref-basereg284 = add i64 %memload280, %memref-idxreg283
  %173 = inttoptr i64 %memref-basereg284 to ptr
  %memload285 = load i64, ptr %173, align 1
  %174 = trunc i64 %memload285 to i32
  %RCX286 = sext i32 %174 to i64
  %memref-idxreg287 = mul i64 4, %RCX286
  %memref-basereg288 = add i64 %memload279, %memref-idxreg287
  %175 = inttoptr i64 %memref-basereg288 to ptr
  %memload289 = load i32, ptr %175, align 1
  %memload290 = load i64, ptr %RBP_N.40, align 1
  %memload291 = load i64, ptr %RBP_N.52, align 1
  %176 = trunc i64 %memload291 to i32
  %RCX292 = sext i32 %176 to i64
  %memref-idxreg293 = mul i64 4, %RCX292
  %memref-basereg294 = add i64 %memload290, %memref-idxreg293
  %177 = inttoptr i64 %memref-basereg294 to ptr
  store i32 %memload289, ptr %177, align 1
  br label %bb.20

bb.22:                                            ; preds = %bb.20
  br label %bb.23

bb.23:                                            ; preds = %bb.24, %bb.22
  %memload295 = load i64, ptr %RBP_N.40, align 1
  %memload296 = load i64, ptr %RBP_N.40, align 1
  %memload297 = load i32, ptr %RBP_N.52, align 1
  %EDX304 = add i32 %memload297, 1
  %178 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload297, i32 1)
  %CF298 = extractvalue { i32, i1 } %178, 1
  %179 = and i32 %EDX304, 255
  %180 = call i32 @llvm.ctpop.i32(i32 %179)
  %181 = and i32 %180, 1
  %PF299 = icmp eq i32 %181, 0
  %ZF300 = icmp eq i32 %EDX304, 0
  %highbit301 = and i32 -2147483648, %EDX304
  %SF302 = icmp ne i32 %highbit301, 0
  %182 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload297, i32 1)
  %OF303 = extractvalue { i32, i1 } %182, 1
  %RDX305 = sext i32 %EDX304 to i64
  %memref-idxreg306 = mul i64 4, %RDX305
  %memref-basereg307 = add i64 %memload296, %memref-idxreg306
  %183 = inttoptr i64 %memref-basereg307 to ptr
  %memload308 = load i64, ptr %183, align 1
  %184 = trunc i64 %memload308 to i32
  %RCX309 = sext i32 %184 to i64
  %memref-idxreg310 = mul i64 4, %RCX309
  %memref-basereg311 = add i64 %memload295, %memref-idxreg310
  %185 = inttoptr i64 %memref-basereg311 to ptr
  %memload312 = load i32, ptr %185, align 1
  %memload313 = load i64, ptr %RBP_N.40, align 1
  %memload314 = load i32, ptr %RBP_N.52, align 1
  %EDX321 = add i32 %memload314, 1
  %186 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload314, i32 1)
  %CF315 = extractvalue { i32, i1 } %186, 1
  %187 = and i32 %EDX321, 255
  %188 = call i32 @llvm.ctpop.i32(i32 %187)
  %189 = and i32 %188, 1
  %PF316 = icmp eq i32 %189, 0
  %ZF317 = icmp eq i32 %EDX321, 0
  %highbit318 = and i32 -2147483648, %EDX321
  %SF319 = icmp ne i32 %highbit318, 0
  %190 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload314, i32 1)
  %OF320 = extractvalue { i32, i1 } %190, 1
  %RDX322 = sext i32 %EDX321 to i64
  %memref-idxreg323 = mul i64 4, %RDX322
  %memref-basereg324 = add i64 %memload313, %memref-idxreg323
  %191 = inttoptr i64 %memref-basereg324 to ptr
  %192 = load i32, ptr %191, align 1
  %193 = sub i32 %memload312, %192
  %194 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload312, i32 %192)
  %CF325 = extractvalue { i32, i1 } %194, 1
  %ZF326 = icmp eq i32 %193, 0
  %highbit327 = and i32 -2147483648, %193
  %SF328 = icmp ne i32 %highbit327, 0
  %195 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload312, i32 %192)
  %OF329 = extractvalue { i32, i1 } %195, 1
  %196 = and i32 %193, 255
  %197 = call i32 @llvm.ctpop.i32(i32 %196)
  %198 = and i32 %197, 1
  %PF330 = icmp eq i32 %198, 0
  %CmpZF_JE729 = icmp eq i1 %ZF326, true
  br i1 %CmpZF_JE729, label %bb.25, label %bb.24

bb.24:                                            ; preds = %bb.23
  %memload331 = load i64, ptr %RBP_N.40, align 1
  %memload332 = load i64, ptr %RBP_N.40, align 1
  %memload333 = load i32, ptr %RBP_N.52, align 1
  %EDX340 = add i32 %memload333, 1
  %199 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload333, i32 1)
  %CF334 = extractvalue { i32, i1 } %199, 1
  %200 = and i32 %EDX340, 255
  %201 = call i32 @llvm.ctpop.i32(i32 %200)
  %202 = and i32 %201, 1
  %PF335 = icmp eq i32 %202, 0
  %ZF336 = icmp eq i32 %EDX340, 0
  %highbit337 = and i32 -2147483648, %EDX340
  %SF338 = icmp ne i32 %highbit337, 0
  %203 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload333, i32 1)
  %OF339 = extractvalue { i32, i1 } %203, 1
  %RDX341 = sext i32 %EDX340 to i64
  %memref-idxreg342 = mul i64 4, %RDX341
  %memref-basereg343 = add i64 %memload332, %memref-idxreg342
  %204 = inttoptr i64 %memref-basereg343 to ptr
  %memload344 = load i64, ptr %204, align 1
  %205 = trunc i64 %memload344 to i32
  %RCX345 = sext i32 %205 to i64
  %memref-idxreg346 = mul i64 4, %RCX345
  %memref-basereg347 = add i64 %memload331, %memref-idxreg346
  %206 = inttoptr i64 %memref-basereg347 to ptr
  %memload348 = load i32, ptr %206, align 1
  %memload349 = load i64, ptr %RBP_N.40, align 1
  %memload350 = load i32, ptr %RBP_N.52, align 1
  %ECX357 = add i32 %memload350, 1
  %207 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload350, i32 1)
  %CF351 = extractvalue { i32, i1 } %207, 1
  %208 = and i32 %ECX357, 255
  %209 = call i32 @llvm.ctpop.i32(i32 %208)
  %210 = and i32 %209, 1
  %PF352 = icmp eq i32 %210, 0
  %ZF353 = icmp eq i32 %ECX357, 0
  %highbit354 = and i32 -2147483648, %ECX357
  %SF355 = icmp ne i32 %highbit354, 0
  %211 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload350, i32 1)
  %OF356 = extractvalue { i32, i1 } %211, 1
  %RCX358 = sext i32 %ECX357 to i64
  %memref-idxreg359 = mul i64 4, %RCX358
  %memref-basereg360 = add i64 %memload349, %memref-idxreg359
  %212 = inttoptr i64 %memref-basereg360 to ptr
  store i32 %memload348, ptr %212, align 1
  br label %bb.23

bb.25:                                            ; preds = %bb.23
  %memload361 = load i64, ptr %RBP_N.8, align 1
  %memload362 = load i64, ptr %RBP_N.52, align 1
  %213 = trunc i64 %memload362 to i32
  %RCX363 = sext i32 %213 to i64
  %memref-idxreg364 = mul i64 8, %RCX363
  %memref-basereg365 = add i64 %memload361, %memref-idxreg364
  %214 = inttoptr i64 %memref-basereg365 to ptr
  %memload366 = load i64, ptr %214, align 1
  %215 = inttoptr i64 %memload366 to ptr
  %EAX368 = call i32 @strcmp(ptr %215, ptr getelementptr inbounds ([10 x i8], ptr @0, i32 0, i32 1))
  %216 = sub i32 %EAX368, 0
  %217 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX368, i32 0)
  %CF369 = extractvalue { i32, i1 } %217, 1
  %ZF370 = icmp eq i32 %216, 0
  %highbit371 = and i32 -2147483648, %216
  %SF372 = icmp ne i32 %highbit371, 0
  %218 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX368, i32 0)
  %OF373 = extractvalue { i32, i1 } %218, 1
  %219 = and i32 %216, 255
  %220 = call i32 @llvm.ctpop.i32(i32 %219)
  %221 = and i32 %220, 1
  %PF374 = icmp eq i32 %221, 0
  %CmpZF_JNE730 = icmp eq i1 %ZF370, false
  br i1 %CmpZF_JNE730, label %bb.27, label %bb.26

bb.26:                                            ; preds = %bb.25
  %memload375 = load i64, ptr %RBP_N.32, align 1
  %memload376 = load i64, ptr %RBP_N.40, align 1
  %memload377 = load i32, ptr %RBP_N.52, align 1
  %EDX384 = add i32 %memload377, 1
  %222 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload377, i32 1)
  %CF378 = extractvalue { i32, i1 } %222, 1
  %223 = and i32 %EDX384, 255
  %224 = call i32 @llvm.ctpop.i32(i32 %223)
  %225 = and i32 %224, 1
  %PF379 = icmp eq i32 %225, 0
  %ZF380 = icmp eq i32 %EDX384, 0
  %highbit381 = and i32 -2147483648, %EDX384
  %SF382 = icmp ne i32 %highbit381, 0
  %226 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload377, i32 1)
  %OF383 = extractvalue { i32, i1 } %226, 1
  %RDX385 = sext i32 %EDX384 to i64
  %memref-idxreg386 = mul i64 4, %RDX385
  %memref-basereg387 = add i64 %memload376, %memref-idxreg386
  %227 = inttoptr i64 %memref-basereg387 to ptr
  %memload388 = load i64, ptr %227, align 1
  %228 = trunc i64 %memload388 to i32
  %RCX389 = sext i32 %228 to i64
  %memref-idxreg390 = mul i64 4, %RCX389
  %memref-basereg391 = add i64 %memload375, %memref-idxreg390
  %229 = inttoptr i64 %memref-basereg391 to ptr
  %memload392 = load i32, ptr %229, align 1
  %memload393 = load i64, ptr %RBP_N.32, align 1
  %memload394 = load i64, ptr %RBP_N.40, align 1
  %memload395 = load i64, ptr %RBP_N.52, align 1
  %230 = trunc i64 %memload395 to i32
  %RSI396 = sext i32 %230 to i64
  %memref-idxreg397 = mul i64 4, %RSI396
  %memref-basereg398 = add i64 %memload394, %memref-idxreg397
  %231 = inttoptr i64 %memref-basereg398 to ptr
  %memload399 = load i64, ptr %231, align 1
  %232 = trunc i64 %memload399 to i32
  %RCX400 = sext i32 %232 to i64
  %memref-idxreg401 = mul i64 4, %RCX400
  %memref-basereg402 = add i64 %memload393, %memref-idxreg401
  %233 = inttoptr i64 %memref-basereg402 to ptr
  %memload403 = load i32, ptr %233, align 1
  %EDX404 = mul i32 %memload392, %memload403
  %memref-idxreg405 = mul i64 4, %RCX400
  %memref-basereg406 = add i64 %memload393, %memref-idxreg405
  %234 = inttoptr i64 %memref-basereg406 to ptr
  store i32 %EDX404, ptr %234, align 1
  br label %bb.28

bb.27:                                            ; preds = %bb.25
  %memload407 = load i64, ptr %RBP_N.32, align 1
  %memload408 = load i64, ptr %RBP_N.40, align 1
  %memload409 = load i32, ptr %RBP_N.52, align 1
  %EDX416 = add i32 %memload409, 1
  %235 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload409, i32 1)
  %CF410 = extractvalue { i32, i1 } %235, 1
  %236 = and i32 %EDX416, 255
  %237 = call i32 @llvm.ctpop.i32(i32 %236)
  %238 = and i32 %237, 1
  %PF411 = icmp eq i32 %238, 0
  %ZF412 = icmp eq i32 %EDX416, 0
  %highbit413 = and i32 -2147483648, %EDX416
  %SF414 = icmp ne i32 %highbit413, 0
  %239 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload409, i32 1)
  %OF415 = extractvalue { i32, i1 } %239, 1
  %RDX417 = sext i32 %EDX416 to i64
  %memref-idxreg418 = mul i64 4, %RDX417
  %memref-basereg419 = add i64 %memload408, %memref-idxreg418
  %240 = inttoptr i64 %memref-basereg419 to ptr
  %memload420 = load i64, ptr %240, align 1
  %241 = trunc i64 %memload420 to i32
  %RCX421 = sext i32 %241 to i64
  %memref-idxreg422 = mul i64 4, %RCX421
  %memref-basereg423 = add i64 %memload407, %memref-idxreg422
  %242 = inttoptr i64 %memref-basereg423 to ptr
  %memload424 = load i32, ptr %242, align 1
  %memload425 = load i64, ptr %RBP_N.32, align 1
  store i64 %memload425, ptr %RBP_N.72, align 1
  %memload426 = load i64, ptr %RBP_N.40, align 1
  %memload427 = load i64, ptr %RBP_N.52, align 1
  %243 = trunc i64 %memload427 to i32
  %RDX428 = sext i32 %243 to i64
  %memref-idxreg429 = mul i64 4, %RDX428
  %memref-basereg430 = add i64 %memload426, %memref-idxreg429
  %244 = inttoptr i64 %memref-basereg430 to ptr
  %memload431 = load i64, ptr %244, align 1
  %245 = trunc i64 %memload431 to i32
  %RCX432 = sext i32 %245 to i64
  %memref-idxreg433 = mul i64 4, %RCX432
  %memref-basereg434 = add i64 %memload425, %memref-idxreg433
  %246 = inttoptr i64 %memref-basereg434 to ptr
  %memload435 = load i32, ptr %246, align 1
  %247 = sext i32 %memload435 to i64
  %248 = lshr i64 %247, 32
  %EDX436 = trunc i64 %248 to i32
  %249 = sext i32 %memload435 to i64
  %250 = sext i32 %EDX436 to i64
  %div_hb_ls = shl nuw i64 %250, 32
  %dividend = or i64 %div_hb_ls, %249
  %251 = sext i32 %memload424 to i64
  %div_q = sdiv i64 %dividend, %251
  %EAX437 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %251
  %EDX438 = trunc i64 %div_r to i32
  %memload439 = load i64, ptr %RBP_N.72, align 1
  %memref-idxreg440 = mul i64 4, %RCX432
  %memref-basereg441 = add i64 %memload439, %memref-idxreg440
  %252 = inttoptr i64 %memref-basereg441 to ptr
  store i32 %EAX437, ptr %252, align 1
  br label %bb.28

bb.28:                                            ; preds = %bb.27, %bb.26
  %memload442 = load i64, ptr %RBP_N.40, align 1
  %memload443 = load i64, ptr %RBP_N.52, align 1
  %253 = trunc i64 %memload443 to i32
  %RCX444 = sext i32 %253 to i64
  %memref-idxreg445 = mul i64 4, %RCX444
  %memref-basereg446 = add i64 %memload442, %memref-idxreg445
  %254 = inttoptr i64 %memref-basereg446 to ptr
  %memload447 = load i32, ptr %254, align 1
  %memload448 = load i64, ptr %RBP_N.40, align 1
  %memload449 = load i32, ptr %RBP_N.52, align 1
  %ECX456 = add i32 %memload449, 1
  %255 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload449, i32 1)
  %CF450 = extractvalue { i32, i1 } %255, 1
  %256 = and i32 %ECX456, 255
  %257 = call i32 @llvm.ctpop.i32(i32 %256)
  %258 = and i32 %257, 1
  %PF451 = icmp eq i32 %258, 0
  %ZF452 = icmp eq i32 %ECX456, 0
  %highbit453 = and i32 -2147483648, %ECX456
  %SF454 = icmp ne i32 %highbit453, 0
  %259 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload449, i32 1)
  %OF455 = extractvalue { i32, i1 } %259, 1
  %RCX457 = sext i32 %ECX456 to i64
  %memref-idxreg458 = mul i64 4, %RCX457
  %memref-basereg459 = add i64 %memload448, %memref-idxreg458
  %260 = inttoptr i64 %memref-basereg459 to ptr
  store i32 %memload447, ptr %260, align 1
  br label %bb.29

bb.29:                                            ; preds = %bb.28, %bb.18
  br label %bb.30

bb.30:                                            ; preds = %bb.29
  %memload460 = load i32, ptr %RBP_N.52, align 1
  %EAX467 = add i32 %memload460, 1
  %261 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload460, i32 1)
  %CF461 = extractvalue { i32, i1 } %261, 1
  %262 = and i32 %EAX467, 255
  %263 = call i32 @llvm.ctpop.i32(i32 %262)
  %264 = and i32 %263, 1
  %PF462 = icmp eq i32 %264, 0
  %ZF463 = icmp eq i32 %EAX467, 0
  %highbit464 = and i32 -2147483648, %EAX467
  %SF465 = icmp ne i32 %highbit464, 0
  %265 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload460, i32 1)
  %OF466 = extractvalue { i32, i1 } %265, 1
  store i32 %EAX467, ptr %RBP_N.52, align 1
  br label %bb.16

bb.31:                                            ; preds = %bb.16
  store i32 0, ptr %RBP_N.56, align 1
  br label %bb.32

bb.32:                                            ; preds = %bb.31, %bb.46
  %memload468 = load i32, ptr %RBP_N.56, align 1
  %266 = load i32, ptr %RBP_N.20, align 1
  %267 = sub i32 %memload468, %266
  %268 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload468, i32 %266)
  %CF469 = extractvalue { i32, i1 } %268, 1
  %ZF470 = icmp eq i32 %267, 0
  %highbit471 = and i32 -2147483648, %267
  %SF472 = icmp ne i32 %highbit471, 0
  %269 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload468, i32 %266)
  %OF473 = extractvalue { i32, i1 } %269, 1
  %270 = and i32 %267, 255
  %271 = call i32 @llvm.ctpop.i32(i32 %270)
  %272 = and i32 %271, 1
  %PF474 = icmp eq i32 %272, 0
  %CmpSFOF_JGE731 = icmp eq i1 %SF472, %OF473
  br i1 %CmpSFOF_JGE731, label %bb.47, label %bb.33

bb.33:                                            ; preds = %bb.32
  %memload475 = load i64, ptr %RBP_N.8, align 1
  %memload476 = load i64, ptr %RBP_N.56, align 1
  %273 = trunc i64 %memload476 to i32
  %RCX477 = sext i32 %273 to i64
  %memref-idxreg478 = mul i64 8, %RCX477
  %memref-basereg479 = add i64 %memload475, %memref-idxreg478
  %274 = inttoptr i64 %memref-basereg479 to ptr
  %memload480 = load i64, ptr %274, align 1
  %275 = inttoptr i64 %memload480 to ptr
  %EAX482 = call i32 @strcmp(ptr %275, ptr getelementptr inbounds ([10 x i8], ptr @0, i32 0, i32 6))
  %276 = sub i32 %EAX482, 0
  %277 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX482, i32 0)
  %CF483 = extractvalue { i32, i1 } %277, 1
  %ZF484 = icmp eq i32 %276, 0
  %highbit485 = and i32 -2147483648, %276
  %SF486 = icmp ne i32 %highbit485, 0
  %278 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX482, i32 0)
  %OF487 = extractvalue { i32, i1 } %278, 1
  %279 = and i32 %276, 255
  %280 = call i32 @llvm.ctpop.i32(i32 %279)
  %281 = and i32 %280, 1
  %PF488 = icmp eq i32 %281, 0
  %CmpZF_JE732 = icmp eq i1 %ZF484, true
  br i1 %CmpZF_JE732, label %bb.35, label %bb.34

bb.34:                                            ; preds = %bb.33
  %memload489 = load i64, ptr %RBP_N.8, align 1
  %memload490 = load i64, ptr %RBP_N.56, align 1
  %282 = trunc i64 %memload490 to i32
  %RCX491 = sext i32 %282 to i64
  %memref-idxreg492 = mul i64 8, %RCX491
  %memref-basereg493 = add i64 %memload489, %memref-idxreg492
  %283 = inttoptr i64 %memref-basereg493 to ptr
  %memload494 = load i64, ptr %283, align 1
  %284 = inttoptr i64 %memload494 to ptr
  %EAX496 = call i32 @strcmp(ptr %284, ptr getelementptr inbounds ([10 x i8], ptr @0, i32 0, i32 8))
  %285 = sub i32 %EAX496, 0
  %286 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX496, i32 0)
  %CF497 = extractvalue { i32, i1 } %286, 1
  %ZF498 = icmp eq i32 %285, 0
  %highbit499 = and i32 -2147483648, %285
  %SF500 = icmp ne i32 %highbit499, 0
  %287 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX496, i32 0)
  %OF501 = extractvalue { i32, i1 } %287, 1
  %288 = and i32 %285, 255
  %289 = call i32 @llvm.ctpop.i32(i32 %288)
  %290 = and i32 %289, 1
  %PF502 = icmp eq i32 %290, 0
  %CmpZF_JNE733 = icmp eq i1 %ZF498, false
  br i1 %CmpZF_JNE733, label %bb.45, label %bb.35

bb.35:                                            ; preds = %bb.34, %bb.33
  br label %bb.36

bb.36:                                            ; preds = %bb.37, %bb.35
  %memload503 = load i64, ptr %RBP_N.40, align 1
  %memload504 = load i64, ptr %RBP_N.40, align 1
  %memload505 = load i64, ptr %RBP_N.56, align 1
  %291 = trunc i64 %memload505 to i32
  %RDX506 = sext i32 %291 to i64
  %memref-idxreg507 = mul i64 4, %RDX506
  %memref-basereg508 = add i64 %memload504, %memref-idxreg507
  %292 = inttoptr i64 %memref-basereg508 to ptr
  %memload509 = load i64, ptr %292, align 1
  %293 = trunc i64 %memload509 to i32
  %RCX510 = sext i32 %293 to i64
  %memref-idxreg511 = mul i64 4, %RCX510
  %memref-basereg512 = add i64 %memload503, %memref-idxreg511
  %294 = inttoptr i64 %memref-basereg512 to ptr
  %memload513 = load i32, ptr %294, align 1
  %memload514 = load i64, ptr %RBP_N.40, align 1
  %memload515 = load i64, ptr %RBP_N.56, align 1
  %295 = trunc i64 %memload515 to i32
  %RDX516 = sext i32 %295 to i64
  %memref-idxreg517 = mul i64 4, %RDX516
  %memref-basereg518 = add i64 %memload514, %memref-idxreg517
  %296 = inttoptr i64 %memref-basereg518 to ptr
  %297 = load i32, ptr %296, align 1
  %298 = sub i32 %memload513, %297
  %299 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload513, i32 %297)
  %CF519 = extractvalue { i32, i1 } %299, 1
  %ZF520 = icmp eq i32 %298, 0
  %highbit521 = and i32 -2147483648, %298
  %SF522 = icmp ne i32 %highbit521, 0
  %300 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload513, i32 %297)
  %OF523 = extractvalue { i32, i1 } %300, 1
  %301 = and i32 %298, 255
  %302 = call i32 @llvm.ctpop.i32(i32 %301)
  %303 = and i32 %302, 1
  %PF524 = icmp eq i32 %303, 0
  %CmpZF_JE734 = icmp eq i1 %ZF520, true
  br i1 %CmpZF_JE734, label %bb.38, label %bb.37

bb.37:                                            ; preds = %bb.36
  %memload525 = load i64, ptr %RBP_N.40, align 1
  %memload526 = load i64, ptr %RBP_N.40, align 1
  %memload527 = load i64, ptr %RBP_N.56, align 1
  %304 = trunc i64 %memload527 to i32
  %RDX528 = sext i32 %304 to i64
  %memref-idxreg529 = mul i64 4, %RDX528
  %memref-basereg530 = add i64 %memload526, %memref-idxreg529
  %305 = inttoptr i64 %memref-basereg530 to ptr
  %memload531 = load i64, ptr %305, align 1
  %306 = trunc i64 %memload531 to i32
  %RCX532 = sext i32 %306 to i64
  %memref-idxreg533 = mul i64 4, %RCX532
  %memref-basereg534 = add i64 %memload525, %memref-idxreg533
  %307 = inttoptr i64 %memref-basereg534 to ptr
  %memload535 = load i32, ptr %307, align 1
  %memload536 = load i64, ptr %RBP_N.40, align 1
  %memload537 = load i64, ptr %RBP_N.56, align 1
  %308 = trunc i64 %memload537 to i32
  %RCX538 = sext i32 %308 to i64
  %memref-idxreg539 = mul i64 4, %RCX538
  %memref-basereg540 = add i64 %memload536, %memref-idxreg539
  %309 = inttoptr i64 %memref-basereg540 to ptr
  store i32 %memload535, ptr %309, align 1
  br label %bb.36

bb.38:                                            ; preds = %bb.36
  br label %bb.39

bb.39:                                            ; preds = %bb.40, %bb.38
  %memload541 = load i64, ptr %RBP_N.40, align 1
  %memload542 = load i64, ptr %RBP_N.40, align 1
  %memload543 = load i32, ptr %RBP_N.56, align 1
  %EDX550 = add i32 %memload543, 1
  %310 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload543, i32 1)
  %CF544 = extractvalue { i32, i1 } %310, 1
  %311 = and i32 %EDX550, 255
  %312 = call i32 @llvm.ctpop.i32(i32 %311)
  %313 = and i32 %312, 1
  %PF545 = icmp eq i32 %313, 0
  %ZF546 = icmp eq i32 %EDX550, 0
  %highbit547 = and i32 -2147483648, %EDX550
  %SF548 = icmp ne i32 %highbit547, 0
  %314 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload543, i32 1)
  %OF549 = extractvalue { i32, i1 } %314, 1
  %RDX551 = sext i32 %EDX550 to i64
  %memref-idxreg552 = mul i64 4, %RDX551
  %memref-basereg553 = add i64 %memload542, %memref-idxreg552
  %315 = inttoptr i64 %memref-basereg553 to ptr
  %memload554 = load i64, ptr %315, align 1
  %316 = trunc i64 %memload554 to i32
  %RCX555 = sext i32 %316 to i64
  %memref-idxreg556 = mul i64 4, %RCX555
  %memref-basereg557 = add i64 %memload541, %memref-idxreg556
  %317 = inttoptr i64 %memref-basereg557 to ptr
  %memload558 = load i32, ptr %317, align 1
  %memload559 = load i64, ptr %RBP_N.40, align 1
  %memload560 = load i32, ptr %RBP_N.56, align 1
  %EDX567 = add i32 %memload560, 1
  %318 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload560, i32 1)
  %CF561 = extractvalue { i32, i1 } %318, 1
  %319 = and i32 %EDX567, 255
  %320 = call i32 @llvm.ctpop.i32(i32 %319)
  %321 = and i32 %320, 1
  %PF562 = icmp eq i32 %321, 0
  %ZF563 = icmp eq i32 %EDX567, 0
  %highbit564 = and i32 -2147483648, %EDX567
  %SF565 = icmp ne i32 %highbit564, 0
  %322 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload560, i32 1)
  %OF566 = extractvalue { i32, i1 } %322, 1
  %RDX568 = sext i32 %EDX567 to i64
  %memref-idxreg569 = mul i64 4, %RDX568
  %memref-basereg570 = add i64 %memload559, %memref-idxreg569
  %323 = inttoptr i64 %memref-basereg570 to ptr
  %324 = load i32, ptr %323, align 1
  %325 = sub i32 %memload558, %324
  %326 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload558, i32 %324)
  %CF571 = extractvalue { i32, i1 } %326, 1
  %ZF572 = icmp eq i32 %325, 0
  %highbit573 = and i32 -2147483648, %325
  %SF574 = icmp ne i32 %highbit573, 0
  %327 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload558, i32 %324)
  %OF575 = extractvalue { i32, i1 } %327, 1
  %328 = and i32 %325, 255
  %329 = call i32 @llvm.ctpop.i32(i32 %328)
  %330 = and i32 %329, 1
  %PF576 = icmp eq i32 %330, 0
  %CmpZF_JE735 = icmp eq i1 %ZF572, true
  br i1 %CmpZF_JE735, label %bb.41, label %bb.40

bb.40:                                            ; preds = %bb.39
  %memload577 = load i64, ptr %RBP_N.40, align 1
  %memload578 = load i64, ptr %RBP_N.40, align 1
  %memload579 = load i32, ptr %RBP_N.56, align 1
  %EDX586 = add i32 %memload579, 1
  %331 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload579, i32 1)
  %CF580 = extractvalue { i32, i1 } %331, 1
  %332 = and i32 %EDX586, 255
  %333 = call i32 @llvm.ctpop.i32(i32 %332)
  %334 = and i32 %333, 1
  %PF581 = icmp eq i32 %334, 0
  %ZF582 = icmp eq i32 %EDX586, 0
  %highbit583 = and i32 -2147483648, %EDX586
  %SF584 = icmp ne i32 %highbit583, 0
  %335 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload579, i32 1)
  %OF585 = extractvalue { i32, i1 } %335, 1
  %RDX587 = sext i32 %EDX586 to i64
  %memref-idxreg588 = mul i64 4, %RDX587
  %memref-basereg589 = add i64 %memload578, %memref-idxreg588
  %336 = inttoptr i64 %memref-basereg589 to ptr
  %memload590 = load i64, ptr %336, align 1
  %337 = trunc i64 %memload590 to i32
  %RCX591 = sext i32 %337 to i64
  %memref-idxreg592 = mul i64 4, %RCX591
  %memref-basereg593 = add i64 %memload577, %memref-idxreg592
  %338 = inttoptr i64 %memref-basereg593 to ptr
  %memload594 = load i32, ptr %338, align 1
  %memload595 = load i64, ptr %RBP_N.40, align 1
  %memload596 = load i32, ptr %RBP_N.56, align 1
  %ECX603 = add i32 %memload596, 1
  %339 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload596, i32 1)
  %CF597 = extractvalue { i32, i1 } %339, 1
  %340 = and i32 %ECX603, 255
  %341 = call i32 @llvm.ctpop.i32(i32 %340)
  %342 = and i32 %341, 1
  %PF598 = icmp eq i32 %342, 0
  %ZF599 = icmp eq i32 %ECX603, 0
  %highbit600 = and i32 -2147483648, %ECX603
  %SF601 = icmp ne i32 %highbit600, 0
  %343 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload596, i32 1)
  %OF602 = extractvalue { i32, i1 } %343, 1
  %RCX604 = sext i32 %ECX603 to i64
  %memref-idxreg605 = mul i64 4, %RCX604
  %memref-basereg606 = add i64 %memload595, %memref-idxreg605
  %344 = inttoptr i64 %memref-basereg606 to ptr
  store i32 %memload594, ptr %344, align 1
  br label %bb.39

bb.41:                                            ; preds = %bb.39
  %memload607 = load i64, ptr %RBP_N.8, align 1
  %memload608 = load i64, ptr %RBP_N.56, align 1
  %345 = trunc i64 %memload608 to i32
  %RCX609 = sext i32 %345 to i64
  %memref-idxreg610 = mul i64 8, %RCX609
  %memref-basereg611 = add i64 %memload607, %memref-idxreg610
  %346 = inttoptr i64 %memref-basereg611 to ptr
  %memload612 = load i64, ptr %346, align 1
  %347 = inttoptr i64 %memload612 to ptr
  %EAX614 = call i32 @strcmp(ptr %347, ptr getelementptr inbounds ([10 x i8], ptr @0, i32 0, i32 6))
  %348 = sub i32 %EAX614, 0
  %349 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX614, i32 0)
  %CF615 = extractvalue { i32, i1 } %349, 1
  %ZF616 = icmp eq i32 %348, 0
  %highbit617 = and i32 -2147483648, %348
  %SF618 = icmp ne i32 %highbit617, 0
  %350 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX614, i32 0)
  %OF619 = extractvalue { i32, i1 } %350, 1
  %351 = and i32 %348, 255
  %352 = call i32 @llvm.ctpop.i32(i32 %351)
  %353 = and i32 %352, 1
  %PF620 = icmp eq i32 %353, 0
  %CmpZF_JNE736 = icmp eq i1 %ZF616, false
  br i1 %CmpZF_JNE736, label %bb.43, label %bb.42

bb.42:                                            ; preds = %bb.41
  %memload621 = load i64, ptr %RBP_N.32, align 1
  %memload622 = load i64, ptr %RBP_N.40, align 1
  %memload623 = load i32, ptr %RBP_N.56, align 1
  %EDX630 = add i32 %memload623, 1
  %354 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload623, i32 1)
  %CF624 = extractvalue { i32, i1 } %354, 1
  %355 = and i32 %EDX630, 255
  %356 = call i32 @llvm.ctpop.i32(i32 %355)
  %357 = and i32 %356, 1
  %PF625 = icmp eq i32 %357, 0
  %ZF626 = icmp eq i32 %EDX630, 0
  %highbit627 = and i32 -2147483648, %EDX630
  %SF628 = icmp ne i32 %highbit627, 0
  %358 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload623, i32 1)
  %OF629 = extractvalue { i32, i1 } %358, 1
  %RDX631 = sext i32 %EDX630 to i64
  %memref-idxreg632 = mul i64 4, %RDX631
  %memref-basereg633 = add i64 %memload622, %memref-idxreg632
  %359 = inttoptr i64 %memref-basereg633 to ptr
  %memload634 = load i64, ptr %359, align 1
  %360 = trunc i64 %memload634 to i32
  %RCX635 = sext i32 %360 to i64
  %memref-idxreg636 = mul i64 4, %RCX635
  %memref-basereg637 = add i64 %memload621, %memref-idxreg636
  %361 = inttoptr i64 %memref-basereg637 to ptr
  %memload638 = load i32, ptr %361, align 1
  %memload639 = load i64, ptr %RBP_N.32, align 1
  %memload640 = load i64, ptr %RBP_N.40, align 1
  %memload641 = load i64, ptr %RBP_N.56, align 1
  %362 = trunc i64 %memload641 to i32
  %RSI642 = sext i32 %362 to i64
  %memref-idxreg643 = mul i64 4, %RSI642
  %memref-basereg644 = add i64 %memload640, %memref-idxreg643
  %363 = inttoptr i64 %memref-basereg644 to ptr
  %memload645 = load i64, ptr %363, align 1
  %364 = trunc i64 %memload645 to i32
  %RCX646 = sext i32 %364 to i64
  %memref-idxreg647 = mul i64 4, %RCX646
  %memref-basereg648 = add i64 %memload639, %memref-idxreg647
  %365 = inttoptr i64 %memref-basereg648 to ptr
  %memload649 = load i32, ptr %365, align 1
  %EDX651 = add i32 %memload638, %memload649
  %366 = and i32 %EDX651, 255
  %367 = call i32 @llvm.ctpop.i32(i32 %366)
  %368 = and i32 %367, 1
  %PF650 = icmp eq i32 %368, 0
  %memref-idxreg652 = mul i64 4, %RCX646
  %memref-basereg653 = add i64 %memload639, %memref-idxreg652
  %369 = inttoptr i64 %memref-basereg653 to ptr
  store i32 %EDX651, ptr %369, align 1
  br label %bb.44

bb.43:                                            ; preds = %bb.41
  %memload654 = load i64, ptr %RBP_N.32, align 1
  %memload655 = load i64, ptr %RBP_N.40, align 1
  %memload656 = load i32, ptr %RBP_N.56, align 1
  %EDX663 = add i32 %memload656, 1
  %370 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload656, i32 1)
  %CF657 = extractvalue { i32, i1 } %370, 1
  %371 = and i32 %EDX663, 255
  %372 = call i32 @llvm.ctpop.i32(i32 %371)
  %373 = and i32 %372, 1
  %PF658 = icmp eq i32 %373, 0
  %ZF659 = icmp eq i32 %EDX663, 0
  %highbit660 = and i32 -2147483648, %EDX663
  %SF661 = icmp ne i32 %highbit660, 0
  %374 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload656, i32 1)
  %OF662 = extractvalue { i32, i1 } %374, 1
  %RDX664 = sext i32 %EDX663 to i64
  %memref-idxreg665 = mul i64 4, %RDX664
  %memref-basereg666 = add i64 %memload655, %memref-idxreg665
  %375 = inttoptr i64 %memref-basereg666 to ptr
  %memload667 = load i64, ptr %375, align 1
  %376 = trunc i64 %memload667 to i32
  %RCX668 = sext i32 %376 to i64
  %memref-idxreg669 = mul i64 4, %RCX668
  %memref-basereg670 = add i64 %memload654, %memref-idxreg669
  %377 = inttoptr i64 %memref-basereg670 to ptr
  %memload671 = load i32, ptr %377, align 1
  %memload672 = load i64, ptr %RBP_N.32, align 1
  %memload673 = load i64, ptr %RBP_N.40, align 1
  %memload674 = load i64, ptr %RBP_N.56, align 1
  %378 = trunc i64 %memload674 to i32
  %RDX675 = sext i32 %378 to i64
  %memref-idxreg676 = mul i64 4, %RDX675
  %memref-basereg677 = add i64 %memload673, %memref-idxreg676
  %379 = inttoptr i64 %memref-basereg677 to ptr
  %memload678 = load i64, ptr %379, align 1
  %380 = trunc i64 %memload678 to i32
  %RCX679 = sext i32 %380 to i64
  %memref-idxreg680 = mul i64 4, %RCX679
  %memref-basereg681 = add i64 %memload672, %memref-idxreg680
  %381 = inttoptr i64 %memref-basereg681 to ptr
  %memload682 = load i32, ptr %381, align 1
  %EDX683 = sub i32 %memload682, %memload671
  %382 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload682, i32 %memload671)
  %CF684 = extractvalue { i32, i1 } %382, 1
  %ZF685 = icmp eq i32 %EDX683, 0
  %highbit686 = and i32 -2147483648, %EDX683
  %SF687 = icmp ne i32 %highbit686, 0
  %383 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload682, i32 %memload671)
  %OF688 = extractvalue { i32, i1 } %383, 1
  %384 = and i32 %EDX683, 255
  %385 = call i32 @llvm.ctpop.i32(i32 %384)
  %386 = and i32 %385, 1
  %PF689 = icmp eq i32 %386, 0
  %memref-idxreg690 = mul i64 4, %RCX679
  %memref-basereg691 = add i64 %memload672, %memref-idxreg690
  %387 = inttoptr i64 %memref-basereg691 to ptr
  store i32 %EDX683, ptr %387, align 1
  br label %bb.44

bb.44:                                            ; preds = %bb.43, %bb.42
  %memload692 = load i64, ptr %RBP_N.40, align 1
  %memload693 = load i64, ptr %RBP_N.56, align 1
  %388 = trunc i64 %memload693 to i32
  %RCX694 = sext i32 %388 to i64
  %memref-idxreg695 = mul i64 4, %RCX694
  %memref-basereg696 = add i64 %memload692, %memref-idxreg695
  %389 = inttoptr i64 %memref-basereg696 to ptr
  %memload697 = load i32, ptr %389, align 1
  %memload698 = load i64, ptr %RBP_N.40, align 1
  %memload699 = load i32, ptr %RBP_N.56, align 1
  %ECX706 = add i32 %memload699, 1
  %390 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload699, i32 1)
  %CF700 = extractvalue { i32, i1 } %390, 1
  %391 = and i32 %ECX706, 255
  %392 = call i32 @llvm.ctpop.i32(i32 %391)
  %393 = and i32 %392, 1
  %PF701 = icmp eq i32 %393, 0
  %ZF702 = icmp eq i32 %ECX706, 0
  %highbit703 = and i32 -2147483648, %ECX706
  %SF704 = icmp ne i32 %highbit703, 0
  %394 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload699, i32 1)
  %OF705 = extractvalue { i32, i1 } %394, 1
  %RCX707 = sext i32 %ECX706 to i64
  %memref-idxreg708 = mul i64 4, %RCX707
  %memref-basereg709 = add i64 %memload698, %memref-idxreg708
  %395 = inttoptr i64 %memref-basereg709 to ptr
  store i32 %memload697, ptr %395, align 1
  br label %bb.45

bb.45:                                            ; preds = %bb.44, %bb.34
  br label %bb.46

bb.46:                                            ; preds = %bb.45
  %memload710 = load i32, ptr %RBP_N.56, align 1
  %EAX717 = add i32 %memload710, 1
  %396 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload710, i32 1)
  %CF711 = extractvalue { i32, i1 } %396, 1
  %397 = and i32 %EAX717, 255
  %398 = call i32 @llvm.ctpop.i32(i32 %397)
  %399 = and i32 %398, 1
  %PF712 = icmp eq i32 %399, 0
  %ZF713 = icmp eq i32 %EAX717, 0
  %highbit714 = and i32 -2147483648, %EAX717
  %SF715 = icmp ne i32 %highbit714, 0
  %400 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload710, i32 1)
  %OF716 = extractvalue { i32, i1 } %400, 1
  store i32 %EAX717, ptr %RBP_N.56, align 1
  br label %bb.32

bb.47:                                            ; preds = %bb.32
  %memload718 = load i64, ptr %RBP_N.32, align 1
  %401 = inttoptr i64 %memload718 to ptr
  %memload719 = load i32, ptr %401, align 1
  store i32 %memload719, ptr %RBP_N.60, align 1
  %memload720 = load i64, ptr %RBP_N.32, align 1
  %402 = inttoptr i64 %memload720 to ptr
  call void @free(ptr %402)
  %memload721 = load i64, ptr %RBP_N.40, align 1
  %403 = inttoptr i64 %memload721 to ptr
  call void @free(ptr %403)
  %memload722 = load i32, ptr %RBP_N.60, align 1
  ret i32 %memload722
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

!0 = !{i64 8192}
