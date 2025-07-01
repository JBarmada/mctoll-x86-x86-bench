; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

declare dso_local i32 @atoi(ptr)

define dso_local i32 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 17
  %RBP_N.39 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 18
  %3 = inttoptr i64 %2 to ptr
  %4 = add i64 %tos, 19
  %RBP_N.37 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 21
  %7 = inttoptr i64 %6 to ptr
  %8 = add i64 %tos, 22
  %RBP_N.34 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 23
  %RBP_N.33 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %11 to ptr
  %12 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %12 to ptr
  %13 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %13 to ptr
  %14 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %14 to ptr
  %15 = add i64 %tos, 52
  %RBP_N.4 = inttoptr i64 %15 to ptr
  %16 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %16 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  %memload = load i64, ptr %RBP_N.16, align 1
  %17 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %17)
  %18 = sub i64 %RAX, 10
  %19 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX, i64 10)
  %CF = extractvalue { i64, i1 } %19, 1
  %ZF = icmp eq i64 %18, 0
  %highbit = and i64 -9223372036854775808, %18
  %SF = icmp ne i64 %highbit, 0
  %20 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX, i64 10)
  %OF = extractvalue { i64, i1 } %20, 1
  %21 = and i64 %18, 255
  %22 = call i64 @llvm.ctpop.i64(i64 %21)
  %23 = and i64 %22, 1
  %PF = icmp eq i64 %23, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.31

bb.2:                                             ; preds = %entry
  store i32 0, ptr %RBP_N.32, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.14
  %24 = load i32, ptr %RBP_N.32, align 1
  %25 = zext i32 %24 to i64
  %26 = zext i32 10 to i64
  %27 = sub i64 %25, %26
  %28 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %25, i64 %26)
  %CF1 = extractvalue { i64, i1 } %28, 1
  %ZF2 = icmp eq i64 %27, 0
  %highbit3 = and i64 -9223372036854775808, %27
  %SF4 = icmp ne i64 %highbit3, 0
  %29 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %25, i64 %26)
  %OF5 = extractvalue { i64, i1 } %29, 1
  %30 = and i64 %27, 255
  %31 = call i64 @llvm.ctpop.i64(i64 %30)
  %32 = and i64 %31, 1
  %PF6 = icmp eq i64 %32, 0
  %CmpSFOF_JGE = icmp eq i1 %SF4, %OF5
  br i1 %CmpSFOF_JGE, label %bb.15, label %bb.4

bb.4:                                             ; preds = %bb.3
  %33 = load i32, ptr %RBP_N.32, align 1
  %34 = zext i32 %33 to i64
  %35 = zext i32 2 to i64
  %36 = sub i64 %34, %35
  %37 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %34, i64 %35)
  %CF7 = extractvalue { i64, i1 } %37, 1
  %ZF8 = icmp eq i64 %36, 0
  %highbit9 = and i64 -9223372036854775808, %36
  %SF10 = icmp ne i64 %highbit9, 0
  %38 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %34, i64 %35)
  %OF11 = extractvalue { i64, i1 } %38, 1
  %39 = and i64 %36, 255
  %40 = call i64 @llvm.ctpop.i64(i64 %39)
  %41 = and i64 %40, 1
  %PF12 = icmp eq i64 %41, 0
  %CmpZF_JE154 = icmp eq i1 %ZF8, true
  br i1 %CmpZF_JE154, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %42 = load i32, ptr %RBP_N.32, align 1
  %43 = zext i32 %42 to i64
  %44 = zext i32 5 to i64
  %45 = sub i64 %43, %44
  %46 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %43, i64 %44)
  %CF13 = extractvalue { i64, i1 } %46, 1
  %ZF14 = icmp eq i64 %45, 0
  %highbit15 = and i64 -9223372036854775808, %45
  %SF16 = icmp ne i64 %highbit15, 0
  %47 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %43, i64 %44)
  %OF17 = extractvalue { i64, i1 } %47, 1
  %48 = and i64 %45, 255
  %49 = call i64 @llvm.ctpop.i64(i64 %48)
  %50 = and i64 %49, 1
  %PF18 = icmp eq i64 %50, 0
  %CmpZF_JNE = icmp eq i1 %ZF14, false
  br i1 %CmpZF_JNE, label %bb.9, label %bb.6

