; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @__ctype_b_loc()

define dso_local i32 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.12 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 1, ptr %RBP_N.12, align 1
  store i32 0, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.24, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.18
  %memload = load i64, ptr %RBP_N.8, align 1
  %memload1 = load i64, ptr %RBP_N.24, align 1
  %6 = trunc i64 %memload1 to i32
  %RCX = sext i32 %6 to i64
  %memref-basereg = add i64 %memload, %RCX
  %7 = inttoptr i64 %memref-basereg to ptr
  %memload2 = load i32, ptr %7, align 1
  %8 = trunc i32 %memload2 to i8
  %EAX = sext i8 %8 to i32
  %9 = sub i32 %EAX, 0
  %10 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 0)
  %CF = extractvalue { i32, i1 } %10, 1
  %ZF = icmp eq i32 %9, 0
  %highbit = and i32 -2147483648, %9
  %SF = icmp ne i32 %highbit, 0
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 0)
  %OF = extractvalue { i32, i1 } %11, 1
  %12 = and i32 %9, 255
  %13 = call i32 @llvm.ctpop.i32(i32 %12)
  %14 = and i32 %13, 1
  %PF = icmp eq i32 %14, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.19, label %bb.2

bb.2:                                             ; preds = %bb.1
  %15 = call ptr @__ctype_b_loc()
  %memload3 = load i64, ptr %15, align 1
  %memload4 = load i64, ptr %RBP_N.8, align 1
  %memload5 = load i64, ptr %RBP_N.24, align 1
  %16 = trunc i64 %memload5 to i32
  %RDX = sext i32 %16 to i64
  %memref-basereg6 = add i64 %memload4, %RDX
  %17 = inttoptr i64 %memref-basereg6 to ptr
  %memload7 = load i32, ptr %17, align 1
  %18 = trunc i32 %memload7 to i8
  %ECX = sext i8 %18 to i32
  %RCX8 = sext i32 %ECX to i64
  %memref-idxreg = mul i64 2, %RCX8
  %memref-basereg9 = add i64 %memload3, %memref-idxreg
  %19 = inttoptr i64 %memref-basereg9 to ptr
  %memload10 = load i32, ptr %19, align 1
  %20 = trunc i32 %memload10 to i16
  %EAX11 = zext i16 %20 to i32
  %EAX16 = and i32 %EAX11, 8192
  %21 = and i32 %EAX16, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF12 = icmp eq i32 %23, 0
  %ZF13 = icmp eq i32 %EAX16, 0
  %highbit14 = and i32 -2147483648, %EAX16
  %SF15 = icmp ne i32 %highbit14, 0
  %24 = sub i32 %EAX16, 0
  %25 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX16, i32 0)
  %CF17 = extractvalue { i32, i1 } %25, 1
  %ZF18 = icmp eq i32 %24, 0
  %highbit19 = and i32 -2147483648, %24
  %SF20 = icmp ne i32 %highbit19, 0
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX16, i32 0)
  %OF21 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %24, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF22 = icmp eq i32 %29, 0
  %CmpZF_JE148 = icmp eq i1 %ZF18, true
  br i1 %CmpZF_JE148, label %bb.5, label %bb.3

