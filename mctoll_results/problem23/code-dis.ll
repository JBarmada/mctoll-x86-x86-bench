; ModuleID = 'code.so'
source_filename = "code.so"

@func0.out = common dso_local global [1024 x i8] zeroinitializer, align 16

declare dso_local ptr @__ctype_b_loc()

declare dso_local i64 @strtol(ptr, ptr, i32)

define dso_local i64 @func0(i64 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %1 = inttoptr i64 %0 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %2 to ptr
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
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i64 %arg2, ptr %RBP_N.16, align 1
  store i32 0, ptr %RBP_N.20, align 1
  %memload = load i64, ptr %RBP_N.8, align 1
  store i64 %memload, ptr %RBP_N.32, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.22
  %memload1 = load i64, ptr %RBP_N.32, align 1
  %7 = inttoptr i64 %memload1 to ptr
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i64
  %10 = zext i8 0 to i64
  %11 = sub i64 %9, %10
  %12 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %9, i64 %10)
  %CF = extractvalue { i64, i1 } %12, 1
  %ZF = icmp eq i64 %11, 0
  %highbit = and i64 -9223372036854775808, %11
  %SF = icmp ne i64 %highbit, 0
  %13 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %9, i64 %10)
  %OF = extractvalue { i64, i1 } %13, 1
  %14 = and i64 %11, 255
  %15 = call i64 @llvm.ctpop.i64(i64 %14)
  %16 = and i64 %15, 1
  %PF = icmp eq i64 %16, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.23, label %bb.2

bb.2:                                             ; preds = %bb.1
  br label %bb.3

bb.3:                                             ; preds = %bb.8, %bb.2
  %memload2 = load i64, ptr %RBP_N.32, align 1
  %17 = inttoptr i64 %memload2 to ptr
  %memload3 = load i32, ptr %17, align 1
  %18 = trunc i32 %memload3 to i8
  %ECX = sext i8 %18 to i32
  %19 = sub i32 %ECX, 0
  %20 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ECX, i32 0)
  %CF4 = extractvalue { i32, i1 } %20, 1
  %ZF5 = icmp eq i32 %19, 0
  %highbit6 = and i32 -2147483648, %19
  %SF7 = icmp ne i32 %highbit6, 0
  %21 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ECX, i32 0)
  %OF8 = extractvalue { i32, i1 } %21, 1
  %22 = and i32 %19, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = and i32 %23, 1
  %PF9 = icmp eq i32 %24, 0
  %25 = ptrtoint ptr %stktop_8 to i64
  %26 = add i64 %25, 3
  %27 = trunc i32 0 to i8
  %28 = inttoptr i64 %26 to ptr
  store i8 %27, ptr %28, align 1
  %CmpZF_JE131 = icmp eq i1 %ZF5, true
  br i1 %CmpZF_JE131, label %bb.6, label %bb.4

