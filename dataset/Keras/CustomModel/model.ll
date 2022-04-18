; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32*, i32 }
%1 = type { i8*, %2, i32, %3, i64*, i64*, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }
%closure_loop_parallel_ax0.ax1.fused = type { i8*, i8*, i8* }
%closure_loop_parallel_bs.c.fused.h.fused = type { float*, i8* }
%closure_loop_parallel_occ.k_h.fused = type { <4 x float>*, i8* }
%closure_loop_parallel_n.c.outer.fused.h.fused = type { float*, <4 x float>*, i8* }
%closure_loop_parallel_x.outer.y.outer.fused = type { i8*, i8*, i8* }
%closure_loop_parallel_x.outer.y.outer.fused.0 = type { i8*, i8*, i8* }
%closure_loop_parallel_ax0.ax1.fused.1 = type { i8*, i8* }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global i32 (i32 (i32, %0*, i8*)*, i8*, i32)* null, align 8
@.str = private constant [90 x i8] c"Assert fail: (num_args == 2), tvmgen_default_fused_nn_batch_flatten: num_args should be 2\00", align 1
@.str.1 = private constant [165 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_batch_flatten: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [165 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_batch_flatten: Expect arg[1] to be pointer\00", align 1
@.str.3 = private constant [85 x i8] c"Assert fail: (4 == tir.tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 4\00", align 1
@.str.4 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg0, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be float32\00", align 1
@.str.5 = private constant [124 x i8] c"Assert fail: (1 == int32(arg0.shape[0])), Argument arg0.shape[0] has an unsatisfied constraint: (1 == int32(arg0.shape[0]))\00", align 1
@.str.6 = private constant [126 x i8] c"Assert fail: (13 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (13 == int32(arg0.shape[1]))\00", align 1
@.str.7 = private constant [126 x i8] c"Assert fail: (13 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint: (13 == int32(arg0.shape[2]))\00", align 1
@.str.8 = private constant [126 x i8] c"Assert fail: (16 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint: (16 == int32(arg0.shape[3]))\00", align 1
@.str.9 = private constant [198 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (16 == int32(arg0.strides[2]))) && (208 == int32(arg0.strides[1]))) && (2704 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.10 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8))\00", align 1
@.str.11 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg0, 0, 10)), Argument arg0.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg0, 0, 10))\00", align 1
@.str.12 = private constant [85 x i8] c"Assert fail: (2 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 2\00", align 1
@.str.13 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.14 = private constant [124 x i8] c"Assert fail: (1 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (1 == int32(arg1.shape[0]))\00", align 1
@.str.15 = private constant [130 x i8] c"Assert fail: (2704 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (2704 == int32(arg1.shape[1]))\00", align 1
@.str.16 = private constant [125 x i8] c"Assert fail: ((1 == int32(arg1.strides[1])) && (2704 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.17 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8))\00", align 1
@.str.18 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg1, 0, 10))\00", align 1
@.str.19 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg1, 0, 9))\00", align 1
@.str.20 = private constant [85 x i8] c"Assert fail: (num_args == 3), tvmgen_default_fused_nn_bias_add: num_args should be 3\00", align 1
@.str.21 = private constant [160 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_bias_add: Expect arg[0] to be pointer\00", align 1
@.str.22 = private constant [160 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_bias_add: Expect arg[1] to be pointer\00", align 1
@.str.23 = private constant [160 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_nn_bias_add: Expect arg[2] to be pointer\00", align 1
@.str.24 = private constant [126 x i8] c"Assert fail: (16 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (16 == int32(arg0.shape[1]))\00", align 1
@.str.25 = private constant [126 x i8] c"Assert fail: (13 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint: (13 == int32(arg0.shape[3]))\00", align 1
@.str.26 = private constant [198 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (13 == int32(arg0.strides[2]))) && (169 == int32(arg0.strides[1]))) && (2704 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.27 = private constant [85 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 1\00", align 1
@.str.28 = private constant [126 x i8] c"Assert fail: (16 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (16 == int32(arg1.shape[0]))\00", align 1
@.str.29 = private constant [87 x i8] c"Assert fail: (1 == int32(arg1.strides[0])), arg1.strides: expected to be compact array\00", align 1
@.str.30 = private constant [85 x i8] c"Assert fail: (4 == tir.tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 4\00", align 1
@.str.31 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.32 = private constant [124 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint: (1 == int32(arg2.shape[0]))\00", align 1
@.str.33 = private constant [126 x i8] c"Assert fail: (16 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint: (16 == int32(arg2.shape[1]))\00", align 1
@.str.34 = private constant [126 x i8] c"Assert fail: (13 == int32(arg2.shape[2])), Argument arg2.shape[2] has an unsatisfied constraint: (13 == int32(arg2.shape[2]))\00", align 1
@.str.35 = private constant [126 x i8] c"Assert fail: (13 == int32(arg2.shape[3])), Argument arg2.shape[3] has an unsatisfied constraint: (13 == int32(arg2.shape[3]))\00", align 1
@.str.36 = private constant [198 x i8] c"Assert fail: ((((1 == int32(arg2.strides[3])) && (13 == int32(arg2.strides[2]))) && (169 == int32(arg2.strides[1]))) && (2704 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
@.str.37 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg2, 0, 8)), Argument arg2.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg2, 0, 8))\00", align 1
@.str.38 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg2, 0, 10)), Argument arg2.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg2, 0, 10))\00", align 1
@.str.39 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg2, 0, 9)), Argument arg2.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg2, 0, 9))\00", align 1
@.str.40 = private constant [87 x i8] c"Assert fail: (num_args == 3), tvmgen_default_fused_nn_bias_add_1: num_args should be 3\00", align 1
@.str.41 = private constant [162 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_bias_add_1: Expect arg[0] to be pointer\00", align 1
@.str.42 = private constant [162 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_bias_add_1: Expect arg[1] to be pointer\00", align 1
@.str.43 = private constant [162 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_nn_bias_add_1: Expect arg[2] to be pointer\00", align 1
@.str.44 = private constant [85 x i8] c"Assert fail: (2 == tir.tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 2\00", align 1
@.str.45 = private constant [126 x i8] c"Assert fail: (32 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (32 == int32(arg0.shape[1]))\00", align 1
@.str.46 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg0.strides[1])) && (32 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.47 = private constant [126 x i8] c"Assert fail: (32 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (32 == int32(arg1.shape[0]))\00", align 1
@.str.48 = private constant [85 x i8] c"Assert fail: (2 == tir.tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 2\00", align 1
@.str.49 = private constant [126 x i8] c"Assert fail: (32 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint: (32 == int32(arg2.shape[1]))\00", align 1
@.str.50 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg2.strides[1])) && (32 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
@.str.51 = private constant [87 x i8] c"Assert fail: (num_args == 3), tvmgen_default_fused_nn_bias_add_2: num_args should be 3\00", align 1
@.str.52 = private constant [162 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_bias_add_2: Expect arg[0] to be pointer\00", align 1
@.str.53 = private constant [162 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_bias_add_2: Expect arg[1] to be pointer\00", align 1
@.str.54 = private constant [162 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_nn_bias_add_2: Expect arg[2] to be pointer\00", align 1
@.str.55 = private constant [126 x i8] c"Assert fail: (10 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (10 == int32(arg0.shape[1]))\00", align 1
@.str.56 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg0.strides[1])) && (10 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.57 = private constant [126 x i8] c"Assert fail: (10 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (10 == int32(arg1.shape[0]))\00", align 1
@.str.58 = private constant [126 x i8] c"Assert fail: (10 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint: (10 == int32(arg2.shape[1]))\00", align 1
@.str.59 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg2.strides[1])) && (10 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
@.str.60 = private constant [83 x i8] c"Assert fail: (num_args == 3), tvmgen_default_fused_nn_conv2d: num_args should be 3\00", align 1
@.str.61 = private constant [158 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_conv2d: Expect arg[0] to be pointer\00", align 1
@.str.62 = private constant [158 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_conv2d: Expect arg[1] to be pointer\00", align 1
@.str.63 = private constant [158 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_nn_conv2d: Expect arg[2] to be pointer\00", align 1
@.str.64 = private constant [124 x i8] c"Assert fail: (1 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (1 == int32(arg0.shape[1]))\00", align 1
@.str.65 = private constant [126 x i8] c"Assert fail: (14 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint: (14 == int32(arg0.shape[2]))\00", align 1
@.str.66 = private constant [126 x i8] c"Assert fail: (14 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint: (14 == int32(arg0.shape[3]))\00", align 1
@.str.67 = private constant [197 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (14 == int32(arg0.strides[2]))) && (196 == int32(arg0.strides[1]))) && (196 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.68 = private constant [85 x i8] c"Assert fail: (4 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4\00", align 1
@.str.69 = private constant [124 x i8] c"Assert fail: (1 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (1 == int32(arg1.shape[1]))\00", align 1
@.str.70 = private constant [124 x i8] c"Assert fail: (2 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint: (2 == int32(arg1.shape[2]))\00", align 1
@.str.71 = private constant [124 x i8] c"Assert fail: (2 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint: (2 == int32(arg1.shape[3]))\00", align 1
@.str.72 = private constant [192 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (2 == int32(arg1.strides[2]))) && (4 == int32(arg1.strides[1]))) && (4 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.76 = private constant [82 x i8] c"Assert fail: (num_args == 3), tvmgen_default_fused_nn_dense: num_args should be 3\00", align 1
@.str.77 = private constant [157 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_dense: Expect arg[0] to be pointer\00", align 1
@.str.78 = private constant [157 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_dense: Expect arg[1] to be pointer\00", align 1
@.str.79 = private constant [157 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_nn_dense: Expect arg[2] to be pointer\00", align 1
@.str.80 = private constant [130 x i8] c"Assert fail: (2704 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (2704 == int32(arg0.shape[1]))\00", align 1
@.str.81 = private constant [125 x i8] c"Assert fail: ((1 == int32(arg0.strides[1])) && (2704 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@__TVMBackendAllocWorkspace = linkonce dllexport local_unnamed_addr global i8* (i32, i32, i64, i32, i32)* null, align 8
@__TVMBackendFreeWorkspace = linkonce dllexport local_unnamed_addr global i32 (i32, i32, i8*)* null, align 8
@.str.83 = private constant [84 x i8] c"Assert fail: (num_args == 3), tvmgen_default_fused_nn_dense_1: num_args should be 3\00", align 1
@.str.84 = private constant [159 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_dense_1: Expect arg[0] to be pointer\00", align 1
@.str.85 = private constant [159 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_dense_1: Expect arg[1] to be pointer\00", align 1
@.str.86 = private constant [159 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), tvmgen_default_fused_nn_dense_1: Expect arg[2] to be pointer\00", align 1
@.str.87 = private constant [126 x i8] c"Assert fail: (32 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (32 == int32(arg1.shape[1]))\00", align 1
@.str.88 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg1.strides[1])) && (32 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.90 = private constant [87 x i8] c"Assert fail: (num_args == 2), tvmgen_default_fused_nn_max_pool2d: num_args should be 2\00", align 1
@.str.91 = private constant [162 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_max_pool2d: Expect arg[0] to be pointer\00", align 1
@.str.92 = private constant [162 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_max_pool2d: Expect arg[1] to be pointer\00", align 1
@.str.93 = private constant [126 x i8] c"Assert fail: (28 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint: (28 == int32(arg0.shape[2]))\00", align 1
@.str.94 = private constant [126 x i8] c"Assert fail: (28 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint: (28 == int32(arg0.shape[3]))\00", align 1
@.str.95 = private constant [197 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (28 == int32(arg0.strides[2]))) && (784 == int32(arg0.strides[1]))) && (784 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.96 = private constant [126 x i8] c"Assert fail: (14 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint: (14 == int32(arg1.shape[2]))\00", align 1
@.str.97 = private constant [126 x i8] c"Assert fail: (14 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint: (14 == int32(arg1.shape[3]))\00", align 1
@.str.98 = private constant [197 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (14 == int32(arg1.strides[2]))) && (196 == int32(arg1.strides[1]))) && (196 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.99 = private constant [81 x i8] c"Assert fail: (num_args == 2), tvmgen_default_fused_nn_relu: num_args should be 2\00", align 1
@.str.100 = private constant [156 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_relu: Expect arg[0] to be pointer\00", align 1
@.str.101 = private constant [156 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_relu: Expect arg[1] to be pointer\00", align 1
@.str.102 = private constant [84 x i8] c"Assert fail: (num_args == 2), tvmgen_default_fused_nn_softmax: num_args should be 2\00", align 1
@.str.103 = private constant [159 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_softmax: Expect arg[0] to be pointer\00", align 1
@.str.104 = private constant [159 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_softmax: Expect arg[1] to be pointer\00", align 1
@.str.105 = private constant [126 x i8] c"Assert fail: (10 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (10 == int32(arg1.shape[1]))\00", align 1
@.str.106 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg1.strides[1])) && (10 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.107 = private constant [83 x i8] c"Assert fail: (num_args == 2), tvmgen_default_fused_transpose: num_args should be 2\00", align 1
@.str.108 = private constant [158 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_transpose: Expect arg[0] to be pointer\00", align 1
@.str.109 = private constant [158 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_transpose: Expect arg[1] to be pointer\00", align 1
@.str.110 = private constant [126 x i8] c"Assert fail: (13 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (13 == int32(arg1.shape[1]))\00", align 1
@.str.111 = private constant [126 x i8] c"Assert fail: (13 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint: (13 == int32(arg1.shape[2]))\00", align 1
@.str.112 = private constant [126 x i8] c"Assert fail: (16 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint: (16 == int32(arg1.shape[3]))\00", align 1
@.str.113 = private constant [198 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (16 == int32(arg1.strides[2]))) && (208 == int32(arg1.strides[1]))) && (2704 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
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
  %46 = icmp eq i32 %45, 13
  br i1 %46, label %assert_end14, label %assert_fail13, !prof !4

assert_fail13:                                    ; preds = %assert_end12
  %47 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %47(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.6, i64 0, i64 0))
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %48 = getelementptr inbounds i64, i64* %arg0.shape, i64 2
  %49 = load i64, i64* %48, align 8, !tbaa !40
  %50 = trunc i64 %49 to i32
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %assert_end16, label %assert_fail15, !prof !4

assert_fail15:                                    ; preds = %assert_end14
  %52 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %52(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.7, i64 0, i64 0))
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %53 = getelementptr inbounds i64, i64* %arg0.shape, i64 3
  %54 = load i64, i64* %53, align 8, !tbaa !43
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %55, 16
  br i1 %56, label %assert_end18, label %assert_fail17, !prof !4

assert_fail17:                                    ; preds = %assert_end16
  %57 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %57(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.8, i64 0, i64 0))
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !45

if_then:                                          ; preds = %assert_end18
  %58 = bitcast i64* %arg0.strides to <4 x i64>*
  %59 = load <4 x i64>, <4 x i64>* %58, align 8, !tbaa !46
  %60 = trunc <4 x i64> %59 to <4 x i32>
  %61 = icmp ne <4 x i32> %60, <i32 2704, i32 208, i32 16, i32 1>
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
  tail call void %67(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.9, i64 0, i64 0))
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
  %96 = icmp eq i32 %95, 2704
  br i1 %96, label %assert_end34, label %assert_fail33, !prof !4

assert_fail33:                                    ; preds = %assert_end32
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %97(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.15, i64 0, i64 0))
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %.not47 = icmp eq i64* %arg1.strides, null
  br i1 %.not47, label %if_end36, label %if_then35, !prof !45

if_then35:                                        ; preds = %assert_end34
  %98 = load i64, i64* %arg1.strides, align 8, !tbaa !74
  %99 = trunc i64 %98 to i32
  %100 = icmp eq i32 %99, 2704
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
  tail call void %109(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.16, i64 0, i64 0))
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 128 dereferenceable(10816) %0, i8* noundef nonnull align 128 dereferenceable(10816) %1, i64 10816, i1 false)
  ret void
}

define dllexport i32 @tvmgen_default_fused_nn_bias_add(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 3
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end69, %assert_fail68, %assert_fail66, %assert_fail64, %assert_fail62, %assert_fail58, %assert_fail56, %assert_fail54, %assert_fail52, %assert_fail50, %assert_fail46, %assert_fail44, %assert_fail42, %assert_fail40, %assert_fail38, %assert_fail34, %assert_fail32, %assert_fail28, %assert_fail26, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail12, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail2, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail2 ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail12 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail26 ], [ -1, %assert_fail28 ], [ -1, %assert_fail32 ], [ -1, %assert_fail34 ], [ -1, %assert_fail38 ], [ -1, %assert_fail40 ], [ -1, %assert_fail42 ], [ -1, %assert_fail44 ], [ -1, %assert_fail46 ], [ -1, %assert_fail50 ], [ -1, %assert_fail52 ], [ -1, %assert_fail54 ], [ -1, %assert_fail56 ], [ -1, %assert_fail58 ], [ -1, %assert_fail62 ], [ -1, %assert_fail64 ], [ -1, %assert_fail66 ], [ -1, %assert_fail68 ], [ %171, %assert_end69 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.20, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %1**
  %arg071 = load %1*, %1** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !90
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %1**
  %arg172 = load %1*, %1** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !104
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %1**
  %arg273 = load %1*, %1** %15, align 8
  %16 = getelementptr inbounds i8, i8* %1, i64 8
  %17 = bitcast i8* %16 to i32*
  %arg2.code = load i32, i32* %17, align 4, !tbaa !106
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
  tail call void %28(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.21, i64 0, i64 0))
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
  tail call void %29(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.22, i64 0, i64 0))
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
  tail call void %30(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.23, i64 0, i64 0))
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  %31 = getelementptr inbounds %1, %1* %arg071, i64 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %assert_end11, label %assert_fail8, !prof !4

assert_fail8:                                     ; preds = %assert_end7
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %34(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0))
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
  tail call void %46(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.4, i64 0, i64 0))
  br label %common.ret

assert_end13:                                     ; preds = %assert_end11
  %47 = load i64, i64* %arg0.shape, align 8, !tbaa !109
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %assert_end15, label %assert_fail14, !prof !4

assert_fail14:                                    ; preds = %assert_end13
  %50 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %50(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0))
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %51 = getelementptr inbounds i64, i64* %arg0.shape, i64 1
  %52 = load i64, i64* %51, align 8, !tbaa !123
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %53, 16
  br i1 %54, label %assert_end17, label %assert_fail16, !prof !4

assert_fail16:                                    ; preds = %assert_end15
  %55 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %55(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.24, i64 0, i64 0))
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %56 = getelementptr inbounds i64, i64* %arg0.shape, i64 2
  %57 = load i64, i64* %56, align 8, !tbaa !125
  %58 = trunc i64 %57 to i32
  %59 = icmp eq i32 %58, 13
  br i1 %59, label %assert_end19, label %assert_fail18, !prof !4

assert_fail18:                                    ; preds = %assert_end17
  %60 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %60(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.7, i64 0, i64 0))
  br label %common.ret

assert_end19:                                     ; preds = %assert_end17
  %61 = getelementptr inbounds i64, i64* %arg0.shape, i64 3
  %62 = load i64, i64* %61, align 8, !tbaa !128
  %63 = trunc i64 %62 to i32
  %64 = icmp eq i32 %63, 13
  br i1 %64, label %assert_end21, label %assert_fail20, !prof !4

assert_fail20:                                    ; preds = %assert_end19
  %65 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %65(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.25, i64 0, i64 0))
  br label %common.ret

assert_end21:                                     ; preds = %assert_end19
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !45

if_then:                                          ; preds = %assert_end21
  %66 = bitcast i64* %arg0.strides to <4 x i64>*
  %67 = load <4 x i64>, <4 x i64>* %66, align 8, !tbaa !130
  %68 = trunc <4 x i64> %67 to <4 x i32>
  %69 = icmp ne <4 x i32> %68, <i32 2704, i32 169, i32 13, i32 1>
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
  tail call void %75(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.26, i64 0, i64 0))
  br label %common.ret

assert_fail24:                                    ; preds = %if_end
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %76(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  br label %common.ret

assert_end25:                                     ; preds = %if_end
  %77 = getelementptr inbounds %1, %1* %arg071, i64 0, i32 1, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %assert_end27, label %assert_fail26, !prof !4

assert_fail26:                                    ; preds = %assert_end25
  %80 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %80(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0))
  br label %common.ret

assert_end27:                                     ; preds = %assert_end25
  %81 = getelementptr inbounds %1, %1* %arg172, i64 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %assert_end31, label %assert_fail28, !prof !4

assert_fail28:                                    ; preds = %assert_end27
  %84 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %84(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.27, i64 0, i64 0))
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
  tail call void %96(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.13, i64 0, i64 0))
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %97 = load i64, i64* %arg1.shape, align 8, !tbaa !142
  %98 = trunc i64 %97 to i32
  %99 = icmp eq i32 %98, 16
  br i1 %99, label %assert_end35, label %assert_fail34, !prof !4

assert_fail34:                                    ; preds = %assert_end33
  %100 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %100(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.28, i64 0, i64 0))
  br label %common.ret

assert_end35:                                     ; preds = %assert_end33
  %.not74 = icmp eq i64* %arg1.strides, null
  br i1 %.not74, label %if_end37, label %if_then36, !prof !45

if_then36:                                        ; preds = %assert_end35
  %101 = load i64, i64* %arg1.strides, align 8, !tbaa !156
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
  tail call void %107(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.29, i64 0, i64 0))
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
  tail call void %120(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.30, i64 0, i64 0))
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
  tail call void %132(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.31, i64 0, i64 0))
  br label %common.ret

assert_end51:                                     ; preds = %assert_end49
  %133 = load i64, i64* %arg2.shape, align 8, !tbaa !170
  %134 = trunc i64 %133 to i32
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %assert_end53, label %assert_fail52, !prof !4

assert_fail52:                                    ; preds = %assert_end51
  %136 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %136(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.32, i64 0, i64 0))
  br label %common.ret

assert_end53:                                     ; preds = %assert_end51
  %137 = getelementptr inbounds i64, i64* %arg2.shape, i64 1
  %138 = load i64, i64* %137, align 8, !tbaa !184
  %139 = trunc i64 %138 to i32
  %140 = icmp eq i32 %139, 16
  br i1 %140, label %assert_end55, label %assert_fail54, !prof !4

assert_fail54:                                    ; preds = %assert_end53
  %141 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %141(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.33, i64 0, i64 0))
  br label %common.ret

assert_end55:                                     ; preds = %assert_end53
  %142 = getelementptr inbounds i64, i64* %arg2.shape, i64 2
  %143 = load i64, i64* %142, align 8, !tbaa !186
  %144 = trunc i64 %143 to i32
  %145 = icmp eq i32 %144, 13
  br i1 %145, label %assert_end57, label %assert_fail56, !prof !4

assert_fail56:                                    ; preds = %assert_end55
  %146 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %146(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.34, i64 0, i64 0))
  br label %common.ret

assert_end57:                                     ; preds = %assert_end55
  %147 = getelementptr inbounds i64, i64* %arg2.shape, i64 3
  %148 = load i64, i64* %147, align 8, !tbaa !189
  %149 = trunc i64 %148 to i32
  %150 = icmp eq i32 %149, 13
  br i1 %150, label %assert_end59, label %assert_fail58, !prof !4

assert_fail58:                                    ; preds = %assert_end57
  %151 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %151(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.35, i64 0, i64 0))
  br label %common.ret

assert_end59:                                     ; preds = %assert_end57
  %.not75 = icmp eq i64* %arg2.strides, null
  br i1 %.not75, label %if_end61, label %if_then60, !prof !45

if_then60:                                        ; preds = %assert_end59
  %152 = bitcast i64* %arg2.strides to <4 x i64>*
  %153 = load <4 x i64>, <4 x i64>* %152, align 8, !tbaa !191
  %154 = trunc <4 x i64> %153 to <4 x i32>
  %155 = icmp ne <4 x i32> %154, <i32 2704, i32 169, i32 13, i32 1>
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
  tail call void %161(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.36, i64 0, i64 0))
  br label %common.ret

assert_fail64:                                    ; preds = %if_end61
  %162 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %162(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.37, i64 0, i64 0))
  br label %common.ret

assert_end65:                                     ; preds = %if_end61
  %163 = getelementptr inbounds %1, %1* %arg273, i64 0, i32 1, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 1
  br i1 %165, label %assert_end67, label %assert_fail66, !prof !4

assert_fail66:                                    ; preds = %assert_end65
  %166 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %166(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.38, i64 0, i64 0))
  br label %common.ret

assert_end67:                                     ; preds = %assert_end65
  %167 = getelementptr inbounds %1, %1* %arg273, i64 0, i32 1, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %dev_id, %168
  br i1 %169, label %assert_end69, label %assert_fail68, !prof !4

assert_fail68:                                    ; preds = %assert_end67
  %170 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %170(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.39, i64 0, i64 0))
  br label %common.ret

assert_end69:                                     ; preds = %assert_end67
  %171 = tail call fastcc i32 @tvmgen_default_fused_nn_bias_add_compute_(i8* %T_add, i8* %placeholder, i8* %placeholder70)
  br label %common.ret
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_nn_bias_add_compute_(i8* noalias align 128 %0, i8* noalias align 128 %1, i8* noalias align 128 %2) unnamed_addr #2 {
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

for_begin_ax2.preheader:                          ; preds = %for_begin_ax2.preheader.preheader, %for_begin_ax2.preheader
  %indvars.iv = phi i64 [ %23, %for_begin_ax2.preheader.preheader ], [ %indvars.iv.next, %for_begin_ax2.preheader ]
  %24 = mul nsw i64 %indvars.iv, 169
  %25 = getelementptr inbounds float, float* %10, i64 %indvars.iv
  %26 = load float, float* %25, align 4, !tbaa !203
  %27 = insertelement <13 x float> undef, float %26, i64 0
  %28 = shufflevector <13 x float> %27, <13 x float> undef, <13 x i32> zeroinitializer
  %29 = getelementptr inbounds float, float* %7, i64 %24
  %30 = bitcast float* %29 to <13 x float>*
  %31 = load <13 x float>, <13 x float>* %30, align 4, !tbaa !206
  %32 = fadd <13 x float> %31, %28
  %33 = getelementptr inbounds float, float* %4, i64 %24
  %34 = bitcast float* %33 to <13 x float>*
  store <13 x float> %32, <13 x float>* %34, align 4, !tbaa !209
  %35 = add nsw i64 %24, 13
  %36 = getelementptr inbounds float, float* %7, i64 %35
  %37 = bitcast float* %36 to <13 x float>*
  %38 = load <13 x float>, <13 x float>* %37, align 4, !tbaa !206
  %39 = fadd <13 x float> %38, %28
  %40 = getelementptr inbounds float, float* %4, i64 %35
  %41 = bitcast float* %40 to <13 x float>*
  store <13 x float> %39, <13 x float>* %41, align 4, !tbaa !209
  %42 = add nsw i64 %24, 26
  %43 = getelementptr inbounds float, float* %7, i64 %42
  %44 = bitcast float* %43 to <13 x float>*
  %45 = load <13 x float>, <13 x float>* %44, align 4, !tbaa !206
  %46 = fadd <13 x float> %45, %28
  %47 = getelementptr inbounds float, float* %4, i64 %42
  %48 = bitcast float* %47 to <13 x float>*
  store <13 x float> %46, <13 x float>* %48, align 4, !tbaa !209
  %49 = add nsw i64 %24, 39
  %50 = getelementptr inbounds float, float* %7, i64 %49
  %51 = bitcast float* %50 to <13 x float>*
  %52 = load <13 x float>, <13 x float>* %51, align 4, !tbaa !206
  %53 = fadd <13 x float> %52, %28
  %54 = getelementptr inbounds float, float* %4, i64 %49
  %55 = bitcast float* %54 to <13 x float>*
  store <13 x float> %53, <13 x float>* %55, align 4, !tbaa !209
  %56 = add nsw i64 %24, 52
  %57 = getelementptr inbounds float, float* %7, i64 %56
  %58 = bitcast float* %57 to <13 x float>*
  %59 = load <13 x float>, <13 x float>* %58, align 4, !tbaa !206
  %60 = fadd <13 x float> %59, %28
  %61 = getelementptr inbounds float, float* %4, i64 %56
  %62 = bitcast float* %61 to <13 x float>*
  store <13 x float> %60, <13 x float>* %62, align 4, !tbaa !209
  %63 = add nsw i64 %24, 65
  %64 = getelementptr inbounds float, float* %7, i64 %63
  %65 = bitcast float* %64 to <13 x float>*
  %66 = load <13 x float>, <13 x float>* %65, align 4, !tbaa !206
  %67 = fadd <13 x float> %66, %28
  %68 = getelementptr inbounds float, float* %4, i64 %63
  %69 = bitcast float* %68 to <13 x float>*
  store <13 x float> %67, <13 x float>* %69, align 4, !tbaa !209
  %70 = add nsw i64 %24, 78
  %71 = getelementptr inbounds float, float* %7, i64 %70
  %72 = bitcast float* %71 to <13 x float>*
  %73 = load <13 x float>, <13 x float>* %72, align 4, !tbaa !206
  %74 = fadd <13 x float> %73, %28
  %75 = getelementptr inbounds float, float* %4, i64 %70
  %76 = bitcast float* %75 to <13 x float>*
  store <13 x float> %74, <13 x float>* %76, align 4, !tbaa !209
  %77 = add nsw i64 %24, 91
  %78 = getelementptr inbounds float, float* %7, i64 %77
  %79 = bitcast float* %78 to <13 x float>*
  %80 = load <13 x float>, <13 x float>* %79, align 4, !tbaa !206
  %81 = fadd <13 x float> %80, %28
  %82 = getelementptr inbounds float, float* %4, i64 %77
  %83 = bitcast float* %82 to <13 x float>*
  store <13 x float> %81, <13 x float>* %83, align 4, !tbaa !209
  %84 = add nsw i64 %24, 104
  %85 = getelementptr inbounds float, float* %7, i64 %84
  %86 = bitcast float* %85 to <13 x float>*
  %87 = load <13 x float>, <13 x float>* %86, align 4, !tbaa !206
  %88 = fadd <13 x float> %87, %28
  %89 = getelementptr inbounds float, float* %4, i64 %84
  %90 = bitcast float* %89 to <13 x float>*
  store <13 x float> %88, <13 x float>* %90, align 4, !tbaa !209
  %91 = add nsw i64 %24, 117
  %92 = getelementptr inbounds float, float* %7, i64 %91
  %93 = bitcast float* %92 to <13 x float>*
  %94 = load <13 x float>, <13 x float>* %93, align 4, !tbaa !206
  %95 = fadd <13 x float> %94, %28
  %96 = getelementptr inbounds float, float* %4, i64 %91
  %97 = bitcast float* %96 to <13 x float>*
  store <13 x float> %95, <13 x float>* %97, align 4, !tbaa !209
  %98 = add nsw i64 %24, 130
  %99 = getelementptr inbounds float, float* %7, i64 %98
  %100 = bitcast float* %99 to <13 x float>*
  %101 = load <13 x float>, <13 x float>* %100, align 4, !tbaa !206
  %102 = fadd <13 x float> %101, %28
  %103 = getelementptr inbounds float, float* %4, i64 %98
  %104 = bitcast float* %103 to <13 x float>*
  store <13 x float> %102, <13 x float>* %104, align 4, !tbaa !209
  %105 = add nsw i64 %24, 143
  %106 = getelementptr inbounds float, float* %7, i64 %105
  %107 = bitcast float* %106 to <13 x float>*
  %108 = load <13 x float>, <13 x float>* %107, align 4, !tbaa !206
  %109 = fadd <13 x float> %108, %28
  %110 = getelementptr inbounds float, float* %4, i64 %105
  %111 = bitcast float* %110 to <13 x float>*
  store <13 x float> %109, <13 x float>* %111, align 4, !tbaa !209
  %112 = add nsw i64 %24, 156
  %113 = getelementptr inbounds float, float* %7, i64 %112
  %114 = bitcast float* %113 to <13 x float>*
  %115 = load <13 x float>, <13 x float>* %114, align 4, !tbaa !206
  %116 = fadd <13 x float> %115, %28
  %117 = getelementptr inbounds float, float* %4, i64 %112
  %118 = bitcast float* %117 to <13 x float>*
  store <13 x float> %116, <13 x float>* %118, align 4, !tbaa !209
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for_end_ax0.ax1.fused, label %for_begin_ax2.preheader, !prof !45

for_end_ax0.ax1.fused:                            ; preds = %for_begin_ax2.preheader, %parallel_closure_entry
  ret i32 0
}

define dllexport i32 @tvmgen_default_fused_nn_bias_add_1(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 3
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end61, %assert_fail60, %assert_fail58, %assert_fail56, %assert_fail54, %assert_fail50, %assert_fail48, %assert_fail46, %assert_fail42, %assert_fail40, %assert_fail38, %assert_fail36, %assert_fail34, %assert_fail30, %assert_fail28, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail12, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail2, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail2 ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail12 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail28 ], [ -1, %assert_fail30 ], [ -1, %assert_fail34 ], [ -1, %assert_fail36 ], [ -1, %assert_fail38 ], [ -1, %assert_fail40 ], [ -1, %assert_fail42 ], [ -1, %assert_fail46 ], [ -1, %assert_fail48 ], [ -1, %assert_fail50 ], [ -1, %assert_fail54 ], [ -1, %assert_fail56 ], [ -1, %assert_fail58 ], [ -1, %assert_fail60 ], [ 0, %assert_end61 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.40, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %1**
  %arg063 = load %1*, %1** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !212
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %1**
  %arg164 = load %1*, %1** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !226
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %1**
  %arg265 = load %1*, %1** %15, align 8
  %16 = getelementptr inbounds i8, i8* %1, i64 8
  %17 = bitcast i8* %16 to i32*
  %arg2.code = load i32, i32* %17, align 4, !tbaa !228
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
  tail call void %28(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.41, i64 0, i64 0))
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
  tail call void %29(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.42, i64 0, i64 0))
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
  tail call void %30(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.43, i64 0, i64 0))
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  %31 = getelementptr inbounds %1, %1* %arg063, i64 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %assert_end11, label %assert_fail8, !prof !4

assert_fail8:                                     ; preds = %assert_end7
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %34(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.44, i64 0, i64 0))
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
  tail call void %46(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.4, i64 0, i64 0))
  br label %common.ret

assert_end13:                                     ; preds = %assert_end11
  %47 = load i64, i64* %arg0.shape, align 8, !tbaa !231
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %assert_end15, label %assert_fail14, !prof !4

assert_fail14:                                    ; preds = %assert_end13
  %50 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %50(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0))
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %51 = getelementptr inbounds i64, i64* %arg0.shape, i64 1
  %52 = load i64, i64* %51, align 8, !tbaa !245
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %53, 32
  br i1 %54, label %assert_end17, label %assert_fail16, !prof !4

assert_fail16:                                    ; preds = %assert_end15
  %55 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %55(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.45, i64 0, i64 0))
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !45

if_then:                                          ; preds = %assert_end17
  %56 = load i64, i64* %arg0.strides, align 8, !tbaa !247
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %57, 32
  %59 = getelementptr inbounds i64, i64* %arg0.strides, i64 1
  %60 = load i64, i64* %59, align 8, !tbaa !261
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
  tail call void %67(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.46, i64 0, i64 0))
  br label %common.ret

assert_fail20:                                    ; preds = %if_end
  %68 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %68(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  br label %common.ret

assert_end21:                                     ; preds = %if_end
  %69 = getelementptr inbounds %1, %1* %arg063, i64 0, i32 1, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %assert_end23, label %assert_fail22, !prof !4

assert_fail22:                                    ; preds = %assert_end21
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %72(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0))
  br label %common.ret

assert_end23:                                     ; preds = %assert_end21
  %73 = getelementptr inbounds %1, %1* %arg164, i64 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %assert_end27, label %assert_fail24, !prof !4

assert_fail24:                                    ; preds = %assert_end23
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %76(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.27, i64 0, i64 0))
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
  tail call void %88(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.13, i64 0, i64 0))
  br label %common.ret

assert_end29:                                     ; preds = %assert_end27
  %89 = load i64, i64* %arg1.shape, align 8, !tbaa !263
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 32
  br i1 %91, label %assert_end31, label %assert_fail30, !prof !4

assert_fail30:                                    ; preds = %assert_end29
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %92(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.47, i64 0, i64 0))
  br label %common.ret

assert_end31:                                     ; preds = %assert_end29
  %.not66 = icmp eq i64* %arg1.strides, null
  br i1 %.not66, label %if_end33, label %if_then32, !prof !45

if_then32:                                        ; preds = %assert_end31
  %93 = load i64, i64* %arg1.strides, align 8, !tbaa !277
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
  tail call void %99(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.29, i64 0, i64 0))
  br label %common.ret

assert_fail36:                                    ; preds = %if_end33
  %100 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %100(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.17, i64 0, i64 0))
  br label %common.ret

assert_end37:                                     ; preds = %if_end33
  %101 = getelementptr inbounds %1, %1* %arg164, i64 0, i32 1, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %assert_end39, label %assert_fail38, !prof !4

assert_fail38:                                    ; preds = %assert_end37
  %104 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %104(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.18, i64 0, i64 0))
  br label %common.ret

assert_end39:                                     ; preds = %assert_end37
  %105 = getelementptr inbounds %1, %1* %arg164, i64 0, i32 1, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %dev_id, %106
  br i1 %107, label %assert_end41, label %assert_fail40, !prof !4

assert_fail40:                                    ; preds = %assert_end39
  %108 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %108(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.19, i64 0, i64 0))
  br label %common.ret

assert_end41:                                     ; preds = %assert_end39
  %109 = getelementptr inbounds %1, %1* %arg265, i64 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %assert_end45, label %assert_fail42, !prof !4

assert_fail42:                                    ; preds = %assert_end41
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %112(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.48, i64 0, i64 0))
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
  tail call void %124(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.31, i64 0, i64 0))
  br label %common.ret

assert_end47:                                     ; preds = %assert_end45
  %125 = load i64, i64* %arg2.shape, align 8, !tbaa !291
  %126 = trunc i64 %125 to i32
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %assert_end49, label %assert_fail48, !prof !4

assert_fail48:                                    ; preds = %assert_end47
  %128 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %128(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.32, i64 0, i64 0))
  br label %common.ret

assert_end49:                                     ; preds = %assert_end47
  %129 = getelementptr inbounds i64, i64* %arg2.shape, i64 1
  %130 = load i64, i64* %129, align 8, !tbaa !305
  %131 = trunc i64 %130 to i32
  %132 = icmp eq i32 %131, 32
  br i1 %132, label %assert_end51, label %assert_fail50, !prof !4

assert_fail50:                                    ; preds = %assert_end49
  %133 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %133(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.49, i64 0, i64 0))
  br label %common.ret

assert_end51:                                     ; preds = %assert_end49
  %.not67 = icmp eq i64* %arg2.strides, null
  br i1 %.not67, label %if_end53, label %if_then52, !prof !45

if_then52:                                        ; preds = %assert_end51
  %134 = load i64, i64* %arg2.strides, align 8, !tbaa !307
  %135 = trunc i64 %134 to i32
  %136 = icmp eq i32 %135, 32
  %137 = getelementptr inbounds i64, i64* %arg2.strides, i64 1
  %138 = load i64, i64* %137, align 8, !tbaa !321
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
  tail call void %145(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.50, i64 0, i64 0))
  br label %common.ret

assert_fail56:                                    ; preds = %if_end53
  %146 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %146(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.37, i64 0, i64 0))
  br label %common.ret

assert_end57:                                     ; preds = %if_end53
  %147 = getelementptr inbounds %1, %1* %arg265, i64 0, i32 1, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %assert_end59, label %assert_fail58, !prof !4

assert_fail58:                                    ; preds = %assert_end57
  %150 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %150(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.38, i64 0, i64 0))
  br label %common.ret

assert_end59:                                     ; preds = %assert_end57
  %151 = getelementptr inbounds %1, %1* %arg265, i64 0, i32 1, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %dev_id, %152
  br i1 %153, label %assert_end61, label %assert_fail60, !prof !4

assert_fail60:                                    ; preds = %assert_end59
  %154 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %154(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.39, i64 0, i64 0))
  br label %common.ret

assert_end61:                                     ; preds = %assert_end59
  tail call fastcc void @tvmgen_default_fused_nn_bias_add_1_compute_(i8* %T_add, i8* %placeholder, i8* %placeholder62)
  br label %common.ret
}

; Function Attrs: nofree noinline norecurse nosync nounwind
define internal fastcc void @tvmgen_default_fused_nn_bias_add_1_compute_(i8* noalias nocapture writeonly align 128 %0, i8* noalias nocapture readonly align 128 %1, i8* noalias nocapture readonly align 128 %2) unnamed_addr #1 {
entry:
  %3 = bitcast i8* %2 to <16 x float>*
  %4 = load <16 x float>, <16 x float>* %3, align 128, !tbaa !323
  %5 = bitcast i8* %1 to <16 x float>*
  %6 = load <16 x float>, <16 x float>* %5, align 128, !tbaa !326
  %7 = fadd <16 x float> %4, %6
  %8 = bitcast i8* %0 to <16 x float>*
  store <16 x float> %7, <16 x float>* %8, align 128, !tbaa !329
  %9 = getelementptr inbounds i8, i8* %2, i64 64
  %10 = bitcast i8* %9 to <16 x float>*
  %11 = load <16 x float>, <16 x float>* %10, align 64, !tbaa !323
  %12 = getelementptr inbounds i8, i8* %1, i64 64
  %13 = bitcast i8* %12 to <16 x float>*
  %14 = load <16 x float>, <16 x float>* %13, align 64, !tbaa !326
  %15 = fadd <16 x float> %11, %14
  %16 = getelementptr inbounds i8, i8* %0, i64 64
  %17 = bitcast i8* %16 to <16 x float>*
  store <16 x float> %15, <16 x float>* %17, align 64, !tbaa !329
  ret void
}

define dllexport i32 @tvmgen_default_fused_nn_bias_add_2(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 3
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end61, %assert_fail60, %assert_fail58, %assert_fail56, %assert_fail54, %assert_fail50, %assert_fail48, %assert_fail46, %assert_fail42, %assert_fail40, %assert_fail38, %assert_fail36, %assert_fail34, %assert_fail30, %assert_fail28, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail12, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail2, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail2 ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail12 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail28 ], [ -1, %assert_fail30 ], [ -1, %assert_fail34 ], [ -1, %assert_fail36 ], [ -1, %assert_fail38 ], [ -1, %assert_fail40 ], [ -1, %assert_fail42 ], [ -1, %assert_fail46 ], [ -1, %assert_fail48 ], [ -1, %assert_fail50 ], [ -1, %assert_fail54 ], [ -1, %assert_fail56 ], [ -1, %assert_fail58 ], [ -1, %assert_fail60 ], [ 0, %assert_end61 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.51, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %1**
  %arg063 = load %1*, %1** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !332
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %1**
  %arg164 = load %1*, %1** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !346
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %1**
  %arg265 = load %1*, %1** %15, align 8
  %16 = getelementptr inbounds i8, i8* %1, i64 8
  %17 = bitcast i8* %16 to i32*
  %arg2.code = load i32, i32* %17, align 4, !tbaa !348
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
  tail call void %28(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.52, i64 0, i64 0))
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
  tail call void %29(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.53, i64 0, i64 0))
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
  tail call void %30(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.54, i64 0, i64 0))
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  %31 = getelementptr inbounds %1, %1* %arg063, i64 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %assert_end11, label %assert_fail8, !prof !4

assert_fail8:                                     ; preds = %assert_end7
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %34(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.44, i64 0, i64 0))
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
  tail call void %46(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.4, i64 0, i64 0))
  br label %common.ret

assert_end13:                                     ; preds = %assert_end11
  %47 = load i64, i64* %arg0.shape, align 8, !tbaa !351
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %assert_end15, label %assert_fail14, !prof !4

assert_fail14:                                    ; preds = %assert_end13
  %50 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %50(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0))
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %51 = getelementptr inbounds i64, i64* %arg0.shape, i64 1
  %52 = load i64, i64* %51, align 8, !tbaa !365
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %53, 10
  br i1 %54, label %assert_end17, label %assert_fail16, !prof !4

assert_fail16:                                    ; preds = %assert_end15
  %55 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %55(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.55, i64 0, i64 0))
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !45

if_then:                                          ; preds = %assert_end17
  %56 = load i64, i64* %arg0.strides, align 8, !tbaa !367
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %57, 10
  %59 = getelementptr inbounds i64, i64* %arg0.strides, i64 1
  %60 = load i64, i64* %59, align 8, !tbaa !381
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
  tail call void %67(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.56, i64 0, i64 0))
  br label %common.ret

assert_fail20:                                    ; preds = %if_end
  %68 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %68(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  br label %common.ret

assert_end21:                                     ; preds = %if_end
  %69 = getelementptr inbounds %1, %1* %arg063, i64 0, i32 1, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %assert_end23, label %assert_fail22, !prof !4

assert_fail22:                                    ; preds = %assert_end21
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %72(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0))
  br label %common.ret

assert_end23:                                     ; preds = %assert_end21
  %73 = getelementptr inbounds %1, %1* %arg164, i64 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %assert_end27, label %assert_fail24, !prof !4

assert_fail24:                                    ; preds = %assert_end23
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %76(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.27, i64 0, i64 0))
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
  tail call void %88(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.13, i64 0, i64 0))
  br label %common.ret

assert_end29:                                     ; preds = %assert_end27
  %89 = load i64, i64* %arg1.shape, align 8, !tbaa !383
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 10
  br i1 %91, label %assert_end31, label %assert_fail30, !prof !4

assert_fail30:                                    ; preds = %assert_end29
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %92(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.57, i64 0, i64 0))
  br label %common.ret

assert_end31:                                     ; preds = %assert_end29
  %.not66 = icmp eq i64* %arg1.strides, null
  br i1 %.not66, label %if_end33, label %if_then32, !prof !45

if_then32:                                        ; preds = %assert_end31
  %93 = load i64, i64* %arg1.strides, align 8, !tbaa !397
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
  tail call void %99(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.29, i64 0, i64 0))
  br label %common.ret

assert_fail36:                                    ; preds = %if_end33
  %100 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %100(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.17, i64 0, i64 0))
  br label %common.ret

assert_end37:                                     ; preds = %if_end33
  %101 = getelementptr inbounds %1, %1* %arg164, i64 0, i32 1, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %assert_end39, label %assert_fail38, !prof !4

assert_fail38:                                    ; preds = %assert_end37
  %104 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %104(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.18, i64 0, i64 0))
  br label %common.ret

assert_end39:                                     ; preds = %assert_end37
  %105 = getelementptr inbounds %1, %1* %arg164, i64 0, i32 1, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %dev_id, %106
  br i1 %107, label %assert_end41, label %assert_fail40, !prof !4

assert_fail40:                                    ; preds = %assert_end39
  %108 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %108(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.19, i64 0, i64 0))
  br label %common.ret

assert_end41:                                     ; preds = %assert_end39
  %109 = getelementptr inbounds %1, %1* %arg265, i64 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 2
  br i1 %111, label %assert_end45, label %assert_fail42, !prof !4

assert_fail42:                                    ; preds = %assert_end41
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %112(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.48, i64 0, i64 0))
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
  tail call void %124(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.31, i64 0, i64 0))
  br label %common.ret

assert_end47:                                     ; preds = %assert_end45
  %125 = load i64, i64* %arg2.shape, align 8, !tbaa !411
  %126 = trunc i64 %125 to i32
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %assert_end49, label %assert_fail48, !prof !4

assert_fail48:                                    ; preds = %assert_end47
  %128 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %128(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.32, i64 0, i64 0))
  br label %common.ret

assert_end49:                                     ; preds = %assert_end47
  %129 = getelementptr inbounds i64, i64* %arg2.shape, i64 1
  %130 = load i64, i64* %129, align 8, !tbaa !425
  %131 = trunc i64 %130 to i32
  %132 = icmp eq i32 %131, 10
  br i1 %132, label %assert_end51, label %assert_fail50, !prof !4

assert_fail50:                                    ; preds = %assert_end49
  %133 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %133(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.58, i64 0, i64 0))
  br label %common.ret

assert_end51:                                     ; preds = %assert_end49
  %.not67 = icmp eq i64* %arg2.strides, null
  br i1 %.not67, label %if_end53, label %if_then52, !prof !45

if_then52:                                        ; preds = %assert_end51
  %134 = load i64, i64* %arg2.strides, align 8, !tbaa !427
  %135 = trunc i64 %134 to i32
  %136 = icmp eq i32 %135, 10
  %137 = getelementptr inbounds i64, i64* %arg2.strides, i64 1
  %138 = load i64, i64* %137, align 8, !tbaa !441
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
  tail call void %145(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.59, i64 0, i64 0))
  br label %common.ret

assert_fail56:                                    ; preds = %if_end53
  %146 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %146(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.37, i64 0, i64 0))
  br label %common.ret

assert_end57:                                     ; preds = %if_end53
  %147 = getelementptr inbounds %1, %1* %arg265, i64 0, i32 1, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %assert_end59, label %assert_fail58, !prof !4

assert_fail58:                                    ; preds = %assert_end57
  %150 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %150(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.38, i64 0, i64 0))
  br label %common.ret

assert_end59:                                     ; preds = %assert_end57
  %151 = getelementptr inbounds %1, %1* %arg265, i64 0, i32 1, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp eq i32 %dev_id, %152
  br i1 %153, label %assert_end61, label %assert_fail60, !prof !4

assert_fail60:                                    ; preds = %assert_end59
  %154 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %154(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.39, i64 0, i64 0))
  br label %common.ret

assert_end61:                                     ; preds = %assert_end59
  %155 = bitcast i8* %placeholder to <10 x float>*
  %placeholder.val = load <10 x float>, <10 x float>* %155, align 128, !tbaa !443
  %156 = bitcast i8* %placeholder62 to <10 x float>*
  %placeholder62.val = load <10 x float>, <10 x float>* %156, align 128, !tbaa !453
  tail call fastcc void @tvmgen_default_fused_nn_bias_add_2_compute_(i8* %T_add, <10 x float> %placeholder.val, <10 x float> %placeholder62.val)
  br label %common.ret
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn
define internal fastcc void @tvmgen_default_fused_nn_bias_add_2_compute_(i8* noalias nocapture writeonly align 128 %0, <10 x float> %.0.val, <10 x float> %.0.val1) unnamed_addr #4 {
entry:
  %1 = fadd <10 x float> %.0.val, %.0.val1
  %2 = bitcast i8* %0 to <10 x float>*
  store <10 x float> %1, <10 x float>* %2, align 128, !tbaa !463
  ret void
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
  tail call void %7(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.60, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %1**
  %arg077 = load %1*, %1** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !473
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %1**
  %arg178 = load %1*, %1** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !487
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %1**
  %arg279 = load %1*, %1** %15, align 8
  %16 = getelementptr inbounds i8, i8* %1, i64 8
  %17 = bitcast i8* %16 to i32*
  %arg2.code = load i32, i32* %17, align 4, !tbaa !489
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
  tail call void %28(i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.61, i64 0, i64 0))
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
  tail call void %29(i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.62, i64 0, i64 0))
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
  tail call void %30(i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.63, i64 0, i64 0))
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  %31 = getelementptr inbounds %1, %1* %arg077, i64 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %assert_end11, label %assert_fail8, !prof !4

assert_fail8:                                     ; preds = %assert_end7
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %34(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0))
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
  tail call void %46(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.4, i64 0, i64 0))
  br label %common.ret

assert_end13:                                     ; preds = %assert_end11
  %47 = load i64, i64* %arg0.shape, align 8, !tbaa !492
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %assert_end15, label %assert_fail14, !prof !4

assert_fail14:                                    ; preds = %assert_end13
  %50 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %50(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0))
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %51 = getelementptr inbounds i64, i64* %arg0.shape, i64 1
  %52 = load i64, i64* %51, align 8, !tbaa !506
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %assert_end17, label %assert_fail16, !prof !4

assert_fail16:                                    ; preds = %assert_end15
  %55 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %55(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.64, i64 0, i64 0))
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %56 = getelementptr inbounds i64, i64* %arg0.shape, i64 2
  %57 = load i64, i64* %56, align 8, !tbaa !508
  %58 = trunc i64 %57 to i32
  %59 = icmp eq i32 %58, 14
  br i1 %59, label %assert_end19, label %assert_fail18, !prof !4

assert_fail18:                                    ; preds = %assert_end17
  %60 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %60(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.65, i64 0, i64 0))
  br label %common.ret

assert_end19:                                     ; preds = %assert_end17
  %61 = getelementptr inbounds i64, i64* %arg0.shape, i64 3
  %62 = load i64, i64* %61, align 8, !tbaa !511
  %63 = trunc i64 %62 to i32
  %64 = icmp eq i32 %63, 14
  br i1 %64, label %assert_end21, label %assert_fail20, !prof !4

assert_fail20:                                    ; preds = %assert_end19
  %65 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %65(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.66, i64 0, i64 0))
  br label %common.ret

assert_end21:                                     ; preds = %assert_end19
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !45

if_then:                                          ; preds = %assert_end21
  %66 = bitcast i64* %arg0.strides to <4 x i64>*
  %67 = load <4 x i64>, <4 x i64>* %66, align 8, !tbaa !513
  %68 = trunc <4 x i64> %67 to <4 x i32>
  %69 = icmp ne <4 x i32> %68, <i32 196, i32 196, i32 14, i32 1>
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
  tail call void %75(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.67, i64 0, i64 0))
  br label %common.ret

assert_fail24:                                    ; preds = %if_end
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %76(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  br label %common.ret

assert_end25:                                     ; preds = %if_end
  %77 = getelementptr inbounds %1, %1* %arg077, i64 0, i32 1, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %assert_end27, label %assert_fail26, !prof !4

assert_fail26:                                    ; preds = %assert_end25
  %80 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %80(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0))
  br label %common.ret

assert_end27:                                     ; preds = %assert_end25
  %81 = getelementptr inbounds %1, %1* %arg178, i64 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 4
  br i1 %83, label %assert_end31, label %assert_fail28, !prof !4

assert_fail28:                                    ; preds = %assert_end27
  %84 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %84(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.68, i64 0, i64 0))
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
  tail call void %96(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.13, i64 0, i64 0))
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %97 = load i64, i64* %arg1.shape, align 8, !tbaa !525
  %98 = trunc i64 %97 to i32
  %99 = icmp eq i32 %98, 16
  br i1 %99, label %assert_end35, label %assert_fail34, !prof !4

assert_fail34:                                    ; preds = %assert_end33
  %100 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %100(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.28, i64 0, i64 0))
  br label %common.ret

assert_end35:                                     ; preds = %assert_end33
  %101 = getelementptr inbounds i64, i64* %arg1.shape, i64 1
  %102 = load i64, i64* %101, align 8, !tbaa !539
  %103 = trunc i64 %102 to i32
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %assert_end37, label %assert_fail36, !prof !4

assert_fail36:                                    ; preds = %assert_end35
  %105 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %105(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.69, i64 0, i64 0))
  br label %common.ret

assert_end37:                                     ; preds = %assert_end35
  %106 = getelementptr inbounds i64, i64* %arg1.shape, i64 2
  %107 = load i64, i64* %106, align 8, !tbaa !541
  %108 = trunc i64 %107 to i32
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %assert_end39, label %assert_fail38, !prof !4

assert_fail38:                                    ; preds = %assert_end37
  %110 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %110(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.70, i64 0, i64 0))
  br label %common.ret

assert_end39:                                     ; preds = %assert_end37
  %111 = getelementptr inbounds i64, i64* %arg1.shape, i64 3
  %112 = load i64, i64* %111, align 8, !tbaa !544
  %113 = trunc i64 %112 to i32
  %114 = icmp eq i32 %113, 2
  br i1 %114, label %assert_end41, label %assert_fail40, !prof !4

assert_fail40:                                    ; preds = %assert_end39
  %115 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %115(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.71, i64 0, i64 0))
  br label %common.ret

assert_end41:                                     ; preds = %assert_end39
  %.not80 = icmp eq i64* %arg1.strides, null
  br i1 %.not80, label %if_end43, label %if_then42, !prof !45

if_then42:                                        ; preds = %assert_end41
  %116 = bitcast i64* %arg1.strides to <4 x i64>*
  %117 = load <4 x i64>, <4 x i64>* %116, align 8, !tbaa !546
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
  tail call void %125(i8* getelementptr inbounds ([192 x i8], [192 x i8]* @.str.72, i64 0, i64 0))
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
  tail call void %138(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.30, i64 0, i64 0))
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
  tail call void %150(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.31, i64 0, i64 0))
  br label %common.ret

assert_end57:                                     ; preds = %assert_end55
  %151 = load i64, i64* %arg2.shape, align 8, !tbaa !558
  %152 = trunc i64 %151 to i32
  %153 = icmp eq i32 %152, 1
  br i1 %153, label %assert_end59, label %assert_fail58, !prof !4

assert_fail58:                                    ; preds = %assert_end57
  %154 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %154(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.32, i64 0, i64 0))
  br label %common.ret

assert_end59:                                     ; preds = %assert_end57
  %155 = getelementptr inbounds i64, i64* %arg2.shape, i64 1
  %156 = load i64, i64* %155, align 8, !tbaa !572
  %157 = trunc i64 %156 to i32
  %158 = icmp eq i32 %157, 16
  br i1 %158, label %assert_end61, label %assert_fail60, !prof !4

assert_fail60:                                    ; preds = %assert_end59
  %159 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %159(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.33, i64 0, i64 0))
  br label %common.ret

assert_end61:                                     ; preds = %assert_end59
  %160 = getelementptr inbounds i64, i64* %arg2.shape, i64 2
  %161 = load i64, i64* %160, align 8, !tbaa !574
  %162 = trunc i64 %161 to i32
  %163 = icmp eq i32 %162, 13
  br i1 %163, label %assert_end63, label %assert_fail62, !prof !4

assert_fail62:                                    ; preds = %assert_end61
  %164 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %164(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.34, i64 0, i64 0))
  br label %common.ret

assert_end63:                                     ; preds = %assert_end61
  %165 = getelementptr inbounds i64, i64* %arg2.shape, i64 3
  %166 = load i64, i64* %165, align 8, !tbaa !577
  %167 = trunc i64 %166 to i32
  %168 = icmp eq i32 %167, 13
  br i1 %168, label %assert_end65, label %assert_fail64, !prof !4

assert_fail64:                                    ; preds = %assert_end63
  %169 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %169(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.35, i64 0, i64 0))
  br label %common.ret

assert_end65:                                     ; preds = %assert_end63
  %.not81 = icmp eq i64* %arg2.strides, null
  br i1 %.not81, label %if_end67, label %if_then66, !prof !45

if_then66:                                        ; preds = %assert_end65
  %170 = bitcast i64* %arg2.strides to <4 x i64>*
  %171 = load <4 x i64>, <4 x i64>* %170, align 8, !tbaa !579
  %172 = trunc <4 x i64> %171 to <4 x i32>
  %173 = icmp ne <4 x i32> %172, <i32 2704, i32 169, i32 13, i32 1>
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
  tail call void %179(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.36, i64 0, i64 0))
  br label %common.ret

assert_fail70:                                    ; preds = %if_end67
  %180 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %180(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.37, i64 0, i64 0))
  br label %common.ret

assert_end71:                                     ; preds = %if_end67
  %181 = getelementptr inbounds %1, %1* %arg279, i64 0, i32 1, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %assert_end73, label %assert_fail72, !prof !4

assert_fail72:                                    ; preds = %assert_end71
  %184 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %184(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.38, i64 0, i64 0))
  br label %common.ret

assert_end73:                                     ; preds = %assert_end71
  %185 = getelementptr inbounds %1, %1* %arg279, i64 0, i32 1, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %dev_id, %186
  br i1 %187, label %assert_end75, label %assert_fail74, !prof !4

assert_fail74:                                    ; preds = %assert_end73
  %188 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %188(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.39, i64 0, i64 0))
  br label %common.ret

assert_end75:                                     ; preds = %assert_end73
  %189 = tail call fastcc i32 @tvmgen_default_fused_nn_conv2d_compute_(i8* %placeholder, i8* %placeholder76, i8* %output_unpack)
  br label %common.ret
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_nn_conv2d_compute_(i8* noalias align 128 %0, i8* noalias align 128 %1, i8* noalias align 128 %2) unnamed_addr #2 {
entry:
  %kernel_vec6 = alloca [16 x <4 x float>], align 16
  %data_vec7 = alloca [196 x float], align 16
  %3 = alloca %closure_loop_parallel_bs.c.fused.h.fused, align 8
  %data_vec7.sub = getelementptr inbounds [196 x float], [196 x float]* %data_vec7, i64 0, i64 0
  %kernel_vec6.sub = getelementptr inbounds [16 x <4 x float>], [16 x <4 x float>]* %kernel_vec6, i64 0, i64 0
  %4 = getelementptr inbounds %closure_loop_parallel_bs.c.fused.h.fused, %closure_loop_parallel_bs.c.fused.h.fused* %3, i64 0, i32 0
  store float* %data_vec7.sub, float** %4, align 8
  %5 = getelementptr inbounds %closure_loop_parallel_bs.c.fused.h.fused, %closure_loop_parallel_bs.c.fused.h.fused* %3, i64 0, i32 1
  store i8* %0, i8** %5, align 8
  %6 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !5
  %7 = bitcast %closure_loop_parallel_bs.c.fused.h.fused* %3 to i8*
  %8 = call i32 %6(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.73, i8* nonnull %7, i32 0)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %call_end, label %common.ret, !prof !4

common.ret:                                       ; preds = %call_end2, %call_end, %entry
  %common.ret.op = phi i32 [ %8, %entry ], [ %15, %call_end ], [ %23, %call_end2 ]
  ret i32 %common.ret.op

call_end:                                         ; preds = %entry
  %10 = alloca %closure_loop_parallel_occ.k_h.fused, align 8
  %11 = getelementptr inbounds %closure_loop_parallel_occ.k_h.fused, %closure_loop_parallel_occ.k_h.fused* %10, i64 0, i32 0
  store <4 x float>* %kernel_vec6.sub, <4 x float>** %11, align 8
  %12 = getelementptr inbounds %closure_loop_parallel_occ.k_h.fused, %closure_loop_parallel_occ.k_h.fused* %10, i64 0, i32 1
  store i8* %1, i8** %12, align 8
  %13 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !5
  %14 = bitcast %closure_loop_parallel_occ.k_h.fused* %10 to i8*
  %15 = call i32 %13(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.74, i8* nonnull %14, i32 0)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %call_end2, label %common.ret, !prof !4

call_end2:                                        ; preds = %call_end
  %17 = alloca %closure_loop_parallel_n.c.outer.fused.h.fused, align 8
  %18 = getelementptr inbounds %closure_loop_parallel_n.c.outer.fused.h.fused, %closure_loop_parallel_n.c.outer.fused.h.fused* %17, i64 0, i32 0
  store float* %data_vec7.sub, float** %18, align 8
  %19 = getelementptr inbounds %closure_loop_parallel_n.c.outer.fused.h.fused, %closure_loop_parallel_n.c.outer.fused.h.fused* %17, i64 0, i32 1
  store <4 x float>* %kernel_vec6.sub, <4 x float>** %19, align 8
  %20 = getelementptr inbounds %closure_loop_parallel_n.c.outer.fused.h.fused, %closure_loop_parallel_n.c.outer.fused.h.fused* %17, i64 0, i32 2
  store i8* %2, i8** %20, align 8
  %21 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !5
  %22 = bitcast %closure_loop_parallel_n.c.outer.fused.h.fused* %17 to i8*
  %23 = call i32 %21(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.75, i8* nonnull %22, i32 0)
  br label %common.ret
}

; Function Attrs: nofree norecurse nosync nounwind
define private i32 @__tvm_parallel_lambda.73(i32 %0, %0* nocapture readonly %1, i8* nocapture readonly %2) #3 {
parallel_closure_entry:
  %3 = bitcast i8* %2 to float**
  %4 = load float*, float** %3, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr inbounds %0, %0* %1, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 13
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 14
  %15 = select i1 %14, i32 %13, i32 14
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 14
  %18 = select i1 %17, i32 %16, i32 14
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin_w.preheader.preheader, label %for_end_bs.c.fused.h.fused, !prof !4

for_begin_w.preheader.preheader:                  ; preds = %parallel_closure_entry
  %20 = sext i32 %18 to i64
  %wide.trip.count = sext i32 %15 to i64
  br label %for_begin_w.preheader

for_begin_w.preheader:                            ; preds = %for_begin_w.preheader.preheader, %for_begin_w.preheader
  %indvars.iv = phi i64 [ %20, %for_begin_w.preheader.preheader ], [ %indvars.iv.next, %for_begin_w.preheader ]
  %21 = mul nsw i64 %indvars.iv, 14
  %22 = getelementptr inbounds float, float* %7, i64 %21
  %23 = getelementptr inbounds float, float* %4, i64 %21
  %24 = bitcast float* %22 to <4 x float>*
  %25 = load <4 x float>, <4 x float>* %24, align 4, !tbaa !591
  %26 = bitcast float* %23 to <4 x float>*
  store <4 x float> %25, <4 x float>* %26, align 4, !tbaa !594
  %27 = add nsw i64 %21, 4
  %28 = getelementptr inbounds float, float* %7, i64 %27
  %29 = getelementptr inbounds float, float* %4, i64 %27
  %30 = bitcast float* %28 to <4 x float>*
  %31 = load <4 x float>, <4 x float>* %30, align 4, !tbaa !591
  %32 = bitcast float* %29 to <4 x float>*
  store <4 x float> %31, <4 x float>* %32, align 4, !tbaa !594
  %33 = add nsw i64 %21, 8
  %34 = getelementptr inbounds float, float* %7, i64 %33
  %35 = getelementptr inbounds float, float* %4, i64 %33
  %36 = bitcast float* %34 to <4 x float>*
  %37 = load <4 x float>, <4 x float>* %36, align 4, !tbaa !591
  %38 = bitcast float* %35 to <4 x float>*
  store <4 x float> %37, <4 x float>* %38, align 4, !tbaa !594
  %39 = add nsw i64 %21, 12
  %40 = getelementptr inbounds float, float* %7, i64 %39
  %41 = load float, float* %40, align 4, !tbaa !591
  %42 = getelementptr inbounds float, float* %4, i64 %39
  store float %41, float* %42, align 4, !tbaa !594
  %43 = add nsw i64 %21, 13
  %44 = getelementptr inbounds float, float* %7, i64 %43
  %45 = load float, float* %44, align 4, !tbaa !591
  %46 = getelementptr inbounds float, float* %4, i64 %43
  store float %45, float* %46, align 4, !tbaa !594
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for_end_bs.c.fused.h.fused, label %for_begin_w.preheader, !prof !45

for_end_bs.c.fused.h.fused:                       ; preds = %for_begin_w.preheader, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind
define private i32 @__tvm_parallel_lambda.74(i32 %0, %0* nocapture readonly %1, i8* nocapture readonly %2) #3 {
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
  %32 = load float, float* %31, align 4, !tbaa !597
  %33 = insertelement <4 x float> undef, float %32, i64 0
  %34 = getelementptr inbounds float, float* %7, i64 %28
  %35 = load float, float* %34, align 4, !tbaa !597
  %36 = insertelement <4 x float> %33, float %35, i64 1
  %37 = getelementptr inbounds float, float* %7, i64 %29
  %38 = load float, float* %37, align 4, !tbaa !597
  %39 = insertelement <4 x float> %36, float %38, i64 2
  %40 = getelementptr inbounds float, float* %7, i64 %30
  %41 = load float, float* %40, align 4, !tbaa !597
  %42 = insertelement <4 x float> %39, float %41, i64 3
  %43 = getelementptr inbounds float, float* %4, i64 %27
  %44 = bitcast float* %43 to <4 x float>*
  store <4 x float> %42, <4 x float>* %44, align 16, !tbaa !600
  %45 = or i64 %27, 4
  %46 = or i64 %26, 1
  %47 = or i64 %26, 5
  %48 = or i64 %26, 9
  %49 = or i64 %26, 13
  %50 = getelementptr inbounds float, float* %7, i64 %46
  %51 = load float, float* %50, align 4, !tbaa !597
  %52 = insertelement <4 x float> undef, float %51, i64 0
  %53 = getelementptr inbounds float, float* %7, i64 %47
  %54 = load float, float* %53, align 4, !tbaa !597
  %55 = insertelement <4 x float> %52, float %54, i64 1
  %56 = getelementptr inbounds float, float* %7, i64 %48
  %57 = load float, float* %56, align 4, !tbaa !597
  %58 = insertelement <4 x float> %55, float %57, i64 2
  %59 = getelementptr inbounds float, float* %7, i64 %49
  %60 = load float, float* %59, align 4, !tbaa !597
  %61 = insertelement <4 x float> %58, float %60, i64 3
  %62 = getelementptr inbounds float, float* %4, i64 %45
  %63 = bitcast float* %62 to <4 x float>*
  store <4 x float> %61, <4 x float>* %63, align 16, !tbaa !600
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for_end_occ.k_h.fused, label %for_begin_k_w.preheader, !prof !45

for_end_occ.k_h.fused:                            ; preds = %for_begin_k_w.preheader, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: nofree nosync nounwind
define private i32 @__tvm_parallel_lambda.75(i32 %0, %0* nocapture readonly %1, i8* nocapture readonly %2) #5 {
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
  %13 = add nsw i32 %12, 51
  %14 = sdiv i32 %13, %12
  %15 = add nsw i32 %0, 1
  %16 = mul nsw i32 %14, %15
  %17 = icmp slt i32 %16, 52
  %18 = select i1 %17, i32 %16, i32 52
  %19 = mul nsw i32 %14, %0
  %20 = icmp slt i32 %19, 52
  %21 = select i1 %20, i32 %19, i32 52
  %22 = icmp slt i32 %21, %18
  br i1 %22, label %for_body_n.c.outer.fused.h.fused, label %for_end_n.c.outer.fused.h.fused, !prof !4

for_body_n.c.outer.fused.h.fused:                 ; preds = %parallel_closure_entry, %for_body_n.c.outer.fused.h.fused
  %n.c.outer.fused.h.fused66 = phi i32 [ %396, %for_body_n.c.outer.fused.h.fused ], [ %21, %parallel_closure_entry ]
  %23 = srem i32 %n.c.outer.fused.h.fused66, 13
  %24 = sdiv i32 %n.c.outer.fused.h.fused66, 13
  %25 = shl nsw i32 %24, 4
  %26 = sext i32 %25 to i64
  %27 = mul nsw i32 %23, 14
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %4, i64 %28
  %30 = load float, float* %29, align 4, !tbaa !594
  %31 = insertelement <4 x float> undef, float %30, i64 0
  %32 = shufflevector <4 x float> %31, <4 x float> undef, <4 x i32> zeroinitializer
  %33 = getelementptr inbounds float, float* %7, i64 %26
  %34 = bitcast float* %33 to <4 x float>*
  %35 = load <4 x float>, <4 x float>* %34, align 16, !tbaa !600
  %36 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %32, <4 x float> %35, <4 x float> zeroinitializer)
  %37 = or i64 %28, 1
  %38 = getelementptr inbounds float, float* %4, i64 %37
  %39 = load float, float* %38, align 4, !tbaa !594
  %40 = insertelement <4 x float> undef, float %39, i64 0
  %41 = shufflevector <4 x float> %40, <4 x float> undef, <4 x i32> zeroinitializer
  %42 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %41, <4 x float> %35, <4 x float> zeroinitializer)
  %43 = add nsw i64 %28, 2
  %44 = getelementptr inbounds float, float* %4, i64 %43
  %45 = load float, float* %44, align 4, !tbaa !594
  %46 = insertelement <4 x float> undef, float %45, i64 0
  %47 = shufflevector <4 x float> %46, <4 x float> undef, <4 x i32> zeroinitializer
  %48 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %47, <4 x float> %35, <4 x float> zeroinitializer)
  %49 = add nsw i64 %28, 3
  %50 = getelementptr inbounds float, float* %4, i64 %49
  %51 = load float, float* %50, align 4, !tbaa !594
  %52 = insertelement <4 x float> undef, float %51, i64 0
  %53 = shufflevector <4 x float> %52, <4 x float> undef, <4 x i32> zeroinitializer
  %54 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %53, <4 x float> %35, <4 x float> zeroinitializer)
  %55 = add nsw i64 %28, 4
  %56 = getelementptr inbounds float, float* %4, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !594
  %58 = insertelement <4 x float> undef, float %57, i64 0
  %59 = shufflevector <4 x float> %58, <4 x float> undef, <4 x i32> zeroinitializer
  %60 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %59, <4 x float> %35, <4 x float> zeroinitializer)
  %61 = add nsw i64 %28, 5
  %62 = getelementptr inbounds float, float* %4, i64 %61
  %63 = load float, float* %62, align 4, !tbaa !594
  %64 = insertelement <4 x float> undef, float %63, i64 0
  %65 = shufflevector <4 x float> %64, <4 x float> undef, <4 x i32> zeroinitializer
  %66 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %65, <4 x float> %35, <4 x float> zeroinitializer)
  %67 = add nsw i64 %28, 6
  %68 = getelementptr inbounds float, float* %4, i64 %67
  %69 = load float, float* %68, align 4, !tbaa !594
  %70 = insertelement <4 x float> undef, float %69, i64 0
  %71 = shufflevector <4 x float> %70, <4 x float> undef, <4 x i32> zeroinitializer
  %72 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %71, <4 x float> %35, <4 x float> zeroinitializer)
  %73 = add nsw i64 %28, 7
  %74 = getelementptr inbounds float, float* %4, i64 %73
  %75 = load float, float* %74, align 4, !tbaa !594
  %76 = insertelement <4 x float> undef, float %75, i64 0
  %77 = shufflevector <4 x float> %76, <4 x float> undef, <4 x i32> zeroinitializer
  %78 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %77, <4 x float> %35, <4 x float> zeroinitializer)
  %79 = add nsw i64 %28, 8
  %80 = getelementptr inbounds float, float* %4, i64 %79
  %81 = load float, float* %80, align 4, !tbaa !594
  %82 = insertelement <4 x float> undef, float %81, i64 0
  %83 = shufflevector <4 x float> %82, <4 x float> undef, <4 x i32> zeroinitializer
  %84 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %83, <4 x float> %35, <4 x float> zeroinitializer)
  %85 = add nsw i64 %28, 9
  %86 = getelementptr inbounds float, float* %4, i64 %85
  %87 = load float, float* %86, align 4, !tbaa !594
  %88 = insertelement <4 x float> undef, float %87, i64 0
  %89 = shufflevector <4 x float> %88, <4 x float> undef, <4 x i32> zeroinitializer
  %90 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %89, <4 x float> %35, <4 x float> zeroinitializer)
  %91 = add nsw i64 %28, 10
  %92 = getelementptr inbounds float, float* %4, i64 %91
  %93 = load float, float* %92, align 4, !tbaa !594
  %94 = insertelement <4 x float> undef, float %93, i64 0
  %95 = shufflevector <4 x float> %94, <4 x float> undef, <4 x i32> zeroinitializer
  %96 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %95, <4 x float> %35, <4 x float> zeroinitializer)
  %97 = add nsw i64 %28, 11
  %98 = getelementptr inbounds float, float* %4, i64 %97
  %99 = load float, float* %98, align 4, !tbaa !594
  %100 = insertelement <4 x float> undef, float %99, i64 0
  %101 = shufflevector <4 x float> %100, <4 x float> undef, <4 x i32> zeroinitializer
  %102 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %101, <4 x float> %35, <4 x float> zeroinitializer)
  %103 = add nsw i64 %28, 12
  %104 = getelementptr inbounds float, float* %4, i64 %103
  %105 = load float, float* %104, align 4, !tbaa !594
  %106 = insertelement <4 x float> undef, float %105, i64 0
  %107 = shufflevector <4 x float> %106, <4 x float> undef, <4 x i32> zeroinitializer
  %108 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %107, <4 x float> %35, <4 x float> zeroinitializer)
  %109 = or i64 %26, 4
  %110 = getelementptr inbounds float, float* %7, i64 %109
  %111 = bitcast float* %110 to <4 x float>*
  %112 = load <4 x float>, <4 x float>* %111, align 16, !tbaa !600
  %113 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %41, <4 x float> %112, <4 x float> %36)
  %114 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %47, <4 x float> %112, <4 x float> %42)
  %115 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %53, <4 x float> %112, <4 x float> %48)
  %116 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %59, <4 x float> %112, <4 x float> %54)
  %117 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %65, <4 x float> %112, <4 x float> %60)
  %118 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %71, <4 x float> %112, <4 x float> %66)
  %119 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %77, <4 x float> %112, <4 x float> %72)
  %120 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %83, <4 x float> %112, <4 x float> %78)
  %121 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %89, <4 x float> %112, <4 x float> %84)
  %122 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %95, <4 x float> %112, <4 x float> %90)
  %123 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %101, <4 x float> %112, <4 x float> %96)
  %124 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %107, <4 x float> %112, <4 x float> %102)
  %125 = add nsw i64 %28, 13
  %126 = getelementptr inbounds float, float* %4, i64 %125
  %127 = load float, float* %126, align 4, !tbaa !594
  %128 = insertelement <4 x float> undef, float %127, i64 0
  %129 = shufflevector <4 x float> %128, <4 x float> undef, <4 x i32> zeroinitializer
  %130 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %129, <4 x float> %112, <4 x float> %108)
  %131 = mul nsw i32 %23, 14
  %132 = add nsw i32 %131, 14
  %133 = or i64 %26, 8
  %134 = sext i32 %132 to i64
  %135 = getelementptr inbounds float, float* %4, i64 %134
  %136 = load float, float* %135, align 4, !tbaa !594
  %137 = insertelement <4 x float> undef, float %136, i64 0
  %138 = shufflevector <4 x float> %137, <4 x float> undef, <4 x i32> zeroinitializer
  %139 = getelementptr inbounds float, float* %7, i64 %133
  %140 = bitcast float* %139 to <4 x float>*
  %141 = load <4 x float>, <4 x float>* %140, align 16, !tbaa !600
  %142 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %138, <4 x float> %141, <4 x float> %113)
  %143 = or i64 %134, 1
  %144 = getelementptr inbounds float, float* %4, i64 %143
  %145 = load float, float* %144, align 4, !tbaa !594
  %146 = insertelement <4 x float> undef, float %145, i64 0
  %147 = shufflevector <4 x float> %146, <4 x float> undef, <4 x i32> zeroinitializer
  %148 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %147, <4 x float> %141, <4 x float> %114)
  %149 = add nsw i64 %134, 2
  %150 = getelementptr inbounds float, float* %4, i64 %149
  %151 = load float, float* %150, align 4, !tbaa !594
  %152 = insertelement <4 x float> undef, float %151, i64 0
  %153 = shufflevector <4 x float> %152, <4 x float> undef, <4 x i32> zeroinitializer
  %154 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %153, <4 x float> %141, <4 x float> %115)
  %155 = add nsw i64 %134, 3
  %156 = getelementptr inbounds float, float* %4, i64 %155
  %157 = load float, float* %156, align 4, !tbaa !594
  %158 = insertelement <4 x float> undef, float %157, i64 0
  %159 = shufflevector <4 x float> %158, <4 x float> undef, <4 x i32> zeroinitializer
  %160 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %159, <4 x float> %141, <4 x float> %116)
  %161 = add nsw i64 %134, 4
  %162 = getelementptr inbounds float, float* %4, i64 %161
  %163 = load float, float* %162, align 4, !tbaa !594
  %164 = insertelement <4 x float> undef, float %163, i64 0
  %165 = shufflevector <4 x float> %164, <4 x float> undef, <4 x i32> zeroinitializer
  %166 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %165, <4 x float> %141, <4 x float> %117)
  %167 = add nsw i64 %134, 5
  %168 = getelementptr inbounds float, float* %4, i64 %167
  %169 = load float, float* %168, align 4, !tbaa !594
  %170 = insertelement <4 x float> undef, float %169, i64 0
  %171 = shufflevector <4 x float> %170, <4 x float> undef, <4 x i32> zeroinitializer
  %172 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %171, <4 x float> %141, <4 x float> %118)
  %173 = add nsw i64 %134, 6
  %174 = getelementptr inbounds float, float* %4, i64 %173
  %175 = load float, float* %174, align 4, !tbaa !594
  %176 = insertelement <4 x float> undef, float %175, i64 0
  %177 = shufflevector <4 x float> %176, <4 x float> undef, <4 x i32> zeroinitializer
  %178 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %177, <4 x float> %141, <4 x float> %119)
  %179 = add nsw i64 %134, 7
  %180 = getelementptr inbounds float, float* %4, i64 %179
  %181 = load float, float* %180, align 4, !tbaa !594
  %182 = insertelement <4 x float> undef, float %181, i64 0
  %183 = shufflevector <4 x float> %182, <4 x float> undef, <4 x i32> zeroinitializer
  %184 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %183, <4 x float> %141, <4 x float> %120)
  %185 = add nsw i64 %134, 8
  %186 = getelementptr inbounds float, float* %4, i64 %185
  %187 = load float, float* %186, align 4, !tbaa !594
  %188 = insertelement <4 x float> undef, float %187, i64 0
  %189 = shufflevector <4 x float> %188, <4 x float> undef, <4 x i32> zeroinitializer
  %190 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %189, <4 x float> %141, <4 x float> %121)
  %191 = add nsw i64 %134, 9
  %192 = getelementptr inbounds float, float* %4, i64 %191
  %193 = load float, float* %192, align 4, !tbaa !594
  %194 = insertelement <4 x float> undef, float %193, i64 0
  %195 = shufflevector <4 x float> %194, <4 x float> undef, <4 x i32> zeroinitializer
  %196 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %195, <4 x float> %141, <4 x float> %122)
  %197 = add nsw i64 %134, 10
  %198 = getelementptr inbounds float, float* %4, i64 %197
  %199 = load float, float* %198, align 4, !tbaa !594
  %200 = insertelement <4 x float> undef, float %199, i64 0
  %201 = shufflevector <4 x float> %200, <4 x float> undef, <4 x i32> zeroinitializer
  %202 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %201, <4 x float> %141, <4 x float> %123)
  %203 = add nsw i64 %134, 11
  %204 = getelementptr inbounds float, float* %4, i64 %203
  %205 = load float, float* %204, align 4, !tbaa !594
  %206 = insertelement <4 x float> undef, float %205, i64 0
  %207 = shufflevector <4 x float> %206, <4 x float> undef, <4 x i32> zeroinitializer
  %208 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %207, <4 x float> %141, <4 x float> %124)
  %209 = add nsw i64 %134, 12
  %210 = getelementptr inbounds float, float* %4, i64 %209
  %211 = load float, float* %210, align 4, !tbaa !594
  %212 = insertelement <4 x float> undef, float %211, i64 0
  %213 = shufflevector <4 x float> %212, <4 x float> undef, <4 x i32> zeroinitializer
  %214 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %213, <4 x float> %141, <4 x float> %130)
  %215 = or i64 %26, 12
  %216 = getelementptr inbounds float, float* %7, i64 %215
  %217 = bitcast float* %216 to <4 x float>*
  %218 = load <4 x float>, <4 x float>* %217, align 16, !tbaa !600
  %219 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %147, <4 x float> %218, <4 x float> %142)
  %220 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %153, <4 x float> %218, <4 x float> %148)
  %221 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %159, <4 x float> %218, <4 x float> %154)
  %222 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %165, <4 x float> %218, <4 x float> %160)
  %223 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %171, <4 x float> %218, <4 x float> %166)
  %224 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %177, <4 x float> %218, <4 x float> %172)
  %225 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %183, <4 x float> %218, <4 x float> %178)
  %226 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %189, <4 x float> %218, <4 x float> %184)
  %227 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %195, <4 x float> %218, <4 x float> %190)
  %228 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %201, <4 x float> %218, <4 x float> %196)
  %229 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %207, <4 x float> %218, <4 x float> %202)
  %230 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %213, <4 x float> %218, <4 x float> %208)
  %231 = add nsw i64 %134, 13
  %232 = getelementptr inbounds float, float* %4, i64 %231
  %233 = load float, float* %232, align 4, !tbaa !594
  %234 = insertelement <4 x float> undef, float %233, i64 0
  %235 = shufflevector <4 x float> %234, <4 x float> undef, <4 x i32> zeroinitializer
  %236 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %235, <4 x float> %218, <4 x float> %214)
  %237 = mul nsw i32 %23, 13
  %238 = mul nsw i32 %24, 676
  %239 = add nsw i32 %238, %237
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %240, 169
  %242 = add nsw i64 %240, 338
  %243 = add nsw i64 %240, 507
  %244 = getelementptr inbounds float, float* %10, i64 %240
  %245 = extractelement <4 x float> %219, i64 0
  store float %245, float* %244, align 4, !tbaa !603
  %246 = getelementptr inbounds float, float* %10, i64 %241
  %247 = extractelement <4 x float> %219, i64 1
  store float %247, float* %246, align 4, !tbaa !603
  %248 = getelementptr inbounds float, float* %10, i64 %242
  %249 = extractelement <4 x float> %219, i64 2
  store float %249, float* %248, align 4, !tbaa !603
  %250 = getelementptr inbounds float, float* %10, i64 %243
  %251 = extractelement <4 x float> %219, i64 3
  store float %251, float* %250, align 4, !tbaa !603
  %252 = add nsw i64 %240, 1
  %253 = add nsw i64 %240, 170
  %254 = add nsw i64 %240, 339
  %255 = add nsw i64 %240, 508
  %256 = getelementptr inbounds float, float* %10, i64 %252
  %257 = extractelement <4 x float> %220, i64 0
  store float %257, float* %256, align 4, !tbaa !603
  %258 = getelementptr inbounds float, float* %10, i64 %253
  %259 = extractelement <4 x float> %220, i64 1
  store float %259, float* %258, align 4, !tbaa !603
  %260 = getelementptr inbounds float, float* %10, i64 %254
  %261 = extractelement <4 x float> %220, i64 2
  store float %261, float* %260, align 4, !tbaa !603
  %262 = getelementptr inbounds float, float* %10, i64 %255
  %263 = extractelement <4 x float> %220, i64 3
  store float %263, float* %262, align 4, !tbaa !603
  %264 = add nsw i64 %240, 2
  %265 = add nsw i64 %240, 171
  %266 = add nsw i64 %240, 340
  %267 = add nsw i64 %240, 509
  %268 = getelementptr inbounds float, float* %10, i64 %264
  %269 = extractelement <4 x float> %221, i64 0
  store float %269, float* %268, align 4, !tbaa !603
  %270 = getelementptr inbounds float, float* %10, i64 %265
  %271 = extractelement <4 x float> %221, i64 1
  store float %271, float* %270, align 4, !tbaa !603
  %272 = getelementptr inbounds float, float* %10, i64 %266
  %273 = extractelement <4 x float> %221, i64 2
  store float %273, float* %272, align 4, !tbaa !603
  %274 = getelementptr inbounds float, float* %10, i64 %267
  %275 = extractelement <4 x float> %221, i64 3
  store float %275, float* %274, align 4, !tbaa !603
  %276 = add nsw i64 %240, 3
  %277 = add nsw i64 %240, 172
  %278 = add nsw i64 %240, 341
  %279 = add nsw i64 %240, 510
  %280 = getelementptr inbounds float, float* %10, i64 %276
  %281 = extractelement <4 x float> %222, i64 0
  store float %281, float* %280, align 4, !tbaa !603
  %282 = getelementptr inbounds float, float* %10, i64 %277
  %283 = extractelement <4 x float> %222, i64 1
  store float %283, float* %282, align 4, !tbaa !603
  %284 = getelementptr inbounds float, float* %10, i64 %278
  %285 = extractelement <4 x float> %222, i64 2
  store float %285, float* %284, align 4, !tbaa !603
  %286 = getelementptr inbounds float, float* %10, i64 %279
  %287 = extractelement <4 x float> %222, i64 3
  store float %287, float* %286, align 4, !tbaa !603
  %288 = add nsw i64 %240, 4
  %289 = add nsw i64 %240, 173
  %290 = add nsw i64 %240, 342
  %291 = add nsw i64 %240, 511
  %292 = getelementptr inbounds float, float* %10, i64 %288
  %293 = extractelement <4 x float> %223, i64 0
  store float %293, float* %292, align 4, !tbaa !603
  %294 = getelementptr inbounds float, float* %10, i64 %289
  %295 = extractelement <4 x float> %223, i64 1
  store float %295, float* %294, align 4, !tbaa !603
  %296 = getelementptr inbounds float, float* %10, i64 %290
  %297 = extractelement <4 x float> %223, i64 2
  store float %297, float* %296, align 4, !tbaa !603
  %298 = getelementptr inbounds float, float* %10, i64 %291
  %299 = extractelement <4 x float> %223, i64 3
  store float %299, float* %298, align 4, !tbaa !603
  %300 = add nsw i64 %240, 5
  %301 = add nsw i64 %240, 174
  %302 = add nsw i64 %240, 343
  %303 = add nsw i64 %240, 512
  %304 = getelementptr inbounds float, float* %10, i64 %300
  %305 = extractelement <4 x float> %224, i64 0
  store float %305, float* %304, align 4, !tbaa !603
  %306 = getelementptr inbounds float, float* %10, i64 %301
  %307 = extractelement <4 x float> %224, i64 1
  store float %307, float* %306, align 4, !tbaa !603
  %308 = getelementptr inbounds float, float* %10, i64 %302
  %309 = extractelement <4 x float> %224, i64 2
  store float %309, float* %308, align 4, !tbaa !603
  %310 = getelementptr inbounds float, float* %10, i64 %303
  %311 = extractelement <4 x float> %224, i64 3
  store float %311, float* %310, align 4, !tbaa !603
  %312 = add nsw i64 %240, 6
  %313 = add nsw i64 %240, 175
  %314 = add nsw i64 %240, 344
  %315 = add nsw i64 %240, 513
  %316 = getelementptr inbounds float, float* %10, i64 %312
  %317 = extractelement <4 x float> %225, i64 0
  store float %317, float* %316, align 4, !tbaa !603
  %318 = getelementptr inbounds float, float* %10, i64 %313
  %319 = extractelement <4 x float> %225, i64 1
  store float %319, float* %318, align 4, !tbaa !603
  %320 = getelementptr inbounds float, float* %10, i64 %314
  %321 = extractelement <4 x float> %225, i64 2
  store float %321, float* %320, align 4, !tbaa !603
  %322 = getelementptr inbounds float, float* %10, i64 %315
  %323 = extractelement <4 x float> %225, i64 3
  store float %323, float* %322, align 4, !tbaa !603
  %324 = add nsw i64 %240, 7
  %325 = add nsw i64 %240, 176
  %326 = add nsw i64 %240, 345
  %327 = add nsw i64 %240, 514
  %328 = getelementptr inbounds float, float* %10, i64 %324
  %329 = extractelement <4 x float> %226, i64 0
  store float %329, float* %328, align 4, !tbaa !603
  %330 = getelementptr inbounds float, float* %10, i64 %325
  %331 = extractelement <4 x float> %226, i64 1
  store float %331, float* %330, align 4, !tbaa !603
  %332 = getelementptr inbounds float, float* %10, i64 %326
  %333 = extractelement <4 x float> %226, i64 2
  store float %333, float* %332, align 4, !tbaa !603
  %334 = getelementptr inbounds float, float* %10, i64 %327
  %335 = extractelement <4 x float> %226, i64 3
  store float %335, float* %334, align 4, !tbaa !603
  %336 = add nsw i64 %240, 8
  %337 = add nsw i64 %240, 177
  %338 = add nsw i64 %240, 346
  %339 = add nsw i64 %240, 515
  %340 = getelementptr inbounds float, float* %10, i64 %336
  %341 = extractelement <4 x float> %227, i64 0
  store float %341, float* %340, align 4, !tbaa !603
  %342 = getelementptr inbounds float, float* %10, i64 %337
  %343 = extractelement <4 x float> %227, i64 1
  store float %343, float* %342, align 4, !tbaa !603
  %344 = getelementptr inbounds float, float* %10, i64 %338
  %345 = extractelement <4 x float> %227, i64 2
  store float %345, float* %344, align 4, !tbaa !603
  %346 = getelementptr inbounds float, float* %10, i64 %339
  %347 = extractelement <4 x float> %227, i64 3
  store float %347, float* %346, align 4, !tbaa !603
  %348 = add nsw i64 %240, 9
  %349 = add nsw i64 %240, 178
  %350 = add nsw i64 %240, 347
  %351 = add nsw i64 %240, 516
  %352 = getelementptr inbounds float, float* %10, i64 %348
  %353 = extractelement <4 x float> %228, i64 0
  store float %353, float* %352, align 4, !tbaa !603
  %354 = getelementptr inbounds float, float* %10, i64 %349
  %355 = extractelement <4 x float> %228, i64 1
  store float %355, float* %354, align 4, !tbaa !603
  %356 = getelementptr inbounds float, float* %10, i64 %350
  %357 = extractelement <4 x float> %228, i64 2
  store float %357, float* %356, align 4, !tbaa !603
  %358 = getelementptr inbounds float, float* %10, i64 %351
  %359 = extractelement <4 x float> %228, i64 3
  store float %359, float* %358, align 4, !tbaa !603
  %360 = add nsw i64 %240, 10
  %361 = add nsw i64 %240, 179
  %362 = add nsw i64 %240, 348
  %363 = add nsw i64 %240, 517
  %364 = getelementptr inbounds float, float* %10, i64 %360
  %365 = extractelement <4 x float> %229, i64 0
  store float %365, float* %364, align 4, !tbaa !603
  %366 = getelementptr inbounds float, float* %10, i64 %361
  %367 = extractelement <4 x float> %229, i64 1
  store float %367, float* %366, align 4, !tbaa !603
  %368 = getelementptr inbounds float, float* %10, i64 %362
  %369 = extractelement <4 x float> %229, i64 2
  store float %369, float* %368, align 4, !tbaa !603
  %370 = getelementptr inbounds float, float* %10, i64 %363
  %371 = extractelement <4 x float> %229, i64 3
  store float %371, float* %370, align 4, !tbaa !603
  %372 = add nsw i64 %240, 11
  %373 = add nsw i64 %240, 180
  %374 = add nsw i64 %240, 349
  %375 = add nsw i64 %240, 518
  %376 = getelementptr inbounds float, float* %10, i64 %372
  %377 = extractelement <4 x float> %230, i64 0
  store float %377, float* %376, align 4, !tbaa !603
  %378 = getelementptr inbounds float, float* %10, i64 %373
  %379 = extractelement <4 x float> %230, i64 1
  store float %379, float* %378, align 4, !tbaa !603
  %380 = getelementptr inbounds float, float* %10, i64 %374
  %381 = extractelement <4 x float> %230, i64 2
  store float %381, float* %380, align 4, !tbaa !603
  %382 = getelementptr inbounds float, float* %10, i64 %375
  %383 = extractelement <4 x float> %230, i64 3
  store float %383, float* %382, align 4, !tbaa !603
  %384 = add nsw i64 %240, 12
  %385 = add nsw i64 %240, 181
  %386 = add nsw i64 %240, 350
  %387 = add nsw i64 %240, 519
  %388 = getelementptr inbounds float, float* %10, i64 %384
  %389 = extractelement <4 x float> %236, i64 0
  store float %389, float* %388, align 4, !tbaa !603
  %390 = getelementptr inbounds float, float* %10, i64 %385
  %391 = extractelement <4 x float> %236, i64 1
  store float %391, float* %390, align 4, !tbaa !603
  %392 = getelementptr inbounds float, float* %10, i64 %386
  %393 = extractelement <4 x float> %236, i64 2
  store float %393, float* %392, align 4, !tbaa !603
  %394 = getelementptr inbounds float, float* %10, i64 %387
  %395 = extractelement <4 x float> %236, i64 3
  store float %395, float* %394, align 4, !tbaa !603
  %396 = add nsw i32 %n.c.outer.fused.h.fused66, 1
  %exitcond.not = icmp eq i32 %396, %18
  br i1 %exitcond.not, label %for_end_n.c.outer.fused.h.fused, label %for_body_n.c.outer.fused.h.fused, !prof !45

for_end_n.c.outer.fused.h.fused:                  ; preds = %for_body_n.c.outer.fused.h.fused, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

define dllexport i32 @tvmgen_default_fused_nn_dense(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 3
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end63, %assert_fail62, %assert_fail60, %assert_fail58, %assert_fail56, %assert_fail52, %assert_fail50, %assert_fail48, %assert_fail44, %assert_fail42, %assert_fail40, %assert_fail38, %assert_fail36, %assert_fail32, %assert_fail30, %assert_fail28, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail12, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail2, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail2 ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail12 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail28 ], [ -1, %assert_fail30 ], [ -1, %assert_fail32 ], [ -1, %assert_fail36 ], [ -1, %assert_fail38 ], [ -1, %assert_fail40 ], [ -1, %assert_fail42 ], [ -1, %assert_fail44 ], [ -1, %assert_fail48 ], [ -1, %assert_fail50 ], [ -1, %assert_fail52 ], [ -1, %assert_fail56 ], [ -1, %assert_fail58 ], [ -1, %assert_fail60 ], [ -1, %assert_fail62 ], [ %165, %assert_end63 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.76, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %1**
  %arg065 = load %1*, %1** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !606
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %1**
  %arg166 = load %1*, %1** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !620
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %1**
  %arg267 = load %1*, %1** %15, align 8
  %16 = getelementptr inbounds i8, i8* %1, i64 8
  %17 = bitcast i8* %16 to i32*
  %arg2.code = load i32, i32* %17, align 4, !tbaa !622
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
  tail call void %28(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.77, i64 0, i64 0))
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
  tail call void %29(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.78, i64 0, i64 0))
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
  tail call void %30(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.79, i64 0, i64 0))
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  %31 = getelementptr inbounds %1, %1* %arg065, i64 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %assert_end11, label %assert_fail8, !prof !4

assert_fail8:                                     ; preds = %assert_end7
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %34(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.44, i64 0, i64 0))
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
  tail call void %46(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.4, i64 0, i64 0))
  br label %common.ret

assert_end13:                                     ; preds = %assert_end11
  %47 = load i64, i64* %arg0.shape, align 8, !tbaa !625
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %assert_end15, label %assert_fail14, !prof !4

assert_fail14:                                    ; preds = %assert_end13
  %50 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %50(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0))
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %51 = getelementptr inbounds i64, i64* %arg0.shape, i64 1
  %52 = load i64, i64* %51, align 8, !tbaa !639
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %53, 2704
  br i1 %54, label %assert_end17, label %assert_fail16, !prof !4

assert_fail16:                                    ; preds = %assert_end15
  %55 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %55(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.80, i64 0, i64 0))
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !45

if_then:                                          ; preds = %assert_end17
  %56 = load i64, i64* %arg0.strides, align 8, !tbaa !641
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %57, 2704
  %59 = getelementptr inbounds i64, i64* %arg0.strides, i64 1
  %60 = load i64, i64* %59, align 8, !tbaa !655
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
  tail call void %67(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.81, i64 0, i64 0))
  br label %common.ret

assert_fail20:                                    ; preds = %if_end
  %68 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %68(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  br label %common.ret

assert_end21:                                     ; preds = %if_end
  %69 = getelementptr inbounds %1, %1* %arg065, i64 0, i32 1, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %assert_end23, label %assert_fail22, !prof !4

assert_fail22:                                    ; preds = %assert_end21
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %72(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0))
  br label %common.ret

assert_end23:                                     ; preds = %assert_end21
  %73 = getelementptr inbounds %1, %1* %arg166, i64 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %assert_end27, label %assert_fail24, !prof !4

assert_fail24:                                    ; preds = %assert_end23
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %76(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.12, i64 0, i64 0))
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
  tail call void %88(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.13, i64 0, i64 0))
  br label %common.ret

assert_end29:                                     ; preds = %assert_end27
  %89 = load i64, i64* %arg1.shape, align 8, !tbaa !657
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 32
  br i1 %91, label %assert_end31, label %assert_fail30, !prof !4

assert_fail30:                                    ; preds = %assert_end29
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %92(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.47, i64 0, i64 0))
  br label %common.ret

assert_end31:                                     ; preds = %assert_end29
  %93 = getelementptr inbounds i64, i64* %arg1.shape, i64 1
  %94 = load i64, i64* %93, align 8, !tbaa !671
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %95, 2704
  br i1 %96, label %assert_end33, label %assert_fail32, !prof !4

assert_fail32:                                    ; preds = %assert_end31
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %97(i8* getelementptr inbounds ([130 x i8], [130 x i8]* @.str.15, i64 0, i64 0))
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %.not68 = icmp eq i64* %arg1.strides, null
  br i1 %.not68, label %if_end35, label %if_then34, !prof !45

if_then34:                                        ; preds = %assert_end33
  %98 = load i64, i64* %arg1.strides, align 8, !tbaa !673
  %99 = trunc i64 %98 to i32
  %100 = icmp eq i32 %99, 2704
  %101 = getelementptr inbounds i64, i64* %arg1.strides, i64 1
  %102 = load i64, i64* %101, align 8, !tbaa !687
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
  tail call void %109(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.16, i64 0, i64 0))
  br label %common.ret

assert_fail38:                                    ; preds = %if_end35
  %110 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %110(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.17, i64 0, i64 0))
  br label %common.ret

assert_end39:                                     ; preds = %if_end35
  %111 = getelementptr inbounds %1, %1* %arg166, i64 0, i32 1, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %assert_end41, label %assert_fail40, !prof !4

assert_fail40:                                    ; preds = %assert_end39
  %114 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %114(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.18, i64 0, i64 0))
  br label %common.ret

assert_end41:                                     ; preds = %assert_end39
  %115 = getelementptr inbounds %1, %1* %arg166, i64 0, i32 1, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %dev_id, %116
  br i1 %117, label %assert_end43, label %assert_fail42, !prof !4

assert_fail42:                                    ; preds = %assert_end41
  %118 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %118(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.19, i64 0, i64 0))
  br label %common.ret

assert_end43:                                     ; preds = %assert_end41
  %119 = getelementptr inbounds %1, %1* %arg267, i64 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %assert_end47, label %assert_fail44, !prof !4

assert_fail44:                                    ; preds = %assert_end43
  %122 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %122(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.48, i64 0, i64 0))
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
  tail call void %134(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.31, i64 0, i64 0))
  br label %common.ret

assert_end49:                                     ; preds = %assert_end47
  %135 = load i64, i64* %arg2.shape, align 8, !tbaa !689
  %136 = trunc i64 %135 to i32
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %assert_end51, label %assert_fail50, !prof !4

assert_fail50:                                    ; preds = %assert_end49
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %138(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.32, i64 0, i64 0))
  br label %common.ret

assert_end51:                                     ; preds = %assert_end49
  %139 = getelementptr inbounds i64, i64* %arg2.shape, i64 1
  %140 = load i64, i64* %139, align 8, !tbaa !703
  %141 = trunc i64 %140 to i32
  %142 = icmp eq i32 %141, 32
  br i1 %142, label %assert_end53, label %assert_fail52, !prof !4

assert_fail52:                                    ; preds = %assert_end51
  %143 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %143(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.49, i64 0, i64 0))
  br label %common.ret

assert_end53:                                     ; preds = %assert_end51
  %.not69 = icmp eq i64* %arg2.strides, null
  br i1 %.not69, label %if_end55, label %if_then54, !prof !45

if_then54:                                        ; preds = %assert_end53
  %144 = load i64, i64* %arg2.strides, align 8, !tbaa !705
  %145 = trunc i64 %144 to i32
  %146 = icmp eq i32 %145, 32
  %147 = getelementptr inbounds i64, i64* %arg2.strides, i64 1
  %148 = load i64, i64* %147, align 8, !tbaa !719
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
  tail call void %155(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.50, i64 0, i64 0))
  br label %common.ret

assert_fail58:                                    ; preds = %if_end55
  %156 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %156(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.37, i64 0, i64 0))
  br label %common.ret

assert_end59:                                     ; preds = %if_end55
  %157 = getelementptr inbounds %1, %1* %arg267, i64 0, i32 1, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %assert_end61, label %assert_fail60, !prof !4

assert_fail60:                                    ; preds = %assert_end59
  %160 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %160(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.38, i64 0, i64 0))
  br label %common.ret

assert_end61:                                     ; preds = %assert_end59
  %161 = getelementptr inbounds %1, %1* %arg267, i64 0, i32 1, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %dev_id, %162
  br i1 %163, label %assert_end63, label %assert_fail62, !prof !4

assert_fail62:                                    ; preds = %assert_end61
  %164 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %164(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.39, i64 0, i64 0))
  br label %common.ret

assert_end63:                                     ; preds = %assert_end61
  %165 = tail call fastcc i32 @tvmgen_default_fused_nn_dense_compute_(i8* %placeholder64, i8* %placeholder, i8* %compute, i32 %dev_id)
  br label %common.ret
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_nn_dense_compute_(i8* noalias nocapture readonly align 128 %0, i8* noalias align 128 %1, i8* noalias align 128 %2, i32 %3) unnamed_addr #2 {
entry:
  %4 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !5
  %packed_weight = tail call i8* %4(i32 1, i32 %3, i64 346112, i32 2, i32 32)
  call void @llvm.assume(i1 true) [ "align"(i8* %packed_weight, i64 128) ]
  %5 = icmp eq i8* %packed_weight, null
  br i1 %5, label %common.ret, label %for_begin_z.preheader, !prof !4

for_begin_z.preheader:                            ; preds = %entry
  %6 = bitcast i8* %0 to float*
  %7 = getelementptr inbounds i8, i8* %packed_weight, i64 -28
  %8 = bitcast i8* %7 to float*
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %for_begin_z.preheader
  %index = phi i64 [ 0, %for_begin_z.preheader ], [ %index.next, %vector.body ]
  %9 = shl nsw i64 %index, 3
  %10 = getelementptr inbounds float, float* %6, i64 %index
  %11 = bitcast float* %10 to <4 x float>*
  %wide.load = load <4 x float>, <4 x float>* %11, align 16, !tbaa !721
  %12 = add nuw nsw i64 %index, 2704
  %13 = getelementptr inbounds float, float* %6, i64 %12
  %14 = bitcast float* %13 to <4 x float>*
  %wide.load14 = load <4 x float>, <4 x float>* %14, align 16, !tbaa !721
  %15 = add nuw nsw i64 %index, 5408
  %16 = getelementptr inbounds float, float* %6, i64 %15
  %17 = bitcast float* %16 to <4 x float>*
  %wide.load15 = load <4 x float>, <4 x float>* %17, align 16, !tbaa !721
  %18 = add nuw nsw i64 %index, 8112
  %19 = getelementptr inbounds float, float* %6, i64 %18
  %20 = bitcast float* %19 to <4 x float>*
  %wide.load16 = load <4 x float>, <4 x float>* %20, align 16, !tbaa !721
  %21 = add nuw nsw i64 %index, 10816
  %22 = getelementptr inbounds float, float* %6, i64 %21
  %23 = bitcast float* %22 to <4 x float>*
  %wide.load17 = load <4 x float>, <4 x float>* %23, align 16, !tbaa !721
  %24 = add nuw nsw i64 %index, 13520
  %25 = getelementptr inbounds float, float* %6, i64 %24
  %26 = bitcast float* %25 to <4 x float>*
  %wide.load18 = load <4 x float>, <4 x float>* %26, align 16, !tbaa !721
  %27 = add nuw nsw i64 %index, 16224
  %28 = getelementptr inbounds float, float* %6, i64 %27
  %29 = bitcast float* %28 to <4 x float>*
  %wide.load19 = load <4 x float>, <4 x float>* %29, align 16, !tbaa !721
  %30 = or i64 %9, 7
  %31 = add nuw nsw i64 %index, 18928
  %32 = getelementptr inbounds float, float* %6, i64 %31
  %33 = bitcast float* %32 to <4 x float>*
  %wide.load20 = load <4 x float>, <4 x float>* %33, align 16, !tbaa !721
  %34 = getelementptr inbounds float, float* %8, i64 %30
  %35 = bitcast float* %34 to <32 x float>*
  %36 = shufflevector <4 x float> %wide.load, <4 x float> %wide.load14, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %37 = shufflevector <4 x float> %wide.load15, <4 x float> %wide.load16, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %38 = shufflevector <4 x float> %wide.load17, <4 x float> %wide.load18, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %39 = shufflevector <4 x float> %wide.load19, <4 x float> %wide.load20, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %40 = shufflevector <8 x float> %36, <8 x float> %37, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %41 = shufflevector <8 x float> %38, <8 x float> %39, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %40, <16 x float> %41, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec, <32 x float>* %35, align 128, !tbaa !724
  %index.next = add nuw i64 %index, 4
  %42 = icmp eq i64 %index.next, 2704
  br i1 %42, label %vector.body23.preheader, label %vector.body, !prof !727, !llvm.loop !728

vector.body23.preheader:                          ; preds = %vector.body
  %43 = getelementptr inbounds i8, i8* %packed_weight, i64 -28
  %44 = bitcast i8* %43 to float*
  br label %vector.body23

common.ret:                                       ; preds = %call_end, %for_end_y.3, %entry
  %common.ret.op = phi i32 [ -1, %entry ], [ %160, %for_end_y.3 ], [ %., %call_end ]
  ret i32 %common.ret.op

vector.body23:                                    ; preds = %vector.body23.preheader, %vector.body23
  %index27 = phi i64 [ %index.next37, %vector.body23 ], [ 0, %vector.body23.preheader ]
  %45 = shl nsw i64 %index27, 3
  %46 = add nuw nsw i64 %index27, 21632
  %47 = getelementptr inbounds float, float* %6, i64 %46
  %48 = bitcast float* %47 to <4 x float>*
  %wide.load28 = load <4 x float>, <4 x float>* %48, align 16, !tbaa !721
  %49 = add nuw nsw i64 %index27, 24336
  %50 = getelementptr inbounds float, float* %6, i64 %49
  %51 = bitcast float* %50 to <4 x float>*
  %wide.load29 = load <4 x float>, <4 x float>* %51, align 16, !tbaa !721
  %52 = add nuw nsw i64 %index27, 27040
  %53 = getelementptr inbounds float, float* %6, i64 %52
  %54 = bitcast float* %53 to <4 x float>*
  %wide.load30 = load <4 x float>, <4 x float>* %54, align 16, !tbaa !721
  %55 = add nuw nsw i64 %index27, 29744
  %56 = getelementptr inbounds float, float* %6, i64 %55
  %57 = bitcast float* %56 to <4 x float>*
  %wide.load31 = load <4 x float>, <4 x float>* %57, align 16, !tbaa !721
  %58 = add nuw nsw i64 %index27, 32448
  %59 = getelementptr inbounds float, float* %6, i64 %58
  %60 = bitcast float* %59 to <4 x float>*
  %wide.load32 = load <4 x float>, <4 x float>* %60, align 16, !tbaa !721
  %61 = add nuw nsw i64 %index27, 35152
  %62 = getelementptr inbounds float, float* %6, i64 %61
  %63 = bitcast float* %62 to <4 x float>*
  %wide.load33 = load <4 x float>, <4 x float>* %63, align 16, !tbaa !721
  %64 = add nuw nsw i64 %index27, 37856
  %65 = getelementptr inbounds float, float* %6, i64 %64
  %66 = bitcast float* %65 to <4 x float>*
  %wide.load34 = load <4 x float>, <4 x float>* %66, align 16, !tbaa !721
  %67 = add nuw nsw i64 %45, 21639
  %68 = add nuw nsw i64 %index27, 40560
  %69 = getelementptr inbounds float, float* %6, i64 %68
  %70 = bitcast float* %69 to <4 x float>*
  %wide.load35 = load <4 x float>, <4 x float>* %70, align 16, !tbaa !721
  %71 = getelementptr inbounds float, float* %44, i64 %67
  %72 = bitcast float* %71 to <32 x float>*
  %73 = shufflevector <4 x float> %wide.load28, <4 x float> %wide.load29, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %74 = shufflevector <4 x float> %wide.load30, <4 x float> %wide.load31, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %75 = shufflevector <4 x float> %wide.load32, <4 x float> %wide.load33, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %76 = shufflevector <4 x float> %wide.load34, <4 x float> %wide.load35, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %77 = shufflevector <8 x float> %73, <8 x float> %74, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %78 = shufflevector <8 x float> %75, <8 x float> %76, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec36 = shufflevector <16 x float> %77, <16 x float> %78, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec36, <32 x float>* %72, align 128, !tbaa !724
  %index.next37 = add nuw i64 %index27, 4
  %79 = icmp eq i64 %index.next37, 2704
  br i1 %79, label %vector.body40.preheader, label %vector.body23, !prof !727, !llvm.loop !730

vector.body40.preheader:                          ; preds = %vector.body23
  %80 = getelementptr inbounds i8, i8* %packed_weight, i64 -28
  %81 = bitcast i8* %80 to float*
  br label %vector.body40

vector.body40:                                    ; preds = %vector.body40.preheader, %vector.body40
  %index44 = phi i64 [ %index.next54, %vector.body40 ], [ 0, %vector.body40.preheader ]
  %82 = shl nsw i64 %index44, 3
  %83 = add nuw nsw i64 %index44, 43264
  %84 = getelementptr inbounds float, float* %6, i64 %83
  %85 = bitcast float* %84 to <4 x float>*
  %wide.load45 = load <4 x float>, <4 x float>* %85, align 16, !tbaa !721
  %86 = add nuw nsw i64 %index44, 45968
  %87 = getelementptr inbounds float, float* %6, i64 %86
  %88 = bitcast float* %87 to <4 x float>*
  %wide.load46 = load <4 x float>, <4 x float>* %88, align 16, !tbaa !721
  %89 = add nuw nsw i64 %index44, 48672
  %90 = getelementptr inbounds float, float* %6, i64 %89
  %91 = bitcast float* %90 to <4 x float>*
  %wide.load47 = load <4 x float>, <4 x float>* %91, align 16, !tbaa !721
  %92 = add nuw nsw i64 %index44, 51376
  %93 = getelementptr inbounds float, float* %6, i64 %92
  %94 = bitcast float* %93 to <4 x float>*
  %wide.load48 = load <4 x float>, <4 x float>* %94, align 16, !tbaa !721
  %95 = add nuw nsw i64 %index44, 54080
  %96 = getelementptr inbounds float, float* %6, i64 %95
  %97 = bitcast float* %96 to <4 x float>*
  %wide.load49 = load <4 x float>, <4 x float>* %97, align 16, !tbaa !721
  %98 = add nuw nsw i64 %index44, 56784
  %99 = getelementptr inbounds float, float* %6, i64 %98
  %100 = bitcast float* %99 to <4 x float>*
  %wide.load50 = load <4 x float>, <4 x float>* %100, align 16, !tbaa !721
  %101 = add nuw nsw i64 %index44, 59488
  %102 = getelementptr inbounds float, float* %6, i64 %101
  %103 = bitcast float* %102 to <4 x float>*
  %wide.load51 = load <4 x float>, <4 x float>* %103, align 16, !tbaa !721
  %104 = add nuw nsw i64 %82, 43271
  %105 = add nuw nsw i64 %index44, 62192
  %106 = getelementptr inbounds float, float* %6, i64 %105
  %107 = bitcast float* %106 to <4 x float>*
  %wide.load52 = load <4 x float>, <4 x float>* %107, align 16, !tbaa !721
  %108 = getelementptr inbounds float, float* %81, i64 %104
  %109 = bitcast float* %108 to <32 x float>*
  %110 = shufflevector <4 x float> %wide.load45, <4 x float> %wide.load46, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %111 = shufflevector <4 x float> %wide.load47, <4 x float> %wide.load48, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %112 = shufflevector <4 x float> %wide.load49, <4 x float> %wide.load50, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %113 = shufflevector <4 x float> %wide.load51, <4 x float> %wide.load52, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %114 = shufflevector <8 x float> %110, <8 x float> %111, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %115 = shufflevector <8 x float> %112, <8 x float> %113, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec53 = shufflevector <16 x float> %114, <16 x float> %115, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec53, <32 x float>* %109, align 128, !tbaa !724
  %index.next54 = add nuw i64 %index44, 4
  %116 = icmp eq i64 %index.next54, 2704
  br i1 %116, label %vector.body57.preheader, label %vector.body40, !prof !727, !llvm.loop !731

vector.body57.preheader:                          ; preds = %vector.body40
  %117 = getelementptr inbounds i8, i8* %packed_weight, i64 -28
  %118 = bitcast i8* %117 to float*
  br label %vector.body57

vector.body57:                                    ; preds = %vector.body57.preheader, %vector.body57
  %index61 = phi i64 [ %index.next71, %vector.body57 ], [ 0, %vector.body57.preheader ]
  %119 = shl nsw i64 %index61, 3
  %120 = add nuw nsw i64 %index61, 64896
  %121 = getelementptr inbounds float, float* %6, i64 %120
  %122 = bitcast float* %121 to <4 x float>*
  %wide.load62 = load <4 x float>, <4 x float>* %122, align 16, !tbaa !721
  %123 = add nuw nsw i64 %index61, 67600
  %124 = getelementptr inbounds float, float* %6, i64 %123
  %125 = bitcast float* %124 to <4 x float>*
  %wide.load63 = load <4 x float>, <4 x float>* %125, align 16, !tbaa !721
  %126 = add nuw nsw i64 %index61, 70304
  %127 = getelementptr inbounds float, float* %6, i64 %126
  %128 = bitcast float* %127 to <4 x float>*
  %wide.load64 = load <4 x float>, <4 x float>* %128, align 16, !tbaa !721
  %129 = add nuw nsw i64 %index61, 73008
  %130 = getelementptr inbounds float, float* %6, i64 %129
  %131 = bitcast float* %130 to <4 x float>*
  %wide.load65 = load <4 x float>, <4 x float>* %131, align 16, !tbaa !721
  %132 = add nuw nsw i64 %index61, 75712
  %133 = getelementptr inbounds float, float* %6, i64 %132
  %134 = bitcast float* %133 to <4 x float>*
  %wide.load66 = load <4 x float>, <4 x float>* %134, align 16, !tbaa !721
  %135 = add nuw nsw i64 %index61, 78416
  %136 = getelementptr inbounds float, float* %6, i64 %135
  %137 = bitcast float* %136 to <4 x float>*
  %wide.load67 = load <4 x float>, <4 x float>* %137, align 16, !tbaa !721
  %138 = add nuw nsw i64 %index61, 81120
  %139 = getelementptr inbounds float, float* %6, i64 %138
  %140 = bitcast float* %139 to <4 x float>*
  %wide.load68 = load <4 x float>, <4 x float>* %140, align 16, !tbaa !721
  %141 = add nuw nsw i64 %119, 64903
  %142 = add nuw nsw i64 %index61, 83824
  %143 = getelementptr inbounds float, float* %6, i64 %142
  %144 = bitcast float* %143 to <4 x float>*
  %wide.load69 = load <4 x float>, <4 x float>* %144, align 16, !tbaa !721
  %145 = getelementptr inbounds float, float* %118, i64 %141
  %146 = bitcast float* %145 to <32 x float>*
  %147 = shufflevector <4 x float> %wide.load62, <4 x float> %wide.load63, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %148 = shufflevector <4 x float> %wide.load64, <4 x float> %wide.load65, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %149 = shufflevector <4 x float> %wide.load66, <4 x float> %wide.load67, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %150 = shufflevector <4 x float> %wide.load68, <4 x float> %wide.load69, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %151 = shufflevector <8 x float> %147, <8 x float> %148, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %152 = shufflevector <8 x float> %149, <8 x float> %150, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec70 = shufflevector <16 x float> %151, <16 x float> %152, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %interleaved.vec70, <32 x float>* %146, align 128, !tbaa !724
  %index.next71 = add nuw i64 %index61, 4
  %153 = icmp eq i64 %index.next71, 2704
  br i1 %153, label %for_end_y.3, label %vector.body57, !prof !727, !llvm.loop !732

for_end_y.3:                                      ; preds = %vector.body57
  %154 = alloca %closure_loop_parallel_x.outer.y.outer.fused, align 8
  %155 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused, %closure_loop_parallel_x.outer.y.outer.fused* %154, i64 0, i32 0
  store i8* %1, i8** %155, align 8
  %156 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused, %closure_loop_parallel_x.outer.y.outer.fused* %154, i64 0, i32 1
  store i8* %packed_weight, i8** %156, align 8
  %157 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused, %closure_loop_parallel_x.outer.y.outer.fused* %154, i64 0, i32 2
  store i8* %2, i8** %157, align 8
  %158 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !5
  %159 = bitcast %closure_loop_parallel_x.outer.y.outer.fused* %154 to i8*
  %160 = call i32 %158(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.82, i8* nonnull %159, i32 0)
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %call_end, label %common.ret, !prof !4

call_end:                                         ; preds = %for_end_y.3
  %162 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !5
  %163 = call i32 %162(i32 1, i32 %3, i8* nonnull %packed_weight)
  %.not = icmp ne i32 %163, 0
  %. = sext i1 %.not to i32
  br label %common.ret
}

; Function Attrs: nofree nosync nounwind
define private i32 @__tvm_parallel_lambda.82(i32 %0, %0* nocapture readonly %1, i8* nocapture readonly %2) #5 {
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
  br label %for_begin_k.outer.preheader

for_begin_k.outer.preheader:                      ; preds = %for_begin_k.outer.preheader.preheader, %for_end_k.outer
  %indvars.iv6 = phi i64 [ %23, %for_begin_k.outer.preheader.preheader ], [ %indvars.iv.next7, %for_end_k.outer ]
  %24 = mul nsw i64 %indvars.iv6, 21632
  br label %for_body_k.outer

for_end_x.outer.y.outer.fused:                    ; preds = %for_end_k.outer, %parallel_closure_entry
  ret i32 0

for_body_k.outer:                                 ; preds = %for_body_k.outer, %for_begin_k.outer.preheader
  %indvars.iv = phi i64 [ 0, %for_begin_k.outer.preheader ], [ %indvars.iv.next.1, %for_body_k.outer ]
  %compute.global.02 = phi <8 x float> [ zeroinitializer, %for_begin_k.outer.preheader ], [ %44, %for_body_k.outer ]
  %25 = getelementptr inbounds float, float* %4, i64 %indvars.iv
  %26 = load float, float* %25, align 4, !tbaa !733
  %27 = insertelement <8 x float> undef, float %26, i64 0
  %28 = shufflevector <8 x float> %27, <8 x float> undef, <8 x i32> zeroinitializer
  %29 = shl nuw nsw i64 %indvars.iv, 3
  %30 = add nsw i64 %29, %24
  %31 = getelementptr inbounds float, float* %7, i64 %30
  %32 = bitcast float* %31 to <8 x float>*
  %33 = load <8 x float>, <8 x float>* %32, align 32, !tbaa !724
  %34 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %28, <8 x float> %33, <8 x float> %compute.global.02)
  %indvars.iv.next = or i64 %indvars.iv, 1
  %35 = getelementptr inbounds float, float* %4, i64 %indvars.iv.next
  %36 = load float, float* %35, align 4, !tbaa !733
  %37 = insertelement <8 x float> undef, float %36, i64 0
  %38 = shufflevector <8 x float> %37, <8 x float> undef, <8 x i32> zeroinitializer
  %39 = shl nuw nsw i64 %indvars.iv.next, 3
  %40 = add nsw i64 %39, %24
  %41 = getelementptr inbounds float, float* %7, i64 %40
  %42 = bitcast float* %41 to <8 x float>*
  %43 = load <8 x float>, <8 x float>* %42, align 32, !tbaa !724
  %44 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %38, <8 x float> %43, <8 x float> %34)
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, 2704
  br i1 %exitcond.not.1, label %for_end_k.outer, label %for_body_k.outer, !prof !45

for_end_k.outer:                                  ; preds = %for_body_k.outer
  %45 = trunc i64 %indvars.iv6 to i32
  %46 = shl nsw i32 %45, 3
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %10, i64 %47
  %49 = bitcast float* %48 to <8 x float>*
  store <8 x float> %44, <8 x float>* %49, align 32, !tbaa !736
  %indvars.iv.next7 = add nsw i64 %indvars.iv6, 1
  %exitcond9.not = icmp eq i64 %indvars.iv.next7, %wide.trip.count
  br i1 %exitcond9.not, label %for_end_x.outer.y.outer.fused, label %for_begin_k.outer.preheader, !prof !45
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #6

define dllexport i32 @tvmgen_default_fused_nn_dense_1(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 3
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end63, %assert_fail62, %assert_fail60, %assert_fail58, %assert_fail56, %assert_fail52, %assert_fail50, %assert_fail48, %assert_fail44, %assert_fail42, %assert_fail40, %assert_fail38, %assert_fail36, %assert_fail32, %assert_fail30, %assert_fail28, %assert_fail24, %assert_fail22, %assert_fail20, %assert_fail18, %assert_fail16, %assert_fail14, %assert_fail12, %assert_fail8, %assert_fail6, %assert_fail4, %assert_fail2, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail2 ], [ -1, %assert_fail4 ], [ -1, %assert_fail6 ], [ -1, %assert_fail8 ], [ -1, %assert_fail12 ], [ -1, %assert_fail14 ], [ -1, %assert_fail16 ], [ -1, %assert_fail18 ], [ -1, %assert_fail20 ], [ -1, %assert_fail22 ], [ -1, %assert_fail24 ], [ -1, %assert_fail28 ], [ -1, %assert_fail30 ], [ -1, %assert_fail32 ], [ -1, %assert_fail36 ], [ -1, %assert_fail38 ], [ -1, %assert_fail40 ], [ -1, %assert_fail42 ], [ -1, %assert_fail44 ], [ -1, %assert_fail48 ], [ -1, %assert_fail50 ], [ -1, %assert_fail52 ], [ -1, %assert_fail56 ], [ -1, %assert_fail58 ], [ -1, %assert_fail60 ], [ -1, %assert_fail62 ], [ %165, %assert_end63 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.83, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %1**
  %arg065 = load %1*, %1** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !739
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %1**
  %arg166 = load %1*, %1** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !753
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %1**
  %arg267 = load %1*, %1** %15, align 8
  %16 = getelementptr inbounds i8, i8* %1, i64 8
  %17 = bitcast i8* %16 to i32*
  %arg2.code = load i32, i32* %17, align 4, !tbaa !755
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
  tail call void %28(i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.84, i64 0, i64 0))
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
  tail call void %29(i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.85, i64 0, i64 0))
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
  tail call void %30(i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.86, i64 0, i64 0))
  br label %common.ret

assert_end7:                                      ; preds = %assert_end5, %assert_end5, %assert_end5, %assert_end5
  %31 = getelementptr inbounds %1, %1* %arg065, i64 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %assert_end11, label %assert_fail8, !prof !4

assert_fail8:                                     ; preds = %assert_end7
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %34(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.44, i64 0, i64 0))
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
  tail call void %46(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.4, i64 0, i64 0))
  br label %common.ret

assert_end13:                                     ; preds = %assert_end11
  %47 = load i64, i64* %arg0.shape, align 8, !tbaa !758
  %48 = trunc i64 %47 to i32
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %assert_end15, label %assert_fail14, !prof !4

assert_fail14:                                    ; preds = %assert_end13
  %50 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %50(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0))
  br label %common.ret

assert_end15:                                     ; preds = %assert_end13
  %51 = getelementptr inbounds i64, i64* %arg0.shape, i64 1
  %52 = load i64, i64* %51, align 8, !tbaa !772
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %53, 32
  br i1 %54, label %assert_end17, label %assert_fail16, !prof !4

assert_fail16:                                    ; preds = %assert_end15
  %55 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %55(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.45, i64 0, i64 0))
  br label %common.ret

assert_end17:                                     ; preds = %assert_end15
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !45

if_then:                                          ; preds = %assert_end17
  %56 = load i64, i64* %arg0.strides, align 8, !tbaa !774
  %57 = trunc i64 %56 to i32
  %58 = icmp eq i32 %57, 32
  %59 = getelementptr inbounds i64, i64* %arg0.strides, i64 1
  %60 = load i64, i64* %59, align 8, !tbaa !788
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
  tail call void %67(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.46, i64 0, i64 0))
  br label %common.ret

assert_fail20:                                    ; preds = %if_end
  %68 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %68(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  br label %common.ret

assert_end21:                                     ; preds = %if_end
  %69 = getelementptr inbounds %1, %1* %arg065, i64 0, i32 1, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %assert_end23, label %assert_fail22, !prof !4

assert_fail22:                                    ; preds = %assert_end21
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %72(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0))
  br label %common.ret

assert_end23:                                     ; preds = %assert_end21
  %73 = getelementptr inbounds %1, %1* %arg166, i64 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %assert_end27, label %assert_fail24, !prof !4

assert_fail24:                                    ; preds = %assert_end23
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %76(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.12, i64 0, i64 0))
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
  tail call void %88(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.13, i64 0, i64 0))
  br label %common.ret

assert_end29:                                     ; preds = %assert_end27
  %89 = load i64, i64* %arg1.shape, align 8, !tbaa !790
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 10
  br i1 %91, label %assert_end31, label %assert_fail30, !prof !4

assert_fail30:                                    ; preds = %assert_end29
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %92(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.57, i64 0, i64 0))
  br label %common.ret

assert_end31:                                     ; preds = %assert_end29
  %93 = getelementptr inbounds i64, i64* %arg1.shape, i64 1
  %94 = load i64, i64* %93, align 8, !tbaa !804
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %95, 32
  br i1 %96, label %assert_end33, label %assert_fail32, !prof !4

assert_fail32:                                    ; preds = %assert_end31
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %97(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.87, i64 0, i64 0))
  br label %common.ret

assert_end33:                                     ; preds = %assert_end31
  %.not68 = icmp eq i64* %arg1.strides, null
  br i1 %.not68, label %if_end35, label %if_then34, !prof !45

if_then34:                                        ; preds = %assert_end33
  %98 = load i64, i64* %arg1.strides, align 8, !tbaa !806
  %99 = trunc i64 %98 to i32
  %100 = icmp eq i32 %99, 32
  %101 = getelementptr inbounds i64, i64* %arg1.strides, i64 1
  %102 = load i64, i64* %101, align 8, !tbaa !820
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
  tail call void %109(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.88, i64 0, i64 0))
  br label %common.ret

assert_fail38:                                    ; preds = %if_end35
  %110 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %110(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.17, i64 0, i64 0))
  br label %common.ret

assert_end39:                                     ; preds = %if_end35
  %111 = getelementptr inbounds %1, %1* %arg166, i64 0, i32 1, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %assert_end41, label %assert_fail40, !prof !4

assert_fail40:                                    ; preds = %assert_end39
  %114 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %114(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.18, i64 0, i64 0))
  br label %common.ret

assert_end41:                                     ; preds = %assert_end39
  %115 = getelementptr inbounds %1, %1* %arg166, i64 0, i32 1, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %dev_id, %116
  br i1 %117, label %assert_end43, label %assert_fail42, !prof !4

assert_fail42:                                    ; preds = %assert_end41
  %118 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %118(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.19, i64 0, i64 0))
  br label %common.ret

assert_end43:                                     ; preds = %assert_end41
  %119 = getelementptr inbounds %1, %1* %arg267, i64 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %assert_end47, label %assert_fail44, !prof !4

assert_fail44:                                    ; preds = %assert_end43
  %122 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %122(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.48, i64 0, i64 0))
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
  tail call void %134(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.31, i64 0, i64 0))
  br label %common.ret

assert_end49:                                     ; preds = %assert_end47
  %135 = load i64, i64* %arg2.shape, align 8, !tbaa !822
  %136 = trunc i64 %135 to i32
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %assert_end51, label %assert_fail50, !prof !4

assert_fail50:                                    ; preds = %assert_end49
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %138(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.32, i64 0, i64 0))
  br label %common.ret

assert_end51:                                     ; preds = %assert_end49
  %139 = getelementptr inbounds i64, i64* %arg2.shape, i64 1
  %140 = load i64, i64* %139, align 8, !tbaa !836
  %141 = trunc i64 %140 to i32
  %142 = icmp eq i32 %141, 10
  br i1 %142, label %assert_end53, label %assert_fail52, !prof !4

assert_fail52:                                    ; preds = %assert_end51
  %143 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %143(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.58, i64 0, i64 0))
  br label %common.ret

assert_end53:                                     ; preds = %assert_end51
  %.not69 = icmp eq i64* %arg2.strides, null
  br i1 %.not69, label %if_end55, label %if_then54, !prof !45

if_then54:                                        ; preds = %assert_end53
  %144 = load i64, i64* %arg2.strides, align 8, !tbaa !838
  %145 = trunc i64 %144 to i32
  %146 = icmp eq i32 %145, 10
  %147 = getelementptr inbounds i64, i64* %arg2.strides, i64 1
  %148 = load i64, i64* %147, align 8, !tbaa !852
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
  tail call void %155(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.59, i64 0, i64 0))
  br label %common.ret

assert_fail58:                                    ; preds = %if_end55
  %156 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %156(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.37, i64 0, i64 0))
  br label %common.ret

assert_end59:                                     ; preds = %if_end55
  %157 = getelementptr inbounds %1, %1* %arg267, i64 0, i32 1, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %assert_end61, label %assert_fail60, !prof !4

assert_fail60:                                    ; preds = %assert_end59
  %160 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %160(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.38, i64 0, i64 0))
  br label %common.ret

assert_end61:                                     ; preds = %assert_end59
  %161 = getelementptr inbounds %1, %1* %arg267, i64 0, i32 1, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = icmp eq i32 %dev_id, %162
  br i1 %163, label %assert_end63, label %assert_fail62, !prof !4

assert_fail62:                                    ; preds = %assert_end61
  %164 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %164(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.39, i64 0, i64 0))
  br label %common.ret

assert_end63:                                     ; preds = %assert_end61
  %165 = tail call fastcc i32 @tvmgen_default_fused_nn_dense_1_compute_(i8* %placeholder64, i8* %placeholder, i8* %compute, i32 %dev_id)
  br label %common.ret
}

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_nn_dense_1_compute_(i8* noalias nocapture readonly align 128 %0, i8* noalias align 128 %1, i8* noalias align 128 %2, i32 %3) unnamed_addr #2 {
entry:
  %4 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !5
  %packed_weight = tail call i8* %4(i32 1, i32 %3, i64 1280, i32 2, i32 32)
  call void @llvm.assume(i1 true) [ "align"(i8* %packed_weight, i64 128) ]
  %5 = icmp eq i8* %packed_weight, null
  br i1 %5, label %common.ret, label %vector.body, !prof !4

vector.body:                                      ; preds = %entry
  %6 = bitcast i8* %0 to <4 x float>*
  %wide.load = load <4 x float>, <4 x float>* %6, align 128, !tbaa !854
  %7 = getelementptr inbounds i8, i8* %0, i64 128
  %8 = bitcast i8* %7 to <4 x float>*
  %wide.load13 = load <4 x float>, <4 x float>* %8, align 128, !tbaa !854
  %9 = getelementptr inbounds i8, i8* %0, i64 256
  %10 = bitcast i8* %9 to <4 x float>*
  %wide.load14 = load <4 x float>, <4 x float>* %10, align 128, !tbaa !854
  %11 = getelementptr inbounds i8, i8* %0, i64 384
  %12 = bitcast i8* %11 to <4 x float>*
  %wide.load15 = load <4 x float>, <4 x float>* %12, align 128, !tbaa !854
  %13 = getelementptr inbounds i8, i8* %0, i64 512
  %14 = bitcast i8* %13 to <4 x float>*
  %wide.load16 = load <4 x float>, <4 x float>* %14, align 128, !tbaa !854
  %15 = bitcast i8* %packed_weight to <20 x float>*
  %16 = shufflevector <4 x float> %wide.load, <4 x float> %wide.load13, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %17 = shufflevector <4 x float> %wide.load14, <4 x float> %wide.load15, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %18 = shufflevector <8 x float> %16, <8 x float> %17, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %19 = shufflevector <4 x float> %wide.load16, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec = shufflevector <16 x float> %18, <16 x float> %19, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec, <20 x float>* %15, align 128, !tbaa !857
  %20 = getelementptr inbounds i8, i8* %0, i64 16
  %21 = bitcast i8* %20 to <4 x float>*
  %wide.load.1 = load <4 x float>, <4 x float>* %21, align 16, !tbaa !854
  %22 = getelementptr inbounds i8, i8* %0, i64 144
  %23 = bitcast i8* %22 to <4 x float>*
  %wide.load13.1 = load <4 x float>, <4 x float>* %23, align 16, !tbaa !854
  %24 = getelementptr inbounds i8, i8* %0, i64 272
  %25 = bitcast i8* %24 to <4 x float>*
  %wide.load14.1 = load <4 x float>, <4 x float>* %25, align 16, !tbaa !854
  %26 = getelementptr inbounds i8, i8* %0, i64 400
  %27 = bitcast i8* %26 to <4 x float>*
  %wide.load15.1 = load <4 x float>, <4 x float>* %27, align 16, !tbaa !854
  %28 = getelementptr inbounds i8, i8* %0, i64 528
  %29 = bitcast i8* %28 to <4 x float>*
  %wide.load16.1 = load <4 x float>, <4 x float>* %29, align 16, !tbaa !854
  %30 = getelementptr inbounds i8, i8* %packed_weight, i64 80
  %31 = bitcast i8* %30 to <20 x float>*
  %32 = shufflevector <4 x float> %wide.load.1, <4 x float> %wide.load13.1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %33 = shufflevector <4 x float> %wide.load14.1, <4 x float> %wide.load15.1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %34 = shufflevector <8 x float> %32, <8 x float> %33, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %35 = shufflevector <4 x float> %wide.load16.1, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec.1 = shufflevector <16 x float> %34, <16 x float> %35, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec.1, <20 x float>* %31, align 16, !tbaa !857
  %36 = getelementptr inbounds i8, i8* %0, i64 32
  %37 = bitcast i8* %36 to <4 x float>*
  %wide.load.2 = load <4 x float>, <4 x float>* %37, align 32, !tbaa !854
  %38 = getelementptr inbounds i8, i8* %0, i64 160
  %39 = bitcast i8* %38 to <4 x float>*
  %wide.load13.2 = load <4 x float>, <4 x float>* %39, align 32, !tbaa !854
  %40 = getelementptr inbounds i8, i8* %0, i64 288
  %41 = bitcast i8* %40 to <4 x float>*
  %wide.load14.2 = load <4 x float>, <4 x float>* %41, align 32, !tbaa !854
  %42 = getelementptr inbounds i8, i8* %0, i64 416
  %43 = bitcast i8* %42 to <4 x float>*
  %wide.load15.2 = load <4 x float>, <4 x float>* %43, align 32, !tbaa !854
  %44 = getelementptr inbounds i8, i8* %0, i64 544
  %45 = bitcast i8* %44 to <4 x float>*
  %wide.load16.2 = load <4 x float>, <4 x float>* %45, align 32, !tbaa !854
  %46 = getelementptr inbounds i8, i8* %packed_weight, i64 160
  %47 = bitcast i8* %46 to <20 x float>*
  %48 = shufflevector <4 x float> %wide.load.2, <4 x float> %wide.load13.2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %49 = shufflevector <4 x float> %wide.load14.2, <4 x float> %wide.load15.2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %50 = shufflevector <8 x float> %48, <8 x float> %49, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %51 = shufflevector <4 x float> %wide.load16.2, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec.2 = shufflevector <16 x float> %50, <16 x float> %51, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec.2, <20 x float>* %47, align 32, !tbaa !857
  %52 = getelementptr inbounds i8, i8* %0, i64 48
  %53 = bitcast i8* %52 to <4 x float>*
  %wide.load.3 = load <4 x float>, <4 x float>* %53, align 16, !tbaa !854
  %54 = getelementptr inbounds i8, i8* %0, i64 176
  %55 = bitcast i8* %54 to <4 x float>*
  %wide.load13.3 = load <4 x float>, <4 x float>* %55, align 16, !tbaa !854
  %56 = getelementptr inbounds i8, i8* %0, i64 304
  %57 = bitcast i8* %56 to <4 x float>*
  %wide.load14.3 = load <4 x float>, <4 x float>* %57, align 16, !tbaa !854
  %58 = getelementptr inbounds i8, i8* %0, i64 432
  %59 = bitcast i8* %58 to <4 x float>*
  %wide.load15.3 = load <4 x float>, <4 x float>* %59, align 16, !tbaa !854
  %60 = getelementptr inbounds i8, i8* %0, i64 560
  %61 = bitcast i8* %60 to <4 x float>*
  %wide.load16.3 = load <4 x float>, <4 x float>* %61, align 16, !tbaa !854
  %62 = getelementptr inbounds i8, i8* %packed_weight, i64 240
  %63 = bitcast i8* %62 to <20 x float>*
  %64 = shufflevector <4 x float> %wide.load.3, <4 x float> %wide.load13.3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %65 = shufflevector <4 x float> %wide.load14.3, <4 x float> %wide.load15.3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %66 = shufflevector <8 x float> %64, <8 x float> %65, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %67 = shufflevector <4 x float> %wide.load16.3, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec.3 = shufflevector <16 x float> %66, <16 x float> %67, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec.3, <20 x float>* %63, align 16, !tbaa !857
  %68 = getelementptr inbounds i8, i8* %0, i64 64
  %69 = bitcast i8* %68 to <4 x float>*
  %wide.load.4 = load <4 x float>, <4 x float>* %69, align 64, !tbaa !854
  %70 = getelementptr inbounds i8, i8* %0, i64 192
  %71 = bitcast i8* %70 to <4 x float>*
  %wide.load13.4 = load <4 x float>, <4 x float>* %71, align 64, !tbaa !854
  %72 = getelementptr inbounds i8, i8* %0, i64 320
  %73 = bitcast i8* %72 to <4 x float>*
  %wide.load14.4 = load <4 x float>, <4 x float>* %73, align 64, !tbaa !854
  %74 = getelementptr inbounds i8, i8* %0, i64 448
  %75 = bitcast i8* %74 to <4 x float>*
  %wide.load15.4 = load <4 x float>, <4 x float>* %75, align 64, !tbaa !854
  %76 = getelementptr inbounds i8, i8* %0, i64 576
  %77 = bitcast i8* %76 to <4 x float>*
  %wide.load16.4 = load <4 x float>, <4 x float>* %77, align 64, !tbaa !854
  %78 = getelementptr inbounds i8, i8* %packed_weight, i64 320
  %79 = bitcast i8* %78 to <20 x float>*
  %80 = shufflevector <4 x float> %wide.load.4, <4 x float> %wide.load13.4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %81 = shufflevector <4 x float> %wide.load14.4, <4 x float> %wide.load15.4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %82 = shufflevector <8 x float> %80, <8 x float> %81, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %83 = shufflevector <4 x float> %wide.load16.4, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec.4 = shufflevector <16 x float> %82, <16 x float> %83, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec.4, <20 x float>* %79, align 64, !tbaa !857
  %84 = getelementptr inbounds i8, i8* %0, i64 80
  %85 = bitcast i8* %84 to <4 x float>*
  %wide.load.5 = load <4 x float>, <4 x float>* %85, align 16, !tbaa !854
  %86 = getelementptr inbounds i8, i8* %0, i64 208
  %87 = bitcast i8* %86 to <4 x float>*
  %wide.load13.5 = load <4 x float>, <4 x float>* %87, align 16, !tbaa !854
  %88 = getelementptr inbounds i8, i8* %0, i64 336
  %89 = bitcast i8* %88 to <4 x float>*
  %wide.load14.5 = load <4 x float>, <4 x float>* %89, align 16, !tbaa !854
  %90 = getelementptr inbounds i8, i8* %0, i64 464
  %91 = bitcast i8* %90 to <4 x float>*
  %wide.load15.5 = load <4 x float>, <4 x float>* %91, align 16, !tbaa !854
  %92 = getelementptr inbounds i8, i8* %0, i64 592
  %93 = bitcast i8* %92 to <4 x float>*
  %wide.load16.5 = load <4 x float>, <4 x float>* %93, align 16, !tbaa !854
  %94 = getelementptr inbounds i8, i8* %packed_weight, i64 400
  %95 = bitcast i8* %94 to <20 x float>*
  %96 = shufflevector <4 x float> %wide.load.5, <4 x float> %wide.load13.5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %97 = shufflevector <4 x float> %wide.load14.5, <4 x float> %wide.load15.5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %98 = shufflevector <8 x float> %96, <8 x float> %97, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %99 = shufflevector <4 x float> %wide.load16.5, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec.5 = shufflevector <16 x float> %98, <16 x float> %99, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec.5, <20 x float>* %95, align 16, !tbaa !857
  %100 = getelementptr inbounds i8, i8* %0, i64 96
  %101 = bitcast i8* %100 to <4 x float>*
  %wide.load.6 = load <4 x float>, <4 x float>* %101, align 32, !tbaa !854
  %102 = getelementptr inbounds i8, i8* %0, i64 224
  %103 = bitcast i8* %102 to <4 x float>*
  %wide.load13.6 = load <4 x float>, <4 x float>* %103, align 32, !tbaa !854
  %104 = getelementptr inbounds i8, i8* %0, i64 352
  %105 = bitcast i8* %104 to <4 x float>*
  %wide.load14.6 = load <4 x float>, <4 x float>* %105, align 32, !tbaa !854
  %106 = getelementptr inbounds i8, i8* %0, i64 480
  %107 = bitcast i8* %106 to <4 x float>*
  %wide.load15.6 = load <4 x float>, <4 x float>* %107, align 32, !tbaa !854
  %108 = getelementptr inbounds i8, i8* %0, i64 608
  %109 = bitcast i8* %108 to <4 x float>*
  %wide.load16.6 = load <4 x float>, <4 x float>* %109, align 32, !tbaa !854
  %110 = getelementptr inbounds i8, i8* %packed_weight, i64 480
  %111 = bitcast i8* %110 to <20 x float>*
  %112 = shufflevector <4 x float> %wide.load.6, <4 x float> %wide.load13.6, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %113 = shufflevector <4 x float> %wide.load14.6, <4 x float> %wide.load15.6, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %114 = shufflevector <8 x float> %112, <8 x float> %113, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %115 = shufflevector <4 x float> %wide.load16.6, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec.6 = shufflevector <16 x float> %114, <16 x float> %115, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec.6, <20 x float>* %111, align 32, !tbaa !857
  %116 = getelementptr inbounds i8, i8* %0, i64 112
  %117 = bitcast i8* %116 to <4 x float>*
  %wide.load.7 = load <4 x float>, <4 x float>* %117, align 16, !tbaa !854
  %118 = getelementptr inbounds i8, i8* %0, i64 240
  %119 = bitcast i8* %118 to <4 x float>*
  %wide.load13.7 = load <4 x float>, <4 x float>* %119, align 16, !tbaa !854
  %120 = getelementptr inbounds i8, i8* %0, i64 368
  %121 = bitcast i8* %120 to <4 x float>*
  %wide.load14.7 = load <4 x float>, <4 x float>* %121, align 16, !tbaa !854
  %122 = getelementptr inbounds i8, i8* %0, i64 496
  %123 = bitcast i8* %122 to <4 x float>*
  %wide.load15.7 = load <4 x float>, <4 x float>* %123, align 16, !tbaa !854
  %124 = getelementptr inbounds i8, i8* %0, i64 624
  %125 = bitcast i8* %124 to <4 x float>*
  %wide.load16.7 = load <4 x float>, <4 x float>* %125, align 16, !tbaa !854
  %126 = getelementptr inbounds i8, i8* %packed_weight, i64 560
  %127 = bitcast i8* %126 to <20 x float>*
  %128 = shufflevector <4 x float> %wide.load.7, <4 x float> %wide.load13.7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %129 = shufflevector <4 x float> %wide.load14.7, <4 x float> %wide.load15.7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %130 = shufflevector <8 x float> %128, <8 x float> %129, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %131 = shufflevector <4 x float> %wide.load16.7, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec.7 = shufflevector <16 x float> %130, <16 x float> %131, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec.7, <20 x float>* %127, align 16, !tbaa !857
  %132 = getelementptr inbounds i8, i8* %0, i64 640
  %133 = bitcast i8* %132 to <4 x float>*
  %wide.load24 = load <4 x float>, <4 x float>* %133, align 128, !tbaa !854
  %134 = getelementptr inbounds i8, i8* %0, i64 768
  %135 = bitcast i8* %134 to <4 x float>*
  %wide.load25 = load <4 x float>, <4 x float>* %135, align 128, !tbaa !854
  %136 = getelementptr inbounds i8, i8* %0, i64 896
  %137 = bitcast i8* %136 to <4 x float>*
  %wide.load26 = load <4 x float>, <4 x float>* %137, align 128, !tbaa !854
  %138 = getelementptr inbounds i8, i8* %0, i64 1024
  %139 = bitcast i8* %138 to <4 x float>*
  %wide.load27 = load <4 x float>, <4 x float>* %139, align 128, !tbaa !854
  %140 = getelementptr inbounds i8, i8* %0, i64 1152
  %141 = bitcast i8* %140 to <4 x float>*
  %wide.load28 = load <4 x float>, <4 x float>* %141, align 128, !tbaa !854
  %142 = getelementptr inbounds i8, i8* %packed_weight, i64 640
  %143 = bitcast i8* %142 to <20 x float>*
  %144 = shufflevector <4 x float> %wide.load24, <4 x float> %wide.load25, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %145 = shufflevector <4 x float> %wide.load26, <4 x float> %wide.load27, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %146 = shufflevector <8 x float> %144, <8 x float> %145, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %147 = shufflevector <4 x float> %wide.load28, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec29 = shufflevector <16 x float> %146, <16 x float> %147, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec29, <20 x float>* %143, align 128, !tbaa !857
  %148 = getelementptr inbounds i8, i8* %0, i64 656
  %149 = bitcast i8* %148 to <4 x float>*
  %wide.load24.1 = load <4 x float>, <4 x float>* %149, align 16, !tbaa !854
  %150 = getelementptr inbounds i8, i8* %0, i64 784
  %151 = bitcast i8* %150 to <4 x float>*
  %wide.load25.1 = load <4 x float>, <4 x float>* %151, align 16, !tbaa !854
  %152 = getelementptr inbounds i8, i8* %0, i64 912
  %153 = bitcast i8* %152 to <4 x float>*
  %wide.load26.1 = load <4 x float>, <4 x float>* %153, align 16, !tbaa !854
  %154 = getelementptr inbounds i8, i8* %0, i64 1040
  %155 = bitcast i8* %154 to <4 x float>*
  %wide.load27.1 = load <4 x float>, <4 x float>* %155, align 16, !tbaa !854
  %156 = getelementptr inbounds i8, i8* %0, i64 1168
  %157 = bitcast i8* %156 to <4 x float>*
  %wide.load28.1 = load <4 x float>, <4 x float>* %157, align 16, !tbaa !854
  %158 = getelementptr inbounds i8, i8* %packed_weight, i64 720
  %159 = bitcast i8* %158 to <20 x float>*
  %160 = shufflevector <4 x float> %wide.load24.1, <4 x float> %wide.load25.1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %161 = shufflevector <4 x float> %wide.load26.1, <4 x float> %wide.load27.1, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %162 = shufflevector <8 x float> %160, <8 x float> %161, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %163 = shufflevector <4 x float> %wide.load28.1, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec29.1 = shufflevector <16 x float> %162, <16 x float> %163, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec29.1, <20 x float>* %159, align 16, !tbaa !857
  %164 = getelementptr inbounds i8, i8* %0, i64 672
  %165 = bitcast i8* %164 to <4 x float>*
  %wide.load24.2 = load <4 x float>, <4 x float>* %165, align 32, !tbaa !854
  %166 = getelementptr inbounds i8, i8* %0, i64 800
  %167 = bitcast i8* %166 to <4 x float>*
  %wide.load25.2 = load <4 x float>, <4 x float>* %167, align 32, !tbaa !854
  %168 = getelementptr inbounds i8, i8* %0, i64 928
  %169 = bitcast i8* %168 to <4 x float>*
  %wide.load26.2 = load <4 x float>, <4 x float>* %169, align 32, !tbaa !854
  %170 = getelementptr inbounds i8, i8* %0, i64 1056
  %171 = bitcast i8* %170 to <4 x float>*
  %wide.load27.2 = load <4 x float>, <4 x float>* %171, align 32, !tbaa !854
  %172 = getelementptr inbounds i8, i8* %0, i64 1184
  %173 = bitcast i8* %172 to <4 x float>*
  %wide.load28.2 = load <4 x float>, <4 x float>* %173, align 32, !tbaa !854
  %174 = getelementptr inbounds i8, i8* %packed_weight, i64 800
  %175 = bitcast i8* %174 to <20 x float>*
  %176 = shufflevector <4 x float> %wide.load24.2, <4 x float> %wide.load25.2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %177 = shufflevector <4 x float> %wide.load26.2, <4 x float> %wide.load27.2, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %178 = shufflevector <8 x float> %176, <8 x float> %177, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %179 = shufflevector <4 x float> %wide.load28.2, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec29.2 = shufflevector <16 x float> %178, <16 x float> %179, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec29.2, <20 x float>* %175, align 32, !tbaa !857
  %180 = getelementptr inbounds i8, i8* %0, i64 688
  %181 = bitcast i8* %180 to <4 x float>*
  %wide.load24.3 = load <4 x float>, <4 x float>* %181, align 16, !tbaa !854
  %182 = getelementptr inbounds i8, i8* %0, i64 816
  %183 = bitcast i8* %182 to <4 x float>*
  %wide.load25.3 = load <4 x float>, <4 x float>* %183, align 16, !tbaa !854
  %184 = getelementptr inbounds i8, i8* %0, i64 944
  %185 = bitcast i8* %184 to <4 x float>*
  %wide.load26.3 = load <4 x float>, <4 x float>* %185, align 16, !tbaa !854
  %186 = getelementptr inbounds i8, i8* %0, i64 1072
  %187 = bitcast i8* %186 to <4 x float>*
  %wide.load27.3 = load <4 x float>, <4 x float>* %187, align 16, !tbaa !854
  %188 = getelementptr inbounds i8, i8* %0, i64 1200
  %189 = bitcast i8* %188 to <4 x float>*
  %wide.load28.3 = load <4 x float>, <4 x float>* %189, align 16, !tbaa !854
  %190 = getelementptr inbounds i8, i8* %packed_weight, i64 880
  %191 = bitcast i8* %190 to <20 x float>*
  %192 = shufflevector <4 x float> %wide.load24.3, <4 x float> %wide.load25.3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %193 = shufflevector <4 x float> %wide.load26.3, <4 x float> %wide.load27.3, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %194 = shufflevector <8 x float> %192, <8 x float> %193, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %195 = shufflevector <4 x float> %wide.load28.3, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec29.3 = shufflevector <16 x float> %194, <16 x float> %195, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec29.3, <20 x float>* %191, align 16, !tbaa !857
  %196 = getelementptr inbounds i8, i8* %0, i64 704
  %197 = bitcast i8* %196 to <4 x float>*
  %wide.load24.4 = load <4 x float>, <4 x float>* %197, align 64, !tbaa !854
  %198 = getelementptr inbounds i8, i8* %0, i64 832
  %199 = bitcast i8* %198 to <4 x float>*
  %wide.load25.4 = load <4 x float>, <4 x float>* %199, align 64, !tbaa !854
  %200 = getelementptr inbounds i8, i8* %0, i64 960
  %201 = bitcast i8* %200 to <4 x float>*
  %wide.load26.4 = load <4 x float>, <4 x float>* %201, align 64, !tbaa !854
  %202 = getelementptr inbounds i8, i8* %0, i64 1088
  %203 = bitcast i8* %202 to <4 x float>*
  %wide.load27.4 = load <4 x float>, <4 x float>* %203, align 64, !tbaa !854
  %204 = getelementptr inbounds i8, i8* %0, i64 1216
  %205 = bitcast i8* %204 to <4 x float>*
  %wide.load28.4 = load <4 x float>, <4 x float>* %205, align 64, !tbaa !854
  %206 = getelementptr inbounds i8, i8* %packed_weight, i64 960
  %207 = bitcast i8* %206 to <20 x float>*
  %208 = shufflevector <4 x float> %wide.load24.4, <4 x float> %wide.load25.4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %209 = shufflevector <4 x float> %wide.load26.4, <4 x float> %wide.load27.4, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %210 = shufflevector <8 x float> %208, <8 x float> %209, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %211 = shufflevector <4 x float> %wide.load28.4, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec29.4 = shufflevector <16 x float> %210, <16 x float> %211, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec29.4, <20 x float>* %207, align 64, !tbaa !857
  %212 = getelementptr inbounds i8, i8* %0, i64 720
  %213 = bitcast i8* %212 to <4 x float>*
  %wide.load24.5 = load <4 x float>, <4 x float>* %213, align 16, !tbaa !854
  %214 = getelementptr inbounds i8, i8* %0, i64 848
  %215 = bitcast i8* %214 to <4 x float>*
  %wide.load25.5 = load <4 x float>, <4 x float>* %215, align 16, !tbaa !854
  %216 = getelementptr inbounds i8, i8* %0, i64 976
  %217 = bitcast i8* %216 to <4 x float>*
  %wide.load26.5 = load <4 x float>, <4 x float>* %217, align 16, !tbaa !854
  %218 = getelementptr inbounds i8, i8* %0, i64 1104
  %219 = bitcast i8* %218 to <4 x float>*
  %wide.load27.5 = load <4 x float>, <4 x float>* %219, align 16, !tbaa !854
  %220 = getelementptr inbounds i8, i8* %0, i64 1232
  %221 = bitcast i8* %220 to <4 x float>*
  %wide.load28.5 = load <4 x float>, <4 x float>* %221, align 16, !tbaa !854
  %222 = getelementptr inbounds i8, i8* %packed_weight, i64 1040
  %223 = bitcast i8* %222 to <20 x float>*
  %224 = shufflevector <4 x float> %wide.load24.5, <4 x float> %wide.load25.5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %225 = shufflevector <4 x float> %wide.load26.5, <4 x float> %wide.load27.5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %226 = shufflevector <8 x float> %224, <8 x float> %225, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %227 = shufflevector <4 x float> %wide.load28.5, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec29.5 = shufflevector <16 x float> %226, <16 x float> %227, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec29.5, <20 x float>* %223, align 16, !tbaa !857
  %228 = getelementptr inbounds i8, i8* %0, i64 736
  %229 = bitcast i8* %228 to <4 x float>*
  %wide.load24.6 = load <4 x float>, <4 x float>* %229, align 32, !tbaa !854
  %230 = getelementptr inbounds i8, i8* %0, i64 864
  %231 = bitcast i8* %230 to <4 x float>*
  %wide.load25.6 = load <4 x float>, <4 x float>* %231, align 32, !tbaa !854
  %232 = getelementptr inbounds i8, i8* %0, i64 992
  %233 = bitcast i8* %232 to <4 x float>*
  %wide.load26.6 = load <4 x float>, <4 x float>* %233, align 32, !tbaa !854
  %234 = getelementptr inbounds i8, i8* %0, i64 1120
  %235 = bitcast i8* %234 to <4 x float>*
  %wide.load27.6 = load <4 x float>, <4 x float>* %235, align 32, !tbaa !854
  %236 = getelementptr inbounds i8, i8* %0, i64 1248
  %237 = bitcast i8* %236 to <4 x float>*
  %wide.load28.6 = load <4 x float>, <4 x float>* %237, align 32, !tbaa !854
  %238 = getelementptr inbounds i8, i8* %packed_weight, i64 1120
  %239 = bitcast i8* %238 to <20 x float>*
  %240 = shufflevector <4 x float> %wide.load24.6, <4 x float> %wide.load25.6, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %241 = shufflevector <4 x float> %wide.load26.6, <4 x float> %wide.load27.6, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %242 = shufflevector <8 x float> %240, <8 x float> %241, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %243 = shufflevector <4 x float> %wide.load28.6, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec29.6 = shufflevector <16 x float> %242, <16 x float> %243, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec29.6, <20 x float>* %239, align 32, !tbaa !857
  %244 = getelementptr inbounds i8, i8* %0, i64 752
  %245 = bitcast i8* %244 to <4 x float>*
  %wide.load24.7 = load <4 x float>, <4 x float>* %245, align 16, !tbaa !854
  %246 = getelementptr inbounds i8, i8* %0, i64 880
  %247 = bitcast i8* %246 to <4 x float>*
  %wide.load25.7 = load <4 x float>, <4 x float>* %247, align 16, !tbaa !854
  %248 = getelementptr inbounds i8, i8* %0, i64 1008
  %249 = bitcast i8* %248 to <4 x float>*
  %wide.load26.7 = load <4 x float>, <4 x float>* %249, align 16, !tbaa !854
  %250 = getelementptr inbounds i8, i8* %0, i64 1136
  %251 = bitcast i8* %250 to <4 x float>*
  %wide.load27.7 = load <4 x float>, <4 x float>* %251, align 16, !tbaa !854
  %252 = getelementptr inbounds i8, i8* %0, i64 1264
  %253 = bitcast i8* %252 to <4 x float>*
  %wide.load28.7 = load <4 x float>, <4 x float>* %253, align 16, !tbaa !854
  %254 = getelementptr inbounds i8, i8* %packed_weight, i64 1200
  %255 = bitcast i8* %254 to <20 x float>*
  %256 = shufflevector <4 x float> %wide.load24.7, <4 x float> %wide.load25.7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %257 = shufflevector <4 x float> %wide.load26.7, <4 x float> %wide.load27.7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %258 = shufflevector <8 x float> %256, <8 x float> %257, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %259 = shufflevector <4 x float> %wide.load28.7, <4 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %interleaved.vec29.7 = shufflevector <16 x float> %258, <16 x float> %259, <20 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 1, i32 5, i32 9, i32 13, i32 17, i32 2, i32 6, i32 10, i32 14, i32 18, i32 3, i32 7, i32 11, i32 15, i32 19>
  store <20 x float> %interleaved.vec29.7, <20 x float>* %255, align 16, !tbaa !857
  %260 = alloca %closure_loop_parallel_x.outer.y.outer.fused.0, align 8
  %261 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused.0, %closure_loop_parallel_x.outer.y.outer.fused.0* %260, i64 0, i32 0
  store i8* %1, i8** %261, align 8
  %262 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused.0, %closure_loop_parallel_x.outer.y.outer.fused.0* %260, i64 0, i32 1
  store i8* %packed_weight, i8** %262, align 8
  %263 = getelementptr inbounds %closure_loop_parallel_x.outer.y.outer.fused.0, %closure_loop_parallel_x.outer.y.outer.fused.0* %260, i64 0, i32 2
  store i8* %2, i8** %263, align 8
  %264 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !5
  %265 = bitcast %closure_loop_parallel_x.outer.y.outer.fused.0* %260 to i8*
  %266 = call i32 %264(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.89, i8* nonnull %265, i32 0)
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %call_end, label %common.ret, !prof !4

common.ret:                                       ; preds = %call_end, %vector.body, %entry
  %common.ret.op = phi i32 [ -1, %entry ], [ %266, %vector.body ], [ %., %call_end ]
  ret i32 %common.ret.op

call_end:                                         ; preds = %vector.body
  %268 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !5
  %269 = call i32 %268(i32 1, i32 %3, i8* nonnull %packed_weight)
  %.not = icmp ne i32 %269, 0
  %. = sext i1 %.not to i32
  br label %common.ret
}

; Function Attrs: nofree nosync nounwind
define private i32 @__tvm_parallel_lambda.89(i32 %0, %0* nocapture readonly %1, i8* nocapture readonly %2) #5 {
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
  %13 = add nsw i32 %12, 1
  %14 = sdiv i32 %13, %12
  %15 = add nsw i32 %0, 1
  %16 = mul nsw i32 %14, %15
  %17 = icmp slt i32 %16, 2
  %18 = select i1 %17, i32 %16, i32 2
  %19 = mul nsw i32 %14, %0
  %20 = icmp slt i32 %19, 2
  %21 = select i1 %20, i32 %19, i32 2
  %22 = icmp slt i32 %21, %18
  br i1 %22, label %for_begin_k.outer.preheader.preheader, label %for_end_x.outer.y.outer.fused, !prof !4

for_begin_k.outer.preheader.preheader:            ; preds = %parallel_closure_entry
  %23 = sext i32 %21 to i64
  %wide.trip.count = sext i32 %18 to i64
  %24 = load float, float* %4, align 4, !tbaa !860
  %25 = insertelement <5 x float> undef, float %24, i64 0
  %26 = shufflevector <5 x float> %25, <5 x float> undef, <5 x i32> zeroinitializer
  %27 = getelementptr inbounds float, float* %4, i64 1
  %28 = load float, float* %27, align 4, !tbaa !860
  %29 = insertelement <5 x float> undef, float %28, i64 0
  %30 = shufflevector <5 x float> %29, <5 x float> undef, <5 x i32> zeroinitializer
  %31 = getelementptr inbounds float, float* %4, i64 2
  %32 = load float, float* %31, align 4, !tbaa !860
  %33 = insertelement <5 x float> undef, float %32, i64 0
  %34 = shufflevector <5 x float> %33, <5 x float> undef, <5 x i32> zeroinitializer
  %35 = getelementptr inbounds float, float* %4, i64 3
  %36 = load float, float* %35, align 4, !tbaa !860
  %37 = insertelement <5 x float> undef, float %36, i64 0
  %38 = shufflevector <5 x float> %37, <5 x float> undef, <5 x i32> zeroinitializer
  %39 = getelementptr inbounds float, float* %4, i64 4
  %40 = load float, float* %39, align 4, !tbaa !860
  %41 = insertelement <5 x float> undef, float %40, i64 0
  %42 = shufflevector <5 x float> %41, <5 x float> undef, <5 x i32> zeroinitializer
  %43 = getelementptr inbounds float, float* %4, i64 5
  %44 = load float, float* %43, align 4, !tbaa !860
  %45 = insertelement <5 x float> undef, float %44, i64 0
  %46 = shufflevector <5 x float> %45, <5 x float> undef, <5 x i32> zeroinitializer
  %47 = getelementptr inbounds float, float* %4, i64 6
  %48 = load float, float* %47, align 4, !tbaa !860
  %49 = insertelement <5 x float> undef, float %48, i64 0
  %50 = shufflevector <5 x float> %49, <5 x float> undef, <5 x i32> zeroinitializer
  %51 = getelementptr inbounds float, float* %4, i64 7
  %52 = load float, float* %51, align 4, !tbaa !860
  %53 = insertelement <5 x float> undef, float %52, i64 0
  %54 = shufflevector <5 x float> %53, <5 x float> undef, <5 x i32> zeroinitializer
  %55 = getelementptr inbounds float, float* %4, i64 8
  %56 = load float, float* %55, align 4, !tbaa !860
  %57 = insertelement <5 x float> undef, float %56, i64 0
  %58 = shufflevector <5 x float> %57, <5 x float> undef, <5 x i32> zeroinitializer
  %59 = getelementptr inbounds float, float* %4, i64 9
  %60 = load float, float* %59, align 4, !tbaa !860
  %61 = insertelement <5 x float> undef, float %60, i64 0
  %62 = shufflevector <5 x float> %61, <5 x float> undef, <5 x i32> zeroinitializer
  %63 = getelementptr inbounds float, float* %4, i64 10
  %64 = load float, float* %63, align 4, !tbaa !860
  %65 = insertelement <5 x float> undef, float %64, i64 0
  %66 = shufflevector <5 x float> %65, <5 x float> undef, <5 x i32> zeroinitializer
  %67 = getelementptr inbounds float, float* %4, i64 11
  %68 = load float, float* %67, align 4, !tbaa !860
  %69 = insertelement <5 x float> undef, float %68, i64 0
  %70 = shufflevector <5 x float> %69, <5 x float> undef, <5 x i32> zeroinitializer
  %71 = getelementptr inbounds float, float* %4, i64 12
  %72 = load float, float* %71, align 4, !tbaa !860
  %73 = insertelement <5 x float> undef, float %72, i64 0
  %74 = shufflevector <5 x float> %73, <5 x float> undef, <5 x i32> zeroinitializer
  %75 = getelementptr inbounds float, float* %4, i64 13
  %76 = load float, float* %75, align 4, !tbaa !860
  %77 = insertelement <5 x float> undef, float %76, i64 0
  %78 = shufflevector <5 x float> %77, <5 x float> undef, <5 x i32> zeroinitializer
  %79 = getelementptr inbounds float, float* %4, i64 14
  %80 = load float, float* %79, align 4, !tbaa !860
  %81 = insertelement <5 x float> undef, float %80, i64 0
  %82 = shufflevector <5 x float> %81, <5 x float> undef, <5 x i32> zeroinitializer
  %83 = getelementptr inbounds float, float* %4, i64 15
  %84 = load float, float* %83, align 4, !tbaa !860
  %85 = insertelement <5 x float> undef, float %84, i64 0
  %86 = shufflevector <5 x float> %85, <5 x float> undef, <5 x i32> zeroinitializer
  %87 = getelementptr inbounds float, float* %4, i64 16
  %88 = load float, float* %87, align 4, !tbaa !860
  %89 = insertelement <5 x float> undef, float %88, i64 0
  %90 = shufflevector <5 x float> %89, <5 x float> undef, <5 x i32> zeroinitializer
  %91 = getelementptr inbounds float, float* %4, i64 17
  %92 = load float, float* %91, align 4, !tbaa !860
  %93 = insertelement <5 x float> undef, float %92, i64 0
  %94 = shufflevector <5 x float> %93, <5 x float> undef, <5 x i32> zeroinitializer
  %95 = getelementptr inbounds float, float* %4, i64 18
  %96 = load float, float* %95, align 4, !tbaa !860
  %97 = insertelement <5 x float> undef, float %96, i64 0
  %98 = shufflevector <5 x float> %97, <5 x float> undef, <5 x i32> zeroinitializer
  %99 = getelementptr inbounds float, float* %4, i64 19
  %100 = load float, float* %99, align 4, !tbaa !860
  %101 = insertelement <5 x float> undef, float %100, i64 0
  %102 = shufflevector <5 x float> %101, <5 x float> undef, <5 x i32> zeroinitializer
  %103 = getelementptr inbounds float, float* %4, i64 20
  %104 = load float, float* %103, align 4, !tbaa !860
  %105 = insertelement <5 x float> undef, float %104, i64 0
  %106 = shufflevector <5 x float> %105, <5 x float> undef, <5 x i32> zeroinitializer
  %107 = getelementptr inbounds float, float* %4, i64 21
  %108 = load float, float* %107, align 4, !tbaa !860
  %109 = insertelement <5 x float> undef, float %108, i64 0
  %110 = shufflevector <5 x float> %109, <5 x float> undef, <5 x i32> zeroinitializer
  %111 = getelementptr inbounds float, float* %4, i64 22
  %112 = load float, float* %111, align 4, !tbaa !860
  %113 = insertelement <5 x float> undef, float %112, i64 0
  %114 = shufflevector <5 x float> %113, <5 x float> undef, <5 x i32> zeroinitializer
  %115 = getelementptr inbounds float, float* %4, i64 23
  %116 = load float, float* %115, align 4, !tbaa !860
  %117 = insertelement <5 x float> undef, float %116, i64 0
  %118 = shufflevector <5 x float> %117, <5 x float> undef, <5 x i32> zeroinitializer
  %119 = getelementptr inbounds float, float* %4, i64 24
  %120 = load float, float* %119, align 4, !tbaa !860
  %121 = insertelement <5 x float> undef, float %120, i64 0
  %122 = shufflevector <5 x float> %121, <5 x float> undef, <5 x i32> zeroinitializer
  %123 = getelementptr inbounds float, float* %4, i64 25
  %124 = load float, float* %123, align 4, !tbaa !860
  %125 = insertelement <5 x float> undef, float %124, i64 0
  %126 = shufflevector <5 x float> %125, <5 x float> undef, <5 x i32> zeroinitializer
  %127 = getelementptr inbounds float, float* %4, i64 26
  %128 = load float, float* %127, align 4, !tbaa !860
  %129 = insertelement <5 x float> undef, float %128, i64 0
  %130 = shufflevector <5 x float> %129, <5 x float> undef, <5 x i32> zeroinitializer
  %131 = getelementptr inbounds float, float* %4, i64 27
  %132 = load float, float* %131, align 4, !tbaa !860
  %133 = insertelement <5 x float> undef, float %132, i64 0
  %134 = shufflevector <5 x float> %133, <5 x float> undef, <5 x i32> zeroinitializer
  %135 = getelementptr inbounds float, float* %4, i64 28
  %136 = load float, float* %135, align 4, !tbaa !860
  %137 = insertelement <5 x float> undef, float %136, i64 0
  %138 = shufflevector <5 x float> %137, <5 x float> undef, <5 x i32> zeroinitializer
  %139 = getelementptr inbounds float, float* %4, i64 29
  %140 = load float, float* %139, align 4, !tbaa !860
  %141 = insertelement <5 x float> undef, float %140, i64 0
  %142 = shufflevector <5 x float> %141, <5 x float> undef, <5 x i32> zeroinitializer
  %143 = getelementptr inbounds float, float* %4, i64 30
  %144 = load float, float* %143, align 4, !tbaa !860
  %145 = insertelement <5 x float> undef, float %144, i64 0
  %146 = shufflevector <5 x float> %145, <5 x float> undef, <5 x i32> zeroinitializer
  %147 = getelementptr inbounds float, float* %4, i64 31
  %148 = load float, float* %147, align 4, !tbaa !860
  %149 = insertelement <5 x float> undef, float %148, i64 0
  %150 = shufflevector <5 x float> %149, <5 x float> undef, <5 x i32> zeroinitializer
  br label %for_begin_k.outer.preheader

for_begin_k.outer.preheader:                      ; preds = %for_begin_k.outer.preheader.preheader, %for_begin_k.outer.preheader
  %indvars.iv = phi i64 [ %23, %for_begin_k.outer.preheader.preheader ], [ %indvars.iv.next, %for_begin_k.outer.preheader ]
  %151 = mul nsw i64 %indvars.iv, 160
  %152 = getelementptr inbounds float, float* %7, i64 %151
  %153 = bitcast float* %152 to <5 x float>*
  %154 = load <5 x float>, <5 x float>* %153, align 4, !tbaa !857
  %155 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %26, <5 x float> %154, <5 x float> zeroinitializer)
  %156 = or i64 %151, 5
  %157 = getelementptr inbounds float, float* %7, i64 %156
  %158 = bitcast float* %157 to <5 x float>*
  %159 = load <5 x float>, <5 x float>* %158, align 4, !tbaa !857
  %160 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %30, <5 x float> %159, <5 x float> %155)
  %161 = or i64 %151, 10
  %162 = getelementptr inbounds float, float* %7, i64 %161
  %163 = bitcast float* %162 to <5 x float>*
  %164 = load <5 x float>, <5 x float>* %163, align 4, !tbaa !857
  %165 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %34, <5 x float> %164, <5 x float> %160)
  %166 = or i64 %151, 15
  %167 = getelementptr inbounds float, float* %7, i64 %166
  %168 = bitcast float* %167 to <5 x float>*
  %169 = load <5 x float>, <5 x float>* %168, align 4, !tbaa !857
  %170 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %38, <5 x float> %169, <5 x float> %165)
  %171 = or i64 %151, 20
  %172 = getelementptr inbounds float, float* %7, i64 %171
  %173 = bitcast float* %172 to <5 x float>*
  %174 = load <5 x float>, <5 x float>* %173, align 4, !tbaa !857
  %175 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %42, <5 x float> %174, <5 x float> %170)
  %176 = or i64 %151, 25
  %177 = getelementptr inbounds float, float* %7, i64 %176
  %178 = bitcast float* %177 to <5 x float>*
  %179 = load <5 x float>, <5 x float>* %178, align 4, !tbaa !857
  %180 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %46, <5 x float> %179, <5 x float> %175)
  %181 = or i64 %151, 30
  %182 = getelementptr inbounds float, float* %7, i64 %181
  %183 = bitcast float* %182 to <5 x float>*
  %184 = load <5 x float>, <5 x float>* %183, align 4, !tbaa !857
  %185 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %50, <5 x float> %184, <5 x float> %180)
  %186 = add nsw i64 %151, 35
  %187 = getelementptr inbounds float, float* %7, i64 %186
  %188 = bitcast float* %187 to <5 x float>*
  %189 = load <5 x float>, <5 x float>* %188, align 4, !tbaa !857
  %190 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %54, <5 x float> %189, <5 x float> %185)
  %191 = add nsw i64 %151, 40
  %192 = getelementptr inbounds float, float* %7, i64 %191
  %193 = bitcast float* %192 to <5 x float>*
  %194 = load <5 x float>, <5 x float>* %193, align 4, !tbaa !857
  %195 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %58, <5 x float> %194, <5 x float> %190)
  %196 = add nsw i64 %151, 45
  %197 = getelementptr inbounds float, float* %7, i64 %196
  %198 = bitcast float* %197 to <5 x float>*
  %199 = load <5 x float>, <5 x float>* %198, align 4, !tbaa !857
  %200 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %62, <5 x float> %199, <5 x float> %195)
  %201 = add nsw i64 %151, 50
  %202 = getelementptr inbounds float, float* %7, i64 %201
  %203 = bitcast float* %202 to <5 x float>*
  %204 = load <5 x float>, <5 x float>* %203, align 4, !tbaa !857
  %205 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %66, <5 x float> %204, <5 x float> %200)
  %206 = add nsw i64 %151, 55
  %207 = getelementptr inbounds float, float* %7, i64 %206
  %208 = bitcast float* %207 to <5 x float>*
  %209 = load <5 x float>, <5 x float>* %208, align 4, !tbaa !857
  %210 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %70, <5 x float> %209, <5 x float> %205)
  %211 = add nsw i64 %151, 60
  %212 = getelementptr inbounds float, float* %7, i64 %211
  %213 = bitcast float* %212 to <5 x float>*
  %214 = load <5 x float>, <5 x float>* %213, align 4, !tbaa !857
  %215 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %74, <5 x float> %214, <5 x float> %210)
  %216 = add nsw i64 %151, 65
  %217 = getelementptr inbounds float, float* %7, i64 %216
  %218 = bitcast float* %217 to <5 x float>*
  %219 = load <5 x float>, <5 x float>* %218, align 4, !tbaa !857
  %220 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %78, <5 x float> %219, <5 x float> %215)
  %221 = add nsw i64 %151, 70
  %222 = getelementptr inbounds float, float* %7, i64 %221
  %223 = bitcast float* %222 to <5 x float>*
  %224 = load <5 x float>, <5 x float>* %223, align 4, !tbaa !857
  %225 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %82, <5 x float> %224, <5 x float> %220)
  %226 = add nsw i64 %151, 75
  %227 = getelementptr inbounds float, float* %7, i64 %226
  %228 = bitcast float* %227 to <5 x float>*
  %229 = load <5 x float>, <5 x float>* %228, align 4, !tbaa !857
  %230 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %86, <5 x float> %229, <5 x float> %225)
  %231 = add nsw i64 %151, 80
  %232 = getelementptr inbounds float, float* %7, i64 %231
  %233 = bitcast float* %232 to <5 x float>*
  %234 = load <5 x float>, <5 x float>* %233, align 4, !tbaa !857
  %235 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %90, <5 x float> %234, <5 x float> %230)
  %236 = add nsw i64 %151, 85
  %237 = getelementptr inbounds float, float* %7, i64 %236
  %238 = bitcast float* %237 to <5 x float>*
  %239 = load <5 x float>, <5 x float>* %238, align 4, !tbaa !857
  %240 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %94, <5 x float> %239, <5 x float> %235)
  %241 = add nsw i64 %151, 90
  %242 = getelementptr inbounds float, float* %7, i64 %241
  %243 = bitcast float* %242 to <5 x float>*
  %244 = load <5 x float>, <5 x float>* %243, align 4, !tbaa !857
  %245 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %98, <5 x float> %244, <5 x float> %240)
  %246 = add nsw i64 %151, 95
  %247 = getelementptr inbounds float, float* %7, i64 %246
  %248 = bitcast float* %247 to <5 x float>*
  %249 = load <5 x float>, <5 x float>* %248, align 4, !tbaa !857
  %250 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %102, <5 x float> %249, <5 x float> %245)
  %251 = add nsw i64 %151, 100
  %252 = getelementptr inbounds float, float* %7, i64 %251
  %253 = bitcast float* %252 to <5 x float>*
  %254 = load <5 x float>, <5 x float>* %253, align 4, !tbaa !857
  %255 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %106, <5 x float> %254, <5 x float> %250)
  %256 = add nsw i64 %151, 105
  %257 = getelementptr inbounds float, float* %7, i64 %256
  %258 = bitcast float* %257 to <5 x float>*
  %259 = load <5 x float>, <5 x float>* %258, align 4, !tbaa !857
  %260 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %110, <5 x float> %259, <5 x float> %255)
  %261 = add nsw i64 %151, 110
  %262 = getelementptr inbounds float, float* %7, i64 %261
  %263 = bitcast float* %262 to <5 x float>*
  %264 = load <5 x float>, <5 x float>* %263, align 4, !tbaa !857
  %265 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %114, <5 x float> %264, <5 x float> %260)
  %266 = add nsw i64 %151, 115
  %267 = getelementptr inbounds float, float* %7, i64 %266
  %268 = bitcast float* %267 to <5 x float>*
  %269 = load <5 x float>, <5 x float>* %268, align 4, !tbaa !857
  %270 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %118, <5 x float> %269, <5 x float> %265)
  %271 = add nsw i64 %151, 120
  %272 = getelementptr inbounds float, float* %7, i64 %271
  %273 = bitcast float* %272 to <5 x float>*
  %274 = load <5 x float>, <5 x float>* %273, align 4, !tbaa !857
  %275 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %122, <5 x float> %274, <5 x float> %270)
  %276 = add nsw i64 %151, 125
  %277 = getelementptr inbounds float, float* %7, i64 %276
  %278 = bitcast float* %277 to <5 x float>*
  %279 = load <5 x float>, <5 x float>* %278, align 4, !tbaa !857
  %280 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %126, <5 x float> %279, <5 x float> %275)
  %281 = add nsw i64 %151, 130
  %282 = getelementptr inbounds float, float* %7, i64 %281
  %283 = bitcast float* %282 to <5 x float>*
  %284 = load <5 x float>, <5 x float>* %283, align 4, !tbaa !857
  %285 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %130, <5 x float> %284, <5 x float> %280)
  %286 = add nsw i64 %151, 135
  %287 = getelementptr inbounds float, float* %7, i64 %286
  %288 = bitcast float* %287 to <5 x float>*
  %289 = load <5 x float>, <5 x float>* %288, align 4, !tbaa !857
  %290 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %134, <5 x float> %289, <5 x float> %285)
  %291 = add nsw i64 %151, 140
  %292 = getelementptr inbounds float, float* %7, i64 %291
  %293 = bitcast float* %292 to <5 x float>*
  %294 = load <5 x float>, <5 x float>* %293, align 4, !tbaa !857
  %295 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %138, <5 x float> %294, <5 x float> %290)
  %296 = add nsw i64 %151, 145
  %297 = getelementptr inbounds float, float* %7, i64 %296
  %298 = bitcast float* %297 to <5 x float>*
  %299 = load <5 x float>, <5 x float>* %298, align 4, !tbaa !857
  %300 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %142, <5 x float> %299, <5 x float> %295)
  %301 = add nsw i64 %151, 150
  %302 = getelementptr inbounds float, float* %7, i64 %301
  %303 = bitcast float* %302 to <5 x float>*
  %304 = load <5 x float>, <5 x float>* %303, align 4, !tbaa !857
  %305 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %146, <5 x float> %304, <5 x float> %300)
  %306 = add nsw i64 %151, 155
  %307 = getelementptr inbounds float, float* %7, i64 %306
  %308 = bitcast float* %307 to <5 x float>*
  %309 = load <5 x float>, <5 x float>* %308, align 4, !tbaa !857
  %310 = tail call <5 x float> @llvm.fmuladd.v5f32(<5 x float> %150, <5 x float> %309, <5 x float> %305)
  %311 = mul nsw i64 %indvars.iv, 5
  %312 = getelementptr inbounds float, float* %10, i64 %311
  %313 = bitcast float* %312 to <5 x float>*
  store <5 x float> %310, <5 x float>* %313, align 4, !tbaa !863
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for_end_x.outer.y.outer.fused, label %for_begin_k.outer.preheader, !prof !45

for_end_x.outer.y.outer.fused:                    ; preds = %for_begin_k.outer.preheader, %parallel_closure_entry
  ret i32 0
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare <5 x float> @llvm.fmuladd.v5f32(<5 x float>, <5 x float>, <5 x float>) #6

define dllexport i32 @tvmgen_default_fused_nn_max_pool2d(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end48, %assert_fail47, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail37, %assert_fail35, %assert_fail33, %assert_fail31, %assert_fail29, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail47 ], [ 0, %assert_end48 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.90, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %1**
  %arg049 = load %1*, %1** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !866
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %1**
  %arg150 = load %1*, %1** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !880
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
  %tensor = load i8*, i8** %18, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %tensor, i64 128) ]
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
  tail call void %21(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.91, i64 0, i64 0))
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
  tail call void %22(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.92, i64 0, i64 0))
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
  %39 = load i64, i64* %arg0.shape, align 8, !tbaa !882
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %assert_end12, label %assert_fail11, !prof !4

assert_fail11:                                    ; preds = %assert_end10
  %42 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %42(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0))
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10
  %43 = getelementptr inbounds i64, i64* %arg0.shape, i64 1
  %44 = load i64, i64* %43, align 8, !tbaa !896
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %assert_end14, label %assert_fail13, !prof !4

assert_fail13:                                    ; preds = %assert_end12
  %47 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %47(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.64, i64 0, i64 0))
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %48 = getelementptr inbounds i64, i64* %arg0.shape, i64 2
  %49 = load i64, i64* %48, align 8, !tbaa !898
  %50 = trunc i64 %49 to i32
  %51 = icmp eq i32 %50, 28
  br i1 %51, label %assert_end16, label %assert_fail15, !prof !4

assert_fail15:                                    ; preds = %assert_end14
  %52 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %52(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.93, i64 0, i64 0))
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %53 = getelementptr inbounds i64, i64* %arg0.shape, i64 3
  %54 = load i64, i64* %53, align 8, !tbaa !901
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %55, 28
  br i1 %56, label %assert_end18, label %assert_fail17, !prof !4

assert_fail17:                                    ; preds = %assert_end16
  %57 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %57(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.94, i64 0, i64 0))
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !45

if_then:                                          ; preds = %assert_end18
  %58 = bitcast i64* %arg0.strides to <4 x i64>*
  %59 = load <4 x i64>, <4 x i64>* %58, align 8, !tbaa !903
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
  tail call void %67(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.95, i64 0, i64 0))
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
  tail call void %76(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.68, i64 0, i64 0))
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
  %89 = load i64, i64* %arg1.shape, align 8, !tbaa !915
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %assert_end32, label %assert_fail31, !prof !4

assert_fail31:                                    ; preds = %assert_end30
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %92(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.14, i64 0, i64 0))
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %93 = getelementptr inbounds i64, i64* %arg1.shape, i64 1
  %94 = load i64, i64* %93, align 8, !tbaa !929
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %assert_end34, label %assert_fail33, !prof !4

assert_fail33:                                    ; preds = %assert_end32
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %97(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.69, i64 0, i64 0))
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %98 = getelementptr inbounds i64, i64* %arg1.shape, i64 2
  %99 = load i64, i64* %98, align 8, !tbaa !931
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %100, 14
  br i1 %101, label %assert_end36, label %assert_fail35, !prof !4

assert_fail35:                                    ; preds = %assert_end34
  %102 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %102(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.96, i64 0, i64 0))
  br label %common.ret

assert_end36:                                     ; preds = %assert_end34
  %103 = getelementptr inbounds i64, i64* %arg1.shape, i64 3
  %104 = load i64, i64* %103, align 8, !tbaa !934
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %105, 14
  br i1 %106, label %assert_end38, label %assert_fail37, !prof !4

assert_fail37:                                    ; preds = %assert_end36
  %107 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %107(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.97, i64 0, i64 0))
  br label %common.ret

assert_end38:                                     ; preds = %assert_end36
  %.not51 = icmp eq i64* %arg1.strides, null
  br i1 %.not51, label %if_end40, label %if_then39, !prof !45

if_then39:                                        ; preds = %assert_end38
  %108 = bitcast i64* %arg1.strides to <4 x i64>*
  %109 = load <4 x i64>, <4 x i64>* %108, align 8, !tbaa !936
  %110 = trunc <4 x i64> %109 to <4 x i32>
  %111 = icmp ne <4 x i32> %110, <i32 196, i32 196, i32 14, i32 1>
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
  tail call void %117(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.98, i64 0, i64 0))
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
  tail call fastcc void @tvmgen_default_fused_nn_max_pool2d_compute_(i8* %tensor, i8* %placeholder)
  br label %common.ret
}

; Function Attrs: nofree noinline norecurse nosync nounwind
define internal fastcc void @tvmgen_default_fused_nn_max_pool2d_compute_(i8* noalias nocapture align 128 %0, i8* noalias nocapture readonly align 128 %1) unnamed_addr #1 {
entry:
  %2 = bitcast i8* %0 to float*
  %3 = bitcast i8* %1 to float*
  br label %for_begin_ax3.preheader

for_begin_ax3.preheader:                          ; preds = %entry, %for_begin_ax3.preheader
  %indvars.iv11 = phi i64 [ 0, %entry ], [ %indvars.iv.next12, %for_begin_ax3.preheader ]
  %4 = mul nuw nsw i64 %indvars.iv11, 14
  %5 = mul nuw nsw i64 %indvars.iv11, 56
  %6 = getelementptr inbounds float, float* %2, i64 %4
  %7 = getelementptr inbounds float, float* %3, i64 %5
  %8 = load float, float* %7, align 32, !tbaa !948
  %9 = fcmp olt float %8, 0xC7EFFFFFE0000000
  %10 = select i1 %9, float 0xC7EFFFFFE0000000, float %8
  %11 = or i64 %5, 1
  %12 = getelementptr inbounds float, float* %3, i64 %11
  %13 = load float, float* %12, align 4, !tbaa !948
  %14 = fcmp ogt float %10, %13
  %15 = select i1 %14, float %10, float %13
  %16 = add nuw nsw i64 %5, 28
  %17 = getelementptr inbounds float, float* %3, i64 %16
  %18 = load float, float* %17, align 16, !tbaa !948
  %19 = fcmp ogt float %15, %18
  %20 = select i1 %19, float %15, float %18
  %21 = add nuw nsw i64 %5, 29
  %22 = getelementptr inbounds float, float* %3, i64 %21
  %23 = load float, float* %22, align 4, !tbaa !948
  %24 = fcmp ogt float %20, %23
  %25 = select i1 %24, float %20, float %23
  store float %25, float* %6, align 8, !tbaa !951
  %26 = or i64 %4, 1
  %27 = getelementptr inbounds float, float* %2, i64 %26
  %28 = or i64 %5, 2
  %29 = getelementptr inbounds float, float* %3, i64 %28
  %30 = load float, float* %29, align 8, !tbaa !948
  %31 = fcmp olt float %30, 0xC7EFFFFFE0000000
  %32 = select i1 %31, float 0xC7EFFFFFE0000000, float %30
  %33 = or i64 %5, 3
  %34 = getelementptr inbounds float, float* %3, i64 %33
  %35 = load float, float* %34, align 4, !tbaa !948
  %36 = fcmp ogt float %32, %35
  %37 = select i1 %36, float %32, float %35
  %38 = add nuw i64 %5, 30
  %39 = getelementptr inbounds float, float* %3, i64 %38
  %40 = load float, float* %39, align 8, !tbaa !948
  %41 = fcmp ogt float %37, %40
  %42 = select i1 %41, float %37, float %40
  %43 = add nuw i64 %5, 31
  %44 = getelementptr inbounds float, float* %3, i64 %43
  %45 = load float, float* %44, align 4, !tbaa !948
  %46 = fcmp ogt float %42, %45
  %47 = select i1 %46, float %42, float %45
  store float %47, float* %27, align 4, !tbaa !951
  %48 = add nuw nsw i64 %4, 2
  %49 = getelementptr inbounds float, float* %2, i64 %48
  %50 = or i64 %5, 4
  %51 = getelementptr inbounds float, float* %3, i64 %50
  %52 = load float, float* %51, align 16, !tbaa !948
  %53 = fcmp olt float %52, 0xC7EFFFFFE0000000
  %54 = select i1 %53, float 0xC7EFFFFFE0000000, float %52
  %55 = or i64 %5, 5
  %56 = getelementptr inbounds float, float* %3, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !948
  %58 = fcmp ogt float %54, %57
  %59 = select i1 %58, float %54, float %57
  %60 = add nuw i64 %5, 32
  %61 = getelementptr inbounds float, float* %3, i64 %60
  %62 = load float, float* %61, align 32, !tbaa !948
  %63 = fcmp ogt float %59, %62
  %64 = select i1 %63, float %59, float %62
  %65 = add nuw i64 %5, 33
  %66 = getelementptr inbounds float, float* %3, i64 %65
  %67 = load float, float* %66, align 4, !tbaa !948
  %68 = fcmp ogt float %64, %67
  %69 = select i1 %68, float %64, float %67
  store float %69, float* %49, align 8, !tbaa !951
  %70 = add nuw nsw i64 %4, 3
  %71 = getelementptr inbounds float, float* %2, i64 %70
  %72 = or i64 %5, 6
  %73 = getelementptr inbounds float, float* %3, i64 %72
  %74 = load float, float* %73, align 8, !tbaa !948
  %75 = fcmp olt float %74, 0xC7EFFFFFE0000000
  %76 = select i1 %75, float 0xC7EFFFFFE0000000, float %74
  %77 = or i64 %5, 7
  %78 = getelementptr inbounds float, float* %3, i64 %77
  %79 = load float, float* %78, align 4, !tbaa !948
  %80 = fcmp ogt float %76, %79
  %81 = select i1 %80, float %76, float %79
  %82 = add nuw i64 %5, 34
  %83 = getelementptr inbounds float, float* %3, i64 %82
  %84 = load float, float* %83, align 8, !tbaa !948
  %85 = fcmp ogt float %81, %84
  %86 = select i1 %85, float %81, float %84
  %87 = add nuw i64 %5, 35
  %88 = getelementptr inbounds float, float* %3, i64 %87
  %89 = load float, float* %88, align 4, !tbaa !948
  %90 = fcmp ogt float %86, %89
  %91 = select i1 %90, float %86, float %89
  store float %91, float* %71, align 4, !tbaa !951
  %92 = add nuw nsw i64 %4, 4
  %93 = getelementptr inbounds float, float* %2, i64 %92
  %94 = add nuw nsw i64 %5, 8
  %95 = getelementptr inbounds float, float* %3, i64 %94
  %96 = load float, float* %95, align 32, !tbaa !948
  %97 = fcmp olt float %96, 0xC7EFFFFFE0000000
  %98 = select i1 %97, float 0xC7EFFFFFE0000000, float %96
  %99 = or i64 %94, 1
  %100 = getelementptr inbounds float, float* %3, i64 %99
  %101 = load float, float* %100, align 4, !tbaa !948
  %102 = fcmp ogt float %98, %101
  %103 = select i1 %102, float %98, float %101
  %104 = add nuw nsw i64 %5, 36
  %105 = getelementptr inbounds float, float* %3, i64 %104
  %106 = load float, float* %105, align 16, !tbaa !948
  %107 = fcmp ogt float %103, %106
  %108 = select i1 %107, float %103, float %106
  %109 = add nuw nsw i64 %5, 37
  %110 = getelementptr inbounds float, float* %3, i64 %109
  %111 = load float, float* %110, align 4, !tbaa !948
  %112 = fcmp ogt float %108, %111
  %113 = select i1 %112, float %108, float %111
  store float %113, float* %93, align 8, !tbaa !951
  %114 = add nuw nsw i64 %4, 5
  %115 = getelementptr inbounds float, float* %2, i64 %114
  %116 = add nuw nsw i64 %5, 10
  %117 = getelementptr inbounds float, float* %3, i64 %116
  %118 = load float, float* %117, align 8, !tbaa !948
  %119 = fcmp olt float %118, 0xC7EFFFFFE0000000
  %120 = select i1 %119, float 0xC7EFFFFFE0000000, float %118
  %121 = or i64 %116, 1
  %122 = getelementptr inbounds float, float* %3, i64 %121
  %123 = load float, float* %122, align 4, !tbaa !948
  %124 = fcmp ogt float %120, %123
  %125 = select i1 %124, float %120, float %123
  %126 = add nuw nsw i64 %5, 38
  %127 = getelementptr inbounds float, float* %3, i64 %126
  %128 = load float, float* %127, align 8, !tbaa !948
  %129 = fcmp ogt float %125, %128
  %130 = select i1 %129, float %125, float %128
  %131 = add nuw nsw i64 %5, 39
  %132 = getelementptr inbounds float, float* %3, i64 %131
  %133 = load float, float* %132, align 4, !tbaa !948
  %134 = fcmp ogt float %130, %133
  %135 = select i1 %134, float %130, float %133
  store float %135, float* %115, align 4, !tbaa !951
  %136 = add nuw nsw i64 %4, 6
  %137 = getelementptr inbounds float, float* %2, i64 %136
  %138 = add nuw nsw i64 %5, 12
  %139 = getelementptr inbounds float, float* %3, i64 %138
  %140 = load float, float* %139, align 16, !tbaa !948
  %141 = fcmp olt float %140, 0xC7EFFFFFE0000000
  %142 = select i1 %141, float 0xC7EFFFFFE0000000, float %140
  %143 = or i64 %138, 1
  %144 = getelementptr inbounds float, float* %3, i64 %143
  %145 = load float, float* %144, align 4, !tbaa !948
  %146 = fcmp ogt float %142, %145
  %147 = select i1 %146, float %142, float %145
  %148 = add nuw nsw i64 %5, 40
  %149 = getelementptr inbounds float, float* %3, i64 %148
  %150 = load float, float* %149, align 32, !tbaa !948
  %151 = fcmp ogt float %147, %150
  %152 = select i1 %151, float %147, float %150
  %153 = add nuw nsw i64 %5, 41
  %154 = getelementptr inbounds float, float* %3, i64 %153
  %155 = load float, float* %154, align 4, !tbaa !948
  %156 = fcmp ogt float %152, %155
  %157 = select i1 %156, float %152, float %155
  store float %157, float* %137, align 8, !tbaa !951
  %158 = add nuw nsw i64 %4, 7
  %159 = getelementptr inbounds float, float* %2, i64 %158
  %160 = add nuw nsw i64 %5, 14
  %161 = getelementptr inbounds float, float* %3, i64 %160
  %162 = load float, float* %161, align 8, !tbaa !948
  %163 = fcmp olt float %162, 0xC7EFFFFFE0000000
  %164 = select i1 %163, float 0xC7EFFFFFE0000000, float %162
  %165 = or i64 %160, 1
  %166 = getelementptr inbounds float, float* %3, i64 %165
  %167 = load float, float* %166, align 4, !tbaa !948
  %168 = fcmp ogt float %164, %167
  %169 = select i1 %168, float %164, float %167
  %170 = add nuw nsw i64 %5, 42
  %171 = getelementptr inbounds float, float* %3, i64 %170
  %172 = load float, float* %171, align 8, !tbaa !948
  %173 = fcmp ogt float %169, %172
  %174 = select i1 %173, float %169, float %172
  %175 = add nuw nsw i64 %5, 43
  %176 = getelementptr inbounds float, float* %3, i64 %175
  %177 = load float, float* %176, align 4, !tbaa !948
  %178 = fcmp ogt float %174, %177
  %179 = select i1 %178, float %174, float %177
  store float %179, float* %159, align 4, !tbaa !951
  %180 = add nuw nsw i64 %4, 8
  %181 = getelementptr inbounds float, float* %2, i64 %180
  %182 = add nuw nsw i64 %5, 16
  %183 = getelementptr inbounds float, float* %3, i64 %182
  %184 = load float, float* %183, align 32, !tbaa !948
  %185 = fcmp olt float %184, 0xC7EFFFFFE0000000
  %186 = select i1 %185, float 0xC7EFFFFFE0000000, float %184
  %187 = or i64 %182, 1
  %188 = getelementptr inbounds float, float* %3, i64 %187
  %189 = load float, float* %188, align 4, !tbaa !948
  %190 = fcmp ogt float %186, %189
  %191 = select i1 %190, float %186, float %189
  %192 = add nuw nsw i64 %5, 44
  %193 = getelementptr inbounds float, float* %3, i64 %192
  %194 = load float, float* %193, align 16, !tbaa !948
  %195 = fcmp ogt float %191, %194
  %196 = select i1 %195, float %191, float %194
  %197 = add nuw nsw i64 %5, 45
  %198 = getelementptr inbounds float, float* %3, i64 %197
  %199 = load float, float* %198, align 4, !tbaa !948
  %200 = fcmp ogt float %196, %199
  %201 = select i1 %200, float %196, float %199
  store float %201, float* %181, align 8, !tbaa !951
  %202 = add nuw nsw i64 %4, 9
  %203 = getelementptr inbounds float, float* %2, i64 %202
  %204 = add nuw nsw i64 %5, 18
  %205 = getelementptr inbounds float, float* %3, i64 %204
  %206 = load float, float* %205, align 8, !tbaa !948
  %207 = fcmp olt float %206, 0xC7EFFFFFE0000000
  %208 = select i1 %207, float 0xC7EFFFFFE0000000, float %206
  %209 = or i64 %204, 1
  %210 = getelementptr inbounds float, float* %3, i64 %209
  %211 = load float, float* %210, align 4, !tbaa !948
  %212 = fcmp ogt float %208, %211
  %213 = select i1 %212, float %208, float %211
  %214 = add nuw nsw i64 %5, 46
  %215 = getelementptr inbounds float, float* %3, i64 %214
  %216 = load float, float* %215, align 8, !tbaa !948
  %217 = fcmp ogt float %213, %216
  %218 = select i1 %217, float %213, float %216
  %219 = add nuw nsw i64 %5, 47
  %220 = getelementptr inbounds float, float* %3, i64 %219
  %221 = load float, float* %220, align 4, !tbaa !948
  %222 = fcmp ogt float %218, %221
  %223 = select i1 %222, float %218, float %221
  store float %223, float* %203, align 4, !tbaa !951
  %224 = add nuw nsw i64 %4, 10
  %225 = getelementptr inbounds float, float* %2, i64 %224
  %226 = add nuw nsw i64 %5, 20
  %227 = getelementptr inbounds float, float* %3, i64 %226
  %228 = load float, float* %227, align 16, !tbaa !948
  %229 = fcmp olt float %228, 0xC7EFFFFFE0000000
  %230 = select i1 %229, float 0xC7EFFFFFE0000000, float %228
  %231 = or i64 %226, 1
  %232 = getelementptr inbounds float, float* %3, i64 %231
  %233 = load float, float* %232, align 4, !tbaa !948
  %234 = fcmp ogt float %230, %233
  %235 = select i1 %234, float %230, float %233
  %236 = add nuw nsw i64 %5, 48
  %237 = getelementptr inbounds float, float* %3, i64 %236
  %238 = load float, float* %237, align 32, !tbaa !948
  %239 = fcmp ogt float %235, %238
  %240 = select i1 %239, float %235, float %238
  %241 = add nuw nsw i64 %5, 49
  %242 = getelementptr inbounds float, float* %3, i64 %241
  %243 = load float, float* %242, align 4, !tbaa !948
  %244 = fcmp ogt float %240, %243
  %245 = select i1 %244, float %240, float %243
  store float %245, float* %225, align 8, !tbaa !951
  %246 = add nuw nsw i64 %4, 11
  %247 = getelementptr inbounds float, float* %2, i64 %246
  %248 = add nuw nsw i64 %5, 22
  %249 = getelementptr inbounds float, float* %3, i64 %248
  %250 = load float, float* %249, align 8, !tbaa !948
  %251 = fcmp olt float %250, 0xC7EFFFFFE0000000
  %252 = select i1 %251, float 0xC7EFFFFFE0000000, float %250
  %253 = or i64 %248, 1
  %254 = getelementptr inbounds float, float* %3, i64 %253
  %255 = load float, float* %254, align 4, !tbaa !948
  %256 = fcmp ogt float %252, %255
  %257 = select i1 %256, float %252, float %255
  %258 = add nuw nsw i64 %5, 50
  %259 = getelementptr inbounds float, float* %3, i64 %258
  %260 = load float, float* %259, align 8, !tbaa !948
  %261 = fcmp ogt float %257, %260
  %262 = select i1 %261, float %257, float %260
  %263 = add nuw nsw i64 %5, 51
  %264 = getelementptr inbounds float, float* %3, i64 %263
  %265 = load float, float* %264, align 4, !tbaa !948
  %266 = fcmp ogt float %262, %265
  %267 = select i1 %266, float %262, float %265
  store float %267, float* %247, align 4, !tbaa !951
  %268 = add nuw nsw i64 %4, 12
  %269 = getelementptr inbounds float, float* %2, i64 %268
  %270 = add nuw nsw i64 %5, 24
  %271 = getelementptr inbounds float, float* %3, i64 %270
  %272 = load float, float* %271, align 32, !tbaa !948
  %273 = fcmp olt float %272, 0xC7EFFFFFE0000000
  %274 = select i1 %273, float 0xC7EFFFFFE0000000, float %272
  %275 = or i64 %270, 1
  %276 = getelementptr inbounds float, float* %3, i64 %275
  %277 = load float, float* %276, align 4, !tbaa !948
  %278 = fcmp ogt float %274, %277
  %279 = select i1 %278, float %274, float %277
  %280 = add nuw nsw i64 %5, 52
  %281 = getelementptr inbounds float, float* %3, i64 %280
  %282 = load float, float* %281, align 16, !tbaa !948
  %283 = fcmp ogt float %279, %282
  %284 = select i1 %283, float %279, float %282
  %285 = add nuw nsw i64 %5, 53
  %286 = getelementptr inbounds float, float* %3, i64 %285
  %287 = load float, float* %286, align 4, !tbaa !948
  %288 = fcmp ogt float %284, %287
  %289 = select i1 %288, float %284, float %287
  store float %289, float* %269, align 8, !tbaa !951
  %290 = add nuw nsw i64 %4, 13
  %291 = getelementptr inbounds float, float* %2, i64 %290
  %292 = add nuw nsw i64 %5, 26
  %293 = getelementptr inbounds float, float* %3, i64 %292
  %294 = load float, float* %293, align 8, !tbaa !948
  %295 = fcmp olt float %294, 0xC7EFFFFFE0000000
  %296 = select i1 %295, float 0xC7EFFFFFE0000000, float %294
  %297 = or i64 %292, 1
  %298 = getelementptr inbounds float, float* %3, i64 %297
  %299 = load float, float* %298, align 4, !tbaa !948
  %300 = fcmp ogt float %296, %299
  %301 = select i1 %300, float %296, float %299
  %302 = add nuw nsw i64 %5, 54
  %303 = getelementptr inbounds float, float* %3, i64 %302
  %304 = load float, float* %303, align 8, !tbaa !948
  %305 = fcmp ogt float %301, %304
  %306 = select i1 %305, float %301, float %304
  %307 = add nuw nsw i64 %5, 55
  %308 = getelementptr inbounds float, float* %3, i64 %307
  %309 = load float, float* %308, align 4, !tbaa !948
  %310 = fcmp ogt float %306, %309
  %311 = select i1 %310, float %306, float %309
  store float %311, float* %291, align 4, !tbaa !951
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %exitcond14.not = icmp eq i64 %indvars.iv.next12, 14
  br i1 %exitcond14.not, label %for_end_ax2, label %for_begin_ax3.preheader, !prof !45

for_end_ax2:                                      ; preds = %for_begin_ax3.preheader
  ret void
}

define dllexport i32 @tvmgen_default_fused_nn_relu(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end40, %assert_fail39, %assert_fail37, %assert_fail35, %assert_fail33, %assert_fail29, %assert_fail27, %assert_fail25, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail25 ], [ -1, %assert_fail27 ], [ -1, %assert_fail29 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail39 ], [ 0, %assert_end40 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.99, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %1**
  %arg041 = load %1*, %1** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !954
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %1**
  %arg142 = load %1*, %1** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !968
  %14 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 0
  %placeholder = load i8*, i8** %14, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %placeholder, i64 128) ]
  %15 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 4
  %arg0.shape = load i64*, i64** %15, align 8
  %16 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 5
  %arg0.strides = load i64*, i64** %16, align 8
  %17 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 1, i32 1
  %dev_id = load i32, i32* %17, align 4
  %18 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 0
  %T_relu = load i8*, i8** %18, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %T_relu, i64 128) ]
  %19 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 4
  %arg1.shape = load i64*, i64** %19, align 8
  %20 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 5
  %arg1.strides = load i64*, i64** %20, align 8
  switch i32 %arg0.code, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %21 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %21(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.100, i64 0, i64 0))
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
  tail call void %22(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.101, i64 0, i64 0))
  br label %common.ret

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %23 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %assert_end8, label %assert_fail5, !prof !4

assert_fail5:                                     ; preds = %assert_end4
  %26 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %26(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.44, i64 0, i64 0))
  br label %common.ret

assert_end8:                                      ; preds = %assert_end4
  %27 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 3, i32 2
  %28 = load i16, i16* %27, align 2
  %29 = icmp eq i16 %28, 1
  %30 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 3, i32 1
  %31 = load i8, i8* %30, align 1
  %32 = icmp eq i8 %31, 32
  %33 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 3, i32 0
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
  %39 = load i64, i64* %arg0.shape, align 8, !tbaa !970
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %assert_end12, label %assert_fail11, !prof !4

assert_fail11:                                    ; preds = %assert_end10
  %42 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %42(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0))
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10
  %43 = getelementptr inbounds i64, i64* %arg0.shape, i64 1
  %44 = load i64, i64* %43, align 8, !tbaa !984
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %45, 32
  br i1 %46, label %assert_end14, label %assert_fail13, !prof !4

assert_fail13:                                    ; preds = %assert_end12
  %47 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %47(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.45, i64 0, i64 0))
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !45

if_then:                                          ; preds = %assert_end14
  %48 = load i64, i64* %arg0.strides, align 8, !tbaa !986
  %49 = trunc i64 %48 to i32
  %50 = icmp eq i32 %49, 32
  %51 = getelementptr inbounds i64, i64* %arg0.strides, i64 1
  %52 = load i64, i64* %51, align 8, !tbaa !1000
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %53, 1
  %55 = and i1 %50, %54
  br i1 %55, label %if_end, label %assert_fail15, !prof !4

if_end:                                           ; preds = %if_then, %assert_end14
  %56 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %assert_end18, label %assert_fail17, !prof !4

assert_fail15:                                    ; preds = %if_then
  %59 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %59(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.46, i64 0, i64 0))
  br label %common.ret

assert_fail17:                                    ; preds = %if_end
  %60 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %60(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  br label %common.ret

assert_end18:                                     ; preds = %if_end
  %61 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 1, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %assert_end20, label %assert_fail19, !prof !4

assert_fail19:                                    ; preds = %assert_end18
  %64 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %64(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0))
  br label %common.ret

assert_end20:                                     ; preds = %assert_end18
  %65 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %assert_end24, label %assert_fail21, !prof !4

assert_fail21:                                    ; preds = %assert_end20
  %68 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %68(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.12, i64 0, i64 0))
  br label %common.ret

assert_end24:                                     ; preds = %assert_end20
  %69 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 3, i32 2
  %70 = load i16, i16* %69, align 2
  %71 = icmp eq i16 %70, 1
  %72 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 3, i32 1
  %73 = load i8, i8* %72, align 1
  %74 = icmp eq i8 %73, 32
  %75 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 3, i32 0
  %76 = load i8, i8* %75, align 1
  %77 = icmp eq i8 %76, 2
  %78 = and i1 %74, %77
  %79 = and i1 %71, %78
  br i1 %79, label %assert_end26, label %assert_fail25, !prof !4

assert_fail25:                                    ; preds = %assert_end24
  %80 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %80(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.13, i64 0, i64 0))
  br label %common.ret

assert_end26:                                     ; preds = %assert_end24
  %81 = load i64, i64* %arg1.shape, align 8, !tbaa !1002
  %82 = trunc i64 %81 to i32
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %assert_end28, label %assert_fail27, !prof !4

assert_fail27:                                    ; preds = %assert_end26
  %84 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %84(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.14, i64 0, i64 0))
  br label %common.ret

assert_end28:                                     ; preds = %assert_end26
  %85 = getelementptr inbounds i64, i64* %arg1.shape, i64 1
  %86 = load i64, i64* %85, align 8, !tbaa !1016
  %87 = trunc i64 %86 to i32
  %88 = icmp eq i32 %87, 32
  br i1 %88, label %assert_end30, label %assert_fail29, !prof !4

assert_fail29:                                    ; preds = %assert_end28
  %89 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %89(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.87, i64 0, i64 0))
  br label %common.ret

assert_end30:                                     ; preds = %assert_end28
  %.not43 = icmp eq i64* %arg1.strides, null
  br i1 %.not43, label %if_end32, label %if_then31, !prof !45

if_then31:                                        ; preds = %assert_end30
  %90 = load i64, i64* %arg1.strides, align 8, !tbaa !1018
  %91 = trunc i64 %90 to i32
  %92 = icmp eq i32 %91, 32
  %93 = getelementptr inbounds i64, i64* %arg1.strides, i64 1
  %94 = load i64, i64* %93, align 8, !tbaa !1032
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %95, 1
  %97 = and i1 %92, %96
  br i1 %97, label %if_end32, label %assert_fail33, !prof !4

if_end32:                                         ; preds = %if_then31, %assert_end30
  %98 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %assert_end36, label %assert_fail35, !prof !4

assert_fail33:                                    ; preds = %if_then31
  %101 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %101(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.88, i64 0, i64 0))
  br label %common.ret

assert_fail35:                                    ; preds = %if_end32
  %102 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %102(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.17, i64 0, i64 0))
  br label %common.ret

assert_end36:                                     ; preds = %if_end32
  %103 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 1, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %assert_end38, label %assert_fail37, !prof !4

assert_fail37:                                    ; preds = %assert_end36
  %106 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %106(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.18, i64 0, i64 0))
  br label %common.ret

assert_end38:                                     ; preds = %assert_end36
  %107 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 1, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %dev_id, %108
  br i1 %109, label %assert_end40, label %assert_fail39, !prof !4

assert_fail39:                                    ; preds = %assert_end38
  %110 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %110(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.19, i64 0, i64 0))
  br label %common.ret

assert_end40:                                     ; preds = %assert_end38
  tail call fastcc void @tvmgen_default_fused_nn_relu_compute_(i8* %T_relu, i8* %placeholder)
  br label %common.ret
}

; Function Attrs: nofree noinline norecurse nosync nounwind
define internal fastcc void @tvmgen_default_fused_nn_relu_compute_(i8* noalias nocapture writeonly align 128 %0, i8* noalias nocapture readonly align 128 %1) unnamed_addr #1 {
entry:
  %2 = bitcast i8* %1 to <16 x float>*
  %3 = load <16 x float>, <16 x float>* %2, align 128, !tbaa !1034
  %4 = fcmp ogt <16 x float> %3, zeroinitializer
  %5 = select <16 x i1> %4, <16 x float> %3, <16 x float> zeroinitializer
  %6 = bitcast i8* %0 to <16 x float>*
  store <16 x float> %5, <16 x float>* %6, align 128, !tbaa !1037
  %7 = getelementptr inbounds i8, i8* %1, i64 64
  %8 = bitcast i8* %7 to <16 x float>*
  %9 = load <16 x float>, <16 x float>* %8, align 64, !tbaa !1034
  %10 = fcmp ogt <16 x float> %9, zeroinitializer
  %11 = select <16 x i1> %10, <16 x float> %9, <16 x float> zeroinitializer
  %12 = getelementptr inbounds i8, i8* %0, i64 64
  %13 = bitcast i8* %12 to <16 x float>*
  store <16 x float> %11, <16 x float>* %13, align 64, !tbaa !1037
  ret void
}

define dllexport i32 @tvmgen_default_fused_nn_softmax(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end40, %assert_fail39, %assert_fail37, %assert_fail35, %assert_fail33, %assert_fail29, %assert_fail27, %assert_fail25, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail25 ], [ -1, %assert_fail27 ], [ -1, %assert_fail29 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail39 ], [ 0, %assert_end40 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.102, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %1**
  %arg041 = load %1*, %1** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !1040
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %1**
  %arg142 = load %1*, %1** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !1054
  %14 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 0
  %placeholder = load i8*, i8** %14, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %placeholder, i64 128) ]
  %15 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 4
  %arg0.shape = load i64*, i64** %15, align 8
  %16 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 5
  %arg0.strides = load i64*, i64** %16, align 8
  %17 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 1, i32 1
  %dev_id = load i32, i32* %17, align 4
  %18 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 0
  %T_softmax_norm = load i8*, i8** %18, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %T_softmax_norm, i64 128) ]
  %19 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 4
  %arg1.shape = load i64*, i64** %19, align 8
  %20 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 5
  %arg1.strides = load i64*, i64** %20, align 8
  switch i32 %arg0.code, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %21 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %21(i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.103, i64 0, i64 0))
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
  tail call void %22(i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.104, i64 0, i64 0))
  br label %common.ret

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %23 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %assert_end8, label %assert_fail5, !prof !4

assert_fail5:                                     ; preds = %assert_end4
  %26 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %26(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.44, i64 0, i64 0))
  br label %common.ret

assert_end8:                                      ; preds = %assert_end4
  %27 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 3, i32 2
  %28 = load i16, i16* %27, align 2
  %29 = icmp eq i16 %28, 1
  %30 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 3, i32 1
  %31 = load i8, i8* %30, align 1
  %32 = icmp eq i8 %31, 32
  %33 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 3, i32 0
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
  %39 = load i64, i64* %arg0.shape, align 8, !tbaa !1056
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %assert_end12, label %assert_fail11, !prof !4

assert_fail11:                                    ; preds = %assert_end10
  %42 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %42(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0))
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10
  %43 = getelementptr inbounds i64, i64* %arg0.shape, i64 1
  %44 = load i64, i64* %43, align 8, !tbaa !1070
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %45, 10
  br i1 %46, label %assert_end14, label %assert_fail13, !prof !4

assert_fail13:                                    ; preds = %assert_end12
  %47 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %47(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.55, i64 0, i64 0))
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !45

if_then:                                          ; preds = %assert_end14
  %48 = load i64, i64* %arg0.strides, align 8, !tbaa !1072
  %49 = trunc i64 %48 to i32
  %50 = icmp eq i32 %49, 10
  %51 = getelementptr inbounds i64, i64* %arg0.strides, i64 1
  %52 = load i64, i64* %51, align 8, !tbaa !1086
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %53, 1
  %55 = and i1 %50, %54
  br i1 %55, label %if_end, label %assert_fail15, !prof !4

if_end:                                           ; preds = %if_then, %assert_end14
  %56 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %assert_end18, label %assert_fail17, !prof !4

assert_fail15:                                    ; preds = %if_then
  %59 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %59(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.56, i64 0, i64 0))
  br label %common.ret

assert_fail17:                                    ; preds = %if_end
  %60 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %60(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  br label %common.ret

assert_end18:                                     ; preds = %if_end
  %61 = getelementptr inbounds %1, %1* %arg041, i64 0, i32 1, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %assert_end20, label %assert_fail19, !prof !4

assert_fail19:                                    ; preds = %assert_end18
  %64 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %64(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0))
  br label %common.ret

assert_end20:                                     ; preds = %assert_end18
  %65 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 2
  br i1 %67, label %assert_end24, label %assert_fail21, !prof !4

assert_fail21:                                    ; preds = %assert_end20
  %68 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %68(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.12, i64 0, i64 0))
  br label %common.ret

assert_end24:                                     ; preds = %assert_end20
  %69 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 3, i32 2
  %70 = load i16, i16* %69, align 2
  %71 = icmp eq i16 %70, 1
  %72 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 3, i32 1
  %73 = load i8, i8* %72, align 1
  %74 = icmp eq i8 %73, 32
  %75 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 3, i32 0
  %76 = load i8, i8* %75, align 1
  %77 = icmp eq i8 %76, 2
  %78 = and i1 %74, %77
  %79 = and i1 %71, %78
  br i1 %79, label %assert_end26, label %assert_fail25, !prof !4

assert_fail25:                                    ; preds = %assert_end24
  %80 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %80(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.13, i64 0, i64 0))
  br label %common.ret

assert_end26:                                     ; preds = %assert_end24
  %81 = load i64, i64* %arg1.shape, align 8, !tbaa !1088
  %82 = trunc i64 %81 to i32
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %assert_end28, label %assert_fail27, !prof !4

assert_fail27:                                    ; preds = %assert_end26
  %84 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %84(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.14, i64 0, i64 0))
  br label %common.ret

assert_end28:                                     ; preds = %assert_end26
  %85 = getelementptr inbounds i64, i64* %arg1.shape, i64 1
  %86 = load i64, i64* %85, align 8, !tbaa !1102
  %87 = trunc i64 %86 to i32
  %88 = icmp eq i32 %87, 10
  br i1 %88, label %assert_end30, label %assert_fail29, !prof !4

assert_fail29:                                    ; preds = %assert_end28
  %89 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %89(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.105, i64 0, i64 0))
  br label %common.ret

assert_end30:                                     ; preds = %assert_end28
  %.not43 = icmp eq i64* %arg1.strides, null
  br i1 %.not43, label %if_end32, label %if_then31, !prof !45

if_then31:                                        ; preds = %assert_end30
  %90 = load i64, i64* %arg1.strides, align 8, !tbaa !1104
  %91 = trunc i64 %90 to i32
  %92 = icmp eq i32 %91, 10
  %93 = getelementptr inbounds i64, i64* %arg1.strides, i64 1
  %94 = load i64, i64* %93, align 8, !tbaa !1118
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %95, 1
  %97 = and i1 %92, %96
  br i1 %97, label %if_end32, label %assert_fail33, !prof !4

if_end32:                                         ; preds = %if_then31, %assert_end30
  %98 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 6
  %99 = load i64, i64* %98, align 8
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %assert_end36, label %assert_fail35, !prof !4

assert_fail33:                                    ; preds = %if_then31
  %101 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %101(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.106, i64 0, i64 0))
  br label %common.ret

assert_fail35:                                    ; preds = %if_end32
  %102 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %102(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.17, i64 0, i64 0))
  br label %common.ret

assert_end36:                                     ; preds = %if_end32
  %103 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 1, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %assert_end38, label %assert_fail37, !prof !4

assert_fail37:                                    ; preds = %assert_end36
  %106 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %106(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.18, i64 0, i64 0))
  br label %common.ret

assert_end38:                                     ; preds = %assert_end36
  %107 = getelementptr inbounds %1, %1* %arg142, i64 0, i32 1, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %dev_id, %108
  br i1 %109, label %assert_end40, label %assert_fail39, !prof !4

assert_fail39:                                    ; preds = %assert_end38
  %110 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %110(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.19, i64 0, i64 0))
  br label %common.ret

assert_end40:                                     ; preds = %assert_end38
  tail call fastcc void @tvmgen_default_fused_nn_softmax_compute_(i8* %placeholder, i8* %T_softmax_norm)
  br label %common.ret
}

; Function Attrs: nofree noinline nosync nounwind
define internal fastcc void @tvmgen_default_fused_nn_softmax_compute_(i8* noalias nocapture readonly align 128 %0, i8* noalias nocapture writeonly align 128 %1) unnamed_addr #7 {
entry:
  %2 = bitcast i8* %0 to <4 x float>*
  %3 = load <4 x float>, <4 x float>* %2, align 128, !tbaa !1120
  %4 = extractelement <4 x float> %3, i64 0
  %5 = fcmp olt float %4, 0xC7EFFFFFE0000000
  %6 = select i1 %5, float 0xC7EFFFFFE0000000, float %4
  %7 = extractelement <4 x float> %3, i64 1
  %8 = fcmp ogt float %6, %7
  %9 = select i1 %8, float %6, float %7
  %10 = extractelement <4 x float> %3, i64 2
  %11 = fcmp ogt float %9, %10
  %12 = select i1 %11, float %9, float %10
  %13 = extractelement <4 x float> %3, i64 3
  %14 = fcmp ogt float %12, %13
  %15 = select i1 %14, float %12, float %13
  %16 = getelementptr inbounds i8, i8* %0, i64 16
  %17 = bitcast i8* %16 to <4 x float>*
  %18 = load <4 x float>, <4 x float>* %17, align 16, !tbaa !1120
  %19 = extractelement <4 x float> %18, i64 0
  %20 = fcmp ogt float %15, %19
  %21 = select i1 %20, float %15, float %19
  %22 = extractelement <4 x float> %18, i64 1
  %23 = fcmp ogt float %21, %22
  %24 = select i1 %23, float %21, float %22
  %25 = extractelement <4 x float> %18, i64 2
  %26 = fcmp ogt float %24, %25
  %27 = select i1 %26, float %24, float %25
  %28 = extractelement <4 x float> %18, i64 3
  %29 = fcmp ogt float %27, %28
  %30 = select i1 %29, float %27, float %28
  %31 = getelementptr inbounds i8, i8* %0, i64 32
  %32 = bitcast i8* %31 to float*
  %33 = load float, float* %32, align 32, !tbaa !1120
  %34 = fcmp ogt float %30, %33
  %35 = select i1 %34, float %30, float %33
  %36 = getelementptr inbounds i8, i8* %0, i64 36
  %37 = bitcast i8* %36 to float*
  %38 = load float, float* %37, align 4, !tbaa !1120
  %39 = fcmp ogt float %35, %38
  %40 = select i1 %39, float %35, float %38
  %41 = insertelement <4 x float> poison, float %40, i64 0
  %shuffle = shufflevector <4 x float> %41, <4 x float> poison, <4 x i32> zeroinitializer
  %42 = fsub <4 x float> %3, %shuffle
  %43 = call <4 x float> @llvm.exp.v4f32(<4 x float> %42)
  %44 = fsub <4 x float> %18, %shuffle
  %45 = call <4 x float> @llvm.exp.v4f32(<4 x float> %44)
  %46 = fsub float %33, %40
  %47 = tail call float @llvm.exp.f32(float %46)
  %48 = fsub float %38, %40
  %49 = tail call float @llvm.exp.f32(float %48)
  %50 = extractelement <4 x float> %43, i64 0
  %51 = fadd float %50, 0.000000e+00
  %52 = extractelement <4 x float> %43, i64 1
  %53 = fadd float %51, %52
  %54 = extractelement <4 x float> %43, i64 2
  %55 = fadd float %53, %54
  %56 = extractelement <4 x float> %43, i64 3
  %57 = fadd float %55, %56
  %58 = extractelement <4 x float> %45, i64 0
  %59 = fadd float %57, %58
  %60 = extractelement <4 x float> %45, i64 1
  %61 = fadd float %59, %60
  %62 = extractelement <4 x float> %45, i64 2
  %63 = fadd float %61, %62
  %64 = extractelement <4 x float> %45, i64 3
  %65 = fadd float %63, %64
  %66 = fadd float %65, %47
  %67 = fadd float %66, %49
  %68 = insertelement <4 x float> poison, float %67, i64 0
  %shuffle23 = shufflevector <4 x float> %68, <4 x float> poison, <4 x i32> zeroinitializer
  %69 = fdiv <4 x float> %43, %shuffle23
  %70 = bitcast i8* %1 to <4 x float>*
  store <4 x float> %69, <4 x float>* %70, align 128, !tbaa !1123
  %71 = getelementptr inbounds i8, i8* %1, i64 16
  %72 = fdiv <4 x float> %45, %shuffle23
  %73 = bitcast i8* %71 to <4 x float>*
  store <4 x float> %72, <4 x float>* %73, align 16, !tbaa !1123
  %74 = fdiv float %47, %67
  %75 = getelementptr inbounds i8, i8* %1, i64 32
  %76 = bitcast i8* %75 to float*
  store float %74, float* %76, align 32, !tbaa !1123
  %77 = fdiv float %49, %67
  %78 = getelementptr inbounds i8, i8* %1, i64 36
  %79 = bitcast i8* %78 to float*
  store float %77, float* %79, align 4, !tbaa !1123
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare float @llvm.exp.f32(float) #6

define dllexport i32 @tvmgen_default_fused_transpose(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end48, %assert_fail47, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail37, %assert_fail35, %assert_fail33, %assert_fail31, %assert_fail29, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail47 ], [ %127, %assert_end48 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.107, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %1**
  %arg049 = load %1*, %1** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !1126
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %1**
  %arg150 = load %1*, %1** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !1140
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
  tail call void %21(i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.108, i64 0, i64 0))
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
  tail call void %22(i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str.109, i64 0, i64 0))
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
  %39 = load i64, i64* %arg0.shape, align 8, !tbaa !1142
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %assert_end12, label %assert_fail11, !prof !4

assert_fail11:                                    ; preds = %assert_end10
  %42 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %42(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.5, i64 0, i64 0))
  br label %common.ret

assert_end12:                                     ; preds = %assert_end10
  %43 = getelementptr inbounds i64, i64* %arg0.shape, i64 1
  %44 = load i64, i64* %43, align 8, !tbaa !1156
  %45 = trunc i64 %44 to i32
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %assert_end14, label %assert_fail13, !prof !4

assert_fail13:                                    ; preds = %assert_end12
  %47 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %47(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.24, i64 0, i64 0))
  br label %common.ret

assert_end14:                                     ; preds = %assert_end12
  %48 = getelementptr inbounds i64, i64* %arg0.shape, i64 2
  %49 = load i64, i64* %48, align 8, !tbaa !1158
  %50 = trunc i64 %49 to i32
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %assert_end16, label %assert_fail15, !prof !4

assert_fail15:                                    ; preds = %assert_end14
  %52 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %52(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.7, i64 0, i64 0))
  br label %common.ret

assert_end16:                                     ; preds = %assert_end14
  %53 = getelementptr inbounds i64, i64* %arg0.shape, i64 3
  %54 = load i64, i64* %53, align 8, !tbaa !1161
  %55 = trunc i64 %54 to i32
  %56 = icmp eq i32 %55, 13
  br i1 %56, label %assert_end18, label %assert_fail17, !prof !4

assert_fail17:                                    ; preds = %assert_end16
  %57 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %57(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.25, i64 0, i64 0))
  br label %common.ret

assert_end18:                                     ; preds = %assert_end16
  %.not = icmp eq i64* %arg0.strides, null
  br i1 %.not, label %if_end, label %if_then, !prof !45

if_then:                                          ; preds = %assert_end18
  %58 = bitcast i64* %arg0.strides to <4 x i64>*
  %59 = load <4 x i64>, <4 x i64>* %58, align 8, !tbaa !1163
  %60 = trunc <4 x i64> %59 to <4 x i32>
  %61 = icmp ne <4 x i32> %60, <i32 2704, i32 169, i32 13, i32 1>
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
  tail call void %67(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.26, i64 0, i64 0))
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
  tail call void %76(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.68, i64 0, i64 0))
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
  %89 = load i64, i64* %arg1.shape, align 8, !tbaa !1175
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 1
  br i1 %91, label %assert_end32, label %assert_fail31, !prof !4

assert_fail31:                                    ; preds = %assert_end30
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %92(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.14, i64 0, i64 0))
  br label %common.ret

assert_end32:                                     ; preds = %assert_end30
  %93 = getelementptr inbounds i64, i64* %arg1.shape, i64 1
  %94 = load i64, i64* %93, align 8, !tbaa !1189
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %95, 13
  br i1 %96, label %assert_end34, label %assert_fail33, !prof !4

assert_fail33:                                    ; preds = %assert_end32
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %97(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.110, i64 0, i64 0))
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %98 = getelementptr inbounds i64, i64* %arg1.shape, i64 2
  %99 = load i64, i64* %98, align 8, !tbaa !1191
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %100, 13
  br i1 %101, label %assert_end36, label %assert_fail35, !prof !4

assert_fail35:                                    ; preds = %assert_end34
  %102 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %102(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.111, i64 0, i64 0))
  br label %common.ret

assert_end36:                                     ; preds = %assert_end34
  %103 = getelementptr inbounds i64, i64* %arg1.shape, i64 3
  %104 = load i64, i64* %103, align 8, !tbaa !1194
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %105, 16
  br i1 %106, label %assert_end38, label %assert_fail37, !prof !4

assert_fail37:                                    ; preds = %assert_end36
  %107 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %107(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.112, i64 0, i64 0))
  br label %common.ret

assert_end38:                                     ; preds = %assert_end36
  %.not51 = icmp eq i64* %arg1.strides, null
  br i1 %.not51, label %if_end40, label %if_then39, !prof !45

if_then39:                                        ; preds = %assert_end38
  %108 = bitcast i64* %arg1.strides to <4 x i64>*
  %109 = load <4 x i64>, <4 x i64>* %108, align 8, !tbaa !1196
  %110 = trunc <4 x i64> %109 to <4 x i32>
  %111 = icmp ne <4 x i32> %110, <i32 2704, i32 208, i32 16, i32 1>
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
  tail call void %117(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.113, i64 0, i64 0))
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
  %2 = alloca %closure_loop_parallel_ax0.ax1.fused.1, align 8
  %3 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.1, %closure_loop_parallel_ax0.ax1.fused.1* %2, i64 0, i32 0
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds %closure_loop_parallel_ax0.ax1.fused.1, %closure_loop_parallel_ax0.ax1.fused.1* %2, i64 0, i32 1
  store i8* %1, i8** %4, align 8
  %5 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !5
  %6 = bitcast %closure_loop_parallel_ax0.ax1.fused.1* %2 to i8*
  %7 = call i32 %5(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.114, i8* nonnull %6, i32 0)
  ret i32 %7
}

; Function Attrs: nofree norecurse nosync nounwind
define private i32 @__tvm_parallel_lambda.114(i32 %0, %0* nocapture readonly %1, i8* nocapture readonly %2) #3 {
parallel_closure_entry:
  %3 = bitcast i8* %2 to float**
  %4 = load float*, float** %3, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr inbounds %0, %0* %1, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 12
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 13
  %15 = select i1 %14, i32 %13, i32 13
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 13
  %18 = select i1 %17, i32 %16, i32 13
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin_ax2.preheader.preheader, label %for_end_ax0.ax1.fused, !prof !4

for_begin_ax2.preheader.preheader:                ; preds = %parallel_closure_entry
  %20 = sext i32 %18 to i64
  %wide.trip.count = sext i32 %15 to i64
  br label %for_begin_ax2.preheader

for_begin_ax2.preheader:                          ; preds = %for_begin_ax2.preheader.preheader, %for_end_ax2
  %indvars.iv4 = phi i64 [ %20, %for_begin_ax2.preheader.preheader ], [ %indvars.iv.next5, %for_end_ax2 ]
  %21 = mul nsw i64 %indvars.iv4, 208
  %22 = mul nsw i64 %indvars.iv4, 13
  br label %for_body_ax2

for_end_ax0.ax1.fused:                            ; preds = %for_end_ax2, %parallel_closure_entry
  ret i32 0

for_body_ax2:                                     ; preds = %for_begin_ax2.preheader, %for_body_ax2
  %indvars.iv = phi i64 [ 0, %for_begin_ax2.preheader ], [ %indvars.iv.next, %for_body_ax2 ]
  %23 = shl nuw nsw i64 %indvars.iv, 4
  %24 = add nsw i64 %23, %21
  %25 = add nsw i64 %indvars.iv, %22
  %26 = add nsw i64 %25, 169
  %27 = add nsw i64 %25, 338
  %28 = add nsw i64 %25, 507
  %29 = add nsw i64 %25, 676
  %30 = add nsw i64 %25, 845
  %31 = add nsw i64 %25, 1014
  %32 = add nsw i64 %25, 1183
  %33 = add nsw i64 %25, 1352
  %34 = add nsw i64 %25, 1521
  %35 = add nsw i64 %25, 1690
  %36 = add nsw i64 %25, 1859
  %37 = add nsw i64 %25, 2028
  %38 = add nsw i64 %25, 2197
  %39 = add nsw i64 %25, 2366
  %40 = add nsw i64 %25, 2535
  %41 = getelementptr inbounds float, float* %7, i64 %25
  %42 = load float, float* %41, align 4, !tbaa !1208
  %43 = insertelement <16 x float> undef, float %42, i64 0
  %44 = getelementptr inbounds float, float* %7, i64 %26
  %45 = load float, float* %44, align 4, !tbaa !1208
  %46 = insertelement <16 x float> %43, float %45, i64 1
  %47 = getelementptr inbounds float, float* %7, i64 %27
  %48 = load float, float* %47, align 4, !tbaa !1208
  %49 = insertelement <16 x float> %46, float %48, i64 2
  %50 = getelementptr inbounds float, float* %7, i64 %28
  %51 = load float, float* %50, align 4, !tbaa !1208
  %52 = insertelement <16 x float> %49, float %51, i64 3
  %53 = getelementptr inbounds float, float* %7, i64 %29
  %54 = load float, float* %53, align 4, !tbaa !1208
  %55 = insertelement <16 x float> %52, float %54, i64 4
  %56 = getelementptr inbounds float, float* %7, i64 %30
  %57 = load float, float* %56, align 4, !tbaa !1208
  %58 = insertelement <16 x float> %55, float %57, i64 5
  %59 = getelementptr inbounds float, float* %7, i64 %31
  %60 = load float, float* %59, align 4, !tbaa !1208
  %61 = insertelement <16 x float> %58, float %60, i64 6
  %62 = getelementptr inbounds float, float* %7, i64 %32
  %63 = load float, float* %62, align 4, !tbaa !1208
  %64 = insertelement <16 x float> %61, float %63, i64 7
  %65 = getelementptr inbounds float, float* %7, i64 %33
  %66 = load float, float* %65, align 4, !tbaa !1208
  %67 = insertelement <16 x float> %64, float %66, i64 8
  %68 = getelementptr inbounds float, float* %7, i64 %34
  %69 = load float, float* %68, align 4, !tbaa !1208
  %70 = insertelement <16 x float> %67, float %69, i64 9
  %71 = getelementptr inbounds float, float* %7, i64 %35
  %72 = load float, float* %71, align 4, !tbaa !1208
  %73 = insertelement <16 x float> %70, float %72, i64 10
  %74 = getelementptr inbounds float, float* %7, i64 %36
  %75 = load float, float* %74, align 4, !tbaa !1208
  %76 = insertelement <16 x float> %73, float %75, i64 11
  %77 = getelementptr inbounds float, float* %7, i64 %37
  %78 = load float, float* %77, align 4, !tbaa !1208
  %79 = insertelement <16 x float> %76, float %78, i64 12
  %80 = getelementptr inbounds float, float* %7, i64 %38
  %81 = load float, float* %80, align 4, !tbaa !1208
  %82 = insertelement <16 x float> %79, float %81, i64 13
  %83 = getelementptr inbounds float, float* %7, i64 %39
  %84 = load float, float* %83, align 4, !tbaa !1208
  %85 = insertelement <16 x float> %82, float %84, i64 14
  %86 = getelementptr inbounds float, float* %7, i64 %40
  %87 = load float, float* %86, align 4, !tbaa !1208
  %88 = insertelement <16 x float> %85, float %87, i64 15
  %89 = getelementptr inbounds float, float* %4, i64 %24
  %90 = bitcast float* %89 to <16 x float>*
  store <16 x float> %88, <16 x float>* %90, align 64, !tbaa !1211
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond.not, label %for_end_ax2, label %for_body_ax2, !prof !45

for_end_ax2:                                      ; preds = %for_body_ax2
  %indvars.iv.next5 = add nsw i64 %indvars.iv4, 1
  %exitcond7.not = icmp eq i64 %indvars.iv.next5, %wide.trip.count
  br i1 %exitcond7.not, label %for_end_ax0.ax1.fused, label %for_begin_ax2.preheader, !prof !45
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #9

attributes #0 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
attributes #1 = { nofree noinline norecurse nosync nounwind }
attributes #2 = { noinline }
attributes #3 = { nofree norecurse nosync nounwind }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind willreturn }
attributes #5 = { nofree nosync nounwind }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nofree noinline nosync nounwind }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }

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
!9 = !{!"0x4a4e4a0.w1.b0", !10, i64 0}
!10 = !{!"0x4a4e4a0.w2.b0", !11, i64 0}
!11 = !{!"0x4a4e4a0.w4.b0", !12, i64 0}
!12 = !{!"0x4a4e4a0.w8.b0", !13, i64 0}
!13 = !{!"0x4a4e4a0.w16.b0", !14, i64 0}
!14 = !{!"0x4a4e4a0.w32.b0", !15, i64 0}
!15 = !{!"0x4a4e4a0.w64.b0", !16, i64 0}
!16 = !{!"0x4a4e4a0.w128.b0", !17, i64 0}
!17 = !{!"0x4a4e4a0.w256.b0", !18, i64 0}
!18 = !{!"0x4a4e4a0.w512.b0", !19, i64 0}
!19 = !{!"0x4a4e4a0.w1024.b0", !20, i64 0}
!20 = !{!"i8*", !21, i64 0}
!21 = !{!"0x4a4e4a0", !7, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"0x4a4e4a0.w1.b1", !10, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"0x4a52770.w1.b0", !26, i64 0}
!26 = !{!"0x4a52770.w2.b0", !27, i64 0}
!27 = !{!"0x4a52770.w4.b0", !28, i64 0}
!28 = !{!"0x4a52770.w8.b0", !29, i64 0}
!29 = !{!"0x4a52770.w16.b0", !30, i64 0}
!30 = !{!"0x4a52770.w32.b0", !31, i64 0}
!31 = !{!"0x4a52770.w64.b0", !32, i64 0}
!32 = !{!"0x4a52770.w128.b0", !33, i64 0}
!33 = !{!"0x4a52770.w256.b0", !34, i64 0}
!34 = !{!"0x4a52770.w512.b0", !35, i64 0}
!35 = !{!"0x4a52770.w1024.b0", !36, i64 0}
!36 = !{!"i8*", !37, i64 0}
!37 = !{!"0x4a52770", !7, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"0x4a52770.w1.b1", !26, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"0x4a52770.w1.b2", !42, i64 0}
!42 = !{!"0x4a52770.w2.b2", !27, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"0x4a52770.w1.b3", !42, i64 0}
!45 = !{!"branch_weights", i32 1, i32 1048576}
!46 = !{!47, !47, i64 0}
!47 = !{!"0x4a57830.w4.b0", !48, i64 0}
!48 = !{!"0x4a57830.w8.b0", !49, i64 0}
!49 = !{!"0x4a57830.w16.b0", !50, i64 0}
!50 = !{!"0x4a57830.w32.b0", !51, i64 0}
!51 = !{!"0x4a57830.w64.b0", !52, i64 0}
!52 = !{!"0x4a57830.w128.b0", !53, i64 0}
!53 = !{!"0x4a57830.w256.b0", !54, i64 0}
!54 = !{!"0x4a57830.w512.b0", !55, i64 0}
!55 = !{!"0x4a57830.w1024.b0", !56, i64 0}
!56 = !{!"i8*", !57, i64 0}
!57 = !{!"0x4a57830", !7, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"0x4a59970.w1.b0", !60, i64 0}
!60 = !{!"0x4a59970.w2.b0", !61, i64 0}
!61 = !{!"0x4a59970.w4.b0", !62, i64 0}
!62 = !{!"0x4a59970.w8.b0", !63, i64 0}
!63 = !{!"0x4a59970.w16.b0", !64, i64 0}
!64 = !{!"0x4a59970.w32.b0", !65, i64 0}
!65 = !{!"0x4a59970.w64.b0", !66, i64 0}
!66 = !{!"0x4a59970.w128.b0", !67, i64 0}
!67 = !{!"0x4a59970.w256.b0", !68, i64 0}
!68 = !{!"0x4a59970.w512.b0", !69, i64 0}
!69 = !{!"0x4a59970.w1024.b0", !70, i64 0}
!70 = !{!"i8*", !71, i64 0}
!71 = !{!"0x4a59970", !7, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"0x4a59970.w1.b1", !60, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"0x4a59de0.w1.b0", !76, i64 0}
!76 = !{!"0x4a59de0.w2.b0", !77, i64 0}
!77 = !{!"0x4a59de0.w4.b0", !78, i64 0}
!78 = !{!"0x4a59de0.w8.b0", !79, i64 0}
!79 = !{!"0x4a59de0.w16.b0", !80, i64 0}
!80 = !{!"0x4a59de0.w32.b0", !81, i64 0}
!81 = !{!"0x4a59de0.w64.b0", !82, i64 0}
!82 = !{!"0x4a59de0.w128.b0", !83, i64 0}
!83 = !{!"0x4a59de0.w256.b0", !84, i64 0}
!84 = !{!"0x4a59de0.w512.b0", !85, i64 0}
!85 = !{!"0x4a59de0.w1024.b0", !86, i64 0}
!86 = !{!"i8*", !87, i64 0}
!87 = !{!"0x4a59de0", !7, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"0x4a59de0.w1.b1", !76, i64 0}
!90 = !{!91, !91, i64 0}
!91 = !{!"0x4b63050.w1.b0", !92, i64 0}
!92 = !{!"0x4b63050.w2.b0", !93, i64 0}
!93 = !{!"0x4b63050.w4.b0", !94, i64 0}
!94 = !{!"0x4b63050.w8.b0", !95, i64 0}
!95 = !{!"0x4b63050.w16.b0", !96, i64 0}
!96 = !{!"0x4b63050.w32.b0", !97, i64 0}
!97 = !{!"0x4b63050.w64.b0", !98, i64 0}
!98 = !{!"0x4b63050.w128.b0", !99, i64 0}
!99 = !{!"0x4b63050.w256.b0", !100, i64 0}
!100 = !{!"0x4b63050.w512.b0", !101, i64 0}
!101 = !{!"0x4b63050.w1024.b0", !102, i64 0}
!102 = !{!"i8*", !103, i64 0}
!103 = !{!"0x4b63050", !7, i64 0}
!104 = !{!105, !105, i64 0}
!105 = !{!"0x4b63050.w1.b1", !92, i64 0}
!106 = !{!107, !107, i64 0}
!107 = !{!"0x4b63050.w1.b2", !108, i64 0}
!108 = !{!"0x4b63050.w2.b2", !93, i64 0}
!109 = !{!110, !110, i64 0}
!110 = !{!"0x4b69610.w1.b0", !111, i64 0}
!111 = !{!"0x4b69610.w2.b0", !112, i64 0}
!112 = !{!"0x4b69610.w4.b0", !113, i64 0}
!113 = !{!"0x4b69610.w8.b0", !114, i64 0}
!114 = !{!"0x4b69610.w16.b0", !115, i64 0}
!115 = !{!"0x4b69610.w32.b0", !116, i64 0}
!116 = !{!"0x4b69610.w64.b0", !117, i64 0}
!117 = !{!"0x4b69610.w128.b0", !118, i64 0}
!118 = !{!"0x4b69610.w256.b0", !119, i64 0}
!119 = !{!"0x4b69610.w512.b0", !120, i64 0}
!120 = !{!"0x4b69610.w1024.b0", !121, i64 0}
!121 = !{!"i8*", !122, i64 0}
!122 = !{!"0x4b69610", !7, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"0x4b69610.w1.b1", !111, i64 0}
!125 = !{!126, !126, i64 0}
!126 = !{!"0x4b69610.w1.b2", !127, i64 0}
!127 = !{!"0x4b69610.w2.b2", !112, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"0x4b69610.w1.b3", !127, i64 0}
!130 = !{!131, !131, i64 0}
!131 = !{!"0x4b69fb0.w4.b0", !132, i64 0}
!132 = !{!"0x4b69fb0.w8.b0", !133, i64 0}
!133 = !{!"0x4b69fb0.w16.b0", !134, i64 0}
!134 = !{!"0x4b69fb0.w32.b0", !135, i64 0}
!135 = !{!"0x4b69fb0.w64.b0", !136, i64 0}
!136 = !{!"0x4b69fb0.w128.b0", !137, i64 0}
!137 = !{!"0x4b69fb0.w256.b0", !138, i64 0}
!138 = !{!"0x4b69fb0.w512.b0", !139, i64 0}
!139 = !{!"0x4b69fb0.w1024.b0", !140, i64 0}
!140 = !{!"i8*", !141, i64 0}
!141 = !{!"0x4b69fb0", !7, i64 0}
!142 = !{!143, !143, i64 0}
!143 = !{!"0x4b6c150.w1.b0", !144, i64 0}
!144 = !{!"0x4b6c150.w2.b0", !145, i64 0}
!145 = !{!"0x4b6c150.w4.b0", !146, i64 0}
!146 = !{!"0x4b6c150.w8.b0", !147, i64 0}
!147 = !{!"0x4b6c150.w16.b0", !148, i64 0}
!148 = !{!"0x4b6c150.w32.b0", !149, i64 0}
!149 = !{!"0x4b6c150.w64.b0", !150, i64 0}
!150 = !{!"0x4b6c150.w128.b0", !151, i64 0}
!151 = !{!"0x4b6c150.w256.b0", !152, i64 0}
!152 = !{!"0x4b6c150.w512.b0", !153, i64 0}
!153 = !{!"0x4b6c150.w1024.b0", !154, i64 0}
!154 = !{!"i8*", !155, i64 0}
!155 = !{!"0x4b6c150", !7, i64 0}
!156 = !{!157, !157, i64 0}
!157 = !{!"0x4b6c470.w1.b0", !158, i64 0}
!158 = !{!"0x4b6c470.w2.b0", !159, i64 0}
!159 = !{!"0x4b6c470.w4.b0", !160, i64 0}
!160 = !{!"0x4b6c470.w8.b0", !161, i64 0}
!161 = !{!"0x4b6c470.w16.b0", !162, i64 0}
!162 = !{!"0x4b6c470.w32.b0", !163, i64 0}
!163 = !{!"0x4b6c470.w64.b0", !164, i64 0}
!164 = !{!"0x4b6c470.w128.b0", !165, i64 0}
!165 = !{!"0x4b6c470.w256.b0", !166, i64 0}
!166 = !{!"0x4b6c470.w512.b0", !167, i64 0}
!167 = !{!"0x4b6c470.w1024.b0", !168, i64 0}
!168 = !{!"i8*", !169, i64 0}
!169 = !{!"0x4b6c470", !7, i64 0}
!170 = !{!171, !171, i64 0}
!171 = !{!"0x4b6e090.w1.b0", !172, i64 0}
!172 = !{!"0x4b6e090.w2.b0", !173, i64 0}
!173 = !{!"0x4b6e090.w4.b0", !174, i64 0}
!174 = !{!"0x4b6e090.w8.b0", !175, i64 0}
!175 = !{!"0x4b6e090.w16.b0", !176, i64 0}
!176 = !{!"0x4b6e090.w32.b0", !177, i64 0}
!177 = !{!"0x4b6e090.w64.b0", !178, i64 0}
!178 = !{!"0x4b6e090.w128.b0", !179, i64 0}
!179 = !{!"0x4b6e090.w256.b0", !180, i64 0}
!180 = !{!"0x4b6e090.w512.b0", !181, i64 0}
!181 = !{!"0x4b6e090.w1024.b0", !182, i64 0}
!182 = !{!"i8*", !183, i64 0}
!183 = !{!"0x4b6e090", !7, i64 0}
!184 = !{!185, !185, i64 0}
!185 = !{!"0x4b6e090.w1.b1", !172, i64 0}
!186 = !{!187, !187, i64 0}
!187 = !{!"0x4b6e090.w1.b2", !188, i64 0}
!188 = !{!"0x4b6e090.w2.b2", !173, i64 0}
!189 = !{!190, !190, i64 0}
!190 = !{!"0x4b6e090.w1.b3", !188, i64 0}
!191 = !{!192, !192, i64 0}
!192 = !{!"0x4b6eaa0.w4.b0", !193, i64 0}
!193 = !{!"0x4b6eaa0.w8.b0", !194, i64 0}
!194 = !{!"0x4b6eaa0.w16.b0", !195, i64 0}
!195 = !{!"0x4b6eaa0.w32.b0", !196, i64 0}
!196 = !{!"0x4b6eaa0.w64.b0", !197, i64 0}
!197 = !{!"0x4b6eaa0.w128.b0", !198, i64 0}
!198 = !{!"0x4b6eaa0.w256.b0", !199, i64 0}
!199 = !{!"0x4b6eaa0.w512.b0", !200, i64 0}
!200 = !{!"0x4b6eaa0.w1024.b0", !201, i64 0}
!201 = !{!"i8*", !202, i64 0}
!202 = !{!"0x4b6eaa0", !7, i64 0}
!203 = !{!204, !204, i64 0}
!204 = !{!"float", !205, i64 0}
!205 = !{!"0x4aef010", !7, i64 0}
!206 = !{!207, !207, i64 0}
!207 = !{!"float", !208, i64 0}
!208 = !{!"0x4aeef70", !7, i64 0}
!209 = !{!210, !210, i64 0}
!210 = !{!"float", !211, i64 0}
!211 = !{!"0x4aef130", !7, i64 0}
!212 = !{!213, !213, i64 0}
!213 = !{!"0x4993830.w1.b0", !214, i64 0}
!214 = !{!"0x4993830.w2.b0", !215, i64 0}
!215 = !{!"0x4993830.w4.b0", !216, i64 0}
!216 = !{!"0x4993830.w8.b0", !217, i64 0}
!217 = !{!"0x4993830.w16.b0", !218, i64 0}
!218 = !{!"0x4993830.w32.b0", !219, i64 0}
!219 = !{!"0x4993830.w64.b0", !220, i64 0}
!220 = !{!"0x4993830.w128.b0", !221, i64 0}
!221 = !{!"0x4993830.w256.b0", !222, i64 0}
!222 = !{!"0x4993830.w512.b0", !223, i64 0}
!223 = !{!"0x4993830.w1024.b0", !224, i64 0}
!224 = !{!"i8*", !225, i64 0}
!225 = !{!"0x4993830", !7, i64 0}
!226 = !{!227, !227, i64 0}
!227 = !{!"0x4993830.w1.b1", !214, i64 0}
!228 = !{!229, !229, i64 0}
!229 = !{!"0x4993830.w1.b2", !230, i64 0}
!230 = !{!"0x4993830.w2.b2", !215, i64 0}
!231 = !{!232, !232, i64 0}
!232 = !{!"0x4a24f80.w1.b0", !233, i64 0}
!233 = !{!"0x4a24f80.w2.b0", !234, i64 0}
!234 = !{!"0x4a24f80.w4.b0", !235, i64 0}
!235 = !{!"0x4a24f80.w8.b0", !236, i64 0}
!236 = !{!"0x4a24f80.w16.b0", !237, i64 0}
!237 = !{!"0x4a24f80.w32.b0", !238, i64 0}
!238 = !{!"0x4a24f80.w64.b0", !239, i64 0}
!239 = !{!"0x4a24f80.w128.b0", !240, i64 0}
!240 = !{!"0x4a24f80.w256.b0", !241, i64 0}
!241 = !{!"0x4a24f80.w512.b0", !242, i64 0}
!242 = !{!"0x4a24f80.w1024.b0", !243, i64 0}
!243 = !{!"i8*", !244, i64 0}
!244 = !{!"0x4a24f80", !7, i64 0}
!245 = !{!246, !246, i64 0}
!246 = !{!"0x4a24f80.w1.b1", !233, i64 0}
!247 = !{!248, !248, i64 0}
!248 = !{!"0x4a274f0.w1.b0", !249, i64 0}
!249 = !{!"0x4a274f0.w2.b0", !250, i64 0}
!250 = !{!"0x4a274f0.w4.b0", !251, i64 0}
!251 = !{!"0x4a274f0.w8.b0", !252, i64 0}
!252 = !{!"0x4a274f0.w16.b0", !253, i64 0}
!253 = !{!"0x4a274f0.w32.b0", !254, i64 0}
!254 = !{!"0x4a274f0.w64.b0", !255, i64 0}
!255 = !{!"0x4a274f0.w128.b0", !256, i64 0}
!256 = !{!"0x4a274f0.w256.b0", !257, i64 0}
!257 = !{!"0x4a274f0.w512.b0", !258, i64 0}
!258 = !{!"0x4a274f0.w1024.b0", !259, i64 0}
!259 = !{!"i8*", !260, i64 0}
!260 = !{!"0x4a274f0", !7, i64 0}
!261 = !{!262, !262, i64 0}
!262 = !{!"0x4a274f0.w1.b1", !249, i64 0}
!263 = !{!264, !264, i64 0}
!264 = !{!"0x4aef9b0.w1.b0", !265, i64 0}
!265 = !{!"0x4aef9b0.w2.b0", !266, i64 0}
!266 = !{!"0x4aef9b0.w4.b0", !267, i64 0}
!267 = !{!"0x4aef9b0.w8.b0", !268, i64 0}
!268 = !{!"0x4aef9b0.w16.b0", !269, i64 0}
!269 = !{!"0x4aef9b0.w32.b0", !270, i64 0}
!270 = !{!"0x4aef9b0.w64.b0", !271, i64 0}
!271 = !{!"0x4aef9b0.w128.b0", !272, i64 0}
!272 = !{!"0x4aef9b0.w256.b0", !273, i64 0}
!273 = !{!"0x4aef9b0.w512.b0", !274, i64 0}
!274 = !{!"0x4aef9b0.w1024.b0", !275, i64 0}
!275 = !{!"i8*", !276, i64 0}
!276 = !{!"0x4aef9b0", !7, i64 0}
!277 = !{!278, !278, i64 0}
!278 = !{!"0x4a27e40.w1.b0", !279, i64 0}
!279 = !{!"0x4a27e40.w2.b0", !280, i64 0}
!280 = !{!"0x4a27e40.w4.b0", !281, i64 0}
!281 = !{!"0x4a27e40.w8.b0", !282, i64 0}
!282 = !{!"0x4a27e40.w16.b0", !283, i64 0}
!283 = !{!"0x4a27e40.w32.b0", !284, i64 0}
!284 = !{!"0x4a27e40.w64.b0", !285, i64 0}
!285 = !{!"0x4a27e40.w128.b0", !286, i64 0}
!286 = !{!"0x4a27e40.w256.b0", !287, i64 0}
!287 = !{!"0x4a27e40.w512.b0", !288, i64 0}
!288 = !{!"0x4a27e40.w1024.b0", !289, i64 0}
!289 = !{!"i8*", !290, i64 0}
!290 = !{!"0x4a27e40", !7, i64 0}
!291 = !{!292, !292, i64 0}
!292 = !{!"0x4a0ed40.w1.b0", !293, i64 0}
!293 = !{!"0x4a0ed40.w2.b0", !294, i64 0}
!294 = !{!"0x4a0ed40.w4.b0", !295, i64 0}
!295 = !{!"0x4a0ed40.w8.b0", !296, i64 0}
!296 = !{!"0x4a0ed40.w16.b0", !297, i64 0}
!297 = !{!"0x4a0ed40.w32.b0", !298, i64 0}
!298 = !{!"0x4a0ed40.w64.b0", !299, i64 0}
!299 = !{!"0x4a0ed40.w128.b0", !300, i64 0}
!300 = !{!"0x4a0ed40.w256.b0", !301, i64 0}
!301 = !{!"0x4a0ed40.w512.b0", !302, i64 0}
!302 = !{!"0x4a0ed40.w1024.b0", !303, i64 0}
!303 = !{!"i8*", !304, i64 0}
!304 = !{!"0x4a0ed40", !7, i64 0}
!305 = !{!306, !306, i64 0}
!306 = !{!"0x4a0ed40.w1.b1", !293, i64 0}
!307 = !{!308, !308, i64 0}
!308 = !{!"0x4a10f70.w1.b0", !309, i64 0}
!309 = !{!"0x4a10f70.w2.b0", !310, i64 0}
!310 = !{!"0x4a10f70.w4.b0", !311, i64 0}
!311 = !{!"0x4a10f70.w8.b0", !312, i64 0}
!312 = !{!"0x4a10f70.w16.b0", !313, i64 0}
!313 = !{!"0x4a10f70.w32.b0", !314, i64 0}
!314 = !{!"0x4a10f70.w64.b0", !315, i64 0}
!315 = !{!"0x4a10f70.w128.b0", !316, i64 0}
!316 = !{!"0x4a10f70.w256.b0", !317, i64 0}
!317 = !{!"0x4a10f70.w512.b0", !318, i64 0}
!318 = !{!"0x4a10f70.w1024.b0", !319, i64 0}
!319 = !{!"i8*", !320, i64 0}
!320 = !{!"0x4a10f70", !7, i64 0}
!321 = !{!322, !322, i64 0}
!322 = !{!"0x4a10f70.w1.b1", !309, i64 0}
!323 = !{!324, !324, i64 0}
!324 = !{!"float", !325, i64 0}
!325 = !{!"0x4a144e0", !7, i64 0}
!326 = !{!327, !327, i64 0}
!327 = !{!"float", !328, i64 0}
!328 = !{!"0x4a198d0", !7, i64 0}
!329 = !{!330, !330, i64 0}
!330 = !{!"float", !331, i64 0}
!331 = !{!"0x4a144a0", !7, i64 0}
!332 = !{!333, !333, i64 0}
!333 = !{!"0x4a27480.w1.b0", !334, i64 0}
!334 = !{!"0x4a27480.w2.b0", !335, i64 0}
!335 = !{!"0x4a27480.w4.b0", !336, i64 0}
!336 = !{!"0x4a27480.w8.b0", !337, i64 0}
!337 = !{!"0x4a27480.w16.b0", !338, i64 0}
!338 = !{!"0x4a27480.w32.b0", !339, i64 0}
!339 = !{!"0x4a27480.w64.b0", !340, i64 0}
!340 = !{!"0x4a27480.w128.b0", !341, i64 0}
!341 = !{!"0x4a27480.w256.b0", !342, i64 0}
!342 = !{!"0x4a27480.w512.b0", !343, i64 0}
!343 = !{!"0x4a27480.w1024.b0", !344, i64 0}
!344 = !{!"i8*", !345, i64 0}
!345 = !{!"0x4a27480", !7, i64 0}
!346 = !{!347, !347, i64 0}
!347 = !{!"0x4a27480.w1.b1", !334, i64 0}
!348 = !{!349, !349, i64 0}
!349 = !{!"0x4a27480.w1.b2", !350, i64 0}
!350 = !{!"0x4a27480.w2.b2", !335, i64 0}
!351 = !{!352, !352, i64 0}
!352 = !{!"0x4a41900.w1.b0", !353, i64 0}
!353 = !{!"0x4a41900.w2.b0", !354, i64 0}
!354 = !{!"0x4a41900.w4.b0", !355, i64 0}
!355 = !{!"0x4a41900.w8.b0", !356, i64 0}
!356 = !{!"0x4a41900.w16.b0", !357, i64 0}
!357 = !{!"0x4a41900.w32.b0", !358, i64 0}
!358 = !{!"0x4a41900.w64.b0", !359, i64 0}
!359 = !{!"0x4a41900.w128.b0", !360, i64 0}
!360 = !{!"0x4a41900.w256.b0", !361, i64 0}
!361 = !{!"0x4a41900.w512.b0", !362, i64 0}
!362 = !{!"0x4a41900.w1024.b0", !363, i64 0}
!363 = !{!"i8*", !364, i64 0}
!364 = !{!"0x4a41900", !7, i64 0}
!365 = !{!366, !366, i64 0}
!366 = !{!"0x4a41900.w1.b1", !353, i64 0}
!367 = !{!368, !368, i64 0}
!368 = !{!"0x4a41d30.w1.b0", !369, i64 0}
!369 = !{!"0x4a41d30.w2.b0", !370, i64 0}
!370 = !{!"0x4a41d30.w4.b0", !371, i64 0}
!371 = !{!"0x4a41d30.w8.b0", !372, i64 0}
!372 = !{!"0x4a41d30.w16.b0", !373, i64 0}
!373 = !{!"0x4a41d30.w32.b0", !374, i64 0}
!374 = !{!"0x4a41d30.w64.b0", !375, i64 0}
!375 = !{!"0x4a41d30.w128.b0", !376, i64 0}
!376 = !{!"0x4a41d30.w256.b0", !377, i64 0}
!377 = !{!"0x4a41d30.w512.b0", !378, i64 0}
!378 = !{!"0x4a41d30.w1024.b0", !379, i64 0}
!379 = !{!"i8*", !380, i64 0}
!380 = !{!"0x4a41d30", !7, i64 0}
!381 = !{!382, !382, i64 0}
!382 = !{!"0x4a41d30.w1.b1", !369, i64 0}
!383 = !{!384, !384, i64 0}
!384 = !{!"0x4a48090.w1.b0", !385, i64 0}
!385 = !{!"0x4a48090.w2.b0", !386, i64 0}
!386 = !{!"0x4a48090.w4.b0", !387, i64 0}
!387 = !{!"0x4a48090.w8.b0", !388, i64 0}
!388 = !{!"0x4a48090.w16.b0", !389, i64 0}
!389 = !{!"0x4a48090.w32.b0", !390, i64 0}
!390 = !{!"0x4a48090.w64.b0", !391, i64 0}
!391 = !{!"0x4a48090.w128.b0", !392, i64 0}
!392 = !{!"0x4a48090.w256.b0", !393, i64 0}
!393 = !{!"0x4a48090.w512.b0", !394, i64 0}
!394 = !{!"0x4a48090.w1024.b0", !395, i64 0}
!395 = !{!"i8*", !396, i64 0}
!396 = !{!"0x4a48090", !7, i64 0}
!397 = !{!398, !398, i64 0}
!398 = !{!"0x4a483b0.w1.b0", !399, i64 0}
!399 = !{!"0x4a483b0.w2.b0", !400, i64 0}
!400 = !{!"0x4a483b0.w4.b0", !401, i64 0}
!401 = !{!"0x4a483b0.w8.b0", !402, i64 0}
!402 = !{!"0x4a483b0.w16.b0", !403, i64 0}
!403 = !{!"0x4a483b0.w32.b0", !404, i64 0}
!404 = !{!"0x4a483b0.w64.b0", !405, i64 0}
!405 = !{!"0x4a483b0.w128.b0", !406, i64 0}
!406 = !{!"0x4a483b0.w256.b0", !407, i64 0}
!407 = !{!"0x4a483b0.w512.b0", !408, i64 0}
!408 = !{!"0x4a483b0.w1024.b0", !409, i64 0}
!409 = !{!"i8*", !410, i64 0}
!410 = !{!"0x4a483b0", !7, i64 0}
!411 = !{!412, !412, i64 0}
!412 = !{!"0x4a4a7c0.w1.b0", !413, i64 0}
!413 = !{!"0x4a4a7c0.w2.b0", !414, i64 0}
!414 = !{!"0x4a4a7c0.w4.b0", !415, i64 0}
!415 = !{!"0x4a4a7c0.w8.b0", !416, i64 0}
!416 = !{!"0x4a4a7c0.w16.b0", !417, i64 0}
!417 = !{!"0x4a4a7c0.w32.b0", !418, i64 0}
!418 = !{!"0x4a4a7c0.w64.b0", !419, i64 0}
!419 = !{!"0x4a4a7c0.w128.b0", !420, i64 0}
!420 = !{!"0x4a4a7c0.w256.b0", !421, i64 0}
!421 = !{!"0x4a4a7c0.w512.b0", !422, i64 0}
!422 = !{!"0x4a4a7c0.w1024.b0", !423, i64 0}
!423 = !{!"i8*", !424, i64 0}
!424 = !{!"0x4a4a7c0", !7, i64 0}
!425 = !{!426, !426, i64 0}
!426 = !{!"0x4a4a7c0.w1.b1", !413, i64 0}
!427 = !{!428, !428, i64 0}
!428 = !{!"0x4a4ad10.w1.b0", !429, i64 0}
!429 = !{!"0x4a4ad10.w2.b0", !430, i64 0}
!430 = !{!"0x4a4ad10.w4.b0", !431, i64 0}
!431 = !{!"0x4a4ad10.w8.b0", !432, i64 0}
!432 = !{!"0x4a4ad10.w16.b0", !433, i64 0}
!433 = !{!"0x4a4ad10.w32.b0", !434, i64 0}
!434 = !{!"0x4a4ad10.w64.b0", !435, i64 0}
!435 = !{!"0x4a4ad10.w128.b0", !436, i64 0}
!436 = !{!"0x4a4ad10.w256.b0", !437, i64 0}
!437 = !{!"0x4a4ad10.w512.b0", !438, i64 0}
!438 = !{!"0x4a4ad10.w1024.b0", !439, i64 0}
!439 = !{!"i8*", !440, i64 0}
!440 = !{!"0x4a4ad10", !7, i64 0}
!441 = !{!442, !442, i64 0}
!442 = !{!"0x4a4ad10.w1.b1", !429, i64 0}
!443 = !{!444, !444, i64 0}
!444 = !{!"0x4a2b720.w16.b0", !445, i64 0}
!445 = !{!"0x4a2b720.w32.b0", !446, i64 0}
!446 = !{!"0x4a2b720.w64.b0", !447, i64 0}
!447 = !{!"0x4a2b720.w128.b0", !448, i64 0}
!448 = !{!"0x4a2b720.w256.b0", !449, i64 0}
!449 = !{!"0x4a2b720.w512.b0", !450, i64 0}
!450 = !{!"0x4a2b720.w1024.b0", !451, i64 0}
!451 = !{!"float", !452, i64 0}
!452 = !{!"0x4a2b720", !7, i64 0}
!453 = !{!454, !454, i64 0}
!454 = !{!"0x4a30e60.w16.b0", !455, i64 0}
!455 = !{!"0x4a30e60.w32.b0", !456, i64 0}
!456 = !{!"0x4a30e60.w64.b0", !457, i64 0}
!457 = !{!"0x4a30e60.w128.b0", !458, i64 0}
!458 = !{!"0x4a30e60.w256.b0", !459, i64 0}
!459 = !{!"0x4a30e60.w512.b0", !460, i64 0}
!460 = !{!"0x4a30e60.w1024.b0", !461, i64 0}
!461 = !{!"float", !462, i64 0}
!462 = !{!"0x4a30e60", !7, i64 0}
!463 = !{!464, !464, i64 0}
!464 = !{!"0x4a29610.w16.b0", !465, i64 0}
!465 = !{!"0x4a29610.w32.b0", !466, i64 0}
!466 = !{!"0x4a29610.w64.b0", !467, i64 0}
!467 = !{!"0x4a29610.w128.b0", !468, i64 0}
!468 = !{!"0x4a29610.w256.b0", !469, i64 0}
!469 = !{!"0x4a29610.w512.b0", !470, i64 0}
!470 = !{!"0x4a29610.w1024.b0", !471, i64 0}
!471 = !{!"float", !472, i64 0}
!472 = !{!"0x4a29610", !7, i64 0}
!473 = !{!474, !474, i64 0}
!474 = !{!"0x4a41cc0.w1.b0", !475, i64 0}
!475 = !{!"0x4a41cc0.w2.b0", !476, i64 0}
!476 = !{!"0x4a41cc0.w4.b0", !477, i64 0}
!477 = !{!"0x4a41cc0.w8.b0", !478, i64 0}
!478 = !{!"0x4a41cc0.w16.b0", !479, i64 0}
!479 = !{!"0x4a41cc0.w32.b0", !480, i64 0}
!480 = !{!"0x4a41cc0.w64.b0", !481, i64 0}
!481 = !{!"0x4a41cc0.w128.b0", !482, i64 0}
!482 = !{!"0x4a41cc0.w256.b0", !483, i64 0}
!483 = !{!"0x4a41cc0.w512.b0", !484, i64 0}
!484 = !{!"0x4a41cc0.w1024.b0", !485, i64 0}
!485 = !{!"i8*", !486, i64 0}
!486 = !{!"0x4a41cc0", !7, i64 0}
!487 = !{!488, !488, i64 0}
!488 = !{!"0x4a41cc0.w1.b1", !475, i64 0}
!489 = !{!490, !490, i64 0}
!490 = !{!"0x4a41cc0.w1.b2", !491, i64 0}
!491 = !{!"0x4a41cc0.w2.b2", !476, i64 0}
!492 = !{!493, !493, i64 0}
!493 = !{!"0x4a4e0b0.w1.b0", !494, i64 0}
!494 = !{!"0x4a4e0b0.w2.b0", !495, i64 0}
!495 = !{!"0x4a4e0b0.w4.b0", !496, i64 0}
!496 = !{!"0x4a4e0b0.w8.b0", !497, i64 0}
!497 = !{!"0x4a4e0b0.w16.b0", !498, i64 0}
!498 = !{!"0x4a4e0b0.w32.b0", !499, i64 0}
!499 = !{!"0x4a4e0b0.w64.b0", !500, i64 0}
!500 = !{!"0x4a4e0b0.w128.b0", !501, i64 0}
!501 = !{!"0x4a4e0b0.w256.b0", !502, i64 0}
!502 = !{!"0x4a4e0b0.w512.b0", !503, i64 0}
!503 = !{!"0x4a4e0b0.w1024.b0", !504, i64 0}
!504 = !{!"i8*", !505, i64 0}
!505 = !{!"0x4a4e0b0", !7, i64 0}
!506 = !{!507, !507, i64 0}
!507 = !{!"0x4a4e0b0.w1.b1", !494, i64 0}
!508 = !{!509, !509, i64 0}
!509 = !{!"0x4a4e0b0.w1.b2", !510, i64 0}
!510 = !{!"0x4a4e0b0.w2.b2", !495, i64 0}
!511 = !{!512, !512, i64 0}
!512 = !{!"0x4a4e0b0.w1.b3", !510, i64 0}
!513 = !{!514, !514, i64 0}
!514 = !{!"0x4a4ea50.w4.b0", !515, i64 0}
!515 = !{!"0x4a4ea50.w8.b0", !516, i64 0}
!516 = !{!"0x4a4ea50.w16.b0", !517, i64 0}
!517 = !{!"0x4a4ea50.w32.b0", !518, i64 0}
!518 = !{!"0x4a4ea50.w64.b0", !519, i64 0}
!519 = !{!"0x4a4ea50.w128.b0", !520, i64 0}
!520 = !{!"0x4a4ea50.w256.b0", !521, i64 0}
!521 = !{!"0x4a4ea50.w512.b0", !522, i64 0}
!522 = !{!"0x4a4ea50.w1024.b0", !523, i64 0}
!523 = !{!"i8*", !524, i64 0}
!524 = !{!"0x4a4ea50", !7, i64 0}
!525 = !{!526, !526, i64 0}
!526 = !{!"0x4a50bf0.w1.b0", !527, i64 0}
!527 = !{!"0x4a50bf0.w2.b0", !528, i64 0}
!528 = !{!"0x4a50bf0.w4.b0", !529, i64 0}
!529 = !{!"0x4a50bf0.w8.b0", !530, i64 0}
!530 = !{!"0x4a50bf0.w16.b0", !531, i64 0}
!531 = !{!"0x4a50bf0.w32.b0", !532, i64 0}
!532 = !{!"0x4a50bf0.w64.b0", !533, i64 0}
!533 = !{!"0x4a50bf0.w128.b0", !534, i64 0}
!534 = !{!"0x4a50bf0.w256.b0", !535, i64 0}
!535 = !{!"0x4a50bf0.w512.b0", !536, i64 0}
!536 = !{!"0x4a50bf0.w1024.b0", !537, i64 0}
!537 = !{!"i8*", !538, i64 0}
!538 = !{!"0x4a50bf0", !7, i64 0}
!539 = !{!540, !540, i64 0}
!540 = !{!"0x4a50bf0.w1.b1", !527, i64 0}
!541 = !{!542, !542, i64 0}
!542 = !{!"0x4a50bf0.w1.b2", !543, i64 0}
!543 = !{!"0x4a50bf0.w2.b2", !528, i64 0}
!544 = !{!545, !545, i64 0}
!545 = !{!"0x4a50bf0.w1.b3", !543, i64 0}
!546 = !{!547, !547, i64 0}
!547 = !{!"0x4a51580.w4.b0", !548, i64 0}
!548 = !{!"0x4a51580.w8.b0", !549, i64 0}
!549 = !{!"0x4a51580.w16.b0", !550, i64 0}
!550 = !{!"0x4a51580.w32.b0", !551, i64 0}
!551 = !{!"0x4a51580.w64.b0", !552, i64 0}
!552 = !{!"0x4a51580.w128.b0", !553, i64 0}
!553 = !{!"0x4a51580.w256.b0", !554, i64 0}
!554 = !{!"0x4a51580.w512.b0", !555, i64 0}
!555 = !{!"0x4a51580.w1024.b0", !556, i64 0}
!556 = !{!"i8*", !557, i64 0}
!557 = !{!"0x4a51580", !7, i64 0}
!558 = !{!559, !559, i64 0}
!559 = !{!"0x4a53760.w1.b0", !560, i64 0}
!560 = !{!"0x4a53760.w2.b0", !561, i64 0}
!561 = !{!"0x4a53760.w4.b0", !562, i64 0}
!562 = !{!"0x4a53760.w8.b0", !563, i64 0}
!563 = !{!"0x4a53760.w16.b0", !564, i64 0}
!564 = !{!"0x4a53760.w32.b0", !565, i64 0}
!565 = !{!"0x4a53760.w64.b0", !566, i64 0}
!566 = !{!"0x4a53760.w128.b0", !567, i64 0}
!567 = !{!"0x4a53760.w256.b0", !568, i64 0}
!568 = !{!"0x4a53760.w512.b0", !569, i64 0}
!569 = !{!"0x4a53760.w1024.b0", !570, i64 0}
!570 = !{!"i8*", !571, i64 0}
!571 = !{!"0x4a53760", !7, i64 0}
!572 = !{!573, !573, i64 0}
!573 = !{!"0x4a53760.w1.b1", !560, i64 0}
!574 = !{!575, !575, i64 0}
!575 = !{!"0x4a53760.w1.b2", !576, i64 0}
!576 = !{!"0x4a53760.w2.b2", !561, i64 0}
!577 = !{!578, !578, i64 0}
!578 = !{!"0x4a53760.w1.b3", !576, i64 0}
!579 = !{!580, !580, i64 0}
!580 = !{!"0x4a54170.w4.b0", !581, i64 0}
!581 = !{!"0x4a54170.w8.b0", !582, i64 0}
!582 = !{!"0x4a54170.w16.b0", !583, i64 0}
!583 = !{!"0x4a54170.w32.b0", !584, i64 0}
!584 = !{!"0x4a54170.w64.b0", !585, i64 0}
!585 = !{!"0x4a54170.w128.b0", !586, i64 0}
!586 = !{!"0x4a54170.w256.b0", !587, i64 0}
!587 = !{!"0x4a54170.w512.b0", !588, i64 0}
!588 = !{!"0x4a54170.w1024.b0", !589, i64 0}
!589 = !{!"i8*", !590, i64 0}
!590 = !{!"0x4a54170", !7, i64 0}
!591 = !{!592, !592, i64 0}
!592 = !{!"float", !593, i64 0}
!593 = !{!"0x4aef070", !7, i64 0}
!594 = !{!595, !595, i64 0}
!595 = !{!"float", !596, i64 0}
!596 = !{!"0x4aef330", !7, i64 0}
!597 = !{!598, !598, i64 0}
!598 = !{!"float", !599, i64 0}
!599 = !{!"0x4aeefd0", !7, i64 0}
!600 = !{!601, !601, i64 0}
!601 = !{!"<4 x float>", !602, i64 0}
!602 = !{!"0x4ae0c60", !7, i64 0}
!603 = !{!604, !604, i64 0}
!604 = !{!"float", !605, i64 0}
!605 = !{!"0x4aeef30", !7, i64 0}
!606 = !{!607, !607, i64 0}
!607 = !{!"0x4a577f0.w1.b0", !608, i64 0}
!608 = !{!"0x4a577f0.w2.b0", !609, i64 0}
!609 = !{!"0x4a577f0.w4.b0", !610, i64 0}
!610 = !{!"0x4a577f0.w8.b0", !611, i64 0}
!611 = !{!"0x4a577f0.w16.b0", !612, i64 0}
!612 = !{!"0x4a577f0.w32.b0", !613, i64 0}
!613 = !{!"0x4a577f0.w64.b0", !614, i64 0}
!614 = !{!"0x4a577f0.w128.b0", !615, i64 0}
!615 = !{!"0x4a577f0.w256.b0", !616, i64 0}
!616 = !{!"0x4a577f0.w512.b0", !617, i64 0}
!617 = !{!"0x4a577f0.w1024.b0", !618, i64 0}
!618 = !{!"i8*", !619, i64 0}
!619 = !{!"0x4a577f0", !7, i64 0}
!620 = !{!621, !621, i64 0}
!621 = !{!"0x4a577f0.w1.b1", !608, i64 0}
!622 = !{!623, !623, i64 0}
!623 = !{!"0x4a577f0.w1.b2", !624, i64 0}
!624 = !{!"0x4a577f0.w2.b2", !609, i64 0}
!625 = !{!626, !626, i64 0}
!626 = !{!"0x4b5af70.w1.b0", !627, i64 0}
!627 = !{!"0x4b5af70.w2.b0", !628, i64 0}
!628 = !{!"0x4b5af70.w4.b0", !629, i64 0}
!629 = !{!"0x4b5af70.w8.b0", !630, i64 0}
!630 = !{!"0x4b5af70.w16.b0", !631, i64 0}
!631 = !{!"0x4b5af70.w32.b0", !632, i64 0}
!632 = !{!"0x4b5af70.w64.b0", !633, i64 0}
!633 = !{!"0x4b5af70.w128.b0", !634, i64 0}
!634 = !{!"0x4b5af70.w256.b0", !635, i64 0}
!635 = !{!"0x4b5af70.w512.b0", !636, i64 0}
!636 = !{!"0x4b5af70.w1024.b0", !637, i64 0}
!637 = !{!"i8*", !638, i64 0}
!638 = !{!"0x4b5af70", !7, i64 0}
!639 = !{!640, !640, i64 0}
!640 = !{!"0x4b5af70.w1.b1", !627, i64 0}
!641 = !{!642, !642, i64 0}
!642 = !{!"0x4b5b3d0.w1.b0", !643, i64 0}
!643 = !{!"0x4b5b3d0.w2.b0", !644, i64 0}
!644 = !{!"0x4b5b3d0.w4.b0", !645, i64 0}
!645 = !{!"0x4b5b3d0.w8.b0", !646, i64 0}
!646 = !{!"0x4b5b3d0.w16.b0", !647, i64 0}
!647 = !{!"0x4b5b3d0.w32.b0", !648, i64 0}
!648 = !{!"0x4b5b3d0.w64.b0", !649, i64 0}
!649 = !{!"0x4b5b3d0.w128.b0", !650, i64 0}
!650 = !{!"0x4b5b3d0.w256.b0", !651, i64 0}
!651 = !{!"0x4b5b3d0.w512.b0", !652, i64 0}
!652 = !{!"0x4b5b3d0.w1024.b0", !653, i64 0}
!653 = !{!"i8*", !654, i64 0}
!654 = !{!"0x4b5b3d0", !7, i64 0}
!655 = !{!656, !656, i64 0}
!656 = !{!"0x4b5b3d0.w1.b1", !643, i64 0}
!657 = !{!658, !658, i64 0}
!658 = !{!"0x4b5d290.w1.b0", !659, i64 0}
!659 = !{!"0x4b5d290.w2.b0", !660, i64 0}
!660 = !{!"0x4b5d290.w4.b0", !661, i64 0}
!661 = !{!"0x4b5d290.w8.b0", !662, i64 0}
!662 = !{!"0x4b5d290.w16.b0", !663, i64 0}
!663 = !{!"0x4b5d290.w32.b0", !664, i64 0}
!664 = !{!"0x4b5d290.w64.b0", !665, i64 0}
!665 = !{!"0x4b5d290.w128.b0", !666, i64 0}
!666 = !{!"0x4b5d290.w256.b0", !667, i64 0}
!667 = !{!"0x4b5d290.w512.b0", !668, i64 0}
!668 = !{!"0x4b5d290.w1024.b0", !669, i64 0}
!669 = !{!"i8*", !670, i64 0}
!670 = !{!"0x4b5d290", !7, i64 0}
!671 = !{!672, !672, i64 0}
!672 = !{!"0x4b5d290.w1.b1", !659, i64 0}
!673 = !{!674, !674, i64 0}
!674 = !{!"0x4b5d700.w1.b0", !675, i64 0}
!675 = !{!"0x4b5d700.w2.b0", !676, i64 0}
!676 = !{!"0x4b5d700.w4.b0", !677, i64 0}
!677 = !{!"0x4b5d700.w8.b0", !678, i64 0}
!678 = !{!"0x4b5d700.w16.b0", !679, i64 0}
!679 = !{!"0x4b5d700.w32.b0", !680, i64 0}
!680 = !{!"0x4b5d700.w64.b0", !681, i64 0}
!681 = !{!"0x4b5d700.w128.b0", !682, i64 0}
!682 = !{!"0x4b5d700.w256.b0", !683, i64 0}
!683 = !{!"0x4b5d700.w512.b0", !684, i64 0}
!684 = !{!"0x4b5d700.w1024.b0", !685, i64 0}
!685 = !{!"i8*", !686, i64 0}
!686 = !{!"0x4b5d700", !7, i64 0}
!687 = !{!688, !688, i64 0}
!688 = !{!"0x4b5d700.w1.b1", !675, i64 0}
!689 = !{!690, !690, i64 0}
!690 = !{!"0x4b5f5e0.w1.b0", !691, i64 0}
!691 = !{!"0x4b5f5e0.w2.b0", !692, i64 0}
!692 = !{!"0x4b5f5e0.w4.b0", !693, i64 0}
!693 = !{!"0x4b5f5e0.w8.b0", !694, i64 0}
!694 = !{!"0x4b5f5e0.w16.b0", !695, i64 0}
!695 = !{!"0x4b5f5e0.w32.b0", !696, i64 0}
!696 = !{!"0x4b5f5e0.w64.b0", !697, i64 0}
!697 = !{!"0x4b5f5e0.w128.b0", !698, i64 0}
!698 = !{!"0x4b5f5e0.w256.b0", !699, i64 0}
!699 = !{!"0x4b5f5e0.w512.b0", !700, i64 0}
!700 = !{!"0x4b5f5e0.w1024.b0", !701, i64 0}
!701 = !{!"i8*", !702, i64 0}
!702 = !{!"0x4b5f5e0", !7, i64 0}
!703 = !{!704, !704, i64 0}
!704 = !{!"0x4b5f5e0.w1.b1", !691, i64 0}
!705 = !{!706, !706, i64 0}
!706 = !{!"0x4b5fb30.w1.b0", !707, i64 0}
!707 = !{!"0x4b5fb30.w2.b0", !708, i64 0}
!708 = !{!"0x4b5fb30.w4.b0", !709, i64 0}
!709 = !{!"0x4b5fb30.w8.b0", !710, i64 0}
!710 = !{!"0x4b5fb30.w16.b0", !711, i64 0}
!711 = !{!"0x4b5fb30.w32.b0", !712, i64 0}
!712 = !{!"0x4b5fb30.w64.b0", !713, i64 0}
!713 = !{!"0x4b5fb30.w128.b0", !714, i64 0}
!714 = !{!"0x4b5fb30.w256.b0", !715, i64 0}
!715 = !{!"0x4b5fb30.w512.b0", !716, i64 0}
!716 = !{!"0x4b5fb30.w1024.b0", !717, i64 0}
!717 = !{!"i8*", !718, i64 0}
!718 = !{!"0x4b5fb30", !7, i64 0}
!719 = !{!720, !720, i64 0}
!720 = !{!"0x4b5fb30.w1.b1", !707, i64 0}
!721 = !{!722, !722, i64 0}
!722 = !{!"float", !723, i64 0}
!723 = !{!"0x4a167b0", !7, i64 0}
!724 = !{!725, !725, i64 0}
!725 = !{!"float", !726, i64 0}
!726 = !{!"0x4a0be50", !7, i64 0}
!727 = !{!"branch_weights", i32 1, i32 262143}
!728 = distinct !{!728, !729}
!729 = !{!"llvm.loop.isvectorized", i32 1}
!730 = distinct !{!730, !729}
!731 = distinct !{!731, !729}
!732 = distinct !{!732, !729}
!733 = !{!734, !734, i64 0}
!734 = !{!"float", !735, i64 0}
!735 = !{!"0x4a17dd0", !7, i64 0}
!736 = !{!737, !737, i64 0}
!737 = !{!"float", !738, i64 0}
!738 = !{!"0x4a0e200", !7, i64 0}
!739 = !{!740, !740, i64 0}
!740 = !{!"0x4ad2e40.w1.b0", !741, i64 0}
!741 = !{!"0x4ad2e40.w2.b0", !742, i64 0}
!742 = !{!"0x4ad2e40.w4.b0", !743, i64 0}
!743 = !{!"0x4ad2e40.w8.b0", !744, i64 0}
!744 = !{!"0x4ad2e40.w16.b0", !745, i64 0}
!745 = !{!"0x4ad2e40.w32.b0", !746, i64 0}
!746 = !{!"0x4ad2e40.w64.b0", !747, i64 0}
!747 = !{!"0x4ad2e40.w128.b0", !748, i64 0}
!748 = !{!"0x4ad2e40.w256.b0", !749, i64 0}
!749 = !{!"0x4ad2e40.w512.b0", !750, i64 0}
!750 = !{!"0x4ad2e40.w1024.b0", !751, i64 0}
!751 = !{!"i8*", !752, i64 0}
!752 = !{!"0x4ad2e40", !7, i64 0}
!753 = !{!754, !754, i64 0}
!754 = !{!"0x4ad2e40.w1.b1", !741, i64 0}
!755 = !{!756, !756, i64 0}
!756 = !{!"0x4ad2e40.w1.b2", !757, i64 0}
!757 = !{!"0x4ad2e40.w2.b2", !742, i64 0}
!758 = !{!759, !759, i64 0}
!759 = !{!"0x4a2e2b0.w1.b0", !760, i64 0}
!760 = !{!"0x4a2e2b0.w2.b0", !761, i64 0}
!761 = !{!"0x4a2e2b0.w4.b0", !762, i64 0}
!762 = !{!"0x4a2e2b0.w8.b0", !763, i64 0}
!763 = !{!"0x4a2e2b0.w16.b0", !764, i64 0}
!764 = !{!"0x4a2e2b0.w32.b0", !765, i64 0}
!765 = !{!"0x4a2e2b0.w64.b0", !766, i64 0}
!766 = !{!"0x4a2e2b0.w128.b0", !767, i64 0}
!767 = !{!"0x4a2e2b0.w256.b0", !768, i64 0}
!768 = !{!"0x4a2e2b0.w512.b0", !769, i64 0}
!769 = !{!"0x4a2e2b0.w1024.b0", !770, i64 0}
!770 = !{!"i8*", !771, i64 0}
!771 = !{!"0x4a2e2b0", !7, i64 0}
!772 = !{!773, !773, i64 0}
!773 = !{!"0x4a2e2b0.w1.b1", !760, i64 0}
!774 = !{!775, !775, i64 0}
!775 = !{!"0x49938a0.w1.b0", !776, i64 0}
!776 = !{!"0x49938a0.w2.b0", !777, i64 0}
!777 = !{!"0x49938a0.w4.b0", !778, i64 0}
!778 = !{!"0x49938a0.w8.b0", !779, i64 0}
!779 = !{!"0x49938a0.w16.b0", !780, i64 0}
!780 = !{!"0x49938a0.w32.b0", !781, i64 0}
!781 = !{!"0x49938a0.w64.b0", !782, i64 0}
!782 = !{!"0x49938a0.w128.b0", !783, i64 0}
!783 = !{!"0x49938a0.w256.b0", !784, i64 0}
!784 = !{!"0x49938a0.w512.b0", !785, i64 0}
!785 = !{!"0x49938a0.w1024.b0", !786, i64 0}
!786 = !{!"i8*", !787, i64 0}
!787 = !{!"0x49938a0", !7, i64 0}
!788 = !{!789, !789, i64 0}
!789 = !{!"0x49938a0.w1.b1", !776, i64 0}
!790 = !{!791, !791, i64 0}
!791 = !{!"0x4a2df80.w1.b0", !792, i64 0}
!792 = !{!"0x4a2df80.w2.b0", !793, i64 0}
!793 = !{!"0x4a2df80.w4.b0", !794, i64 0}
!794 = !{!"0x4a2df80.w8.b0", !795, i64 0}
!795 = !{!"0x4a2df80.w16.b0", !796, i64 0}
!796 = !{!"0x4a2df80.w32.b0", !797, i64 0}
!797 = !{!"0x4a2df80.w64.b0", !798, i64 0}
!798 = !{!"0x4a2df80.w128.b0", !799, i64 0}
!799 = !{!"0x4a2df80.w256.b0", !800, i64 0}
!800 = !{!"0x4a2df80.w512.b0", !801, i64 0}
!801 = !{!"0x4a2df80.w1024.b0", !802, i64 0}
!802 = !{!"i8*", !803, i64 0}
!803 = !{!"0x4a2df80", !7, i64 0}
!804 = !{!805, !805, i64 0}
!805 = !{!"0x4a2df80.w1.b1", !792, i64 0}
!806 = !{!807, !807, i64 0}
!807 = !{!"0x4ad9e10.w1.b0", !808, i64 0}
!808 = !{!"0x4ad9e10.w2.b0", !809, i64 0}
!809 = !{!"0x4ad9e10.w4.b0", !810, i64 0}
!810 = !{!"0x4ad9e10.w8.b0", !811, i64 0}
!811 = !{!"0x4ad9e10.w16.b0", !812, i64 0}
!812 = !{!"0x4ad9e10.w32.b0", !813, i64 0}
!813 = !{!"0x4ad9e10.w64.b0", !814, i64 0}
!814 = !{!"0x4ad9e10.w128.b0", !815, i64 0}
!815 = !{!"0x4ad9e10.w256.b0", !816, i64 0}
!816 = !{!"0x4ad9e10.w512.b0", !817, i64 0}
!817 = !{!"0x4ad9e10.w1024.b0", !818, i64 0}
!818 = !{!"i8*", !819, i64 0}
!819 = !{!"0x4ad9e10", !7, i64 0}
!820 = !{!821, !821, i64 0}
!821 = !{!"0x4ad9e10.w1.b1", !808, i64 0}
!822 = !{!823, !823, i64 0}
!823 = !{!"0x4a22f20.w1.b0", !824, i64 0}
!824 = !{!"0x4a22f20.w2.b0", !825, i64 0}
!825 = !{!"0x4a22f20.w4.b0", !826, i64 0}
!826 = !{!"0x4a22f20.w8.b0", !827, i64 0}
!827 = !{!"0x4a22f20.w16.b0", !828, i64 0}
!828 = !{!"0x4a22f20.w32.b0", !829, i64 0}
!829 = !{!"0x4a22f20.w64.b0", !830, i64 0}
!830 = !{!"0x4a22f20.w128.b0", !831, i64 0}
!831 = !{!"0x4a22f20.w256.b0", !832, i64 0}
!832 = !{!"0x4a22f20.w512.b0", !833, i64 0}
!833 = !{!"0x4a22f20.w1024.b0", !834, i64 0}
!834 = !{!"i8*", !835, i64 0}
!835 = !{!"0x4a22f20", !7, i64 0}
!836 = !{!837, !837, i64 0}
!837 = !{!"0x4a22f20.w1.b1", !824, i64 0}
!838 = !{!839, !839, i64 0}
!839 = !{!"0x4a28640.w1.b0", !840, i64 0}
!840 = !{!"0x4a28640.w2.b0", !841, i64 0}
!841 = !{!"0x4a28640.w4.b0", !842, i64 0}
!842 = !{!"0x4a28640.w8.b0", !843, i64 0}
!843 = !{!"0x4a28640.w16.b0", !844, i64 0}
!844 = !{!"0x4a28640.w32.b0", !845, i64 0}
!845 = !{!"0x4a28640.w64.b0", !846, i64 0}
!846 = !{!"0x4a28640.w128.b0", !847, i64 0}
!847 = !{!"0x4a28640.w256.b0", !848, i64 0}
!848 = !{!"0x4a28640.w512.b0", !849, i64 0}
!849 = !{!"0x4a28640.w1024.b0", !850, i64 0}
!850 = !{!"i8*", !851, i64 0}
!851 = !{!"0x4a28640", !7, i64 0}
!852 = !{!853, !853, i64 0}
!853 = !{!"0x4a28640.w1.b1", !840, i64 0}
!854 = !{!855, !855, i64 0}
!855 = !{!"float", !856, i64 0}
!856 = !{!"0x4a26e60", !7, i64 0}
!857 = !{!858, !858, i64 0}
!858 = !{!"float", !859, i64 0}
!859 = !{!"0x4a2c0b0", !7, i64 0}
!860 = !{!861, !861, i64 0}
!861 = !{!"float", !862, i64 0}
!862 = !{!"0x4a29b70", !7, i64 0}
!863 = !{!864, !864, i64 0}
!864 = !{!"float", !865, i64 0}
!865 = !{!"0x4a2b250", !7, i64 0}
!866 = !{!867, !867, i64 0}
!867 = !{!"0x4abc6f0.w1.b0", !868, i64 0}
!868 = !{!"0x4abc6f0.w2.b0", !869, i64 0}
!869 = !{!"0x4abc6f0.w4.b0", !870, i64 0}
!870 = !{!"0x4abc6f0.w8.b0", !871, i64 0}
!871 = !{!"0x4abc6f0.w16.b0", !872, i64 0}
!872 = !{!"0x4abc6f0.w32.b0", !873, i64 0}
!873 = !{!"0x4abc6f0.w64.b0", !874, i64 0}
!874 = !{!"0x4abc6f0.w128.b0", !875, i64 0}
!875 = !{!"0x4abc6f0.w256.b0", !876, i64 0}
!876 = !{!"0x4abc6f0.w512.b0", !877, i64 0}
!877 = !{!"0x4abc6f0.w1024.b0", !878, i64 0}
!878 = !{!"i8*", !879, i64 0}
!879 = !{!"0x4abc6f0", !7, i64 0}
!880 = !{!881, !881, i64 0}
!881 = !{!"0x4abc6f0.w1.b1", !868, i64 0}
!882 = !{!883, !883, i64 0}
!883 = !{!"0x4a09690.w1.b0", !884, i64 0}
!884 = !{!"0x4a09690.w2.b0", !885, i64 0}
!885 = !{!"0x4a09690.w4.b0", !886, i64 0}
!886 = !{!"0x4a09690.w8.b0", !887, i64 0}
!887 = !{!"0x4a09690.w16.b0", !888, i64 0}
!888 = !{!"0x4a09690.w32.b0", !889, i64 0}
!889 = !{!"0x4a09690.w64.b0", !890, i64 0}
!890 = !{!"0x4a09690.w128.b0", !891, i64 0}
!891 = !{!"0x4a09690.w256.b0", !892, i64 0}
!892 = !{!"0x4a09690.w512.b0", !893, i64 0}
!893 = !{!"0x4a09690.w1024.b0", !894, i64 0}
!894 = !{!"i8*", !895, i64 0}
!895 = !{!"0x4a09690", !7, i64 0}
!896 = !{!897, !897, i64 0}
!897 = !{!"0x4a09690.w1.b1", !884, i64 0}
!898 = !{!899, !899, i64 0}
!899 = !{!"0x4a09690.w1.b2", !900, i64 0}
!900 = !{!"0x4a09690.w2.b2", !885, i64 0}
!901 = !{!902, !902, i64 0}
!902 = !{!"0x4a09690.w1.b3", !900, i64 0}
!903 = !{!904, !904, i64 0}
!904 = !{!"0x49a73b0.w4.b0", !905, i64 0}
!905 = !{!"0x49a73b0.w8.b0", !906, i64 0}
!906 = !{!"0x49a73b0.w16.b0", !907, i64 0}
!907 = !{!"0x49a73b0.w32.b0", !908, i64 0}
!908 = !{!"0x49a73b0.w64.b0", !909, i64 0}
!909 = !{!"0x49a73b0.w128.b0", !910, i64 0}
!910 = !{!"0x49a73b0.w256.b0", !911, i64 0}
!911 = !{!"0x49a73b0.w512.b0", !912, i64 0}
!912 = !{!"0x49a73b0.w1024.b0", !913, i64 0}
!913 = !{!"i8*", !914, i64 0}
!914 = !{!"0x49a73b0", !7, i64 0}
!915 = !{!916, !916, i64 0}
!916 = !{!"0x4abcb20.w1.b0", !917, i64 0}
!917 = !{!"0x4abcb20.w2.b0", !918, i64 0}
!918 = !{!"0x4abcb20.w4.b0", !919, i64 0}
!919 = !{!"0x4abcb20.w8.b0", !920, i64 0}
!920 = !{!"0x4abcb20.w16.b0", !921, i64 0}
!921 = !{!"0x4abcb20.w32.b0", !922, i64 0}
!922 = !{!"0x4abcb20.w64.b0", !923, i64 0}
!923 = !{!"0x4abcb20.w128.b0", !924, i64 0}
!924 = !{!"0x4abcb20.w256.b0", !925, i64 0}
!925 = !{!"0x4abcb20.w512.b0", !926, i64 0}
!926 = !{!"0x4abcb20.w1024.b0", !927, i64 0}
!927 = !{!"i8*", !928, i64 0}
!928 = !{!"0x4abcb20", !7, i64 0}
!929 = !{!930, !930, i64 0}
!930 = !{!"0x4abcb20.w1.b1", !917, i64 0}
!931 = !{!932, !932, i64 0}
!932 = !{!"0x4abcb20.w1.b2", !933, i64 0}
!933 = !{!"0x4abcb20.w2.b2", !918, i64 0}
!934 = !{!935, !935, i64 0}
!935 = !{!"0x4abcb20.w1.b3", !933, i64 0}
!936 = !{!937, !937, i64 0}
!937 = !{!"0x4abc880.w4.b0", !938, i64 0}
!938 = !{!"0x4abc880.w8.b0", !939, i64 0}
!939 = !{!"0x4abc880.w16.b0", !940, i64 0}
!940 = !{!"0x4abc880.w32.b0", !941, i64 0}
!941 = !{!"0x4abc880.w64.b0", !942, i64 0}
!942 = !{!"0x4abc880.w128.b0", !943, i64 0}
!943 = !{!"0x4abc880.w256.b0", !944, i64 0}
!944 = !{!"0x4abc880.w512.b0", !945, i64 0}
!945 = !{!"0x4abc880.w1024.b0", !946, i64 0}
!946 = !{!"i8*", !947, i64 0}
!947 = !{!"0x4abc880", !7, i64 0}
!948 = !{!949, !949, i64 0}
!949 = !{!"float", !950, i64 0}
!950 = !{!"0x4ae4ce0", !7, i64 0}
!951 = !{!952, !952, i64 0}
!952 = !{!"float", !953, i64 0}
!953 = !{!"0x4993b20", !7, i64 0}
!954 = !{!955, !955, i64 0}
!955 = !{!"0x4b72c00.w1.b0", !956, i64 0}
!956 = !{!"0x4b72c00.w2.b0", !957, i64 0}
!957 = !{!"0x4b72c00.w4.b0", !958, i64 0}
!958 = !{!"0x4b72c00.w8.b0", !959, i64 0}
!959 = !{!"0x4b72c00.w16.b0", !960, i64 0}
!960 = !{!"0x4b72c00.w32.b0", !961, i64 0}
!961 = !{!"0x4b72c00.w64.b0", !962, i64 0}
!962 = !{!"0x4b72c00.w128.b0", !963, i64 0}
!963 = !{!"0x4b72c00.w256.b0", !964, i64 0}
!964 = !{!"0x4b72c00.w512.b0", !965, i64 0}
!965 = !{!"0x4b72c00.w1024.b0", !966, i64 0}
!966 = !{!"i8*", !967, i64 0}
!967 = !{!"0x4b72c00", !7, i64 0}
!968 = !{!969, !969, i64 0}
!969 = !{!"0x4b72c00.w1.b1", !956, i64 0}
!970 = !{!971, !971, i64 0}
!971 = !{!"0x4b771f0.w1.b0", !972, i64 0}
!972 = !{!"0x4b771f0.w2.b0", !973, i64 0}
!973 = !{!"0x4b771f0.w4.b0", !974, i64 0}
!974 = !{!"0x4b771f0.w8.b0", !975, i64 0}
!975 = !{!"0x4b771f0.w16.b0", !976, i64 0}
!976 = !{!"0x4b771f0.w32.b0", !977, i64 0}
!977 = !{!"0x4b771f0.w64.b0", !978, i64 0}
!978 = !{!"0x4b771f0.w128.b0", !979, i64 0}
!979 = !{!"0x4b771f0.w256.b0", !980, i64 0}
!980 = !{!"0x4b771f0.w512.b0", !981, i64 0}
!981 = !{!"0x4b771f0.w1024.b0", !982, i64 0}
!982 = !{!"i8*", !983, i64 0}
!983 = !{!"0x4b771f0", !7, i64 0}
!984 = !{!985, !985, i64 0}
!985 = !{!"0x4b771f0.w1.b1", !972, i64 0}
!986 = !{!987, !987, i64 0}
!987 = !{!"0x4b77650.w1.b0", !988, i64 0}
!988 = !{!"0x4b77650.w2.b0", !989, i64 0}
!989 = !{!"0x4b77650.w4.b0", !990, i64 0}
!990 = !{!"0x4b77650.w8.b0", !991, i64 0}
!991 = !{!"0x4b77650.w16.b0", !992, i64 0}
!992 = !{!"0x4b77650.w32.b0", !993, i64 0}
!993 = !{!"0x4b77650.w64.b0", !994, i64 0}
!994 = !{!"0x4b77650.w128.b0", !995, i64 0}
!995 = !{!"0x4b77650.w256.b0", !996, i64 0}
!996 = !{!"0x4b77650.w512.b0", !997, i64 0}
!997 = !{!"0x4b77650.w1024.b0", !998, i64 0}
!998 = !{!"i8*", !999, i64 0}
!999 = !{!"0x4b77650", !7, i64 0}
!1000 = !{!1001, !1001, i64 0}
!1001 = !{!"0x4b77650.w1.b1", !988, i64 0}
!1002 = !{!1003, !1003, i64 0}
!1003 = !{!"0x4b79510.w1.b0", !1004, i64 0}
!1004 = !{!"0x4b79510.w2.b0", !1005, i64 0}
!1005 = !{!"0x4b79510.w4.b0", !1006, i64 0}
!1006 = !{!"0x4b79510.w8.b0", !1007, i64 0}
!1007 = !{!"0x4b79510.w16.b0", !1008, i64 0}
!1008 = !{!"0x4b79510.w32.b0", !1009, i64 0}
!1009 = !{!"0x4b79510.w64.b0", !1010, i64 0}
!1010 = !{!"0x4b79510.w128.b0", !1011, i64 0}
!1011 = !{!"0x4b79510.w256.b0", !1012, i64 0}
!1012 = !{!"0x4b79510.w512.b0", !1013, i64 0}
!1013 = !{!"0x4b79510.w1024.b0", !1014, i64 0}
!1014 = !{!"i8*", !1015, i64 0}
!1015 = !{!"0x4b79510", !7, i64 0}
!1016 = !{!1017, !1017, i64 0}
!1017 = !{!"0x4b79510.w1.b1", !1004, i64 0}
!1018 = !{!1019, !1019, i64 0}
!1019 = !{!"0x4b79980.w1.b0", !1020, i64 0}
!1020 = !{!"0x4b79980.w2.b0", !1021, i64 0}
!1021 = !{!"0x4b79980.w4.b0", !1022, i64 0}
!1022 = !{!"0x4b79980.w8.b0", !1023, i64 0}
!1023 = !{!"0x4b79980.w16.b0", !1024, i64 0}
!1024 = !{!"0x4b79980.w32.b0", !1025, i64 0}
!1025 = !{!"0x4b79980.w64.b0", !1026, i64 0}
!1026 = !{!"0x4b79980.w128.b0", !1027, i64 0}
!1027 = !{!"0x4b79980.w256.b0", !1028, i64 0}
!1028 = !{!"0x4b79980.w512.b0", !1029, i64 0}
!1029 = !{!"0x4b79980.w1024.b0", !1030, i64 0}
!1030 = !{!"i8*", !1031, i64 0}
!1031 = !{!"0x4b79980", !7, i64 0}
!1032 = !{!1033, !1033, i64 0}
!1033 = !{!"0x4b79980.w1.b1", !1020, i64 0}
!1034 = !{!1035, !1035, i64 0}
!1035 = !{!"float", !1036, i64 0}
!1036 = !{!"0x4a20db0", !7, i64 0}
!1037 = !{!1038, !1038, i64 0}
!1038 = !{!"float", !1039, i64 0}
!1039 = !{!"0x4a1e650", !7, i64 0}
!1040 = !{!1041, !1041, i64 0}
!1041 = !{!"0x4b69a00.w1.b0", !1042, i64 0}
!1042 = !{!"0x4b69a00.w2.b0", !1043, i64 0}
!1043 = !{!"0x4b69a00.w4.b0", !1044, i64 0}
!1044 = !{!"0x4b69a00.w8.b0", !1045, i64 0}
!1045 = !{!"0x4b69a00.w16.b0", !1046, i64 0}
!1046 = !{!"0x4b69a00.w32.b0", !1047, i64 0}
!1047 = !{!"0x4b69a00.w64.b0", !1048, i64 0}
!1048 = !{!"0x4b69a00.w128.b0", !1049, i64 0}
!1049 = !{!"0x4b69a00.w256.b0", !1050, i64 0}
!1050 = !{!"0x4b69a00.w512.b0", !1051, i64 0}
!1051 = !{!"0x4b69a00.w1024.b0", !1052, i64 0}
!1052 = !{!"i8*", !1053, i64 0}
!1053 = !{!"0x4b69a00", !7, i64 0}
!1054 = !{!1055, !1055, i64 0}
!1055 = !{!"0x4b69a00.w1.b1", !1042, i64 0}
!1056 = !{!1057, !1057, i64 0}
!1057 = !{!"0x4b6d0a0.w1.b0", !1058, i64 0}
!1058 = !{!"0x4b6d0a0.w2.b0", !1059, i64 0}
!1059 = !{!"0x4b6d0a0.w4.b0", !1060, i64 0}
!1060 = !{!"0x4b6d0a0.w8.b0", !1061, i64 0}
!1061 = !{!"0x4b6d0a0.w16.b0", !1062, i64 0}
!1062 = !{!"0x4b6d0a0.w32.b0", !1063, i64 0}
!1063 = !{!"0x4b6d0a0.w64.b0", !1064, i64 0}
!1064 = !{!"0x4b6d0a0.w128.b0", !1065, i64 0}
!1065 = !{!"0x4b6d0a0.w256.b0", !1066, i64 0}
!1066 = !{!"0x4b6d0a0.w512.b0", !1067, i64 0}
!1067 = !{!"0x4b6d0a0.w1024.b0", !1068, i64 0}
!1068 = !{!"i8*", !1069, i64 0}
!1069 = !{!"0x4b6d0a0", !7, i64 0}
!1070 = !{!1071, !1071, i64 0}
!1071 = !{!"0x4b6d0a0.w1.b1", !1058, i64 0}
!1072 = !{!1073, !1073, i64 0}
!1073 = !{!"0x4b71e90.w1.b0", !1074, i64 0}
!1074 = !{!"0x4b71e90.w2.b0", !1075, i64 0}
!1075 = !{!"0x4b71e90.w4.b0", !1076, i64 0}
!1076 = !{!"0x4b71e90.w8.b0", !1077, i64 0}
!1077 = !{!"0x4b71e90.w16.b0", !1078, i64 0}
!1078 = !{!"0x4b71e90.w32.b0", !1079, i64 0}
!1079 = !{!"0x4b71e90.w64.b0", !1080, i64 0}
!1080 = !{!"0x4b71e90.w128.b0", !1081, i64 0}
!1081 = !{!"0x4b71e90.w256.b0", !1082, i64 0}
!1082 = !{!"0x4b71e90.w512.b0", !1083, i64 0}
!1083 = !{!"0x4b71e90.w1024.b0", !1084, i64 0}
!1084 = !{!"i8*", !1085, i64 0}
!1085 = !{!"0x4b71e90", !7, i64 0}
!1086 = !{!1087, !1087, i64 0}
!1087 = !{!"0x4b71e90.w1.b1", !1074, i64 0}
!1088 = !{!1089, !1089, i64 0}
!1089 = !{!"0x4b73c00.w1.b0", !1090, i64 0}
!1090 = !{!"0x4b73c00.w2.b0", !1091, i64 0}
!1091 = !{!"0x4b73c00.w4.b0", !1092, i64 0}
!1092 = !{!"0x4b73c00.w8.b0", !1093, i64 0}
!1093 = !{!"0x4b73c00.w16.b0", !1094, i64 0}
!1094 = !{!"0x4b73c00.w32.b0", !1095, i64 0}
!1095 = !{!"0x4b73c00.w64.b0", !1096, i64 0}
!1096 = !{!"0x4b73c00.w128.b0", !1097, i64 0}
!1097 = !{!"0x4b73c00.w256.b0", !1098, i64 0}
!1098 = !{!"0x4b73c00.w512.b0", !1099, i64 0}
!1099 = !{!"0x4b73c00.w1024.b0", !1100, i64 0}
!1100 = !{!"i8*", !1101, i64 0}
!1101 = !{!"0x4b73c00", !7, i64 0}
!1102 = !{!1103, !1103, i64 0}
!1103 = !{!"0x4b73c00.w1.b1", !1090, i64 0}
!1104 = !{!1105, !1105, i64 0}
!1105 = !{!"0x4b74070.w1.b0", !1106, i64 0}
!1106 = !{!"0x4b74070.w2.b0", !1107, i64 0}
!1107 = !{!"0x4b74070.w4.b0", !1108, i64 0}
!1108 = !{!"0x4b74070.w8.b0", !1109, i64 0}
!1109 = !{!"0x4b74070.w16.b0", !1110, i64 0}
!1110 = !{!"0x4b74070.w32.b0", !1111, i64 0}
!1111 = !{!"0x4b74070.w64.b0", !1112, i64 0}
!1112 = !{!"0x4b74070.w128.b0", !1113, i64 0}
!1113 = !{!"0x4b74070.w256.b0", !1114, i64 0}
!1114 = !{!"0x4b74070.w512.b0", !1115, i64 0}
!1115 = !{!"0x4b74070.w1024.b0", !1116, i64 0}
!1116 = !{!"i8*", !1117, i64 0}
!1117 = !{!"0x4b74070", !7, i64 0}
!1118 = !{!1119, !1119, i64 0}
!1119 = !{!"0x4b74070.w1.b1", !1106, i64 0}
!1120 = !{!1121, !1121, i64 0}
!1121 = !{!"float", !1122, i64 0}
!1122 = !{!"0x4a3a660", !7, i64 0}
!1123 = !{!1124, !1124, i64 0}
!1124 = !{!"float", !1125, i64 0}
!1125 = !{!"0x4a39370", !7, i64 0}
!1126 = !{!1127, !1127, i64 0}
!1127 = !{!"0x4b5b360.w1.b0", !1128, i64 0}
!1128 = !{!"0x4b5b360.w2.b0", !1129, i64 0}
!1129 = !{!"0x4b5b360.w4.b0", !1130, i64 0}
!1130 = !{!"0x4b5b360.w8.b0", !1131, i64 0}
!1131 = !{!"0x4b5b360.w16.b0", !1132, i64 0}
!1132 = !{!"0x4b5b360.w32.b0", !1133, i64 0}
!1133 = !{!"0x4b5b360.w64.b0", !1134, i64 0}
!1134 = !{!"0x4b5b360.w128.b0", !1135, i64 0}
!1135 = !{!"0x4b5b360.w256.b0", !1136, i64 0}
!1136 = !{!"0x4b5b360.w512.b0", !1137, i64 0}
!1137 = !{!"0x4b5b360.w1024.b0", !1138, i64 0}
!1138 = !{!"i8*", !1139, i64 0}
!1139 = !{!"0x4b5b360", !7, i64 0}
!1140 = !{!1141, !1141, i64 0}
!1141 = !{!"0x4b5b360.w1.b1", !1128, i64 0}
!1142 = !{!1143, !1143, i64 0}
!1143 = !{!"0x4b5d920.w1.b0", !1144, i64 0}
!1144 = !{!"0x4b5d920.w2.b0", !1145, i64 0}
!1145 = !{!"0x4b5d920.w4.b0", !1146, i64 0}
!1146 = !{!"0x4b5d920.w8.b0", !1147, i64 0}
!1147 = !{!"0x4b5d920.w16.b0", !1148, i64 0}
!1148 = !{!"0x4b5d920.w32.b0", !1149, i64 0}
!1149 = !{!"0x4b5d920.w64.b0", !1150, i64 0}
!1150 = !{!"0x4b5d920.w128.b0", !1151, i64 0}
!1151 = !{!"0x4b5d920.w256.b0", !1152, i64 0}
!1152 = !{!"0x4b5d920.w512.b0", !1153, i64 0}
!1153 = !{!"0x4b5d920.w1024.b0", !1154, i64 0}
!1154 = !{!"i8*", !1155, i64 0}
!1155 = !{!"0x4b5d920", !7, i64 0}
!1156 = !{!1157, !1157, i64 0}
!1157 = !{!"0x4b5d920.w1.b1", !1144, i64 0}
!1158 = !{!1159, !1159, i64 0}
!1159 = !{!"0x4b5d920.w1.b2", !1160, i64 0}
!1160 = !{!"0x4b5d920.w2.b2", !1145, i64 0}
!1161 = !{!1162, !1162, i64 0}
!1162 = !{!"0x4b5d920.w1.b3", !1160, i64 0}
!1163 = !{!1164, !1164, i64 0}
!1164 = !{!"0x4b630c0.w4.b0", !1165, i64 0}
!1165 = !{!"0x4b630c0.w8.b0", !1166, i64 0}
!1166 = !{!"0x4b630c0.w16.b0", !1167, i64 0}
!1167 = !{!"0x4b630c0.w32.b0", !1168, i64 0}
!1168 = !{!"0x4b630c0.w64.b0", !1169, i64 0}
!1169 = !{!"0x4b630c0.w128.b0", !1170, i64 0}
!1170 = !{!"0x4b630c0.w256.b0", !1171, i64 0}
!1171 = !{!"0x4b630c0.w512.b0", !1172, i64 0}
!1172 = !{!"0x4b630c0.w1024.b0", !1173, i64 0}
!1173 = !{!"i8*", !1174, i64 0}
!1174 = !{!"0x4b630c0", !7, i64 0}
!1175 = !{!1176, !1176, i64 0}
!1176 = !{!"0x4b65260.w1.b0", !1177, i64 0}
!1177 = !{!"0x4b65260.w2.b0", !1178, i64 0}
!1178 = !{!"0x4b65260.w4.b0", !1179, i64 0}
!1179 = !{!"0x4b65260.w8.b0", !1180, i64 0}
!1180 = !{!"0x4b65260.w16.b0", !1181, i64 0}
!1181 = !{!"0x4b65260.w32.b0", !1182, i64 0}
!1182 = !{!"0x4b65260.w64.b0", !1183, i64 0}
!1183 = !{!"0x4b65260.w128.b0", !1184, i64 0}
!1184 = !{!"0x4b65260.w256.b0", !1185, i64 0}
!1185 = !{!"0x4b65260.w512.b0", !1186, i64 0}
!1186 = !{!"0x4b65260.w1024.b0", !1187, i64 0}
!1187 = !{!"i8*", !1188, i64 0}
!1188 = !{!"0x4b65260", !7, i64 0}
!1189 = !{!1190, !1190, i64 0}
!1190 = !{!"0x4b65260.w1.b1", !1177, i64 0}
!1191 = !{!1192, !1192, i64 0}
!1192 = !{!"0x4b65260.w1.b2", !1193, i64 0}
!1193 = !{!"0x4b65260.w2.b2", !1178, i64 0}
!1194 = !{!1195, !1195, i64 0}
!1195 = !{!"0x4b65260.w1.b3", !1193, i64 0}
!1196 = !{!1197, !1197, i64 0}
!1197 = !{!"0x4b65bf0.w4.b0", !1198, i64 0}
!1198 = !{!"0x4b65bf0.w8.b0", !1199, i64 0}
!1199 = !{!"0x4b65bf0.w16.b0", !1200, i64 0}
!1200 = !{!"0x4b65bf0.w32.b0", !1201, i64 0}
!1201 = !{!"0x4b65bf0.w64.b0", !1202, i64 0}
!1202 = !{!"0x4b65bf0.w128.b0", !1203, i64 0}
!1203 = !{!"0x4b65bf0.w256.b0", !1204, i64 0}
!1204 = !{!"0x4b65bf0.w512.b0", !1205, i64 0}
!1205 = !{!"0x4b65bf0.w1024.b0", !1206, i64 0}
!1206 = !{!"i8*", !1207, i64 0}
!1207 = !{!"0x4b65bf0", !7, i64 0}
!1208 = !{!1209, !1209, i64 0}
!1209 = !{!"float", !1210, i64 0}
!1210 = !{!"0x4b053c0", !7, i64 0}
!1211 = !{!1212, !1212, i64 0}
!1212 = !{!"float", !1213, i64 0}
!1213 = !{!"0x4b04f30", !7, i64 0}