bb.9:                                             ; preds = %bb.5
  %memload19 = load i64, ptr %RBP_N.16, align 1
  %memload20 = load i64, ptr %RBP_N.32, align 1
  %51 = trunc i64 %memload20 to i32
  %RCX = sext i32 %51 to i64
  %memref-basereg = add i64 %memload19, %RCX
  %52 = inttoptr i64 %memref-basereg to ptr
  %memload21 = load i32, ptr %52, align 1
  %53 = trunc i32 %memload21 to i8
  %EAX = sext i8 %53 to i32
  %54 = sub i32 %EAX, 48
  %55 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 48)
  %CF22 = extractvalue { i32, i1 } %55, 1
  %ZF23 = icmp eq i32 %54, 0
  %highbit24 = and i32 -2147483648, %54
  %SF25 = icmp ne i32 %highbit24, 0
  %56 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 48)
  %OF26 = extractvalue { i32, i1 } %56, 1
  %57 = and i32 %54, 255
  %58 = call i32 @llvm.ctpop.i32(i32 %57)
  %59 = and i32 %58, 1
  %PF27 = icmp eq i32 %59, 0
  %SFAndOF_JL = icmp ne i1 %SF25, %OF26
  br i1 %SFAndOF_JL, label %bb.11, label %bb.10

bb.10:                                            ; preds = %bb.9
  %memload28 = load i64, ptr %RBP_N.16, align 1
  %memload29 = load i64, ptr %RBP_N.32, align 1
  %60 = trunc i64 %memload29 to i32
  %RCX30 = sext i32 %60 to i64
  %memref-basereg31 = add i64 %memload28, %RCX30
  %61 = inttoptr i64 %memref-basereg31 to ptr
  %memload32 = load i32, ptr %61, align 1
  %62 = trunc i32 %memload32 to i8
  %EAX33 = sext i8 %62 to i32
  %63 = sub i32 %EAX33, 57
  %64 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX33, i32 57)
  %CF34 = extractvalue { i32, i1 } %64, 1
  %ZF35 = icmp eq i32 %63, 0
  %highbit36 = and i32 -2147483648, %63
  %SF37 = icmp ne i32 %highbit36, 0
  %65 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX33, i32 57)
  %OF38 = extractvalue { i32, i1 } %65, 1
  %66 = and i32 %63, 255
  %67 = call i32 @llvm.ctpop.i32(i32 %66)
  %68 = and i32 %67, 1
  %PF39 = icmp eq i32 %68, 0
  %CmpZF_JLE = icmp eq i1 %ZF35, true
  %CmpOF_JLE = icmp ne i1 %SF37, %OF38
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.12, label %bb.11

bb.12:                                            ; preds = %bb.10
  br label %bb.13

bb.11:                                            ; preds = %bb.10, %bb.9
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.31

bb.6:                                             ; preds = %bb.5, %bb.4
  %memload40 = load i64, ptr %RBP_N.16, align 1
  %memload41 = load i64, ptr %RBP_N.32, align 1
  %69 = trunc i64 %memload41 to i32
  %RCX42 = sext i32 %69 to i64
  %memref-basereg43 = add i64 %memload40, %RCX42
  %70 = inttoptr i64 %memref-basereg43 to ptr
  %memload44 = load i32, ptr %70, align 1
  %71 = trunc i32 %memload44 to i8
  %EAX45 = sext i8 %71 to i32
  %72 = sub i32 %EAX45, 45
  %73 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX45, i32 45)
  %CF46 = extractvalue { i32, i1 } %73, 1
  %ZF47 = icmp eq i32 %72, 0
  %highbit48 = and i32 -2147483648, %72
  %SF49 = icmp ne i32 %highbit48, 0
  %74 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX45, i32 45)
  %OF50 = extractvalue { i32, i1 } %74, 1
  %75 = and i32 %72, 255
  %76 = call i32 @llvm.ctpop.i32(i32 %75)
  %77 = and i32 %76, 1
  %PF51 = icmp eq i32 %77, 0
  %CmpZF_JE155 = icmp eq i1 %ZF47, true
  br i1 %CmpZF_JE155, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.31

