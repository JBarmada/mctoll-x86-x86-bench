; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i64 %arg1, i32 %arg2, i32 %arg3, i64 %arg4) {
entry:
  %stktop_8 = alloca i8, i32 72, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.56 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 28
  %RBP_N.44 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.40 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 36
  %RBP_N.36 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 40
  %RBP_N.32 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 44
  %RBP_N.28 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 48
  %RBP_N.24 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 56
  %RBP_N.16 = inttoptr i64 %7 to ptr
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
  store i32 %arg3, ptr %RBP_N.16, align 1
  store i64 %arg4, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.9
  %memload = load i32, ptr %RBP_N.28, align 1
  %11 = load i32, ptr %RBP_N.12, align 1
  %12 = sub i32 %memload, %11
  %13 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %11)
  %CF = extractvalue { i32, i1 } %13, 1
  %ZF = icmp eq i32 %12, 0
  %highbit = and i32 -2147483648, %12
  %SF = icmp ne i32 %highbit, 0
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %11)
  %OF = extractvalue { i32, i1 } %14, 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = and i32 %16, 1
  %PF = icmp eq i32 %17, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.10, label %bb.2

bb.2:                                             ; preds = %bb.1
  store i32 0, ptr %RBP_N.32, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %memload1 = load i32, ptr %RBP_N.32, align 1
  %18 = load i32, ptr %RBP_N.12, align 1
  %19 = sub i32 %memload1, %18
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload1, i32 %18)
  %CF2 = extractvalue { i32, i1 } %20, 1
  %ZF3 = icmp eq i32 %19, 0
  %highbit4 = and i32 -2147483648, %19
  %SF5 = icmp ne i32 %highbit4, 0
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload1, i32 %18)
  %OF6 = extractvalue { i32, i1 } %21, 1
  %22 = and i32 %19, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF7 = icmp eq i32 %24, 0
  %CmpSFOF_JGE293 = icmp eq i1 %SF5, %OF6
  br i1 %CmpSFOF_JGE293, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload8 = load i64, ptr %RBP_N.8, align 1
  %memload9 = load i64, ptr %RBP_N.28, align 1
  %25 = trunc i64 %memload9 to i32
  %RCX = sext i32 %25 to i64
  %memref-idxreg = mul i64 8, %RCX
  %memref-basereg = add i64 %memload8, %memref-idxreg
  %26 = inttoptr i64 %memref-basereg to ptr
  %memload10 = load i64, ptr %26, align 1
  %memload11 = load i64, ptr %RBP_N.32, align 1
  %27 = trunc i64 %memload11 to i32
  %RCX12 = sext i32 %27 to i64
  %memref-idxreg13 = mul i64 4, %RCX12
  %memref-basereg14 = add i64 %memload10, %memref-idxreg13
  %28 = inttoptr i64 %memref-basereg14 to ptr
  %29 = load i32, ptr %28, align 1
  %30 = zext i32 %29 to i64
  %31 = zext i32 1 to i64
  %32 = sub i64 %30, %31
  %33 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %30, i64 %31)
  %CF15 = extractvalue { i64, i1 } %33, 1
  %ZF16 = icmp eq i64 %32, 0
  %highbit17 = and i64 -9223372036854775808, %32
  %SF18 = icmp ne i64 %highbit17, 0
  %34 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %30, i64 %31)
  %OF19 = extractvalue { i64, i1 } %34, 1
  %35 = and i64 %32, 255
  %36 = call i64 @llvm.ctpop.i64(i64 %35)
  %37 = and i64 %36, 1
  %PF20 = icmp eq i64 %37, 0
  %CmpZF_JNE = icmp eq i1 %ZF16, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload21 = load i32, ptr %RBP_N.28, align 1
  store i32 %memload21, ptr %RBP_N.36, align 1
  %memload22 = load i32, ptr %RBP_N.32, align 1
  store i32 %memload22, ptr %RBP_N.40, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload23 = load i32, ptr %RBP_N.32, align 1
  %EAX = add i32 %memload23, 1
  %38 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload23, i32 1)
  %CF24 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %EAX, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF25 = icmp eq i32 %41, 0
  %ZF26 = icmp eq i32 %EAX, 0
  %highbit27 = and i32 -2147483648, %EAX
  %SF28 = icmp ne i32 %highbit27, 0
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload23, i32 1)
  %OF29 = extractvalue { i32, i1 } %42, 1
  store i32 %EAX, ptr %RBP_N.32, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.3
  br label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload30 = load i32, ptr %RBP_N.28, align 1
  %EAX37 = add i32 %memload30, 1
  %43 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload30, i32 1)
  %CF31 = extractvalue { i32, i1 } %43, 1
  %44 = and i32 %EAX37, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44)
  %46 = and i32 %45, 1
  %PF32 = icmp eq i32 %46, 0
  %ZF33 = icmp eq i32 %EAX37, 0
  %highbit34 = and i32 -2147483648, %EAX37
  %SF35 = icmp ne i32 %highbit34, 0
  %47 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload30, i32 1)
  %OF36 = extractvalue { i32, i1 } %47, 1
  store i32 %EAX37, ptr %RBP_N.28, align 1
  br label %bb.1

