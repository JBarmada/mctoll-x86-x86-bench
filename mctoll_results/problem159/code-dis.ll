; ModuleID = 'code.so'
source_filename = "code.so"

@rodata_13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !ROData_SecInfo !0

declare dso_local ptr @memset(ptr, i32, i64)

declare dso_local ptr @strchr(ptr, i32)

declare dso_local i64 @strlen(ptr)

declare dso_local i32 @strcmp(ptr, ptr)

define dso_local i64 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 312, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.296 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.292 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %3 = inttoptr i64 %2 to ptr
  %4 = add i64 %tos, 280
  %RBP_N.32 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 284
  %RBP_N.28 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 288
  %RBP_N.24 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 300
  %RBP_N.12 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 304
  %RBP_N.8 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %9 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  %RAX = ptrtoint ptr @rodata_13 to i64
  store i64 %RAX, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  store i32 0, ptr %RBP_N.32, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.13
  %memload = load i32, ptr %RBP_N.32, align 1
  %10 = load i32, ptr %RBP_N.12, align 1
  %11 = sub i32 %memload, %10
  %12 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %10)
  %CF = extractvalue { i32, i1 } %12, 1
  %ZF = icmp eq i32 %11, 0
  %highbit = and i32 -2147483648, %11
  %SF = icmp ne i32 %highbit, 0
  %13 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %10)
  %OF = extractvalue { i32, i1 } %13, 1
  %14 = and i32 %11, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = and i32 %15, 1
  %PF = icmp eq i32 %16, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.14, label %bb.2

