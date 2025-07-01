; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

define dso_local i32 @func0(i64 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 72, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.56 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 23
  %RBP_N.49 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.48 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.44 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 35
  %RBP_N.37 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 36
  %RBP_N.36 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 40
  %RBP_N.32 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 44
  %RBP_N.28 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 48
  %RBP_N.24 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 56
  %RBP_N.16 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 71
  %RBP_N.1 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %11 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i64 %arg2, ptr %RBP_N.24, align 1
  %memload = load i64, ptr %RBP_N.16, align 1
  %12 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %12)
  %13 = trunc i64 %RAX to i32
  store i32 %13, ptr %RBP_N.28, align 1
  %memload1 = load i64, ptr %RBP_N.24, align 1
  %14 = inttoptr i64 %memload1 to ptr
  %RAX2 = call i64 @strlen(ptr %14)
  %15 = trunc i64 %RAX2 to i32
  store i32 %15, ptr %RBP_N.32, align 1
  store i32 0, ptr %RBP_N.36, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.11
  %memload3 = load i32, ptr %RBP_N.36, align 1
  %16 = load i32, ptr %RBP_N.28, align 1
  %17 = sub i32 %memload3, %16
  %18 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload3, i32 %16)
  %CF = extractvalue { i32, i1 } %18, 1
  %ZF = icmp eq i32 %17, 0
  %highbit = and i32 -2147483648, %17
  %SF = icmp ne i32 %highbit, 0
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload3, i32 %16)
  %OF = extractvalue { i32, i1 } %19, 1
  %20 = and i32 %17, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = and i32 %21, 1
  %PF = icmp eq i32 %22, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.12, label %bb.2

bb.2:                                             ; preds = %bb.1
  store i8 0, ptr %RBP_N.37, align 1
  store i32 0, ptr %RBP_N.44, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %memload4 = load i32, ptr %RBP_N.44, align 1
  %23 = load i32, ptr %RBP_N.32, align 1
  %24 = sub i32 %memload4, %23
  %25 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload4, i32 %23)
  %CF5 = extractvalue { i32, i1 } %25, 1
  %ZF6 = icmp eq i32 %24, 0
  %highbit7 = and i32 -2147483648, %24
  %SF8 = icmp ne i32 %highbit7, 0
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload4, i32 %23)
  %OF9 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %24, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF10 = icmp eq i32 %29, 0
  %CmpSFOF_JGE102 = icmp eq i1 %SF8, %OF9
  br i1 %CmpSFOF_JGE102, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload11 = load i64, ptr %RBP_N.16, align 1
  %memload12 = load i64, ptr %RBP_N.36, align 1
  %30 = trunc i64 %memload12 to i32
  %RCX = sext i32 %30 to i64
  %memref-basereg = add i64 %memload11, %RCX
  %31 = inttoptr i64 %memref-basereg to ptr
  %memload13 = load i32, ptr %31, align 1
  %32 = trunc i32 %memload13 to i8
  %EAX = sext i8 %32 to i32
  %memload14 = load i64, ptr %RBP_N.24, align 1
  %memload15 = load i64, ptr %RBP_N.44, align 1
  %33 = trunc i64 %memload15 to i32
  %RDX = sext i32 %33 to i64
  %memref-basereg16 = add i64 %memload14, %RDX
  %34 = inttoptr i64 %memref-basereg16 to ptr
  %memload17 = load i32, ptr %34, align 1
  %35 = trunc i32 %memload17 to i8
  %ECX = sext i8 %35 to i32
  %36 = sub i32 %EAX, %ECX
  %37 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 %ECX)
  %CF18 = extractvalue { i32, i1 } %37, 1
  %ZF19 = icmp eq i32 %36, 0
  %highbit20 = and i32 -2147483648, %36
  %SF21 = icmp ne i32 %highbit20, 0
  %38 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 %ECX)
  %OF22 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %36, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF23 = icmp eq i32 %41, 0
  %CmpZF_JNE = icmp eq i1 %ZF19, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  store i8 1, ptr %RBP_N.37, align 1
  br label %bb.8

