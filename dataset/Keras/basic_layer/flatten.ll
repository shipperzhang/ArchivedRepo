; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32*, i32 }
%1 = type { i8*, %2, i32, %3, i64*, i64*, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }
%closure_loop_parallel_ax0.ax1.fused = type { i8*, i8* }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global i32 (i32 (i32, %0*, i8*)*, i8*, i32)* null, align 8
@.str = private constant [90 x i8] c"Assert fail: (num_args == 2), tvmgen_default_fused_nn_batch_flatten: num_args should be 2\00", align 1
@.str.1 = private constant [165 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_batch_flatten: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [165 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_batch_flatten: Expect arg[1] to be pointer\00", align 1
@.str.3 = private constant [85 x i8] c"Assert fail: (4 == tir.tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 4\00", align 1
@.str.4 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg0, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be float32\00", align 1
@.str.5 = private constant [124 x i8] c"Assert fail: (1 == int32(arg0.shape[0])), Argument arg0.shape[0] has an unsatisfied constraint: (1 == int32(arg0.shape[0]))\00", align 1
@.str.6 = private constant [126 x i8] c"Assert fail: (28 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (28 == int32(arg0.shape[1]))\00", align 1
@.str.7 = private constant [126 x i8] c"Assert fail: (28 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint: (28 == int32(arg0.shape[2]))\00", align 1
@.str.8 = private constant [124 x i8] c"Assert fail: (1 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint: (1 == int32(arg0.shape[3]))\00", align 1
@.str.9 = private constant [195 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (1 == int32(arg0.strides[2]))) && (28 == int32(arg0.strides[1]))) && (784 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.10 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8))\00", align 1
@.str.11 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg0, 0, 10)), Argument arg0.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg0, 0, 10))\00", align 1
@.str.12 = private constant [85 x i8] c"Assert fail: (2 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 2\00", align 1
@.str.13 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.14 = private constant [124 x i8] c"Assert fail: (1 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (1 == int32(arg1.shape[0]))\00", align 1
@.str.15 = private constant [128 x i8] c"Assert fail: (784 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (784 == int32(arg1.shape[1]))\00", align 1
@.str.16 = private constant [124 x i8] c"Assert fail: ((1 == int32(arg1.strides[1])) && (784 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.17 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8))\00", align 1
@.str.18 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg1, 0, 10))\00", align 1
@.str.19 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg1, 0, 9))\00", align 1
@.str.20 = private constant [83 x i8] c"Assert fail: (num_args == 2), tvmgen_default_fused_transpose: num_args should be 2\00", align 1
@.str.21 = private constant [158 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_transpose: Expect arg[0] to be pointer\00", align 1
@.str.22 = private constant [158 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_transpose: Expect arg[1] to be pointer\00", align 1
@.str.23 = private constant [124 x i8] c"Assert fail: (1 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (1 == int32(arg0.shape[1]))\00", align 1
@.str.24 = private constant [126 x i8] c"Assert fail: (28 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint: (28 == int32(arg0.shape[3]))\00", align 1
@.str.25 = private constant [197 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (28 == int32(arg0.strides[2]))) && (784 == int32(arg0.strides[1]))) && (784 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.26 = private constant [85 x i8] c"Assert fail: (4 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4\00", align 1
@.str.27 = private constant [126 x i8] c"Assert fail: (28 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (28 == int32(arg1.shape[1]))\00", align 1
@.str.28 = private constant [126 x i8] c"Assert fail: (28 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint: (28 == int32(arg1.shape[2]))\00", align 1
@.str.29 = private constant [124 x i8] c"Assert fail: (1 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint: (1 == int32(arg1.shape[3]))\00", align 1
@.str.30 = private constant [195 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (1 == int32(arg1.strides[2]))) && (28 == int32(arg1.strides[1]))) && (784 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

define dllexport i32 @tvmgen_default_fused_nn_batch_flatten(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end44, %assert_fail43, %assert_fail41, %assert_fail39, %assert_fail37, %assert_fail33, %assert_fail31, %assert_fail29, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail37 ], [ -1, %assert_fail39 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ 0, %assert_end44 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %1**
  %arg045 = load %1*, %1** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !8
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %1**
  %arg146 = load %1*, %1** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !22
  %14 = getelementptr inbounds %1, %1* %arg045, i64 0, i32 0
  %placeholder = load i8*, i8** %14, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %placeholder, i64 128) ]
  %15 = getelementptr inbounds %1, %1* %arg045, i64 0, i32 4
  %arg0.shape = load i64*, i64** %15, align 8
  %16 = getelementptr inbounds %1, %1* %arg045, i64 0, i32 5
  %arg0.strides = load i64*, i64** %16, align 8
  %17 = getelementptr inbounds %1, %1* %arg045, i64 0, i32 1, i32 1
  %dev_id = load i32, i32* %17, align 4
  %18 = getelementptr inbounds %1, %1* %arg146, i64 0, i32 0
  %tensor = load i8*, i8** %18, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %tensor, i64 128) ]
  %19 = getelementptr inbounds %1, %1* %arg146, i64 0, i32 4
  %arg1.shape = load i64*, i64** %19, align 8
  %20 = getelementptr inbounds %1, %1* %arg146, i64 0, i32 5
  %arg1.strides = load i64*, i64** %20, align 8
  switch i32 %arg0.code, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %21 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %21(i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str.1, i64 0, i64 0))
  br label %common.ret

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %arg1.code, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %22 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %22(i8* getelementptr inbounds ([165 x i8], [165 x i8]* @.str.2, i64 0, i64 0))
  br label %common.ret

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %23 = getelementptr inbounds %1, %1* %arg045, i64 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %assert_end8, label %assert_fail5, !prof !4

