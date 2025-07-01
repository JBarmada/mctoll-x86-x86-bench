; ModuleID = 'code.so'
source_filename = "code.so"

define dso_local i32 @func0(i64 %arg1) {
entry:
  %stktop_4 = alloca i8, i32 20, align 1
  %tos = ptrtoint ptr %stktop_4 to i64
  %0 = add i64 %tos, 12
  %RBP_N.8 = inttoptr i64 %0 to ptr
  %1 = add i64 %tos, 0
  %RSP_P.0 = inttoptr i64 %1 to ptr
  store i64 3735928559, ptr %RSP_P.0, align 8
  %RBP = ptrtoint ptr %RSP_P.0 to i64
  store i64 %arg1, ptr %RBP_N.8, align 1
  store i32 0, ptr %stktop_4, align 1
  br label %bb.1

bb.1:                                             ; preds = %entry, %bb.2
  %memload = load i64, ptr %RBP_N.8, align 1
  %memload1 = load i64, ptr %stktop_4, align 1
  %2 = trunc i64 %memload1 to i32
  %RCX = sext i32 %2 to i64
  %memref-basereg = add i64 %memload, %RCX
  %3 = inttoptr i64 %memref-basereg to ptr
  %memload2 = load i32, ptr %3, align 1
  %4 = trunc i32 %memload2 to i8
  %EAX = sext i8 %4 to i32
  %5 = sub i32 %EAX, 0
  %6 = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %EAX, i32 0)
  %CF = extractvalue { i32, i1 } %6, 1
  %ZF = icmp eq i32 %5, 0
  %highbit = and i32 -2147483648, %5
  %SF = icmp ne i32 %highbit, 0
  %7 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %EAX, i32 0)
  %OF = extractvalue { i32, i1 } %7, 1
  %8 = and i32 %5, 255
  %9 = call i32 @llvm.ctpop.i32(i32 %8)
  %10 = and i32 %9, 1
  %PF = icmp eq i32 %10, 0
  %CmpZF_JE = icmp eq i1 %ZF, true
  br i1 %CmpZF_JE, label %bb.3, label %bb.2

bb.2:                                             ; preds = %bb.1
  %memload3 = load i32, ptr %stktop_4, align 1
  %EAX10 = add i32 %memload3, 1
  %11 = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %memload3, i32 1)
  %CF4 = extractvalue { i32, i1 } %11, 1
  %12 = and i32 %EAX10, 255
  %13 = call i32 @llvm.ctpop.i32(i32 %12)
  %14 = and i32 %13, 1
  %PF5 = icmp eq i32 %14, 0
  %ZF6 = icmp eq i32 %EAX10, 0
  %highbit7 = and i32 -2147483648, %EAX10
  %SF8 = icmp ne i32 %highbit7, 0
  %15 = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %memload3, i32 1)
  %OF9 = extractvalue { i32, i1 } %15, 1
  store i32 %EAX10, ptr %stktop_4, align 1
  br label %bb.1

bb.3:                                             ; preds = %bb.1
  %memload11 = load i32, ptr %stktop_4, align 1
  ret i32 %memload11
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
