; ModuleID = 'code.so'
source_filename = "code.so"

@0 = private unnamed_addr constant [3 x i8] c"db\00", align 1, !ROData_SecInfo !0

declare dso_local ptr @malloc(i64)

declare dso_local void @free(ptr)

declare dso_local ptr @strcpy(ptr, ptr)

declare dso_local ptr @strcat(ptr, ptr)

define dso_local i64 @func0(i32 %arg1) {
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
  store i32 %arg1, ptr %RBP_N.12, align 1
  %7 = zext i32 64 to i64
  %8 = call ptr @malloc(i64 %7)
  %RAX = ptrtoint ptr %8 to i64
  store i64 %RAX, ptr %RBP_N.24, align 1
  %9 = load i64, ptr %RBP_N.24, align 1
  %10 = sub i64 %9, 0
  %11 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %9, i64 0)
  %CF = extractvalue { i64, i1 } %11, 1
  %ZF = icmp eq i64 %10, 0
  %highbit = and i64 -9223372036854775808, %10
  %SF = icmp ne i64 %highbit, 0
  %12 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %9, i64 0)
  %OF = extractvalue { i64, i1 } %12, 1
  %13 = and i64 %10, 255
  %14 = call i64 @llvm.ctpop.i64(i64 %13)
  %15 = and i64 %14, 1
  %PF = icmp eq i64 %15, 0
  %CmpZF_JNE = icmp eq i1 %ZF, false
  br i1 %CmpZF_JNE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %16 = sext i32 0 to i64
  store i64 %16, ptr %RBP_N.8, align 1
  br label %bb.11

bb.2:                                             ; preds = %entry
  store i32 62, ptr %RBP_N.28, align 1
  %memload = load i64, ptr %RBP_N.24, align 1
  %memref-disp = add i64 %memload, 63
  %17 = inttoptr i64 %memref-disp to ptr
  store i8 0, ptr %17, align 1
  %18 = load i32, ptr %RBP_N.12, align 1
  %19 = zext i32 %18 to i64
  %20 = zext i32 0 to i64
  %21 = sub i64 %19, %20
  %22 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %19, i64 %20)
  %CF1 = extractvalue { i64, i1 } %22, 1
  %ZF2 = icmp eq i64 %21, 0
  %highbit3 = and i64 -9223372036854775808, %21
  %SF4 = icmp ne i64 %highbit3, 0
  %23 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %19, i64 %20)
  %OF5 = extractvalue { i64, i1 } %23, 1
  %24 = and i64 %21, 255
  %25 = call i64 @llvm.ctpop.i64(i64 %24)
  %26 = and i64 %25, 1
  %PF6 = icmp eq i64 %26, 0
  %CmpZF_JNE116 = icmp eq i1 %ZF2, false
  br i1 %CmpZF_JNE116, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload7 = load i64, ptr %RBP_N.24, align 1
  %memload8 = load i32, ptr %RBP_N.28, align 1
  %EDX = add i32 %memload8, -1
  %27 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload8, i32 -1)
  %CF9 = extractvalue { i32, i1 } %27, 1
  %28 = and i32 %EDX, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = and i32 %29, 1
  %PF10 = icmp eq i32 %30, 0
  %ZF11 = icmp eq i32 %EDX, 0
  %highbit12 = and i32 -2147483648, %EDX
  %SF13 = icmp ne i32 %highbit12, 0
  %31 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload8, i32 -1)
  %OF14 = extractvalue { i32, i1 } %31, 1
  store i32 %EDX, ptr %RBP_N.28, align 1
  %RCX = sext i32 %memload8 to i64
  %memref-basereg = add i64 %memload7, %RCX
  %32 = inttoptr i64 %memref-basereg to ptr
  store i8 48, ptr %32, align 1
  br label %bb.8

