; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

declare dso_local void @free(ptr)

define dso_local void @func0(i64 %arg1, i32 %arg2, i64 %arg3) {
entry:
  %ECX-SKT-LOC = alloca i64, align 8
  %EAX-SKT-LOC = alloca i64, align 8
  %stktop_8 = alloca i8, i32 72, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.52 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.48 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.44 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.40 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.36 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 40
  %RBP_N.32 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 48
  %RBP_N.24 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 60
  %RBP_N.12 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 64
  %RBP_N.8 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %9 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  %memload = load i32, ptr %RBP_N.12, align 1
  %10 = sext i32 %memload to i64
  %11 = lshr i64 %10, 32
  %EDX = trunc i64 %11 to i32
  %12 = sext i32 %memload to i64
  %13 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %13, 32
  %dividend = or i64 %div_hb_ls, %12
  %14 = sext i32 3 to i64
  %div_q = sdiv i64 %dividend, %14
  %EAX = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %14
  %EDX1 = trunc i64 %div_r to i32
  %EAX2 = add i32 %EAX, 1
  %15 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %EAX, i32 1)
  %CF = extractvalue { i32, i1 } %15, 1
  %16 = and i32 %EAX2, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = and i32 %17, 1
  %PF = icmp eq i32 %18, 0
  %ZF = icmp eq i32 %EAX2, 0
  %highbit = and i32 -2147483648, %EAX2
  %SF = icmp ne i32 %highbit, 0
  %19 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %EAX, i32 1)
  %OF = extractvalue { i32, i1 } %19, 1
  %RDI = sext i32 %EAX2 to i64
  %RDI6 = shl i64 %RDI, 2
  %ZF3 = icmp eq i64 %RDI6, 0
  %highbit4 = and i64 -9223372036854775808, %RDI6
  %SF5 = icmp ne i64 %highbit4, 0
  %20 = call ptr @malloc(i64 %RDI6)
  %RAX = ptrtoint ptr %20 to i64
  store i64 %RAX, ptr %RBP_N.32, align 1
  store i32 0, ptr %RBP_N.40, align 1
  store i32 0, ptr %RBP_N.44, align 1
  store i32 0, ptr %RBP_N.36, align 1
  store i64 %RAX, ptr %EAX-SKT-LOC, align 1
  %21 = zext i32 3 to i64
  store i64 %21, ptr %ECX-SKT-LOC, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %22 = load i64, ptr %EAX-SKT-LOC, align 1
  %EAX7 = trunc i64 %22 to i32
  %memload8 = load i32, ptr %RBP_N.36, align 1
  %EAX9 = mul i32 3, %memload8
  %23 = load i32, ptr %RBP_N.12, align 1
  %24 = sub i32 %EAX9, %23
  %25 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX9, i32 %23)
  %CF10 = extractvalue { i32, i1 } %25, 1
  %ZF11 = icmp eq i32 %24, 0
  %highbit12 = and i32 -2147483648, %24
  %SF13 = icmp ne i32 %highbit12, 0
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX9, i32 %23)
  %OF14 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %24, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF15 = icmp eq i32 %29, 0
  %CmpSFOF_JGE = icmp eq i1 %SF13, %OF14
  br i1 %CmpSFOF_JGE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload16 = load i64, ptr %RBP_N.8, align 1
  %30 = load i64, ptr %ECX-SKT-LOC, align 1
  %ECX = trunc i64 %30 to i32
  %memload17 = load i32, ptr %RBP_N.36, align 1
  %ECX18 = mul i32 3, %memload17
  %RCX = sext i32 %ECX18 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload16, %memref-idxreg
  %31 = inttoptr i64 %memref-basereg to ptr
  %memload19 = load i32, ptr %31, align 1
  %memload20 = load i64, ptr %RBP_N.32, align 1
  %memload21 = load i64, ptr %RBP_N.36, align 1
  %32 = trunc i64 %memload21 to i32
  %RCX22 = sext i32 %32 to i64
  %memref-idxreg23 = mul i64 4, %RCX22
  %memref-basereg24 = add i64 %memload20, %memref-idxreg23
  %33 = inttoptr i64 %memref-basereg24 to ptr
  store i32 %memload19, ptr %33, align 1
  %memload25 = load i32, ptr %RBP_N.44, align 1
  %EAX32 = add i32 %memload25, 1
  %34 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload25, i32 1)
  %CF26 = extractvalue { i32, i1 } %34, 1
  %35 = and i32 %EAX32, 255
  %36 = call i32 @llvm.ctpop.i32(i32 %35)
  %37 = and i32 %36, 1
  %PF27 = icmp eq i32 %37, 0
  %ZF28 = icmp eq i32 %EAX32, 0
  %highbit29 = and i32 -2147483648, %EAX32
  %SF30 = icmp ne i32 %highbit29, 0
  %38 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload25, i32 1)
  %OF31 = extractvalue { i32, i1 } %38, 1
  store i32 %EAX32, ptr %RBP_N.44, align 1
  %memload33 = load i32, ptr %RBP_N.36, align 1
  %EAX40 = add i32 %memload33, 1
  %39 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload33, i32 1)
  %CF34 = extractvalue { i32, i1 } %39, 1
  %40 = and i32 %EAX40, 255
  %41 = call i32 @llvm.ctpop.i32(i32 %40)
  %42 = and i32 %41, 1
  %PF35 = icmp eq i32 %42, 0
  %ZF36 = icmp eq i32 %EAX40, 0
  %highbit37 = and i32 -2147483648, %EAX40
  %SF38 = icmp ne i32 %highbit37, 0
  %43 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload33, i32 1)
  %OF39 = extractvalue { i32, i1 } %43, 1
  store i32 %EAX40, ptr %RBP_N.36, align 1
  %44 = zext i32 %EAX40 to i64
  store i64 %44, ptr %EAX-SKT-LOC, align 1
  store i64 %RCX22, ptr %ECX-SKT-LOC, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  store i32 0, ptr %RBP_N.36, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.14
  %memload41 = load i32, ptr %RBP_N.36, align 1
  %memload42 = load i32, ptr %RBP_N.44, align 1
  %ECX49 = sub i32 %memload42, 1
  %45 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload42, i32 1)
  %CF43 = extractvalue { i32, i1 } %45, 1
  %46 = and i32 %ECX49, 255
  %47 = call i32 @llvm.ctpop.i32(i32 %46)
  %48 = and i32 %47, 1
  %PF44 = icmp eq i32 %48, 0
  %ZF45 = icmp eq i32 %ECX49, 0
  %highbit46 = and i32 -2147483648, %ECX49
  %SF47 = icmp ne i32 %highbit46, 0
  %49 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload42, i32 1)
  %OF48 = extractvalue { i32, i1 } %49, 1
  %50 = sub i32 %memload41, %ECX49
  %51 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload41, i32 %ECX49)
  %CF50 = extractvalue { i32, i1 } %51, 1
  %ZF51 = icmp eq i32 %50, 0
  %highbit52 = and i32 -2147483648, %50
  %SF53 = icmp ne i32 %highbit52, 0
  %52 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload41, i32 %ECX49)
  %OF54 = extractvalue { i32, i1 } %52, 1
  %53 = and i32 %50, 255
  %54 = call i32 @llvm.ctpop.i32(i32 %53)
  %55 = and i32 %54, 1
  %PF55 = icmp eq i32 %55, 0
  %CmpSFOF_JGE195 = icmp eq i1 %SF53, %OF54
  br i1 %CmpSFOF_JGE195, label %bb.15, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload56 = load i32, ptr %RBP_N.36, align 1
  store i32 %memload56, ptr %RBP_N.48, align 1
  %memload57 = load i32, ptr %RBP_N.36, align 1
  %EAX64 = add i32 %memload57, 1
  %56 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload57, i32 1)
  %CF58 = extractvalue { i32, i1 } %56, 1
  %57 = and i32 %EAX64, 255
  %58 = call i32 @llvm.ctpop.i32(i32 %57)
  %59 = and i32 %58, 1
  %PF59 = icmp eq i32 %59, 0
  %ZF60 = icmp eq i32 %EAX64, 0
  %highbit61 = and i32 -2147483648, %EAX64
  %SF62 = icmp ne i32 %highbit61, 0
  %60 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload57, i32 1)
  %OF63 = extractvalue { i32, i1 } %60, 1
  store i32 %EAX64, ptr %RBP_N.40, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.10
  %memload65 = load i32, ptr %RBP_N.40, align 1
  %61 = load i32, ptr %RBP_N.44, align 1
  %62 = sub i32 %memload65, %61
  %63 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload65, i32 %61)
  %CF66 = extractvalue { i32, i1 } %63, 1
  %ZF67 = icmp eq i32 %62, 0
  %highbit68 = and i32 -2147483648, %62
  %SF69 = icmp ne i32 %highbit68, 0
  %64 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload65, i32 %61)
  %OF70 = extractvalue { i32, i1 } %64, 1
  %65 = and i32 %62, 255
  %66 = call i32 @llvm.ctpop.i32(i32 %65)
  %67 = and i32 %66, 1
  %PF71 = icmp eq i32 %67, 0
  %CmpSFOF_JGE196 = icmp eq i1 %SF69, %OF70
  br i1 %CmpSFOF_JGE196, label %bb.11, label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload72 = load i64, ptr %RBP_N.32, align 1
  %memload73 = load i64, ptr %RBP_N.40, align 1
  %68 = trunc i64 %memload73 to i32
  %RCX74 = sext i32 %68 to i64
  %memref-idxreg75 = mul i64 4, %RCX74
  %memref-basereg76 = add i64 %memload72, %memref-idxreg75
  %69 = inttoptr i64 %memref-basereg76 to ptr
  %memload77 = load i32, ptr %69, align 1
  %memload78 = load i64, ptr %RBP_N.32, align 1
  %memload79 = load i64, ptr %RBP_N.48, align 1
  %70 = trunc i64 %memload79 to i32
  %RDX = sext i32 %70 to i64
  %memref-idxreg80 = mul i64 4, %RDX
  %memref-basereg81 = add i64 %memload78, %memref-idxreg80
  %71 = inttoptr i64 %memref-basereg81 to ptr
  %72 = load i32, ptr %71, align 1
  %73 = sub i32 %memload77, %72
  %74 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload77, i32 %72)
  %CF82 = extractvalue { i32, i1 } %74, 1
  %ZF83 = icmp eq i32 %73, 0
  %highbit84 = and i32 -2147483648, %73
  %SF85 = icmp ne i32 %highbit84, 0
  %75 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload77, i32 %72)
  %OF86 = extractvalue { i32, i1 } %75, 1
  %76 = and i32 %73, 255
  %77 = call i32 @llvm.ctpop.i32(i32 %76)
  %78 = and i32 %77, 1
  %PF87 = icmp eq i32 %78, 0
  %CmpSFOF_JGE197 = icmp eq i1 %SF85, %OF86
  br i1 %CmpSFOF_JGE197, label %bb.9, label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload88 = load i32, ptr %RBP_N.40, align 1
  store i32 %memload88, ptr %RBP_N.48, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.7
  br label %bb.10

