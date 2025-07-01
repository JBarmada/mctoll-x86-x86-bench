; ModuleID = 'code.so'
source_filename = "code.so"

@rodata_13 = private unnamed_addr constant [11 x i8] c"aeiouAEIOU\00", align 1, !ROData_SecInfo !0

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @malloc(i64)

declare dso_local ptr @__ctype_b_loc()

declare dso_local ptr @strchr(ptr, i32)

declare dso_local ptr @realloc(ptr, i64)

declare dso_local ptr @strcpy(ptr, ptr)

declare dso_local void @free(ptr)

define dso_local i64 @func0(i64 %arg1, i32 %arg2, i64 %arg3) {
entry:
  %stktop_8 = alloca i8, i32 88, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.72 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.64 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 36
  %RBP_N.52 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 40
  %RBP_N.48 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 44
  %RBP_N.44 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 48
  %RBP_N.40 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 56
  %RBP_N.32 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 64
  %RBP_N.24 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 76
  %RBP_N.12 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 80
  %RBP_N.8 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %10 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  %RAX = ptrtoint ptr @rodata_13 to i64
  store i64 %RAX, ptr %RBP_N.32, align 1
  %11 = sext i32 0 to i64
  store i64 %11, ptr %RBP_N.40, align 1
  store i32 0, ptr %RBP_N.44, align 1
  store i32 0, ptr %RBP_N.48, align 1
  store i32 0, ptr %RBP_N.52, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  %12 = inttoptr i64 %memload to ptr
  %RAX1 = call i64 @strlen(ptr %12)
  store i64 %RAX1, ptr %RBP_N.64, align 1
  %memload2 = load i64, ptr %RBP_N.64, align 1
  %RDI = add i64 %memload2, 1
  %13 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %memload2, i64 1)
  %CF = extractvalue { i64, i1 } %13, 1
  %14 = and i64 %RDI, 255
  %15 = call i64 @llvm.ctpop.i64(i64 %14)
  %16 = and i64 %15, 1
  %PF = icmp eq i64 %16, 0
  %ZF = icmp eq i64 %RDI, 0
  %highbit = and i64 -9223372036854775808, %RDI
  %SF = icmp ne i64 %highbit, 0
  %17 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %memload2, i64 1)
  %OF = extractvalue { i64, i1 } %17, 1
  %18 = call ptr @malloc(i64 %RDI)
  %RAX3 = ptrtoint ptr %18 to i64
  store i64 %RAX3, ptr %RBP_N.72, align 1
  %19 = ptrtoint ptr %stktop_8 to i64
  %20 = add i64 %19, 4
  %21 = inttoptr i64 %20 to ptr
  store i32 0, ptr %21, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.12
  %22 = ptrtoint ptr %stktop_8 to i64
  %23 = add i64 %22, 4
  %24 = inttoptr i64 %23 to ptr
  %memload4 = load i64, ptr %24, align 1
  %25 = trunc i64 %memload4 to i32
  %RAX5 = sext i32 %25 to i64
  %26 = load i64, ptr %RBP_N.64, align 1
  %27 = sub i64 %RAX5, %26
  %28 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX5, i64 %26)
  %CF6 = extractvalue { i64, i1 } %28, 1
  %ZF7 = icmp eq i64 %27, 0
  %highbit8 = and i64 -9223372036854775808, %27
  %SF9 = icmp ne i64 %highbit8, 0
  %29 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX5, i64 %26)
  %OF10 = extractvalue { i64, i1 } %29, 1
  %30 = and i64 %27, 255
  %31 = call i64 @llvm.ctpop.i64(i64 %30)
  %32 = and i64 %31, 1
  %PF11 = icmp eq i64 %32, 0
  %CFCmp_JA = icmp eq i1 %CF6, false
  %ZFCmp_JA = icmp eq i1 %ZF7, false
  %CFAndZF_JA = and i1 %ZFCmp_JA, %CFCmp_JA
  br i1 %CFAndZF_JA, label %bb.13, label %bb.2

