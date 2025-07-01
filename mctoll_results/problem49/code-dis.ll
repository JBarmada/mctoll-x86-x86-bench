; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

define dso_local i32 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 39
  %RBP_N.1 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %4 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  %memload = load i64, ptr %RBP_N.16, align 1
  %5 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %5)
  %6 = trunc i64 %RAX to i32
  store i32 %6, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.24, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %memload1 = load i32, ptr %RBP_N.24, align 1
  %7 = ptrtoint ptr %stktop_8 to i64
  %8 = add i64 %7, 4
  %9 = inttoptr i64 %8 to ptr
  store i32 %memload1, ptr %9, align 1
  %memload2 = load i32, ptr %RBP_N.20, align 1
  %10 = sext i32 %memload2 to i64
  %11 = lshr i64 %10, 32
  %EDX = trunc i64 %11 to i32
  %12 = sext i32 %memload2 to i64
  %13 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %13, 32
  %dividend = or i64 %div_hb_ls, %12
  %14 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %14
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %14
  %EDX3 = trunc i64 %div_r to i32
  %15 = ptrtoint ptr %stktop_8 to i64
  %16 = add i64 %15, 4
  %17 = inttoptr i64 %16 to ptr
  %memload4 = load i32, ptr %17, align 1
  %18 = sub i32 %memload4, %EAX
  %19 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload4, i32 %EAX)
  %CF = extractvalue { i32, i1 } %19, 1
  %ZF = icmp eq i32 %18, 0
  %highbit = and i32 -2147483648, %18
  %SF = icmp ne i32 %highbit, 0
  %20 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload4, i32 %EAX)
  %OF = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %18, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF = icmp eq i32 %23, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload5 = load i64, ptr %RBP_N.16, align 1
  %memload6 = load i64, ptr %RBP_N.24, align 1
  %24 = trunc i64 %memload6 to i32
  %RCX = sext i32 %24 to i64
  %memref-basereg = add i64 %memload5, %RCX
  %25 = inttoptr i64 %memref-basereg to ptr
  %memload7 = load i32, ptr %25, align 1
  %26 = trunc i32 %memload7 to i8
  %EAX8 = sext i8 %26 to i32
  %memload9 = load i64, ptr %RBP_N.16, align 1
  %memload10 = load i32, ptr %RBP_N.20, align 1
  %EDX17 = sub i32 %memload10, 1
  %27 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload10, i32 1)
  %CF11 = extractvalue { i32, i1 } %27, 1
  %28 = and i32 %EDX17, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = and i32 %29, 1
  %PF12 = icmp eq i32 %30, 0
  %ZF13 = icmp eq i32 %EDX17, 0
  %highbit14 = and i32 -2147483648, %EDX17
  %SF15 = icmp ne i32 %highbit14, 0
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload10, i32 1)
  %OF16 = extractvalue { i32, i1 } %31, 1
  %32 = load i32, ptr %RBP_N.24, align 1
  %EDX18 = sub i32 %EDX17, %32
  %33 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX17, i32 %32)
  %CF19 = extractvalue { i32, i1 } %33, 1
  %ZF20 = icmp eq i32 %EDX18, 0
  %highbit21 = and i32 -2147483648, %EDX18
  %SF22 = icmp ne i32 %highbit21, 0
  %34 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX17, i32 %32)
  %OF23 = extractvalue { i32, i1 } %34, 1
  %35 = and i32 %EDX18, 255
  %36 = call i32 @llvm.ctpop.i32(i32 %35)
  %37 = and i32 %36, 1
  %PF24 = icmp eq i32 %37, 0
  %RDX = sext i32 %EDX18 to i64
  %memref-basereg25 = add i64 %memload9, %RDX
  %38 = inttoptr i64 %memref-basereg25 to ptr
  %memload26 = load i32, ptr %38, align 1
  %39 = trunc i32 %memload26 to i8
  %ECX = sext i8 %39 to i32
  %40 = sub i32 %EAX8, %ECX
  %41 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX8, i32 %ECX)
  %CF27 = extractvalue { i32, i1 } %41, 1
  %ZF28 = icmp eq i32 %40, 0
  %highbit29 = and i32 -2147483648, %40
  %SF30 = icmp ne i32 %highbit29, 0
  %42 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX8, i32 %ECX)
  %OF31 = extractvalue { i32, i1 } %42, 1
  %43 = and i32 %40, 255
  %44 = call i32 @llvm.ctpop.i32(i32 %43)
  %45 = and i32 %44, 1
  %PF32 = icmp eq i32 %45, 0
  %CmpZF_JE = icmp eq i1 %ZF28, true
  br i1 %CmpZF_JE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.7

bb.4:                                             ; preds = %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload33 = load i32, ptr %RBP_N.24, align 1
  %EAX40 = add i32 %memload33, 1
  %46 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload33, i32 1)
  %CF34 = extractvalue { i32, i1 } %46, 1
  %47 = and i32 %EAX40, 255
  %48 = call i32 @llvm.ctpop.i32(i32 %47)
  %49 = and i32 %48, 1
  %PF35 = icmp eq i32 %49, 0
  %ZF36 = icmp eq i32 %EAX40, 0
  %highbit37 = and i32 -2147483648, %EAX40
  %SF38 = icmp ne i32 %highbit37, 0
  %50 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload33, i32 1)
  %OF39 = extractvalue { i32, i1 } %50, 1
  store i32 %EAX40, ptr %RBP_N.24, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  store i8 1, ptr %RBP_N.1, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.3
  %memload41 = load i8, ptr %RBP_N.1, align 1
  %AL = and i8 %memload41, 1
  %51 = call i8 @llvm.ctpop.i8(i8 %AL)
  %52 = and i8 %51, 1
  %PF42 = icmp eq i8 %52, 0
  %ZF43 = icmp eq i8 %AL, 0
  %highbit44 = and i8 -128, %AL
  %SF45 = icmp ne i8 %highbit44, 0
  %EAX46 = zext i8 %AL to i32
  ret i32 %EAX46
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
