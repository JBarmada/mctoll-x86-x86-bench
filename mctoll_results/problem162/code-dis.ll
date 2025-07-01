; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local i64 @strlen(ptr)

declare dso_local ptr @__ctype_b_loc()

declare dso_local i32 @tolower(i32)

declare dso_local i32 @toupper(i32)

define dso_local i64 @func0(i64 %arg1) {
entry:
  %stktop_8 = alloca i8, i32 40, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.24 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.20 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.16 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.12 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.8 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %5 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 0, ptr %RBP_N.12, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  %6 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %6)
  %7 = trunc i64 %RAX to i32
  store i32 %7, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.11
  %memload1 = load i32, ptr %RBP_N.20, align 1
  %8 = load i32, ptr %RBP_N.16, align 1
  %9 = sub i32 %memload1, %8
  %10 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload1, i32 %8)
  %CF = extractvalue { i32, i1 } %10, 1
  %ZF = icmp eq i32 %9, 0
  %highbit = and i32 -2147483648, %9
  %SF = icmp ne i32 %highbit, 0
  %11 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload1, i32 %8)
  %OF = extractvalue { i32, i1 } %11, 1
  %12 = and i32 %9, 255
  %13 = call i32 @llvm.ctpop.i32(i32 %12)
  %14 = and i32 %13, 1
  %PF = icmp eq i32 %14, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.12, label %bb.2

bb.2:                                             ; preds = %bb.1
  %15 = call ptr @__ctype_b_loc()
  %memload3 = load i64, ptr %15, align 1
  %memload4 = load i64, ptr %RBP_N.8, align 1
  %memload5 = load i64, ptr %RBP_N.20, align 1
  %16 = trunc i64 %memload5 to i32
  %RDX = sext i32 %16 to i64
  %memref-basereg = add i64 %memload4, %RDX
  %17 = inttoptr i64 %memref-basereg to ptr
  %memload6 = load i32, ptr %17, align 1
  %18 = trunc i32 %memload6 to i8
  %ECX = zext i8 %18 to i32
  %RCX = sext i32 %ECX to i64
  %memref-idxreg = mul i64 2, %RCX
  %memref-basereg7 = add i64 %memload3, %memref-idxreg
  %19 = inttoptr i64 %memref-basereg7 to ptr
  %memload8 = load i32, ptr %19, align 1
  %20 = trunc i32 %memload8 to i16
  %EAX = zext i16 %20 to i32
  %EAX13 = and i32 %EAX, 1024
  %21 = and i32 %EAX13, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = and i32 %22, 1
  %PF9 = icmp eq i32 %23, 0
  %ZF10 = icmp eq i32 %EAX13, 0
  %highbit11 = and i32 -2147483648, %EAX13
  %SF12 = icmp ne i32 %highbit11, 0
  %24 = sub i32 %EAX13, 0
  %25 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX13, i32 0)
  %CF14 = extractvalue { i32, i1 } %25, 1
  %ZF15 = icmp eq i32 %24, 0
  %highbit16 = and i32 -2147483648, %24
  %SF17 = icmp ne i32 %highbit16, 0
  %26 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX13, i32 0)
  %OF18 = extractvalue { i32, i1 } %26, 1
  %27 = and i32 %24, 255
  %28 = call i32 @llvm.ctpop.i32(i32 %27)
  %29 = and i32 %28, 1
  %PF19 = icmp eq i32 %29, 0
  %CmpZF_JE = icmp eq i1 %ZF15, true
  br i1 %CmpZF_JE, label %bb.9, label %bb.3

