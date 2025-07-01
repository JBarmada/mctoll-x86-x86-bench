; ModuleID = 'code.so'
source_filename = "code.so"

@0 = private unnamed_addr constant [10 x i8] c" \00o\00o|\00.|\00", align 1, !ROData_SecInfo !0

declare dso_local ptr @memset(ptr, i32, i64)

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @malloc(i64)

declare dso_local ptr @strcpy(ptr, ptr)

declare dso_local ptr @strcat(ptr, ptr)

declare dso_local i32 @strcmp(ptr, ptr)

declare dso_local ptr @realloc(ptr, i64)

declare dso_local void @free(ptr)

define dso_local i64 @func0(i64 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 88, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.72 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.68 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.64 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 36
  %RBP_N.52 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 40
  %RBP_N.48 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 48
  %RBP_N.40 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 53
  %7 = inttoptr i64 %6 to ptr
  %8 = add i64 %tos, 56
  %RBP_N.32 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 60
  %RBP_N.28 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 64
  %RBP_N.24 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 72
  %RBP_N.16 = inttoptr i64 %11 to ptr
  %12 = add i64 %tos, 80
  %RBP_N.8 = inttoptr i64 %12 to ptr
  %13 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %13 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  %14 = sext i32 0 to i64
  store i64 %14, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  store i32 0, ptr %RBP_N.32, align 1
  %15 = zext i32 3 to i64
  %16 = call ptr @memset(ptr %7, i32 0, i64 %15)
  %RAX = ptrtoint ptr %16 to i64
  %memload = load i64, ptr %RBP_N.8, align 1
  %17 = inttoptr i64 %memload to ptr
  %RAX1 = call i64 @strlen(ptr %17)
  %RAX2 = add i64 %RAX1, 1
  %18 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RAX1, i64 1)
  %CF = extractvalue { i64, i1 } %18, 1
  %19 = and i64 %RAX2, 255
  %20 = call i64 @llvm.ctpop.i64(i64 %19)
  %21 = and i64 %20, 1
  %PF = icmp eq i64 %21, 0
  %ZF = icmp eq i64 %RAX2, 0
  %highbit = and i64 -9223372036854775808, %RAX2
  %SF = icmp ne i64 %highbit, 0
  %22 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %RAX1, i64 1)
  %OF = extractvalue { i64, i1 } %22, 1
  %23 = trunc i64 %RAX2 to i32
  store i32 %23, ptr %RBP_N.40, align 1
  %memload3 = load i32, ptr %RBP_N.40, align 1
  %EAX = add i32 %memload3, 1
  %24 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload3, i32 1)
  %CF4 = extractvalue { i32, i1 } %24, 1
  %25 = and i32 %EAX, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = and i32 %26, 1
  %PF5 = icmp eq i32 %27, 0
  %ZF6 = icmp eq i32 %EAX, 0
  %highbit7 = and i32 -2147483648, %EAX
  %SF8 = icmp ne i32 %highbit7, 0
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload3, i32 1)
  %OF9 = extractvalue { i32, i1 } %28, 1
  %RDI10 = sext i32 %EAX to i64
  %29 = call ptr @malloc(i64 %RDI10)
  %RAX11 = ptrtoint ptr %29 to i64
  store i64 %RAX11, ptr %RBP_N.48, align 1
  %memload12 = load i64, ptr %RBP_N.48, align 1
  %memload13 = load i64, ptr %RBP_N.8, align 1
  %30 = inttoptr i64 %memload12 to ptr
  %31 = inttoptr i64 %memload13 to ptr
  %32 = call ptr @strcpy(ptr %30, ptr %31)
  %RAX14 = ptrtoint ptr %32 to i64
  %memload15 = load i64, ptr %RBP_N.48, align 1
  %33 = inttoptr i64 %memload15 to ptr
  %34 = call ptr @strcat(ptr %33, ptr @0)
  %RAX16 = ptrtoint ptr %34 to i64
  store i32 0, ptr %RBP_N.52, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.29
  %memload17 = load i32, ptr %RBP_N.52, align 1
  %35 = load i32, ptr %RBP_N.40, align 1
  %36 = sub i32 %memload17, %35
  %37 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload17, i32 %35)
  %CF18 = extractvalue { i32, i1 } %37, 1
  %ZF19 = icmp eq i32 %36, 0
  %highbit20 = and i32 -2147483648, %36
  %SF21 = icmp ne i32 %highbit20, 0
  %38 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload17, i32 %35)
  %OF22 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %36, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF23 = icmp eq i32 %41, 0
  %CmpSFOF_JGE = icmp eq i1 %SF21, %OF22
  br i1 %CmpSFOF_JGE, label %bb.30, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload24 = load i64, ptr %RBP_N.48, align 1
  %memload25 = load i64, ptr %RBP_N.52, align 1
  %42 = trunc i64 %memload25 to i32
  %RCX = sext i32 %42 to i64
  %memref-basereg = add i64 %memload24, %RCX
  %43 = inttoptr i64 %memref-basereg to ptr
  %memload26 = load i32, ptr %43, align 1
  %44 = trunc i32 %memload26 to i8
  %EAX27 = sext i8 %44 to i32
  %45 = sub i32 %EAX27, 32
  %46 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX27, i32 32)
  %CF28 = extractvalue { i32, i1 } %46, 1
  %ZF29 = icmp eq i32 %45, 0
  %highbit30 = and i32 -2147483648, %45
  %SF31 = icmp ne i32 %highbit30, 0
  %47 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX27, i32 32)
  %OF32 = extractvalue { i32, i1 } %47, 1
  %48 = and i32 %45, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48)
  %50 = and i32 %49, 1
  %PF33 = icmp eq i32 %50, 0
  %CmpZF_JNE = icmp eq i1 %ZF29, false
  br i1 %CmpZF_JNE, label %bb.25, label %bb.3

