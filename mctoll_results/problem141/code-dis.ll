; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

define dso_local i64 @func0(i64 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.12
  %memload = load i64, ptr %RBP_N.28, align 1
  %7 = trunc i64 %memload to i32
  %RAX = sext i32 %7 to i64
  store i64 %RAX, ptr %RBP_N.40, align 1
  %memload1 = load i64, ptr %RBP_N.8, align 1
  %8 = inttoptr i64 %memload1 to ptr
  %RAX2 = call i64 @strlen(ptr %8)
  %memload3 = load i64, ptr %RBP_N.40, align 1
  %9 = sub i64 %memload3, %RAX2
  %10 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %memload3, i64 %RAX2)
  %CF = extractvalue { i64, i1 } %10, 1
  %ZF = icmp eq i64 %9, 0
  %highbit = and i64 -9223372036854775808, %9
  %SF = icmp ne i64 %highbit, 0
  %11 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %memload3, i64 %RAX2)
  %OF = extractvalue { i64, i1 } %11, 1
  %12 = and i64 %9, 255
  %13 = call i64 @llvm.ctpop.i64(i64 %12)
  %14 = and i64 %13, 1
  %PF = icmp eq i64 %14, 0
  %CFCmp_JAE = icmp eq i1 %CF, false
  br i1 %CFCmp_JAE, label %bb.13, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload4 = load i64, ptr %RBP_N.8, align 1
  %memload5 = load i64, ptr %RBP_N.28, align 1
  %15 = trunc i64 %memload5 to i32
  %RCX = sext i32 %15 to i64
  %memref-basereg = add i64 %memload4, %RCX
  %16 = inttoptr i64 %memref-basereg to ptr
  %memload6 = load i32, ptr %16, align 1
  %17 = trunc i32 %memload6 to i8
  %EAX = sext i8 %17 to i32
  %18 = sub i32 %EAX, 32
  %19 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 32)
  %CF7 = extractvalue { i32, i1 } %19, 1
  %ZF8 = icmp eq i32 %18, 0
  %highbit9 = and i32 -2147483648, %18
  %SF10 = icmp ne i32 %highbit9, 0
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 32)
  %OF11 = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %18, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF12 = icmp eq i32 %23, 0
  %CmpZF_JNE = icmp eq i1 %ZF8, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload13 = load i32, ptr %RBP_N.20, align 1
  %EAX20 = add i32 %memload13, 1
  %24 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload13, i32 1)
  %CF14 = extractvalue { i32, i1 } %24, 1
  %25 = and i32 %EAX20, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = and i32 %26, 1
  %PF15 = icmp eq i32 %27, 0
  %ZF16 = icmp eq i32 %EAX20, 0
  %highbit17 = and i32 -2147483648, %EAX20
  %SF18 = icmp ne i32 %highbit17, 0
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload13, i32 1)
  %OF19 = extractvalue { i32, i1 } %28, 1
  store i32 %EAX20, ptr %RBP_N.20, align 1
  br label %bb.11

