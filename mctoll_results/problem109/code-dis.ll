; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i32 @abs(i32)

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.12 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i32 0, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.11
  %memload = load i32, ptr %RBP_N.20, align 1
  %6 = load i32, ptr %RBP_N.12, align 1
  %7 = sub i32 %memload, %6
  %8 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %6)
  %CF = extractvalue { i32, i1 } %8, 1
  %ZF = icmp eq i32 %7, 0
  %highbit = and i32 -2147483648, %7
  %SF = icmp ne i32 %highbit, 0
  %9 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %6)
  %OF = extractvalue { i32, i1 } %9, 1
  %10 = and i32 %7, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = and i32 %11, 1
  %PF = icmp eq i32 %12, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.12, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.8, align 1
  %memload2 = load i64, ptr %RBP_N.20, align 1
  %13 = trunc i64 %memload2 to i32
  %RCX = sext i32 %13 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %14 = inttoptr i64 %memref-basereg to ptr
  %15 = load i32, ptr %14, align 1
  %16 = zext i32 %15 to i64
  %17 = zext i32 0 to i64
  %18 = sub i64 %16, %17
  %19 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %16, i64 %17)
  %CF3 = extractvalue { i64, i1 } %19, 1
  %ZF4 = icmp eq i64 %18, 0
  %highbit5 = and i64 -9223372036854775808, %18
  %SF6 = icmp ne i64 %highbit5, 0
  %20 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %16, i64 %17)
  %OF7 = extractvalue { i64, i1 } %20, 1
  %21 = and i64 %18, 255
  %22 = call i64 @llvm.ctpop.i64(i64 %21)
  %23 = and i64 %22, 1
  %PF8 = icmp eq i64 %23, 0
  %CmpZF_JLE = icmp eq i1 %ZF4, true
  %CmpOF_JLE = icmp ne i1 %SF6, %OF7
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload9 = load i32, ptr %RBP_N.16, align 1
  %EAX = add i32 %memload9, 1
  %24 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload9, i32 1)
  %CF10 = extractvalue { i32, i1 } %24, 1
  %25 = and i32 %EAX, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = and i32 %26, 1
  %PF11 = icmp eq i32 %27, 0
  %ZF12 = icmp eq i32 %EAX, 0
  %highbit13 = and i32 -2147483648, %EAX
  %SF14 = icmp ne i32 %highbit13, 0
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload9, i32 1)
  %OF15 = extractvalue { i32, i1 } %28, 1
  store i32 %EAX, ptr %RBP_N.16, align 1
  br label %bb.10

bb.4:                                             ; preds = %bb.2
  store i32 0, ptr %RBP_N.24, align 1
  %memload16 = load i64, ptr %RBP_N.8, align 1
  %memload17 = load i64, ptr %RBP_N.20, align 1
  %29 = trunc i64 %memload17 to i32
  %RCX18 = sext i32 %29 to i64
  %memref-idxreg19 = mul i64 4, %RCX18
  %memref-basereg20 = add i64 %memload16, %memref-idxreg19
  %30 = inttoptr i64 %memref-basereg20 to ptr
  %memload21 = load i32, ptr %30, align 1
  %EAX22 = call i32 @abs(i32 %memload21)
  %31 = ptrtoint ptr %stktop_8 to i64
  %32 = add i64 %31, 4
  %33 = inttoptr i64 %32 to ptr
  store i32 %EAX22, ptr %33, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.6
  %34 = ptrtoint ptr %stktop_8 to i64
  %35 = add i64 %34, 4
  %36 = inttoptr i64 %35 to ptr
  %37 = load i32, ptr %36, align 1
  %38 = zext i32 %37 to i64
  %39 = zext i32 10 to i64
  %40 = sub i64 %38, %39
  %41 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %38, i64 %39)
  %CF23 = extractvalue { i64, i1 } %41, 1
  %ZF24 = icmp eq i64 %40, 0
  %highbit25 = and i64 -9223372036854775808, %40
  %SF26 = icmp ne i64 %highbit25, 0
  %42 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %38, i64 %39)
  %OF27 = extractvalue { i64, i1 } %42, 1
  %43 = and i64 %40, 255
  %44 = call i64 @llvm.ctpop.i64(i64 %43)
  %45 = and i64 %44, 1
  %PF28 = icmp eq i64 %45, 0
  %SFAndOF_JL = icmp ne i1 %SF26, %OF27
  br i1 %SFAndOF_JL, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %46 = ptrtoint ptr %stktop_8 to i64
  %47 = add i64 %46, 4
  %48 = inttoptr i64 %47 to ptr
  %memload29 = load i32, ptr %48, align 1
  %49 = sext i32 %memload29 to i64
  %50 = lshr i64 %49, 32
  %EDX = trunc i64 %50 to i32
  %51 = sext i32 %memload29 to i64
  %52 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %52, 32
  %dividend = or i64 %div_hb_ls, %51
  %53 = sext i32 10 to i64
  %div_q = sdiv i64 %dividend, %53
  %EAX30 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %53
  %EDX31 = trunc i64 %div_r to i32
  %memload32 = load i32, ptr %RBP_N.24, align 1
  %EDX34 = add i32 %EDX31, %memload32
  %54 = and i32 %EDX34, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54)
  %56 = and i32 %55, 1
  %PF33 = icmp eq i32 %56, 0
  store i32 %EDX34, ptr %RBP_N.24, align 1
  %57 = ptrtoint ptr %stktop_8 to i64
  %58 = add i64 %57, 4
  %59 = inttoptr i64 %58 to ptr
  %memload35 = load i32, ptr %59, align 1
  %60 = sext i32 %memload35 to i64
  %61 = lshr i64 %60, 32
  %EDX36 = trunc i64 %61 to i32
  %62 = sext i32 %memload35 to i64
  %63 = sext i32 %EDX36 to i64
  %div_hb_ls37 = shl nuw i64 %63, 32
  %dividend38 = or i64 %div_hb_ls37, %62
  %64 = sext i32 10 to i64
  %div_q39 = sdiv i64 %dividend38, %64
  %EAX40 = trunc i64 %div_q39 to i32
  %div_r41 = srem i64 %dividend38, %64
  %EDX42 = trunc i64 %div_r41 to i32
  %65 = ptrtoint ptr %stktop_8 to i64
  %66 = add i64 %65, 4
  %67 = inttoptr i64 %66 to ptr
  store i32 %EAX40, ptr %67, align 1
  br label %bb.5

