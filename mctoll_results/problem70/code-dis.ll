; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @calloc(i64, i64)

declare dso_local void @free(ptr)

define dso_local i32 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 28
  %RBP_N.12 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  %memload = load i32, ptr %RBP_N.12, align 1
  %EAX = add i32 %memload, 1
  %4 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload, i32 1)
  %CF = extractvalue { i32, i1 } %4, 1
  %5 = and i32 %EAX, 255
  %6 = call i32 @llvm.ctpop.i32(i32 %5)
  %7 = and i32 %6, 1
  %PF = icmp eq i32 %7, 0
  %ZF = icmp eq i32 %EAX, 0
  %highbit = and i32 -2147483648, %EAX
  %SF = icmp ne i32 %highbit, 0
  %8 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload, i32 1)
  %OF = extractvalue { i32, i1 } %8, 1
  %RDI = sext i32 %EAX to i64
  %9 = zext i32 4 to i64
  %10 = call ptr @calloc(i64 %RDI, i64 %9)
  %RAX = ptrtoint ptr %10 to i64
  store i64 %RAX, ptr %RBP_N.24, align 1
  %11 = ptrtoint ptr %stktop_8 to i64
  %12 = add i64 %11, 4
  %13 = inttoptr i64 %12 to ptr
  store i32 -1, ptr %13, align 1
  store i32 0, ptr %stktop_8, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.6
  %memload1 = load i32, ptr %stktop_8, align 1
  %14 = load i32, ptr %RBP_N.12, align 1
  %15 = sub i32 %memload1, %14
  %16 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload1, i32 %14)
  %CF2 = extractvalue { i32, i1 } %16, 1
  %ZF3 = icmp eq i32 %15, 0
  %highbit4 = and i32 -2147483648, %15
  %SF5 = icmp ne i32 %highbit4, 0
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload1, i32 %14)
  %OF6 = extractvalue { i32, i1 } %17, 1
  %18 = and i32 %15, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = and i32 %19, 1
  %PF7 = icmp eq i32 %20, 0
  %CmpSFOF_JGE = icmp eq i1 %SF5, %OF6
  br i1 %CmpSFOF_JGE, label %bb.7, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload8 = load i64, ptr %RBP_N.24, align 1
  %memload9 = load i64, ptr %RBP_N.8, align 1
  %memload10 = load i64, ptr %stktop_8, align 1
  %21 = trunc i64 %memload10 to i32
  %RDX = sext i32 %21 to i64
  %memref-idxreg = mul i64 4, %RDX
  %memref-basereg = add i64 %memload9, %memref-idxreg
  %22 = inttoptr i64 %memref-basereg to ptr
  %memload11 = load i64, ptr %22, align 1
  %23 = trunc i64 %memload11 to i32
  %RCX = sext i32 %23 to i64
  %memref-idxreg12 = mul i64 4, %RCX
  %memref-basereg13 = add i64 %memload8, %memref-idxreg12
  %24 = inttoptr i64 %memref-basereg13 to ptr
  %memload14 = load i32, ptr %24, align 1
  %EDX = add i32 %memload14, 1
  %25 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload14, i32 1)
  %CF15 = extractvalue { i32, i1 } %25, 1
  %26 = and i32 %EDX, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF16 = icmp eq i32 %28, 0
  %ZF17 = icmp eq i32 %EDX, 0
  %highbit18 = and i32 -2147483648, %EDX
  %SF19 = icmp ne i32 %highbit18, 0
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload14, i32 1)
  %OF20 = extractvalue { i32, i1 } %29, 1
  %memref-idxreg21 = mul i64 4, %RCX
  %memref-basereg22 = add i64 %memload8, %memref-idxreg21
  %30 = inttoptr i64 %memref-basereg22 to ptr
  store i32 %EDX, ptr %30, align 1
  %memload23 = load i64, ptr %RBP_N.24, align 1
  %memload24 = load i64, ptr %RBP_N.8, align 1
  %memload25 = load i64, ptr %stktop_8, align 1
  %31 = trunc i64 %memload25 to i32
  %RDX26 = sext i32 %31 to i64
  %memref-idxreg27 = mul i64 4, %RDX26
  %memref-basereg28 = add i64 %memload24, %memref-idxreg27
  %32 = inttoptr i64 %memref-basereg28 to ptr
  %memload29 = load i64, ptr %32, align 1
  %33 = trunc i64 %memload29 to i32
  %RCX30 = sext i32 %33 to i64
  %memref-idxreg31 = mul i64 4, %RCX30
  %memref-basereg32 = add i64 %memload23, %memref-idxreg31
  %34 = inttoptr i64 %memref-basereg32 to ptr
  %memload33 = load i32, ptr %34, align 1
  %memload34 = load i64, ptr %RBP_N.8, align 1
  %memload35 = load i64, ptr %stktop_8, align 1
  %35 = trunc i64 %memload35 to i32
  %RDX36 = sext i32 %35 to i64
  %memref-idxreg37 = mul i64 4, %RDX36
  %memref-basereg38 = add i64 %memload34, %memref-idxreg37
  %36 = inttoptr i64 %memref-basereg38 to ptr
  %37 = load i32, ptr %36, align 1
  %38 = sub i32 %memload33, %37
  %39 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload33, i32 %37)
  %CF39 = extractvalue { i32, i1 } %39, 1
  %ZF40 = icmp eq i32 %38, 0
  %highbit41 = and i32 -2147483648, %38
  %SF42 = icmp ne i32 %highbit41, 0
  %40 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload33, i32 %37)
  %OF43 = extractvalue { i32, i1 } %40, 1
  %41 = and i32 %38, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41)
  %43 = and i32 %42, 1
  %PF44 = icmp eq i32 %43, 0
  %SFAndOF_JL = icmp ne i1 %SF42, %OF43
  br i1 %SFAndOF_JL, label %bb.5, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload45 = load i64, ptr %RBP_N.8, align 1
  %memload46 = load i64, ptr %stktop_8, align 1
  %44 = trunc i64 %memload46 to i32
  %RCX47 = sext i32 %44 to i64
  %memref-idxreg48 = mul i64 4, %RCX47
  %memref-basereg49 = add i64 %memload45, %memref-idxreg48
  %45 = inttoptr i64 %memref-basereg49 to ptr
  %memload50 = load i32, ptr %45, align 1
  %46 = ptrtoint ptr %stktop_8 to i64
  %47 = add i64 %46, 4
  %48 = inttoptr i64 %47 to ptr
  %49 = load i32, ptr %48, align 1
  %50 = sub i32 %memload50, %49
  %51 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload50, i32 %49)
  %CF51 = extractvalue { i32, i1 } %51, 1
  %ZF52 = icmp eq i32 %50, 0
  %highbit53 = and i32 -2147483648, %50
  %SF54 = icmp ne i32 %highbit53, 0
  %52 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload50, i32 %49)
  %OF55 = extractvalue { i32, i1 } %52, 1
  %53 = and i32 %50, 255
  %54 = call i32 @llvm.ctpop.i32(i32 %53)
  %55 = and i32 %54, 1
  %PF56 = icmp eq i32 %55, 0
  %CmpZF_JLE = icmp eq i1 %ZF52, true
  %CmpOF_JLE = icmp ne i1 %SF54, %OF55
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload57 = load i64, ptr %RBP_N.8, align 1
  %memload58 = load i64, ptr %stktop_8, align 1
  %56 = trunc i64 %memload58 to i32
  %RCX59 = sext i32 %56 to i64
  %memref-idxreg60 = mul i64 4, %RCX59
  %memref-basereg61 = add i64 %memload57, %memref-idxreg60
  %57 = inttoptr i64 %memref-basereg61 to ptr
  %memload62 = load i32, ptr %57, align 1
  %58 = ptrtoint ptr %stktop_8 to i64
  %59 = add i64 %58, 4
  %60 = inttoptr i64 %59 to ptr
  store i32 %memload62, ptr %60, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.3, %bb.2
  br label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload63 = load i32, ptr %stktop_8, align 1
  %EAX70 = add i32 %memload63, 1
  %61 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload63, i32 1)
  %CF64 = extractvalue { i32, i1 } %61, 1
  %62 = and i32 %EAX70, 255
  %63 = call i32 @llvm.ctpop.i32(i32 %62)
  %64 = and i32 %63, 1
  %PF65 = icmp eq i32 %64, 0
  %ZF66 = icmp eq i32 %EAX70, 0
  %highbit67 = and i32 -2147483648, %EAX70
  %SF68 = icmp ne i32 %highbit67, 0
  %65 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload63, i32 1)
  %OF69 = extractvalue { i32, i1 } %65, 1
  store i32 %EAX70, ptr %stktop_8, align 1
  br label %bb.1

bb.7:                                             ; preds = %bb.1
  %memload71 = load i64, ptr %RBP_N.24, align 1
  %66 = inttoptr i64 %memload71 to ptr
  call void @free(ptr %66)
  %67 = ptrtoint ptr %stktop_8 to i64
  %68 = add i64 %67, 4
  %69 = inttoptr i64 %68 to ptr
  %memload72 = load i32, ptr %69, align 1
  ret i32 %memload72
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