assert_fail5:                                     ; preds = %assert_end4
  %26 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %26(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0))
  br label %common.ret

assert_end8:                                      ; preds = %assert_end4
  %27 = getelementptr inbounds %1, %1* %arg045, i64 0, i32 3, i32 2
  %28 = load i16, i16* %27, align 2
  %29 = icmp eq i16 %28, 1
  %30 = getelementptr inbounds %1, %1* %arg045, i64 0, i32 3, i32 1
  %31 = load i8, i8* %30, align 1
  %32 = icmp eq i8 %31, 32
  %33 = getelementptr inbounds %1, %1* %arg045, i64 0, i32 3, i32 0
  %34 = load i8, i8* %33, align 1
  %35 = icmp eq i8 %34, 2
  %36 = and i1 %32, %35
  %37 = and i1 %29, %36
  br i1 %37, label %assert_end10, label %assert_fail9, !prof !4

assert_fail9:                                     ; preds = %assert_end8
  %38 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %38(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.4, i64 0, i64 0))
  br label %common.ret

assert_end10:                                     ; preds = %assert_end8
  %39 = load i64, i64* %arg0.shape, align 8, !tbaa !24
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %assert_end12, label %assert_fail11, !prof !4

assert_fail11:                                    ; preds = %assert_end10
  %42 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %42(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0))
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10
  %43 = getelementptr inbounds i64, i64* %arg0.shape, i64 1
  %44 = load i64, i64* %43, align 8, !tbaa !38
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %45, 28
  br i1 %46, label %assert_end14, label %assert_fail13, !prof !4

assert_fail13:                                    ; preds = %assert_end12
  %47 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %47(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.6, i64 0, i64 0))
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %48 = getelementptr inbounds i64, i64* %arg0.shape, i64 2
  %49 = load i64, i64* %48, align 8, !tbaa !40
  %50 = trunc i64 %49 to i32
  %51 = icmp eq i32 %50, 28
  br i1 %51, label %assert_end16, label %assert_fail15, !prof !4

assert_fail15:                                    ; preds = %assert_end14
  %52 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %52(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.7, i64 0, i64 0))
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %53 = getelementptr inbounds i64, i64* %arg0.shape, i64 3
  %54 = load i64, i64* %53, align 8, !tbaa !43
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %55, 1
  br i1 %56, label %assert_end18, label %assert_fail17, !prof !4

assert_fail17:                                    ; preds = %assert_end16
  %57 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %57(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.8, i64 0, i64 0))
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !45

if_then:                                          ; preds = %assert_end18
  %58 = bitcast i64* %arg0.strides to <4 x i64>*
  %59 = load <4 x i64>, <4 x i64>* %58, align 8, !tbaa !46
  %60 = trunc <4 x i64> %59 to <4 x i32>
  %61 = icmp ne <4 x i32> %60, <i32 784, i32 28, i32 1, i32 1>
  %62 = bitcast <4 x i1> %61 to i4
  %63 = icmp eq i4 %62, 0
  br i1 %63, label %if_end, label %assert_fail19, !prof !4

if_end:                                           ; preds = %if_then, %assert_end18
  %64 = getelementptr inbounds %1, %1* %arg045, i64 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %assert_end22, label %assert_fail21, !prof !4

assert_fail19:                                    ; preds = %if_then
  %67 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %67(i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.9, i64 0, i64 0))
  br label %common.ret

assert_fail21:                                    ; preds = %if_end
  %68 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %68(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  br label %common.ret

assert_end22:                                     ; preds = %if_end
  %69 = getelementptr inbounds %1, %1* %arg045, i64 0, i32 1, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %assert_end24, label %assert_fail23, !prof !4

assert_fail23:                                    ; preds = %assert_end22
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %72(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0))
  br label %common.ret

assert_end24:                                     ; preds = %assert_end22
  %73 = getelementptr inbounds %1, %1* %arg146, i64 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %assert_end28, label %assert_fail25, !prof !4

assert_fail25:                                    ; preds = %assert_end24
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %76(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.12, i64 0, i64 0))
  br label %common.ret

assert_end28:                                     ; preds = %assert_end24
  %77 = getelementptr inbounds %1, %1* %arg146, i64 0, i32 3, i32 2
  %78 = load i16, i16* %77, align 2
  %79 = icmp eq i16 %78, 1
  %80 = getelementptr inbounds %1, %1* %arg146, i64 0, i32 3, i32 1
  %81 = load i8, i8* %80, align 1
  %82 = icmp eq i8 %81, 32
  %83 = getelementptr inbounds %1, %1* %arg146, i64 0, i32 3, i32 0
  %84 = load i8, i8* %83, align 1
  %85 = icmp eq i8 %84, 2
  %86 = and i1 %82, %85
  %87 = and i1 %79, %86
  br i1 %87, label %assert_end30, label %assert_fail29, !prof !4

