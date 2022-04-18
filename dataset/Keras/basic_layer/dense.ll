; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32*, i32 }
%1 = type { i8*, %2, i32, %3, i64*, i64*, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }
%closure_loop_parallel_x.outer.y.outer.fused = type { i8*, i8*, i8* }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global i32 (i32 (i32, %0*, i8*)*, i8*, i32)* null, align 8
@.str = private constant [85 x i8] c"Assert fail: (num_args == 3), tvmgen_default_fused_nn_bias_add: num_args should be 3\00", align 1
@.str.1 = private constant [160 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_bias_add: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [160 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_bias_add: Expect arg[1] to be pointer\00", align 1
@.str.3 = private constant [160 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_nn_bias_add: Expect arg[2] to be pointer\00", align 1
@.str.4 = private constant [85 x i8] c"Assert fail: (2 == tir.tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 2\00", align 1
@.str.5 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg0, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be float32\00", align 1
@.str.6 = private constant [124 x i8] c"Assert fail: (1 == int32(arg0.shape[0])), Argument arg0.shape[0] has an unsatisfied constraint: (1 == int32(arg0.shape[0]))\00", align 1
@.str.7 = private constant [126 x i8] c"Assert fail: (20 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (20 == int32(arg0.shape[1]))\00", align 1
@.str.8 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg0.strides[1])) && (20 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.9 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8))\00", align 1
@.str.10 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg0, 0, 10)), Argument arg0.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg0, 0, 10))\00", align 1
@.str.11 = private constant [85 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 1\00", align 1
@.str.12 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.13 = private constant [126 x i8] c"Assert fail: (20 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (20 == int32(arg1.shape[0]))\00", align 1
@.str.14 = private constant [87 x i8] c"Assert fail: (1 == int32(arg1.strides[0])), arg1.strides: expected to be compact array\00", align 1
@.str.15 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8))\00", align 1
@.str.16 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg1, 0, 10))\00", align 1
@.str.17 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg1, 0, 9))\00", align 1
@.str.18 = private constant [85 x i8] c"Assert fail: (2 == tir.tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 2\00", align 1
@.str.19 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.20 = private constant [124 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint: (1 == int32(arg2.shape[0]))\00", align 1
@.str.21 = private constant [126 x i8] c"Assert fail: (20 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint: (20 == int32(arg2.shape[1]))\00", align 1
@.str.22 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg2.strides[1])) && (20 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
@.str.23 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg2, 0, 8)), Argument arg2.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg2, 0, 8))\00", align 1
@.str.24 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg2, 0, 10)), Argument arg2.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg2, 0, 10))\00", align 1
@.str.25 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg2, 0, 9)), Argument arg2.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg2, 0, 9))\00", align 1
@.str.26 = private constant [82 x i8] c"Assert fail: (num_args == 3), tvmgen_default_fused_nn_dense: num_args should be 3\00", align 1
@.str.27 = private constant [157 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_dense: Expect arg[0] to be pointer\00", align 1
@.str.28 = private constant [157 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_dense: Expect arg[1] to be pointer\00", align 1
@.str.29 = private constant [157 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_nn_dense: Expect arg[2] to be pointer\00", align 1
@.str.30 = private constant [126 x i8] c"Assert fail: (28 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (28 == int32(arg0.shape[1]))\00", align 1
@.str.31 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg0.strides[1])) && (28 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.32 = private constant [85 x i8] c"Assert fail: (2 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 2\00", align 1
@.str.33 = private constant [126 x i8] c"Assert fail: (28 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (28 == int32(arg1.shape[1]))\00", align 1
@.str.34 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg1.strides[1])) && (28 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@__TVMBackendAllocWorkspace = linkonce dllexport local_unnamed_addr global i8* (i32, i32, i64, i32, i32)* null, align 8
@__TVMBackendFreeWorkspace = linkonce dllexport local_unnamed_addr global i32 (i32, i32, i8*)* null, align 8
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

define dllexport i32 @tvmgen_default_fused_nn_bias_add(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 3
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end61, %assert_fail60, %assert_fail58, %assert_fail56, %assert_fail54, %assert_fail50, %assert_fail48, %assert_fail46, %assert_fail42, %assert_fail40, %assert_fail38, %assert_fail36, %assert_fail34, %assert_fail30, %assert_fail28, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail12, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail2, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail2 ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail12 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail28 ], [ -1, %assert_fail30 ], [ -1, %assert_fail34 ], [ -1, %assert_fail36 ], [ -1, %assert_fail38 ], [ -1, %assert_fail40 ], [ -1, %assert_fail42 ], [ -1, %assert_fail46 ], [ -1, %assert_fail48 ], [ -1, %assert_fail50 ], [ -1, %assert_fail54 ], [ -1, %assert_fail56 ], [ -1, %assert_fail58 ], [ -1, %assert_fail60 ], [ 0, %assert_end61 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %1**
  %arg063 = load %1*, %1** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !8
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %1**
  %arg164 = load %1*, %1** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !22
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %1**
  %arg265 = load %1*, %1** %15, align 8
  %16 = getelementptr inbounds i8, i8* %1, i64 8
  %17 = bitcast i8* %16 to i32*
  %arg2.code = load i32, i32* %17, align 4, !tbaa !24
  %18 = getelementptr inbounds %1, %1* %arg063, i64 0, i32 0
  %placeholder = load i8*, i8** %18, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %placeholder, i64 128) ]
  %19 = getelementptr inbounds %1, %1* %arg063, i64 0, i32 4
  %arg0.shape = load i64*, i64** %19, align 8
  %20 = getelementptr inbounds %1, %1* %arg063, i64 0, i32 5
  %arg0.strides = load i64*, i64** %20, align 8
  %21 = getelementptr inbounds %1, %1* %arg063, i64 0, i32 1, i32 1
  %dev_id = load i32, i32* %21, align 4
  %22 = getelementptr inbounds %1, %1* %arg164, i64 0, i32 0
  %placeholder62 = load i8*, i8** %22, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %placeholder62, i64 128) ]
  %23 = getelementptr inbounds %1, %1* %arg164, i64 0, i32 4
  %arg1.shape = load i64*, i64** %23, align 8
  %24 = getelementptr inbounds %1, %1* %arg164, i64 0, i32 5
  %arg1.strides = load i64*, i64** %24, align 8
  %25 = getelementptr inbounds %1, %1* %arg265, i64 0, i32 0
  %T_add = load i8*, i8** %25, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %T_add, i64 128) ]
  %26 = getelementptr inbounds %1, %1* %arg265, i64 0, i32 4
  %arg2.shape = load i64*, i64** %26, align 8
  %27 = getelementptr inbounds %1, %1* %arg265, i64 0, i32 5
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
  %31 = getelementptr inbounds %1, %1* %arg063, i64 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %assert_end11, label %assert_fail8, !prof !4

assert_fail8:                                     ; preds = %assert_end7
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %34(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0))
  br label %common.ret

assert_end11:                                     ; preds = %assert_end7
  %35 = getelementptr inbounds %1, %1* %arg063, i64 0, i32 3, i32 2
  %36 = load i16, i16* %35, align 2
  %37 = icmp eq i16 %36, 1
  %38 = getelementptr inbounds %1, %1* %arg063, i64 0, i32 3, i32 1
  %39 = load i8, i8* %38, align 1
  %40 = icmp eq i8 %39, 32
  %41 = getelementptr inbounds %1, %1* %arg063, i64 0, i32 3, i32 0
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
  %54 = icmp eq i32 %53, 20
  br i1 %54, label %assert_end17, label %assert_fail16, !prof !4

assert_fail16:                                    ; preds = %assert_end15
  %55 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %55(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.7, i64 0, i64 0))
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !43

if_then:                                          ; preds = %assert_end17
  %56 = load i64, i64* %arg0.strides, align 8, !tbaa !44
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %57, 20
  %59 = getelementptr inbounds i64, i64* %arg0.strides, i64 1
  %60 = load i64, i64* %59, align 8, !tbaa !58
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %61, 1
  %63 = and i1 %58, %62
  br i1 %63, label %if_end, label %assert_fail18, !prof !4

if_end:                                           ; preds = %if_then, %assert_end17
  %64 = getelementptr inbounds %1, %1* %arg063, i64 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %assert_end21, label %assert_fail20, !prof !4

assert_fail18:                                    ; preds = %if_then
  %67 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %67(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.8, i64 0, i64 0))
  br label %common.ret

assert_fail20:                                    ; preds = %if_end
  %68 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %68(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.9, i64 0, i64 0))
  br label %common.ret

assert_end21:                                     ; preds = %if_end
  %69 = getelementptr inbounds %1, %1* %arg063, i64 0, i32 1, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %assert_end23, label %assert_fail22, !prof !4

assert_fail22:                                    ; preds = %assert_end21
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %72(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.10, i64 0, i64 0))
  br label %common.ret

assert_end23:                                     ; preds = %assert_end21
  %73 = getelementptr inbounds %1, %1* %arg164, i64 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %assert_end27, label %assert_fail24, !prof !4

assert_fail24:                                    ; preds = %assert_end23
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %76(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.11, i64 0, i64 0))
  br label %common.ret

assert_end27:                                     ; preds = %assert_end23
  %77 = getelementptr inbounds %1, %1* %arg164, i64 0, i32 3, i32 2
  %78 = load i16, i16* %77, align 2
  %79 = icmp eq i16 %78, 1
  %80 = getelementptr inbounds %1, %1* %arg164, i64 0, i32 3, i32 1
  %81 = load i8, i8* %80, align 1
  %82 = icmp eq i8 %81, 32
  %83 = getelementptr inbounds %1, %1* %arg164, i64 0, i32 3, i32 0
  %84 = load i8, i8* %83, align 1
  %85 = icmp eq i8 %84, 2
  %86 = and i1 %82, %85
  %87 = and i1 %79, %86
  br i1 %87, label %assert_end29, label %assert_fail28, !prof !4

assert_fail28:                                    ; preds = %assert_end27
  %88 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %88(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.12, i64 0, i64 0))
  br label %common.ret

assert_end29:                                     ; preds = %assert_end27
  %89 = load i64, i64* %arg1.shape, align 8, !tbaa !60
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 20
  br i1 %91, label %assert_end31, label %assert_fail30, !prof !4

assert_fail30:                                    ; preds = %assert_end29
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %92(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.13, i64 0, i64 0))
  br label %common.ret

assert_end31:                                     ; preds = %assert_end29
  %.not66 = icmp eq i64* %arg1.strides, null
  br i1 %.not66, label %if_end33, label %if_then32, !prof !43

if_then32:                                        ; preds = %assert_end31
  %93 = load i64, i64* %arg1.strides, align 8, !tbaa !74
  %94 = trunc i64 %93 to i32
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %if_end33, label %assert_fail34, !prof !4

if_end33:                                         ; preds = %if_then32, %assert_end31
  %96 = getelementptr inbounds %1, %1* %arg164, i64 0, i32 6
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %assert_end37, label %assert_fail36, !prof !4

assert_fail34:                                    ; preds = %if_then32
  %99 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %99(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.14, i64 0, i64 0))
  br label %common.ret

assert_fail36:                                    ; preds = %if_end33
  %100 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %100(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.15, i64 0, i64 0))
  br label %common.ret

assert_end37:                                     ; preds = %if_end33
  %101 = getelementptr inbounds %1, %1* %arg164, i64 0, i32 1, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %assert_end39, label %assert_fail38, !prof !4

assert_fail38:                                    ; preds = %assert_end37
  %104 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %104(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.16, i64 0, i64 0))
  br label %common.ret

assert_end39:                                     ; preds = %assert_end37
  %105 = getelementptr inbounds %1, %1* %arg164, i64 0, i32 1, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %dev_id, %106
  br i1 %107, label %assert_end41, label %assert_fail40, !prof !4

assert_fail40:                                    ; preds = %assert_end39
  %108 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %108(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.17, i64 0, i64 0))
  br label %common.ret

assert_end41:                                     ; preds = %assert_end39
  %109 = getelementptr inbounds %1, %1* %arg265, i64 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %assert_end45, label %assert_fail42, !prof !4

assert_fail42:                                    ; preds = %assert_end41
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %112(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.18, i64 0, i64 0))
  br label %common.ret

assert_end45:                                     ; preds = %assert_end41
  %113 = getelementptr inbounds %1, %1* %arg265, i64 0, i32 3, i32 2
  %114 = load i16, i16* %113, align 2
  %115 = icmp eq i16 %114, 1
  %116 = getelementptr inbounds %1, %1* %arg265, i64 0, i32 3, i32 1
  %117 = load i8, i8* %116, align 1
  %118 = icmp eq i8 %117, 32
  %119 = getelementptr inbounds %1, %1* %arg265, i64 0, i32 3, i32 0
  %120 = load i8, i8* %119, align 1
  %121 = icmp eq i8 %120, 2
  %122 = and i1 %118, %121
  %123 = and i1 %115, %122
  br i1 %123, label %assert_end47, label %assert_fail46, !prof !4

assert_fail46:                                    ; preds = %assert_end45
  %124 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %124(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.19, i64 0, i64 0))
  br label %common.ret

assert_end47:                                     ; preds = %assert_end45
  %125 = load i64, i64* %arg2.shape, align 8, !tbaa !88
  %126 = trunc i64 %125 to i32
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %assert_end49, label %assert_fail48, !prof !4

assert_fail48:                                    ; preds = %assert_end47
  %128 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %128(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.20, i64 0, i64 0))
  br label %common.ret

assert_end49:                                     ; preds = %assert_end47
  %129 = getelementptr inbounds i64, i64* %arg2.shape, i64 1
  %130 = load i64, i64* %129, align 8, !tbaa !102
  %131 = trunc i64 %130 to i32
  %132 = icmp eq i32 %131, 20
  br i1 %132, label %assert_end51, label %assert_fail50, !prof !4

assert_fail50:                                    ; preds = %assert_end49
  %133 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %133(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.21, i64 0, i64 0))
  br label %common.ret

assert_end51:                                     ; preds = %assert_end49
  %.not67 = icmp eq i64* %arg2.strides, null
  br i1 %.not67, label %if_end53, label %if_then52, !prof !43

if_then52:                                        ; preds = %assert_end51
  %134 = load i64, i64* %arg2.strides, align 8, !tbaa !104
  %135 = trunc i64 %134 to i32
  %136 = icmp eq i32 %135, 20
  %137 = getelementptr inbounds i64, i64* %arg2.strides, i64 1
  %138 = load i64, i64* %137, align 8, !tbaa !118
  %139 = trunc i64 %138 to i32
  %140 = icmp eq i32 %139, 1
  %141 = and i1 %136, %140
  br i1 %141, label %if_end53, label %assert_fail54, !prof !4

if_end53:                                         ; preds = %if_then52, %assert_end51
  %142 = getelementptr inbounds %1, %1* %arg265, i64 0, i32 6
  %143 = load i64, i64* %142, align 8
  %144 = icmp eq i64 %143, 0
  br i1 %144, label %assert_end57, label %assert_fail56, !prof !4