bb.8:                                             ; preds = %bb.6
  br label %bb.13

bb.13:                                            ; preds = %bb.8, %bb.12
  br label %bb.14

bb.14:                                            ; preds = %bb.13
  %memload52 = load i32, ptr %RBP_N.32, align 1
  %EAX59 = add i32 %memload52, 1
  %78 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload52, i32 1)
  %CF53 = extractvalue { i32, i1 } %78, 1
  %79 = and i32 %EAX59, 255
  %80 = call i32 @llvm.ctpop.i32(i32 %79)
  %81 = and i32 %80, 1
  %PF54 = icmp eq i32 %81, 0
  %ZF55 = icmp eq i32 %EAX59, 0
  %highbit56 = and i32 -2147483648, %EAX59
  %SF57 = icmp ne i32 %highbit56, 0
  %82 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload52, i32 1)
  %OF58 = extractvalue { i32, i1 } %82, 1
  store i32 %EAX59, ptr %RBP_N.32, align 1
  br label %bb.3

bb.15:                                            ; preds = %bb.3
  %memload60 = load i64, ptr %RBP_N.16, align 1
  %83 = inttoptr i64 %memload60 to ptr
  %memload61 = load i8, ptr %83, align 1
  store i8 %memload61, ptr %7, align 1
  %memload62 = load i64, ptr %RBP_N.16, align 1
  %memref-disp = add i64 %memload62, 1
  %84 = inttoptr i64 %memref-disp to ptr
  %memload63 = load i8, ptr %84, align 1
  store i8 %memload63, ptr %RBP_N.34, align 1
  store i8 0, ptr %RBP_N.33, align 1
  %memload64 = load i64, ptr %RBP_N.16, align 1
  %memref-disp65 = add i64 %memload64, 3
  %85 = inttoptr i64 %memref-disp65 to ptr
  %memload66 = load i8, ptr %85, align 1
  store i8 %memload66, ptr %3, align 1
  %memload67 = load i64, ptr %RBP_N.16, align 1
  %memref-disp68 = add i64 %memload67, 4
  %86 = inttoptr i64 %memref-disp68 to ptr
  %memload69 = load i8, ptr %86, align 1
  store i8 %memload69, ptr %RBP_N.37, align 1
  store i8 0, ptr %RBP_N.36, align 1
  %memload70 = load i64, ptr %RBP_N.16, align 1
  %memref-disp71 = add i64 %memload70, 6
  %87 = inttoptr i64 %memref-disp71 to ptr
  %memload72 = load i8, ptr %87, align 1
  %88 = ptrtoint ptr %stktop_8 to i64
  %89 = add i64 %88, 5
  %90 = inttoptr i64 %89 to ptr
  store i8 %memload72, ptr %90, align 1
  %memload73 = load i64, ptr %RBP_N.16, align 1
  %memref-disp74 = add i64 %memload73, 7
  %91 = inttoptr i64 %memref-disp74 to ptr
  %memload75 = load i8, ptr %91, align 1
  %92 = ptrtoint ptr %stktop_8 to i64
  %93 = add i64 %92, 6
  %94 = inttoptr i64 %93 to ptr
  store i8 %memload75, ptr %94, align 1
  %memload76 = load i64, ptr %RBP_N.16, align 1
  %memref-disp77 = add i64 %memload76, 8
  %95 = inttoptr i64 %memref-disp77 to ptr
  %memload78 = load i8, ptr %95, align 1
  %96 = ptrtoint ptr %stktop_8 to i64
  %97 = add i64 %96, 7
  %98 = inttoptr i64 %97 to ptr
  store i8 %memload78, ptr %98, align 1
  %memload79 = load i64, ptr %RBP_N.16, align 1
  %memref-disp80 = add i64 %memload79, 9
  %99 = inttoptr i64 %memref-disp80 to ptr
  %memload81 = load i8, ptr %99, align 1
  store i8 %memload81, ptr %RBP_N.40, align 1
  store i8 0, ptr %RBP_N.39, align 1
  %EAX82 = call i32 @atoi(ptr %7)
  store i32 %EAX82, ptr %RBP_N.20, align 1
  %EAX84 = call i32 @atoi(ptr %3)
  store i32 %EAX84, ptr %RBP_N.24, align 1
  %100 = ptrtoint ptr %stktop_8 to i64
  %RDI85 = add i64 %100, 5
  %101 = inttoptr i64 %RDI85 to ptr
  %EAX86 = call i32 @atoi(ptr %101)
  store i32 %EAX86, ptr %RBP_N.28, align 1
  %102 = load i32, ptr %RBP_N.20, align 1
  %103 = zext i32 %102 to i64
  %104 = zext i32 1 to i64
  %105 = sub i64 %103, %104
  %106 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %103, i64 %104)
  %CF87 = extractvalue { i64, i1 } %106, 1
  %ZF88 = icmp eq i64 %105, 0
  %highbit89 = and i64 -9223372036854775808, %105
  %SF90 = icmp ne i64 %highbit89, 0
  %107 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %103, i64 %104)
  %OF91 = extractvalue { i64, i1 } %107, 1
  %108 = and i64 %105, 255
  %109 = call i64 @llvm.ctpop.i64(i64 %108)
  %110 = and i64 %109, 1
  %PF92 = icmp eq i64 %110, 0
  %SFAndOF_JL156 = icmp ne i1 %SF90, %OF91
  br i1 %SFAndOF_JL156, label %bb.17, label %bb.16

