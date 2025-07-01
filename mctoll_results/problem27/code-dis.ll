; ModuleID = 'code.so'
source_filename = "code.so"

declare dso_local ptr @malloc(i64)

declare dso_local ptr @calloc(i64, i64)

declare dso_local void @free(ptr)

define dso_local i64 @func0(i64 %arg1, i32 %arg2, i64 %arg3) {
entry:
  %stktop_8 = alloca i8, i32 120, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.100 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.96 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.92 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 32
  %RBP_N.88 = inttoptr i64 %3 to ptr
  %4 = add i64 %tos, 36
  %RBP_N.84 = inttoptr i64 %4 to ptr
  %5 = add i64 %tos, 40
  %RBP_N.80 = inttoptr i64 %5 to ptr
  %6 = add i64 %tos, 44
  %RBP_N.76 = inttoptr i64 %6 to ptr
  %7 = add i64 %tos, 48
  %RBP_N.72 = inttoptr i64 %7 to ptr
  %8 = add i64 %tos, 52
  %RBP_N.68 = inttoptr i64 %8 to ptr
  %9 = add i64 %tos, 56
  %RBP_N.64 = inttoptr i64 %9 to ptr
  %10 = add i64 %tos, 60
  %RBP_N.60 = inttoptr i64 %10 to ptr
  %11 = add i64 %tos, 64
  %RBP_N.56 = inttoptr i64 %11 to ptr
  %12 = add i64 %tos, 68
  %RBP_N.52 = inttoptr i64 %12 to ptr
  %13 = add i64 %tos, 72
  %RBP_N.48 = inttoptr i64 %13 to ptr
  %14 = add i64 %tos, 80
  %RBP_N.40 = inttoptr i64 %14 to ptr
  %15 = add i64 %tos, 88
  %RBP_N.32 = inttoptr i64 %15 to ptr
  %16 = add i64 %tos, 96
  %RBP_N.24 = inttoptr i64 %16 to ptr
  %17 = add i64 %tos, 108
  %RBP_N.12 = inttoptr i64 %17 to ptr
  %18 = add i64 %tos, 112
  %RBP_N.8 = inttoptr i64 %18 to ptr
  %19 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %19 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 %arg2, ptr %RBP_N.12, align 1
  store i64 %arg3, ptr %RBP_N.24, align 1
  %memload = load i64, ptr %RBP_N.12, align 1
  %20 = trunc i64 %memload to i32
  %RDI = sext i32 %20 to i64
  %RDI1 = shl i64 %RDI, 2
  %ZF = icmp eq i64 %RDI1, 0
  %highbit = and i64 -9223372036854775808, %RDI1
  %SF = icmp ne i64 %highbit, 0
  %21 = call ptr @malloc(i64 %RDI1)
  %RAX = ptrtoint ptr %21 to i64
  store i64 %RAX, ptr %RBP_N.32, align 1
  %memload2 = load i64, ptr %RBP_N.12, align 1
  %22 = trunc i64 %memload2 to i32
  %RDI3 = sext i32 %22 to i64
  %23 = zext i32 4 to i64
  %24 = call ptr @calloc(i64 %RDI3, i64 %23)
  %RAX4 = ptrtoint ptr %24 to i64
  store i64 %RAX4, ptr %RBP_N.40, align 1
  %memload5 = load i64, ptr %RBP_N.12, align 1
  %25 = trunc i64 %memload5 to i32
  %RDI6 = sext i32 %25 to i64
  %26 = zext i32 4 to i64
  %27 = call ptr @calloc(i64 %RDI6, i64 %26)
  %RAX7 = ptrtoint ptr %27 to i64
  store i64 %RAX7, ptr %RBP_N.48, align 1
  store i32 0, ptr %RBP_N.52, align 1
  store i32 0, ptr %RBP_N.56, align 1
  store i32 0, ptr %RBP_N.60, align 1
  store i32 0, ptr %RBP_N.64, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.20
  %memload8 = load i32, ptr %RBP_N.64, align 1
  %28 = load i32, ptr %RBP_N.12, align 1
  %29 = sub i32 %memload8, %28
  %30 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload8, i32 %28)
  %CF = extractvalue { i32, i1 } %30, 1
  %ZF9 = icmp eq i32 %29, 0
  %highbit10 = and i32 -2147483648, %29
  %SF11 = icmp ne i32 %highbit10, 0
  %31 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload8, i32 %28)
  %OF = extractvalue { i32, i1 } %31, 1
  %32 = and i32 %29, 255
  %33 = call i32 @llvm.ctpop.i32(i32 %32)
  %34 = and i32 %33, 1
  %PF = icmp eq i32 %34, 0
  %CmpSFOF_JGE = icmp eq i1 %SF11, %OF
  br i1 %CmpSFOF_JGE, label %bb.21, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload12 = load i64, ptr %RBP_N.8, align 1
  %memload13 = load i64, ptr %RBP_N.64, align 1
  %35 = trunc i64 %memload13 to i32
  %RCX = sext i32 %35 to i64
  %memref-idxreg = mul i64 4, %RCX
  %memref-basereg = add i64 %memload12, %memref-idxreg
  %36 = inttoptr i64 %memref-basereg to ptr
  %memload14 = load i32, ptr %36, align 1
  store i32 %memload14, ptr %RBP_N.68, align 1
  store i32 0, ptr %RBP_N.72, align 1
  store i32 0, ptr %RBP_N.76, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.7
  %memload15 = load i32, ptr %RBP_N.76, align 1
  %37 = load i32, ptr %RBP_N.56, align 1
  %38 = sub i32 %memload15, %37
  %39 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload15, i32 %37)
  %CF16 = extractvalue { i32, i1 } %39, 1
  %ZF17 = icmp eq i32 %38, 0
  %highbit18 = and i32 -2147483648, %38
  %SF19 = icmp ne i32 %highbit18, 0
  %40 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload15, i32 %37)
  %OF20 = extractvalue { i32, i1 } %40, 1
  %41 = and i32 %38, 255
  %42 = call i32 @llvm.ctpop.i32(i32 %41)
  %43 = and i32 %42, 1
  %PF21 = icmp eq i32 %43, 0
  %CmpSFOF_JGE185 = icmp eq i1 %SF19, %OF20
  br i1 %CmpSFOF_JGE185, label %bb.8, label %bb.4

