; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

define dso_local i64 @func0(i64 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %4 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  %5 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %5)
  %6 = trunc i64 %RAX to i32
  store i32 %6, ptr %RBP_N.20, align 1
  store i32 0, ptr %RBP_N.24, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.9
  %memload1 = load i32, ptr %RBP_N.24, align 1
  %7 = load i32, ptr %RBP_N.20, align 1
  %8 = sub i32 %memload1, %7
  %9 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload1, i32 %7)
  %CF = extractvalue { i32, i1 } %9, 1
  %ZF = icmp eq i32 %8, 0
  %highbit = and i32 -2147483648, %8
  %SF = icmp ne i32 %highbit, 0
  %10 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload1, i32 %7)
  %OF = extractvalue { i32, i1 } %10, 1
  %11 = and i32 %8, 255
  %12 = call i32 @llvm.ctpop.i32(i32 %11)
  %13 = and i32 %12, 1
  %PF = icmp eq i32 %13, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.10, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload2 = load i64, ptr %RBP_N.8, align 1
  %memload3 = load i64, ptr %RBP_N.24, align 1
  %14 = trunc i64 %memload3 to i32
  %RCX = sext i32 %14 to i64
  %memref-basereg = add i64 %memload2, %RCX
  %15 = inttoptr i64 %memref-basereg to ptr
  %memload4 = load i8, ptr %15, align 1
  %16 = ptrtoint ptr %stktop_8 to i64
  %17 = add i64 %16, 7
  %18 = inttoptr i64 %17 to ptr
  store i8 %memload4, ptr %18, align 1
  %19 = ptrtoint ptr %stktop_8 to i64
  %20 = add i64 %19, 7
  %21 = inttoptr i64 %20 to ptr
  %memload5 = load i32, ptr %21, align 1
  %22 = trunc i32 %memload5 to i8
  %EAX = sext i8 %22 to i32
  %23 = sub i32 %EAX, 97
  %24 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 97)
  %CF6 = extractvalue { i32, i1 } %24, 1
  %ZF7 = icmp eq i32 %23, 0
  %highbit8 = and i32 -2147483648, %23
  %SF9 = icmp ne i32 %highbit8, 0
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 97)
  %OF10 = extractvalue { i32, i1 } %25, 1
  %26 = and i32 %23, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF11 = icmp eq i32 %28, 0
  %SFAndOF_JL = icmp ne i1 %SF9, %OF10
  br i1 %SFAndOF_JL, label %bb.5, label %bb.3

bb.3:                                             ; preds = %bb.2
  %29 = ptrtoint ptr %stktop_8 to i64
  %30 = add i64 %29, 7
  %31 = inttoptr i64 %30 to ptr
  %memload12 = load i32, ptr %31, align 1
  %32 = trunc i32 %memload12 to i8
  %EAX13 = sext i8 %32 to i32
  %33 = sub i32 %EAX13, 122
  %34 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX13, i32 122)
  %CF14 = extractvalue { i32, i1 } %34, 1
  %ZF15 = icmp eq i32 %33, 0
  %highbit16 = and i32 -2147483648, %33
  %SF17 = icmp ne i32 %highbit16, 0
  %35 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX13, i32 122)
  %OF18 = extractvalue { i32, i1 } %35, 1
  %36 = and i32 %33, 255
  %37 = call i32 @llvm.ctpop.i32(i32 %36)
  %38 = and i32 %37, 1
  %PF19 = icmp eq i32 %38, 0
  %ZFCmp_JG = icmp eq i1 %ZF15, false
  %SFOFCmp_JG = icmp eq i1 %SF17, %OF18
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %39 = ptrtoint ptr %stktop_8 to i64
  %40 = add i64 %39, 7
  %41 = inttoptr i64 %40 to ptr
  %memload20 = load i32, ptr %41, align 1
  %42 = trunc i32 %memload20 to i8
  %EAX21 = sext i8 %42 to i32
  %EAX28 = sub i32 %EAX21, 32
  %43 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX21, i32 32)
  %CF22 = extractvalue { i32, i1 } %43, 1
  %44 = and i32 %EAX28, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44)
  %46 = and i32 %45, 1
  %PF23 = icmp eq i32 %46, 0
  %ZF24 = icmp eq i32 %EAX28, 0
  %highbit25 = and i32 -2147483648, %EAX28
  %SF26 = icmp ne i32 %highbit25, 0
  %47 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX21, i32 32)
  %OF27 = extractvalue { i32, i1 } %47, 1
  %48 = ptrtoint ptr %stktop_8 to i64
  %49 = add i64 %48, 7
  %50 = trunc i32 %EAX28 to i8
  %51 = inttoptr i64 %49 to ptr
  store i8 %50, ptr %51, align 1
  br label %bb.9

