; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2, i32 %arg3) {
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
  %4 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 55
  %RBP_N.1 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  store i32 %arg3, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  store i32 0, ptr %RBP_N.32, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.4
  %memload = load i32, ptr %RBP_N.32, align 1
  store i32 %memload, ptr %RBP_N.36, align 1
  %memload1 = load i32, ptr %RBP_N.20, align 1
  %8 = sext i32 %memload1 to i64
  %9 = lshr i64 %8, 32
  %EDX = trunc i64 %9 to i32
  %10 = sext i32 %memload1 to i64
  %11 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %11, 32
  %dividend = or i64 %div_hb_ls, %10
  %12 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %12
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %12
  %EDX2 = trunc i64 %div_r to i32
  %memload3 = load i32, ptr %RBP_N.36, align 1
  %13 = sub i32 %memload3, %EAX
  %14 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload3, i32 %EAX)
  %CF = extractvalue { i32, i1 } %14, 1
  %ZF = icmp eq i32 %13, 0
  %highbit = and i32 -2147483648, %13
  %SF = icmp ne i32 %highbit, 0
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload3, i32 %EAX)
  %OF = extractvalue { i32, i1 } %15, 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = and i32 %17, 1
  %PF = icmp eq i32 %18, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.5, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload4 = load i64, ptr %RBP_N.16, align 1
  %memload5 = load i64, ptr %RBP_N.32, align 1
  %19 = trunc i64 %memload5 to i32
  %RCX = sext i32 %19 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload4, %memref-idxreg
  %20 = inttoptr i64 %memref-basereg to ptr
  %memload6 = load i32, ptr %20, align 1
  %memload7 = load i64, ptr %RBP_N.16, align 1
  %memload8 = load i32, ptr %RBP_N.20, align 1
  %EDX15 = sub i32 %memload8, 1
  %21 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload8, i32 1)
  %CF9 = extractvalue { i32, i1 } %21, 1
  %22 = and i32 %EDX15, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF10 = icmp eq i32 %24, 0
  %ZF11 = icmp eq i32 %EDX15, 0
  %highbit12 = and i32 -2147483648, %EDX15
  %SF13 = icmp ne i32 %highbit12, 0
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload8, i32 1)
  %OF14 = extractvalue { i32, i1 } %25, 1
  %26 = load i32, ptr %RBP_N.32, align 1
  %EDX16 = sub i32 %EDX15, %26
  %27 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX15, i32 %26)
  %CF17 = extractvalue { i32, i1 } %27, 1
  %ZF18 = icmp eq i32 %EDX16, 0
  %highbit19 = and i32 -2147483648, %EDX16
  %SF20 = icmp ne i32 %highbit19, 0
  %28 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX15, i32 %26)
  %OF21 = extractvalue { i32, i1 } %28, 1
  %29 = and i32 %EDX16, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = and i32 %30, 1
  %PF22 = icmp eq i32 %31, 0
  %RDX = sext i32 %EDX16 to i64
  %memref-idxreg23 = mul i64 4, %RDX
  %memref-basereg24 = add i64 %memload7, %memref-idxreg23
  %32 = inttoptr i64 %memref-basereg24 to ptr
  %33 = load i32, ptr %32, align 1
  %34 = sub i32 %memload6, %33
  %35 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload6, i32 %33)
  %CF25 = extractvalue { i32, i1 } %35, 1
  %ZF26 = icmp eq i32 %34, 0
  %highbit27 = and i32 -2147483648, %34
  %SF28 = icmp ne i32 %highbit27, 0
  %36 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload6, i32 %33)
  %OF29 = extractvalue { i32, i1 } %36, 1
  %37 = and i32 %34, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF30 = icmp eq i32 %39, 0
  %CmpZF_JE = icmp eq i1 %ZF26, true
  br i1 %CmpZF_JE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.8

