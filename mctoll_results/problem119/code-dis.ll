; ModuleID = 'code.so'
source_filename = "code.so"

@rodata_13 = private unnamed_addr constant [11 x i8] c"AEIOUaeiou\00", align 1, !ROData_SecInfo !0
@func0.out = common dso_local global [2 x i8] zeroinitializer, align 1

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @strchr(ptr, i32)

define dso_local i64 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  %RAX = ptrtoint ptr @rodata_13 to i64
  store i64 %RAX, ptr %RBP_N.24, align 1
  %memload = load i64, ptr %RBP_N.16, align 1
  %6 = inttoptr i64 %memload to ptr
  %RAX1 = call i64 @strlen(ptr %6)
  store i64 %RAX1, ptr %RBP_N.32, align 1
  %memload2 = load i64, ptr %RBP_N.32, align 1
  %RAX3 = sub i64 %memload2, 2
  %7 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %memload2, i64 2)
  %CF = extractvalue { i64, i1 } %7, 1
  %8 = and i64 %RAX3, 255
  %9 = call i64 @llvm.ctpop.i64(i64 %8)
  %10 = and i64 %9, 1
  %PF = icmp eq i64 %10, 0
  %ZF = icmp eq i64 %RAX3, 0
  %highbit = and i64 -9223372036854775808, %RAX3
  %SF = icmp ne i64 %highbit, 0
  %11 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %memload2, i64 2)
  %OF = extractvalue { i64, i1 } %11, 1
  %12 = trunc i64 %RAX3 to i32
  store i32 %12, ptr %RBP_N.36, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.7
  %13 = load i32, ptr %RBP_N.36, align 1
  %14 = zext i32 %13 to i64
  %15 = zext i32 1 to i64
  %16 = sub i64 %14, %15
  %17 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %14, i64 %15)
  %CF4 = extractvalue { i64, i1 } %17, 1
  %ZF5 = icmp eq i64 %16, 0
  %highbit6 = and i64 -9223372036854775808, %16
  %SF7 = icmp ne i64 %highbit6, 0
  %18 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %14, i64 %15)
  %OF8 = extractvalue { i64, i1 } %18, 1
  %19 = and i64 %16, 255
  %20 = call i64 @llvm.ctpop.i64(i64 %19)
  %21 = and i64 %20, 1
  %PF9 = icmp eq i64 %21, 0
  %SFAndOF_JL = icmp ne i1 %SF7, %OF8
  br i1 %SFAndOF_JL, label %bb.8, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload10 = load i64, ptr %RBP_N.24, align 1
  %memload11 = load i64, ptr %RBP_N.16, align 1
  %memload12 = load i64, ptr %RBP_N.36, align 1
  %22 = trunc i64 %memload12 to i32
  %RCX = sext i32 %22 to i64
  %memref-basereg = add i64 %memload11, %RCX
  %23 = inttoptr i64 %memref-basereg to ptr
  %memload13 = load i32, ptr %23, align 1
  %24 = trunc i32 %memload13 to i8
  %ESI = sext i8 %24 to i32
  %25 = inttoptr i64 %memload10 to ptr
  %26 = call ptr @strchr(ptr %25, i32 %ESI)
  %RAX14 = ptrtoint ptr %26 to i64
  %27 = sub i64 %RAX14, 0
  %28 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX14, i64 0)
  %CF15 = extractvalue { i64, i1 } %28, 1
  %ZF16 = icmp eq i64 %27, 0
  %highbit17 = and i64 -9223372036854775808, %27
  %SF18 = icmp ne i64 %highbit17, 0
  %29 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX14, i64 0)
  %OF19 = extractvalue { i64, i1 } %29, 1
  %30 = and i64 %27, 255
  %31 = call i64 @llvm.ctpop.i64(i64 %30)
  %32 = and i64 %31, 1
  %PF20 = icmp eq i64 %32, 0
  %CmpZF_JE = icmp eq i1 %ZF16, true
  br i1 %CmpZF_JE, label %bb.6, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload21 = load i64, ptr %RBP_N.24, align 1
  %memload22 = load i64, ptr %RBP_N.16, align 1
  %memload23 = load i32, ptr %RBP_N.36, align 1
  %ECX = add i32 %memload23, 1
  %33 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload23, i32 1)
  %CF24 = extractvalue { i32, i1 } %33, 1
  %34 = and i32 %ECX, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = and i32 %35, 1
  %PF25 = icmp eq i32 %36, 0
  %ZF26 = icmp eq i32 %ECX, 0
  %highbit27 = and i32 -2147483648, %ECX
  %SF28 = icmp ne i32 %highbit27, 0
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload23, i32 1)
  %OF29 = extractvalue { i32, i1 } %37, 1
  %RCX30 = sext i32 %ECX to i64
  %memref-basereg31 = add i64 %memload22, %RCX30
  %38 = inttoptr i64 %memref-basereg31 to ptr
  %memload32 = load i32, ptr %38, align 1
  %39 = trunc i32 %memload32 to i8
  %ESI33 = sext i8 %39 to i32
  %40 = inttoptr i64 %memload21 to ptr
  %41 = call ptr @strchr(ptr %40, i32 %ESI33)
  %RAX34 = ptrtoint ptr %41 to i64
  %42 = sub i64 %RAX34, 0
  %43 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX34, i64 0)
  %CF35 = extractvalue { i64, i1 } %43, 1
  %ZF36 = icmp eq i64 %42, 0
  %highbit37 = and i64 -9223372036854775808, %42
  %SF38 = icmp ne i64 %highbit37, 0
  %44 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX34, i64 0)
  %OF39 = extractvalue { i64, i1 } %44, 1
  %45 = and i64 %42, 255
  %46 = call i64 @llvm.ctpop.i64(i64 %45)
  %47 = and i64 %46, 1
  %PF40 = icmp eq i64 %47, 0
  %CmpZF_JNE = icmp eq i1 %ZF36, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload41 = load i64, ptr %RBP_N.24, align 1
  %memload42 = load i64, ptr %RBP_N.16, align 1
  %memload43 = load i32, ptr %RBP_N.36, align 1
  %ECX50 = sub i32 %memload43, 1
  %48 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload43, i32 1)
  %CF44 = extractvalue { i32, i1 } %48, 1
  %49 = and i32 %ECX50, 255
  %50 = call i32 @llvm.ctpop.i32(i32 %49)
  %51 = and i32 %50, 1
  %PF45 = icmp eq i32 %51, 0
  %ZF46 = icmp eq i32 %ECX50, 0
  %highbit47 = and i32 -2147483648, %ECX50
  %SF48 = icmp ne i32 %highbit47, 0
  %52 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload43, i32 1)
  %OF49 = extractvalue { i32, i1 } %52, 1
  %RCX51 = sext i32 %ECX50 to i64
  %memref-basereg52 = add i64 %memload42, %RCX51
  %53 = inttoptr i64 %memref-basereg52 to ptr
  %memload53 = load i32, ptr %53, align 1
  %54 = trunc i32 %memload53 to i8
  %ESI54 = sext i8 %54 to i32
  %55 = inttoptr i64 %memload41 to ptr
  %56 = call ptr @strchr(ptr %55, i32 %ESI54)
  %RAX55 = ptrtoint ptr %56 to i64
  %57 = sub i64 %RAX55, 0
  %58 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX55, i64 0)
  %CF56 = extractvalue { i64, i1 } %58, 1
  %ZF57 = icmp eq i64 %57, 0
  %highbit58 = and i64 -9223372036854775808, %57
  %SF59 = icmp ne i64 %highbit58, 0
  %59 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX55, i64 0)
  %OF60 = extractvalue { i64, i1 } %59, 1
  %60 = and i64 %57, 255
  %61 = call i64 @llvm.ctpop.i64(i64 %60)
  %62 = and i64 %61, 1
  %PF61 = icmp eq i64 %62, 0
  %CmpZF_JNE77 = icmp eq i1 %ZF57, false
  br i1 %CmpZF_JNE77, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload62 = load i64, ptr %RBP_N.16, align 1
  %memload63 = load i64, ptr %RBP_N.36, align 1
  %63 = trunc i64 %memload63 to i32
  %RCX64 = sext i32 %63 to i64
  %memref-basereg65 = add i64 %memload62, %RCX64
  %64 = inttoptr i64 %memref-basereg65 to ptr
  %memload66 = load i8, ptr %64, align 1
  %65 = getelementptr inbounds [2 x i8], ptr @func0.out, i32 0, i32 0
  store i8 %memload66, ptr %65, align 1
  %66 = bitcast ptr @func0.out to ptr
  %67 = getelementptr inbounds [0 x i64], ptr %66, i32 0, i32 0
  %RAX67 = ptrtoint ptr %67 to i64
  store i64 %RAX67, ptr %RBP_N.8, align 1
  br label %bb.9

