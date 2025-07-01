; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @strncpy(ptr, ptr, i64)

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %EAX-SKT-LOC = alloca i64, align 8
  %ECX-SKT-LOC = alloca i64, align 8
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 22
  %RBP_N.34 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 23
  %RBP_N.33 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 32
  %6 = inttoptr i64 %5 to ptr
  %7 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 44
  %RBP_N.12 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %11 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  %12 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %12)
  %13 = trunc i64 %RAX to i32
  store i32 %13, ptr %RBP_N.16, align 1
  %memload1 = load i32, ptr %RBP_N.16, align 1
  %EAX = add i32 %memload1, 2
  %14 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload1, i32 2)
  %CF = extractvalue { i32, i1 } %14, 1
  %15 = and i32 %EAX, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = and i32 %16, 1
  %PF = icmp eq i32 %17, 0
  %ZF = icmp eq i32 %EAX, 0
  %highbit = and i32 -2147483648, %EAX
  %SF = icmp ne i32 %highbit, 0
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload1, i32 2)
  %OF = extractvalue { i32, i1 } %18, 1
  %19 = sext i32 %EAX to i64
  %20 = lshr i64 %19, 32
  %EDX = trunc i64 %20 to i32
  %21 = sext i32 %EAX to i64
  %22 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %22, 32
  %dividend = or i64 %div_hb_ls, %21
  %23 = sext i32 3 to i64
  %div_q = sdiv i64 %dividend, %23
  %EAX2 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %23
  %EDX3 = trunc i64 %div_r to i32
  store i32 %EAX2, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.28, align 1
  %24 = zext i32 3 to i64
  store i64 %24, ptr %ECX-SKT-LOC, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.10
  %memload4 = load i32, ptr %RBP_N.28, align 1
  %25 = load i32, ptr %RBP_N.20, align 1
  %26 = sub i32 %memload4, %25
  %27 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload4, i32 %25)
  %CF5 = extractvalue { i32, i1 } %27, 1
  %ZF6 = icmp eq i32 %26, 0
  %highbit7 = and i32 -2147483648, %26
  %SF8 = icmp ne i32 %highbit7, 0
  %28 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload4, i32 %25)
  %OF9 = extractvalue { i32, i1 } %28, 1
  %29 = and i32 %26, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = and i32 %30, 1
  %PF10 = icmp eq i32 %31, 0
  %CmpSFOF_JGE = icmp eq i1 %SF8, %OF9
  br i1 %CmpSFOF_JGE, label %bb.11, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload11 = load i32, ptr %RBP_N.28, align 1
  %EAX12 = mul i32 3, %memload11
  %EAX19 = add i32 %EAX12, 3
  %32 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EAX12, i32 3)
  %CF13 = extractvalue { i32, i1 } %32, 1
  %33 = and i32 %EAX19, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = and i32 %34, 1
  %PF14 = icmp eq i32 %35, 0
  %ZF15 = icmp eq i32 %EAX19, 0
  %highbit16 = and i32 -2147483648, %EAX19
  %SF17 = icmp ne i32 %highbit16, 0
  %36 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EAX12, i32 3)
  %OF18 = extractvalue { i32, i1 } %36, 1
  %37 = load i32, ptr %RBP_N.16, align 1
  %38 = sub i32 %EAX19, %37
  %39 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX19, i32 %37)
  %CF20 = extractvalue { i32, i1 } %39, 1
  %ZF21 = icmp eq i32 %38, 0
  %highbit22 = and i32 -2147483648, %38
  %SF23 = icmp ne i32 %highbit22, 0
  %40 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX19, i32 %37)
  %OF24 = extractvalue { i32, i1 } %40, 1
  %41 = and i32 %38, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41)
  %43 = and i32 %42, 1
  %PF25 = icmp eq i32 %43, 0
  %ZFCmp_JG = icmp eq i1 %ZF21, false
  %SFOFCmp_JG = icmp eq i1 %SF23, %OF24
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  store i32 3, ptr %RBP_N.40, align 1
  br label %bb.5