bb.3:                                             ; preds = %bb.2
  %EAX36 = call i32 @strcmp(ptr %7, ptr getelementptr inbounds ([10 x i8], ptr @0, i32 0, i32 2))
  %51 = sub i32 %EAX36, 0
  %52 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX36, i32 0)
  %CF37 = extractvalue { i32, i1 } %52, 1
  %ZF38 = icmp eq i32 %51, 0
  %highbit39 = and i32 -2147483648, %51
  %SF40 = icmp ne i32 %highbit39, 0
  %53 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX36, i32 0)
  %OF41 = extractvalue { i32, i1 } %53, 1
  %54 = and i32 %51, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54)
  %56 = and i32 %55, 1
  %PF42 = icmp eq i32 %56, 0
  %CmpZF_JNE207 = icmp eq i1 %ZF38, false
  br i1 %CmpZF_JNE207, label %bb.10, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload43 = load i32, ptr %RBP_N.28, align 1
  %57 = load i32, ptr %RBP_N.32, align 1
  %58 = sub i32 %memload43, %57
  %59 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload43, i32 %57)
  %CF44 = extractvalue { i32, i1 } %59, 1
  %ZF45 = icmp eq i32 %58, 0
  %highbit46 = and i32 -2147483648, %58
  %SF47 = icmp ne i32 %highbit46, 0
  %60 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload43, i32 %57)
  %OF48 = extractvalue { i32, i1 } %60, 1
  %61 = and i32 %58, 255
  %62 = call i32 @llvm.ctpop.i32(i32 %61)
  %63 = and i32 %62, 1
  %PF49 = icmp eq i32 %63, 0
  %CmpZF_JNE208 = icmp eq i1 %ZF45, false
  br i1 %CmpZF_JNE208, label %bb.9, label %bb.5

bb.5:                                             ; preds = %bb.4
  %64 = load i32, ptr %RBP_N.32, align 1
  %65 = zext i32 %64 to i64
  %66 = zext i32 0 to i64
  %67 = sub i64 %65, %66
  %68 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %65, i64 %66)
  %CF50 = extractvalue { i64, i1 } %68, 1
  %ZF51 = icmp eq i64 %67, 0
  %highbit52 = and i64 -9223372036854775808, %67
  %SF53 = icmp ne i64 %highbit52, 0
  %69 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %65, i64 %66)
  %OF54 = extractvalue { i64, i1 } %69, 1
  %70 = and i64 %67, 255
  %71 = call i64 @llvm.ctpop.i64(i64 %70)
  %72 = and i64 %71, 1
  %PF55 = icmp eq i64 %72, 0
  %CmpZF_JLE = icmp eq i1 %ZF51, true
  %CmpOF_JLE = icmp ne i1 %SF53, %OF54
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload56 = load i32, ptr %RBP_N.32, align 1
  %EAX60 = shl i32 %memload56, 1
  %ZF57 = icmp eq i32 %EAX60, 0
  %highbit58 = and i32 -2147483648, %EAX60
  %SF59 = icmp ne i32 %highbit58, 0
  store i32 %EAX60, ptr %RBP_N.68, align 1
  br label %bb.8

