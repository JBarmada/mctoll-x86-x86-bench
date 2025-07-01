; ModuleID = 'code.so'
source_filename = "code.so"

@rodata_13 = private unnamed_addr constant [11 x i8] c"AEIOUaeiou\00", align 1, !ROData_SecInfo !0

declare dso_local ptr @strchr(ptr, i32)

define dso_local i64 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  %RAX = ptrtoint ptr @rodata_13 to i64
  store i64 %RAX, ptr %RBP_N.16, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  store i64 %memload, ptr %RBP_N.24, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.4
  %memload1 = load i64, ptr %RBP_N.8, align 1
  %4 = inttoptr i64 %memload1 to ptr
  %memload2 = load i32, ptr %4, align 1
  %5 = trunc i32 %memload2 to i8
  %EAX = sext i8 %5 to i32
  %6 = sub i32 %EAX, 0
  %7 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 0)
  %CF = extractvalue { i32, i1 } %7, 1
  %ZF = icmp eq i32 %6, 0
  %highbit = and i32 -2147483648, %6
  %SF = icmp ne i32 %highbit, 0
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 0)
  %OF = extractvalue { i32, i1 } %8, 1
  %9 = and i32 %6, 255
  %10 = call i32 @llvm.ctpop.i32(i32 %9)
  %11 = and i32 %10, 1
  %PF = icmp eq i32 %11, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.5, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload3 = load i64, ptr %RBP_N.16, align 1
  %memload4 = load i64, ptr %RBP_N.8, align 1
  %12 = inttoptr i64 %memload4 to ptr
  %memload5 = load i32, ptr %12, align 1
  %13 = trunc i32 %memload5 to i8
  %ESI = sext i8 %13 to i32
  %14 = inttoptr i64 %memload3 to ptr
  %15 = call ptr @strchr(ptr %14, i32 %ESI)
  %RAX6 = ptrtoint ptr %15 to i64
  %16 = sub i64 %RAX6, 0
  %17 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX6, i64 0)
  %CF7 = extractvalue { i64, i1 } %17, 1
  %ZF8 = icmp eq i64 %16, 0
  %highbit9 = and i64 -9223372036854775808, %16
  %SF10 = icmp ne i64 %highbit9, 0
  %18 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX6, i64 0)
  %OF11 = extractvalue { i64, i1 } %18, 1
  %19 = and i64 %16, 255
  %20 = call i64 @llvm.ctpop.i64(i64 %19)
  %21 = and i64 %20, 1
  %PF12 = icmp eq i64 %21, 0
  %CmpZF_JNE = icmp eq i1 %ZF8, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload13 = load i64, ptr %RBP_N.8, align 1
  %22 = inttoptr i64 %memload13 to ptr
  %memload14 = load i8, ptr %22, align 1
  %memload15 = load i64, ptr %RBP_N.24, align 1
  %RDX = add i64 %memload15, 1
  %23 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %memload15, i64 1)
  %CF16 = extractvalue { i64, i1 } %23, 1
  %24 = and i64 %RDX, 255
  %25 = call i64 @llvm.ctpop.i64(i64 %24)
  %26 = and i64 %25, 1
  %PF17 = icmp eq i64 %26, 0
  %ZF18 = icmp eq i64 %RDX, 0
  %highbit19 = and i64 -9223372036854775808, %RDX
  %SF20 = icmp ne i64 %highbit19, 0
  %27 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %memload15, i64 1)
  %OF21 = extractvalue { i64, i1 } %27, 1
  store i64 %RDX, ptr %RBP_N.24, align 1
  %28 = inttoptr i64 %memload15 to ptr
  store i8 %memload14, ptr %28, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  %memload22 = load i64, ptr %RBP_N.8, align 1
  %RAX29 = add i64 %memload22, 1
  %29 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %memload22, i64 1)
  %CF23 = extractvalue { i64, i1 } %29, 1
  %30 = and i64 %RAX29, 255
  %31 = call i64 @llvm.ctpop.i64(i64 %30)
  %32 = and i64 %31, 1
  %PF24 = icmp eq i64 %32, 0
  %ZF25 = icmp eq i64 %RAX29, 0
  %highbit26 = and i64 -9223372036854775808, %RAX29
  %SF27 = icmp ne i64 %highbit26, 0
  %33 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %memload22, i64 1)
  %OF28 = extractvalue { i64, i1 } %33, 1
  store i64 %RAX29, ptr %RBP_N.8, align 1
  br label %bb.1

bb.5:                                             ; preds = %bb.1
  %memload30 = load i64, ptr %RBP_N.24, align 1
  %34 = inttoptr i64 %memload30 to ptr
  store i8 0, ptr %34, align 1
  ret i64 %memload30
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
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 8192}
