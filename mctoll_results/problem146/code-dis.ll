; ModuleID = 'code.so'
source_filename = "code.so"

@0 = private unnamed_addr constant [3 x i8] c"%d\00", align 1, !ROData_SecInfo !0

declare dso_local ptr @malloc(i64)

declare dso_local i32 @abs(i32)

declare dso_local i32 @sprintf(ptr, ptr, ...)

declare dso_local i64 @strlen(ptr)

declare dso_local void @free(ptr)

define dso_local i64 @func0(i64 %arg1, i32 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 88, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.72 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.64 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.60 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.56 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.52 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 40
  %RBP_N.48 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 44
  %RBP_N.44 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 48
  %8 = inttoptr i64 %7 to ptr
  %9 = add i64 %tos, 60
  %RBP_N.28 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 64
  %RBP_N.24 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 76
  %RBP_N.12 = inttoptr i64 %11 to ptr
  %12 = add i64 %tos, 80
  %RBP_N.8 = inttoptr i64 %12 to ptr
  %13 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %13 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  %memload = load i64, ptr %RBP_N.12, align 1
  %14 = trunc i64 %memload to i32
  %RDI = sext i32 %14 to i64
  %RDI1 = shl i64 %RDI, 2
  %ZF = icmp eq i64 %RDI1, 0
  %highbit = and i64 -9223372036854775808, %RDI1
  %SF = icmp ne i64 %highbit, 0
  %15 = call ptr @malloc(i64 %RDI1)
  %RAX = ptrtoint ptr %15 to i64
  store i64 %RAX, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.8
  %memload2 = load i32, ptr %RBP_N.28, align 1
  %16 = load i32, ptr %RBP_N.12, align 1
  %17 = sub i32 %memload2, %16
  %18 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload2, i32 %16)
  %CF = extractvalue { i32, i1 } %18, 1
  %ZF3 = icmp eq i32 %17, 0
  %highbit4 = and i32 -2147483648, %17
  %SF5 = icmp ne i32 %highbit4, 0
  %19 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload2, i32 %16)
  %OF = extractvalue { i32, i1 } %19, 1
  %20 = and i32 %17, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = and i32 %21, 1
  %PF = icmp eq i32 %22, 0
  %CmpSFOF_JGE = icmp eq i1 %SF5, %OF
  br i1 %CmpSFOF_JGE, label %bb.9, label %bb.2

