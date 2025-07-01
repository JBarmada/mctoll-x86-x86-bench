; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @malloc(i64)

declare dso_local ptr @strncpy(ptr, ptr, i64)

define dso_local i64 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 36
  %RBP_N.20 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %6 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  %memload = load i64, ptr %RBP_N.16, align 1
  %7 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %7)
  %8 = trunc i64 %RAX to i32
  store i32 %8, ptr %RBP_N.20, align 1
  %memload1 = load i32, ptr %RBP_N.20, align 1
  %EAX = shl i32 %memload1, 1
  %ZF = icmp eq i32 %EAX, 0
  %highbit = and i32 -2147483648, %EAX
  %SF = icmp ne i32 %highbit, 0
  %EAX5 = add i32 %EAX, 1
  %9 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EAX, i32 1)
  %CF = extractvalue { i32, i1 } %9, 1
  %10 = and i32 %EAX5, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = and i32 %11, 1
  %PF = icmp eq i32 %12, 0
  %ZF2 = icmp eq i32 %EAX5, 0
  %highbit3 = and i32 -2147483648, %EAX5
  %SF4 = icmp ne i32 %highbit3, 0
  %13 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EAX, i32 1)
  %OF = extractvalue { i32, i1 } %13, 1
  %RDI = sext i32 %EAX5 to i64
  %14 = call ptr @malloc(i64 %RDI)
  %RAX6 = ptrtoint ptr %14 to i64
  store i64 %RAX6, ptr %RBP_N.40, align 1
  %15 = load i64, ptr %RBP_N.40, align 1
  %16 = sub i64 %15, 0
  %17 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %15, i64 0)
  %CF7 = extractvalue { i64, i1 } %17, 1
  %ZF8 = icmp eq i64 %16, 0
  %highbit9 = and i64 -9223372036854775808, %16
  %SF10 = icmp ne i64 %highbit9, 0
  %18 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %15, i64 0)
  %OF11 = extractvalue { i64, i1 } %18, 1
  %19 = and i64 %16, 255
  %20 = call i64 @llvm.ctpop.i64(i64 %19)
  %21 = and i64 %20, 1
  %PF12 = icmp eq i64 %21, 0
  %CmpZF_JNE = icmp eq i1 %ZF8, false
  br i1 %CmpZF_JNE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %22 = sext i32 0 to i64
  store i64 %22, ptr %RBP_N.8, align 1
  br label %bb.21

bb.2:                                             ; preds = %entry
  store i32 0, ptr %RBP_N.24, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.16
  %memload13 = load i32, ptr %RBP_N.24, align 1
  %23 = load i32, ptr %RBP_N.20, align 1
  %24 = sub i32 %memload13, %23
  %25 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload13, i32 %23)
  %CF14 = extractvalue { i32, i1 } %25, 1
  %ZF15 = icmp eq i32 %24, 0
  %highbit16 = and i32 -2147483648, %24
  %SF17 = icmp ne i32 %highbit16, 0
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload13, i32 %23)
  %OF18 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %24, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF19 = icmp eq i32 %29, 0
  %CmpSFOF_JGE = icmp eq i1 %SF17, %OF18
  br i1 %CmpSFOF_JGE, label %bb.17, label %bb.4

bb.4:                                             ; preds = %bb.3
  %30 = ptrtoint ptr %stktop_8 to i64
  %31 = add i64 %30, 4
  %32 = inttoptr i64 %31 to ptr
  store i32 1, ptr %32, align 1
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.5

