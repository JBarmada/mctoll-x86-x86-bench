; ModuleID = 'code.so'
source_filename = "code.so"

@func0.xs = common dso_local global [50 x i8] zeroinitializer, align 16
@0 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !ROData_SecInfo !0

declare dso_local i32 @sprintf(ptr, ptr, ...)

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @strcpy(ptr, ptr)

declare dso_local ptr @strncat(ptr, ptr, i64)

define dso_local i64 @func0(i32 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 104, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.84 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %2 = inttoptr i64 %1 to ptr
  %3 = add i64 %tos, 87
  %RBP_N.17 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 88
  %RBP_N.16 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 92
  %RBP_N.12 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 96
  %RBP_N.8 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 100
  %RBP_N.4 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %8 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i32 %arg2, ptr %RBP_N.8, align 1
  %memload = load i32, ptr %RBP_N.4, align 1
  %9 = bitcast ptr @func0.xs to ptr
  %10 = getelementptr inbounds [6 x i64], ptr %9, i32 0, i32 0
  %EAX = call i32 (ptr, ptr, ...) @sprintf(ptr %10, ptr @0, i32 %memload)
  %11 = bitcast ptr @func0.xs to ptr
  %12 = getelementptr inbounds [6 x i64], ptr %11, i32 0, i32 0
  %RAX = call i64 @strlen(ptr %12)
  %13 = trunc i64 %RAX to i32
  store i32 %13, ptr %RBP_N.12, align 1
  %memload2 = load i32, ptr %RBP_N.12, align 1
  %14 = load i32, ptr %RBP_N.8, align 1
  %15 = sub i32 %memload2, %14
  %16 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload2, i32 %14)
  %CF = extractvalue { i32, i1 } %16, 1
  %ZF = icmp eq i32 %15, 0
  %highbit = and i32 -2147483648, %15
  %SF = icmp ne i32 %highbit, 0
  %17 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload2, i32 %14)
  %OF = extractvalue { i32, i1 } %17, 1
  %18 = and i32 %15, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = and i32 %19, 1
  %PF = icmp eq i32 %20, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.5, label %bb.1

bb.1:                                             ; preds = %entry
  store i32 0, ptr %RBP_N.16, align 1
  br label %bb.2