bb.2:                                             ; preds = %bb.1
  %17 = zext i32 256 to i64
  %18 = call ptr @memset(ptr %3, i32 0, i64 %17)
  %RAX1 = ptrtoint ptr %18 to i64
  store i32 0, ptr %RBP_N.292, align 1
  store i32 0, ptr %RBP_N.296, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %memload2 = load i64, ptr %RBP_N.8, align 1
  %memload3 = load i64, ptr %RBP_N.32, align 1
  %19 = trunc i64 %memload3 to i32
  %RCX = sext i32 %19 to i64
  %memref-idxreg = mul i64 8, %RCX
  %memref-basereg = add i64 %memload2, %memref-idxreg
  %20 = inttoptr i64 %memref-basereg to ptr
  %memload4 = load i64, ptr %20, align 1
  %memload5 = load i64, ptr %RBP_N.296, align 1
  %21 = trunc i64 %memload5 to i32
  %RCX6 = sext i32 %21 to i64
  %memref-basereg7 = add i64 %memload4, %RCX6
  %22 = inttoptr i64 %memref-basereg7 to ptr
  %memload8 = load i32, ptr %22, align 1
  %23 = trunc i32 %memload8 to i8
  %EAX = sext i8 %23 to i32
  %24 = sub i32 %EAX, 0
  %25 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 0)
  %CF9 = extractvalue { i32, i1 } %25, 1
  %ZF10 = icmp eq i32 %24, 0
  %highbit11 = and i32 -2147483648, %24
  %SF12 = icmp ne i32 %highbit11, 0
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 0)
  %OF13 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %24, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF14 = icmp eq i32 %29, 0
  %CmpZF_JE = icmp eq i1 %ZF10, true
  br i1 %CmpZF_JE, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload16 = load i64, ptr %RBP_N.8, align 1
  %memload17 = load i64, ptr %RBP_N.32, align 1
  %30 = trunc i64 %memload17 to i32
  %RCX18 = sext i32 %30 to i64
  %memref-idxreg19 = mul i64 8, %RCX18
  %memref-basereg20 = add i64 %memload16, %memref-idxreg19
  %31 = inttoptr i64 %memref-basereg20 to ptr
  %memload21 = load i64, ptr %31, align 1
  %memload22 = load i64, ptr %RBP_N.296, align 1
  %32 = trunc i64 %memload22 to i32
  %RCX23 = sext i32 %32 to i64
  %memref-basereg24 = add i64 %memload21, %RCX23
  %33 = inttoptr i64 %memref-basereg24 to ptr
  %memload25 = load i32, ptr %33, align 1
  %34 = trunc i32 %memload25 to i8
  %ESI = sext i8 %34 to i32
  %35 = call ptr @strchr(ptr %3, i32 %ESI)
  %RAX26 = ptrtoint ptr %35 to i64
  %36 = sub i64 %RAX26, 0
  %37 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX26, i64 0)
  %CF27 = extractvalue { i64, i1 } %37, 1
  %ZF28 = icmp eq i64 %36, 0
  %highbit29 = and i64 -9223372036854775808, %36
  %SF30 = icmp ne i64 %highbit29, 0
  %38 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX26, i64 0)
  %OF31 = extractvalue { i64, i1 } %38, 1
  %39 = and i64 %36, 255
  %40 = call i64 @llvm.ctpop.i64(i64 %39)
  %41 = and i64 %40, 1
  %PF32 = icmp eq i64 %41, 0
  %CmpZF_JNE = icmp eq i1 %ZF28, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %RAX34 = call i64 @strlen(ptr %3)
  %42 = ptrtoint ptr %stktop_8 to i64
  %43 = add i64 %42, 4
  %44 = trunc i64 %RAX34 to i32
  %45 = inttoptr i64 %43 to ptr
  store i32 %44, ptr %45, align 1
  %memload35 = load i64, ptr %RBP_N.8, align 1
  %memload36 = load i64, ptr %RBP_N.32, align 1
  %46 = trunc i64 %memload36 to i32
  %RCX37 = sext i32 %46 to i64
  %memref-idxreg38 = mul i64 8, %RCX37
  %memref-basereg39 = add i64 %memload35, %memref-idxreg38
  %47 = inttoptr i64 %memref-basereg39 to ptr
  %memload40 = load i64, ptr %47, align 1
  %memload41 = load i64, ptr %RBP_N.296, align 1
  %48 = trunc i64 %memload41 to i32
  %RCX42 = sext i32 %48 to i64
  %memref-basereg43 = add i64 %memload40, %RCX42
  %49 = inttoptr i64 %memref-basereg43 to ptr
  %memload44 = load i8, ptr %49, align 1
  %50 = ptrtoint ptr %stktop_8 to i64
  %51 = add i64 %50, 4
  %52 = inttoptr i64 %51 to ptr
  %memload45 = load i64, ptr %52, align 1
  %53 = trunc i64 %memload45 to i32
  %RAX46 = sext i32 %53 to i64
  %54 = getelementptr i8, ptr %3, i64 %RAX46
  store i8 %memload44, ptr %54, align 1
  %55 = ptrtoint ptr %stktop_8 to i64
  %56 = add i64 %55, 4
  %57 = inttoptr i64 %56 to ptr
  %memload47 = load i32, ptr %57, align 1
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
  %RAX55 = sext i32 %EAX54 to i64
  %63 = getelementptr i8, ptr %3, i64 %RAX55
  store i8 0, ptr %63, align 1
  %memload57 = load i32, ptr %RBP_N.292, align 1
  %EAX64 = add i32 %memload57, 1
  %64 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload57, i32 1)
  %CF58 = extractvalue { i32, i1 } %64, 1
  %65 = and i32 %EAX64, 255
  %66 = call i32 @llvm.ctpop.i32(i32 %65)
  %67 = and i32 %66, 1
  %PF59 = icmp eq i32 %67, 0
  %ZF60 = icmp eq i32 %EAX64, 0
  %highbit61 = and i32 -2147483648, %EAX64
  %SF62 = icmp ne i32 %highbit61, 0
  %68 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload57, i32 1)
  %OF63 = extractvalue { i32, i1 } %68, 1
  store i32 %EAX64, ptr %RBP_N.292, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload65 = load i32, ptr %RBP_N.296, align 1
  %EAX72 = add i32 %memload65, 1
  %69 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload65, i32 1)
  %CF66 = extractvalue { i32, i1 } %69, 1
  %70 = and i32 %EAX72, 255
  %71 = call i32 @llvm.ctpop.i32(i32 %70)
  %72 = and i32 %71, 1
  %PF67 = icmp eq i32 %72, 0
  %ZF68 = icmp eq i32 %EAX72, 0
  %highbit69 = and i32 -2147483648, %EAX72
  %SF70 = icmp ne i32 %highbit69, 0
  %73 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload65, i32 1)
  %OF71 = extractvalue { i32, i1 } %73, 1
  store i32 %EAX72, ptr %RBP_N.296, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.3
  %memload73 = load i32, ptr %RBP_N.292, align 1
  %74 = load i32, ptr %RBP_N.28, align 1
  %75 = sub i32 %memload73, %74
  %76 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload73, i32 %74)
  %CF74 = extractvalue { i32, i1 } %76, 1
  %ZF75 = icmp eq i32 %75, 0
  %highbit76 = and i32 -2147483648, %75
  %SF77 = icmp ne i32 %highbit76, 0
  %77 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload73, i32 %74)
  %OF78 = extractvalue { i32, i1 } %77, 1
  %78 = and i32 %75, 255
  %79 = call i32 @llvm.ctpop.i32(i32 %78)
  %80 = and i32 %79, 1
  %PF79 = icmp eq i32 %80, 0
  %ZFCmp_JG = icmp eq i1 %ZF75, false
  %SFOFCmp_JG = icmp eq i1 %SF77, %OF78
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.11, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload80 = load i32, ptr %RBP_N.292, align 1
  %81 = load i32, ptr %RBP_N.28, align 1
  %82 = sub i32 %memload80, %81
  %83 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload80, i32 %81)
  %CF81 = extractvalue { i32, i1 } %83, 1
  %ZF82 = icmp eq i32 %82, 0
  %highbit83 = and i32 -2147483648, %82
  %SF84 = icmp ne i32 %highbit83, 0
  %84 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload80, i32 %81)
  %OF85 = extractvalue { i32, i1 } %84, 1
  %85 = and i32 %82, 255
  %86 = call i32 @llvm.ctpop.i32(i32 %85)
  %87 = and i32 %86, 1
  %PF86 = icmp eq i32 %87, 0
  %CmpZF_JNE117 = icmp eq i1 %ZF82, false
  br i1 %CmpZF_JNE117, label %bb.12, label %bb.10