bb.10:                                            ; preds = %bb.9
  %memload89 = load i32, ptr %RBP_N.40, align 1
  %EAX96 = add i32 %memload89, 1
  %79 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload89, i32 1)
  %CF90 = extractvalue { i32, i1 } %79, 1
  %80 = and i32 %EAX96, 255
  %81 = call i32 @llvm.ctpop.i32(i32 %80)
  %82 = and i32 %81, 1
  %PF91 = icmp eq i32 %82, 0
  %ZF92 = icmp eq i32 %EAX96, 0
  %highbit93 = and i32 -2147483648, %EAX96
  %SF94 = icmp ne i32 %highbit93, 0
  %83 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload89, i32 1)
  %OF95 = extractvalue { i32, i1 } %83, 1
  store i32 %EAX96, ptr %RBP_N.40, align 1
  br label %bb.6

bb.11:                                            ; preds = %bb.6
  %memload97 = load i32, ptr %RBP_N.48, align 1
  %84 = load i32, ptr %RBP_N.36, align 1
  %85 = sub i32 %memload97, %84
  %86 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload97, i32 %84)
  %CF98 = extractvalue { i32, i1 } %86, 1
  %ZF99 = icmp eq i32 %85, 0
  %highbit100 = and i32 -2147483648, %85
  %SF101 = icmp ne i32 %highbit100, 0
  %87 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload97, i32 %84)
  %OF102 = extractvalue { i32, i1 } %87, 1
  %88 = and i32 %85, 255
  %89 = call i32 @llvm.ctpop.i32(i32 %88)
  %90 = and i32 %89, 1
  %PF103 = icmp eq i32 %90, 0
  %CmpZF_JE = icmp eq i1 %ZF99, true
  br i1 %CmpZF_JE, label %bb.13, label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload104 = load i64, ptr %RBP_N.32, align 1
  %memload105 = load i64, ptr %RBP_N.36, align 1
  %91 = trunc i64 %memload105 to i32
  %RCX106 = sext i32 %91 to i64
  %memref-idxreg107 = mul i64 4, %RCX106
  %memref-basereg108 = add i64 %memload104, %memref-idxreg107
  %92 = inttoptr i64 %memref-basereg108 to ptr
  %memload109 = load i32, ptr %92, align 1
  store i32 %memload109, ptr %RBP_N.52, align 1
  %memload110 = load i64, ptr %RBP_N.32, align 1
  %memload111 = load i64, ptr %RBP_N.48, align 1
  %93 = trunc i64 %memload111 to i32
  %RCX112 = sext i32 %93 to i64
  %memref-idxreg113 = mul i64 4, %RCX112
  %memref-basereg114 = add i64 %memload110, %memref-idxreg113
  %94 = inttoptr i64 %memref-basereg114 to ptr
  %memload115 = load i32, ptr %94, align 1
  %memload116 = load i64, ptr %RBP_N.32, align 1
  %memload117 = load i64, ptr %RBP_N.36, align 1
  %95 = trunc i64 %memload117 to i32
  %RCX118 = sext i32 %95 to i64
  %memref-idxreg119 = mul i64 4, %RCX118
  %memref-basereg120 = add i64 %memload116, %memref-idxreg119
  %96 = inttoptr i64 %memref-basereg120 to ptr
  store i32 %memload115, ptr %96, align 1
  %memload121 = load i32, ptr %RBP_N.52, align 1
  %memload122 = load i64, ptr %RBP_N.32, align 1
  %memload123 = load i64, ptr %RBP_N.48, align 1
  %97 = trunc i64 %memload123 to i32
  %RCX124 = sext i32 %97 to i64
  %memref-idxreg125 = mul i64 4, %RCX124
  %memref-basereg126 = add i64 %memload122, %memref-idxreg125
  %98 = inttoptr i64 %memref-basereg126 to ptr
  store i32 %memload121, ptr %98, align 1
  br label %bb.13