bb.3:                                             ; preds = %bb.2
  %30 = call ptr @__ctype_b_loc()
  %memload21 = load i64, ptr %30, align 1
  %memload22 = load i64, ptr %RBP_N.8, align 1
  %memload23 = load i64, ptr %RBP_N.20, align 1
  %31 = trunc i64 %memload23 to i32
  %RDX24 = sext i32 %31 to i64
  %memref-basereg25 = add i64 %memload22, %RDX24
  %32 = inttoptr i64 %memref-basereg25 to ptr
  %memload26 = load i32, ptr %32, align 1
  %33 = trunc i32 %memload26 to i8
  %ECX27 = zext i8 %33 to i32
  %RCX28 = sext i32 %ECX27 to i64
  %memref-idxreg29 = mul i64 2, %RCX28
  %memref-basereg30 = add i64 %memload21, %memref-idxreg29
  %34 = inttoptr i64 %memref-basereg30 to ptr
  %memload31 = load i32, ptr %34, align 1
  %35 = trunc i32 %memload31 to i16
  %EAX32 = zext i16 %35 to i32
  %EAX37 = and i32 %EAX32, 256
  %36 = and i32 %EAX37, 255
  %37 = call i32 @llvm.ctpop.i32(i32 %36)
  %38 = and i32 %37, 1
  %PF33 = icmp eq i32 %38, 0
  %ZF34 = icmp eq i32 %EAX37, 0
  %highbit35 = and i32 -2147483648, %EAX37
  %SF36 = icmp ne i32 %highbit35, 0
  %39 = sub i32 %EAX37, 0
  %40 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX37, i32 0)
  %CF38 = extractvalue { i32, i1 } %40, 1
  %ZF39 = icmp eq i32 %39, 0
  %highbit40 = and i32 -2147483648, %39
  %SF41 = icmp ne i32 %highbit40, 0
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX37, i32 0)
  %OF42 = extractvalue { i32, i1 } %41, 1
  %42 = and i32 %39, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = and i32 %43, 1
  %PF43 = icmp eq i32 %44, 0
  %CmpZF_JE180 = icmp eq i1 %ZF39, true
  br i1 %CmpZF_JE180, label %bb.5, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload44 = load i64, ptr %RBP_N.8, align 1
  %memload45 = load i64, ptr %RBP_N.20, align 1
  %45 = trunc i64 %memload45 to i32
  %RCX46 = sext i32 %45 to i64
  %memref-basereg47 = add i64 %memload44, %RCX46
  %46 = inttoptr i64 %memref-basereg47 to ptr
  %memload48 = load i32, ptr %46, align 1
  %47 = trunc i32 %memload48 to i8
  %EDI = zext i8 %47 to i32
  %EAX49 = call i32 @tolower(i32 %EDI)
  %DL = trunc i32 %EAX49 to i8
  %memload50 = load i64, ptr %RBP_N.8, align 1
  %memload51 = load i64, ptr %RBP_N.20, align 1
  %48 = trunc i64 %memload51 to i32
  %RCX52 = sext i32 %48 to i64
  %memref-basereg53 = add i64 %memload50, %RCX52
  %49 = inttoptr i64 %memref-basereg53 to ptr
  store i8 %DL, ptr %49, align 1
  br label %bb.8

bb.5:                                             ; preds = %bb.3
  %50 = call ptr @__ctype_b_loc()
  %memload55 = load i64, ptr %50, align 1
  %memload56 = load i64, ptr %RBP_N.8, align 1
  %memload57 = load i64, ptr %RBP_N.20, align 1
  %51 = trunc i64 %memload57 to i32
  %RDX58 = sext i32 %51 to i64
  %memref-basereg59 = add i64 %memload56, %RDX58
  %52 = inttoptr i64 %memref-basereg59 to ptr
  %memload60 = load i32, ptr %52, align 1
  %53 = trunc i32 %memload60 to i8
  %ECX61 = zext i8 %53 to i32
  %RCX62 = sext i32 %ECX61 to i64
  %memref-idxreg63 = mul i64 2, %RCX62
  %memref-basereg64 = add i64 %memload55, %memref-idxreg63
  %54 = inttoptr i64 %memref-basereg64 to ptr
  %memload65 = load i32, ptr %54, align 1
  %55 = trunc i32 %memload65 to i16
  %EAX66 = zext i16 %55 to i32
  %EAX71 = and i32 %EAX66, 512
  %56 = and i32 %EAX71, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = and i32 %57, 1
  %PF67 = icmp eq i32 %58, 0
  %ZF68 = icmp eq i32 %EAX71, 0
  %highbit69 = and i32 -2147483648, %EAX71
  %SF70 = icmp ne i32 %highbit69, 0
  %59 = sub i32 %EAX71, 0
  %60 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX71, i32 0)
  %CF72 = extractvalue { i32, i1 } %60, 1
  %ZF73 = icmp eq i32 %59, 0
  %highbit74 = and i32 -2147483648, %59
  %SF75 = icmp ne i32 %highbit74, 0
  %61 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX71, i32 0)
  %OF76 = extractvalue { i32, i1 } %61, 1
  %62 = and i32 %59, 255
  %63 = call i32 @llvm.ctpop.i32(i32 %62)
  %64 = and i32 %63, 1
  %PF77 = icmp eq i32 %64, 0
  %CmpZF_JE181 = icmp eq i1 %ZF73, true
  br i1 %CmpZF_JE181, label %bb.7, label %bb.6