assert_fail29:                                    ; preds = %assert_end28
  %88 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %88(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.13, i64 0, i64 0))
  br label %common.ret

assert_end30:                                     ; preds = %assert_end28
  %89 = load i64, i64* %arg1.shape, align 8, !tbaa !58
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %assert_end32, label %assert_fail31, !prof !4

assert_fail31:                                    ; preds = %assert_end30
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %92(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.14, i64 0, i64 0))
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %93 = getelementptr inbounds i64, i64* %arg1.shape, i64 1
  %94 = load i64, i64* %93, align 8, !tbaa !72
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %95, 784
  br i1 %96, label %assert_end34, label %assert_fail33, !prof !4

assert_fail33:                                    ; preds = %assert_end32
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %97(i8* getelementptr inbounds ([128 x i8], [128 x i8]* @.str.15, i64 0, i64 0))
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %.not47 = icmp eq i64* %arg1.strides, null
  br i1 %.not47, label %if_end36, label %if_then35, !prof !45

if_then35:                                        ; preds = %assert_end34
  %98 = load i64, i64* %arg1.strides, align 8, !tbaa !74
  %99 = trunc i64 %98 to i32
  %100 = icmp eq i32 %99, 784
  %101 = getelementptr inbounds i64, i64* %arg1.strides, i64 1
  %102 = load i64, i64* %101, align 8, !tbaa !88
  %103 = trunc i64 %102 to i32
  %104 = icmp eq i32 %103, 1
  %105 = and i1 %100, %104
  br i1 %105, label %if_end36, label %assert_fail37, !prof !4

if_end36:                                         ; preds = %if_then35, %assert_end34
  %106 = getelementptr inbounds %1, %1* %arg146, i64 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %assert_end40, label %assert_fail39, !prof !4

assert_fail37:                                    ; preds = %if_then35
  %109 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %109(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.16, i64 0, i64 0))
  br label %common.ret

assert_fail39:                                    ; preds = %if_end36
  %110 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %110(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.17, i64 0, i64 0))
  br label %common.ret

assert_end40:                                     ; preds = %if_end36
  %111 = getelementptr inbounds %1, %1* %arg146, i64 0, i32 1, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %assert_end42, label %assert_fail41, !prof !4

assert_fail41:                                    ; preds = %assert_end40
  %114 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %114(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.18, i64 0, i64 0))
  br label %common.ret

assert_end42:                                     ; preds = %assert_end40
  %115 = getelementptr inbounds %1, %1* %arg146, i64 0, i32 1, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %dev_id, %116
  br i1 %117, label %assert_end44, label %assert_fail43, !prof !4

assert_fail43:                                    ; preds = %assert_end42
  %118 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %118(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.19, i64 0, i64 0))
  br label %common.ret

assert_end44:                                     ; preds = %assert_end42
  tail call fastcc void @tvmgen_default_fused_nn_batch_flatten_compute_(i8* %tensor, i8* %placeholder)
  br label %common.ret
}

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #0

; Function Attrs: nofree noinline norecurse nosync nounwind
define internal fastcc void @tvmgen_default_fused_nn_batch_flatten_compute_(i8* noalias nocapture writeonly align 128 %0, i8* noalias nocapture readonly align 128 %1) unnamed_addr #1 {
entry:
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 128 dereferenceable(3136) %0, i8* noundef nonnull align 128 dereferenceable(3136) %1, i64 3136, i1 false)
  ret void
}

define dllexport i32 @tvmgen_default_fused_transpose(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end48, %assert_fail47, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail37, %assert_fail35, %assert_fail33, %assert_fail31, %assert_fail29, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail47 ], [ %127, %assert_end48 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.20, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %1**
  %arg049 = load %1*, %1** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !90
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %1**
  %arg150 = load %1*, %1** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !104
  %14 = getelementptr inbounds %1, %1* %arg049, i64 0, i32 0
  %placeholder = load i8*, i8** %14, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %placeholder, i64 128) ]
  %15 = getelementptr inbounds %1, %1* %arg049, i64 0, i32 4
  %arg0.shape = load i64*, i64** %15, align 8
  %16 = getelementptr inbounds %1, %1* %arg049, i64 0, i32 5
  %arg0.strides = load i64*, i64** %16, align 8
  %17 = getelementptr inbounds %1, %1* %arg049, i64 0, i32 1, i32 1
  %dev_id = load i32, i32* %17, align 4
  %18 = getelementptr inbounds %1, %1* %arg150, i64 0, i32 0
  %T_transpose = load i8*, i8** %18, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %T_transpose, i64 128) ]
  %19 = getelementptr inbounds %1, %1* %arg150, i64 0, i32 4
  %arg1.shape = load i64*, i64** %19, align 8
  %20 = getelementptr inbounds %1, %1* %arg150, i64 0, i32 5
  %arg1.strides = load i64*, i64** %20, align 8
  switch i32 %arg0.code, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %21 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %21(i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.21, i64 0, i64 0))
  br label %common.ret

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %arg1.code, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %22 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %22(i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.22, i64 0, i64 0))
  br label %common.ret

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %23 = getelementptr inbounds %1, %1* %arg049, i64 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %assert_end8, label %assert_fail5, !prof !4