bb.10:                                            ; preds = %bb.1
  %memload38 = load i32, ptr %RBP_N.12, align 1
  %memload39 = load i32, ptr %RBP_N.12, align 1
  %EAX40 = mul i32 %memload38, %memload39
  store i32 %EAX40, ptr %RBP_N.44, align 1
  %48 = load i32, ptr %RBP_N.36, align 1
  %49 = zext i32 %48 to i64
  %50 = zext i32 0 to i64
  %51 = sub i64 %49, %50
  %52 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %49, i64 %50)
  %CF41 = extractvalue { i64, i1 } %52, 1
  %ZF42 = icmp eq i64 %51, 0
  %highbit43 = and i64 -9223372036854775808, %51
  %SF44 = icmp ne i64 %highbit43, 0
  %53 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %49, i64 %50)
  %OF45 = extractvalue { i64, i1 } %53, 1
  %54 = and i64 %51, 255
  %55 = call i64 @llvm.ctpop.i64(i64 %54)
  %56 = and i64 %55, 1
  %PF46 = icmp eq i64 %56, 0
  %CmpZF_JLE = icmp eq i1 %ZF42, true
  %CmpOF_JLE = icmp ne i1 %SF44, %OF45
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.13, label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload47 = load i64, ptr %RBP_N.8, align 1
  %memload48 = load i32, ptr %RBP_N.36, align 1
  %ECX = sub i32 %memload48, 1
  %57 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload48, i32 1)
  %CF49 = extractvalue { i32, i1 } %57, 1
  %58 = and i32 %ECX, 255
  %59 = call i32 @llvm.ctpop.i32(i32 %58)
  %60 = and i32 %59, 1
  %PF50 = icmp eq i32 %60, 0
  %ZF51 = icmp eq i32 %ECX, 0
  %highbit52 = and i32 -2147483648, %ECX
  %SF53 = icmp ne i32 %highbit52, 0
  %61 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload48, i32 1)
  %OF54 = extractvalue { i32, i1 } %61, 1
  %RCX55 = sext i32 %ECX to i64
  %memref-idxreg56 = mul i64 8, %RCX55
  %memref-basereg57 = add i64 %memload47, %memref-idxreg56
  %62 = inttoptr i64 %memref-basereg57 to ptr
  %memload58 = load i64, ptr %62, align 1
  %memload59 = load i64, ptr %RBP_N.40, align 1
  %63 = trunc i64 %memload59 to i32
  %RCX60 = sext i32 %63 to i64
  %memref-idxreg61 = mul i64 4, %RCX60
  %memref-basereg62 = add i64 %memload58, %memref-idxreg61
  %64 = inttoptr i64 %memref-basereg62 to ptr
  %memload63 = load i32, ptr %64, align 1
  %65 = load i32, ptr %RBP_N.44, align 1
  %66 = sub i32 %memload63, %65
  %67 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload63, i32 %65)
  %CF64 = extractvalue { i32, i1 } %67, 1
  %ZF65 = icmp eq i32 %66, 0
  %highbit66 = and i32 -2147483648, %66
  %SF67 = icmp ne i32 %highbit66, 0
  %68 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload63, i32 %65)
  %OF68 = extractvalue { i32, i1 } %68, 1
  %69 = and i32 %66, 255
  %70 = call i32 @llvm.ctpop.i32(i32 %69)
  %71 = and i32 %70, 1
  %PF69 = icmp eq i32 %71, 0
  %CmpSFOF_JGE294 = icmp eq i1 %SF67, %OF68
  br i1 %CmpSFOF_JGE294, label %bb.13, label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload70 = load i64, ptr %RBP_N.8, align 1
  %memload71 = load i32, ptr %RBP_N.36, align 1
  %ECX78 = sub i32 %memload71, 1
  %72 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload71, i32 1)
  %CF72 = extractvalue { i32, i1 } %72, 1
  %73 = and i32 %ECX78, 255
  %74 = call i32 @llvm.ctpop.i32(i32 %73)
  %75 = and i32 %74, 1
  %PF73 = icmp eq i32 %75, 0
  %ZF74 = icmp eq i32 %ECX78, 0
  %highbit75 = and i32 -2147483648, %ECX78
  %SF76 = icmp ne i32 %highbit75, 0
  %76 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload71, i32 1)
  %OF77 = extractvalue { i32, i1 } %76, 1
  %RCX79 = sext i32 %ECX78 to i64
  %memref-idxreg80 = mul i64 8, %RCX79
  %memref-basereg81 = add i64 %memload70, %memref-idxreg80
  %77 = inttoptr i64 %memref-basereg81 to ptr
  %memload82 = load i64, ptr %77, align 1
  %memload83 = load i64, ptr %RBP_N.40, align 1
  %78 = trunc i64 %memload83 to i32
  %RCX84 = sext i32 %78 to i64
  %memref-idxreg85 = mul i64 4, %RCX84
  %memref-basereg86 = add i64 %memload82, %memref-idxreg85
  %79 = inttoptr i64 %memref-basereg86 to ptr
  %memload87 = load i32, ptr %79, align 1
  store i32 %memload87, ptr %RBP_N.44, align 1
  br label %bb.13