bb.5:                                             ; preds = %bb.3, %bb.2
  %52 = ptrtoint ptr %stktop_8 to i64
  %53 = add i64 %52, 7
  %54 = inttoptr i64 %53 to ptr
  %memload29 = load i32, ptr %54, align 1
  %55 = trunc i32 %memload29 to i8
  %EAX30 = sext i8 %55 to i32
  %56 = sub i32 %EAX30, 65
  %57 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX30, i32 65)
  %CF31 = extractvalue { i32, i1 } %57, 1
  %ZF32 = icmp eq i32 %56, 0
  %highbit33 = and i32 -2147483648, %56
  %SF34 = icmp ne i32 %highbit33, 0
  %58 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX30, i32 65)
  %OF35 = extractvalue { i32, i1 } %58, 1
  %59 = and i32 %56, 255
  %60 = call i32 @llvm.ctpop.i32(i32 %59)
  %61 = and i32 %60, 1
  %PF36 = icmp eq i32 %61, 0
  %SFAndOF_JL71 = icmp ne i1 %SF34, %OF35
  br i1 %SFAndOF_JL71, label %bb.8, label %bb.6

bb.6:                                             ; preds = %bb.5
  %62 = ptrtoint ptr %stktop_8 to i64
  %63 = add i64 %62, 7
  %64 = inttoptr i64 %63 to ptr
  %memload37 = load i32, ptr %64, align 1
  %65 = trunc i32 %memload37 to i8
  %EAX38 = sext i8 %65 to i32
  %66 = sub i32 %EAX38, 90
  %67 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX38, i32 90)
  %CF39 = extractvalue { i32, i1 } %67, 1
  %ZF40 = icmp eq i32 %66, 0
  %highbit41 = and i32 -2147483648, %66
  %SF42 = icmp ne i32 %highbit41, 0
  %68 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX38, i32 90)
  %OF43 = extractvalue { i32, i1 } %68, 1
  %69 = and i32 %66, 255
  %70 = call i32 @llvm.ctpop.i32(i32 %69)
  %71 = and i32 %70, 1
  %PF44 = icmp eq i32 %71, 0
  %ZFCmp_JG72 = icmp eq i1 %ZF40, false
  %SFOFCmp_JG73 = icmp eq i1 %SF42, %OF43
  %ZFAndSFOF_JG74 = and i1 %ZFCmp_JG72, %SFOFCmp_JG73
  br i1 %ZFAndSFOF_JG74, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %72 = ptrtoint ptr %stktop_8 to i64
  %73 = add i64 %72, 7
  %74 = inttoptr i64 %73 to ptr
  %memload45 = load i32, ptr %74, align 1
  %75 = trunc i32 %memload45 to i8
  %EAX46 = sext i8 %75 to i32
  %EAX53 = add i32 %EAX46, 32
  %76 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EAX46, i32 32)
  %CF47 = extractvalue { i32, i1 } %76, 1
  %77 = and i32 %EAX53, 255
  %78 = call i32 @llvm.ctpop.i32(i32 %77)
  %79 = and i32 %78, 1
  %PF48 = icmp eq i32 %79, 0
  %ZF49 = icmp eq i32 %EAX53, 0
  %highbit50 = and i32 -2147483648, %EAX53
  %SF51 = icmp ne i32 %highbit50, 0
  %80 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EAX46, i32 32)
  %OF52 = extractvalue { i32, i1 } %80, 1
  %81 = ptrtoint ptr %stktop_8 to i64
  %82 = add i64 %81, 7
  %83 = trunc i32 %EAX53 to i8
  %84 = inttoptr i64 %82 to ptr
  store i8 %83, ptr %84, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.6, %bb.5
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.4
  %85 = ptrtoint ptr %stktop_8 to i64
  %86 = add i64 %85, 7
  %87 = inttoptr i64 %86 to ptr
  %memload54 = load i8, ptr %87, align 1
  %memload55 = load i64, ptr %RBP_N.16, align 1
  %memload56 = load i64, ptr %RBP_N.24, align 1
  %88 = trunc i64 %memload56 to i32
  %RCX57 = sext i32 %88 to i64
  %memref-basereg58 = add i64 %memload55, %RCX57
  %89 = inttoptr i64 %memref-basereg58 to ptr
  store i8 %memload54, ptr %89, align 1
  %memload59 = load i32, ptr %RBP_N.24, align 1
  %EAX66 = add i32 %memload59, 1
  %90 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload59, i32 1)
  %CF60 = extractvalue { i32, i1 } %90, 1
  %91 = and i32 %EAX66, 255
  %92 = call i32 @llvm.ctpop.i32(i32 %91)
  %93 = and i32 %92, 1
  %PF61 = icmp eq i32 %93, 0
  %ZF62 = icmp eq i32 %EAX66, 0
  %highbit63 = and i32 -2147483648, %EAX66
  %SF64 = icmp ne i32 %highbit63, 0
  %94 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload59, i32 1)
  %OF65 = extractvalue { i32, i1 } %94, 1
  store i32 %EAX66, ptr %RBP_N.24, align 1
  br label %bb.1

bb.10:                                            ; preds = %bb.1
  %memload67 = load i64, ptr %RBP_N.16, align 1
  %memload68 = load i64, ptr %RBP_N.20, align 1
  %95 = trunc i64 %memload68 to i32
  %RCX69 = sext i32 %95 to i64
  %memref-basereg70 = add i64 %memload67, %RCX69
  %96 = inttoptr i64 %memref-basereg70 to ptr
  store i8 0, ptr %96, align 1
  ret i64 %memload67
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
