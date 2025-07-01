; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i32 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 52
  %RBP_N.4 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  %memload = load i64, ptr %RBP_N.4, align 1
  %8 = trunc i64 %memload to i32
  %RDI = sext i32 %8 to i64
  %RDI1 = shl i64 %RDI, 2
  %ZF = icmp eq i64 %RDI1, 0
  %highbit = and i64 -9223372036854775808, %RDI1
  %SF = icmp ne i64 %highbit, 0
  %9 = call ptr @malloc(i64 %RDI1)
  %RAX = ptrtoint ptr %9 to i64
  store i64 %RAX, ptr %RBP_N.24, align 1
  %memload2 = load i64, ptr %RBP_N.16, align 1
  %10 = inttoptr i64 %memload2 to ptr
  store i32 0, ptr %10, align 1
  store i32 2, ptr %RBP_N.28, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.13
  %memload3 = load i32, ptr %RBP_N.28, align 1
  %11 = load i32, ptr %RBP_N.4, align 1
  %12 = sub i32 %memload3, %11
  %13 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload3, i32 %11)
  %CF = extractvalue { i32, i1 } %13, 1
  %ZF4 = icmp eq i32 %12, 0
  %highbit5 = and i32 -2147483648, %12
  %SF6 = icmp ne i32 %highbit5, 0
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload3, i32 %11)
  %OF = extractvalue { i32, i1 } %14, 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = and i32 %16, 1
  %PF = icmp eq i32 %17, 0
  %CmpSFOF_JGE = icmp eq i1 %SF6, %OF
  br i1 %CmpSFOF_JGE, label %bb.14, label %bb.2

bb.2:                                             ; preds = %bb.1
  store i32 1, ptr %RBP_N.36, align 1
  store i32 0, ptr %RBP_N.32, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.9
  %memload7 = load i32, ptr %RBP_N.32, align 1
  %memload8 = load i64, ptr %RBP_N.16, align 1
  %18 = inttoptr i64 %memload8 to ptr
  %19 = load i32, ptr %18, align 1
  %20 = sub i32 %memload7, %19
  %21 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload7, i32 %19)
  %CF9 = extractvalue { i32, i1 } %21, 1
  %ZF10 = icmp eq i32 %20, 0
  %highbit11 = and i32 -2147483648, %20
  %SF12 = icmp ne i32 %highbit11, 0
  %22 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload7, i32 %19)
  %OF13 = extractvalue { i32, i1 } %22, 1
  %23 = and i32 %20, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = and i32 %24, 1
  %PF14 = icmp eq i32 %25, 0
  %CmpSFOF_JGE74 = icmp eq i1 %SF12, %OF13
  br i1 %CmpSFOF_JGE74, label %bb.10, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload15 = load i64, ptr %RBP_N.24, align 1
  %memload16 = load i64, ptr %RBP_N.32, align 1
  %26 = trunc i64 %memload16 to i32
  %RCX = sext i32 %26 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload15, %memref-idxreg
  %27 = inttoptr i64 %memref-basereg to ptr
  %memload17 = load i32, ptr %27, align 1
  store i32 %memload17, ptr %RBP_N.40, align 1
  %memload18 = load i32, ptr %RBP_N.40, align 1
  %memload19 = load i32, ptr %RBP_N.40, align 1
  %EAX = mul i32 %memload18, %memload19
  %28 = load i32, ptr %RBP_N.28, align 1
  %29 = sub i32 %EAX, %28
  %30 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 %28)
  %CF20 = extractvalue { i32, i1 } %30, 1
  %ZF21 = icmp eq i32 %29, 0
  %highbit22 = and i32 -2147483648, %29
  %SF23 = icmp ne i32 %highbit22, 0
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 %28)
  %OF24 = extractvalue { i32, i1 } %31, 1
  %32 = and i32 %29, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = and i32 %33, 1
  %PF25 = icmp eq i32 %34, 0
  %CmpZF_JLE = icmp eq i1 %ZF21, true
  %CmpOF_JLE = icmp ne i1 %SF23, %OF24
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  br label %bb.10

