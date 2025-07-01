; ModuleID = 'code.so'
source_filename = "code.so"

@rodata_13 = private unnamed_addr constant [11 x i8] c"True\00False\00", align 1, !ROData_SecInfo !0

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @malloc(i64)

declare dso_local ptr @strcpy(ptr, ptr)

declare dso_local void @free(ptr)

define dso_local void @func0(i64 %arg1, i64 %arg2, i64 %arg3, i64 %arg4) {
entry:
  %stktop_8 = alloca i8, i32 104, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.84 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.80 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 31
  %RBP_N.73 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.72 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 39
  %RBP_N.65 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 40
  %RBP_N.64 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 48
  %RBP_N.56 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 52
  %RBP_N.52 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 56
  %RBP_N.48 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 68
  %RBP_N.36 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 72
  %RBP_N.32 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 80
  %RBP_N.24 = inttoptr i64 %11 to ptr
  %12 = add i64 %tos, 88
  %RBP_N.16 = inttoptr i64 %12 to ptr
  %13 = add i64 %tos, 96
  %RBP_N.8 = inttoptr i64 %13 to ptr
  %14 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %14 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  store i64 %arg4, ptr %RBP_N.32, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  %15 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %15)
  %16 = trunc i64 %RAX to i32
  store i32 %16, ptr %RBP_N.36, align 1
  %memload1 = load i32, ptr %RBP_N.36, align 1
  %EAX = add i32 %memload1, 1
  %17 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload1, i32 1)
  %CF = extractvalue { i32, i1 } %17, 1
  %18 = and i32 %EAX, 255
  %19 = call i32 @llvm.ctpop.i32(i32 %18)
  %20 = and i32 %19, 1
  %PF = icmp eq i32 %20, 0
  %ZF = icmp eq i32 %EAX, 0
  %highbit = and i32 -2147483648, %EAX
  %SF = icmp ne i32 %highbit, 0
  %21 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload1, i32 1)
  %OF = extractvalue { i32, i1 } %21, 1
  %RDI = sext i32 %EAX to i64
  %RDI5 = shl i64 %RDI, 0
  %ZF2 = icmp eq i64 %RDI5, 0
  %highbit3 = and i64 -9223372036854775808, %RDI5
  %SF4 = icmp ne i64 %highbit3, 0
  %22 = call ptr @malloc(i64 %RDI5)
  %RAX6 = ptrtoint ptr %22 to i64
  store i64 %RAX6, ptr %RBP_N.48, align 1
  store i32 0, ptr %RBP_N.52, align 1
  store i32 0, ptr %RBP_N.56, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.10
  %memload7 = load i64, ptr %RBP_N.8, align 1
  %memload8 = load i64, ptr %RBP_N.56, align 1
  %23 = trunc i64 %memload8 to i32
  %RCX = sext i32 %23 to i64
  %memref-basereg = add i64 %memload7, %RCX
  %24 = inttoptr i64 %memref-basereg to ptr
  %memload9 = load i32, ptr %24, align 1
  %25 = trunc i32 %memload9 to i8
  %EAX10 = sext i8 %25 to i32
  %26 = sub i32 %EAX10, 0
  %27 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX10, i32 0)
  %CF11 = extractvalue { i32, i1 } %27, 1
  %ZF12 = icmp eq i32 %26, 0
  %highbit13 = and i32 -2147483648, %26
  %SF14 = icmp ne i32 %highbit13, 0
  %28 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX10, i32 0)
  %OF15 = extractvalue { i32, i1 } %28, 1
  %29 = and i32 %26, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = and i32 %30, 1
  %PF16 = icmp eq i32 %31, 0
  %CmpZF_JE = icmp eq i1 %ZF12, true
  br i1 %CmpZF_JE, label %bb.11, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload17 = load i64, ptr %RBP_N.16, align 1
  store i64 %memload17, ptr %RBP_N.64, align 1
  store i8 0, ptr %RBP_N.65, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.6
  %memload18 = load i64, ptr %RBP_N.64, align 1
  %32 = inttoptr i64 %memload18 to ptr
  %memload19 = load i32, ptr %32, align 1
  %33 = trunc i32 %memload19 to i8
  %EAX20 = sext i8 %33 to i32
  %34 = sub i32 %EAX20, 0
  %35 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX20, i32 0)
  %CF21 = extractvalue { i32, i1 } %35, 1
  %ZF22 = icmp eq i32 %34, 0
  %highbit23 = and i32 -2147483648, %34
  %SF24 = icmp ne i32 %highbit23, 0
  %36 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX20, i32 0)
  %OF25 = extractvalue { i32, i1 } %36, 1
  %37 = and i32 %34, 255
  %38 = call i32 @llvm.ctpop.i32(i32 %37)
  %39 = and i32 %38, 1
  %PF26 = icmp eq i32 %39, 0
  %CmpZF_JE144 = icmp eq i1 %ZF22, true
  br i1 %CmpZF_JE144, label %bb.7, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload27 = load i64, ptr %RBP_N.8, align 1
  %memload28 = load i64, ptr %RBP_N.56, align 1
  %40 = trunc i64 %memload28 to i32
  %RCX29 = sext i32 %40 to i64
  %memref-basereg30 = add i64 %memload27, %RCX29
  %41 = inttoptr i64 %memref-basereg30 to ptr
  %memload31 = load i32, ptr %41, align 1
  %42 = trunc i32 %memload31 to i8
  %EAX32 = sext i8 %42 to i32
  %memload33 = load i64, ptr %RBP_N.64, align 1
  %43 = inttoptr i64 %memload33 to ptr
  %memload34 = load i32, ptr %43, align 1
  %44 = trunc i32 %memload34 to i8
  %ECX = sext i8 %44 to i32
  %45 = sub i32 %EAX32, %ECX
  %46 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX32, i32 %ECX)
  %CF35 = extractvalue { i32, i1 } %46, 1
  %ZF36 = icmp eq i32 %45, 0
  %highbit37 = and i32 -2147483648, %45
  %SF38 = icmp ne i32 %highbit37, 0
  %47 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX32, i32 %ECX)
  %OF39 = extractvalue { i32, i1 } %47, 1
  %48 = and i32 %45, 255
  %49 = call i32 @llvm.ctpop.i32(i32 %48)
  %50 = and i32 %49, 1
  %PF40 = icmp eq i32 %50, 0
  %CmpZF_JNE = icmp eq i1 %ZF36, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  store i8 1, ptr %RBP_N.65, align 1
  br label %bb.7