bb.13:                                            ; preds = %bb.12, %bb.11, %bb.10
  %memload88 = load i32, ptr %RBP_N.36, align 1
  %memload89 = load i32, ptr %RBP_N.12, align 1
  %ECX96 = sub i32 %memload89, 1
  %80 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload89, i32 1)
  %CF90 = extractvalue { i32, i1 } %80, 1
  %81 = and i32 %ECX96, 255
  %82 = call i32 @llvm.ctpop.i32(i32 %81)
  %83 = and i32 %82, 1
  %PF91 = icmp eq i32 %83, 0
  %ZF92 = icmp eq i32 %ECX96, 0
  %highbit93 = and i32 -2147483648, %ECX96
  %SF94 = icmp ne i32 %highbit93, 0
  %84 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload89, i32 1)
  %OF95 = extractvalue { i32, i1 } %84, 1
  %85 = sub i32 %memload88, %ECX96
  %86 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload88, i32 %ECX96)
  %CF97 = extractvalue { i32, i1 } %86, 1
  %ZF98 = icmp eq i32 %85, 0
  %highbit99 = and i32 -2147483648, %85
  %SF100 = icmp ne i32 %highbit99, 0
  %87 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload88, i32 %ECX96)
  %OF101 = extractvalue { i32, i1 } %87, 1
  %88 = and i32 %85, 255
  %89 = call i32 @llvm.ctpop.i32(i32 %88)
  %90 = and i32 %89, 1
  %PF102 = icmp eq i32 %90, 0
  %CmpSFOF_JGE295 = icmp eq i1 %SF100, %OF101
  br i1 %CmpSFOF_JGE295, label %bb.16, label %bb.14

