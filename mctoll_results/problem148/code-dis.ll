; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

declare dso_local ptr @calloc(i64, i64)

declare dso_local void @free(ptr)

define dso_local i32 @func0(i32 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 104, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.88 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.80 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.76 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.72 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.68 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 40
  %RBP_N.64 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 44
  %RBP_N.60 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 48
  %RBP_N.56 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 52
  %RBP_N.52 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 56
  %RBP_N.48 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 60
  %RBP_N.44 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 64
  %RBP_N.40 = inttoptr i64 %11 to ptr
  %12 = add i64 %tos, 68
  %RBP_N.36 = inttoptr i64 %12 to ptr
  %13 = add i64 %tos, 72
  %RBP_N.32 = inttoptr i64 %13 to ptr
  %14 = add i64 %tos, 80
  %RBP_N.24 = inttoptr i64 %14 to ptr
  %15 = add i64 %tos, 88
  %RBP_N.16 = inttoptr i64 %15 to ptr
  %16 = add i64 %tos, 100
  %RBP_N.4 = inttoptr i64 %16 to ptr
  %17 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %17 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  %memload = load i64, ptr %RBP_N.4, align 1
  %18 = trunc i64 %memload to i32
  %RDI = sext i32 %18 to i64
  %RDI1 = shl i64 %RDI, 2
  %ZF = icmp eq i64 %RDI1, 0
  %highbit = and i64 -9223372036854775808, %RDI1
  %SF = icmp ne i64 %highbit, 0
  %19 = call ptr @malloc(i64 %RDI1)
  %RAX = ptrtoint ptr %19 to i64
  store i64 %RAX, ptr %RBP_N.16, align 1
  %memload2 = load i32, ptr %RBP_N.4, align 1
  %EAX = add i32 %memload2, 1
  %20 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload2, i32 1)
  %CF = extractvalue { i32, i1 } %20, 1
  %21 = and i32 %EAX, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF = icmp eq i32 %23, 0
  %ZF3 = icmp eq i32 %EAX, 0
  %highbit4 = and i32 -2147483648, %EAX
  %SF5 = icmp ne i32 %highbit4, 0
  %24 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload2, i32 1)
  %OF = extractvalue { i32, i1 } %24, 1
  %RDI6 = sext i32 %EAX to i64
  %RDI10 = shl i64 %RDI6, 3
  %ZF7 = icmp eq i64 %RDI10, 0
  %highbit8 = and i64 -9223372036854775808, %RDI10
  %SF9 = icmp ne i64 %highbit8, 0
  %25 = call ptr @malloc(i64 %RDI10)
  %RAX11 = ptrtoint ptr %25 to i64
  store i64 %RAX11, ptr %RBP_N.24, align 1
  %memload12 = load i32, ptr %RBP_N.4, align 1
  %EAX19 = add i32 %memload12, 1
  %26 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload12, i32 1)
  %CF13 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %EAX19, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF14 = icmp eq i32 %29, 0
  %ZF15 = icmp eq i32 %EAX19, 0
  %highbit16 = and i32 -2147483648, %EAX19
  %SF17 = icmp ne i32 %highbit16, 0
  %30 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload12, i32 1)
  %OF18 = extractvalue { i32, i1 } %30, 1
  %RDI20 = sext i32 %EAX19 to i64
  %RDI24 = shl i64 %RDI20, 3
  %ZF21 = icmp eq i64 %RDI24, 0
  %highbit22 = and i64 -9223372036854775808, %RDI24
  %SF23 = icmp ne i64 %highbit22, 0
  %31 = call ptr @malloc(i64 %RDI24)
  %RAX25 = ptrtoint ptr %31 to i64
  store i64 %RAX25, ptr %RBP_N.32, align 1
  store i32 0, ptr %RBP_N.36, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload26 = load i32, ptr %RBP_N.36, align 1
  %32 = load i32, ptr %RBP_N.4, align 1
  %33 = sub i32 %memload26, %32
  %34 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload26, i32 %32)
  %CF27 = extractvalue { i32, i1 } %34, 1
  %ZF28 = icmp eq i32 %33, 0
  %highbit29 = and i32 -2147483648, %33
  %SF30 = icmp ne i32 %highbit29, 0
  %35 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload26, i32 %32)
  %OF31 = extractvalue { i32, i1 } %35, 1
  %36 = and i32 %33, 255
  %37 = call i32 @llvm.ctpop.i32(i32 %36)
  %38 = and i32 %37, 1
  %PF32 = icmp eq i32 %38, 0
  %ZFCmp_JG = icmp eq i1 %ZF28, false
  %SFOFCmp_JG = icmp eq i1 %SF30, %OF31
  %ZFAndSFOF_JG = and i1 %ZFCmp_JG, %SFOFCmp_JG
  br i1 %ZFAndSFOF_JG, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %39 = zext i32 3 to i64
  %40 = zext i32 4 to i64
  %41 = call ptr @calloc(i64 %39, i64 %40)
  %RAX33 = ptrtoint ptr %41 to i64
  %memload34 = load i64, ptr %RBP_N.24, align 1
  %memload35 = load i64, ptr %RBP_N.36, align 1
  %42 = trunc i64 %memload35 to i32
  %RCX = sext i32 %42 to i64
  %memref-idxreg = mul i64 8, %RCX
  %memref-basereg = add i64 %memload34, %memref-idxreg
  %43 = inttoptr i64 %memref-basereg to ptr
  store i64 %RAX33, ptr %43, align 1
  %44 = zext i32 3 to i64
  %45 = zext i32 4 to i64
  %46 = call ptr @calloc(i64 %44, i64 %45)
  %RAX36 = ptrtoint ptr %46 to i64
  %memload37 = load i64, ptr %RBP_N.32, align 1
  %memload38 = load i64, ptr %RBP_N.36, align 1
  %47 = trunc i64 %memload38 to i32
  %RCX39 = sext i32 %47 to i64
  %memref-idxreg40 = mul i64 8, %RCX39
  %memref-basereg41 = add i64 %memload37, %memref-idxreg40
  %48 = inttoptr i64 %memref-basereg41 to ptr
  store i64 %RAX36, ptr %48, align 1
  %memload42 = load i32, ptr %RBP_N.36, align 1
  %EAX49 = add i32 %memload42, 1
  %49 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload42, i32 1)
  %CF43 = extractvalue { i32, i1 } %49, 1
  %50 = and i32 %EAX49, 255
  %51 = call i32 @llvm.ctpop.i32(i32 %50)
  %52 = and i32 %51, 1
  %PF44 = icmp eq i32 %52, 0
  %ZF45 = icmp eq i32 %EAX49, 0
  %highbit46 = and i32 -2147483648, %EAX49
  %SF47 = icmp ne i32 %highbit46, 0
  %53 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload42, i32 1)
  %OF48 = extractvalue { i32, i1 } %53, 1
  store i32 %EAX49, ptr %RBP_N.36, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %memload50 = load i64, ptr %RBP_N.24, align 1
  %54 = inttoptr i64 %memload50 to ptr
  %memload51 = load i64, ptr %54, align 1
  %memref-disp = add i64 %memload51, 8
  %55 = inttoptr i64 %memref-disp to ptr
  store i32 0, ptr %55, align 1
  %memload52 = load i64, ptr %RBP_N.24, align 1
  %56 = inttoptr i64 %memload52 to ptr
  %memload53 = load i64, ptr %56, align 1
  %memref-disp54 = add i64 %memload53, 4
  %57 = inttoptr i64 %memref-disp54 to ptr
  store i32 0, ptr %57, align 1
  %memload55 = load i64, ptr %RBP_N.24, align 1
  %58 = inttoptr i64 %memload55 to ptr
  %memload56 = load i64, ptr %58, align 1
  %59 = inttoptr i64 %memload56 to ptr
  store i32 0, ptr %59, align 1
  %memload57 = load i64, ptr %RBP_N.32, align 1
  %60 = inttoptr i64 %memload57 to ptr
  %memload58 = load i64, ptr %60, align 1
  %memref-disp59 = add i64 %memload58, 8
  %61 = inttoptr i64 %memref-disp59 to ptr
  store i32 0, ptr %61, align 1
  %memload60 = load i64, ptr %RBP_N.32, align 1
  %62 = inttoptr i64 %memload60 to ptr
  %memload61 = load i64, ptr %62, align 1
  %memref-disp62 = add i64 %memload61, 4
  %63 = inttoptr i64 %memref-disp62 to ptr
  store i32 0, ptr %63, align 1
  %memload63 = load i64, ptr %RBP_N.32, align 1
  %64 = inttoptr i64 %memload63 to ptr
  %memload64 = load i64, ptr %64, align 1
  %65 = inttoptr i64 %memload64 to ptr
  store i32 0, ptr %65, align 1
  store i32 1, ptr %RBP_N.40, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.8
  %memload65 = load i32, ptr %RBP_N.40, align 1
  %66 = load i32, ptr %RBP_N.4, align 1
  %67 = sub i32 %memload65, %66
  %68 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload65, i32 %66)
  %CF66 = extractvalue { i32, i1 } %68, 1
  %ZF67 = icmp eq i32 %67, 0
  %highbit68 = and i32 -2147483648, %67
  %SF69 = icmp ne i32 %highbit68, 0
  %69 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload65, i32 %66)
  %OF70 = extractvalue { i32, i1 } %69, 1
  %70 = and i32 %67, 255
  %71 = call i32 @llvm.ctpop.i32(i32 %70)
  %72 = and i32 %71, 1
  %PF71 = icmp eq i32 %72, 0
  %ZFCmp_JG429 = icmp eq i1 %ZF67, false
  %SFOFCmp_JG430 = icmp eq i1 %SF69, %OF70
  %ZFAndSFOF_JG431 = and i1 %ZFCmp_JG429, %SFOFCmp_JG430
  br i1 %ZFAndSFOF_JG431, label %bb.9, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload72 = load i32, ptr %RBP_N.40, align 1
  %memload73 = load i32, ptr %RBP_N.40, align 1
  %EAX74 = mul i32 %memload72, %memload73
  %73 = load i32, ptr %RBP_N.40, align 1
  %EAX75 = sub i32 %EAX74, %73
  %74 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX74, i32 %73)
  %CF76 = extractvalue { i32, i1 } %74, 1
  %ZF77 = icmp eq i32 %EAX75, 0
  %highbit78 = and i32 -2147483648, %EAX75
  %SF79 = icmp ne i32 %highbit78, 0
  %75 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX74, i32 %73)
  %OF80 = extractvalue { i32, i1 } %75, 1
  %76 = and i32 %EAX75, 255
  %77 = call i32 @llvm.ctpop.i32(i32 %76)
  %78 = and i32 %77, 1
  %PF81 = icmp eq i32 %78, 0
  %EAX88 = add i32 %EAX75, 1
  %79 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EAX75, i32 1)
  %CF82 = extractvalue { i32, i1 } %79, 1
  %80 = and i32 %EAX88, 255
  %81 = call i32 @llvm.ctpop.i32(i32 %80)
  %82 = and i32 %81, 1
  %PF83 = icmp eq i32 %82, 0
  %ZF84 = icmp eq i32 %EAX88, 0
  %highbit85 = and i32 -2147483648, %EAX88
  %SF86 = icmp ne i32 %highbit85, 0
  %83 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EAX75, i32 1)
  %OF87 = extractvalue { i32, i1 } %83, 1
  %84 = sext i32 %EAX88 to i64
  %85 = lshr i64 %84, 32
  %EDX = trunc i64 %85 to i32
  %86 = sext i32 %EAX88 to i64
  %87 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %87, 32
  %dividend = or i64 %div_hb_ls, %86
  %88 = sext i32 3 to i64
  %div_q = sdiv i64 %dividend, %88
  %EAX89 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %88
  %EDX90 = trunc i64 %div_r to i32
  %memload91 = load i64, ptr %RBP_N.16, align 1
  %memload92 = load i32, ptr %RBP_N.40, align 1
  %ECX = sub i32 %memload92, 1
  %89 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload92, i32 1)
  %CF93 = extractvalue { i32, i1 } %89, 1
  %90 = and i32 %ECX, 255
  %91 = call i32 @llvm.ctpop.i32(i32 %90)
  %92 = and i32 %91, 1
  %PF94 = icmp eq i32 %92, 0
  %ZF95 = icmp eq i32 %ECX, 0
  %highbit96 = and i32 -2147483648, %ECX
  %SF97 = icmp ne i32 %highbit96, 0
  %93 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload92, i32 1)
  %OF98 = extractvalue { i32, i1 } %93, 1
  %RCX99 = sext i32 %ECX to i64
  %memref-idxreg100 = mul i64 4, %RCX99
  %memref-basereg101 = add i64 %memload91, %memref-idxreg100
  %94 = inttoptr i64 %memref-basereg101 to ptr
  store i32 %EDX90, ptr %94, align 1
  store i32 0, ptr %RBP_N.44, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.7
  %95 = load i32, ptr %RBP_N.44, align 1
  %96 = zext i32 %95 to i64
  %97 = zext i32 3 to i64
  %98 = sub i64 %96, %97
  %99 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %96, i64 %97)
  %CF102 = extractvalue { i64, i1 } %99, 1
  %ZF103 = icmp eq i64 %98, 0
  %highbit104 = and i64 -9223372036854775808, %98
  %SF105 = icmp ne i64 %highbit104, 0
  %100 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %96, i64 %97)
  %OF106 = extractvalue { i64, i1 } %100, 1
  %101 = and i64 %98, 255
  %102 = call i64 @llvm.ctpop.i64(i64 %101)
  %103 = and i64 %102, 1
  %PF107 = icmp eq i64 %103, 0
  %CmpSFOF_JGE = icmp eq i1 %SF105, %OF106
  br i1 %CmpSFOF_JGE, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload108 = load i64, ptr %RBP_N.24, align 1
  %memload109 = load i32, ptr %RBP_N.40, align 1
  %ECX116 = sub i32 %memload109, 1
  %104 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload109, i32 1)
  %CF110 = extractvalue { i32, i1 } %104, 1
  %105 = and i32 %ECX116, 255
  %106 = call i32 @llvm.ctpop.i32(i32 %105)
  %107 = and i32 %106, 1
  %PF111 = icmp eq i32 %107, 0
  %ZF112 = icmp eq i32 %ECX116, 0
  %highbit113 = and i32 -2147483648, %ECX116
  %SF114 = icmp ne i32 %highbit113, 0
  %108 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload109, i32 1)
  %OF115 = extractvalue { i32, i1 } %108, 1
  %RCX117 = sext i32 %ECX116 to i64
  %memref-idxreg118 = mul i64 8, %RCX117
  %memref-basereg119 = add i64 %memload108, %memref-idxreg118
  %109 = inttoptr i64 %memref-basereg119 to ptr
  %memload120 = load i64, ptr %109, align 1
  %memload121 = load i64, ptr %RBP_N.44, align 1
  %110 = trunc i64 %memload121 to i32
  %RCX122 = sext i32 %110 to i64
  %memref-idxreg123 = mul i64 4, %RCX122
  %memref-basereg124 = add i64 %memload120, %memref-idxreg123
  %111 = inttoptr i64 %memref-basereg124 to ptr
  %memload125 = load i32, ptr %111, align 1
  %memload126 = load i64, ptr %RBP_N.24, align 1
  %memload127 = load i64, ptr %RBP_N.40, align 1
  %112 = trunc i64 %memload127 to i32
  %RCX128 = sext i32 %112 to i64
  %memref-idxreg129 = mul i64 8, %RCX128
  %memref-basereg130 = add i64 %memload126, %memref-idxreg129
  %113 = inttoptr i64 %memref-basereg130 to ptr
  %memload131 = load i64, ptr %113, align 1
  %memload132 = load i64, ptr %RBP_N.44, align 1
  %114 = trunc i64 %memload132 to i32
  %RCX133 = sext i32 %114 to i64
  %memref-idxreg134 = mul i64 4, %RCX133
  %memref-basereg135 = add i64 %memload131, %memref-idxreg134
  %115 = inttoptr i64 %memref-basereg135 to ptr
  store i32 %memload125, ptr %115, align 1
  %memload136 = load i32, ptr %RBP_N.44, align 1
  %EAX143 = add i32 %memload136, 1
  %116 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload136, i32 1)
  %CF137 = extractvalue { i32, i1 } %116, 1
  %117 = and i32 %EAX143, 255
  %118 = call i32 @llvm.ctpop.i32(i32 %117)
  %119 = and i32 %118, 1
  %PF138 = icmp eq i32 %119, 0
  %ZF139 = icmp eq i32 %EAX143, 0
  %highbit140 = and i32 -2147483648, %EAX143
  %SF141 = icmp ne i32 %highbit140, 0
  %120 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload136, i32 1)
  %OF142 = extractvalue { i32, i1 } %120, 1
  store i32 %EAX143, ptr %RBP_N.44, align 1
  br label %bb.6

