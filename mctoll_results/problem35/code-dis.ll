; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i64 %arg1, i32 %arg2, i64 %arg3) {
entry:
  %stktop_8 = alloca i8, i32 72, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.52 = inttoptr i64 %0 to ptr
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
  %memload = load i64, ptr %RBP_N.12, align 1
  %10 = trunc i64 %memload to i32
  %RDI = sext i32 %10 to i64
  %RDI1 = shl i64 %RDI, 2
  %ZF = icmp eq i64 %RDI1, 0
  %highbit = and i64 -9223372036854775808, %RDI1
  %SF = icmp ne i64 %highbit, 0
  %11 = call ptr @malloc(i64 %RDI1)
  %RAX = ptrtoint ptr %11 to i64
  store i64 %RAX, ptr %RBP_N.32, align 1
  store i32 0, ptr %RBP_N.40, align 1
  store i32 0, ptr %RBP_N.44, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.11
  %memload2 = load i32, ptr %RBP_N.44, align 1
  %12 = load i32, ptr %RBP_N.12, align 1
  %13 = sub i32 %memload2, %12
  %14 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload2, i32 %12)
  %CF = extractvalue { i32, i1 } %14, 1
  %ZF3 = icmp eq i32 %13, 0
  %highbit4 = and i32 -2147483648, %13
  %SF5 = icmp ne i32 %highbit4, 0
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload2, i32 %12)
  %OF = extractvalue { i32, i1 } %15, 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = and i32 %17, 1
  %PF = icmp eq i32 %18, 0
  %CmpSFOF_JGE = icmp eq i1 %SF5, %OF
  br i1 %CmpSFOF_JGE, label %bb.12, label %bb.2

bb.2:                                             ; preds = %bb.1
  store i32 0, ptr %RBP_N.36, align 1
  store i32 0, ptr %RBP_N.48, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %memload6 = load i32, ptr %RBP_N.48, align 1
  %19 = load i32, ptr %RBP_N.40, align 1
  %20 = sub i32 %memload6, %19
  %21 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload6, i32 %19)
  %CF7 = extractvalue { i32, i1 } %21, 1
  %ZF8 = icmp eq i32 %20, 0
  %highbit9 = and i32 -2147483648, %20
  %SF10 = icmp ne i32 %highbit9, 0
  %22 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload6, i32 %19)
  %OF11 = extractvalue { i32, i1 } %22, 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = and i32 %24, 1
  %PF12 = icmp eq i32 %25, 0
  %CmpSFOF_JGE152 = icmp eq i1 %SF10, %OF11
  br i1 %CmpSFOF_JGE152, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload13 = load i64, ptr %RBP_N.8, align 1
  %memload14 = load i64, ptr %RBP_N.44, align 1
  %26 = trunc i64 %memload14 to i32
  %RCX = sext i32 %26 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload13, %memref-idxreg
  %27 = inttoptr i64 %memref-basereg to ptr
  %memload15 = load i32, ptr %27, align 1
  %memload16 = load i64, ptr %RBP_N.32, align 1
  %memload17 = load i64, ptr %RBP_N.48, align 1
  %28 = trunc i64 %memload17 to i32
  %RDX = sext i32 %28 to i64
  %memref-idxreg18 = mul i64 4, %RDX
  %memref-basereg19 = add i64 %memload16, %memref-idxreg18
  %29 = inttoptr i64 %memref-basereg19 to ptr
  %30 = load i32, ptr %29, align 1
  %31 = sub i32 %memload15, %30
  %32 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload15, i32 %30)
  %CF20 = extractvalue { i32, i1 } %32, 1
  %ZF21 = icmp eq i32 %31, 0
  %highbit22 = and i32 -2147483648, %31
  %SF23 = icmp ne i32 %highbit22, 0
  %33 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload15, i32 %30)
  %OF24 = extractvalue { i32, i1 } %33, 1
  %34 = and i32 %31, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = and i32 %35, 1
  %PF25 = icmp eq i32 %36, 0
  %CmpZF_JNE = icmp eq i1 %ZF21, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  store i32 1, ptr %RBP_N.36, align 1
  br label %bb.8