bb.4:                                             ; preds = %bb.2
  %29 = load i32, ptr %RBP_N.20, align 1
  %30 = zext i32 %29 to i64
  %31 = zext i32 1 to i64
  %32 = sub i64 %30, %31
  %33 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %30, i64 %31)
  %CF21 = extractvalue { i64, i1 } %33, 1
  %ZF22 = icmp eq i64 %32, 0
  %highbit23 = and i64 -9223372036854775808, %32
  %SF24 = icmp ne i64 %highbit23, 0
  %34 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %30, i64 %31)
  %OF25 = extractvalue { i64, i1 } %34, 1
  %35 = and i64 %32, 255
  %36 = call i64 @llvm.ctpop.i64(i64 %35)
  %37 = and i64 %36, 1
  %PF26 = icmp eq i64 %37, 0
  %CmpZF_JNE171 = icmp eq i1 %ZF22, false
  br i1 %CmpZF_JNE171, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload27 = load i64, ptr %RBP_N.16, align 1
  %memload28 = load i32, ptr %RBP_N.24, align 1
  %EDX = add i32 %memload28, 1
  %38 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload28, i32 1)
  %CF29 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %EDX, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF30 = icmp eq i32 %41, 0
  %ZF31 = icmp eq i32 %EDX, 0
  %highbit32 = and i32 -2147483648, %EDX
  %SF33 = icmp ne i32 %highbit32, 0
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload28, i32 1)
  %OF34 = extractvalue { i32, i1 } %42, 1
  store i32 %EDX, ptr %RBP_N.24, align 1
  %RCX35 = sext i32 %memload28 to i64
  %memref-basereg36 = add i64 %memload27, %RCX35
  %43 = inttoptr i64 %memref-basereg36 to ptr
  store i8 95, ptr %43, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  %44 = load i32, ptr %RBP_N.20, align 1
  %45 = zext i32 %44 to i64
  %46 = zext i32 2 to i64
  %47 = sub i64 %45, %46
  %48 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %45, i64 %46)
  %CF37 = extractvalue { i64, i1 } %48, 1
  %ZF38 = icmp eq i64 %47, 0
  %highbit39 = and i64 -9223372036854775808, %47
  %SF40 = icmp ne i64 %highbit39, 0
  %49 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %45, i64 %46)
  %OF41 = extractvalue { i64, i1 } %49, 1
  %50 = and i64 %47, 255
  %51 = call i64 @llvm.ctpop.i64(i64 %50)
  %52 = and i64 %51, 1
  %PF42 = icmp eq i64 %52, 0
  %CmpZF_JNE172 = icmp eq i1 %ZF38, false
  br i1 %CmpZF_JNE172, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload43 = load i64, ptr %RBP_N.16, align 1
  %memload44 = load i32, ptr %RBP_N.24, align 1
  %EDX51 = add i32 %memload44, 1
  %53 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload44, i32 1)
  %CF45 = extractvalue { i32, i1 } %53, 1
  %54 = and i32 %EDX51, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54)
  %56 = and i32 %55, 1
  %PF46 = icmp eq i32 %56, 0
  %ZF47 = icmp eq i32 %EDX51, 0
  %highbit48 = and i32 -2147483648, %EDX51
  %SF49 = icmp ne i32 %highbit48, 0
  %57 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload44, i32 1)
  %OF50 = extractvalue { i32, i1 } %57, 1
  store i32 %EDX51, ptr %RBP_N.24, align 1
  %RCX52 = sext i32 %memload44 to i64
  %memref-basereg53 = add i64 %memload43, %RCX52
  %58 = inttoptr i64 %memref-basereg53 to ptr
  store i8 95, ptr %58, align 1
  %memload54 = load i64, ptr %RBP_N.16, align 1
  %memload55 = load i32, ptr %RBP_N.24, align 1
  %EDX62 = add i32 %memload55, 1
  %59 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload55, i32 1)
  %CF56 = extractvalue { i32, i1 } %59, 1
  %60 = and i32 %EDX62, 255
  %61 = call i32 @llvm.ctpop.i32(i32 %60)
  %62 = and i32 %61, 1
  %PF57 = icmp eq i32 %62, 0
  %ZF58 = icmp eq i32 %EDX62, 0
  %highbit59 = and i32 -2147483648, %EDX62
  %SF60 = icmp ne i32 %highbit59, 0
  %63 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload55, i32 1)
  %OF61 = extractvalue { i32, i1 } %63, 1
  store i32 %EDX62, ptr %RBP_N.24, align 1
  %RCX63 = sext i32 %memload55 to i64
  %memref-basereg64 = add i64 %memload54, %RCX63
  %64 = inttoptr i64 %memref-basereg64 to ptr
  store i8 95, ptr %64, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.6
  %65 = load i32, ptr %RBP_N.20, align 1
  %66 = zext i32 %65 to i64
  %67 = zext i32 2 to i64
  %68 = sub i64 %66, %67
  %69 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %66, i64 %67)
  %CF65 = extractvalue { i64, i1 } %69, 1
  %ZF66 = icmp eq i64 %68, 0
  %highbit67 = and i64 -9223372036854775808, %68
  %SF68 = icmp ne i64 %highbit67, 0
  %70 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %66, i64 %67)
  %OF69 = extractvalue { i64, i1 } %70, 1
  %71 = and i64 %68, 255
  %72 = call i64 @llvm.ctpop.i64(i64 %71)
  %73 = and i64 %72, 1
  %PF70 = icmp eq i64 %73, 0
  %CmpZF_JLE = icmp eq i1 %ZF66, true
  %CmpOF_JLE = icmp ne i1 %SF68, %OF69
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload71 = load i64, ptr %RBP_N.16, align 1
  %memload72 = load i32, ptr %RBP_N.24, align 1
  %EDX79 = add i32 %memload72, 1
  %74 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload72, i32 1)
  %CF73 = extractvalue { i32, i1 } %74, 1
  %75 = and i32 %EDX79, 255
  %76 = call i32 @llvm.ctpop.i32(i32 %75)
  %77 = and i32 %76, 1
  %PF74 = icmp eq i32 %77, 0
  %ZF75 = icmp eq i32 %EDX79, 0
  %highbit76 = and i32 -2147483648, %EDX79
  %SF77 = icmp ne i32 %highbit76, 0
  %78 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload72, i32 1)
  %OF78 = extractvalue { i32, i1 } %78, 1
  store i32 %EDX79, ptr %RBP_N.24, align 1
  %RCX80 = sext i32 %memload72 to i64
  %memref-basereg81 = add i64 %memload71, %RCX80
  %79 = inttoptr i64 %memref-basereg81 to ptr
  store i8 45, ptr %79, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.8
  store i32 0, ptr %RBP_N.20, align 1
  %memload82 = load i64, ptr %RBP_N.8, align 1
  %memload83 = load i64, ptr %RBP_N.28, align 1
  %80 = trunc i64 %memload83 to i32
  %RCX84 = sext i32 %80 to i64
  %memref-basereg85 = add i64 %memload82, %RCX84
  %81 = inttoptr i64 %memref-basereg85 to ptr
  %memload86 = load i8, ptr %81, align 1
  %memload87 = load i64, ptr %RBP_N.16, align 1
  %memload88 = load i32, ptr %RBP_N.24, align 1
  %ESI = add i32 %memload88, 1
  %82 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload88, i32 1)
  %CF89 = extractvalue { i32, i1 } %82, 1
  %83 = and i32 %ESI, 255
  %84 = call i32 @llvm.ctpop.i32(i32 %83)
  %85 = and i32 %84, 1
  %PF90 = icmp eq i32 %85, 0
  %ZF91 = icmp eq i32 %ESI, 0
  %highbit92 = and i32 -2147483648, %ESI
  %SF93 = icmp ne i32 %highbit92, 0
  %86 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload88, i32 1)
  %OF94 = extractvalue { i32, i1 } %86, 1
  store i32 %ESI, ptr %RBP_N.24, align 1
  %RCX95 = sext i32 %memload88 to i64
  %memref-basereg96 = add i64 %memload87, %RCX95
  %87 = inttoptr i64 %memref-basereg96 to ptr
  store i8 %memload86, ptr %87, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.3
  br label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload97 = load i32, ptr %RBP_N.28, align 1
  %EAX104 = add i32 %memload97, 1
  %88 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload97, i32 1)
  %CF98 = extractvalue { i32, i1 } %88, 1
  %89 = and i32 %EAX104, 255
  %90 = call i32 @llvm.ctpop.i32(i32 %89)
  %91 = and i32 %90, 1
  %PF99 = icmp eq i32 %91, 0
  %ZF100 = icmp eq i32 %EAX104, 0
  %highbit101 = and i32 -2147483648, %EAX104
  %SF102 = icmp ne i32 %highbit101, 0
  %92 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload97, i32 1)
  %OF103 = extractvalue { i32, i1 } %92, 1
  store i32 %EAX104, ptr %RBP_N.28, align 1
  br label %bb.1