bb.4:                                             ; preds = %bb.2
  %memload31 = load i64, ptr %RBP_N.16, align 1
  %memload32 = load i64, ptr %RBP_N.32, align 1
  %40 = trunc i64 %memload32 to i32
  %RCX33 = sext i32 %40 to i64
  %memref-idxreg34 = mul i64 4, %RCX33
  %memref-basereg35 = add i64 %memload31, %memref-idxreg34
  %41 = inttoptr i64 %memref-basereg35 to ptr
  %memload36 = load i32, ptr %41, align 1
  %memload37 = load i64, ptr %RBP_N.16, align 1
  %memload38 = load i32, ptr %RBP_N.20, align 1
  %EDX45 = sub i32 %memload38, 1
  %42 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload38, i32 1)
  %CF39 = extractvalue { i32, i1 } %42, 1
  %43 = and i32 %EDX45, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF40 = icmp eq i32 %45, 0
  %ZF41 = icmp eq i32 %EDX45, 0
  %highbit42 = and i32 -2147483648, %EDX45
  %SF43 = icmp ne i32 %highbit42, 0
  %46 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload38, i32 1)
  %OF44 = extractvalue { i32, i1 } %46, 1
  %47 = load i32, ptr %RBP_N.32, align 1
  %EDX46 = sub i32 %EDX45, %47
  %48 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX45, i32 %47)
  %CF47 = extractvalue { i32, i1 } %48, 1
  %ZF48 = icmp eq i32 %EDX46, 0
  %highbit49 = and i32 -2147483648, %EDX46
  %SF50 = icmp ne i32 %highbit49, 0
  %49 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX45, i32 %47)
  %OF51 = extractvalue { i32, i1 } %49, 1
  %50 = and i32 %EDX46, 255
  %51 = call i32 @llvm.ctpop.i32(i32 %50)
  %52 = and i32 %51, 1
  %PF52 = icmp eq i32 %52, 0
  %RDX53 = sext i32 %EDX46 to i64
  %memref-idxreg54 = mul i64 4, %RDX53
  %memref-basereg55 = add i64 %memload37, %memref-idxreg54
  %53 = inttoptr i64 %memref-basereg55 to ptr
  %memload56 = load i32, ptr %53, align 1
  %EAX58 = add i32 %memload36, %memload56
  %54 = and i32 %EAX58, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54)
  %56 = and i32 %55, 1
  %PF57 = icmp eq i32 %56, 0
  %memload59 = load i32, ptr %RBP_N.28, align 1
  %EAX61 = add i32 %EAX58, %memload59
  %57 = and i32 %EAX61, 255
  %58 = call i32 @llvm.ctpop.i32(i32 %57)
  %59 = and i32 %58, 1
  %PF60 = icmp eq i32 %59, 0
  store i32 %EAX61, ptr %RBP_N.28, align 1
  %memload62 = load i32, ptr %RBP_N.32, align 1
  %EAX69 = add i32 %memload62, 1
  %60 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload62, i32 1)
  %CF63 = extractvalue { i32, i1 } %60, 1
  %61 = and i32 %EAX69, 255
  %62 = call i32 @llvm.ctpop.i32(i32 %61)
  %63 = and i32 %62, 1
  %PF64 = icmp eq i32 %63, 0
  %ZF65 = icmp eq i32 %EAX69, 0
  %highbit66 = and i32 -2147483648, %EAX69
  %SF67 = icmp ne i32 %highbit66, 0
  %64 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload62, i32 1)
  %OF68 = extractvalue { i32, i1 } %64, 1
  store i32 %EAX69, ptr %RBP_N.32, align 1
  br label %bb.1