bb.6:                                             ; preds = %bb.4
  %memload41 = load i64, ptr %RBP_N.64, align 1
  %RAX48 = add i64 %memload41, 1
  %51 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %memload41, i64 1)
  %CF42 = extractvalue { i64, i1 } %51, 1
  %52 = and i64 %RAX48, 255
  %53 = call i64 @llvm.ctpop.i64(i64 %52)
  %54 = and i64 %53, 1
  %PF43 = icmp eq i64 %54, 0
  %ZF44 = icmp eq i64 %RAX48, 0
  %highbit45 = and i64 -9223372036854775808, %RAX48
  %SF46 = icmp ne i64 %highbit45, 0
  %55 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %memload41, i64 1)
  %OF47 = extractvalue { i64, i1 } %55, 1
  store i64 %RAX48, ptr %RBP_N.64, align 1
  br label %bb.3

bb.7:                                             ; preds = %bb.5, %bb.3
  %56 = load i8, ptr %RBP_N.65, align 1
  %57 = zext i8 %56 to i64
  %58 = zext i8 1 to i64
  %59 = and i64 %57, %58
  %ZF49 = icmp eq i64 %59, 0
  %highbit50 = and i64 -9223372036854775808, %59
  %SF51 = icmp ne i64 %highbit50, 0
  %60 = and i64 %59, 255
  %61 = call i64 @llvm.ctpop.i64(i64 %60)
  %62 = and i64 %61, 1
  %PF52 = icmp eq i64 %62, 0
  %CmpZF_JNE145 = icmp eq i1 %ZF49, false
  br i1 %CmpZF_JNE145, label %bb.9, label %bb.8

bb.8:                                             ; preds = %bb.7
  %memload53 = load i64, ptr %RBP_N.8, align 1
  %memload54 = load i64, ptr %RBP_N.56, align 1
  %63 = trunc i64 %memload54 to i32
  %RCX55 = sext i32 %63 to i64
  %memref-basereg56 = add i64 %memload53, %RCX55
  %64 = inttoptr i64 %memref-basereg56 to ptr
  %memload57 = load i8, ptr %64, align 1
  %memload58 = load i64, ptr %RBP_N.48, align 1
  %memload59 = load i32, ptr %RBP_N.52, align 1
  %ESI = add i32 %memload59, 1
  %65 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload59, i32 1)
  %CF60 = extractvalue { i32, i1 } %65, 1
  %66 = and i32 %ESI, 255
  %67 = call i32 @llvm.ctpop.i32(i32 %66)
  %68 = and i32 %67, 1
  %PF61 = icmp eq i32 %68, 0
  %ZF62 = icmp eq i32 %ESI, 0
  %highbit63 = and i32 -2147483648, %ESI
  %SF64 = icmp ne i32 %highbit63, 0
  %69 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload59, i32 1)
  %OF65 = extractvalue { i32, i1 } %69, 1
  store i32 %ESI, ptr %RBP_N.52, align 1
  %RCX66 = sext i32 %memload59 to i64
  %memref-basereg67 = add i64 %memload58, %RCX66
  %70 = inttoptr i64 %memref-basereg67 to ptr
  store i8 %memload57, ptr %70, align 1
  br label %bb.9