bb.4:                                             ; preds = %bb.2
  %memload26 = load i32, ptr %RBP_N.16, align 1
  %44 = load i64, ptr %ECX-SKT-LOC, align 1
  %ECX = trunc i64 %44 to i32
  %memload27 = load i32, ptr %RBP_N.28, align 1
  %ECX28 = mul i32 3, %memload27
  %EAX29 = sub i32 %memload26, %ECX28
  %45 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload26, i32 %ECX28)
  %CF30 = extractvalue { i32, i1 } %45, 1
  %ZF31 = icmp eq i32 %EAX29, 0
  %highbit32 = and i32 -2147483648, %EAX29
  %SF33 = icmp ne i32 %highbit32, 0
  %46 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload26, i32 %ECX28)
  %OF34 = extractvalue { i32, i1 } %46, 1
  %47 = and i32 %EAX29, 255
  %48 = call i32 @llvm.ctpop.i32(i32 %47)
  %49 = and i32 %48, 1
  %PF35 = icmp eq i32 %49, 0
  store i32 %EAX29, ptr %RBP_N.40, align 1
  %50 = zext i32 %ECX28 to i64
  store i64 %50, ptr %ECX-SKT-LOC, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3
  %memload36 = load i32, ptr %RBP_N.40, align 1
  store i32 %memload36, ptr %RBP_N.32, align 1
  %memload37 = load i64, ptr %RBP_N.8, align 1
  %memload38 = load i32, ptr %RBP_N.28, align 1
  %EAX39 = mul i32 3, %memload38
  %RAX40 = sext i32 %EAX39 to i64
  %RSI = add nsw i64 %memload37, %RAX40
  %highbit41 = and i64 -9223372036854775808, %RSI
  %SF42 = icmp ne i64 %highbit41, 0
  %ZF43 = icmp eq i64 %RSI, 0
  %memload44 = load i64, ptr %RBP_N.32, align 1
  %51 = trunc i64 %memload44 to i32
  %RDX = sext i32 %51 to i64
  %52 = inttoptr i64 %RSI to ptr
  %53 = call ptr @strncpy(ptr %6, ptr %52, i64 %RDX)
  %RAX45 = ptrtoint ptr %53 to i64
  %memload46 = load i64, ptr %RBP_N.32, align 1
  %54 = trunc i64 %memload46 to i32
  %RAX47 = sext i32 %54 to i64
  %55 = getelementptr i8, ptr %6, i64 %RAX47
  store i8 0, ptr %55, align 1
  %56 = load i32, ptr %RBP_N.32, align 1
  %57 = zext i32 %56 to i64
  %58 = zext i32 3 to i64
  %59 = sub i64 %57, %58
  %60 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %57, i64 %58)
  %CF48 = extractvalue { i64, i1 } %60, 1
  %ZF49 = icmp eq i64 %59, 0
  %highbit50 = and i64 -9223372036854775808, %59
  %SF51 = icmp ne i64 %highbit50, 0
  %61 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %57, i64 %58)
  %OF52 = extractvalue { i64, i1 } %61, 1
  %62 = and i64 %59, 255
  %63 = call i64 @llvm.ctpop.i64(i64 %62)
  %64 = and i64 %63, 1
  %PF53 = icmp eq i64 %64, 0
  store i64 %RAX47, ptr %EAX-SKT-LOC, align 1
  %CmpZF_JNE = icmp eq i1 %ZF49, false
  br i1 %CmpZF_JNE, label %bb.10, label %bb.6

