; ModuleID = 'code.so'
source_filename = "code.so"

@rodata_12 = private unnamed_addr constant [7 x i8] c"NO\00YES\00", align 1, !ROData_SecInfo !0

define dso_local i64 @func0(i32 %arg1, i32 %arg2, i32 %arg3, i32 %arg4) {
entry:
  %stktop_4 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.44 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 44
  %RBP_N.12 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %10 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.12, align 1
  store i32 %arg2, ptr %RBP_N.16, align 1
  store i32 %arg3, ptr %RBP_N.20, align 1
  store i32 %arg4, ptr %RBP_N.24, align 1
  %memload = load i32, ptr %RBP_N.12, align 1
  %11 = load i32, ptr %RBP_N.20, align 1
  %12 = sub i32 %memload, %11
  %13 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %11)
  %CF = extractvalue { i32, i1 } %13, 1
  %ZF = icmp eq i32 %12, 0
  %highbit = and i32 -2147483648, %12
  %SF = icmp ne i32 %highbit, 0
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %11)
  %OF = extractvalue { i32, i1 } %14, 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = and i32 %16, 1
  %PF = icmp eq i32 %17, 0
  %CmpZF_JLE = icmp eq i1 %ZF, true
  %CmpOF_JLE = icmp ne i1 %SF, %OF
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %memload1 = load i32, ptr %RBP_N.12, align 1
  store i32 %memload1, ptr %RBP_N.44, align 1
  br label %bb.3

bb.2:                                             ; preds = %entry
  %memload2 = load i32, ptr %RBP_N.20, align 1
  store i32 %memload2, ptr %RBP_N.44, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.1
  %memload3 = load i32, ptr %RBP_N.44, align 1
  store i32 %memload3, ptr %RBP_N.28, align 1
  %memload4 = load i32, ptr %RBP_N.16, align 1
  %18 = load i32, ptr %RBP_N.24, align 1
  %19 = sub i32 %memload4, %18
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload4, i32 %18)
  %CF5 = extractvalue { i32, i1 } %20, 1
  %ZF6 = icmp eq i32 %19, 0
  %highbit7 = and i32 -2147483648, %19
  %SF8 = icmp ne i32 %highbit7, 0
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload4, i32 %18)
  %OF9 = extractvalue { i32, i1 } %21, 1
  %22 = and i32 %19, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF10 = icmp eq i32 %24, 0
  %CmpSFOF_JGE = icmp eq i1 %SF8, %OF9
  br i1 %CmpSFOF_JGE, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload11 = load i32, ptr %RBP_N.16, align 1
  store i32 %memload11, ptr %stktop_4, align 1
  br label %bb.6

bb.5:                                             ; preds = %bb.3
  %memload12 = load i32, ptr %RBP_N.24, align 1
  store i32 %memload12, ptr %stktop_4, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  %memload13 = load i32, ptr %stktop_4, align 1
  store i32 %memload13, ptr %RBP_N.32, align 1
  %memload14 = load i32, ptr %RBP_N.32, align 1
  %25 = load i32, ptr %RBP_N.28, align 1
  %EAX = sub i32 %memload14, %25
  %26 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload14, i32 %25)
  %CF15 = extractvalue { i32, i1 } %26, 1
  %ZF16 = icmp eq i32 %EAX, 0
  %highbit17 = and i32 -2147483648, %EAX
  %SF18 = icmp ne i32 %highbit17, 0
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload14, i32 %25)
  %OF19 = extractvalue { i32, i1 } %27, 1
  %28 = and i32 %EAX, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = and i32 %29, 1
  %PF20 = icmp eq i32 %30, 0
  store i32 %EAX, ptr %RBP_N.36, align 1
  %31 = load i32, ptr %RBP_N.36, align 1
  %32 = zext i32 %31 to i64
  %33 = zext i32 2 to i64
  %34 = sub i64 %32, %33
  %35 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %32, i64 %33)
  %CF21 = extractvalue { i64, i1 } %35, 1
  %ZF22 = icmp eq i64 %34, 0
  %highbit23 = and i64 -9223372036854775808, %34
  %SF24 = icmp ne i64 %highbit23, 0
  %36 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %32, i64 %33)
  %OF25 = extractvalue { i64, i1 } %36, 1
  %37 = and i64 %34, 255
  %38 = call i64 @llvm.ctpop.i64(i64 %37)
  %39 = and i64 %38, 1
  %PF26 = icmp eq i64 %39, 0
  %CmpSFOF_JGE57 = icmp eq i1 %SF24, %OF25
  br i1 %CmpSFOF_JGE57, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %RAX = ptrtoint ptr @rodata_12 to i64
  store i64 %RAX, ptr %RBP_N.8, align 1
  br label %bb.15

