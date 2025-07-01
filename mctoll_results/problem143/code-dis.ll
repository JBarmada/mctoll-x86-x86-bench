; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_4 = alloca i8, i32 28, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.16 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.12 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.8 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i32 0, ptr %RBP_N.16, align 1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.9
  %memload = load i32, ptr %stktop_4, align 1
  %4 = load i32, ptr %RBP_N.12, align 1
  %5 = sub i32 %memload, %4
  %6 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %4)
  %CF = extractvalue { i32, i1 } %6, 1
  %ZF = icmp eq i32 %5, 0
  %highbit = and i32 -2147483648, %5
  %SF = icmp ne i32 %highbit, 0
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %4)
  %OF = extractvalue { i32, i1 } %7, 1
  %8 = and i32 %5, 255
  %9 = call i32 @llvm.ctpop.i32(i32 %8)
  %10 = and i32 %9, 1
  %PF = icmp eq i32 %10, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.10, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i32, ptr %stktop_4, align 1
  %11 = sext i32 %memload1 to i64
  %12 = lshr i64 %11, 32
  %EDX = trunc i64 %12 to i32
  %13 = sext i32 %memload1 to i64
  %14 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %14, 32
  %dividend = or i64 %div_hb_ls, %13
  %15 = sext i32 3 to i64
  %div_q = sdiv i64 %dividend, %15
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %15
  %EDX2 = trunc i64 %div_r to i32
  %16 = sub i32 %EDX2, 0
  %17 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX2, i32 0)
  %CF3 = extractvalue { i32, i1 } %17, 1
  %ZF4 = icmp eq i32 %16, 0
  %highbit5 = and i32 -2147483648, %16
  %SF6 = icmp ne i32 %highbit5, 0
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX2, i32 0)
  %OF7 = extractvalue { i32, i1 } %18, 1
  %19 = and i32 %16, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = and i32 %20, 1
  %PF8 = icmp eq i32 %21, 0
  %CmpZF_JNE = icmp eq i1 %ZF4, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload9 = load i64, ptr %RBP_N.8, align 1
  %memload10 = load i64, ptr %stktop_4, align 1
  %22 = trunc i64 %memload10 to i32
  %RCX = sext i32 %22 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload9, %memref-idxreg
  %23 = inttoptr i64 %memref-basereg to ptr
  %memload11 = load i32, ptr %23, align 1
  %memload12 = load i64, ptr %RBP_N.8, align 1
  %memload13 = load i64, ptr %stktop_4, align 1
  %24 = trunc i64 %memload13 to i32
  %RDX = sext i32 %24 to i64
  %memref-idxreg14 = mul i64 4, %RDX
  %memref-basereg15 = add i64 %memload12, %memref-idxreg14
  %25 = inttoptr i64 %memref-basereg15 to ptr
  %memload16 = load i32, ptr %25, align 1
  %EAX17 = mul i32 %memload11, %memload16
  %memload18 = load i32, ptr %RBP_N.16, align 1
  %EAX20 = add i32 %EAX17, %memload18
  %26 = and i32 %EAX20, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF19 = icmp eq i32 %28, 0
  store i32 %EAX20, ptr %RBP_N.16, align 1
  br label %bb.8