bb.4:                                             ; preds = %bb.3
  %29 = call ptr @__ctype_b_loc()
  %memload10 = load i64, ptr %29, align 1
  %memload11 = load i64, ptr %RBP_N.32, align 1
  %30 = inttoptr i64 %memload11 to ptr
  %memload12 = load i32, ptr %30, align 1
  %31 = trunc i32 %memload12 to i8
  %ECX13 = sext i8 %31 to i32
  %RCX = sext i32 %ECX13 to i64
  %memref-idxreg = mul i64 2, %RCX
  %memref-basereg = add i64 %memload10, %memref-idxreg
  %32 = inttoptr i64 %memref-basereg to ptr
  %memload14 = load i32, ptr %32, align 1
  %33 = trunc i32 %memload14 to i16
  %ECX15 = zext i16 %33 to i32
  %ECX20 = and i32 %ECX15, 2048
  %34 = and i32 %ECX20, 255
  %35 = call i32 @llvm.ctpop.i32(i32 %34)
  %36 = and i32 %35, 1
  %PF16 = icmp eq i32 %36, 0
  %ZF17 = icmp eq i32 %ECX20, 0
  %highbit18 = and i32 -2147483648, %ECX20
  %SF19 = icmp ne i32 %highbit18, 0
  %37 = sub i32 %ECX20, 0
  %38 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ECX20, i32 0)
  %CF21 = extractvalue { i32, i1 } %38, 1
  %ZF22 = icmp eq i32 %37, 0
  %highbit23 = and i32 -2147483648, %37
  %SF24 = icmp ne i32 %highbit23, 0
  %39 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ECX20, i32 0)
  %OF25 = extractvalue { i32, i1 } %39, 1
  %40 = and i32 %37, 255
  %41 = call i32 @llvm.ctpop.i32(i32 %40)
  %42 = and i32 %41, 1
  %PF26 = icmp eq i32 %42, 0
  %43 = ptrtoint ptr %stktop_8 to i64
  %44 = add i64 %43, 3
  %45 = trunc i32 0 to i8
  %46 = inttoptr i64 %44 to ptr
  store i8 %45, ptr %46, align 1
  %CmpZF_JNE = icmp eq i1 %ZF22, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload27 = load i64, ptr %RBP_N.32, align 1
  %47 = inttoptr i64 %memload27 to ptr
  %memload28 = load i32, ptr %47, align 1
  %48 = trunc i32 %memload28 to i8
  %EAX = sext i8 %48 to i32
  %49 = sub i32 %EAX, 45
  %50 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 45)
  %CF29 = extractvalue { i32, i1 } %50, 1
  %ZF30 = icmp eq i32 %49, 0
  %highbit31 = and i32 -2147483648, %49
  %SF32 = icmp ne i32 %highbit31, 0
  %51 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 45)
  %OF33 = extractvalue { i32, i1 } %51, 1
  %52 = and i32 %49, 255
  %53 = call i32 @llvm.ctpop.i32(i32 %52)
  %54 = and i32 %53, 1
  %PF34 = icmp eq i32 %54, 0
  %AL = icmp eq i1 %ZF30, false
  %55 = ptrtoint ptr %stktop_8 to i64
  %56 = add i64 %55, 3
  %57 = zext i1 %AL to i8
  %58 = inttoptr i64 %56 to ptr
  store i8 %57, ptr %58, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4, %bb.3
  %59 = ptrtoint ptr %stktop_8 to i64
  %60 = add i64 %59, 3
  %61 = inttoptr i64 %60 to ptr
  %memload35 = load i8, ptr %61, align 1
  %62 = and i8 %memload35, 1
  %63 = call i8 @llvm.ctpop.i8(i8 %62)
  %64 = and i8 %63, 1
  %PF36 = icmp eq i8 %64, 0
  %ZF37 = icmp eq i8 %62, 0
  %highbit38 = and i8 -128, %62
  %SF39 = icmp ne i8 %highbit38, 0
  %CmpZF_JNE132 = icmp eq i1 %ZF37, false
  br i1 %CmpZF_JNE132, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  br label %bb.9

bb.9:                                             ; preds = %bb.7
  %memload40 = load i64, ptr %RBP_N.32, align 1
  %65 = inttoptr i64 %memload40 to ptr
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i64
  %68 = zext i8 0 to i64
  %69 = sub i64 %67, %68
  %70 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %67, i64 %68)
  %CF41 = extractvalue { i64, i1 } %70, 1
  %ZF42 = icmp eq i64 %69, 0
  %highbit43 = and i64 -9223372036854775808, %69
  %SF44 = icmp ne i64 %highbit43, 0
  %71 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %67, i64 %68)
  %OF45 = extractvalue { i64, i1 } %71, 1
  %72 = and i64 %69, 255
  %73 = call i64 @llvm.ctpop.i64(i64 %72)
  %74 = and i64 %73, 1
  %PF46 = icmp eq i64 %74, 0
  %CmpZF_JNE133 = icmp eq i1 %ZF42, false
  br i1 %CmpZF_JNE133, label %bb.11, label %bb.10

bb.10:                                            ; preds = %bb.9
  br label %bb.23

