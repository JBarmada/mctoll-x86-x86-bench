; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @malloc(i64)

declare dso_local ptr @strncpy(ptr, ptr, i64)

declare dso_local ptr @strstr(ptr, ptr)

declare dso_local void @free(ptr)

define dso_local i32 @func0(i64 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 55
  %RBP_N.1 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i64 %arg2, ptr %RBP_N.24, align 1
  %memload = load i64, ptr %RBP_N.16, align 1
  %7 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %7)
  %8 = trunc i64 %RAX to i32
  store i32 %8, ptr %RBP_N.28, align 1
  %memload1 = load i64, ptr %RBP_N.24, align 1
  %9 = inttoptr i64 %memload1 to ptr
  %RAX2 = call i64 @strlen(ptr %9)
  %10 = trunc i64 %RAX2 to i32
  store i32 %10, ptr %RBP_N.32, align 1
  %memload3 = load i32, ptr %RBP_N.32, align 1
  %EAX = shl i32 %memload3, 1
  %ZF = icmp eq i32 %EAX, 0
  %highbit = and i32 -2147483648, %EAX
  %SF = icmp ne i32 %highbit, 0
  %EAX7 = add i32 %EAX, 1
  %11 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EAX, i32 1)
  %CF = extractvalue { i32, i1 } %11, 1
  %12 = and i32 %EAX7, 255
  %13 = call i32 @llvm.ctpop.i32(i32 %12)
  %14 = and i32 %13, 1
  %PF = icmp eq i32 %14, 0
  %ZF4 = icmp eq i32 %EAX7, 0
  %highbit5 = and i32 -2147483648, %EAX7
  %SF6 = icmp ne i32 %highbit5, 0
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EAX, i32 1)
  %OF = extractvalue { i32, i1 } %15, 1
  %RDI = sext i32 %EAX7 to i64
  %16 = call ptr @malloc(i64 %RDI)
  %RAX8 = ptrtoint ptr %16 to i64
  store i64 %RAX8, ptr %RBP_N.40, align 1
  %17 = ptrtoint ptr %stktop_8 to i64
  %18 = add i64 %17, 4
  %19 = inttoptr i64 %18 to ptr
  store i32 0, ptr %19, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %20 = ptrtoint ptr %stktop_8 to i64
  %21 = add i64 %20, 4
  %22 = inttoptr i64 %21 to ptr
  %memload9 = load i32, ptr %22, align 1
  %23 = load i32, ptr %RBP_N.32, align 1
  %24 = sub i32 %memload9, %23
  %25 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload9, i32 %23)
  %CF10 = extractvalue { i32, i1 } %25, 1
  %ZF11 = icmp eq i32 %24, 0
  %highbit12 = and i32 -2147483648, %24
  %SF13 = icmp ne i32 %highbit12, 0
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload9, i32 %23)
  %OF14 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %24, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF15 = icmp eq i32 %29, 0
  %CmpSFOF_JGE = icmp eq i1 %SF13, %OF14
  br i1 %CmpSFOF_JGE, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload16 = load i64, ptr %RBP_N.40, align 1
  %memload17 = load i64, ptr %RBP_N.24, align 1
  %30 = ptrtoint ptr %stktop_8 to i64
  %31 = add i64 %30, 4
  %32 = inttoptr i64 %31 to ptr
  %memload18 = load i64, ptr %32, align 1
  %33 = trunc i64 %memload18 to i32
  %RAX19 = sext i32 %33 to i64
  %RSI = add nsw i64 %memload17, %RAX19
  %highbit20 = and i64 -9223372036854775808, %RSI
  %SF21 = icmp ne i64 %highbit20, 0
  %ZF22 = icmp eq i64 %RSI, 0
  %memload23 = load i32, ptr %RBP_N.32, align 1
  %34 = ptrtoint ptr %stktop_8 to i64
  %35 = add i64 %34, 4
  %36 = inttoptr i64 %35 to ptr
  %37 = load i32, ptr %36, align 1
  %EAX24 = sub i32 %memload23, %37
  %38 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload23, i32 %37)
  %CF25 = extractvalue { i32, i1 } %38, 1
  %ZF26 = icmp eq i32 %EAX24, 0
  %highbit27 = and i32 -2147483648, %EAX24
  %SF28 = icmp ne i32 %highbit27, 0
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload23, i32 %37)
  %OF29 = extractvalue { i32, i1 } %39, 1
  %40 = and i32 %EAX24, 255
  %41 = call i32 @llvm.ctpop.i32(i32 %40)
  %42 = and i32 %41, 1
  %PF30 = icmp eq i32 %42, 0
  %RDX = sext i32 %EAX24 to i64
  %43 = inttoptr i64 %memload16 to ptr
  %44 = inttoptr i64 %RSI to ptr
  %45 = call ptr @strncpy(ptr %43, ptr %44, i64 %RDX)
  %RAX31 = ptrtoint ptr %45 to i64
  %memload32 = load i64, ptr %RBP_N.40, align 1
  %memload33 = load i64, ptr %RBP_N.32, align 1
  %46 = trunc i64 %memload33 to i32
  %RAX34 = sext i32 %46 to i64
  %RDI38 = add nsw i64 %memload32, %RAX34
  %highbit35 = and i64 -9223372036854775808, %RDI38
  %SF36 = icmp ne i64 %highbit35, 0
  %ZF37 = icmp eq i64 %RDI38, 0
  %47 = ptrtoint ptr %stktop_8 to i64
  %48 = add i64 %47, 4
  %49 = inttoptr i64 %48 to ptr
  %memload39 = load i64, ptr %49, align 1
  %50 = trunc i64 %memload39 to i32
  %RCX = sext i32 %50 to i64
  %51 = zext i32 0 to i64
  %RAX40 = sub i64 %51, %RCX
  %52 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %51, i64 %RCX)
  %CF41 = extractvalue { i64, i1 } %52, 1
  %ZF42 = icmp eq i64 %RAX40, 0
  %highbit43 = and i64 -9223372036854775808, %RAX40
  %SF44 = icmp ne i64 %highbit43, 0
  %53 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %51, i64 %RCX)
  %OF45 = extractvalue { i64, i1 } %53, 1
  %54 = and i64 %RAX40, 255
  %55 = call i64 @llvm.ctpop.i64(i64 %54)
  %56 = and i64 %55, 1
  %PF46 = icmp eq i64 %56, 0
  %RDI50 = add nsw i64 %RDI38, %RAX40
  %highbit47 = and i64 -9223372036854775808, %RDI50
  %SF48 = icmp ne i64 %highbit47, 0
  %ZF49 = icmp eq i64 %RDI50, 0
  %memload51 = load i64, ptr %RBP_N.24, align 1
  %57 = ptrtoint ptr %stktop_8 to i64
  %58 = add i64 %57, 4
  %59 = inttoptr i64 %58 to ptr
  %memload52 = load i64, ptr %59, align 1
  %60 = trunc i64 %memload52 to i32
  %RDX53 = sext i32 %60 to i64
  %61 = inttoptr i64 %RDI50 to ptr
  %62 = inttoptr i64 %memload51 to ptr
  %63 = call ptr @strncpy(ptr %61, ptr %62, i64 %RDX53)
  %RAX54 = ptrtoint ptr %63 to i64
  %memload55 = load i64, ptr %RBP_N.40, align 1
  %memload56 = load i64, ptr %RBP_N.32, align 1
  %64 = trunc i64 %memload56 to i32
  %RCX57 = sext i32 %64 to i64
  %memref-basereg = add i64 %memload55, %RCX57
  %65 = inttoptr i64 %memref-basereg to ptr
  store i8 0, ptr %65, align 1
  %memload58 = load i64, ptr %RBP_N.16, align 1
  %memload59 = load i64, ptr %RBP_N.40, align 1
  %66 = inttoptr i64 %memload58 to ptr
  %67 = inttoptr i64 %memload59 to ptr
  %68 = call ptr @strstr(ptr %66, ptr %67)
  %RAX60 = ptrtoint ptr %68 to i64
  %69 = sub i64 %RAX60, 0
  %70 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX60, i64 0)
  %CF61 = extractvalue { i64, i1 } %70, 1
  %ZF62 = icmp eq i64 %69, 0
  %highbit63 = and i64 -9223372036854775808, %69
  %SF64 = icmp ne i64 %highbit63, 0
  %71 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX60, i64 0)
  %OF65 = extractvalue { i64, i1 } %71, 1
  %72 = and i64 %69, 255
  %73 = call i64 @llvm.ctpop.i64(i64 %72)
  %74 = and i64 %73, 1
  %PF66 = icmp eq i64 %74, 0
  %CmpZF_JE = icmp eq i1 %ZF62, true
  br i1 %CmpZF_JE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload67 = load i64, ptr %RBP_N.40, align 1
  %75 = inttoptr i64 %memload67 to ptr
  call void @free(ptr %75)
  store i8 1, ptr %RBP_N.1, align 1
  br label %bb.7