bb.13:                                            ; preds = %bb.12, %bb.11
  br label %bb.14

bb.14:                                            ; preds = %bb.13
  %memload127 = load i32, ptr %RBP_N.36, align 1
  %EAX134 = add i32 %memload127, 1
  %99 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload127, i32 1)
  %CF128 = extractvalue { i32, i1 } %99, 1
  %100 = and i32 %EAX134, 255
  %101 = call i32 @llvm.ctpop.i32(i32 %100)
  %102 = and i32 %101, 1
  %PF129 = icmp eq i32 %102, 0
  %ZF130 = icmp eq i32 %EAX134, 0
  %highbit131 = and i32 -2147483648, %EAX134
  %SF132 = icmp ne i32 %highbit131, 0
  %103 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload127, i32 1)
  %OF133 = extractvalue { i32, i1 } %103, 1
  store i32 %EAX134, ptr %RBP_N.36, align 1
  br label %bb.4

bb.15:                                            ; preds = %bb.4
  store i32 0, ptr %RBP_N.36, align 1
  br label %bb.16

bb.16:                                            ; preds = %bb.15, %bb.21
  %memload135 = load i32, ptr %RBP_N.36, align 1
  %104 = load i32, ptr %RBP_N.12, align 1
  %105 = sub i32 %memload135, %104
  %106 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload135, i32 %104)
  %CF136 = extractvalue { i32, i1 } %106, 1
  %ZF137 = icmp eq i32 %105, 0
  %highbit138 = and i32 -2147483648, %105
  %SF139 = icmp ne i32 %highbit138, 0
  %107 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload135, i32 %104)
  %OF140 = extractvalue { i32, i1 } %107, 1
  %108 = and i32 %105, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108)
  %110 = and i32 %109, 1
  %PF141 = icmp eq i32 %110, 0
  %CmpSFOF_JGE198 = icmp eq i1 %SF139, %OF140
  br i1 %CmpSFOF_JGE198, label %bb.22, label %bb.17