bb.16:                                            ; preds = %bb.15
  %111 = load i32, ptr %RBP_N.20, align 1
  %112 = zext i32 %111 to i64
  %113 = zext i32 12 to i64
  %114 = sub i64 %112, %113
  %115 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %112, i64 %113)
  %CF93 = extractvalue { i64, i1 } %115, 1
  %ZF94 = icmp eq i64 %114, 0
  %highbit95 = and i64 -9223372036854775808, %114
  %SF96 = icmp ne i64 %highbit95, 0
  %116 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %112, i64 %113)
  %OF97 = extractvalue { i64, i1 } %116, 1
  %117 = and i64 %114, 255
  %118 = call i64 @llvm.ctpop.i64(i64 %117)
  %119 = and i64 %118, 1
  %PF98 = icmp eq i64 %119, 0
  %CmpZF_JLE157 = icmp eq i1 %ZF94, true
  %CmpOF_JLE158 = icmp ne i1 %SF96, %OF97
  %ZFOrSF_JLE159 = or i1 %CmpZF_JLE157, %CmpOF_JLE158
  br i1 %ZFOrSF_JLE159, label %bb.18, label %bb.17

bb.18:                                            ; preds = %bb.16
  %120 = load i32, ptr %RBP_N.24, align 1
  %121 = zext i32 %120 to i64
  %122 = zext i32 1 to i64
  %123 = sub i64 %121, %122
  %124 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %121, i64 %122)
  %CF99 = extractvalue { i64, i1 } %124, 1
  %ZF100 = icmp eq i64 %123, 0
  %highbit101 = and i64 -9223372036854775808, %123
  %SF102 = icmp ne i64 %highbit101, 0
  %125 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %121, i64 %122)
  %OF103 = extractvalue { i64, i1 } %125, 1
  %126 = and i64 %123, 255
  %127 = call i64 @llvm.ctpop.i64(i64 %126)
  %128 = and i64 %127, 1
  %PF104 = icmp eq i64 %128, 0
  %SFAndOF_JL160 = icmp ne i1 %SF102, %OF103
  br i1 %SFAndOF_JL160, label %bb.20, label %bb.19

bb.19:                                            ; preds = %bb.18
  %129 = load i32, ptr %RBP_N.24, align 1
  %130 = zext i32 %129 to i64
  %131 = zext i32 31 to i64
  %132 = sub i64 %130, %131
  %133 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %130, i64 %131)
  %CF105 = extractvalue { i64, i1 } %133, 1
  %ZF106 = icmp eq i64 %132, 0
  %highbit107 = and i64 -9223372036854775808, %132
  %SF108 = icmp ne i64 %highbit107, 0
  %134 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %130, i64 %131)
  %OF109 = extractvalue { i64, i1 } %134, 1
  %135 = and i64 %132, 255
  %136 = call i64 @llvm.ctpop.i64(i64 %135)
  %137 = and i64 %136, 1
  %PF110 = icmp eq i64 %137, 0
  %CmpZF_JLE161 = icmp eq i1 %ZF106, true
  %CmpOF_JLE162 = icmp ne i1 %SF108, %OF109
  %ZFOrSF_JLE163 = or i1 %CmpZF_JLE161, %CmpOF_JLE162
  br i1 %ZFOrSF_JLE163, label %bb.21, label %bb.20