bb.6:                                             ; preds = %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload26 = load i32, ptr %RBP_N.48, align 1
  %EAX = add i32 %memload26, 1
  %37 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload26, i32 1)
  %CF27 = extractvalue { i32, i1 } %37, 1
  %38 = and i32 %EAX, 255
  %39 = call i32 @llvm.ctpop.i32(i32 %38)
  %40 = and i32 %39, 1
  %PF28 = icmp eq i32 %40, 0
  %ZF29 = icmp eq i32 %EAX, 0
  %highbit30 = and i32 -2147483648, %EAX
  %SF31 = icmp ne i32 %highbit30, 0
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload26, i32 1)
  %OF32 = extractvalue { i32, i1 } %41, 1
  store i32 %EAX, ptr %RBP_N.48, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.5, %bb.3
  %42 = load i32, ptr %RBP_N.36, align 1
  %43 = zext i32 %42 to i64
  %44 = zext i32 0 to i64
  %45 = sub i64 %43, %44
  %46 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %43, i64 %44)
  %CF33 = extractvalue { i64, i1 } %46, 1
  %ZF34 = icmp eq i64 %45, 0
  %highbit35 = and i64 -9223372036854775808, %45
  %SF36 = icmp ne i64 %highbit35, 0
  %47 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %43, i64 %44)
  %OF37 = extractvalue { i64, i1 } %47, 1
  %48 = and i64 %45, 255
  %49 = call i64 @llvm.ctpop.i64(i64 %48)
  %50 = and i64 %49, 1
  %PF38 = icmp eq i64 %50, 0
  %CmpZF_JNE153 = icmp eq i1 %ZF34, false
  br i1 %CmpZF_JNE153, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload39 = load i64, ptr %RBP_N.8, align 1
  %memload40 = load i64, ptr %RBP_N.44, align 1
  %51 = trunc i64 %memload40 to i32
  %RCX41 = sext i32 %51 to i64
  %memref-idxreg42 = mul i64 4, %RCX41
  %memref-basereg43 = add i64 %memload39, %memref-idxreg42
  %52 = inttoptr i64 %memref-basereg43 to ptr
  %memload44 = load i32, ptr %52, align 1
  %memload45 = load i64, ptr %RBP_N.32, align 1
  %memload46 = load i32, ptr %RBP_N.40, align 1
  %ESI = add i32 %memload46, 1
  %53 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload46, i32 1)
  %CF47 = extractvalue { i32, i1 } %53, 1
  %54 = and i32 %ESI, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54)
  %56 = and i32 %55, 1
  %PF48 = icmp eq i32 %56, 0
  %ZF49 = icmp eq i32 %ESI, 0
  %highbit50 = and i32 -2147483648, %ESI
  %SF51 = icmp ne i32 %highbit50, 0
  %57 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload46, i32 1)
  %OF52 = extractvalue { i32, i1 } %57, 1
  store i32 %ESI, ptr %RBP_N.40, align 1
  %RCX53 = sext i32 %memload46 to i64
  %memref-idxreg54 = mul i64 4, %RCX53
  %memref-basereg55 = add i64 %memload45, %memref-idxreg54
  %58 = inttoptr i64 %memref-basereg55 to ptr
  store i32 %memload44, ptr %58, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.8
  br label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload56 = load i32, ptr %RBP_N.44, align 1
  %EAX63 = add i32 %memload56, 1
  %59 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload56, i32 1)
  %CF57 = extractvalue { i32, i1 } %59, 1
  %60 = and i32 %EAX63, 255
  %61 = call i32 @llvm.ctpop.i32(i32 %60)
  %62 = and i32 %61, 1
  %PF58 = icmp eq i32 %62, 0
  %ZF59 = icmp eq i32 %EAX63, 0
  %highbit60 = and i32 -2147483648, %EAX63
  %SF61 = icmp ne i32 %highbit60, 0
  %63 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload56, i32 1)
  %OF62 = extractvalue { i32, i1 } %63, 1
  store i32 %EAX63, ptr %RBP_N.44, align 1
  br label %bb.1

bb.12:                                            ; preds = %bb.1
  store i32 0, ptr %RBP_N.44, align 1
  br label %bb.13

