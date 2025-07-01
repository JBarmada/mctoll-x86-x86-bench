; ModuleID = 'code.so'
source_filename = "code.so"

@rodata_13 = private unnamed_addr constant [7 x i8] c"Yes\00No\00", align 1, !ROData_SecInfo !0

declare dso_local i64 @strlen(ptr)

define dso_local i64 @func0(i64 %arg1, i64 %arg2) {
entry:
  %stktop_8 = alloca i8, i32 56, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 16
  %RBP_N.40 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 20
  %RBP_N.36 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 24
  %RBP_N.32 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 28
  %RBP_N.28 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 32
  %RBP_N.24 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 40
  %RBP_N.16 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 48
  %RBP_N.8 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %7 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.16, align 1
  store i64 %arg2, ptr %RBP_N.24, align 1
  store i32 0, ptr %RBP_N.28, align 1
  %memload = load i64, ptr %RBP_N.16, align 1
  %8 = inttoptr i64 %memload to ptr
  %RAX = call i64 @strlen(ptr %8)
  %9 = trunc i64 %RAX to i32
  store i32 %9, ptr %RBP_N.32, align 1
  %memload1 = load i64, ptr %RBP_N.24, align 1
  %10 = inttoptr i64 %memload1 to ptr
  %RAX2 = call i64 @strlen(ptr %10)
  %11 = trunc i64 %RAX2 to i32
  store i32 %11, ptr %RBP_N.36, align 1
  %12 = ptrtoint ptr %stktop_8 to i64
  %13 = add i64 %12, 4
  %14 = inttoptr i64 %13 to ptr
  store i32 1, ptr %14, align 1
  store i32 0, ptr %RBP_N.40, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.9
  %memload3 = load i32, ptr %RBP_N.40, align 1
  %15 = load i32, ptr %RBP_N.32, align 1
  %16 = sub i32 %memload3, %15
  %17 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload3, i32 %15)
  %CF = extractvalue { i32, i1 } %17, 1
  %ZF = icmp eq i32 %16, 0
  %highbit = and i32 -2147483648, %16
  %SF = icmp ne i32 %highbit, 0
  %18 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload3, i32 %15)
  %OF = extractvalue { i32, i1 } %18, 1
  %19 = and i32 %16, 255
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = and i32 %20, 1
  %PF = icmp eq i32 %21, 0
  %CmpSFOF_JGE = icmp eq i1 %SF, %OF
  br i1 %CmpSFOF_JGE, label %bb.10, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload4 = load i64, ptr %RBP_N.16, align 1
  %memload5 = load i64, ptr %RBP_N.40, align 1
  %22 = trunc i64 %memload5 to i32
  %RCX = sext i32 %22 to i64
  %memref-basereg = add i64 %memload4, %RCX
  %23 = inttoptr i64 %memref-basereg to ptr
  %memload6 = load i32, ptr %23, align 1
  %24 = trunc i32 %memload6 to i8
  %EAX = sext i8 %24 to i32
  %25 = sub i32 %EAX, 40
  %26 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 40)
  %CF7 = extractvalue { i32, i1 } %26, 1
  %ZF8 = icmp eq i32 %25, 0
  %highbit9 = and i32 -2147483648, %25
  %SF10 = icmp ne i32 %highbit9, 0
  %27 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 40)
  %OF11 = extractvalue { i32, i1 } %27, 1
  %28 = and i32 %25, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = and i32 %29, 1
  %PF12 = icmp eq i32 %30, 0
  %CmpZF_JNE = icmp eq i1 %ZF8, false
  br i1 %CmpZF_JNE, label %bb.4, label %bb.3

bb.3:                                             ; preds = %bb.2
  %memload13 = load i32, ptr %RBP_N.28, align 1
  %EAX20 = add i32 %memload13, 1
  %31 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload13, i32 1)
  %CF14 = extractvalue { i32, i1 } %31, 1
  %32 = and i32 %EAX20, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = and i32 %33, 1
  %PF15 = icmp eq i32 %34, 0
  %ZF16 = icmp eq i32 %EAX20, 0
  %highbit17 = and i32 -2147483648, %EAX20
  %SF18 = icmp ne i32 %highbit17, 0
  %35 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload13, i32 1)
  %OF19 = extractvalue { i32, i1 } %35, 1
  store i32 %EAX20, ptr %RBP_N.28, align 1
  br label %bb.4

