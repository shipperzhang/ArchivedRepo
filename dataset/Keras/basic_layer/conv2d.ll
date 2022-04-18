; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32*, i32 }
%1 = type { i8*, %2, i32, %3, i64*, i64*, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }
%closure_loop_parallel_ax0.ax1.fused = type { i8*, i8*, i8* }
%closure_loop_parallel_bs.c.fused.h.fused = type { i8*, i8* }
%closure_loop_parallel_occ.k_h.fused = type { <4 x float>*, i8* }
%closure_loop_parallel_n.c.outer.fused.h.fused = type { i8*, <4 x float>*, i8* }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global i32 (i32 (i32, %0*, i8*)*, i8*, i32)* null, align 8
@.str = private constant [85 x i8] c"Assert fail: (num_args == 3), tvmgen_default_fused_nn_bias_add: num_args should be 3\00", align 1
@.str.1 = private constant [160 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_bias_add: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [160 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_bias_add: Expect arg[1] to be pointer\00", align 1
@.str.3 = private constant [160 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_nn_bias_add: Expect arg[2] to be pointer\00", align 1
@.str.4 = private constant [85 x i8] c"Assert fail: (4 == tir.tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 4\00", align 1
@.str.5 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg0, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be float32\00", align 1
@.str.6 = private constant [124 x i8] c"Assert fail: (1 == int32(arg0.shape[0])), Argument arg0.shape[0] has an unsatisfied constraint: (1 == int32(arg0.shape[0]))\00", align 1
@.str.7 = private constant [126 x i8] c"Assert fail: (16 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (16 == int32(arg0.shape[1]))\00", align 1
@.str.8 = private constant [126 x i8] c"Assert fail: (27 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint: (27 == int32(arg0.shape[2]))\00", align 1
@.str.9 = private constant [126 x i8] c"Assert fail: (27 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint: (27 == int32(arg0.shape[3]))\00", align 1
@.str.10 = private constant [199 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (27 == int32(arg0.strides[2]))) && (729 == int32(arg0.strides[1]))) && (11664 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.11 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8))\00", align 1
@.str.12 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg0, 0, 10)), Argument arg0.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg0, 0, 10))\00", align 1
@.str.13 = private constant [85 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 1\00", align 1
@.str.14 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.15 = private constant [126 x i8] c"Assert fail: (16 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (16 == int32(arg1.shape[0]))\00", align 1
@.str.16 = private constant [87 x i8] c"Assert fail: (1 == int32(arg1.strides[0])), arg1.strides: expected to be compact array\00", align 1
@.str.17 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8))\00", align 1
@.str.18 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg1, 0, 10))\00", align 1
@.str.19 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg1, 0, 9))\00", align 1
@.str.20 = private constant [85 x i8] c"Assert fail: (4 == tir.tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 4\00", align 1
@.str.21 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.22 = private constant [124 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint: (1 == int32(arg2.shape[0]))\00", align 1
@.str.23 = private constant [126 x i8] c"Assert fail: (16 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint: (16 == int32(arg2.shape[1]))\00", align 1
@.str.24 = private constant [126 x i8] c"Assert fail: (27 == int32(arg2.shape[2])), Argument arg2.shape[2] has an unsatisfied constraint: (27 == int32(arg2.shape[2]))\00", align 1
@.str.25 = private constant [126 x i8] c"Assert fail: (27 == int32(arg2.shape[3])), Argument arg2.shape[3] has an unsatisfied constraint: (27 == int32(arg2.shape[3]))\00", align 1
@.str.26 = private constant [199 x i8] c"Assert fail: ((((1 == int32(arg2.strides[3])) && (27 == int32(arg2.strides[2]))) && (729 == int32(arg2.strides[1]))) && (11664 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
@.str.27 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg2, 0, 8)), Argument arg2.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg2, 0, 8))\00", align 1
@.str.28 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg2, 0, 10)), Argument arg2.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg2, 0, 10))\00", align 1
@.str.29 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg2, 0, 9)), Argument arg2.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg2, 0, 9))\00", align 1
@.str.30 = private constant [83 x i8] c"Assert fail: (num_args == 3), tvmgen_default_fused_nn_conv2d: num_args should be 3\00", align 1
@.str.31 = private constant [158 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_conv2d: Expect arg[0] to be pointer\00", align 1
@.str.32 = private constant [158 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_conv2d: Expect arg[1] to be pointer\00", align 1
@.str.33 = private constant [158 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_nn_conv2d: Expect arg[2] to be pointer\00", align 1
@.str.34 = private constant [124 x i8] c"Assert fail: (1 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (1 == int32(arg0.shape[1]))\00", align 1
@.str.35 = private constant [126 x i8] c"Assert fail: (28 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint: (28 == int32(arg0.shape[2]))\00", align 1
@.str.36 = private constant [126 x i8] c"Assert fail: (28 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint: (28 == int32(arg0.shape[3]))\00", align 1
@.str.37 = private constant [197 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (28 == int32(arg0.strides[2]))) && (784 == int32(arg0.strides[1]))) && (784 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.38 = private constant [85 x i8] c"Assert fail: (4 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4\00", align 1
@.str.39 = private constant [124 x i8] c"Assert fail: (1 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (1 == int32(arg1.shape[1]))\00", align 1
@.str.40 = private constant [124 x i8] c"Assert fail: (2 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint: (2 == int32(arg1.shape[2]))\00", align 1
@.str.41 = private constant [124 x i8] c"Assert fail: (2 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint: (2 == int32(arg1.shape[3]))\00", align 1
@.str.42 = private constant [192 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (2 == int32(arg1.strides[2]))) && (4 == int32(arg1.strides[1]))) && (4 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@__TVMBackendAllocWorkspace = linkonce dllexport local_unnamed_addr global i8* (i32, i32, i64, i32, i32)* null, align 8
@__TVMBackendFreeWorkspace = linkonce dllexport local_unnamed_addr global i32 (i32, i32, i8*)* null, align 8
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

define dllexport i32 @tvmgen_default_fused_nn_bias_add(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 3
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end69, %assert_fail68, %assert_fail66, %assert_fail64, %assert_fail62, %assert_fail58, %assert_fail56, %assert_fail54, %assert_fail52, %assert_fail50, %assert_fail46, %assert_fail44, %assert_fail42, %assert_fail40, %assert_fail38, %assert_fail34, %assert_fail32, %assert_fail28, %assert_fail26, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail12, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail2, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail2 ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail12 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail26 ], [ -1, %assert_fail28 ], [ -1, %assert_fail32 ], [ -1, %assert_fail34 ], [ -1, %assert_fail38 ], [ -1, %assert_fail40 ], [ -1, %assert_fail42 ], [ -1, %assert_fail44 ], [ -1, %assert_fail46 ], [ -1, %assert_fail50 ], [ -1, %assert_fail52 ], [ -1, %assert_fail54 ], [ -1, %assert_fail56 ], [ -1, %assert_fail58 ], [ -1, %assert_fail62 ], [ -1, %assert_fail64 ], [ -1, %assert_fail66 ], [ -1, %assert_fail68 ], [ %171, %assert_end69 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %1**
  %arg071 = load %1*, %1** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !8
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %1**
  %arg172 = load %1*, %1** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !22
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %1**
  %arg273 = load %1*, %1** %15, align 8
  %16 = getelementptr inbounds i8, i8* %1, i64 8
  %17 = bitcast i8* %16 to i32*
  %arg2.code = load i32, i32* %17, align 4, !tbaa !24
  %18 = getelementptr inbounds %1, %1* %arg071, i64 0, i32 0
  %placeholder = load i8*, i8** %18, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %placeholder, i64 128) ]
  %19 = getelementptr inbounds %1, %1* %arg071, i64 0, i32 4
  %arg0.shape = load i64*, i64** %19, align 8
  %20 = getelementptr inbounds %1, %1* %arg071, i64 0, i32 5
  %arg0.strides = load i64*, i64** %20, align 8
  %21 = getelementptr inbounds %1, %1* %arg071, i64 0, i32 1, i32 1
  %dev_id = load i32, i32* %21, align 4
  %22 = getelementptr inbounds %1, %1* %arg172, i64 0, i32 0
  %placeholder70 = load i8*, i8** %22, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %placeholder70, i64 128) ]
  %23 = getelementptr inbounds %1, %1* %arg172, i64 0, i32 4
  %arg1.shape = load i64*, i64** %23, align 8
  %24 = getelementptr inbounds %1, %1* %arg172, i64 0, i32 5
  %arg1.strides = load i64*, i64** %24, align 8
  %25 = getelementptr inbounds %1, %1* %arg273, i64 0, i32 0
  %T_add = load i8*, i8** %25, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %T_add, i64 128) ]
  %26 = getelementptr inbounds %1, %1* %arg273, i64 0, i32 4
  %arg2.shape = load i64*, i64** %26, align 8
  %27 = getelementptr inbounds %1, %1* %arg273, i64 0, i32 5
  %arg2.strides = load i64*, i64** %27, align 8
  switch i32 %arg0.code, label %assert_fail2 [
    i32 13, label %assert_end3
    i32 7, label %assert_end3
    i32 4, label %assert_end3
    i32 3, label %assert_end3
  ]

assert_fail2:                                     ; preds = %assert_end
  %28 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %28(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.1, i64 0, i64 0))
  br label %common.ret

assert_end3:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %arg1.code, label %assert_fail4 [
    i32 13, label %assert_end5
    i32 7, label %assert_end5
    i32 4, label %assert_end5
    i32 3, label %assert_end5
  ]

assert_fail4:                                     ; preds = %assert_end3
  %29 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %29(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.2, i64 0, i64 0))
  br label %common.ret

assert_end5:                                      ; preds = %assert_end3, %assert_end3, %assert_end3, %assert_end3
  switch i32 %arg2.code, label %assert_fail6 [
    i32 13, label %assert_end7
    i32 7, label %assert_end7
    i32 4, label %assert_end7
    i32 3, label %assert_end7
  ]

assert_fail6:                                     ; preds = %assert_end5
  %30 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %30(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.3, i64 0, i64 0))
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  %31 = getelementptr inbounds %1, %1* %arg071, i64 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %assert_end11, label %assert_fail8, !prof !4

assert_fail8:                                     ; preds = %assert_end7
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %34(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0))
  br label %common.ret

assert_end11:                                     ; preds = %assert_end7
  %35 = getelementptr inbounds %1, %1* %arg071, i64 0, i32 3, i32 2
  %36 = load i16, i16* %35, align 2
  %37 = icmp eq i16 %36, 1
  %38 = getelementptr inbounds %1, %1* %arg071, i64 0, i32 3, i32 1
  %39 = load i8, i8* %38, align 1
  %40 = icmp eq i8 %39, 32
  %41 = getelementptr inbounds %1, %1* %arg071, i64 0, i32 3, i32 0
  %42 = load i8, i8* %41, align 1
  %43 = icmp eq i8 %42, 2
  %44 = and i1 %40, %43
  %45 = and i1 %37, %44
  br i1 %45, label %assert_end13, label %assert_fail12, !prof !4

assert_fail12:                                    ; preds = %assert_end11
  %46 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %46(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.5, i64 0, i64 0))
  br label %common.ret

assert_end13:                                     ; preds = %assert_end11
  %47 = load i64, i64* %arg0.shape, align 8, !tbaa !27
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %assert_end15, label %assert_fail14, !prof !4

assert_fail14:                                    ; preds = %assert_end13
  %50 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %50(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.6, i64 0, i64 0))
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %51 = getelementptr inbounds i64, i64* %arg0.shape, i64 1
  %52 = load i64, i64* %51, align 8, !tbaa !41
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %assert_end17, label %assert_fail16, !prof !4

assert_fail16:                                    ; preds = %assert_end15
  %55 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %55(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.7, i64 0, i64 0))
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %56 = getelementptr inbounds i64, i64* %arg0.shape, i64 2
  %57 = load i64, i64* %56, align 8, !tbaa !43
  %58 = trunc i64 %57 to i32
  %59 = icmp eq i32 %58, 27
  br i1 %59, label %assert_end19, label %assert_fail18, !prof !4

assert_fail18:                                    ; preds = %assert_end17
  %60 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %60(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.8, i64 0, i64 0))
  br label %common.ret

assert_end19:                                     ; preds = %assert_end17
  %61 = getelementptr inbounds i64, i64* %arg0.shape, i64 3
  %62 = load i64, i64* %61, align 8, !tbaa !46
  %63 = trunc i64 %62 to i32
  %64 = icmp eq i32 %63, 27
  br i1 %64, label %assert_end21, label %assert_fail20, !prof !4

assert_fail20:                                    ; preds = %assert_end19
  %65 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %65(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.9, i64 0, i64 0))
  br label %common.ret

assert_end21:                                     ; preds = %assert_end19
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !48

if_then:                                          ; preds = %assert_end21
  %66 = bitcast i64* %arg0.strides to <4 x i64>*
  %67 = load <4 x i64>, <4 x i64>* %66, align 8, !tbaa !49
  %68 = trunc <4 x i64> %67 to <4 x i32>
  %69 = icmp ne <4 x i32> %68, <i32 11664, i32 729, i32 27, i32 1>
  %70 = bitcast <4 x i1> %69 to i4
  %71 = icmp eq i4 %70, 0
  br i1 %71, label %if_end, label %assert_fail22, !prof !4

if_end:                                           ; preds = %if_then, %assert_end21
  %72 = getelementptr inbounds %1, %1* %arg071, i64 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %assert_end25, label %assert_fail24, !prof !4

assert_fail22:                                    ; preds = %if_then
  %75 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %75(i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.10, i64 0, i64 0))
  br label %common.ret

assert_fail24:                                    ; preds = %if_end
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %76(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.11, i64 0, i64 0))
  br label %common.ret

assert_end25:                                     ; preds = %if_end
  %77 = getelementptr inbounds %1, %1* %arg071, i64 0, i32 1, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %assert_end27, label %assert_fail26, !prof !4

assert_fail26:                                    ; preds = %assert_end25
  %80 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %80(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.12, i64 0, i64 0))
  br label %common.ret

assert_end27:                                     ; preds = %assert_end25
  %81 = getelementptr inbounds %1, %1* %arg172, i64 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %assert_end31, label %assert_fail28, !prof !4

assert_fail28:                                    ; preds = %assert_end27
  %84 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %84(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.13, i64 0, i64 0))
  br label %common.ret

assert_end31:                                     ; preds = %assert_end27
  %85 = getelementptr inbounds %1, %1* %arg172, i64 0, i32 3, i32 2
  %86 = load i16, i16* %85, align 2
  %87 = icmp eq i16 %86, 1
  %88 = getelementptr inbounds %1, %1* %arg172, i64 0, i32 3, i32 1
  %89 = load i8, i8* %88, align 1
  %90 = icmp eq i8 %89, 32
  %91 = getelementptr inbounds %1, %1* %arg172, i64 0, i32 3, i32 0
  %92 = load i8, i8* %91, align 1
  %93 = icmp eq i8 %92, 2
  %94 = and i1 %90, %93
  %95 = and i1 %87, %94
  br i1 %95, label %assert_end33, label %assert_fail32, !prof !4

assert_fail32:                                    ; preds = %assert_end31
  %96 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %96(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.14, i64 0, i64 0))
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %97 = load i64, i64* %arg1.shape, align 8, !tbaa !61
  %98 = trunc i64 %97 to i32
  %99 = icmp eq i32 %98, 16
  br i1 %99, label %assert_end35, label %assert_fail34, !prof !4

assert_fail34:                                    ; preds = %assert_end33
  %100 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %100(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.15, i64 0, i64 0))
  br label %common.ret

assert_end35:                                     ; preds = %assert_end33
  %.not74 = icmp eq i64* %arg1.strides, null
  br i1 %.not74, label %if_end37, label %if_then36, !prof !48