bb.8:                                             ; preds = %bb.6
  %memload144 = load i64, ptr %RBP_N.24, align 1
  %memload145 = load i64, ptr %RBP_N.40, align 1
  %121 = trunc i64 %memload145 to i32
  %RCX146 = sext i32 %121 to i64
  %memref-idxreg147 = mul i64 8, %RCX146
  %memref-basereg148 = add i64 %memload144, %memref-idxreg147
  %122 = inttoptr i64 %memref-basereg148 to ptr
  %memload149 = load i64, ptr %122, align 1
  %memload150 = load i64, ptr %RBP_N.16, align 1
  %memload151 = load i32, ptr %RBP_N.40, align 1
  %EDX158 = sub i32 %memload151, 1
  %123 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload151, i32 1)
  %CF152 = extractvalue { i32, i1 } %123, 1
  %124 = and i32 %EDX158, 255
  %125 = call i32 @llvm.ctpop.i32(i32 %124)
  %126 = and i32 %125, 1
  %PF153 = icmp eq i32 %126, 0
  %ZF154 = icmp eq i32 %EDX158, 0
  %highbit155 = and i32 -2147483648, %EDX158
  %SF156 = icmp ne i32 %highbit155, 0
  %127 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload151, i32 1)
  %OF157 = extractvalue { i32, i1 } %127, 1
  %RDX = sext i32 %EDX158 to i64
  %memref-idxreg159 = mul i64 4, %RDX
  %memref-basereg160 = add i64 %memload150, %memref-idxreg159
  %128 = inttoptr i64 %memref-basereg160 to ptr
  %memload161 = load i64, ptr %128, align 1
  %129 = trunc i64 %memload161 to i32
  %RCX162 = sext i32 %129 to i64
  %memref-idxreg163 = mul i64 4, %RCX162
  %memref-basereg164 = add i64 %memload149, %memref-idxreg163
  %130 = inttoptr i64 %memref-basereg164 to ptr
  %memload165 = load i32, ptr %130, align 1
  %EDX172 = add i32 %memload165, 1
  %131 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload165, i32 1)
  %CF166 = extractvalue { i32, i1 } %131, 1
  %132 = and i32 %EDX172, 255
  %133 = call i32 @llvm.ctpop.i32(i32 %132)
  %134 = and i32 %133, 1
  %PF167 = icmp eq i32 %134, 0
  %ZF168 = icmp eq i32 %EDX172, 0
  %highbit169 = and i32 -2147483648, %EDX172
  %SF170 = icmp ne i32 %highbit169, 0
  %135 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload165, i32 1)
  %OF171 = extractvalue { i32, i1 } %135, 1
  %memref-idxreg173 = mul i64 4, %RCX162
  %memref-basereg174 = add i64 %memload149, %memref-idxreg173
  %136 = inttoptr i64 %memref-basereg174 to ptr
  store i32 %EDX172, ptr %136, align 1
  %memload175 = load i32, ptr %RBP_N.40, align 1
  %EAX182 = add i32 %memload175, 1
  %137 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload175, i32 1)
  %CF176 = extractvalue { i32, i1 } %137, 1
  %138 = and i32 %EAX182, 255
  %139 = call i32 @llvm.ctpop.i32(i32 %138)
  %140 = and i32 %139, 1
  %PF177 = icmp eq i32 %140, 0
  %ZF178 = icmp eq i32 %EAX182, 0
  %highbit179 = and i32 -2147483648, %EAX182
  %SF180 = icmp ne i32 %highbit179, 0
  %141 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload175, i32 1)
  %OF181 = extractvalue { i32, i1 } %141, 1
  store i32 %EAX182, ptr %RBP_N.40, align 1
  br label %bb.4