bb.4:                                             ; preds = %bb.3
  %memload22 = load i64, ptr %RBP_N.48, align 1
  %memload23 = load i64, ptr %RBP_N.76, align 1
  %44 = trunc i64 %memload23 to i32
  %RCX24 = sext i32 %44 to i64
  %memref-idxreg25 = mul i64 4, %RCX24
  %memref-basereg26 = add i64 %memload22, %memref-idxreg25
  %45 = inttoptr i64 %memref-basereg26 to ptr
  %memload27 = load i32, ptr %45, align 1
  %46 = load i32, ptr %RBP_N.68, align 1
  %47 = sub i32 %memload27, %46
  %48 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload27, i32 %46)
  %CF28 = extractvalue { i32, i1 } %48, 1
  %ZF29 = icmp eq i32 %47, 0
  %highbit30 = and i32 -2147483648, %47
  %SF31 = icmp ne i32 %highbit30, 0
  %49 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload27, i32 %46)
  %OF32 = extractvalue { i32, i1 } %49, 1
  %50 = and i32 %47, 255
  %51 = call i32 @llvm.ctpop.i32(i32 %50)
  %52 = and i32 %51, 1
  %PF33 = icmp eq i32 %52, 0
  %CmpZF_JNE = icmp eq i1 %ZF29, false
  br i1 %CmpZF_JNE, label %bb.6, label %bb.5

