; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i32 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 28
  %RBP_N.12 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.12, align 1
  %memload = load i32, ptr %RBP_N.12, align 1
  %EAX = add i32 %memload, 1
  %4 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload, i32 1)
  %CF = extractvalue { i32, i1 } %4, 1
  %5 = and i32 %EAX, 255
  %6 = call i32 @llvm.ctpop.i32(i32 %5)
  %7 = and i32 %6, 1
  %PF = icmp eq i32 %7, 0
  %ZF = icmp eq i32 %EAX, 0
  %highbit = and i32 -2147483648, %EAX
  %SF = icmp ne i32 %highbit, 0
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload, i32 1)
  %OF = extractvalue { i32, i1 } %8, 1
  %RDI = sext i32 %EAX to i64
  %RDI4 = shl i64 %RDI, 2
  %ZF1 = icmp eq i64 %RDI4, 0
  %highbit2 = and i64 -9223372036854775808, %RDI4
  %SF3 = icmp ne i64 %highbit2, 0
  %9 = call ptr @malloc(i64 %RDI4)
  %RAX = ptrtoint ptr %9 to i64
  store i64 %RAX, ptr %RBP_N.24, align 1
  %memload5 = load i64, ptr %RBP_N.24, align 1
  %10 = inttoptr i64 %memload5 to ptr
  store i32 1, ptr %10, align 1
  %11 = load i32, ptr %RBP_N.12, align 1
  %12 = zext i32 %11 to i64
  %13 = zext i32 0 to i64
  %14 = sub i64 %12, %13
  %15 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %12, i64 %13)
  %CF6 = extractvalue { i64, i1 } %15, 1
  %ZF7 = icmp eq i64 %14, 0
  %highbit8 = and i64 -9223372036854775808, %14
  %SF9 = icmp ne i64 %highbit8, 0
  %16 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %12, i64 %13)
  %OF10 = extractvalue { i64, i1 } %16, 1
  %17 = and i64 %14, 255
  %18 = call i64 @llvm.ctpop.i64(i64 %17)
  %19 = and i64 %18, 1
  %PF11 = icmp eq i64 %19, 0
  %CmpZF_JNE = icmp eq i1 %ZF7, false
  br i1 %CmpZF_JNE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %memload12 = load i64, ptr %RBP_N.24, align 1
  store i64 %memload12, ptr %RBP_N.8, align 1
  br label %bb.10

bb.2:                                             ; preds = %entry
  %memload13 = load i64, ptr %RBP_N.24, align 1
  %memref-disp = add i64 %memload13, 4
  %20 = inttoptr i64 %memref-disp to ptr
  store i32 3, ptr %20, align 1
  %21 = ptrtoint ptr %stktop_8 to i64
  %22 = add i64 %21, 4
  %23 = inttoptr i64 %22 to ptr
  store i32 2, ptr %23, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.8
  %24 = ptrtoint ptr %stktop_8 to i64
  %25 = add i64 %24, 4
  %26 = inttoptr i64 %25 to ptr
  %memload14 = load i32, ptr %26, align 1
  %27 = load i32, ptr %RBP_N.12, align 1
  %28 = sub i32 %memload14, %27
  %29 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload14, i32 %27)
  %CF15 = extractvalue { i32, i1 } %29, 1
  %ZF16 = icmp eq i32 %28, 0
  %highbit17 = and i32 -2147483648, %28
  %SF18 = icmp ne i32 %highbit17, 0
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload14, i32 %27)
  %OF19 = extractvalue { i32, i1 } %30, 1
  %31 = and i32 %28, 255
  %32 = call i32 @llvm.ctpop.i32(i32 %31)
  %33 = and i32 %32, 1
  %PF20 = icmp eq i32 %33, 0
  %ZFCmp_JG = icmp eq i1 %ZF16, false
  %SFOFCmp_JG = icmp eq i1 %SF18, %OF19
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.9, label %bb.4

