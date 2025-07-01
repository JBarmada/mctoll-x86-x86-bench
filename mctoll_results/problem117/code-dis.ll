; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_4 = alloca i8, i32 44, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.32 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.28 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.24 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.20 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 28
  %RBP_N.16 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 32
  %RBP_N.12 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 36
  %RBP_N.8 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i32 0, ptr %RBP_N.32, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.17
  %memload = load i32, ptr %RBP_N.32, align 1
  %8 = load i32, ptr %RBP_N.12, align 1
  %9 = sub i32 %memload, %8
  %10 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %8)
  %CF = extractvalue { i32, i1 } %10, 1
  %ZF = icmp eq i32 %9, 0
  %highbit = and i32 -2147483648, %9
  %SF = icmp ne i32 %highbit, 0
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %8)
  %OF = extractvalue { i32, i1 } %11, 1
  %12 = and i32 %9, 255
  %13 = call i32 @llvm.ctpop.i32(i32 %12)
  %14 = and i32 %13, 1
  %PF = icmp eq i32 %14, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.18, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i32, ptr %RBP_N.32, align 1
  %EAX = add i32 %memload1, 1
  %15 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload1, i32 1)
  %CF2 = extractvalue { i32, i1 } %15, 1
  %16 = and i32 %EAX, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = and i32 %17, 1
  %PF3 = icmp eq i32 %18, 0
  %ZF4 = icmp eq i32 %EAX, 0
  %highbit5 = and i32 -2147483648, %EAX
  %SF6 = icmp ne i32 %highbit5, 0
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload1, i32 1)
  %OF7 = extractvalue { i32, i1 } %19, 1
  store i32 %EAX, ptr %stktop_4, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.15
  %memload8 = load i32, ptr %stktop_4, align 1
  %20 = load i32, ptr %RBP_N.12, align 1
  %21 = sub i32 %memload8, %20
  %22 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload8, i32 %20)
  %CF9 = extractvalue { i32, i1 } %22, 1
  %ZF10 = icmp eq i32 %21, 0
  %highbit11 = and i32 -2147483648, %21
  %SF12 = icmp ne i32 %highbit11, 0
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload8, i32 %20)
  %OF13 = extractvalue { i32, i1 } %23, 1
  %24 = and i32 %21, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = and i32 %25, 1
  %PF14 = icmp eq i32 %26, 0
  %CmpSFOF_JGE135 = icmp eq i1 %SF12, %OF13
  br i1 %CmpSFOF_JGE135, label %bb.16, label %bb.4