bb.2:                                             ; preds = %bb.1, %bb.3
  %memload3 = load i32, ptr %RBP_N.16, align 1
  store i32 %memload3, ptr %RBP_N.84, align 1
  %memload4 = load i32, ptr %RBP_N.12, align 1
  %21 = sext i32 %memload4 to i64
  %22 = lshr i64 %21, 32
  %EDX = trunc i64 %22 to i32
  %23 = sext i32 %memload4 to i64
  %24 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %24, 32
  %dividend = or i64 %div_hb_ls, %23
  %25 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %25
  %EAX5 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %25
  %EDX6 = trunc i64 %div_r to i32
  %memload7 = load i32, ptr %RBP_N.84, align 1
  %26 = sub i32 %memload7, %EAX5
  %27 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload7, i32 %EAX5)
  %CF8 = extractvalue { i32, i1 } %27, 1
  %ZF9 = icmp eq i32 %26, 0
  %highbit10 = and i32 -2147483648, %26
  %SF11 = icmp ne i32 %highbit10, 0
  %28 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload7, i32 %EAX5)
  %OF12 = extractvalue { i32, i1 } %28, 1
  %29 = and i32 %26, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = and i32 %30, 1
  %PF13 = icmp eq i32 %31, 0
  %CmpSFOF_JGE106 = icmp eq i1 %SF11, %OF12
  br i1 %CmpSFOF_JGE106, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload14 = load i64, ptr %RBP_N.16, align 1
  %32 = trunc i64 %memload14 to i32
  %RCX = sext i32 %32 to i64
  %33 = bitcast ptr @func0.xs to ptr
  %34 = getelementptr inbounds [6 x i64], ptr %33, i32 0, i32 0
  %RAX15 = ptrtoint ptr %34 to i64
  %memref-basereg = add i64 %RAX15, %RCX
  %35 = inttoptr i64 %memref-basereg to ptr
  %memload16 = load i8, ptr %35, align 1
  store i8 %memload16, ptr %RBP_N.17, align 1
  %memload17 = load i32, ptr %RBP_N.12, align 1
  %EAX24 = sub i32 %memload17, 1
  %36 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload17, i32 1)
  %CF18 = extractvalue { i32, i1 } %36, 1
  %37 = and i32 %EAX24, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF19 = icmp eq i32 %39, 0
  %ZF20 = icmp eq i32 %EAX24, 0
  %highbit21 = and i32 -2147483648, %EAX24
  %SF22 = icmp ne i32 %highbit21, 0
  %40 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload17, i32 1)
  %OF23 = extractvalue { i32, i1 } %40, 1
  %41 = load i32, ptr %RBP_N.16, align 1
  %EAX25 = sub i32 %EAX24, %41
  %42 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX24, i32 %41)
  %CF26 = extractvalue { i32, i1 } %42, 1
  %ZF27 = icmp eq i32 %EAX25, 0
  %highbit28 = and i32 -2147483648, %EAX25
  %SF29 = icmp ne i32 %highbit28, 0
  %43 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX24, i32 %41)
  %OF30 = extractvalue { i32, i1 } %43, 1
  %44 = and i32 %EAX25, 255
  %45 = call i32 @llvm.ctpop.i32(i32 %44)
  %46 = and i32 %45, 1
  %PF31 = icmp eq i32 %46, 0
  %RCX32 = sext i32 %EAX25 to i64
  %47 = bitcast ptr @func0.xs to ptr
  %48 = getelementptr inbounds [6 x i64], ptr %47, i32 0, i32 0
  %RAX33 = ptrtoint ptr %48 to i64
  %memref-basereg34 = add i64 %RAX33, %RCX32
  %49 = inttoptr i64 %memref-basereg34 to ptr
  %memload35 = load i8, ptr %49, align 1
  %memload36 = load i64, ptr %RBP_N.16, align 1
  %50 = trunc i64 %memload36 to i32
  %RCX37 = sext i32 %50 to i64
  %51 = bitcast ptr @func0.xs to ptr
  %52 = getelementptr inbounds [6 x i64], ptr %51, i32 0, i32 0
  %RAX38 = ptrtoint ptr %52 to i64
  %memref-basereg39 = add i64 %RAX38, %RCX37
  %53 = inttoptr i64 %memref-basereg39 to ptr
  store i8 %memload35, ptr %53, align 1
  %memload40 = load i8, ptr %RBP_N.17, align 1
  %memload41 = load i32, ptr %RBP_N.12, align 1
  %EAX48 = sub i32 %memload41, 1
  %54 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload41, i32 1)
  %CF42 = extractvalue { i32, i1 } %54, 1
  %55 = and i32 %EAX48, 255
  %56 = call i32 @llvm.ctpop.i32(i32 %55)
  %57 = and i32 %56, 1
  %PF43 = icmp eq i32 %57, 0
  %ZF44 = icmp eq i32 %EAX48, 0
  %highbit45 = and i32 -2147483648, %EAX48
  %SF46 = icmp ne i32 %highbit45, 0
  %58 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload41, i32 1)
  %OF47 = extractvalue { i32, i1 } %58, 1
  %59 = load i32, ptr %RBP_N.16, align 1
  %EAX49 = sub i32 %EAX48, %59
  %60 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX48, i32 %59)
  %CF50 = extractvalue { i32, i1 } %60, 1
  %ZF51 = icmp eq i32 %EAX49, 0
  %highbit52 = and i32 -2147483648, %EAX49
  %SF53 = icmp ne i32 %highbit52, 0
  %61 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX48, i32 %59)
  %OF54 = extractvalue { i32, i1 } %61, 1
  %62 = and i32 %EAX49, 255
  %63 = call i32 @llvm.ctpop.i32(i32 %62)
  %64 = and i32 %63, 1
  %PF55 = icmp eq i32 %64, 0
  %RCX56 = sext i32 %EAX49 to i64
  %65 = bitcast ptr @func0.xs to ptr
  %66 = getelementptr inbounds [6 x i64], ptr %65, i32 0, i32 0
  %RAX57 = ptrtoint ptr %66 to i64
  %memref-basereg58 = add i64 %RAX57, %RCX56
  %67 = inttoptr i64 %memref-basereg58 to ptr
  store i8 %memload40, ptr %67, align 1
  %memload59 = load i32, ptr %RBP_N.16, align 1
  %EAX66 = add i32 %memload59, 1
  %68 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload59, i32 1)
  %CF60 = extractvalue { i32, i1 } %68, 1
  %69 = and i32 %EAX66, 255
  %70 = call i32 @llvm.ctpop.i32(i32 %69)
  %71 = and i32 %70, 1
  %PF61 = icmp eq i32 %71, 0
  %ZF62 = icmp eq i32 %EAX66, 0
  %highbit63 = and i32 -2147483648, %EAX66
  %SF64 = icmp ne i32 %highbit63, 0
  %72 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload59, i32 1)
  %OF65 = extractvalue { i32, i1 } %72, 1
  store i32 %EAX66, ptr %RBP_N.16, align 1
  br label %bb.2

