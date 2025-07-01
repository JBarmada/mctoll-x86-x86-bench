; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @realloc(ptr, i64)

define dso_local i64 @func0(i64 %arg1, i64 %arg2) {
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
  %6 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  %8 = sext i32 0 to i64
  store i64 %8, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  store i32 0, ptr %RBP_N.32, align 1
  store i32 0, ptr %RBP_N.36, align 1
  store i32 0, ptr %RBP_N.40, align 1
  store i32 0, ptr %RBP_N.36, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.12
  %memload = load i64, ptr %RBP_N.8, align 1
  %memload1 = load i64, ptr %RBP_N.36, align 1
  %9 = trunc i64 %memload1 to i32
  %RCX = sext i32 %9 to i64
  %memref-basereg = add i64 %memload, %RCX
  %10 = inttoptr i64 %memref-basereg to ptr
  %memload2 = load i32, ptr %10, align 1
  %11 = trunc i32 %memload2 to i8
  %EAX = sext i8 %11 to i32
  %12 = sub i32 %EAX, 0
  %13 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 0)
  %CF = extractvalue { i32, i1 } %13, 1
  %ZF = icmp eq i32 %12, 0
  %highbit = and i32 -2147483648, %12
  %SF = icmp ne i32 %highbit, 0
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 0)
  %OF = extractvalue { i32, i1 } %14, 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = and i32 %16, 1
  %PF = icmp eq i32 %17, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.13, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload3 = load i64, ptr %RBP_N.8, align 1
  %memload4 = load i64, ptr %RBP_N.36, align 1
  %18 = trunc i64 %memload4 to i32
  %RCX5 = sext i32 %18 to i64
  %memref-basereg6 = add i64 %memload3, %RCX5
  %19 = inttoptr i64 %memref-basereg6 to ptr
  %memload7 = load i8, ptr %19, align 1
  %20 = ptrtoint ptr %stktop_8 to i64
  %21 = add i64 %20, 7
  %22 = inttoptr i64 %21 to ptr
  store i8 %memload7, ptr %22, align 1
  %23 = ptrtoint ptr %stktop_8 to i64
  %24 = add i64 %23, 7
  %25 = inttoptr i64 %24 to ptr
  %memload8 = load i32, ptr %25, align 1
  %26 = trunc i32 %memload8 to i8
  %EAX9 = sext i8 %26 to i32
  %27 = sub i32 %EAX9, 40
  %28 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX9, i32 40)
  %CF10 = extractvalue { i32, i1 } %28, 1
  %ZF11 = icmp eq i32 %27, 0
  %highbit12 = and i32 -2147483648, %27
  %SF13 = icmp ne i32 %highbit12, 0
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX9, i32 40)
  %OF14 = extractvalue { i32, i1 } %29, 1
  %30 = and i32 %27, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = and i32 %31, 1
  %PF15 = icmp eq i32 %32, 0
  %CmpZF_JNE = icmp eq i1 %ZF11, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload16 = load i32, ptr %RBP_N.28, align 1
  %EAX23 = add i32 %memload16, 1
  %33 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload16, i32 1)
  %CF17 = extractvalue { i32, i1 } %33, 1
  %34 = and i32 %EAX23, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = and i32 %35, 1
  %PF18 = icmp eq i32 %36, 0
  %ZF19 = icmp eq i32 %EAX23, 0
  %highbit20 = and i32 -2147483648, %EAX23
  %SF21 = icmp ne i32 %highbit20, 0
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload16, i32 1)
  %OF22 = extractvalue { i32, i1 } %37, 1
  store i32 %EAX23, ptr %RBP_N.28, align 1
  %memload24 = load i32, ptr %RBP_N.28, align 1
  %38 = load i32, ptr %RBP_N.32, align 1
  %39 = sub i32 %memload24, %38
  %40 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload24, i32 %38)
  %CF25 = extractvalue { i32, i1 } %40, 1
  %ZF26 = icmp eq i32 %39, 0
  %highbit27 = and i32 -2147483648, %39
  %SF28 = icmp ne i32 %highbit27, 0
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload24, i32 %38)
  %OF29 = extractvalue { i32, i1 } %41, 1
  %42 = and i32 %39, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = and i32 %43, 1
  %PF30 = icmp eq i32 %44, 0
  %CmpZF_JLE = icmp eq i1 %ZF26, true
  %CmpOF_JLE = icmp ne i1 %SF28, %OF29
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload31 = load i32, ptr %RBP_N.28, align 1
  store i32 %memload31, ptr %RBP_N.32, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3
  br label %bb.11