bb.2:                                             ; preds = %bb.1
  %33 = call ptr @__ctype_b_loc()
  %memload13 = load i64, ptr %33, align 1
  %memload14 = load i64, ptr %RBP_N.8, align 1
  %34 = ptrtoint ptr %stktop_8 to i64
  %35 = add i64 %34, 4
  %36 = inttoptr i64 %35 to ptr
  %memload15 = load i64, ptr %36, align 1
  %37 = trunc i64 %memload15 to i32
  %RDX = sext i32 %37 to i64
  %memref-basereg = add i64 %memload14, %RDX
  %38 = inttoptr i64 %memref-basereg to ptr
  %memload16 = load i32, ptr %38, align 1
  %39 = trunc i32 %memload16 to i8
  %ECX = sext i8 %39 to i32
  %RCX = sext i32 %ECX to i64
  %memref-idxreg = mul i64 2, %RCX
  %memref-basereg17 = add i64 %memload13, %memref-idxreg
  %40 = inttoptr i64 %memref-basereg17 to ptr
  %memload18 = load i32, ptr %40, align 1
  %41 = trunc i32 %memload18 to i16
  %EAX = zext i16 %41 to i32
  %EAX23 = and i32 %EAX, 8192
  %42 = and i32 %EAX23, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = and i32 %43, 1
  %PF19 = icmp eq i32 %44, 0
  %ZF20 = icmp eq i32 %EAX23, 0
  %highbit21 = and i32 -2147483648, %EAX23
  %SF22 = icmp ne i32 %highbit21, 0
  %45 = sub i32 %EAX23, 0
  %46 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX23, i32 0)
  %CF24 = extractvalue { i32, i1 } %46, 1
  %ZF25 = icmp eq i32 %45, 0
  %highbit26 = and i32 -2147483648, %45
  %SF27 = icmp ne i32 %highbit26, 0
  %47 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX23, i32 0)
  %OF28 = extractvalue { i32, i1 } %47, 1
  %48 = and i32 %45, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48)
  %50 = and i32 %49, 1
  %PF29 = icmp eq i32 %50, 0
  %CmpZF_JNE = icmp eq i1 %ZF25, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload30 = load i64, ptr %RBP_N.8, align 1
  %51 = ptrtoint ptr %stktop_8 to i64
  %52 = add i64 %51, 4
  %53 = inttoptr i64 %52 to ptr
  %memload31 = load i64, ptr %53, align 1
  %54 = trunc i64 %memload31 to i32
  %RCX32 = sext i32 %54 to i64
  %memref-basereg33 = add i64 %memload30, %RCX32
  %55 = inttoptr i64 %memref-basereg33 to ptr
  %memload34 = load i32, ptr %55, align 1
  %56 = trunc i32 %memload34 to i8
  %EAX35 = sext i8 %56 to i32
  %57 = sub i32 %EAX35, 0
  %58 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX35, i32 0)
  %CF36 = extractvalue { i32, i1 } %58, 1
  %ZF37 = icmp eq i32 %57, 0
  %highbit38 = and i32 -2147483648, %57
  %SF39 = icmp ne i32 %highbit38, 0
  %59 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX35, i32 0)
  %OF40 = extractvalue { i32, i1 } %59, 1
  %60 = and i32 %57, 255
  %61 = call i32 @llvm.ctpop.i32(i32 %60)
  %62 = and i32 %61, 1
  %PF41 = icmp eq i32 %62, 0
  %CmpZF_JNE186 = icmp eq i1 %ZF37, false
  br i1 %CmpZF_JNE186, label %bb.7, label %bb.4