bb.4:                                             ; preds = %bb.3
  store i32 0, ptr %RBP_N.16, align 1
  %memload15 = load i64, ptr %RBP_N.8, align 1
  %memload16 = load i64, ptr %RBP_N.32, align 1
  %27 = trunc i64 %memload16 to i32
  %RCX = sext i32 %27 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload15, %memref-idxreg
  %28 = inttoptr i64 %memref-basereg to ptr
  %memload17 = load i32, ptr %28, align 1
  store i32 %memload17, ptr %RBP_N.20, align 1
  %memload18 = load i64, ptr %RBP_N.8, align 1
  %memload19 = load i64, ptr %stktop_4, align 1
  %29 = trunc i64 %memload19 to i32
  %RCX20 = sext i32 %29 to i64
  %memref-idxreg21 = mul i64 4, %RCX20
  %memref-basereg22 = add i64 %memload18, %memref-idxreg21
  %30 = inttoptr i64 %memref-basereg22 to ptr
  %memload23 = load i32, ptr %30, align 1
  store i32 %memload23, ptr %RBP_N.24, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.6
  %31 = load i32, ptr %RBP_N.20, align 1
  %32 = zext i32 %31 to i64
  %33 = zext i32 0 to i64
  %34 = sub i64 %32, %33
  %35 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %32, i64 %33)
  %CF24 = extractvalue { i64, i1 } %35, 1
  %ZF25 = icmp eq i64 %34, 0
  %highbit26 = and i64 -9223372036854775808, %34
  %SF27 = icmp ne i64 %highbit26, 0
  %36 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %32, i64 %33)
  %OF28 = extractvalue { i64, i1 } %36, 1
  %37 = and i64 %34, 255
  %38 = call i64 @llvm.ctpop.i64(i64 %37)
  %39 = and i64 %38, 1
  %PF29 = icmp eq i64 %39, 0
  %CmpZF_JLE = icmp eq i1 %ZF25, true
  %CmpOF_JLE = icmp ne i1 %SF27, %OF28
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload30 = load i32, ptr %RBP_N.20, align 1
  %EAX35 = and i32 %memload30, 1
  %40 = and i32 %EAX35, 255
  %41 = call i32 @llvm.ctpop.i32(i32 %40)
  %42 = and i32 %41, 1
  %PF31 = icmp eq i32 %42, 0
  %ZF32 = icmp eq i32 %EAX35, 0
  %highbit33 = and i32 -2147483648, %EAX35
  %SF34 = icmp ne i32 %highbit33, 0
  %memload36 = load i32, ptr %RBP_N.16, align 1
  %EAX38 = add i32 %EAX35, %memload36
  %43 = and i32 %EAX38, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF37 = icmp eq i32 %45, 0
  store i32 %EAX38, ptr %RBP_N.16, align 1
  %memload39 = load i32, ptr %RBP_N.20, align 1
  %EAX43 = lshr i32 %memload39, 1
  %ZF40 = icmp eq i32 %EAX43, 0
  %highbit41 = and i32 -2147483648, %EAX43
  %SF42 = icmp ne i32 %highbit41, 0
  store i32 %EAX43, ptr %RBP_N.20, align 1
  br label %bb.5

bb.7:                                             ; preds = %bb.5
  %memload44 = load i32, ptr %RBP_N.16, align 1
  store i32 %memload44, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.16, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.9
  %46 = load i32, ptr %RBP_N.24, align 1
  %47 = zext i32 %46 to i64
  %48 = zext i32 0 to i64
  %49 = sub i64 %47, %48
  %50 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %47, i64 %48)
  %CF45 = extractvalue { i64, i1 } %50, 1
  %ZF46 = icmp eq i64 %49, 0
  %highbit47 = and i64 -9223372036854775808, %49
  %SF48 = icmp ne i64 %highbit47, 0
  %51 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %47, i64 %48)
  %OF49 = extractvalue { i64, i1 } %51, 1
  %52 = and i64 %49, 255
  %53 = call i64 @llvm.ctpop.i64(i64 %52)
  %54 = and i64 %53, 1
  %PF50 = icmp eq i64 %54, 0
  %CmpZF_JLE136 = icmp eq i1 %ZF46, true
  %CmpOF_JLE137 = icmp ne i1 %SF48, %OF49
  %ZFOrSF_JLE138 = or i1 %CmpZF_JLE136, %CmpOF_JLE137
  br i1 %ZFOrSF_JLE138, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload51 = load i32, ptr %RBP_N.24, align 1
  %EAX56 = and i32 %memload51, 1
  %55 = and i32 %EAX56, 255
  %56 = call i32 @llvm.ctpop.i32(i32 %55)
  %57 = and i32 %56, 1
  %PF52 = icmp eq i32 %57, 0
  %ZF53 = icmp eq i32 %EAX56, 0
  %highbit54 = and i32 -2147483648, %EAX56
  %SF55 = icmp ne i32 %highbit54, 0
  %memload57 = load i32, ptr %RBP_N.16, align 1
  %EAX59 = add i32 %EAX56, %memload57
  %58 = and i32 %EAX59, 255
  %59 = call i32 @llvm.ctpop.i32(i32 %58)
  %60 = and i32 %59, 1
  %PF58 = icmp eq i32 %60, 0
  store i32 %EAX59, ptr %RBP_N.16, align 1
  %memload60 = load i32, ptr %RBP_N.24, align 1
  %EAX64 = lshr i32 %memload60, 1
  %ZF61 = icmp eq i32 %EAX64, 0
  %highbit62 = and i32 -2147483648, %EAX64
  %SF63 = icmp ne i32 %highbit62, 0
  store i32 %EAX64, ptr %RBP_N.24, align 1
  br label %bb.8