bb.6:                                             ; preds = %bb.4
  %memload26 = load i32, ptr %RBP_N.28, align 1
  %35 = sext i32 %memload26 to i64
  %36 = lshr i64 %35, 32
  %EDX = trunc i64 %36 to i32
  %memload27 = load i32, ptr %RBP_N.40, align 1
  %37 = sext i32 %memload26 to i64
  %38 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %38, 32
  %dividend = or i64 %div_hb_ls, %37
  %39 = sext i32 %memload27 to i64
  %div_q = sdiv i64 %dividend, %39
  %EAX28 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %39
  %EDX29 = trunc i64 %div_r to i32
  %40 = sub i32 %EDX29, 0
  %41 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX29, i32 0)
  %CF30 = extractvalue { i32, i1 } %41, 1
  %ZF31 = icmp eq i32 %40, 0
  %highbit32 = and i32 -2147483648, %40
  %SF33 = icmp ne i32 %highbit32, 0
  %42 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX29, i32 0)
  %OF34 = extractvalue { i32, i1 } %42, 1
  %43 = and i32 %40, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF35 = icmp eq i32 %45, 0
  %CmpZF_JNE = icmp eq i1 %ZF31, false
  br i1 %CmpZF_JNE, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  store i32 0, ptr %RBP_N.36, align 1
  br label %bb.10

bb.8:                                             ; preds = %bb.6
  br label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload36 = load i32, ptr %RBP_N.32, align 1
  %EAX43 = add i32 %memload36, 1
  %46 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload36, i32 1)
  %CF37 = extractvalue { i32, i1 } %46, 1
  %47 = and i32 %EAX43, 255
  %48 = call i32 @llvm.ctpop.i32(i32 %47)
  %49 = and i32 %48, 1
  %PF38 = icmp eq i32 %49, 0
  %ZF39 = icmp eq i32 %EAX43, 0
  %highbit40 = and i32 -2147483648, %EAX43
  %SF41 = icmp ne i32 %highbit40, 0
  %50 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload36, i32 1)
  %OF42 = extractvalue { i32, i1 } %50, 1
  store i32 %EAX43, ptr %RBP_N.32, align 1
  br label %bb.3

bb.10:                                            ; preds = %bb.7, %bb.5, %bb.3
  %51 = load i32, ptr %RBP_N.36, align 1
  %52 = zext i32 %51 to i64
  %53 = zext i32 0 to i64
  %54 = sub i64 %52, %53
  %55 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %52, i64 %53)
  %CF44 = extractvalue { i64, i1 } %55, 1
  %ZF45 = icmp eq i64 %54, 0
  %highbit46 = and i64 -9223372036854775808, %54
  %SF47 = icmp ne i64 %highbit46, 0
  %56 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %52, i64 %53)
  %OF48 = extractvalue { i64, i1 } %56, 1
  %57 = and i64 %54, 255
  %58 = call i64 @llvm.ctpop.i64(i64 %57)
  %59 = and i64 %58, 1
  %PF49 = icmp eq i64 %59, 0
  %CmpZF_JE = icmp eq i1 %ZF45, true
  br i1 %CmpZF_JE, label %bb.12, label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload50 = load i32, ptr %RBP_N.28, align 1
  %memload51 = load i64, ptr %RBP_N.24, align 1
  %memload52 = load i64, ptr %RBP_N.16, align 1
  %60 = inttoptr i64 %memload52 to ptr
  %memload53 = load i64, ptr %60, align 1
  %61 = trunc i64 %memload53 to i32
  %RCX54 = sext i32 %61 to i64
  %memref-idxreg55 = mul i64 4, %RCX54
  %memref-basereg56 = add i64 %memload51, %memref-idxreg55
  %62 = inttoptr i64 %memref-basereg56 to ptr
  store i32 %memload50, ptr %62, align 1
  %memload57 = load i64, ptr %RBP_N.16, align 1
  %63 = inttoptr i64 %memload57 to ptr
  %memload58 = load i32, ptr %63, align 1
  %ECX = add i32 %memload58, 1
  %64 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload58, i32 1)
  %CF59 = extractvalue { i32, i1 } %64, 1
  %65 = and i32 %ECX, 255
  %66 = call i32 @llvm.ctpop.i32(i32 %65)
  %67 = and i32 %66, 1
  %PF60 = icmp eq i32 %67, 0
  %ZF61 = icmp eq i32 %ECX, 0
  %highbit62 = and i32 -2147483648, %ECX
  %SF63 = icmp ne i32 %highbit62, 0
  %68 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload58, i32 1)
  %OF64 = extractvalue { i32, i1 } %68, 1
  %69 = inttoptr i64 %memload57 to ptr
  store i32 %ECX, ptr %69, align 1
  br label %bb.12

bb.12:                                            ; preds = %bb.11, %bb.10
  br label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload65 = load i32, ptr %RBP_N.28, align 1
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
  store i32 %EAX72, ptr %RBP_N.28, align 1
  br label %bb.1

bb.14:                                            ; preds = %bb.1
  %memload73 = load i64, ptr %RBP_N.24, align 1
  ret i64 %memload73
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