bb.17:                                            ; preds = %bb.16
  %memload142 = load i32, ptr %RBP_N.36, align 1
  %111 = sext i32 %memload142 to i64
  %112 = lshr i64 %111, 32
  %EDX143 = trunc i64 %112 to i32
  %113 = sext i32 %memload142 to i64
  %114 = sext i32 %EDX143 to i64
  %div_hb_ls144 = shl nuw i64 %114, 32
  %dividend145 = or i64 %div_hb_ls144, %113
  %115 = sext i32 3 to i64
  %div_q146 = sdiv i64 %dividend145, %115
  %EAX147 = trunc i64 %div_q146 to i32
  %div_r148 = srem i64 %dividend145, %115
  %EDX149 = trunc i64 %div_r148 to i32
  %116 = sub i32 %EDX149, 0
  %117 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX149, i32 0)
  %CF150 = extractvalue { i32, i1 } %117, 1
  %ZF151 = icmp eq i32 %116, 0
  %highbit152 = and i32 -2147483648, %116
  %SF153 = icmp ne i32 %highbit152, 0
  %118 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX149, i32 0)
  %OF154 = extractvalue { i32, i1 } %118, 1
  %119 = and i32 %116, 255
  %120 = call i32 @llvm.ctpop.i32(i32 %119)
  %121 = and i32 %120, 1
  %PF155 = icmp eq i32 %121, 0
  %CmpZF_JNE = icmp eq i1 %ZF151, false
  br i1 %CmpZF_JNE, label %bb.19, label %bb.18

