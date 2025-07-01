; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @memcpy(ptr, ptr, i64)

define dso_local i64 @func0(i64 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 27
  %RBP_N.29 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %8 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  store i32 0, ptr %RBP_N.36, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.19
  %memload = load i64, ptr %RBP_N.8, align 1
  %memload1 = load i64, ptr %RBP_N.36, align 1
  %9 = trunc i64 %memload1 to i32
  %RCX = sext i32 %9 to i64
  %memref-basereg = add i64 %memload, %RCX
  %10 = inttoptr i64 %memref-basereg to ptr
  %memload2 = load i32, ptr %10, align 1
  %11 = trunc i32 %memload2 to i8
  %EAX = sext i8 %11 to i32
  %12 = sub i32 %EAX, 0
  %13 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 0)
  %CF = extractvalue { i32, i1 } %13, 1
  %ZF = icmp eq i32 %12, 0
  %highbit = and i32 -2147483648, %12
  %SF = icmp ne i32 %highbit, 0
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 0)
  %OF = extractvalue { i32, i1 } %14, 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = and i32 %16, 1
  %PF = icmp eq i32 %17, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.20, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload3 = load i64, ptr %RBP_N.8, align 1
  %memload4 = load i64, ptr %RBP_N.36, align 1
  %18 = trunc i64 %memload4 to i32
  %RCX5 = sext i32 %18 to i64
  %memref-basereg6 = add i64 %memload3, %RCX5
  %19 = inttoptr i64 %memref-basereg6 to ptr
  %memload7 = load i32, ptr %19, align 1
  %20 = trunc i32 %memload7 to i8
  %EAX8 = sext i8 %20 to i32
  %21 = sub i32 %EAX8, 32
  %22 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX8, i32 32)
  %CF9 = extractvalue { i32, i1 } %22, 1
  %ZF10 = icmp eq i32 %21, 0
  %highbit11 = and i32 -2147483648, %21
  %SF12 = icmp ne i32 %highbit11, 0
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX8, i32 32)
  %OF13 = extractvalue { i32, i1 } %23, 1
  %24 = and i32 %21, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = and i32 %25, 1
  %PF14 = icmp eq i32 %26, 0
  %CmpZF_JE212 = icmp eq i1 %ZF10, true
  br i1 %CmpZF_JE212, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload15 = load i32, ptr %RBP_N.24, align 1
  %EAX22 = add i32 %memload15, 1
  %27 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload15, i32 1)
  %CF16 = extractvalue { i32, i1 } %27, 1
  %28 = and i32 %EAX22, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = and i32 %29, 1
  %PF17 = icmp eq i32 %30, 0
  %ZF18 = icmp eq i32 %EAX22, 0
  %highbit19 = and i32 -2147483648, %EAX22
  %SF20 = icmp ne i32 %highbit19, 0
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload15, i32 1)
  %OF21 = extractvalue { i32, i1 } %31, 1
  store i32 %EAX22, ptr %RBP_N.24, align 1
  br label %bb.18

bb.4:                                             ; preds = %bb.2
  %32 = load i32, ptr %RBP_N.24, align 1
  %33 = zext i32 %32 to i64
  %34 = zext i32 1 to i64
  %35 = sub i64 %33, %34
  %36 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %33, i64 %34)
  %CF23 = extractvalue { i64, i1 } %36, 1
  %ZF24 = icmp eq i64 %35, 0
  %highbit25 = and i64 -9223372036854775808, %35
  %SF26 = icmp ne i64 %highbit25, 0
  %37 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %33, i64 %34)
  %OF27 = extractvalue { i64, i1 } %37, 1
  %38 = and i64 %35, 255
  %39 = call i64 @llvm.ctpop.i64(i64 %38)
  %40 = and i64 %39, 1
  %PF28 = icmp eq i64 %40, 0
  %CmpZF_JLE = icmp eq i1 %ZF24, true
  %CmpOF_JLE = icmp ne i1 %SF26, %OF27
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.12, label %bb.5