bb.7:                                             ; preds = %bb.5
  store i32 4, ptr %RBP_N.68, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.6
  %memload61 = load i32, ptr %RBP_N.68, align 1
  store i32 %memload61, ptr %RBP_N.32, align 1
  %memload62 = load i64, ptr %RBP_N.24, align 1
  %memload63 = load i64, ptr %RBP_N.32, align 1
  %73 = trunc i64 %memload63 to i32
  %RSI64 = sext i32 %73 to i64
  %RSI68 = shl i64 %RSI64, 2
  %ZF65 = icmp eq i64 %RSI68, 0
  %highbit66 = and i64 -9223372036854775808, %RSI68
  %SF67 = icmp ne i64 %highbit66, 0
  %74 = inttoptr i64 %memload62 to ptr
  %75 = call ptr @realloc(ptr %74, i64 %RSI68)
  %RAX69 = ptrtoint ptr %75 to i64
  store i64 %RAX69, ptr %RBP_N.24, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.4
  %memload70 = load i64, ptr %RBP_N.24, align 1
  %memload71 = load i32, ptr %RBP_N.28, align 1
  %EDX = add i32 %memload71, 1
  %76 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload71, i32 1)
  %CF72 = extractvalue { i32, i1 } %76, 1
  %77 = and i32 %EDX, 255
  %78 = call i32 @llvm.ctpop.i32(i32 %77)
  %79 = and i32 %78, 1
  %PF73 = icmp eq i32 %79, 0
  %ZF74 = icmp eq i32 %EDX, 0
  %highbit75 = and i32 -2147483648, %EDX
  %SF76 = icmp ne i32 %highbit75, 0
  %80 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload71, i32 1)
  %OF77 = extractvalue { i32, i1 } %80, 1
  store i32 %EDX, ptr %RBP_N.28, align 1
  %RCX78 = sext i32 %memload71 to i64
  %memref-idxreg = mul i64 4, %RCX78
  %memref-basereg79 = add i64 %memload70, %memref-idxreg
  %81 = inttoptr i64 %memref-basereg79 to ptr
  store i32 4, ptr %81, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.3
  %EAX82 = call i32 @strcmp(ptr %7, ptr getelementptr inbounds ([10 x i8], ptr @0, i32 0, i32 4))
  %82 = sub i32 %EAX82, 0
  %83 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX82, i32 0)
  %CF83 = extractvalue { i32, i1 } %83, 1
  %ZF84 = icmp eq i32 %82, 0
  %highbit85 = and i32 -2147483648, %82
  %SF86 = icmp ne i32 %highbit85, 0
  %84 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX82, i32 0)
  %OF87 = extractvalue { i32, i1 } %84, 1
  %85 = and i32 %82, 255
  %86 = call i32 @llvm.ctpop.i32(i32 %85)
  %87 = and i32 %86, 1
  %PF88 = icmp eq i32 %87, 0
  %CmpZF_JNE209 = icmp eq i1 %ZF84, false
  br i1 %CmpZF_JNE209, label %bb.17, label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload89 = load i32, ptr %RBP_N.28, align 1
  %88 = load i32, ptr %RBP_N.32, align 1
  %89 = sub i32 %memload89, %88
  %90 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload89, i32 %88)
  %CF90 = extractvalue { i32, i1 } %90, 1
  %ZF91 = icmp eq i32 %89, 0
  %highbit92 = and i32 -2147483648, %89
  %SF93 = icmp ne i32 %highbit92, 0
  %91 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload89, i32 %88)
  %OF94 = extractvalue { i32, i1 } %91, 1
  %92 = and i32 %89, 255
  %93 = call i32 @llvm.ctpop.i32(i32 %92)
  %94 = and i32 %93, 1
  %PF95 = icmp eq i32 %94, 0
  %CmpZF_JNE210 = icmp eq i1 %ZF91, false
  br i1 %CmpZF_JNE210, label %bb.16, label %bb.12