bb.21:                                            ; preds = %bb.19
  %138 = load i32, ptr %RBP_N.20, align 1
  %139 = zext i32 %138 to i64
  %140 = zext i32 4 to i64
  %141 = sub i64 %139, %140
  %142 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %139, i64 %140)
  %CF111 = extractvalue { i64, i1 } %142, 1
  %ZF112 = icmp eq i64 %141, 0
  %highbit113 = and i64 -9223372036854775808, %141
  %SF114 = icmp ne i64 %highbit113, 0
  %143 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %139, i64 %140)
  %OF115 = extractvalue { i64, i1 } %143, 1
  %144 = and i64 %141, 255
  %145 = call i64 @llvm.ctpop.i64(i64 %144)
  %146 = and i64 %145, 1
  %PF116 = icmp eq i64 %146, 0
  %CmpZF_JE164 = icmp eq i1 %ZF112, true
  br i1 %CmpZF_JE164, label %bb.25, label %bb.22

bb.22:                                            ; preds = %bb.21
  %147 = load i32, ptr %RBP_N.20, align 1
  %148 = zext i32 %147 to i64
  %149 = zext i32 6 to i64
  %150 = sub i64 %148, %149
  %151 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %148, i64 %149)
  %CF117 = extractvalue { i64, i1 } %151, 1
  %ZF118 = icmp eq i64 %150, 0
  %highbit119 = and i64 -9223372036854775808, %150
  %SF120 = icmp ne i64 %highbit119, 0
  %152 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %148, i64 %149)
  %OF121 = extractvalue { i64, i1 } %152, 1
  %153 = and i64 %150, 255
  %154 = call i64 @llvm.ctpop.i64(i64 %153)
  %155 = and i64 %154, 1
  %PF122 = icmp eq i64 %155, 0
  %CmpZF_JE165 = icmp eq i1 %ZF118, true
  br i1 %CmpZF_JE165, label %bb.25, label %bb.23

bb.23:                                            ; preds = %bb.22
  %156 = load i32, ptr %RBP_N.20, align 1
  %157 = zext i32 %156 to i64
  %158 = zext i32 9 to i64
  %159 = sub i64 %157, %158
  %160 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %157, i64 %158)
  %CF123 = extractvalue { i64, i1 } %160, 1
  %ZF124 = icmp eq i64 %159, 0
  %highbit125 = and i64 -9223372036854775808, %159
  %SF126 = icmp ne i64 %highbit125, 0
  %161 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %157, i64 %158)
  %OF127 = extractvalue { i64, i1 } %161, 1
  %162 = and i64 %159, 255
  %163 = call i64 @llvm.ctpop.i64(i64 %162)
  %164 = and i64 %163, 1
  %PF128 = icmp eq i64 %164, 0
  %CmpZF_JE166 = icmp eq i1 %ZF124, true
  br i1 %CmpZF_JE166, label %bb.25, label %bb.24

bb.24:                                            ; preds = %bb.23
  %165 = load i32, ptr %RBP_N.20, align 1
  %166 = zext i32 %165 to i64
  %167 = zext i32 11 to i64
  %168 = sub i64 %166, %167
  %169 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %166, i64 %167)
  %CF129 = extractvalue { i64, i1 } %169, 1
  %ZF130 = icmp eq i64 %168, 0
  %highbit131 = and i64 -9223372036854775808, %168
  %SF132 = icmp ne i64 %highbit131, 0
  %170 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %166, i64 %167)
  %OF133 = extractvalue { i64, i1 } %170, 1
  %171 = and i64 %168, 255
  %172 = call i64 @llvm.ctpop.i64(i64 %171)
  %173 = and i64 %172, 1
  %PF134 = icmp eq i64 %173, 0
  %CmpZF_JNE167 = icmp eq i1 %ZF130, false
  br i1 %CmpZF_JNE167, label %bb.27, label %bb.25

