; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i32 %arg1) {
entry:
  %EAX-SKT-LOC = alloca i64, align 8
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 52
  %RBP_N.4 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  %8 = zext i32 8 to i64
  %9 = call ptr @malloc(i64 %8)
  %RAX = ptrtoint ptr %9 to i64
  store i64 %RAX, ptr %RBP_N.16, align 1
  %memload = load i64, ptr %RBP_N.16, align 1
  %10 = inttoptr i64 %memload to ptr
  store i32 0, ptr %10, align 1
  %memload1 = load i64, ptr %RBP_N.16, align 1
  %memref-disp = add i64 %memload1, 4
  %11 = inttoptr i64 %memref-disp to ptr
  store i32 0, ptr %11, align 1
  store i32 1, ptr %RBP_N.20, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.11
  %memload2 = load i32, ptr %RBP_N.20, align 1
  %12 = load i32, ptr %RBP_N.4, align 1
  %13 = sub i32 %memload2, %12
  %14 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload2, i32 %12)
  %CF = extractvalue { i32, i1 } %14, 1
  %ZF = icmp eq i32 %13, 0
  %highbit = and i32 -2147483648, %13
  %SF = icmp ne i32 %highbit, 0
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload2, i32 %12)
  %OF = extractvalue { i32, i1 } %15, 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = and i32 %17, 1
  %PF = icmp eq i32 %18, 0
  %ZFCmp_JG = icmp eq i1 %ZF, false
  %SFOFCmp_JG = icmp eq i1 %SF, %OF
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.12, label %bb.2

bb.2:                                             ; preds = %bb.1
  store i32 0, ptr %RBP_N.24, align 1
  %memload3 = load i32, ptr %RBP_N.20, align 1
  store i32 %memload3, ptr %RBP_N.28, align 1
  %memload4 = load i32, ptr %RBP_N.20, align 1
  store i32 %memload4, ptr %RBP_N.32, align 1
  %19 = zext i32 %memload4 to i64
  store i64 %19, ptr %EAX-SKT-LOC, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.4
  %20 = load i32, ptr %RBP_N.32, align 1
  %21 = zext i32 %20 to i64
  %22 = zext i32 0 to i64
  %23 = sub i64 %21, %22
  %24 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %21, i64 %22)
  %CF5 = extractvalue { i64, i1 } %24, 1
  %ZF6 = icmp eq i64 %23, 0
  %highbit7 = and i64 -9223372036854775808, %23
  %SF8 = icmp ne i64 %highbit7, 0
  %25 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %21, i64 %22)
  %OF9 = extractvalue { i64, i1 } %25, 1
  %26 = and i64 %23, 255
  %27 = call i64 @llvm.ctpop.i64(i64 %26)
  %28 = and i64 %27, 1
  %PF10 = icmp eq i64 %28, 0
  %CmpZF_JE = icmp eq i1 %ZF6, true
  br i1 %CmpZF_JE, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %29 = load i64, ptr %EAX-SKT-LOC, align 1
  %EAX = trunc i64 %29 to i32
  %memload11 = load i32, ptr %RBP_N.24, align 1
  %EAX12 = mul i32 10, %memload11
  store i32 %EAX12, ptr %RBP_N.36, align 1
  %memload13 = load i32, ptr %RBP_N.32, align 1
  %30 = sext i32 %memload13 to i64
  %31 = lshr i64 %30, 32
  %EDX = trunc i64 %31 to i32
  %32 = sext i32 %memload13 to i64
  %33 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %33, 32
  %dividend = or i64 %div_hb_ls, %32
  %34 = sext i32 10 to i64
  %div_q = sdiv i64 %dividend, %34
  %EAX14 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %34
  %EDX15 = trunc i64 %div_r to i32
  %memload16 = load i32, ptr %RBP_N.36, align 1
  %EAX20 = add nsw i32 %memload16, %EDX15
  %highbit17 = and i32 -2147483648, %EAX20
  %SF18 = icmp ne i32 %highbit17, 0
  %ZF19 = icmp eq i32 %EAX20, 0
  store i32 %EAX20, ptr %RBP_N.24, align 1
  %memload21 = load i32, ptr %RBP_N.32, align 1
  %35 = sext i32 %memload21 to i64
  %36 = lshr i64 %35, 32
  %EDX22 = trunc i64 %36 to i32
  %37 = sext i32 %memload21 to i64
  %38 = sext i32 %EDX22 to i64
  %div_hb_ls23 = shl nuw i64 %38, 32
  %dividend24 = or i64 %div_hb_ls23, %37
  %39 = sext i32 10 to i64
  %div_q25 = sdiv i64 %dividend24, %39
  %EAX26 = trunc i64 %div_q25 to i32
  %div_r27 = srem i64 %dividend24, %39
  %EDX28 = trunc i64 %div_r27 to i32
  store i32 %EAX26, ptr %RBP_N.32, align 1
  %40 = zext i32 %EAX26 to i64
  store i64 %40, ptr %EAX-SKT-LOC, align 1
  br label %bb.3