bb.4:                                             ; preds = %bb.3, %bb.2
  %memload21 = load i64, ptr %RBP_N.16, align 1
  %memload22 = load i64, ptr %RBP_N.40, align 1
  %36 = trunc i64 %memload22 to i32
  %RCX23 = sext i32 %36 to i64
  %memref-basereg24 = add i64 %memload21, %RCX23
  %37 = inttoptr i64 %memref-basereg24 to ptr
  %memload25 = load i32, ptr %37, align 1
  %38 = trunc i32 %memload25 to i8
  %EAX26 = sext i8 %38 to i32
  %39 = sub i32 %EAX26, 41
  %40 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX26, i32 41)
  %CF27 = extractvalue { i32, i1 } %40, 1
  %ZF28 = icmp eq i32 %39, 0
  %highbit29 = and i32 -2147483648, %39
  %SF30 = icmp ne i32 %highbit29, 0
  %41 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX26, i32 41)
  %OF31 = extractvalue { i32, i1 } %41, 1
  %42 = and i32 %39, 255
  %43 = call i32 @llvm.ctpop.i32(i32 %42)
  %44 = and i32 %43, 1
  %PF32 = icmp eq i32 %44, 0
  %CmpZF_JNE266 = icmp eq i1 %ZF28, false
  br i1 %CmpZF_JNE266, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  %memload33 = load i32, ptr %RBP_N.28, align 1
  %EAX40 = add i32 %memload33, -1
  %45 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload33, i32 -1)
  %CF34 = extractvalue { i32, i1 } %45, 1
  %46 = and i32 %EAX40, 255
  %47 = call i32 @llvm.ctpop.i32(i32 %46)
  %48 = and i32 %47, 1
  %PF35 = icmp eq i32 %48, 0
  %ZF36 = icmp eq i32 %EAX40, 0
  %highbit37 = and i32 -2147483648, %EAX40
  %SF38 = icmp ne i32 %highbit37, 0
  %49 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload33, i32 -1)
  %OF39 = extractvalue { i32, i1 } %49, 1
  store i32 %EAX40, ptr %RBP_N.28, align 1
  br label %bb.6

bb.6:                                             ; preds = %bb.5, %bb.4
  %50 = load i32, ptr %RBP_N.28, align 1
  %51 = zext i32 %50 to i64
  %52 = zext i32 0 to i64
  %53 = sub i64 %51, %52
  %54 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %51, i64 %52)
  %CF41 = extractvalue { i64, i1 } %54, 1
  %ZF42 = icmp eq i64 %53, 0
  %highbit43 = and i64 -9223372036854775808, %53
  %SF44 = icmp ne i64 %highbit43, 0
  %55 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %51, i64 %52)
  %OF45 = extractvalue { i64, i1 } %55, 1
  %56 = and i64 %53, 255
  %57 = call i64 @llvm.ctpop.i64(i64 %56)
  %58 = and i64 %57, 1
  %PF46 = icmp eq i64 %58, 0
  %CmpSFOF_JGE267 = icmp eq i1 %SF44, %OF45
  br i1 %CmpSFOF_JGE267, label %bb.8, label %bb.7

bb.7:                                             ; preds = %bb.6
  %59 = ptrtoint ptr %stktop_8 to i64
  %60 = add i64 %59, 4
  %61 = inttoptr i64 %60 to ptr
  store i32 0, ptr %61, align 1
  br label %bb.8

bb.8:                                             ; preds = %bb.7, %bb.6
  br label %bb.9

bb.9:                                             ; preds = %bb.8
  %memload47 = load i32, ptr %RBP_N.40, align 1
  %EAX54 = add i32 %memload47, 1
  %62 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload47, i32 1)
  %CF48 = extractvalue { i32, i1 } %62, 1
  %63 = and i32 %EAX54, 255
  %64 = call i32 @llvm.ctpop.i32(i32 %63)
  %65 = and i32 %64, 1
  %PF49 = icmp eq i32 %65, 0
  %ZF50 = icmp eq i32 %EAX54, 0
  %highbit51 = and i32 -2147483648, %EAX54
  %SF52 = icmp ne i32 %highbit51, 0
  %66 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload47, i32 1)
  %OF53 = extractvalue { i32, i1 } %66, 1
  store i32 %EAX54, ptr %RBP_N.40, align 1
  br label %bb.1