bb.11:                                            ; preds = %bb.9
  %memload47 = load i64, ptr %RBP_N.32, align 1
  %75 = inttoptr i64 %memload47 to ptr
  %RAX48 = call i64 @strtol(ptr %75, ptr %1, i32 10)
  %76 = ptrtoint ptr %stktop_8 to i64
  %77 = add i64 %76, 4
  %78 = trunc i64 %RAX48 to i32
  %79 = inttoptr i64 %77 to ptr
  store i32 %78, ptr %79, align 1
  %memload49 = load i64, ptr %RBP_N.32, align 1
  %80 = load i64, ptr %1, align 1
  %81 = sub i64 %memload49, %80
  %82 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %memload49, i64 %80)
  %CF50 = extractvalue { i64, i1 } %82, 1
  %ZF51 = icmp eq i64 %81, 0
  %highbit52 = and i64 -9223372036854775808, %81
  %SF53 = icmp ne i64 %highbit52, 0
  %83 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %memload49, i64 %80)
  %OF54 = extractvalue { i64, i1 } %83, 1
  %84 = and i64 %81, 255
  %85 = call i64 @llvm.ctpop.i64(i64 %84)
  %86 = and i64 %85, 1
  %PF55 = icmp eq i64 %86, 0
  %CmpZF_JE134 = icmp eq i1 %ZF51, true
  br i1 %CmpZF_JE134, label %bb.15, label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload56 = load i64, ptr %1, align 1
  %87 = inttoptr i64 %memload56 to ptr
  %memload57 = load i32, ptr %87, align 1
  %88 = trunc i32 %memload57 to i8
  %EAX58 = sext i8 %88 to i32
  %89 = sub i32 %EAX58, 44
  %90 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX58, i32 44)
  %CF59 = extractvalue { i32, i1 } %90, 1
  %ZF60 = icmp eq i32 %89, 0
  %highbit61 = and i32 -2147483648, %89
  %SF62 = icmp ne i32 %highbit61, 0
  %91 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX58, i32 44)
  %OF63 = extractvalue { i32, i1 } %91, 1
  %92 = and i32 %89, 255
  %93 = call i32 @llvm.ctpop.i32(i32 %92)
  %94 = and i32 %93, 1
  %PF64 = icmp eq i32 %94, 0
  %CmpZF_JE135 = icmp eq i1 %ZF60, true
  br i1 %CmpZF_JE135, label %bb.14, label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload65 = load i64, ptr %1, align 1
  %95 = inttoptr i64 %memload65 to ptr
  %memload66 = load i32, ptr %95, align 1
  %96 = trunc i32 %memload66 to i8
  %EAX67 = sext i8 %96 to i32
  %97 = sub i32 %EAX67, 0
  %98 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX67, i32 0)
  %CF68 = extractvalue { i32, i1 } %98, 1
  %ZF69 = icmp eq i32 %97, 0
  %highbit70 = and i32 -2147483648, %97
  %SF71 = icmp ne i32 %highbit70, 0
  %99 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX67, i32 0)
  %OF72 = extractvalue { i32, i1 } %99, 1
  %100 = and i32 %97, 255
  %101 = call i32 @llvm.ctpop.i32(i32 %100)
  %102 = and i32 %101, 1
  %PF73 = icmp eq i32 %102, 0
  %CmpZF_JNE136 = icmp eq i1 %ZF69, false
  br i1 %CmpZF_JNE136, label %bb.15, label %bb.14

bb.14:                                            ; preds = %bb.13, %bb.12
  %103 = ptrtoint ptr %stktop_8 to i64
  %104 = add i64 %103, 4
  %105 = inttoptr i64 %104 to ptr
  %memload74 = load i32, ptr %105, align 1
  %memload75 = load i32, ptr %RBP_N.20, align 1
  %ECX82 = add i32 %memload75, 1
  %106 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload75, i32 1)
  %CF76 = extractvalue { i32, i1 } %106, 1
  %107 = and i32 %ECX82, 255
  %108 = call i32 @llvm.ctpop.i32(i32 %107)
  %109 = and i32 %108, 1
  %PF77 = icmp eq i32 %109, 0
  %ZF78 = icmp eq i32 %ECX82, 0
  %highbit79 = and i32 -2147483648, %ECX82
  %SF80 = icmp ne i32 %highbit79, 0
  %110 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload75, i32 1)
  %OF81 = extractvalue { i32, i1 } %110, 1
  store i32 %ECX82, ptr %RBP_N.20, align 1
  %RCX83 = sext i32 %memload75 to i64
  %111 = bitcast ptr @func0.out to ptr
  %112 = getelementptr inbounds [128 x i64], ptr %111, i32 0, i32 0
  %RAX84 = ptrtoint ptr %112 to i64
  %memref-idxreg85 = mul i64 4, %RCX83
  %memref-basereg86 = add i64 %RAX84, %memref-idxreg85
  %113 = inttoptr i64 %memref-basereg86 to ptr
  store i32 %memload74, ptr %113, align 1
  br label %bb.22

bb.15:                                            ; preds = %bb.13, %bb.11
  br label %bb.16

bb.16:                                            ; preds = %bb.20, %bb.15
  %memload87 = load i64, ptr %1, align 1
  %114 = inttoptr i64 %memload87 to ptr
  %memload88 = load i32, ptr %114, align 1
  %115 = trunc i32 %memload88 to i8
  %ECX89 = sext i8 %115 to i32
  %116 = sub i32 %ECX89, 0
  %117 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %ECX89, i32 0)
  %CF90 = extractvalue { i32, i1 } %117, 1
  %ZF91 = icmp eq i32 %116, 0
  %highbit92 = and i32 -2147483648, %116
  %SF93 = icmp ne i32 %highbit92, 0
  %118 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %ECX89, i32 0)
  %OF94 = extractvalue { i32, i1 } %118, 1
  %119 = and i32 %116, 255
  %120 = call i32 @llvm.ctpop.i32(i32 %119)
  %121 = and i32 %120, 1
  %PF95 = icmp eq i32 %121, 0
  %122 = ptrtoint ptr %stktop_8 to i64
  %123 = add i64 %122, 2
  %124 = trunc i32 0 to i8
  %125 = inttoptr i64 %123 to ptr
  store i8 %124, ptr %125, align 1
  %CmpZF_JE137 = icmp eq i1 %ZF91, true
  br i1 %CmpZF_JE137, label %bb.18, label %bb.17