bb.4:                                             ; preds = %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.6, %bb.4
  %33 = load i32, ptr %RBP_N.12, align 1
  %34 = zext i32 %33 to i64
  %35 = zext i32 0 to i64
  %36 = sub i64 %34, %35
  %37 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %35)
  %CF15 = extractvalue { i64, i1 } %37, 1
  %ZF16 = icmp eq i64 %36, 0
  %highbit17 = and i64 -9223372036854775808, %36
  %SF18 = icmp ne i64 %highbit17, 0
  %38 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %34, i64 %35)
  %OF19 = extractvalue { i64, i1 } %38, 1
  %39 = and i64 %36, 255
  %40 = call i64 @llvm.ctpop.i64(i64 %39)
  %41 = and i64 %40, 1
  %PF20 = icmp eq i64 %41, 0
  %CmpZF_JLE = icmp eq i1 %ZF16, true
  %CmpOF_JLE = icmp ne i1 %SF18, %OF19
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload21 = load i32, ptr %RBP_N.12, align 1
  %42 = sext i32 %memload21 to i64
  %43 = lshr i64 %42, 32
  %EDX22 = trunc i64 %43 to i32
  %44 = sext i32 %memload21 to i64
  %45 = sext i32 %EDX22 to i64
  %div_hb_ls = shl nuw i64 %45, 32
  %dividend = or i64 %div_hb_ls, %44
  %46 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %46
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %46
  %EDX23 = trunc i64 %div_r to i32
  %EDX30 = add i32 %EDX23, 48
  %47 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EDX23, i32 48)
  %CF24 = extractvalue { i32, i1 } %47, 1
  %48 = and i32 %EDX30, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48)
  %50 = and i32 %49, 1
  %PF25 = icmp eq i32 %50, 0
  %ZF26 = icmp eq i32 %EDX30, 0
  %highbit27 = and i32 -2147483648, %EDX30
  %SF28 = icmp ne i32 %highbit27, 0
  %51 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EDX23, i32 48)
  %OF29 = extractvalue { i32, i1 } %51, 1
  %memload31 = load i64, ptr %RBP_N.24, align 1
  %memload32 = load i32, ptr %RBP_N.28, align 1
  %ESI = add i32 %memload32, -1
  %52 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload32, i32 -1)
  %CF33 = extractvalue { i32, i1 } %52, 1
  %53 = and i32 %ESI, 255
  %54 = call i32 @llvm.ctpop.i32(i32 %53)
  %55 = and i32 %54, 1
  %PF34 = icmp eq i32 %55, 0
  %ZF35 = icmp eq i32 %ESI, 0
  %highbit36 = and i32 -2147483648, %ESI
  %SF37 = icmp ne i32 %highbit36, 0
  %56 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload32, i32 -1)
  %OF38 = extractvalue { i32, i1 } %56, 1
  store i32 %ESI, ptr %RBP_N.28, align 1
  %RCX39 = sext i32 %memload32 to i64
  %memref-basereg40 = add i64 %memload31, %RCX39
  %57 = trunc i32 %EDX30 to i8
  %58 = inttoptr i64 %memref-basereg40 to ptr
  store i8 %57, ptr %58, align 1
  %memload41 = load i32, ptr %RBP_N.12, align 1
  %59 = sext i32 %memload41 to i64
  %60 = lshr i64 %59, 32
  %EDX42 = trunc i64 %60 to i32
  %61 = sext i32 %memload41 to i64
  %62 = sext i32 %EDX42 to i64
  %div_hb_ls43 = shl nuw i64 %62, 32
  %dividend44 = or i64 %div_hb_ls43, %61
  %63 = sext i32 2 to i64
  %div_q45 = sdiv i64 %dividend44, %63
  %EAX46 = trunc i64 %div_q45 to i32
  %div_r47 = srem i64 %dividend44, %63
  %EDX48 = trunc i64 %div_r47 to i32
  store i32 %EAX46, ptr %RBP_N.12, align 1
  br label %bb.5