bb.10:                                            ; preds = %bb.1
  store i32 0, ptr %RBP_N.40, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.19
  %memload55 = load i32, ptr %RBP_N.40, align 1
  %67 = load i32, ptr %RBP_N.36, align 1
  %68 = sub i32 %memload55, %67
  %69 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload55, i32 %67)
  %CF56 = extractvalue { i32, i1 } %69, 1
  %ZF57 = icmp eq i32 %68, 0
  %highbit58 = and i32 -2147483648, %68
  %SF59 = icmp ne i32 %highbit58, 0
  %70 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload55, i32 %67)
  %OF60 = extractvalue { i32, i1 } %70, 1
  %71 = and i32 %68, 255
  %72 = call i32 @llvm.ctpop.i32(i32 %71)
  %73 = and i32 %72, 1
  %PF61 = icmp eq i32 %73, 0
  %CmpSFOF_JGE268 = icmp eq i1 %SF59, %OF60
  br i1 %CmpSFOF_JGE268, label %bb.20, label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload62 = load i64, ptr %RBP_N.24, align 1
  %memload63 = load i64, ptr %RBP_N.40, align 1
  %74 = trunc i64 %memload63 to i32
  %RCX64 = sext i32 %74 to i64
  %memref-basereg65 = add i64 %memload62, %RCX64
  %75 = inttoptr i64 %memref-basereg65 to ptr
  %memload66 = load i32, ptr %75, align 1
  %76 = trunc i32 %memload66 to i8
  %EAX67 = sext i8 %76 to i32
  %77 = sub i32 %EAX67, 40
  %78 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX67, i32 40)
  %CF68 = extractvalue { i32, i1 } %78, 1
  %ZF69 = icmp eq i32 %77, 0
  %highbit70 = and i32 -2147483648, %77
  %SF71 = icmp ne i32 %highbit70, 0
  %79 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX67, i32 40)
  %OF72 = extractvalue { i32, i1 } %79, 1
  %80 = and i32 %77, 255
  %81 = call i32 @llvm.ctpop.i32(i32 %80)
  %82 = and i32 %81, 1
  %PF73 = icmp eq i32 %82, 0
  %CmpZF_JNE269 = icmp eq i1 %ZF69, false
  br i1 %CmpZF_JNE269, label %bb.14, label %bb.13

bb.13:                                            ; preds = %bb.12
  %memload74 = load i32, ptr %RBP_N.28, align 1
  %EAX81 = add i32 %memload74, 1
  %83 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload74, i32 1)
  %CF75 = extractvalue { i32, i1 } %83, 1
  %84 = and i32 %EAX81, 255
  %85 = call i32 @llvm.ctpop.i32(i32 %84)
  %86 = and i32 %85, 1
  %PF76 = icmp eq i32 %86, 0
  %ZF77 = icmp eq i32 %EAX81, 0
  %highbit78 = and i32 -2147483648, %EAX81
  %SF79 = icmp ne i32 %highbit78, 0
  %87 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload74, i32 1)
  %OF80 = extractvalue { i32, i1 } %87, 1
  store i32 %EAX81, ptr %RBP_N.28, align 1
  br label %bb.14

bb.14:                                            ; preds = %bb.13, %bb.12
  %memload82 = load i64, ptr %RBP_N.24, align 1
  %memload83 = load i64, ptr %RBP_N.40, align 1
  %88 = trunc i64 %memload83 to i32
  %RCX84 = sext i32 %88 to i64
  %memref-basereg85 = add i64 %memload82, %RCX84
  %89 = inttoptr i64 %memref-basereg85 to ptr
  %memload86 = load i32, ptr %89, align 1
  %90 = trunc i32 %memload86 to i8
  %EAX87 = sext i8 %90 to i32
  %91 = sub i32 %EAX87, 41
  %92 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX87, i32 41)
  %CF88 = extractvalue { i32, i1 } %92, 1
  %ZF89 = icmp eq i32 %91, 0
  %highbit90 = and i32 -2147483648, %91
  %SF91 = icmp ne i32 %highbit90, 0
  %93 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX87, i32 41)
  %OF92 = extractvalue { i32, i1 } %93, 1
  %94 = and i32 %91, 255
  %95 = call i32 @llvm.ctpop.i32(i32 %94)
  %96 = and i32 %95, 1
  %PF93 = icmp eq i32 %96, 0
  %CmpZF_JNE270 = icmp eq i1 %ZF89, false
  br i1 %CmpZF_JNE270, label %bb.16, label %bb.15

bb.15:                                            ; preds = %bb.14
  %memload94 = load i32, ptr %RBP_N.28, align 1
  %EAX101 = add i32 %memload94, -1
  %97 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload94, i32 -1)
  %CF95 = extractvalue { i32, i1 } %97, 1
  %98 = and i32 %EAX101, 255
  %99 = call i32 @llvm.ctpop.i32(i32 %98)
  %100 = and i32 %99, 1
  %PF96 = icmp eq i32 %100, 0
  %ZF97 = icmp eq i32 %EAX101, 0
  %highbit98 = and i32 -2147483648, %EAX101
  %SF99 = icmp ne i32 %highbit98, 0
  %101 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload94, i32 -1)
  %OF100 = extractvalue { i32, i1 } %101, 1
  store i32 %EAX101, ptr %RBP_N.28, align 1
  br label %bb.16