bb.5:                                             ; preds = %bb.1
  %memload70 = load i32, ptr %RBP_N.20, align 1
  %65 = sext i32 %memload70 to i64
  %66 = lshr i64 %65, 32
  %EDX71 = trunc i64 %66 to i32
  %67 = sext i32 %memload70 to i64
  %68 = sext i32 %EDX71 to i64
  %div_hb_ls72 = shl nuw i64 %68, 32
  %dividend73 = or i64 %div_hb_ls72, %67
  %69 = sext i32 2 to i64
  %div_q74 = sdiv i64 %dividend73, %69
  %EAX75 = trunc i64 %div_q74 to i32
  %div_r76 = srem i64 %dividend73, %69
  %EDX77 = trunc i64 %div_r76 to i32
  %70 = sub i32 %EDX77, 1
  %71 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX77, i32 1)
  %CF78 = extractvalue { i32, i1 } %71, 1
  %ZF79 = icmp eq i32 %70, 0
  %highbit80 = and i32 -2147483648, %70
  %SF81 = icmp ne i32 %highbit80, 0
  %72 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX77, i32 1)
  %OF82 = extractvalue { i32, i1 } %72, 1
  %73 = and i32 %70, 255
  %74 = call i32 @llvm.ctpop.i32(i32 %73)
  %75 = and i32 %74, 1
  %PF83 = icmp eq i32 %75, 0
  %CmpZF_JNE = icmp eq i1 %ZF79, false
  br i1 %CmpZF_JNE, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload84 = load i64, ptr %RBP_N.16, align 1
  store i64 %memload84, ptr %stktop_8, align 1
  %memload85 = load i32, ptr %RBP_N.20, align 1
  %76 = sext i32 %memload85 to i64
  %77 = lshr i64 %76, 32
  %EDX86 = trunc i64 %77 to i32
  %78 = sext i32 %memload85 to i64
  %79 = sext i32 %EDX86 to i64
  %div_hb_ls87 = shl nuw i64 %79, 32
  %dividend88 = or i64 %div_hb_ls87, %78
  %80 = sext i32 2 to i64
  %div_q89 = sdiv i64 %dividend88, %80
  %EAX90 = trunc i64 %div_q89 to i32
  %div_r91 = srem i64 %dividend88, %80
  %EDX92 = trunc i64 %div_r91 to i32
  %memload93 = load i64, ptr %stktop_8, align 1
  %RCX94 = sext i32 %EAX90 to i64
  %memref-idxreg95 = mul i64 4, %RCX94
  %memref-basereg96 = add i64 %memload93, %memref-idxreg95
  %81 = inttoptr i64 %memref-basereg96 to ptr
  %memload97 = load i32, ptr %81, align 1
  %memload98 = load i32, ptr %RBP_N.28, align 1
  %EAX100 = add i32 %memload97, %memload98
  %82 = and i32 %EAX100, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82)
  %84 = and i32 %83, 1
  %PF99 = icmp eq i32 %84, 0
  store i32 %EAX100, ptr %RBP_N.28, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.5
  %memload101 = load i32, ptr %RBP_N.28, align 1
  %85 = load i32, ptr %RBP_N.24, align 1
  %86 = sub i32 %memload101, %85
  %87 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload101, i32 %85)
  %CF102 = extractvalue { i32, i1 } %87, 1
  %ZF103 = icmp eq i32 %86, 0
  %highbit104 = and i32 -2147483648, %86
  %SF105 = icmp ne i32 %highbit104, 0
  %88 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload101, i32 %85)
  %OF106 = extractvalue { i32, i1 } %88, 1
  %89 = and i32 %86, 255
  %90 = call i32 @llvm.ctpop.i32(i32 %89)
  %91 = and i32 %90, 1
  %PF107 = icmp eq i32 %91, 0
  %ZFCmp_SETLE = icmp eq i1 %ZF103, true
  %SFOFCmp_SETLE = icmp ne i1 %SF105, %OF106
  %Cond_SETLE = or i1 %ZFCmp_SETLE, %SFOFCmp_SETLE
  %92 = zext i1 %Cond_SETLE to i8
  %AL = and i8 %92, 1
  %93 = call i8 @llvm.ctpop.i8(i8 %AL)
  %94 = and i8 %93, 1
  %PF108 = icmp eq i8 %94, 0
  %ZF109 = icmp eq i8 %AL, 0
  %highbit110 = and i8 -128, %AL
  %SF111 = icmp ne i8 %highbit110, 0
  store i8 %AL, ptr %RBP_N.1, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.3
  %memload112 = load i8, ptr %RBP_N.1, align 1
  %AL117 = and i8 %memload112, 1
  %95 = call i8 @llvm.ctpop.i8(i8 %AL117)
  %96 = and i8 %95, 1
  %PF113 = icmp eq i8 %96, 0
  %ZF114 = icmp eq i8 %AL117, 0
  %highbit115 = and i8 -128, %AL117
  %SF116 = icmp ne i8 %highbit115, 0
  %EAX118 = zext i8 %AL117 to i32
  ret i32 %EAX118
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
declare i8 @llvm.ctpop.i8(i8) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