bb.2:                                             ; preds = %bb.1
  %RAX6 = ptrtoint ptr %8 to i64
  store i64 %RAX6, ptr %RBP_N.72, align 1
  %memload7 = load i64, ptr %RBP_N.8, align 1
  %memload8 = load i64, ptr %RBP_N.28, align 1
  %23 = trunc i64 %memload8 to i32
  %RCX = sext i32 %23 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload7, %memref-idxreg
  %24 = inttoptr i64 %memref-basereg to ptr
  %memload9 = load i32, ptr %24, align 1
  %EAX = call i32 @abs(i32 %memload9)
  %memload10 = load i64, ptr %RBP_N.72, align 1
  %25 = inttoptr i64 %memload10 to ptr
  %EAX11 = call i32 (ptr, ptr, ...) @sprintf(ptr %25, ptr @0, i32 %EAX)
  store i32 0, ptr %RBP_N.44, align 1
  %RAX13 = call i64 @strlen(ptr %8)
  %26 = trunc i64 %RAX13 to i32
  store i32 %26, ptr %RBP_N.48, align 1
  store i32 1, ptr %RBP_N.52, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.4
  %memload14 = load i32, ptr %RBP_N.52, align 1
  %27 = load i32, ptr %RBP_N.48, align 1
  %28 = sub i32 %memload14, %27
  %29 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload14, i32 %27)
  %CF15 = extractvalue { i32, i1 } %29, 1
  %ZF16 = icmp eq i32 %28, 0
  %highbit17 = and i32 -2147483648, %28
  %SF18 = icmp ne i32 %highbit17, 0
  %30 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload14, i32 %27)
  %OF19 = extractvalue { i32, i1 } %30, 1
  %31 = and i32 %28, 255
  %32 = call i32 @llvm.ctpop.i32(i32 %31)
  %33 = and i32 %32, 1
  %PF20 = icmp eq i32 %33, 0
  %CmpSFOF_JGE225 = icmp eq i1 %SF18, %OF19
  br i1 %CmpSFOF_JGE225, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload21 = load i64, ptr %RBP_N.52, align 1
  %34 = trunc i64 %memload21 to i32
  %RAX22 = sext i32 %34 to i64
  %35 = getelementptr i8, ptr %8, i64 %RAX22
  %memload23 = load i32, ptr %35, align 1
  %36 = trunc i32 %memload23 to i8
  %EAX24 = sext i8 %36 to i32
  %EAX31 = sub i32 %EAX24, 48
  %37 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX24, i32 48)
  %CF25 = extractvalue { i32, i1 } %37, 1
  %38 = and i32 %EAX31, 255
  %39 = call i32 @llvm.ctpop.i32(i32 %38)
  %40 = and i32 %39, 1
  %PF26 = icmp eq i32 %40, 0
  %ZF27 = icmp eq i32 %EAX31, 0
  %highbit28 = and i32 -2147483648, %EAX31
  %SF29 = icmp ne i32 %highbit28, 0
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX24, i32 48)
  %OF30 = extractvalue { i32, i1 } %41, 1
  %memload32 = load i32, ptr %RBP_N.44, align 1
  %EAX34 = add i32 %EAX31, %memload32
  %42 = and i32 %EAX34, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = and i32 %43, 1
  %PF33 = icmp eq i32 %44, 0
  store i32 %EAX34, ptr %RBP_N.44, align 1
  %memload35 = load i32, ptr %RBP_N.52, align 1
  %EAX42 = add i32 %memload35, 1
  %45 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload35, i32 1)
  %CF36 = extractvalue { i32, i1 } %45, 1
  %46 = and i32 %EAX42, 255
  %47 = call i32 @llvm.ctpop.i32(i32 %46)
  %48 = and i32 %47, 1
  %PF37 = icmp eq i32 %48, 0
  %ZF38 = icmp eq i32 %EAX42, 0
  %highbit39 = and i32 -2147483648, %EAX42
  %SF40 = icmp ne i32 %highbit39, 0
  %49 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload35, i32 1)
  %OF41 = extractvalue { i32, i1 } %49, 1
  store i32 %EAX42, ptr %RBP_N.52, align 1
  br label %bb.3

bb.5:                                             ; preds = %bb.3
  %memload43 = load i64, ptr %RBP_N.8, align 1
  %memload44 = load i64, ptr %RBP_N.28, align 1
  %50 = trunc i64 %memload44 to i32
  %RCX45 = sext i32 %50 to i64
  %memref-idxreg46 = mul i64 4, %RCX45
  %memref-basereg47 = add i64 %memload43, %memref-idxreg46
  %51 = inttoptr i64 %memref-basereg47 to ptr
  %52 = load i32, ptr %51, align 1
  %53 = zext i32 %52 to i64
  %54 = zext i32 0 to i64
  %55 = sub i64 %53, %54
  %56 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %53, i64 %54)
  %CF48 = extractvalue { i64, i1 } %56, 1
  %ZF49 = icmp eq i64 %55, 0
  %highbit50 = and i64 -9223372036854775808, %55
  %SF51 = icmp ne i64 %highbit50, 0
  %57 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %53, i64 %54)
  %OF52 = extractvalue { i64, i1 } %57, 1
  %58 = and i64 %55, 255
  %59 = call i64 @llvm.ctpop.i64(i64 %58)
  %60 = and i64 %59, 1
  %PF53 = icmp eq i64 %60, 0
  %CmpZF_JLE = icmp eq i1 %ZF49, true
  %CmpOF_JLE = icmp ne i1 %SF51, %OF52
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload54 = load i32, ptr %8, align 1
  %61 = trunc i32 %memload54 to i8
  %EAX55 = sext i8 %61 to i32
  %EAX62 = sub i32 %EAX55, 48
  %62 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX55, i32 48)
  %CF56 = extractvalue { i32, i1 } %62, 1
  %63 = and i32 %EAX62, 255
  %64 = call i32 @llvm.ctpop.i32(i32 %63)
  %65 = and i32 %64, 1
  %PF57 = icmp eq i32 %65, 0
  %ZF58 = icmp eq i32 %EAX62, 0
  %highbit59 = and i32 -2147483648, %EAX62
  %SF60 = icmp ne i32 %highbit59, 0
  %66 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX55, i32 48)
  %OF61 = extractvalue { i32, i1 } %66, 1
  %memload63 = load i32, ptr %RBP_N.44, align 1
  %EAX65 = add i32 %EAX62, %memload63
  %67 = and i32 %EAX65, 255
  %68 = call i32 @llvm.ctpop.i32(i32 %67)
  %69 = and i32 %68, 1
  %PF64 = icmp eq i32 %69, 0
  store i32 %EAX65, ptr %RBP_N.44, align 1
  br label %bb.8