bb.14:                                            ; preds = %bb.13
  %memload103 = load i64, ptr %RBP_N.8, align 1
  %memload104 = load i32, ptr %RBP_N.36, align 1
  %ECX111 = add i32 %memload104, 1
  %91 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload104, i32 1)
  %CF105 = extractvalue { i32, i1 } %91, 1
  %92 = and i32 %ECX111, 255
  %93 = call i32 @llvm.ctpop.i32(i32 %92)
  %94 = and i32 %93, 1
  %PF106 = icmp eq i32 %94, 0
  %ZF107 = icmp eq i32 %ECX111, 0
  %highbit108 = and i32 -2147483648, %ECX111
  %SF109 = icmp ne i32 %highbit108, 0
  %95 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload104, i32 1)
  %OF110 = extractvalue { i32, i1 } %95, 1
  %RCX112 = sext i32 %ECX111 to i64
  %memref-idxreg113 = mul i64 8, %RCX112
  %memref-basereg114 = add i64 %memload103, %memref-idxreg113
  %96 = inttoptr i64 %memref-basereg114 to ptr
  %memload115 = load i64, ptr %96, align 1
  %memload116 = load i64, ptr %RBP_N.40, align 1
  %97 = trunc i64 %memload116 to i32
  %RCX117 = sext i32 %97 to i64
  %memref-idxreg118 = mul i64 4, %RCX117
  %memref-basereg119 = add i64 %memload115, %memref-idxreg118
  %98 = inttoptr i64 %memref-basereg119 to ptr
  %memload120 = load i32, ptr %98, align 1
  %99 = load i32, ptr %RBP_N.44, align 1
  %100 = sub i32 %memload120, %99
  %101 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload120, i32 %99)
  %CF121 = extractvalue { i32, i1 } %101, 1
  %ZF122 = icmp eq i32 %100, 0
  %highbit123 = and i32 -2147483648, %100
  %SF124 = icmp ne i32 %highbit123, 0
  %102 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload120, i32 %99)
  %OF125 = extractvalue { i32, i1 } %102, 1
  %103 = and i32 %100, 255
  %104 = call i32 @llvm.ctpop.i32(i32 %103)
  %105 = and i32 %104, 1
  %PF126 = icmp eq i32 %105, 0
  %CmpSFOF_JGE296 = icmp eq i1 %SF124, %OF125
  br i1 %CmpSFOF_JGE296, label %bb.16, label %bb.15

bb.15:                                            ; preds = %bb.14
  %memload127 = load i64, ptr %RBP_N.8, align 1
  %memload128 = load i32, ptr %RBP_N.36, align 1
  %ECX135 = add i32 %memload128, 1
  %106 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload128, i32 1)
  %CF129 = extractvalue { i32, i1 } %106, 1
  %107 = and i32 %ECX135, 255
  %108 = call i32 @llvm.ctpop.i32(i32 %107)
  %109 = and i32 %108, 1
  %PF130 = icmp eq i32 %109, 0
  %ZF131 = icmp eq i32 %ECX135, 0
  %highbit132 = and i32 -2147483648, %ECX135
  %SF133 = icmp ne i32 %highbit132, 0
  %110 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload128, i32 1)
  %OF134 = extractvalue { i32, i1 } %110, 1
  %RCX136 = sext i32 %ECX135 to i64
  %memref-idxreg137 = mul i64 8, %RCX136
  %memref-basereg138 = add i64 %memload127, %memref-idxreg137
  %111 = inttoptr i64 %memref-basereg138 to ptr
  %memload139 = load i64, ptr %111, align 1
  %memload140 = load i64, ptr %RBP_N.40, align 1
  %112 = trunc i64 %memload140 to i32
  %RCX141 = sext i32 %112 to i64
  %memref-idxreg142 = mul i64 4, %RCX141
  %memref-basereg143 = add i64 %memload139, %memref-idxreg142
  %113 = inttoptr i64 %memref-basereg143 to ptr
  %memload144 = load i32, ptr %113, align 1
  store i32 %memload144, ptr %RBP_N.44, align 1
  br label %bb.16

