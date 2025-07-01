; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i32 @abs(i32)

define dso_local i32 @func0(i32 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.12 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.4 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.8, align 1
  store i32 0, ptr %RBP_N.12, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %memload = load i32, ptr %RBP_N.12, align 1
  %memload1 = load i32, ptr %RBP_N.12, align 1
  %EAX = mul i32 %memload, %memload1
  %memload2 = load i32, ptr %RBP_N.12, align 1
  %EAX3 = mul i32 %EAX, %memload2
  store i32 %EAX3, ptr %RBP_N.16, align 1
  %memload4 = load i32, ptr %RBP_N.8, align 1
  %EAX5 = call i32 @abs(i32 %memload4)
  %memload6 = load i32, ptr %RBP_N.16, align 1
  %6 = sub i32 %memload6, %EAX5
  %7 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload6, i32 %EAX5)
  %CF = extractvalue { i32, i1 } %7, 1
  %ZF = icmp eq i32 %6, 0
  %highbit = and i32 -2147483648, %6
  %SF = icmp ne i32 %highbit, 0
  %8 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload6, i32 %EAX5)
  %OF = extractvalue { i32, i1 } %8, 1
  %9 = and i32 %6, 255
  %10 = call i32 @llvm.ctpop.i32(i32 %9)
  %11 = and i32 %10, 1
  %PF = icmp eq i32 %11, 0
  %ZFCmp_JG = icmp eq i1 %ZF, false
  %SFOFCmp_JG = icmp eq i1 %SF, %OF
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload7 = load i32, ptr %RBP_N.12, align 1
  %memload8 = load i32, ptr %RBP_N.12, align 1
  %EAX9 = mul i32 %memload7, %memload8
  %memload10 = load i32, ptr %RBP_N.12, align 1
  %EAX11 = mul i32 %EAX9, %memload10
  store i32 %EAX11, ptr %RBP_N.20, align 1
  %memload12 = load i32, ptr %RBP_N.8, align 1
  %EAX13 = call i32 @abs(i32 %memload12)
  %memload14 = load i32, ptr %RBP_N.20, align 1
  %12 = sub i32 %memload14, %EAX13
  %13 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload14, i32 %EAX13)
  %CF15 = extractvalue { i32, i1 } %13, 1
  %ZF16 = icmp eq i32 %12, 0
  %highbit17 = and i32 -2147483648, %12
  %SF18 = icmp ne i32 %highbit17, 0
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload14, i32 %EAX13)
  %OF19 = extractvalue { i32, i1 } %14, 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = and i32 %16, 1
  %PF20 = icmp eq i32 %17, 0
  %CmpZF_JNE = icmp eq i1 %ZF16, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  store i32 1, ptr %RBP_N.4, align 1
  br label %bb.7

bb.4:                                             ; preds = %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload21 = load i32, ptr %RBP_N.12, align 1
  %EAX28 = add i32 %memload21, 1
  %18 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload21, i32 1)
  %CF22 = extractvalue { i32, i1 } %18, 1
  %19 = and i32 %EAX28, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = and i32 %20, 1
  %PF23 = icmp eq i32 %21, 0
  %ZF24 = icmp eq i32 %EAX28, 0
  %highbit25 = and i32 -2147483648, %EAX28
  %SF26 = icmp ne i32 %highbit25, 0
  %22 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload21, i32 1)
  %OF27 = extractvalue { i32, i1 } %22, 1
  store i32 %EAX28, ptr %RBP_N.12, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.3
  %memload29 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload29
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