bb.5:                                             ; preds = %bb.4
  store i32 1, ptr %RBP_N.72, align 1
  br label %bb.8

bb.6:                                             ; preds = %bb.4
  br label %bb.7

bb.7:                                             ; preds = %bb.6
  %memload34 = load i32, ptr %RBP_N.76, align 1
  %EAX = add i32 %memload34, 1
  %53 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload34, i32 1)
  %CF35 = extractvalue { i32, i1 } %53, 1
  %54 = and i32 %EAX, 255
  %55 = call i32 @llvm.ctpop.i32(i32 %54)
  %56 = and i32 %55, 1
  %PF36 = icmp eq i32 %56, 0
  %ZF37 = icmp eq i32 %EAX, 0
  %highbit38 = and i32 -2147483648, %EAX
  %SF39 = icmp ne i32 %highbit38, 0
  %57 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload34, i32 1)
  %OF40 = extractvalue { i32, i1 } %57, 1
  store i32 %EAX, ptr %RBP_N.76, align 1
  br label %bb.3

bb.8:                                             ; preds = %bb.5, %bb.3
  %58 = load i32, ptr %RBP_N.72, align 1
  %59 = zext i32 %58 to i64
  %60 = zext i32 0 to i64
  %61 = sub i64 %59, %60
  %62 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %59, i64 %60)
  %CF41 = extractvalue { i64, i1 } %62, 1
  %ZF42 = icmp eq i64 %61, 0
  %highbit43 = and i64 -9223372036854775808, %61
  %SF44 = icmp ne i64 %highbit43, 0
  %63 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %59, i64 %60)
  %OF45 = extractvalue { i64, i1 } %63, 1
  %64 = and i64 %61, 255
  %65 = call i64 @llvm.ctpop.i64(i64 %64)
  %66 = and i64 %65, 1
  %PF46 = icmp eq i64 %66, 0
  %CmpZF_JE = icmp eq i1 %ZF42, true
  br i1 %CmpZF_JE, label %bb.10, label %bb.9

bb.9:                                             ; preds = %bb.8
  br label %bb.20

bb.10:                                            ; preds = %bb.8
  store i32 0, ptr %RBP_N.80, align 1
  store i32 0, ptr %RBP_N.84, align 1
  br label %bb.11

bb.11:                                            ; preds = %bb.10, %bb.15
  %memload47 = load i32, ptr %RBP_N.84, align 1
  %67 = load i32, ptr %RBP_N.52, align 1
  %68 = sub i32 %memload47, %67
  %69 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload47, i32 %67)
  %CF48 = extractvalue { i32, i1 } %69, 1
  %ZF49 = icmp eq i32 %68, 0
  %highbit50 = and i32 -2147483648, %68
  %SF51 = icmp ne i32 %highbit50, 0
  %70 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload47, i32 %67)
  %OF52 = extractvalue { i32, i1 } %70, 1
  %71 = and i32 %68, 255
  %72 = call i32 @llvm.ctpop.i32(i32 %71)
  %73 = and i32 %72, 1
  %PF53 = icmp eq i32 %73, 0
  %CmpSFOF_JGE186 = icmp eq i1 %SF51, %OF52
  br i1 %CmpSFOF_JGE186, label %bb.16, label %bb.12

