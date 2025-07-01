; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i64 @func0(i32 %arg1) {
entry:
  %stktop_4 = alloca i8, i32 36, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.16 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.4 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  %4 = sext i32 1 to i64
  store i64 %4, ptr %RBP_N.16, align 1
  %5 = sext i32 1 to i64
  store i64 %5, ptr %RBP_N.24, align 1
  store i32 1, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload = load i32, ptr %stktop_4, align 1
  %6 = load i32, ptr %RBP_N.4, align 1
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
  %ZFCmp_JG = icmp eq i1 %ZF, false
  %SFOFCmp_JG = icmp eq i1 %SF, %OF
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.16, align 1
  %memload2 = load i64, ptr %stktop_4, align 1
  %13 = trunc i64 %memload2 to i32
  %RCX = sext i32 %13 to i64
  %RAX = mul nsw i64 %memload1, %RCX
  store i64 %RAX, ptr %RBP_N.16, align 1
  %memload3 = load i64, ptr %RBP_N.24, align 1
  %memload4 = load i64, ptr %RBP_N.16, align 1
  %RAX5 = mul i64 %memload3, %memload4
  store i64 %RAX5, ptr %RBP_N.24, align 1
  %memload6 = load i32, ptr %stktop_4, align 1
  %EAX = add i32 %memload6, 1
  %14 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload6, i32 1)
  %CF7 = extractvalue { i32, i1 } %14, 1
  %15 = and i32 %EAX, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = and i32 %16, 1
  %PF8 = icmp eq i32 %17, 0
  %ZF9 = icmp eq i32 %EAX, 0
  %highbit10 = and i32 -2147483648, %EAX
  %SF11 = icmp ne i32 %highbit10, 0
  %18 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload6, i32 1)
  %OF12 = extractvalue { i32, i1 } %18, 1
  store i32 %EAX, ptr %stktop_4, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %memload13 = load i64, ptr %RBP_N.24, align 1
  ret i64 %memload13
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

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
