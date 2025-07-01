; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
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
  store i32 0, ptr %RBP_N.24, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.9
  %memload = load i32, ptr %RBP_N.24, align 1
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
  br i1 %CmpSFOF_JGE, label %bb.10, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i32, ptr %RBP_N.24, align 1
  %EAX = add i32 %memload1, 1
  %12 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload1, i32 1)
  %CF2 = extractvalue { i32, i1 } %12, 1
  %13 = and i32 %EAX, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = and i32 %14, 1
  %PF3 = icmp eq i32 %15, 0
  %ZF4 = icmp eq i32 %EAX, 0
  %highbit5 = and i32 -2147483648, %EAX
  %SF6 = icmp ne i32 %highbit5, 0
  %16 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload1, i32 1)
  %OF7 = extractvalue { i32, i1 } %16, 1
  store i32 %EAX, ptr %stktop_4, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %memload8 = load i32, ptr %stktop_4, align 1
  %17 = load i32, ptr %RBP_N.20, align 1
  %18 = sub i32 %memload8, %17
  %19 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload8, i32 %17)
  %CF9 = extractvalue { i32, i1 } %19, 1
  %ZF10 = icmp eq i32 %18, 0
  %highbit11 = and i32 -2147483648, %18
  %SF12 = icmp ne i32 %highbit11, 0
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload8, i32 %17)
  %OF13 = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %18, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF14 = icmp eq i32 %23, 0
  %CmpSFOF_JGE53 = icmp eq i1 %SF12, %OF13
  br i1 %CmpSFOF_JGE53, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload15 = load i64, ptr %RBP_N.16, align 1
  %memload16 = load i64, ptr %RBP_N.24, align 1
  %24 = trunc i64 %memload16 to i32
  %RCX = sext i32 %24 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload15, %memref-idxreg
  %25 = inttoptr i64 %memref-basereg to ptr
  %memload17 = load i32, ptr %25, align 1
  %memload18 = load i64, ptr %RBP_N.16, align 1
  %memload19 = load i64, ptr %stktop_4, align 1
  %26 = trunc i64 %memload19 to i32
  %RDX = sext i32 %26 to i64
  %memref-idxreg20 = mul i64 4, %RDX
  %memref-basereg21 = add i64 %memload18, %memref-idxreg20
  %27 = inttoptr i64 %memref-basereg21 to ptr
  %memload22 = load i32, ptr %27, align 1
  %EAX24 = add i32 %memload17, %memload22
  %28 = and i32 %EAX24, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = and i32 %29, 1
  %PF23 = icmp eq i32 %30, 0
  %31 = sub i32 %EAX24, 0
  %32 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX24, i32 0)
  %CF25 = extractvalue { i32, i1 } %32, 1
  %ZF26 = icmp eq i32 %31, 0
  %highbit27 = and i32 -2147483648, %31
  %SF28 = icmp ne i32 %highbit27, 0
  %33 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX24, i32 0)
  %OF29 = extractvalue { i32, i1 } %33, 1
  %34 = and i32 %31, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = and i32 %35, 1
  %PF30 = icmp eq i32 %36, 0
  %CmpZF_JNE = icmp eq i1 %ZF26, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  store i8 1, ptr %RBP_N.1, align 1
  br label %bb.11

bb.6:                                             ; preds = %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload31 = load i32, ptr %stktop_4, align 1
  %EAX38 = add i32 %memload31, 1
  %37 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload31, i32 1)
  %CF32 = extractvalue { i32, i1 } %37, 1
  %38 = and i32 %EAX38, 255
  %39 = call i32 @llvm.ctpop.i32(i32 %38)
  %40 = and i32 %39, 1
  %PF33 = icmp eq i32 %40, 0
  %ZF34 = icmp eq i32 %EAX38, 0
  %highbit35 = and i32 -2147483648, %EAX38
  %SF36 = icmp ne i32 %highbit35, 0
  %41 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload31, i32 1)
  %OF37 = extractvalue { i32, i1 } %41, 1
  store i32 %EAX38, ptr %stktop_4, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.3
  br label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload39 = load i32, ptr %RBP_N.24, align 1
  %EAX46 = add i32 %memload39, 1
  %42 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload39, i32 1)
  %CF40 = extractvalue { i32, i1 } %42, 1
  %43 = and i32 %EAX46, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF41 = icmp eq i32 %45, 0
  %ZF42 = icmp eq i32 %EAX46, 0
  %highbit43 = and i32 -2147483648, %EAX46
  %SF44 = icmp ne i32 %highbit43, 0
  %46 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload39, i32 1)
  %OF45 = extractvalue { i32, i1 } %46, 1
  store i32 %EAX46, ptr %RBP_N.24, align 1
  br label %bb.1

bb.10:                                            ; preds = %bb.1
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.5
  %memload47 = load i8, ptr %RBP_N.1, align 1
  %AL = and i8 %memload47, 1
  %47 = call i8 @llvm.ctpop.i8(i8 %AL)
  %48 = and i8 %47, 1
  %PF48 = icmp eq i8 %48, 0
  %ZF49 = icmp eq i8 %AL, 0
  %highbit50 = and i8 -128, %AL
  %SF51 = icmp ne i8 %highbit50, 0
  %EAX52 = zext i8 %AL to i32
  ret i32 %EAX52
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