bb.9:                                             ; preds = %bb.4
  store i32 1, ptr %RBP_N.48, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.31
  %142 = load i32, ptr %RBP_N.48, align 1
  %143 = zext i32 %142 to i64
  %144 = zext i32 3 to i64
  %145 = sub i64 %143, %144
  %146 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %143, i64 %144)
  %CF183 = extractvalue { i64, i1 } %146, 1
  %ZF184 = icmp eq i64 %145, 0
  %highbit185 = and i64 -9223372036854775808, %145
  %SF186 = icmp ne i64 %highbit185, 0
  %147 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %143, i64 %144)
  %OF187 = extractvalue { i64, i1 } %147, 1
  %148 = and i64 %145, 255
  %149 = call i64 @llvm.ctpop.i64(i64 %148)
  %150 = and i64 %149, 1
  %PF188 = icmp eq i64 %150, 0
  %CmpSFOF_JGE432 = icmp eq i1 %SF186, %OF187
  br i1 %CmpSFOF_JGE432, label %bb.32, label %bb.11

bb.11:                                            ; preds = %bb.10
  store i32 1, ptr %RBP_N.52, align 1
  br label %bb.12

bb.12:                                            ; preds = %bb.11, %bb.22
  %memload189 = load i32, ptr %RBP_N.52, align 1
  %151 = load i32, ptr %RBP_N.4, align 1
  %152 = sub i32 %memload189, %151
  %153 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload189, i32 %151)
  %CF190 = extractvalue { i32, i1 } %153, 1
  %ZF191 = icmp eq i32 %152, 0
  %highbit192 = and i32 -2147483648, %152
  %SF193 = icmp ne i32 %highbit192, 0
  %154 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload189, i32 %151)
  %OF194 = extractvalue { i32, i1 } %154, 1
  %155 = and i32 %152, 255
  %156 = call i32 @llvm.ctpop.i32(i32 %155)
  %157 = and i32 %156, 1
  %PF195 = icmp eq i32 %157, 0
  %ZFCmp_JG433 = icmp eq i1 %ZF191, false
  %SFOFCmp_JG434 = icmp eq i1 %SF193, %OF194
  %ZFAndSFOF_JG435 = and i1 %ZFCmp_JG433, %SFOFCmp_JG434
  br i1 %ZFAndSFOF_JG435, label %bb.23, label %bb.13

