; ModuleID = 'code.so'
source_filename = "code.so"

@0 = private unnamed_addr constant [64 x i8] c"the number of odd elements %d in the string %d of the %d input.\00", align 1, !ROData_SecInfo !0

declare dso_local ptr @malloc(i64)

declare dso_local i32 @sprintf(ptr, ptr, ...)

define dso_local i64 @func0(i64 %arg1, i32 %arg2) {
entry:
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
  %4 = add i64 %tos, 44
  %RBP_N.12 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  %memload = load i64, ptr %RBP_N.12, align 1
  %7 = trunc i64 %memload to i32
  %RDI = sext i32 %7 to i64
  %RDI1 = shl i64 %RDI, 3
  %ZF = icmp eq i64 %RDI1, 0
  %highbit = and i64 -9223372036854775808, %RDI1
  %SF = icmp ne i64 %highbit, 0
  %8 = call ptr @malloc(i64 %RDI1)
  %RAX = ptrtoint ptr %8 to i64
  store i64 %RAX, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.10
  %memload2 = load i32, ptr %RBP_N.28, align 1
  %9 = load i32, ptr %RBP_N.12, align 1
  %10 = sub i32 %memload2, %9
  %11 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload2, i32 %9)
  %CF = extractvalue { i32, i1 } %11, 1
  %ZF3 = icmp eq i32 %10, 0
  %highbit4 = and i32 -2147483648, %10
  %SF5 = icmp ne i32 %highbit4, 0
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload2, i32 %9)
  %OF = extractvalue { i32, i1 } %12, 1
  %13 = and i32 %10, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = and i32 %14, 1
  %PF = icmp eq i32 %15, 0
  %CmpSFOF_JGE = icmp eq i1 %SF5, %OF
  br i1 %CmpSFOF_JGE, label %bb.11, label %bb.2