bb.10:                                            ; preds = %bb.9
  %memload87 = load i64, ptr %RBP_N.8, align 1
  %memload88 = load i64, ptr %RBP_N.32, align 1
  %88 = trunc i64 %memload88 to i32
  %RCX89 = sext i32 %88 to i64
  %memref-idxreg90 = mul i64 8, %RCX89
  %memref-basereg91 = add i64 %memload87, %memref-idxreg90
  %89 = inttoptr i64 %memref-basereg91 to ptr
  %memload92 = load i64, ptr %89, align 1
  %memload93 = load i64, ptr %RBP_N.24, align 1
  %90 = inttoptr i64 %memload92 to ptr
  %91 = inttoptr i64 %memload93 to ptr
  %EAX94 = call i32 @strcmp(ptr %90, ptr %91)
  %92 = sub i32 %EAX94, 0
  %93 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX94, i32 0)
  %CF95 = extractvalue { i32, i1 } %93, 1
  %ZF96 = icmp eq i32 %92, 0
  %highbit97 = and i32 -2147483648, %92
  %SF98 = icmp ne i32 %highbit97, 0
  %94 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX94, i32 0)
  %OF99 = extractvalue { i32, i1 } %94, 1
  %95 = and i32 %92, 255
  %96 = call i32 @llvm.ctpop.i32(i32 %95)
  %97 = and i32 %96, 1
  %PF100 = icmp eq i32 %97, 0
  %CmpSFOF_JGE118 = icmp eq i1 %SF98, %OF99
  br i1 %CmpSFOF_JGE118, label %bb.12, label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.8
  %memload101 = load i64, ptr %RBP_N.8, align 1
  %memload102 = load i64, ptr %RBP_N.32, align 1
  %98 = trunc i64 %memload102 to i32
  %RCX103 = sext i32 %98 to i64
  %memref-idxreg104 = mul i64 8, %RCX103
  %memref-basereg105 = add i64 %memload101, %memref-idxreg104
  %99 = inttoptr i64 %memref-basereg105 to ptr
  %memload106 = load i64, ptr %99, align 1
  store i64 %memload106, ptr %RBP_N.24, align 1
  %memload107 = load i32, ptr %RBP_N.292, align 1
  store i32 %memload107, ptr %RBP_N.28, align 1
  br label %bb.12

bb.12:                                            ; preds = %bb.11, %bb.10, %bb.9
  br label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload108 = load i32, ptr %RBP_N.32, align 1
  %EAX115 = add i32 %memload108, 1
  %100 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload108, i32 1)
  %CF109 = extractvalue { i32, i1 } %100, 1
  %101 = and i32 %EAX115, 255
  %102 = call i32 @llvm.ctpop.i32(i32 %101)
  %103 = and i32 %102, 1
  %PF110 = icmp eq i32 %103, 0
  %ZF111 = icmp eq i32 %EAX115, 0
  %highbit112 = and i32 -2147483648, %EAX115
  %SF113 = icmp ne i32 %highbit112, 0
  %104 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload108, i32 1)
  %OF114 = extractvalue { i32, i1 } %104, 1
  store i32 %EAX115, ptr %RBP_N.32, align 1
  br label %bb.1

bb.14:                                            ; preds = %bb.1
  %memload116 = load i64, ptr %RBP_N.24, align 1
  ret i64 %memload116
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