bb.6:                                             ; preds = %bb.5
  %memload78 = load i64, ptr %RBP_N.8, align 1
  %memload79 = load i64, ptr %RBP_N.20, align 1
  %65 = trunc i64 %memload79 to i32
  %RCX80 = sext i32 %65 to i64
  %memref-basereg81 = add i64 %memload78, %RCX80
  %66 = inttoptr i64 %memref-basereg81 to ptr
  %memload82 = load i32, ptr %66, align 1
  %67 = trunc i32 %memload82 to i8
  %EDI83 = zext i8 %67 to i32
  %EAX84 = call i32 @toupper(i32 %EDI83)
  %DL85 = trunc i32 %EAX84 to i8
  %memload86 = load i64, ptr %RBP_N.8, align 1
  %memload87 = load i64, ptr %RBP_N.20, align 1
  %68 = trunc i64 %memload87 to i32
  %RCX88 = sext i32 %68 to i64
  %memref-basereg89 = add i64 %memload86, %RCX88
  %69 = inttoptr i64 %memref-basereg89 to ptr
  store i8 %DL85, ptr %69, align 1
  br label %bb.7

bb.7:                                             ; preds = %bb.6, %bb.5
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.4
  br label %bb.10

bb.9:                                             ; preds = %bb.2
  %memload90 = load i32, ptr %RBP_N.12, align 1
  %EAX97 = add i32 %memload90, 1
  %70 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload90, i32 1)
  %CF91 = extractvalue { i32, i1 } %70, 1
  %71 = and i32 %EAX97, 255
  %72 = call i32 @llvm.ctpop.i32(i32 %71)
  %73 = and i32 %72, 1
  %PF92 = icmp eq i32 %73, 0
  %ZF93 = icmp eq i32 %EAX97, 0
  %highbit94 = and i32 -2147483648, %EAX97
  %SF95 = icmp ne i32 %highbit94, 0
  %74 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload90, i32 1)
  %OF96 = extractvalue { i32, i1 } %74, 1
  store i32 %EAX97, ptr %RBP_N.12, align 1
  br label %bb.10

bb.10:                                            ; preds = %bb.9, %bb.8
  br label %bb.11

bb.11:                                            ; preds = %bb.10
  %memload98 = load i32, ptr %RBP_N.20, align 1
  %EAX105 = add i32 %memload98, 1
  %75 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload98, i32 1)
  %CF99 = extractvalue { i32, i1 } %75, 1
  %76 = and i32 %EAX105, 255
  %77 = call i32 @llvm.ctpop.i32(i32 %76)
  %78 = and i32 %77, 1
  %PF100 = icmp eq i32 %78, 0
  %ZF101 = icmp eq i32 %EAX105, 0
  %highbit102 = and i32 -2147483648, %EAX105
  %SF103 = icmp ne i32 %highbit102, 0
  %79 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload98, i32 1)
  %OF104 = extractvalue { i32, i1 } %79, 1
  store i32 %EAX105, ptr %RBP_N.20, align 1
  br label %bb.1

