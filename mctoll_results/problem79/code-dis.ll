; ModuleID = 'code.so'
source_filename = "code.so"

@rodata_13 = private unnamed_addr constant [7 x i8] c"2357BD\00", align 1, !ROData_SecInfo !0

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
  store i32 0, ptr %RBP_N.24, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %memload = load i64, ptr %RBP_N.24, align 1
  %5 = trunc i64 %memload to i32
  %RAX1 = sext i32 %5 to i64
  store i64 %RAX1, ptr %stktop_8, align 1
  %memload2 = load i64, ptr %RBP_N.8, align 1
  %6 = inttoptr i64 %memload2 to ptr
  %RAX3 = call i64 @strlen(ptr %6)
  %memload4 = load i64, ptr %stktop_8, align 1
  %7 = sub i64 %memload4, %RAX3
  %8 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %memload4, i64 %RAX3)
  %CF = extractvalue { i64, i1 } %8, 1
  %ZF = icmp eq i64 %7, 0
  %highbit = and i64 -9223372036854775808, %7
  %SF = icmp ne i64 %highbit, 0
  %9 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %memload4, i64 %RAX3)
  %OF = extractvalue { i64, i1 } %9, 1
  %10 = and i64 %7, 255
  %11 = call i64 @llvm.ctpop.i64(i64 %10)
  %12 = and i64 %11, 1
  %PF = icmp eq i64 %12, 0
  %CFCmp_JAE = icmp eq i1 %CF, false
  br i1 %CFCmp_JAE, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload5 = load i64, ptr %RBP_N.16, align 1
  %memload6 = load i64, ptr %RBP_N.8, align 1
  %memload7 = load i64, ptr %RBP_N.24, align 1
  %13 = trunc i64 %memload7 to i32
  %RCX = sext i32 %13 to i64
  %memref-basereg = add i64 %memload6, %RCX
  %14 = inttoptr i64 %memref-basereg to ptr
  %memload8 = load i32, ptr %14, align 1
  %15 = trunc i32 %memload8 to i8
  %ESI = sext i8 %15 to i32
  %16 = inttoptr i64 %memload5 to ptr
  %17 = call ptr @strchr(ptr %16, i32 %ESI)
  %RAX9 = ptrtoint ptr %17 to i64
  %18 = sub i64 %RAX9, 0
  %19 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX9, i64 0)
  %CF10 = extractvalue { i64, i1 } %19, 1
  %ZF11 = icmp eq i64 %18, 0
  %highbit12 = and i64 -9223372036854775808, %18
  %SF13 = icmp ne i64 %highbit12, 0
  %20 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX9, i64 0)
  %OF14 = extractvalue { i64, i1 } %20, 1
  %21 = and i64 %18, 255
  %22 = call i64 @llvm.ctpop.i64(i64 %21)
  %23 = and i64 %22, 1
  %PF15 = icmp eq i64 %23, 0
  %CmpZF_JE = icmp eq i1 %ZF11, true
  br i1 %CmpZF_JE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload16 = load i32, ptr %RBP_N.20, align 1
  %EAX = add i32 %memload16, 1
  %24 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload16, i32 1)
  %CF17 = extractvalue { i32, i1 } %24, 1
  %25 = and i32 %EAX, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = and i32 %26, 1
  %PF18 = icmp eq i32 %27, 0
  %ZF19 = icmp eq i32 %EAX, 0
  %highbit20 = and i32 -2147483648, %EAX
  %SF21 = icmp ne i32 %highbit20, 0
  %28 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload16, i32 1)
  %OF22 = extractvalue { i32, i1 } %28, 1
  store i32 %EAX, ptr %RBP_N.20, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload23 = load i32, ptr %RBP_N.24, align 1
  %EAX30 = add i32 %memload23, 1
  %29 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload23, i32 1)
  %CF24 = extractvalue { i32, i1 } %29, 1
  %30 = and i32 %EAX30, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = and i32 %31, 1
  %PF25 = icmp eq i32 %32, 0
  %ZF26 = icmp eq i32 %EAX30, 0
  %highbit27 = and i32 -2147483648, %EAX30
  %SF28 = icmp ne i32 %highbit27, 0
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload23, i32 1)
  %OF29 = extractvalue { i32, i1 } %33, 1
  store i32 %EAX30, ptr %RBP_N.24, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  %memload31 = load i32, ptr %RBP_N.20, align 1
  ret i32 %memload31
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

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 8192}