bb.10:                                            ; preds = %bb.8
  %memload65 = load i32, ptr %RBP_N.16, align 1
  store i32 %memload65, ptr %RBP_N.24, align 1
  %memload66 = load i32, ptr %RBP_N.24, align 1
  %61 = load i32, ptr %RBP_N.20, align 1
  %62 = sub i32 %memload66, %61
  %63 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload66, i32 %61)
  %CF67 = extractvalue { i32, i1 } %63, 1
  %ZF68 = icmp eq i32 %62, 0
  %highbit69 = and i32 -2147483648, %62
  %SF70 = icmp ne i32 %highbit69, 0
  %64 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload66, i32 %61)
  %OF71 = extractvalue { i32, i1 } %64, 1
  %65 = and i32 %62, 255
  %66 = call i32 @llvm.ctpop.i32(i32 %65)
  %67 = and i32 %66, 1
  %PF72 = icmp eq i32 %67, 0
  %SFAndOF_JL = icmp ne i1 %SF70, %OF71
  br i1 %SFAndOF_JL, label %bb.13, label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload73 = load i32, ptr %RBP_N.24, align 1
  %68 = load i32, ptr %RBP_N.20, align 1
  %69 = sub i32 %memload73, %68
  %70 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload73, i32 %68)
  %CF74 = extractvalue { i32, i1 } %70, 1
  %ZF75 = icmp eq i32 %69, 0
  %highbit76 = and i32 -2147483648, %69
  %SF77 = icmp ne i32 %highbit76, 0
  %71 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload73, i32 %68)
  %OF78 = extractvalue { i32, i1 } %71, 1
  %72 = and i32 %69, 255
  %73 = call i32 @llvm.ctpop.i32(i32 %72)
  %74 = and i32 %73, 1
  %PF79 = icmp eq i32 %74, 0
  %CmpZF_JNE = icmp eq i1 %ZF75, false
  br i1 %CmpZF_JNE, label %bb.14, label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload80 = load i64, ptr %RBP_N.8, align 1
  %memload81 = load i64, ptr %stktop_4, align 1
  %75 = trunc i64 %memload81 to i32
  %RCX82 = sext i32 %75 to i64
  %memref-idxreg83 = mul i64 4, %RCX82
  %memref-basereg84 = add i64 %memload80, %memref-idxreg83
  %76 = inttoptr i64 %memref-basereg84 to ptr
  %memload85 = load i32, ptr %76, align 1
  %memload86 = load i64, ptr %RBP_N.8, align 1
  %memload87 = load i64, ptr %RBP_N.32, align 1
  %77 = trunc i64 %memload87 to i32
  %RDX = sext i32 %77 to i64
  %memref-idxreg88 = mul i64 4, %RDX
  %memref-basereg89 = add i64 %memload86, %memref-idxreg88
  %78 = inttoptr i64 %memref-basereg89 to ptr
  %79 = load i32, ptr %78, align 1
  %80 = sub i32 %memload85, %79
  %81 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload85, i32 %79)
  %CF90 = extractvalue { i32, i1 } %81, 1
  %ZF91 = icmp eq i32 %80, 0
  %highbit92 = and i32 -2147483648, %80
  %SF93 = icmp ne i32 %highbit92, 0
  %82 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload85, i32 %79)
  %OF94 = extractvalue { i32, i1 } %82, 1
  %83 = and i32 %80, 255
  %84 = call i32 @llvm.ctpop.i32(i32 %83)
  %85 = and i32 %84, 1
  %PF95 = icmp eq i32 %85, 0
  %CmpSFOF_JGE139 = icmp eq i1 %SF93, %OF94
  br i1 %CmpSFOF_JGE139, label %bb.14, label %bb.13