bb.12:                                            ; preds = %bb.1
  %memload106 = load i32, ptr %RBP_N.12, align 1
  %80 = load i32, ptr %RBP_N.16, align 1
  %81 = sub i32 %memload106, %80
  %82 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload106, i32 %80)
  %CF107 = extractvalue { i32, i1 } %82, 1
  %ZF108 = icmp eq i32 %81, 0
  %highbit109 = and i32 -2147483648, %81
  %SF110 = icmp ne i32 %highbit109, 0
  %83 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload106, i32 %80)
  %OF111 = extractvalue { i32, i1 } %83, 1
  %84 = and i32 %81, 255
  %85 = call i32 @llvm.ctpop.i32(i32 %84)
  %86 = and i32 %85, 1
  %PF112 = icmp eq i32 %86, 0
  %CmpZF_JNE = icmp eq i1 %ZF108, false
  br i1 %CmpZF_JNE, label %bb.17, label %bb.13

bb.13:                                            ; preds = %bb.12
  store i32 0, ptr %RBP_N.24, align 1
  br label %bb.14

bb.14:                                            ; preds = %bb.13, %bb.15
  %memload113 = load i32, ptr %RBP_N.24, align 1
  store i32 %memload113, ptr %stktop_8, align 1
  %memload114 = load i32, ptr %RBP_N.16, align 1
  %87 = sext i32 %memload114 to i64
  %88 = lshr i64 %87, 32
  %EDX = trunc i64 %88 to i32
  %89 = sext i32 %memload114 to i64
  %90 = sext i32 %EDX to i64
  %div_hb_ls = shl nuw i64 %90, 32
  %dividend = or i64 %div_hb_ls, %89
  %91 = sext i32 2 to i64
  %div_q = sdiv i64 %dividend, %91
  %EAX115 = trunc i64 %div_q to i32
  %div_r = srem i64 %dividend, %91
  %EDX116 = trunc i64 %div_r to i32
  %memload117 = load i32, ptr %stktop_8, align 1
  %92 = sub i32 %memload117, %EAX115
  %93 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload117, i32 %EAX115)
  %CF118 = extractvalue { i32, i1 } %93, 1
  %ZF119 = icmp eq i32 %92, 0
  %highbit120 = and i32 -2147483648, %92
  %SF121 = icmp ne i32 %highbit120, 0
  %94 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload117, i32 %EAX115)
  %OF122 = extractvalue { i32, i1 } %94, 1
  %95 = and i32 %92, 255
  %96 = call i32 @llvm.ctpop.i32(i32 %95)
  %97 = and i32 %96, 1
  %PF123 = icmp eq i32 %97, 0
  %CmpSFOF_JGE182 = icmp eq i1 %SF121, %OF122
  br i1 %CmpSFOF_JGE182, label %bb.16, label %bb.15

