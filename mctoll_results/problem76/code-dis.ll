; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i32 %arg1) {
entry:
  %stktop_4 = alloca i8, i32 24, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.12 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.8 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.4 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.8, align 1
  %4 = load i32, ptr %RBP_N.8, align 1
  %5 = zext i32 %4 to i64
  %6 = zext i32 2 to i64
  %7 = sub i64 %5, %6
  %8 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %5, i64 %6)
  %CF = extractvalue { i64, i1 } %8, 1
  %ZF = icmp eq i64 %7, 0
  %highbit = and i64 -9223372036854775808, %7
  %SF = icmp ne i64 %highbit, 0
  %9 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %5, i64 %6)
  %OF = extractvalue { i64, i1 } %9, 1
  %10 = and i64 %7, 255
  %11 = call i64 @llvm.ctpop.i64(i64 %10)
  %12 = and i64 %11, 1
  %PF = icmp eq i64 %12, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.12

bb.2:                                             ; preds = %entry
  store i32 0, ptr %RBP_N.12, align 1
  store i32 2, ptr %stktop_4, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.8
  %memload = load i32, ptr %stktop_4, align 1
  %memload1 = load i32, ptr %stktop_4, align 1
  %EAX = mul i32 %memload, %memload1
  %13 = load i32, ptr %RBP_N.8, align 1
  %14 = sub i32 %EAX, %13
  %15 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 %13)
  %CF2 = extractvalue { i32, i1 } %15, 1
  %ZF3 = icmp eq i32 %14, 0
  %highbit4 = and i32 -2147483648, %14
  %SF5 = icmp ne i32 %highbit4, 0
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 %13)
  %OF6 = extractvalue { i32, i1 } %16, 1
  %17 = and i32 %14, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = and i32 %18, 1
  %PF7 = icmp eq i32 %19, 0
  %ZFCmp_JG = icmp eq i1 %ZF3, false
  %SFOFCmp_JG = icmp eq i1 %SF5, %OF6
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.9, label %bb.4

bb.4:                                             ; preds = %bb.3
  br label %bb.5

bb.5:                                             ; preds = %bb.6, %bb.4
  %memload8 = load i32, ptr %RBP_N.8, align 1
  %20 = sext i32 %memload8 to i64
  %21 = lshr i64 %20, 32
  %EDX = trunc i64 %21 to i32
  %memload9 = load i32, ptr %stktop_4, align 1
  %22 = sext i32 %memload8 to i64
  %23 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %23, 32
  %dividend = or i64 %div_hb_ls, %22
  %24 = sext i32 %memload9 to i64
  %div_q = sdiv i64 %dividend, %24
  %EAX10 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %24
  %EDX11 = trunc i64 %div_r to i32
  %25 = sub i32 %EDX11, 0
  %26 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX11, i32 0)
  %CF12 = extractvalue { i32, i1 } %26, 1
  %ZF13 = icmp eq i32 %25, 0
  %highbit14 = and i32 -2147483648, %25
  %SF15 = icmp ne i32 %highbit14, 0
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX11, i32 0)
  %OF16 = extractvalue { i32, i1 } %27, 1
  %28 = and i32 %25, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = and i32 %29, 1
  %PF17 = icmp eq i32 %30, 0
  %CmpZF_JNE = icmp eq i1 %ZF13, false
  br i1 %CmpZF_JNE, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload18 = load i32, ptr %RBP_N.8, align 1
  %31 = sext i32 %memload18 to i64
  %32 = lshr i64 %31, 32
  %EDX19 = trunc i64 %32 to i32
  %memload20 = load i32, ptr %stktop_4, align 1
  %33 = sext i32 %memload18 to i64
  %34 = sext i32 %EDX19 to i64
  %div_hb_ls21 = shl nuw i64 %34, 32
  %dividend22 = or i64 %div_hb_ls21, %33
  %35 = sext i32 %memload20 to i64
  %div_q23 = sdiv i64 %dividend22, %35
  %EAX24 = trunc i64 %div_q23 to i32
  %div_r25 = srem i64 %dividend22, %35
  %EDX26 = trunc i64 %div_r25 to i32
  store i32 %EAX24, ptr %RBP_N.8, align 1
  %memload27 = load i32, ptr %RBP_N.12, align 1
  %EAX34 = add i32 %memload27, 1
  %36 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload27, i32 1)
  %CF28 = extractvalue { i32, i1 } %36, 1
  %37 = and i32 %EAX34, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF29 = icmp eq i32 %39, 0
  %ZF30 = icmp eq i32 %EAX34, 0
  %highbit31 = and i32 -2147483648, %EAX34
  %SF32 = icmp ne i32 %highbit31, 0
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload27, i32 1)
  %OF33 = extractvalue { i32, i1 } %40, 1
  store i32 %EAX34, ptr %RBP_N.12, align 1
  br label %bb.5