bb.7:                                             ; preds = %bb.5
  %memload66 = load i32, ptr %8, align 1
  %70 = trunc i32 %memload66 to i8
  %ECX = sext i8 %70 to i32
  %ECX73 = sub i32 %ECX, 48
  %71 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ECX, i32 48)
  %CF67 = extractvalue { i32, i1 } %71, 1
  %72 = and i32 %ECX73, 255
  %73 = call i32 @llvm.ctpop.i32(i32 %72)
  %74 = and i32 %73, 1
  %PF68 = icmp eq i32 %74, 0
  %ZF69 = icmp eq i32 %ECX73, 0
  %highbit70 = and i32 -2147483648, %ECX73
  %SF71 = icmp ne i32 %highbit70, 0
  %75 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ECX, i32 48)
  %OF72 = extractvalue { i32, i1 } %75, 1
  %memload74 = load i32, ptr %RBP_N.44, align 1
  %EAX75 = sub i32 %memload74, %ECX73
  %76 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload74, i32 %ECX73)
  %CF76 = extractvalue { i32, i1 } %76, 1
  %ZF77 = icmp eq i32 %EAX75, 0
  %highbit78 = and i32 -2147483648, %EAX75
  %SF79 = icmp ne i32 %highbit78, 0
  %77 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload74, i32 %ECX73)
  %OF80 = extractvalue { i32, i1 } %77, 1
  %78 = and i32 %EAX75, 255
  %79 = call i32 @llvm.ctpop.i32(i32 %78)
  %80 = and i32 %79, 1
  %PF81 = icmp eq i32 %80, 0
  store i32 %EAX75, ptr %RBP_N.44, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.6
  %memload82 = load i32, ptr %RBP_N.44, align 1
  %memload83 = load i64, ptr %RBP_N.24, align 1
  %memload84 = load i64, ptr %RBP_N.28, align 1
  %81 = trunc i64 %memload84 to i32
  %RCX85 = sext i32 %81 to i64
  %memref-idxreg86 = mul i64 4, %RCX85
  %memref-basereg87 = add i64 %memload83, %memref-idxreg86
  %82 = inttoptr i64 %memref-basereg87 to ptr
  store i32 %memload82, ptr %82, align 1
  %memload88 = load i32, ptr %RBP_N.28, align 1
  %EAX95 = add i32 %memload88, 1
  %83 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload88, i32 1)
  %CF89 = extractvalue { i32, i1 } %83, 1
  %84 = and i32 %EAX95, 255
  %85 = call i32 @llvm.ctpop.i32(i32 %84)
  %86 = and i32 %85, 1
  %PF90 = icmp eq i32 %86, 0
  %ZF91 = icmp eq i32 %EAX95, 0
  %highbit92 = and i32 -2147483648, %EAX95
  %SF93 = icmp ne i32 %highbit92, 0
  %87 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload88, i32 1)
  %OF94 = extractvalue { i32, i1 } %87, 1
  store i32 %EAX95, ptr %RBP_N.28, align 1
  br label %bb.1

bb.9:                                             ; preds = %bb.1
  store i32 0, ptr %RBP_N.60, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.18
  %memload96 = load i32, ptr %RBP_N.60, align 1
  %88 = load i32, ptr %RBP_N.12, align 1
  %89 = sub i32 %memload96, %88
  %90 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload96, i32 %88)
  %CF97 = extractvalue { i32, i1 } %90, 1
  %ZF98 = icmp eq i32 %89, 0
  %highbit99 = and i32 -2147483648, %89
  %SF100 = icmp ne i32 %highbit99, 0
  %91 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload96, i32 %88)
  %OF101 = extractvalue { i32, i1 } %91, 1
  %92 = and i32 %89, 255
  %93 = call i32 @llvm.ctpop.i32(i32 %92)
  %94 = and i32 %93, 1
  %PF102 = icmp eq i32 %94, 0
  %CmpSFOF_JGE226 = icmp eq i1 %SF100, %OF101
  br i1 %CmpSFOF_JGE226, label %bb.19, label %bb.11