if_then36:                                        ; preds = %assert_end35
  %101 = load i64, i64* %arg1.strides, align 8, !tbaa !75
  %102 = trunc i64 %101 to i32
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %if_end37, label %assert_fail38, !prof !4

if_end37:                                         ; preds = %if_then36, %assert_end35
  %104 = getelementptr inbounds %1, %1* %arg172, i64 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %assert_end41, label %assert_fail40, !prof !4

assert_fail38:                                    ; preds = %if_then36
  %107 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %107(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.16, i64 0, i64 0))
  br label %common.ret

assert_fail40:                                    ; preds = %if_end37
  %108 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %108(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.17, i64 0, i64 0))
  br label %common.ret

assert_end41:                                     ; preds = %if_end37
  %109 = getelementptr inbounds %1, %1* %arg172, i64 0, i32 1, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %assert_end43, label %assert_fail42, !prof !4

assert_fail42:                                    ; preds = %assert_end41
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %112(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.18, i64 0, i64 0))
  br label %common.ret

assert_end43:                                     ; preds = %assert_end41
  %113 = getelementptr inbounds %1, %1* %arg172, i64 0, i32 1, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %dev_id, %114
  br i1 %115, label %assert_end45, label %assert_fail44, !prof !4

assert_fail44:                                    ; preds = %assert_end43
  %116 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %116(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.19, i64 0, i64 0))
  br label %common.ret

assert_end45:                                     ; preds = %assert_end43
  %117 = getelementptr inbounds %1, %1* %arg273, i64 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 4
  br i1 %119, label %assert_end49, label %assert_fail46, !prof !4

assert_fail46:                                    ; preds = %assert_end45
  %120 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %120(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.20, i64 0, i64 0))
  br label %common.ret

assert_end49:                                     ; preds = %assert_end45
  %121 = getelementptr inbounds %1, %1* %arg273, i64 0, i32 3, i32 2
  %122 = load i16, i16* %121, align 2
  %123 = icmp eq i16 %122, 1
  %124 = getelementptr inbounds %1, %1* %arg273, i64 0, i32 3, i32 1
  %125 = load i8, i8* %124, align 1
  %126 = icmp eq i8 %125, 32
  %127 = getelementptr inbounds %1, %1* %arg273, i64 0, i32 3, i32 0
  %128 = load i8, i8* %127, align 1
  %129 = icmp eq i8 %128, 2
  %130 = and i1 %126, %129
  %131 = and i1 %123, %130
  br i1 %131, label %assert_end51, label %assert_fail50, !prof !4

assert_fail50:                                    ; preds = %assert_end49
  %132 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %132(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.21, i64 0, i64 0))
  br label %common.ret

assert_end51:                                     ; preds = %assert_end49
  %133 = load i64, i64* %arg2.shape, align 8, !tbaa !89
  %134 = trunc i64 %133 to i32
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %assert_end53, label %assert_fail52, !prof !4

assert_fail52:                                    ; preds = %assert_end51
  %136 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %136(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.22, i64 0, i64 0))
  br label %common.ret

assert_end53:                                     ; preds = %assert_end51
  %137 = getelementptr inbounds i64, i64* %arg2.shape, i64 1
  %138 = load i64, i64* %137, align 8, !tbaa !103
  %139 = trunc i64 %138 to i32
  %140 = icmp eq i32 %139, 16
  br i1 %140, label %assert_end55, label %assert_fail54, !prof !4

assert_fail54:                                    ; preds = %assert_end53
  %141 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %141(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.23, i64 0, i64 0))
  br label %common.ret

assert_end55:                                     ; preds = %assert_end53
  %142 = getelementptr inbounds i64, i64* %arg2.shape, i64 2
  %143 = load i64, i64* %142, align 8, !tbaa !105
  %144 = trunc i64 %143 to i32
  %145 = icmp eq i32 %144, 27
  br i1 %145, label %assert_end57, label %assert_fail56, !prof !4

assert_fail56:                                    ; preds = %assert_end55
  %146 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %146(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.24, i64 0, i64 0))
  br label %common.ret

assert_end57:                                     ; preds = %assert_end55
  %147 = getelementptr inbounds i64, i64* %arg2.shape, i64 3
  %148 = load i64, i64* %147, align 8, !tbaa !108
  %149 = trunc i64 %148 to i32
  %150 = icmp eq i32 %149, 27
  br i1 %150, label %assert_end59, label %assert_fail58, !prof !4

assert_fail58:                                    ; preds = %assert_end57
  %151 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %151(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.25, i64 0, i64 0))
  br label %common.ret

assert_end59:                                     ; preds = %assert_end57
  %.not75 = icmp eq i64* %arg2.strides, null
  br i1 %.not75, label %if_end61, label %if_then60, !prof !48

if_then60:                                        ; preds = %assert_end59
  %152 = bitcast i64* %arg2.strides to <4 x i64>*
  %153 = load <4 x i64>, <4 x i64>* %152, align 8, !tbaa !110
  %154 = trunc <4 x i64> %153 to <4 x i32>
  %155 = icmp ne <4 x i32> %154, <i32 11664, i32 729, i32 27, i32 1>
  %156 = bitcast <4 x i1> %155 to i4
  %157 = icmp eq i4 %156, 0
  br i1 %157, label %if_end61, label %assert_fail62, !prof !4

if_end61:                                         ; preds = %if_then60, %assert_end59
  %158 = getelementptr inbounds %1, %1* %arg273, i64 0, i32 6
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %assert_end65, label %assert_fail64, !prof !4

assert_fail62:                                    ; preds = %if_then60
  %161 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %161(i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.26, i64 0, i64 0))
  br label %common.ret

assert_fail64:                                    ; preds = %if_end61
  %162 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %162(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.27, i64 0, i64 0))
  br label %common.ret

assert_end65:                                     ; preds = %if_end61
  %163 = getelementptr inbounds %1, %1* %arg273, i64 0, i32 1, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %assert_end67, label %assert_fail66, !prof !4

assert_fail66:                                    ; preds = %assert_end65
  %166 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %166(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.28, i64 0, i64 0))
  br label %common.ret

assert_end67:                                     ; preds = %assert_end65
  %167 = getelementptr inbounds %1, %1* %arg273, i64 0, i32 1, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %dev_id, %168
  br i1 %169, label %assert_end69, label %assert_fail68, !prof !4

assert_fail68:                                    ; preds = %assert_end67
  %170 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %170(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.29, i64 0, i64 0))
  br label %common.ret

assert_end69:                                     ; preds = %assert_end67
  %171 = tail call fastcc i32 @tvmgen_default_fused_nn_bias_add_compute_(i8* %T_add, i8* %placeholder, i8* %placeholder70)
  br label %common.ret
}

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #0

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_nn_bias_add_compute_(i8* noalias align 128 %0, i8* noalias align 128 %1, i8* noalias align 128 %2) unnamed_addr #1 {
entry:
  %3 = alloca %closure_loop_parallel_ax0.ax1.fused, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused, %closure_loop_parallel_ax0.ax1.fused* %3, i64 0, i32 0
  store i8* %0, i8** %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused, %closure_loop_parallel_ax0.ax1.fused* %3, i64 0, i32 1
  store i8* %1, i8** %5, align 8
  %6 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused, %closure_loop_parallel_ax0.ax1.fused* %3, i64 0, i32 2
  store i8* %2, i8** %6, align 8
  %7 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !5
  %8 = bitcast %closure_loop_parallel_ax0.ax1.fused* %3 to i8*
  %9 = call i32 %7(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda, i8* nonnull %8, i32 0)
  ret i32 %9
}

; Function Attrs: nofree norecurse nosync nounwind
define private i32 @__tvm_parallel_lambda(i32 %0, %0* nocapture readonly %1, i8* nocapture readonly %2) #2 {
parallel_closure_entry:
  %3 = bitcast i8* %2 to float**
  %4 = load float*, float** %3, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr inbounds i8, i8* %2, i64 16
  %9 = bitcast i8* %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr inbounds %0, %0* %1, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 15
  %14 = sdiv i32 %13, %12
  %15 = add nsw i32 %0, 1
  %16 = mul nsw i32 %14, %15
  %17 = icmp slt i32 %16, 16
  %18 = select i1 %17, i32 %16, i32 16
  %19 = mul nsw i32 %14, %0
  %20 = icmp slt i32 %19, 16
  %21 = select i1 %20, i32 %19, i32 16
  %22 = icmp slt i32 %21, %18
  br i1 %22, label %for_begin_ax2.preheader.preheader, label %for_end_ax0.ax1.fused, !prof !4

for_begin_ax2.preheader.preheader:                ; preds = %parallel_closure_entry
  %23 = sext i32 %21 to i64
  %wide.trip.count = sext i32 %18 to i64
  br label %for_begin_ax2.preheader

for_begin_ax2.preheader:                          ; preds = %for_begin_ax2.preheader.preheader, %for_end_ax2
  %indvars.iv12 = phi i64 [ %23, %for_begin_ax2.preheader.preheader ], [ %indvars.iv.next13, %for_end_ax2 ]
  %24 = mul nsw i64 %indvars.iv12, 729
  %25 = getelementptr inbounds float, float* %10, i64 %indvars.iv12
  %26 = load float, float* %25, align 4, !tbaa !122
  %27 = add i64 %24, 1
  %28 = add i64 %24, 2
  %29 = add i64 %24, 3
  %30 = add i64 %24, 4
  %31 = add i64 %24, 5
  %32 = add i64 %24, 6
  %33 = load float, float* %25, align 4, !tbaa !122
  %34 = add i64 %24, 7
  %35 = add i64 %24, 8
  %36 = add i64 %24, 9
  %37 = add i64 %24, 10
  %38 = add i64 %24, 11
  %39 = add i64 %24, 12
  %40 = load float, float* %25, align 4, !tbaa !122
  %41 = add i64 %24, 13
  %42 = add i64 %24, 14
  %43 = add i64 %24, 15
  %44 = add i64 %24, 16
  %45 = add i64 %24, 17
  %46 = add i64 %24, 18
  %47 = load float, float* %25, align 4, !tbaa !122
  %48 = add i64 %24, 19
  %49 = add i64 %24, 20
  %50 = add i64 %24, 21
  %51 = add i64 %24, 22
  %52 = add i64 %24, 23
  %53 = add i64 %24, 24
  %54 = load float, float* %25, align 4, !tbaa !122
  %55 = add i64 %24, 25
  %56 = add i64 %24, 26
  br label %if_end.15.1

for_end_ax0.ax1.fused:                            ; preds = %for_end_ax2, %parallel_closure_entry
  ret i32 0

for_end_ax2:                                      ; preds = %if_end.15.1
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, 1
  %exitcond15.not = icmp eq i64 %indvars.iv.next13, %wide.trip.count
  br i1 %exitcond15.not, label %for_end_ax0.ax1.fused, label %for_begin_ax2.preheader, !prof !48