bb.16:                                            ; preds = %bb.15, %bb.14
  %102 = load i32, ptr %RBP_N.28, align 1
  %103 = zext i32 %102 to i64
  %104 = zext i32 0 to i64
  %105 = sub i64 %103, %104
  %106 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %103, i64 %104)
  %CF102 = extractvalue { i64, i1 } %106, 1
  %ZF103 = icmp eq i64 %105, 0
  %highbit104 = and i64 -9223372036854775808, %105
  %SF105 = icmp ne i64 %highbit104, 0
  %107 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %103, i64 %104)
  %OF106 = extractvalue { i64, i1 } %107, 1
  %108 = and i64 %105, 255
  %109 = call i64 @llvm.ctpop.i64(i64 %108)
  %110 = and i64 %109, 1
  %PF107 = icmp eq i64 %110, 0
  %CmpSFOF_JGE271 = icmp eq i1 %SF105, %OF106
  br i1 %CmpSFOF_JGE271, label %bb.18, label %bb.17

bb.17:                                            ; preds = %bb.16
  %111 = ptrtoint ptr %stktop_8 to i64
  %112 = add i64 %111, 4
  %113 = inttoptr i64 %112 to ptr
  store i32 0, ptr %113, align 1
  br label %bb.18

bb.18:                                            ; preds = %bb.17, %bb.16
  br label %bb.19

bb.19:                                            ; preds = %bb.18
  %memload108 = load i32, ptr %RBP_N.40, align 1
  %EAX115 = add i32 %memload108, 1
  %114 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload108, i32 1)
  %CF109 = extractvalue { i32, i1 } %114, 1
  %115 = and i32 %EAX115, 255
  %116 = call i32 @llvm.ctpop.i32(i32 %115)
  %117 = and i32 %116, 1
  %PF110 = icmp eq i32 %117, 0
  %ZF111 = icmp eq i32 %EAX115, 0
  %highbit112 = and i32 -2147483648, %EAX115
  %SF113 = icmp ne i32 %highbit112, 0
  %118 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload108, i32 1)
  %OF114 = extractvalue { i32, i1 } %118, 1
  store i32 %EAX115, ptr %RBP_N.40, align 1
  br label %bb.11

bb.20:                                            ; preds = %bb.11
  %119 = load i32, ptr %RBP_N.28, align 1
  %120 = zext i32 %119 to i64
  %121 = zext i32 0 to i64
  %122 = sub i64 %120, %121
  %123 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %120, i64 %121)
  %CF116 = extractvalue { i64, i1 } %123, 1
  %ZF117 = icmp eq i64 %122, 0
  %highbit118 = and i64 -9223372036854775808, %122
  %SF119 = icmp ne i64 %highbit118, 0
  %124 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %120, i64 %121)
  %OF120 = extractvalue { i64, i1 } %124, 1
  %125 = and i64 %122, 255
  %126 = call i64 @llvm.ctpop.i64(i64 %125)
  %127 = and i64 %126, 1
  %PF121 = icmp eq i64 %127, 0
  %CmpZF_JNE272 = icmp eq i1 %ZF117, false
  br i1 %CmpZF_JNE272, label %bb.23, label %bb.21

bb.21:                                            ; preds = %bb.20
  %128 = ptrtoint ptr %stktop_8 to i64
  %129 = add i64 %128, 4
  %130 = inttoptr i64 %129 to ptr
  %131 = load i32, ptr %130, align 1
  %132 = zext i32 %131 to i64
  %133 = zext i32 0 to i64
  %134 = sub i64 %132, %133
  %135 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %132, i64 %133)
  %CF122 = extractvalue { i64, i1 } %135, 1
  %ZF123 = icmp eq i64 %134, 0
  %highbit124 = and i64 -9223372036854775808, %134
  %SF125 = icmp ne i64 %highbit124, 0
  %136 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %132, i64 %133)
  %OF126 = extractvalue { i64, i1 } %136, 1
  %137 = and i64 %134, 255
  %138 = call i64 @llvm.ctpop.i64(i64 %137)
  %139 = and i64 %138, 1
  %PF127 = icmp eq i64 %139, 0
  %CmpZF_JE = icmp eq i1 %ZF123, true
  br i1 %CmpZF_JE, label %bb.23, label %bb.22

bb.22:                                            ; preds = %bb.21
  %RAX128 = ptrtoint ptr @rodata_13 to i64
  store i64 %RAX128, ptr %RBP_N.8, align 1
  br label %bb.47