bb.5:                                             ; preds = %bb.4, %bb.9
  %memload20 = load i32, ptr %RBP_N.28, align 1
  store i32 %memload20, ptr %stktop_8, align 1
  %memload21 = load i32, ptr %RBP_N.20, align 1
  %33 = load i32, ptr %RBP_N.24, align 1
  %EAX22 = sub i32 %memload21, %33
  %34 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload21, i32 %33)
  %CF23 = extractvalue { i32, i1 } %34, 1
  %ZF24 = icmp eq i32 %EAX22, 0
  %highbit25 = and i32 -2147483648, %EAX22
  %SF26 = icmp ne i32 %highbit25, 0
  %35 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload21, i32 %33)
  %OF27 = extractvalue { i32, i1 } %35, 1
  %36 = and i32 %EAX22, 255
  %37 = call i32 @llvm.ctpop.i32(i32 %36)
  %38 = and i32 %37, 1
  %PF28 = icmp eq i32 %38, 0
  %39 = sext i32 %EAX22 to i64
  %40 = lshr i64 %39, 32
  %EDX = trunc i64 %40 to i32
  %41 = sext i32 %EAX22 to i64
  %42 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %42, 32
  %dividend = or i64 %div_hb_ls, %41
  %43 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %43
  %EAX29 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %43
  %EDX30 = trunc i64 %div_r to i32
  %memload31 = load i32, ptr %stktop_8, align 1
  %44 = sub i32 %memload31, %EAX29
  %45 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload31, i32 %EAX29)
  %CF32 = extractvalue { i32, i1 } %45, 1
  %ZF33 = icmp eq i32 %44, 0
  %highbit34 = and i32 -2147483648, %44
  %SF35 = icmp ne i32 %highbit34, 0
  %46 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload31, i32 %EAX29)
  %OF36 = extractvalue { i32, i1 } %46, 1
  %47 = and i32 %44, 255
  %48 = call i32 @llvm.ctpop.i32(i32 %47)
  %49 = and i32 %48, 1
  %PF37 = icmp eq i32 %49, 0
  %CmpSFOF_JGE201 = icmp eq i1 %SF35, %OF36
  br i1 %CmpSFOF_JGE201, label %bb.10, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload38 = load i64, ptr %RBP_N.16, align 1
  %memload39 = load i32, ptr %RBP_N.24, align 1
  %memload40 = load i32, ptr %RBP_N.28, align 1
  %ECX = add i32 %memload39, %memload40
  %50 = and i32 %ECX, 255
  %51 = call i32 @llvm.ctpop.i32(i32 %50)
  %52 = and i32 %51, 1
  %PF41 = icmp eq i32 %52, 0
  %RCX = sext i32 %ECX to i64
  %memref-basereg = add i64 %memload38, %RCX
  %53 = inttoptr i64 %memref-basereg to ptr
  %memload42 = load i32, ptr %53, align 1
  %54 = trunc i32 %memload42 to i8
  %EAX43 = sext i8 %54 to i32
  %memload44 = load i64, ptr %RBP_N.16, align 1
  %memload45 = load i32, ptr %RBP_N.20, align 1
  %EDX52 = sub i32 %memload45, 1
  %55 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload45, i32 1)
  %CF46 = extractvalue { i32, i1 } %55, 1
  %56 = and i32 %EDX52, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = and i32 %57, 1
  %PF47 = icmp eq i32 %58, 0
  %ZF48 = icmp eq i32 %EDX52, 0
  %highbit49 = and i32 -2147483648, %EDX52
  %SF50 = icmp ne i32 %highbit49, 0
  %59 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload45, i32 1)
  %OF51 = extractvalue { i32, i1 } %59, 1
  %60 = load i32, ptr %RBP_N.28, align 1
  %EDX53 = sub i32 %EDX52, %60
  %61 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX52, i32 %60)
  %CF54 = extractvalue { i32, i1 } %61, 1
  %ZF55 = icmp eq i32 %EDX53, 0
  %highbit56 = and i32 -2147483648, %EDX53
  %SF57 = icmp ne i32 %highbit56, 0
  %62 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX52, i32 %60)
  %OF58 = extractvalue { i32, i1 } %62, 1
  %63 = and i32 %EDX53, 255
  %64 = call i32 @llvm.ctpop.i32(i32 %63)
  %65 = and i32 %64, 1
  %PF59 = icmp eq i32 %65, 0
  %RDX = sext i32 %EDX53 to i64
  %memref-basereg60 = add i64 %memload44, %RDX
  %66 = inttoptr i64 %memref-basereg60 to ptr
  %memload61 = load i32, ptr %66, align 1
  %67 = trunc i32 %memload61 to i8
  %ECX62 = sext i8 %67 to i32
  %68 = sub i32 %EAX43, %ECX62
  %69 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX43, i32 %ECX62)
  %CF63 = extractvalue { i32, i1 } %69, 1
  %ZF64 = icmp eq i32 %68, 0
  %highbit65 = and i32 -2147483648, %68
  %SF66 = icmp ne i32 %highbit65, 0
  %70 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX43, i32 %ECX62)
  %OF67 = extractvalue { i32, i1 } %70, 1
  %71 = and i32 %68, 255
  %72 = call i32 @llvm.ctpop.i32(i32 %71)
  %73 = and i32 %72, 1
  %PF68 = icmp eq i32 %73, 0
  %CmpZF_JE = icmp eq i1 %ZF64, true
  br i1 %CmpZF_JE, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %74 = ptrtoint ptr %stktop_8 to i64
  %75 = add i64 %74, 4
  %76 = inttoptr i64 %75 to ptr
  store i32 0, ptr %76, align 1
  br label %bb.10