bb.4:                                             ; preds = %bb.3
  %34 = ptrtoint ptr %stktop_8 to i64
  %35 = add i64 %34, 4
  %36 = inttoptr i64 %35 to ptr
  %memload21 = load i32, ptr %36, align 1
  %37 = sext i32 %memload21 to i64
  %38 = lshr i64 %37, 32
  %EDX = trunc i64 %38 to i32
  %39 = sext i32 %memload21 to i64
  %40 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %40, 32
  %dividend = or i64 %div_hb_ls, %39
  %41 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %41
  %EAX22 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %41
  %EDX23 = trunc i64 %div_r to i32
  %42 = sub i32 %EDX23, 0
  %43 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX23, i32 0)
  %CF24 = extractvalue { i32, i1 } %43, 1
  %ZF25 = icmp eq i32 %42, 0
  %highbit26 = and i32 -2147483648, %42
  %SF27 = icmp ne i32 %highbit26, 0
  %44 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX23, i32 0)
  %OF28 = extractvalue { i32, i1 } %44, 1
  %45 = and i32 %42, 255
  %46 = call i32 @llvm.ctpop.i32(i32 %45)
  %47 = and i32 %46, 1
  %PF29 = icmp eq i32 %47, 0
  %CmpZF_JNE115 = icmp eq i1 %ZF25, false
  br i1 %CmpZF_JNE115, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %48 = ptrtoint ptr %stktop_8 to i64
  %49 = add i64 %48, 4
  %50 = inttoptr i64 %49 to ptr
  %memload30 = load i32, ptr %50, align 1
  %51 = sext i32 %memload30 to i64
  %52 = lshr i64 %51, 32
  %EDX31 = trunc i64 %52 to i32
  %53 = sext i32 %memload30 to i64
  %54 = sext i32 %EDX31 to i64
  %div_hb_ls32 = shl nuw i64 %54, 32
  %dividend33 = or i64 %div_hb_ls32, %53
  %55 = sext i32 2 to i64
  %div_q34 = sdiv i64 %dividend33, %55
  %EAX35 = trunc i64 %div_q34 to i32
  %div_r36 = srem i64 %dividend33, %55
  %EDX37 = trunc i64 %div_r36 to i32
  %EDX44 = add i32 %EAX35, 1
  %56 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EAX35, i32 1)
  %CF38 = extractvalue { i32, i1 } %56, 1
  %57 = and i32 %EDX44, 255
  %58 = call i32 @llvm.ctpop.i32(i32 %57)
  %59 = and i32 %58, 1
  %PF39 = icmp eq i32 %59, 0
  %ZF40 = icmp eq i32 %EDX44, 0
  %highbit41 = and i32 -2147483648, %EDX44
  %SF42 = icmp ne i32 %highbit41, 0
  %60 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EAX35, i32 1)
  %OF43 = extractvalue { i32, i1 } %60, 1
  %memload45 = load i64, ptr %RBP_N.24, align 1
  %61 = ptrtoint ptr %stktop_8 to i64
  %62 = add i64 %61, 4
  %63 = inttoptr i64 %62 to ptr
  %memload46 = load i64, ptr %63, align 1
  %64 = trunc i64 %memload46 to i32
  %RCX = sext i32 %64 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload45, %memref-idxreg
  %65 = inttoptr i64 %memref-basereg to ptr
  store i32 %EDX44, ptr %65, align 1
  br label %bb.7