bb.12:                                            ; preds = %bb.11
  %memload54 = load i64, ptr %RBP_N.40, align 1
  %memload55 = load i64, ptr %RBP_N.84, align 1
  %74 = trunc i64 %memload55 to i32
  %RCX56 = sext i32 %74 to i64
  %memref-idxreg57 = mul i64 4, %RCX56
  %memref-basereg58 = add i64 %memload54, %memref-idxreg57
  %75 = inttoptr i64 %memref-basereg58 to ptr
  %memload59 = load i32, ptr %75, align 1
  %76 = load i32, ptr %RBP_N.68, align 1
  %77 = sub i32 %memload59, %76
  %78 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload59, i32 %76)
  %CF60 = extractvalue { i32, i1 } %78, 1
  %ZF61 = icmp eq i32 %77, 0
  %highbit62 = and i32 -2147483648, %77
  %SF63 = icmp ne i32 %highbit62, 0
  %79 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload59, i32 %76)
  %OF64 = extractvalue { i32, i1 } %79, 1
  %80 = and i32 %77, 255
  %81 = call i32 @llvm.ctpop.i32(i32 %80)
  %82 = and i32 %81, 1
  %PF65 = icmp eq i32 %82, 0
  %CmpZF_JNE187 = icmp eq i1 %ZF61, false
  br i1 %CmpZF_JNE187, label %bb.14, label %bb.13

bb.13:                                            ; preds = %bb.12
  store i32 1, ptr %RBP_N.80, align 1
  br label %bb.16

bb.14:                                            ; preds = %bb.12
  br label %bb.15

bb.15:                                            ; preds = %bb.14
  %memload66 = load i32, ptr %RBP_N.84, align 1
  %EAX73 = add i32 %memload66, 1
  %83 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload66, i32 1)
  %CF67 = extractvalue { i32, i1 } %83, 1
  %84 = and i32 %EAX73, 255
  %85 = call i32 @llvm.ctpop.i32(i32 %84)
  %86 = and i32 %85, 1
  %PF68 = icmp eq i32 %86, 0
  %ZF69 = icmp eq i32 %EAX73, 0
  %highbit70 = and i32 -2147483648, %EAX73
  %SF71 = icmp ne i32 %highbit70, 0
  %87 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload66, i32 1)
  %OF72 = extractvalue { i32, i1 } %87, 1
  store i32 %EAX73, ptr %RBP_N.84, align 1
  br label %bb.11

bb.16:                                            ; preds = %bb.13, %bb.11
  %88 = load i32, ptr %RBP_N.80, align 1
  %89 = zext i32 %88 to i64
  %90 = zext i32 0 to i64
  %91 = sub i64 %89, %90
  %92 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %89, i64 %90)
  %CF74 = extractvalue { i64, i1 } %92, 1
  %ZF75 = icmp eq i64 %91, 0
  %highbit76 = and i64 -9223372036854775808, %91
  %SF77 = icmp ne i64 %highbit76, 0
  %93 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %89, i64 %90)
  %OF78 = extractvalue { i64, i1 } %93, 1
  %94 = and i64 %91, 255
  %95 = call i64 @llvm.ctpop.i64(i64 %94)
  %96 = and i64 %95, 1
  %PF79 = icmp eq i64 %96, 0
  %CmpZF_JE188 = icmp eq i1 %ZF75, true
  br i1 %CmpZF_JE188, label %bb.18, label %bb.17

bb.17:                                            ; preds = %bb.16
  %memload80 = load i32, ptr %RBP_N.68, align 1
  %memload81 = load i64, ptr %RBP_N.48, align 1
  %memload82 = load i32, ptr %RBP_N.56, align 1
  %ESI = add i32 %memload82, 1
  %97 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload82, i32 1)
  %CF83 = extractvalue { i32, i1 } %97, 1
  %98 = and i32 %ESI, 255
  %99 = call i32 @llvm.ctpop.i32(i32 %98)
  %100 = and i32 %99, 1
  %PF84 = icmp eq i32 %100, 0
  %ZF85 = icmp eq i32 %ESI, 0
  %highbit86 = and i32 -2147483648, %ESI
  %SF87 = icmp ne i32 %highbit86, 0
  %101 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload82, i32 1)
  %OF88 = extractvalue { i32, i1 } %101, 1
  store i32 %ESI, ptr %RBP_N.56, align 1
  %RCX89 = sext i32 %memload82 to i64
  %memref-idxreg90 = mul i64 4, %RCX89
  %memref-basereg91 = add i64 %memload81, %memref-idxreg90
  %102 = inttoptr i64 %memref-basereg91 to ptr
  store i32 %memload80, ptr %102, align 1
  br label %bb.19