bb.7:                                             ; preds = %bb.5
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.3
  %memload49 = load i64, ptr %RBP_N.24, align 1
  %memload50 = load i32, ptr %RBP_N.28, align 1
  %EDX57 = add i32 %memload50, -1
  %64 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload50, i32 -1)
  %CF51 = extractvalue { i32, i1 } %64, 1
  %65 = and i32 %EDX57, 255
  %66 = call i32 @llvm.ctpop.i32(i32 %65)
  %67 = and i32 %66, 1
  %PF52 = icmp eq i32 %67, 0
  %ZF53 = icmp eq i32 %EDX57, 0
  %highbit54 = and i32 -2147483648, %EDX57
  %SF55 = icmp ne i32 %highbit54, 0
  %68 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload50, i32 -1)
  %OF56 = extractvalue { i32, i1 } %68, 1
  store i32 %EDX57, ptr %RBP_N.28, align 1
  %RCX58 = sext i32 %memload50 to i64
  %memref-basereg59 = add i64 %memload49, %RCX58
  %69 = inttoptr i64 %memref-basereg59 to ptr
  store i8 98, ptr %69, align 1
  %memload60 = load i64, ptr %RBP_N.24, align 1
  %memload61 = load i32, ptr %RBP_N.28, align 1
  %EDX68 = add i32 %memload61, -1
  %70 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload61, i32 -1)
  %CF62 = extractvalue { i32, i1 } %70, 1
  %71 = and i32 %EDX68, 255
  %72 = call i32 @llvm.ctpop.i32(i32 %71)
  %73 = and i32 %72, 1
  %PF63 = icmp eq i32 %73, 0
  %ZF64 = icmp eq i32 %EDX68, 0
  %highbit65 = and i32 -2147483648, %EDX68
  %SF66 = icmp ne i32 %highbit65, 0
  %74 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload61, i32 -1)
  %OF67 = extractvalue { i32, i1 } %74, 1
  store i32 %EDX68, ptr %RBP_N.28, align 1
  %RCX69 = sext i32 %memload61 to i64
  %memref-basereg70 = add i64 %memload60, %RCX69
  %75 = inttoptr i64 %memref-basereg70 to ptr
  store i8 100, ptr %75, align 1
  %memload71 = load i32, ptr %RBP_N.28, align 1
  %EAX78 = add i32 %memload71, 1
  %76 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload71, i32 1)
  %CF72 = extractvalue { i32, i1 } %76, 1
  %77 = and i32 %EAX78, 255
  %78 = call i32 @llvm.ctpop.i32(i32 %77)
  %79 = and i32 %78, 1
  %PF73 = icmp eq i32 %79, 0
  %ZF74 = icmp eq i32 %EAX78, 0
  %highbit75 = and i32 -2147483648, %EAX78
  %SF76 = icmp ne i32 %highbit75, 0
  %80 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload71, i32 1)
  %OF77 = extractvalue { i32, i1 } %80, 1
  store i32 %EAX78, ptr %RBP_N.32, align 1
  %81 = load i32, ptr %RBP_N.32, align 1
  %EAX79 = sub i32 62, %81
  %82 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 62, i32 %81)
  %CF80 = extractvalue { i32, i1 } %82, 1
  %ZF81 = icmp eq i32 %EAX79, 0
  %highbit82 = and i32 -2147483648, %EAX79
  %SF83 = icmp ne i32 %highbit82, 0
  %83 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 62, i32 %81)
  %OF84 = extractvalue { i32, i1 } %83, 1
  %84 = and i32 %EAX79, 255
  %85 = call i32 @llvm.ctpop.i32(i32 %84)
  %86 = and i32 %85, 1
  %PF85 = icmp eq i32 %86, 0
  store i32 %EAX79, ptr %RBP_N.36, align 1
  %memload86 = load i32, ptr %RBP_N.36, align 1
  %EAX93 = add i32 %memload86, 3
  %87 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload86, i32 3)
  %CF87 = extractvalue { i32, i1 } %87, 1
  %88 = and i32 %EAX93, 255
  %89 = call i32 @llvm.ctpop.i32(i32 %88)
  %90 = and i32 %89, 1
  %PF88 = icmp eq i32 %90, 0
  %ZF89 = icmp eq i32 %EAX93, 0
  %highbit90 = and i32 -2147483648, %EAX93
  %SF91 = icmp ne i32 %highbit90, 0
  %91 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload86, i32 3)
  %OF92 = extractvalue { i32, i1 } %91, 1
  %RDI = sext i32 %EAX93 to i64
  %92 = call ptr @malloc(i64 %RDI)
  %RAX94 = ptrtoint ptr %92 to i64
  store i64 %RAX94, ptr %stktop_8, align 1
  %93 = load i64, ptr %stktop_8, align 1
  %94 = sub i64 %93, 0
  %95 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %93, i64 0)
  %CF95 = extractvalue { i64, i1 } %95, 1
  %ZF96 = icmp eq i64 %94, 0
  %highbit97 = and i64 -9223372036854775808, %94
  %SF98 = icmp ne i64 %highbit97, 0
  %96 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %93, i64 0)
  %OF99 = extractvalue { i64, i1 } %96, 1
  %97 = and i64 %94, 255
  %98 = call i64 @llvm.ctpop.i64(i64 %97)
  %99 = and i64 %98, 1
  %PF100 = icmp eq i64 %99, 0
  %CmpZF_JNE117 = icmp eq i1 %ZF96, false
  br i1 %CmpZF_JNE117, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload101 = load i64, ptr %RBP_N.24, align 1
  %100 = inttoptr i64 %memload101 to ptr
  call void @free(ptr %100)
  %101 = sext i32 0 to i64
  store i64 %101, ptr %RBP_N.8, align 1
  br label %bb.11

bb.10:                                            ; preds = %bb.8
  %memload102 = load i64, ptr %stktop_8, align 1
  %memload103 = load i64, ptr %RBP_N.24, align 1
  %memload104 = load i64, ptr %RBP_N.32, align 1
  %102 = trunc i64 %memload104 to i32
  %RAX105 = sext i32 %102 to i64
  %RSI = add nsw i64 %memload103, %RAX105
  %highbit106 = and i64 -9223372036854775808, %RSI
  %SF107 = icmp ne i64 %highbit106, 0
  %ZF108 = icmp eq i64 %RSI, 0
  %103 = inttoptr i64 %memload102 to ptr
  %104 = inttoptr i64 %RSI to ptr
  %105 = call ptr @strcpy(ptr %103, ptr %104)
  %RAX109 = ptrtoint ptr %105 to i64
  %memload110 = load i64, ptr %stktop_8, align 1
  %106 = inttoptr i64 %memload110 to ptr
  %107 = call ptr @strcat(ptr %106, ptr @0)
  %RAX112 = ptrtoint ptr %107 to i64
  %memload113 = load i64, ptr %RBP_N.24, align 1
  %108 = inttoptr i64 %memload113 to ptr
  call void @free(ptr %108)
  %memload114 = load i64, ptr %stktop_8, align 1
  store i64 %memload114, ptr %RBP_N.8, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.9, %bb.1
  %memload115 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload115
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 8192}