bb.7:                                             ; preds = %bb.3
  %memload42 = load i64, ptr %RBP_N.8, align 1
  %63 = ptrtoint ptr %stktop_8 to i64
  %64 = add i64 %63, 4
  %65 = inttoptr i64 %64 to ptr
  %memload43 = load i64, ptr %65, align 1
  %66 = trunc i64 %memload43 to i32
  %RCX44 = sext i32 %66 to i64
  %memref-basereg45 = add i64 %memload42, %RCX44
  %67 = inttoptr i64 %memref-basereg45 to ptr
  %memload46 = load i8, ptr %67, align 1
  %memload47 = load i64, ptr %RBP_N.72, align 1
  %68 = ptrtoint ptr %stktop_8 to i64
  %69 = add i64 %68, 4
  %70 = inttoptr i64 %69 to ptr
  %memload48 = load i32, ptr %70, align 1
  %71 = load i32, ptr %RBP_N.52, align 1
  %ECX49 = sub i32 %memload48, %71
  %72 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload48, i32 %71)
  %CF50 = extractvalue { i32, i1 } %72, 1
  %ZF51 = icmp eq i32 %ECX49, 0
  %highbit52 = and i32 -2147483648, %ECX49
  %SF53 = icmp ne i32 %highbit52, 0
  %73 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload48, i32 %71)
  %OF54 = extractvalue { i32, i1 } %73, 1
  %74 = and i32 %ECX49, 255
  %75 = call i32 @llvm.ctpop.i32(i32 %74)
  %76 = and i32 %75, 1
  %PF55 = icmp eq i32 %76, 0
  %RCX56 = sext i32 %ECX49 to i64
  %memref-basereg57 = add i64 %memload47, %RCX56
  %77 = inttoptr i64 %memref-basereg57 to ptr
  store i8 %memload46, ptr %77, align 1
  %memload58 = load i64, ptr %RBP_N.32, align 1
  %memload59 = load i64, ptr %RBP_N.8, align 1
  %78 = ptrtoint ptr %stktop_8 to i64
  %79 = add i64 %78, 4
  %80 = inttoptr i64 %79 to ptr
  %memload60 = load i64, ptr %80, align 1
  %81 = trunc i64 %memload60 to i32
  %RCX61 = sext i32 %81 to i64
  %memref-basereg62 = add i64 %memload59, %RCX61
  %82 = inttoptr i64 %memref-basereg62 to ptr
  %memload63 = load i32, ptr %82, align 1
  %83 = trunc i32 %memload63 to i8
  %ESI = sext i8 %83 to i32
  %84 = inttoptr i64 %memload58 to ptr
  %85 = call ptr @strchr(ptr %84, i32 %ESI)
  %RAX64 = ptrtoint ptr %85 to i64
  %86 = sub i64 %RAX64, 0
  %87 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %RAX64, i64 0)
  %CF65 = extractvalue { i64, i1 } %87, 1
  %ZF66 = icmp eq i64 %86, 0
  %highbit67 = and i64 -9223372036854775808, %86
  %SF68 = icmp ne i64 %highbit67, 0
  %88 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %RAX64, i64 0)
  %OF69 = extractvalue { i64, i1 } %88, 1
  %89 = and i64 %86, 255
  %90 = call i64 @llvm.ctpop.i64(i64 %89)
  %91 = and i64 %90, 1
  %PF70 = icmp eq i64 %91, 0
  %CmpZF_JNE187 = icmp eq i1 %ZF66, false
  br i1 %CmpZF_JNE187, label %bb.10, label %bb.8

