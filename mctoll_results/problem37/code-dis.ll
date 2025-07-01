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
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i32 0, ptr %RBP_N.8, align 1
  store i32 0, ptr %RBP_N.12, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.11
  %memload = load i32, ptr %RBP_N.12, align 1
  %4 = load i32, ptr %RBP_N.4, align 1
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
  br i1 %CmpSFOF_JGE, label %bb.12, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i32, ptr %RBP_N.12, align 1
  %11 = sext i32 %memload1 to i64
  %12 = lshr i64 %11, 32
  %EDX = trunc i64 %12 to i32
  %13 = sext i32 %memload1 to i64
  %14 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %14, 32
  %dividend = or i64 %div_hb_ls, %13
  %15 = sext i32 11 to i64
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
  %CmpZF_JE = icmp eq i1 %ZF4, true
  br i1 %CmpZF_JE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload9 = load i32, ptr %RBP_N.12, align 1
  %22 = sext i32 %memload9 to i64
  %23 = lshr i64 %22, 32
  %EDX10 = trunc i64 %23 to i32
  %24 = sext i32 %memload9 to i64
  %25 = sext i32 %EDX10 to i64
  %div_hb_ls11 = shl nuw i64 %25, 32
  %dividend12 = or i64 %div_hb_ls11, %24
  %26 = sext i32 13 to i64
  %div_q13 = sdiv i64 %dividend12, %26
  %EAX14 = trunc i64 %div_q13 to i32
  %div_r15 = srem i64 %dividend12, %26
  %EDX16 = trunc i64 %div_r15 to i32
  %27 = sub i32 %EDX16, 0
  %28 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX16, i32 0)
  %CF17 = extractvalue { i32, i1 } %28, 1
  %ZF18 = icmp eq i32 %27, 0
  %highbit19 = and i32 -2147483648, %27
  %SF20 = icmp ne i32 %highbit19, 0
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX16, i32 0)
  %OF21 = extractvalue { i32, i1 } %29, 1
  %30 = and i32 %27, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = and i32 %31, 1
  %PF22 = icmp eq i32 %32, 0
  %CmpZF_JNE = icmp eq i1 %ZF18, false
  br i1 %CmpZF_JNE, label %bb.10, label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  %memload23 = load i32, ptr %RBP_N.12, align 1
  store i32 %memload23, ptr %stktop_4, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.8
  %33 = load i32, ptr %stktop_4, align 1
  %34 = zext i32 %33 to i64
  %35 = zext i32 0 to i64
  %36 = sub i64 %34, %35
  %37 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %35)
  %CF24 = extractvalue { i64, i1 } %37, 1
  %ZF25 = icmp eq i64 %36, 0
  %highbit26 = and i64 -9223372036854775808, %36
  %SF27 = icmp ne i64 %highbit26, 0
  %38 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %34, i64 %35)
  %OF28 = extractvalue { i64, i1 } %38, 1
  %39 = and i64 %36, 255
  %40 = call i64 @llvm.ctpop.i64(i64 %39)
  %41 = and i64 %40, 1
  %PF29 = icmp eq i64 %41, 0
  %CmpZF_JLE = icmp eq i1 %ZF25, true
  %CmpOF_JLE = icmp ne i1 %SF27, %OF28
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.9, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload30 = load i32, ptr %stktop_4, align 1
  %42 = sext i32 %memload30 to i64
  %43 = lshr i64 %42, 32
  %EDX31 = trunc i64 %43 to i32
  %44 = sext i32 %memload30 to i64
  %45 = sext i32 %EDX31 to i64
  %div_hb_ls32 = shl nuw i64 %45, 32
  %dividend33 = or i64 %div_hb_ls32, %44
  %46 = sext i32 10 to i64
  %div_q34 = sdiv i64 %dividend33, %46
  %EAX35 = trunc i64 %div_q34 to i32
  %div_r36 = srem i64 %dividend33, %46
  %EDX37 = trunc i64 %div_r36 to i32
  %47 = sub i32 %EDX37, 7
  %48 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX37, i32 7)
  %CF38 = extractvalue { i32, i1 } %48, 1
  %ZF39 = icmp eq i32 %47, 0
  %highbit40 = and i32 -2147483648, %47
  %SF41 = icmp ne i32 %highbit40, 0
  %49 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX37, i32 7)
  %OF42 = extractvalue { i32, i1 } %49, 1
  %50 = and i32 %47, 255
  %51 = call i32 @llvm.ctpop.i32(i32 %50)
  %52 = and i32 %51, 1
  %PF43 = icmp eq i32 %52, 0
  %CmpZF_JNE69 = icmp eq i1 %ZF39, false
  br i1 %CmpZF_JNE69, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload44 = load i32, ptr %RBP_N.8, align 1
  %EAX51 = add i32 %memload44, 1
  %53 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload44, i32 1)
  %CF45 = extractvalue { i32, i1 } %53, 1
  %54 = and i32 %EAX51, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54)
  %56 = and i32 %55, 1
  %PF46 = icmp eq i32 %56, 0
  %ZF47 = icmp eq i32 %EAX51, 0
  %highbit48 = and i32 -2147483648, %EAX51
  %SF49 = icmp ne i32 %highbit48, 0
  %57 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload44, i32 1)
  %OF50 = extractvalue { i32, i1 } %57, 1
  store i32 %EAX51, ptr %RBP_N.8, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.6
  %memload52 = load i32, ptr %stktop_4, align 1
  %58 = sext i32 %memload52 to i64
  %59 = lshr i64 %58, 32
  %EDX53 = trunc i64 %59 to i32
  %60 = sext i32 %memload52 to i64
  %61 = sext i32 %EDX53 to i64
  %div_hb_ls54 = shl nuw i64 %61, 32
  %dividend55 = or i64 %div_hb_ls54, %60
  %62 = sext i32 10 to i64
  %div_q56 = sdiv i64 %dividend55, %62
  %EAX57 = trunc i64 %div_q56 to i32
  %div_r58 = srem i64 %dividend55, %62
  %EDX59 = trunc i64 %div_r58 to i32
  store i32 %EAX57, ptr %stktop_4, align 1
  br label %bb.5

bb.9:                                             ; preds = %bb.5
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.3
  br label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload60 = load i32, ptr %RBP_N.12, align 1
  %EAX67 = add i32 %memload60, 1
  %63 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload60, i32 1)
  %CF61 = extractvalue { i32, i1 } %63, 1
  %64 = and i32 %EAX67, 255
  %65 = call i32 @llvm.ctpop.i32(i32 %64)
  %66 = and i32 %65, 1
  %PF62 = icmp eq i32 %66, 0
  %ZF63 = icmp eq i32 %EAX67, 0
  %highbit64 = and i32 -2147483648, %EAX67
  %SF65 = icmp ne i32 %highbit64, 0
  %67 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload60, i32 1)
  %OF66 = extractvalue { i32, i1 } %67, 1
  store i32 %EAX67, ptr %RBP_N.12, align 1
  br label %bb.1

bb.12:                                            ; preds = %bb.1
  %memload68 = load i32, ptr %RBP_N.8, align 1
  ret i32 %memload68
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