bb.2:                                             ; preds = %bb.1
  store i32 0, ptr %RBP_N.32, align 1
  store i32 0, ptr %RBP_N.36, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.9
  %memload6 = load i64, ptr %RBP_N.8, align 1
  %memload7 = load i64, ptr %RBP_N.28, align 1
  %16 = trunc i64 %memload7 to i32
  %RCX = sext i32 %16 to i64
  %memref-idxreg = mul i64 8, %RCX
  %memref-basereg = add i64 %memload6, %memref-idxreg
  %17 = inttoptr i64 %memref-basereg to ptr
  %memload8 = load i64, ptr %17, align 1
  %memload9 = load i64, ptr %RBP_N.36, align 1
  %18 = trunc i64 %memload9 to i32
  %RCX10 = sext i32 %18 to i64
  %memref-basereg11 = add i64 %memload8, %RCX10
  %19 = inttoptr i64 %memref-basereg11 to ptr
  %memload12 = load i32, ptr %19, align 1
  %20 = trunc i32 %memload12 to i8
  %EAX = sext i8 %20 to i32
  %21 = sub i32 %EAX, 0
  %22 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 0)
  %CF13 = extractvalue { i32, i1 } %22, 1
  %ZF14 = icmp eq i32 %21, 0
  %highbit15 = and i32 -2147483648, %21
  %SF16 = icmp ne i32 %highbit15, 0
  %23 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 0)
  %OF17 = extractvalue { i32, i1 } %23, 1
  %24 = and i32 %21, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = and i32 %25, 1
  %PF18 = icmp eq i32 %26, 0
  %CmpZF_JE = icmp eq i1 %ZF14, true
  br i1 %CmpZF_JE, label %bb.10, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload19 = load i64, ptr %RBP_N.8, align 1
  %memload20 = load i64, ptr %RBP_N.28, align 1
  %27 = trunc i64 %memload20 to i32
  %RCX21 = sext i32 %27 to i64
  %memref-idxreg22 = mul i64 8, %RCX21
  %memref-basereg23 = add i64 %memload19, %memref-idxreg22
  %28 = inttoptr i64 %memref-basereg23 to ptr
  %memload24 = load i64, ptr %28, align 1
  %memload25 = load i64, ptr %RBP_N.36, align 1
  %29 = trunc i64 %memload25 to i32
  %RCX26 = sext i32 %29 to i64
  %memref-basereg27 = add i64 %memload24, %RCX26
  %30 = inttoptr i64 %memref-basereg27 to ptr
  %memload28 = load i32, ptr %30, align 1
  %31 = trunc i32 %memload28 to i8
  %EAX29 = sext i8 %31 to i32
  %32 = sub i32 %EAX29, 48
  %33 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX29, i32 48)
  %CF30 = extractvalue { i32, i1 } %33, 1
  %ZF31 = icmp eq i32 %32, 0
  %highbit32 = and i32 -2147483648, %32
  %SF33 = icmp ne i32 %highbit32, 0
  %34 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX29, i32 48)
  %OF34 = extractvalue { i32, i1 } %34, 1
  %35 = and i32 %32, 255
  %36 = call i32 @llvm.ctpop.i32(i32 %35)
  %37 = and i32 %36, 1
  %PF35 = icmp eq i32 %37, 0
  %SFAndOF_JL = icmp ne i1 %SF33, %OF34
  br i1 %SFAndOF_JL, label %bb.8, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload36 = load i64, ptr %RBP_N.8, align 1
  %memload37 = load i64, ptr %RBP_N.28, align 1
  %38 = trunc i64 %memload37 to i32
  %RCX38 = sext i32 %38 to i64
  %memref-idxreg39 = mul i64 8, %RCX38
  %memref-basereg40 = add i64 %memload36, %memref-idxreg39
  %39 = inttoptr i64 %memref-basereg40 to ptr
  %memload41 = load i64, ptr %39, align 1
  %memload42 = load i64, ptr %RBP_N.36, align 1
  %40 = trunc i64 %memload42 to i32
  %RCX43 = sext i32 %40 to i64
  %memref-basereg44 = add i64 %memload41, %RCX43
  %41 = inttoptr i64 %memref-basereg44 to ptr
  %memload45 = load i32, ptr %41, align 1
  %42 = trunc i32 %memload45 to i8
  %EAX46 = sext i8 %42 to i32
  %43 = sub i32 %EAX46, 57
  %44 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX46, i32 57)
  %CF47 = extractvalue { i32, i1 } %44, 1
  %ZF48 = icmp eq i32 %43, 0
  %highbit49 = and i32 -2147483648, %43
  %SF50 = icmp ne i32 %highbit49, 0
  %45 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX46, i32 57)
  %OF51 = extractvalue { i32, i1 } %45, 1
  %46 = and i32 %43, 255
  %47 = call i32 @llvm.ctpop.i32(i32 %46)
  %48 = and i32 %47, 1
  %PF52 = icmp eq i32 %48, 0
  %ZFCmp_JG = icmp eq i1 %ZF48, false
  %SFOFCmp_JG = icmp eq i1 %SF50, %OF51
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.8, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload53 = load i64, ptr %RBP_N.8, align 1
  %memload54 = load i64, ptr %RBP_N.28, align 1
  %49 = trunc i64 %memload54 to i32
  %RCX55 = sext i32 %49 to i64
  %memref-idxreg56 = mul i64 8, %RCX55
  %memref-basereg57 = add i64 %memload53, %memref-idxreg56
  %50 = inttoptr i64 %memref-basereg57 to ptr
  %memload58 = load i64, ptr %50, align 1
  %memload59 = load i64, ptr %RBP_N.36, align 1
  %51 = trunc i64 %memload59 to i32
  %RCX60 = sext i32 %51 to i64
  %memref-basereg61 = add i64 %memload58, %RCX60
  %52 = inttoptr i64 %memref-basereg61 to ptr
  %memload62 = load i32, ptr %52, align 1
  %53 = trunc i32 %memload62 to i8
  %EAX63 = sext i8 %53 to i32
  %EAX70 = sub i32 %EAX63, 48
  %54 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX63, i32 48)
  %CF64 = extractvalue { i32, i1 } %54, 1
  %55 = and i32 %EAX70, 255
  %56 = call i32 @llvm.ctpop.i32(i32 %55)
  %57 = and i32 %56, 1
  %PF65 = icmp eq i32 %57, 0
  %ZF66 = icmp eq i32 %EAX70, 0
  %highbit67 = and i32 -2147483648, %EAX70
  %SF68 = icmp ne i32 %highbit67, 0
  %58 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX63, i32 48)
  %OF69 = extractvalue { i32, i1 } %58, 1
  %59 = sext i32 %EAX70 to i64
  %60 = lshr i64 %59, 32
  %EDX = trunc i64 %60 to i32
  %61 = sext i32 %EAX70 to i64
  %62 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %62, 32
  %dividend = or i64 %div_hb_ls, %61
  %63 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %63
  %EAX71 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %63
  %EDX72 = trunc i64 %div_r to i32
  %64 = sub i32 %EDX72, 1
  %65 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX72, i32 1)
  %CF73 = extractvalue { i32, i1 } %65, 1
  %ZF74 = icmp eq i32 %64, 0
  %highbit75 = and i32 -2147483648, %64
  %SF76 = icmp ne i32 %highbit75, 0
  %66 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX72, i32 1)
  %OF77 = extractvalue { i32, i1 } %66, 1
  %67 = and i32 %64, 255
  %68 = call i32 @llvm.ctpop.i32(i32 %67)
  %69 = and i32 %68, 1
  %PF78 = icmp eq i32 %69, 0
  %CmpZF_JNE = icmp eq i1 %ZF74, false
  br i1 %CmpZF_JNE, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload79 = load i32, ptr %RBP_N.32, align 1
  %EAX86 = add i32 %memload79, 1
  %70 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload79, i32 1)
  %CF80 = extractvalue { i32, i1 } %70, 1
  %71 = and i32 %EAX86, 255
  %72 = call i32 @llvm.ctpop.i32(i32 %71)
  %73 = and i32 %72, 1
  %PF81 = icmp eq i32 %73, 0
  %ZF82 = icmp eq i32 %EAX86, 0
  %highbit83 = and i32 -2147483648, %EAX86
  %SF84 = icmp ne i32 %highbit83, 0
  %74 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload79, i32 1)
  %OF85 = extractvalue { i32, i1 } %74, 1
  store i32 %EAX86, ptr %RBP_N.32, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.6, %bb.5, %bb.4
  br label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload87 = load i32, ptr %RBP_N.36, align 1
  %EAX94 = add i32 %memload87, 1
  %75 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload87, i32 1)
  %CF88 = extractvalue { i32, i1 } %75, 1
  %76 = and i32 %EAX94, 255
  %77 = call i32 @llvm.ctpop.i32(i32 %76)
  %78 = and i32 %77, 1
  %PF89 = icmp eq i32 %78, 0
  %ZF90 = icmp eq i32 %EAX94, 0
  %highbit91 = and i32 -2147483648, %EAX94
  %SF92 = icmp ne i32 %highbit91, 0
  %79 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload87, i32 1)
  %OF93 = extractvalue { i32, i1 } %79, 1
  store i32 %EAX94, ptr %RBP_N.36, align 1
  br label %bb.3