bb.13:                                            ; preds = %bb.12
  store i32 0, ptr %RBP_N.56, align 1
  br label %bb.14

bb.14:                                            ; preds = %bb.13, %bb.15
  %158 = load i32, ptr %RBP_N.56, align 1
  %159 = zext i32 %158 to i64
  %160 = zext i32 3 to i64
  %161 = sub i64 %159, %160
  %162 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %159, i64 %160)
  %CF196 = extractvalue { i64, i1 } %162, 1
  %ZF197 = icmp eq i64 %161, 0
  %highbit198 = and i64 -9223372036854775808, %161
  %SF199 = icmp ne i64 %highbit198, 0
  %163 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %159, i64 %160)
  %OF200 = extractvalue { i64, i1 } %163, 1
  %164 = and i64 %161, 255
  %165 = call i64 @llvm.ctpop.i64(i64 %164)
  %166 = and i64 %165, 1
  %PF201 = icmp eq i64 %166, 0
  %CmpSFOF_JGE436 = icmp eq i1 %SF199, %OF200
  br i1 %CmpSFOF_JGE436, label %bb.16, label %bb.15

bb.15:                                            ; preds = %bb.14
  %memload202 = load i64, ptr %RBP_N.32, align 1
  %memload203 = load i32, ptr %RBP_N.52, align 1
  %ECX210 = sub i32 %memload203, 1
  %167 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload203, i32 1)
  %CF204 = extractvalue { i32, i1 } %167, 1
  %168 = and i32 %ECX210, 255
  %169 = call i32 @llvm.ctpop.i32(i32 %168)
  %170 = and i32 %169, 1
  %PF205 = icmp eq i32 %170, 0
  %ZF206 = icmp eq i32 %ECX210, 0
  %highbit207 = and i32 -2147483648, %ECX210
  %SF208 = icmp ne i32 %highbit207, 0
  %171 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload203, i32 1)
  %OF209 = extractvalue { i32, i1 } %171, 1
  %RCX211 = sext i32 %ECX210 to i64
  %memref-idxreg212 = mul i64 8, %RCX211
  %memref-basereg213 = add i64 %memload202, %memref-idxreg212
  %172 = inttoptr i64 %memref-basereg213 to ptr
  %memload214 = load i64, ptr %172, align 1
  %memload215 = load i64, ptr %RBP_N.56, align 1
  %173 = trunc i64 %memload215 to i32
  %RCX216 = sext i32 %173 to i64
  %memref-idxreg217 = mul i64 4, %RCX216
  %memref-basereg218 = add i64 %memload214, %memref-idxreg217
  %174 = inttoptr i64 %memref-basereg218 to ptr
  %memload219 = load i32, ptr %174, align 1
  %memload220 = load i64, ptr %RBP_N.32, align 1
  %memload221 = load i64, ptr %RBP_N.52, align 1
  %175 = trunc i64 %memload221 to i32
  %RCX222 = sext i32 %175 to i64
  %memref-idxreg223 = mul i64 8, %RCX222
  %memref-basereg224 = add i64 %memload220, %memref-idxreg223
  %176 = inttoptr i64 %memref-basereg224 to ptr
  %memload225 = load i64, ptr %176, align 1
  %memload226 = load i64, ptr %RBP_N.56, align 1
  %177 = trunc i64 %memload226 to i32
  %RCX227 = sext i32 %177 to i64
  %memref-idxreg228 = mul i64 4, %RCX227
  %memref-basereg229 = add i64 %memload225, %memref-idxreg228
  %178 = inttoptr i64 %memref-basereg229 to ptr
  store i32 %memload219, ptr %178, align 1
  %memload230 = load i32, ptr %RBP_N.56, align 1
  %EAX237 = add i32 %memload230, 1
  %179 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload230, i32 1)
  %CF231 = extractvalue { i32, i1 } %179, 1
  %180 = and i32 %EAX237, 255
  %181 = call i32 @llvm.ctpop.i32(i32 %180)
  %182 = and i32 %181, 1
  %PF232 = icmp eq i32 %182, 0
  %ZF233 = icmp eq i32 %EAX237, 0
  %highbit234 = and i32 -2147483648, %EAX237
  %SF235 = icmp ne i32 %highbit234, 0
  %183 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload230, i32 1)
  %OF236 = extractvalue { i32, i1 } %183, 1
  store i32 %EAX237, ptr %RBP_N.56, align 1
  br label %bb.14