bb.6:                                             ; preds = %bb.4, %bb.3, %bb.2
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload68 = load i32, ptr %RBP_N.36, align 1
  %EAX = add i32 %memload68, -1
  %68 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload68, i32 -1)
  %CF69 = extractvalue { i32, i1 } %68, 1
  %69 = and i32 %EAX, 255
  %70 = call i32 @llvm.ctpop.i32(i32 %69)
  %71 = and i32 %70, 1
  %PF70 = icmp eq i32 %71, 0
  %ZF71 = icmp eq i32 %EAX, 0
  %highbit72 = and i32 -2147483648, %EAX
  %SF73 = icmp ne i32 %highbit72, 0
  %72 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload68, i32 -1)
  %OF74 = extractvalue { i32, i1 } %72, 1
  store i32 %EAX, ptr %RBP_N.36, align 1
  br label %bb.1

bb.8:                                             ; preds = %bb.1
  %73 = getelementptr inbounds [2 x i8], ptr @func0.out, i32 0, i32 0
  store i8 0, ptr %73, align 1
  %74 = bitcast ptr @func0.out to ptr
  %75 = getelementptr inbounds [0 x i64], ptr %74, i32 0, i32 0
  %RAX75 = ptrtoint ptr %75 to i64
  store i64 %RAX75, ptr %RBP_N.8, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.5
  %memload76 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload76
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

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

!0 = !{i64 8192}