bb.6:                                             ; preds = %bb.4
  %memload47 = load i64, ptr %RBP_N.24, align 1
  %66 = ptrtoint ptr %stktop_8 to i64
  %67 = add i64 %66, 4
  %68 = inttoptr i64 %67 to ptr
  %memload48 = load i32, ptr %68, align 1
  %ECX = sub i32 %memload48, 1
  %69 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload48, i32 1)
  %CF49 = extractvalue { i32, i1 } %69, 1
  %70 = and i32 %ECX, 255
  %71 = call i32 @llvm.ctpop.i32(i32 %70)
  %72 = and i32 %71, 1
  %PF50 = icmp eq i32 %72, 0
  %ZF51 = icmp eq i32 %ECX, 0
  %highbit52 = and i32 -2147483648, %ECX
  %SF53 = icmp ne i32 %highbit52, 0
  %73 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload48, i32 1)
  %OF54 = extractvalue { i32, i1 } %73, 1
  %RCX55 = sext i32 %ECX to i64
  %memref-idxreg56 = mul i64 4, %RCX55
  %memref-basereg57 = add i64 %memload47, %memref-idxreg56
  %74 = inttoptr i64 %memref-basereg57 to ptr
  %memload58 = load i32, ptr %74, align 1
  %memload59 = load i64, ptr %RBP_N.24, align 1
  %75 = ptrtoint ptr %stktop_8 to i64
  %76 = add i64 %75, 4
  %77 = inttoptr i64 %76 to ptr
  %memload60 = load i32, ptr %77, align 1
  %EDX67 = sub i32 %memload60, 2
  %78 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload60, i32 2)
  %CF61 = extractvalue { i32, i1 } %78, 1
  %79 = and i32 %EDX67, 255
  %80 = call i32 @llvm.ctpop.i32(i32 %79)
  %81 = and i32 %80, 1
  %PF62 = icmp eq i32 %81, 0
  %ZF63 = icmp eq i32 %EDX67, 0
  %highbit64 = and i32 -2147483648, %EDX67
  %SF65 = icmp ne i32 %highbit64, 0
  %82 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload60, i32 2)
  %OF66 = extractvalue { i32, i1 } %82, 1
  %RDX = sext i32 %EDX67 to i64
  %memref-idxreg68 = mul i64 4, %RDX
  %memref-basereg69 = add i64 %memload59, %memref-idxreg68
  %83 = inttoptr i64 %memref-basereg69 to ptr
  %memload70 = load i32, ptr %83, align 1
  %EAX72 = add i32 %memload58, %memload70
  %84 = and i32 %EAX72, 255
  %85 = call i32 @llvm.ctpop.i32(i32 %84)
  %86 = and i32 %85, 1
  %PF71 = icmp eq i32 %86, 0
  %EAX79 = add i32 %EAX72, 1
  %87 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EAX72, i32 1)
  %CF73 = extractvalue { i32, i1 } %87, 1
  %88 = and i32 %EAX79, 255
  %89 = call i32 @llvm.ctpop.i32(i32 %88)
  %90 = and i32 %89, 1
  %PF74 = icmp eq i32 %90, 0
  %ZF75 = icmp eq i32 %EAX79, 0
  %highbit76 = and i32 -2147483648, %EAX79
  %SF77 = icmp ne i32 %highbit76, 0
  %91 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EAX72, i32 1)
  %OF78 = extractvalue { i32, i1 } %91, 1
  store i32 %EAX79, ptr %stktop_8, align 1
  %92 = ptrtoint ptr %stktop_8 to i64
  %93 = add i64 %92, 4
  %94 = inttoptr i64 %93 to ptr
  %memload80 = load i32, ptr %94, align 1
  %EAX87 = add i32 %memload80, 1
  %95 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload80, i32 1)
  %CF81 = extractvalue { i32, i1 } %95, 1
  %96 = and i32 %EAX87, 255
  %97 = call i32 @llvm.ctpop.i32(i32 %96)
  %98 = and i32 %97, 1
  %PF82 = icmp eq i32 %98, 0
  %ZF83 = icmp eq i32 %EAX87, 0
  %highbit84 = and i32 -2147483648, %EAX87
  %SF85 = icmp ne i32 %highbit84, 0
  %99 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload80, i32 1)
  %OF86 = extractvalue { i32, i1 } %99, 1
  %100 = sext i32 %EAX87 to i64
  %101 = lshr i64 %100, 32
  %EDX88 = trunc i64 %101 to i32
  %102 = sext i32 %EAX87 to i64
  %103 = sext i32 %EDX88 to i64
  %div_hb_ls89 = shl nuw i64 %103, 32
  %dividend90 = or i64 %div_hb_ls89, %102
  %104 = sext i32 2 to i64
  %div_q91 = sdiv i64 %dividend90, %104
  %EAX92 = trunc i64 %div_q91 to i32
  %div_r93 = srem i64 %dividend90, %104
  %EDX94 = trunc i64 %div_r93 to i32
  %memload95 = load i32, ptr %stktop_8, align 1
  %EDX99 = add nsw i32 %memload95, %EAX92
  %highbit96 = and i32 -2147483648, %EDX99
  %SF97 = icmp ne i32 %highbit96, 0
  %ZF98 = icmp eq i32 %EDX99, 0
  %memload100 = load i64, ptr %RBP_N.24, align 1
  %105 = ptrtoint ptr %stktop_8 to i64
  %106 = add i64 %105, 4
  %107 = inttoptr i64 %106 to ptr
  %memload101 = load i64, ptr %107, align 1
  %108 = trunc i64 %memload101 to i32
  %RCX102 = sext i32 %108 to i64
  %memref-idxreg103 = mul i64 4, %RCX102
  %memref-basereg104 = add i64 %memload100, %memref-idxreg103
  %109 = inttoptr i64 %memref-basereg104 to ptr
  store i32 %EDX99, ptr %109, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.5
  br label %bb.8

bb.8:                                             ; preds = %bb.7
  %110 = ptrtoint ptr %stktop_8 to i64
  %111 = add i64 %110, 4
  %112 = inttoptr i64 %111 to ptr
  %memload105 = load i32, ptr %112, align 1
  %EAX112 = add i32 %memload105, 1
  %113 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload105, i32 1)
  %CF106 = extractvalue { i32, i1 } %113, 1
  %114 = and i32 %EAX112, 255
  %115 = call i32 @llvm.ctpop.i32(i32 %114)
  %116 = and i32 %115, 1
  %PF107 = icmp eq i32 %116, 0
  %ZF108 = icmp eq i32 %EAX112, 0
  %highbit109 = and i32 -2147483648, %EAX112
  %SF110 = icmp ne i32 %highbit109, 0
  %117 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload105, i32 1)
  %OF111 = extractvalue { i32, i1 } %117, 1
  %118 = ptrtoint ptr %stktop_8 to i64
  %119 = add i64 %118, 4
  %120 = inttoptr i64 %119 to ptr
  store i32 %EAX112, ptr %120, align 1
  br label %bb.3

bb.9:                                             ; preds = %bb.3
  %memload113 = load i64, ptr %RBP_N.24, align 1
  store i64 %memload113, ptr %RBP_N.8, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.1
  %memload114 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload114
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

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

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