bb.16:                                            ; preds = %bb.15, %bb.14, %bb.13
  %114 = load i32, ptr %RBP_N.40, align 1
  %115 = zext i32 %114 to i64
  %116 = zext i32 0 to i64
  %117 = sub i64 %115, %116
  %118 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %115, i64 %116)
  %CF145 = extractvalue { i64, i1 } %118, 1
  %ZF146 = icmp eq i64 %117, 0
  %highbit147 = and i64 -9223372036854775808, %117
  %SF148 = icmp ne i64 %highbit147, 0
  %119 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %115, i64 %116)
  %OF149 = extractvalue { i64, i1 } %119, 1
  %120 = and i64 %117, 255
  %121 = call i64 @llvm.ctpop.i64(i64 %120)
  %122 = and i64 %121, 1
  %PF150 = icmp eq i64 %122, 0
  %CmpZF_JLE297 = icmp eq i1 %ZF146, true
  %CmpOF_JLE298 = icmp ne i1 %SF148, %OF149
  %ZFOrSF_JLE299 = or i1 %CmpZF_JLE297, %CmpOF_JLE298
  br i1 %ZFOrSF_JLE299, label %bb.19, label %bb.17

bb.17:                                            ; preds = %bb.16
  %memload151 = load i64, ptr %RBP_N.8, align 1
  %memload152 = load i64, ptr %RBP_N.36, align 1
  %123 = trunc i64 %memload152 to i32
  %RCX153 = sext i32 %123 to i64
  %memref-idxreg154 = mul i64 8, %RCX153
  %memref-basereg155 = add i64 %memload151, %memref-idxreg154
  %124 = inttoptr i64 %memref-basereg155 to ptr
  %memload156 = load i64, ptr %124, align 1
  %memload157 = load i32, ptr %RBP_N.40, align 1
  %ECX164 = sub i32 %memload157, 1
  %125 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload157, i32 1)
  %CF158 = extractvalue { i32, i1 } %125, 1
  %126 = and i32 %ECX164, 255
  %127 = call i32 @llvm.ctpop.i32(i32 %126)
  %128 = and i32 %127, 1
  %PF159 = icmp eq i32 %128, 0
  %ZF160 = icmp eq i32 %ECX164, 0
  %highbit161 = and i32 -2147483648, %ECX164
  %SF162 = icmp ne i32 %highbit161, 0
  %129 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload157, i32 1)
  %OF163 = extractvalue { i32, i1 } %129, 1
  %RCX165 = sext i32 %ECX164 to i64
  %memref-idxreg166 = mul i64 4, %RCX165
  %memref-basereg167 = add i64 %memload156, %memref-idxreg166
  %130 = inttoptr i64 %memref-basereg167 to ptr
  %memload168 = load i32, ptr %130, align 1
  %131 = load i32, ptr %RBP_N.44, align 1
  %132 = sub i32 %memload168, %131
  %133 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload168, i32 %131)
  %CF169 = extractvalue { i32, i1 } %133, 1
  %ZF170 = icmp eq i32 %132, 0
  %highbit171 = and i32 -2147483648, %132
  %SF172 = icmp ne i32 %highbit171, 0
  %134 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload168, i32 %131)
  %OF173 = extractvalue { i32, i1 } %134, 1
  %135 = and i32 %132, 255
  %136 = call i32 @llvm.ctpop.i32(i32 %135)
  %137 = and i32 %136, 1
  %PF174 = icmp eq i32 %137, 0
  %CmpSFOF_JGE300 = icmp eq i1 %SF172, %OF173
  br i1 %CmpSFOF_JGE300, label %bb.19, label %bb.18