bb.6:                                             ; preds = %bb.2
  %45 = ptrtoint ptr %stktop_8 to i64
  %46 = add i64 %45, 7
  %47 = inttoptr i64 %46 to ptr
  %memload32 = load i32, ptr %47, align 1
  %48 = trunc i32 %memload32 to i8
  %EAX33 = sext i8 %48 to i32
  %49 = sub i32 %EAX33, 41
  %50 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX33, i32 41)
  %CF34 = extractvalue { i32, i1 } %50, 1
  %ZF35 = icmp eq i32 %49, 0
  %highbit36 = and i32 -2147483648, %49
  %SF37 = icmp ne i32 %highbit36, 0
  %51 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX33, i32 41)
  %OF38 = extractvalue { i32, i1 } %51, 1
  %52 = and i32 %49, 255
  %53 = call i32 @llvm.ctpop.i32(i32 %52)
  %54 = and i32 %53, 1
  %PF39 = icmp eq i32 %54, 0
  %CmpZF_JNE89 = icmp eq i1 %ZF35, false
  br i1 %CmpZF_JNE89, label %bb.10, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload40 = load i32, ptr %RBP_N.28, align 1
  %EAX47 = sub i32 %memload40, 1
  %55 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload40, i32 1)
  %CF41 = extractvalue { i32, i1 } %55, 1
  %56 = and i32 %EAX47, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = and i32 %57, 1
  %PF42 = icmp eq i32 %58, 0
  %ZF43 = icmp eq i32 %EAX47, 0
  %highbit44 = and i32 -2147483648, %EAX47
  %SF45 = icmp ne i32 %highbit44, 0
  %59 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload40, i32 1)
  %OF46 = extractvalue { i32, i1 } %59, 1
  store i32 %EAX47, ptr %RBP_N.28, align 1
  %60 = load i32, ptr %RBP_N.28, align 1
  %61 = zext i32 %60 to i64
  %62 = zext i32 0 to i64
  %63 = sub i64 %61, %62
  %64 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %61, i64 %62)
  %CF48 = extractvalue { i64, i1 } %64, 1
  %ZF49 = icmp eq i64 %63, 0
  %highbit50 = and i64 -9223372036854775808, %63
  %SF51 = icmp ne i64 %highbit50, 0
  %65 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %61, i64 %62)
  %OF52 = extractvalue { i64, i1 } %65, 1
  %66 = and i64 %63, 255
  %67 = call i64 @llvm.ctpop.i64(i64 %66)
  %68 = and i64 %67, 1
  %PF53 = icmp eq i64 %68, 0
  %CmpZF_JNE90 = icmp eq i1 %ZF49, false
  br i1 %CmpZF_JNE90, label %bb.9, label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload54 = load i64, ptr %RBP_N.24, align 1
  %memload55 = load i32, ptr %RBP_N.40, align 1
  %EAX62 = add i32 %memload55, 1
  %69 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload55, i32 1)
  %CF56 = extractvalue { i32, i1 } %69, 1
  %70 = and i32 %EAX62, 255
  %71 = call i32 @llvm.ctpop.i32(i32 %70)
  %72 = and i32 %71, 1
  %PF57 = icmp eq i32 %72, 0
  %ZF58 = icmp eq i32 %EAX62, 0
  %highbit59 = and i32 -2147483648, %EAX62
  %SF60 = icmp ne i32 %highbit59, 0
  %73 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload55, i32 1)
  %OF61 = extractvalue { i32, i1 } %73, 1
  %RSI = sext i32 %EAX62 to i64
  %RSI66 = shl i64 %RSI, 2
  %ZF63 = icmp eq i64 %RSI66, 0
  %highbit64 = and i64 -9223372036854775808, %RSI66
  %SF65 = icmp ne i64 %highbit64, 0
  %74 = inttoptr i64 %memload54 to ptr
  %75 = call ptr @realloc(ptr %74, i64 %RSI66)
  %RAX = ptrtoint ptr %75 to i64
  store i64 %RAX, ptr %RBP_N.24, align 1
  %memload67 = load i32, ptr %RBP_N.32, align 1
  %memload68 = load i64, ptr %RBP_N.24, align 1
  %memload69 = load i32, ptr %RBP_N.40, align 1
  %ESI = add i32 %memload69, 1
  %76 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload69, i32 1)
  %CF70 = extractvalue { i32, i1 } %76, 1
  %77 = and i32 %ESI, 255
  %78 = call i32 @llvm.ctpop.i32(i32 %77)
  %79 = and i32 %78, 1
  %PF71 = icmp eq i32 %79, 0
  %ZF72 = icmp eq i32 %ESI, 0
  %highbit73 = and i32 -2147483648, %ESI
  %SF74 = icmp ne i32 %highbit73, 0
  %80 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload69, i32 1)
  %OF75 = extractvalue { i32, i1 } %80, 1
  store i32 %ESI, ptr %RBP_N.40, align 1
  %RCX76 = sext i32 %memload69 to i64
  %memref-idxreg = mul i64 4, %RCX76
  %memref-basereg77 = add i64 %memload68, %memref-idxreg
  %81 = inttoptr i64 %memref-basereg77 to ptr
  store i32 %memload67, ptr %81, align 1
  store i32 0, ptr %RBP_N.32, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.7
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.6
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.5
  br label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload78 = load i32, ptr %RBP_N.36, align 1
  %EAX85 = add i32 %memload78, 1
  %82 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload78, i32 1)
  %CF79 = extractvalue { i32, i1 } %82, 1
  %83 = and i32 %EAX85, 255
  %84 = call i32 @llvm.ctpop.i32(i32 %83)
  %85 = and i32 %84, 1
  %PF80 = icmp eq i32 %85, 0
  %ZF81 = icmp eq i32 %EAX85, 0
  %highbit82 = and i32 -2147483648, %EAX85
  %SF83 = icmp ne i32 %highbit82, 0
  %86 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload78, i32 1)
  %OF84 = extractvalue { i32, i1 } %86, 1
  store i32 %EAX85, ptr %RBP_N.36, align 1
  br label %bb.1

bb.13:                                            ; preds = %bb.1
  %memload86 = load i32, ptr %RBP_N.40, align 1
  %memload87 = load i64, ptr %RBP_N.16, align 1
  %87 = inttoptr i64 %memload87 to ptr
  store i32 %memload86, ptr %87, align 1
  %memload88 = load i64, ptr %RBP_N.24, align 1
  ret i64 %memload88
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