bb.11:                                            ; preds = %bb.10
  store i32 1, ptr %RBP_N.64, align 1
  br label %bb.12

bb.12:                                            ; preds = %bb.11, %bb.16
  %memload103 = load i32, ptr %RBP_N.64, align 1
  %95 = load i32, ptr %RBP_N.12, align 1
  %96 = sub i32 %memload103, %95
  %97 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload103, i32 %95)
  %CF104 = extractvalue { i32, i1 } %97, 1
  %ZF105 = icmp eq i32 %96, 0
  %highbit106 = and i32 -2147483648, %96
  %SF107 = icmp ne i32 %highbit106, 0
  %98 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload103, i32 %95)
  %OF108 = extractvalue { i32, i1 } %98, 1
  %99 = and i32 %96, 255
  %100 = call i32 @llvm.ctpop.i32(i32 %99)
  %101 = and i32 %100, 1
  %PF109 = icmp eq i32 %101, 0
  %CmpSFOF_JGE227 = icmp eq i1 %SF107, %OF108
  br i1 %CmpSFOF_JGE227, label %bb.17, label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload110 = load i64, ptr %RBP_N.24, align 1
  %memload111 = load i32, ptr %RBP_N.64, align 1
  %ECX118 = sub i32 %memload111, 1
  %102 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload111, i32 1)
  %CF112 = extractvalue { i32, i1 } %102, 1
  %103 = and i32 %ECX118, 255
  %104 = call i32 @llvm.ctpop.i32(i32 %103)
  %105 = and i32 %104, 1
  %PF113 = icmp eq i32 %105, 0
  %ZF114 = icmp eq i32 %ECX118, 0
  %highbit115 = and i32 -2147483648, %ECX118
  %SF116 = icmp ne i32 %highbit115, 0
  %106 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload111, i32 1)
  %OF117 = extractvalue { i32, i1 } %106, 1
  %RCX119 = sext i32 %ECX118 to i64
  %memref-idxreg120 = mul i64 4, %RCX119
  %memref-basereg121 = add i64 %memload110, %memref-idxreg120
  %107 = inttoptr i64 %memref-basereg121 to ptr
  %memload122 = load i32, ptr %107, align 1
  %memload123 = load i64, ptr %RBP_N.24, align 1
  %memload124 = load i64, ptr %RBP_N.64, align 1
  %108 = trunc i64 %memload124 to i32
  %RDX = sext i32 %108 to i64
  %memref-idxreg125 = mul i64 4, %RDX
  %memref-basereg126 = add i64 %memload123, %memref-idxreg125
  %109 = inttoptr i64 %memref-basereg126 to ptr
  %110 = load i32, ptr %109, align 1
  %111 = sub i32 %memload122, %110
  %112 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload122, i32 %110)
  %CF127 = extractvalue { i32, i1 } %112, 1
  %ZF128 = icmp eq i32 %111, 0
  %highbit129 = and i32 -2147483648, %111
  %SF130 = icmp ne i32 %highbit129, 0
  %113 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload122, i32 %110)
  %OF131 = extractvalue { i32, i1 } %113, 1
  %114 = and i32 %111, 255
  %115 = call i32 @llvm.ctpop.i32(i32 %114)
  %116 = and i32 %115, 1
  %PF132 = icmp eq i32 %116, 0
  %CmpZF_JLE228 = icmp eq i1 %ZF128, true
  %CmpOF_JLE229 = icmp ne i1 %SF130, %OF131
  %ZFOrSF_JLE230 = or i1 %CmpZF_JLE228, %CmpOF_JLE229
  br i1 %ZFOrSF_JLE230, label %bb.15, label %bb.14

