; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @__ctype_b_loc()

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
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
  %6 = add i64 %tos, 52
  %RBP_N.4 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  %8 = load i32, ptr %RBP_N.20, align 1
  %9 = zext i32 %8 to i64
  %10 = zext i32 0 to i64
  %11 = sub i64 %9, %10
  %12 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %9, i64 %10)
  %CF = extractvalue { i64, i1 } %12, 1
  %ZF = icmp eq i64 %11, 0
  %highbit = and i64 -9223372036854775808, %11
  %SF = icmp ne i64 %highbit, 0
  %13 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %9, i64 %10)
  %OF = extractvalue { i64, i1 } %13, 1
  %14 = and i64 %11, 255
  %15 = call i64 @llvm.ctpop.i64(i64 %14)
  %16 = and i64 %15, 1
  %PF = icmp eq i64 %16, 0
  %CmpZF_JNE = icmp eq i1 %ZF, false
  br i1 %CmpZF_JNE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.19

bb.2:                                             ; preds = %entry
  store i32 0, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  store i32 0, ptr %RBP_N.32, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.17
  %memload = load i32, ptr %RBP_N.32, align 1
  %17 = load i32, ptr %RBP_N.20, align 1
  %18 = sub i32 %memload, %17
  %19 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %17)
  %CF1 = extractvalue { i32, i1 } %19, 1
  %ZF2 = icmp eq i32 %18, 0
  %highbit3 = and i32 -2147483648, %18
  %SF4 = icmp ne i32 %highbit3, 0
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %17)
  %OF5 = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %18, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF6 = icmp eq i32 %23, 0
  %CmpSFOF_JGE = icmp eq i1 %SF4, %OF5
  br i1 %CmpSFOF_JGE, label %bb.18, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload7 = load i64, ptr %RBP_N.16, align 1
  %memload8 = load i64, ptr %RBP_N.32, align 1
  %24 = trunc i64 %memload8 to i32
  %RCX = sext i32 %24 to i64
  %RCX12 = shl i64 %RCX, 4
  %ZF9 = icmp eq i64 %RCX12, 0
  %highbit10 = and i64 -9223372036854775808, %RCX12
  %SF11 = icmp ne i64 %highbit10, 0
  %RAX = add nsw i64 %memload7, %RCX12
  %highbit13 = and i64 -9223372036854775808, %RAX
  %SF14 = icmp ne i64 %highbit13, 0
  %ZF15 = icmp eq i64 %RAX, 0
  %25 = inttoptr i64 %RAX to ptr
  %memload16 = load i64, ptr %25, align 1
  store i64 %memload16, ptr %RBP_N.40, align 1
  %26 = ptrtoint ptr %stktop_8 to i64
  %27 = add i64 %26, 4
  %28 = inttoptr i64 %27 to ptr
  store i32 0, ptr %28, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.15
  %memload17 = load i64, ptr %RBP_N.40, align 1
  %29 = ptrtoint ptr %stktop_8 to i64
  %30 = add i64 %29, 4
  %31 = inttoptr i64 %30 to ptr
  %memload18 = load i64, ptr %31, align 1
  %32 = trunc i64 %memload18 to i32
  %RCX19 = sext i32 %32 to i64
  %memref-basereg = add i64 %memload17, %RCX19
  %33 = inttoptr i64 %memref-basereg to ptr
  %34 = load i8, ptr %33, align 1
  %35 = zext i8 %34 to i64
  %36 = zext i8 0 to i64
  %37 = sub i64 %35, %36
  %38 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %35, i64 %36)
  %CF20 = extractvalue { i64, i1 } %38, 1
  %ZF21 = icmp eq i64 %37, 0
  %highbit22 = and i64 -9223372036854775808, %37
  %SF23 = icmp ne i64 %highbit22, 0
  %39 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %35, i64 %36)
  %OF24 = extractvalue { i64, i1 } %39, 1
  %40 = and i64 %37, 255
  %41 = call i64 @llvm.ctpop.i64(i64 %40)
  %42 = and i64 %41, 1
  %PF25 = icmp eq i64 %42, 0
  %CmpZF_JE = icmp eq i1 %ZF21, true
  br i1 %CmpZF_JE, label %bb.16, label %bb.6

