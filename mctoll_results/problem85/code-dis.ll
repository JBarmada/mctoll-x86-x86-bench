; ModuleID = 'code.so'
source_filename = "code.so"

@0 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !ROData_SecInfo !0

declare dso_local i32 @sprintf(ptr, ptr, ...)

declare dso_local ptr @malloc(i64)

define dso_local i64 @func0(i32 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 46
  %6 = inttoptr i64 %5 to ptr
  %7 = add i64 %tos, 52
  %RBP_N.4 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %8 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  %memload = load i32, ptr %RBP_N.4, align 1
  %EAX = call i32 (ptr, ptr, ...) @sprintf(ptr %6, ptr @0, i32 %memload)
  store i32 0, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload1 = load i64, ptr %RBP_N.20, align 1
  %9 = trunc i64 %memload1 to i32
  %RAX = sext i32 %9 to i64
  %10 = getelementptr i8, ptr %6, i64 %RAX
  %memload2 = load i32, ptr %10, align 1
  %11 = trunc i32 %memload2 to i8
  %EAX3 = sext i8 %11 to i32
  %12 = sub i32 %EAX3, 0
  %13 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX3, i32 0)
  %CF = extractvalue { i32, i1 } %13, 1
  %ZF = icmp eq i32 %12, 0
  %highbit = and i32 -2147483648, %12
  %SF = icmp ne i32 %highbit, 0
  %14 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX3, i32 0)
  %OF = extractvalue { i32, i1 } %14, 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = and i32 %16, 1
  %PF = icmp eq i32 %17, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload4 = load i64, ptr %RBP_N.20, align 1
  %18 = trunc i64 %memload4 to i32
  %RAX5 = sext i32 %18 to i64
  %19 = getelementptr i8, ptr %6, i64 %RAX5
  %memload7 = load i32, ptr %19, align 1
  %20 = trunc i32 %memload7 to i8
  %EAX8 = sext i8 %20 to i32
  %EAX15 = sub i32 %EAX8, 48
  %21 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX8, i32 48)
  %CF9 = extractvalue { i32, i1 } %21, 1
  %22 = and i32 %EAX15, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF10 = icmp eq i32 %24, 0
  %ZF11 = icmp eq i32 %EAX15, 0
  %highbit12 = and i32 -2147483648, %EAX15
  %SF13 = icmp ne i32 %highbit12, 0
  %25 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX8, i32 48)
  %OF14 = extractvalue { i32, i1 } %25, 1
  %memload16 = load i32, ptr %RBP_N.16, align 1
  %EAX18 = add i32 %EAX15, %memload16
  %26 = and i32 %EAX18, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = and i32 %27, 1
  %PF17 = icmp eq i32 %28, 0
  store i32 %EAX18, ptr %RBP_N.16, align 1
  %memload19 = load i32, ptr %RBP_N.20, align 1
  %EAX26 = add i32 %memload19, 1
  %29 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload19, i32 1)
  %CF20 = extractvalue { i32, i1 } %29, 1
  %30 = and i32 %EAX26, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = and i32 %31, 1
  %PF21 = icmp eq i32 %32, 0
  %ZF22 = icmp eq i32 %EAX26, 0
  %highbit23 = and i32 -2147483648, %EAX26
  %SF24 = icmp ne i32 %highbit23, 0
  %33 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload19, i32 1)
  %OF25 = extractvalue { i32, i1 } %33, 1
  store i32 %EAX26, ptr %RBP_N.20, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %34 = zext i32 33 to i64
  %35 = call ptr @malloc(i64 %34)
  %RAX27 = ptrtoint ptr %35 to i64
  store i64 %RAX27, ptr %RBP_N.32, align 1
  store i32 0, ptr %RBP_N.36, align 1
  %36 = load i32, ptr %RBP_N.16, align 1
  %37 = zext i32 %36 to i64
  %38 = zext i32 0 to i64
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
  %CmpZF_JNE = icmp eq i1 %ZF29, false
  br i1 %CmpZF_JNE, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload34 = load i64, ptr %RBP_N.32, align 1
  %memload35 = load i32, ptr %RBP_N.36, align 1
  %EDX = add i32 %memload35, 1
  %45 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload35, i32 1)
  %CF36 = extractvalue { i32, i1 } %45, 1
  %46 = and i32 %EDX, 255
  %47 = call i32 @llvm.ctpop.i32(i32 %46)
  %48 = and i32 %47, 1
  %PF37 = icmp eq i32 %48, 0
  %ZF38 = icmp eq i32 %EDX, 0
  %highbit39 = and i32 -2147483648, %EDX
  %SF40 = icmp ne i32 %highbit39, 0
  %49 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload35, i32 1)
  %OF41 = extractvalue { i32, i1 } %49, 1
  store i32 %EDX, ptr %RBP_N.36, align 1
  %RCX = sext i32 %memload35 to i64
  %memref-basereg = add i64 %memload34, %RCX
  %50 = inttoptr i64 %memref-basereg to ptr
  store i8 48, ptr %50, align 1
  br label %bb.9