assert_fail54:                                    ; preds = %if_then52
  %145 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %145(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.22, i64 0, i64 0))
  br label %common.ret

assert_fail56:                                    ; preds = %if_end53
  %146 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %146(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.23, i64 0, i64 0))
  br label %common.ret

assert_end57:                                     ; preds = %if_end53
  %147 = getelementptr inbounds %1, %1* %arg265, i64 0, i32 1, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %assert_end59, label %assert_fail58, !prof !4

assert_fail58:                                    ; preds = %assert_end57
  %150 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %150(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.24, i64 0, i64 0))
  br label %common.ret

assert_end59:                                     ; preds = %assert_end57
  %151 = getelementptr inbounds %1, %1* %arg265, i64 0, i32 1, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %dev_id, %152
  br i1 %153, label %assert_end61, label %assert_fail60, !prof !4

assert_fail60:                                    ; preds = %assert_end59
  %154 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %154(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.25, i64 0, i64 0))
  br label %common.ret

assert_end61:                                     ; preds = %assert_end59
  tail call fastcc void @tvmgen_default_fused_nn_bias_add_compute_(i8* %T_add, i8* %placeholder, i8* %placeholder62)
  br label %common.ret
}

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #0

; Function Attrs: nofree noinline norecurse nosync nounwind
define internal fastcc void @tvmgen_default_fused_nn_bias_add_compute_(i8* noalias nocapture writeonly align 128 %0, i8* noalias nocapture readonly align 128 %1, i8* noalias nocapture readonly align 128 %2) unnamed_addr #1 {
if_end.15.1:
  %3 = bitcast i8* %2 to <4 x float>*
  %4 = load <4 x float>, <4 x float>* %3, align 128, !tbaa !120
  %5 = bitcast i8* %1 to <4 x float>*
  %6 = load <4 x float>, <4 x float>* %5, align 128, !tbaa !123
  %7 = fadd <4 x float> %4, %6
  %8 = bitcast i8* %0 to <4 x float>*
  store <4 x float> %7, <4 x float>* %8, align 128, !tbaa !126
  %9 = getelementptr inbounds i8, i8* %2, i64 16
  %10 = getelementptr inbounds i8, i8* %1, i64 16
  %11 = getelementptr inbounds i8, i8* %0, i64 16
  %12 = bitcast i8* %9 to <4 x float>*
  %13 = load <4 x float>, <4 x float>* %12, align 16, !tbaa !120
  %14 = bitcast i8* %10 to <4 x float>*
  %15 = load <4 x float>, <4 x float>* %14, align 16, !tbaa !123
  %16 = fadd <4 x float> %13, %15
  %17 = bitcast i8* %11 to <4 x float>*
  store <4 x float> %16, <4 x float>* %17, align 16, !tbaa !126
  %18 = getelementptr inbounds i8, i8* %2, i64 32
  %19 = getelementptr inbounds i8, i8* %1, i64 32
  %20 = getelementptr inbounds i8, i8* %0, i64 32
  %21 = bitcast i8* %18 to <4 x float>*
  %22 = load <4 x float>, <4 x float>* %21, align 32, !tbaa !120
  %23 = bitcast i8* %19 to <4 x float>*
  %24 = load <4 x float>, <4 x float>* %23, align 32, !tbaa !123
  %25 = fadd <4 x float> %22, %24
  %26 = bitcast i8* %20 to <4 x float>*
  store <4 x float> %25, <4 x float>* %26, align 32, !tbaa !126
  %27 = getelementptr inbounds i8, i8* %2, i64 48
  %28 = getelementptr inbounds i8, i8* %1, i64 48
  %29 = getelementptr inbounds i8, i8* %0, i64 48
  %30 = bitcast i8* %27 to <4 x float>*
  %31 = load <4 x float>, <4 x float>* %30, align 16, !tbaa !120
  %32 = bitcast i8* %28 to <4 x float>*
  %33 = load <4 x float>, <4 x float>* %32, align 16, !tbaa !123
  %34 = fadd <4 x float> %31, %33
  %35 = bitcast i8* %29 to <4 x float>*
  store <4 x float> %34, <4 x float>* %35, align 16, !tbaa !126
  %36 = getelementptr inbounds i8, i8* %2, i64 64
  %37 = getelementptr inbounds i8, i8* %1, i64 64
  %38 = getelementptr inbounds i8, i8* %0, i64 64
  %39 = bitcast i8* %36 to <4 x float>*
  %40 = load <4 x float>, <4 x float>* %39, align 64, !tbaa !120
  %41 = bitcast i8* %37 to <4 x float>*
  %42 = load <4 x float>, <4 x float>* %41, align 64, !tbaa !123
  %43 = fadd <4 x float> %40, %42
  %44 = bitcast i8* %38 to <4 x float>*
  store <4 x float> %43, <4 x float>* %44, align 64, !tbaa !126
  ret void
}

define dllexport i32 @tvmgen_default_fused_nn_dense(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 3
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end63, %assert_fail62, %assert_fail60, %assert_fail58, %assert_fail56, %assert_fail52, %assert_fail50, %assert_fail48, %assert_fail44, %assert_fail42, %assert_fail40, %assert_fail38, %assert_fail36, %assert_fail32, %assert_fail30, %assert_fail28, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail12, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail2, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail2 ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail12 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail28 ], [ -1, %assert_fail30 ], [ -1, %assert_fail32 ], [ -1, %assert_fail36 ], [ -1, %assert_fail38 ], [ -1, %assert_fail40 ], [ -1, %assert_fail42 ], [ -1, %assert_fail44 ], [ -1, %assert_fail48 ], [ -1, %assert_fail50 ], [ -1, %assert_fail52 ], [ -1, %assert_fail56 ], [ -1, %assert_fail58 ], [ -1, %assert_fail60 ], [ -1, %assert_fail62 ], [ %165, %assert_end63 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.26, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %1**
  %arg065 = load %1*, %1** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !129
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %1**
  %arg166 = load %1*, %1** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !143
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %1**
  %arg267 = load %1*, %1** %15, align 8
  %16 = getelementptr inbounds i8, i8* %1, i64 8
  %17 = bitcast i8* %16 to i32*
  %arg2.code = load i32, i32* %17, align 4, !tbaa !145
  %18 = getelementptr inbounds %1, %1* %arg065, i64 0, i32 0
  %placeholder = load i8*, i8** %18, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %placeholder, i64 128) ]
  %19 = getelementptr inbounds %1, %1* %arg065, i64 0, i32 4
  %arg0.shape = load i64*, i64** %19, align 8
  %20 = getelementptr inbounds %1, %1* %arg065, i64 0, i32 5
  %arg0.strides = load i64*, i64** %20, align 8
  %21 = getelementptr inbounds %1, %1* %arg065, i64 0, i32 1, i32 1
  %dev_id = load i32, i32* %21, align 4
  %22 = getelementptr inbounds %1, %1* %arg166, i64 0, i32 0
  %placeholder64 = load i8*, i8** %22, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %placeholder64, i64 128) ]
  %23 = getelementptr inbounds %1, %1* %arg166, i64 0, i32 4
  %arg1.shape = load i64*, i64** %23, align 8
  %24 = getelementptr inbounds %1, %1* %arg166, i64 0, i32 5
  %arg1.strides = load i64*, i64** %24, align 8
  %25 = getelementptr inbounds %1, %1* %arg267, i64 0, i32 0
  %compute = load i8*, i8** %25, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %compute, i64 128) ]
  %26 = getelementptr inbounds %1, %1* %arg267, i64 0, i32 4
  %arg2.shape = load i64*, i64** %26, align 8
  %27 = getelementptr inbounds %1, %1* %arg267, i64 0, i32 5
  %arg2.strides = load i64*, i64** %27, align 8
  switch i32 %arg0.code, label %assert_fail2 [
    i32 13, label %assert_end3
    i32 7, label %assert_end3
    i32 4, label %assert_end3
    i32 3, label %assert_end3
  ]

assert_fail2:                                     ; preds = %assert_end
  %28 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %28(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.27, i64 0, i64 0))
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
  tail call void %29(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.28, i64 0, i64 0))
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
  tail call void %30(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.29, i64 0, i64 0))
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  %31 = getelementptr inbounds %1, %1* %arg065, i64 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %assert_end11, label %assert_fail8, !prof !4

assert_fail8:                                     ; preds = %assert_end7
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %34(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.4, i64 0, i64 0))
  br label %common.ret

assert_end11:                                     ; preds = %assert_end7
  %35 = getelementptr inbounds %1, %1* %arg065, i64 0, i32 3, i32 2
  %36 = load i16, i16* %35, align 2
  %37 = icmp eq i16 %36, 1
  %38 = getelementptr inbounds %1, %1* %arg065, i64 0, i32 3, i32 1
  %39 = load i8, i8* %38, align 1
  %40 = icmp eq i8 %39, 32
  %41 = getelementptr inbounds %1, %1* %arg065, i64 0, i32 3, i32 0
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
  %47 = load i64, i64* %arg0.shape, align 8, !tbaa !148
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %assert_end15, label %assert_fail14, !prof !4

assert_fail14:                                    ; preds = %assert_end13
  %50 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %50(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.6, i64 0, i64 0))
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %51 = getelementptr inbounds i64, i64* %arg0.shape, i64 1
  %52 = load i64, i64* %51, align 8, !tbaa !162
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %53, 28
  br i1 %54, label %assert_end17, label %assert_fail16, !prof !4

assert_fail16:                                    ; preds = %assert_end15
  %55 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %55(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.30, i64 0, i64 0))
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !43

if_then:                                          ; preds = %assert_end17
  %56 = load i64, i64* %arg0.strides, align 8, !tbaa !164
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %57, 28
  %59 = getelementptr inbounds i64, i64* %arg0.strides, i64 1
  %60 = load i64, i64* %59, align 8, !tbaa !178
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %61, 1
  %63 = and i1 %58, %62
  br i1 %63, label %if_end, label %assert_fail18, !prof !4

if_end:                                           ; preds = %if_then, %assert_end17
  %64 = getelementptr inbounds %1, %1* %arg065, i64 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %assert_end21, label %assert_fail20, !prof !4

assert_fail18:                                    ; preds = %if_then
  %67 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %67(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.31, i64 0, i64 0))
  br label %common.ret

assert_fail20:                                    ; preds = %if_end
  %68 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %68(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.9, i64 0, i64 0))
  br label %common.ret

assert_end21:                                     ; preds = %if_end
  %69 = getelementptr inbounds %1, %1* %arg065, i64 0, i32 1, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %assert_end23, label %assert_fail22, !prof !4

assert_fail22:                                    ; preds = %assert_end21
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %72(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.10, i64 0, i64 0))
  br label %common.ret

assert_end23:                                     ; preds = %assert_end21
  %73 = getelementptr inbounds %1, %1* %arg166, i64 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %assert_end27, label %assert_fail24, !prof !4

assert_fail24:                                    ; preds = %assert_end23
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %76(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.32, i64 0, i64 0))
  br label %common.ret

assert_end27:                                     ; preds = %assert_end23
  %77 = getelementptr inbounds %1, %1* %arg166, i64 0, i32 3, i32 2
  %78 = load i16, i16* %77, align 2
  %79 = icmp eq i16 %78, 1
  %80 = getelementptr inbounds %1, %1* %arg166, i64 0, i32 3, i32 1
  %81 = load i8, i8* %80, align 1
  %82 = icmp eq i8 %81, 32
  %83 = getelementptr inbounds %1, %1* %arg166, i64 0, i32 3, i32 0
  %84 = load i8, i8* %83, align 1
  %85 = icmp eq i8 %84, 2
  %86 = and i1 %82, %85
  %87 = and i1 %79, %86
  br i1 %87, label %assert_end29, label %assert_fail28, !prof !4

assert_fail28:                                    ; preds = %assert_end27
  %88 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %88(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.12, i64 0, i64 0))
  br label %common.ret

assert_end29:                                     ; preds = %assert_end27
  %89 = load i64, i64* %arg1.shape, align 8, !tbaa !180
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 20
  br i1 %91, label %assert_end31, label %assert_fail30, !prof !4

assert_fail30:                                    ; preds = %assert_end29
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %92(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.13, i64 0, i64 0))
  br label %common.ret

assert_end31:                                     ; preds = %assert_end29
  %93 = getelementptr inbounds i64, i64* %arg1.shape, i64 1
  %94 = load i64, i64* %93, align 8, !tbaa !194
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %95, 28
  br i1 %96, label %assert_end33, label %assert_fail32, !prof !4

assert_fail32:                                    ; preds = %assert_end31
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %97(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.33, i64 0, i64 0))
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %.not68 = icmp eq i64* %arg1.strides, null
  br i1 %.not68, label %if_end35, label %if_then34, !prof !43

if_then34:                                        ; preds = %assert_end33
  %98 = load i64, i64* %arg1.strides, align 8, !tbaa !196
  %99 = trunc i64 %98 to i32
  %100 = icmp eq i32 %99, 28
  %101 = getelementptr inbounds i64, i64* %arg1.strides, i64 1
  %102 = load i64, i64* %101, align 8, !tbaa !210
  %103 = trunc i64 %102 to i32
  %104 = icmp eq i32 %103, 1
  %105 = and i1 %100, %104
  br i1 %105, label %if_end35, label %assert_fail36, !prof !4

if_end35:                                         ; preds = %if_then34, %assert_end33
  %106 = getelementptr inbounds %1, %1* %arg166, i64 0, i32 6
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %assert_end39, label %assert_fail38, !prof !4

assert_fail36:                                    ; preds = %if_then34
  %109 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %109(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.34, i64 0, i64 0))
  br label %common.ret

assert_fail38:                                    ; preds = %if_end35
  %110 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %110(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.15, i64 0, i64 0))
  br label %common.ret

assert_end39:                                     ; preds = %if_end35
  %111 = getelementptr inbounds %1, %1* %arg166, i64 0, i32 1, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %assert_end41, label %assert_fail40, !prof !4

assert_fail40:                                    ; preds = %assert_end39
  %114 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %114(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.16, i64 0, i64 0))
  br label %common.ret

assert_end41:                                     ; preds = %assert_end39
  %115 = getelementptr inbounds %1, %1* %arg166, i64 0, i32 1, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %dev_id, %116
  br i1 %117, label %assert_end43, label %assert_fail42, !prof !4

assert_fail42:                                    ; preds = %assert_end41
  %118 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %118(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.17, i64 0, i64 0))
  br label %common.ret

assert_end43:                                     ; preds = %assert_end41
  %119 = getelementptr inbounds %1, %1* %arg267, i64 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %assert_end47, label %assert_fail44, !prof !4

assert_fail44:                                    ; preds = %assert_end43
  %122 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %122(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.18, i64 0, i64 0))
  br label %common.ret