bb.13:                                            ; preds = %bb.12, %bb.21
  %memload64 = load i32, ptr %RBP_N.44, align 1
  %memload65 = load i32, ptr %RBP_N.40, align 1
  %ECX = sub i32 %memload65, 1
  %64 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload65, i32 1)
  %CF66 = extractvalue { i32, i1 } %64, 1
  %65 = and i32 %ECX, 255
  %66 = call i32 @llvm.ctpop.i32(i32 %65)
  %67 = and i32 %66, 1
  %PF67 = icmp eq i32 %67, 0
  %ZF68 = icmp eq i32 %ECX, 0
  %highbit69 = and i32 -2147483648, %ECX
  %SF70 = icmp ne i32 %highbit69, 0
  %68 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload65, i32 1)
  %OF71 = extractvalue { i32, i1 } %68, 1
  %69 = sub i32 %memload64, %ECX
  %70 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload64, i32 %ECX)
  %CF72 = extractvalue { i32, i1 } %70, 1
  %ZF73 = icmp eq i32 %69, 0
  %highbit74 = and i32 -2147483648, %69
  %SF75 = icmp ne i32 %highbit74, 0
  %71 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload64, i32 %ECX)
  %OF76 = extractvalue { i32, i1 } %71, 1
  %72 = and i32 %69, 255
  %73 = call i32 @llvm.ctpop.i32(i32 %72)
  %74 = and i32 %73, 1
  %PF77 = icmp eq i32 %74, 0
  %CmpSFOF_JGE154 = icmp eq i1 %SF75, %OF76
  br i1 %CmpSFOF_JGE154, label %bb.22, label %bb.14

bb.14:                                            ; preds = %bb.13
  %memload78 = load i32, ptr %RBP_N.44, align 1
  %EAX85 = add i32 %memload78, 1
  %75 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload78, i32 1)
  %CF79 = extractvalue { i32, i1 } %75, 1
  %76 = and i32 %EAX85, 255
  %77 = call i32 @llvm.ctpop.i32(i32 %76)
  %78 = and i32 %77, 1
  %PF80 = icmp eq i32 %78, 0
  %ZF81 = icmp eq i32 %EAX85, 0
  %highbit82 = and i32 -2147483648, %EAX85
  %SF83 = icmp ne i32 %highbit82, 0
  %79 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload78, i32 1)
  %OF84 = extractvalue { i32, i1 } %79, 1
  store i32 %EAX85, ptr %RBP_N.48, align 1
  br label %bb.15

bb.15:                                            ; preds = %bb.14, %bb.19
  %memload86 = load i32, ptr %RBP_N.48, align 1
  %80 = load i32, ptr %RBP_N.40, align 1
  %81 = sub i32 %memload86, %80
  %82 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload86, i32 %80)
  %CF87 = extractvalue { i32, i1 } %82, 1
  %ZF88 = icmp eq i32 %81, 0
  %highbit89 = and i32 -2147483648, %81
  %SF90 = icmp ne i32 %highbit89, 0
  %83 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload86, i32 %80)
  %OF91 = extractvalue { i32, i1 } %83, 1
  %84 = and i32 %81, 255
  %85 = call i32 @llvm.ctpop.i32(i32 %84)
  %86 = and i32 %85, 1
  %PF92 = icmp eq i32 %86, 0
  %CmpSFOF_JGE155 = icmp eq i1 %SF90, %OF91
  br i1 %CmpSFOF_JGE155, label %bb.20, label %bb.16

bb.16:                                            ; preds = %bb.15
  %memload93 = load i64, ptr %RBP_N.32, align 1
  %memload94 = load i64, ptr %RBP_N.44, align 1
  %87 = trunc i64 %memload94 to i32
  %RCX95 = sext i32 %87 to i64
  %memref-idxreg96 = mul i64 4, %RCX95
  %memref-basereg97 = add i64 %memload93, %memref-idxreg96
  %88 = inttoptr i64 %memref-basereg97 to ptr
  %memload98 = load i32, ptr %88, align 1
  %memload99 = load i64, ptr %RBP_N.32, align 1
  %memload100 = load i64, ptr %RBP_N.48, align 1
  %89 = trunc i64 %memload100 to i32
  %RDX101 = sext i32 %89 to i64
  %memref-idxreg102 = mul i64 4, %RDX101
  %memref-basereg103 = add i64 %memload99, %memref-idxreg102
  %90 = inttoptr i64 %memref-basereg103 to ptr
  %91 = load i32, ptr %90, align 1
  %92 = sub i32 %memload98, %91
  %93 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload98, i32 %91)
  %CF104 = extractvalue { i32, i1 } %93, 1
  %ZF105 = icmp eq i32 %92, 0
  %highbit106 = and i32 -2147483648, %92
  %SF107 = icmp ne i32 %highbit106, 0
  %94 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload98, i32 %91)
  %OF108 = extractvalue { i32, i1 } %94, 1
  %95 = and i32 %92, 255
  %96 = call i32 @llvm.ctpop.i32(i32 %95)
  %97 = and i32 %96, 1
  %PF109 = icmp eq i32 %97, 0
  %CmpZF_JLE = icmp eq i1 %ZF105, true
  %CmpOF_JLE = icmp ne i1 %SF107, %OF108
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.18, label %bb.17