bb.6:                                             ; preds = %bb.5
  %43 = call ptr @__ctype_b_loc()
  %memload27 = load i64, ptr %43, align 1
  %memload28 = load i64, ptr %RBP_N.40, align 1
  %44 = ptrtoint ptr %stktop_8 to i64
  %45 = add i64 %44, 4
  %46 = inttoptr i64 %45 to ptr
  %memload29 = load i64, ptr %46, align 1
  %47 = trunc i64 %memload29 to i32
  %RDX = sext i32 %47 to i64
  %memref-basereg30 = add i64 %memload28, %RDX
  %48 = inttoptr i64 %memref-basereg30 to ptr
  %memload31 = load i32, ptr %48, align 1
  %49 = trunc i32 %memload31 to i8
  %ECX = zext i8 %49 to i32
  %RCX32 = sext i32 %ECX to i64
  %memref-idxreg = mul i64 2, %RCX32
  %memref-basereg33 = add i64 %memload27, %memref-idxreg
  %50 = inttoptr i64 %memref-basereg33 to ptr
  %memload34 = load i32, ptr %50, align 1
  %51 = trunc i32 %memload34 to i16
  %EAX = zext i16 %51 to i32
  %EAX39 = and i32 %EAX, 1024
  %52 = and i32 %EAX39, 255
  %53 = call i32 @llvm.ctpop.i32(i32 %52)
  %54 = and i32 %53, 1
  %PF35 = icmp eq i32 %54, 0
  %ZF36 = icmp eq i32 %EAX39, 0
  %highbit37 = and i32 -2147483648, %EAX39
  %SF38 = icmp ne i32 %highbit37, 0
  %55 = sub i32 %EAX39, 0
  %56 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX39, i32 0)
  %CF40 = extractvalue { i32, i1 } %56, 1
  %ZF41 = icmp eq i32 %55, 0
  %highbit42 = and i32 -2147483648, %55
  %SF43 = icmp ne i32 %highbit42, 0
  %57 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX39, i32 0)
  %OF44 = extractvalue { i32, i1 } %57, 1
  %58 = and i32 %55, 255
  %59 = call i32 @llvm.ctpop.i32(i32 %58)
  %60 = and i32 %59, 1
  %PF45 = icmp eq i32 %60, 0
  %CmpZF_JNE121 = icmp eq i1 %ZF41, false
  br i1 %CmpZF_JNE121, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.19

bb.8:                                             ; preds = %bb.6
  %61 = call ptr @__ctype_b_loc()
  %memload47 = load i64, ptr %61, align 1
  %memload48 = load i64, ptr %RBP_N.40, align 1
  %62 = ptrtoint ptr %stktop_8 to i64
  %63 = add i64 %62, 4
  %64 = inttoptr i64 %63 to ptr
  %memload49 = load i64, ptr %64, align 1
  %65 = trunc i64 %memload49 to i32
  %RDX50 = sext i32 %65 to i64
  %memref-basereg51 = add i64 %memload48, %RDX50
  %66 = inttoptr i64 %memref-basereg51 to ptr
  %memload52 = load i32, ptr %66, align 1
  %67 = trunc i32 %memload52 to i8
  %ECX53 = zext i8 %67 to i32
  %RCX54 = sext i32 %ECX53 to i64
  %memref-idxreg55 = mul i64 2, %RCX54
  %memref-basereg56 = add i64 %memload47, %memref-idxreg55
  %68 = inttoptr i64 %memref-basereg56 to ptr
  %memload57 = load i32, ptr %68, align 1
  %69 = trunc i32 %memload57 to i16
  %EAX58 = zext i16 %69 to i32
  %EAX63 = and i32 %EAX58, 256
  %70 = and i32 %EAX63, 255
  %71 = call i32 @llvm.ctpop.i32(i32 %70)
  %72 = and i32 %71, 1
  %PF59 = icmp eq i32 %72, 0
  %ZF60 = icmp eq i32 %EAX63, 0
  %highbit61 = and i32 -2147483648, %EAX63
  %SF62 = icmp ne i32 %highbit61, 0
  %73 = sub i32 %EAX63, 0
  %74 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX63, i32 0)
  %CF64 = extractvalue { i32, i1 } %74, 1
  %ZF65 = icmp eq i32 %73, 0
  %highbit66 = and i32 -2147483648, %73
  %SF67 = icmp ne i32 %highbit66, 0
  %75 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX63, i32 0)
  %OF68 = extractvalue { i32, i1 } %75, 1
  %76 = and i32 %73, 255
  %77 = call i32 @llvm.ctpop.i32(i32 %76)
  %78 = and i32 %77, 1
  %PF69 = icmp eq i32 %78, 0
  %CmpZF_JE122 = icmp eq i1 %ZF65, true
  br i1 %CmpZF_JE122, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  store i32 1, ptr %RBP_N.28, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.8
  %79 = call ptr @__ctype_b_loc()
  %memload71 = load i64, ptr %79, align 1
  %memload72 = load i64, ptr %RBP_N.40, align 1
  %80 = ptrtoint ptr %stktop_8 to i64
  %81 = add i64 %80, 4
  %82 = inttoptr i64 %81 to ptr
  %memload73 = load i64, ptr %82, align 1
  %83 = trunc i64 %memload73 to i32
  %RDX74 = sext i32 %83 to i64
  %memref-basereg75 = add i64 %memload72, %RDX74
  %84 = inttoptr i64 %memref-basereg75 to ptr
  %memload76 = load i32, ptr %84, align 1
  %85 = trunc i32 %memload76 to i8
  %ECX77 = zext i8 %85 to i32
  %RCX78 = sext i32 %ECX77 to i64
  %memref-idxreg79 = mul i64 2, %RCX78
  %memref-basereg80 = add i64 %memload71, %memref-idxreg79
  %86 = inttoptr i64 %memref-basereg80 to ptr
  %memload81 = load i32, ptr %86, align 1
  %87 = trunc i32 %memload81 to i16
  %EAX82 = zext i16 %87 to i32
  %EAX87 = and i32 %EAX82, 512
  %88 = and i32 %EAX87, 255
  %89 = call i32 @llvm.ctpop.i32(i32 %88)
  %90 = and i32 %89, 1
  %PF83 = icmp eq i32 %90, 0
  %ZF84 = icmp eq i32 %EAX87, 0
  %highbit85 = and i32 -2147483648, %EAX87
  %SF86 = icmp ne i32 %highbit85, 0
  %91 = sub i32 %EAX87, 0
  %92 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX87, i32 0)
  %CF88 = extractvalue { i32, i1 } %92, 1
  %ZF89 = icmp eq i32 %91, 0
  %highbit90 = and i32 -2147483648, %91
  %SF91 = icmp ne i32 %highbit90, 0
  %93 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX87, i32 0)
  %OF92 = extractvalue { i32, i1 } %93, 1
  %94 = and i32 %91, 255
  %95 = call i32 @llvm.ctpop.i32(i32 %94)
  %96 = and i32 %95, 1
  %PF93 = icmp eq i32 %96, 0
  %CmpZF_JE123 = icmp eq i1 %ZF89, true
  br i1 %CmpZF_JE123, label %bb.12, label %bb.11