bb.16:                                            ; preds = %bb.14
  %184 = load i32, ptr %RBP_N.52, align 1
  %185 = zext i32 %184 to i64
  %186 = zext i32 1 to i64
  %187 = sub i64 %185, %186
  %188 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %185, i64 %186)
  %CF238 = extractvalue { i64, i1 } %188, 1
  %ZF239 = icmp eq i64 %187, 0
  %highbit240 = and i64 -9223372036854775808, %187
  %SF241 = icmp ne i64 %highbit240, 0
  %189 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %185, i64 %186)
  %OF242 = extractvalue { i64, i1 } %189, 1
  %190 = and i64 %187, 255
  %191 = call i64 @llvm.ctpop.i64(i64 %190)
  %192 = and i64 %191, 1
  %PF243 = icmp eq i64 %192, 0
  %SFAndOF_JL = icmp ne i1 %SF241, %OF242
  br i1 %SFAndOF_JL, label %bb.21, label %bb.17

bb.17:                                            ; preds = %bb.16
  store i32 0, ptr %RBP_N.60, align 1
  br label %bb.18

bb.18:                                            ; preds = %bb.17, %bb.19
  %193 = load i32, ptr %RBP_N.60, align 1
  %194 = zext i32 %193 to i64
  %195 = zext i32 2 to i64
  %196 = sub i64 %194, %195
  %197 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %194, i64 %195)
  %CF244 = extractvalue { i64, i1 } %197, 1
  %ZF245 = icmp eq i64 %196, 0
  %highbit246 = and i64 -9223372036854775808, %196
  %SF247 = icmp ne i64 %highbit246, 0
  %198 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %194, i64 %195)
  %OF248 = extractvalue { i64, i1 } %198, 1
  %199 = and i64 %196, 255
  %200 = call i64 @llvm.ctpop.i64(i64 %199)
  %201 = and i64 %200, 1
  %PF249 = icmp eq i64 %201, 0
  %ZFCmp_JG437 = icmp eq i1 %ZF245, false
  %SFOFCmp_JG438 = icmp eq i1 %SF247, %OF248
  %ZFAndSFOF_JG439 = and i1 %ZFCmp_JG437, %SFOFCmp_JG438
  br i1 %ZFAndSFOF_JG439, label %bb.20, label %bb.19