bb.23:                                            ; preds = %bb.21, %bb.20
  store i32 0, ptr %RBP_N.28, align 1
  %140 = ptrtoint ptr %stktop_8 to i64
  %141 = add i64 %140, 4
  %142 = inttoptr i64 %141 to ptr
  store i32 1, ptr %142, align 1
  store i32 0, ptr %RBP_N.40, align 1
  br label %bb.24

bb.24:                                            ; preds = %bb.23, %bb.32
  %memload129 = load i32, ptr %RBP_N.40, align 1
  %143 = load i32, ptr %RBP_N.36, align 1
  %144 = sub i32 %memload129, %143
  %145 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload129, i32 %143)
  %CF130 = extractvalue { i32, i1 } %145, 1
  %ZF131 = icmp eq i32 %144, 0
  %highbit132 = and i32 -2147483648, %144
  %SF133 = icmp ne i32 %highbit132, 0
  %146 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload129, i32 %143)
  %OF134 = extractvalue { i32, i1 } %146, 1
  %147 = and i32 %144, 255
  %148 = call i32 @llvm.ctpop.i32(i32 %147)
  %149 = and i32 %148, 1
  %PF135 = icmp eq i32 %149, 0
  %CmpSFOF_JGE273 = icmp eq i1 %SF133, %OF134
  br i1 %CmpSFOF_JGE273, label %bb.33, label %bb.25

bb.25:                                            ; preds = %bb.24
  %memload136 = load i64, ptr %RBP_N.24, align 1
  %memload137 = load i64, ptr %RBP_N.40, align 1
  %150 = trunc i64 %memload137 to i32
  %RCX138 = sext i32 %150 to i64
  %memref-basereg139 = add i64 %memload136, %RCX138
  %151 = inttoptr i64 %memref-basereg139 to ptr
  %memload140 = load i32, ptr %151, align 1
  %152 = trunc i32 %memload140 to i8
  %EAX141 = sext i8 %152 to i32
  %153 = sub i32 %EAX141, 40
  %154 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX141, i32 40)
  %CF142 = extractvalue { i32, i1 } %154, 1
  %ZF143 = icmp eq i32 %153, 0
  %highbit144 = and i32 -2147483648, %153
  %SF145 = icmp ne i32 %highbit144, 0
  %155 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX141, i32 40)
  %OF146 = extractvalue { i32, i1 } %155, 1
  %156 = and i32 %153, 255
  %157 = call i32 @llvm.ctpop.i32(i32 %156)
  %158 = and i32 %157, 1
  %PF147 = icmp eq i32 %158, 0
  %CmpZF_JNE274 = icmp eq i1 %ZF143, false
  br i1 %CmpZF_JNE274, label %bb.27, label %bb.26

bb.26:                                            ; preds = %bb.25
  %memload148 = load i32, ptr %RBP_N.28, align 1
  %EAX155 = add i32 %memload148, 1
  %159 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload148, i32 1)
  %CF149 = extractvalue { i32, i1 } %159, 1
  %160 = and i32 %EAX155, 255
  %161 = call i32 @llvm.ctpop.i32(i32 %160)
  %162 = and i32 %161, 1
  %PF150 = icmp eq i32 %162, 0
  %ZF151 = icmp eq i32 %EAX155, 0
  %highbit152 = and i32 -2147483648, %EAX155
  %SF153 = icmp ne i32 %highbit152, 0
  %163 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload148, i32 1)
  %OF154 = extractvalue { i32, i1 } %163, 1
  store i32 %EAX155, ptr %RBP_N.28, align 1
  br label %bb.27

bb.27:                                            ; preds = %bb.26, %bb.25
  %memload156 = load i64, ptr %RBP_N.24, align 1
  %memload157 = load i64, ptr %RBP_N.40, align 1
  %164 = trunc i64 %memload157 to i32
  %RCX158 = sext i32 %164 to i64
  %memref-basereg159 = add i64 %memload156, %RCX158
  %165 = inttoptr i64 %memref-basereg159 to ptr
  %memload160 = load i32, ptr %165, align 1
  %166 = trunc i32 %memload160 to i8
  %EAX161 = sext i8 %166 to i32
  %167 = sub i32 %EAX161, 41
  %168 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX161, i32 41)
  %CF162 = extractvalue { i32, i1 } %168, 1
  %ZF163 = icmp eq i32 %167, 0
  %highbit164 = and i32 -2147483648, %167
  %SF165 = icmp ne i32 %highbit164, 0
  %169 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX161, i32 41)
  %OF166 = extractvalue { i32, i1 } %169, 1
  %170 = and i32 %167, 255
  %171 = call i32 @llvm.ctpop.i32(i32 %170)
  %172 = and i32 %171, 1
  %PF167 = icmp eq i32 %172, 0
  %CmpZF_JNE275 = icmp eq i1 %ZF163, false
  br i1 %CmpZF_JNE275, label %bb.29, label %bb.28