bb.18:                                            ; preds = %bb.17
  %memload175 = load i64, ptr %RBP_N.8, align 1
  %memload176 = load i64, ptr %RBP_N.36, align 1
  %138 = trunc i64 %memload176 to i32
  %RCX177 = sext i32 %138 to i64
  %memref-idxreg178 = mul i64 8, %RCX177
  %memref-basereg179 = add i64 %memload175, %memref-idxreg178
  %139 = inttoptr i64 %memref-basereg179 to ptr
  %memload180 = load i64, ptr %139, align 1
  %memload181 = load i32, ptr %RBP_N.40, align 1
  %ECX188 = sub i32 %memload181, 1
  %140 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload181, i32 1)
  %CF182 = extractvalue { i32, i1 } %140, 1
  %141 = and i32 %ECX188, 255
  %142 = call i32 @llvm.ctpop.i32(i32 %141)
  %143 = and i32 %142, 1
  %PF183 = icmp eq i32 %143, 0
  %ZF184 = icmp eq i32 %ECX188, 0
  %highbit185 = and i32 -2147483648, %ECX188
  %SF186 = icmp ne i32 %highbit185, 0
  %144 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload181, i32 1)
  %OF187 = extractvalue { i32, i1 } %144, 1
  %RCX189 = sext i32 %ECX188 to i64
  %memref-idxreg190 = mul i64 4, %RCX189
  %memref-basereg191 = add i64 %memload180, %memref-idxreg190
  %145 = inttoptr i64 %memref-basereg191 to ptr
  %memload192 = load i32, ptr %145, align 1
  store i32 %memload192, ptr %RBP_N.44, align 1
  br label %bb.19

bb.19:                                            ; preds = %bb.18, %bb.17, %bb.16
  %memload193 = load i32, ptr %RBP_N.40, align 1
  %memload194 = load i32, ptr %RBP_N.12, align 1
  %ECX201 = sub i32 %memload194, 1
  %146 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload194, i32 1)
  %CF195 = extractvalue { i32, i1 } %146, 1
  %147 = and i32 %ECX201, 255
  %148 = call i32 @llvm.ctpop.i32(i32 %147)
  %149 = and i32 %148, 1
  %PF196 = icmp eq i32 %149, 0
  %ZF197 = icmp eq i32 %ECX201, 0
  %highbit198 = and i32 -2147483648, %ECX201
  %SF199 = icmp ne i32 %highbit198, 0
  %150 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload194, i32 1)
  %OF200 = extractvalue { i32, i1 } %150, 1
  %151 = sub i32 %memload193, %ECX201
  %152 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload193, i32 %ECX201)
  %CF202 = extractvalue { i32, i1 } %152, 1
  %ZF203 = icmp eq i32 %151, 0
  %highbit204 = and i32 -2147483648, %151
  %SF205 = icmp ne i32 %highbit204, 0
  %153 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload193, i32 %ECX201)
  %OF206 = extractvalue { i32, i1 } %153, 1
  %154 = and i32 %151, 255
  %155 = call i32 @llvm.ctpop.i32(i32 %154)
  %156 = and i32 %155, 1
  %PF207 = icmp eq i32 %156, 0
  %CmpSFOF_JGE301 = icmp eq i1 %SF205, %OF206
  br i1 %CmpSFOF_JGE301, label %bb.22, label %bb.20

bb.20:                                            ; preds = %bb.19
  %memload208 = load i64, ptr %RBP_N.8, align 1
  %memload209 = load i64, ptr %RBP_N.36, align 1
  %157 = trunc i64 %memload209 to i32
  %RCX210 = sext i32 %157 to i64
  %memref-idxreg211 = mul i64 8, %RCX210
  %memref-basereg212 = add i64 %memload208, %memref-idxreg211
  %158 = inttoptr i64 %memref-basereg212 to ptr
  %memload213 = load i64, ptr %158, align 1
  %memload214 = load i32, ptr %RBP_N.40, align 1
  %ECX221 = add i32 %memload214, 1
  %159 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload214, i32 1)
  %CF215 = extractvalue { i32, i1 } %159, 1
  %160 = and i32 %ECX221, 255
  %161 = call i32 @llvm.ctpop.i32(i32 %160)
  %162 = and i32 %161, 1
  %PF216 = icmp eq i32 %162, 0
  %ZF217 = icmp eq i32 %ECX221, 0
  %highbit218 = and i32 -2147483648, %ECX221
  %SF219 = icmp ne i32 %highbit218, 0
  %163 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload214, i32 1)
  %OF220 = extractvalue { i32, i1 } %163, 1
  %RCX222 = sext i32 %ECX221 to i64
  %memref-idxreg223 = mul i64 4, %RCX222
  %memref-basereg224 = add i64 %memload213, %memref-idxreg223
  %164 = inttoptr i64 %memref-basereg224 to ptr
  %memload225 = load i32, ptr %164, align 1
  %165 = load i32, ptr %RBP_N.44, align 1
  %166 = sub i32 %memload225, %165
  %167 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload225, i32 %165)
  %CF226 = extractvalue { i32, i1 } %167, 1
  %ZF227 = icmp eq i32 %166, 0
  %highbit228 = and i32 -2147483648, %166
  %SF229 = icmp ne i32 %highbit228, 0
  %168 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload225, i32 %165)
  %OF230 = extractvalue { i32, i1 } %168, 1
  %169 = and i32 %166, 255
  %170 = call i32 @llvm.ctpop.i32(i32 %169)
  %171 = and i32 %170, 1
  %PF231 = icmp eq i32 %171, 0
  %CmpSFOF_JGE302 = icmp eq i1 %SF229, %OF230
  br i1 %CmpSFOF_JGE302, label %bb.22, label %bb.21