bb.13:                                            ; preds = %bb.1
  %93 = load i32, ptr %RBP_N.20, align 1
  %94 = zext i32 %93 to i64
  %95 = zext i32 1 to i64
  %96 = sub i64 %94, %95
  %97 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %94, i64 %95)
  %CF105 = extractvalue { i64, i1 } %97, 1
  %ZF106 = icmp eq i64 %96, 0
  %highbit107 = and i64 -9223372036854775808, %96
  %SF108 = icmp ne i64 %highbit107, 0
  %98 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %94, i64 %95)
  %OF109 = extractvalue { i64, i1 } %98, 1
  %99 = and i64 %96, 255
  %100 = call i64 @llvm.ctpop.i64(i64 %99)
  %101 = and i64 %100, 1
  %PF110 = icmp eq i64 %101, 0
  %CmpZF_JNE173 = icmp eq i1 %ZF106, false
  br i1 %CmpZF_JNE173, label %bb.15, label %bb.14

bb.14:                                            ; preds = %bb.13
  %memload111 = load i64, ptr %RBP_N.16, align 1
  %memload112 = load i32, ptr %RBP_N.24, align 1
  %EDX119 = add i32 %memload112, 1
  %102 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload112, i32 1)
  %CF113 = extractvalue { i32, i1 } %102, 1
  %103 = and i32 %EDX119, 255
  %104 = call i32 @llvm.ctpop.i32(i32 %103)
  %105 = and i32 %104, 1
  %PF114 = icmp eq i32 %105, 0
  %ZF115 = icmp eq i32 %EDX119, 0
  %highbit116 = and i32 -2147483648, %EDX119
  %SF117 = icmp ne i32 %highbit116, 0
  %106 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload112, i32 1)
  %OF118 = extractvalue { i32, i1 } %106, 1
  store i32 %EDX119, ptr %RBP_N.24, align 1
  %RCX120 = sext i32 %memload112 to i64
  %memref-basereg121 = add i64 %memload111, %RCX120
  %107 = inttoptr i64 %memref-basereg121 to ptr
  store i8 95, ptr %107, align 1
  br label %bb.15