bb.28:                                            ; preds = %bb.27
  %memload168 = load i32, ptr %RBP_N.28, align 1
  %EAX175 = add i32 %memload168, -1
  %173 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload168, i32 -1)
  %CF169 = extractvalue { i32, i1 } %173, 1
  %174 = and i32 %EAX175, 255
  %175 = call i32 @llvm.ctpop.i32(i32 %174)
  %176 = and i32 %175, 1
  %PF170 = icmp eq i32 %176, 0
  %ZF171 = icmp eq i32 %EAX175, 0
  %highbit172 = and i32 -2147483648, %EAX175
  %SF173 = icmp ne i32 %highbit172, 0
  %177 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload168, i32 -1)
  %OF174 = extractvalue { i32, i1 } %177, 1
  store i32 %EAX175, ptr %RBP_N.28, align 1
  br label %bb.29

bb.29:                                            ; preds = %bb.28, %bb.27
  %178 = load i32, ptr %RBP_N.28, align 1
  %179 = zext i32 %178 to i64
  %180 = zext i32 0 to i64
  %181 = sub i64 %179, %180
  %182 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %179, i64 %180)
  %CF176 = extractvalue { i64, i1 } %182, 1
  %ZF177 = icmp eq i64 %181, 0
  %highbit178 = and i64 -9223372036854775808, %181
  %SF179 = icmp ne i64 %highbit178, 0
  %183 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %179, i64 %180)
  %OF180 = extractvalue { i64, i1 } %183, 1
  %184 = and i64 %181, 255
  %185 = call i64 @llvm.ctpop.i64(i64 %184)
  %186 = and i64 %185, 1
  %PF181 = icmp eq i64 %186, 0
  %CmpSFOF_JGE276 = icmp eq i1 %SF179, %OF180
  br i1 %CmpSFOF_JGE276, label %bb.31, label %bb.30

bb.30:                                            ; preds = %bb.29
  %187 = ptrtoint ptr %stktop_8 to i64
  %188 = add i64 %187, 4
  %189 = inttoptr i64 %188 to ptr
  store i32 0, ptr %189, align 1
  br label %bb.31

bb.31:                                            ; preds = %bb.30, %bb.29
  br label %bb.32

bb.32:                                            ; preds = %bb.31
  %memload182 = load i32, ptr %RBP_N.40, align 1
  %EAX189 = add i32 %memload182, 1
  %190 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload182, i32 1)
  %CF183 = extractvalue { i32, i1 } %190, 1
  %191 = and i32 %EAX189, 255
  %192 = call i32 @llvm.ctpop.i32(i32 %191)
  %193 = and i32 %192, 1
  %PF184 = icmp eq i32 %193, 0
  %ZF185 = icmp eq i32 %EAX189, 0
  %highbit186 = and i32 -2147483648, %EAX189
  %SF187 = icmp ne i32 %highbit186, 0
  %194 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload182, i32 1)
  %OF188 = extractvalue { i32, i1 } %194, 1
  store i32 %EAX189, ptr %RBP_N.40, align 1
  br label %bb.24

bb.33:                                            ; preds = %bb.24
  store i32 0, ptr %RBP_N.40, align 1
  br label %bb.34

bb.34:                                            ; preds = %bb.33, %bb.42
  %memload190 = load i32, ptr %RBP_N.40, align 1
  %195 = load i32, ptr %RBP_N.32, align 1
  %196 = sub i32 %memload190, %195
  %197 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload190, i32 %195)
  %CF191 = extractvalue { i32, i1 } %197, 1
  %ZF192 = icmp eq i32 %196, 0
  %highbit193 = and i32 -2147483648, %196
  %SF194 = icmp ne i32 %highbit193, 0
  %198 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload190, i32 %195)
  %OF195 = extractvalue { i32, i1 } %198, 1
  %199 = and i32 %196, 255
  %200 = call i32 @llvm.ctpop.i32(i32 %199)
  %201 = and i32 %200, 1
  %PF196 = icmp eq i32 %201, 0
  %CmpSFOF_JGE277 = icmp eq i1 %SF194, %OF195
  br i1 %CmpSFOF_JGE277, label %bb.43, label %bb.35

