; ModuleID = 'code.so'
source_filename = "code.so"

@0 = private unnamed_addr constant [6 x i8] c" %d\000\00", align 1, !ROData_SecInfo !0

declare dso_local i32 @snprintf(ptr, i64, ptr, ...)

declare dso_local ptr @malloc(i64)

declare dso_local i32 @sprintf(ptr, ptr, ...)

define dso_local i64 @func0(i32 %arg1) {
entry:
  %RCX-SKT-LOC = alloca i64, align 8
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 44
  %RBP_N.12 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.12, align 1
  store i32 2, ptr %RBP_N.16, align 1
  store i32 1, ptr %RBP_N.20, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload = load i32, ptr %RBP_N.20, align 1
  %7 = load i32, ptr %RBP_N.12, align 1
  %8 = sub i32 %memload, %7
  %9 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %7)
  %CF = extractvalue { i32, i1 } %9, 1
  %ZF = icmp eq i32 %8, 0
  %highbit = and i32 -2147483648, %8
  %SF = icmp ne i32 %highbit, 0
  %10 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %7)
  %OF = extractvalue { i32, i1 } %10, 1
  %11 = and i32 %8, 255
  %12 = call i32 @llvm.ctpop.i32(i32 %11)
  %13 = and i32 %12, 1
  %PF = icmp eq i32 %13, 0
  %ZFCmp_JG = icmp eq i1 %ZF, false
  %SFOFCmp_JG = icmp eq i1 %SF, %OF
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i32, ptr %RBP_N.20, align 1
  %RDI = zext i32 0 to i64
  %14 = inttoptr i64 %RDI to ptr
  %15 = zext i32 0 to i64
  %EAX = call i32 (ptr, i64, ptr, ...) @snprintf(ptr %14, i64 %15, ptr @0, i32 %memload1)
  %memload2 = load i32, ptr %RBP_N.16, align 1
  %EAX4 = add i32 %EAX, %memload2
  %16 = and i32 %EAX4, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = and i32 %17, 1
  %PF3 = icmp eq i32 %18, 0
  store i32 %EAX4, ptr %RBP_N.16, align 1
  %memload5 = load i32, ptr %RBP_N.20, align 1
  %EAX12 = add i32 %memload5, 1
  %19 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload5, i32 1)
  %CF6 = extractvalue { i32, i1 } %19, 1
  %20 = and i32 %EAX12, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = and i32 %21, 1
  %PF7 = icmp eq i32 %22, 0
  %ZF8 = icmp eq i32 %EAX12, 0
  %highbit9 = and i32 -2147483648, %EAX12
  %SF10 = icmp ne i32 %highbit9, 0
  %23 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload5, i32 1)
  %OF11 = extractvalue { i32, i1 } %23, 1
  store i32 %EAX12, ptr %RBP_N.20, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %memload13 = load i64, ptr %RBP_N.16, align 1
  %24 = trunc i64 %memload13 to i32
  %RDI14 = sext i32 %24 to i64
  %25 = call ptr @malloc(i64 %RDI14)
  %RAX = ptrtoint ptr %25 to i64
  store i64 %RAX, ptr %RBP_N.32, align 1
  %26 = load i64, ptr %RBP_N.32, align 1
  %27 = sub i64 %26, 0
  %28 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %26, i64 0)
  %CF15 = extractvalue { i64, i1 } %28, 1
  %ZF16 = icmp eq i64 %27, 0
  %highbit17 = and i64 -9223372036854775808, %27
  %SF18 = icmp ne i64 %highbit17, 0
  %29 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %26, i64 0)
  %OF19 = extractvalue { i64, i1 } %29, 1
  %30 = and i64 %27, 255
  %31 = call i64 @llvm.ctpop.i64(i64 %30)
  %32 = and i64 %31, 1
  %PF20 = icmp eq i64 %32, 0
  %CmpZF_JNE = icmp eq i1 %ZF16, false
  br i1 %CmpZF_JNE, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %33 = sext i32 0 to i64
  store i64 %33, ptr %RBP_N.8, align 1
  br label %bb.9