bb.12:                                            ; preds = %bb.11
  %95 = load i32, ptr %RBP_N.32, align 1
  %96 = zext i32 %95 to i64
  %97 = zext i32 0 to i64
  %98 = sub i64 %96, %97
  %99 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %96, i64 %97)
  %CF96 = extractvalue { i64, i1 } %99, 1
  %ZF97 = icmp eq i64 %98, 0
  %highbit98 = and i64 -9223372036854775808, %98
  %SF99 = icmp ne i64 %highbit98, 0
  %100 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %96, i64 %97)
  %OF100 = extractvalue { i64, i1 } %100, 1
  %101 = and i64 %98, 255
  %102 = call i64 @llvm.ctpop.i64(i64 %101)
  %103 = and i64 %102, 1
  %PF101 = icmp eq i64 %103, 0
  %CmpZF_JLE211 = icmp eq i1 %ZF97, true
  %CmpOF_JLE212 = icmp ne i1 %SF99, %OF100
  %ZFOrSF_JLE213 = or i1 %CmpZF_JLE211, %CmpOF_JLE212
  br i1 %ZFOrSF_JLE213, label %bb.14, label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload102 = load i32, ptr %RBP_N.32, align 1
  %EAX106 = shl i32 %memload102, 1
  %ZF103 = icmp eq i32 %EAX106, 0
  %highbit104 = and i32 -2147483648, %EAX106
  %SF105 = icmp ne i32 %highbit104, 0
  store i32 %EAX106, ptr %RBP_N.72, align 1
  br label %bb.15

bb.14:                                            ; preds = %bb.12
  store i32 4, ptr %RBP_N.72, align 1
  br label %bb.15

bb.15:                                            ; preds = %bb.14, %bb.13
  %memload107 = load i32, ptr %RBP_N.72, align 1
  store i32 %memload107, ptr %RBP_N.32, align 1
  %memload108 = load i64, ptr %RBP_N.24, align 1
  %memload109 = load i64, ptr %RBP_N.32, align 1
  %104 = trunc i64 %memload109 to i32
  %RSI110 = sext i32 %104 to i64
  %RSI114 = shl i64 %RSI110, 2
  %ZF111 = icmp eq i64 %RSI114, 0
  %highbit112 = and i64 -9223372036854775808, %RSI114
  %SF113 = icmp ne i64 %highbit112, 0
  %105 = inttoptr i64 %memload108 to ptr
  %106 = call ptr @realloc(ptr %105, i64 %RSI114)
  %RAX115 = ptrtoint ptr %106 to i64
  store i64 %RAX115, ptr %RBP_N.24, align 1
  br label %bb.16

bb.16:                                            ; preds = %bb.15, %bb.11
  %memload116 = load i64, ptr %RBP_N.24, align 1
  %memload117 = load i32, ptr %RBP_N.28, align 1
  %EDX124 = add i32 %memload117, 1
  %107 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload117, i32 1)
  %CF118 = extractvalue { i32, i1 } %107, 1
  %108 = and i32 %EDX124, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108)
  %110 = and i32 %109, 1
  %PF119 = icmp eq i32 %110, 0
  %ZF120 = icmp eq i32 %EDX124, 0
  %highbit121 = and i32 -2147483648, %EDX124
  %SF122 = icmp ne i32 %highbit121, 0
  %111 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload117, i32 1)
  %OF123 = extractvalue { i32, i1 } %111, 1
  store i32 %EDX124, ptr %RBP_N.28, align 1
  %RCX125 = sext i32 %memload117 to i64
  %memref-idxreg126 = mul i64 4, %RCX125
  %memref-basereg127 = add i64 %memload116, %memref-idxreg126
  %112 = inttoptr i64 %memref-basereg127 to ptr
  store i32 2, ptr %112, align 1
  br label %bb.17

bb.17:                                            ; preds = %bb.16, %bb.10
  %EAX130 = call i32 @strcmp(ptr %7, ptr getelementptr inbounds ([10 x i8], ptr @0, i32 0, i32 7))
  %113 = sub i32 %EAX130, 0
  %114 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX130, i32 0)
  %CF131 = extractvalue { i32, i1 } %114, 1
  %ZF132 = icmp eq i32 %113, 0
  %highbit133 = and i32 -2147483648, %113
  %SF134 = icmp ne i32 %highbit133, 0
  %115 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX130, i32 0)
  %OF135 = extractvalue { i32, i1 } %115, 1
  %116 = and i32 %113, 255
  %117 = call i32 @llvm.ctpop.i32(i32 %116)
  %118 = and i32 %117, 1
  %PF136 = icmp eq i32 %118, 0
  %CmpZF_JNE214 = icmp eq i1 %ZF132, false
  br i1 %CmpZF_JNE214, label %bb.24, label %bb.18

