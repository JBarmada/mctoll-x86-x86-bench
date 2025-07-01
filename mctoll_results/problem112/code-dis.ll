; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @memset(ptr, i32, i64)

define dso_local i64 @func0(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) {
entry:
  %stktop_8 = alloca i8, i32 184, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.168 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.164 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.160 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 36
  %RBP_N.148 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 40
  %5 = inttoptr i64 %4 to ptr
  %6 = add i64 %tos, 152
  %RBP_N.32 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 160
  %RBP_N.24 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 168
  %RBP_N.16 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 176
  %RBP_N.8 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %10 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  store i64 %arg4, ptr %RBP_N.32, align 1
  %11 = zext i32 104 to i64
  %12 = call ptr @memset(ptr %5, i32 0, i64 %11)
  %RAX = ptrtoint ptr %12 to i64
  store i32 0, ptr %RBP_N.148, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  store i64 %memload, ptr %RBP_N.160, align 1
  store i32 0, ptr %RBP_N.164, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.6
  %memload1 = load i64, ptr %RBP_N.160, align 1
  %13 = inttoptr i64 %memload1 to ptr
  %14 = load i8, ptr %13, align 1
  %15 = zext i8 %14 to i64
  %16 = zext i8 0 to i64
  %17 = sub i64 %15, %16
  %18 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %15, i64 %16)
  %CF = extractvalue { i64, i1 } %18, 1
  %ZF = icmp eq i64 %17, 0
  %highbit = and i64 -9223372036854775808, %17
  %SF = icmp ne i64 %highbit, 0
  %19 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %15, i64 %16)
  %OF = extractvalue { i64, i1 } %19, 1
  %20 = and i64 %17, 255
  %21 = call i64 @llvm.ctpop.i64(i64 %20)
  %22 = and i64 %21, 1
  %PF = icmp eq i64 %22, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.7, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload2 = load i64, ptr %RBP_N.160, align 1
  %23 = inttoptr i64 %memload2 to ptr
  %memload3 = load i32, ptr %23, align 1
  %24 = trunc i32 %memload3 to i8
  %EAX = sext i8 %24 to i32
  %25 = sub i32 %EAX, 32
  %26 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 32)
  %CF4 = extractvalue { i32, i1 } %26, 1
  %ZF5 = icmp eq i32 %25, 0
  %highbit6 = and i32 -2147483648, %25
  %SF7 = icmp ne i32 %highbit6, 0
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 32)
  %OF8 = extractvalue { i32, i1 } %27, 1
  %28 = and i32 %25, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = and i32 %29, 1
  %PF9 = icmp eq i32 %30, 0
  %CmpZF_JE111 = icmp eq i1 %ZF5, true
  br i1 %CmpZF_JE111, label %bb.6, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload10 = load i64, ptr %RBP_N.160, align 1
  %31 = inttoptr i64 %memload10 to ptr
  %memload11 = load i32, ptr %31, align 1
  %32 = trunc i32 %memload11 to i8
  %EAX12 = sext i8 %32 to i32
  %EAX19 = sub i32 %EAX12, 97
  %33 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX12, i32 97)
  %CF13 = extractvalue { i32, i1 } %33, 1
  %34 = and i32 %EAX19, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = and i32 %35, 1
  %PF14 = icmp eq i32 %36, 0
  %ZF15 = icmp eq i32 %EAX19, 0
  %highbit16 = and i32 -2147483648, %EAX19
  %SF17 = icmp ne i32 %highbit16, 0
  %37 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX12, i32 97)
  %OF18 = extractvalue { i32, i1 } %37, 1
  store i32 %EAX19, ptr %RBP_N.168, align 1
  %memload20 = load i64, ptr %RBP_N.168, align 1
  %38 = trunc i64 %memload20 to i32
  %RAX21 = sext i32 %38 to i64
  %sc-m = mul i64 4, %RAX21
  %39 = getelementptr i8, ptr %5, i64 %sc-m
  %memload22 = load i32, ptr %39, align 1
  %ECX = add i32 %memload22, 1
  %40 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload22, i32 1)
  %CF23 = extractvalue { i32, i1 } %40, 1
  %41 = and i32 %ECX, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41)
  %43 = and i32 %42, 1
  %PF24 = icmp eq i32 %43, 0
  %ZF25 = icmp eq i32 %ECX, 0
  %highbit26 = and i32 -2147483648, %ECX
  %SF27 = icmp ne i32 %highbit26, 0
  %44 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload22, i32 1)
  %OF28 = extractvalue { i32, i1 } %44, 1
  %sc-m29 = mul i64 4, %RAX21
  %45 = getelementptr i8, ptr %5, i64 %sc-m29
  store i32 %ECX, ptr %45, align 1
  %memload31 = load i64, ptr %RBP_N.168, align 1
  %46 = trunc i64 %memload31 to i32
  %RAX32 = sext i32 %46 to i64
  %sc-m33 = mul i64 4, %RAX32
  %47 = getelementptr i8, ptr %5, i64 %sc-m33
  %memload35 = load i32, ptr %47, align 1
  %48 = load i32, ptr %RBP_N.148, align 1
  %49 = sub i32 %memload35, %48
  %50 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload35, i32 %48)
  %CF36 = extractvalue { i32, i1 } %50, 1
  %ZF37 = icmp eq i32 %49, 0
  %highbit38 = and i32 -2147483648, %49
  %SF39 = icmp ne i32 %highbit38, 0
  %51 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload35, i32 %48)
  %OF40 = extractvalue { i32, i1 } %51, 1
  %52 = and i32 %49, 255
  %53 = call i32 @llvm.ctpop.i32(i32 %52)
  %54 = and i32 %53, 1
  %PF41 = icmp eq i32 %54, 0
  %CmpZF_JLE = icmp eq i1 %ZF37, true
  %CmpOF_JLE = icmp ne i1 %SF39, %OF40
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload42 = load i64, ptr %RBP_N.168, align 1
  %55 = trunc i64 %memload42 to i32
  %RAX43 = sext i32 %55 to i64
  %sc-m44 = mul i64 4, %RAX43
  %56 = getelementptr i8, ptr %5, i64 %sc-m44
  %memload46 = load i32, ptr %56, align 1
  store i32 %memload46, ptr %RBP_N.148, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.2
  %memload47 = load i64, ptr %RBP_N.160, align 1
  %RAX54 = add i64 %memload47, 1
  %57 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %memload47, i64 1)
  %CF48 = extractvalue { i64, i1 } %57, 1
  %58 = and i64 %RAX54, 255
  %59 = call i64 @llvm.ctpop.i64(i64 %58)
  %60 = and i64 %59, 1
  %PF49 = icmp eq i64 %60, 0
  %ZF50 = icmp eq i64 %RAX54, 0
  %highbit51 = and i64 -9223372036854775808, %RAX54
  %SF52 = icmp ne i64 %highbit51, 0
  %61 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %memload47, i64 1)
  %OF53 = extractvalue { i64, i1 } %61, 1
  store i64 %RAX54, ptr %RBP_N.160, align 1
  br label %bb.1