bb.35:                                            ; preds = %bb.34
  %memload197 = load i64, ptr %RBP_N.16, align 1
  %memload198 = load i64, ptr %RBP_N.40, align 1
  %202 = trunc i64 %memload198 to i32
  %RCX199 = sext i32 %202 to i64
  %memref-basereg200 = add i64 %memload197, %RCX199
  %203 = inttoptr i64 %memref-basereg200 to ptr
  %memload201 = load i32, ptr %203, align 1
  %204 = trunc i32 %memload201 to i8
  %EAX202 = sext i8 %204 to i32
  %205 = sub i32 %EAX202, 40
  %206 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX202, i32 40)
  %CF203 = extractvalue { i32, i1 } %206, 1
  %ZF204 = icmp eq i32 %205, 0
  %highbit205 = and i32 -2147483648, %205
  %SF206 = icmp ne i32 %highbit205, 0
  %207 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX202, i32 40)
  %OF207 = extractvalue { i32, i1 } %207, 1
  %208 = and i32 %205, 255
  %209 = call i32 @llvm.ctpop.i32(i32 %208)
  %210 = and i32 %209, 1
  %PF208 = icmp eq i32 %210, 0
  %CmpZF_JNE278 = icmp eq i1 %ZF204, false
  br i1 %CmpZF_JNE278, label %bb.37, label %bb.36

bb.36:                                            ; preds = %bb.35
  %memload209 = load i32, ptr %RBP_N.28, align 1
  %EAX216 = add i32 %memload209, 1
  %211 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload209, i32 1)
  %CF210 = extractvalue { i32, i1 } %211, 1
  %212 = and i32 %EAX216, 255
  %213 = call i32 @llvm.ctpop.i32(i32 %212)
  %214 = and i32 %213, 1
  %PF211 = icmp eq i32 %214, 0
  %ZF212 = icmp eq i32 %EAX216, 0
  %highbit213 = and i32 -2147483648, %EAX216
  %SF214 = icmp ne i32 %highbit213, 0
  %215 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload209, i32 1)
  %OF215 = extractvalue { i32, i1 } %215, 1
  store i32 %EAX216, ptr %RBP_N.28, align 1
  br label %bb.37

bb.37:                                            ; preds = %bb.36, %bb.35
  %memload217 = load i64, ptr %RBP_N.16, align 1
  %memload218 = load i64, ptr %RBP_N.40, align 1
  %216 = trunc i64 %memload218 to i32
  %RCX219 = sext i32 %216 to i64
  %memref-basereg220 = add i64 %memload217, %RCX219
  %217 = inttoptr i64 %memref-basereg220 to ptr
  %memload221 = load i32, ptr %217, align 1
  %218 = trunc i32 %memload221 to i8
  %EAX222 = sext i8 %218 to i32
  %219 = sub i32 %EAX222, 41
  %220 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX222, i32 41)
  %CF223 = extractvalue { i32, i1 } %220, 1
  %ZF224 = icmp eq i32 %219, 0
  %highbit225 = and i32 -2147483648, %219
  %SF226 = icmp ne i32 %highbit225, 0
  %221 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX222, i32 41)
  %OF227 = extractvalue { i32, i1 } %221, 1
  %222 = and i32 %219, 255
  %223 = call i32 @llvm.ctpop.i32(i32 %222)
  %224 = and i32 %223, 1
  %PF228 = icmp eq i32 %224, 0
  %CmpZF_JNE279 = icmp eq i1 %ZF224, false
  br i1 %CmpZF_JNE279, label %bb.39, label %bb.38

bb.38:                                            ; preds = %bb.37
  %memload229 = load i32, ptr %RBP_N.28, align 1
  %EAX236 = add i32 %memload229, -1
  %225 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload229, i32 -1)
  %CF230 = extractvalue { i32, i1 } %225, 1
  %226 = and i32 %EAX236, 255
  %227 = call i32 @llvm.ctpop.i32(i32 %226)
  %228 = and i32 %227, 1
  %PF231 = icmp eq i32 %228, 0
  %ZF232 = icmp eq i32 %EAX236, 0
  %highbit233 = and i32 -2147483648, %EAX236
  %SF234 = icmp ne i32 %highbit233, 0
  %229 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload229, i32 -1)
  %OF235 = extractvalue { i32, i1 } %229, 1
  store i32 %EAX236, ptr %RBP_N.28, align 1
  br label %bb.39