bb.18:                                            ; preds = %bb.17
  %memload137 = load i32, ptr %RBP_N.28, align 1
  %119 = load i32, ptr %RBP_N.32, align 1
  %120 = sub i32 %memload137, %119
  %121 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload137, i32 %119)
  %CF138 = extractvalue { i32, i1 } %121, 1
  %ZF139 = icmp eq i32 %120, 0
  %highbit140 = and i32 -2147483648, %120
  %SF141 = icmp ne i32 %highbit140, 0
  %122 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload137, i32 %119)
  %OF142 = extractvalue { i32, i1 } %122, 1
  %123 = and i32 %120, 255
  %124 = call i32 @llvm.ctpop.i32(i32 %123)
  %125 = and i32 %124, 1
  %PF143 = icmp eq i32 %125, 0
  %CmpZF_JNE215 = icmp eq i1 %ZF139, false
  br i1 %CmpZF_JNE215, label %bb.23, label %bb.19

bb.19:                                            ; preds = %bb.18
  %126 = load i32, ptr %RBP_N.32, align 1
  %127 = zext i32 %126 to i64
  %128 = zext i32 0 to i64
  %129 = sub i64 %127, %128
  %130 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %127, i64 %128)
  %CF144 = extractvalue { i64, i1 } %130, 1
  %ZF145 = icmp eq i64 %129, 0
  %highbit146 = and i64 -9223372036854775808, %129
  %SF147 = icmp ne i64 %highbit146, 0
  %131 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %127, i64 %128)
  %OF148 = extractvalue { i64, i1 } %131, 1
  %132 = and i64 %129, 255
  %133 = call i64 @llvm.ctpop.i64(i64 %132)
  %134 = and i64 %133, 1
  %PF149 = icmp eq i64 %134, 0
  %CmpZF_JLE216 = icmp eq i1 %ZF145, true
  %CmpOF_JLE217 = icmp ne i1 %SF147, %OF148
  %ZFOrSF_JLE218 = or i1 %CmpZF_JLE216, %CmpOF_JLE217
  br i1 %ZFOrSF_JLE218, label %bb.21, label %bb.20

bb.20:                                            ; preds = %bb.19
  %memload150 = load i32, ptr %RBP_N.32, align 1
  %EAX154 = shl i32 %memload150, 1
  %ZF151 = icmp eq i32 %EAX154, 0
  %highbit152 = and i32 -2147483648, %EAX154
  %SF153 = icmp ne i32 %highbit152, 0
  %135 = ptrtoint ptr %stktop_8 to i64
  %136 = add i64 %135, 4
  %137 = inttoptr i64 %136 to ptr
  store i32 %EAX154, ptr %137, align 1
  br label %bb.22

bb.21:                                            ; preds = %bb.19
  %138 = ptrtoint ptr %stktop_8 to i64
  %139 = add i64 %138, 4
  %140 = inttoptr i64 %139 to ptr
  store i32 4, ptr %140, align 1
  br label %bb.22

bb.22:                                            ; preds = %bb.21, %bb.20
  %141 = ptrtoint ptr %stktop_8 to i64
  %142 = add i64 %141, 4
  %143 = inttoptr i64 %142 to ptr
  %memload155 = load i32, ptr %143, align 1
  store i32 %memload155, ptr %RBP_N.32, align 1
  %memload156 = load i64, ptr %RBP_N.24, align 1
  %memload157 = load i64, ptr %RBP_N.32, align 1
  %144 = trunc i64 %memload157 to i32
  %RSI158 = sext i32 %144 to i64
  %RSI162 = shl i64 %RSI158, 2
  %ZF159 = icmp eq i64 %RSI162, 0
  %highbit160 = and i64 -9223372036854775808, %RSI162
  %SF161 = icmp ne i64 %highbit160, 0
  %145 = inttoptr i64 %memload156 to ptr
  %146 = call ptr @realloc(ptr %145, i64 %RSI162)
  %RAX163 = ptrtoint ptr %146 to i64
  store i64 %RAX163, ptr %RBP_N.24, align 1
  br label %bb.23

bb.23:                                            ; preds = %bb.22, %bb.18
  %memload164 = load i64, ptr %RBP_N.24, align 1
  %memload165 = load i32, ptr %RBP_N.28, align 1
  %EDX172 = add i32 %memload165, 1
  %147 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload165, i32 1)
  %CF166 = extractvalue { i32, i1 } %147, 1
  %148 = and i32 %EDX172, 255
  %149 = call i32 @llvm.ctpop.i32(i32 %148)
  %150 = and i32 %149, 1
  %PF167 = icmp eq i32 %150, 0
  %ZF168 = icmp eq i32 %EDX172, 0
  %highbit169 = and i32 -2147483648, %EDX172
  %SF170 = icmp ne i32 %highbit169, 0
  %151 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload165, i32 1)
  %OF171 = extractvalue { i32, i1 } %151, 1
  store i32 %EDX172, ptr %RBP_N.28, align 1
  %RCX173 = sext i32 %memload165 to i64
  %memref-idxreg174 = mul i64 4, %RCX173
  %memref-basereg175 = add i64 %memload164, %memref-idxreg174
  %152 = inttoptr i64 %memref-basereg175 to ptr
  store i32 1, ptr %152, align 1
  br label %bb.24