assert_end47:                                     ; preds = %assert_end43
  %123 = getelementptr inbounds %1, %1* %arg267, i64 0, i32 3, i32 2
  %124 = load i16, i16* %123, align 2
  %125 = icmp eq i16 %124, 1
  %126 = getelementptr inbounds %1, %1* %arg267, i64 0, i32 3, i32 1
  %127 = load i8, i8* %126, align 1
  %128 = icmp eq i8 %127, 32
  %129 = getelementptr inbounds %1, %1* %arg267, i64 0, i32 3, i32 0
  %130 = load i8, i8* %129, align 1
  %131 = icmp eq i8 %130, 2
  %132 = and i1 %128, %131
  %133 = and i1 %125, %132
  br i1 %133, label %assert_end49, label %assert_fail48, !prof !4

assert_fail48:                                    ; preds = %assert_end47
  %134 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %134(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.19, i64 0, i64 0))
  br label %common.ret

assert_end49:                                     ; preds = %assert_end47
  %135 = load i64, i64* %arg2.shape, align 8, !tbaa !212
  %136 = trunc i64 %135 to i32
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %assert_end51, label %assert_fail50, !prof !4

assert_fail50:                                    ; preds = %assert_end49
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %138(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.20, i64 0, i64 0))
  br label %common.ret

assert_end51:                                     ; preds = %assert_end49
  %139 = getelementptr inbounds i64, i64* %arg2.shape, i64 1
  %140 = load i64, i64* %139, align 8, !tbaa !226
  %141 = trunc i64 %140 to i32
  %142 = icmp eq i32 %141, 20
  br i1 %142, label %assert_end53, label %assert_fail52, !prof !4

assert_fail52:                                    ; preds = %assert_end51
  %143 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %143(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.21, i64 0, i64 0))
  br label %common.ret

assert_end53:                                     ; preds = %assert_end51
  %.not69 = icmp eq i64* %arg2.strides, null
  br i1 %.not69, label %if_end55, label %if_then54, !prof !43

if_then54:                                        ; preds = %assert_end53
  %144 = load i64, i64* %arg2.strides, align 8, !tbaa !228
  %145 = trunc i64 %144 to i32
  %146 = icmp eq i32 %145, 20
  %147 = getelementptr inbounds i64, i64* %arg2.strides, i64 1
  %148 = load i64, i64* %147, align 8, !tbaa !242
  %149 = trunc i64 %148 to i32
  %150 = icmp eq i32 %149, 1
  %151 = and i1 %146, %150
  br i1 %151, label %if_end55, label %assert_fail56, !prof !4

if_end55:                                         ; preds = %if_then54, %assert_end53
  %152 = getelementptr inbounds %1, %1* %arg267, i64 0, i32 6
  %153 = load i64, i64* %152, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %assert_end59, label %assert_fail58, !prof !4

assert_fail56:                                    ; preds = %if_then54
  %155 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %155(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.22, i64 0, i64 0))
  br label %common.ret

assert_fail58:                                    ; preds = %if_end55
  %156 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %156(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.23, i64 0, i64 0))
  br label %common.ret

assert_end59:                                     ; preds = %if_end55
  %157 = getelementptr inbounds %1, %1* %arg267, i64 0, i32 1, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %assert_end61, label %assert_fail60, !prof !4

assert_fail60:                                    ; preds = %assert_end59
  %160 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %160(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.24, i64 0, i64 0))
  br label %common.ret

assert_end61:                                     ; preds = %assert_end59
  %161 = getelementptr inbounds %1, %1* %arg267, i64 0, i32 1, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %dev_id, %162
  br i1 %163, label %assert_end63, label %assert_fail62, !prof !4

assert_fail62:                                    ; preds = %assert_end61
  %164 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %164(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.25, i64 0, i64 0))
  br label %common.ret

assert_end63:                                     ; preds = %assert_end61
  %165 = tail call fastcc i32 @tvmgen_default_fused_nn_dense_compute_(i8* %placeholder64, i8* %placeholder, i8* %compute, i32 %dev_id)
  br label %common.ret
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_nn_dense_compute_(i8* noalias nocapture readonly align 128 %0, i8* noalias align 128 %1, i8* noalias align 128 %2, i32 %3) unnamed_addr #2 {
entry:
  %4 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !5
  %packed_weight = tail call i8* %4(i32 1, i32 %3, i64 2240, i32 2, i32 32)
  call void @llvm.assume(i1 true) [ "align"(i8* %packed_weight, i64 128) ]
  %5 = icmp eq i8* %packed_weight, null
  br i1 %5, label %common.ret, label %vector.body, !prof !4