bb.14:                                            ; preds = %bb.13
  %memload133 = load i64, ptr %RBP_N.24, align 1
  %memload134 = load i64, ptr %RBP_N.64, align 1
  %117 = trunc i64 %memload134 to i32
  %RCX135 = sext i32 %117 to i64
  %memref-idxreg136 = mul i64 4, %RCX135
  %memref-basereg137 = add i64 %memload133, %memref-idxreg136
  %118 = inttoptr i64 %memref-basereg137 to ptr
  %memload138 = load i32, ptr %118, align 1
  store i32 %memload138, ptr %RBP_N.56, align 1
  %memload139 = load i64, ptr %RBP_N.24, align 1
  %memload140 = load i32, ptr %RBP_N.64, align 1
  %ECX147 = sub i32 %memload140, 1
  %119 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload140, i32 1)
  %CF141 = extractvalue { i32, i1 } %119, 1
  %120 = and i32 %ECX147, 255
  %121 = call i32 @llvm.ctpop.i32(i32 %120)
  %122 = and i32 %121, 1
  %PF142 = icmp eq i32 %122, 0
  %ZF143 = icmp eq i32 %ECX147, 0
  %highbit144 = and i32 -2147483648, %ECX147
  %SF145 = icmp ne i32 %highbit144, 0
  %123 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload140, i32 1)
  %OF146 = extractvalue { i32, i1 } %123, 1
  %RCX148 = sext i32 %ECX147 to i64
  %memref-idxreg149 = mul i64 4, %RCX148
  %memref-basereg150 = add i64 %memload139, %memref-idxreg149
  %124 = inttoptr i64 %memref-basereg150 to ptr
  %memload151 = load i32, ptr %124, align 1
  %memload152 = load i64, ptr %RBP_N.24, align 1
  %memload153 = load i64, ptr %RBP_N.64, align 1
  %125 = trunc i64 %memload153 to i32
  %RCX154 = sext i32 %125 to i64
  %memref-idxreg155 = mul i64 4, %RCX154
  %memref-basereg156 = add i64 %memload152, %memref-idxreg155
  %126 = inttoptr i64 %memref-basereg156 to ptr
  store i32 %memload151, ptr %126, align 1
  %memload157 = load i32, ptr %RBP_N.56, align 1
  %memload158 = load i64, ptr %RBP_N.24, align 1
  %memload159 = load i32, ptr %RBP_N.64, align 1
  %ECX166 = sub i32 %memload159, 1
  %127 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload159, i32 1)
  %CF160 = extractvalue { i32, i1 } %127, 1
  %128 = and i32 %ECX166, 255
  %129 = call i32 @llvm.ctpop.i32(i32 %128)
  %130 = and i32 %129, 1
  %PF161 = icmp eq i32 %130, 0
  %ZF162 = icmp eq i32 %ECX166, 0
  %highbit163 = and i32 -2147483648, %ECX166
  %SF164 = icmp ne i32 %highbit163, 0
  %131 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload159, i32 1)
  %OF165 = extractvalue { i32, i1 } %131, 1
  %RCX167 = sext i32 %ECX166 to i64
  %memref-idxreg168 = mul i64 4, %RCX167
  %memref-basereg169 = add i64 %memload158, %memref-idxreg168
  %132 = inttoptr i64 %memref-basereg169 to ptr
  store i32 %memload157, ptr %132, align 1
  %memload170 = load i64, ptr %RBP_N.8, align 1
  %memload171 = load i64, ptr %RBP_N.64, align 1
  %133 = trunc i64 %memload171 to i32
  %RCX172 = sext i32 %133 to i64
  %memref-idxreg173 = mul i64 4, %RCX172
  %memref-basereg174 = add i64 %memload170, %memref-idxreg173
  %134 = inttoptr i64 %memref-basereg174 to ptr
  %memload175 = load i32, ptr %134, align 1
  store i32 %memload175, ptr %RBP_N.56, align 1
  %memload176 = load i64, ptr %RBP_N.8, align 1
  %memload177 = load i32, ptr %RBP_N.64, align 1
  %ECX184 = sub i32 %memload177, 1
  %135 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload177, i32 1)
  %CF178 = extractvalue { i32, i1 } %135, 1
  %136 = and i32 %ECX184, 255
  %137 = call i32 @llvm.ctpop.i32(i32 %136)
  %138 = and i32 %137, 1
  %PF179 = icmp eq i32 %138, 0
  %ZF180 = icmp eq i32 %ECX184, 0
  %highbit181 = and i32 -2147483648, %ECX184
  %SF182 = icmp ne i32 %highbit181, 0
  %139 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload177, i32 1)
  %OF183 = extractvalue { i32, i1 } %139, 1
  %RCX185 = sext i32 %ECX184 to i64
  %memref-idxreg186 = mul i64 4, %RCX185
  %memref-basereg187 = add i64 %memload176, %memref-idxreg186
  %140 = inttoptr i64 %memref-basereg187 to ptr
  %memload188 = load i32, ptr %140, align 1
  %memload189 = load i64, ptr %RBP_N.8, align 1
  %memload190 = load i64, ptr %RBP_N.64, align 1
  %141 = trunc i64 %memload190 to i32
  %RCX191 = sext i32 %141 to i64
  %memref-idxreg192 = mul i64 4, %RCX191
  %memref-basereg193 = add i64 %memload189, %memref-idxreg192
  %142 = inttoptr i64 %memref-basereg193 to ptr
  store i32 %memload188, ptr %142, align 1
  %memload194 = load i32, ptr %RBP_N.56, align 1
  %memload195 = load i64, ptr %RBP_N.8, align 1
  %memload196 = load i32, ptr %RBP_N.64, align 1
  %ECX203 = sub i32 %memload196, 1
  %143 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload196, i32 1)
  %CF197 = extractvalue { i32, i1 } %143, 1
  %144 = and i32 %ECX203, 255
  %145 = call i32 @llvm.ctpop.i32(i32 %144)
  %146 = and i32 %145, 1
  %PF198 = icmp eq i32 %146, 0
  %ZF199 = icmp eq i32 %ECX203, 0
  %highbit200 = and i32 -2147483648, %ECX203
  %SF201 = icmp ne i32 %highbit200, 0
  %147 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload196, i32 1)
  %OF202 = extractvalue { i32, i1 } %147, 1
  %RCX204 = sext i32 %ECX203 to i64
  %memref-idxreg205 = mul i64 4, %RCX204
  %memref-basereg206 = add i64 %memload195, %memref-idxreg205
  %148 = inttoptr i64 %memref-basereg206 to ptr
  store i32 %memload194, ptr %148, align 1
  br label %bb.15