bb.5:                                             ; preds = %bb.4
  store i8 1, ptr %RBP_N.29, align 1
  store i32 2, ptr %RBP_N.40, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.10
  %memload29 = load i32, ptr %RBP_N.40, align 1
  %memload30 = load i32, ptr %RBP_N.40, align 1
  %EAX31 = mul i32 %memload29, %memload30
  %41 = load i32, ptr %RBP_N.24, align 1
  %42 = sub i32 %EAX31, %41
  %43 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX31, i32 %41)
  %CF32 = extractvalue { i32, i1 } %43, 1
  %ZF33 = icmp eq i32 %42, 0
  %highbit34 = and i32 -2147483648, %42
  %SF35 = icmp ne i32 %highbit34, 0
  %44 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX31, i32 %41)
  %OF36 = extractvalue { i32, i1 } %44, 1
  %45 = and i32 %42, 255
  %46 = call i32 @llvm.ctpop.i32(i32 %45)
  %47 = and i32 %46, 1
  %PF37 = icmp eq i32 %47, 0
  %ZFCmp_JG = icmp eq i1 %ZF33, false
  %SFOFCmp_JG = icmp eq i1 %SF35, %OF36
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.11, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload38 = load i32, ptr %RBP_N.24, align 1
  %48 = sext i32 %memload38 to i64
  %49 = lshr i64 %48, 32
  %EDX = trunc i64 %49 to i32
  %memload39 = load i32, ptr %RBP_N.40, align 1
  %50 = sext i32 %memload38 to i64
  %51 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %51, 32
  %dividend = or i64 %div_hb_ls, %50
  %52 = sext i32 %memload39 to i64
  %div_q = sdiv i64 %dividend, %52
  %EAX40 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %52
  %EDX41 = trunc i64 %div_r to i32
  %53 = sub i32 %EDX41, 0
  %54 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX41, i32 0)
  %CF42 = extractvalue { i32, i1 } %54, 1
  %ZF43 = icmp eq i32 %53, 0
  %highbit44 = and i32 -2147483648, %53
  %SF45 = icmp ne i32 %highbit44, 0
  %55 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX41, i32 0)
  %OF46 = extractvalue { i32, i1 } %55, 1
  %56 = and i32 %53, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = and i32 %57, 1
  %PF47 = icmp eq i32 %58, 0
  %CmpZF_JNE = icmp eq i1 %ZF43, false
  br i1 %CmpZF_JNE, label %bb.9, label %bb.8

bb.8:                                             ; preds = %bb.7
  store i8 0, ptr %RBP_N.29, align 1
  br label %bb.11

bb.9:                                             ; preds = %bb.7
  br label %bb.10

bb.10:                                            ; preds = %bb.9
  %memload48 = load i32, ptr %RBP_N.40, align 1
  %EAX55 = add i32 %memload48, 1
  %59 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload48, i32 1)
  %CF49 = extractvalue { i32, i1 } %59, 1
  %60 = and i32 %EAX55, 255
  %61 = call i32 @llvm.ctpop.i32(i32 %60)
  %62 = and i32 %61, 1
  %PF50 = icmp eq i32 %62, 0
  %ZF51 = icmp eq i32 %EAX55, 0
  %highbit52 = and i32 -2147483648, %EAX55
  %SF53 = icmp ne i32 %highbit52, 0
  %63 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload48, i32 1)
  %OF54 = extractvalue { i32, i1 } %63, 1
  store i32 %EAX55, ptr %RBP_N.40, align 1
  br label %bb.6

bb.11:                                            ; preds = %bb.8, %bb.6
  br label %bb.13

bb.12:                                            ; preds = %bb.4
  store i8 0, ptr %RBP_N.29, align 1
  br label %bb.13