bb.8:                                             ; preds = %bb.6
  br label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload69 = load i32, ptr %RBP_N.28, align 1
  %EAX76 = add i32 %memload69, 1
  %77 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload69, i32 1)
  %CF70 = extractvalue { i32, i1 } %77, 1
  %78 = and i32 %EAX76, 255
  %79 = call i32 @llvm.ctpop.i32(i32 %78)
  %80 = and i32 %79, 1
  %PF71 = icmp eq i32 %80, 0
  %ZF72 = icmp eq i32 %EAX76, 0
  %highbit73 = and i32 -2147483648, %EAX76
  %SF74 = icmp ne i32 %highbit73, 0
  %81 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload69, i32 1)
  %OF75 = extractvalue { i32, i1 } %81, 1
  store i32 %EAX76, ptr %RBP_N.28, align 1
  br label %bb.5

bb.10:                                            ; preds = %bb.7, %bb.5
  %82 = ptrtoint ptr %stktop_8 to i64
  %83 = add i64 %82, 4
  %84 = inttoptr i64 %83 to ptr
  %85 = load i32, ptr %84, align 1
  %86 = zext i32 %85 to i64
  %87 = zext i32 0 to i64
  %88 = sub i64 %86, %87
  %89 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %86, i64 %87)
  %CF77 = extractvalue { i64, i1 } %89, 1
  %ZF78 = icmp eq i64 %88, 0
  %highbit79 = and i64 -9223372036854775808, %88
  %SF80 = icmp ne i64 %highbit79, 0
  %90 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %86, i64 %87)
  %OF81 = extractvalue { i64, i1 } %90, 1
  %91 = and i64 %88, 255
  %92 = call i64 @llvm.ctpop.i64(i64 %91)
  %93 = and i64 %92, 1
  %PF82 = icmp eq i64 %93, 0
  %CmpZF_JE202 = icmp eq i1 %ZF78, true
  br i1 %CmpZF_JE202, label %bb.15, label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload83 = load i64, ptr %RBP_N.40, align 1
  %memload84 = load i64, ptr %RBP_N.16, align 1
  %memload85 = load i64, ptr %RBP_N.20, align 1
  %94 = trunc i64 %memload85 to i32
  %RDX86 = sext i32 %94 to i64
  %95 = inttoptr i64 %memload83 to ptr
  %96 = inttoptr i64 %memload84 to ptr
  %97 = call ptr @strncpy(ptr %95, ptr %96, i64 %RDX86)
  %RAX87 = ptrtoint ptr %97 to i64
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.12