if_end.15.1:                                      ; preds = %if_end.15.1, %for_begin_ax2.preheader
  %indvars.iv = phi i64 [ 0, %for_begin_ax2.preheader ], [ %indvars.iv.next, %if_end.15.1 ]
  %57 = mul nuw nsw i64 %indvars.iv, 27
  %cse_var_1 = add i64 %24, %57
  %sext = shl i64 %cse_var_1, 32
  %58 = ashr exact i64 %sext, 32
  %59 = getelementptr inbounds float, float* %7, i64 %58
  %60 = load float, float* %59, align 4, !tbaa !125
  %61 = fadd float %26, %60
  %62 = getelementptr inbounds float, float* %4, i64 %58
  store float %61, float* %62, align 4, !tbaa !128
  %cse_var_1.1 = add i64 %27, %57
  %sext16 = shl i64 %cse_var_1.1, 32
  %63 = ashr exact i64 %sext16, 32
  %64 = getelementptr inbounds float, float* %7, i64 %63
  %65 = load float, float* %64, align 4, !tbaa !125
  %66 = fadd float %26, %65
  %67 = getelementptr inbounds float, float* %4, i64 %63
  store float %66, float* %67, align 4, !tbaa !128
  %cse_var_1.2 = add i64 %28, %57
  %sext17 = shl i64 %cse_var_1.2, 32
  %68 = ashr exact i64 %sext17, 32
  %69 = getelementptr inbounds float, float* %7, i64 %68
  %70 = load float, float* %69, align 4, !tbaa !125
  %71 = fadd float %26, %70
  %72 = getelementptr inbounds float, float* %4, i64 %68
  store float %71, float* %72, align 4, !tbaa !128
  %cse_var_1.3 = add i64 %29, %57
  %sext18 = shl i64 %cse_var_1.3, 32
  %73 = ashr exact i64 %sext18, 32
  %74 = getelementptr inbounds float, float* %7, i64 %73
  %75 = load float, float* %74, align 4, !tbaa !125
  %76 = fadd float %26, %75
  %77 = getelementptr inbounds float, float* %4, i64 %73
  store float %76, float* %77, align 4, !tbaa !128
  %cse_var_1.4 = add i64 %30, %57
  %sext19 = shl i64 %cse_var_1.4, 32
  %78 = ashr exact i64 %sext19, 32
  %79 = getelementptr inbounds float, float* %7, i64 %78
  %80 = load float, float* %79, align 4, !tbaa !125
  %81 = fadd float %26, %80
  %82 = getelementptr inbounds float, float* %4, i64 %78
  store float %81, float* %82, align 4, !tbaa !128
  %cse_var_1.5 = add i64 %31, %57
  %sext20 = shl i64 %cse_var_1.5, 32
  %83 = ashr exact i64 %sext20, 32
  %84 = getelementptr inbounds float, float* %7, i64 %83
  %85 = load float, float* %84, align 4, !tbaa !125
  %86 = fadd float %26, %85
  %87 = getelementptr inbounds float, float* %4, i64 %83
  store float %86, float* %87, align 4, !tbaa !128
  %cse_var_1.6 = add i64 %32, %57
  %sext21 = shl i64 %cse_var_1.6, 32
  %88 = ashr exact i64 %sext21, 32
  %89 = getelementptr inbounds float, float* %7, i64 %88
  %90 = load float, float* %89, align 4, !tbaa !125
  %91 = fadd float %33, %90
  %92 = getelementptr inbounds float, float* %4, i64 %88
  store float %91, float* %92, align 4, !tbaa !128
  %cse_var_1.7 = add i64 %34, %57
  %sext22 = shl i64 %cse_var_1.7, 32
  %93 = ashr exact i64 %sext22, 32
  %94 = getelementptr inbounds float, float* %7, i64 %93
  %95 = load float, float* %94, align 4, !tbaa !125
  %96 = fadd float %33, %95
  %97 = getelementptr inbounds float, float* %4, i64 %93
  store float %96, float* %97, align 4, !tbaa !128
  %cse_var_1.8 = add i64 %35, %57
  %sext23 = shl i64 %cse_var_1.8, 32
  %98 = ashr exact i64 %sext23, 32
  %99 = getelementptr inbounds float, float* %7, i64 %98
  %100 = load float, float* %99, align 4, !tbaa !125
  %101 = fadd float %33, %100
  %102 = getelementptr inbounds float, float* %4, i64 %98
  store float %101, float* %102, align 4, !tbaa !128
  %cse_var_1.9 = add i64 %36, %57
  %sext24 = shl i64 %cse_var_1.9, 32
  %103 = ashr exact i64 %sext24, 32
  %104 = getelementptr inbounds float, float* %7, i64 %103
  %105 = load float, float* %104, align 4, !tbaa !125
  %106 = fadd float %33, %105
  %107 = getelementptr inbounds float, float* %4, i64 %103
  store float %106, float* %107, align 4, !tbaa !128
  %cse_var_1.10 = add i64 %37, %57
  %sext25 = shl i64 %cse_var_1.10, 32
  %108 = ashr exact i64 %sext25, 32
  %109 = getelementptr inbounds float, float* %7, i64 %108
  %110 = load float, float* %109, align 4, !tbaa !125
  %111 = fadd float %33, %110
  %112 = getelementptr inbounds float, float* %4, i64 %108
  store float %111, float* %112, align 4, !tbaa !128
  %cse_var_1.11 = add i64 %38, %57
  %sext26 = shl i64 %cse_var_1.11, 32
  %113 = ashr exact i64 %sext26, 32
  %114 = getelementptr inbounds float, float* %7, i64 %113
  %115 = load float, float* %114, align 4, !tbaa !125
  %116 = fadd float %33, %115
  %117 = getelementptr inbounds float, float* %4, i64 %113
  store float %116, float* %117, align 4, !tbaa !128
  %cse_var_1.12 = add i64 %39, %57
  %sext27 = shl i64 %cse_var_1.12, 32
  %118 = ashr exact i64 %sext27, 32
  %119 = getelementptr inbounds float, float* %7, i64 %118
  %120 = load float, float* %119, align 4, !tbaa !125
  %121 = fadd float %40, %120
  %122 = getelementptr inbounds float, float* %4, i64 %118
  store float %121, float* %122, align 4, !tbaa !128
  %cse_var_1.13 = add i64 %41, %57
  %sext28 = shl i64 %cse_var_1.13, 32
  %123 = ashr exact i64 %sext28, 32
  %124 = getelementptr inbounds float, float* %7, i64 %123
  %125 = load float, float* %124, align 4, !tbaa !125
  %126 = fadd float %40, %125
  %127 = getelementptr inbounds float, float* %4, i64 %123
  store float %126, float* %127, align 4, !tbaa !128
  %cse_var_1.14 = add i64 %42, %57
  %sext29 = shl i64 %cse_var_1.14, 32
  %128 = ashr exact i64 %sext29, 32
  %129 = getelementptr inbounds float, float* %7, i64 %128
  %130 = load float, float* %129, align 4, !tbaa !125
  %131 = fadd float %40, %130
  %132 = getelementptr inbounds float, float* %4, i64 %128
  store float %131, float* %132, align 4, !tbaa !128
  %cse_var_1.15 = add i64 %43, %57
  %sext30 = shl i64 %cse_var_1.15, 32
  %133 = ashr exact i64 %sext30, 32
  %134 = getelementptr inbounds float, float* %7, i64 %133
  %135 = load float, float* %134, align 4, !tbaa !125
  %136 = fadd float %40, %135
  %137 = getelementptr inbounds float, float* %4, i64 %133
  store float %136, float* %137, align 4, !tbaa !128
  %cse_var_1.18 = add i64 %44, %57
  %sext31 = shl i64 %cse_var_1.18, 32
  %138 = ashr exact i64 %sext31, 32
  %139 = getelementptr inbounds float, float* %7, i64 %138
  %140 = load float, float* %139, align 4, !tbaa !125
  %141 = fadd float %40, %140
  %142 = getelementptr inbounds float, float* %4, i64 %138
  store float %141, float* %142, align 4, !tbaa !128
  %cse_var_1.1.1 = add i64 %45, %57
  %sext32 = shl i64 %cse_var_1.1.1, 32
  %143 = ashr exact i64 %sext32, 32
  %144 = getelementptr inbounds float, float* %7, i64 %143
  %145 = load float, float* %144, align 4, !tbaa !125
  %146 = fadd float %40, %145
  %147 = getelementptr inbounds float, float* %4, i64 %143
  store float %146, float* %147, align 4, !tbaa !128
  %cse_var_1.2.1 = add i64 %46, %57
  %sext33 = shl i64 %cse_var_1.2.1, 32
  %148 = ashr exact i64 %sext33, 32
  %149 = getelementptr inbounds float, float* %7, i64 %148
  %150 = load float, float* %149, align 4, !tbaa !125
  %151 = fadd float %47, %150
  %152 = getelementptr inbounds float, float* %4, i64 %148
  store float %151, float* %152, align 4, !tbaa !128
  %cse_var_1.3.1 = add i64 %48, %57
  %sext34 = shl i64 %cse_var_1.3.1, 32
  %153 = ashr exact i64 %sext34, 32
  %154 = getelementptr inbounds float, float* %7, i64 %153
  %155 = load float, float* %154, align 4, !tbaa !125
  %156 = fadd float %47, %155
  %157 = getelementptr inbounds float, float* %4, i64 %153
  store float %156, float* %157, align 4, !tbaa !128
  %cse_var_1.4.1 = add i64 %49, %57
  %sext35 = shl i64 %cse_var_1.4.1, 32
  %158 = ashr exact i64 %sext35, 32
  %159 = getelementptr inbounds float, float* %7, i64 %158
  %160 = load float, float* %159, align 4, !tbaa !125
  %161 = fadd float %47, %160
  %162 = getelementptr inbounds float, float* %4, i64 %158
  store float %161, float* %162, align 4, !tbaa !128
  %cse_var_1.5.1 = add i64 %50, %57
  %sext36 = shl i64 %cse_var_1.5.1, 32
  %163 = ashr exact i64 %sext36, 32
  %164 = getelementptr inbounds float, float* %7, i64 %163
  %165 = load float, float* %164, align 4, !tbaa !125
  %166 = fadd float %47, %165
  %167 = getelementptr inbounds float, float* %4, i64 %163
  store float %166, float* %167, align 4, !tbaa !128
  %cse_var_1.6.1 = add i64 %51, %57
  %sext37 = shl i64 %cse_var_1.6.1, 32
  %168 = ashr exact i64 %sext37, 32
  %169 = getelementptr inbounds float, float* %7, i64 %168
  %170 = load float, float* %169, align 4, !tbaa !125
  %171 = fadd float %47, %170
  %172 = getelementptr inbounds float, float* %4, i64 %168
  store float %171, float* %172, align 4, !tbaa !128
  %cse_var_1.7.1 = add i64 %52, %57
  %sext38 = shl i64 %cse_var_1.7.1, 32
  %173 = ashr exact i64 %sext38, 32
  %174 = getelementptr inbounds float, float* %7, i64 %173
  %175 = load float, float* %174, align 4, !tbaa !125
  %176 = fadd float %47, %175
  %177 = getelementptr inbounds float, float* %4, i64 %173
  store float %176, float* %177, align 4, !tbaa !128
  %cse_var_1.8.1 = add i64 %53, %57
  %sext39 = shl i64 %cse_var_1.8.1, 32
  %178 = ashr exact i64 %sext39, 32
  %179 = getelementptr inbounds float, float* %7, i64 %178
  %180 = load float, float* %179, align 4, !tbaa !125
  %181 = fadd float %54, %180
  %182 = getelementptr inbounds float, float* %4, i64 %178
  store float %181, float* %182, align 4, !tbaa !128
  %cse_var_1.9.1 = add i64 %55, %57
  %sext40 = shl i64 %cse_var_1.9.1, 32
  %183 = ashr exact i64 %sext40, 32
  %184 = getelementptr inbounds float, float* %7, i64 %183
  %185 = load float, float* %184, align 4, !tbaa !125
  %186 = fadd float %54, %185
  %187 = getelementptr inbounds float, float* %4, i64 %183
  store float %186, float* %187, align 4, !tbaa !128
  %cse_var_1.10.1 = add i64 %56, %57
  %sext41 = shl i64 %cse_var_1.10.1, 32
  %188 = ashr exact i64 %sext41, 32
  %189 = getelementptr inbounds float, float* %7, i64 %188
  %190 = load float, float* %189, align 4, !tbaa !125
  %191 = fadd float %54, %190
  %192 = getelementptr inbounds float, float* %4, i64 %188
  store float %191, float* %192, align 4, !tbaa !128
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 27
  br i1 %exitcond.not, label %for_end_ax2, label %if_end.15.1, !prof !48
}

define dllexport i32 @tvmgen_default_fused_nn_conv2d(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 3
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end75, %assert_fail74, %assert_fail72, %assert_fail70, %assert_fail68, %assert_fail64, %assert_fail62, %assert_fail60, %assert_fail58, %assert_fail56, %assert_fail52, %assert_fail50, %assert_fail48, %assert_fail46, %assert_fail44, %assert_fail40, %assert_fail38, %assert_fail36, %assert_fail34, %assert_fail32, %assert_fail28, %assert_fail26, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail12, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail2, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail2 ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail12 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail26 ], [ -1, %assert_fail28 ], [ -1, %assert_fail32 ], [ -1, %assert_fail34 ], [ -1, %assert_fail36 ], [ -1, %assert_fail38 ], [ -1, %assert_fail40 ], [ -1, %assert_fail44 ], [ -1, %assert_fail46 ], [ -1, %assert_fail48 ], [ -1, %assert_fail50 ], [ -1, %assert_fail52 ], [ -1, %assert_fail56 ], [ -1, %assert_fail58 ], [ -1, %assert_fail60 ], [ -1, %assert_fail62 ], [ -1, %assert_fail64 ], [ -1, %assert_fail68 ], [ -1, %assert_fail70 ], [ -1, %assert_fail72 ], [ -1, %assert_fail74 ], [ %189, %assert_end75 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.30, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %1**
  %arg077 = load %1*, %1** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !131
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %1**
  %arg178 = load %1*, %1** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !145
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %1**
  %arg279 = load %1*, %1** %15, align 8
  %16 = getelementptr inbounds i8, i8* %1, i64 8
  %17 = bitcast i8* %16 to i32*
  %arg2.code = load i32, i32* %17, align 4, !tbaa !147
  %18 = getelementptr inbounds %1, %1* %arg077, i64 0, i32 0
  %placeholder = load i8*, i8** %18, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %placeholder, i64 128) ]
  %19 = getelementptr inbounds %1, %1* %arg077, i64 0, i32 4
  %arg0.shape = load i64*, i64** %19, align 8
  %20 = getelementptr inbounds %1, %1* %arg077, i64 0, i32 5
  %arg0.strides = load i64*, i64** %20, align 8
  %21 = getelementptr inbounds %1, %1* %arg077, i64 0, i32 1, i32 1
  %dev_id = load i32, i32* %21, align 4
  %22 = getelementptr inbounds %1, %1* %arg178, i64 0, i32 0
  %placeholder76 = load i8*, i8** %22, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %placeholder76, i64 128) ]
  %23 = getelementptr inbounds %1, %1* %arg178, i64 0, i32 4
  %arg1.shape = load i64*, i64** %23, align 8
  %24 = getelementptr inbounds %1, %1* %arg178, i64 0, i32 5
  %arg1.strides = load i64*, i64** %24, align 8
  %25 = getelementptr inbounds %1, %1* %arg279, i64 0, i32 0
  %output_unpack = load i8*, i8** %25, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %output_unpack, i64 128) ]
  %26 = getelementptr inbounds %1, %1* %arg279, i64 0, i32 4
  %arg2.shape = load i64*, i64** %26, align 8
  %27 = getelementptr inbounds %1, %1* %arg279, i64 0, i32 5
  %arg2.strides = load i64*, i64** %27, align 8
  switch i32 %arg0.code, label %assert_fail2 [
    i32 13, label %assert_end3
    i32 7, label %assert_end3
    i32 4, label %assert_end3
    i32 3, label %assert_end3
  ]

assert_fail2:                                     ; preds = %assert_end
  %28 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %28(i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.31, i64 0, i64 0))
  br label %common.ret

assert_end3:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  switch i32 %arg1.code, label %assert_fail4 [
    i32 13, label %assert_end5
    i32 7, label %assert_end5
    i32 4, label %assert_end5
    i32 3, label %assert_end5
  ]

assert_fail4:                                     ; preds = %assert_end3
  %29 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %29(i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.32, i64 0, i64 0))
  br label %common.ret

assert_end5:                                      ; preds = %assert_end3, %assert_end3, %assert_end3, %assert_end3
  switch i32 %arg2.code, label %assert_fail6 [
    i32 13, label %assert_end7
    i32 7, label %assert_end7
    i32 4, label %assert_end7
    i32 3, label %assert_end7
  ]

assert_fail6:                                     ; preds = %assert_end5
  %30 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %30(i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.33, i64 0, i64 0))
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  %31 = getelementptr inbounds %1, %1* %arg077, i64 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %assert_end11, label %assert_fail8, !prof !4

assert_fail8:                                     ; preds = %assert_end7
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %34(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0))
  br label %common.ret

assert_end11:                                     ; preds = %assert_end7
  %35 = getelementptr inbounds %1, %1* %arg077, i64 0, i32 3, i32 2
  %36 = load i16, i16* %35, align 2
  %37 = icmp eq i16 %36, 1
  %38 = getelementptr inbounds %1, %1* %arg077, i64 0, i32 3, i32 1
  %39 = load i8, i8* %38, align 1
  %40 = icmp eq i8 %39, 32
  %41 = getelementptr inbounds %1, %1* %arg077, i64 0, i32 3, i32 0
  %42 = load i8, i8* %41, align 1
  %43 = icmp eq i8 %42, 2
  %44 = and i1 %40, %43
  %45 = and i1 %37, %44
  br i1 %45, label %assert_end13, label %assert_fail12, !prof !4

assert_fail12:                                    ; preds = %assert_end11
  %46 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %46(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.5, i64 0, i64 0))
  br label %common.ret

assert_end13:                                     ; preds = %assert_end11
  %47 = load i64, i64* %arg0.shape, align 8, !tbaa !150
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %assert_end15, label %assert_fail14, !prof !4

assert_fail14:                                    ; preds = %assert_end13
  %50 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %50(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.6, i64 0, i64 0))
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %51 = getelementptr inbounds i64, i64* %arg0.shape, i64 1
  %52 = load i64, i64* %51, align 8, !tbaa !164
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %assert_end17, label %assert_fail16, !prof !4

assert_fail16:                                    ; preds = %assert_end15
  %55 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %55(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.34, i64 0, i64 0))
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %56 = getelementptr inbounds i64, i64* %arg0.shape, i64 2
  %57 = load i64, i64* %56, align 8, !tbaa !166
  %58 = trunc i64 %57 to i32
  %59 = icmp eq i32 %58, 28
  br i1 %59, label %assert_end19, label %assert_fail18, !prof !4

assert_fail18:                                    ; preds = %assert_end17
  %60 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %60(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.35, i64 0, i64 0))
  br label %common.ret

assert_end19:                                     ; preds = %assert_end17
  %61 = getelementptr inbounds i64, i64* %arg0.shape, i64 3
  %62 = load i64, i64* %61, align 8, !tbaa !169
  %63 = trunc i64 %62 to i32
  %64 = icmp eq i32 %63, 28
  br i1 %64, label %assert_end21, label %assert_fail20, !prof !4

assert_fail20:                                    ; preds = %assert_end19
  %65 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %65(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.36, i64 0, i64 0))
  br label %common.ret

assert_end21:                                     ; preds = %assert_end19
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !48

if_then:                                          ; preds = %assert_end21
  %66 = bitcast i64* %arg0.strides to <4 x i64>*
  %67 = load <4 x i64>, <4 x i64>* %66, align 8, !tbaa !171
  %68 = trunc <4 x i64> %67 to <4 x i32>
  %69 = icmp ne <4 x i32> %68, <i32 784, i32 784, i32 28, i32 1>
  %70 = bitcast <4 x i1> %69 to i4
  %71 = icmp eq i4 %70, 0
  br i1 %71, label %if_end, label %assert_fail22, !prof !4

if_end:                                           ; preds = %if_then, %assert_end21
  %72 = getelementptr inbounds %1, %1* %arg077, i64 0, i32 6
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %assert_end25, label %assert_fail24, !prof !4

assert_fail22:                                    ; preds = %if_then
  %75 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %75(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.37, i64 0, i64 0))
  br label %common.ret