bb.8:                                             ; preds = %bb.6
  store i32 2, ptr %RBP_N.40, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.13
  %memload27 = load i32, ptr %RBP_N.40, align 1
  %memload28 = load i32, ptr %RBP_N.40, align 1
  %EAX29 = mul i32 %memload27, %memload28
  %40 = load i32, ptr %RBP_N.36, align 1
  %41 = sub i32 %EAX29, %40
  %42 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX29, i32 %40)
  %CF30 = extractvalue { i32, i1 } %42, 1
  %ZF31 = icmp eq i32 %41, 0
  %highbit32 = and i32 -2147483648, %41
  %SF33 = icmp ne i32 %highbit32, 0
  %43 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX29, i32 %40)
  %OF34 = extractvalue { i32, i1 } %43, 1
  %44 = and i32 %41, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44)
  %46 = and i32 %45, 1
  %PF35 = icmp eq i32 %46, 0
  %ZFCmp_JG = icmp eq i1 %ZF31, false
  %SFOFCmp_JG = icmp eq i1 %SF33, %OF34
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.14, label %bb.10

bb.10:                                            ; preds = %bb.9
  %memload36 = load i32, ptr %RBP_N.36, align 1
  %47 = sext i32 %memload36 to i64
  %48 = lshr i64 %47, 32
  %EDX = trunc i64 %48 to i32
  %memload37 = load i32, ptr %RBP_N.40, align 1
  %49 = sext i32 %memload36 to i64
  %50 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %50, 32
  %dividend = or i64 %div_hb_ls, %49
  %51 = sext i32 %memload37 to i64
  %div_q = sdiv i64 %dividend, %51
  %EAX38 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %51
  %EDX39 = trunc i64 %div_r to i32
  %52 = sub i32 %EDX39, 0
  %53 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX39, i32 0)
  %CF40 = extractvalue { i32, i1 } %53, 1
  %ZF41 = icmp eq i32 %52, 0
  %highbit42 = and i32 -2147483648, %52
  %SF43 = icmp ne i32 %highbit42, 0
  %54 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX39, i32 0)
  %OF44 = extractvalue { i32, i1 } %54, 1
  %55 = and i32 %52, 255
  %56 = call i32 @llvm.ctpop.i32(i32 %55)
  %57 = and i32 %56, 1
  %PF45 = icmp eq i32 %57, 0
  %CmpZF_JNE = icmp eq i1 %ZF41, false
  br i1 %CmpZF_JNE, label %bb.12, label %bb.11

bb.11:                                            ; preds = %bb.10
  %RAX46 = ptrtoint ptr @rodata_12 to i64
  store i64 %RAX46, ptr %RBP_N.8, align 1
  br label %bb.15

bb.12:                                            ; preds = %bb.10
  br label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload47 = load i32, ptr %RBP_N.40, align 1
  %EAX54 = add i32 %memload47, 1
  %58 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload47, i32 1)
  %CF48 = extractvalue { i32, i1 } %58, 1
  %59 = and i32 %EAX54, 255
  %60 = call i32 @llvm.ctpop.i32(i32 %59)
  %61 = and i32 %60, 1
  %PF49 = icmp eq i32 %61, 0
  %ZF50 = icmp eq i32 %EAX54, 0
  %highbit51 = and i32 -2147483648, %EAX54
  %SF52 = icmp ne i32 %highbit51, 0
  %62 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload47, i32 1)
  %OF53 = extractvalue { i32, i1 } %62, 1
  store i32 %EAX54, ptr %RBP_N.40, align 1
  br label %bb.9

bb.14:                                            ; preds = %bb.9
  %RAX55 = ptrtoint ptr getelementptr inbounds ([7 x i8], ptr @rodata_12, i32 0, i32 3) to i64, !ROData_Index !1
  store i64 %RAX55, ptr %RBP_N.8, align 1
  br label %bb.15

bb.15:                                            ; preds = %bb.14, %bb.11, %bb.7
  %memload56 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload56
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

!0 = !{i64 8192}
!1 = !{ptr getelementptr inbounds ([7 x i8], ptr @rodata_12, i32 0, i32 3)}