bb.25:                                            ; preds = %bb.24, %bb.23, %bb.22, %bb.21
  %174 = load i32, ptr %RBP_N.24, align 1
  %175 = zext i32 %174 to i64
  %176 = zext i32 31 to i64
  %177 = sub i64 %175, %176
  %178 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %175, i64 %176)
  %CF135 = extractvalue { i64, i1 } %178, 1
  %ZF136 = icmp eq i64 %177, 0
  %highbit137 = and i64 -9223372036854775808, %177
  %SF138 = icmp ne i64 %highbit137, 0
  %179 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %175, i64 %176)
  %OF139 = extractvalue { i64, i1 } %179, 1
  %180 = and i64 %177, 255
  %181 = call i64 @llvm.ctpop.i64(i64 %180)
  %182 = and i64 %181, 1
  %PF140 = icmp eq i64 %182, 0
  %CmpZF_JNE168 = icmp eq i1 %ZF136, false
  br i1 %CmpZF_JNE168, label %bb.27, label %bb.26

bb.26:                                            ; preds = %bb.25
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.31

bb.27:                                            ; preds = %bb.25, %bb.24
  %183 = load i32, ptr %RBP_N.20, align 1
  %184 = zext i32 %183 to i64
  %185 = zext i32 2 to i64
  %186 = sub i64 %184, %185
  %187 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %184, i64 %185)
  %CF141 = extractvalue { i64, i1 } %187, 1
  %ZF142 = icmp eq i64 %186, 0
  %highbit143 = and i64 -9223372036854775808, %186
  %SF144 = icmp ne i64 %highbit143, 0
  %188 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %184, i64 %185)
  %OF145 = extractvalue { i64, i1 } %188, 1
  %189 = and i64 %186, 255
  %190 = call i64 @llvm.ctpop.i64(i64 %189)
  %191 = and i64 %190, 1
  %PF146 = icmp eq i64 %191, 0
  %CmpZF_JNE169 = icmp eq i1 %ZF142, false
  br i1 %CmpZF_JNE169, label %bb.30, label %bb.28

bb.28:                                            ; preds = %bb.27
  %192 = load i32, ptr %RBP_N.24, align 1
  %193 = zext i32 %192 to i64
  %194 = zext i32 29 to i64
  %195 = sub i64 %193, %194
  %196 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %193, i64 %194)
  %CF147 = extractvalue { i64, i1 } %196, 1
  %ZF148 = icmp eq i64 %195, 0
  %highbit149 = and i64 -9223372036854775808, %195
  %SF150 = icmp ne i64 %highbit149, 0
  %197 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %193, i64 %194)
  %OF151 = extractvalue { i64, i1 } %197, 1
  %198 = and i64 %195, 255
  %199 = call i64 @llvm.ctpop.i64(i64 %198)
  %200 = and i64 %199, 1
  %PF152 = icmp eq i64 %200, 0
  %CmpZF_JLE170 = icmp eq i1 %ZF148, true
  %CmpOF_JLE171 = icmp ne i1 %SF150, %OF151
  %ZFOrSF_JLE172 = or i1 %CmpZF_JLE170, %CmpOF_JLE171
  br i1 %ZFOrSF_JLE172, label %bb.30, label %bb.29

bb.29:                                            ; preds = %bb.28
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.31

bb.30:                                            ; preds = %bb.28, %bb.27
  store i32 1, ptr %RBP_N.4, align 1
  br label %bb.31

bb.20:                                            ; preds = %bb.19, %bb.18
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.31

bb.17:                                            ; preds = %bb.16, %bb.15
  store i32 0, ptr %RBP_N.4, align 1
  br label %bb.31

bb.31:                                            ; preds = %bb.30, %bb.17, %bb.20, %bb.29, %bb.26, %bb.7, %bb.11, %bb.1
  %memload153 = load i32, ptr %RBP_N.4, align 1
  ret i32 %memload153
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
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