assert_fail24:                                    ; preds = %if_end
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %76(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.11, i64 0, i64 0))
  br label %common.ret

assert_end25:                                     ; preds = %if_end
  %77 = getelementptr inbounds %1, %1* %arg077, i64 0, i32 1, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %assert_end27, label %assert_fail26, !prof !4

assert_fail26:                                    ; preds = %assert_end25
  %80 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %80(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.12, i64 0, i64 0))
  br label %common.ret

assert_end27:                                     ; preds = %assert_end25
  %81 = getelementptr inbounds %1, %1* %arg178, i64 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %assert_end31, label %assert_fail28, !prof !4

assert_fail28:                                    ; preds = %assert_end27
  %84 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %84(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.38, i64 0, i64 0))
  br label %common.ret

assert_end31:                                     ; preds = %assert_end27
  %85 = getelementptr inbounds %1, %1* %arg178, i64 0, i32 3, i32 2
  %86 = load i16, i16* %85, align 2
  %87 = icmp eq i16 %86, 1
  %88 = getelementptr inbounds %1, %1* %arg178, i64 0, i32 3, i32 1
  %89 = load i8, i8* %88, align 1
  %90 = icmp eq i8 %89, 32
  %91 = getelementptr inbounds %1, %1* %arg178, i64 0, i32 3, i32 0
  %92 = load i8, i8* %91, align 1
  %93 = icmp eq i8 %92, 2
  %94 = and i1 %90, %93
  %95 = and i1 %87, %94
  br i1 %95, label %assert_end33, label %assert_fail32, !prof !4

assert_fail32:                                    ; preds = %assert_end31
  %96 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %96(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.14, i64 0, i64 0))
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %97 = load i64, i64* %arg1.shape, align 8, !tbaa !183
  %98 = trunc i64 %97 to i32
  %99 = icmp eq i32 %98, 16
  br i1 %99, label %assert_end35, label %assert_fail34, !prof !4

assert_fail34:                                    ; preds = %assert_end33
  %100 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %100(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.15, i64 0, i64 0))
  br label %common.ret

assert_end35:                                     ; preds = %assert_end33
  %101 = getelementptr inbounds i64, i64* %arg1.shape, i64 1
  %102 = load i64, i64* %101, align 8, !tbaa !197
  %103 = trunc i64 %102 to i32
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %assert_end37, label %assert_fail36, !prof !4

assert_fail36:                                    ; preds = %assert_end35
  %105 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %105(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.39, i64 0, i64 0))
  br label %common.ret

assert_end37:                                     ; preds = %assert_end35
  %106 = getelementptr inbounds i64, i64* %arg1.shape, i64 2
  %107 = load i64, i64* %106, align 8, !tbaa !199
  %108 = trunc i64 %107 to i32
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %assert_end39, label %assert_fail38, !prof !4

assert_fail38:                                    ; preds = %assert_end37
  %110 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %110(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.40, i64 0, i64 0))
  br label %common.ret

assert_end39:                                     ; preds = %assert_end37
  %111 = getelementptr inbounds i64, i64* %arg1.shape, i64 3
  %112 = load i64, i64* %111, align 8, !tbaa !202
  %113 = trunc i64 %112 to i32
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %assert_end41, label %assert_fail40, !prof !4

assert_fail40:                                    ; preds = %assert_end39
  %115 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %115(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.41, i64 0, i64 0))
  br label %common.ret

assert_end41:                                     ; preds = %assert_end39
  %.not80 = icmp eq i64* %arg1.strides, null
  br i1 %.not80, label %if_end43, label %if_then42, !prof !48

if_then42:                                        ; preds = %assert_end41
  %116 = bitcast i64* %arg1.strides to <4 x i64>*
  %117 = load <4 x i64>, <4 x i64>* %116, align 8, !tbaa !204
  %118 = trunc <4 x i64> %117 to <4 x i32>
  %119 = icmp ne <4 x i32> %118, <i32 4, i32 4, i32 2, i32 1>
  %120 = bitcast <4 x i1> %119 to i4
  %121 = icmp eq i4 %120, 0
  br i1 %121, label %if_end43, label %assert_fail44, !prof !4

if_end43:                                         ; preds = %if_then42, %assert_end41
  %122 = getelementptr inbounds %1, %1* %arg178, i64 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %assert_end47, label %assert_fail46, !prof !4

assert_fail44:                                    ; preds = %if_then42
  %125 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %125(i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.42, i64 0, i64 0))
  br label %common.ret

assert_fail46:                                    ; preds = %if_end43
  %126 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %126(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.17, i64 0, i64 0))
  br label %common.ret

assert_end47:                                     ; preds = %if_end43
  %127 = getelementptr inbounds %1, %1* %arg178, i64 0, i32 1, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %assert_end49, label %assert_fail48, !prof !4

assert_fail48:                                    ; preds = %assert_end47
  %130 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %130(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.18, i64 0, i64 0))
  br label %common.ret

assert_end49:                                     ; preds = %assert_end47
  %131 = getelementptr inbounds %1, %1* %arg178, i64 0, i32 1, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp eq i32 %dev_id, %132
  br i1 %133, label %assert_end51, label %assert_fail50, !prof !4

assert_fail50:                                    ; preds = %assert_end49
  %134 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %134(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.19, i64 0, i64 0))
  br label %common.ret

assert_end51:                                     ; preds = %assert_end49
  %135 = getelementptr inbounds %1, %1* %arg279, i64 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 4
  br i1 %137, label %assert_end55, label %assert_fail52, !prof !4

assert_fail52:                                    ; preds = %assert_end51
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %138(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.20, i64 0, i64 0))
  br label %common.ret

assert_end55:                                     ; preds = %assert_end51
  %139 = getelementptr inbounds %1, %1* %arg279, i64 0, i32 3, i32 2
  %140 = load i16, i16* %139, align 2
  %141 = icmp eq i16 %140, 1
  %142 = getelementptr inbounds %1, %1* %arg279, i64 0, i32 3, i32 1
  %143 = load i8, i8* %142, align 1
  %144 = icmp eq i8 %143, 32
  %145 = getelementptr inbounds %1, %1* %arg279, i64 0, i32 3, i32 0
  %146 = load i8, i8* %145, align 1
  %147 = icmp eq i8 %146, 2
  %148 = and i1 %144, %147
  %149 = and i1 %141, %148
  br i1 %149, label %assert_end57, label %assert_fail56, !prof !4

assert_fail56:                                    ; preds = %assert_end55
  %150 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %150(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.21, i64 0, i64 0))
  br label %common.ret

assert_end57:                                     ; preds = %assert_end55
  %151 = load i64, i64* %arg2.shape, align 8, !tbaa !216
  %152 = trunc i64 %151 to i32
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %assert_end59, label %assert_fail58, !prof !4

assert_fail58:                                    ; preds = %assert_end57
  %154 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %154(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.22, i64 0, i64 0))
  br label %common.ret

assert_end59:                                     ; preds = %assert_end57
  %155 = getelementptr inbounds i64, i64* %arg2.shape, i64 1
  %156 = load i64, i64* %155, align 8, !tbaa !230
  %157 = trunc i64 %156 to i32
  %158 = icmp eq i32 %157, 16
  br i1 %158, label %assert_end61, label %assert_fail60, !prof !4

assert_fail60:                                    ; preds = %assert_end59
  %159 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %159(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.23, i64 0, i64 0))
  br label %common.ret

assert_end61:                                     ; preds = %assert_end59
  %160 = getelementptr inbounds i64, i64* %arg2.shape, i64 2
  %161 = load i64, i64* %160, align 8, !tbaa !232
  %162 = trunc i64 %161 to i32
  %163 = icmp eq i32 %162, 27
  br i1 %163, label %assert_end63, label %assert_fail62, !prof !4

assert_fail62:                                    ; preds = %assert_end61
  %164 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %164(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.24, i64 0, i64 0))
  br label %common.ret

assert_end63:                                     ; preds = %assert_end61
  %165 = getelementptr inbounds i64, i64* %arg2.shape, i64 3
  %166 = load i64, i64* %165, align 8, !tbaa !235
  %167 = trunc i64 %166 to i32
  %168 = icmp eq i32 %167, 27
  br i1 %168, label %assert_end65, label %assert_fail64, !prof !4

assert_fail64:                                    ; preds = %assert_end63
  %169 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %169(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.25, i64 0, i64 0))
  br label %common.ret

assert_end65:                                     ; preds = %assert_end63
  %.not81 = icmp eq i64* %arg2.strides, null
  br i1 %.not81, label %if_end67, label %if_then66, !prof !48

if_then66:                                        ; preds = %assert_end65
  %170 = bitcast i64* %arg2.strides to <4 x i64>*
  %171 = load <4 x i64>, <4 x i64>* %170, align 8, !tbaa !237
  %172 = trunc <4 x i64> %171 to <4 x i32>
  %173 = icmp ne <4 x i32> %172, <i32 11664, i32 729, i32 27, i32 1>
  %174 = bitcast <4 x i1> %173 to i4
  %175 = icmp eq i4 %174, 0
  br i1 %175, label %if_end67, label %assert_fail68, !prof !4

if_end67:                                         ; preds = %if_then66, %assert_end65
  %176 = getelementptr inbounds %1, %1* %arg279, i64 0, i32 6
  %177 = load i64, i64* %176, align 8
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %assert_end71, label %assert_fail70, !prof !4

assert_fail68:                                    ; preds = %if_then66
  %179 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %179(i8* getelementptr inbounds ([199 x i8], [199 x i8]* @.str.26, i64 0, i64 0))
  br label %common.ret

assert_fail70:                                    ; preds = %if_end67
  %180 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %180(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.27, i64 0, i64 0))
  br label %common.ret

assert_end71:                                     ; preds = %if_end67
  %181 = getelementptr inbounds %1, %1* %arg279, i64 0, i32 1, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %assert_end73, label %assert_fail72, !prof !4

assert_fail72:                                    ; preds = %assert_end71
  %184 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %184(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.28, i64 0, i64 0))
  br label %common.ret

assert_end73:                                     ; preds = %assert_end71
  %185 = getelementptr inbounds %1, %1* %arg279, i64 0, i32 1, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %dev_id, %186
  br i1 %187, label %assert_end75, label %assert_fail74, !prof !4

assert_fail74:                                    ; preds = %assert_end73
  %188 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %188(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.29, i64 0, i64 0))
  br label %common.ret

assert_end75:                                     ; preds = %assert_end73
  %189 = tail call fastcc i32 @tvmgen_default_fused_nn_conv2d_compute_(i8* %placeholder, i8* %placeholder76, i8* %output_unpack, i32 %dev_id)
  br label %common.ret
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_nn_conv2d_compute_(i8* noalias align 128 %0, i8* noalias align 128 %1, i8* noalias align 128 %2, i32 %3) unnamed_addr #1 {
entry:
  %kernel_vec10 = alloca [16 x <4 x float>], align 16
  %kernel_vec10.sub = getelementptr inbounds [16 x <4 x float>], [16 x <4 x float>]* %kernel_vec10, i64 0, i64 0
  %4 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !5
  %data_vec = tail call i8* %4(i32 1, i32 %3, i64 3136, i32 2, i32 32)
  call void @llvm.assume(i1 true) [ "align"(i8* %data_vec, i64 128) ]
  %5 = icmp eq i8* %data_vec, null
  br i1 %5, label %common.ret, label %if_end, !prof !4

common.ret:                                       ; preds = %call_end4, %call_end2, %call_end, %if_end, %entry
  %common.ret.op = phi i32 [ -1, %entry ], [ %11, %if_end ], [ %18, %call_end ], [ %26, %call_end2 ], [ %., %call_end4 ]
  ret i32 %common.ret.op

if_end:                                           ; preds = %entry
  %6 = alloca %closure_loop_parallel_bs.c.fused.h.fused, align 8
  %7 = getelementptr inbounds %closure_loop_parallel_bs.c.fused.h.fused, %closure_loop_parallel_bs.c.fused.h.fused* %6, i64 0, i32 0
  store i8* %data_vec, i8** %7, align 8
  %8 = getelementptr inbounds %closure_loop_parallel_bs.c.fused.h.fused, %closure_loop_parallel_bs.c.fused.h.fused* %6, i64 0, i32 1
  store i8* %0, i8** %8, align 8
  %9 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !5
  %10 = bitcast %closure_loop_parallel_bs.c.fused.h.fused* %6 to i8*
  %11 = call i32 %9(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.43, i8* nonnull %10, i32 0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %call_end, label %common.ret, !prof !4

call_end:                                         ; preds = %if_end
  %13 = alloca %closure_loop_parallel_occ.k_h.fused, align 8
  %14 = getelementptr inbounds %closure_loop_parallel_occ.k_h.fused, %closure_loop_parallel_occ.k_h.fused* %13, i64 0, i32 0
  store <4 x float>* %kernel_vec10.sub, <4 x float>** %14, align 8
  %15 = getelementptr inbounds %closure_loop_parallel_occ.k_h.fused, %closure_loop_parallel_occ.k_h.fused* %13, i64 0, i32 1
  store i8* %1, i8** %15, align 8
  %16 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !5
  %17 = bitcast %closure_loop_parallel_occ.k_h.fused* %13 to i8*
  %18 = call i32 %16(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.44, i8* nonnull %17, i32 0)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %call_end2, label %common.ret, !prof !4

call_end2:                                        ; preds = %call_end
  %20 = alloca %closure_loop_parallel_n.c.outer.fused.h.fused, align 8
  %21 = getelementptr inbounds %closure_loop_parallel_n.c.outer.fused.h.fused, %closure_loop_parallel_n.c.outer.fused.h.fused* %20, i64 0, i32 0
  store i8* %data_vec, i8** %21, align 8
  %22 = getelementptr inbounds %closure_loop_parallel_n.c.outer.fused.h.fused, %closure_loop_parallel_n.c.outer.fused.h.fused* %20, i64 0, i32 1
  store <4 x float>* %kernel_vec10.sub, <4 x float>** %22, align 8
  %23 = getelementptr inbounds %closure_loop_parallel_n.c.outer.fused.h.fused, %closure_loop_parallel_n.c.outer.fused.h.fused* %20, i64 0, i32 2
  store i8* %2, i8** %23, align 8
  %24 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !5
  %25 = bitcast %closure_loop_parallel_n.c.outer.fused.h.fused* %20 to i8*
  %26 = call i32 %24(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.45, i8* nonnull %25, i32 0)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %call_end4, label %common.ret, !prof !4

call_end4:                                        ; preds = %call_end2
  %28 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !5
  %29 = call i32 %28(i32 1, i32 %3, i8* nonnull %data_vec)
  %.not = icmp ne i32 %29, 0
  %. = sext i1 %.not to i32
  br label %common.ret
}

; Function Attrs: nofree norecurse nosync nounwind
define private i32 @__tvm_parallel_lambda.43(i32 %0, %0* nocapture readonly %1, i8* nocapture readonly %2) #2 {
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
  br i1 %19, label %for_begin_w.preheader.preheader, label %for_end_bs.c.fused.h.fused, !prof !4

for_begin_w.preheader.preheader:                  ; preds = %parallel_closure_entry
  %20 = sext i32 %18 to i64
  %wide.trip.count = sext i32 %15 to i64
  br label %for_begin_w.preheader