bb.19:                                            ; preds = %bb.18
  %memload250 = load i64, ptr %RBP_N.24, align 1
  %memload251 = load i32, ptr %RBP_N.52, align 1
  %ECX258 = sub i32 %memload251, 1
  %202 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload251, i32 1)
  %CF252 = extractvalue { i32, i1 } %202, 1
  %203 = and i32 %ECX258, 255
  %204 = call i32 @llvm.ctpop.i32(i32 %203)
  %205 = and i32 %204, 1
  %PF253 = icmp eq i32 %205, 0
  %ZF254 = icmp eq i32 %ECX258, 0
  %highbit255 = and i32 -2147483648, %ECX258
  %SF256 = icmp ne i32 %highbit255, 0
  %206 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload251, i32 1)
  %OF257 = extractvalue { i32, i1 } %206, 1
  %RCX259 = sext i32 %ECX258 to i64
  %memref-idxreg260 = mul i64 8, %RCX259
  %memref-basereg261 = add i64 %memload250, %memref-idxreg260
  %207 = inttoptr i64 %memref-basereg261 to ptr
  %memload262 = load i64, ptr %207, align 1
  %memload263 = load i64, ptr %RBP_N.60, align 1
  %208 = trunc i64 %memload263 to i32
  %RCX264 = sext i32 %208 to i64
  %memref-idxreg265 = mul i64 4, %RCX264
  %memref-basereg266 = add i64 %memload262, %memref-idxreg265
  %209 = inttoptr i64 %memref-basereg266 to ptr
  %memload267 = load i32, ptr %209, align 1
  store i32 %memload267, ptr %RBP_N.80, align 1
  %memload268 = load i64, ptr %RBP_N.32, align 1
  %memload269 = load i64, ptr %RBP_N.52, align 1
  %210 = trunc i64 %memload269 to i32
  %RCX270 = sext i32 %210 to i64
  %memref-idxreg271 = mul i64 8, %RCX270
  %memref-basereg272 = add i64 %memload268, %memref-idxreg271
  %211 = inttoptr i64 %memref-basereg272 to ptr
  %memload273 = load i64, ptr %211, align 1
  store i64 %memload273, ptr %RBP_N.88, align 1
  %memload274 = load i64, ptr %RBP_N.16, align 1
  %memload275 = load i32, ptr %RBP_N.52, align 1
  %ECX282 = sub i32 %memload275, 1
  %212 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload275, i32 1)
  %CF276 = extractvalue { i32, i1 } %212, 1
  %213 = and i32 %ECX282, 255
  %214 = call i32 @llvm.ctpop.i32(i32 %213)
  %215 = and i32 %214, 1
  %PF277 = icmp eq i32 %215, 0
  %ZF278 = icmp eq i32 %ECX282, 0
  %highbit279 = and i32 -2147483648, %ECX282
  %SF280 = icmp ne i32 %highbit279, 0
  %216 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload275, i32 1)
  %OF281 = extractvalue { i32, i1 } %216, 1
  %RCX283 = sext i32 %ECX282 to i64
  %memref-idxreg284 = mul i64 4, %RCX283
  %memref-basereg285 = add i64 %memload274, %memref-idxreg284
  %217 = inttoptr i64 %memref-basereg285 to ptr
  %memload286 = load i32, ptr %217, align 1
  %memload287 = load i32, ptr %RBP_N.60, align 1
  %EAX289 = add i32 %memload286, %memload287
  %218 = and i32 %EAX289, 255
  %219 = call i32 @llvm.ctpop.i32(i32 %218)
  %220 = and i32 %219, 1
  %PF288 = icmp eq i32 %220, 0
  %221 = sext i32 %EAX289 to i64
  %222 = lshr i64 %221, 32
  %EDX290 = trunc i64 %222 to i32
  %223 = sext i32 %EAX289 to i64
  %224 = sext i32 %EDX290 to i64
  %div_hb_ls291 = shl nuw i64 %224, 32
  %dividend292 = or i64 %div_hb_ls291, %223
  %225 = sext i32 3 to i64
  %div_q293 = sdiv i64 %dividend292, %225
  %EAX294 = trunc i64 %div_q293 to i32
  %div_r295 = srem i64 %dividend292, %225
  %EDX296 = trunc i64 %div_r295 to i32
  %memload297 = load i64, ptr %RBP_N.88, align 1
  %memload298 = load i32, ptr %RBP_N.80, align 1
  %RCX299 = sext i32 %EDX296 to i64
  %memref-idxreg300 = mul i64 4, %RCX299
  %memref-basereg301 = add i64 %memload297, %memref-idxreg300
  %226 = inttoptr i64 %memref-basereg301 to ptr
  %memload302 = load i32, ptr %226, align 1
  %EDX304 = add i32 %memload298, %memload302
  %227 = and i32 %EDX304, 255
  %228 = call i32 @llvm.ctpop.i32(i32 %227)
  %229 = and i32 %228, 1
  %PF303 = icmp eq i32 %229, 0
  %memref-idxreg305 = mul i64 4, %RCX299
  %memref-basereg306 = add i64 %memload297, %memref-idxreg305
  %230 = inttoptr i64 %memref-basereg306 to ptr
  store i32 %EDX304, ptr %230, align 1
  %memload307 = load i32, ptr %RBP_N.60, align 1
  %EAX314 = add i32 %memload307, 1
  %231 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload307, i32 1)
  %CF308 = extractvalue { i32, i1 } %231, 1
  %232 = and i32 %EAX314, 255
  %233 = call i32 @llvm.ctpop.i32(i32 %232)
  %234 = and i32 %233, 1
  %PF309 = icmp eq i32 %234, 0
  %ZF310 = icmp eq i32 %EAX314, 0
  %highbit311 = and i32 -2147483648, %EAX314
  %SF312 = icmp ne i32 %highbit311, 0
  %235 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload307, i32 1)
  %OF313 = extractvalue { i32, i1 } %235, 1
  store i32 %EAX314, ptr %RBP_N.60, align 1
  br label %bb.18

bb.20:                                            ; preds = %bb.18
  br label %bb.21

bb.21:                                            ; preds = %bb.20, %bb.16
  br label %bb.22

bb.22:                                            ; preds = %bb.21
  %memload315 = load i32, ptr %RBP_N.52, align 1
  %EAX322 = add i32 %memload315, 1
  %236 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload315, i32 1)
  %CF316 = extractvalue { i32, i1 } %236, 1
  %237 = and i32 %EAX322, 255
  %238 = call i32 @llvm.ctpop.i32(i32 %237)
  %239 = and i32 %238, 1
  %PF317 = icmp eq i32 %239, 0
  %ZF318 = icmp eq i32 %EAX322, 0
  %highbit319 = and i32 -2147483648, %EAX322
  %SF320 = icmp ne i32 %highbit319, 0
  %240 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload315, i32 1)
  %OF321 = extractvalue { i32, i1 } %240, 1
  store i32 %EAX322, ptr %RBP_N.52, align 1
  br label %bb.12

bb.23:                                            ; preds = %bb.12
  store i32 0, ptr %RBP_N.64, align 1
  br label %bb.24