bb.13:                                            ; preds = %bb.12, %bb.11
  %64 = load i8, ptr %RBP_N.29, align 1
  %65 = zext i8 %64 to i64
  %66 = zext i8 1 to i64
  %67 = and i64 %65, %66
  %ZF56 = icmp eq i64 %67, 0
  %highbit57 = and i64 -9223372036854775808, %67
  %SF58 = icmp ne i64 %highbit57, 0
  %68 = and i64 %67, 255
  %69 = call i64 @llvm.ctpop.i64(i64 %68)
  %70 = and i64 %69, 1
  %PF59 = icmp eq i64 %70, 0
  %CmpZF_JE213 = icmp eq i1 %ZF56, true
  br i1 %CmpZF_JE213, label %bb.17, label %bb.14

bb.14:                                            ; preds = %bb.13
  %71 = load i32, ptr %RBP_N.28, align 1
  %72 = zext i32 %71 to i64
  %73 = zext i32 0 to i64
  %74 = sub i64 %72, %73
  %75 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %72, i64 %73)
  %CF60 = extractvalue { i64, i1 } %75, 1
  %ZF61 = icmp eq i64 %74, 0
  %highbit62 = and i64 -9223372036854775808, %74
  %SF63 = icmp ne i64 %highbit62, 0
  %76 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %72, i64 %73)
  %OF64 = extractvalue { i64, i1 } %76, 1
  %77 = and i64 %74, 255
  %78 = call i64 @llvm.ctpop.i64(i64 %77)
  %79 = and i64 %78, 1
  %PF65 = icmp eq i64 %79, 0
  %CmpZF_JLE214 = icmp eq i1 %ZF61, true
  %CmpOF_JLE215 = icmp ne i1 %SF63, %OF64
  %ZFOrSF_JLE216 = or i1 %CmpZF_JLE214, %CmpOF_JLE215
  br i1 %ZFOrSF_JLE216, label %bb.16, label %bb.15

bb.15:                                            ; preds = %bb.14
  %memload66 = load i64, ptr %RBP_N.16, align 1
  %memload67 = load i32, ptr %RBP_N.28, align 1
  %EDX74 = add i32 %memload67, 1
  %80 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload67, i32 1)
  %CF68 = extractvalue { i32, i1 } %80, 1
  %81 = and i32 %EDX74, 255
  %82 = call i32 @llvm.ctpop.i32(i32 %81)
  %83 = and i32 %82, 1
  %PF69 = icmp eq i32 %83, 0
  %ZF70 = icmp eq i32 %EDX74, 0
  %highbit71 = and i32 -2147483648, %EDX74
  %SF72 = icmp ne i32 %highbit71, 0
  %84 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload67, i32 1)
  %OF73 = extractvalue { i32, i1 } %84, 1
  store i32 %EDX74, ptr %RBP_N.28, align 1
  %RCX75 = sext i32 %memload67 to i64
  %memref-basereg76 = add i64 %memload66, %RCX75
  %85 = inttoptr i64 %memref-basereg76 to ptr
  store i8 32, ptr %85, align 1
  br label %bb.16