for_begin_w.preheader:                            ; preds = %for_begin_w.preheader.preheader, %for_begin_w.preheader
  %indvars.iv = phi i64 [ %20, %for_begin_w.preheader.preheader ], [ %indvars.iv.next, %for_begin_w.preheader ]
  %21 = mul nsw i64 %indvars.iv, 28
  %22 = getelementptr inbounds float, float* %7, i64 %21
  %23 = getelementptr inbounds float, float* %4, i64 %21
  %24 = bitcast float* %22 to <4 x float>*
  %25 = load <4 x float>, <4 x float>* %24, align 4, !tbaa !249
  %26 = bitcast float* %23 to <4 x float>*
  store <4 x float> %25, <4 x float>* %26, align 4, !tbaa !252
  %27 = add nsw i64 %21, 4
  %28 = getelementptr inbounds float, float* %7, i64 %27
  %29 = getelementptr inbounds float, float* %4, i64 %27
  %30 = bitcast float* %28 to <4 x float>*
  %31 = load <4 x float>, <4 x float>* %30, align 4, !tbaa !249
  %32 = bitcast float* %29 to <4 x float>*
  store <4 x float> %31, <4 x float>* %32, align 4, !tbaa !252
  %33 = add nsw i64 %21, 8
  %34 = getelementptr inbounds float, float* %7, i64 %33
  %35 = getelementptr inbounds float, float* %4, i64 %33
  %36 = bitcast float* %34 to <4 x float>*
  %37 = load <4 x float>, <4 x float>* %36, align 4, !tbaa !249
  %38 = bitcast float* %35 to <4 x float>*
  store <4 x float> %37, <4 x float>* %38, align 4, !tbaa !252
  %39 = add nsw i64 %21, 12
  %40 = getelementptr inbounds float, float* %7, i64 %39
  %41 = getelementptr inbounds float, float* %4, i64 %39
  %42 = bitcast float* %40 to <4 x float>*
  %43 = load <4 x float>, <4 x float>* %42, align 4, !tbaa !249
  %44 = bitcast float* %41 to <4 x float>*
  store <4 x float> %43, <4 x float>* %44, align 4, !tbaa !252
  %45 = add nsw i64 %21, 16
  %46 = getelementptr inbounds float, float* %7, i64 %45
  %47 = getelementptr inbounds float, float* %4, i64 %45
  %48 = bitcast float* %46 to <4 x float>*
  %49 = load <4 x float>, <4 x float>* %48, align 4, !tbaa !249
  %50 = bitcast float* %47 to <4 x float>*
  store <4 x float> %49, <4 x float>* %50, align 4, !tbaa !252
  %51 = add nsw i64 %21, 20
  %52 = getelementptr inbounds float, float* %7, i64 %51
  %53 = getelementptr inbounds float, float* %4, i64 %51
  %54 = bitcast float* %52 to <4 x float>*
  %55 = load <4 x float>, <4 x float>* %54, align 4, !tbaa !249
  %56 = bitcast float* %53 to <4 x float>*
  store <4 x float> %55, <4 x float>* %56, align 4, !tbaa !252
  %57 = add nsw i64 %21, 24
  %58 = getelementptr inbounds float, float* %7, i64 %57
  %59 = getelementptr inbounds float, float* %4, i64 %57
  %60 = bitcast float* %58 to <4 x float>*
  %61 = load <4 x float>, <4 x float>* %60, align 4, !tbaa !249
  %62 = bitcast float* %59 to <4 x float>*
  store <4 x float> %61, <4 x float>* %62, align 4, !tbaa !252
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for_end_bs.c.fused.h.fused, label %for_begin_w.preheader, !prof !48

for_end_bs.c.fused.h.fused:                       ; preds = %for_begin_w.preheader, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind
define private i32 @__tvm_parallel_lambda.44(i32 %0, %0* nocapture readonly %1, i8* nocapture readonly %2) #2 {
parallel_closure_entry:
  %3 = bitcast i8* %2 to float**
  %4 = load float*, float** %3, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr inbounds %0, %0* %1, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 7
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 8
  %15 = select i1 %14, i32 %13, i32 8
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 8
  %18 = select i1 %17, i32 %16, i32 8
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin_k_w.preheader.preheader, label %for_end_occ.k_h.fused, !prof !4

for_begin_k_w.preheader.preheader:                ; preds = %parallel_closure_entry
  %20 = sext i32 %18 to i64
  %wide.trip.count = sext i32 %15 to i64
  br label %for_begin_k_w.preheader

for_begin_k_w.preheader:                          ; preds = %for_begin_k_w.preheader.preheader, %for_begin_k_w.preheader
  %indvars.iv = phi i64 [ %20, %for_begin_k_w.preheader.preheader ], [ %indvars.iv.next, %for_begin_k_w.preheader ]
  %indvars4 = trunc i64 %indvars.iv to i32
  %21 = shl nsw i32 %indvars4, 3
  %22 = shl i32 %indvars4, 1
  %23 = and i32 %22, 2
  %24 = and i32 %21, -16
  %25 = or i32 %24, %23
  %26 = sext i32 %25 to i64
  %27 = sext i32 %21 to i64
  %28 = or i64 %26, 4
  %29 = or i64 %26, 8
  %30 = or i64 %26, 12
  %31 = getelementptr inbounds float, float* %7, i64 %26
  %32 = load float, float* %31, align 4, !tbaa !255
  %33 = insertelement <4 x float> undef, float %32, i64 0
  %34 = getelementptr inbounds float, float* %7, i64 %28
  %35 = load float, float* %34, align 4, !tbaa !255
  %36 = insertelement <4 x float> %33, float %35, i64 1
  %37 = getelementptr inbounds float, float* %7, i64 %29
  %38 = load float, float* %37, align 4, !tbaa !255
  %39 = insertelement <4 x float> %36, float %38, i64 2
  %40 = getelementptr inbounds float, float* %7, i64 %30
  %41 = load float, float* %40, align 4, !tbaa !255
  %42 = insertelement <4 x float> %39, float %41, i64 3
  %43 = getelementptr inbounds float, float* %4, i64 %27
  %44 = bitcast float* %43 to <4 x float>*
  store <4 x float> %42, <4 x float>* %44, align 16, !tbaa !258
  %45 = or i64 %27, 4
  %46 = or i64 %26, 1
  %47 = or i64 %26, 5
  %48 = or i64 %26, 9
  %49 = or i64 %26, 13
  %50 = getelementptr inbounds float, float* %7, i64 %46
  %51 = load float, float* %50, align 4, !tbaa !255
  %52 = insertelement <4 x float> undef, float %51, i64 0
  %53 = getelementptr inbounds float, float* %7, i64 %47
  %54 = load float, float* %53, align 4, !tbaa !255
  %55 = insertelement <4 x float> %52, float %54, i64 1
  %56 = getelementptr inbounds float, float* %7, i64 %48
  %57 = load float, float* %56, align 4, !tbaa !255
  %58 = insertelement <4 x float> %55, float %57, i64 2
  %59 = getelementptr inbounds float, float* %7, i64 %49
  %60 = load float, float* %59, align 4, !tbaa !255
  %61 = insertelement <4 x float> %58, float %60, i64 3
  %62 = getelementptr inbounds float, float* %4, i64 %45
  %63 = bitcast float* %62 to <4 x float>*
  store <4 x float> %61, <4 x float>* %63, align 16, !tbaa !258
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for_end_occ.k_h.fused, label %for_begin_k_w.preheader, !prof !48

for_end_occ.k_h.fused:                            ; preds = %for_begin_k_w.preheader, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: nofree nosync nounwind
define private i32 @__tvm_parallel_lambda.45(i32 %0, %0* nocapture readonly %1, i8* nocapture readonly %2) #3 {
parallel_closure_entry:
  %conv2d_NCHWc.global1 = alloca [27 x <4 x float>], align 16
  %conv2d_NCHWc.global1.sub = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0
  %3 = bitcast i8* %2 to float**
  %4 = load float*, float** %3, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr inbounds i8, i8* %2, i64 16
  %9 = bitcast i8* %8 to float**
  %10 = load float*, float** %9, align 8
  %11 = getelementptr inbounds %0, %0* %1, i64 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, 107
  %14 = sdiv i32 %13, %12
  %15 = add nsw i32 %0, 1
  %16 = mul nsw i32 %14, %15
  %17 = icmp slt i32 %16, 108
  %18 = select i1 %17, i32 %16, i32 108
  %19 = mul nsw i32 %14, %0
  %20 = icmp slt i32 %19, 108
  %21 = select i1 %20, i32 %19, i32 108
  %22 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 4
  %23 = bitcast float* %22 to <4 x float>*
  %24 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 8
  %25 = bitcast float* %24 to <4 x float>*
  %26 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 12
  %27 = bitcast float* %26 to <4 x float>*
  %28 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 16
  %29 = bitcast float* %28 to <4 x float>*
  %30 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 20
  %31 = bitcast float* %30 to <4 x float>*
  %32 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 24
  %33 = bitcast float* %32 to <4 x float>*
  %34 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 28
  %35 = bitcast float* %34 to <4 x float>*
  %36 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 32
  %37 = bitcast float* %36 to <4 x float>*
  %38 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 36
  %39 = bitcast float* %38 to <4 x float>*
  %40 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 40
  %41 = bitcast float* %40 to <4 x float>*
  %42 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 44
  %43 = bitcast float* %42 to <4 x float>*
  %44 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 48
  %45 = bitcast float* %44 to <4 x float>*
  %46 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 52
  %47 = bitcast float* %46 to <4 x float>*
  %48 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 56
  %49 = bitcast float* %48 to <4 x float>*
  %50 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 60
  %51 = bitcast float* %50 to <4 x float>*
  %52 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 64
  %53 = bitcast float* %52 to <4 x float>*
  %54 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 68
  %55 = bitcast float* %54 to <4 x float>*
  %56 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 72
  %57 = bitcast float* %56 to <4 x float>*
  %58 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 76
  %59 = bitcast float* %58 to <4 x float>*
  %60 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 80
  %61 = bitcast float* %60 to <4 x float>*
  %62 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 84
  %63 = bitcast float* %62 to <4 x float>*
  %64 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 88
  %65 = bitcast float* %64 to <4 x float>*
  %66 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 92
  %67 = bitcast float* %66 to <4 x float>*
  %68 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 96
  %69 = bitcast float* %68 to <4 x float>*
  %70 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 100
  %71 = bitcast float* %70 to <4 x float>*
  %72 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 104
  %73 = bitcast float* %72 to <4 x float>*
  %74 = icmp slt i32 %21, %18
  br i1 %74, label %for_body_n.c.outer.fused.h.fused.preheader, label %for_end_n.c.outer.fused.h.fused, !prof !4

for_body_n.c.outer.fused.h.fused.preheader:       ; preds = %parallel_closure_entry
  %75 = bitcast [27 x <4 x float>]* %conv2d_NCHWc.global1 to i8*
  br label %for_body_n.c.outer.fused.h.fused

for_body_n.c.outer.fused.h.fused:                 ; preds = %for_body_n.c.outer.fused.h.fused.preheader, %for_end_w.inner
  %n.c.outer.fused.h.fused136 = phi i32 [ %434, %for_end_w.inner ], [ %21, %for_body_n.c.outer.fused.h.fused.preheader ]
  %76 = srem i32 %n.c.outer.fused.h.fused136, 27
  %77 = sdiv i32 %n.c.outer.fused.h.fused136, 27
  %78 = shl nsw i32 %77, 4
  %79 = sext i32 %78 to i64
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 16 dereferenceable(432) %75, i8 0, i64 432, i1 false)
  br label %for_begin_kw.preheader

for_end_n.c.outer.fused.h.fused:                  ; preds = %for_end_w.inner, %parallel_closure_entry
  ret i32 0

for_begin_w.inner.preheader:                      ; preds = %for_begin_kw.preheader
  store <4 x float> %261, <4 x float>* %conv2d_NCHWc.global1.sub, align 16, !tbaa !261
  store <4 x float> %267, <4 x float>* %23, align 16, !tbaa !273
  store <4 x float> %273, <4 x float>* %25, align 16, !tbaa !275
  store <4 x float> %279, <4 x float>* %27, align 16, !tbaa !278
  store <4 x float> %285, <4 x float>* %29, align 16, !tbaa !280
  store <4 x float> %291, <4 x float>* %31, align 16, !tbaa !284
  store <4 x float> %297, <4 x float>* %33, align 16, !tbaa !286
  store <4 x float> %303, <4 x float>* %35, align 16, !tbaa !289
  store <4 x float> %309, <4 x float>* %37, align 16, !tbaa !291
  store <4 x float> %315, <4 x float>* %39, align 16, !tbaa !296
  store <4 x float> %321, <4 x float>* %41, align 16, !tbaa !298
  store <4 x float> %327, <4 x float>* %43, align 16, !tbaa !301
  store <4 x float> %333, <4 x float>* %45, align 16, !tbaa !303
  store <4 x float> %339, <4 x float>* %47, align 16, !tbaa !307
  store <4 x float> %345, <4 x float>* %49, align 16, !tbaa !309
  store <4 x float> %351, <4 x float>* %51, align 16, !tbaa !312
  store <4 x float> %357, <4 x float>* %53, align 16, !tbaa !314
  store <4 x float> %363, <4 x float>* %55, align 16, !tbaa !320
  store <4 x float> %369, <4 x float>* %57, align 16, !tbaa !322
  store <4 x float> %375, <4 x float>* %59, align 16, !tbaa !325
  store <4 x float> %381, <4 x float>* %61, align 16, !tbaa !327
  store <4 x float> %387, <4 x float>* %63, align 16, !tbaa !331
  store <4 x float> %393, <4 x float>* %65, align 16, !tbaa !333
  store <4 x float> %399, <4 x float>* %67, align 16, !tbaa !336
  store <4 x float> %405, <4 x float>* %69, align 16, !tbaa !338
  store <4 x float> %411, <4 x float>* %71, align 16, !tbaa !343
  store <4 x float> %417, <4 x float>* %73, align 16, !tbaa !345
  %80 = mul nsw i32 %76, 27
  %81 = mul nsw i32 %77, 2916
  %82 = add nsw i32 %81, %80
  %83 = sext i32 %82 to i64
  br label %for_body_w.inner