bb.24:                                            ; preds = %bb.23, %bb.29
  %memload323 = load i32, ptr %RBP_N.64, align 1
  %241 = load i32, ptr %RBP_N.4, align 1
  %242 = sub i32 %memload323, %241
  %243 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload323, i32 %241)
  %CF324 = extractvalue { i32, i1 } %243, 1
  %ZF325 = icmp eq i32 %242, 0
  %highbit326 = and i32 -2147483648, %242
  %SF327 = icmp ne i32 %highbit326, 0
  %244 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload323, i32 %241)
  %OF328 = extractvalue { i32, i1 } %244, 1
  %245 = and i32 %242, 255
  %246 = call i32 @llvm.ctpop.i32(i32 %245)
  %247 = and i32 %246, 1
  %PF329 = icmp eq i32 %247, 0
  %ZFCmp_JG440 = icmp eq i1 %ZF325, false
  %SFOFCmp_JG441 = icmp eq i1 %SF327, %OF328
  %ZFAndSFOF_JG442 = and i1 %ZFCmp_JG440, %SFOFCmp_JG441
  br i1 %ZFAndSFOF_JG442, label %bb.30, label %bb.25

bb.25:                                            ; preds = %bb.24
  store i32 0, ptr %RBP_N.68, align 1
  br label %bb.26

bb.26:                                            ; preds = %bb.25, %bb.27
  %248 = load i32, ptr %RBP_N.68, align 1
  %249 = zext i32 %248 to i64
  %250 = zext i32 3 to i64
  %251 = sub i64 %249, %250
  %252 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %249, i64 %250)
  %CF330 = extractvalue { i64, i1 } %252, 1
  %ZF331 = icmp eq i64 %251, 0
  %highbit332 = and i64 -9223372036854775808, %251
  %SF333 = icmp ne i64 %highbit332, 0
  %253 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %249, i64 %250)
  %OF334 = extractvalue { i64, i1 } %253, 1
  %254 = and i64 %251, 255
  %255 = call i64 @llvm.ctpop.i64(i64 %254)
  %256 = and i64 %255, 1
  %PF335 = icmp eq i64 %256, 0
  %CmpSFOF_JGE443 = icmp eq i1 %SF333, %OF334
  br i1 %CmpSFOF_JGE443, label %bb.28, label %bb.27

bb.27:                                            ; preds = %bb.26
  %memload336 = load i64, ptr %RBP_N.32, align 1
  %memload337 = load i64, ptr %RBP_N.64, align 1
  %257 = trunc i64 %memload337 to i32
  %RCX338 = sext i32 %257 to i64
  %memref-idxreg339 = mul i64 8, %RCX338
  %memref-basereg340 = add i64 %memload336, %memref-idxreg339
  %258 = inttoptr i64 %memref-basereg340 to ptr
  %memload341 = load i64, ptr %258, align 1
  %memload342 = load i64, ptr %RBP_N.68, align 1
  %259 = trunc i64 %memload342 to i32
  %RCX343 = sext i32 %259 to i64
  %memref-idxreg344 = mul i64 4, %RCX343
  %memref-basereg345 = add i64 %memload341, %memref-idxreg344
  %260 = inttoptr i64 %memref-basereg345 to ptr
  %memload346 = load i32, ptr %260, align 1
  %memload347 = load i64, ptr %RBP_N.24, align 1
  %memload348 = load i64, ptr %RBP_N.64, align 1
  %261 = trunc i64 %memload348 to i32
  %RCX349 = sext i32 %261 to i64
  %memref-idxreg350 = mul i64 8, %RCX349
  %memref-basereg351 = add i64 %memload347, %memref-idxreg350
  %262 = inttoptr i64 %memref-basereg351 to ptr
  %memload352 = load i64, ptr %262, align 1
  %memload353 = load i64, ptr %RBP_N.68, align 1
  %263 = trunc i64 %memload353 to i32
  %RCX354 = sext i32 %263 to i64
  %memref-idxreg355 = mul i64 4, %RCX354
  %memref-basereg356 = add i64 %memload352, %memref-idxreg355
  %264 = inttoptr i64 %memref-basereg356 to ptr
  store i32 %memload346, ptr %264, align 1
  %memload357 = load i64, ptr %RBP_N.32, align 1
  %memload358 = load i64, ptr %RBP_N.64, align 1
  %265 = trunc i64 %memload358 to i32
  %RCX359 = sext i32 %265 to i64
  %memref-idxreg360 = mul i64 8, %RCX359
  %memref-basereg361 = add i64 %memload357, %memref-idxreg360
  %266 = inttoptr i64 %memref-basereg361 to ptr
  %memload362 = load i64, ptr %266, align 1
  %memload363 = load i64, ptr %RBP_N.68, align 1
  %267 = trunc i64 %memload363 to i32
  %RCX364 = sext i32 %267 to i64
  %memref-idxreg365 = mul i64 4, %RCX364
  %memref-basereg366 = add i64 %memload362, %memref-idxreg365
  %268 = inttoptr i64 %memref-basereg366 to ptr
  store i32 0, ptr %268, align 1
  %memload367 = load i32, ptr %RBP_N.68, align 1
  %EAX374 = add i32 %memload367, 1
  %269 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload367, i32 1)
  %CF368 = extractvalue { i32, i1 } %269, 1
  %270 = and i32 %EAX374, 255
  %271 = call i32 @llvm.ctpop.i32(i32 %270)
  %272 = and i32 %271, 1
  %PF369 = icmp eq i32 %272, 0
  %ZF370 = icmp eq i32 %EAX374, 0
  %highbit371 = and i32 -2147483648, %EAX374
  %SF372 = icmp ne i32 %highbit371, 0
  %273 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload367, i32 1)
  %OF373 = extractvalue { i32, i1 } %273, 1
  store i32 %EAX374, ptr %RBP_N.68, align 1
  br label %bb.26

bb.28:                                            ; preds = %bb.26
  br label %bb.29