bb.3:                                             ; preds = %bb.2
  %30 = load i32, ptr %RBP_N.16, align 1
  %31 = zext i32 %30 to i64
  %32 = zext i32 0 to i64
  %33 = sub i64 %31, %32
  %34 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %31, i64 %32)
  %CF23 = extractvalue { i64, i1 } %34, 1
  %ZF24 = icmp eq i64 %33, 0
  %highbit25 = and i64 -9223372036854775808, %33
  %SF26 = icmp ne i64 %highbit25, 0
  %35 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %31, i64 %32)
  %OF27 = extractvalue { i64, i1 } %35, 1
  %36 = and i64 %33, 255
  %37 = call i64 @llvm.ctpop.i64(i64 %36)
  %38 = and i64 %37, 1
  %PF28 = icmp eq i64 %38, 0
  %CmpZF_JE149 = icmp eq i1 %ZF24, true
  br i1 %CmpZF_JE149, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  store i32 0, ptr %RBP_N.16, align 1
  %memload29 = load i32, ptr %RBP_N.20, align 1
  %EAX36 = add i32 %memload29, 1
  %39 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload29, i32 1)
  %CF30 = extractvalue { i32, i1 } %39, 1
  %40 = and i32 %EAX36, 255
  %41 = call i32 @llvm.ctpop.i32(i32 %40)
  %42 = and i32 %41, 1
  %PF31 = icmp eq i32 %42, 0
  %ZF32 = icmp eq i32 %EAX36, 0
  %highbit33 = and i32 -2147483648, %EAX36
  %SF34 = icmp ne i32 %highbit33, 0
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload29, i32 1)
  %OF35 = extractvalue { i32, i1 } %43, 1
  store i32 %EAX36, ptr %RBP_N.20, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3, %bb.2
  %memload37 = load i64, ptr %RBP_N.8, align 1
  %memload38 = load i64, ptr %RBP_N.24, align 1
  %44 = trunc i64 %memload38 to i32
  %RCX39 = sext i32 %44 to i64
  %memref-basereg40 = add i64 %memload37, %RCX39
  %45 = inttoptr i64 %memref-basereg40 to ptr
  %memload41 = load i32, ptr %45, align 1
  %46 = trunc i32 %memload41 to i8
  %EAX42 = sext i8 %46 to i32
  %47 = sub i32 %EAX42, 73
  %48 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX42, i32 73)
  %CF43 = extractvalue { i32, i1 } %48, 1
  %ZF44 = icmp eq i32 %47, 0
  %highbit45 = and i32 -2147483648, %47
  %SF46 = icmp ne i32 %highbit45, 0
  %49 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX42, i32 73)
  %OF47 = extractvalue { i32, i1 } %49, 1
  %50 = and i32 %47, 255
  %51 = call i32 @llvm.ctpop.i32(i32 %50)
  %52 = and i32 %51, 1
  %PF48 = icmp eq i32 %52, 0
  %CmpZF_JNE = icmp eq i1 %ZF44, false
  br i1 %CmpZF_JNE, label %bb.8, label %bb.6

bb.6:                                             ; preds = %bb.5
  %53 = load i32, ptr %RBP_N.12, align 1
  %54 = zext i32 %53 to i64
  %55 = zext i32 0 to i64
  %56 = sub i64 %54, %55
  %57 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %54, i64 %55)
  %CF49 = extractvalue { i64, i1 } %57, 1
  %ZF50 = icmp eq i64 %56, 0
  %highbit51 = and i64 -9223372036854775808, %56
  %SF52 = icmp ne i64 %highbit51, 0
  %58 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %54, i64 %55)
  %OF53 = extractvalue { i64, i1 } %58, 1
  %59 = and i64 %56, 255
  %60 = call i64 @llvm.ctpop.i64(i64 %59)
  %61 = and i64 %60, 1
  %PF54 = icmp eq i64 %61, 0
  %CmpZF_JE150 = icmp eq i1 %ZF50, true
  br i1 %CmpZF_JE150, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  store i32 1, ptr %RBP_N.16, align 1
  br label %bb.11