bb.7:                                             ; preds = %bb.1
  %62 = ptrtoint ptr %stktop_8 to i64
  %63 = add i64 %62, 4
  %64 = inttoptr i64 %63 to ptr
  store i32 0, ptr %64, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.12
  %65 = ptrtoint ptr %stktop_8 to i64
  %66 = add i64 %65, 4
  %67 = inttoptr i64 %66 to ptr
  %68 = load i32, ptr %67, align 1
  %69 = zext i32 %68 to i64
  %70 = zext i32 26 to i64
  %71 = sub i64 %69, %70
  %72 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %69, i64 %70)
  %CF55 = extractvalue { i64, i1 } %72, 1
  %ZF56 = icmp eq i64 %71, 0
  %highbit57 = and i64 -9223372036854775808, %71
  %SF58 = icmp ne i64 %highbit57, 0
  %73 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %69, i64 %70)
  %OF59 = extractvalue { i64, i1 } %73, 1
  %74 = and i64 %71, 255
  %75 = call i64 @llvm.ctpop.i64(i64 %74)
  %76 = and i64 %75, 1
  %PF60 = icmp eq i64 %76, 0
  %CmpSFOF_JGE = icmp eq i1 %SF58, %OF59
  br i1 %CmpSFOF_JGE, label %bb.13, label %bb.9

bb.9:                                             ; preds = %bb.8
  %77 = ptrtoint ptr %stktop_8 to i64
  %78 = add i64 %77, 4
  %79 = inttoptr i64 %78 to ptr
  %memload61 = load i64, ptr %79, align 1
  %80 = trunc i64 %memload61 to i32
  %RAX62 = sext i32 %80 to i64
  %sc-m63 = mul i64 4, %RAX62
  %81 = getelementptr i8, ptr %5, i64 %sc-m63
  %memload65 = load i32, ptr %81, align 1
  %memload66 = load i64, ptr %RBP_N.16, align 1
  %82 = ptrtoint ptr %stktop_8 to i64
  %83 = add i64 %82, 4
  %84 = inttoptr i64 %83 to ptr
  %memload67 = load i64, ptr %84, align 1
  %85 = trunc i64 %memload67 to i32
  %RCX = sext i32 %85 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload66, %memref-idxreg
  %86 = inttoptr i64 %memref-basereg to ptr
  store i32 %memload65, ptr %86, align 1
  %87 = ptrtoint ptr %stktop_8 to i64
  %88 = add i64 %87, 4
  %89 = inttoptr i64 %88 to ptr
  %memload68 = load i64, ptr %89, align 1
  %90 = trunc i64 %memload68 to i32
  %RAX69 = sext i32 %90 to i64
  %sc-m70 = mul i64 4, %RAX69
  %91 = getelementptr i8, ptr %5, i64 %sc-m70
  %memload72 = load i32, ptr %91, align 1
  %92 = load i32, ptr %RBP_N.148, align 1
  %93 = sub i32 %memload72, %92
  %94 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload72, i32 %92)
  %CF73 = extractvalue { i32, i1 } %94, 1
  %ZF74 = icmp eq i32 %93, 0
  %highbit75 = and i32 -2147483648, %93
  %SF76 = icmp ne i32 %highbit75, 0
  %95 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload72, i32 %92)
  %OF77 = extractvalue { i32, i1 } %95, 1
  %96 = and i32 %93, 255
  %97 = call i32 @llvm.ctpop.i32(i32 %96)
  %98 = and i32 %97, 1
  %PF78 = icmp eq i32 %98, 0
  %CmpZF_JNE = icmp eq i1 %ZF74, false
  br i1 %CmpZF_JNE, label %bb.11, label %bb.10