bb.4:                                             ; preds = %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %76 = ptrtoint ptr %stktop_8 to i64
  %77 = add i64 %76, 4
  %78 = inttoptr i64 %77 to ptr
  %memload68 = load i32, ptr %78, align 1
  %EAX75 = add i32 %memload68, 1
  %79 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload68, i32 1)
  %CF69 = extractvalue { i32, i1 } %79, 1
  %80 = and i32 %EAX75, 255
  %81 = call i32 @llvm.ctpop.i32(i32 %80)
  %82 = and i32 %81, 1
  %PF70 = icmp eq i32 %82, 0
  %ZF71 = icmp eq i32 %EAX75, 0
  %highbit72 = and i32 -2147483648, %EAX75
  %SF73 = icmp ne i32 %highbit72, 0
  %83 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload68, i32 1)
  %OF74 = extractvalue { i32, i1 } %83, 1
  %84 = ptrtoint ptr %stktop_8 to i64
  %85 = add i64 %84, 4
  %86 = inttoptr i64 %85 to ptr
  store i32 %EAX75, ptr %86, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  %memload76 = load i64, ptr %RBP_N.40, align 1
  %87 = inttoptr i64 %memload76 to ptr
  call void @free(ptr %87)
  store i8 0, ptr %RBP_N.1, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.3
  %memload77 = load i8, ptr %RBP_N.1, align 1
  %AL = and i8 %memload77, 1
  %88 = call i8 @llvm.ctpop.i8(i8 %AL)
  %89 = and i8 %88, 1
  %PF78 = icmp eq i8 %89, 0
  %ZF79 = icmp eq i8 %AL, 0
  %highbit80 = and i8 -128, %AL
  %SF81 = icmp ne i8 %highbit80, 0
  %EAX82 = zext i8 %AL to i32
  ret i32 %EAX82
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctpop.i8(i8) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