bb.6:                                             ; preds = %bb.5
  %65 = load i32, ptr %RBP_N.12, align 1
  %66 = zext i32 %65 to i64
  %67 = zext i32 0 to i64
  %68 = sub i64 %66, %67
  %69 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %66, i64 %67)
  %CF54 = extractvalue { i64, i1 } %69, 1
  %ZF55 = icmp eq i64 %68, 0
  %highbit56 = and i64 -9223372036854775808, %68
  %SF57 = icmp ne i64 %highbit56, 0
  %70 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %66, i64 %67)
  %OF58 = extractvalue { i64, i1 } %70, 1
  %71 = and i64 %68, 255
  %72 = call i64 @llvm.ctpop.i64(i64 %71)
  %73 = and i64 %72, 1
  %PF59 = icmp eq i64 %73, 0
  %CmpZF_JE = icmp eq i1 %ZF55, true
  br i1 %CmpZF_JE, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %74 = getelementptr i8, ptr %6, i64 2
  %memload60 = load i8, ptr %74, align 1
  store i8 %memload60, ptr %RBP_N.33, align 1
  %75 = getelementptr i8, ptr %6, i64 1
  %memload61 = load i8, ptr %75, align 1
  %76 = getelementptr i8, ptr %6, i64 2
  store i8 %memload61, ptr %76, align 1
  %memload62 = load i8, ptr %6, align 1
  %77 = getelementptr i8, ptr %6, i64 1
  store i8 %memload62, ptr %77, align 1
  %memload63 = load i8, ptr %RBP_N.33, align 1
  store i8 %memload63, ptr %6, align 1
  %78 = zext i8 %memload63 to i64
  store i64 %78, ptr %EAX-SKT-LOC, align 1
  br label %bb.9

bb.8:                                             ; preds = %bb.6
  %memload64 = load i8, ptr %6, align 1
  store i8 %memload64, ptr %RBP_N.34, align 1
  %79 = getelementptr i8, ptr %6, i64 1
  %memload65 = load i8, ptr %79, align 1
  store i8 %memload65, ptr %6, align 1
  %80 = getelementptr i8, ptr %6, i64 2
  %memload66 = load i8, ptr %80, align 1
  %81 = getelementptr i8, ptr %6, i64 1
  store i8 %memload66, ptr %81, align 1
  %memload67 = load i8, ptr %RBP_N.34, align 1
  %82 = getelementptr i8, ptr %6, i64 2
  store i8 %memload67, ptr %82, align 1
  %83 = zext i8 %memload67 to i64
  store i64 %83, ptr %EAX-SKT-LOC, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.7
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.5
  %memload68 = load i64, ptr %RBP_N.8, align 1
  %84 = load i64, ptr %EAX-SKT-LOC, align 1
  %EAX69 = trunc i64 %84 to i32
  %memload70 = load i32, ptr %RBP_N.28, align 1
  %EAX71 = mul i32 3, %memload70
  %RAX72 = sext i32 %EAX71 to i64
  %RDI76 = add nsw i64 %memload68, %RAX72
  %highbit73 = and i64 -9223372036854775808, %RDI76
  %SF74 = icmp ne i64 %highbit73, 0
  %ZF75 = icmp eq i64 %RDI76, 0
  %memload78 = load i64, ptr %RBP_N.32, align 1
  %85 = trunc i64 %memload78 to i32
  %RDX79 = sext i32 %85 to i64
  %86 = inttoptr i64 %RDI76 to ptr
  %87 = call ptr @strncpy(ptr %86, ptr %6, i64 %RDX79)
  %RAX80 = ptrtoint ptr %87 to i64
  %memload81 = load i32, ptr %RBP_N.28, align 1
  %EAX88 = add i32 %memload81, 1
  %88 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload81, i32 1)
  %CF82 = extractvalue { i32, i1 } %88, 1
  %89 = and i32 %EAX88, 255
  %90 = call i32 @llvm.ctpop.i32(i32 %89)
  %91 = and i32 %90, 1
  %PF83 = icmp eq i32 %91, 0
  %ZF84 = icmp eq i32 %EAX88, 0
  %highbit85 = and i32 -2147483648, %EAX88
  %SF86 = icmp ne i32 %highbit85, 0
  %92 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload81, i32 1)
  %OF87 = extractvalue { i32, i1 } %92, 1
  store i32 %EAX88, ptr %RBP_N.28, align 1
  br label %bb.1

bb.11:                                            ; preds = %bb.1
  ret i32 %memload4
}

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