bb.12:                                            ; preds = %bb.11, %bb.13
  %memload88 = load i32, ptr %RBP_N.28, align 1
  %98 = load i32, ptr %RBP_N.24, align 1
  %99 = sub i32 %memload88, %98
  %100 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload88, i32 %98)
  %CF89 = extractvalue { i32, i1 } %100, 1
  %ZF90 = icmp eq i32 %99, 0
  %highbit91 = and i32 -2147483648, %99
  %SF92 = icmp ne i32 %highbit91, 0
  %101 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload88, i32 %98)
  %OF93 = extractvalue { i32, i1 } %101, 1
  %102 = and i32 %99, 255
  %103 = call i32 @llvm.ctpop.i32(i32 %102)
  %104 = and i32 %103, 1
  %PF94 = icmp eq i32 %104, 0
  %CmpSFOF_JGE203 = icmp eq i1 %SF92, %OF93
  br i1 %CmpSFOF_JGE203, label %bb.14, label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload95 = load i64, ptr %RBP_N.16, align 1
  %memload96 = load i32, ptr %RBP_N.24, align 1
  %105 = load i32, ptr %RBP_N.28, align 1
  %ECX97 = sub i32 %memload96, %105
  %106 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload96, i32 %105)
  %CF98 = extractvalue { i32, i1 } %106, 1
  %ZF99 = icmp eq i32 %ECX97, 0
  %highbit100 = and i32 -2147483648, %ECX97
  %SF101 = icmp ne i32 %highbit100, 0
  %107 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload96, i32 %105)
  %OF102 = extractvalue { i32, i1 } %107, 1
  %108 = and i32 %ECX97, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108)
  %110 = and i32 %109, 1
  %PF103 = icmp eq i32 %110, 0
  %ECX110 = sub i32 %ECX97, 1
  %111 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ECX97, i32 1)
  %CF104 = extractvalue { i32, i1 } %111, 1
  %112 = and i32 %ECX110, 255
  %113 = call i32 @llvm.ctpop.i32(i32 %112)
  %114 = and i32 %113, 1
  %PF105 = icmp eq i32 %114, 0
  %ZF106 = icmp eq i32 %ECX110, 0
  %highbit107 = and i32 -2147483648, %ECX110
  %SF108 = icmp ne i32 %highbit107, 0
  %115 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ECX97, i32 1)
  %OF109 = extractvalue { i32, i1 } %115, 1
  %RCX111 = sext i32 %ECX110 to i64
  %memref-basereg112 = add i64 %memload95, %RCX111
  %116 = inttoptr i64 %memref-basereg112 to ptr
  %memload113 = load i8, ptr %116, align 1
  %memload114 = load i64, ptr %RBP_N.40, align 1
  %memload115 = load i32, ptr %RBP_N.20, align 1
  %memload116 = load i32, ptr %RBP_N.28, align 1
  %ECX118 = add i32 %memload115, %memload116
  %117 = and i32 %ECX118, 255
  %118 = call i32 @llvm.ctpop.i32(i32 %117)
  %119 = and i32 %118, 1
  %PF117 = icmp eq i32 %119, 0
  %RCX119 = sext i32 %ECX118 to i64
  %memref-basereg120 = add i64 %memload114, %RCX119
  %120 = inttoptr i64 %memref-basereg120 to ptr
  store i8 %memload113, ptr %120, align 1
  %memload121 = load i32, ptr %RBP_N.28, align 1
  %EAX128 = add i32 %memload121, 1
  %121 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload121, i32 1)
  %CF122 = extractvalue { i32, i1 } %121, 1
  %122 = and i32 %EAX128, 255
  %123 = call i32 @llvm.ctpop.i32(i32 %122)
  %124 = and i32 %123, 1
  %PF123 = icmp eq i32 %124, 0
  %ZF124 = icmp eq i32 %EAX128, 0
  %highbit125 = and i32 -2147483648, %EAX128
  %SF126 = icmp ne i32 %highbit125, 0
  %125 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload121, i32 1)
  %OF127 = extractvalue { i32, i1 } %125, 1
  store i32 %EAX128, ptr %RBP_N.28, align 1
  br label %bb.12