assert_fail5:                                     ; preds = %assert_end4
  %26 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %26(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0))
  br label %common.ret

assert_end8:                                      ; preds = %assert_end4
  %27 = getelementptr inbounds %1, %1* %arg049, i64 0, i32 3, i32 2
  %28 = load i16, i16* %27, align 2
  %29 = icmp eq i16 %28, 1
  %30 = getelementptr inbounds %1, %1* %arg049, i64 0, i32 3, i32 1
  %31 = load i8, i8* %30, align 1
  %32 = icmp eq i8 %31, 32
  %33 = getelementptr inbounds %1, %1* %arg049, i64 0, i32 3, i32 0
  %34 = load i8, i8* %33, align 1
  %35 = icmp eq i8 %34, 2
  %36 = and i1 %32, %35
  %37 = and i1 %29, %36
  br i1 %37, label %assert_end10, label %assert_fail9, !prof !4

assert_fail9:                                     ; preds = %assert_end8
  %38 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %38(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.4, i64 0, i64 0))
  br label %common.ret

assert_end10:                                     ; preds = %assert_end8
  %39 = load i64, i64* %arg0.shape, align 8, !tbaa !106
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %assert_end12, label %assert_fail11, !prof !4

assert_fail11:                                    ; preds = %assert_end10
  %42 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %42(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0))
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10
  %43 = getelementptr inbounds i64, i64* %arg0.shape, i64 1
  %44 = load i64, i64* %43, align 8, !tbaa !120
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %assert_end14, label %assert_fail13, !prof !4

assert_fail13:                                    ; preds = %assert_end12
  %47 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %47(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.23, i64 0, i64 0))
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %48 = getelementptr inbounds i64, i64* %arg0.shape, i64 2
  %49 = load i64, i64* %48, align 8, !tbaa !122
  %50 = trunc i64 %49 to i32
  %51 = icmp eq i32 %50, 28
  br i1 %51, label %assert_end16, label %assert_fail15, !prof !4

assert_fail15:                                    ; preds = %assert_end14
  %52 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %52(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.7, i64 0, i64 0))
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %53 = getelementptr inbounds i64, i64* %arg0.shape, i64 3
  %54 = load i64, i64* %53, align 8, !tbaa !125
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %55, 28
  br i1 %56, label %assert_end18, label %assert_fail17, !prof !4

assert_fail17:                                    ; preds = %assert_end16
  %57 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %57(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.24, i64 0, i64 0))
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !45

if_then:                                          ; preds = %assert_end18
  %58 = bitcast i64* %arg0.strides to <4 x i64>*
  %59 = load <4 x i64>, <4 x i64>* %58, align 8, !tbaa !127
  %60 = trunc <4 x i64> %59 to <4 x i32>
  %61 = icmp ne <4 x i32> %60, <i32 784, i32 784, i32 28, i32 1>
  %62 = bitcast <4 x i1> %61 to i4
  %63 = icmp eq i4 %62, 0
  br i1 %63, label %if_end, label %assert_fail19, !prof !4

if_end:                                           ; preds = %if_then, %assert_end18
  %64 = getelementptr inbounds %1, %1* %arg049, i64 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %assert_end22, label %assert_fail21, !prof !4

assert_fail19:                                    ; preds = %if_then
  %67 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %67(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.25, i64 0, i64 0))
  br label %common.ret

assert_fail21:                                    ; preds = %if_end
  %68 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %68(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  br label %common.ret

assert_end22:                                     ; preds = %if_end
  %69 = getelementptr inbounds %1, %1* %arg049, i64 0, i32 1, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %assert_end24, label %assert_fail23, !prof !4

assert_fail23:                                    ; preds = %assert_end22
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %72(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0))
  br label %common.ret

assert_end24:                                     ; preds = %assert_end22
  %73 = getelementptr inbounds %1, %1* %arg150, i64 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %assert_end28, label %assert_fail25, !prof !4

assert_fail25:                                    ; preds = %assert_end24
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %76(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.26, i64 0, i64 0))
  br label %common.ret

assert_end28:                                     ; preds = %assert_end24
  %77 = getelementptr inbounds %1, %1* %arg150, i64 0, i32 3, i32 2
  %78 = load i16, i16* %77, align 2
  %79 = icmp eq i16 %78, 1
  %80 = getelementptr inbounds %1, %1* %arg150, i64 0, i32 3, i32 1
  %81 = load i8, i8* %80, align 1
  %82 = icmp eq i8 %81, 32
  %83 = getelementptr inbounds %1, %1* %arg150, i64 0, i32 3, i32 0
  %84 = load i8, i8* %83, align 1
  %85 = icmp eq i8 %84, 2
  %86 = and i1 %82, %85
  %87 = and i1 %79, %86
  br i1 %87, label %assert_end30, label %assert_fail29, !prof !4