bb.16:                                            ; preds = %bb.15, %bb.14
  %memload77 = load i64, ptr %RBP_N.16, align 1
  %memload78 = load i64, ptr %RBP_N.28, align 1
  %86 = trunc i64 %memload78 to i32
  %RAX = sext i32 %86 to i64
  %RDI = add nsw i64 %memload77, %RAX
  %highbit79 = and i64 -9223372036854775808, %RDI
  %SF80 = icmp ne i64 %highbit79, 0
  %ZF81 = icmp eq i64 %RDI, 0
  %memload82 = load i64, ptr %RBP_N.8, align 1
  %memload83 = load i64, ptr %RBP_N.36, align 1
  %87 = trunc i64 %memload83 to i32
  %RAX84 = sext i32 %87 to i64
  %RSI = add nsw i64 %memload82, %RAX84
  %highbit85 = and i64 -9223372036854775808, %RSI
  %SF86 = icmp ne i64 %highbit85, 0
  %ZF87 = icmp eq i64 %RSI, 0
  %memload88 = load i64, ptr %RBP_N.24, align 1
  %88 = trunc i64 %memload88 to i32
  %RCX89 = sext i32 %88 to i64
  %89 = zext i32 0 to i64
  %RAX90 = sub i64 %89, %RCX89
  %90 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %89, i64 %RCX89)
  %CF91 = extractvalue { i64, i1 } %90, 1
  %ZF92 = icmp eq i64 %RAX90, 0
  %highbit93 = and i64 -9223372036854775808, %RAX90
  %SF94 = icmp ne i64 %highbit93, 0
  %91 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %89, i64 %RCX89)
  %OF95 = extractvalue { i64, i1 } %91, 1
  %92 = and i64 %RAX90, 255
  %93 = call i64 @llvm.ctpop.i64(i64 %92)
  %94 = and i64 %93, 1
  %PF96 = icmp eq i64 %94, 0
  %RSI100 = add nsw i64 %RSI, %RAX90
  %highbit97 = and i64 -9223372036854775808, %RSI100
  %SF98 = icmp ne i64 %highbit97, 0
  %ZF99 = icmp eq i64 %RSI100, 0
  %memload101 = load i64, ptr %RBP_N.24, align 1
  %95 = trunc i64 %memload101 to i32
  %RDX = sext i32 %95 to i64
  %96 = inttoptr i64 %RDI to ptr
  %97 = inttoptr i64 %RSI100 to ptr
  %98 = call ptr @memcpy(ptr %96, ptr %97, i64 %RDX)
  %RAX102 = ptrtoint ptr %98 to i64
  %memload103 = load i32, ptr %RBP_N.24, align 1
  %memload104 = load i32, ptr %RBP_N.28, align 1
  %EAX106 = add i32 %memload103, %memload104
  %99 = and i32 %EAX106, 255
  %100 = call i32 @llvm.ctpop.i32(i32 %99)
  %101 = and i32 %100, 1
  %PF105 = icmp eq i32 %101, 0
  store i32 %EAX106, ptr %RBP_N.28, align 1
  br label %bb.17

bb.17:                                            ; preds = %bb.16, %bb.13
  store i32 0, ptr %RBP_N.24, align 1
  br label %bb.18

bb.18:                                            ; preds = %bb.17, %bb.3
  br label %bb.19

bb.19:                                            ; preds = %bb.18
  %memload107 = load i32, ptr %RBP_N.36, align 1
  %EAX114 = add i32 %memload107, 1
  %102 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload107, i32 1)
  %CF108 = extractvalue { i32, i1 } %102, 1
  %103 = and i32 %EAX114, 255
  %104 = call i32 @llvm.ctpop.i32(i32 %103)
  %105 = and i32 %104, 1
  %PF109 = icmp eq i32 %105, 0
  %ZF110 = icmp eq i32 %EAX114, 0
  %highbit111 = and i32 -2147483648, %EAX114
  %SF112 = icmp ne i32 %highbit111, 0
  %106 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload107, i32 1)
  %OF113 = extractvalue { i32, i1 } %106, 1
  store i32 %EAX114, ptr %RBP_N.36, align 1
  br label %bb.1

bb.20:                                            ; preds = %bb.1
  %107 = load i32, ptr %RBP_N.24, align 1
  %108 = zext i32 %107 to i64
  %109 = zext i32 1 to i64
  %110 = sub i64 %108, %109
  %111 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %108, i64 %109)
  %CF115 = extractvalue { i64, i1 } %111, 1
  %ZF116 = icmp eq i64 %110, 0
  %highbit117 = and i64 -9223372036854775808, %110
  %SF118 = icmp ne i64 %highbit117, 0
  %112 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %108, i64 %109)
  %OF119 = extractvalue { i64, i1 } %112, 1
  %113 = and i64 %110, 255
  %114 = call i64 @llvm.ctpop.i64(i64 %113)
  %115 = and i64 %114, 1
  %PF120 = icmp eq i64 %115, 0
  %CmpZF_JLE217 = icmp eq i1 %ZF116, true
  %CmpOF_JLE218 = icmp ne i1 %SF118, %OF119
  %ZFOrSF_JLE219 = or i1 %CmpZF_JLE217, %CmpOF_JLE218
  br i1 %ZFOrSF_JLE219, label %bb.28, label %bb.21