bb.18:                                            ; preds = %bb.16
  %memload92 = load i32, ptr %RBP_N.68, align 1
  %memload93 = load i64, ptr %RBP_N.40, align 1
  %memload94 = load i32, ptr %RBP_N.52, align 1
  %ESI101 = add i32 %memload94, 1
  %103 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload94, i32 1)
  %CF95 = extractvalue { i32, i1 } %103, 1
  %104 = and i32 %ESI101, 255
  %105 = call i32 @llvm.ctpop.i32(i32 %104)
  %106 = and i32 %105, 1
  %PF96 = icmp eq i32 %106, 0
  %ZF97 = icmp eq i32 %ESI101, 0
  %highbit98 = and i32 -2147483648, %ESI101
  %SF99 = icmp ne i32 %highbit98, 0
  %107 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload94, i32 1)
  %OF100 = extractvalue { i32, i1 } %107, 1
  store i32 %ESI101, ptr %RBP_N.52, align 1
  %RCX102 = sext i32 %memload94 to i64
  %memref-idxreg103 = mul i64 4, %RCX102
  %memref-basereg104 = add i64 %memload93, %memref-idxreg103
  %108 = inttoptr i64 %memref-basereg104 to ptr
  store i32 %memload92, ptr %108, align 1
  br label %bb.19

bb.19:                                            ; preds = %bb.18, %bb.17
  br label %bb.20

bb.20:                                            ; preds = %bb.19, %bb.9
  %memload105 = load i32, ptr %RBP_N.64, align 1
  %EAX112 = add i32 %memload105, 1
  %109 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload105, i32 1)
  %CF106 = extractvalue { i32, i1 } %109, 1
  %110 = and i32 %EAX112, 255
  %111 = call i32 @llvm.ctpop.i32(i32 %110)
  %112 = and i32 %111, 1
  %PF107 = icmp eq i32 %112, 0
  %ZF108 = icmp eq i32 %EAX112, 0
  %highbit109 = and i32 -2147483648, %EAX112
  %SF110 = icmp ne i32 %highbit109, 0
  %113 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload105, i32 1)
  %OF111 = extractvalue { i32, i1 } %113, 1
  store i32 %EAX112, ptr %RBP_N.64, align 1
  br label %bb.1

bb.21:                                            ; preds = %bb.1
  store i32 0, ptr %RBP_N.88, align 1
  br label %bb.22

bb.22:                                            ; preds = %bb.21, %bb.32
  %memload113 = load i32, ptr %RBP_N.88, align 1
  %114 = load i32, ptr %RBP_N.12, align 1
  %115 = sub i32 %memload113, %114
  %116 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload113, i32 %114)
  %CF114 = extractvalue { i32, i1 } %116, 1
  %ZF115 = icmp eq i32 %115, 0
  %highbit116 = and i32 -2147483648, %115
  %SF117 = icmp ne i32 %highbit116, 0
  %117 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload113, i32 %114)
  %OF118 = extractvalue { i32, i1 } %117, 1
  %118 = and i32 %115, 255
  %119 = call i32 @llvm.ctpop.i32(i32 %118)
  %120 = and i32 %119, 1
  %PF119 = icmp eq i32 %120, 0
  %CmpSFOF_JGE189 = icmp eq i1 %SF117, %OF118
  br i1 %CmpSFOF_JGE189, label %bb.33, label %bb.23