assert_fail29:                                    ; preds = %assert_end28
  %88 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %88(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.13, i64 0, i64 0))
  br label %common.ret

assert_end30:                                     ; preds = %assert_end28
  %89 = load i64, i64* %arg1.shape, align 8, !tbaa !139
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %assert_end32, label %assert_fail31, !prof !4

assert_fail31:                                    ; preds = %assert_end30
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %92(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.14, i64 0, i64 0))
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %93 = getelementptr inbounds i64, i64* %arg1.shape, i64 1
  %94 = load i64, i64* %93, align 8, !tbaa !153
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %95, 28
  br i1 %96, label %assert_end34, label %assert_fail33, !prof !4

assert_fail33:                                    ; preds = %assert_end32
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %97(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.27, i64 0, i64 0))
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %98 = getelementptr inbounds i64, i64* %arg1.shape, i64 2
  %99 = load i64, i64* %98, align 8, !tbaa !155
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %100, 28
  br i1 %101, label %assert_end36, label %assert_fail35, !prof !4

assert_fail35:                                    ; preds = %assert_end34
  %102 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %102(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.28, i64 0, i64 0))
  br label %common.ret

assert_end36:                                     ; preds = %assert_end34
  %103 = getelementptr inbounds i64, i64* %arg1.shape, i64 3
  %104 = load i64, i64* %103, align 8, !tbaa !158
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %assert_end38, label %assert_fail37, !prof !4

assert_fail37:                                    ; preds = %assert_end36
  %107 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %107(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.29, i64 0, i64 0))
  br label %common.ret

assert_end38:                                     ; preds = %assert_end36
  %.not51 = icmp eq i64* %arg1.strides, null
  br i1 %.not51, label %if_end40, label %if_then39, !prof !45

if_then39:                                        ; preds = %assert_end38
  %108 = bitcast i64* %arg1.strides to <4 x i64>*
  %109 = load <4 x i64>, <4 x i64>* %108, align 8, !tbaa !160
  %110 = trunc <4 x i64> %109 to <4 x i32>
  %111 = icmp ne <4 x i32> %110, <i32 784, i32 28, i32 1, i32 1>
  %112 = bitcast <4 x i1> %111 to i4
  %113 = icmp eq i4 %112, 0
  br i1 %113, label %if_end40, label %assert_fail41, !prof !4

if_end40:                                         ; preds = %if_then39, %assert_end38
  %114 = getelementptr inbounds %1, %1* %arg150, i64 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %assert_end44, label %assert_fail43, !prof !4

assert_fail41:                                    ; preds = %if_then39
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %117(i8* getelementptr inbounds ([195 x i8], [195 x i8]* @.str.30, i64 0, i64 0))
  br label %common.ret

assert_fail43:                                    ; preds = %if_end40
  %118 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %118(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.17, i64 0, i64 0))
  br label %common.ret

assert_end44:                                     ; preds = %if_end40
  %119 = getelementptr inbounds %1, %1* %arg150, i64 0, i32 1, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %assert_end46, label %assert_fail45, !prof !4

assert_fail45:                                    ; preds = %assert_end44
  %122 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %122(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.18, i64 0, i64 0))
  br label %common.ret

assert_end46:                                     ; preds = %assert_end44
  %123 = getelementptr inbounds %1, %1* %arg150, i64 0, i32 1, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %dev_id, %124
  br i1 %125, label %assert_end48, label %assert_fail47, !prof !4

assert_fail47:                                    ; preds = %assert_end46
  %126 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %126(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.19, i64 0, i64 0))
  br label %common.ret

assert_end48:                                     ; preds = %assert_end46
  %127 = tail call fastcc i32 @tvmgen_default_fused_transpose_compute_(i8* %T_transpose, i8* %placeholder)
  br label %common.ret
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_transpose_compute_(i8* noalias align 128 %0, i8* noalias align 128 %1) unnamed_addr #2 {
entry:
  %2 = alloca %closure_loop_parallel_ax0.ax1.fused, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused, %closure_loop_parallel_ax0.ax1.fused* %2, i64 0, i32 0
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused, %closure_loop_parallel_ax0.ax1.fused* %2, i64 0, i32 1
  store i8* %1, i8** %4, align 8
  %5 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !5
  %6 = bitcast %closure_loop_parallel_ax0.ax1.fused* %2 to i8*
  %7 = call i32 %5(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda, i8* nonnull %6, i32 0)
  ret i32 %7
}

; Function Attrs: nofree norecurse nosync nounwind
define private i32 @__tvm_parallel_lambda(i32 %0, %0* nocapture readonly %1, i8* nocapture readonly %2) #3 {
parallel_closure_entry:
  %3 = bitcast i8* %2 to float**
  %4 = load float*, float** %3, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr inbounds %0, %0* %1, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 27
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 28
  %15 = select i1 %14, i32 %13, i32 28
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 28
  %18 = select i1 %17, i32 %16, i32 28
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin_ax2.preheader.preheader, label %for_end_ax0.ax1.fused, !prof !4

