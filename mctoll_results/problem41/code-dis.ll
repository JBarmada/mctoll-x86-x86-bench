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
  %4 = add i64 %tos, 39
  %RBP_N.1 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.24, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.13
  %memload = load i32, ptr %RBP_N.24, align 1
  %6 = load i32, ptr %RBP_N.20, align 1
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
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.14, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i32, ptr %RBP_N.24, align 1
  %EAX = add i32 %memload1, 1
  %13 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload1, i32 1)
  %CF2 = extractvalue { i32, i1 } %13, 1
  %14 = and i32 %EAX, 255
  %15 = call i32 @llvm.ctpop.i32(i32 %14)
  %16 = and i32 %15, 1
  %PF3 = icmp eq i32 %16, 0
  %ZF4 = icmp eq i32 %EAX, 0
  %highbit5 = and i32 -2147483648, %EAX
  %SF6 = icmp ne i32 %highbit5, 0
  %17 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload1, i32 1)
  %OF7 = extractvalue { i32, i1 } %17, 1
  store i32 %EAX, ptr %RBP_N.28, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.11
  %memload8 = load i32, ptr %RBP_N.28, align 1
  %18 = load i32, ptr %RBP_N.20, align 1
  %19 = sub i32 %memload8, %18
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload8, i32 %18)
  %CF9 = extractvalue { i32, i1 } %20, 1
  %ZF10 = icmp eq i32 %19, 0
  %highbit11 = and i32 -2147483648, %19
  %SF12 = icmp ne i32 %highbit11, 0
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload8, i32 %18)
  %OF13 = extractvalue { i32, i1 } %21, 1
  %22 = and i32 %19, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF14 = icmp eq i32 %24, 0
  %CmpSFOF_JGE84 = icmp eq i1 %SF12, %OF13
  br i1 %CmpSFOF_JGE84, label %bb.12, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload15 = load i32, ptr %RBP_N.28, align 1
  %EAX22 = add i32 %memload15, 1
  %25 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload15, i32 1)
  %CF16 = extractvalue { i32, i1 } %25, 1
  %26 = and i32 %EAX22, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF17 = icmp eq i32 %28, 0
  %ZF18 = icmp eq i32 %EAX22, 0
  %highbit19 = and i32 -2147483648, %EAX22
  %SF20 = icmp ne i32 %highbit19, 0
  %29 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload15, i32 1)
  %OF21 = extractvalue { i32, i1 } %29, 1
  store i32 %EAX22, ptr %stktop_4, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.9
  %memload23 = load i32, ptr %stktop_4, align 1
  %30 = load i32, ptr %RBP_N.20, align 1
  %31 = sub i32 %memload23, %30
  %32 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload23, i32 %30)
  %CF24 = extractvalue { i32, i1 } %32, 1
  %ZF25 = icmp eq i32 %31, 0
  %highbit26 = and i32 -2147483648, %31
  %SF27 = icmp ne i32 %highbit26, 0
  %33 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload23, i32 %30)
  %OF28 = extractvalue { i32, i1 } %33, 1
  %34 = and i32 %31, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = and i32 %35, 1
  %PF29 = icmp eq i32 %36, 0
  %CmpSFOF_JGE85 = icmp eq i1 %SF27, %OF28
  br i1 %CmpSFOF_JGE85, label %bb.10, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload30 = load i64, ptr %RBP_N.16, align 1
  %memload31 = load i64, ptr %RBP_N.24, align 1
  %37 = trunc i64 %memload31 to i32
  %RCX = sext i32 %37 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload30, %memref-idxreg
  %38 = inttoptr i64 %memref-basereg to ptr
  %memload32 = load i32, ptr %38, align 1
  %memload33 = load i64, ptr %RBP_N.16, align 1
  %memload34 = load i64, ptr %RBP_N.28, align 1
  %39 = trunc i64 %memload34 to i32
  %RDX = sext i32 %39 to i64
  %memref-idxreg35 = mul i64 4, %RDX
  %memref-basereg36 = add i64 %memload33, %memref-idxreg35
  %40 = inttoptr i64 %memref-basereg36 to ptr
  %memload37 = load i32, ptr %40, align 1
  %EAX39 = add i32 %memload32, %memload37
  %41 = and i32 %EAX39, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41)
  %43 = and i32 %42, 1
  %PF38 = icmp eq i32 %43, 0
  %memload40 = load i64, ptr %RBP_N.16, align 1
  %memload41 = load i64, ptr %stktop_4, align 1
  %44 = trunc i64 %memload41 to i32
  %RDX42 = sext i32 %44 to i64
  %memref-idxreg43 = mul i64 4, %RDX42
  %memref-basereg44 = add i64 %memload40, %memref-idxreg43
  %45 = inttoptr i64 %memref-basereg44 to ptr
  %memload45 = load i32, ptr %45, align 1
  %EAX47 = add i32 %EAX39, %memload45
  %46 = and i32 %EAX47, 255
  %47 = call i32 @llvm.ctpop.i32(i32 %46)
  %48 = and i32 %47, 1
  %PF46 = icmp eq i32 %48, 0
  %49 = sub i32 %EAX47, 0
  %50 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX47, i32 0)
  %CF48 = extractvalue { i32, i1 } %50, 1
  %ZF49 = icmp eq i32 %49, 0
  %highbit50 = and i32 -2147483648, %49
  %SF51 = icmp ne i32 %highbit50, 0
  %51 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX47, i32 0)
  %OF52 = extractvalue { i32, i1 } %51, 1
  %52 = and i32 %49, 255
  %53 = call i32 @llvm.ctpop.i32(i32 %52)
  %54 = and i32 %53, 1
  %PF53 = icmp eq i32 %54, 0
  %CmpZF_JNE = icmp eq i1 %ZF49, false
  br i1 %CmpZF_JNE, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  store i8 1, ptr %RBP_N.1, align 1
  br label %bb.15