bb.24:                                            ; preds = %bb.23, %bb.17
  %153 = call ptr @strcpy(ptr %7, ptr getelementptr inbounds ([10 x i8], ptr @0, i32 0, i32 1))
  %RAX178 = ptrtoint ptr %153 to i64
  br label %bb.28

bb.25:                                            ; preds = %bb.2
  %RAX180 = call i64 @strlen(ptr %7)
  store i64 %RAX180, ptr %RBP_N.64, align 1
  %154 = load i64, ptr %RBP_N.64, align 1
  %155 = sub i64 %154, 2
  %156 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %154, i64 2)
  %CF181 = extractvalue { i64, i1 } %156, 1
  %ZF182 = icmp eq i64 %155, 0
  %highbit183 = and i64 -9223372036854775808, %155
  %SF184 = icmp ne i64 %highbit183, 0
  %157 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %154, i64 2)
  %OF185 = extractvalue { i64, i1 } %157, 1
  %158 = and i64 %155, 255
  %159 = call i64 @llvm.ctpop.i64(i64 %158)
  %160 = and i64 %159, 1
  %PF186 = icmp eq i64 %160, 0
  %CFCmp_JAE = icmp eq i1 %CF181, false
  br i1 %CFCmp_JAE, label %bb.27, label %bb.26

bb.26:                                            ; preds = %bb.25
  %memload187 = load i64, ptr %RBP_N.48, align 1
  %memload188 = load i64, ptr %RBP_N.52, align 1
  %161 = trunc i64 %memload188 to i32
  %RCX189 = sext i32 %161 to i64
  %memref-basereg190 = add i64 %memload187, %RCX189
  %162 = inttoptr i64 %memref-basereg190 to ptr
  %memload191 = load i8, ptr %162, align 1
  %memload192 = load i64, ptr %RBP_N.64, align 1
  %163 = getelementptr i8, ptr %7, i64 %memload192
  store i8 %memload191, ptr %163, align 1
  %memload193 = load i64, ptr %RBP_N.64, align 1
  %164 = ptrtoint ptr %7 to i64
  %165 = add i64 %164, 1
  %idx-a194 = add i64 %165, %memload193
  %166 = inttoptr i64 %idx-a194 to ptr
  store i8 0, ptr %166, align 1
  br label %bb.27

bb.27:                                            ; preds = %bb.26, %bb.25
  br label %bb.28

bb.28:                                            ; preds = %bb.27, %bb.24
  br label %bb.29

bb.29:                                            ; preds = %bb.28
  %memload195 = load i32, ptr %RBP_N.52, align 1
  %EAX202 = add i32 %memload195, 1
  %167 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload195, i32 1)
  %CF196 = extractvalue { i32, i1 } %167, 1
  %168 = and i32 %EAX202, 255
  %169 = call i32 @llvm.ctpop.i32(i32 %168)
  %170 = and i32 %169, 1
  %PF197 = icmp eq i32 %170, 0
  %ZF198 = icmp eq i32 %EAX202, 0
  %highbit199 = and i32 -2147483648, %EAX202
  %SF200 = icmp ne i32 %highbit199, 0
  %171 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload195, i32 1)
  %OF201 = extractvalue { i32, i1 } %171, 1
  store i32 %EAX202, ptr %RBP_N.52, align 1
  br label %bb.1

bb.30:                                            ; preds = %bb.1
  %memload203 = load i64, ptr %RBP_N.48, align 1
  %172 = inttoptr i64 %memload203 to ptr
  call void @free(ptr %172)
  %memload204 = load i32, ptr %RBP_N.28, align 1
  %memload205 = load i64, ptr %RBP_N.16, align 1
  %173 = inttoptr i64 %memload205 to ptr
  store i32 %memload204, ptr %173, align 1
  %memload206 = load i64, ptr %RBP_N.24, align 1
  ret i64 %memload206
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #0

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 8192}