bb.18:                                            ; preds = %bb.17
  %memload156 = load i64, ptr %RBP_N.32, align 1
  store i64 %memload156, ptr %stktop_8, align 1
  %memload157 = load i32, ptr %RBP_N.36, align 1
  %122 = sext i32 %memload157 to i64
  %123 = lshr i64 %122, 32
  %EDX158 = trunc i64 %123 to i32
  %124 = sext i32 %memload157 to i64
  %125 = sext i32 %EDX158 to i64
  %div_hb_ls159 = shl nuw i64 %125, 32
  %dividend160 = or i64 %div_hb_ls159, %124
  %126 = sext i32 3 to i64
  %div_q161 = sdiv i64 %dividend160, %126
  %EAX162 = trunc i64 %div_q161 to i32
  %div_r163 = srem i64 %dividend160, %126
  %EDX164 = trunc i64 %div_r163 to i32
  %memload165 = load i64, ptr %stktop_8, align 1
  %RCX166 = sext i32 %EAX162 to i64
  %memref-idxreg167 = mul i64 4, %RCX166
  %memref-basereg168 = add i64 %memload165, %memref-idxreg167
  %127 = inttoptr i64 %memref-basereg168 to ptr
  %memload169 = load i32, ptr %127, align 1
  %memload170 = load i64, ptr %RBP_N.24, align 1
  %memload171 = load i64, ptr %RBP_N.36, align 1
  %128 = trunc i64 %memload171 to i32
  %RCX172 = sext i32 %128 to i64
  %memref-idxreg173 = mul i64 4, %RCX172
  %memref-basereg174 = add i64 %memload170, %memref-idxreg173
  %129 = inttoptr i64 %memref-basereg174 to ptr
  store i32 %memload169, ptr %129, align 1
  br label %bb.20

bb.19:                                            ; preds = %bb.17
  %memload175 = load i64, ptr %RBP_N.8, align 1
  %memload176 = load i64, ptr %RBP_N.36, align 1
  %130 = trunc i64 %memload176 to i32
  %RCX177 = sext i32 %130 to i64
  %memref-idxreg178 = mul i64 4, %RCX177
  %memref-basereg179 = add i64 %memload175, %memref-idxreg178
  %131 = inttoptr i64 %memref-basereg179 to ptr
  %memload180 = load i32, ptr %131, align 1
  %memload181 = load i64, ptr %RBP_N.24, align 1
  %memload182 = load i64, ptr %RBP_N.36, align 1
  %132 = trunc i64 %memload182 to i32
  %RCX183 = sext i32 %132 to i64
  %memref-idxreg184 = mul i64 4, %RCX183
  %memref-basereg185 = add i64 %memload181, %memref-idxreg184
  %133 = inttoptr i64 %memref-basereg185 to ptr
  store i32 %memload180, ptr %133, align 1
  br label %bb.20

bb.20:                                            ; preds = %bb.19, %bb.18
  br label %bb.21

bb.21:                                            ; preds = %bb.20
  %memload186 = load i32, ptr %RBP_N.36, align 1
  %EAX193 = add i32 %memload186, 1
  %134 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload186, i32 1)
  %CF187 = extractvalue { i32, i1 } %134, 1
  %135 = and i32 %EAX193, 255
  %136 = call i32 @llvm.ctpop.i32(i32 %135)
  %137 = and i32 %136, 1
  %PF188 = icmp eq i32 %137, 0
  %ZF189 = icmp eq i32 %EAX193, 0
  %highbit190 = and i32 -2147483648, %EAX193
  %SF191 = icmp ne i32 %highbit190, 0
  %138 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload186, i32 1)
  %OF192 = extractvalue { i32, i1 } %138, 1
  store i32 %EAX193, ptr %RBP_N.36, align 1
  br label %bb.16

bb.22:                                            ; preds = %bb.16
  %memload194 = load i64, ptr %RBP_N.32, align 1
  %139 = inttoptr i64 %memload194 to ptr
  call void @free(ptr %139)
  ret void
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

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