vector.body:                                      ; preds = %entry
  %6 = bitcast i8* %0 to <4 x float>*
  %wide.load = load <4 x float>, <4 x float>* %6, align 128, !tbaa !244
  %7 = getelementptr inbounds i8, i8* %0, i64 112
  %8 = bitcast i8* %7 to <4 x float>*
  %wide.load14 = load <4 x float>, <4 x float>* %8, align 16, !tbaa !244
  %9 = getelementptr inbounds i8, i8* %0, i64 224
  %10 = bitcast i8* %9 to <4 x float>*
  %wide.load15 = load <4 x float>, <4 x float>* %10, align 32, !tbaa !244
  %11 = getelementptr inbounds i8, i8* %0, i64 336
  %12 = bitcast i8* %11 to <4 x float>*
  %wide.load16 = load <4 x float>, <4 x float>* %12, align 16, !tbaa !244
  %13 = getelementptr inbounds i8, i8* %0, i64 448
  %14 = bitcast i8* %13 to <4 x float>*
  %wide.load17 = load <4 x float>, <4 x float>* %14, align 64, !tbaa !244
  %15 = bitcast i8* %packed_weight to <20 x float>*
  %16 = shufflevector <4 x float> %wide.load, <4 x float> %wide.load14, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %17 = shufflevector <4 x float> %wide.load15, <4 x float> %wide.load16, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %18 = shufflevector <8 x float> %16, <8 x float> %17, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %19 = shufflevector <4 x float> %wide.load17, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec = shufflevector <16 x float> %18, <16 x float> %19, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec, <20 x float>* %15, align 128, !tbaa !247
  %20 = getelementptr inbounds i8, i8* %0, i64 16
  %21 = bitcast i8* %20 to <4 x float>*
  %wide.load.1 = load <4 x float>, <4 x float>* %21, align 16, !tbaa !244
  %22 = getelementptr inbounds i8, i8* %0, i64 128
  %23 = bitcast i8* %22 to <4 x float>*
  %wide.load14.1 = load <4 x float>, <4 x float>* %23, align 128, !tbaa !244
  %24 = getelementptr inbounds i8, i8* %0, i64 240
  %25 = bitcast i8* %24 to <4 x float>*
  %wide.load15.1 = load <4 x float>, <4 x float>* %25, align 16, !tbaa !244
  %26 = getelementptr inbounds i8, i8* %0, i64 352
  %27 = bitcast i8* %26 to <4 x float>*
  %wide.load16.1 = load <4 x float>, <4 x float>* %27, align 32, !tbaa !244
  %28 = getelementptr inbounds i8, i8* %0, i64 464
  %29 = bitcast i8* %28 to <4 x float>*
  %wide.load17.1 = load <4 x float>, <4 x float>* %29, align 16, !tbaa !244
  %30 = getelementptr inbounds i8, i8* %packed_weight, i64 80
  %31 = bitcast i8* %30 to <20 x float>*
  %32 = shufflevector <4 x float> %wide.load.1, <4 x float> %wide.load14.1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %33 = shufflevector <4 x float> %wide.load15.1, <4 x float> %wide.load16.1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %34 = shufflevector <8 x float> %32, <8 x float> %33, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %35 = shufflevector <4 x float> %wide.load17.1, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec.1 = shufflevector <16 x float> %34, <16 x float> %35, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec.1, <20 x float>* %31, align 16, !tbaa !247
  %36 = getelementptr inbounds i8, i8* %0, i64 32
  %37 = bitcast i8* %36 to <4 x float>*
  %wide.load.2 = load <4 x float>, <4 x float>* %37, align 32, !tbaa !244
  %38 = getelementptr inbounds i8, i8* %0, i64 144
  %39 = bitcast i8* %38 to <4 x float>*
  %wide.load14.2 = load <4 x float>, <4 x float>* %39, align 16, !tbaa !244
  %40 = getelementptr inbounds i8, i8* %0, i64 256
  %41 = bitcast i8* %40 to <4 x float>*
  %wide.load15.2 = load <4 x float>, <4 x float>* %41, align 128, !tbaa !244
  %42 = getelementptr inbounds i8, i8* %0, i64 368
  %43 = bitcast i8* %42 to <4 x float>*
  %wide.load16.2 = load <4 x float>, <4 x float>* %43, align 16, !tbaa !244
  %44 = getelementptr inbounds i8, i8* %0, i64 480
  %45 = bitcast i8* %44 to <4 x float>*
  %wide.load17.2 = load <4 x float>, <4 x float>* %45, align 32, !tbaa !244
  %46 = getelementptr inbounds i8, i8* %packed_weight, i64 160
  %47 = bitcast i8* %46 to <20 x float>*
  %48 = shufflevector <4 x float> %wide.load.2, <4 x float> %wide.load14.2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %49 = shufflevector <4 x float> %wide.load15.2, <4 x float> %wide.load16.2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %50 = shufflevector <8 x float> %48, <8 x float> %49, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %51 = shufflevector <4 x float> %wide.load17.2, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec.2 = shufflevector <16 x float> %50, <16 x float> %51, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec.2, <20 x float>* %47, align 32, !tbaa !247
  %52 = getelementptr inbounds i8, i8* %0, i64 48
  %53 = bitcast i8* %52 to <4 x float>*
  %wide.load.3 = load <4 x float>, <4 x float>* %53, align 16, !tbaa !244
  %54 = getelementptr inbounds i8, i8* %0, i64 160
  %55 = bitcast i8* %54 to <4 x float>*
  %wide.load14.3 = load <4 x float>, <4 x float>* %55, align 32, !tbaa !244
  %56 = getelementptr inbounds i8, i8* %0, i64 272
  %57 = bitcast i8* %56 to <4 x float>*
  %wide.load15.3 = load <4 x float>, <4 x float>* %57, align 16, !tbaa !244
  %58 = getelementptr inbounds i8, i8* %0, i64 384
  %59 = bitcast i8* %58 to <4 x float>*
  %wide.load16.3 = load <4 x float>, <4 x float>* %59, align 128, !tbaa !244
  %60 = getelementptr inbounds i8, i8* %0, i64 496
  %61 = bitcast i8* %60 to <4 x float>*
  %wide.load17.3 = load <4 x float>, <4 x float>* %61, align 16, !tbaa !244
  %62 = getelementptr inbounds i8, i8* %packed_weight, i64 240
  %63 = bitcast i8* %62 to <20 x float>*
  %64 = shufflevector <4 x float> %wide.load.3, <4 x float> %wide.load14.3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %65 = shufflevector <4 x float> %wide.load15.3, <4 x float> %wide.load16.3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %66 = shufflevector <8 x float> %64, <8 x float> %65, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %67 = shufflevector <4 x float> %wide.load17.3, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec.3 = shufflevector <16 x float> %66, <16 x float> %67, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec.3, <20 x float>* %63, align 16, !tbaa !247
  %68 = getelementptr inbounds i8, i8* %0, i64 64
  %69 = bitcast i8* %68 to <4 x float>*
  %wide.load.4 = load <4 x float>, <4 x float>* %69, align 64, !tbaa !244
  %70 = getelementptr inbounds i8, i8* %0, i64 176
  %71 = bitcast i8* %70 to <4 x float>*
  %wide.load14.4 = load <4 x float>, <4 x float>* %71, align 16, !tbaa !244
  %72 = getelementptr inbounds i8, i8* %0, i64 288
  %73 = bitcast i8* %72 to <4 x float>*
  %wide.load15.4 = load <4 x float>, <4 x float>* %73, align 32, !tbaa !244
  %74 = getelementptr inbounds i8, i8* %0, i64 400
  %75 = bitcast i8* %74 to <4 x float>*
  %wide.load16.4 = load <4 x float>, <4 x float>* %75, align 16, !tbaa !244
  %76 = getelementptr inbounds i8, i8* %0, i64 512
  %77 = bitcast i8* %76 to <4 x float>*
  %wide.load17.4 = load <4 x float>, <4 x float>* %77, align 128, !tbaa !244
  %78 = getelementptr inbounds i8, i8* %packed_weight, i64 320
  %79 = bitcast i8* %78 to <20 x float>*
  %80 = shufflevector <4 x float> %wide.load.4, <4 x float> %wide.load14.4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %81 = shufflevector <4 x float> %wide.load15.4, <4 x float> %wide.load16.4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %82 = shufflevector <8 x float> %80, <8 x float> %81, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %83 = shufflevector <4 x float> %wide.load17.4, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec.4 = shufflevector <16 x float> %82, <16 x float> %83, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec.4, <20 x float>* %79, align 64, !tbaa !247
  %84 = getelementptr inbounds i8, i8* %0, i64 80
  %85 = bitcast i8* %84 to <4 x float>*
  %wide.load.5 = load <4 x float>, <4 x float>* %85, align 16, !tbaa !244
  %86 = getelementptr inbounds i8, i8* %0, i64 192
  %87 = bitcast i8* %86 to <4 x float>*
  %wide.load14.5 = load <4 x float>, <4 x float>* %87, align 64, !tbaa !244
  %88 = getelementptr inbounds i8, i8* %0, i64 304
  %89 = bitcast i8* %88 to <4 x float>*
  %wide.load15.5 = load <4 x float>, <4 x float>* %89, align 16, !tbaa !244
  %90 = getelementptr inbounds i8, i8* %0, i64 416
  %91 = bitcast i8* %90 to <4 x float>*
  %wide.load16.5 = load <4 x float>, <4 x float>* %91, align 32, !tbaa !244
  %92 = getelementptr inbounds i8, i8* %0, i64 528
  %93 = bitcast i8* %92 to <4 x float>*
  %wide.load17.5 = load <4 x float>, <4 x float>* %93, align 16, !tbaa !244
  %94 = getelementptr inbounds i8, i8* %packed_weight, i64 400
  %95 = bitcast i8* %94 to <20 x float>*
  %96 = shufflevector <4 x float> %wide.load.5, <4 x float> %wide.load14.5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %97 = shufflevector <4 x float> %wide.load15.5, <4 x float> %wide.load16.5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %98 = shufflevector <8 x float> %96, <8 x float> %97, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %99 = shufflevector <4 x float> %wide.load17.5, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec.5 = shufflevector <16 x float> %98, <16 x float> %99, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec.5, <20 x float>* %95, align 16, !tbaa !247
  %100 = getelementptr inbounds i8, i8* %0, i64 96
  %101 = bitcast i8* %100 to <4 x float>*
  %wide.load.6 = load <4 x float>, <4 x float>* %101, align 32, !tbaa !244
  %102 = getelementptr inbounds i8, i8* %0, i64 208
  %103 = bitcast i8* %102 to <4 x float>*
  %wide.load14.6 = load <4 x float>, <4 x float>* %103, align 16, !tbaa !244
  %104 = getelementptr inbounds i8, i8* %0, i64 320
  %105 = bitcast i8* %104 to <4 x float>*
  %wide.load15.6 = load <4 x float>, <4 x float>* %105, align 64, !tbaa !244
  %106 = getelementptr inbounds i8, i8* %0, i64 432
  %107 = bitcast i8* %106 to <4 x float>*
  %wide.load16.6 = load <4 x float>, <4 x float>* %107, align 16, !tbaa !244
  %108 = getelementptr inbounds i8, i8* %0, i64 544
  %109 = bitcast i8* %108 to <4 x float>*
  %wide.load17.6 = load <4 x float>, <4 x float>* %109, align 32, !tbaa !244
  %110 = getelementptr inbounds i8, i8* %packed_weight, i64 480
  %111 = bitcast i8* %110 to <20 x float>*
  %112 = shufflevector <4 x float> %wide.load.6, <4 x float> %wide.load14.6, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %113 = shufflevector <4 x float> %wide.load15.6, <4 x float> %wide.load16.6, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %114 = shufflevector <8 x float> %112, <8 x float> %113, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %115 = shufflevector <4 x float> %wide.load17.6, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec.6 = shufflevector <16 x float> %114, <16 x float> %115, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec.6, <20 x float>* %111, align 32, !tbaa !247
  %116 = getelementptr inbounds i8, i8* %0, i64 560
  %117 = bitcast i8* %116 to <4 x float>*
  %wide.load25 = load <4 x float>, <4 x float>* %117, align 16, !tbaa !244
  %118 = getelementptr inbounds i8, i8* %0, i64 672
  %119 = bitcast i8* %118 to <4 x float>*
  %wide.load26 = load <4 x float>, <4 x float>* %119, align 32, !tbaa !244
  %120 = getelementptr inbounds i8, i8* %0, i64 784
  %121 = bitcast i8* %120 to <4 x float>*
  %wide.load27 = load <4 x float>, <4 x float>* %121, align 16, !tbaa !244
  %122 = getelementptr inbounds i8, i8* %0, i64 896
  %123 = bitcast i8* %122 to <4 x float>*
  %wide.load28 = load <4 x float>, <4 x float>* %123, align 128, !tbaa !244
  %124 = getelementptr inbounds i8, i8* %0, i64 1008
  %125 = bitcast i8* %124 to <4 x float>*
  %wide.load29 = load <4 x float>, <4 x float>* %125, align 16, !tbaa !244
  %126 = getelementptr inbounds i8, i8* %packed_weight, i64 560
  %127 = bitcast i8* %126 to <20 x float>*
  %128 = shufflevector <4 x float> %wide.load25, <4 x float> %wide.load26, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %129 = shufflevector <4 x float> %wide.load27, <4 x float> %wide.load28, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %130 = shufflevector <8 x float> %128, <8 x float> %129, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %131 = shufflevector <4 x float> %wide.load29, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec30 = shufflevector <16 x float> %130, <16 x float> %131, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec30, <20 x float>* %127, align 16, !tbaa !247
  %132 = getelementptr inbounds i8, i8* %0, i64 576
  %133 = bitcast i8* %132 to <4 x float>*
  %wide.load25.1 = load <4 x float>, <4 x float>* %133, align 64, !tbaa !244
  %134 = getelementptr inbounds i8, i8* %0, i64 688
  %135 = bitcast i8* %134 to <4 x float>*
  %wide.load26.1 = load <4 x float>, <4 x float>* %135, align 16, !tbaa !244
  %136 = getelementptr inbounds i8, i8* %0, i64 800
  %137 = bitcast i8* %136 to <4 x float>*
  %wide.load27.1 = load <4 x float>, <4 x float>* %137, align 32, !tbaa !244
  %138 = getelementptr inbounds i8, i8* %0, i64 912
  %139 = bitcast i8* %138 to <4 x float>*
  %wide.load28.1 = load <4 x float>, <4 x float>* %139, align 16, !tbaa !244
  %140 = getelementptr inbounds i8, i8* %0, i64 1024
  %141 = bitcast i8* %140 to <4 x float>*
  %wide.load29.1 = load <4 x float>, <4 x float>* %141, align 128, !tbaa !244
  %142 = getelementptr inbounds i8, i8* %packed_weight, i64 640
  %143 = bitcast i8* %142 to <20 x float>*
  %144 = shufflevector <4 x float> %wide.load25.1, <4 x float> %wide.load26.1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %145 = shufflevector <4 x float> %wide.load27.1, <4 x float> %wide.load28.1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %146 = shufflevector <8 x float> %144, <8 x float> %145, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %147 = shufflevector <4 x float> %wide.load29.1, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec30.1 = shufflevector <16 x float> %146, <16 x float> %147, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec30.1, <20 x float>* %143, align 128, !tbaa !247
  %148 = getelementptr inbounds i8, i8* %0, i64 592
  %149 = bitcast i8* %148 to <4 x float>*
  %wide.load25.2 = load <4 x float>, <4 x float>* %149, align 16, !tbaa !244
  %150 = getelementptr inbounds i8, i8* %0, i64 704
  %151 = bitcast i8* %150 to <4 x float>*
  %wide.load26.2 = load <4 x float>, <4 x float>* %151, align 64, !tbaa !244
  %152 = getelementptr inbounds i8, i8* %0, i64 816
  %153 = bitcast i8* %152 to <4 x float>*
  %wide.load27.2 = load <4 x float>, <4 x float>* %153, align 16, !tbaa !244
  %154 = getelementptr inbounds i8, i8* %0, i64 928
  %155 = bitcast i8* %154 to <4 x float>*
  %wide.load28.2 = load <4 x float>, <4 x float>* %155, align 32, !tbaa !244
  %156 = getelementptr inbounds i8, i8* %0, i64 1040
  %157 = bitcast i8* %156 to <4 x float>*
  %wide.load29.2 = load <4 x float>, <4 x float>* %157, align 16, !tbaa !244
  %158 = getelementptr inbounds i8, i8* %packed_weight, i64 720
  %159 = bitcast i8* %158 to <20 x float>*
  %160 = shufflevector <4 x float> %wide.load25.2, <4 x float> %wide.load26.2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %161 = shufflevector <4 x float> %wide.load27.2, <4 x float> %wide.load28.2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %162 = shufflevector <8 x float> %160, <8 x float> %161, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %163 = shufflevector <4 x float> %wide.load29.2, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec30.2 = shufflevector <16 x float> %162, <16 x float> %163, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec30.2, <20 x float>* %159, align 16, !tbaa !247
  %164 = getelementptr inbounds i8, i8* %0, i64 608
  %165 = bitcast i8* %164 to <4 x float>*
  %wide.load25.3 = load <4 x float>, <4 x float>* %165, align 32, !tbaa !244
  %166 = getelementptr inbounds i8, i8* %0, i64 720
  %167 = bitcast i8* %166 to <4 x float>*
  %wide.load26.3 = load <4 x float>, <4 x float>* %167, align 16, !tbaa !244
  %168 = getelementptr inbounds i8, i8* %0, i64 832
  %169 = bitcast i8* %168 to <4 x float>*
  %wide.load27.3 = load <4 x float>, <4 x float>* %169, align 64, !tbaa !244
  %170 = getelementptr inbounds i8, i8* %0, i64 944
  %171 = bitcast i8* %170 to <4 x float>*
  %wide.load28.3 = load <4 x float>, <4 x float>* %171, align 16, !tbaa !244
  %172 = getelementptr inbounds i8, i8* %0, i64 1056
  %173 = bitcast i8* %172 to <4 x float>*
  %wide.load29.3 = load <4 x float>, <4 x float>* %173, align 32, !tbaa !244
  %174 = getelementptr inbounds i8, i8* %packed_weight, i64 800
  %175 = bitcast i8* %174 to <20 x float>*
  %176 = shufflevector <4 x float> %wide.load25.3, <4 x float> %wide.load26.3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %177 = shufflevector <4 x float> %wide.load27.3, <4 x float> %wide.load28.3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %178 = shufflevector <8 x float> %176, <8 x float> %177, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %179 = shufflevector <4 x float> %wide.load29.3, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec30.3 = shufflevector <16 x float> %178, <16 x float> %179, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec30.3, <20 x float>* %175, align 32, !tbaa !247
  %180 = getelementptr inbounds i8, i8* %0, i64 624
  %181 = bitcast i8* %180 to <4 x float>*
  %wide.load25.4 = load <4 x float>, <4 x float>* %181, align 16, !tbaa !244
  %182 = getelementptr inbounds i8, i8* %0, i64 736
  %183 = bitcast i8* %182 to <4 x float>*
  %wide.load26.4 = load <4 x float>, <4 x float>* %183, align 32, !tbaa !244
  %184 = getelementptr inbounds i8, i8* %0, i64 848
  %185 = bitcast i8* %184 to <4 x float>*
  %wide.load27.4 = load <4 x float>, <4 x float>* %185, align 16, !tbaa !244
  %186 = getelementptr inbounds i8, i8* %0, i64 960
  %187 = bitcast i8* %186 to <4 x float>*
  %wide.load28.4 = load <4 x float>, <4 x float>* %187, align 64, !tbaa !244
  %188 = getelementptr inbounds i8, i8* %0, i64 1072
  %189 = bitcast i8* %188 to <4 x float>*
  %wide.load29.4 = load <4 x float>, <4 x float>* %189, align 16, !tbaa !244
  %190 = getelementptr inbounds i8, i8* %packed_weight, i64 880
  %191 = bitcast i8* %190 to <20 x float>*
  %192 = shufflevector <4 x float> %wide.load25.4, <4 x float> %wide.load26.4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %193 = shufflevector <4 x float> %wide.load27.4, <4 x float> %wide.load28.4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %194 = shufflevector <8 x float> %192, <8 x float> %193, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %195 = shufflevector <4 x float> %wide.load29.4, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec30.4 = shufflevector <16 x float> %194, <16 x float> %195, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec30.4, <20 x float>* %191, align 16, !tbaa !247
  %196 = getelementptr inbounds i8, i8* %0, i64 640
  %197 = bitcast i8* %196 to <4 x float>*
  %wide.load25.5 = load <4 x float>, <4 x float>* %197, align 128, !tbaa !244
  %198 = getelementptr inbounds i8, i8* %0, i64 752
  %199 = bitcast i8* %198 to <4 x float>*
  %wide.load26.5 = load <4 x float>, <4 x float>* %199, align 16, !tbaa !244
  %200 = getelementptr inbounds i8, i8* %0, i64 864
  %201 = bitcast i8* %200 to <4 x float>*
  %wide.load27.5 = load <4 x float>, <4 x float>* %201, align 32, !tbaa !244
  %202 = getelementptr inbounds i8, i8* %0, i64 976
  %203 = bitcast i8* %202 to <4 x float>*
  %wide.load28.5 = load <4 x float>, <4 x float>* %203, align 16, !tbaa !244
  %204 = getelementptr inbounds i8, i8* %0, i64 1088
  %205 = bitcast i8* %204 to <4 x float>*
  %wide.load29.5 = load <4 x float>, <4 x float>* %205, align 64, !tbaa !244
  %206 = getelementptr inbounds i8, i8* %packed_weight, i64 960
  %207 = bitcast i8* %206 to <20 x float>*
  %208 = shufflevector <4 x float> %wide.load25.5, <4 x float> %wide.load26.5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %209 = shufflevector <4 x float> %wide.load27.5, <4 x float> %wide.load28.5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %210 = shufflevector <8 x float> %208, <8 x float> %209, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %211 = shufflevector <4 x float> %wide.load29.5, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec30.5 = shufflevector <16 x float> %210, <16 x float> %211, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec30.5, <20 x float>* %207, align 64, !tbaa !247
  %212 = getelementptr inbounds i8, i8* %0, i64 656
  %213 = bitcast i8* %212 to <4 x float>*
  %wide.load25.6 = load <4 x float>, <4 x float>* %213, align 16, !tbaa !244
  %214 = getelementptr inbounds i8, i8* %0, i64 768
  %215 = bitcast i8* %214 to <4 x float>*
  %wide.load26.6 = load <4 x float>, <4 x float>* %215, align 128, !tbaa !244
  %216 = getelementptr inbounds i8, i8* %0, i64 880
  %217 = bitcast i8* %216 to <4 x float>*
  %wide.load27.6 = load <4 x float>, <4 x float>* %217, align 16, !tbaa !244
  %218 = getelementptr inbounds i8, i8* %0, i64 992
  %219 = bitcast i8* %218 to <4 x float>*
  %wide.load28.6 = load <4 x float>, <4 x float>* %219, align 32, !tbaa !244
  %220 = getelementptr inbounds i8, i8* %0, i64 1104
  %221 = bitcast i8* %220 to <4 x float>*
  %wide.load29.6 = load <4 x float>, <4 x float>* %221, align 16, !tbaa !244
  %222 = getelementptr inbounds i8, i8* %packed_weight, i64 1040
  %223 = bitcast i8* %222 to <20 x float>*
  %224 = shufflevector <4 x float> %wide.load25.6, <4 x float> %wide.load26.6, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %225 = shufflevector <4 x float> %wide.load27.6, <4 x float> %wide.load28.6, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %226 = shufflevector <8 x float> %224, <8 x float> %225, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %227 = shufflevector <4 x float> %wide.load29.6, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec30.6 = shufflevector <16 x float> %226, <16 x float> %227, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec30.6, <20 x float>* %223, align 16, !tbaa !247
  %228 = getelementptr inbounds i8, i8* %0, i64 1120
  %229 = bitcast i8* %228 to <4 x float>*
  %wide.load39 = load <4 x float>, <4 x float>* %229, align 32, !tbaa !244
  %230 = getelementptr inbounds i8, i8* %0, i64 1232
  %231 = bitcast i8* %230 to <4 x float>*
  %wide.load40 = load <4 x float>, <4 x float>* %231, align 16, !tbaa !244
  %232 = getelementptr inbounds i8, i8* %0, i64 1344
  %233 = bitcast i8* %232 to <4 x float>*
  %wide.load41 = load <4 x float>, <4 x float>* %233, align 64, !tbaa !244
  %234 = getelementptr inbounds i8, i8* %0, i64 1456
  %235 = bitcast i8* %234 to <4 x float>*
  %wide.load42 = load <4 x float>, <4 x float>* %235, align 16, !tbaa !244
  %236 = getelementptr inbounds i8, i8* %0, i64 1568
  %237 = bitcast i8* %236 to <4 x float>*
  %wide.load43 = load <4 x float>, <4 x float>* %237, align 32, !tbaa !244
  %238 = getelementptr inbounds i8, i8* %packed_weight, i64 1120
  %239 = bitcast i8* %238 to <20 x float>*
  %240 = shufflevector <4 x float> %wide.load39, <4 x float> %wide.load40, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %241 = shufflevector <4 x float> %wide.load41, <4 x float> %wide.load42, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %242 = shufflevector <8 x float> %240, <8 x float> %241, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %243 = shufflevector <4 x float> %wide.load43, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec44 = shufflevector <16 x float> %242, <16 x float> %243, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec44, <20 x float>* %239, align 32, !tbaa !247
  %244 = getelementptr inbounds i8, i8* %0, i64 1136
  %245 = bitcast i8* %244 to <4 x float>*
  %wide.load39.1 = load <4 x float>, <4 x float>* %245, align 16, !tbaa !244
  %246 = getelementptr inbounds i8, i8* %0, i64 1248
  %247 = bitcast i8* %246 to <4 x float>*
  %wide.load40.1 = load <4 x float>, <4 x float>* %247, align 32, !tbaa !244
  %248 = getelementptr inbounds i8, i8* %0, i64 1360
  %249 = bitcast i8* %248 to <4 x float>*
  %wide.load41.1 = load <4 x float>, <4 x float>* %249, align 16, !tbaa !244
  %250 = getelementptr inbounds i8, i8* %0, i64 1472
  %251 = bitcast i8* %250 to <4 x float>*
  %wide.load42.1 = load <4 x float>, <4 x float>* %251, align 64, !tbaa !244
  %252 = getelementptr inbounds i8, i8* %0, i64 1584
  %253 = bitcast i8* %252 to <4 x float>*
  %wide.load43.1 = load <4 x float>, <4 x float>* %253, align 16, !tbaa !244
  %254 = getelementptr inbounds i8, i8* %packed_weight, i64 1200
  %255 = bitcast i8* %254 to <20 x float>*
  %256 = shufflevector <4 x float> %wide.load39.1, <4 x float> %wide.load40.1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %257 = shufflevector <4 x float> %wide.load41.1, <4 x float> %wide.load42.1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %258 = shufflevector <8 x float> %256, <8 x float> %257, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %259 = shufflevector <4 x float> %wide.load43.1, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec44.1 = shufflevector <16 x float> %258, <16 x float> %259, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec44.1, <20 x float>* %255, align 16, !tbaa !247
  %260 = getelementptr inbounds i8, i8* %0, i64 1152
  %261 = bitcast i8* %260 to <4 x float>*
  %wide.load39.2 = load <4 x float>, <4 x float>* %261, align 128, !tbaa !244
  %262 = getelementptr inbounds i8, i8* %0, i64 1264
  %263 = bitcast i8* %262 to <4 x float>*
  %wide.load40.2 = load <4 x float>, <4 x float>* %263, align 16, !tbaa !244
  %264 = getelementptr inbounds i8, i8* %0, i64 1376
  %265 = bitcast i8* %264 to <4 x float>*
  %wide.load41.2 = load <4 x float>, <4 x float>* %265, align 32, !tbaa !244
  %266 = getelementptr inbounds i8, i8* %0, i64 1488
  %267 = bitcast i8* %266 to <4 x float>*
  %wide.load42.2 = load <4 x float>, <4 x float>* %267, align 16, !tbaa !244
  %268 = getelementptr inbounds i8, i8* %0, i64 1600
  %269 = bitcast i8* %268 to <4 x float>*
  %wide.load43.2 = load <4 x float>, <4 x float>* %269, align 64, !tbaa !244
  %270 = getelementptr inbounds i8, i8* %packed_weight, i64 1280
  %271 = bitcast i8* %270 to <20 x float>*
  %272 = shufflevector <4 x float> %wide.load39.2, <4 x float> %wide.load40.2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %273 = shufflevector <4 x float> %wide.load41.2, <4 x float> %wide.load42.2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %274 = shufflevector <8 x float> %272, <8 x float> %273, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %275 = shufflevector <4 x float> %wide.load43.2, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec44.2 = shufflevector <16 x float> %274, <16 x float> %275, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec44.2, <20 x float>* %271, align 128, !tbaa !247
  %276 = getelementptr inbounds i8, i8* %0, i64 1168
  %277 = bitcast i8* %276 to <4 x float>*
  %wide.load39.3 = load <4 x float>, <4 x float>* %277, align 16, !tbaa !244
  %278 = getelementptr inbounds i8, i8* %0, i64 1280
  %279 = bitcast i8* %278 to <4 x float>*
  %wide.load40.3 = load <4 x float>, <4 x float>* %279, align 128, !tbaa !244
  %280 = getelementptr inbounds i8, i8* %0, i64 1392
  %281 = bitcast i8* %280 to <4 x float>*
  %wide.load41.3 = load <4 x float>, <4 x float>* %281, align 16, !tbaa !244
  %282 = getelementptr inbounds i8, i8* %0, i64 1504
  %283 = bitcast i8* %282 to <4 x float>*
  %wide.load42.3 = load <4 x float>, <4 x float>* %283, align 32, !tbaa !244
  %284 = getelementptr inbounds i8, i8* %0, i64 1616
  %285 = bitcast i8* %284 to <4 x float>*
  %wide.load43.3 = load <4 x float>, <4 x float>* %285, align 16, !tbaa !244
  %286 = getelementptr inbounds i8, i8* %packed_weight, i64 1360
  %287 = bitcast i8* %286 to <20 x float>*
  %288 = shufflevector <4 x float> %wide.load39.3, <4 x float> %wide.load40.3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %289 = shufflevector <4 x float> %wide.load41.3, <4 x float> %wide.load42.3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %290 = shufflevector <8 x float> %288, <8 x float> %289, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %291 = shufflevector <4 x float> %wide.load43.3, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec44.3 = shufflevector <16 x float> %290, <16 x float> %291, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec44.3, <20 x float>* %287, align 16, !tbaa !247
  %292 = getelementptr inbounds i8, i8* %0, i64 1184
  %293 = bitcast i8* %292 to <4 x float>*
  %wide.load39.4 = load <4 x float>, <4 x float>* %293, align 32, !tbaa !244
  %294 = getelementptr inbounds i8, i8* %0, i64 1296
  %295 = bitcast i8* %294 to <4 x float>*
  %wide.load40.4 = load <4 x float>, <4 x float>* %295, align 16, !tbaa !244
  %296 = getelementptr inbounds i8, i8* %0, i64 1408
  %297 = bitcast i8* %296 to <4 x float>*
  %wide.load41.4 = load <4 x float>, <4 x float>* %297, align 128, !tbaa !244
  %298 = getelementptr inbounds i8, i8* %0, i64 1520
  %299 = bitcast i8* %298 to <4 x float>*
  %wide.load42.4 = load <4 x float>, <4 x float>* %299, align 16, !tbaa !244
  %300 = getelementptr inbounds i8, i8* %0, i64 1632
  %301 = bitcast i8* %300 to <4 x float>*
  %wide.load43.4 = load <4 x float>, <4 x float>* %301, align 32, !tbaa !244
  %302 = getelementptr inbounds i8, i8* %packed_weight, i64 1440
  %303 = bitcast i8* %302 to <20 x float>*
  %304 = shufflevector <4 x float> %wide.load39.4, <4 x float> %wide.load40.4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %305 = shufflevector <4 x float> %wide.load41.4, <4 x float> %wide.load42.4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %306 = shufflevector <8 x float> %304, <8 x float> %305, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %307 = shufflevector <4 x float> %wide.load43.4, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec44.4 = shufflevector <16 x float> %306, <16 x float> %307, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec44.4, <20 x float>* %303, align 32, !tbaa !247
  %308 = getelementptr inbounds i8, i8* %0, i64 1200
  %309 = bitcast i8* %308 to <4 x float>*
  %wide.load39.5 = load <4 x float>, <4 x float>* %309, align 16, !tbaa !244
  %310 = getelementptr inbounds i8, i8* %0, i64 1312
  %311 = bitcast i8* %310 to <4 x float>*
  %wide.load40.5 = load <4 x float>, <4 x float>* %311, align 32, !tbaa !244
  %312 = getelementptr inbounds i8, i8* %0, i64 1424
  %313 = bitcast i8* %312 to <4 x float>*
  %wide.load41.5 = load <4 x float>, <4 x float>* %313, align 16, !tbaa !244
  %314 = getelementptr inbounds i8, i8* %0, i64 1536
  %315 = bitcast i8* %314 to <4 x float>*
  %wide.load42.5 = load <4 x float>, <4 x float>* %315, align 128, !tbaa !244
  %316 = getelementptr inbounds i8, i8* %0, i64 1648
  %317 = bitcast i8* %316 to <4 x float>*
  %wide.load43.5 = load <4 x float>, <4 x float>* %317, align 16, !tbaa !244
  %318 = getelementptr inbounds i8, i8* %packed_weight, i64 1520
  %319 = bitcast i8* %318 to <20 x float>*
  %320 = shufflevector <4 x float> %wide.load39.5, <4 x float> %wide.load40.5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %321 = shufflevector <4 x float> %wide.load41.5, <4 x float> %wide.load42.5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %322 = shufflevector <8 x float> %320, <8 x float> %321, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %323 = shufflevector <4 x float> %wide.load43.5, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec44.5 = shufflevector <16 x float> %322, <16 x float> %323, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec44.5, <20 x float>* %319, align 16, !tbaa !247
  %324 = getelementptr inbounds i8, i8* %0, i64 1216
  %325 = bitcast i8* %324 to <4 x float>*
  %wide.load39.6 = load <4 x float>, <4 x float>* %325, align 64, !tbaa !244
  %326 = getelementptr inbounds i8, i8* %0, i64 1328
  %327 = bitcast i8* %326 to <4 x float>*
  %wide.load40.6 = load <4 x float>, <4 x float>* %327, align 16, !tbaa !244
  %328 = getelementptr inbounds i8, i8* %0, i64 1440
  %329 = bitcast i8* %328 to <4 x float>*
  %wide.load41.6 = load <4 x float>, <4 x float>* %329, align 32, !tbaa !244
  %330 = getelementptr inbounds i8, i8* %0, i64 1552
  %331 = bitcast i8* %330 to <4 x float>*
  %wide.load42.6 = load <4 x float>, <4 x float>* %331, align 16, !tbaa !244
  %332 = getelementptr inbounds i8, i8* %0, i64 1664
  %333 = bitcast i8* %332 to <4 x float>*
  %wide.load43.6 = load <4 x float>, <4 x float>* %333, align 128, !tbaa !244
  %334 = getelementptr inbounds i8, i8* %packed_weight, i64 1600
  %335 = bitcast i8* %334 to <20 x float>*
  %336 = shufflevector <4 x float> %wide.load39.6, <4 x float> %wide.load40.6, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %337 = shufflevector <4 x float> %wide.load41.6, <4 x float> %wide.load42.6, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %338 = shufflevector <8 x float> %336, <8 x float> %337, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %339 = shufflevector <4 x float> %wide.load43.6, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec44.6 = shufflevector <16 x float> %338, <16 x float> %339, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec44.6, <20 x float>* %335, align 64, !tbaa !247
  %340 = getelementptr inbounds i8, i8* %0, i64 1680
  %341 = bitcast i8* %340 to <4 x float>*
  %wide.load53 = load <4 x float>, <4 x float>* %341, align 16, !tbaa !244
  %342 = getelementptr inbounds i8, i8* %0, i64 1792
  %343 = bitcast i8* %342 to <4 x float>*
  %wide.load54 = load <4 x float>, <4 x float>* %343, align 128, !tbaa !244
  %344 = getelementptr inbounds i8, i8* %0, i64 1904
  %345 = bitcast i8* %344 to <4 x float>*
  %wide.load55 = load <4 x float>, <4 x float>* %345, align 16, !tbaa !244
  %346 = getelementptr inbounds i8, i8* %0, i64 2016
  %347 = bitcast i8* %346 to <4 x float>*
  %wide.load56 = load <4 x float>, <4 x float>* %347, align 32, !tbaa !244
  %348 = getelementptr inbounds i8, i8* %0, i64 2128
  %349 = bitcast i8* %348 to <4 x float>*
  %wide.load57 = load <4 x float>, <4 x float>* %349, align 16, !tbaa !244
  %350 = getelementptr inbounds i8, i8* %packed_weight, i64 1680
  %351 = bitcast i8* %350 to <20 x float>*
  %352 = shufflevector <4 x float> %wide.load53, <4 x float> %wide.load54, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %353 = shufflevector <4 x float> %wide.load55, <4 x float> %wide.load56, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %354 = shufflevector <8 x float> %352, <8 x float> %353, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %355 = shufflevector <4 x float> %wide.load57, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec58 = shufflevector <16 x float> %354, <16 x float> %355, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec58, <20 x float>* %351, align 16, !tbaa !247
  %356 = getelementptr inbounds i8, i8* %0, i64 1696
  %357 = bitcast i8* %356 to <4 x float>*
  %wide.load53.1 = load <4 x float>, <4 x float>* %357, align 32, !tbaa !244
  %358 = getelementptr inbounds i8, i8* %0, i64 1808
  %359 = bitcast i8* %358 to <4 x float>*
  %wide.load54.1 = load <4 x float>, <4 x float>* %359, align 16, !tbaa !244
  %360 = getelementptr inbounds i8, i8* %0, i64 1920
  %361 = bitcast i8* %360 to <4 x float>*
  %wide.load55.1 = load <4 x float>, <4 x float>* %361, align 128, !tbaa !244
  %362 = getelementptr inbounds i8, i8* %0, i64 2032
  %363 = bitcast i8* %362 to <4 x float>*
  %wide.load56.1 = load <4 x float>, <4 x float>* %363, align 16, !tbaa !244
  %364 = getelementptr inbounds i8, i8* %0, i64 2144
  %365 = bitcast i8* %364 to <4 x float>*
  %wide.load57.1 = load <4 x float>, <4 x float>* %365, align 32, !tbaa !244
  %366 = getelementptr inbounds i8, i8* %packed_weight, i64 1760
  %367 = bitcast i8* %366 to <20 x float>*
  %368 = shufflevector <4 x float> %wide.load53.1, <4 x float> %wide.load54.1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %369 = shufflevector <4 x float> %wide.load55.1, <4 x float> %wide.load56.1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %370 = shufflevector <8 x float> %368, <8 x float> %369, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %371 = shufflevector <4 x float> %wide.load57.1, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec58.1 = shufflevector <16 x float> %370, <16 x float> %371, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec58.1, <20 x float>* %367, align 32, !tbaa !247
  %372 = getelementptr inbounds i8, i8* %0, i64 1712
  %373 = bitcast i8* %372 to <4 x float>*
  %wide.load53.2 = load <4 x float>, <4 x float>* %373, align 16, !tbaa !244
  %374 = getelementptr inbounds i8, i8* %0, i64 1824
  %375 = bitcast i8* %374 to <4 x float>*
  %wide.load54.2 = load <4 x float>, <4 x float>* %375, align 32, !tbaa !244
  %376 = getelementptr inbounds i8, i8* %0, i64 1936
  %377 = bitcast i8* %376 to <4 x float>*
  %wide.load55.2 = load <4 x float>, <4 x float>* %377, align 16, !tbaa !244
  %378 = getelementptr inbounds i8, i8* %0, i64 2048
  %379 = bitcast i8* %378 to <4 x float>*
  %wide.load56.2 = load <4 x float>, <4 x float>* %379, align 128, !tbaa !244
  %380 = getelementptr inbounds i8, i8* %0, i64 2160
  %381 = bitcast i8* %380 to <4 x float>*
  %wide.load57.2 = load <4 x float>, <4 x float>* %381, align 16, !tbaa !244
  %382 = getelementptr inbounds i8, i8* %packed_weight, i64 1840
  %383 = bitcast i8* %382 to <20 x float>*
  %384 = shufflevector <4 x float> %wide.load53.2, <4 x float> %wide.load54.2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %385 = shufflevector <4 x float> %wide.load55.2, <4 x float> %wide.load56.2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %386 = shufflevector <8 x float> %384, <8 x float> %385, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %387 = shufflevector <4 x float> %wide.load57.2, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec58.2 = shufflevector <16 x float> %386, <16 x float> %387, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec58.2, <20 x float>* %383, align 16, !tbaa !247
  %388 = getelementptr inbounds i8, i8* %0, i64 1728
  %389 = bitcast i8* %388 to <4 x float>*
  %wide.load53.3 = load <4 x float>, <4 x float>* %389, align 64, !tbaa !244
  %390 = getelementptr inbounds i8, i8* %0, i64 1840
  %391 = bitcast i8* %390 to <4 x float>*
  %wide.load54.3 = load <4 x float>, <4 x float>* %391, align 16, !tbaa !244
  %392 = getelementptr inbounds i8, i8* %0, i64 1952
  %393 = bitcast i8* %392 to <4 x float>*
  %wide.load55.3 = load <4 x float>, <4 x float>* %393, align 32, !tbaa !244
  %394 = getelementptr inbounds i8, i8* %0, i64 2064
  %395 = bitcast i8* %394 to <4 x float>*
  %wide.load56.3 = load <4 x float>, <4 x float>* %395, align 16, !tbaa !244
  %396 = getelementptr inbounds i8, i8* %0, i64 2176
  %397 = bitcast i8* %396 to <4 x float>*
  %wide.load57.3 = load <4 x float>, <4 x float>* %397, align 128, !tbaa !244
  %398 = getelementptr inbounds i8, i8* %packed_weight, i64 1920
  %399 = bitcast i8* %398 to <20 x float>*
  %400 = shufflevector <4 x float> %wide.load53.3, <4 x float> %wide.load54.3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %401 = shufflevector <4 x float> %wide.load55.3, <4 x float> %wide.load56.3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %402 = shufflevector <8 x float> %400, <8 x float> %401, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %403 = shufflevector <4 x float> %wide.load57.3, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec58.3 = shufflevector <16 x float> %402, <16 x float> %403, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec58.3, <20 x float>* %399, align 128, !tbaa !247
  %404 = getelementptr inbounds i8, i8* %0, i64 1744
  %405 = bitcast i8* %404 to <4 x float>*
  %wide.load53.4 = load <4 x float>, <4 x float>* %405, align 16, !tbaa !244
  %406 = getelementptr inbounds i8, i8* %0, i64 1856
  %407 = bitcast i8* %406 to <4 x float>*
  %wide.load54.4 = load <4 x float>, <4 x float>* %407, align 64, !tbaa !244
  %408 = getelementptr inbounds i8, i8* %0, i64 1968
  %409 = bitcast i8* %408 to <4 x float>*
  %wide.load55.4 = load <4 x float>, <4 x float>* %409, align 16, !tbaa !244
  %410 = getelementptr inbounds i8, i8* %0, i64 2080
  %411 = bitcast i8* %410 to <4 x float>*
  %wide.load56.4 = load <4 x float>, <4 x float>* %411, align 32, !tbaa !244
  %412 = getelementptr inbounds i8, i8* %0, i64 2192
  %413 = bitcast i8* %412 to <4 x float>*
  %wide.load57.4 = load <4 x float>, <4 x float>* %413, align 16, !tbaa !244
  %414 = getelementptr inbounds i8, i8* %packed_weight, i64 2000
  %415 = bitcast i8* %414 to <20 x float>*
  %416 = shufflevector <4 x float> %wide.load53.4, <4 x float> %wide.load54.4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %417 = shufflevector <4 x float> %wide.load55.4, <4 x float> %wide.load56.4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %418 = shufflevector <8 x float> %416, <8 x float> %417, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %419 = shufflevector <4 x float> %wide.load57.4, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec58.4 = shufflevector <16 x float> %418, <16 x float> %419, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec58.4, <20 x float>* %415, align 16, !tbaa !247
  %420 = getelementptr inbounds i8, i8* %0, i64 1760
  %421 = bitcast i8* %420 to <4 x float>*
  %wide.load53.5 = load <4 x float>, <4 x float>* %421, align 32, !tbaa !244
  %422 = getelementptr inbounds i8, i8* %0, i64 1872
  %423 = bitcast i8* %422 to <4 x float>*
  %wide.load54.5 = load <4 x float>, <4 x float>* %423, align 16, !tbaa !244
  %424 = getelementptr inbounds i8, i8* %0, i64 1984
  %425 = bitcast i8* %424 to <4 x float>*
  %wide.load55.5 = load <4 x float>, <4 x float>* %425, align 64, !tbaa !244
  %426 = getelementptr inbounds i8, i8* %0, i64 2096
  %427 = bitcast i8* %426 to <4 x float>*
  %wide.load56.5 = load <4 x float>, <4 x float>* %427, align 16, !tbaa !244
  %428 = getelementptr inbounds i8, i8* %0, i64 2208
  %429 = bitcast i8* %428 to <4 x float>*
  %wide.load57.5 = load <4 x float>, <4 x float>* %429, align 32, !tbaa !244
  %430 = getelementptr inbounds i8, i8* %packed_weight, i64 2080
  %431 = bitcast i8* %430 to <20 x float>*
  %432 = shufflevector <4 x float> %wide.load53.5, <4 x float> %wide.load54.5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %433 = shufflevector <4 x float> %wide.load55.5, <4 x float> %wide.load56.5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %434 = shufflevector <8 x float> %432, <8 x float> %433, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %435 = shufflevector <4 x float> %wide.load57.5, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec58.5 = shufflevector <16 x float> %434, <16 x float> %435, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec58.5, <20 x float>* %431, align 32, !tbaa !247
  %436 = getelementptr inbounds i8, i8* %0, i64 1776
  %437 = bitcast i8* %436 to <4 x float>*
  %wide.load53.6 = load <4 x float>, <4 x float>* %437, align 16, !tbaa !244
  %438 = getelementptr inbounds i8, i8* %0, i64 1888
  %439 = bitcast i8* %438 to <4 x float>*
  %wide.load54.6 = load <4 x float>, <4 x float>* %439, align 32, !tbaa !244
  %440 = getelementptr inbounds i8, i8* %0, i64 2000
  %441 = bitcast i8* %440 to <4 x float>*
  %wide.load55.6 = load <4 x float>, <4 x float>* %441, align 16, !tbaa !244
  %442 = getelementptr inbounds i8, i8* %0, i64 2112
  %443 = bitcast i8* %442 to <4 x float>*
  %wide.load56.6 = load <4 x float>, <4 x float>* %443, align 64, !tbaa !244
  %444 = getelementptr inbounds i8, i8* %0, i64 2224
  %445 = bitcast i8* %444 to <4 x float>*
  %wide.load57.6 = load <4 x float>, <4 x float>* %445, align 16, !tbaa !244
  %446 = getelementptr inbounds i8, i8* %packed_weight, i64 2160
  %447 = bitcast i8* %446 to <20 x float>*
  %448 = shufflevector <4 x float> %wide.load53.6, <4 x float> %wide.load54.6, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %449 = shufflevector <4 x float> %wide.load55.6, <4 x float> %wide.load56.6, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %450 = shufflevector <8 x float> %448, <8 x float> %449, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %451 = shufflevector <4 x float> %wide.load57.6, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec58.6 = shufflevector <16 x float> %450, <16 x float> %451, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec58.6, <20 x float>* %447, align 16, !tbaa !247
  %452 = alloca %closure_loop_parallel_x.outer.y.outer.fused, align 8
  %453 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused, %closure_loop_parallel_x.outer.y.outer.fused* %452, i64 0, i32 0
  store i8* %1, i8** %453, align 8
  %454 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused, %closure_loop_parallel_x.outer.y.outer.fused* %452, i64 0, i32 1
  store i8* %packed_weight, i8** %454, align 8
  %455 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused, %closure_loop_parallel_x.outer.y.outer.fused* %452, i64 0, i32 2
  store i8* %2, i8** %455, align 8
  %456 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !5
  %457 = bitcast %closure_loop_parallel_x.outer.y.outer.fused* %452 to i8*
  %458 = call i32 %456(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda, i8* nonnull %457, i32 0)
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %call_end, label %common.ret, !prof !4

