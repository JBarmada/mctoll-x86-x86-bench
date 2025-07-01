; ModuleID = 'code.so'
source_filename = "code.so"

@rodata_12 = private unnamed_addr constant [7 x i8] c"YES\00NO\00", align 1, !ROData_SecInfo !0

define dso_local i64 @func0(i64 %arg1, i32 %arg2, i64 %arg3, i32 %arg4) {
entry:
  %stktop_4 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.44 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i32 %arg2, ptr %RBP_N.20, align 1
  store i64 %arg3, ptr %RBP_N.32, align 1
  store i32 %arg4, ptr %RBP_N.36, align 1
  store i32 0, ptr %RBP_N.40, align 1
  store i32 0, ptr %RBP_N.44, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.5
  %memload = load i32, ptr %RBP_N.44, align 1
  %8 = load i32, ptr %RBP_N.20, align 1
  %9 = sub i32 %memload, %8
  %10 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %8)
  %CF = extractvalue { i32, i1 } %10, 1
  %ZF = icmp eq i32 %9, 0
  %highbit = and i32 -2147483648, %9
  %SF = icmp ne i32 %highbit, 0
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %8)
  %OF = extractvalue { i32, i1 } %11, 1
  %12 = and i32 %9, 255
  %13 = call i32 @llvm.ctpop.i32(i32 %12)
  %14 = and i32 %13, 1
  %PF = icmp eq i32 %14, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.6, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload1 = load i64, ptr %RBP_N.16, align 1
  %memload2 = load i64, ptr %RBP_N.44, align 1
  %15 = trunc i64 %memload2 to i32
  %RCX = sext i32 %15 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload1, %memref-idxreg
  %16 = inttoptr i64 %memref-basereg to ptr
  %memload3 = load i32, ptr %16, align 1
  %17 = sext i32 %memload3 to i64
  %18 = lshr i64 %17, 32
  %EDX = trunc i64 %18 to i32
  %19 = sext i32 %memload3 to i64
  %20 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %20, 32
  %dividend = or i64 %div_hb_ls, %19
  %21 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %21
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %21
  %EDX4 = trunc i64 %div_r to i32
  %22 = sub i32 %EDX4, 0
  %23 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX4, i32 0)
  %CF5 = extractvalue { i32, i1 } %23, 1
  %ZF6 = icmp eq i32 %22, 0
  %highbit7 = and i32 -2147483648, %22
  %SF8 = icmp ne i32 %highbit7, 0
  %24 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX4, i32 0)
  %OF9 = extractvalue { i32, i1 } %24, 1
  %25 = and i32 %22, 255
  %26 = call i32 @llvm.ctpop.i32(i32 %25)
  %27 = and i32 %26, 1
  %PF10 = icmp eq i32 %27, 0
  %CmpZF_JNE = icmp eq i1 %ZF6, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload11 = load i32, ptr %RBP_N.40, align 1
  %EAX18 = add i32 %memload11, 1
  %28 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload11, i32 1)
  %CF12 = extractvalue { i32, i1 } %28, 1
  %29 = and i32 %EAX18, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = and i32 %30, 1
  %PF13 = icmp eq i32 %31, 0
  %ZF14 = icmp eq i32 %EAX18, 0
  %highbit15 = and i32 -2147483648, %EAX18
  %SF16 = icmp ne i32 %highbit15, 0
  %32 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload11, i32 1)
  %OF17 = extractvalue { i32, i1 } %32, 1
  store i32 %EAX18, ptr %RBP_N.40, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  br label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload19 = load i32, ptr %RBP_N.44, align 1
  %EAX26 = add i32 %memload19, 1
  %33 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload19, i32 1)
  %CF20 = extractvalue { i32, i1 } %33, 1
  %34 = and i32 %EAX26, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = and i32 %35, 1
  %PF21 = icmp eq i32 %36, 0
  %ZF22 = icmp eq i32 %EAX26, 0
  %highbit23 = and i32 -2147483648, %EAX26
  %SF24 = icmp ne i32 %highbit23, 0
  %37 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload19, i32 1)
  %OF25 = extractvalue { i32, i1 } %37, 1
  store i32 %EAX26, ptr %RBP_N.44, align 1
  br label %bb.1