bb.8:                                             ; preds = %bb.6, %bb.5
  %62 = call ptr @__ctype_b_loc()
  %memload56 = load i64, ptr %62, align 1
  %memload57 = load i64, ptr %RBP_N.8, align 1
  %memload58 = load i64, ptr %RBP_N.24, align 1
  %63 = trunc i64 %memload58 to i32
  %RDX59 = sext i32 %63 to i64
  %memref-basereg60 = add i64 %memload57, %RDX59
  %64 = inttoptr i64 %memref-basereg60 to ptr
  %memload61 = load i32, ptr %64, align 1
  %65 = trunc i32 %memload61 to i8
  %ECX62 = sext i8 %65 to i32
  %RCX63 = sext i32 %ECX62 to i64
  %memref-idxreg64 = mul i64 2, %RCX63
  %memref-basereg65 = add i64 %memload56, %memref-idxreg64
  %66 = inttoptr i64 %memref-basereg65 to ptr
  %memload66 = load i32, ptr %66, align 1
  %67 = trunc i32 %memload66 to i16
  %EAX67 = zext i16 %67 to i32
  %EAX72 = and i32 %EAX67, 8192
  %68 = and i32 %EAX72, 255
  %69 = call i32 @llvm.ctpop.i32(i32 %68)
  %70 = and i32 %69, 1
  %PF68 = icmp eq i32 %70, 0
  %ZF69 = icmp eq i32 %EAX72, 0
  %highbit70 = and i32 -2147483648, %EAX72
  %SF71 = icmp ne i32 %highbit70, 0
  %71 = sub i32 %EAX72, 0
  %72 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX72, i32 0)
  %CF73 = extractvalue { i32, i1 } %72, 1
  %ZF74 = icmp eq i32 %71, 0
  %highbit75 = and i32 -2147483648, %71
  %SF76 = icmp ne i32 %highbit75, 0
  %73 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX72, i32 0)
  %OF77 = extractvalue { i32, i1 } %73, 1
  %74 = and i32 %71, 255
  %75 = call i32 @llvm.ctpop.i32(i32 %74)
  %76 = and i32 %75, 1
  %PF78 = icmp eq i32 %76, 0
  %CmpZF_JNE151 = icmp eq i1 %ZF74, false
  br i1 %CmpZF_JNE151, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  store i32 0, ptr %RBP_N.16, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.8
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.7
  %77 = call ptr @__ctype_b_loc()
  %memload80 = load i64, ptr %77, align 1
  %memload81 = load i64, ptr %RBP_N.8, align 1
  %memload82 = load i64, ptr %RBP_N.24, align 1
  %78 = trunc i64 %memload82 to i32
  %RDX83 = sext i32 %78 to i64
  %memref-basereg84 = add i64 %memload81, %RDX83
  %79 = inttoptr i64 %memref-basereg84 to ptr
  %memload85 = load i32, ptr %79, align 1
  %80 = trunc i32 %memload85 to i8
  %ECX86 = sext i8 %80 to i32
  %RCX87 = sext i32 %ECX86 to i64
  %memref-idxreg88 = mul i64 2, %RCX87
  %memref-basereg89 = add i64 %memload80, %memref-idxreg88
  %81 = inttoptr i64 %memref-basereg89 to ptr
  %memload90 = load i32, ptr %81, align 1
  %82 = trunc i32 %memload90 to i16
  %EAX91 = zext i16 %82 to i32
  %EAX96 = and i32 %EAX91, 8192
  %83 = and i32 %EAX96, 255
  %84 = call i32 @llvm.ctpop.i32(i32 %83)
  %85 = and i32 %84, 1
  %PF92 = icmp eq i32 %85, 0
  %ZF93 = icmp eq i32 %EAX96, 0
  %highbit94 = and i32 -2147483648, %EAX96
  %SF95 = icmp ne i32 %highbit94, 0
  %86 = sub i32 %EAX96, 0
  %87 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX96, i32 0)
  %CF97 = extractvalue { i32, i1 } %87, 1
  %ZF98 = icmp eq i32 %86, 0
  %highbit99 = and i32 -2147483648, %86
  %SF100 = icmp ne i32 %highbit99, 0
  %88 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX96, i32 0)
  %OF101 = extractvalue { i32, i1 } %88, 1
  %89 = and i32 %86, 255
  %90 = call i32 @llvm.ctpop.i32(i32 %89)
  %91 = and i32 %90, 1
  %PF102 = icmp eq i32 %91, 0
  %CmpZF_JNE152 = icmp eq i1 %ZF98, false
  br i1 %CmpZF_JNE152, label %bb.13, label %bb.12

bb.12:                                            ; preds = %bb.11
  store i32 0, ptr %RBP_N.12, align 1
  br label %bb.13

bb.13:                                            ; preds = %bb.12, %bb.11
  %memload103 = load i64, ptr %RBP_N.8, align 1
  %memload104 = load i64, ptr %RBP_N.24, align 1
  %92 = trunc i64 %memload104 to i32
  %RCX105 = sext i32 %92 to i64
  %memref-basereg106 = add i64 %memload103, %RCX105
  %93 = inttoptr i64 %memref-basereg106 to ptr
  %memload107 = load i32, ptr %93, align 1
  %94 = trunc i32 %memload107 to i8
  %EAX108 = sext i8 %94 to i32
  %95 = sub i32 %EAX108, 46
  %96 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX108, i32 46)
  %CF109 = extractvalue { i32, i1 } %96, 1
  %ZF110 = icmp eq i32 %95, 0
  %highbit111 = and i32 -2147483648, %95
  %SF112 = icmp ne i32 %highbit111, 0
  %97 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX108, i32 46)
  %OF113 = extractvalue { i32, i1 } %97, 1
  %98 = and i32 %95, 255
  %99 = call i32 @llvm.ctpop.i32(i32 %98)
  %100 = and i32 %99, 1
  %PF114 = icmp eq i32 %100, 0
  %CmpZF_JE153 = icmp eq i1 %ZF110, true
  br i1 %CmpZF_JE153, label %bb.16, label %bb.14