bb.6:                                             ; preds = %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload24 = load i32, ptr %RBP_N.44, align 1
  %EAX31 = add i32 %memload24, 1
  %42 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload24, i32 1)
  %CF25 = extractvalue { i32, i1 } %42, 1
  %43 = and i32 %EAX31, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF26 = icmp eq i32 %45, 0
  %ZF27 = icmp eq i32 %EAX31, 0
  %highbit28 = and i32 -2147483648, %EAX31
  %SF29 = icmp ne i32 %highbit28, 0
  %46 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload24, i32 1)
  %OF30 = extractvalue { i32, i1 } %46, 1
  store i32 %EAX31, ptr %RBP_N.44, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.5, %bb.3
  %47 = load i8, ptr %RBP_N.37, align 1
  %48 = zext i8 %47 to i64
  %49 = zext i8 1 to i64
  %50 = and i64 %48, %49
  %ZF32 = icmp eq i64 %50, 0
  %highbit33 = and i64 -9223372036854775808, %50
  %SF34 = icmp ne i64 %highbit33, 0
  %51 = and i64 %50, 255
  %52 = call i64 @llvm.ctpop.i64(i64 %51)
  %53 = and i64 %52, 1
  %PF35 = icmp eq i64 %53, 0
  %CmpZF_JNE103 = icmp eq i1 %ZF32, false
  br i1 %CmpZF_JNE103, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.25

bb.10:                                            ; preds = %bb.8
  br label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload36 = load i32, ptr %RBP_N.36, align 1
  %EAX43 = add i32 %memload36, 1
  %54 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload36, i32 1)
  %CF37 = extractvalue { i32, i1 } %54, 1
  %55 = and i32 %EAX43, 255
  %56 = call i32 @llvm.ctpop.i32(i32 %55)
  %57 = and i32 %56, 1
  %PF38 = icmp eq i32 %57, 0
  %ZF39 = icmp eq i32 %EAX43, 0
  %highbit40 = and i32 -2147483648, %EAX43
  %SF41 = icmp ne i32 %highbit40, 0
  %58 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload36, i32 1)
  %OF42 = extractvalue { i32, i1 } %58, 1
  store i32 %EAX43, ptr %RBP_N.36, align 1
  br label %bb.1

bb.12:                                            ; preds = %bb.1
  store i32 0, ptr %RBP_N.48, align 1
  br label %bb.13

bb.13:                                            ; preds = %bb.12, %bb.23
  %memload44 = load i32, ptr %RBP_N.48, align 1
  %59 = load i32, ptr %RBP_N.32, align 1
  %60 = sub i32 %memload44, %59
  %61 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload44, i32 %59)
  %CF45 = extractvalue { i32, i1 } %61, 1
  %ZF46 = icmp eq i32 %60, 0
  %highbit47 = and i32 -2147483648, %60
  %SF48 = icmp ne i32 %highbit47, 0
  %62 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload44, i32 %59)
  %OF49 = extractvalue { i32, i1 } %62, 1
  %63 = and i32 %60, 255
  %64 = call i32 @llvm.ctpop.i32(i32 %63)
  %65 = and i32 %64, 1
  %PF50 = icmp eq i32 %65, 0
  %CmpSFOF_JGE104 = icmp eq i1 %SF48, %OF49
  br i1 %CmpSFOF_JGE104, label %bb.24, label %bb.14

bb.14:                                            ; preds = %bb.13
  store i8 0, ptr %RBP_N.49, align 1
  store i32 0, ptr %RBP_N.56, align 1
  br label %bb.15

bb.15:                                            ; preds = %bb.14, %bb.19
  %memload51 = load i32, ptr %RBP_N.56, align 1
  %66 = load i32, ptr %RBP_N.28, align 1
  %67 = sub i32 %memload51, %66
  %68 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload51, i32 %66)
  %CF52 = extractvalue { i32, i1 } %68, 1
  %ZF53 = icmp eq i32 %67, 0
  %highbit54 = and i32 -2147483648, %67
  %SF55 = icmp ne i32 %highbit54, 0
  %69 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload51, i32 %66)
  %OF56 = extractvalue { i32, i1 } %69, 1
  %70 = and i32 %67, 255
  %71 = call i32 @llvm.ctpop.i32(i32 %70)
  %72 = and i32 %71, 1
  %PF57 = icmp eq i32 %72, 0
  %CmpSFOF_JGE105 = icmp eq i1 %SF55, %OF56
  br i1 %CmpSFOF_JGE105, label %bb.20, label %bb.16