for_begin_kw.preheader:                           ; preds = %for_body_n.c.outer.fused.h.fused, %for_begin_kw.preheader
  %84 = phi i1 [ true, %for_body_n.c.outer.fused.h.fused ], [ false, %for_begin_kw.preheader ]
  %indvars.iv = phi i64 [ 0, %for_body_n.c.outer.fused.h.fused ], [ 1, %for_begin_kw.preheader ]
  %.lcssa55133 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %261, %for_begin_kw.preheader ]
  %.lcssa257132 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %267, %for_begin_kw.preheader ]
  %.lcssa458131 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %273, %for_begin_kw.preheader ]
  %.lcssa660130 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %279, %for_begin_kw.preheader ]
  %.lcssa862129 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %285, %for_begin_kw.preheader ]
  %.lcssa1064128 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %291, %for_begin_kw.preheader ]
  %.lcssa1266127 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %297, %for_begin_kw.preheader ]
  %.lcssa1468126 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %303, %for_begin_kw.preheader ]
  %.lcssa1670125 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %309, %for_begin_kw.preheader ]
  %.lcssa1872124 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %315, %for_begin_kw.preheader ]
  %.lcssa2074123 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %321, %for_begin_kw.preheader ]
  %.lcssa2276122 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %327, %for_begin_kw.preheader ]
  %.lcssa2478121 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %333, %for_begin_kw.preheader ]
  %.lcssa2680120 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %339, %for_begin_kw.preheader ]
  %.lcssa2882119 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %345, %for_begin_kw.preheader ]
  %.lcssa3084118 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %351, %for_begin_kw.preheader ]
  %.lcssa3286117 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %357, %for_begin_kw.preheader ]
  %.lcssa3488116 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %363, %for_begin_kw.preheader ]
  %.lcssa3690115 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %369, %for_begin_kw.preheader ]
  %.lcssa3892114 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %375, %for_begin_kw.preheader ]
  %.lcssa4094113 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %381, %for_begin_kw.preheader ]
  %.lcssa4296112 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %387, %for_begin_kw.preheader ]
  %.lcssa4498111 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %393, %for_begin_kw.preheader ]
  %.lcssa46100110 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %399, %for_begin_kw.preheader ]
  %.lcssa48102109 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %405, %for_begin_kw.preheader ]
  %.lcssa50104108 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %411, %for_begin_kw.preheader ]
  %.lcssa52106107 = phi <4 x float> [ zeroinitializer, %for_body_n.c.outer.fused.h.fused ], [ %417, %for_begin_kw.preheader ]
  %indvars166 = trunc i64 %indvars.iv to i32
  %85 = add nsw i32 %76, %indvars166
  %86 = mul nsw i32 %85, 28
  %87 = shl nuw nsw i64 %indvars.iv, 3
  %88 = or i64 %87, %79
  %89 = sext i32 %86 to i64
  %90 = getelementptr inbounds float, float* %4, i64 %89
  %91 = load float, float* %90, align 4, !tbaa !252
  %92 = insertelement <4 x float> undef, float %91, i64 0
  %93 = shufflevector <4 x float> %92, <4 x float> undef, <4 x i32> zeroinitializer
  %94 = getelementptr inbounds float, float* %7, i64 %88
  %95 = bitcast float* %94 to <4 x float>*
  %96 = load <4 x float>, <4 x float>* %95, align 16, !tbaa !258
  %97 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %93, <4 x float> %96, <4 x float> %.lcssa55133)
  %98 = or i64 %89, 1
  %99 = getelementptr inbounds float, float* %4, i64 %98
  %100 = load float, float* %99, align 4, !tbaa !252
  %101 = insertelement <4 x float> undef, float %100, i64 0
  %102 = shufflevector <4 x float> %101, <4 x float> undef, <4 x i32> zeroinitializer
  %103 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %102, <4 x float> %96, <4 x float> %.lcssa257132)
  %104 = or i64 %89, 2
  %105 = getelementptr inbounds float, float* %4, i64 %104
  %106 = load float, float* %105, align 4, !tbaa !252
  %107 = insertelement <4 x float> undef, float %106, i64 0
  %108 = shufflevector <4 x float> %107, <4 x float> undef, <4 x i32> zeroinitializer
  %109 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %108, <4 x float> %96, <4 x float> %.lcssa458131)
  %110 = or i64 %89, 3
  %111 = getelementptr inbounds float, float* %4, i64 %110
  %112 = load float, float* %111, align 4, !tbaa !252
  %113 = insertelement <4 x float> undef, float %112, i64 0
  %114 = shufflevector <4 x float> %113, <4 x float> undef, <4 x i32> zeroinitializer
  %115 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %114, <4 x float> %96, <4 x float> %.lcssa660130)
  %116 = add nsw i64 %89, 4
  %117 = getelementptr inbounds float, float* %4, i64 %116
  %118 = load float, float* %117, align 4, !tbaa !252
  %119 = insertelement <4 x float> undef, float %118, i64 0
  %120 = shufflevector <4 x float> %119, <4 x float> undef, <4 x i32> zeroinitializer
  %121 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %120, <4 x float> %96, <4 x float> %.lcssa862129)
  %122 = add nsw i64 %89, 5
  %123 = getelementptr inbounds float, float* %4, i64 %122
  %124 = load float, float* %123, align 4, !tbaa !252
  %125 = insertelement <4 x float> undef, float %124, i64 0
  %126 = shufflevector <4 x float> %125, <4 x float> undef, <4 x i32> zeroinitializer
  %127 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %126, <4 x float> %96, <4 x float> %.lcssa1064128)
  %128 = add nsw i64 %89, 6
  %129 = getelementptr inbounds float, float* %4, i64 %128
  %130 = load float, float* %129, align 4, !tbaa !252
  %131 = insertelement <4 x float> undef, float %130, i64 0
  %132 = shufflevector <4 x float> %131, <4 x float> undef, <4 x i32> zeroinitializer
  %133 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %132, <4 x float> %96, <4 x float> %.lcssa1266127)
  %134 = add nsw i64 %89, 7
  %135 = getelementptr inbounds float, float* %4, i64 %134
  %136 = load float, float* %135, align 4, !tbaa !252
  %137 = insertelement <4 x float> undef, float %136, i64 0
  %138 = shufflevector <4 x float> %137, <4 x float> undef, <4 x i32> zeroinitializer
  %139 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %138, <4 x float> %96, <4 x float> %.lcssa1468126)
  %140 = add nsw i64 %89, 8
  %141 = getelementptr inbounds float, float* %4, i64 %140
  %142 = load float, float* %141, align 4, !tbaa !252
  %143 = insertelement <4 x float> undef, float %142, i64 0
  %144 = shufflevector <4 x float> %143, <4 x float> undef, <4 x i32> zeroinitializer
  %145 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %144, <4 x float> %96, <4 x float> %.lcssa1670125)
  %146 = add nsw i64 %89, 9
  %147 = getelementptr inbounds float, float* %4, i64 %146
  %148 = load float, float* %147, align 4, !tbaa !252
  %149 = insertelement <4 x float> undef, float %148, i64 0
  %150 = shufflevector <4 x float> %149, <4 x float> undef, <4 x i32> zeroinitializer
  %151 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %150, <4 x float> %96, <4 x float> %.lcssa1872124)
  %152 = add nsw i64 %89, 10
  %153 = getelementptr inbounds float, float* %4, i64 %152
  %154 = load float, float* %153, align 4, !tbaa !252
  %155 = insertelement <4 x float> undef, float %154, i64 0
  %156 = shufflevector <4 x float> %155, <4 x float> undef, <4 x i32> zeroinitializer
  %157 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %156, <4 x float> %96, <4 x float> %.lcssa2074123)
  %158 = add nsw i64 %89, 11
  %159 = getelementptr inbounds float, float* %4, i64 %158
  %160 = load float, float* %159, align 4, !tbaa !252
  %161 = insertelement <4 x float> undef, float %160, i64 0
  %162 = shufflevector <4 x float> %161, <4 x float> undef, <4 x i32> zeroinitializer
  %163 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %162, <4 x float> %96, <4 x float> %.lcssa2276122)
  %164 = add nsw i64 %89, 12
  %165 = getelementptr inbounds float, float* %4, i64 %164
  %166 = load float, float* %165, align 4, !tbaa !252
  %167 = insertelement <4 x float> undef, float %166, i64 0
  %168 = shufflevector <4 x float> %167, <4 x float> undef, <4 x i32> zeroinitializer
  %169 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %168, <4 x float> %96, <4 x float> %.lcssa2478121)
  %170 = add nsw i64 %89, 13
  %171 = getelementptr inbounds float, float* %4, i64 %170
  %172 = load float, float* %171, align 4, !tbaa !252
  %173 = insertelement <4 x float> undef, float %172, i64 0
  %174 = shufflevector <4 x float> %173, <4 x float> undef, <4 x i32> zeroinitializer
  %175 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %174, <4 x float> %96, <4 x float> %.lcssa2680120)
  %176 = add nsw i64 %89, 14
  %177 = getelementptr inbounds float, float* %4, i64 %176
  %178 = load float, float* %177, align 4, !tbaa !252
  %179 = insertelement <4 x float> undef, float %178, i64 0
  %180 = shufflevector <4 x float> %179, <4 x float> undef, <4 x i32> zeroinitializer
  %181 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %180, <4 x float> %96, <4 x float> %.lcssa2882119)
  %182 = add nsw i64 %89, 15
  %183 = getelementptr inbounds float, float* %4, i64 %182
  %184 = load float, float* %183, align 4, !tbaa !252
  %185 = insertelement <4 x float> undef, float %184, i64 0
  %186 = shufflevector <4 x float> %185, <4 x float> undef, <4 x i32> zeroinitializer
  %187 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %186, <4 x float> %96, <4 x float> %.lcssa3084118)
  %188 = add nsw i64 %89, 16
  %189 = getelementptr inbounds float, float* %4, i64 %188
  %190 = load float, float* %189, align 4, !tbaa !252
  %191 = insertelement <4 x float> undef, float %190, i64 0
  %192 = shufflevector <4 x float> %191, <4 x float> undef, <4 x i32> zeroinitializer
  %193 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %192, <4 x float> %96, <4 x float> %.lcssa3286117)
  %194 = add nsw i64 %89, 17
  %195 = getelementptr inbounds float, float* %4, i64 %194
  %196 = load float, float* %195, align 4, !tbaa !252
  %197 = insertelement <4 x float> undef, float %196, i64 0
  %198 = shufflevector <4 x float> %197, <4 x float> undef, <4 x i32> zeroinitializer
  %199 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %198, <4 x float> %96, <4 x float> %.lcssa3488116)
  %200 = add nsw i64 %89, 18
  %201 = getelementptr inbounds float, float* %4, i64 %200
  %202 = load float, float* %201, align 4, !tbaa !252
  %203 = insertelement <4 x float> undef, float %202, i64 0
  %204 = shufflevector <4 x float> %203, <4 x float> undef, <4 x i32> zeroinitializer
  %205 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %204, <4 x float> %96, <4 x float> %.lcssa3690115)
  %206 = add nsw i64 %89, 19
  %207 = getelementptr inbounds float, float* %4, i64 %206
  %208 = load float, float* %207, align 4, !tbaa !252
  %209 = insertelement <4 x float> undef, float %208, i64 0
  %210 = shufflevector <4 x float> %209, <4 x float> undef, <4 x i32> zeroinitializer
  %211 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %210, <4 x float> %96, <4 x float> %.lcssa3892114)
  %212 = add nsw i64 %89, 20
  %213 = getelementptr inbounds float, float* %4, i64 %212
  %214 = load float, float* %213, align 4, !tbaa !252
  %215 = insertelement <4 x float> undef, float %214, i64 0
  %216 = shufflevector <4 x float> %215, <4 x float> undef, <4 x i32> zeroinitializer
  %217 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %216, <4 x float> %96, <4 x float> %.lcssa4094113)
  %218 = add nsw i64 %89, 21
  %219 = getelementptr inbounds float, float* %4, i64 %218
  %220 = load float, float* %219, align 4, !tbaa !252
  %221 = insertelement <4 x float> undef, float %220, i64 0
  %222 = shufflevector <4 x float> %221, <4 x float> undef, <4 x i32> zeroinitializer
  %223 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %222, <4 x float> %96, <4 x float> %.lcssa4296112)
  %224 = add nsw i64 %89, 22
  %225 = getelementptr inbounds float, float* %4, i64 %224
  %226 = load float, float* %225, align 4, !tbaa !252
  %227 = insertelement <4 x float> undef, float %226, i64 0
  %228 = shufflevector <4 x float> %227, <4 x float> undef, <4 x i32> zeroinitializer
  %229 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %228, <4 x float> %96, <4 x float> %.lcssa4498111)
  %230 = add nsw i64 %89, 23
  %231 = getelementptr inbounds float, float* %4, i64 %230
  %232 = load float, float* %231, align 4, !tbaa !252
  %233 = insertelement <4 x float> undef, float %232, i64 0
  %234 = shufflevector <4 x float> %233, <4 x float> undef, <4 x i32> zeroinitializer
  %235 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %234, <4 x float> %96, <4 x float> %.lcssa46100110)
  %236 = add nsw i64 %89, 24
  %237 = getelementptr inbounds float, float* %4, i64 %236
  %238 = load float, float* %237, align 4, !tbaa !252
  %239 = insertelement <4 x float> undef, float %238, i64 0
  %240 = shufflevector <4 x float> %239, <4 x float> undef, <4 x i32> zeroinitializer
  %241 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %240, <4 x float> %96, <4 x float> %.lcssa48102109)
  %242 = add nsw i64 %89, 25
  %243 = getelementptr inbounds float, float* %4, i64 %242
  %244 = load float, float* %243, align 4, !tbaa !252
  %245 = insertelement <4 x float> undef, float %244, i64 0
  %246 = shufflevector <4 x float> %245, <4 x float> undef, <4 x i32> zeroinitializer
  %247 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %246, <4 x float> %96, <4 x float> %.lcssa50104108)
  %248 = add nsw i64 %89, 26
  %249 = getelementptr inbounds float, float* %4, i64 %248
  %250 = load float, float* %249, align 4, !tbaa !252
  %251 = insertelement <4 x float> undef, float %250, i64 0
  %252 = shufflevector <4 x float> %251, <4 x float> undef, <4 x i32> zeroinitializer
  %253 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %252, <4 x float> %96, <4 x float> %.lcssa52106107)
  %254 = or i64 %88, 4
  %255 = load float, float* %99, align 4, !tbaa !252
  %256 = insertelement <4 x float> undef, float %255, i64 0
  %257 = shufflevector <4 x float> %256, <4 x float> undef, <4 x i32> zeroinitializer
  %258 = getelementptr inbounds float, float* %7, i64 %254
  %259 = bitcast float* %258 to <4 x float>*
  %260 = load <4 x float>, <4 x float>* %259, align 16, !tbaa !258
  %261 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %257, <4 x float> %260, <4 x float> %97)
  %262 = or i64 %89, 2
  %263 = getelementptr inbounds float, float* %4, i64 %262
  %264 = load float, float* %263, align 4, !tbaa !252
  %265 = insertelement <4 x float> undef, float %264, i64 0
  %266 = shufflevector <4 x float> %265, <4 x float> undef, <4 x i32> zeroinitializer
  %267 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %266, <4 x float> %260, <4 x float> %103)
  %268 = or i64 %89, 3
  %269 = getelementptr inbounds float, float* %4, i64 %268
  %270 = load float, float* %269, align 4, !tbaa !252
  %271 = insertelement <4 x float> undef, float %270, i64 0
  %272 = shufflevector <4 x float> %271, <4 x float> undef, <4 x i32> zeroinitializer
  %273 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %272, <4 x float> %260, <4 x float> %109)
  %274 = add nsw i64 %89, 4
  %275 = getelementptr inbounds float, float* %4, i64 %274
  %276 = load float, float* %275, align 4, !tbaa !252
  %277 = insertelement <4 x float> undef, float %276, i64 0
  %278 = shufflevector <4 x float> %277, <4 x float> undef, <4 x i32> zeroinitializer
  %279 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %278, <4 x float> %260, <4 x float> %115)
  %280 = add nsw i64 %89, 5
  %281 = getelementptr inbounds float, float* %4, i64 %280
  %282 = load float, float* %281, align 4, !tbaa !252
  %283 = insertelement <4 x float> undef, float %282, i64 0
  %284 = shufflevector <4 x float> %283, <4 x float> undef, <4 x i32> zeroinitializer
  %285 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %284, <4 x float> %260, <4 x float> %121)
  %286 = add nsw i64 %89, 6
  %287 = getelementptr inbounds float, float* %4, i64 %286
  %288 = load float, float* %287, align 4, !tbaa !252
  %289 = insertelement <4 x float> undef, float %288, i64 0
  %290 = shufflevector <4 x float> %289, <4 x float> undef, <4 x i32> zeroinitializer
  %291 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %290, <4 x float> %260, <4 x float> %127)
  %292 = add nsw i64 %89, 7
  %293 = getelementptr inbounds float, float* %4, i64 %292
  %294 = load float, float* %293, align 4, !tbaa !252
  %295 = insertelement <4 x float> undef, float %294, i64 0
  %296 = shufflevector <4 x float> %295, <4 x float> undef, <4 x i32> zeroinitializer
  %297 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %296, <4 x float> %260, <4 x float> %133)
  %298 = add nsw i64 %89, 8
  %299 = getelementptr inbounds float, float* %4, i64 %298
  %300 = load float, float* %299, align 4, !tbaa !252
  %301 = insertelement <4 x float> undef, float %300, i64 0
  %302 = shufflevector <4 x float> %301, <4 x float> undef, <4 x i32> zeroinitializer
  %303 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %302, <4 x float> %260, <4 x float> %139)
  %304 = add nsw i64 %89, 9
  %305 = getelementptr inbounds float, float* %4, i64 %304
  %306 = load float, float* %305, align 4, !tbaa !252
  %307 = insertelement <4 x float> undef, float %306, i64 0
  %308 = shufflevector <4 x float> %307, <4 x float> undef, <4 x i32> zeroinitializer
  %309 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %308, <4 x float> %260, <4 x float> %145)
  %310 = add nsw i64 %89, 10
  %311 = getelementptr inbounds float, float* %4, i64 %310
  %312 = load float, float* %311, align 4, !tbaa !252
  %313 = insertelement <4 x float> undef, float %312, i64 0
  %314 = shufflevector <4 x float> %313, <4 x float> undef, <4 x i32> zeroinitializer
  %315 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %314, <4 x float> %260, <4 x float> %151)
  %316 = add nsw i64 %89, 11
  %317 = getelementptr inbounds float, float* %4, i64 %316
  %318 = load float, float* %317, align 4, !tbaa !252
  %319 = insertelement <4 x float> undef, float %318, i64 0
  %320 = shufflevector <4 x float> %319, <4 x float> undef, <4 x i32> zeroinitializer
  %321 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %320, <4 x float> %260, <4 x float> %157)
  %322 = add nsw i64 %89, 12
  %323 = getelementptr inbounds float, float* %4, i64 %322
  %324 = load float, float* %323, align 4, !tbaa !252
  %325 = insertelement <4 x float> undef, float %324, i64 0
  %326 = shufflevector <4 x float> %325, <4 x float> undef, <4 x i32> zeroinitializer
  %327 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %326, <4 x float> %260, <4 x float> %163)
  %328 = add nsw i64 %89, 13
  %329 = getelementptr inbounds float, float* %4, i64 %328
  %330 = load float, float* %329, align 4, !tbaa !252
  %331 = insertelement <4 x float> undef, float %330, i64 0
  %332 = shufflevector <4 x float> %331, <4 x float> undef, <4 x i32> zeroinitializer
  %333 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %332, <4 x float> %260, <4 x float> %169)
  %334 = add nsw i64 %89, 14
  %335 = getelementptr inbounds float, float* %4, i64 %334
  %336 = load float, float* %335, align 4, !tbaa !252
  %337 = insertelement <4 x float> undef, float %336, i64 0
  %338 = shufflevector <4 x float> %337, <4 x float> undef, <4 x i32> zeroinitializer
  %339 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %338, <4 x float> %260, <4 x float> %175)
  %340 = add nsw i64 %89, 15
  %341 = getelementptr inbounds float, float* %4, i64 %340
  %342 = load float, float* %341, align 4, !tbaa !252
  %343 = insertelement <4 x float> undef, float %342, i64 0
  %344 = shufflevector <4 x float> %343, <4 x float> undef, <4 x i32> zeroinitializer
  %345 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %344, <4 x float> %260, <4 x float> %181)
  %346 = add nsw i64 %89, 16
  %347 = getelementptr inbounds float, float* %4, i64 %346
  %348 = load float, float* %347, align 4, !tbaa !252
  %349 = insertelement <4 x float> undef, float %348, i64 0
  %350 = shufflevector <4 x float> %349, <4 x float> undef, <4 x i32> zeroinitializer
  %351 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %350, <4 x float> %260, <4 x float> %187)
  %352 = add nsw i64 %89, 17
  %353 = getelementptr inbounds float, float* %4, i64 %352
  %354 = load float, float* %353, align 4, !tbaa !252
  %355 = insertelement <4 x float> undef, float %354, i64 0
  %356 = shufflevector <4 x float> %355, <4 x float> undef, <4 x i32> zeroinitializer
  %357 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %356, <4 x float> %260, <4 x float> %193)
  %358 = add nsw i64 %89, 18
  %359 = getelementptr inbounds float, float* %4, i64 %358
  %360 = load float, float* %359, align 4, !tbaa !252
  %361 = insertelement <4 x float> undef, float %360, i64 0
  %362 = shufflevector <4 x float> %361, <4 x float> undef, <4 x i32> zeroinitializer
  %363 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %362, <4 x float> %260, <4 x float> %199)
  %364 = add nsw i64 %89, 19
  %365 = getelementptr inbounds float, float* %4, i64 %364
  %366 = load float, float* %365, align 4, !tbaa !252
  %367 = insertelement <4 x float> undef, float %366, i64 0
  %368 = shufflevector <4 x float> %367, <4 x float> undef, <4 x i32> zeroinitializer
  %369 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %368, <4 x float> %260, <4 x float> %205)
  %370 = add nsw i64 %89, 20
  %371 = getelementptr inbounds float, float* %4, i64 %370
  %372 = load float, float* %371, align 4, !tbaa !252
  %373 = insertelement <4 x float> undef, float %372, i64 0
  %374 = shufflevector <4 x float> %373, <4 x float> undef, <4 x i32> zeroinitializer
  %375 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %374, <4 x float> %260, <4 x float> %211)
  %376 = add nsw i64 %89, 21
  %377 = getelementptr inbounds float, float* %4, i64 %376
  %378 = load float, float* %377, align 4, !tbaa !252
  %379 = insertelement <4 x float> undef, float %378, i64 0
  %380 = shufflevector <4 x float> %379, <4 x float> undef, <4 x i32> zeroinitializer
  %381 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %380, <4 x float> %260, <4 x float> %217)
  %382 = add nsw i64 %89, 22
  %383 = getelementptr inbounds float, float* %4, i64 %382
  %384 = load float, float* %383, align 4, !tbaa !252
  %385 = insertelement <4 x float> undef, float %384, i64 0
  %386 = shufflevector <4 x float> %385, <4 x float> undef, <4 x i32> zeroinitializer
  %387 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %386, <4 x float> %260, <4 x float> %223)
  %388 = add nsw i64 %89, 23
  %389 = getelementptr inbounds float, float* %4, i64 %388
  %390 = load float, float* %389, align 4, !tbaa !252
  %391 = insertelement <4 x float> undef, float %390, i64 0
  %392 = shufflevector <4 x float> %391, <4 x float> undef, <4 x i32> zeroinitializer
  %393 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %392, <4 x float> %260, <4 x float> %229)
  %394 = add nsw i64 %89, 24
  %395 = getelementptr inbounds float, float* %4, i64 %394
  %396 = load float, float* %395, align 4, !tbaa !252
  %397 = insertelement <4 x float> undef, float %396, i64 0
  %398 = shufflevector <4 x float> %397, <4 x float> undef, <4 x i32> zeroinitializer
  %399 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %398, <4 x float> %260, <4 x float> %235)
  %400 = add nsw i64 %89, 25
  %401 = getelementptr inbounds float, float* %4, i64 %400
  %402 = load float, float* %401, align 4, !tbaa !252
  %403 = insertelement <4 x float> undef, float %402, i64 0
  %404 = shufflevector <4 x float> %403, <4 x float> undef, <4 x i32> zeroinitializer
  %405 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %404, <4 x float> %260, <4 x float> %241)
  %406 = add nsw i64 %89, 26
  %407 = getelementptr inbounds float, float* %4, i64 %406
  %408 = load float, float* %407, align 4, !tbaa !252
  %409 = insertelement <4 x float> undef, float %408, i64 0
  %410 = shufflevector <4 x float> %409, <4 x float> undef, <4 x i32> zeroinitializer
  %411 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %410, <4 x float> %260, <4 x float> %247)
  %412 = add nsw i64 %89, 27
  %413 = getelementptr inbounds float, float* %4, i64 %412
  %414 = load float, float* %413, align 4, !tbaa !252
  %415 = insertelement <4 x float> undef, float %414, i64 0
  %416 = shufflevector <4 x float> %415, <4 x float> undef, <4 x i32> zeroinitializer
  %417 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %416, <4 x float> %260, <4 x float> %253)
  br i1 %84, label %for_begin_kw.preheader, label %for_begin_w.inner.preheader, !prof !4