bb.8:                                             ; preds = %bb.7
  %92 = call ptr @__ctype_b_loc()
  %memload72 = load i64, ptr %92, align 1
  %memload73 = load i64, ptr %RBP_N.8, align 1
  %93 = ptrtoint ptr %stktop_8 to i64
  %94 = add i64 %93, 4
  %95 = inttoptr i64 %94 to ptr
  %memload74 = load i64, ptr %95, align 1
  %96 = trunc i64 %memload74 to i32
  %RDX75 = sext i32 %96 to i64
  %memref-basereg76 = add i64 %memload73, %RDX75
  %97 = inttoptr i64 %memref-basereg76 to ptr
  %memload77 = load i32, ptr %97, align 1
  %98 = trunc i32 %memload77 to i8
  %ECX78 = zext i8 %98 to i32
  %RCX79 = sext i32 %ECX78 to i64
  %memref-idxreg80 = mul i64 2, %RCX79
  %memref-basereg81 = add i64 %memload72, %memref-idxreg80
  %99 = inttoptr i64 %memref-basereg81 to ptr
  %memload82 = load i32, ptr %99, align 1
  %100 = trunc i32 %memload82 to i16
  %EAX83 = zext i16 %100 to i32
  %EAX88 = and i32 %EAX83, 1024
  %101 = and i32 %EAX88, 255
  %102 = call i32 @llvm.ctpop.i32(i32 %101)
  %103 = and i32 %102, 1
  %PF84 = icmp eq i32 %103, 0
  %ZF85 = icmp eq i32 %EAX88, 0
  %highbit86 = and i32 -2147483648, %EAX88
  %SF87 = icmp ne i32 %highbit86, 0
  %104 = sub i32 %EAX88, 0
  %105 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX88, i32 0)
  %CF89 = extractvalue { i32, i1 } %105, 1
  %ZF90 = icmp eq i32 %104, 0
  %highbit91 = and i32 -2147483648, %104
  %SF92 = icmp ne i32 %highbit91, 0
  %106 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX88, i32 0)
  %OF93 = extractvalue { i32, i1 } %106, 1
  %107 = and i32 %104, 255
  %108 = call i32 @llvm.ctpop.i32(i32 %107)
  %109 = and i32 %108, 1
  %PF94 = icmp eq i32 %109, 0
  %CmpZF_JE = icmp eq i1 %ZF90, true
  br i1 %CmpZF_JE, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload95 = load i32, ptr %RBP_N.44, align 1
  %EAX102 = add i32 %memload95, 1
  %110 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload95, i32 1)
  %CF96 = extractvalue { i32, i1 } %110, 1
  %111 = and i32 %EAX102, 255
  %112 = call i32 @llvm.ctpop.i32(i32 %111)
  %113 = and i32 %112, 1
  %PF97 = icmp eq i32 %113, 0
  %ZF98 = icmp eq i32 %EAX102, 0
  %highbit99 = and i32 -2147483648, %EAX102
  %SF100 = icmp ne i32 %highbit99, 0
  %114 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload95, i32 1)
  %OF101 = extractvalue { i32, i1 } %114, 1
  store i32 %EAX102, ptr %RBP_N.44, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.8, %bb.7
  br label %bb.11

