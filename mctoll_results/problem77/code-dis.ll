; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i32 %arg1, i32 %arg2) {
entry:
  %stktop_1 = alloca i8, i32 29, align 1
  %tos = ptrtoint ptr %stktop_1 to i64
  %0 = add i64 %tos, 9
  %RBP_N.20 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 13
  %RBP_N.16 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 17
  %RBP_N.12 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 21
  %RBP_N.8 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 25
  %RBP_N.4 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i32 1, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.7
  %memload = load i32, ptr %RBP_N.16, align 1
  %6 = load i32, ptr %RBP_N.8, align 1
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
  %13 = trunc i32 0 to i8
  store i8 %13, ptr %stktop_1, align 1
  %ZFCmp_JG = icmp eq i1 %ZF, false
  %SFOFCmp_JG = icmp eq i1 %SF, %OF
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %14 = load i32, ptr %RBP_N.20, align 1
  %15 = zext i32 %14 to i64
  %16 = zext i32 100 to i64
  %17 = sub i64 %15, %16
  %18 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %15, i64 %16)
  %CF1 = extractvalue { i64, i1 } %18, 1
  %ZF2 = icmp eq i64 %17, 0
  %highbit3 = and i64 -9223372036854775808, %17
  %SF4 = icmp ne i64 %highbit3, 0
  %19 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %15, i64 %16)
  %OF5 = extractvalue { i64, i1 } %19, 1
  %20 = and i64 %17, 255
  %21 = call i64 @llvm.ctpop.i64(i64 %20)
  %22 = and i64 %21, 1
  %PF6 = icmp eq i64 %22, 0
  %AL = icmp ne i1 %SF4, %OF5
  %23 = zext i1 %AL to i8
  store i8 %23, ptr %stktop_1, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.1
  %memload7 = load i8, ptr %stktop_1, align 1
  %24 = and i8 %memload7, 1
  %25 = call i8 @llvm.ctpop.i8(i8 %24)
  %26 = and i8 %25, 1
  %PF8 = icmp eq i8 %26, 0
  %ZF9 = icmp eq i8 %24, 0
  %highbit10 = and i8 -128, %24
  %SF11 = icmp ne i8 %highbit10, 0
  %CmpZF_JNE = icmp eq i1 %ZF9, false
  br i1 %CmpZF_JNE, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  br label %bb.8

bb.8:                                             ; preds = %bb.4
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.9

bb.5:                                             ; preds = %bb.3
  %memload12 = load i32, ptr %RBP_N.16, align 1
  %27 = load i32, ptr %RBP_N.8, align 1
  %28 = sub i32 %memload12, %27
  %29 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload12, i32 %27)
  %CF13 = extractvalue { i32, i1 } %29, 1
  %ZF14 = icmp eq i32 %28, 0
  %highbit15 = and i32 -2147483648, %28
  %SF16 = icmp ne i32 %highbit15, 0
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload12, i32 %27)
  %OF17 = extractvalue { i32, i1 } %30, 1
  %31 = and i32 %28, 255
  %32 = call i32 @llvm.ctpop.i32(i32 %31)
  %33 = and i32 %32, 1
  %PF18 = icmp eq i32 %33, 0
  %CmpZF_JNE30 = icmp eq i1 %ZF14, false
  br i1 %CmpZF_JNE30, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  store i32 1, ptr %RBP_N.4, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.6
  %memload19 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload19

bb.7:                                             ; preds = %bb.5
  %memload20 = load i32, ptr %RBP_N.16, align 1
  %memload21 = load i32, ptr %RBP_N.12, align 1
  %EAX = mul i32 %memload20, %memload21
  store i32 %EAX, ptr %RBP_N.16, align 1
  %memload22 = load i32, ptr %RBP_N.20, align 1
  %EAX29 = add i32 %memload22, 1
  %34 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload22, i32 1)
  %CF23 = extractvalue { i32, i1 } %34, 1
  %35 = and i32 %EAX29, 255
  %36 = call i32 @llvm.ctpop.i32(i32 %35)
  %37 = and i32 %36, 1
  %PF24 = icmp eq i32 %37, 0
  %ZF25 = icmp eq i32 %EAX29, 0
  %highbit26 = and i32 -2147483648, %EAX29
  %SF27 = icmp ne i32 %highbit26, 0
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload22, i32 1)
  %OF28 = extractvalue { i32, i1 } %38, 1
  store i32 %EAX29, ptr %RBP_N.20, align 1
  br label %bb.1
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
declare i8 @llvm.ctpop.i8(i8) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