bb.11:                                            ; preds = %bb.10
  store i32 1, ptr %RBP_N.24, align 1
  br label %bb.12

bb.12:                                            ; preds = %bb.11, %bb.10
  %memload94 = load i32, ptr %RBP_N.28, align 1
  %memload95 = load i32, ptr %RBP_N.24, align 1
  %EAX97 = add i32 %memload94, %memload95
  %97 = and i32 %EAX97, 255
  %98 = call i32 @llvm.ctpop.i32(i32 %97)
  %99 = and i32 %98, 1
  %PF96 = icmp eq i32 %99, 0
  %100 = sub i32 %EAX97, 2
  %101 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX97, i32 2)
  %CF98 = extractvalue { i32, i1 } %101, 1
  %ZF99 = icmp eq i32 %100, 0
  %highbit100 = and i32 -2147483648, %100
  %SF101 = icmp ne i32 %highbit100, 0
  %102 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX97, i32 2)
  %OF102 = extractvalue { i32, i1 } %102, 1
  %103 = and i32 %100, 255
  %104 = call i32 @llvm.ctpop.i32(i32 %103)
  %105 = and i32 %104, 1
  %PF103 = icmp eq i32 %105, 0
  %CmpZF_JNE124 = icmp eq i1 %ZF99, false
  br i1 %CmpZF_JNE124, label %bb.14, label %bb.13

bb.13:                                            ; preds = %bb.12
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.19

bb.14:                                            ; preds = %bb.12
  br label %bb.15

bb.15:                                            ; preds = %bb.14
  %106 = ptrtoint ptr %stktop_8 to i64
  %107 = add i64 %106, 4
  %108 = inttoptr i64 %107 to ptr
  %memload104 = load i32, ptr %108, align 1
  %EAX111 = add i32 %memload104, 1
  %109 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload104, i32 1)
  %CF105 = extractvalue { i32, i1 } %109, 1
  %110 = and i32 %EAX111, 255
  %111 = call i32 @llvm.ctpop.i32(i32 %110)
  %112 = and i32 %111, 1
  %PF106 = icmp eq i32 %112, 0
  %ZF107 = icmp eq i32 %EAX111, 0
  %highbit108 = and i32 -2147483648, %EAX111
  %SF109 = icmp ne i32 %highbit108, 0
  %113 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload104, i32 1)
  %OF110 = extractvalue { i32, i1 } %113, 1
  %114 = ptrtoint ptr %stktop_8 to i64
  %115 = add i64 %114, 4
  %116 = inttoptr i64 %115 to ptr
  store i32 %EAX111, ptr %116, align 1
  br label %bb.5

bb.16:                                            ; preds = %bb.5
  br label %bb.17

bb.17:                                            ; preds = %bb.16
  %memload112 = load i32, ptr %RBP_N.32, align 1
  %EAX119 = add i32 %memload112, 1
  %117 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload112, i32 1)
  %CF113 = extractvalue { i32, i1 } %117, 1
  %118 = and i32 %EAX119, 255
  %119 = call i32 @llvm.ctpop.i32(i32 %118)
  %120 = and i32 %119, 1
  %PF114 = icmp eq i32 %120, 0
  %ZF115 = icmp eq i32 %EAX119, 0
  %highbit116 = and i32 -2147483648, %EAX119
  %SF117 = icmp ne i32 %highbit116, 0
  %121 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload112, i32 1)
  %OF118 = extractvalue { i32, i1 } %121, 1
  store i32 %EAX119, ptr %RBP_N.32, align 1
  br label %bb.3

bb.18:                                            ; preds = %bb.3
  store i32 1, ptr %RBP_N.4, align 1
  br label %bb.19

bb.19:                                            ; preds = %bb.18, %bb.13, %bb.7, %bb.1
  %memload120 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload120
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

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
