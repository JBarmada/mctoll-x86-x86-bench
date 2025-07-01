; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @__ctype_b_loc()

define dso_local i32 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 18
  %RBP_N.22 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 19
  %RBP_N.21 = inttoptr i64 %1 to ptr
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
  %memload = load i64, ptr %RBP_N.16, align 1
  %6 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %6)
  %7 = trunc i64 %RAX to i32
  store i32 %7, ptr %RBP_N.20, align 1
  %8 = load i32, ptr %RBP_N.20, align 1
  %9 = zext i32 %8 to i64
  %10 = zext i32 0 to i64
  %11 = sub i64 %9, %10
  %12 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %9, i64 %10)
  %CF = extractvalue { i64, i1 } %12, 1
  %ZF = icmp eq i64 %11, 0
  %highbit = and i64 -9223372036854775808, %11
  %SF = icmp ne i64 %highbit, 0
  %13 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %9, i64 %10)
  %OF = extractvalue { i64, i1 } %13, 1
  %14 = and i64 %11, 255
  %15 = call i64 @llvm.ctpop.i64(i64 %14)
  %16 = and i64 %15, 1
  %PF = icmp eq i64 %16, 0
  %CmpZF_JNE = icmp eq i1 %ZF, false
  br i1 %CmpZF_JNE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.9

bb.2:                                             ; preds = %entry
  %memload1 = load i64, ptr %RBP_N.16, align 1
  %memload2 = load i32, ptr %RBP_N.20, align 1
  %ECX = sub i32 %memload2, 1
  %17 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload2, i32 1)
  %CF3 = extractvalue { i32, i1 } %17, 1
  %18 = and i32 %ECX, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = and i32 %19, 1
  %PF4 = icmp eq i32 %20, 0
  %ZF5 = icmp eq i32 %ECX, 0
  %highbit6 = and i32 -2147483648, %ECX
  %SF7 = icmp ne i32 %highbit6, 0
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload2, i32 1)
  %OF8 = extractvalue { i32, i1 } %21, 1
  %RCX = sext i32 %ECX to i64
  %memref-basereg = add i64 %memload1, %RCX
  %22 = inttoptr i64 %memref-basereg to ptr
  %memload9 = load i8, ptr %22, align 1
  store i8 %memload9, ptr %RBP_N.21, align 1
  %23 = call ptr @__ctype_b_loc()
  %memload11 = load i64, ptr %23, align 1
  %memload12 = load i32, ptr %RBP_N.21, align 1
  %24 = trunc i32 %memload12 to i8
  %ECX13 = zext i8 %24 to i32
  %RCX14 = sext i32 %ECX13 to i64
  %memref-idxreg = mul i64 2, %RCX14
  %memref-basereg15 = add i64 %memload11, %memref-idxreg
  %25 = inttoptr i64 %memref-basereg15 to ptr
  %memload16 = load i32, ptr %25, align 1
  %26 = trunc i32 %memload16 to i16
  %EAX = zext i16 %26 to i32
  %EAX21 = and i32 %EAX, 1024
  %27 = and i32 %EAX21, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF17 = icmp eq i32 %29, 0
  %ZF18 = icmp eq i32 %EAX21, 0
  %highbit19 = and i32 -2147483648, %EAX21
  %SF20 = icmp ne i32 %highbit19, 0
  %30 = sub i32 %EAX21, 0
  %31 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX21, i32 0)
  %CF22 = extractvalue { i32, i1 } %31, 1
  %ZF23 = icmp eq i32 %30, 0
  %highbit24 = and i32 -2147483648, %30
  %SF25 = icmp ne i32 %highbit24, 0
  %32 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX21, i32 0)
  %OF26 = extractvalue { i32, i1 } %32, 1
  %33 = and i32 %30, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = and i32 %34, 1
  %PF27 = icmp eq i32 %35, 0
  %CmpZF_JNE67 = icmp eq i1 %ZF23, false
  br i1 %CmpZF_JNE67, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.9