bb.23:                                            ; preds = %bb.22
  %memload120 = load i64, ptr %RBP_N.8, align 1
  %memload121 = load i64, ptr %RBP_N.88, align 1
  %121 = trunc i64 %memload121 to i32
  %RCX122 = sext i32 %121 to i64
  %memref-idxreg123 = mul i64 4, %RCX122
  %memref-basereg124 = add i64 %memload120, %memref-idxreg123
  %122 = inttoptr i64 %memref-basereg124 to ptr
  %memload125 = load i32, ptr %122, align 1
  store i32 %memload125, ptr %RBP_N.92, align 1
  store i32 0, ptr %RBP_N.96, align 1
  store i32 0, ptr %RBP_N.100, align 1
  br label %bb.24

bb.24:                                            ; preds = %bb.23, %bb.28
  %memload126 = load i32, ptr %RBP_N.100, align 1
  %123 = load i32, ptr %RBP_N.56, align 1
  %124 = sub i32 %memload126, %123
  %125 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload126, i32 %123)
  %CF127 = extractvalue { i32, i1 } %125, 1
  %ZF128 = icmp eq i32 %124, 0
  %highbit129 = and i32 -2147483648, %124
  %SF130 = icmp ne i32 %highbit129, 0
  %126 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload126, i32 %123)
  %OF131 = extractvalue { i32, i1 } %126, 1
  %127 = and i32 %124, 255
  %128 = call i32 @llvm.ctpop.i32(i32 %127)
  %129 = and i32 %128, 1
  %PF132 = icmp eq i32 %129, 0
  %CmpSFOF_JGE190 = icmp eq i1 %SF130, %OF131
  br i1 %CmpSFOF_JGE190, label %bb.29, label %bb.25

bb.25:                                            ; preds = %bb.24
  %memload133 = load i64, ptr %RBP_N.48, align 1
  %memload134 = load i64, ptr %RBP_N.100, align 1
  %130 = trunc i64 %memload134 to i32
  %RCX135 = sext i32 %130 to i64
  %memref-idxreg136 = mul i64 4, %RCX135
  %memref-basereg137 = add i64 %memload133, %memref-idxreg136
  %131 = inttoptr i64 %memref-basereg137 to ptr
  %memload138 = load i32, ptr %131, align 1
  %132 = load i32, ptr %RBP_N.92, align 1
  %133 = sub i32 %memload138, %132
  %134 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload138, i32 %132)
  %CF139 = extractvalue { i32, i1 } %134, 1
  %ZF140 = icmp eq i32 %133, 0
  %highbit141 = and i32 -2147483648, %133
  %SF142 = icmp ne i32 %highbit141, 0
  %135 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload138, i32 %132)
  %OF143 = extractvalue { i32, i1 } %135, 1
  %136 = and i32 %133, 255
  %137 = call i32 @llvm.ctpop.i32(i32 %136)
  %138 = and i32 %137, 1
  %PF144 = icmp eq i32 %138, 0
  %CmpZF_JNE191 = icmp eq i1 %ZF140, false
  br i1 %CmpZF_JNE191, label %bb.27, label %bb.26

bb.26:                                            ; preds = %bb.25
  store i32 1, ptr %RBP_N.96, align 1
  br label %bb.29

bb.27:                                            ; preds = %bb.25
  br label %bb.28

bb.28:                                            ; preds = %bb.27
  %memload145 = load i32, ptr %RBP_N.100, align 1
  %EAX152 = add i32 %memload145, 1
  %139 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload145, i32 1)
  %CF146 = extractvalue { i32, i1 } %139, 1
  %140 = and i32 %EAX152, 255
  %141 = call i32 @llvm.ctpop.i32(i32 %140)
  %142 = and i32 %141, 1
  %PF147 = icmp eq i32 %142, 0
  %ZF148 = icmp eq i32 %EAX152, 0
  %highbit149 = and i32 -2147483648, %EAX152
  %SF150 = icmp ne i32 %highbit149, 0
  %143 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload145, i32 1)
  %OF151 = extractvalue { i32, i1 } %143, 1
  store i32 %EAX152, ptr %RBP_N.100, align 1
  br label %bb.24