bb.6:                                             ; preds = %bb.1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.11
  %memload27 = load i32, ptr %stktop_4, align 1
  %38 = load i32, ptr %RBP_N.36, align 1
  %39 = sub i32 %memload27, %38
  %40 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload27, i32 %38)
  %CF28 = extractvalue { i32, i1 } %40, 1
  %ZF29 = icmp eq i32 %39, 0
  %highbit30 = and i32 -2147483648, %39
  %SF31 = icmp ne i32 %highbit30, 0
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload27, i32 %38)
  %OF32 = extractvalue { i32, i1 } %41, 1
  %42 = and i32 %39, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = and i32 %43, 1
  %PF33 = icmp eq i32 %44, 0
  %CmpSFOF_JGE78 = icmp eq i1 %SF31, %OF32
  br i1 %CmpSFOF_JGE78, label %bb.12, label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload34 = load i64, ptr %RBP_N.32, align 1
  %memload35 = load i64, ptr %stktop_4, align 1
  %45 = trunc i64 %memload35 to i32
  %RCX36 = sext i32 %45 to i64
  %memref-idxreg37 = mul i64 4, %RCX36
  %memref-basereg38 = add i64 %memload34, %memref-idxreg37
  %46 = inttoptr i64 %memref-basereg38 to ptr
  %memload39 = load i32, ptr %46, align 1
  %47 = sext i32 %memload39 to i64
  %48 = lshr i64 %47, 32
  %EDX40 = trunc i64 %48 to i32
  %49 = sext i32 %memload39 to i64
  %50 = sext i32 %EDX40 to i64
  %div_hb_ls41 = shl nuw i64 %50, 32
  %dividend42 = or i64 %div_hb_ls41, %49
  %51 = sext i32 2 to i64
  %div_q43 = sdiv i64 %dividend42, %51
  %EAX44 = trunc i64 %div_q43 to i32
  %div_r45 = srem i64 %dividend42, %51
  %EDX46 = trunc i64 %div_r45 to i32
  %52 = sub i32 %EDX46, 0
  %53 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX46, i32 0)
  %CF47 = extractvalue { i32, i1 } %53, 1
  %ZF48 = icmp eq i32 %52, 0
  %highbit49 = and i32 -2147483648, %52
  %SF50 = icmp ne i32 %highbit49, 0
  %54 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX46, i32 0)
  %OF51 = extractvalue { i32, i1 } %54, 1
  %55 = and i32 %52, 255
  %56 = call i32 @llvm.ctpop.i32(i32 %55)
  %57 = and i32 %56, 1
  %PF52 = icmp eq i32 %57, 0
  %CmpZF_JNE79 = icmp eq i1 %ZF48, false
  br i1 %CmpZF_JNE79, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload53 = load i32, ptr %RBP_N.40, align 1
  %EAX60 = add i32 %memload53, 1
  %58 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload53, i32 1)
  %CF54 = extractvalue { i32, i1 } %58, 1
  %59 = and i32 %EAX60, 255
  %60 = call i32 @llvm.ctpop.i32(i32 %59)
  %61 = and i32 %60, 1
  %PF55 = icmp eq i32 %61, 0
  %ZF56 = icmp eq i32 %EAX60, 0
  %highbit57 = and i32 -2147483648, %EAX60
  %SF58 = icmp ne i32 %highbit57, 0
  %62 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload53, i32 1)
  %OF59 = extractvalue { i32, i1 } %62, 1
  store i32 %EAX60, ptr %RBP_N.40, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.8
  br label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload61 = load i32, ptr %stktop_4, align 1
  %EAX68 = add i32 %memload61, 1
  %63 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload61, i32 1)
  %CF62 = extractvalue { i32, i1 } %63, 1
  %64 = and i32 %EAX68, 255
  %65 = call i32 @llvm.ctpop.i32(i32 %64)
  %66 = and i32 %65, 1
  %PF63 = icmp eq i32 %66, 0
  %ZF64 = icmp eq i32 %EAX68, 0
  %highbit65 = and i32 -2147483648, %EAX68
  %SF66 = icmp ne i32 %highbit65, 0
  %67 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload61, i32 1)
  %OF67 = extractvalue { i32, i1 } %67, 1
  store i32 %EAX68, ptr %stktop_4, align 1
  br label %bb.7

bb.12:                                            ; preds = %bb.7
  %memload69 = load i32, ptr %RBP_N.40, align 1
  %68 = load i32, ptr %RBP_N.20, align 1
  %69 = sub i32 %memload69, %68
  %70 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload69, i32 %68)
  %CF70 = extractvalue { i32, i1 } %70, 1
  %ZF71 = icmp eq i32 %69, 0
  %highbit72 = and i32 -2147483648, %69
  %SF73 = icmp ne i32 %highbit72, 0
  %71 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload69, i32 %68)
  %OF74 = extractvalue { i32, i1 } %71, 1
  %72 = and i32 %69, 255
  %73 = call i32 @llvm.ctpop.i32(i32 %72)
  %74 = and i32 %73, 1
  %PF75 = icmp eq i32 %74, 0
  %SFAndOF_JL = icmp ne i1 %SF73, %OF74
  br i1 %SFAndOF_JL, label %bb.14, label %bb.13

bb.13:                                            ; preds = %bb.12
  %RAX = ptrtoint ptr @rodata_12 to i64
  store i64 %RAX, ptr %RBP_N.8, align 1
  br label %bb.15

bb.14:                                            ; preds = %bb.12
  %RAX76 = ptrtoint ptr getelementptr inbounds ([7 x i8], ptr @rodata_12, i32 0, i32 4) to i64, !ROData_Index !1
  store i64 %RAX76, ptr %RBP_N.8, align 1
  br label %bb.15

bb.15:                                            ; preds = %bb.14, %bb.13
  %memload77 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload77
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

!0 = !{i64 8192}
!1 = !{ptr getelementptr inbounds ([7 x i8], ptr @rodata_12, i32 0, i32 4)}
