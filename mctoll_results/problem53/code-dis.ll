; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2, i32 %arg3) {
entry:
  %stktop_4 = alloca i8, i32 36, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 35
  %RBP_N.1 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %4 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  store i32 %arg3, ptr %RBP_N.24, align 1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %memload = load i32, ptr %stktop_4, align 1
  %5 = load i32, ptr %RBP_N.20, align 1
  %6 = sub i32 %memload, %5
  %7 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %5)
  %CF = extractvalue { i32, i1 } %7, 1
  %ZF = icmp eq i32 %6, 0
  %highbit = and i32 -2147483648, %6
  %SF = icmp ne i32 %highbit, 0
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %5)
  %OF = extractvalue { i32, i1 } %8, 1
  %9 = and i32 %6, 255
  %10 = call i32 @llvm.ctpop.i32(i32 %9)
  %11 = and i32 %10, 1
  %PF = icmp eq i32 %11, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.16, align 1
  %memload2 = load i64, ptr %stktop_4, align 1
  %12 = trunc i64 %memload2 to i32
  %RCX = sext i32 %12 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %13 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load i32, ptr %13, align 1
  %14 = load i32, ptr %RBP_N.24, align 1
  %15 = sub i32 %memload3, %14
  %16 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload3, i32 %14)
  %CF4 = extractvalue { i32, i1 } %16, 1
  %ZF5 = icmp eq i32 %15, 0
  %highbit6 = and i32 -2147483648, %15
  %SF7 = icmp ne i32 %highbit6, 0
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload3, i32 %14)
  %OF8 = extractvalue { i32, i1 } %17, 1
  %18 = and i32 %15, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = and i32 %19, 1
  %PF9 = icmp eq i32 %20, 0
  %SFAndOF_JL = icmp ne i1 %SF7, %OF8
  br i1 %SFAndOF_JL, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.7

bb.4:                                             ; preds = %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload10 = load i32, ptr %stktop_4, align 1
  %EAX = add i32 %memload10, 1
  %21 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload10, i32 1)
  %CF11 = extractvalue { i32, i1 } %21, 1
  %22 = and i32 %EAX, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF12 = icmp eq i32 %24, 0
  %ZF13 = icmp eq i32 %EAX, 0
  %highbit14 = and i32 -2147483648, %EAX
  %SF15 = icmp ne i32 %highbit14, 0
  %25 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload10, i32 1)
  %OF16 = extractvalue { i32, i1 } %25, 1
  store i32 %EAX, ptr %stktop_4, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  store i8 1, ptr %RBP_N.1, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.3
  %memload17 = load i8, ptr %RBP_N.1, align 1
  %AL = and i8 %memload17, 1
  %26 = call i8 @llvm.ctpop.i8(i8 %AL)
  %27 = and i8 %26, 1
  %PF18 = icmp eq i8 %27, 0
  %ZF19 = icmp eq i8 %AL, 0
  %highbit20 = and i8 -128, %AL
  %SF21 = icmp ne i8 %highbit20, 0
  %EAX22 = zext i8 %AL to i32
  ret i32 %EAX22
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
declare i8 @llvm.ctpop.i8(i8) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