bb.39:                                            ; preds = %bb.38, %bb.37
  %230 = load i32, ptr %RBP_N.28, align 1
  %231 = zext i32 %230 to i64
  %232 = zext i32 0 to i64
  %233 = sub i64 %231, %232
  %234 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %231, i64 %232)
  %CF237 = extractvalue { i64, i1 } %234, 1
  %ZF238 = icmp eq i64 %233, 0
  %highbit239 = and i64 -9223372036854775808, %233
  %SF240 = icmp ne i64 %highbit239, 0
  %235 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %231, i64 %232)
  %OF241 = extractvalue { i64, i1 } %235, 1
  %236 = and i64 %233, 255
  %237 = call i64 @llvm.ctpop.i64(i64 %236)
  %238 = and i64 %237, 1
  %PF242 = icmp eq i64 %238, 0
  %CmpSFOF_JGE280 = icmp eq i1 %SF240, %OF241
  br i1 %CmpSFOF_JGE280, label %bb.41, label %bb.40

bb.40:                                            ; preds = %bb.39
  %239 = ptrtoint ptr %stktop_8 to i64
  %240 = add i64 %239, 4
  %241 = inttoptr i64 %240 to ptr
  store i32 0, ptr %241, align 1
  br label %bb.41

bb.41:                                            ; preds = %bb.40, %bb.39
  br label %bb.42

bb.42:                                            ; preds = %bb.41
  %memload243 = load i32, ptr %RBP_N.40, align 1
  %EAX250 = add i32 %memload243, 1
  %242 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload243, i32 1)
  %CF244 = extractvalue { i32, i1 } %242, 1
  %243 = and i32 %EAX250, 255
  %244 = call i32 @llvm.ctpop.i32(i32 %243)
  %245 = and i32 %244, 1
  %PF245 = icmp eq i32 %245, 0
  %ZF246 = icmp eq i32 %EAX250, 0
  %highbit247 = and i32 -2147483648, %EAX250
  %SF248 = icmp ne i32 %highbit247, 0
  %246 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload243, i32 1)
  %OF249 = extractvalue { i32, i1 } %246, 1
  store i32 %EAX250, ptr %RBP_N.40, align 1
  br label %bb.34

bb.43:                                            ; preds = %bb.34
  %247 = load i32, ptr %RBP_N.28, align 1
  %248 = zext i32 %247 to i64
  %249 = zext i32 0 to i64
  %250 = sub i64 %248, %249
  %251 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %248, i64 %249)
  %CF251 = extractvalue { i64, i1 } %251, 1
  %ZF252 = icmp eq i64 %250, 0
  %highbit253 = and i64 -9223372036854775808, %250
  %SF254 = icmp ne i64 %highbit253, 0
  %252 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %248, i64 %249)
  %OF255 = extractvalue { i64, i1 } %252, 1
  %253 = and i64 %250, 255
  %254 = call i64 @llvm.ctpop.i64(i64 %253)
  %255 = and i64 %254, 1
  %PF256 = icmp eq i64 %255, 0
  %CmpZF_JNE281 = icmp eq i1 %ZF252, false
  br i1 %CmpZF_JNE281, label %bb.46, label %bb.44

bb.44:                                            ; preds = %bb.43
  %256 = ptrtoint ptr %stktop_8 to i64
  %257 = add i64 %256, 4
  %258 = inttoptr i64 %257 to ptr
  %259 = load i32, ptr %258, align 1
  %260 = zext i32 %259 to i64
  %261 = zext i32 0 to i64
  %262 = sub i64 %260, %261
  %263 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %260, i64 %261)
  %CF257 = extractvalue { i64, i1 } %263, 1
  %ZF258 = icmp eq i64 %262, 0
  %highbit259 = and i64 -9223372036854775808, %262
  %SF260 = icmp ne i64 %highbit259, 0
  %264 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %260, i64 %261)
  %OF261 = extractvalue { i64, i1 } %264, 1
  %265 = and i64 %262, 255
  %266 = call i64 @llvm.ctpop.i64(i64 %265)
  %267 = and i64 %266, 1
  %PF262 = icmp eq i64 %267, 0
  %CmpZF_JE282 = icmp eq i1 %ZF258, true
  br i1 %CmpZF_JE282, label %bb.46, label %bb.45

bb.45:                                            ; preds = %bb.44
  %RAX263 = ptrtoint ptr @rodata_13 to i64
  store i64 %RAX263, ptr %RBP_N.8, align 1
  br label %bb.47

bb.46:                                            ; preds = %bb.44, %bb.43
  %RAX264 = ptrtoint ptr getelementptr inbounds ([7 x i8], ptr @rodata_13, i32 0, i32 4) to i64, !ROData_Index !1
  store i64 %RAX264, ptr %RBP_N.8, align 1
  br label %bb.47

bb.47:                                            ; preds = %bb.46, %bb.45, %bb.22
  %memload265 = load i64, ptr %RBP_N.8, align 1
  ret i64 %memload265
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
!1 = !{ptr getelementptr inbounds ([7 x i8], ptr @rodata_13, i32 0, i32 4)}