bb.4:                                             ; preds = %bb.2
  %memload21 = load i32, ptr %stktop_4, align 1
  %29 = sext i32 %memload21 to i64
  %30 = lshr i64 %29, 32
  %EDX22 = trunc i64 %30 to i32
  %31 = sext i32 %memload21 to i64
  %32 = sext i32 %EDX22 to i64
  %div_hb_ls23 = shl nuw i64 %32, 32
  %dividend24 = or i64 %div_hb_ls23, %31
  %33 = sext i32 4 to i64
  %div_q25 = sdiv i64 %dividend24, %33
  %EAX26 = trunc i64 %div_q25 to i32
  %div_r27 = srem i64 %dividend24, %33
  %EDX28 = trunc i64 %div_r27 to i32
  %34 = sub i32 %EDX28, 0
  %35 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX28, i32 0)
  %CF29 = extractvalue { i32, i1 } %35, 1
  %ZF30 = icmp eq i32 %34, 0
  %highbit31 = and i32 -2147483648, %34
  %SF32 = icmp ne i32 %highbit31, 0
  %36 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX28, i32 0)
  %OF33 = extractvalue { i32, i1 } %36, 1
  %37 = and i32 %34, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF34 = icmp eq i32 %39, 0
  %CmpZF_JNE76 = icmp eq i1 %ZF30, false
  br i1 %CmpZF_JNE76, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload35 = load i64, ptr %RBP_N.8, align 1
  %memload36 = load i64, ptr %stktop_4, align 1
  %40 = trunc i64 %memload36 to i32
  %RCX37 = sext i32 %40 to i64
  %memref-idxreg38 = mul i64 4, %RCX37
  %memref-basereg39 = add i64 %memload35, %memref-idxreg38
  %41 = inttoptr i64 %memref-basereg39 to ptr
  %memload40 = load i32, ptr %41, align 1
  %memload41 = load i64, ptr %RBP_N.8, align 1
  %memload42 = load i64, ptr %stktop_4, align 1
  %42 = trunc i64 %memload42 to i32
  %RDX43 = sext i32 %42 to i64
  %memref-idxreg44 = mul i64 4, %RDX43
  %memref-basereg45 = add i64 %memload41, %memref-idxreg44
  %43 = inttoptr i64 %memref-basereg45 to ptr
  %memload46 = load i32, ptr %43, align 1
  %EAX47 = mul i32 %memload40, %memload46
  %memload48 = load i64, ptr %RBP_N.8, align 1
  %memload49 = load i64, ptr %stktop_4, align 1
  %44 = trunc i64 %memload49 to i32
  %RDX50 = sext i32 %44 to i64
  %memref-idxreg51 = mul i64 4, %RDX50
  %memref-basereg52 = add i64 %memload48, %memref-idxreg51
  %45 = inttoptr i64 %memref-basereg52 to ptr
  %memload53 = load i32, ptr %45, align 1
  %EAX54 = mul i32 %EAX47, %memload53
  %memload55 = load i32, ptr %RBP_N.16, align 1
  %EAX57 = add i32 %EAX54, %memload55
  %46 = and i32 %EAX57, 255
  %47 = call i32 @llvm.ctpop.i32(i32 %46)
  %48 = and i32 %47, 1
  %PF56 = icmp eq i32 %48, 0
  store i32 %EAX57, ptr %RBP_N.16, align 1
  br label %bb.7

bb.6:                                             ; preds = %bb.4
  %memload58 = load i64, ptr %RBP_N.8, align 1
  %memload59 = load i64, ptr %stktop_4, align 1
  %49 = trunc i64 %memload59 to i32
  %RCX60 = sext i32 %49 to i64
  %memref-idxreg61 = mul i64 4, %RCX60
  %memref-basereg62 = add i64 %memload58, %memref-idxreg61
  %50 = inttoptr i64 %memref-basereg62 to ptr
  %memload63 = load i32, ptr %50, align 1
  %memload64 = load i32, ptr %RBP_N.16, align 1
  %EAX66 = add i32 %memload63, %memload64
  %51 = and i32 %EAX66, 255
  %52 = call i32 @llvm.ctpop.i32(i32 %51)
  %53 = and i32 %52, 1
  %PF65 = icmp eq i32 %53, 0
  store i32 %EAX66, ptr %RBP_N.16, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.5
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.3
  br label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload67 = load i32, ptr %stktop_4, align 1
  %EAX74 = add i32 %memload67, 1
  %54 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload67, i32 1)
  %CF68 = extractvalue { i32, i1 } %54, 1
  %55 = and i32 %EAX74, 255
  %56 = call i32 @llvm.ctpop.i32(i32 %55)
  %57 = and i32 %56, 1
  %PF69 = icmp eq i32 %57, 0
  %ZF70 = icmp eq i32 %EAX74, 0
  %highbit71 = and i32 -2147483648, %EAX74
  %SF72 = icmp ne i32 %highbit71, 0
  %58 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload67, i32 1)
  %OF73 = extractvalue { i32, i1 } %58, 1
  store i32 %EAX74, ptr %stktop_4, align 1
  br label %bb.1

bb.10:                                            ; preds = %bb.1
  %memload75 = load i32, ptr %RBP_N.16, align 1
  ret i32 %memload75
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