bb.17:                                            ; preds = %bb.16
  %memload110 = load i64, ptr %RBP_N.32, align 1
  %memload111 = load i64, ptr %RBP_N.44, align 1
  %98 = trunc i64 %memload111 to i32
  %RCX112 = sext i32 %98 to i64
  %memref-idxreg113 = mul i64 4, %RCX112
  %memref-basereg114 = add i64 %memload110, %memref-idxreg113
  %99 = inttoptr i64 %memref-basereg114 to ptr
  %memload115 = load i32, ptr %99, align 1
  store i32 %memload115, ptr %RBP_N.52, align 1
  %memload116 = load i64, ptr %RBP_N.32, align 1
  %memload117 = load i64, ptr %RBP_N.48, align 1
  %100 = trunc i64 %memload117 to i32
  %RCX118 = sext i32 %100 to i64
  %memref-idxreg119 = mul i64 4, %RCX118
  %memref-basereg120 = add i64 %memload116, %memref-idxreg119
  %101 = inttoptr i64 %memref-basereg120 to ptr
  %memload121 = load i32, ptr %101, align 1
  %memload122 = load i64, ptr %RBP_N.32, align 1
  %memload123 = load i64, ptr %RBP_N.44, align 1
  %102 = trunc i64 %memload123 to i32
  %RCX124 = sext i32 %102 to i64
  %memref-idxreg125 = mul i64 4, %RCX124
  %memref-basereg126 = add i64 %memload122, %memref-idxreg125
  %103 = inttoptr i64 %memref-basereg126 to ptr
  store i32 %memload121, ptr %103, align 1
  %memload127 = load i32, ptr %RBP_N.52, align 1
  %memload128 = load i64, ptr %RBP_N.32, align 1
  %memload129 = load i64, ptr %RBP_N.48, align 1
  %104 = trunc i64 %memload129 to i32
  %RCX130 = sext i32 %104 to i64
  %memref-idxreg131 = mul i64 4, %RCX130
  %memref-basereg132 = add i64 %memload128, %memref-idxreg131
  %105 = inttoptr i64 %memref-basereg132 to ptr
  store i32 %memload127, ptr %105, align 1
  br label %bb.18

bb.18:                                            ; preds = %bb.17, %bb.16
  br label %bb.19

bb.19:                                            ; preds = %bb.18
  %memload133 = load i32, ptr %RBP_N.48, align 1
  %EAX140 = add i32 %memload133, 1
  %106 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload133, i32 1)
  %CF134 = extractvalue { i32, i1 } %106, 1
  %107 = and i32 %EAX140, 255
  %108 = call i32 @llvm.ctpop.i32(i32 %107)
  %109 = and i32 %108, 1
  %PF135 = icmp eq i32 %109, 0
  %ZF136 = icmp eq i32 %EAX140, 0
  %highbit137 = and i32 -2147483648, %EAX140
  %SF138 = icmp ne i32 %highbit137, 0
  %110 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload133, i32 1)
  %OF139 = extractvalue { i32, i1 } %110, 1
  store i32 %EAX140, ptr %RBP_N.48, align 1
  br label %bb.15

bb.20:                                            ; preds = %bb.15
  br label %bb.21

bb.21:                                            ; preds = %bb.20
  %memload141 = load i32, ptr %RBP_N.44, align 1
  %EAX148 = add i32 %memload141, 1
  %111 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload141, i32 1)
  %CF142 = extractvalue { i32, i1 } %111, 1
  %112 = and i32 %EAX148, 255
  %113 = call i32 @llvm.ctpop.i32(i32 %112)
  %114 = and i32 %113, 1
  %PF143 = icmp eq i32 %114, 0
  %ZF144 = icmp eq i32 %EAX148, 0
  %highbit145 = and i32 -2147483648, %EAX148
  %SF146 = icmp ne i32 %highbit145, 0
  %115 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload141, i32 1)
  %OF147 = extractvalue { i32, i1 } %115, 1
  store i32 %EAX148, ptr %RBP_N.44, align 1
  br label %bb.13

bb.22:                                            ; preds = %bb.13
  %memload149 = load i32, ptr %RBP_N.40, align 1
  %memload150 = load i64, ptr %RBP_N.24, align 1
  %116 = inttoptr i64 %memload150 to ptr
  store i32 %memload149, ptr %116, align 1
  %memload151 = load i64, ptr %RBP_N.32, align 1
  ret i64 %memload151
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