bb.10:                                            ; preds = %bb.3
  %80 = zext i32 100 to i64
  %81 = call ptr @malloc(i64 %80)
  %RAX95 = ptrtoint ptr %81 to i64
  %memload96 = load i64, ptr %RBP_N.24, align 1
  %memload97 = load i64, ptr %RBP_N.28, align 1
  %82 = trunc i64 %memload97 to i32
  %RCX98 = sext i32 %82 to i64
  %memref-idxreg99 = mul i64 8, %RCX98
  %memref-basereg100 = add i64 %memload96, %memref-idxreg99
  %83 = inttoptr i64 %memref-basereg100 to ptr
  store i64 %RAX95, ptr %83, align 1
  %memload101 = load i64, ptr %RBP_N.24, align 1
  %memload102 = load i64, ptr %RBP_N.28, align 1
  %84 = trunc i64 %memload102 to i32
  %RCX103 = sext i32 %84 to i64
  %memref-idxreg104 = mul i64 8, %RCX103
  %memref-basereg105 = add i64 %memload101, %memref-idxreg104
  %85 = inttoptr i64 %memref-basereg105 to ptr
  %memload106 = load i64, ptr %85, align 1
  %memload107 = load i32, ptr %RBP_N.32, align 1
  %memload108 = load i32, ptr %RBP_N.32, align 1
  %memload109 = load i32, ptr %RBP_N.32, align 1
  %86 = inttoptr i64 %memload106 to ptr
  %EAX110 = call i32 (ptr, ptr, ...) @sprintf(ptr %86, ptr @0, i32 %memload107, i32 %memload108, i32 %memload109)
  %memload111 = load i32, ptr %RBP_N.28, align 1
  %EAX118 = add i32 %memload111, 1
  %87 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload111, i32 1)
  %CF112 = extractvalue { i32, i1 } %87, 1
  %88 = and i32 %EAX118, 255
  %89 = call i32 @llvm.ctpop.i32(i32 %88)
  %90 = and i32 %89, 1
  %PF113 = icmp eq i32 %90, 0
  %ZF114 = icmp eq i32 %EAX118, 0
  %highbit115 = and i32 -2147483648, %EAX118
  %SF116 = icmp ne i32 %highbit115, 0
  %91 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload111, i32 1)
  %OF117 = extractvalue { i32, i1 } %91, 1
  store i32 %EAX118, ptr %RBP_N.28, align 1
  br label %bb.1

bb.11:                                            ; preds = %bb.1
  %memload119 = load i64, ptr %RBP_N.24, align 1
  ret i64 %memload119
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

!0 = !{i64 8192}