common.ret:                                       ; preds = %call_end, %vector.body, %entry
  %common.ret.op = phi i32 [ -1, %entry ], [ %458, %vector.body ], [ %., %call_end ]
  ret i32 %common.ret.op

call_end:                                         ; preds = %vector.body
  %460 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !5
  %461 = call i32 %460(i32 1, i32 %3, i8* nonnull %packed_weight)
  %.not = icmp ne i32 %461, 0
  %. = sext i1 %.not to i32
  br label %common.ret
}

; Function Attrs: nofree nosync nounwind
define private i32 @__tvm_parallel_lambda(i32 %0, %0* nocapture readonly %1, i8* nocapture readonly %2) #3 {
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
  %13 = add nsw i32 %12, 3
  %14 = sdiv i32 %13, %12
  %15 = add nsw i32 %0, 1
  %16 = mul nsw i32 %14, %15
  %17 = icmp slt i32 %16, 4
  %18 = select i1 %17, i32 %16, i32 4
  %19 = mul nsw i32 %14, %0
  %20 = icmp slt i32 %19, 4
  %21 = select i1 %20, i32 %19, i32 4
  %22 = icmp slt i32 %21, %18
  br i1 %22, label %for_begin_k.outer.preheader.preheader, label %for_end_x.outer.y.outer.fused, !prof !4

