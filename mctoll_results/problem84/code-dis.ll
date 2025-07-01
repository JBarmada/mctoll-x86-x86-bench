; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i32 %arg1) {
entry:
  %stktop_4 = alloca i8, i32 24, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.12 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.8 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.4 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.8, align 1
  %4 = load i32, ptr %RBP_N.8, align 1
  %5 = zext i32 %4 to i64
  %6 = zext i32 1 to i64
  %7 = sub i64 %5, %6
  %8 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %5, i64 %6)
  %CF = extractvalue { i64, i1 } %8, 1
  %ZF = icmp eq i64 %7, 0
  %highbit = and i64 -9223372036854775808, %7
  %SF = icmp ne i64 %highbit, 0
  %9 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %5, i64 %6)
  %OF = extractvalue { i64, i1 } %9, 1
  %10 = and i64 %7, 255
  %11 = call i64 @llvm.ctpop.i64(i64 %10)
  %12 = and i64 %11, 1
  %PF = icmp eq i64 %12, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.8

bb.2:                                             ; preds = %entry
  %13 = load i32, ptr %RBP_N.8, align 1
  %14 = zext i32 %13 to i64
  %15 = zext i32 1 to i64
  %16 = sub i64 %14, %15
  %17 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %14, i64 %15)
  %CF1 = extractvalue { i64, i1 } %17, 1
  %ZF2 = icmp eq i64 %16, 0
  %highbit3 = and i64 -9223372036854775808, %16
  %SF4 = icmp ne i64 %highbit3, 0
  %18 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %14, i64 %15)
  %OF5 = extractvalue { i64, i1 } %18, 1
  %19 = and i64 %16, 255
  %20 = call i64 @llvm.ctpop.i64(i64 %19)
  %21 = and i64 %20, 1
  %PF6 = icmp eq i64 %21, 0
  %CmpZF_JNE = icmp eq i1 %ZF2, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  store i32 1, ptr %RBP_N.4, align 1
  br label %bb.8

bb.4:                                             ; preds = %bb.2
  store i32 18, ptr %RBP_N.12, align 1
  store i32 2, ptr %stktop_4, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.6
  %memload = load i32, ptr %stktop_4, align 1
  %22 = load i32, ptr %RBP_N.8, align 1
  %23 = sub i32 %memload, %22
  %24 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %22)
  %CF7 = extractvalue { i32, i1 } %24, 1
  %ZF8 = icmp eq i32 %23, 0
  %highbit9 = and i32 -2147483648, %23
  %SF10 = icmp ne i32 %highbit9, 0
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %22)
  %OF11 = extractvalue { i32, i1 } %25, 1
  %26 = and i32 %23, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF12 = icmp eq i32 %28, 0
  %CmpSFOF_JGE24 = icmp eq i1 %SF10, %OF11
  br i1 %CmpSFOF_JGE24, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload13 = load i32, ptr %RBP_N.12, align 1
  %EAX = mul i32 10, %memload13
  store i32 %EAX, ptr %RBP_N.12, align 1
  %memload14 = load i32, ptr %stktop_4, align 1
  %EAX21 = add i32 %memload14, 1
  %29 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload14, i32 1)
  %CF15 = extractvalue { i32, i1 } %29, 1
  %30 = and i32 %EAX21, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = and i32 %31, 1
  %PF16 = icmp eq i32 %32, 0
  %ZF17 = icmp eq i32 %EAX21, 0
  %highbit18 = and i32 -2147483648, %EAX21
  %SF19 = icmp ne i32 %highbit18, 0
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload14, i32 1)
  %OF20 = extractvalue { i32, i1 } %33, 1
  store i32 %EAX21, ptr %stktop_4, align 1
  br label %bb.5

bb.7:                                             ; preds = %bb.5
  %memload22 = load i32, ptr %RBP_N.12, align 1
  store i32 %memload22, ptr %RBP_N.4, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.3, %bb.1
  %memload23 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload23
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
