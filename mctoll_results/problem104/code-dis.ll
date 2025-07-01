; ModuleID = 'code.so'
source_filename = "code.so"

@rodata_13 = private unnamed_addr constant [3 x i8] c"-1\00", align 1, !ROData_SecInfo !0

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i32 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 44
  %RBP_N.12 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.12, align 1
  store i32 %arg2, ptr %RBP_N.16, align 1
  %memload = load i32, ptr %RBP_N.12, align 1
  %7 = load i32, ptr %RBP_N.16, align 1
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
  %CmpZF_JLE = icmp eq i1 %ZF, true
  %CmpOF_JLE = icmp ne i1 %SF, %OF
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %RAX = ptrtoint ptr @rodata_13 to i64
  store i64 %RAX, ptr %RBP_N.8, align 1
  br label %bb.5

bb.2:                                             ; preds = %entry
  %memload1 = load i32, ptr %RBP_N.16, align 1
  %memload2 = load i32, ptr %RBP_N.12, align 1
  %EAX = add i32 %memload1, %memload2
  %14 = and i32 %EAX, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = and i32 %15, 1
  %PF3 = icmp eq i32 %16, 0
  %17 = sext i32 %EAX to i64
  %18 = lshr i64 %17, 32
  %EDX = trunc i64 %18 to i32
  %19 = sext i32 %EAX to i64
  %20 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %20, 32
  %dividend = or i64 %div_hb_ls, %19
  %21 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %21
  %EAX4 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %21
  %EDX5 = trunc i64 %div_r to i32
  store i32 %EAX4, ptr %RBP_N.20, align 1
  %22 = zext i32 33 to i64
  %23 = call ptr @malloc(i64 %22)
  %RAX6 = ptrtoint ptr %23 to i64
  store i64 %RAX6, ptr %RBP_N.32, align 1
  %memload7 = load i64, ptr %RBP_N.32, align 1
  %24 = inttoptr i64 %memload7 to ptr
  store i8 0, ptr %24, align 1
  store i32 32, ptr %RBP_N.36, align 1
  %memload8 = load i64, ptr %RBP_N.32, align 1
  %memload9 = load i32, ptr %RBP_N.36, align 1
  %EDX16 = add i32 %memload9, -1
  %25 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload9, i32 -1)
  %CF10 = extractvalue { i32, i1 } %25, 1
  %26 = and i32 %EDX16, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF11 = icmp eq i32 %28, 0
  %ZF12 = icmp eq i32 %EDX16, 0
  %highbit13 = and i32 -2147483648, %EDX16
  %SF14 = icmp ne i32 %highbit13, 0
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload9, i32 -1)
  %OF15 = extractvalue { i32, i1 } %29, 1
  store i32 %EDX16, ptr %RBP_N.36, align 1
  %RCX = sext i32 %memload9 to i64
  %memref-basereg = add i64 %memload8, %RCX
  %30 = inttoptr i64 %memref-basereg to ptr
  store i8 0, ptr %30, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.3
  %memload17 = load i32, ptr %RBP_N.20, align 1
  %31 = sext i32 %memload17 to i64
  %32 = lshr i64 %31, 32
  %EDX18 = trunc i64 %32 to i32
  %33 = sext i32 %memload17 to i64
  %34 = sext i32 %EDX18 to i64
  %div_hb_ls19 = shl nuw i64 %34, 32
  %dividend20 = or i64 %div_hb_ls19, %33
  %35 = sext i32 2 to i64
  %div_q21 = sdiv i64 %dividend20, %35
  %EAX22 = trunc i64 %div_q21 to i32
  %div_r23 = srem i64 %dividend20, %35
  %EDX24 = trunc i64 %div_r23 to i32
  %EDX31 = add i32 %EDX24, 48
  %36 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EDX24, i32 48)
  %CF25 = extractvalue { i32, i1 } %36, 1
  %37 = and i32 %EDX31, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF26 = icmp eq i32 %39, 0
  %ZF27 = icmp eq i32 %EDX31, 0
  %highbit28 = and i32 -2147483648, %EDX31
  %SF29 = icmp ne i32 %highbit28, 0
  %40 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EDX24, i32 48)
  %OF30 = extractvalue { i32, i1 } %40, 1
  %memload32 = load i64, ptr %RBP_N.32, align 1
  %memload33 = load i32, ptr %RBP_N.36, align 1
  %ESI = add i32 %memload33, -1
  %41 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload33, i32 -1)
  %CF34 = extractvalue { i32, i1 } %41, 1
  %42 = and i32 %ESI, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = and i32 %43, 1
  %PF35 = icmp eq i32 %44, 0
  %ZF36 = icmp eq i32 %ESI, 0
  %highbit37 = and i32 -2147483648, %ESI
  %SF38 = icmp ne i32 %highbit37, 0
  %45 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload33, i32 -1)
  %OF39 = extractvalue { i32, i1 } %45, 1
  store i32 %ESI, ptr %RBP_N.36, align 1
  %RCX40 = sext i32 %memload33 to i64
  %memref-basereg41 = add i64 %memload32, %RCX40
  %46 = trunc i32 %EDX31 to i8
  %47 = inttoptr i64 %memref-basereg41 to ptr
  store i8 %46, ptr %47, align 1
  %memload42 = load i32, ptr %RBP_N.20, align 1
  %48 = sext i32 %memload42 to i64
  %49 = lshr i64 %48, 32
  %EDX43 = trunc i64 %49 to i32
  %50 = sext i32 %memload42 to i64
  %51 = sext i32 %EDX43 to i64
  %div_hb_ls44 = shl nuw i64 %51, 32
  %dividend45 = or i64 %div_hb_ls44, %50
  %52 = sext i32 2 to i64
  %div_q46 = sdiv i64 %dividend45, %52
  %EAX47 = trunc i64 %div_q46 to i32
  %div_r48 = srem i64 %dividend45, %52
  %EDX49 = trunc i64 %div_r48 to i32
  store i32 %EAX47, ptr %RBP_N.20, align 1
  %53 = load i32, ptr %RBP_N.20, align 1
  %54 = zext i32 %53 to i64
  %55 = zext i32 0 to i64
  %56 = sub i64 %54, %55
  %57 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %54, i64 %55)
  %CF50 = extractvalue { i64, i1 } %57, 1
  %ZF51 = icmp eq i64 %56, 0
  %highbit52 = and i64 -9223372036854775808, %56
  %SF53 = icmp ne i64 %highbit52, 0
  %58 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %54, i64 %55)
  %OF54 = extractvalue { i64, i1 } %58, 1
  %59 = and i64 %56, 255
  %60 = call i64 @llvm.ctpop.i64(i64 %59)
  %61 = and i64 %60, 1
  %PF55 = icmp eq i64 %61, 0
  %ZFCmp_JG = icmp eq i1 %ZF51, false
  %SFOFCmp_JG = icmp eq i1 %SF53, %OF54
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.3, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload56 = load i64, ptr %RBP_N.32, align 1
  %memload57 = load i32, ptr %RBP_N.36, align 1
  %ECX = add i32 %memload57, 1
  %62 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload57, i32 1)
  %CF58 = extractvalue { i32, i1 } %62, 1
  %63 = and i32 %ECX, 255
  %64 = call i32 @llvm.ctpop.i32(i32 %63)
  %65 = and i32 %64, 1
  %PF59 = icmp eq i32 %65, 0
  %ZF60 = icmp eq i32 %ECX, 0
  %highbit61 = and i32 -2147483648, %ECX
  %SF62 = icmp ne i32 %highbit61, 0
  %66 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload57, i32 1)
  %OF63 = extractvalue { i32, i1 } %66, 1
  %RCX64 = sext i32 %ECX to i64
  %RAX68 = add nsw i64 %memload56, %RCX64
  %highbit65 = and i64 -9223372036854775808, %RAX68
  %SF66 = icmp ne i64 %highbit65, 0
  %ZF67 = icmp eq i64 %RAX68, 0
  store i64 %RAX68, ptr %RBP_N.8, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.1
  %memload69 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload69
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

!0 = !{i64 8192}
