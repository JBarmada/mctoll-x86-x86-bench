; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_4 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.28 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 28
  %RBP_N.12 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i32 0, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.11
  %memload = load i32, ptr %RBP_N.20, align 1
  %7 = load i32, ptr %RBP_N.12, align 1
  %8 = sub i32 %memload, %7
  %9 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %7)
  %CF = extractvalue { i32, i1 } %9, 1
  %ZF = icmp eq i32 %8, 0
  %highbit = and i32 -2147483648, %8
  %SF = icmp ne i32 %highbit, 0
  %10 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %7)
  %OF = extractvalue { i32, i1 } %10, 1
  %11 = and i32 %8, 255
  %12 = call i32 @llvm.ctpop.i32(i32 %11)
  %13 = and i32 %12, 1
  %PF = icmp eq i32 %13, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.12, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.8, align 1
  %memload2 = load i64, ptr %RBP_N.20, align 1
  %14 = trunc i64 %memload2 to i32
  %RCX = sext i32 %14 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %15 = inttoptr i64 %memref-basereg to ptr
  %16 = load i32, ptr %15, align 1
  %17 = zext i32 %16 to i64
  %18 = zext i32 10 to i64
  %19 = sub i64 %17, %18
  %20 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %17, i64 %18)
  %CF3 = extractvalue { i64, i1 } %20, 1
  %ZF4 = icmp eq i64 %19, 0
  %highbit5 = and i64 -9223372036854775808, %19
  %SF6 = icmp ne i64 %highbit5, 0
  %21 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %17, i64 %18)
  %OF7 = extractvalue { i64, i1 } %21, 1
  %22 = and i64 %19, 255
  %23 = call i64 @llvm.ctpop.i64(i64 %22)
  %24 = and i64 %23, 1
  %PF8 = icmp eq i64 %24, 0
  %CmpZF_JLE = icmp eq i1 %ZF4, true
  %CmpOF_JLE = icmp ne i1 %SF6, %OF7
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.10, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload9 = load i64, ptr %RBP_N.8, align 1
  %memload10 = load i64, ptr %RBP_N.20, align 1
  %25 = trunc i64 %memload10 to i32
  %RCX11 = sext i32 %25 to i64
  %memref-idxreg12 = mul i64 4, %RCX11
  %memref-basereg13 = add i64 %memload9, %memref-idxreg12
  %26 = inttoptr i64 %memref-basereg13 to ptr
  %memload14 = load i32, ptr %26, align 1
  %27 = sext i32 %memload14 to i64
  %28 = lshr i64 %27, 32
  %EDX = trunc i64 %28 to i32
  %29 = sext i32 %memload14 to i64
  %30 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %30, 32
  %dividend = or i64 %div_hb_ls, %29
  %31 = sext i32 10 to i64
  %div_q = sdiv i64 %dividend, %31
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %31
  %EDX15 = trunc i64 %div_r to i32
  store i32 %EDX15, ptr %RBP_N.28, align 1
  %memload16 = load i64, ptr %RBP_N.8, align 1
  %memload17 = load i64, ptr %RBP_N.20, align 1
  %32 = trunc i64 %memload17 to i32
  %RCX18 = sext i32 %32 to i64
  %memref-idxreg19 = mul i64 4, %RCX18
  %memref-basereg20 = add i64 %memload16, %memref-idxreg19
  %33 = inttoptr i64 %memref-basereg20 to ptr
  %memload21 = load i32, ptr %33, align 1
  store i32 %memload21, ptr %stktop_4, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.5
  %34 = load i32, ptr %stktop_4, align 1
  %35 = zext i32 %34 to i64
  %36 = zext i32 10 to i64
  %37 = sub i64 %35, %36
  %38 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %35, i64 %36)
  %CF22 = extractvalue { i64, i1 } %38, 1
  %ZF23 = icmp eq i64 %37, 0
  %highbit24 = and i64 -9223372036854775808, %37
  %SF25 = icmp ne i64 %highbit24, 0
  %39 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %35, i64 %36)
  %OF26 = extractvalue { i64, i1 } %39, 1
  %40 = and i64 %37, 255
  %41 = call i64 @llvm.ctpop.i64(i64 %40)
  %42 = and i64 %41, 1
  %PF27 = icmp eq i64 %42, 0
  %SFAndOF_JL = icmp ne i1 %SF25, %OF26
  br i1 %SFAndOF_JL, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload28 = load i32, ptr %stktop_4, align 1
  %43 = sext i32 %memload28 to i64
  %44 = lshr i64 %43, 32
  %EDX29 = trunc i64 %44 to i32
  %45 = sext i32 %memload28 to i64
  %46 = sext i32 %EDX29 to i64
  %div_hb_ls30 = shl nuw i64 %46, 32
  %dividend31 = or i64 %div_hb_ls30, %45
  %47 = sext i32 10 to i64
  %div_q32 = sdiv i64 %dividend31, %47
  %EAX33 = trunc i64 %div_q32 to i32
  %div_r34 = srem i64 %dividend31, %47
  %EDX35 = trunc i64 %div_r34 to i32
  store i32 %EAX33, ptr %stktop_4, align 1
  br label %bb.4