bb.15:                                            ; preds = %bb.14, %bb.13
  %108 = load i32, ptr %RBP_N.20, align 1
  %109 = zext i32 %108 to i64
  %110 = zext i32 2 to i64
  %111 = sub i64 %109, %110
  %112 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %109, i64 %110)
  %CF122 = extractvalue { i64, i1 } %112, 1
  %ZF123 = icmp eq i64 %111, 0
  %highbit124 = and i64 -9223372036854775808, %111
  %SF125 = icmp ne i64 %highbit124, 0
  %113 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %109, i64 %110)
  %OF126 = extractvalue { i64, i1 } %113, 1
  %114 = and i64 %111, 255
  %115 = call i64 @llvm.ctpop.i64(i64 %114)
  %116 = and i64 %115, 1
  %PF127 = icmp eq i64 %116, 0
  %CmpZF_JNE174 = icmp eq i1 %ZF123, false
  br i1 %CmpZF_JNE174, label %bb.17, label %bb.16

bb.16:                                            ; preds = %bb.15
  %memload128 = load i64, ptr %RBP_N.16, align 1
  %memload129 = load i32, ptr %RBP_N.24, align 1
  %EDX136 = add i32 %memload129, 1
  %117 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload129, i32 1)
  %CF130 = extractvalue { i32, i1 } %117, 1
  %118 = and i32 %EDX136, 255
  %119 = call i32 @llvm.ctpop.i32(i32 %118)
  %120 = and i32 %119, 1
  %PF131 = icmp eq i32 %120, 0
  %ZF132 = icmp eq i32 %EDX136, 0
  %highbit133 = and i32 -2147483648, %EDX136
  %SF134 = icmp ne i32 %highbit133, 0
  %121 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload129, i32 1)
  %OF135 = extractvalue { i32, i1 } %121, 1
  store i32 %EDX136, ptr %RBP_N.24, align 1
  %RCX137 = sext i32 %memload129 to i64
  %memref-basereg138 = add i64 %memload128, %RCX137
  %122 = inttoptr i64 %memref-basereg138 to ptr
  store i8 95, ptr %122, align 1
  %memload139 = load i64, ptr %RBP_N.16, align 1
  %memload140 = load i32, ptr %RBP_N.24, align 1
  %EDX147 = add i32 %memload140, 1
  %123 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload140, i32 1)
  %CF141 = extractvalue { i32, i1 } %123, 1
  %124 = and i32 %EDX147, 255
  %125 = call i32 @llvm.ctpop.i32(i32 %124)
  %126 = and i32 %125, 1
  %PF142 = icmp eq i32 %126, 0
  %ZF143 = icmp eq i32 %EDX147, 0
  %highbit144 = and i32 -2147483648, %EDX147
  %SF145 = icmp ne i32 %highbit144, 0
  %127 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload140, i32 1)
  %OF146 = extractvalue { i32, i1 } %127, 1
  store i32 %EDX147, ptr %RBP_N.24, align 1
  %RCX148 = sext i32 %memload140 to i64
  %memref-basereg149 = add i64 %memload139, %RCX148
  %128 = inttoptr i64 %memref-basereg149 to ptr
  store i8 95, ptr %128, align 1
  br label %bb.17