bb.21:                                            ; preds = %bb.20
  store i8 1, ptr %RBP_N.29, align 1
  store i32 2, ptr %RBP_N.40, align 1
  br label %bb.22

bb.22:                                            ; preds = %bb.21, %bb.26
  %memload121 = load i32, ptr %RBP_N.40, align 1
  %memload122 = load i32, ptr %RBP_N.40, align 1
  %EAX123 = mul i32 %memload121, %memload122
  %116 = load i32, ptr %RBP_N.24, align 1
  %117 = sub i32 %EAX123, %116
  %118 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX123, i32 %116)
  %CF124 = extractvalue { i32, i1 } %118, 1
  %ZF125 = icmp eq i32 %117, 0
  %highbit126 = and i32 -2147483648, %117
  %SF127 = icmp ne i32 %highbit126, 0
  %119 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX123, i32 %116)
  %OF128 = extractvalue { i32, i1 } %119, 1
  %120 = and i32 %117, 255
  %121 = call i32 @llvm.ctpop.i32(i32 %120)
  %122 = and i32 %121, 1
  %PF129 = icmp eq i32 %122, 0
  %ZFCmp_JG220 = icmp eq i1 %ZF125, false
  %SFOFCmp_JG221 = icmp eq i1 %SF127, %OF128
  %ZFAndSFOF_JG222 = and i1 %ZFCmp_JG220, %SFOFCmp_JG221
  br i1 %ZFAndSFOF_JG222, label %bb.27, label %bb.23

bb.23:                                            ; preds = %bb.22
  %memload130 = load i32, ptr %RBP_N.24, align 1
  %123 = sext i32 %memload130 to i64
  %124 = lshr i64 %123, 32
  %EDX131 = trunc i64 %124 to i32
  %memload132 = load i32, ptr %RBP_N.40, align 1
  %125 = sext i32 %memload130 to i64
  %126 = sext i32 %EDX131 to i64
  %div_hb_ls133 = shl nuw i64 %126, 32
  %dividend134 = or i64 %div_hb_ls133, %125
  %127 = sext i32 %memload132 to i64
  %div_q135 = sdiv i64 %dividend134, %127
  %EAX136 = trunc i64 %div_q135 to i32
  %div_r137 = srem i64 %dividend134, %127
  %EDX138 = trunc i64 %div_r137 to i32
  %128 = sub i32 %EDX138, 0
  %129 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX138, i32 0)
  %CF139 = extractvalue { i32, i1 } %129, 1
  %ZF140 = icmp eq i32 %128, 0
  %highbit141 = and i32 -2147483648, %128
  %SF142 = icmp ne i32 %highbit141, 0
  %130 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX138, i32 0)
  %OF143 = extractvalue { i32, i1 } %130, 1
  %131 = and i32 %128, 255
  %132 = call i32 @llvm.ctpop.i32(i32 %131)
  %133 = and i32 %132, 1
  %PF144 = icmp eq i32 %133, 0
  %CmpZF_JNE223 = icmp eq i1 %ZF140, false
  br i1 %CmpZF_JNE223, label %bb.25, label %bb.24

bb.24:                                            ; preds = %bb.23
  store i8 0, ptr %RBP_N.29, align 1
  br label %bb.27

bb.25:                                            ; preds = %bb.23
  br label %bb.26