bb.15:                                            ; preds = %bb.14, %bb.13
  br label %bb.16

bb.16:                                            ; preds = %bb.15
  %memload207 = load i32, ptr %RBP_N.64, align 1
  %EAX214 = add i32 %memload207, 1
  %149 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload207, i32 1)
  %CF208 = extractvalue { i32, i1 } %149, 1
  %150 = and i32 %EAX214, 255
  %151 = call i32 @llvm.ctpop.i32(i32 %150)
  %152 = and i32 %151, 1
  %PF209 = icmp eq i32 %152, 0
  %ZF210 = icmp eq i32 %EAX214, 0
  %highbit211 = and i32 -2147483648, %EAX214
  %SF212 = icmp ne i32 %highbit211, 0
  %153 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload207, i32 1)
  %OF213 = extractvalue { i32, i1 } %153, 1
  store i32 %EAX214, ptr %RBP_N.64, align 1
  br label %bb.12

bb.17:                                            ; preds = %bb.12
  br label %bb.18

bb.18:                                            ; preds = %bb.17
  %memload215 = load i32, ptr %RBP_N.60, align 1
  %EAX222 = add i32 %memload215, 1
  %154 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload215, i32 1)
  %CF216 = extractvalue { i32, i1 } %154, 1
  %155 = and i32 %EAX222, 255
  %156 = call i32 @llvm.ctpop.i32(i32 %155)
  %157 = and i32 %156, 1
  %PF217 = icmp eq i32 %157, 0
  %ZF218 = icmp eq i32 %EAX222, 0
  %highbit219 = and i32 -2147483648, %EAX222
  %SF220 = icmp ne i32 %highbit219, 0
  %158 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload215, i32 1)
  %OF221 = extractvalue { i32, i1 } %158, 1
  store i32 %EAX222, ptr %RBP_N.60, align 1
  br label %bb.10

bb.19:                                            ; preds = %bb.10
  %memload223 = load i64, ptr %RBP_N.24, align 1
  %159 = inttoptr i64 %memload223 to ptr
  call void @free(ptr %159)
  %memload224 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload224
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