bb.9:                                             ; preds = %bb.8, %bb.7
  br label %bb.10

bb.10:                                            ; preds = %bb.9
  %memload68 = load i32, ptr %RBP_N.56, align 1
  %EAX75 = add i32 %memload68, 1
  %71 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload68, i32 1)
  %CF69 = extractvalue { i32, i1 } %71, 1
  %72 = and i32 %EAX75, 255
  %73 = call i32 @llvm.ctpop.i32(i32 %72)
  %74 = and i32 %73, 1
  %PF70 = icmp eq i32 %74, 0
  %ZF71 = icmp eq i32 %EAX75, 0
  %highbit72 = and i32 -2147483648, %EAX75
  %SF73 = icmp ne i32 %highbit72, 0
  %75 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload68, i32 1)
  %OF74 = extractvalue { i32, i1 } %75, 1
  store i32 %EAX75, ptr %RBP_N.56, align 1
  br label %bb.1

bb.11:                                            ; preds = %bb.1
  %memload76 = load i64, ptr %RBP_N.48, align 1
  %memload77 = load i64, ptr %RBP_N.52, align 1
  %76 = trunc i64 %memload77 to i32
  %RCX78 = sext i32 %76 to i64
  %memref-basereg79 = add i64 %memload76, %RCX78
  %77 = inttoptr i64 %memref-basereg79 to ptr
  store i8 0, ptr %77, align 1
  %memload80 = load i64, ptr %RBP_N.48, align 1
  %78 = inttoptr i64 %memload80 to ptr
  %RAX81 = call i64 @strlen(ptr %78)
  %79 = trunc i64 %RAX81 to i32
  store i32 %79, ptr %RBP_N.72, align 1
  store i8 1, ptr %RBP_N.73, align 1
  store i32 0, ptr %RBP_N.80, align 1
  br label %bb.12

bb.12:                                            ; preds = %bb.11, %bb.16
  %memload82 = load i32, ptr %RBP_N.80, align 1
  store i32 %memload82, ptr %RBP_N.84, align 1
  %memload83 = load i32, ptr %RBP_N.72, align 1
  %80 = sext i32 %memload83 to i64
  %81 = lshr i64 %80, 32
  %EDX = trunc i64 %81 to i32
  %82 = sext i32 %memload83 to i64
  %83 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %83, 32
  %dividend = or i64 %div_hb_ls, %82
  %84 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %84
  %EAX84 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %84
  %EDX85 = trunc i64 %div_r to i32
  %memload86 = load i32, ptr %RBP_N.84, align 1
  %85 = sub i32 %memload86, %EAX84
  %86 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload86, i32 %EAX84)
  %CF87 = extractvalue { i32, i1 } %86, 1
  %ZF88 = icmp eq i32 %85, 0
  %highbit89 = and i32 -2147483648, %85
  %SF90 = icmp ne i32 %highbit89, 0
  %87 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload86, i32 %EAX84)
  %OF91 = extractvalue { i32, i1 } %87, 1
  %88 = and i32 %85, 255
  %89 = call i32 @llvm.ctpop.i32(i32 %88)
  %90 = and i32 %89, 1
  %PF92 = icmp eq i32 %90, 0
  %CmpSFOF_JGE = icmp eq i1 %SF90, %OF91
  br i1 %CmpSFOF_JGE, label %bb.17, label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload93 = load i64, ptr %RBP_N.48, align 1
  %memload94 = load i64, ptr %RBP_N.80, align 1
  %91 = trunc i64 %memload94 to i32
  %RCX95 = sext i32 %91 to i64
  %memref-basereg96 = add i64 %memload93, %RCX95
  %92 = inttoptr i64 %memref-basereg96 to ptr
  %memload97 = load i32, ptr %92, align 1
  %93 = trunc i32 %memload97 to i8
  %EAX98 = sext i8 %93 to i32
  %memload99 = load i64, ptr %RBP_N.48, align 1
  %memload100 = load i32, ptr %RBP_N.72, align 1
  %EDX107 = sub i32 %memload100, 1
  %94 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload100, i32 1)
  %CF101 = extractvalue { i32, i1 } %94, 1
  %95 = and i32 %EDX107, 255
  %96 = call i32 @llvm.ctpop.i32(i32 %95)
  %97 = and i32 %96, 1
  %PF102 = icmp eq i32 %97, 0
  %ZF103 = icmp eq i32 %EDX107, 0
  %highbit104 = and i32 -2147483648, %EDX107
  %SF105 = icmp ne i32 %highbit104, 0
  %98 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload100, i32 1)
  %OF106 = extractvalue { i32, i1 } %98, 1
  %99 = load i32, ptr %RBP_N.80, align 1
  %EDX108 = sub i32 %EDX107, %99
  %100 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EDX107, i32 %99)
  %CF109 = extractvalue { i32, i1 } %100, 1
  %ZF110 = icmp eq i32 %EDX108, 0
  %highbit111 = and i32 -2147483648, %EDX108
  %SF112 = icmp ne i32 %highbit111, 0
  %101 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EDX107, i32 %99)
  %OF113 = extractvalue { i32, i1 } %101, 1
  %102 = and i32 %EDX108, 255
  %103 = call i32 @llvm.ctpop.i32(i32 %102)
  %104 = and i32 %103, 1
  %PF114 = icmp eq i32 %104, 0
  %RDX = sext i32 %EDX108 to i64
  %memref-basereg115 = add i64 %memload99, %RDX
  %105 = inttoptr i64 %memref-basereg115 to ptr
  %memload116 = load i32, ptr %105, align 1
  %106 = trunc i32 %memload116 to i8
  %ECX117 = sext i8 %106 to i32
  %107 = sub i32 %EAX98, %ECX117
  %108 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX98, i32 %ECX117)
  %CF118 = extractvalue { i32, i1 } %108, 1
  %ZF119 = icmp eq i32 %107, 0
  %highbit120 = and i32 -2147483648, %107
  %SF121 = icmp ne i32 %highbit120, 0
  %109 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX98, i32 %ECX117)
  %OF122 = extractvalue { i32, i1 } %109, 1
  %110 = and i32 %107, 255
  %111 = call i32 @llvm.ctpop.i32(i32 %110)
  %112 = and i32 %111, 1
  %PF123 = icmp eq i32 %112, 0
  %CmpZF_JE146 = icmp eq i1 %ZF119, true
  br i1 %CmpZF_JE146, label %bb.15, label %bb.14