for_begin_k.outer.preheader.preheader:            ; preds = %parallel_closure_entry
  %23 = sext i32 %21 to i64
  %wide.trip.count = sext i32 %18 to i64
  %24 = load float, float* %4, align 4, !tbaa !250
  %25 = insertelement <5 x float> undef, float %24, i64 0
  %26 = shufflevector <5 x float> %25, <5 x float> undef, <5 x i32> zeroinitializer
  %27 = getelementptr inbounds float, float* %4, i64 1
  %28 = load float, float* %27, align 4, !tbaa !250
  %29 = insertelement <5 x float> undef, float %28, i64 0
  %30 = shufflevector <5 x float> %29, <5 x float> undef, <5 x i32> zeroinitializer
  %31 = getelementptr inbounds float, float* %4, i64 2
  %32 = load float, float* %31, align 4, !tbaa !250
  %33 = insertelement <5 x float> undef, float %32, i64 0
  %34 = shufflevector <5 x float> %33, <5 x float> undef, <5 x i32> zeroinitializer
  %35 = getelementptr inbounds float, float* %4, i64 3
  %36 = load float, float* %35, align 4, !tbaa !250
  %37 = insertelement <5 x float> undef, float %36, i64 0
  %38 = shufflevector <5 x float> %37, <5 x float> undef, <5 x i32> zeroinitializer
  %39 = getelementptr inbounds float, float* %4, i64 4
  %40 = load float, float* %39, align 4, !tbaa !250
  %41 = insertelement <5 x float> undef, float %40, i64 0
  %42 = shufflevector <5 x float> %41, <5 x float> undef, <5 x i32> zeroinitializer
  %43 = getelementptr inbounds float, float* %4, i64 5
  %44 = load float, float* %43, align 4, !tbaa !250
  %45 = insertelement <5 x float> undef, float %44, i64 0
  %46 = shufflevector <5 x float> %45, <5 x float> undef, <5 x i32> zeroinitializer
  %47 = getelementptr inbounds float, float* %4, i64 6
  %48 = load float, float* %47, align 4, !tbaa !250
  %49 = insertelement <5 x float> undef, float %48, i64 0
  %50 = shufflevector <5 x float> %49, <5 x float> undef, <5 x i32> zeroinitializer
  %51 = getelementptr inbounds float, float* %4, i64 7
  %52 = load float, float* %51, align 4, !tbaa !250
  %53 = insertelement <5 x float> undef, float %52, i64 0
  %54 = shufflevector <5 x float> %53, <5 x float> undef, <5 x i32> zeroinitializer
  %55 = getelementptr inbounds float, float* %4, i64 8
  %56 = load float, float* %55, align 4, !tbaa !250
  %57 = insertelement <5 x float> undef, float %56, i64 0
  %58 = shufflevector <5 x float> %57, <5 x float> undef, <5 x i32> zeroinitializer
  %59 = getelementptr inbounds float, float* %4, i64 9
  %60 = load float, float* %59, align 4, !tbaa !250
  %61 = insertelement <5 x float> undef, float %60, i64 0
  %62 = shufflevector <5 x float> %61, <5 x float> undef, <5 x i32> zeroinitializer
  %63 = getelementptr inbounds float, float* %4, i64 10
  %64 = load float, float* %63, align 4, !tbaa !250
  %65 = insertelement <5 x float> undef, float %64, i64 0
  %66 = shufflevector <5 x float> %65, <5 x float> undef, <5 x i32> zeroinitializer
  %67 = getelementptr inbounds float, float* %4, i64 11
  %68 = load float, float* %67, align 4, !tbaa !250
  %69 = insertelement <5 x float> undef, float %68, i64 0
  %70 = shufflevector <5 x float> %69, <5 x float> undef, <5 x i32> zeroinitializer
  %71 = getelementptr inbounds float, float* %4, i64 12
  %72 = load float, float* %71, align 4, !tbaa !250
  %73 = insertelement <5 x float> undef, float %72, i64 0
  %74 = shufflevector <5 x float> %73, <5 x float> undef, <5 x i32> zeroinitializer
  %75 = getelementptr inbounds float, float* %4, i64 13
  %76 = load float, float* %75, align 4, !tbaa !250
  %77 = insertelement <5 x float> undef, float %76, i64 0
  %78 = shufflevector <5 x float> %77, <5 x float> undef, <5 x i32> zeroinitializer
  %79 = getelementptr inbounds float, float* %4, i64 14
  %80 = load float, float* %79, align 4, !tbaa !250
  %81 = insertelement <5 x float> undef, float %80, i64 0
  %82 = shufflevector <5 x float> %81, <5 x float> undef, <5 x i32> zeroinitializer
  %83 = getelementptr inbounds float, float* %4, i64 15
  %84 = load float, float* %83, align 4, !tbaa !250
  %85 = insertelement <5 x float> undef, float %84, i64 0
  %86 = shufflevector <5 x float> %85, <5 x float> undef, <5 x i32> zeroinitializer
  %87 = getelementptr inbounds float, float* %4, i64 16
  %88 = load float, float* %87, align 4, !tbaa !250
  %89 = insertelement <5 x float> undef, float %88, i64 0
  %90 = shufflevector <5 x float> %89, <5 x float> undef, <5 x i32> zeroinitializer
  %91 = getelementptr inbounds float, float* %4, i64 17
  %92 = load float, float* %91, align 4, !tbaa !250
  %93 = insertelement <5 x float> undef, float %92, i64 0
  %94 = shufflevector <5 x float> %93, <5 x float> undef, <5 x i32> zeroinitializer
  %95 = getelementptr inbounds float, float* %4, i64 18
  %96 = load float, float* %95, align 4, !tbaa !250
  %97 = insertelement <5 x float> undef, float %96, i64 0
  %98 = shufflevector <5 x float> %97, <5 x float> undef, <5 x i32> zeroinitializer
  %99 = getelementptr inbounds float, float* %4, i64 19
  %100 = load float, float* %99, align 4, !tbaa !250
  %101 = insertelement <5 x float> undef, float %100, i64 0
  %102 = shufflevector <5 x float> %101, <5 x float> undef, <5 x i32> zeroinitializer
  %103 = getelementptr inbounds float, float* %4, i64 20
  %104 = load float, float* %103, align 4, !tbaa !250
  %105 = insertelement <5 x float> undef, float %104, i64 0
  %106 = shufflevector <5 x float> %105, <5 x float> undef, <5 x i32> zeroinitializer
  %107 = getelementptr inbounds float, float* %4, i64 21
  %108 = load float, float* %107, align 4, !tbaa !250
  %109 = insertelement <5 x float> undef, float %108, i64 0
  %110 = shufflevector <5 x float> %109, <5 x float> undef, <5 x i32> zeroinitializer
  %111 = getelementptr inbounds float, float* %4, i64 22
  %112 = load float, float* %111, align 4, !tbaa !250
  %113 = insertelement <5 x float> undef, float %112, i64 0
  %114 = shufflevector <5 x float> %113, <5 x float> undef, <5 x i32> zeroinitializer
  %115 = getelementptr inbounds float, float* %4, i64 23
  %116 = load float, float* %115, align 4, !tbaa !250
  %117 = insertelement <5 x float> undef, float %116, i64 0
  %118 = shufflevector <5 x float> %117, <5 x float> undef, <5 x i32> zeroinitializer
  %119 = getelementptr inbounds float, float* %4, i64 24
  %120 = load float, float* %119, align 4, !tbaa !250
  %121 = insertelement <5 x float> undef, float %120, i64 0
  %122 = shufflevector <5 x float> %121, <5 x float> undef, <5 x i32> zeroinitializer
  %123 = getelementptr inbounds float, float* %4, i64 25
  %124 = load float, float* %123, align 4, !tbaa !250
  %125 = insertelement <5 x float> undef, float %124, i64 0
  %126 = shufflevector <5 x float> %125, <5 x float> undef, <5 x i32> zeroinitializer
  %127 = getelementptr inbounds float, float* %4, i64 26
  %128 = load float, float* %127, align 4, !tbaa !250
  %129 = insertelement <5 x float> undef, float %128, i64 0
  %130 = shufflevector <5 x float> %129, <5 x float> undef, <5 x i32> zeroinitializer
  %131 = getelementptr inbounds float, float* %4, i64 27
  %132 = load float, float* %131, align 4, !tbaa !250
  %133 = insertelement <5 x float> undef, float %132, i64 0
  %134 = shufflevector <5 x float> %133, <5 x float> undef, <5 x i32> zeroinitializer
  br label %for_begin_k.outer.preheader

