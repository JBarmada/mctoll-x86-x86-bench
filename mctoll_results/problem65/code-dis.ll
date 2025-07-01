; ModuleID = 'code.so'
source_filename = "code.so"

@rodata_13 = private unnamed_addr constant [11 x i8] c"aeiouAEIOU\00", align 1, !ROData_SecInfo !0

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @strchr(ptr, i32)

define dso_local i32 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %4 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  %RAX = ptrtoint ptr @rodata_13 to i64
  store i64 %RAX, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  %5 = inttoptr i64 %memload to ptr
  %RAX1 = call i64 @strlen(ptr %5)
  %6 = trunc i64 %RAX1 to i32
  store i32 %6, ptr %RBP_N.24, align 1
  %7 = ptrtoint ptr %stktop_8 to i64
  %8 = add i64 %7, 4
  %9 = inttoptr i64 %8 to ptr
  store i32 0, ptr %9, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %10 = ptrtoint ptr %stktop_8 to i64
  %11 = add i64 %10, 4
  %12 = inttoptr i64 %11 to ptr
  %memload2 = load i32, ptr %12, align 1
  %13 = load i32, ptr %RBP_N.24, align 1
  %14 = sub i32 %memload2, %13
  %15 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload2, i32 %13)
  %CF = extractvalue { i32, i1 } %15, 1
  %ZF = icmp eq i32 %14, 0
  %highbit = and i32 -2147483648, %14
  %SF = icmp ne i32 %highbit, 0
  %16 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload2, i32 %13)
  %OF = extractvalue { i32, i1 } %16, 1
  %17 = and i32 %14, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = and i32 %18, 1
  %PF = icmp eq i32 %19, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload3 = load i64, ptr %RBP_N.16, align 1
  %memload4 = load i64, ptr %RBP_N.8, align 1
  %20 = ptrtoint ptr %stktop_8 to i64
  %21 = add i64 %20, 4
  %22 = inttoptr i64 %21 to ptr
  %memload5 = load i64, ptr %22, align 1
  %23 = trunc i64 %memload5 to i32
  %RCX = sext i32 %23 to i64
  %memref-basereg = add i64 %memload4, %RCX
  %24 = inttoptr i64 %memref-basereg to ptr
  %memload6 = load i32, ptr %24, align 1
  %25 = trunc i32 %memload6 to i8
  %ESI = sext i8 %25 to i32
  %26 = inttoptr i64 %memload3 to ptr
  %27 = call ptr @strchr(ptr %26, i32 %ESI)
  %RAX7 = ptrtoint ptr %27 to i64
  %28 = sub i64 %RAX7, 0
  %29 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX7, i64 0)
  %CF8 = extractvalue { i64, i1 } %29, 1
  %ZF9 = icmp eq i64 %28, 0
  %highbit10 = and i64 -9223372036854775808, %28
  %SF11 = icmp ne i64 %highbit10, 0
  %30 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX7, i64 0)
  %OF12 = extractvalue { i64, i1 } %30, 1
  %31 = and i64 %28, 255
  %32 = call i64 @llvm.ctpop.i64(i64 %31)
  %33 = and i64 %32, 1
  %PF13 = icmp eq i64 %33, 0
  %CmpZF_JE = icmp eq i1 %ZF9, true
  br i1 %CmpZF_JE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload14 = load i32, ptr %RBP_N.20, align 1
  %EAX = add i32 %memload14, 1
  %34 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload14, i32 1)
  %CF15 = extractvalue { i32, i1 } %34, 1
  %35 = and i32 %EAX, 255
  %36 = call i32 @llvm.ctpop.i32(i32 %35)
  %37 = and i32 %36, 1
  %PF16 = icmp eq i32 %37, 0
  %ZF17 = icmp eq i32 %EAX, 0
  %highbit18 = and i32 -2147483648, %EAX
  %SF19 = icmp ne i32 %highbit18, 0
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload14, i32 1)
  %OF20 = extractvalue { i32, i1 } %38, 1
  store i32 %EAX, ptr %RBP_N.20, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %39 = ptrtoint ptr %stktop_8 to i64
  %40 = add i64 %39, 4
  %41 = inttoptr i64 %40 to ptr
  %memload21 = load i32, ptr %41, align 1
  %EAX28 = add i32 %memload21, 1
  %42 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload21, i32 1)
  %CF22 = extractvalue { i32, i1 } %42, 1
  %43 = and i32 %EAX28, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF23 = icmp eq i32 %45, 0
  %ZF24 = icmp eq i32 %EAX28, 0
  %highbit25 = and i32 -2147483648, %EAX28
  %SF26 = icmp ne i32 %highbit25, 0
  %46 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload21, i32 1)
  %OF27 = extractvalue { i32, i1 } %46, 1
  %47 = ptrtoint ptr %stktop_8 to i64
  %48 = add i64 %47, 4
  %49 = inttoptr i64 %48 to ptr
  store i32 %EAX28, ptr %49, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  %50 = load i32, ptr %RBP_N.24, align 1
  %51 = zext i32 %50 to i64
  %52 = zext i32 0 to i64
  %53 = sub i64 %51, %52
  %54 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %51, i64 %52)
  %CF29 = extractvalue { i64, i1 } %54, 1
  %ZF30 = icmp eq i64 %53, 0
  %highbit31 = and i64 -9223372036854775808, %53
  %SF32 = icmp ne i64 %highbit31, 0
  %55 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %51, i64 %52)
  %OF33 = extractvalue { i64, i1 } %55, 1
  %56 = and i64 %53, 255
  %57 = call i64 @llvm.ctpop.i64(i64 %56)
  %58 = and i64 %57, 1
  %PF34 = icmp eq i64 %58, 0
  %CmpZF_JLE = icmp eq i1 %ZF30, true
  %CmpOF_JLE = icmp ne i1 %SF32, %OF33
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.10, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload35 = load i64, ptr %RBP_N.8, align 1
  %memload36 = load i32, ptr %RBP_N.24, align 1
  %ECX = sub i32 %memload36, 1
  %59 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload36, i32 1)
  %CF37 = extractvalue { i32, i1 } %59, 1
  %60 = and i32 %ECX, 255
  %61 = call i32 @llvm.ctpop.i32(i32 %60)
  %62 = and i32 %61, 1
  %PF38 = icmp eq i32 %62, 0
  %ZF39 = icmp eq i32 %ECX, 0
  %highbit40 = and i32 -2147483648, %ECX
  %SF41 = icmp ne i32 %highbit40, 0
  %63 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload36, i32 1)
  %OF42 = extractvalue { i32, i1 } %63, 1
  %RCX43 = sext i32 %ECX to i64
  %memref-basereg44 = add i64 %memload35, %RCX43
  %64 = inttoptr i64 %memref-basereg44 to ptr
  %memload45 = load i32, ptr %64, align 1
  %65 = trunc i32 %memload45 to i8
  %EAX46 = sext i8 %65 to i32
  %66 = sub i32 %EAX46, 121
  %67 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX46, i32 121)
  %CF47 = extractvalue { i32, i1 } %67, 1
  %ZF48 = icmp eq i32 %66, 0
  %highbit49 = and i32 -2147483648, %66
  %SF50 = icmp ne i32 %highbit49, 0
  %68 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX46, i32 121)
  %OF51 = extractvalue { i32, i1 } %68, 1
  %69 = and i32 %66, 255
  %70 = call i32 @llvm.ctpop.i32(i32 %69)
  %71 = and i32 %70, 1
  %PF52 = icmp eq i32 %71, 0
  %CmpZF_JE81 = icmp eq i1 %ZF48, true
  br i1 %CmpZF_JE81, label %bb.9, label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload53 = load i64, ptr %RBP_N.8, align 1
  %memload54 = load i32, ptr %RBP_N.24, align 1
  %ECX61 = sub i32 %memload54, 1
  %72 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload54, i32 1)
  %CF55 = extractvalue { i32, i1 } %72, 1
  %73 = and i32 %ECX61, 255
  %74 = call i32 @llvm.ctpop.i32(i32 %73)
  %75 = and i32 %74, 1
  %PF56 = icmp eq i32 %75, 0
  %ZF57 = icmp eq i32 %ECX61, 0
  %highbit58 = and i32 -2147483648, %ECX61
  %SF59 = icmp ne i32 %highbit58, 0
  %76 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload54, i32 1)
  %OF60 = extractvalue { i32, i1 } %76, 1
  %RCX62 = sext i32 %ECX61 to i64
  %memref-basereg63 = add i64 %memload53, %RCX62
  %77 = inttoptr i64 %memref-basereg63 to ptr
  %memload64 = load i32, ptr %77, align 1
  %78 = trunc i32 %memload64 to i8
  %EAX65 = sext i8 %78 to i32
  %79 = sub i32 %EAX65, 89
  %80 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX65, i32 89)
  %CF66 = extractvalue { i32, i1 } %80, 1
  %ZF67 = icmp eq i32 %79, 0
  %highbit68 = and i32 -2147483648, %79
  %SF69 = icmp ne i32 %highbit68, 0
  %81 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX65, i32 89)
  %OF70 = extractvalue { i32, i1 } %81, 1
  %82 = and i32 %79, 255
  %83 = call i32 @llvm.ctpop.i32(i32 %82)
  %84 = and i32 %83, 1
  %PF71 = icmp eq i32 %84, 0
  %CmpZF_JNE = icmp eq i1 %ZF67, false
  br i1 %CmpZF_JNE, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.7
  %memload72 = load i32, ptr %RBP_N.20, align 1
  %EAX79 = add i32 %memload72, 1
  %85 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload72, i32 1)
  %CF73 = extractvalue { i32, i1 } %85, 1
  %86 = and i32 %EAX79, 255
  %87 = call i32 @llvm.ctpop.i32(i32 %86)
  %88 = and i32 %87, 1
  %PF74 = icmp eq i32 %88, 0
  %ZF75 = icmp eq i32 %EAX79, 0
  %highbit76 = and i32 -2147483648, %EAX79
  %SF77 = icmp ne i32 %highbit76, 0
  %89 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload72, i32 1)
  %OF78 = extractvalue { i32, i1 } %89, 1
  store i32 %EAX79, ptr %RBP_N.20, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.8, %bb.6
  %memload80 = load i32, ptr %RBP_N.20, align 1
  ret i32 %memload80
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
