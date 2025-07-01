; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1, i32 %arg2, i32 %arg3, i64 %arg4) {
entry:
  %stktop_4 = alloca i8, i32 48, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.36 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 16
  %RBP_N.32 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 20
  %RBP_N.28 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 24
  %RBP_N.24 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.16 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 36
  %RBP_N.12 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 40
  %RBP_N.8 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i32 %arg3, ptr %RBP_N.16, align 1
  store i64 %arg4, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.9
  %memload = load i32, ptr %RBP_N.28, align 1
  %memload1 = load i32, ptr %RBP_N.12, align 1
  %ECX = sub i32 %memload1, 1
  %8 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload1, i32 1)
  %CF = extractvalue { i32, i1 } %8, 1
  %9 = and i32 %ECX, 255
  %10 = call i32 @llvm.ctpop.i32(i32 %9)
  %11 = and i32 %10, 1
  %PF = icmp eq i32 %11, 0
  %ZF = icmp eq i32 %ECX, 0
  %highbit = and i32 -2147483648, %ECX
  %SF = icmp ne i32 %highbit, 0
  %12 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload1, i32 1)
  %OF = extractvalue { i32, i1 } %12, 1
  %13 = sub i32 %memload, %ECX
  %14 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %ECX)
  %CF2 = extractvalue { i32, i1 } %14, 1
  %ZF3 = icmp eq i32 %13, 0
  %highbit4 = and i32 -2147483648, %13
  %SF5 = icmp ne i32 %highbit4, 0
  %15 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %ECX)
  %OF6 = extractvalue { i32, i1 } %15, 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = and i32 %17, 1
  %PF7 = icmp eq i32 %18, 0
  %CmpSFOF_JGE = icmp eq i1 %SF5, %OF6
  br i1 %CmpSFOF_JGE, label %bb.10, label %bb.2