for_begin_ax2.preheader.preheader:                ; preds = %parallel_closure_entry
  %20 = sext i32 %18 to i64
  %wide.trip.count = sext i32 %15 to i64
  br label %for_begin_ax2.preheader

for_begin_ax2.preheader:                          ; preds = %for_begin_ax2.preheader.preheader, %for_begin_ax2.preheader
  %indvars.iv = phi i64 [ %20, %for_begin_ax2.preheader.preheader ], [ %indvars.iv.next, %for_begin_ax2.preheader ]
  %21 = mul nsw i64 %indvars.iv, 28
  %22 = getelementptr inbounds float, float* %7, i64 %21
  %23 = getelementptr inbounds float, float* %4, i64 %21
  %24 = bitcast float* %22 to <4 x float>*
  %25 = load <4 x float>, <4 x float>* %24, align 4, !tbaa !172
  %26 = bitcast float* %23 to <4 x float>*
  store <4 x float> %25, <4 x float>* %26, align 4, !tbaa !175
  %27 = add nsw i64 %21, 4
  %28 = getelementptr inbounds float, float* %7, i64 %27
  %29 = getelementptr inbounds float, float* %4, i64 %27
  %30 = bitcast float* %28 to <4 x float>*
  %31 = load <4 x float>, <4 x float>* %30, align 4, !tbaa !172
  %32 = bitcast float* %29 to <4 x float>*
  store <4 x float> %31, <4 x float>* %32, align 4, !tbaa !175
  %33 = add nsw i64 %21, 8
  %34 = getelementptr inbounds float, float* %7, i64 %33
  %35 = getelementptr inbounds float, float* %4, i64 %33
  %36 = bitcast float* %34 to <4 x float>*
  %37 = load <4 x float>, <4 x float>* %36, align 4, !tbaa !172
  %38 = bitcast float* %35 to <4 x float>*
  store <4 x float> %37, <4 x float>* %38, align 4, !tbaa !175
  %39 = add nsw i64 %21, 12
  %40 = getelementptr inbounds float, float* %7, i64 %39
  %41 = getelementptr inbounds float, float* %4, i64 %39
  %42 = bitcast float* %40 to <4 x float>*
  %43 = load <4 x float>, <4 x float>* %42, align 4, !tbaa !172
  %44 = bitcast float* %41 to <4 x float>*
  store <4 x float> %43, <4 x float>* %44, align 4, !tbaa !175
  %45 = add nsw i64 %21, 16
  %46 = getelementptr inbounds float, float* %7, i64 %45
  %47 = getelementptr inbounds float, float* %4, i64 %45
  %48 = bitcast float* %46 to <4 x float>*
  %49 = load <4 x float>, <4 x float>* %48, align 4, !tbaa !172
  %50 = bitcast float* %47 to <4 x float>*
  store <4 x float> %49, <4 x float>* %50, align 4, !tbaa !175
  %51 = add nsw i64 %21, 20
  %52 = getelementptr inbounds float, float* %7, i64 %51
  %53 = getelementptr inbounds float, float* %4, i64 %51
  %54 = bitcast float* %52 to <4 x float>*
  %55 = load <4 x float>, <4 x float>* %54, align 4, !tbaa !172
  %56 = bitcast float* %53 to <4 x float>*
  store <4 x float> %55, <4 x float>* %56, align 4, !tbaa !175
  %57 = add nsw i64 %21, 24
  %58 = getelementptr inbounds float, float* %7, i64 %57
  %59 = getelementptr inbounds float, float* %4, i64 %57
  %60 = bitcast float* %58 to <4 x float>*
  %61 = load <4 x float>, <4 x float>* %60, align 4, !tbaa !172
  %62 = bitcast float* %59 to <4 x float>*
  store <4 x float> %61, <4 x float>* %62, align 4, !tbaa !175
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for_end_ax0.ax1.fused, label %for_begin_ax2.preheader, !prof !45

for_end_ax0.ax1.fused:                            ; preds = %for_begin_ax2.preheader, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