bb.14:                                            ; preds = %bb.12
  %memload129 = load i64, ptr %RBP_N.40, align 1
  %memload130 = load i32, ptr %RBP_N.20, align 1
  %memload131 = load i32, ptr %RBP_N.24, align 1
  %ECX133 = add i32 %memload130, %memload131
  %126 = and i32 %ECX133, 255
  %127 = call i32 @llvm.ctpop.i32(i32 %126)
  %128 = and i32 %127, 1
  %PF132 = icmp eq i32 %128, 0
  %RCX134 = sext i32 %ECX133 to i64
  %memref-basereg135 = add i64 %memload129, %RCX134
  %129 = inttoptr i64 %memref-basereg135 to ptr
  store i8 0, ptr %129, align 1
  %memload136 = load i64, ptr %RBP_N.40, align 1
  store i64 %memload136, ptr %RBP_N.8, align 1
  br label %bb.21

bb.15:                                            ; preds = %bb.10
  br label %bb.16

bb.16:                                            ; preds = %bb.15
  %memload137 = load i32, ptr %RBP_N.24, align 1
  %EAX144 = add i32 %memload137, 1
  %130 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload137, i32 1)
  %CF138 = extractvalue { i32, i1 } %130, 1
  %131 = and i32 %EAX144, 255
  %132 = call i32 @llvm.ctpop.i32(i32 %131)
  %133 = and i32 %132, 1
  %PF139 = icmp eq i32 %133, 0
  %ZF140 = icmp eq i32 %EAX144, 0
  %highbit141 = and i32 -2147483648, %EAX144
  %SF142 = icmp ne i32 %highbit141, 0
  %134 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload137, i32 1)
  %OF143 = extractvalue { i32, i1 } %134, 1
  store i32 %EAX144, ptr %RBP_N.24, align 1
  br label %bb.3

bb.17:                                            ; preds = %bb.3
  %memload145 = load i64, ptr %RBP_N.40, align 1
  %memload146 = load i64, ptr %RBP_N.16, align 1
  %memload147 = load i64, ptr %RBP_N.20, align 1
  %135 = trunc i64 %memload147 to i32
  %RDX148 = sext i32 %135 to i64
  %136 = inttoptr i64 %memload145 to ptr
  %137 = inttoptr i64 %memload146 to ptr
  %138 = call ptr @strncpy(ptr %136, ptr %137, i64 %RDX148)
  %RAX149 = ptrtoint ptr %138 to i64
  store i32 0, ptr %RBP_N.28, align 1
  br label %bb.18

bb.18:                                            ; preds = %bb.17, %bb.19
  %memload150 = load i32, ptr %RBP_N.28, align 1
  %139 = load i32, ptr %RBP_N.20, align 1
  %140 = sub i32 %memload150, %139
  %141 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload150, i32 %139)
  %CF151 = extractvalue { i32, i1 } %141, 1
  %ZF152 = icmp eq i32 %140, 0
  %highbit153 = and i32 -2147483648, %140
  %SF154 = icmp ne i32 %highbit153, 0
  %142 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload150, i32 %139)
  %OF155 = extractvalue { i32, i1 } %142, 1
  %143 = and i32 %140, 255
  %144 = call i32 @llvm.ctpop.i32(i32 %143)
  %145 = and i32 %144, 1
  %PF156 = icmp eq i32 %145, 0
  %CmpSFOF_JGE204 = icmp eq i1 %SF154, %OF155
  br i1 %CmpSFOF_JGE204, label %bb.20, label %bb.19