bb.5:                                             ; preds = %bb.3
  br label %bb.6

bb.6:                                             ; preds = %bb.7, %bb.5
  %51 = load i32, ptr %RBP_N.16, align 1
  %52 = zext i32 %51 to i64
  %53 = zext i32 0 to i64
  %54 = sub i64 %52, %53
  %55 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %52, i64 %53)
  %CF42 = extractvalue { i64, i1 } %55, 1
  %ZF43 = icmp eq i64 %54, 0
  %highbit44 = and i64 -9223372036854775808, %54
  %SF45 = icmp ne i64 %highbit44, 0
  %56 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %52, i64 %53)
  %OF46 = extractvalue { i64, i1 } %56, 1
  %57 = and i64 %54, 255
  %58 = call i64 @llvm.ctpop.i64(i64 %57)
  %59 = and i64 %58, 1
  %PF47 = icmp eq i64 %59, 0
  %CmpZF_JLE = icmp eq i1 %ZF43, true
  %CmpOF_JLE = icmp ne i1 %SF45, %OF46
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload48 = load i32, ptr %RBP_N.16, align 1
  %60 = sext i32 %memload48 to i64
  %61 = lshr i64 %60, 32
  %EDX49 = trunc i64 %61 to i32
  %62 = sext i32 %memload48 to i64
  %63 = sext i32 %EDX49 to i64
  %div_hb_ls = shl nuw i64 %63, 32
  %dividend = or i64 %div_hb_ls, %62
  %64 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %64
  %EAX50 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %64
  %EDX51 = trunc i64 %div_r to i32
  %EDX58 = add i32 %EDX51, 48
  %65 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EDX51, i32 48)
  %CF52 = extractvalue { i32, i1 } %65, 1
  %66 = and i32 %EDX58, 255
  %67 = call i32 @llvm.ctpop.i32(i32 %66)
  %68 = and i32 %67, 1
  %PF53 = icmp eq i32 %68, 0
  %ZF54 = icmp eq i32 %EDX58, 0
  %highbit55 = and i32 -2147483648, %EDX58
  %SF56 = icmp ne i32 %highbit55, 0
  %69 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EDX51, i32 48)
  %OF57 = extractvalue { i32, i1 } %69, 1
  %memload59 = load i64, ptr %RBP_N.32, align 1
  %memload60 = load i32, ptr %RBP_N.36, align 1
  %ESI = add i32 %memload60, 1
  %70 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload60, i32 1)
  %CF61 = extractvalue { i32, i1 } %70, 1
  %71 = and i32 %ESI, 255
  %72 = call i32 @llvm.ctpop.i32(i32 %71)
  %73 = and i32 %72, 1
  %PF62 = icmp eq i32 %73, 0
  %ZF63 = icmp eq i32 %ESI, 0
  %highbit64 = and i32 -2147483648, %ESI
  %SF65 = icmp ne i32 %highbit64, 0
  %74 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload60, i32 1)
  %OF66 = extractvalue { i32, i1 } %74, 1
  store i32 %ESI, ptr %RBP_N.36, align 1
  %RCX67 = sext i32 %memload60 to i64
  %memref-basereg68 = add i64 %memload59, %RCX67
  %75 = trunc i32 %EDX58 to i8
  %76 = inttoptr i64 %memref-basereg68 to ptr
  store i8 %75, ptr %76, align 1
  %memload69 = load i32, ptr %RBP_N.16, align 1
  %77 = sext i32 %memload69 to i64
  %78 = lshr i64 %77, 32
  %EDX70 = trunc i64 %78 to i32
  %79 = sext i32 %memload69 to i64
  %80 = sext i32 %EDX70 to i64
  %div_hb_ls71 = shl nuw i64 %80, 32
  %dividend72 = or i64 %div_hb_ls71, %79
  %81 = sext i32 2 to i64
  %div_q73 = sdiv i64 %dividend72, %81
  %EAX74 = trunc i64 %div_q73 to i32
  %div_r75 = srem i64 %dividend72, %81
  %EDX76 = trunc i64 %div_r75 to i32
  store i32 %EAX74, ptr %RBP_N.16, align 1
  br label %bb.6