bb.4:                                             ; preds = %bb.2
  br label %bb.6

bb.5:                                             ; preds = %entry
  %memload68 = load i64, ptr %RBP_N.12, align 1
  %73 = trunc i64 %memload68 to i32
  %RAX69 = sext i32 %73 to i64
  %74 = bitcast ptr @func0.xs to ptr
  %75 = getelementptr inbounds [6 x i64], ptr %74, i32 0, i32 0
  %RSI70 = ptrtoint ptr %75 to i64
  %RSI74 = add nsw i64 %RSI70, %RAX69
  %highbit71 = and i64 -9223372036854775808, %RSI74
  %SF72 = icmp ne i64 %highbit71, 0
  %ZF73 = icmp eq i64 %RSI74, 0
  %memload75 = load i64, ptr %RBP_N.8, align 1
  %76 = trunc i64 %memload75 to i32
  %RCX76 = sext i32 %76 to i64
  %77 = zext i32 0 to i64
  %RAX77 = sub i64 %77, %RCX76
  %78 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %77, i64 %RCX76)
  %CF78 = extractvalue { i64, i1 } %78, 1
  %ZF79 = icmp eq i64 %RAX77, 0
  %highbit80 = and i64 -9223372036854775808, %RAX77
  %SF81 = icmp ne i64 %highbit80, 0
  %79 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %77, i64 %RCX76)
  %OF82 = extractvalue { i64, i1 } %79, 1
  %80 = and i64 %RAX77, 255
  %81 = call i64 @llvm.ctpop.i64(i64 %80)
  %82 = and i64 %81, 1
  %PF83 = icmp eq i64 %82, 0
  %RSI87 = add nsw i64 %RSI74, %RAX77
  %highbit84 = and i64 -9223372036854775808, %RSI87
  %SF85 = icmp ne i64 %highbit84, 0
  %ZF86 = icmp eq i64 %RSI87, 0
  %83 = inttoptr i64 %RSI87 to ptr
  %84 = call ptr @strcpy(ptr %2, ptr %83)
  %RAX88 = ptrtoint ptr %84 to i64
  %memload89 = load i64, ptr %RBP_N.8, align 1
  %85 = trunc i64 %memload89 to i32
  %RAX90 = sext i32 %85 to i64
  %86 = getelementptr i8, ptr %2, i64 %RAX90
  store i8 0, ptr %86, align 1
  %memload92 = load i32, ptr %RBP_N.12, align 1
  %87 = load i32, ptr %RBP_N.8, align 1
  %EAX93 = sub i32 %memload92, %87
  %88 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload92, i32 %87)
  %CF94 = extractvalue { i32, i1 } %88, 1
  %ZF95 = icmp eq i32 %EAX93, 0
  %highbit96 = and i32 -2147483648, %EAX93
  %SF97 = icmp ne i32 %highbit96, 0
  %89 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload92, i32 %87)
  %OF98 = extractvalue { i32, i1 } %89, 1
  %90 = and i32 %EAX93, 255
  %91 = call i32 @llvm.ctpop.i32(i32 %90)
  %92 = and i32 %91, 1
  %PF99 = icmp eq i32 %92, 0
  %RDX = sext i32 %EAX93 to i64
  %93 = bitcast ptr @func0.xs to ptr
  %94 = getelementptr inbounds [6 x i64], ptr %93, i32 0, i32 0
  %95 = call ptr @strncat(ptr %2, ptr %94, i64 %RDX)
  %RAX101 = ptrtoint ptr %95 to i64
  %96 = bitcast ptr @func0.xs to ptr
  %97 = getelementptr inbounds [6 x i64], ptr %96, i32 0, i32 0
  %98 = call ptr @strcpy(ptr %97, ptr %2)
  %RAX104 = ptrtoint ptr %98 to i64
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  %99 = bitcast ptr @func0.xs to ptr
  %100 = getelementptr inbounds [6 x i64], ptr %99, i32 0, i32 0
  %RAX105 = ptrtoint ptr %100 to i64
  ret i64 %RAX105
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
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 8192}