bb.14:                                            ; preds = %bb.13
  %memload115 = load i64, ptr %RBP_N.8, align 1
  %memload116 = load i64, ptr %RBP_N.24, align 1
  %101 = trunc i64 %memload116 to i32
  %RCX117 = sext i32 %101 to i64
  %memref-basereg118 = add i64 %memload115, %RCX117
  %102 = inttoptr i64 %memref-basereg118 to ptr
  %memload119 = load i32, ptr %102, align 1
  %103 = trunc i32 %memload119 to i8
  %EAX120 = sext i8 %103 to i32
  %104 = sub i32 %EAX120, 63
  %105 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX120, i32 63)
  %CF121 = extractvalue { i32, i1 } %105, 1
  %ZF122 = icmp eq i32 %104, 0
  %highbit123 = and i32 -2147483648, %104
  %SF124 = icmp ne i32 %highbit123, 0
  %106 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX120, i32 63)
  %OF125 = extractvalue { i32, i1 } %106, 1
  %107 = and i32 %104, 255
  %108 = call i32 @llvm.ctpop.i32(i32 %107)
  %109 = and i32 %108, 1
  %PF126 = icmp eq i32 %109, 0
  %CmpZF_JE154 = icmp eq i1 %ZF122, true
  br i1 %CmpZF_JE154, label %bb.16, label %bb.15

bb.15:                                            ; preds = %bb.14
  %memload127 = load i64, ptr %RBP_N.8, align 1
  %memload128 = load i64, ptr %RBP_N.24, align 1
  %110 = trunc i64 %memload128 to i32
  %RCX129 = sext i32 %110 to i64
  %memref-basereg130 = add i64 %memload127, %RCX129
  %111 = inttoptr i64 %memref-basereg130 to ptr
  %memload131 = load i32, ptr %111, align 1
  %112 = trunc i32 %memload131 to i8
  %EAX132 = sext i8 %112 to i32
  %113 = sub i32 %EAX132, 33
  %114 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX132, i32 33)
  %CF133 = extractvalue { i32, i1 } %114, 1
  %ZF134 = icmp eq i32 %113, 0
  %highbit135 = and i32 -2147483648, %113
  %SF136 = icmp ne i32 %highbit135, 0
  %115 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX132, i32 33)
  %OF137 = extractvalue { i32, i1 } %115, 1
  %116 = and i32 %113, 255
  %117 = call i32 @llvm.ctpop.i32(i32 %116)
  %118 = and i32 %117, 1
  %PF138 = icmp eq i32 %118, 0
  %CmpZF_JNE155 = icmp eq i1 %ZF134, false
  br i1 %CmpZF_JNE155, label %bb.17, label %bb.16

bb.16:                                            ; preds = %bb.15, %bb.14, %bb.13
  store i32 1, ptr %RBP_N.12, align 1
  br label %bb.17

bb.17:                                            ; preds = %bb.16, %bb.15
  br label %bb.18

bb.18:                                            ; preds = %bb.17
  %memload139 = load i32, ptr %RBP_N.24, align 1
  %EAX146 = add i32 %memload139, 1
  %119 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload139, i32 1)
  %CF140 = extractvalue { i32, i1 } %119, 1
  %120 = and i32 %EAX146, 255
  %121 = call i32 @llvm.ctpop.i32(i32 %120)
  %122 = and i32 %121, 1
  %PF141 = icmp eq i32 %122, 0
  %ZF142 = icmp eq i32 %EAX146, 0
  %highbit143 = and i32 -2147483648, %EAX146
  %SF144 = icmp ne i32 %highbit143, 0
  %123 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload139, i32 1)
  %OF145 = extractvalue { i32, i1 } %123, 1
  store i32 %EAX146, ptr %RBP_N.24, align 1
  br label %bb.1

bb.19:                                            ; preds = %bb.1
  %memload147 = load i32, ptr %RBP_N.20, align 1
  ret i32 %memload147
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
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