bb.16:                                            ; preds = %bb.15
  %memload58 = load i64, ptr %RBP_N.24, align 1
  %memload59 = load i64, ptr %RBP_N.48, align 1
  %73 = trunc i64 %memload59 to i32
  %RCX60 = sext i32 %73 to i64
  %memref-basereg61 = add i64 %memload58, %RCX60
  %74 = inttoptr i64 %memref-basereg61 to ptr
  %memload62 = load i32, ptr %74, align 1
  %75 = trunc i32 %memload62 to i8
  %EAX63 = sext i8 %75 to i32
  %memload64 = load i64, ptr %RBP_N.16, align 1
  %memload65 = load i64, ptr %RBP_N.56, align 1
  %76 = trunc i64 %memload65 to i32
  %RDX66 = sext i32 %76 to i64
  %memref-basereg67 = add i64 %memload64, %RDX66
  %77 = inttoptr i64 %memref-basereg67 to ptr
  %memload68 = load i32, ptr %77, align 1
  %78 = trunc i32 %memload68 to i8
  %ECX69 = sext i8 %78 to i32
  %79 = sub i32 %EAX63, %ECX69
  %80 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX63, i32 %ECX69)
  %CF70 = extractvalue { i32, i1 } %80, 1
  %ZF71 = icmp eq i32 %79, 0
  %highbit72 = and i32 -2147483648, %79
  %SF73 = icmp ne i32 %highbit72, 0
  %81 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX63, i32 %ECX69)
  %OF74 = extractvalue { i32, i1 } %81, 1
  %82 = and i32 %79, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82)
  %84 = and i32 %83, 1
  %PF75 = icmp eq i32 %84, 0
  %CmpZF_JNE106 = icmp eq i1 %ZF71, false
  br i1 %CmpZF_JNE106, label %bb.18, label %bb.17

bb.17:                                            ; preds = %bb.16
  store i8 1, ptr %RBP_N.49, align 1
  br label %bb.20

bb.18:                                            ; preds = %bb.16
  br label %bb.19

bb.19:                                            ; preds = %bb.18
  %memload76 = load i32, ptr %RBP_N.56, align 1
  %EAX83 = add i32 %memload76, 1
  %85 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload76, i32 1)
  %CF77 = extractvalue { i32, i1 } %85, 1
  %86 = and i32 %EAX83, 255
  %87 = call i32 @llvm.ctpop.i32(i32 %86)
  %88 = and i32 %87, 1
  %PF78 = icmp eq i32 %88, 0
  %ZF79 = icmp eq i32 %EAX83, 0
  %highbit80 = and i32 -2147483648, %EAX83
  %SF81 = icmp ne i32 %highbit80, 0
  %89 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload76, i32 1)
  %OF82 = extractvalue { i32, i1 } %89, 1
  store i32 %EAX83, ptr %RBP_N.56, align 1
  br label %bb.15

bb.20:                                            ; preds = %bb.17, %bb.15
  %90 = load i8, ptr %RBP_N.49, align 1
  %91 = zext i8 %90 to i64
  %92 = zext i8 1 to i64
  %93 = and i64 %91, %92
  %ZF84 = icmp eq i64 %93, 0
  %highbit85 = and i64 -9223372036854775808, %93
  %SF86 = icmp ne i64 %highbit85, 0
  %94 = and i64 %93, 255
  %95 = call i64 @llvm.ctpop.i64(i64 %94)
  %96 = and i64 %95, 1
  %PF87 = icmp eq i64 %96, 0
  %CmpZF_JNE107 = icmp eq i1 %ZF84, false
  br i1 %CmpZF_JNE107, label %bb.22, label %bb.21

bb.21:                                            ; preds = %bb.20
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.25

bb.22:                                            ; preds = %bb.20
  br label %bb.23

bb.23:                                            ; preds = %bb.22
  %memload88 = load i32, ptr %RBP_N.48, align 1
  %EAX95 = add i32 %memload88, 1
  %97 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload88, i32 1)
  %CF89 = extractvalue { i32, i1 } %97, 1
  %98 = and i32 %EAX95, 255
  %99 = call i32 @llvm.ctpop.i32(i32 %98)
  %100 = and i32 %99, 1
  %PF90 = icmp eq i32 %100, 0
  %ZF91 = icmp eq i32 %EAX95, 0
  %highbit92 = and i32 -2147483648, %EAX95
  %SF93 = icmp ne i32 %highbit92, 0
  %101 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload88, i32 1)
  %OF94 = extractvalue { i32, i1 } %101, 1
  store i32 %EAX95, ptr %RBP_N.48, align 1
  br label %bb.13

bb.24:                                            ; preds = %bb.13
  store i8 1, ptr %RBP_N.1, align 1
  br label %bb.25

bb.25:                                            ; preds = %bb.24, %bb.21, %bb.9
  %memload96 = load i8, ptr %RBP_N.1, align 1
  %AL = and i8 %memload96, 1
  %102 = call i8 @llvm.ctpop.i8(i8 %AL)
  %103 = and i8 %102, 1
  %PF97 = icmp eq i8 %103, 0
  %ZF98 = icmp eq i8 %AL, 0
  %highbit99 = and i8 -128, %AL
  %SF100 = icmp ne i8 %highbit99, 0
  %EAX101 = zext i8 %AL to i32
  ret i32 %EAX101
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
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctpop.i8(i8) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