bb.4:                                             ; preds = %bb.3, %bb.2
  %memload103 = load i32, ptr %RBP_N.44, align 1
  %115 = load i32, ptr %RBP_N.12, align 1
  %116 = sub i32 %memload103, %115
  %117 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload103, i32 %115)
  %CF104 = extractvalue { i32, i1 } %117, 1
  %ZF105 = icmp eq i32 %116, 0
  %highbit106 = and i32 -2147483648, %116
  %SF107 = icmp ne i32 %highbit106, 0
  %118 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload103, i32 %115)
  %OF108 = extractvalue { i32, i1 } %118, 1
  %119 = and i32 %116, 255
  %120 = call i32 @llvm.ctpop.i32(i32 %119)
  %121 = and i32 %120, 1
  %PF109 = icmp eq i32 %121, 0
  %CmpZF_JNE188 = icmp eq i1 %ZF105, false
  br i1 %CmpZF_JNE188, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload110 = load i64, ptr %RBP_N.72, align 1
  %122 = ptrtoint ptr %stktop_8 to i64
  %123 = add i64 %122, 4
  %124 = inttoptr i64 %123 to ptr
  %memload111 = load i32, ptr %124, align 1
  %125 = load i32, ptr %RBP_N.52, align 1
  %ECX112 = sub i32 %memload111, %125
  %126 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload111, i32 %125)
  %CF113 = extractvalue { i32, i1 } %126, 1
  %ZF114 = icmp eq i32 %ECX112, 0
  %highbit115 = and i32 -2147483648, %ECX112
  %SF116 = icmp ne i32 %highbit115, 0
  %127 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload111, i32 %125)
  %OF117 = extractvalue { i32, i1 } %127, 1
  %128 = and i32 %ECX112, 255
  %129 = call i32 @llvm.ctpop.i32(i32 %128)
  %130 = and i32 %129, 1
  %PF118 = icmp eq i32 %130, 0
  %RCX119 = sext i32 %ECX112 to i64
  %memref-basereg120 = add i64 %memload110, %RCX119
  %131 = inttoptr i64 %memref-basereg120 to ptr
  store i8 0, ptr %131, align 1
  %memload121 = load i64, ptr %RBP_N.40, align 1
  %memload122 = load i32, ptr %RBP_N.48, align 1
  %EAX129 = add i32 %memload122, 1
  %132 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload122, i32 1)
  %CF123 = extractvalue { i32, i1 } %132, 1
  %133 = and i32 %EAX129, 255
  %134 = call i32 @llvm.ctpop.i32(i32 %133)
  %135 = and i32 %134, 1
  %PF124 = icmp eq i32 %135, 0
  %ZF125 = icmp eq i32 %EAX129, 0
  %highbit126 = and i32 -2147483648, %EAX129
  %SF127 = icmp ne i32 %highbit126, 0
  %136 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload122, i32 1)
  %OF128 = extractvalue { i32, i1 } %136, 1
  %RSI = sext i32 %EAX129 to i64
  %RSI133 = shl i64 %RSI, 3
  %ZF130 = icmp eq i64 %RSI133, 0
  %highbit131 = and i64 -9223372036854775808, %RSI133
  %SF132 = icmp ne i64 %highbit131, 0
  %137 = inttoptr i64 %memload121 to ptr
  %138 = call ptr @realloc(ptr %137, i64 %RSI133)
  %RAX134 = ptrtoint ptr %138 to i64
  store i64 %RAX134, ptr %RBP_N.40, align 1
  %memload135 = load i64, ptr %RBP_N.72, align 1
  %139 = inttoptr i64 %memload135 to ptr
  %RAX136 = call i64 @strlen(ptr %139)
  %RDI143 = add i64 %RAX136, 1
  %140 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %RAX136, i64 1)
  %CF137 = extractvalue { i64, i1 } %140, 1
  %141 = and i64 %RDI143, 255
  %142 = call i64 @llvm.ctpop.i64(i64 %141)
  %143 = and i64 %142, 1
  %PF138 = icmp eq i64 %143, 0
  %ZF139 = icmp eq i64 %RDI143, 0
  %highbit140 = and i64 -9223372036854775808, %RDI143
  %SF141 = icmp ne i64 %highbit140, 0
  %144 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %RAX136, i64 1)
  %OF142 = extractvalue { i64, i1 } %144, 1
  %145 = call ptr @malloc(i64 %RDI143)
  %RAX144 = ptrtoint ptr %145 to i64
  %memload145 = load i64, ptr %RBP_N.40, align 1
  %memload146 = load i64, ptr %RBP_N.48, align 1
  %146 = trunc i64 %memload146 to i32
  %RCX147 = sext i32 %146 to i64
  %memref-idxreg148 = mul i64 8, %RCX147
  %memref-basereg149 = add i64 %memload145, %memref-idxreg148
  %147 = inttoptr i64 %memref-basereg149 to ptr
  store i64 %RAX144, ptr %147, align 1
  %memload150 = load i64, ptr %RBP_N.40, align 1
  %memload151 = load i64, ptr %RBP_N.48, align 1
  %148 = trunc i64 %memload151 to i32
  %RCX152 = sext i32 %148 to i64
  %memref-idxreg153 = mul i64 8, %RCX152
  %memref-basereg154 = add i64 %memload150, %memref-idxreg153
  %149 = inttoptr i64 %memref-basereg154 to ptr
  %memload155 = load i64, ptr %149, align 1
  %memload156 = load i64, ptr %RBP_N.72, align 1
  %150 = inttoptr i64 %memload155 to ptr
  %151 = inttoptr i64 %memload156 to ptr
  %152 = call ptr @strcpy(ptr %150, ptr %151)
  %RAX157 = ptrtoint ptr %152 to i64
  %memload158 = load i32, ptr %RBP_N.48, align 1
  %EAX165 = add i32 %memload158, 1
  %153 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload158, i32 1)
  %CF159 = extractvalue { i32, i1 } %153, 1
  %154 = and i32 %EAX165, 255
  %155 = call i32 @llvm.ctpop.i32(i32 %154)
  %156 = and i32 %155, 1
  %PF160 = icmp eq i32 %156, 0
  %ZF161 = icmp eq i32 %EAX165, 0
  %highbit162 = and i32 -2147483648, %EAX165
  %SF163 = icmp ne i32 %highbit162, 0
  %157 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload158, i32 1)
  %OF164 = extractvalue { i32, i1 } %157, 1
  store i32 %EAX165, ptr %RBP_N.48, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  %158 = ptrtoint ptr %stktop_8 to i64
  %159 = add i64 %158, 4
  %160 = inttoptr i64 %159 to ptr
  %memload166 = load i32, ptr %160, align 1
  %EAX173 = add i32 %memload166, 1
  %161 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload166, i32 1)
  %CF167 = extractvalue { i32, i1 } %161, 1
  %162 = and i32 %EAX173, 255
  %163 = call i32 @llvm.ctpop.i32(i32 %162)
  %164 = and i32 %163, 1
  %PF168 = icmp eq i32 %164, 0
  %ZF169 = icmp eq i32 %EAX173, 0
  %highbit170 = and i32 -2147483648, %EAX173
  %SF171 = icmp ne i32 %highbit170, 0
  %165 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload166, i32 1)
  %OF172 = extractvalue { i32, i1 } %165, 1
  store i32 %EAX173, ptr %RBP_N.52, align 1
  store i32 0, ptr %RBP_N.44, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.6, %bb.10
  br label %bb.12