for_body_w.inner:                                 ; preds = %for_begin_w.inner.preheader, %for_body_w.inner
  %indvars.iv167 = phi i64 [ 0, %for_begin_w.inner.preheader ], [ %indvars.iv.next168, %for_body_w.inner ]
  %418 = add nsw i64 %indvars.iv167, %83
  %419 = add nsw i64 %418, 729
  %420 = add nsw i64 %418, 1458
  %421 = add nsw i64 %418, 2187
  %422 = shl nuw nsw i64 %indvars.iv167, 2
  %423 = getelementptr inbounds [27 x <4 x float>], [27 x <4 x float>]* %conv2d_NCHWc.global1, i64 0, i64 0, i64 %422
  %424 = bitcast float* %423 to <4 x float>*
  %425 = load <4 x float>, <4 x float>* %424, align 16, !tbaa !348
  %426 = getelementptr inbounds float, float* %10, i64 %418
  %427 = extractelement <4 x float> %425, i64 0
  store float %427, float* %426, align 4, !tbaa !349
  %428 = getelementptr inbounds float, float* %10, i64 %419
  %429 = extractelement <4 x float> %425, i64 1
  store float %429, float* %428, align 4, !tbaa !349
  %430 = getelementptr inbounds float, float* %10, i64 %420
  %431 = extractelement <4 x float> %425, i64 2
  store float %431, float* %430, align 4, !tbaa !349
  %432 = getelementptr inbounds float, float* %10, i64 %421
  %433 = extractelement <4 x float> %425, i64 3
  store float %433, float* %432, align 4, !tbaa !349
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next168, 27
  br i1 %exitcond.not, label %for_end_w.inner, label %for_body_w.inner, !prof !48