bb.21:                                            ; preds = %bb.20
  %memload232 = load i64, ptr %RBP_N.8, align 1
  %memload233 = load i64, ptr %RBP_N.36, align 1
  %172 = trunc i64 %memload233 to i32
  %RCX234 = sext i32 %172 to i64
  %memref-idxreg235 = mul i64 8, %RCX234
  %memref-basereg236 = add i64 %memload232, %memref-idxreg235
  %173 = inttoptr i64 %memref-basereg236 to ptr
  %memload237 = load i64, ptr %173, align 1
  %memload238 = load i32, ptr %RBP_N.40, align 1
  %ECX245 = add i32 %memload238, 1
  %174 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload238, i32 1)
  %CF239 = extractvalue { i32, i1 } %174, 1
  %175 = and i32 %ECX245, 255
  %176 = call i32 @llvm.ctpop.i32(i32 %175)
  %177 = and i32 %176, 1
  %PF240 = icmp eq i32 %177, 0
  %ZF241 = icmp eq i32 %ECX245, 0
  %highbit242 = and i32 -2147483648, %ECX245
  %SF243 = icmp ne i32 %highbit242, 0
  %178 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload238, i32 1)
  %OF244 = extractvalue { i32, i1 } %178, 1
  %RCX246 = sext i32 %ECX245 to i64
  %memref-idxreg247 = mul i64 4, %RCX246
  %memref-basereg248 = add i64 %memload237, %memref-idxreg247
  %179 = inttoptr i64 %memref-basereg248 to ptr
  %memload249 = load i32, ptr %179, align 1
  store i32 %memload249, ptr %RBP_N.44, align 1
  br label %bb.22

bb.22:                                            ; preds = %bb.21, %bb.20, %bb.19
  %memload250 = load i32, ptr %RBP_N.16, align 1
  %memload251 = load i64, ptr %RBP_N.24, align 1
  %180 = inttoptr i64 %memload251 to ptr
  store i32 %memload250, ptr %180, align 1
  %memload252 = load i64, ptr %RBP_N.16, align 1
  %181 = trunc i64 %memload252 to i32
  %RDI = sext i32 %181 to i64
  %RDI256 = shl i64 %RDI, 2
  %ZF253 = icmp eq i64 %RDI256, 0
  %highbit254 = and i64 -9223372036854775808, %RDI256
  %SF255 = icmp ne i64 %highbit254, 0
  %182 = call ptr @malloc(i64 %RDI256)
  %RAX = ptrtoint ptr %182 to i64
  store i64 %RAX, ptr %RBP_N.56, align 1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.23