bb.17:                                            ; preds = %bb.16, %bb.15
  %129 = load i32, ptr %RBP_N.20, align 1
  %130 = zext i32 %129 to i64
  %131 = zext i32 2 to i64
  %132 = sub i64 %130, %131
  %133 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %130, i64 %131)
  %CF150 = extractvalue { i64, i1 } %133, 1
  %ZF151 = icmp eq i64 %132, 0
  %highbit152 = and i64 -9223372036854775808, %132
  %SF153 = icmp ne i64 %highbit152, 0
  %134 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %130, i64 %131)
  %OF154 = extractvalue { i64, i1 } %134, 1
  %135 = and i64 %132, 255
  %136 = call i64 @llvm.ctpop.i64(i64 %135)
  %137 = and i64 %136, 1
  %PF155 = icmp eq i64 %137, 0
  %CmpZF_JLE175 = icmp eq i1 %ZF151, true
  %CmpOF_JLE176 = icmp ne i1 %SF153, %OF154
  %ZFOrSF_JLE177 = or i1 %CmpZF_JLE175, %CmpOF_JLE176
  br i1 %ZFOrSF_JLE177, label %bb.19, label %bb.18

bb.18:                                            ; preds = %bb.17
  %memload156 = load i64, ptr %RBP_N.16, align 1
  %memload157 = load i32, ptr %RBP_N.24, align 1
  %EDX164 = add i32 %memload157, 1
  %138 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload157, i32 1)
  %CF158 = extractvalue { i32, i1 } %138, 1
  %139 = and i32 %EDX164, 255
  %140 = call i32 @llvm.ctpop.i32(i32 %139)
  %141 = and i32 %140, 1
  %PF159 = icmp eq i32 %141, 0
  %ZF160 = icmp eq i32 %EDX164, 0
  %highbit161 = and i32 -2147483648, %EDX164
  %SF162 = icmp ne i32 %highbit161, 0
  %142 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload157, i32 1)
  %OF163 = extractvalue { i32, i1 } %142, 1
  store i32 %EDX164, ptr %RBP_N.24, align 1
  %RCX165 = sext i32 %memload157 to i64
  %memref-basereg166 = add i64 %memload156, %RCX165
  %143 = inttoptr i64 %memref-basereg166 to ptr
  store i8 45, ptr %143, align 1
  br label %bb.19

bb.19:                                            ; preds = %bb.18, %bb.17
  %memload167 = load i64, ptr %RBP_N.16, align 1
  %memload168 = load i64, ptr %RBP_N.24, align 1
  %144 = trunc i64 %memload168 to i32
  %RCX169 = sext i32 %144 to i64
  %memref-basereg170 = add i64 %memload167, %RCX169
  %145 = inttoptr i64 %memref-basereg170 to ptr
  store i8 0, ptr %145, align 1
  ret i64 %memload167
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

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