bb.19:                                            ; preds = %bb.18
  %memload157 = load i64, ptr %RBP_N.16, align 1
  %memload158 = load i32, ptr %RBP_N.20, align 1
  %146 = load i32, ptr %RBP_N.28, align 1
  %ECX159 = sub i32 %memload158, %146
  %147 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload158, i32 %146)
  %CF160 = extractvalue { i32, i1 } %147, 1
  %ZF161 = icmp eq i32 %ECX159, 0
  %highbit162 = and i32 -2147483648, %ECX159
  %SF163 = icmp ne i32 %highbit162, 0
  %148 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload158, i32 %146)
  %OF164 = extractvalue { i32, i1 } %148, 1
  %149 = and i32 %ECX159, 255
  %150 = call i32 @llvm.ctpop.i32(i32 %149)
  %151 = and i32 %150, 1
  %PF165 = icmp eq i32 %151, 0
  %ECX172 = sub i32 %ECX159, 1
  %152 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ECX159, i32 1)
  %CF166 = extractvalue { i32, i1 } %152, 1
  %153 = and i32 %ECX172, 255
  %154 = call i32 @llvm.ctpop.i32(i32 %153)
  %155 = and i32 %154, 1
  %PF167 = icmp eq i32 %155, 0
  %ZF168 = icmp eq i32 %ECX172, 0
  %highbit169 = and i32 -2147483648, %ECX172
  %SF170 = icmp ne i32 %highbit169, 0
  %156 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ECX159, i32 1)
  %OF171 = extractvalue { i32, i1 } %156, 1
  %RCX173 = sext i32 %ECX172 to i64
  %memref-basereg174 = add i64 %memload157, %RCX173
  %157 = inttoptr i64 %memref-basereg174 to ptr
  %memload175 = load i8, ptr %157, align 1
  %memload176 = load i64, ptr %RBP_N.40, align 1
  %memload177 = load i32, ptr %RBP_N.20, align 1
  %memload178 = load i32, ptr %RBP_N.28, align 1
  %ECX180 = add i32 %memload177, %memload178
  %158 = and i32 %ECX180, 255
  %159 = call i32 @llvm.ctpop.i32(i32 %158)
  %160 = and i32 %159, 1
  %PF179 = icmp eq i32 %160, 0
  %RCX181 = sext i32 %ECX180 to i64
  %memref-basereg182 = add i64 %memload176, %RCX181
  %161 = inttoptr i64 %memref-basereg182 to ptr
  store i8 %memload175, ptr %161, align 1
  %memload183 = load i32, ptr %RBP_N.28, align 1
  %EAX190 = add i32 %memload183, 1
  %162 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload183, i32 1)
  %CF184 = extractvalue { i32, i1 } %162, 1
  %163 = and i32 %EAX190, 255
  %164 = call i32 @llvm.ctpop.i32(i32 %163)
  %165 = and i32 %164, 1
  %PF185 = icmp eq i32 %165, 0
  %ZF186 = icmp eq i32 %EAX190, 0
  %highbit187 = and i32 -2147483648, %EAX190
  %SF188 = icmp ne i32 %highbit187, 0
  %166 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload183, i32 1)
  %OF189 = extractvalue { i32, i1 } %166, 1
  store i32 %EAX190, ptr %RBP_N.28, align 1
  br label %bb.18

bb.20:                                            ; preds = %bb.18
  %memload191 = load i64, ptr %RBP_N.40, align 1
  %memload192 = load i32, ptr %RBP_N.20, align 1
  %ECX196 = shl i32 %memload192, 1
  %ZF193 = icmp eq i32 %ECX196, 0
  %highbit194 = and i32 -2147483648, %ECX196
  %SF195 = icmp ne i32 %highbit194, 0
  %RCX197 = sext i32 %ECX196 to i64
  %memref-basereg198 = add i64 %memload191, %RCX197
  %167 = inttoptr i64 %memref-basereg198 to ptr
  store i8 0, ptr %167, align 1
  %memload199 = load i64, ptr %RBP_N.40, align 1
  store i64 %memload199, ptr %RBP_N.8, align 1
  br label %bb.21

bb.21:                                            ; preds = %bb.20, %bb.14, %bb.1
  %memload200 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload200
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

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

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