bb.23:                                            ; preds = %bb.22, %bb.28
  %memload257 = load i32, ptr %RBP_N.28, align 1
  %183 = load i32, ptr %RBP_N.16, align 1
  %184 = sub i32 %memload257, %183
  %185 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload257, i32 %183)
  %CF258 = extractvalue { i32, i1 } %185, 1
  %ZF259 = icmp eq i32 %184, 0
  %highbit260 = and i32 -2147483648, %184
  %SF261 = icmp ne i32 %highbit260, 0
  %186 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload257, i32 %183)
  %OF262 = extractvalue { i32, i1 } %186, 1
  %187 = and i32 %184, 255
  %188 = call i32 @llvm.ctpop.i32(i32 %187)
  %189 = and i32 %188, 1
  %PF263 = icmp eq i32 %189, 0
  %CmpSFOF_JGE303 = icmp eq i1 %SF261, %OF262
  br i1 %CmpSFOF_JGE303, label %bb.29, label %bb.24

bb.24:                                            ; preds = %bb.23
  %memload264 = load i32, ptr %RBP_N.28, align 1
  %190 = sext i32 %memload264 to i64
  %191 = lshr i64 %190, 32
  %EDX = trunc i64 %191 to i32
  %192 = sext i32 %memload264 to i64
  %193 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %193, 32
  %dividend = or i64 %div_hb_ls, %192
  %194 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %194
  %EAX265 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %194
  %EDX266 = trunc i64 %div_r to i32
  %195 = sub i32 %EDX266, 0
  %196 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX266, i32 0)
  %CF267 = extractvalue { i32, i1 } %196, 1
  %ZF268 = icmp eq i32 %195, 0
  %highbit269 = and i32 -2147483648, %195
  %SF270 = icmp ne i32 %highbit269, 0
  %197 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX266, i32 0)
  %OF271 = extractvalue { i32, i1 } %197, 1
  %198 = and i32 %195, 255
  %199 = call i32 @llvm.ctpop.i32(i32 %198)
  %200 = and i32 %199, 1
  %PF272 = icmp eq i32 %200, 0
  %CmpZF_JNE304 = icmp eq i1 %ZF268, false
  br i1 %CmpZF_JNE304, label %bb.26, label %bb.25

bb.25:                                            ; preds = %bb.24
  %memload273 = load i64, ptr %RBP_N.56, align 1
  %memload274 = load i64, ptr %RBP_N.28, align 1
  %201 = trunc i64 %memload274 to i32
  %RCX275 = sext i32 %201 to i64
  %memref-idxreg276 = mul i64 4, %RCX275
  %memref-basereg277 = add i64 %memload273, %memref-idxreg276
  %202 = inttoptr i64 %memref-basereg277 to ptr
  store i32 1, ptr %202, align 1
  br label %bb.27

bb.26:                                            ; preds = %bb.24
  %memload278 = load i32, ptr %RBP_N.44, align 1
  %memload279 = load i64, ptr %RBP_N.56, align 1
  %memload280 = load i64, ptr %RBP_N.28, align 1
  %203 = trunc i64 %memload280 to i32
  %RCX281 = sext i32 %203 to i64
  %memref-idxreg282 = mul i64 4, %RCX281
  %memref-basereg283 = add i64 %memload279, %memref-idxreg282
  %204 = inttoptr i64 %memref-basereg283 to ptr
  store i32 %memload278, ptr %204, align 1
  br label %bb.27

bb.27:                                            ; preds = %bb.26, %bb.25
  br label %bb.28

bb.28:                                            ; preds = %bb.27
  %memload284 = load i32, ptr %RBP_N.28, align 1
  %EAX291 = add i32 %memload284, 1
  %205 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload284, i32 1)
  %CF285 = extractvalue { i32, i1 } %205, 1
  %206 = and i32 %EAX291, 255
  %207 = call i32 @llvm.ctpop.i32(i32 %206)
  %208 = and i32 %207, 1
  %PF286 = icmp eq i32 %208, 0
  %ZF287 = icmp eq i32 %EAX291, 0
  %highbit288 = and i32 -2147483648, %EAX291
  %SF289 = icmp ne i32 %highbit288, 0
  %209 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload284, i32 1)
  %OF290 = extractvalue { i32, i1 } %209, 1
  store i32 %EAX291, ptr %RBP_N.28, align 1
  br label %bb.23

bb.29:                                            ; preds = %bb.23
  %memload292 = load i64, ptr %RBP_N.56, align 1
  ret i64 %memload292
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