bb.17:                                            ; preds = %bb.16
  %memload96 = load i64, ptr %1, align 1
  %126 = inttoptr i64 %memload96 to ptr
  %memload97 = load i32, ptr %126, align 1
  %127 = trunc i32 %memload97 to i8
  %EAX98 = sext i8 %127 to i32
  %128 = sub i32 %EAX98, 44
  %129 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX98, i32 44)
  %CF99 = extractvalue { i32, i1 } %129, 1
  %ZF100 = icmp eq i32 %128, 0
  %highbit101 = and i32 -2147483648, %128
  %SF102 = icmp ne i32 %highbit101, 0
  %130 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX98, i32 44)
  %OF103 = extractvalue { i32, i1 } %130, 1
  %131 = and i32 %128, 255
  %132 = call i32 @llvm.ctpop.i32(i32 %131)
  %133 = and i32 %132, 1
  %PF104 = icmp eq i32 %133, 0
  %AL105 = icmp eq i1 %ZF100, false
  %134 = ptrtoint ptr %stktop_8 to i64
  %135 = add i64 %134, 2
  %136 = zext i1 %AL105 to i8
  %137 = inttoptr i64 %135 to ptr
  store i8 %136, ptr %137, align 1
  br label %bb.18

bb.18:                                            ; preds = %bb.17, %bb.16
  %138 = ptrtoint ptr %stktop_8 to i64
  %139 = add i64 %138, 2
  %140 = inttoptr i64 %139 to ptr
  %memload106 = load i8, ptr %140, align 1
  %141 = and i8 %memload106, 1
  %142 = call i8 @llvm.ctpop.i8(i8 %141)
  %143 = and i8 %142, 1
  %PF107 = icmp eq i8 %143, 0
  %ZF108 = icmp eq i8 %141, 0
  %highbit109 = and i8 -128, %141
  %SF110 = icmp ne i8 %highbit109, 0
  %CmpZF_JNE138 = icmp eq i1 %ZF108, false
  br i1 %CmpZF_JNE138, label %bb.20, label %bb.19

bb.19:                                            ; preds = %bb.18
  br label %bb.21

bb.21:                                            ; preds = %bb.19
  br label %bb.22

bb.22:                                            ; preds = %bb.21, %bb.14
  %memload111 = load i64, ptr %1, align 1
  store i64 %memload111, ptr %RBP_N.32, align 1
  br label %bb.1

bb.20:                                            ; preds = %bb.18
  %memload112 = load i64, ptr %1, align 1
  %RAX119 = add i64 %memload112, 1
  %144 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %memload112, i64 1)
  %CF113 = extractvalue { i64, i1 } %144, 1
  %145 = and i64 %RAX119, 255
  %146 = call i64 @llvm.ctpop.i64(i64 %145)
  %147 = and i64 %146, 1
  %PF114 = icmp eq i64 %147, 0
  %ZF115 = icmp eq i64 %RAX119, 0
  %highbit116 = and i64 -9223372036854775808, %RAX119
  %SF117 = icmp ne i64 %highbit116, 0
  %148 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %memload112, i64 1)
  %OF118 = extractvalue { i64, i1 } %148, 1
  store i64 %RAX119, ptr %1, align 1
  br label %bb.16

bb.8:                                             ; preds = %bb.6
  %memload120 = load i64, ptr %RBP_N.32, align 1
  %RAX127 = add i64 %memload120, 1
  %149 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %memload120, i64 1)
  %CF121 = extractvalue { i64, i1 } %149, 1
  %150 = and i64 %RAX127, 255
  %151 = call i64 @llvm.ctpop.i64(i64 %150)
  %152 = and i64 %151, 1
  %PF122 = icmp eq i64 %152, 0
  %ZF123 = icmp eq i64 %RAX127, 0
  %highbit124 = and i64 -9223372036854775808, %RAX127
  %SF125 = icmp ne i64 %highbit124, 0
  %153 = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %memload120, i64 1)
  %OF126 = extractvalue { i64, i1 } %153, 1
  store i64 %RAX127, ptr %RBP_N.32, align 1
  br label %bb.3

bb.23:                                            ; preds = %bb.10, %bb.1
  %memload128 = load i32, ptr %RBP_N.20, align 1
  %memload129 = load i64, ptr %RBP_N.16, align 1
  %154 = inttoptr i64 %memload129 to ptr
  store i32 %memload128, ptr %154, align 1
  %155 = bitcast ptr @func0.out to ptr
  %156 = getelementptr inbounds [128 x i64], ptr %155, i32 0, i32 0
  %RAX130 = ptrtoint ptr %156 to i64
  ret i64 %RAX130
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
declare i8 @llvm.ctpop.i8(i8) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.uadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