bb.6:                                             ; preds = %bb.4
  %memload36 = load i32, ptr %stktop_4, align 1
  store i32 %memload36, ptr %RBP_N.24, align 1
  %memload37 = load i32, ptr %RBP_N.24, align 1
  %48 = sext i32 %memload37 to i64
  %49 = lshr i64 %48, 32
  %EDX38 = trunc i64 %49 to i32
  %50 = sext i32 %memload37 to i64
  %51 = sext i32 %EDX38 to i64
  %div_hb_ls39 = shl nuw i64 %51, 32
  %dividend40 = or i64 %div_hb_ls39, %50
  %52 = sext i32 2 to i64
  %div_q41 = sdiv i64 %dividend40, %52
  %EAX42 = trunc i64 %div_q41 to i32
  %div_r43 = srem i64 %dividend40, %52
  %EDX44 = trunc i64 %div_r43 to i32
  %53 = sub i32 %EDX44, 1
  %54 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX44, i32 1)
  %CF45 = extractvalue { i32, i1 } %54, 1
  %ZF46 = icmp eq i32 %53, 0
  %highbit47 = and i32 -2147483648, %53
  %SF48 = icmp ne i32 %highbit47, 0
  %55 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX44, i32 1)
  %OF49 = extractvalue { i32, i1 } %55, 1
  %56 = and i32 %53, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = and i32 %57, 1
  %PF50 = icmp eq i32 %58, 0
  %CmpZF_JNE = icmp eq i1 %ZF46, false
  br i1 %CmpZF_JNE, label %bb.9, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload51 = load i32, ptr %RBP_N.28, align 1
  %59 = sext i32 %memload51 to i64
  %60 = lshr i64 %59, 32
  %EDX52 = trunc i64 %60 to i32
  %61 = sext i32 %memload51 to i64
  %62 = sext i32 %EDX52 to i64
  %div_hb_ls53 = shl nuw i64 %62, 32
  %dividend54 = or i64 %div_hb_ls53, %61
  %63 = sext i32 2 to i64
  %div_q55 = sdiv i64 %dividend54, %63
  %EAX56 = trunc i64 %div_q55 to i32
  %div_r57 = srem i64 %dividend54, %63
  %EDX58 = trunc i64 %div_r57 to i32
  %64 = sub i32 %EDX58, 1
  %65 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX58, i32 1)
  %CF59 = extractvalue { i32, i1 } %65, 1
  %ZF60 = icmp eq i32 %64, 0
  %highbit61 = and i32 -2147483648, %64
  %SF62 = icmp ne i32 %highbit61, 0
  %66 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX58, i32 1)
  %OF63 = extractvalue { i32, i1 } %66, 1
  %67 = and i32 %64, 255
  %68 = call i32 @llvm.ctpop.i32(i32 %67)
  %69 = and i32 %68, 1
  %PF64 = icmp eq i32 %69, 0
  %CmpZF_JNE82 = icmp eq i1 %ZF60, false
  br i1 %CmpZF_JNE82, label %bb.9, label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload65 = load i32, ptr %RBP_N.16, align 1
  %EAX72 = add i32 %memload65, 1
  %70 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload65, i32 1)
  %CF66 = extractvalue { i32, i1 } %70, 1
  %71 = and i32 %EAX72, 255
  %72 = call i32 @llvm.ctpop.i32(i32 %71)
  %73 = and i32 %72, 1
  %PF67 = icmp eq i32 %73, 0
  %ZF68 = icmp eq i32 %EAX72, 0
  %highbit69 = and i32 -2147483648, %EAX72
  %SF70 = icmp ne i32 %highbit69, 0
  %74 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload65, i32 1)
  %OF71 = extractvalue { i32, i1 } %74, 1
  store i32 %EAX72, ptr %RBP_N.16, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.7, %bb.6
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.2
  br label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload73 = load i32, ptr %RBP_N.20, align 1
  %EAX80 = add i32 %memload73, 1
  %75 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload73, i32 1)
  %CF74 = extractvalue { i32, i1 } %75, 1
  %76 = and i32 %EAX80, 255
  %77 = call i32 @llvm.ctpop.i32(i32 %76)
  %78 = and i32 %77, 1
  %PF75 = icmp eq i32 %78, 0
  %ZF76 = icmp eq i32 %EAX80, 0
  %highbit77 = and i32 -2147483648, %EAX80
  %SF78 = icmp ne i32 %highbit77, 0
  %79 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload73, i32 1)
  %OF79 = extractvalue { i32, i1 } %79, 1
  store i32 %EAX80, ptr %RBP_N.20, align 1
  br label %bb.1

bb.12:                                            ; preds = %bb.1
  %memload81 = load i32, ptr %RBP_N.16, align 1
  ret i32 %memload81
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