bb.7:                                             ; preds = %bb.5
  %68 = ptrtoint ptr %stktop_8 to i64
  %69 = add i64 %68, 4
  %70 = inttoptr i64 %69 to ptr
  %memload43 = load i32, ptr %70, align 1
  %memload44 = load i32, ptr %RBP_N.24, align 1
  %EAX45 = sub i32 %memload44, %memload43
  %71 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload44, i32 %memload43)
  %CF46 = extractvalue { i32, i1 } %71, 1
  %ZF47 = icmp eq i32 %EAX45, 0
  %highbit48 = and i32 -2147483648, %EAX45
  %SF49 = icmp ne i32 %highbit48, 0
  %72 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload44, i32 %memload43)
  %OF50 = extractvalue { i32, i1 } %72, 1
  %73 = and i32 %EAX45, 255
  %74 = call i32 @llvm.ctpop.i32(i32 %73)
  %75 = and i32 %74, 1
  %PF51 = icmp eq i32 %75, 0
  store i32 %EAX45, ptr %RBP_N.24, align 1
  %76 = load i32, ptr %RBP_N.24, align 1
  %77 = zext i32 %76 to i64
  %78 = zext i32 0 to i64
  %79 = sub i64 %77, %78
  %80 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %77, i64 %78)
  %CF52 = extractvalue { i64, i1 } %80, 1
  %ZF53 = icmp eq i64 %79, 0
  %highbit54 = and i64 -9223372036854775808, %79
  %SF55 = icmp ne i64 %highbit54, 0
  %81 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %77, i64 %78)
  %OF56 = extractvalue { i64, i1 } %81, 1
  %82 = and i64 %79, 255
  %83 = call i64 @llvm.ctpop.i64(i64 %82)
  %84 = and i64 %83, 1
  %PF57 = icmp eq i64 %84, 0
  %CmpZF_JLE75 = icmp eq i1 %ZF53, true
  %CmpOF_JLE76 = icmp ne i1 %SF55, %OF56
  %ZFOrSF_JLE77 = or i1 %CmpZF_JLE75, %CmpOF_JLE76
  br i1 %ZFOrSF_JLE77, label %bb.9, label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload58 = load i32, ptr %RBP_N.16, align 1
  %EAX65 = add i32 %memload58, 1
  %85 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload58, i32 1)
  %CF59 = extractvalue { i32, i1 } %85, 1
  %86 = and i32 %EAX65, 255
  %87 = call i32 @llvm.ctpop.i32(i32 %86)
  %88 = and i32 %87, 1
  %PF60 = icmp eq i32 %88, 0
  %ZF61 = icmp eq i32 %EAX65, 0
  %highbit62 = and i32 -2147483648, %EAX65
  %SF63 = icmp ne i32 %highbit62, 0
  %89 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload58, i32 1)
  %OF64 = extractvalue { i32, i1 } %89, 1
  store i32 %EAX65, ptr %RBP_N.16, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.7
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.3
  br label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload66 = load i32, ptr %RBP_N.20, align 1
  %EAX73 = add i32 %memload66, 1
  %90 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload66, i32 1)
  %CF67 = extractvalue { i32, i1 } %90, 1
  %91 = and i32 %EAX73, 255
  %92 = call i32 @llvm.ctpop.i32(i32 %91)
  %93 = and i32 %92, 1
  %PF68 = icmp eq i32 %93, 0
  %ZF69 = icmp eq i32 %EAX73, 0
  %highbit70 = and i32 -2147483648, %EAX73
  %SF71 = icmp ne i32 %highbit70, 0
  %94 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload66, i32 1)
  %OF72 = extractvalue { i32, i1 } %94, 1
  store i32 %EAX73, ptr %RBP_N.20, align 1
  br label %bb.1

bb.12:                                            ; preds = %bb.1
  %memload74 = load i32, ptr %RBP_N.16, align 1
  ret i32 %memload74
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