bb.26:                                            ; preds = %bb.25
  %memload145 = load i32, ptr %RBP_N.40, align 1
  %EAX152 = add i32 %memload145, 1
  %134 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload145, i32 1)
  %CF146 = extractvalue { i32, i1 } %134, 1
  %135 = and i32 %EAX152, 255
  %136 = call i32 @llvm.ctpop.i32(i32 %135)
  %137 = and i32 %136, 1
  %PF147 = icmp eq i32 %137, 0
  %ZF148 = icmp eq i32 %EAX152, 0
  %highbit149 = and i32 -2147483648, %EAX152
  %SF150 = icmp ne i32 %highbit149, 0
  %138 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload145, i32 1)
  %OF151 = extractvalue { i32, i1 } %138, 1
  store i32 %EAX152, ptr %RBP_N.40, align 1
  br label %bb.22

bb.27:                                            ; preds = %bb.24, %bb.22
  br label %bb.29

bb.28:                                            ; preds = %bb.20
  store i8 0, ptr %RBP_N.29, align 1
  br label %bb.29

bb.29:                                            ; preds = %bb.28, %bb.27
  %139 = load i8, ptr %RBP_N.29, align 1
  %140 = zext i8 %139 to i64
  %141 = zext i8 1 to i64
  %142 = and i64 %140, %141
  %ZF153 = icmp eq i64 %142, 0
  %highbit154 = and i64 -9223372036854775808, %142
  %SF155 = icmp ne i64 %highbit154, 0
  %143 = and i64 %142, 255
  %144 = call i64 @llvm.ctpop.i64(i64 %143)
  %145 = and i64 %144, 1
  %PF156 = icmp eq i64 %145, 0
  %CmpZF_JE224 = icmp eq i1 %ZF153, true
  br i1 %CmpZF_JE224, label %bb.33, label %bb.30

bb.30:                                            ; preds = %bb.29
  %146 = load i32, ptr %RBP_N.28, align 1
  %147 = zext i32 %146 to i64
  %148 = zext i32 0 to i64
  %149 = sub i64 %147, %148
  %150 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %147, i64 %148)
  %CF157 = extractvalue { i64, i1 } %150, 1
  %ZF158 = icmp eq i64 %149, 0
  %highbit159 = and i64 -9223372036854775808, %149
  %SF160 = icmp ne i64 %highbit159, 0
  %151 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %147, i64 %148)
  %OF161 = extractvalue { i64, i1 } %151, 1
  %152 = and i64 %149, 255
  %153 = call i64 @llvm.ctpop.i64(i64 %152)
  %154 = and i64 %153, 1
  %PF162 = icmp eq i64 %154, 0
  %CmpZF_JLE225 = icmp eq i1 %ZF158, true
  %CmpOF_JLE226 = icmp ne i1 %SF160, %OF161
  %ZFOrSF_JLE227 = or i1 %CmpZF_JLE225, %CmpOF_JLE226
  br i1 %ZFOrSF_JLE227, label %bb.32, label %bb.31

bb.31:                                            ; preds = %bb.30
  %memload163 = load i64, ptr %RBP_N.16, align 1
  %memload164 = load i32, ptr %RBP_N.28, align 1
  %EDX171 = add i32 %memload164, 1
  %155 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload164, i32 1)
  %CF165 = extractvalue { i32, i1 } %155, 1
  %156 = and i32 %EDX171, 255
  %157 = call i32 @llvm.ctpop.i32(i32 %156)
  %158 = and i32 %157, 1
  %PF166 = icmp eq i32 %158, 0
  %ZF167 = icmp eq i32 %EDX171, 0
  %highbit168 = and i32 -2147483648, %EDX171
  %SF169 = icmp ne i32 %highbit168, 0
  %159 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload164, i32 1)
  %OF170 = extractvalue { i32, i1 } %159, 1
  store i32 %EDX171, ptr %RBP_N.28, align 1
  %RCX172 = sext i32 %memload164 to i64
  %memref-basereg173 = add i64 %memload163, %RCX172
  %160 = inttoptr i64 %memref-basereg173 to ptr
  store i8 32, ptr %160, align 1
  br label %bb.32

