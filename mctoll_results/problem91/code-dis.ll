; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_4 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.28 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.4 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  %6 = load i32, ptr %RBP_N.20, align 1
  %7 = zext i32 %6 to i64
  %8 = zext i32 2 to i64
  %9 = sub i64 %7, %8
  %10 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %7, i64 %8)
  %CF = extractvalue { i64, i1 } %10, 1
  %ZF = icmp eq i64 %9, 0
  %highbit = and i64 -9223372036854775808, %9
  %SF = icmp ne i64 %highbit, 0
  %11 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %7, i64 %8)
  %OF = extractvalue { i64, i1 } %11, 1
  %12 = and i64 %9, 255
  %13 = call i64 @llvm.ctpop.i64(i64 %12)
  %14 = and i64 %13, 1
  %PF = icmp eq i64 %14, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i32 -1, ptr %RBP_N.4, align 1
  br label %bb.15

bb.2:                                             ; preds = %entry
  store i32 2147483647, ptr %RBP_N.24, align 1
  store i32 2147483647, ptr %RBP_N.28, align 1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.11
  %memload = load i32, ptr %stktop_4, align 1
  %15 = load i32, ptr %RBP_N.20, align 1
  %16 = sub i32 %memload, %15
  %17 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %15)
  %CF1 = extractvalue { i32, i1 } %17, 1
  %ZF2 = icmp eq i32 %16, 0
  %highbit3 = and i32 -2147483648, %16
  %SF4 = icmp ne i32 %highbit3, 0
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %15)
  %OF5 = extractvalue { i32, i1 } %18, 1
  %19 = and i32 %16, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = and i32 %20, 1
  %PF6 = icmp eq i32 %21, 0
  %CmpSFOF_JGE68 = icmp eq i1 %SF4, %OF5
  br i1 %CmpSFOF_JGE68, label %bb.12, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload7 = load i64, ptr %RBP_N.16, align 1
  %memload8 = load i64, ptr %stktop_4, align 1
  %22 = trunc i64 %memload8 to i32
  %RCX = sext i32 %22 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload7, %memref-idxreg
  %23 = inttoptr i64 %memref-basereg to ptr
  %memload9 = load i32, ptr %23, align 1
  %24 = load i32, ptr %RBP_N.24, align 1
  %25 = sub i32 %memload9, %24
  %26 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload9, i32 %24)
  %CF10 = extractvalue { i32, i1 } %26, 1
  %ZF11 = icmp eq i32 %25, 0
  %highbit12 = and i32 -2147483648, %25
  %SF13 = icmp ne i32 %highbit12, 0
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload9, i32 %24)
  %OF14 = extractvalue { i32, i1 } %27, 1
  %28 = and i32 %25, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = and i32 %29, 1
  %PF15 = icmp eq i32 %30, 0
  %CmpSFOF_JGE69 = icmp eq i1 %SF13, %OF14
  br i1 %CmpSFOF_JGE69, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload16 = load i32, ptr %RBP_N.24, align 1
  store i32 %memload16, ptr %RBP_N.28, align 1
  %memload17 = load i64, ptr %RBP_N.16, align 1
  %memload18 = load i64, ptr %stktop_4, align 1
  %31 = trunc i64 %memload18 to i32
  %RCX19 = sext i32 %31 to i64
  %memref-idxreg20 = mul i64 4, %RCX19
  %memref-basereg21 = add i64 %memload17, %memref-idxreg20
  %32 = inttoptr i64 %memref-basereg21 to ptr
  %memload22 = load i32, ptr %32, align 1
  store i32 %memload22, ptr %RBP_N.24, align 1
  br label %bb.10