bb.4:                                             ; preds = %bb.2
  %36 = load i32, ptr %RBP_N.20, align 1
  %37 = zext i32 %36 to i64
  %38 = zext i32 1 to i64
  %39 = sub i64 %37, %38
  %40 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %37, i64 %38)
  %CF28 = extractvalue { i64, i1 } %40, 1
  %ZF29 = icmp eq i64 %39, 0
  %highbit30 = and i64 -9223372036854775808, %39
  %SF31 = icmp ne i64 %highbit30, 0
  %41 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %37, i64 %38)
  %OF32 = extractvalue { i64, i1 } %41, 1
  %42 = and i64 %39, 255
  %43 = call i64 @llvm.ctpop.i64(i64 %42)
  %44 = and i64 %43, 1
  %PF33 = icmp eq i64 %44, 0
  %CmpZF_JNE68 = icmp eq i1 %ZF29, false
  br i1 %CmpZF_JNE68, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  store i32 1, ptr %RBP_N.4, align 1
  br label %bb.9

bb.6:                                             ; preds = %bb.4
  %memload34 = load i64, ptr %RBP_N.16, align 1
  %memload35 = load i32, ptr %RBP_N.20, align 1
  %ECX42 = sub i32 %memload35, 2
  %45 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload35, i32 2)
  %CF36 = extractvalue { i32, i1 } %45, 1
  %46 = and i32 %ECX42, 255
  %47 = call i32 @llvm.ctpop.i32(i32 %46)
  %48 = and i32 %47, 1
  %PF37 = icmp eq i32 %48, 0
  %ZF38 = icmp eq i32 %ECX42, 0
  %highbit39 = and i32 -2147483648, %ECX42
  %SF40 = icmp ne i32 %highbit39, 0
  %49 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload35, i32 2)
  %OF41 = extractvalue { i32, i1 } %49, 1
  %RCX43 = sext i32 %ECX42 to i64
  %memref-basereg44 = add i64 %memload34, %RCX43
  %50 = inttoptr i64 %memref-basereg44 to ptr
  %memload45 = load i8, ptr %50, align 1
  store i8 %memload45, ptr %RBP_N.22, align 1
  %51 = call ptr @__ctype_b_loc()
  %memload47 = load i64, ptr %51, align 1
  %memload48 = load i32, ptr %RBP_N.22, align 1
  %52 = trunc i32 %memload48 to i8
  %ECX49 = zext i8 %52 to i32
  %RCX50 = sext i32 %ECX49 to i64
  %memref-idxreg51 = mul i64 2, %RCX50
  %memref-basereg52 = add i64 %memload47, %memref-idxreg51
  %53 = inttoptr i64 %memref-basereg52 to ptr
  %memload53 = load i32, ptr %53, align 1
  %54 = trunc i32 %memload53 to i16
  %EAX54 = zext i16 %54 to i32
  %EAX59 = and i32 %EAX54, 1024
  %55 = and i32 %EAX59, 255
  %56 = call i32 @llvm.ctpop.i32(i32 %55)
  %57 = and i32 %56, 1
  %PF55 = icmp eq i32 %57, 0
  %ZF56 = icmp eq i32 %EAX59, 0
  %highbit57 = and i32 -2147483648, %EAX59
  %SF58 = icmp ne i32 %highbit57, 0
  %58 = sub i32 %EAX59, 0
  %59 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX59, i32 0)
  %CF60 = extractvalue { i32, i1 } %59, 1
  %ZF61 = icmp eq i32 %58, 0
  %highbit62 = and i32 -2147483648, %58
  %SF63 = icmp ne i32 %highbit62, 0
  %60 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX59, i32 0)
  %OF64 = extractvalue { i32, i1 } %60, 1
  %61 = and i32 %58, 255
  %62 = call i32 @llvm.ctpop.i32(i32 %61)
  %63 = and i32 %62, 1
  %PF65 = icmp eq i32 %63, 0
  %CmpZF_JE = icmp eq i1 %ZF61, true
  br i1 %CmpZF_JE, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.9

bb.8:                                             ; preds = %bb.6
  store i32 1, ptr %RBP_N.4, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.7, %bb.5, %bb.3, %bb.1
  %memload66 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload66
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
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