bb.32:                                            ; preds = %bb.31, %bb.30
  %memload174 = load i64, ptr %RBP_N.16, align 1
  %memload175 = load i64, ptr %RBP_N.28, align 1
  %161 = trunc i64 %memload175 to i32
  %RAX176 = sext i32 %161 to i64
  %RDI180 = add nsw i64 %memload174, %RAX176
  %highbit177 = and i64 -9223372036854775808, %RDI180
  %SF178 = icmp ne i64 %highbit177, 0
  %ZF179 = icmp eq i64 %RDI180, 0
  %memload181 = load i64, ptr %RBP_N.8, align 1
  %memload182 = load i64, ptr %RBP_N.36, align 1
  %162 = trunc i64 %memload182 to i32
  %RAX183 = sext i32 %162 to i64
  %RSI187 = add nsw i64 %memload181, %RAX183
  %highbit184 = and i64 -9223372036854775808, %RSI187
  %SF185 = icmp ne i64 %highbit184, 0
  %ZF186 = icmp eq i64 %RSI187, 0
  %memload188 = load i64, ptr %RBP_N.24, align 1
  %163 = trunc i64 %memload188 to i32
  %RCX189 = sext i32 %163 to i64
  %164 = zext i32 0 to i64
  %RAX190 = sub i64 %164, %RCX189
  %165 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %164, i64 %RCX189)
  %CF191 = extractvalue { i64, i1 } %165, 1
  %ZF192 = icmp eq i64 %RAX190, 0
  %highbit193 = and i64 -9223372036854775808, %RAX190
  %SF194 = icmp ne i64 %highbit193, 0
  %166 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %164, i64 %RCX189)
  %OF195 = extractvalue { i64, i1 } %166, 1
  %167 = and i64 %RAX190, 255
  %168 = call i64 @llvm.ctpop.i64(i64 %167)
  %169 = and i64 %168, 1
  %PF196 = icmp eq i64 %169, 0
  %RSI200 = add nsw i64 %RSI187, %RAX190
  %highbit197 = and i64 -9223372036854775808, %RSI200
  %SF198 = icmp ne i64 %highbit197, 0
  %ZF199 = icmp eq i64 %RSI200, 0
  %memload201 = load i64, ptr %RBP_N.24, align 1
  %170 = trunc i64 %memload201 to i32
  %RDX202 = sext i32 %170 to i64
  %171 = inttoptr i64 %RDI180 to ptr
  %172 = inttoptr i64 %RSI200 to ptr
  %173 = call ptr @memcpy(ptr %171, ptr %172, i64 %RDX202)
  %RAX203 = ptrtoint ptr %173 to i64
  %memload204 = load i32, ptr %RBP_N.24, align 1
  %memload205 = load i32, ptr %RBP_N.28, align 1
  %EAX207 = add i32 %memload204, %memload205
  %174 = and i32 %EAX207, 255
  %175 = call i32 @llvm.ctpop.i32(i32 %174)
  %176 = and i32 %175, 1
  %PF206 = icmp eq i32 %176, 0
  store i32 %EAX207, ptr %RBP_N.28, align 1
  br label %bb.33

bb.33:                                            ; preds = %bb.32, %bb.29
  %memload208 = load i64, ptr %RBP_N.16, align 1
  %memload209 = load i64, ptr %RBP_N.28, align 1
  %177 = trunc i64 %memload209 to i32
  %RCX210 = sext i32 %177 to i64
  %memref-basereg211 = add i64 %memload208, %RCX210
  %178 = inttoptr i64 %memref-basereg211 to ptr
  store i8 0, ptr %178, align 1
  ret i64 %memload208
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