bb.2:                                             ; preds = %bb.1
  store i32 0, ptr %RBP_N.32, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %memload8 = load i32, ptr %RBP_N.32, align 1
  %memload9 = load i32, ptr %RBP_N.12, align 1
  %19 = load i32, ptr %RBP_N.28, align 1
  %ECX10 = sub i32 %memload9, %19
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload9, i32 %19)
  %CF11 = extractvalue { i32, i1 } %20, 1
  %ZF12 = icmp eq i32 %ECX10, 0
  %highbit13 = and i32 -2147483648, %ECX10
  %SF14 = icmp ne i32 %highbit13, 0
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload9, i32 %19)
  %OF15 = extractvalue { i32, i1 } %21, 1
  %22 = and i32 %ECX10, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF16 = icmp eq i32 %24, 0
  %ECX23 = sub i32 %ECX10, 1
  %25 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ECX10, i32 1)
  %CF17 = extractvalue { i32, i1 } %25, 1
  %26 = and i32 %ECX23, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF18 = icmp eq i32 %28, 0
  %ZF19 = icmp eq i32 %ECX23, 0
  %highbit20 = and i32 -2147483648, %ECX23
  %SF21 = icmp ne i32 %highbit20, 0
  %29 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ECX10, i32 1)
  %OF22 = extractvalue { i32, i1 } %29, 1
  %30 = sub i32 %memload8, %ECX23
  %31 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload8, i32 %ECX23)
  %CF24 = extractvalue { i32, i1 } %31, 1
  %ZF25 = icmp eq i32 %30, 0
  %highbit26 = and i32 -2147483648, %30
  %SF27 = icmp ne i32 %highbit26, 0
  %32 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload8, i32 %ECX23)
  %OF28 = extractvalue { i32, i1 } %32, 1
  %33 = and i32 %30, 255
  %34 = call i32 @llvm.ctpop.i32(i32 %33)
  %35 = and i32 %34, 1
  %PF29 = icmp eq i32 %35, 0
  %CmpSFOF_JGE137 = icmp eq i1 %SF27, %OF28
  br i1 %CmpSFOF_JGE137, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload30 = load i64, ptr %RBP_N.8, align 1
  %memload31 = load i64, ptr %RBP_N.32, align 1
  %36 = trunc i64 %memload31 to i32
  %RCX = sext i32 %36 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload30, %memref-idxreg
  %37 = inttoptr i64 %memref-basereg to ptr
  %memload32 = load i32, ptr %37, align 1
  %memload33 = load i64, ptr %RBP_N.8, align 1
  %memload34 = load i32, ptr %RBP_N.32, align 1
  %EDX = add i32 %memload34, 1
  %38 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload34, i32 1)
  %CF35 = extractvalue { i32, i1 } %38, 1
  %39 = and i32 %EDX, 255
  %40 = call i32 @llvm.ctpop.i32(i32 %39)
  %41 = and i32 %40, 1
  %PF36 = icmp eq i32 %41, 0
  %ZF37 = icmp eq i32 %EDX, 0
  %highbit38 = and i32 -2147483648, %EDX
  %SF39 = icmp ne i32 %highbit38, 0
  %42 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload34, i32 1)
  %OF40 = extractvalue { i32, i1 } %42, 1
  %RDX = sext i32 %EDX to i64
  %memref-idxreg41 = mul i64 4, %RDX
  %memref-basereg42 = add i64 %memload33, %memref-idxreg41
  %43 = inttoptr i64 %memref-basereg42 to ptr
  %44 = load i32, ptr %43, align 1
  %45 = sub i32 %memload32, %44
  %46 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload32, i32 %44)
  %CF43 = extractvalue { i32, i1 } %46, 1
  %ZF44 = icmp eq i32 %45, 0
  %highbit45 = and i32 -2147483648, %45
  %SF46 = icmp ne i32 %highbit45, 0
  %47 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload32, i32 %44)
  %OF47 = extractvalue { i32, i1 } %47, 1
  %48 = and i32 %45, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48)
  %50 = and i32 %49, 1
  %PF48 = icmp eq i32 %50, 0
  %CmpZF_JLE = icmp eq i1 %ZF44, true
  %CmpOF_JLE = icmp ne i1 %SF46, %OF47
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload49 = load i64, ptr %RBP_N.8, align 1
  %memload50 = load i64, ptr %RBP_N.32, align 1
  %51 = trunc i64 %memload50 to i32
  %RCX51 = sext i32 %51 to i64
  %memref-idxreg52 = mul i64 4, %RCX51
  %memref-basereg53 = add i64 %memload49, %memref-idxreg52
  %52 = inttoptr i64 %memref-basereg53 to ptr
  %memload54 = load i32, ptr %52, align 1
  store i32 %memload54, ptr %RBP_N.36, align 1
  %memload55 = load i64, ptr %RBP_N.8, align 1
  %memload56 = load i32, ptr %RBP_N.32, align 1
  %ECX63 = add i32 %memload56, 1
  %53 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload56, i32 1)
  %CF57 = extractvalue { i32, i1 } %53, 1
  %54 = and i32 %ECX63, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54)
  %56 = and i32 %55, 1
  %PF58 = icmp eq i32 %56, 0
  %ZF59 = icmp eq i32 %ECX63, 0
  %highbit60 = and i32 -2147483648, %ECX63
  %SF61 = icmp ne i32 %highbit60, 0
  %57 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload56, i32 1)
  %OF62 = extractvalue { i32, i1 } %57, 1
  %RCX64 = sext i32 %ECX63 to i64
  %memref-idxreg65 = mul i64 4, %RCX64
  %memref-basereg66 = add i64 %memload55, %memref-idxreg65
  %58 = inttoptr i64 %memref-basereg66 to ptr
  %memload67 = load i32, ptr %58, align 1
  %memload68 = load i64, ptr %RBP_N.8, align 1
  %memload69 = load i64, ptr %RBP_N.32, align 1
  %59 = trunc i64 %memload69 to i32
  %RCX70 = sext i32 %59 to i64
  %memref-idxreg71 = mul i64 4, %RCX70
  %memref-basereg72 = add i64 %memload68, %memref-idxreg71
  %60 = inttoptr i64 %memref-basereg72 to ptr
  store i32 %memload67, ptr %60, align 1
  %memload73 = load i32, ptr %RBP_N.36, align 1
  %memload74 = load i64, ptr %RBP_N.8, align 1
  %memload75 = load i32, ptr %RBP_N.32, align 1
  %ECX82 = add i32 %memload75, 1
  %61 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload75, i32 1)
  %CF76 = extractvalue { i32, i1 } %61, 1
  %62 = and i32 %ECX82, 255
  %63 = call i32 @llvm.ctpop.i32(i32 %62)
  %64 = and i32 %63, 1
  %PF77 = icmp eq i32 %64, 0
  %ZF78 = icmp eq i32 %ECX82, 0
  %highbit79 = and i32 -2147483648, %ECX82
  %SF80 = icmp ne i32 %highbit79, 0
  %65 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload75, i32 1)
  %OF81 = extractvalue { i32, i1 } %65, 1
  %RCX83 = sext i32 %ECX82 to i64
  %memref-idxreg84 = mul i64 4, %RCX83
  %memref-basereg85 = add i64 %memload74, %memref-idxreg84
  %66 = inttoptr i64 %memref-basereg85 to ptr
  store i32 %memload73, ptr %66, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload86 = load i32, ptr %RBP_N.32, align 1
  %EAX = add i32 %memload86, 1
  %67 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload86, i32 1)
  %CF87 = extractvalue { i32, i1 } %67, 1
  %68 = and i32 %EAX, 255
  %69 = call i32 @llvm.ctpop.i32(i32 %68)
  %70 = and i32 %69, 1
  %PF88 = icmp eq i32 %70, 0
  %ZF89 = icmp eq i32 %EAX, 0
  %highbit90 = and i32 -2147483648, %EAX
  %SF91 = icmp ne i32 %highbit90, 0
  %71 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload86, i32 1)
  %OF92 = extractvalue { i32, i1 } %71, 1
  store i32 %EAX, ptr %RBP_N.32, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.3
  br label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload93 = load i32, ptr %RBP_N.28, align 1
  %EAX100 = add i32 %memload93, 1
  %72 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload93, i32 1)
  %CF94 = extractvalue { i32, i1 } %72, 1
  %73 = and i32 %EAX100, 255
  %74 = call i32 @llvm.ctpop.i32(i32 %73)
  %75 = and i32 %74, 1
  %PF95 = icmp eq i32 %75, 0
  %ZF96 = icmp eq i32 %EAX100, 0
  %highbit97 = and i32 -2147483648, %EAX100
  %SF98 = icmp ne i32 %highbit97, 0
  %76 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload93, i32 1)
  %OF99 = extractvalue { i32, i1 } %76, 1
  store i32 %EAX100, ptr %RBP_N.28, align 1
  br label %bb.1