bb.8:                                             ; preds = %bb.6
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.4
  %memload77 = load i64, ptr %RBP_N.32, align 1
  %memload78 = load i64, ptr %RBP_N.36, align 1
  %82 = trunc i64 %memload78 to i32
  %RCX79 = sext i32 %82 to i64
  %memref-basereg80 = add i64 %memload77, %RCX79
  %83 = inttoptr i64 %memref-basereg80 to ptr
  store i8 0, ptr %83, align 1
  store i32 0, ptr %RBP_N.40, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.11
  %memload81 = load i32, ptr %RBP_N.40, align 1
  store i32 %memload81, ptr %stktop_8, align 1
  %memload82 = load i32, ptr %RBP_N.36, align 1
  %84 = sext i32 %memload82 to i64
  %85 = lshr i64 %84, 32
  %EDX83 = trunc i64 %85 to i32
  %86 = sext i32 %memload82 to i64
  %87 = sext i32 %EDX83 to i64
  %div_hb_ls84 = shl nuw i64 %87, 32
  %dividend85 = or i64 %div_hb_ls84, %86
  %88 = sext i32 2 to i64
  %div_q86 = sdiv i64 %dividend85, %88
  %EAX87 = trunc i64 %div_q86 to i32
  %div_r88 = srem i64 %dividend85, %88
  %EDX89 = trunc i64 %div_r88 to i32
  %memload90 = load i32, ptr %stktop_8, align 1
  %89 = sub i32 %memload90, %EAX87
  %90 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload90, i32 %EAX87)
  %CF91 = extractvalue { i32, i1 } %90, 1
  %ZF92 = icmp eq i32 %89, 0
  %highbit93 = and i32 -2147483648, %89
  %SF94 = icmp ne i32 %highbit93, 0
  %91 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload90, i32 %EAX87)
  %OF95 = extractvalue { i32, i1 } %91, 1
  %92 = and i32 %89, 255
  %93 = call i32 @llvm.ctpop.i32(i32 %92)
  %94 = and i32 %93, 1
  %PF96 = icmp eq i32 %94, 0
  %CmpSFOF_JGE = icmp eq i1 %SF94, %OF95
  br i1 %CmpSFOF_JGE, label %bb.12, label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload97 = load i64, ptr %RBP_N.32, align 1
  %memload98 = load i64, ptr %RBP_N.40, align 1
  %95 = trunc i64 %memload98 to i32
  %RCX99 = sext i32 %95 to i64
  %memref-basereg100 = add i64 %memload97, %RCX99
  %96 = inttoptr i64 %memref-basereg100 to ptr
  %memload101 = load i8, ptr %96, align 1
  %97 = ptrtoint ptr %stktop_8 to i64
  %98 = add i64 %97, 7
  %99 = inttoptr i64 %98 to ptr
  store i8 %memload101, ptr %99, align 1
  %memload102 = load i64, ptr %RBP_N.32, align 1
  %memload103 = load i32, ptr %RBP_N.36, align 1
  %100 = load i32, ptr %RBP_N.40, align 1
  %ECX = sub i32 %memload103, %100
  %101 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload103, i32 %100)
  %CF104 = extractvalue { i32, i1 } %101, 1
  %ZF105 = icmp eq i32 %ECX, 0
  %highbit106 = and i32 -2147483648, %ECX
  %SF107 = icmp ne i32 %highbit106, 0
  %102 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload103, i32 %100)
  %OF108 = extractvalue { i32, i1 } %102, 1
  %103 = and i32 %ECX, 255
  %104 = call i32 @llvm.ctpop.i32(i32 %103)
  %105 = and i32 %104, 1
  %PF109 = icmp eq i32 %105, 0
  %ECX116 = sub i32 %ECX, 1
  %106 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ECX, i32 1)
  %CF110 = extractvalue { i32, i1 } %106, 1
  %107 = and i32 %ECX116, 255
  %108 = call i32 @llvm.ctpop.i32(i32 %107)
  %109 = and i32 %108, 1
  %PF111 = icmp eq i32 %109, 0
  %ZF112 = icmp eq i32 %ECX116, 0
  %highbit113 = and i32 -2147483648, %ECX116
  %SF114 = icmp ne i32 %highbit113, 0
  %110 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ECX, i32 1)
  %OF115 = extractvalue { i32, i1 } %110, 1
  %RCX117 = sext i32 %ECX116 to i64
  %memref-basereg118 = add i64 %memload102, %RCX117
  %111 = inttoptr i64 %memref-basereg118 to ptr
  %memload119 = load i8, ptr %111, align 1
  %memload120 = load i64, ptr %RBP_N.32, align 1
  %memload121 = load i64, ptr %RBP_N.40, align 1
  %112 = trunc i64 %memload121 to i32
  %RCX122 = sext i32 %112 to i64
  %memref-basereg123 = add i64 %memload120, %RCX122
  %113 = inttoptr i64 %memref-basereg123 to ptr
  store i8 %memload119, ptr %113, align 1
  %114 = ptrtoint ptr %stktop_8 to i64
  %115 = add i64 %114, 7
  %116 = inttoptr i64 %115 to ptr
  %memload124 = load i8, ptr %116, align 1
  %memload125 = load i64, ptr %RBP_N.32, align 1
  %memload126 = load i32, ptr %RBP_N.36, align 1
  %117 = load i32, ptr %RBP_N.40, align 1
  %ECX127 = sub i32 %memload126, %117
  %118 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload126, i32 %117)
  %CF128 = extractvalue { i32, i1 } %118, 1
  %ZF129 = icmp eq i32 %ECX127, 0
  %highbit130 = and i32 -2147483648, %ECX127
  %SF131 = icmp ne i32 %highbit130, 0
  %119 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload126, i32 %117)
  %OF132 = extractvalue { i32, i1 } %119, 1
  %120 = and i32 %ECX127, 255
  %121 = call i32 @llvm.ctpop.i32(i32 %120)
  %122 = and i32 %121, 1
  %PF133 = icmp eq i32 %122, 0
  %ECX140 = sub i32 %ECX127, 1
  %123 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ECX127, i32 1)
  %CF134 = extractvalue { i32, i1 } %123, 1
  %124 = and i32 %ECX140, 255
  %125 = call i32 @llvm.ctpop.i32(i32 %124)
  %126 = and i32 %125, 1
  %PF135 = icmp eq i32 %126, 0
  %ZF136 = icmp eq i32 %ECX140, 0
  %highbit137 = and i32 -2147483648, %ECX140
  %SF138 = icmp ne i32 %highbit137, 0
  %127 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ECX127, i32 1)
  %OF139 = extractvalue { i32, i1 } %127, 1
  %RCX141 = sext i32 %ECX140 to i64
  %memref-basereg142 = add i64 %memload125, %RCX141
  %128 = inttoptr i64 %memref-basereg142 to ptr
  store i8 %memload124, ptr %128, align 1
  %memload143 = load i32, ptr %RBP_N.40, align 1
  %EAX150 = add i32 %memload143, 1
  %129 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload143, i32 1)
  %CF144 = extractvalue { i32, i1 } %129, 1
  %130 = and i32 %EAX150, 255
  %131 = call i32 @llvm.ctpop.i32(i32 %130)
  %132 = and i32 %131, 1
  %PF145 = icmp eq i32 %132, 0
  %ZF146 = icmp eq i32 %EAX150, 0
  %highbit147 = and i32 -2147483648, %EAX150
  %SF148 = icmp ne i32 %highbit147, 0
  %133 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload143, i32 1)
  %OF149 = extractvalue { i32, i1 } %133, 1
  store i32 %EAX150, ptr %RBP_N.40, align 1
  br label %bb.10

bb.12:                                            ; preds = %bb.10
  %memload151 = load i64, ptr %RBP_N.32, align 1
  ret i64 %memload151
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
