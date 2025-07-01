; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i32 %arg1) {
entry:
  %stktop_4 = alloca i8, i32 428, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.416 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.412 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.408 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.404 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 124
  %RSPAdj_N.304 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 424
  %RBP_N.4 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i32 0, ptr %RBP_N.416, align 1
  store i32 0, ptr %RBP_N.412, align 1
  store i32 2, ptr %RBP_N.408, align 1
  store i32 0, ptr %RBP_N.404, align 1
  store i32 4, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload = load i32, ptr %stktop_4, align 1
  %7 = load i32, ptr %RBP_N.4, align 1
  %8 = sub i32 %memload, %7
  %9 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %7)
  %CF = extractvalue { i32, i1 } %9, 1
  %ZF = icmp eq i32 %8, 0
  %highbit = and i32 -2147483648, %8
  %SF = icmp ne i32 %highbit, 0
  %10 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %7)
  %OF = extractvalue { i32, i1 } %10, 1
  %11 = and i32 %8, 255
  %12 = call i32 @llvm.ctpop.i32(i32 %11)
  %13 = and i32 %12, 1
  %PF = icmp eq i32 %13, 0
  %ZFCmp_JG = icmp eq i1 %ZF, false
  %SFOFCmp_JG = icmp eq i1 %SF, %OF
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i32, ptr %stktop_4, align 1
  %EAX = sub i32 %memload1, 1
  %14 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload1, i32 1)
  %CF2 = extractvalue { i32, i1 } %14, 1
  %15 = and i32 %EAX, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = and i32 %16, 1
  %PF3 = icmp eq i32 %17, 0
  %ZF4 = icmp eq i32 %EAX, 0
  %highbit5 = and i32 -2147483648, %EAX
  %SF6 = icmp ne i32 %highbit5, 0
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload1, i32 1)
  %OF7 = extractvalue { i32, i1 } %18, 1
  %RAX = sext i32 %EAX to i64
  %sc-m = mul i64 4, %RAX
  %19 = getelementptr i8, ptr %RBP_N.416, i64 %sc-m
  %memload8 = load i32, ptr %19, align 1
  %memload9 = load i32, ptr %stktop_4, align 1
  %EAX16 = sub i32 %memload9, 2
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload9, i32 2)
  %CF10 = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %EAX16, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF11 = icmp eq i32 %23, 0
  %ZF12 = icmp eq i32 %EAX16, 0
  %highbit13 = and i32 -2147483648, %EAX16
  %SF14 = icmp ne i32 %highbit13, 0
  %24 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload9, i32 2)
  %OF15 = extractvalue { i32, i1 } %24, 1
  %RAX17 = sext i32 %EAX16 to i64
  %sc-m18 = mul i64 4, %RAX17
  %25 = getelementptr i8, ptr %RBP_N.416, i64 %sc-m18
  %memload20 = load i32, ptr %25, align 1
  %ECX = add i32 %memload8, %memload20
  %26 = and i32 %ECX, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF21 = icmp eq i32 %28, 0
  %memload22 = load i32, ptr %stktop_4, align 1
  %EAX29 = sub i32 %memload22, 3
  %29 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload22, i32 3)
  %CF23 = extractvalue { i32, i1 } %29, 1
  %30 = and i32 %EAX29, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = and i32 %31, 1
  %PF24 = icmp eq i32 %32, 0
  %ZF25 = icmp eq i32 %EAX29, 0
  %highbit26 = and i32 -2147483648, %EAX29
  %SF27 = icmp ne i32 %highbit26, 0
  %33 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload22, i32 3)
  %OF28 = extractvalue { i32, i1 } %33, 1
  %RAX30 = sext i32 %EAX29 to i64
  %sc-m31 = mul i64 4, %RAX30
  %34 = getelementptr i8, ptr %RBP_N.416, i64 %sc-m31
  %memload33 = load i32, ptr %34, align 1
  %ECX35 = add i32 %ECX, %memload33
  %35 = and i32 %ECX35, 255
  %36 = call i32 @llvm.ctpop.i32(i32 %35)
  %37 = and i32 %36, 1
  %PF34 = icmp eq i32 %37, 0
  %memload36 = load i32, ptr %stktop_4, align 1
  %EAX43 = sub i32 %memload36, 4
  %38 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload36, i32 4)
  %CF37 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %EAX43, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF38 = icmp eq i32 %41, 0
  %ZF39 = icmp eq i32 %EAX43, 0
  %highbit40 = and i32 -2147483648, %EAX43
  %SF41 = icmp ne i32 %highbit40, 0
  %42 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload36, i32 4)
  %OF42 = extractvalue { i32, i1 } %42, 1
  %RAX44 = sext i32 %EAX43 to i64
  %sc-m45 = mul i64 4, %RAX44
  %43 = getelementptr i8, ptr %RBP_N.416, i64 %sc-m45
  %memload47 = load i32, ptr %43, align 1
  %ECX49 = add i32 %ECX35, %memload47
  %44 = and i32 %ECX49, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44)
  %46 = and i32 %45, 1
  %PF48 = icmp eq i32 %46, 0
  %memload50 = load i64, ptr %stktop_4, align 1
  %47 = trunc i64 %memload50 to i32
  %RAX51 = sext i32 %47 to i64
  %sc-m52 = mul i64 4, %RAX51
  %48 = getelementptr i8, ptr %RBP_N.416, i64 %sc-m52
  store i32 %ECX49, ptr %48, align 1
  %memload54 = load i32, ptr %stktop_4, align 1
  %EAX61 = add i32 %memload54, 1
  %49 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload54, i32 1)
  %CF55 = extractvalue { i32, i1 } %49, 1
  %50 = and i32 %EAX61, 255
  %51 = call i32 @llvm.ctpop.i32(i32 %50)
  %52 = and i32 %51, 1
  %PF56 = icmp eq i32 %52, 0
  %ZF57 = icmp eq i32 %EAX61, 0
  %highbit58 = and i32 -2147483648, %EAX61
  %SF59 = icmp ne i32 %highbit58, 0
  %53 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload54, i32 1)
  %OF60 = extractvalue { i32, i1 } %53, 1
  store i32 %EAX61, ptr %stktop_4, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %memload62 = load i64, ptr %RBP_N.4, align 1
  %54 = trunc i64 %memload62 to i32
  %RAX63 = sext i32 %54 to i64
  %sc-m64 = mul i64 4, %RAX63
  %55 = getelementptr i8, ptr %RBP_N.416, i64 %sc-m64
  %memload66 = load i32, ptr %55, align 1
  ret i32 %memload66
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