for_begin_k.outer.preheader:                      ; preds = %for_begin_k.outer.preheader.preheader, %for_begin_k.outer.preheader
  %indvars.iv = phi i64 [ %23, %for_begin_k.outer.preheader.preheader ], [ %indvars.iv.next, %for_begin_k.outer.preheader ]
  %135 = mul nsw i64 %indvars.iv, 140
  %136 = getelementptr inbounds float, float* %7, i64 %135
  %137 = bitcast float* %136 to <5 x float>*
  %138 = load <5 x float>, <5 x float>* %137, align 4, !tbaa !247
  %139 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %26, <5 x float> %138, <5 x float> zeroinitializer)
  %140 = add nsw i64 %135, 5
  %141 = getelementptr inbounds float, float* %7, i64 %140
  %142 = bitcast float* %141 to <5 x float>*
  %143 = load <5 x float>, <5 x float>* %142, align 4, !tbaa !247
  %144 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %30, <5 x float> %143, <5 x float> %139)
  %145 = add nsw i64 %135, 10
  %146 = getelementptr inbounds float, float* %7, i64 %145
  %147 = bitcast float* %146 to <5 x float>*
  %148 = load <5 x float>, <5 x float>* %147, align 4, !tbaa !247
  %149 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %34, <5 x float> %148, <5 x float> %144)
  %150 = add nsw i64 %135, 15
  %151 = getelementptr inbounds float, float* %7, i64 %150
  %152 = bitcast float* %151 to <5 x float>*
  %153 = load <5 x float>, <5 x float>* %152, align 4, !tbaa !247
  %154 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %38, <5 x float> %153, <5 x float> %149)
  %155 = add nsw i64 %135, 20
  %156 = getelementptr inbounds float, float* %7, i64 %155
  %157 = bitcast float* %156 to <5 x float>*
  %158 = load <5 x float>, <5 x float>* %157, align 4, !tbaa !247
  %159 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %42, <5 x float> %158, <5 x float> %154)
  %160 = add nsw i64 %135, 25
  %161 = getelementptr inbounds float, float* %7, i64 %160
  %162 = bitcast float* %161 to <5 x float>*
  %163 = load <5 x float>, <5 x float>* %162, align 4, !tbaa !247
  %164 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %46, <5 x float> %163, <5 x float> %159)
  %165 = add nsw i64 %135, 30
  %166 = getelementptr inbounds float, float* %7, i64 %165
  %167 = bitcast float* %166 to <5 x float>*
  %168 = load <5 x float>, <5 x float>* %167, align 4, !tbaa !247
  %169 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %50, <5 x float> %168, <5 x float> %164)
  %170 = add nsw i64 %135, 35
  %171 = getelementptr inbounds float, float* %7, i64 %170
  %172 = bitcast float* %171 to <5 x float>*
  %173 = load <5 x float>, <5 x float>* %172, align 4, !tbaa !247
  %174 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %54, <5 x float> %173, <5 x float> %169)
  %175 = add nsw i64 %135, 40
  %176 = getelementptr inbounds float, float* %7, i64 %175
  %177 = bitcast float* %176 to <5 x float>*
  %178 = load <5 x float>, <5 x float>* %177, align 4, !tbaa !247
  %179 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %58, <5 x float> %178, <5 x float> %174)
  %180 = add nsw i64 %135, 45
  %181 = getelementptr inbounds float, float* %7, i64 %180
  %182 = bitcast float* %181 to <5 x float>*
  %183 = load <5 x float>, <5 x float>* %182, align 4, !tbaa !247
  %184 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %62, <5 x float> %183, <5 x float> %179)
  %185 = add nsw i64 %135, 50
  %186 = getelementptr inbounds float, float* %7, i64 %185
  %187 = bitcast float* %186 to <5 x float>*
  %188 = load <5 x float>, <5 x float>* %187, align 4, !tbaa !247
  %189 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %66, <5 x float> %188, <5 x float> %184)
  %190 = add nsw i64 %135, 55
  %191 = getelementptr inbounds float, float* %7, i64 %190
  %192 = bitcast float* %191 to <5 x float>*
  %193 = load <5 x float>, <5 x float>* %192, align 4, !tbaa !247
  %194 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %70, <5 x float> %193, <5 x float> %189)
  %195 = add nsw i64 %135, 60
  %196 = getelementptr inbounds float, float* %7, i64 %195
  %197 = bitcast float* %196 to <5 x float>*
  %198 = load <5 x float>, <5 x float>* %197, align 4, !tbaa !247
  %199 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %74, <5 x float> %198, <5 x float> %194)
  %200 = add nsw i64 %135, 65
  %201 = getelementptr inbounds float, float* %7, i64 %200
  %202 = bitcast float* %201 to <5 x float>*
  %203 = load <5 x float>, <5 x float>* %202, align 4, !tbaa !247
  %204 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %78, <5 x float> %203, <5 x float> %199)
  %205 = add nsw i64 %135, 70
  %206 = getelementptr inbounds float, float* %7, i64 %205
  %207 = bitcast float* %206 to <5 x float>*
  %208 = load <5 x float>, <5 x float>* %207, align 4, !tbaa !247
  %209 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %82, <5 x float> %208, <5 x float> %204)
  %210 = add nsw i64 %135, 75
  %211 = getelementptr inbounds float, float* %7, i64 %210
  %212 = bitcast float* %211 to <5 x float>*
  %213 = load <5 x float>, <5 x float>* %212, align 4, !tbaa !247
  %214 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %86, <5 x float> %213, <5 x float> %209)
  %215 = add nsw i64 %135, 80
  %216 = getelementptr inbounds float, float* %7, i64 %215
  %217 = bitcast float* %216 to <5 x float>*
  %218 = load <5 x float>, <5 x float>* %217, align 4, !tbaa !247
  %219 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %90, <5 x float> %218, <5 x float> %214)
  %220 = add nsw i64 %135, 85
  %221 = getelementptr inbounds float, float* %7, i64 %220
  %222 = bitcast float* %221 to <5 x float>*
  %223 = load <5 x float>, <5 x float>* %222, align 4, !tbaa !247
  %224 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %94, <5 x float> %223, <5 x float> %219)
  %225 = add nsw i64 %135, 90
  %226 = getelementptr inbounds float, float* %7, i64 %225
  %227 = bitcast float* %226 to <5 x float>*
  %228 = load <5 x float>, <5 x float>* %227, align 4, !tbaa !247
  %229 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %98, <5 x float> %228, <5 x float> %224)
  %230 = add nsw i64 %135, 95
  %231 = getelementptr inbounds float, float* %7, i64 %230
  %232 = bitcast float* %231 to <5 x float>*
  %233 = load <5 x float>, <5 x float>* %232, align 4, !tbaa !247
  %234 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %102, <5 x float> %233, <5 x float> %229)
  %235 = add nsw i64 %135, 100
  %236 = getelementptr inbounds float, float* %7, i64 %235
  %237 = bitcast float* %236 to <5 x float>*
  %238 = load <5 x float>, <5 x float>* %237, align 4, !tbaa !247
  %239 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %106, <5 x float> %238, <5 x float> %234)
  %240 = add nsw i64 %135, 105
  %241 = getelementptr inbounds float, float* %7, i64 %240
  %242 = bitcast float* %241 to <5 x float>*
  %243 = load <5 x float>, <5 x float>* %242, align 4, !tbaa !247
  %244 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %110, <5 x float> %243, <5 x float> %239)
  %245 = add nsw i64 %135, 110
  %246 = getelementptr inbounds float, float* %7, i64 %245
  %247 = bitcast float* %246 to <5 x float>*
  %248 = load <5 x float>, <5 x float>* %247, align 4, !tbaa !247
  %249 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %114, <5 x float> %248, <5 x float> %244)
  %250 = add nsw i64 %135, 115
  %251 = getelementptr inbounds float, float* %7, i64 %250
  %252 = bitcast float* %251 to <5 x float>*
  %253 = load <5 x float>, <5 x float>* %252, align 4, !tbaa !247
  %254 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %118, <5 x float> %253, <5 x float> %249)
  %255 = add nsw i64 %135, 120
  %256 = getelementptr inbounds float, float* %7, i64 %255
  %257 = bitcast float* %256 to <5 x float>*
  %258 = load <5 x float>, <5 x float>* %257, align 4, !tbaa !247
  %259 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %122, <5 x float> %258, <5 x float> %254)
  %260 = add nsw i64 %135, 125
  %261 = getelementptr inbounds float, float* %7, i64 %260
  %262 = bitcast float* %261 to <5 x float>*
  %263 = load <5 x float>, <5 x float>* %262, align 4, !tbaa !247
  %264 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %126, <5 x float> %263, <5 x float> %259)
  %265 = add nsw i64 %135, 130
  %266 = getelementptr inbounds float, float* %7, i64 %265
  %267 = bitcast float* %266 to <5 x float>*
  %268 = load <5 x float>, <5 x float>* %267, align 4, !tbaa !247
  %269 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %130, <5 x float> %268, <5 x float> %264)
  %270 = add nsw i64 %135, 135
  %271 = getelementptr inbounds float, float* %7, i64 %270
  %272 = bitcast float* %271 to <5 x float>*
  %273 = load <5 x float>, <5 x float>* %272, align 4, !tbaa !247
  %274 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %134, <5 x float> %273, <5 x float> %269)
  %275 = mul nsw i64 %indvars.iv, 5
  %276 = getelementptr inbounds float, float* %10, i64 %275
  %277 = bitcast float* %276 to <5 x float>*
  store <5 x float> %274, <5 x float>* %277, align 4, !tbaa !253
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for_end_x.outer.y.outer.fused, label %for_begin_k.outer.preheader, !prof !43

for_end_x.outer.y.outer.fused:                    ; preds = %for_begin_k.outer.preheader, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare <5 x float> @llvm.fmuladd.v5f32(<5 x float>, <5 x float>, <5 x float>) #4

