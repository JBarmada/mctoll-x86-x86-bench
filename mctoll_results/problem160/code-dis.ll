; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i64 @func0(i32 %arg1, i32 %arg2, i32 %arg3, i64 %arg4) {
entry:
  %RAX-SKT-LOC = alloca i64, align 8
  %stktop_8 = alloca i8, i32 32, align 1
  %tos = ptrtoint ptr %stktop_8 to i64
  %0 = add i64 %tos, 20
  %RBP_N.12 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 24
  %RBP_N.8 = inttoptr i64 %1 to ptr
  %2 = add i64 %tos, 28
  %RBP_N.4 = inttoptr i64 %2 to ptr
  %3 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %3 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i32 %arg1, ptr %RBP_N.4, align 1
  store i32 %arg2, ptr %RBP_N.8, align 1
  store i32 %arg3, ptr %RBP_N.12, align 1
  store i64 %arg4, ptr %stktop_8, align 1
  %memload = load i32, ptr %RBP_N.8, align 1
  %4 = load i32, ptr %RBP_N.12, align 1
  %5 = sub i32 %memload, %4
  %6 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload, i32 %4)
  %CF = extractvalue { i32, i1 } %6, 1
  %ZF = icmp eq i32 %5, 0
  %highbit = and i32 -2147483648, %5
  %SF = icmp ne i32 %highbit, 0
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload, i32 %4)
  %OF = extractvalue { i32, i1 } %7, 1
  %8 = and i32 %5, 255
  %9 = call i32 @llvm.ctpop.i32(i32 %8)
  %10 = and i32 %9, 1
  %PF = icmp eq i32 %10, 0
  %CmpZF_JLE = icmp eq i1 %ZF, true
  %CmpOF_JLE = icmp ne i1 %SF, %OF
  %ZFOrSF_JLE = or i1 %CmpZF_JLE, %CmpOF_JLE
  br i1 %ZFOrSF_JLE, label %bb.2, label %bb.1

bb.1:                                             ; preds = %entry
  %memload1 = load i32, ptr %RBP_N.4, align 1
  %memload2 = load i32, ptr %RBP_N.12, align 1
  %ECX = add i32 %memload1, %memload2
  %11 = and i32 %ECX, 255
  %12 = call i32 @llvm.ctpop.i32(i32 %11)
  %13 = and i32 %12, 1
  %PF3 = icmp eq i32 %13, 0
  %memload4 = load i64, ptr %stktop_8, align 1
  %14 = inttoptr i64 %memload4 to ptr
  store i32 %ECX, ptr %14, align 1
  %memload5 = load i64, ptr %stktop_8, align 1
  %memref-disp = add i64 %memload5, 4
  %15 = inttoptr i64 %memref-disp to ptr
  store i32 0, ptr %15, align 1
  store i64 %memload5, ptr %RAX-SKT-LOC, align 1
  br label %bb.3

bb.2:                                             ; preds = %entry
  %memload6 = load i32, ptr %RBP_N.4, align 1
  %memload7 = load i32, ptr %RBP_N.8, align 1
  %ECX9 = add i32 %memload6, %memload7
  %16 = and i32 %ECX9, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = and i32 %17, 1
  %PF8 = icmp eq i32 %18, 0
  %memload10 = load i64, ptr %stktop_8, align 1
  %19 = inttoptr i64 %memload10 to ptr
  store i32 %ECX9, ptr %19, align 1
  %memload11 = load i32, ptr %RBP_N.12, align 1
  %20 = load i32, ptr %RBP_N.8, align 1
  %ECX12 = sub i32 %memload11, %20
  %21 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %memload11, i32 %20)
  %CF13 = extractvalue { i32, i1 } %21, 1
  %ZF14 = icmp eq i32 %ECX12, 0
  %highbit15 = and i32 -2147483648, %ECX12
  %SF16 = icmp ne i32 %highbit15, 0
  %22 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %memload11, i32 %20)
  %OF17 = extractvalue { i32, i1 } %22, 1
  %23 = and i32 %ECX12, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = and i32 %24, 1
  %PF18 = icmp eq i32 %25, 0
  %memload19 = load i64, ptr %stktop_8, align 1
  %memref-disp20 = add i64 %memload19, 4
  %26 = inttoptr i64 %memref-disp20 to ptr
  store i32 %ECX12, ptr %26, align 1
  store i64 %memload19, ptr %RAX-SKT-LOC, align 1
  br label %bb.3

bb.3:                                             ; preds = %bb.2, %bb.1
  %RAX = load i64, ptr %RAX-SKT-LOC, align 1
  ret i64 %RAX
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.usub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #0

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #0

attributes #0 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