bb.14:                                            ; preds = %bb.13
  store i8 0, ptr %RBP_N.73, align 1
  br label %bb.17

bb.15:                                            ; preds = %bb.13
  br label %bb.16

bb.16:                                            ; preds = %bb.15
  %memload124 = load i32, ptr %RBP_N.80, align 1
  %EAX131 = add i32 %memload124, 1
  %113 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload124, i32 1)
  %CF125 = extractvalue { i32, i1 } %113, 1
  %114 = and i32 %EAX131, 255
  %115 = call i32 @llvm.ctpop.i32(i32 %114)
  %116 = and i32 %115, 1
  %PF126 = icmp eq i32 %116, 0
  %ZF127 = icmp eq i32 %EAX131, 0
  %highbit128 = and i32 -2147483648, %EAX131
  %SF129 = icmp ne i32 %highbit128, 0
  %117 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload124, i32 1)
  %OF130 = extractvalue { i32, i1 } %117, 1
  store i32 %EAX131, ptr %RBP_N.80, align 1
  br label %bb.12

bb.17:                                            ; preds = %bb.14, %bb.12
  %memload132 = load i64, ptr %RBP_N.24, align 1
  %memload133 = load i64, ptr %RBP_N.48, align 1
  %118 = inttoptr i64 %memload132 to ptr
  %119 = inttoptr i64 %memload133 to ptr
  %120 = call ptr @strcpy(ptr %118, ptr %119)
  %RAX134 = ptrtoint ptr %120 to i64
  %memload135 = load i64, ptr %RBP_N.32, align 1
  %memload136 = load i8, ptr %RBP_N.73, align 1
  %RSI = ptrtoint ptr getelementptr inbounds ([11 x i8], ptr @rodata_13, i32 0, i32 5) to i64, !ROData_Index !1
  %RAX137 = ptrtoint ptr @rodata_13 to i64
  %121 = and i8 %memload136, 1
  %122 = call i8 @llvm.ctpop.i8(i8 %121)
  %123 = and i8 %122, 1
  %PF138 = icmp eq i8 %123, 0
  %ZF139 = icmp eq i8 %121, 0
  %highbit140 = and i8 -128, %121
  %SF141 = icmp ne i8 %highbit140, 0
  %Cond_CMOVNE = icmp eq i1 %ZF139, false
  %CMOV = select i1 %Cond_CMOVNE, i64 %RAX137, i64 %RSI
  %124 = inttoptr i64 %memload135 to ptr
  %125 = inttoptr i64 %CMOV to ptr
  %126 = call ptr @strcpy(ptr %124, ptr %125)
  %RAX142 = ptrtoint ptr %126 to i64
  %memload143 = load i64, ptr %RBP_N.48, align 1
  %127 = inttoptr i64 %memload143 to ptr
  call void @free(ptr %127)
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.ctpop.i8(i8) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }

!0 = !{i64 8192}
!1 = !{ptr getelementptr inbounds ([11 x i8], ptr @rodata_13, i32 0, i32 5)}