bb.29:                                            ; preds = %bb.28
  %memload375 = load i32, ptr %RBP_N.64, align 1
  %EAX382 = add i32 %memload375, 1
  %274 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload375, i32 1)
  %CF376 = extractvalue { i32, i1 } %274, 1
  %275 = and i32 %EAX382, 255
  %276 = call i32 @llvm.ctpop.i32(i32 %275)
  %277 = and i32 %276, 1
  %PF377 = icmp eq i32 %277, 0
  %ZF378 = icmp eq i32 %EAX382, 0
  %highbit379 = and i32 -2147483648, %EAX382
  %SF380 = icmp ne i32 %highbit379, 0
  %278 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload375, i32 1)
  %OF381 = extractvalue { i32, i1 } %278, 1
  store i32 %EAX382, ptr %RBP_N.64, align 1
  br label %bb.24

bb.30:                                            ; preds = %bb.24
  br label %bb.31

bb.31:                                            ; preds = %bb.30
  %memload383 = load i32, ptr %RBP_N.48, align 1
  %EAX390 = add i32 %memload383, 1
  %279 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload383, i32 1)
  %CF384 = extractvalue { i32, i1 } %279, 1
  %280 = and i32 %EAX390, 255
  %281 = call i32 @llvm.ctpop.i32(i32 %280)
  %282 = and i32 %281, 1
  %PF385 = icmp eq i32 %282, 0
  %ZF386 = icmp eq i32 %EAX390, 0
  %highbit387 = and i32 -2147483648, %EAX390
  %SF388 = icmp ne i32 %highbit387, 0
  %283 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload383, i32 1)
  %OF389 = extractvalue { i32, i1 } %283, 1
  store i32 %EAX390, ptr %RBP_N.48, align 1
  br label %bb.10

bb.32:                                            ; preds = %bb.10
  %memload391 = load i64, ptr %RBP_N.24, align 1
  %memload392 = load i64, ptr %RBP_N.4, align 1
  %284 = trunc i64 %memload392 to i32
  %RCX393 = sext i32 %284 to i64
  %memref-idxreg394 = mul i64 8, %RCX393
  %memref-basereg395 = add i64 %memload391, %memref-idxreg394
  %285 = inttoptr i64 %memref-basereg395 to ptr
  %memload396 = load i64, ptr %285, align 1
  %286 = inttoptr i64 %memload396 to ptr
  %memload397 = load i32, ptr %286, align 1
  store i32 %memload397, ptr %RBP_N.72, align 1
  store i32 0, ptr %RBP_N.76, align 1
  br label %bb.33

bb.33:                                            ; preds = %bb.32, %bb.34
  %memload398 = load i32, ptr %RBP_N.76, align 1
  %287 = load i32, ptr %RBP_N.4, align 1
  %288 = sub i32 %memload398, %287
  %289 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload398, i32 %287)
  %CF399 = extractvalue { i32, i1 } %289, 1
  %ZF400 = icmp eq i32 %288, 0
  %highbit401 = and i32 -2147483648, %288
  %SF402 = icmp ne i32 %highbit401, 0
  %290 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload398, i32 %287)
  %OF403 = extractvalue { i32, i1 } %290, 1
  %291 = and i32 %288, 255
  %292 = call i32 @llvm.ctpop.i32(i32 %291)
  %293 = and i32 %292, 1
  %PF404 = icmp eq i32 %293, 0
  %ZFCmp_JG444 = icmp eq i1 %ZF400, false
  %SFOFCmp_JG445 = icmp eq i1 %SF402, %OF403
  %ZFAndSFOF_JG446 = and i1 %ZFCmp_JG444, %SFOFCmp_JG445
  br i1 %ZFAndSFOF_JG446, label %bb.35, label %bb.34

bb.34:                                            ; preds = %bb.33
  %memload405 = load i64, ptr %RBP_N.24, align 1
  %memload406 = load i64, ptr %RBP_N.76, align 1
  %294 = trunc i64 %memload406 to i32
  %RCX407 = sext i32 %294 to i64
  %memref-idxreg408 = mul i64 8, %RCX407
  %memref-basereg409 = add i64 %memload405, %memref-idxreg408
  %295 = inttoptr i64 %memref-basereg409 to ptr
  %memload410 = load i64, ptr %295, align 1
  %296 = inttoptr i64 %memload410 to ptr
  call void @free(ptr %296)
  %memload411 = load i64, ptr %RBP_N.32, align 1
  %memload412 = load i64, ptr %RBP_N.76, align 1
  %297 = trunc i64 %memload412 to i32
  %RCX413 = sext i32 %297 to i64
  %memref-idxreg414 = mul i64 8, %RCX413
  %memref-basereg415 = add i64 %memload411, %memref-idxreg414
  %298 = inttoptr i64 %memref-basereg415 to ptr
  %memload416 = load i64, ptr %298, align 1
  %299 = inttoptr i64 %memload416 to ptr
  call void @free(ptr %299)
  %memload417 = load i32, ptr %RBP_N.76, align 1
  %EAX424 = add i32 %memload417, 1
  %300 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload417, i32 1)
  %CF418 = extractvalue { i32, i1 } %300, 1
  %301 = and i32 %EAX424, 255
  %302 = call i32 @llvm.ctpop.i32(i32 %301)
  %303 = and i32 %302, 1
  %PF419 = icmp eq i32 %303, 0
  %ZF420 = icmp eq i32 %EAX424, 0
  %highbit421 = and i32 -2147483648, %EAX424
  %SF422 = icmp ne i32 %highbit421, 0
  %304 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload417, i32 1)
  %OF423 = extractvalue { i32, i1 } %304, 1
  store i32 %EAX424, ptr %RBP_N.76, align 1
  br label %bb.33

bb.35:                                            ; preds = %bb.33
  %memload425 = load i64, ptr %RBP_N.24, align 1
  %305 = inttoptr i64 %memload425 to ptr
  call void @free(ptr %305)
  %memload426 = load i64, ptr %RBP_N.32, align 1
  %306 = inttoptr i64 %memload426 to ptr
  call void @free(ptr %306)
  %memload427 = load i64, ptr %RBP_N.16, align 1
  %307 = inttoptr i64 %memload427 to ptr
  call void @free(ptr %307)
  %memload428 = load i32, ptr %RBP_N.72, align 1
  ret i32 %memload428
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

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