bb.5:                                             ; preds = %bb.3
  %memload29 = load i32, ptr %RBP_N.28, align 1
  %41 = load i32, ptr %RBP_N.24, align 1
  %42 = sub i32 %memload29, %41
  %43 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload29, i32 %41)
  %CF30 = extractvalue { i32, i1 } %43, 1
  %ZF31 = icmp eq i32 %42, 0
  %highbit32 = and i32 -2147483648, %42
  %SF33 = icmp ne i32 %highbit32, 0
  %44 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload29, i32 %41)
  %OF34 = extractvalue { i32, i1 } %44, 1
  %45 = and i32 %42, 255
  %46 = call i32 @llvm.ctpop.i32(i32 %45)
  %47 = and i32 %46, 1
  %PF35 = icmp eq i32 %47, 0
  %CmpZF_JNE = icmp eq i1 %ZF31, false
  br i1 %CmpZF_JNE, label %bb.10, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload36 = load i32, ptr %RBP_N.28, align 1
  %48 = sext i32 %memload36 to i64
  %49 = lshr i64 %48, 32
  %EDX37 = trunc i64 %49 to i32
  %50 = sext i32 %memload36 to i64
  %51 = sext i32 %EDX37 to i64
  %div_hb_ls38 = shl nuw i64 %51, 32
  %dividend39 = or i64 %div_hb_ls38, %50
  %52 = sext i32 2 to i64
  %div_q40 = sdiv i64 %dividend39, %52
  %EAX41 = trunc i64 %div_q40 to i32
  %div_r42 = srem i64 %dividend39, %52
  %EDX43 = trunc i64 %div_r42 to i32
  %53 = sub i32 %EDX43, 0
  %54 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX43, i32 0)
  %CF44 = extractvalue { i32, i1 } %54, 1
  %ZF45 = icmp eq i32 %53, 0
  %highbit46 = and i32 -2147483648, %53
  %SF47 = icmp ne i32 %highbit46, 0
  %55 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX43, i32 0)
  %OF48 = extractvalue { i32, i1 } %55, 1
  %56 = and i32 %53, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = and i32 %57, 1
  %PF49 = icmp eq i32 %58, 0
  %CmpZF_JNE78 = icmp eq i1 %ZF45, false
  br i1 %CmpZF_JNE78, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload50 = load i64, ptr %RBP_N.16, align 1
  %59 = inttoptr i64 %memload50 to ptr
  %memload51 = load i32, ptr %59, align 1
  %ECX = add i32 %memload51, 1
  %60 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload51, i32 1)
  %CF52 = extractvalue { i32, i1 } %60, 1
  %61 = and i32 %ECX, 255
  %62 = call i32 @llvm.ctpop.i32(i32 %61)
  %63 = and i32 %62, 1
  %PF53 = icmp eq i32 %63, 0
  %ZF54 = icmp eq i32 %ECX, 0
  %highbit55 = and i32 -2147483648, %ECX
  %SF56 = icmp ne i32 %highbit55, 0
  %64 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload51, i32 1)
  %OF57 = extractvalue { i32, i1 } %64, 1
  %65 = inttoptr i64 %memload50 to ptr
  store i32 %ECX, ptr %65, align 1
  br label %bb.9

bb.8:                                             ; preds = %bb.6
  %memload58 = load i64, ptr %RBP_N.16, align 1
  %memref-disp59 = add i64 %memload58, 4
  %66 = inttoptr i64 %memref-disp59 to ptr
  %memload60 = load i32, ptr %66, align 1
  %ECX67 = add i32 %memload60, 1
  %67 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload60, i32 1)
  %CF61 = extractvalue { i32, i1 } %67, 1
  %68 = and i32 %ECX67, 255
  %69 = call i32 @llvm.ctpop.i32(i32 %68)
  %70 = and i32 %69, 1
  %PF62 = icmp eq i32 %70, 0
  %ZF63 = icmp eq i32 %ECX67, 0
  %highbit64 = and i32 -2147483648, %ECX67
  %SF65 = icmp ne i32 %highbit64, 0
  %71 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload60, i32 1)
  %OF66 = extractvalue { i32, i1 } %71, 1
  %memref-disp68 = add i64 %memload58, 4
  %72 = inttoptr i64 %memref-disp68 to ptr
  store i32 %ECX67, ptr %72, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.7
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.5
  br label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload69 = load i32, ptr %RBP_N.20, align 1
  %EAX76 = add i32 %memload69, 1
  %73 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload69, i32 1)
  %CF70 = extractvalue { i32, i1 } %73, 1
  %74 = and i32 %EAX76, 255
  %75 = call i32 @llvm.ctpop.i32(i32 %74)
  %76 = and i32 %75, 1
  %PF71 = icmp eq i32 %76, 0
  %ZF72 = icmp eq i32 %EAX76, 0
  %highbit73 = and i32 -2147483648, %EAX76
  %SF74 = icmp ne i32 %highbit73, 0
  %77 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload69, i32 1)
  %OF75 = extractvalue { i32, i1 } %77, 1
  store i32 %EAX76, ptr %RBP_N.20, align 1
  br label %bb.1

bb.12:                                            ; preds = %bb.1
  %memload77 = load i64, ptr %RBP_N.16, align 1
  ret i64 %memload77
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