bb.10:                                            ; preds = %bb.9
  %99 = ptrtoint ptr %stktop_8 to i64
  %100 = add i64 %99, 4
  %101 = inttoptr i64 %100 to ptr
  %memload79 = load i32, ptr %101, align 1
  %EAX86 = add i32 %memload79, 97
  %102 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload79, i32 97)
  %CF80 = extractvalue { i32, i1 } %102, 1
  %103 = and i32 %EAX86, 255
  %104 = call i32 @llvm.ctpop.i32(i32 %103)
  %105 = and i32 %104, 1
  %PF81 = icmp eq i32 %105, 0
  %ZF82 = icmp eq i32 %EAX86, 0
  %highbit83 = and i32 -2147483648, %EAX86
  %SF84 = icmp ne i32 %highbit83, 0
  %106 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload79, i32 97)
  %OF85 = extractvalue { i32, i1 } %106, 1
  %DL = trunc i32 %EAX86 to i8
  %memload87 = load i64, ptr %RBP_N.32, align 1
  %memload88 = load i32, ptr %RBP_N.164, align 1
  %ESI = add i32 %memload88, 1
  %107 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload88, i32 1)
  %CF89 = extractvalue { i32, i1 } %107, 1
  %108 = and i32 %ESI, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108)
  %110 = and i32 %109, 1
  %PF90 = icmp eq i32 %110, 0
  %ZF91 = icmp eq i32 %ESI, 0
  %highbit92 = and i32 -2147483648, %ESI
  %SF93 = icmp ne i32 %highbit92, 0
  %111 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload88, i32 1)
  %OF94 = extractvalue { i32, i1 } %111, 1
  store i32 %ESI, ptr %RBP_N.164, align 1
  %RCX95 = sext i32 %memload88 to i64
  %memref-basereg96 = add i64 %memload87, %RCX95
  %112 = inttoptr i64 %memref-basereg96 to ptr
  store i8 %DL, ptr %112, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.9
  br label %bb.12

bb.12:                                            ; preds = %bb.11
  %113 = ptrtoint ptr %stktop_8 to i64
  %114 = add i64 %113, 4
  %115 = inttoptr i64 %114 to ptr
  %memload97 = load i32, ptr %115, align 1
  %EAX104 = add i32 %memload97, 1
  %116 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload97, i32 1)
  %CF98 = extractvalue { i32, i1 } %116, 1
  %117 = and i32 %EAX104, 255
  %118 = call i32 @llvm.ctpop.i32(i32 %117)
  %119 = and i32 %118, 1
  %PF99 = icmp eq i32 %119, 0
  %ZF100 = icmp eq i32 %EAX104, 0
  %highbit101 = and i32 -2147483648, %EAX104
  %SF102 = icmp ne i32 %highbit101, 0
  %120 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload97, i32 1)
  %OF103 = extractvalue { i32, i1 } %120, 1
  %121 = ptrtoint ptr %stktop_8 to i64
  %122 = add i64 %121, 4
  %123 = inttoptr i64 %122 to ptr
  store i32 %EAX104, ptr %123, align 1
  br label %bb.8

bb.13:                                            ; preds = %bb.8
  %memload105 = load i32, ptr %RBP_N.148, align 1
  %memload106 = load i64, ptr %RBP_N.24, align 1
  %124 = inttoptr i64 %memload106 to ptr
  store i32 %memload105, ptr %124, align 1
  %memload107 = load i64, ptr %RBP_N.32, align 1
  %memload108 = load i64, ptr %RBP_N.164, align 1
  %125 = trunc i64 %memload108 to i32
  %RCX109 = sext i32 %125 to i64
  %memref-basereg110 = add i64 %memload107, %RCX109
  %126 = inttoptr i64 %memref-basereg110 to ptr
  store i8 0, ptr %126, align 1
  ret i64 %memload107
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

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
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
