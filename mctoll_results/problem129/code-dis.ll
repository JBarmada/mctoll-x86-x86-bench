; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i32 @abs(i32)

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 36
  %RBP_N.4 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %4 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  %5 = load i32, ptr %RBP_N.20, align 1
  %6 = zext i32 %5 to i64
  %7 = zext i32 0 to i64
  %8 = sub i64 %6, %7
  %9 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %6, i64 %7)
  %CF = extractvalue { i64, i1 } %9, 1
  %ZF = icmp eq i64 %8, 0
  %highbit = and i64 -9223372036854775808, %8
  %SF = icmp ne i64 %highbit, 0
  %10 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %6, i64 %7)
  %OF = extractvalue { i64, i1 } %10, 1
  %11 = and i64 %8, 255
  %12 = call i64 @llvm.ctpop.i64(i64 %11)
  %13 = and i64 %12, 1
  %PF = icmp eq i64 %13, 0
  %CmpZF_JNE = icmp eq i1 %ZF, false
  br i1 %CmpZF_JNE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i32 -32768, ptr %RBP_N.4, align 1
  br label %bb.11

bb.2:                                             ; preds = %entry
  store i32 0, ptr %RBP_N.24, align 1
  %14 = ptrtoint ptr %stktop_8 to i64
  %15 = add i64 %14, 4
  %16 = inttoptr i64 %15 to ptr
  store i32 1, ptr %16, align 1
  store i32 0, ptr %stktop_8, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.9
  %memload = load i32, ptr %stktop_8, align 1
  %17 = load i32, ptr %RBP_N.20, align 1
  %18 = sub i32 %memload, %17
  %19 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %17)
  %CF1 = extractvalue { i32, i1 } %19, 1
  %ZF2 = icmp eq i32 %18, 0
  %highbit3 = and i32 -2147483648, %18
  %SF4 = icmp ne i32 %highbit3, 0
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %17)
  %OF5 = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %18, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF6 = icmp eq i32 %23, 0
  %CmpSFOF_JGE = icmp eq i1 %SF4, %OF5
  br i1 %CmpSFOF_JGE, label %bb.10, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload7 = load i64, ptr %RBP_N.16, align 1
  %memload8 = load i64, ptr %stktop_8, align 1
  %24 = trunc i64 %memload8 to i32
  %RCX = sext i32 %24 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload7, %memref-idxreg
  %25 = inttoptr i64 %memref-basereg to ptr
  %memload9 = load i32, ptr %25, align 1
  %EAX = call i32 @abs(i32 %memload9)
  %memload10 = load i32, ptr %RBP_N.24, align 1
  %EAX12 = add i32 %EAX, %memload10
  %26 = and i32 %EAX12, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF11 = icmp eq i32 %28, 0
  store i32 %EAX12, ptr %RBP_N.24, align 1
  %memload13 = load i64, ptr %RBP_N.16, align 1
  %memload14 = load i64, ptr %stktop_8, align 1
  %29 = trunc i64 %memload14 to i32
  %RCX15 = sext i32 %29 to i64
  %memref-idxreg16 = mul i64 4, %RCX15
  %memref-basereg17 = add i64 %memload13, %memref-idxreg16
  %30 = inttoptr i64 %memref-basereg17 to ptr
  %31 = load i32, ptr %30, align 1
  %32 = zext i32 %31 to i64
  %33 = zext i32 0 to i64
  %34 = sub i64 %32, %33
  %35 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %32, i64 %33)
  %CF18 = extractvalue { i64, i1 } %35, 1
  %ZF19 = icmp eq i64 %34, 0
  %highbit20 = and i64 -9223372036854775808, %34
  %SF21 = icmp ne i64 %highbit20, 0
  %36 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %32, i64 %33)
  %OF22 = extractvalue { i64, i1 } %36, 1
  %37 = and i64 %34, 255
  %38 = call i64 @llvm.ctpop.i64(i64 %37)
  %39 = and i64 %38, 1
  %PF23 = icmp eq i64 %39, 0
  %CmpZF_JNE54 = icmp eq i1 %ZF19, false
  br i1 %CmpZF_JNE54, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %40 = ptrtoint ptr %stktop_8 to i64
  %41 = add i64 %40, 4
  %42 = inttoptr i64 %41 to ptr
  store i32 0, ptr %42, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  %memload24 = load i64, ptr %RBP_N.16, align 1
  %memload25 = load i64, ptr %stktop_8, align 1
  %43 = trunc i64 %memload25 to i32
  %RCX26 = sext i32 %43 to i64
  %memref-idxreg27 = mul i64 4, %RCX26
  %memref-basereg28 = add i64 %memload24, %memref-idxreg27
  %44 = inttoptr i64 %memref-basereg28 to ptr
  %45 = load i32, ptr %44, align 1
  %46 = zext i32 %45 to i64
  %47 = zext i32 0 to i64
  %48 = sub i64 %46, %47
  %49 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %46, i64 %47)
  %CF29 = extractvalue { i64, i1 } %49, 1
  %ZF30 = icmp eq i64 %48, 0
  %highbit31 = and i64 -9223372036854775808, %48
  %SF32 = icmp ne i64 %highbit31, 0
  %50 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %46, i64 %47)
  %OF33 = extractvalue { i64, i1 } %50, 1
  %51 = and i64 %48, 255
  %52 = call i64 @llvm.ctpop.i64(i64 %51)
  %53 = and i64 %52, 1
  %PF34 = icmp eq i64 %53, 0
  %CmpSFOF_JGE55 = icmp eq i1 %SF32, %OF33
  br i1 %CmpSFOF_JGE55, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %54 = ptrtoint ptr %stktop_8 to i64
  %55 = add i64 %54, 4
  %56 = inttoptr i64 %55 to ptr
  %57 = load i32, ptr %56, align 1
  %EAX35 = sub i32 0, %57
  %58 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 0, i32 %57)
  %CF36 = extractvalue { i32, i1 } %58, 1
  %ZF37 = icmp eq i32 %EAX35, 0
  %highbit38 = and i32 -2147483648, %EAX35
  %SF39 = icmp ne i32 %highbit38, 0
  %59 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 0, i32 %57)
  %OF40 = extractvalue { i32, i1 } %59, 1
  %60 = and i32 %EAX35, 255
  %61 = call i32 @llvm.ctpop.i32(i32 %60)
  %62 = and i32 %61, 1
  %PF41 = icmp eq i32 %62, 0
  %63 = ptrtoint ptr %stktop_8 to i64
  %64 = add i64 %63, 4
  %65 = inttoptr i64 %64 to ptr
  store i32 %EAX35, ptr %65, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.6
  br label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload42 = load i32, ptr %stktop_8, align 1
  %EAX49 = add i32 %memload42, 1
  %66 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload42, i32 1)
  %CF43 = extractvalue { i32, i1 } %66, 1
  %67 = and i32 %EAX49, 255
  %68 = call i32 @llvm.ctpop.i32(i32 %67)
  %69 = and i32 %68, 1
  %PF44 = icmp eq i32 %69, 0
  %ZF45 = icmp eq i32 %EAX49, 0
  %highbit46 = and i32 -2147483648, %EAX49
  %SF47 = icmp ne i32 %highbit46, 0
  %70 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload42, i32 1)
  %OF48 = extractvalue { i32, i1 } %70, 1
  store i32 %EAX49, ptr %stktop_8, align 1
  br label %bb.3

bb.10:                                            ; preds = %bb.3
  %memload50 = load i32, ptr %RBP_N.24, align 1
  %71 = ptrtoint ptr %stktop_8 to i64
  %72 = add i64 %71, 4
  %73 = inttoptr i64 %72 to ptr
  %memload51 = load i32, ptr %73, align 1
  %EAX52 = mul i32 %memload50, %memload51
  store i32 %EAX52, ptr %RBP_N.4, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.1
  %memload53 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload53
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