bb.7:                                             ; preds = %bb.5
  br label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload35 = load i32, ptr %stktop_4, align 1
  %EAX42 = add i32 %memload35, 1
  %41 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload35, i32 1)
  %CF36 = extractvalue { i32, i1 } %41, 1
  %42 = and i32 %EAX42, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = and i32 %43, 1
  %PF37 = icmp eq i32 %44, 0
  %ZF38 = icmp eq i32 %EAX42, 0
  %highbit39 = and i32 -2147483648, %EAX42
  %SF40 = icmp ne i32 %highbit39, 0
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload35, i32 1)
  %OF41 = extractvalue { i32, i1 } %45, 1
  store i32 %EAX42, ptr %stktop_4, align 1
  br label %bb.3

bb.9:                                             ; preds = %bb.3
  %46 = load i32, ptr %RBP_N.8, align 1
  %47 = zext i32 %46 to i64
  %48 = zext i32 1 to i64
  %49 = sub i64 %47, %48
  %50 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %47, i64 %48)
  %CF43 = extractvalue { i64, i1 } %50, 1
  %ZF44 = icmp eq i64 %49, 0
  %highbit45 = and i64 -9223372036854775808, %49
  %SF46 = icmp ne i64 %highbit45, 0
  %51 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %47, i64 %48)
  %OF47 = extractvalue { i64, i1 } %51, 1
  %52 = and i64 %49, 255
  %53 = call i64 @llvm.ctpop.i64(i64 %52)
  %54 = and i64 %53, 1
  %PF48 = icmp eq i64 %54, 0
  %CmpZF_JLE = icmp eq i1 %ZF44, true
  %CmpOF_JLE = icmp ne i1 %SF46, %OF47
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.11, label %bb.10

bb.10:                                            ; preds = %bb.9
  %memload49 = load i32, ptr %RBP_N.12, align 1
  %EAX56 = add i32 %memload49, 1
  %55 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload49, i32 1)
  %CF50 = extractvalue { i32, i1 } %55, 1
  %56 = and i32 %EAX56, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = and i32 %57, 1
  %PF51 = icmp eq i32 %58, 0
  %ZF52 = icmp eq i32 %EAX56, 0
  %highbit53 = and i32 -2147483648, %EAX56
  %SF54 = icmp ne i32 %highbit53, 0
  %59 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload49, i32 1)
  %OF55 = extractvalue { i32, i1 } %59, 1
  store i32 %EAX56, ptr %RBP_N.12, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.9
  %60 = load i32, ptr %RBP_N.12, align 1
  %61 = zext i32 %60 to i64
  %62 = zext i32 3 to i64
  %63 = sub i64 %61, %62
  %64 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %61, i64 %62)
  %CF57 = extractvalue { i64, i1 } %64, 1
  %ZF58 = icmp eq i64 %63, 0
  %highbit59 = and i64 -9223372036854775808, %63
  %SF60 = icmp ne i64 %highbit59, 0
  %65 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %61, i64 %62)
  %OF61 = extractvalue { i64, i1 } %65, 1
  %66 = and i64 %63, 255
  %67 = call i64 @llvm.ctpop.i64(i64 %66)
  %68 = and i64 %67, 1
  %PF62 = icmp eq i64 %68, 0
  %AL = icmp eq i1 %ZF58, true
  %69 = zext i1 %AL to i8
  %AL67 = and i8 %69, 1
  %70 = call i8 @llvm.ctpop.i8(i8 %AL67)
  %71 = and i8 %70, 1
  %PF63 = icmp eq i8 %71, 0
  %ZF64 = icmp eq i8 %AL67, 0
  %highbit65 = and i8 -128, %AL67
  %SF66 = icmp ne i8 %highbit65, 0
  %EAX68 = zext i8 %AL67 to i32
  store i32 %EAX68, ptr %RBP_N.4, align 1
  br label %bb.12

bb.12:                                            ; preds = %bb.11, %bb.1
  %memload69 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload69
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctpop.i8(i8) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