bb.15:                                            ; preds = %bb.14
  %memload124 = load i64, ptr %RBP_N.8, align 1
  %memload125 = load i64, ptr %RBP_N.24, align 1
  %98 = trunc i64 %memload125 to i32
  %RCX126 = sext i32 %98 to i64
  %memref-basereg127 = add i64 %memload124, %RCX126
  %99 = inttoptr i64 %memref-basereg127 to ptr
  %memload128 = load i8, ptr %99, align 1
  %100 = ptrtoint ptr %stktop_8 to i64
  %101 = add i64 %100, 7
  %102 = inttoptr i64 %101 to ptr
  store i8 %memload128, ptr %102, align 1
  %memload129 = load i64, ptr %RBP_N.8, align 1
  %memload130 = load i32, ptr %RBP_N.16, align 1
  %103 = load i32, ptr %RBP_N.24, align 1
  %ECX131 = sub i32 %memload130, %103
  %104 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload130, i32 %103)
  %CF132 = extractvalue { i32, i1 } %104, 1
  %ZF133 = icmp eq i32 %ECX131, 0
  %highbit134 = and i32 -2147483648, %ECX131
  %SF135 = icmp ne i32 %highbit134, 0
  %105 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload130, i32 %103)
  %OF136 = extractvalue { i32, i1 } %105, 1
  %106 = and i32 %ECX131, 255
  %107 = call i32 @llvm.ctpop.i32(i32 %106)
  %108 = and i32 %107, 1
  %PF137 = icmp eq i32 %108, 0
  %ECX144 = sub i32 %ECX131, 1
  %109 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ECX131, i32 1)
  %CF138 = extractvalue { i32, i1 } %109, 1
  %110 = and i32 %ECX144, 255
  %111 = call i32 @llvm.ctpop.i32(i32 %110)
  %112 = and i32 %111, 1
  %PF139 = icmp eq i32 %112, 0
  %ZF140 = icmp eq i32 %ECX144, 0
  %highbit141 = and i32 -2147483648, %ECX144
  %SF142 = icmp ne i32 %highbit141, 0
  %113 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ECX131, i32 1)
  %OF143 = extractvalue { i32, i1 } %113, 1
  %RCX145 = sext i32 %ECX144 to i64
  %memref-basereg146 = add i64 %memload129, %RCX145
  %114 = inttoptr i64 %memref-basereg146 to ptr
  %memload147 = load i8, ptr %114, align 1
  %memload148 = load i64, ptr %RBP_N.8, align 1
  %memload149 = load i64, ptr %RBP_N.24, align 1
  %115 = trunc i64 %memload149 to i32
  %RCX150 = sext i32 %115 to i64
  %memref-basereg151 = add i64 %memload148, %RCX150
  %116 = inttoptr i64 %memref-basereg151 to ptr
  store i8 %memload147, ptr %116, align 1
  %117 = ptrtoint ptr %stktop_8 to i64
  %118 = add i64 %117, 7
  %119 = inttoptr i64 %118 to ptr
  %memload152 = load i8, ptr %119, align 1
  %memload153 = load i64, ptr %RBP_N.8, align 1
  %memload154 = load i32, ptr %RBP_N.16, align 1
  %120 = load i32, ptr %RBP_N.24, align 1
  %ECX155 = sub i32 %memload154, %120
  %121 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload154, i32 %120)
  %CF156 = extractvalue { i32, i1 } %121, 1
  %ZF157 = icmp eq i32 %ECX155, 0
  %highbit158 = and i32 -2147483648, %ECX155
  %SF159 = icmp ne i32 %highbit158, 0
  %122 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload154, i32 %120)
  %OF160 = extractvalue { i32, i1 } %122, 1
  %123 = and i32 %ECX155, 255
  %124 = call i32 @llvm.ctpop.i32(i32 %123)
  %125 = and i32 %124, 1
  %PF161 = icmp eq i32 %125, 0
  %ECX168 = sub i32 %ECX155, 1
  %126 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ECX155, i32 1)
  %CF162 = extractvalue { i32, i1 } %126, 1
  %127 = and i32 %ECX168, 255
  %128 = call i32 @llvm.ctpop.i32(i32 %127)
  %129 = and i32 %128, 1
  %PF163 = icmp eq i32 %129, 0
  %ZF164 = icmp eq i32 %ECX168, 0
  %highbit165 = and i32 -2147483648, %ECX168
  %SF166 = icmp ne i32 %highbit165, 0
  %130 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ECX155, i32 1)
  %OF167 = extractvalue { i32, i1 } %130, 1
  %RCX169 = sext i32 %ECX168 to i64
  %memref-basereg170 = add i64 %memload153, %RCX169
  %131 = inttoptr i64 %memref-basereg170 to ptr
  store i8 %memload152, ptr %131, align 1
  %memload171 = load i32, ptr %RBP_N.24, align 1
  %EAX178 = add i32 %memload171, 1
  %132 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload171, i32 1)
  %CF172 = extractvalue { i32, i1 } %132, 1
  %133 = and i32 %EAX178, 255
  %134 = call i32 @llvm.ctpop.i32(i32 %133)
  %135 = and i32 %134, 1
  %PF173 = icmp eq i32 %135, 0
  %ZF174 = icmp eq i32 %EAX178, 0
  %highbit175 = and i32 -2147483648, %EAX178
  %SF176 = icmp ne i32 %highbit175, 0
  %136 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload171, i32 1)
  %OF177 = extractvalue { i32, i1 } %136, 1
  store i32 %EAX178, ptr %RBP_N.24, align 1
  br label %bb.14

bb.16:                                            ; preds = %bb.14
  br label %bb.17

bb.17:                                            ; preds = %bb.16, %bb.12
  %memload179 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload179
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