bb.6:                                             ; preds = %bb.4
  %memload23 = load i64, ptr %RBP_N.16, align 1
  %memload24 = load i64, ptr %stktop_4, align 1
  %33 = trunc i64 %memload24 to i32
  %RCX25 = sext i32 %33 to i64
  %memref-idxreg26 = mul i64 4, %RCX25
  %memref-basereg27 = add i64 %memload23, %memref-idxreg26
  %34 = inttoptr i64 %memref-basereg27 to ptr
  %memload28 = load i32, ptr %34, align 1
  %35 = load i32, ptr %RBP_N.28, align 1
  %36 = sub i32 %memload28, %35
  %37 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload28, i32 %35)
  %CF29 = extractvalue { i32, i1 } %37, 1
  %ZF30 = icmp eq i32 %36, 0
  %highbit31 = and i32 -2147483648, %36
  %SF32 = icmp ne i32 %highbit31, 0
  %38 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload28, i32 %35)
  %OF33 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %36, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF34 = icmp eq i32 %41, 0
  %CmpSFOF_JGE70 = icmp eq i1 %SF32, %OF33
  br i1 %CmpSFOF_JGE70, label %bb.9, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload35 = load i64, ptr %RBP_N.16, align 1
  %memload36 = load i64, ptr %stktop_4, align 1
  %42 = trunc i64 %memload36 to i32
  %RCX37 = sext i32 %42 to i64
  %memref-idxreg38 = mul i64 4, %RCX37
  %memref-basereg39 = add i64 %memload35, %memref-idxreg38
  %43 = inttoptr i64 %memref-basereg39 to ptr
  %memload40 = load i32, ptr %43, align 1
  %44 = load i32, ptr %RBP_N.24, align 1
  %45 = sub i32 %memload40, %44
  %46 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload40, i32 %44)
  %CF41 = extractvalue { i32, i1 } %46, 1
  %ZF42 = icmp eq i32 %45, 0
  %highbit43 = and i32 -2147483648, %45
  %SF44 = icmp ne i32 %highbit43, 0
  %47 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload40, i32 %44)
  %OF45 = extractvalue { i32, i1 } %47, 1
  %48 = and i32 %45, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48)
  %50 = and i32 %49, 1
  %PF46 = icmp eq i32 %50, 0
  %CmpZF_JE = icmp eq i1 %ZF42, true
  br i1 %CmpZF_JE, label %bb.9, label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload47 = load i64, ptr %RBP_N.16, align 1
  %memload48 = load i64, ptr %stktop_4, align 1
  %51 = trunc i64 %memload48 to i32
  %RCX49 = sext i32 %51 to i64
  %memref-idxreg50 = mul i64 4, %RCX49
  %memref-basereg51 = add i64 %memload47, %memref-idxreg50
  %52 = inttoptr i64 %memref-basereg51 to ptr
  %memload52 = load i32, ptr %52, align 1
  store i32 %memload52, ptr %RBP_N.28, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.7, %bb.6
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.5
  br label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload53 = load i32, ptr %stktop_4, align 1
  %EAX = add i32 %memload53, 1
  %53 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload53, i32 1)
  %CF54 = extractvalue { i32, i1 } %53, 1
  %54 = and i32 %EAX, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54)
  %56 = and i32 %55, 1
  %PF55 = icmp eq i32 %56, 0
  %ZF56 = icmp eq i32 %EAX, 0
  %highbit57 = and i32 -2147483648, %EAX
  %SF58 = icmp ne i32 %highbit57, 0
  %57 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload53, i32 1)
  %OF59 = extractvalue { i32, i1 } %57, 1
  store i32 %EAX, ptr %stktop_4, align 1
  br label %bb.3

bb.12:                                            ; preds = %bb.3
  %58 = load i32, ptr %RBP_N.28, align 1
  %59 = zext i32 %58 to i64
  %60 = zext i32 2147483647 to i64
  %61 = sub i64 %59, %60
  %62 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %59, i64 %60)
  %CF60 = extractvalue { i64, i1 } %62, 1
  %ZF61 = icmp eq i64 %61, 0
  %highbit62 = and i64 -9223372036854775808, %61
  %SF63 = icmp ne i64 %highbit62, 0
  %63 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %59, i64 %60)
  %OF64 = extractvalue { i64, i1 } %63, 1
  %64 = and i64 %61, 255
  %65 = call i64 @llvm.ctpop.i64(i64 %64)
  %66 = and i64 %65, 1
  %PF65 = icmp eq i64 %66, 0
  %CmpZF_JNE = icmp eq i1 %ZF61, false
  br i1 %CmpZF_JNE, label %bb.14, label %bb.13

bb.13:                                            ; preds = %bb.12
  store i32 -1, ptr %RBP_N.4, align 1
  br label %bb.15

bb.14:                                            ; preds = %bb.12
  %memload66 = load i32, ptr %RBP_N.28, align 1
  store i32 %memload66, ptr %RBP_N.4, align 1
  br label %bb.15

bb.15:                                            ; preds = %bb.14, %bb.13, %bb.1
  %memload67 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload67
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