bb.10:                                            ; preds = %bb.1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.12
  %memload101 = load i32, ptr %stktop_4, align 1
  %77 = load i32, ptr %RBP_N.16, align 1
  %78 = sub i32 %memload101, %77
  %79 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload101, i32 %77)
  %CF102 = extractvalue { i32, i1 } %79, 1
  %ZF103 = icmp eq i32 %78, 0
  %highbit104 = and i32 -2147483648, %78
  %SF105 = icmp ne i32 %highbit104, 0
  %80 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload101, i32 %77)
  %OF106 = extractvalue { i32, i1 } %80, 1
  %81 = and i32 %78, 255
  %82 = call i32 @llvm.ctpop.i32(i32 %81)
  %83 = and i32 %82, 1
  %PF107 = icmp eq i32 %83, 0
  %CmpSFOF_JGE138 = icmp eq i1 %SF105, %OF106
  br i1 %CmpSFOF_JGE138, label %bb.13, label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload108 = load i64, ptr %RBP_N.8, align 1
  %memload109 = load i32, ptr %RBP_N.12, align 1
  %84 = load i32, ptr %RBP_N.16, align 1
  %ECX110 = sub i32 %memload109, %84
  %85 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload109, i32 %84)
  %CF111 = extractvalue { i32, i1 } %85, 1
  %ZF112 = icmp eq i32 %ECX110, 0
  %highbit113 = and i32 -2147483648, %ECX110
  %SF114 = icmp ne i32 %highbit113, 0
  %86 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload109, i32 %84)
  %OF115 = extractvalue { i32, i1 } %86, 1
  %87 = and i32 %ECX110, 255
  %88 = call i32 @llvm.ctpop.i32(i32 %87)
  %89 = and i32 %88, 1
  %PF116 = icmp eq i32 %89, 0
  %memload117 = load i32, ptr %stktop_4, align 1
  %ECX119 = add i32 %ECX110, %memload117
  %90 = and i32 %ECX119, 255
  %91 = call i32 @llvm.ctpop.i32(i32 %90)
  %92 = and i32 %91, 1
  %PF118 = icmp eq i32 %92, 0
  %RCX120 = sext i32 %ECX119 to i64
  %memref-idxreg121 = mul i64 4, %RCX120
  %memref-basereg122 = add i64 %memload108, %memref-idxreg121
  %93 = inttoptr i64 %memref-basereg122 to ptr
  %memload123 = load i32, ptr %93, align 1
  %memload124 = load i64, ptr %RBP_N.24, align 1
  %memload125 = load i64, ptr %stktop_4, align 1
  %94 = trunc i64 %memload125 to i32
  %RCX126 = sext i32 %94 to i64
  %memref-idxreg127 = mul i64 4, %RCX126
  %memref-basereg128 = add i64 %memload124, %memref-idxreg127
  %95 = inttoptr i64 %memref-basereg128 to ptr
  store i32 %memload123, ptr %95, align 1
  %memload129 = load i32, ptr %stktop_4, align 1
  %EAX136 = add i32 %memload129, 1
  %96 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload129, i32 1)
  %CF130 = extractvalue { i32, i1 } %96, 1
  %97 = and i32 %EAX136, 255
  %98 = call i32 @llvm.ctpop.i32(i32 %97)
  %99 = and i32 %98, 1
  %PF131 = icmp eq i32 %99, 0
  %ZF132 = icmp eq i32 %EAX136, 0
  %highbit133 = and i32 -2147483648, %EAX136
  %SF134 = icmp ne i32 %highbit133, 0
  %100 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload129, i32 1)
  %OF135 = extractvalue { i32, i1 } %100, 1
  store i32 %EAX136, ptr %stktop_4, align 1
  br label %bb.11

bb.13:                                            ; preds = %bb.11
  ret i32 %memload101
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