bb.8:                                             ; preds = %bb.6
  br label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload54 = load i32, ptr %stktop_4, align 1
  %EAX61 = add i32 %memload54, 1
  %55 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload54, i32 1)
  %CF55 = extractvalue { i32, i1 } %55, 1
  %56 = and i32 %EAX61, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = and i32 %57, 1
  %PF56 = icmp eq i32 %58, 0
  %ZF57 = icmp eq i32 %EAX61, 0
  %highbit58 = and i32 -2147483648, %EAX61
  %SF59 = icmp ne i32 %highbit58, 0
  %59 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload54, i32 1)
  %OF60 = extractvalue { i32, i1 } %59, 1
  store i32 %EAX61, ptr %stktop_4, align 1
  br label %bb.5

bb.10:                                            ; preds = %bb.5
  br label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload62 = load i32, ptr %RBP_N.28, align 1
  %EAX69 = add i32 %memload62, 1
  %60 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload62, i32 1)
  %CF63 = extractvalue { i32, i1 } %60, 1
  %61 = and i32 %EAX69, 255
  %62 = call i32 @llvm.ctpop.i32(i32 %61)
  %63 = and i32 %62, 1
  %PF64 = icmp eq i32 %63, 0
  %ZF65 = icmp eq i32 %EAX69, 0
  %highbit66 = and i32 -2147483648, %EAX69
  %SF67 = icmp ne i32 %highbit66, 0
  %64 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload62, i32 1)
  %OF68 = extractvalue { i32, i1 } %64, 1
  store i32 %EAX69, ptr %RBP_N.28, align 1
  br label %bb.3

bb.12:                                            ; preds = %bb.3
  br label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload70 = load i32, ptr %RBP_N.24, align 1
  %EAX77 = add i32 %memload70, 1
  %65 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload70, i32 1)
  %CF71 = extractvalue { i32, i1 } %65, 1
  %66 = and i32 %EAX77, 255
  %67 = call i32 @llvm.ctpop.i32(i32 %66)
  %68 = and i32 %67, 1
  %PF72 = icmp eq i32 %68, 0
  %ZF73 = icmp eq i32 %EAX77, 0
  %highbit74 = and i32 -2147483648, %EAX77
  %SF75 = icmp ne i32 %highbit74, 0
  %69 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload70, i32 1)
  %OF76 = extractvalue { i32, i1 } %69, 1
  store i32 %EAX77, ptr %RBP_N.24, align 1
  br label %bb.1

bb.14:                                            ; preds = %bb.1
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.15

bb.15:                                            ; preds = %bb.14, %bb.7
  %memload78 = load i8, ptr %RBP_N.1, align 1
  %AL = and i8 %memload78, 1
  %70 = call i8 @llvm.ctpop.i8(i8 %AL)
  %71 = and i8 %70, 1
  %PF79 = icmp eq i8 %71, 0
  %ZF80 = icmp eq i8 %AL, 0
  %highbit81 = and i8 -128, %AL
  %SF82 = icmp ne i8 %highbit81, 0
  %EAX83 = zext i8 %AL to i32
  ret i32 %EAX83
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