attributes #0 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
attributes #1 = { nofree noinline norecurse nosync nounwind }
attributes #2 = { noinline }
attributes #3 = { nofree norecurse nosync nounwind }
attributes #4 = { argmemonly nofree nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "TVM", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, dwoId: 1)
!1 = !DIFile(filename: "model.tvm", directory: "/tmp/")
!2 = !{i32 2, !"tvm_target", !"llvm"}
!3 = !{i32 4, !"Debug Info Version", i32 3}
!4 = !{!"branch_weights", i32 1048576, i32 1}
!5 = !{!6, !6, i64 0}
!6 = !{!"ctx_ptr", !7, i64 0}
!7 = !{!"tvm-tbaa"}
!8 = !{!9, !9, i64 0}
!9 = !{!"0x63337b0.w1.b0", !10, i64 0}
!10 = !{!"0x63337b0.w2.b0", !11, i64 0}
!11 = !{!"0x63337b0.w4.b0", !12, i64 0}
!12 = !{!"0x63337b0.w8.b0", !13, i64 0}
!13 = !{!"0x63337b0.w16.b0", !14, i64 0}
!14 = !{!"0x63337b0.w32.b0", !15, i64 0}
!15 = !{!"0x63337b0.w64.b0", !16, i64 0}
!16 = !{!"0x63337b0.w128.b0", !17, i64 0}
!17 = !{!"0x63337b0.w256.b0", !18, i64 0}
!18 = !{!"0x63337b0.w512.b0", !19, i64 0}
!19 = !{!"0x63337b0.w1024.b0", !20, i64 0}
!20 = !{!"i8*", !21, i64 0}
!21 = !{!"0x63337b0", !7, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"0x63337b0.w1.b1", !10, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"0x633b800.w1.b0", !26, i64 0}
!26 = !{!"0x633b800.w2.b0", !27, i64 0}
!27 = !{!"0x633b800.w4.b0", !28, i64 0}
!28 = !{!"0x633b800.w8.b0", !29, i64 0}
!29 = !{!"0x633b800.w16.b0", !30, i64 0}
!30 = !{!"0x633b800.w32.b0", !31, i64 0}
!31 = !{!"0x633b800.w64.b0", !32, i64 0}
!32 = !{!"0x633b800.w128.b0", !33, i64 0}
!33 = !{!"0x633b800.w256.b0", !34, i64 0}
!34 = !{!"0x633b800.w512.b0", !35, i64 0}
!35 = !{!"0x633b800.w1024.b0", !36, i64 0}
!36 = !{!"i8*", !37, i64 0}
!37 = !{!"0x633b800", !7, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"0x633b800.w1.b1", !26, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"0x633b800.w1.b2", !42, i64 0}
!42 = !{!"0x633b800.w2.b2", !27, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"0x633b800.w1.b3", !42, i64 0}
!45 = !{!"branch_weights", i32 1, i32 1048576}
!46 = !{!47, !47, i64 0}
!47 = !{!"0x6317670.w4.b0", !48, i64 0}
!48 = !{!"0x6317670.w8.b0", !49, i64 0}
!49 = !{!"0x6317670.w16.b0", !50, i64 0}
!50 = !{!"0x6317670.w32.b0", !51, i64 0}
!51 = !{!"0x6317670.w64.b0", !52, i64 0}
!52 = !{!"0x6317670.w128.b0", !53, i64 0}
!53 = !{!"0x6317670.w256.b0", !54, i64 0}
!54 = !{!"0x6317670.w512.b0", !55, i64 0}
!55 = !{!"0x6317670.w1024.b0", !56, i64 0}
!56 = !{!"i8*", !57, i64 0}
!57 = !{!"0x6317670", !7, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"0x633fa70.w1.b0", !60, i64 0}
!60 = !{!"0x633fa70.w2.b0", !61, i64 0}
!61 = !{!"0x633fa70.w4.b0", !62, i64 0}
!62 = !{!"0x633fa70.w8.b0", !63, i64 0}
!63 = !{!"0x633fa70.w16.b0", !64, i64 0}
!64 = !{!"0x633fa70.w32.b0", !65, i64 0}
!65 = !{!"0x633fa70.w64.b0", !66, i64 0}
!66 = !{!"0x633fa70.w128.b0", !67, i64 0}
!67 = !{!"0x633fa70.w256.b0", !68, i64 0}
!68 = !{!"0x633fa70.w512.b0", !69, i64 0}
!69 = !{!"0x633fa70.w1024.b0", !70, i64 0}
!70 = !{!"i8*", !71, i64 0}
!71 = !{!"0x633fa70", !7, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"0x633fa70.w1.b1", !60, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"0x6319d10.w1.b0", !76, i64 0}
!76 = !{!"0x6319d10.w2.b0", !77, i64 0}
!77 = !{!"0x6319d10.w4.b0", !78, i64 0}
!78 = !{!"0x6319d10.w8.b0", !79, i64 0}
!79 = !{!"0x6319d10.w16.b0", !80, i64 0}
!80 = !{!"0x6319d10.w32.b0", !81, i64 0}
!81 = !{!"0x6319d10.w64.b0", !82, i64 0}
!82 = !{!"0x6319d10.w128.b0", !83, i64 0}
!83 = !{!"0x6319d10.w256.b0", !84, i64 0}
!84 = !{!"0x6319d10.w512.b0", !85, i64 0}
!85 = !{!"0x6319d10.w1024.b0", !86, i64 0}
!86 = !{!"i8*", !87, i64 0}
!87 = !{!"0x6319d10", !7, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"0x6319d10.w1.b1", !76, i64 0}
!90 = !{!91, !91, i64 0}
!91 = !{!"0x633d370.w1.b0", !92, i64 0}
!92 = !{!"0x633d370.w2.b0", !93, i64 0}
!93 = !{!"0x633d370.w4.b0", !94, i64 0}
!94 = !{!"0x633d370.w8.b0", !95, i64 0}
!95 = !{!"0x633d370.w16.b0", !96, i64 0}
!96 = !{!"0x633d370.w32.b0", !97, i64 0}
!97 = !{!"0x633d370.w64.b0", !98, i64 0}
!98 = !{!"0x633d370.w128.b0", !99, i64 0}
!99 = !{!"0x633d370.w256.b0", !100, i64 0}
!100 = !{!"0x633d370.w512.b0", !101, i64 0}
!101 = !{!"0x633d370.w1024.b0", !102, i64 0}
!102 = !{!"i8*", !103, i64 0}
!103 = !{!"0x633d370", !7, i64 0}
!104 = !{!105, !105, i64 0}
!105 = !{!"0x633d370.w1.b1", !92, i64 0}
!106 = !{!107, !107, i64 0}
!107 = !{!"0x631cf30.w1.b0", !108, i64 0}
!108 = !{!"0x631cf30.w2.b0", !109, i64 0}
!109 = !{!"0x631cf30.w4.b0", !110, i64 0}
!110 = !{!"0x631cf30.w8.b0", !111, i64 0}
!111 = !{!"0x631cf30.w16.b0", !112, i64 0}
!112 = !{!"0x631cf30.w32.b0", !113, i64 0}
!113 = !{!"0x631cf30.w64.b0", !114, i64 0}
!114 = !{!"0x631cf30.w128.b0", !115, i64 0}
!115 = !{!"0x631cf30.w256.b0", !116, i64 0}
!116 = !{!"0x631cf30.w512.b0", !117, i64 0}
!117 = !{!"0x631cf30.w1024.b0", !118, i64 0}
!118 = !{!"i8*", !119, i64 0}
!119 = !{!"0x631cf30", !7, i64 0}
!120 = !{!121, !121, i64 0}
!121 = !{!"0x631cf30.w1.b1", !108, i64 0}
!122 = !{!123, !123, i64 0}
!123 = !{!"0x631cf30.w1.b2", !124, i64 0}
!124 = !{!"0x631cf30.w2.b2", !109, i64 0}
!125 = !{!126, !126, i64 0}
!126 = !{!"0x631cf30.w1.b3", !124, i64 0}
!127 = !{!128, !128, i64 0}
!128 = !{!"0x632ec40.w4.b0", !129, i64 0}
!129 = !{!"0x632ec40.w8.b0", !130, i64 0}
!130 = !{!"0x632ec40.w16.b0", !131, i64 0}
!131 = !{!"0x632ec40.w32.b0", !132, i64 0}
!132 = !{!"0x632ec40.w64.b0", !133, i64 0}
!133 = !{!"0x632ec40.w128.b0", !134, i64 0}
!134 = !{!"0x632ec40.w256.b0", !135, i64 0}
!135 = !{!"0x632ec40.w512.b0", !136, i64 0}
!136 = !{!"0x632ec40.w1024.b0", !137, i64 0}
!137 = !{!"i8*", !138, i64 0}
!138 = !{!"0x632ec40", !7, i64 0}
!139 = !{!140, !140, i64 0}
!140 = !{!"0x6330de0.w1.b0", !141, i64 0}
!141 = !{!"0x6330de0.w2.b0", !142, i64 0}
!142 = !{!"0x6330de0.w4.b0", !143, i64 0}
!143 = !{!"0x6330de0.w8.b0", !144, i64 0}
!144 = !{!"0x6330de0.w16.b0", !145, i64 0}
!145 = !{!"0x6330de0.w32.b0", !146, i64 0}
!146 = !{!"0x6330de0.w64.b0", !147, i64 0}
!147 = !{!"0x6330de0.w128.b0", !148, i64 0}
!148 = !{!"0x6330de0.w256.b0", !149, i64 0}
!149 = !{!"0x6330de0.w512.b0", !150, i64 0}
!150 = !{!"0x6330de0.w1024.b0", !151, i64 0}
!151 = !{!"i8*", !152, i64 0}
!152 = !{!"0x6330de0", !7, i64 0}
!153 = !{!154, !154, i64 0}
!154 = !{!"0x6330de0.w1.b1", !141, i64 0}
!155 = !{!156, !156, i64 0}
!156 = !{!"0x6330de0.w1.b2", !157, i64 0}
!157 = !{!"0x6330de0.w2.b2", !142, i64 0}
!158 = !{!159, !159, i64 0}
!159 = !{!"0x6330de0.w1.b3", !157, i64 0}
!160 = !{!161, !161, i64 0}
!161 = !{!"0x6331770.w4.b0", !162, i64 0}
!162 = !{!"0x6331770.w8.b0", !163, i64 0}
!163 = !{!"0x6331770.w16.b0", !164, i64 0}
!164 = !{!"0x6331770.w32.b0", !165, i64 0}
!165 = !{!"0x6331770.w64.b0", !166, i64 0}
!166 = !{!"0x6331770.w128.b0", !167, i64 0}
!167 = !{!"0x6331770.w256.b0", !168, i64 0}
!168 = !{!"0x6331770.w512.b0", !169, i64 0}
!169 = !{!"0x6331770.w1024.b0", !170, i64 0}
!170 = !{!"i8*", !171, i64 0}
!171 = !{!"0x6331770", !7, i64 0}
!172 = !{!173, !173, i64 0}
!173 = !{!"float", !174, i64 0}
!174 = !{!"0x6319460", !7, i64 0}
!175 = !{!176, !176, i64 0}
!176 = !{!"float", !177, i64 0}
!177 = !{!"0x6316110", !7, i64 0}