for_end_w.inner:                                  ; preds = %for_body_w.inner
  %434 = add nsw i32 %n.c.outer.fused.h.fused136, 1
  %exitcond170.not = icmp eq i32 %434, %18
  br i1 %exitcond170.not, label %for_end_n.c.outer.fused.h.fused, label %for_body_n.c.outer.fused.h.fused, !prof !48
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
attributes #1 = { noinline }
attributes #2 = { nofree norecurse nosync nounwind }
attributes #3 = { nofree nosync nounwind }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }

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
!9 = !{!"0x62a9db0.w1.b0", !10, i64 0}
!10 = !{!"0x62a9db0.w2.b0", !11, i64 0}
!11 = !{!"0x62a9db0.w4.b0", !12, i64 0}
!12 = !{!"0x62a9db0.w8.b0", !13, i64 0}
!13 = !{!"0x62a9db0.w16.b0", !14, i64 0}
!14 = !{!"0x62a9db0.w32.b0", !15, i64 0}
!15 = !{!"0x62a9db0.w64.b0", !16, i64 0}
!16 = !{!"0x62a9db0.w128.b0", !17, i64 0}
!17 = !{!"0x62a9db0.w256.b0", !18, i64 0}
!18 = !{!"0x62a9db0.w512.b0", !19, i64 0}
!19 = !{!"0x62a9db0.w1024.b0", !20, i64 0}
!20 = !{!"i8*", !21, i64 0}
!21 = !{!"0x62a9db0", !7, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"0x62a9db0.w1.b1", !10, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"0x62a9db0.w1.b2", !26, i64 0}
!26 = !{!"0x62a9db0.w2.b2", !11, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"0x6293870.w1.b0", !29, i64 0}
!29 = !{!"0x6293870.w2.b0", !30, i64 0}
!30 = !{!"0x6293870.w4.b0", !31, i64 0}
!31 = !{!"0x6293870.w8.b0", !32, i64 0}
!32 = !{!"0x6293870.w16.b0", !33, i64 0}
!33 = !{!"0x6293870.w32.b0", !34, i64 0}
!34 = !{!"0x6293870.w64.b0", !35, i64 0}
!35 = !{!"0x6293870.w128.b0", !36, i64 0}
!36 = !{!"0x6293870.w256.b0", !37, i64 0}
!37 = !{!"0x6293870.w512.b0", !38, i64 0}
!38 = !{!"0x6293870.w1024.b0", !39, i64 0}
!39 = !{!"i8*", !40, i64 0}
!40 = !{!"0x6293870", !7, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"0x6293870.w1.b1", !29, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"0x6293870.w1.b2", !45, i64 0}
!45 = !{!"0x6293870.w2.b2", !30, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"0x6293870.w1.b3", !45, i64 0}
!48 = !{!"branch_weights", i32 1, i32 1048576}
!49 = !{!50, !50, i64 0}
!50 = !{!"0x62921c0.w4.b0", !51, i64 0}
!51 = !{!"0x62921c0.w8.b0", !52, i64 0}
!52 = !{!"0x62921c0.w16.b0", !53, i64 0}
!53 = !{!"0x62921c0.w32.b0", !54, i64 0}
!54 = !{!"0x62921c0.w64.b0", !55, i64 0}
!55 = !{!"0x62921c0.w128.b0", !56, i64 0}
!56 = !{!"0x62921c0.w256.b0", !57, i64 0}
!57 = !{!"0x62921c0.w512.b0", !58, i64 0}
!58 = !{!"0x62921c0.w1024.b0", !59, i64 0}
!59 = !{!"i8*", !60, i64 0}
!60 = !{!"0x62921c0", !7, i64 0}
!61 = !{!62, !62, i64 0}
!62 = !{!"0x628c200.w1.b0", !63, i64 0}
!63 = !{!"0x628c200.w2.b0", !64, i64 0}
!64 = !{!"0x628c200.w4.b0", !65, i64 0}
!65 = !{!"0x628c200.w8.b0", !66, i64 0}
!66 = !{!"0x628c200.w16.b0", !67, i64 0}
!67 = !{!"0x628c200.w32.b0", !68, i64 0}
!68 = !{!"0x628c200.w64.b0", !69, i64 0}
!69 = !{!"0x628c200.w128.b0", !70, i64 0}
!70 = !{!"0x628c200.w256.b0", !71, i64 0}
!71 = !{!"0x628c200.w512.b0", !72, i64 0}
!72 = !{!"0x628c200.w1024.b0", !73, i64 0}
!73 = !{!"i8*", !74, i64 0}
!74 = !{!"0x628c200", !7, i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"0x6293ef0.w1.b0", !77, i64 0}
!77 = !{!"0x6293ef0.w2.b0", !78, i64 0}
!78 = !{!"0x6293ef0.w4.b0", !79, i64 0}
!79 = !{!"0x6293ef0.w8.b0", !80, i64 0}
!80 = !{!"0x6293ef0.w16.b0", !81, i64 0}
!81 = !{!"0x6293ef0.w32.b0", !82, i64 0}
!82 = !{!"0x6293ef0.w64.b0", !83, i64 0}
!83 = !{!"0x6293ef0.w128.b0", !84, i64 0}
!84 = !{!"0x6293ef0.w256.b0", !85, i64 0}
!85 = !{!"0x6293ef0.w512.b0", !86, i64 0}
!86 = !{!"0x6293ef0.w1024.b0", !87, i64 0}
!87 = !{!"i8*", !88, i64 0}
!88 = !{!"0x6293ef0", !7, i64 0}
!89 = !{!90, !90, i64 0}
!90 = !{!"0x629c710.w1.b0", !91, i64 0}
!91 = !{!"0x629c710.w2.b0", !92, i64 0}
!92 = !{!"0x629c710.w4.b0", !93, i64 0}
!93 = !{!"0x629c710.w8.b0", !94, i64 0}
!94 = !{!"0x629c710.w16.b0", !95, i64 0}
!95 = !{!"0x629c710.w32.b0", !96, i64 0}
!96 = !{!"0x629c710.w64.b0", !97, i64 0}
!97 = !{!"0x629c710.w128.b0", !98, i64 0}
!98 = !{!"0x629c710.w256.b0", !99, i64 0}
!99 = !{!"0x629c710.w512.b0", !100, i64 0}
!100 = !{!"0x629c710.w1024.b0", !101, i64 0}
!101 = !{!"i8*", !102, i64 0}
!102 = !{!"0x629c710", !7, i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"0x629c710.w1.b1", !91, i64 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"0x629c710.w1.b2", !107, i64 0}
!107 = !{!"0x629c710.w2.b2", !92, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"0x629c710.w1.b3", !107, i64 0}
!110 = !{!111, !111, i64 0}
!111 = !{!"0x62b04f0.w4.b0", !112, i64 0}
!112 = !{!"0x62b04f0.w8.b0", !113, i64 0}
!113 = !{!"0x62b04f0.w16.b0", !114, i64 0}
!114 = !{!"0x62b04f0.w32.b0", !115, i64 0}
!115 = !{!"0x62b04f0.w64.b0", !116, i64 0}
!116 = !{!"0x62b04f0.w128.b0", !117, i64 0}
!117 = !{!"0x62b04f0.w256.b0", !118, i64 0}
!118 = !{!"0x62b04f0.w512.b0", !119, i64 0}
!119 = !{!"0x62b04f0.w1024.b0", !120, i64 0}
!120 = !{!"i8*", !121, i64 0}
!121 = !{!"0x62b04f0", !7, i64 0}
!122 = !{!123, !123, i64 0}
!123 = !{!"float", !124, i64 0}
!124 = !{!"0x62b3c90", !7, i64 0}
!125 = !{!126, !126, i64 0}
!126 = !{!"float", !127, i64 0}
!127 = !{!"0x62b6540", !7, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"float", !130, i64 0}
!130 = !{!"0x62e34b0", !7, i64 0}
!131 = !{!132, !132, i64 0}
!132 = !{!"0x628e910.w1.b0", !133, i64 0}
!133 = !{!"0x628e910.w2.b0", !134, i64 0}
!134 = !{!"0x628e910.w4.b0", !135, i64 0}
!135 = !{!"0x628e910.w8.b0", !136, i64 0}
!136 = !{!"0x628e910.w16.b0", !137, i64 0}
!137 = !{!"0x628e910.w32.b0", !138, i64 0}
!138 = !{!"0x628e910.w64.b0", !139, i64 0}
!139 = !{!"0x628e910.w128.b0", !140, i64 0}
!140 = !{!"0x628e910.w256.b0", !141, i64 0}
!141 = !{!"0x628e910.w512.b0", !142, i64 0}
!142 = !{!"0x628e910.w1024.b0", !143, i64 0}
!143 = !{!"i8*", !144, i64 0}
!144 = !{!"0x628e910", !7, i64 0}
!145 = !{!146, !146, i64 0}
!146 = !{!"0x628e910.w1.b1", !133, i64 0}
!147 = !{!148, !148, i64 0}
!148 = !{!"0x628e910.w1.b2", !149, i64 0}
!149 = !{!"0x628e910.w2.b2", !134, i64 0}
!150 = !{!151, !151, i64 0}
!151 = !{!"0x62f9be0.w1.b0", !152, i64 0}
!152 = !{!"0x62f9be0.w2.b0", !153, i64 0}
!153 = !{!"0x62f9be0.w4.b0", !154, i64 0}
!154 = !{!"0x62f9be0.w8.b0", !155, i64 0}
!155 = !{!"0x62f9be0.w16.b0", !156, i64 0}
!156 = !{!"0x62f9be0.w32.b0", !157, i64 0}
!157 = !{!"0x62f9be0.w64.b0", !158, i64 0}
!158 = !{!"0x62f9be0.w128.b0", !159, i64 0}
!159 = !{!"0x62f9be0.w256.b0", !160, i64 0}
!160 = !{!"0x62f9be0.w512.b0", !161, i64 0}
!161 = !{!"0x62f9be0.w1024.b0", !162, i64 0}
!162 = !{!"i8*", !163, i64 0}
!163 = !{!"0x62f9be0", !7, i64 0}
!164 = !{!165, !165, i64 0}
!165 = !{!"0x62f9be0.w1.b1", !152, i64 0}
!166 = !{!167, !167, i64 0}
!167 = !{!"0x62f9be0.w1.b2", !168, i64 0}
!168 = !{!"0x62f9be0.w2.b2", !153, i64 0}
!169 = !{!170, !170, i64 0}
!170 = !{!"0x62f9be0.w1.b3", !168, i64 0}
!171 = !{!172, !172, i64 0}
!172 = !{!"0x62fa460.w4.b0", !173, i64 0}
!173 = !{!"0x62fa460.w8.b0", !174, i64 0}
!174 = !{!"0x62fa460.w16.b0", !175, i64 0}
!175 = !{!"0x62fa460.w32.b0", !176, i64 0}
!176 = !{!"0x62fa460.w64.b0", !177, i64 0}
!177 = !{!"0x62fa460.w128.b0", !178, i64 0}
!178 = !{!"0x62fa460.w256.b0", !179, i64 0}
!179 = !{!"0x62fa460.w512.b0", !180, i64 0}
!180 = !{!"0x62fa460.w1024.b0", !181, i64 0}
!181 = !{!"i8*", !182, i64 0}
!182 = !{!"0x62fa460", !7, i64 0}
!183 = !{!184, !184, i64 0}
!184 = !{!"0x62fc600.w1.b0", !185, i64 0}
!185 = !{!"0x62fc600.w2.b0", !186, i64 0}
!186 = !{!"0x62fc600.w4.b0", !187, i64 0}
!187 = !{!"0x62fc600.w8.b0", !188, i64 0}
!188 = !{!"0x62fc600.w16.b0", !189, i64 0}
!189 = !{!"0x62fc600.w32.b0", !190, i64 0}
!190 = !{!"0x62fc600.w64.b0", !191, i64 0}
!191 = !{!"0x62fc600.w128.b0", !192, i64 0}
!192 = !{!"0x62fc600.w256.b0", !193, i64 0}
!193 = !{!"0x62fc600.w512.b0", !194, i64 0}
!194 = !{!"0x62fc600.w1024.b0", !195, i64 0}
!195 = !{!"i8*", !196, i64 0}
!196 = !{!"0x62fc600", !7, i64 0}
!197 = !{!198, !198, i64 0}
!198 = !{!"0x62fc600.w1.b1", !185, i64 0}
!199 = !{!200, !200, i64 0}
!200 = !{!"0x62fc600.w1.b2", !201, i64 0}
!201 = !{!"0x62fc600.w2.b2", !186, i64 0}
!202 = !{!203, !203, i64 0}
!203 = !{!"0x62fc600.w1.b3", !201, i64 0}
!204 = !{!205, !205, i64 0}
!205 = !{!"0x62fcf90.w4.b0", !206, i64 0}
!206 = !{!"0x62fcf90.w8.b0", !207, i64 0}
!207 = !{!"0x62fcf90.w16.b0", !208, i64 0}
!208 = !{!"0x62fcf90.w32.b0", !209, i64 0}
!209 = !{!"0x62fcf90.w64.b0", !210, i64 0}
!210 = !{!"0x62fcf90.w128.b0", !211, i64 0}
!211 = !{!"0x62fcf90.w256.b0", !212, i64 0}
!212 = !{!"0x62fcf90.w512.b0", !213, i64 0}
!213 = !{!"0x62fcf90.w1024.b0", !214, i64 0}
!214 = !{!"i8*", !215, i64 0}
!215 = !{!"0x62fcf90", !7, i64 0}
!216 = !{!217, !217, i64 0}
!217 = !{!"0x62ff170.w1.b0", !218, i64 0}
!218 = !{!"0x62ff170.w2.b0", !219, i64 0}
!219 = !{!"0x62ff170.w4.b0", !220, i64 0}
!220 = !{!"0x62ff170.w8.b0", !221, i64 0}
!221 = !{!"0x62ff170.w16.b0", !222, i64 0}
!222 = !{!"0x62ff170.w32.b0", !223, i64 0}
!223 = !{!"0x62ff170.w64.b0", !224, i64 0}
!224 = !{!"0x62ff170.w128.b0", !225, i64 0}
!225 = !{!"0x62ff170.w256.b0", !226, i64 0}
!226 = !{!"0x62ff170.w512.b0", !227, i64 0}
!227 = !{!"0x62ff170.w1024.b0", !228, i64 0}
!228 = !{!"i8*", !229, i64 0}
!229 = !{!"0x62ff170", !7, i64 0}
!230 = !{!231, !231, i64 0}
!231 = !{!"0x62ff170.w1.b1", !218, i64 0}
!232 = !{!233, !233, i64 0}
!233 = !{!"0x62ff170.w1.b2", !234, i64 0}
!234 = !{!"0x62ff170.w2.b2", !219, i64 0}
!235 = !{!236, !236, i64 0}
!236 = !{!"0x62ff170.w1.b3", !234, i64 0}
!237 = !{!238, !238, i64 0}
!238 = !{!"0x62ffb80.w4.b0", !239, i64 0}
!239 = !{!"0x62ffb80.w8.b0", !240, i64 0}
!240 = !{!"0x62ffb80.w16.b0", !241, i64 0}
!241 = !{!"0x62ffb80.w32.b0", !242, i64 0}
!242 = !{!"0x62ffb80.w64.b0", !243, i64 0}
!243 = !{!"0x62ffb80.w128.b0", !244, i64 0}
!244 = !{!"0x62ffb80.w256.b0", !245, i64 0}
!245 = !{!"0x62ffb80.w512.b0", !246, i64 0}
!246 = !{!"0x62ffb80.w1024.b0", !247, i64 0}
!247 = !{!"i8*", !248, i64 0}
!248 = !{!"0x62ffb80", !7, i64 0}
!249 = !{!250, !250, i64 0}
!250 = !{!"float", !251, i64 0}
!251 = !{!"0x62bfaa0", !7, i64 0}
!252 = !{!253, !253, i64 0}
!253 = !{!"float", !254, i64 0}
!254 = !{!"0x62bbe10", !7, i64 0}
!255 = !{!256, !256, i64 0}
!256 = !{!"float", !257, i64 0}
!257 = !{!"0x62be470", !7, i64 0}
!258 = !{!259, !259, i64 0}
!259 = !{!"<4 x float>", !260, i64 0}
!260 = !{!"0x62b19d0", !7, i64 0}
!261 = !{!262, !262, i64 0}
!262 = !{!"0x62b3580.w4.b0", !263, i64 0}
!263 = !{!"0x62b3580.w8.b0", !264, i64 0}
!264 = !{!"0x62b3580.w16.b0", !265, i64 0}
!265 = !{!"0x62b3580.w32.b0", !266, i64 0}
!266 = !{!"0x62b3580.w64.b0", !267, i64 0}
!267 = !{!"0x62b3580.w128.b0", !268, i64 0}
!268 = !{!"0x62b3580.w256.b0", !269, i64 0}
!269 = !{!"0x62b3580.w512.b0", !270, i64 0}
!270 = !{!"0x62b3580.w1024.b0", !271, i64 0}
!271 = !{!"<4 x float>", !272, i64 0}
!272 = !{!"0x62b3580", !7, i64 0}
!273 = !{!274, !274, i64 0}
!274 = !{!"0x62b3580.w4.b4", !263, i64 0}
!275 = !{!276, !276, i64 0}
!276 = !{!"0x62b3580.w4.b8", !277, i64 0}
!277 = !{!"0x62b3580.w8.b8", !264, i64 0}
!278 = !{!279, !279, i64 0}
!279 = !{!"0x62b3580.w4.b12", !277, i64 0}
!280 = !{!281, !281, i64 0}
!281 = !{!"0x62b3580.w4.b16", !282, i64 0}
!282 = !{!"0x62b3580.w8.b16", !283, i64 0}
!283 = !{!"0x62b3580.w16.b16", !265, i64 0}
!284 = !{!285, !285, i64 0}
!285 = !{!"0x62b3580.w4.b20", !282, i64 0}
!286 = !{!287, !287, i64 0}
!287 = !{!"0x62b3580.w4.b24", !288, i64 0}
!288 = !{!"0x62b3580.w8.b24", !283, i64 0}
!289 = !{!290, !290, i64 0}
!290 = !{!"0x62b3580.w4.b28", !288, i64 0}
!291 = !{!292, !292, i64 0}
!292 = !{!"0x62b3580.w4.b32", !293, i64 0}
!293 = !{!"0x62b3580.w8.b32", !294, i64 0}
!294 = !{!"0x62b3580.w16.b32", !295, i64 0}
!295 = !{!"0x62b3580.w32.b32", !266, i64 0}
!296 = !{!297, !297, i64 0}
!297 = !{!"0x62b3580.w4.b36", !293, i64 0}
!298 = !{!299, !299, i64 0}
!299 = !{!"0x62b3580.w4.b40", !300, i64 0}
!300 = !{!"0x62b3580.w8.b40", !294, i64 0}
!301 = !{!302, !302, i64 0}
!302 = !{!"0x62b3580.w4.b44", !300, i64 0}
!303 = !{!304, !304, i64 0}
!304 = !{!"0x62b3580.w4.b48", !305, i64 0}
!305 = !{!"0x62b3580.w8.b48", !306, i64 0}
!306 = !{!"0x62b3580.w16.b48", !295, i64 0}
!307 = !{!308, !308, i64 0}
!308 = !{!"0x62b3580.w4.b52", !305, i64 0}
!309 = !{!310, !310, i64 0}
!310 = !{!"0x62b3580.w4.b56", !311, i64 0}
!311 = !{!"0x62b3580.w8.b56", !306, i64 0}
!312 = !{!313, !313, i64 0}
!313 = !{!"0x62b3580.w4.b60", !311, i64 0}
!314 = !{!315, !315, i64 0}
!315 = !{!"0x62b3580.w4.b64", !316, i64 0}
!316 = !{!"0x62b3580.w8.b64", !317, i64 0}
!317 = !{!"0x62b3580.w16.b64", !318, i64 0}
!318 = !{!"0x62b3580.w32.b64", !319, i64 0}
!319 = !{!"0x62b3580.w64.b64", !267, i64 0}
!320 = !{!321, !321, i64 0}
!321 = !{!"0x62b3580.w4.b68", !316, i64 0}
!322 = !{!323, !323, i64 0}
!323 = !{!"0x62b3580.w4.b72", !324, i64 0}
!324 = !{!"0x62b3580.w8.b72", !317, i64 0}
!325 = !{!326, !326, i64 0}
!326 = !{!"0x62b3580.w4.b76", !324, i64 0}
!327 = !{!328, !328, i64 0}
!328 = !{!"0x62b3580.w4.b80", !329, i64 0}
!329 = !{!"0x62b3580.w8.b80", !330, i64 0}
!330 = !{!"0x62b3580.w16.b80", !318, i64 0}
!331 = !{!332, !332, i64 0}
!332 = !{!"0x62b3580.w4.b84", !329, i64 0}
!333 = !{!334, !334, i64 0}
!334 = !{!"0x62b3580.w4.b88", !335, i64 0}
!335 = !{!"0x62b3580.w8.b88", !330, i64 0}
!336 = !{!337, !337, i64 0}
!337 = !{!"0x62b3580.w4.b92", !335, i64 0}
!338 = !{!339, !339, i64 0}
!339 = !{!"0x62b3580.w4.b96", !340, i64 0}
!340 = !{!"0x62b3580.w8.b96", !341, i64 0}
!341 = !{!"0x62b3580.w16.b96", !342, i64 0}
!342 = !{!"0x62b3580.w32.b96", !319, i64 0}
!343 = !{!344, !344, i64 0}
!344 = !{!"0x62b3580.w4.b100", !340, i64 0}
!345 = !{!346, !346, i64 0}
!346 = !{!"0x62b3580.w4.b104", !347, i64 0}
!347 = !{!"0x62b3580.w8.b104", !341, i64 0}
!348 = !{!271, !271, i64 0}
!349 = !{!350, !350, i64 0}
!350 = !{!"float", !351, i64 0}
!351 = !{!"0x62be3d0", !7, i64 0}