bb.5:                                             ; preds = %bb.3
  %memload21 = load i64, ptr %RBP_N.32, align 1
  store i64 %memload21, ptr %RBP_N.40, align 1
  %memload22 = load i64, ptr %RBP_N.40, align 1
  %34 = inttoptr i64 %memload22 to ptr
  %EAX23 = call i32 (ptr, ptr, ...) @sprintf(ptr %34, ptr getelementptr inbounds ([6 x i8], ptr @0, i32 0, i32 4))
  %memload24 = load i64, ptr %RBP_N.40, align 1
  %RCX = sext i32 %EAX23 to i64
  %RAX28 = add nsw i64 %memload24, %RCX
  %highbit25 = and i64 -9223372036854775808, %RAX28
  %SF26 = icmp ne i64 %highbit25, 0
  %ZF27 = icmp eq i64 %RAX28, 0
  store i64 %RAX28, ptr %RBP_N.40, align 1
  %35 = ptrtoint ptr %stktop_8 to i64
  %36 = add i64 %35, 4
  %37 = inttoptr i64 %36 to ptr
  store i32 1, ptr %37, align 1
  store i64 %RCX, ptr %RCX-SKT-LOC, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.7
  %38 = ptrtoint ptr %stktop_8 to i64
  %39 = add i64 %38, 4
  %40 = inttoptr i64 %39 to ptr
  %memload29 = load i32, ptr %40, align 1
  %41 = load i32, ptr %RBP_N.12, align 1
  %42 = sub i32 %memload29, %41
  %43 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload29, i32 %41)
  %CF30 = extractvalue { i32, i1 } %43, 1
  %ZF31 = icmp eq i32 %42, 0
  %highbit32 = and i32 -2147483648, %42
  %SF33 = icmp ne i32 %highbit32, 0
  %44 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload29, i32 %41)
  %OF34 = extractvalue { i32, i1 } %44, 1
  %45 = and i32 %42, 255
  %46 = call i32 @llvm.ctpop.i32(i32 %45)
  %47 = and i32 %46, 1
  %PF35 = icmp eq i32 %47, 0
  %ZFCmp_JG57 = icmp eq i1 %ZF31, false
  %SFOFCmp_JG58 = icmp eq i1 %SF33, %OF34
  %ZFAndSFOF_JG59 = and i1 %ZFCmp_JG57, %SFOFCmp_JG58
  br i1 %ZFAndSFOF_JG59, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload36 = load i64, ptr %RBP_N.40, align 1
  %48 = ptrtoint ptr %stktop_8 to i64
  %49 = add i64 %48, 4
  %50 = inttoptr i64 %49 to ptr
  %memload37 = load i32, ptr %50, align 1
  %51 = inttoptr i64 %memload36 to ptr
  %RCX39 = load i64, ptr %RCX-SKT-LOC, align 1
  %EAX40 = call i32 (ptr, ptr, ...) @sprintf(ptr %51, ptr @0, i32 %memload37, i64 %RCX39)
  %memload41 = load i64, ptr %RBP_N.40, align 1
  %RCX42 = sext i32 %EAX40 to i64
  %RAX46 = add nsw i64 %memload41, %RCX42
  %highbit43 = and i64 -9223372036854775808, %RAX46
  %SF44 = icmp ne i64 %highbit43, 0
  %ZF45 = icmp eq i64 %RAX46, 0
  store i64 %RAX46, ptr %RBP_N.40, align 1
  %52 = ptrtoint ptr %stktop_8 to i64
  %53 = add i64 %52, 4
  %54 = inttoptr i64 %53 to ptr
  %memload47 = load i32, ptr %54, align 1
  %EAX54 = add i32 %memload47, 1
  %55 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload47, i32 1)
  %CF48 = extractvalue { i32, i1 } %55, 1
  %56 = and i32 %EAX54, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = and i32 %57, 1
  %PF49 = icmp eq i32 %58, 0
  %ZF50 = icmp eq i32 %EAX54, 0
  %highbit51 = and i32 -2147483648, %EAX54
  %SF52 = icmp ne i32 %highbit51, 0
  %59 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload47, i32 1)
  %OF53 = extractvalue { i32, i1 } %59, 1
  %60 = ptrtoint ptr %stktop_8 to i64
  %61 = add i64 %60, 4
  %62 = inttoptr i64 %61 to ptr
  store i32 %EAX54, ptr %62, align 1
  store i64 %RCX42, ptr %RCX-SKT-LOC, align 1
  br label %bb.6

bb.8:                                             ; preds = %bb.6
  %memload55 = load i64, ptr %RBP_N.32, align 1
  store i64 %memload55, ptr %RBP_N.8, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.4
  %memload56 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload56
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

!0 = !{i64 8192}