bb.13:                                            ; preds = %bb.12, %bb.10
  %memload96 = load i64, ptr %RBP_N.8, align 1
  %memload97 = load i64, ptr %RBP_N.32, align 1
  %86 = trunc i64 %memload97 to i32
  %RCX98 = sext i32 %86 to i64
  %memref-idxreg99 = mul i64 4, %RCX98
  %memref-basereg100 = add i64 %memload96, %memref-idxreg99
  %87 = inttoptr i64 %memref-basereg100 to ptr
  %memload101 = load i32, ptr %87, align 1
  store i32 %memload101, ptr %RBP_N.28, align 1
  %memload102 = load i64, ptr %RBP_N.8, align 1
  %memload103 = load i64, ptr %stktop_4, align 1
  %88 = trunc i64 %memload103 to i32
  %RCX104 = sext i32 %88 to i64
  %memref-idxreg105 = mul i64 4, %RCX104
  %memref-basereg106 = add i64 %memload102, %memref-idxreg105
  %89 = inttoptr i64 %memref-basereg106 to ptr
  %memload107 = load i32, ptr %89, align 1
  %memload108 = load i64, ptr %RBP_N.8, align 1
  %memload109 = load i64, ptr %RBP_N.32, align 1
  %90 = trunc i64 %memload109 to i32
  %RCX110 = sext i32 %90 to i64
  %memref-idxreg111 = mul i64 4, %RCX110
  %memref-basereg112 = add i64 %memload108, %memref-idxreg111
  %91 = inttoptr i64 %memref-basereg112 to ptr
  store i32 %memload107, ptr %91, align 1
  %memload113 = load i32, ptr %RBP_N.28, align 1
  %memload114 = load i64, ptr %RBP_N.8, align 1
  %memload115 = load i64, ptr %stktop_4, align 1
  %92 = trunc i64 %memload115 to i32
  %RCX116 = sext i32 %92 to i64
  %memref-idxreg117 = mul i64 4, %RCX116
  %memref-basereg118 = add i64 %memload114, %memref-idxreg117
  %93 = inttoptr i64 %memref-basereg118 to ptr
  store i32 %memload113, ptr %93, align 1
  br label %bb.14

bb.14:                                            ; preds = %bb.13, %bb.12, %bb.11
  br label %bb.15

bb.15:                                            ; preds = %bb.14
  %memload119 = load i32, ptr %stktop_4, align 1
  %EAX126 = add i32 %memload119, 1
  %94 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload119, i32 1)
  %CF120 = extractvalue { i32, i1 } %94, 1
  %95 = and i32 %EAX126, 255
  %96 = call i32 @llvm.ctpop.i32(i32 %95)
  %97 = and i32 %96, 1
  %PF121 = icmp eq i32 %97, 0
  %ZF122 = icmp eq i32 %EAX126, 0
  %highbit123 = and i32 -2147483648, %EAX126
  %SF124 = icmp ne i32 %highbit123, 0
  %98 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload119, i32 1)
  %OF125 = extractvalue { i32, i1 } %98, 1
  store i32 %EAX126, ptr %stktop_4, align 1
  br label %bb.3

bb.16:                                            ; preds = %bb.3
  br label %bb.17

bb.17:                                            ; preds = %bb.16
  %memload127 = load i32, ptr %RBP_N.32, align 1
  %EAX134 = add i32 %memload127, 1
  %99 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload127, i32 1)
  %CF128 = extractvalue { i32, i1 } %99, 1
  %100 = and i32 %EAX134, 255
  %101 = call i32 @llvm.ctpop.i32(i32 %100)
  %102 = and i32 %101, 1
  %PF129 = icmp eq i32 %102, 0
  %ZF130 = icmp eq i32 %EAX134, 0
  %highbit131 = and i32 -2147483648, %EAX134
  %SF132 = icmp ne i32 %highbit131, 0
  %103 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload127, i32 1)
  %OF133 = extractvalue { i32, i1 } %103, 1
  store i32 %EAX134, ptr %RBP_N.32, align 1
  br label %bb.1

bb.18:                                            ; preds = %bb.1
  ret i32 %memload
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