attributes #0 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
attributes #1 = { nofree noinline norecurse nosync nounwind }
attributes #2 = { noinline }
attributes #3 = { nofree nosync nounwind }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }

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
!9 = !{!"0x4d21a20.w1.b0", !10, i64 0}
!10 = !{!"0x4d21a20.w2.b0", !11, i64 0}
!11 = !{!"0x4d21a20.w4.b0", !12, i64 0}
!12 = !{!"0x4d21a20.w8.b0", !13, i64 0}
!13 = !{!"0x4d21a20.w16.b0", !14, i64 0}
!14 = !{!"0x4d21a20.w32.b0", !15, i64 0}
!15 = !{!"0x4d21a20.w64.b0", !16, i64 0}
!16 = !{!"0x4d21a20.w128.b0", !17, i64 0}
!17 = !{!"0x4d21a20.w256.b0", !18, i64 0}
!18 = !{!"0x4d21a20.w512.b0", !19, i64 0}
!19 = !{!"0x4d21a20.w1024.b0", !20, i64 0}
!20 = !{!"i8*", !21, i64 0}
!21 = !{!"0x4d21a20", !7, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"0x4d21a20.w1.b1", !10, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"0x4d21a20.w1.b2", !26, i64 0}
!26 = !{!"0x4d21a20.w2.b2", !11, i64 0}
!27 = !{!28, !28, i64 0}
!28 = !{!"0x4d330c0.w1.b0", !29, i64 0}
!29 = !{!"0x4d330c0.w2.b0", !30, i64 0}
!30 = !{!"0x4d330c0.w4.b0", !31, i64 0}
!31 = !{!"0x4d330c0.w8.b0", !32, i64 0}
!32 = !{!"0x4d330c0.w16.b0", !33, i64 0}
!33 = !{!"0x4d330c0.w32.b0", !34, i64 0}
!34 = !{!"0x4d330c0.w64.b0", !35, i64 0}
!35 = !{!"0x4d330c0.w128.b0", !36, i64 0}
!36 = !{!"0x4d330c0.w256.b0", !37, i64 0}
!37 = !{!"0x4d330c0.w512.b0", !38, i64 0}
!38 = !{!"0x4d330c0.w1024.b0", !39, i64 0}
!39 = !{!"i8*", !40, i64 0}
!40 = !{!"0x4d330c0", !7, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"0x4d330c0.w1.b1", !29, i64 0}
!43 = !{!"branch_weights", i32 1, i32 1048576}
!44 = !{!45, !45, i64 0}
!45 = !{!"0x4d212f0.w1.b0", !46, i64 0}
!46 = !{!"0x4d212f0.w2.b0", !47, i64 0}
!47 = !{!"0x4d212f0.w4.b0", !48, i64 0}
!48 = !{!"0x4d212f0.w8.b0", !49, i64 0}
!49 = !{!"0x4d212f0.w16.b0", !50, i64 0}
!50 = !{!"0x4d212f0.w32.b0", !51, i64 0}
!51 = !{!"0x4d212f0.w64.b0", !52, i64 0}
!52 = !{!"0x4d212f0.w128.b0", !53, i64 0}
!53 = !{!"0x4d212f0.w256.b0", !54, i64 0}
!54 = !{!"0x4d212f0.w512.b0", !55, i64 0}
!55 = !{!"0x4d212f0.w1024.b0", !56, i64 0}
!56 = !{!"i8*", !57, i64 0}
!57 = !{!"0x4d212f0", !7, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"0x4d212f0.w1.b1", !46, i64 0}
!60 = !{!61, !61, i64 0}
!61 = !{!"0x4d36b40.w1.b0", !62, i64 0}
!62 = !{!"0x4d36b40.w2.b0", !63, i64 0}
!63 = !{!"0x4d36b40.w4.b0", !64, i64 0}
!64 = !{!"0x4d36b40.w8.b0", !65, i64 0}
!65 = !{!"0x4d36b40.w16.b0", !66, i64 0}
!66 = !{!"0x4d36b40.w32.b0", !67, i64 0}
!67 = !{!"0x4d36b40.w64.b0", !68, i64 0}
!68 = !{!"0x4d36b40.w128.b0", !69, i64 0}
!69 = !{!"0x4d36b40.w256.b0", !70, i64 0}
!70 = !{!"0x4d36b40.w512.b0", !71, i64 0}
!71 = !{!"0x4d36b40.w1024.b0", !72, i64 0}
!72 = !{!"i8*", !73, i64 0}
!73 = !{!"0x4d36b40", !7, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"0x4d364c0.w1.b0", !76, i64 0}
!76 = !{!"0x4d364c0.w2.b0", !77, i64 0}
!77 = !{!"0x4d364c0.w4.b0", !78, i64 0}
!78 = !{!"0x4d364c0.w8.b0", !79, i64 0}
!79 = !{!"0x4d364c0.w16.b0", !80, i64 0}
!80 = !{!"0x4d364c0.w32.b0", !81, i64 0}
!81 = !{!"0x4d364c0.w64.b0", !82, i64 0}
!82 = !{!"0x4d364c0.w128.b0", !83, i64 0}
!83 = !{!"0x4d364c0.w256.b0", !84, i64 0}
!84 = !{!"0x4d364c0.w512.b0", !85, i64 0}
!85 = !{!"0x4d364c0.w1024.b0", !86, i64 0}
!86 = !{!"i8*", !87, i64 0}
!87 = !{!"0x4d364c0", !7, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"0x4d4c340.w1.b0", !90, i64 0}
!90 = !{!"0x4d4c340.w2.b0", !91, i64 0}
!91 = !{!"0x4d4c340.w4.b0", !92, i64 0}
!92 = !{!"0x4d4c340.w8.b0", !93, i64 0}
!93 = !{!"0x4d4c340.w16.b0", !94, i64 0}
!94 = !{!"0x4d4c340.w32.b0", !95, i64 0}
!95 = !{!"0x4d4c340.w64.b0", !96, i64 0}
!96 = !{!"0x4d4c340.w128.b0", !97, i64 0}
!97 = !{!"0x4d4c340.w256.b0", !98, i64 0}
!98 = !{!"0x4d4c340.w512.b0", !99, i64 0}
!99 = !{!"0x4d4c340.w1024.b0", !100, i64 0}
!100 = !{!"i8*", !101, i64 0}
!101 = !{!"0x4d4c340", !7, i64 0}
!102 = !{!103, !103, i64 0}
!103 = !{!"0x4d4c340.w1.b1", !90, i64 0}
!104 = !{!105, !105, i64 0}
!105 = !{!"0x4d4c890.w1.b0", !106, i64 0}
!106 = !{!"0x4d4c890.w2.b0", !107, i64 0}
!107 = !{!"0x4d4c890.w4.b0", !108, i64 0}
!108 = !{!"0x4d4c890.w8.b0", !109, i64 0}
!109 = !{!"0x4d4c890.w16.b0", !110, i64 0}
!110 = !{!"0x4d4c890.w32.b0", !111, i64 0}
!111 = !{!"0x4d4c890.w64.b0", !112, i64 0}
!112 = !{!"0x4d4c890.w128.b0", !113, i64 0}
!113 = !{!"0x4d4c890.w256.b0", !114, i64 0}
!114 = !{!"0x4d4c890.w512.b0", !115, i64 0}
!115 = !{!"0x4d4c890.w1024.b0", !116, i64 0}
!116 = !{!"i8*", !117, i64 0}
!117 = !{!"0x4d4c890", !7, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"0x4d4c890.w1.b1", !106, i64 0}
!120 = !{!121, !121, i64 0}
!121 = !{!"float", !122, i64 0}
!122 = !{!"0x4d45a00", !7, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"float", !125, i64 0}
!125 = !{!"0x4d2ea30", !7, i64 0}
!126 = !{!127, !127, i64 0}
!127 = !{!"float", !128, i64 0}
!128 = !{!"0x4d3e4c0", !7, i64 0}
!129 = !{!130, !130, i64 0}
!130 = !{!"0x4d48fe0.w1.b0", !131, i64 0}
!131 = !{!"0x4d48fe0.w2.b0", !132, i64 0}
!132 = !{!"0x4d48fe0.w4.b0", !133, i64 0}
!133 = !{!"0x4d48fe0.w8.b0", !134, i64 0}
!134 = !{!"0x4d48fe0.w16.b0", !135, i64 0}
!135 = !{!"0x4d48fe0.w32.b0", !136, i64 0}
!136 = !{!"0x4d48fe0.w64.b0", !137, i64 0}
!137 = !{!"0x4d48fe0.w128.b0", !138, i64 0}
!138 = !{!"0x4d48fe0.w256.b0", !139, i64 0}
!139 = !{!"0x4d48fe0.w512.b0", !140, i64 0}
!140 = !{!"0x4d48fe0.w1024.b0", !141, i64 0}
!141 = !{!"i8*", !142, i64 0}
!142 = !{!"0x4d48fe0", !7, i64 0}
!143 = !{!144, !144, i64 0}
!144 = !{!"0x4d48fe0.w1.b1", !131, i64 0}
!145 = !{!146, !146, i64 0}
!146 = !{!"0x4d48fe0.w1.b2", !147, i64 0}
!147 = !{!"0x4d48fe0.w2.b2", !132, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"0x4d501c0.w1.b0", !150, i64 0}
!150 = !{!"0x4d501c0.w2.b0", !151, i64 0}
!151 = !{!"0x4d501c0.w4.b0", !152, i64 0}
!152 = !{!"0x4d501c0.w8.b0", !153, i64 0}
!153 = !{!"0x4d501c0.w16.b0", !154, i64 0}
!154 = !{!"0x4d501c0.w32.b0", !155, i64 0}
!155 = !{!"0x4d501c0.w64.b0", !156, i64 0}
!156 = !{!"0x4d501c0.w128.b0", !157, i64 0}
!157 = !{!"0x4d501c0.w256.b0", !158, i64 0}
!158 = !{!"0x4d501c0.w512.b0", !159, i64 0}
!159 = !{!"0x4d501c0.w1024.b0", !160, i64 0}
!160 = !{!"i8*", !161, i64 0}
!161 = !{!"0x4d501c0", !7, i64 0}
!162 = !{!163, !163, i64 0}
!163 = !{!"0x4d501c0.w1.b1", !150, i64 0}
!164 = !{!165, !165, i64 0}
!165 = !{!"0x4d50620.w1.b0", !166, i64 0}
!166 = !{!"0x4d50620.w2.b0", !167, i64 0}
!167 = !{!"0x4d50620.w4.b0", !168, i64 0}
!168 = !{!"0x4d50620.w8.b0", !169, i64 0}
!169 = !{!"0x4d50620.w16.b0", !170, i64 0}
!170 = !{!"0x4d50620.w32.b0", !171, i64 0}
!171 = !{!"0x4d50620.w64.b0", !172, i64 0}
!172 = !{!"0x4d50620.w128.b0", !173, i64 0}
!173 = !{!"0x4d50620.w256.b0", !174, i64 0}
!174 = !{!"0x4d50620.w512.b0", !175, i64 0}
!175 = !{!"0x4d50620.w1024.b0", !176, i64 0}
!176 = !{!"i8*", !177, i64 0}
!177 = !{!"0x4d50620", !7, i64 0}
!178 = !{!179, !179, i64 0}
!179 = !{!"0x4d50620.w1.b1", !166, i64 0}
!180 = !{!181, !181, i64 0}
!181 = !{!"0x4d524e0.w1.b0", !182, i64 0}
!182 = !{!"0x4d524e0.w2.b0", !183, i64 0}
!183 = !{!"0x4d524e0.w4.b0", !184, i64 0}
!184 = !{!"0x4d524e0.w8.b0", !185, i64 0}
!185 = !{!"0x4d524e0.w16.b0", !186, i64 0}
!186 = !{!"0x4d524e0.w32.b0", !187, i64 0}
!187 = !{!"0x4d524e0.w64.b0", !188, i64 0}
!188 = !{!"0x4d524e0.w128.b0", !189, i64 0}
!189 = !{!"0x4d524e0.w256.b0", !190, i64 0}
!190 = !{!"0x4d524e0.w512.b0", !191, i64 0}
!191 = !{!"0x4d524e0.w1024.b0", !192, i64 0}
!192 = !{!"i8*", !193, i64 0}
!193 = !{!"0x4d524e0", !7, i64 0}
!194 = !{!195, !195, i64 0}
!195 = !{!"0x4d524e0.w1.b1", !182, i64 0}
!196 = !{!197, !197, i64 0}
!197 = !{!"0x4d52950.w1.b0", !198, i64 0}
!198 = !{!"0x4d52950.w2.b0", !199, i64 0}
!199 = !{!"0x4d52950.w4.b0", !200, i64 0}
!200 = !{!"0x4d52950.w8.b0", !201, i64 0}
!201 = !{!"0x4d52950.w16.b0", !202, i64 0}
!202 = !{!"0x4d52950.w32.b0", !203, i64 0}
!203 = !{!"0x4d52950.w64.b0", !204, i64 0}
!204 = !{!"0x4d52950.w128.b0", !205, i64 0}
!205 = !{!"0x4d52950.w256.b0", !206, i64 0}
!206 = !{!"0x4d52950.w512.b0", !207, i64 0}
!207 = !{!"0x4d52950.w1024.b0", !208, i64 0}
!208 = !{!"i8*", !209, i64 0}
!209 = !{!"0x4d52950", !7, i64 0}
!210 = !{!211, !211, i64 0}
!211 = !{!"0x4d52950.w1.b1", !198, i64 0}
!212 = !{!213, !213, i64 0}
!213 = !{!"0x4d54830.w1.b0", !214, i64 0}
!214 = !{!"0x4d54830.w2.b0", !215, i64 0}
!215 = !{!"0x4d54830.w4.b0", !216, i64 0}
!216 = !{!"0x4d54830.w8.b0", !217, i64 0}
!217 = !{!"0x4d54830.w16.b0", !218, i64 0}
!218 = !{!"0x4d54830.w32.b0", !219, i64 0}
!219 = !{!"0x4d54830.w64.b0", !220, i64 0}
!220 = !{!"0x4d54830.w128.b0", !221, i64 0}
!221 = !{!"0x4d54830.w256.b0", !222, i64 0}
!222 = !{!"0x4d54830.w512.b0", !223, i64 0}
!223 = !{!"0x4d54830.w1024.b0", !224, i64 0}
!224 = !{!"i8*", !225, i64 0}
!225 = !{!"0x4d54830", !7, i64 0}
!226 = !{!227, !227, i64 0}
!227 = !{!"0x4d54830.w1.b1", !214, i64 0}
!228 = !{!229, !229, i64 0}
!229 = !{!"0x4d54d80.w1.b0", !230, i64 0}
!230 = !{!"0x4d54d80.w2.b0", !231, i64 0}
!231 = !{!"0x4d54d80.w4.b0", !232, i64 0}
!232 = !{!"0x4d54d80.w8.b0", !233, i64 0}
!233 = !{!"0x4d54d80.w16.b0", !234, i64 0}
!234 = !{!"0x4d54d80.w32.b0", !235, i64 0}
!235 = !{!"0x4d54d80.w64.b0", !236, i64 0}
!236 = !{!"0x4d54d80.w128.b0", !237, i64 0}
!237 = !{!"0x4d54d80.w256.b0", !238, i64 0}
!238 = !{!"0x4d54d80.w512.b0", !239, i64 0}
!239 = !{!"0x4d54d80.w1024.b0", !240, i64 0}
!240 = !{!"i8*", !241, i64 0}
!241 = !{!"0x4d54d80", !7, i64 0}
!242 = !{!243, !243, i64 0}
!243 = !{!"0x4d54d80.w1.b1", !230, i64 0}
!244 = !{!245, !245, i64 0}
!245 = !{!"float", !246, i64 0}
!246 = !{!"0x4d2eeb0", !7, i64 0}
!247 = !{!248, !248, i64 0}
!248 = !{!"float", !249, i64 0}
!249 = !{!"0x4d43eb0", !7, i64 0}
!250 = !{!251, !251, i64 0}
!251 = !{!"float", !252, i64 0}
!252 = !{!"0x4d30fb0", !7, i64 0}
!253 = !{!254, !254, i64 0}
!254 = !{!"float", !255, i64 0}
!255 = !{!"0x4d3ec00", !7, i64 0}