bb.12:                                            ; preds = %bb.11
  %166 = ptrtoint ptr %stktop_8 to i64
  %167 = add i64 %166, 4
  %168 = inttoptr i64 %167 to ptr
  %memload174 = load i32, ptr %168, align 1
  %EAX181 = add i32 %memload174, 1
  %169 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload174, i32 1)
  %CF175 = extractvalue { i32, i1 } %169, 1
  %170 = and i32 %EAX181, 255
  %171 = call i32 @llvm.ctpop.i32(i32 %170)
  %172 = and i32 %171, 1
  %PF176 = icmp eq i32 %172, 0
  %ZF177 = icmp eq i32 %EAX181, 0
  %highbit178 = and i32 -2147483648, %EAX181
  %SF179 = icmp ne i32 %highbit178, 0
  %173 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload174, i32 1)
  %OF180 = extractvalue { i32, i1 } %173, 1
  %174 = ptrtoint ptr %stktop_8 to i64
  %175 = add i64 %174, 4
  %176 = inttoptr i64 %175 to ptr
  store i32 %EAX181, ptr %176, align 1
  br label %bb.1

bb.13:                                            ; preds = %bb.1
  %memload182 = load i64, ptr %RBP_N.72, align 1
  %177 = inttoptr i64 %memload182 to ptr
  call void @free(ptr %177)
  %memload183 = load i32, ptr %RBP_N.48, align 1
  %memload184 = load i64, ptr %RBP_N.24, align 1
  %178 = inttoptr i64 %memload184 to ptr
  store i32 %memload183, ptr %178, align 1
  %memload185 = load i64, ptr %RBP_N.40, align 1
  ret i64 %memload185
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 8192}