bb.29:                                            ; preds = %bb.26, %bb.24
  %144 = load i32, ptr %RBP_N.96, align 1
  %145 = zext i32 %144 to i64
  %146 = zext i32 0 to i64
  %147 = sub i64 %145, %146
  %148 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %145, i64 %146)
  %CF153 = extractvalue { i64, i1 } %148, 1
  %ZF154 = icmp eq i64 %147, 0
  %highbit155 = and i64 -9223372036854775808, %147
  %SF156 = icmp ne i64 %highbit155, 0
  %149 = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %145, i64 %146)
  %OF157 = extractvalue { i64, i1 } %149, 1
  %150 = and i64 %147, 255
  %151 = call i64 @llvm.ctpop.i64(i64 %150)
  %152 = and i64 %151, 1
  %PF158 = icmp eq i64 %152, 0
  %CmpZF_JNE192 = icmp eq i1 %ZF154, false
  br i1 %CmpZF_JNE192, label %bb.31, label %bb.30

bb.30:                                            ; preds = %bb.29
  %memload159 = load i32, ptr %RBP_N.92, align 1
  %memload160 = load i64, ptr %RBP_N.32, align 1
  %memload161 = load i32, ptr %RBP_N.60, align 1
  %ESI168 = add i32 %memload161, 1
  %153 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload161, i32 1)
  %CF162 = extractvalue { i32, i1 } %153, 1
  %154 = and i32 %ESI168, 255
  %155 = call i32 @llvm.ctpop.i32(i32 %154)
  %156 = and i32 %155, 1
  %PF163 = icmp eq i32 %156, 0
  %ZF164 = icmp eq i32 %ESI168, 0
  %highbit165 = and i32 -2147483648, %ESI168
  %SF166 = icmp ne i32 %highbit165, 0
  %157 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload161, i32 1)
  %OF167 = extractvalue { i32, i1 } %157, 1
  store i32 %ESI168, ptr %RBP_N.60, align 1
  %RCX169 = sext i32 %memload161 to i64
  %memref-idxreg170 = mul i64 4, %RCX169
  %memref-basereg171 = add i64 %memload160, %memref-idxreg170
  %158 = inttoptr i64 %memref-basereg171 to ptr
  store i32 %memload159, ptr %158, align 1
  br label %bb.31

bb.31:                                            ; preds = %bb.30, %bb.29
  br label %bb.32

bb.32:                                            ; preds = %bb.31
  %memload172 = load i32, ptr %RBP_N.88, align 1
  %EAX179 = add i32 %memload172, 1
  %159 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload172, i32 1)
  %CF173 = extractvalue { i32, i1 } %159, 1
  %160 = and i32 %EAX179, 255
  %161 = call i32 @llvm.ctpop.i32(i32 %160)
  %162 = and i32 %161, 1
  %PF174 = icmp eq i32 %162, 0
  %ZF175 = icmp eq i32 %EAX179, 0
  %highbit176 = and i32 -2147483648, %EAX179
  %SF177 = icmp ne i32 %highbit176, 0
  %163 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload172, i32 1)
  %OF178 = extractvalue { i32, i1 } %163, 1
  store i32 %EAX179, ptr %RBP_N.88, align 1
  br label %bb.22

bb.33:                                            ; preds = %bb.22
  %memload180 = load i32, ptr %RBP_N.60, align 1
  %memload181 = load i64, ptr %RBP_N.24, align 1
  %164 = inttoptr i64 %memload181 to ptr
  store i32 %memload180, ptr %164, align 1
  %memload182 = load i64, ptr %RBP_N.40, align 1
  %165 = inttoptr i64 %memload182 to ptr
  call void @free(ptr %165)
  %memload183 = load i64, ptr %RBP_N.48, align 1
  %166 = inttoptr i64 %memload183 to ptr
  call void @free(ptr %166)
  %memload184 = load i64, ptr %RBP_N.32, align 1
  ret i64 %memload184
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
