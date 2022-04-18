; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32*, i32 }
%1 = type { i8*, %2, i32, %3, i64*, i64*, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }
%4 = type { i8*, i8* }
%5 = type { i8*, i8*, i8*, i8* }
%6 = type { i8*, i8*, float* }
%7 = type { i8*, i8*, float* }
%8 = type { i8*, i8* }
%9 = type { i8*, i8*, float* }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global i32 (i32 (i32, %0*, i8*)*, i8*, i32)* null, align 8
@.str = private constant [69 x i8] c"Assert fail: (num_args == 2), fused_nn_softmax: num_args should be 2\00", align 1
@.str.1 = private constant [144 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_softmax: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [144 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_softmax: Expect arg[1] to be pointer\00", align 1
@.str.3 = private constant [55 x i8] c"Assert fail: (dev_type == 1), device_type need to be 1\00", align 1
@.str.4 = private constant [81 x i8] c"Assert fail: (2 == tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 2\00", align 1
@.str.5 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg0, 0, 5) == (uint8)2) && (tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be float32\00", align 1
@.str.6 = private constant [95 x i8] c"Assert fail: (1 == int32(arg0.shape[0])), Argument arg0.shape[0] has an unsatisfied constraint\00", align 1
@.str.7 = private constant [96 x i8] c"Assert fail: (10 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.8 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg0.strides[1])) && (10 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.9 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint\00", align 1
@.str.10 = private constant [81 x i8] c"Assert fail: (2 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 2\00", align 1
@.str.11 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.12 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.13 = private constant [96 x i8] c"Assert fail: (10 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.14 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg1.strides[1])) && (10 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.15 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint\00", align 1
@.str.16 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint\00", align 1
@.str.17 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint\00", align 1
@.str.18 = private constant [102 x i8] c"Assert fail: (num_args == 2), fused_layout_transform_transpose_nn_batch_flatten: num_args should be 2\00", align 1
@.str.19 = private constant [177 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_layout_transform_transpose_nn_batch_flatten: Expect arg[0] to be pointer\00", align 1
@.str.20 = private constant [177 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_layout_transform_transpose_nn_batch_flatten: Expect arg[1] to be pointer\00", align 1
@.str.21 = private constant [81 x i8] c"Assert fail: (5 == tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 5\00", align 1
@.str.22 = private constant [95 x i8] c"Assert fail: (2 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.23 = private constant [96 x i8] c"Assert fail: (13 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.24 = private constant [96 x i8] c"Assert fail: (13 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.25 = private constant [95 x i8] c"Assert fail: (8 == int32(arg0.shape[4])), Argument arg0.shape[4] has an unsatisfied constraint\00", align 1
@.str.26 = private constant [235 x i8] c"Assert fail: (((((1 == int32(arg0.strides[4])) && (8 == int32(arg0.strides[3]))) && (104 == int32(arg0.strides[2]))) && (1352 == int32(arg0.strides[1]))) && (2704 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.27 = private constant [98 x i8] c"Assert fail: (2704 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.28 = private constant [125 x i8] c"Assert fail: ((1 == int32(arg1.strides[1])) && (2704 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.29 = private constant [72 x i8] c"Assert fail: (num_args == 2), fused_nn_max_pool2d: num_args should be 2\00", align 1
@.str.30 = private constant [147 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_max_pool2d: Expect arg[0] to be pointer\00", align 1
@.str.31 = private constant [147 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_max_pool2d: Expect arg[1] to be pointer\00", align 1
@.str.32 = private constant [96 x i8] c"Assert fail: (27 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.33 = private constant [96 x i8] c"Assert fail: (27 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.34 = private constant [236 x i8] c"Assert fail: (((((1 == int32(arg0.strides[4])) && (8 == int32(arg0.strides[3]))) && (216 == int32(arg0.strides[2]))) && (5832 == int32(arg0.strides[1]))) && (11664 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.35 = private constant [81 x i8] c"Assert fail: (5 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 5\00", align 1
@.str.36 = private constant [95 x i8] c"Assert fail: (2 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.37 = private constant [96 x i8] c"Assert fail: (13 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.38 = private constant [96 x i8] c"Assert fail: (13 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint\00", align 1
@.str.39 = private constant [95 x i8] c"Assert fail: (8 == int32(arg1.shape[4])), Argument arg1.shape[4] has an unsatisfied constraint\00", align 1
@.str.40 = private constant [235 x i8] c"Assert fail: (((((1 == int32(arg1.strides[4])) && (8 == int32(arg1.strides[3]))) && (104 == int32(arg1.strides[2]))) && (1352 == int32(arg1.strides[1]))) && (2704 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.41 = private constant [86 x i8] c"Assert fail: (num_args == 4), fused_nn_contrib_conv2d_NCHWc_add: num_args should be 4\00", align 1
@.str.42 = private constant [161 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_contrib_conv2d_NCHWc_add: Expect arg[0] to be pointer\00", align 1
@.str.43 = private constant [161 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_contrib_conv2d_NCHWc_add: Expect arg[1] to be pointer\00", align 1
@.str.44 = private constant [161 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), fused_nn_contrib_conv2d_NCHWc_add: Expect arg[2] to be pointer\00", align 1
@.str.45 = private constant [161 x i8] c"Assert fail: ((((arg3.code == 3) || (arg3.code == 13)) || (arg3.code == 7)) || (arg3.code == 4)), fused_nn_contrib_conv2d_NCHWc_add: Expect arg[3] to be pointer\00", align 1
@.str.46 = private constant [95 x i8] c"Assert fail: (1 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.47 = private constant [96 x i8] c"Assert fail: (28 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.48 = private constant [96 x i8] c"Assert fail: (28 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.49 = private constant [95 x i8] c"Assert fail: (1 == int32(arg0.shape[4])), Argument arg0.shape[4] has an unsatisfied constraint\00", align 1
@.str.50 = private constant [232 x i8] c"Assert fail: (((((1 == int32(arg0.strides[4])) && (1 == int32(arg0.strides[3]))) && (28 == int32(arg0.strides[2]))) && (784 == int32(arg0.strides[1]))) && (784 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.51 = private constant [81 x i8] c"Assert fail: (6 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 6\00", align 1
@.str.52 = private constant [95 x i8] c"Assert fail: (2 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.53 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.54 = private constant [95 x i8] c"Assert fail: (2 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.55 = private constant [95 x i8] c"Assert fail: (2 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint\00", align 1
@.str.56 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[4])), Argument arg1.shape[4] has an unsatisfied constraint\00", align 1
@.str.57 = private constant [95 x i8] c"Assert fail: (8 == int32(arg1.shape[5])), Argument arg1.shape[5] has an unsatisfied constraint\00", align 1
@.str.58 = private constant [265 x i8] c"Assert fail: ((((((1 == int32(arg1.strides[5])) && (8 == int32(arg1.strides[4]))) && (8 == int32(arg1.strides[3]))) && (16 == int32(arg1.strides[2]))) && (32 == int32(arg1.strides[1]))) && (32 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.59 = private constant [81 x i8] c"Assert fail: (5 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 5\00", align 1
@.str.60 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.61 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.62 = private constant [95 x i8] c"Assert fail: (2 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint\00", align 1
@.str.63 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[2])), Argument arg2.shape[2] has an unsatisfied constraint\00", align 1
@.str.64 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[3])), Argument arg2.shape[3] has an unsatisfied constraint\00", align 1
@.str.65 = private constant [95 x i8] c"Assert fail: (8 == int32(arg2.shape[4])), Argument arg2.shape[4] has an unsatisfied constraint\00", align 1
@.str.66 = private constant [228 x i8] c"Assert fail: (((((1 == int32(arg2.strides[4])) && (8 == int32(arg2.strides[3]))) && (8 == int32(arg2.strides[2]))) && (8 == int32(arg2.strides[1]))) && (16 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
@.str.67 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg2, 0, 8)), Argument arg2.byte_offset has an unsatisfied constraint\00", align 1
@.str.68 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg2, 0, 10)), Argument arg2.device_type has an unsatisfied constraint\00", align 1
@.str.69 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg2, 0, 9)), Argument arg2.device_id has an unsatisfied constraint\00", align 1
@.str.70 = private constant [81 x i8] c"Assert fail: (5 == tvm_struct_get(arg3, 0, 4)), arg3.ndim is expected to equal 5\00", align 1
@.str.71 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg3, 0, 5) == (uint8)2) && (tvm_struct_get(arg3, 0, 6) == (uint8)32)) && (tvm_struct_get(arg3, 0, 7) == (uint16)1)), arg3.dtype is expected to be float32\00", align 1
@.str.72 = private constant [95 x i8] c"Assert fail: (1 == int32(arg3.shape[0])), Argument arg3.shape[0] has an unsatisfied constraint\00", align 1
@.str.73 = private constant [95 x i8] c"Assert fail: (2 == int32(arg3.shape[1])), Argument arg3.shape[1] has an unsatisfied constraint\00", align 1
@.str.74 = private constant [96 x i8] c"Assert fail: (27 == int32(arg3.shape[2])), Argument arg3.shape[2] has an unsatisfied constraint\00", align 1
@.str.75 = private constant [96 x i8] c"Assert fail: (27 == int32(arg3.shape[3])), Argument arg3.shape[3] has an unsatisfied constraint\00", align 1
@.str.76 = private constant [95 x i8] c"Assert fail: (8 == int32(arg3.shape[4])), Argument arg3.shape[4] has an unsatisfied constraint\00", align 1
@.str.77 = private constant [236 x i8] c"Assert fail: (((((1 == int32(arg3.strides[4])) && (8 == int32(arg3.strides[3]))) && (216 == int32(arg3.strides[2]))) && (5832 == int32(arg3.strides[1]))) && (11664 == int32(arg3.strides[0]))), arg3.strides: expected to be compact array\00", align 1
@.str.78 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg3, 0, 8)), Argument arg3.byte_offset has an unsatisfied constraint\00", align 1
@.str.79 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg3, 0, 10)), Argument arg3.device_type has an unsatisfied constraint\00", align 1
@.str.80 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg3, 0, 9)), Argument arg3.device_id has an unsatisfied constraint\00", align 1
@.str.82 = private constant [73 x i8] c"Assert fail: (num_args == 4), fused_nn_dense_add_1: num_args should be 4\00", align 1
@.str.83 = private constant [148 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_dense_add_1: Expect arg[0] to be pointer\00", align 1
@.str.84 = private constant [148 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_dense_add_1: Expect arg[1] to be pointer\00", align 1
@.str.85 = private constant [148 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), fused_nn_dense_add_1: Expect arg[2] to be pointer\00", align 1
@.str.86 = private constant [148 x i8] c"Assert fail: ((((arg3.code == 3) || (arg3.code == 13)) || (arg3.code == 7)) || (arg3.code == 4)), fused_nn_dense_add_1: Expect arg[3] to be pointer\00", align 1
@.str.87 = private constant [97 x i8] c"Assert fail: (100 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.88 = private constant [124 x i8] c"Assert fail: ((1 == int32(arg0.strides[1])) && (100 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.89 = private constant [96 x i8] c"Assert fail: (32 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.90 = private constant [97 x i8] c"Assert fail: (100 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.91 = private constant [124 x i8] c"Assert fail: ((1 == int32(arg1.strides[1])) && (100 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.92 = private constant [81 x i8] c"Assert fail: (1 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 1\00", align 1
@.str.93 = private constant [96 x i8] c"Assert fail: (32 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.94 = private constant [87 x i8] c"Assert fail: (1 == int32(arg2.strides[0])), arg2.strides: expected to be compact array\00", align 1
@.str.95 = private constant [81 x i8] c"Assert fail: (2 == tvm_struct_get(arg3, 0, 4)), arg3.ndim is expected to equal 2\00", align 1
@.str.96 = private constant [96 x i8] c"Assert fail: (32 == int32(arg3.shape[1])), Argument arg3.shape[1] has an unsatisfied constraint\00", align 1
@.str.97 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg3.strides[1])) && (32 == int32(arg3.strides[0]))), arg3.strides: expected to be compact array\00", align 1
@.str.99 = private constant [71 x i8] c"Assert fail: (num_args == 4), fused_nn_dense_add: num_args should be 4\00", align 1
@.str.100 = private constant [146 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_dense_add: Expect arg[0] to be pointer\00", align 1
@.str.101 = private constant [146 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_dense_add: Expect arg[1] to be pointer\00", align 1
@.str.102 = private constant [146 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), fused_nn_dense_add: Expect arg[2] to be pointer\00", align 1
@.str.103 = private constant [146 x i8] c"Assert fail: ((((arg3.code == 3) || (arg3.code == 13)) || (arg3.code == 7)) || (arg3.code == 4)), fused_nn_dense_add: Expect arg[3] to be pointer\00", align 1
@.str.104 = private constant [96 x i8] c"Assert fail: (32 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.105 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg0.strides[1])) && (32 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.106 = private constant [96 x i8] c"Assert fail: (10 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.107 = private constant [96 x i8] c"Assert fail: (32 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.108 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg1.strides[1])) && (32 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.109 = private constant [96 x i8] c"Assert fail: (10 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.110 = private constant [96 x i8] c"Assert fail: (10 == int32(arg3.shape[1])), Argument arg3.shape[1] has an unsatisfied constraint\00", align 1
@.str.111 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg3.strides[1])) && (10 == int32(arg3.strides[0]))), arg3.strides: expected to be compact array\00", align 1
@.str.113 = private constant [77 x i8] c"Assert fail: (num_args == 2), fused_layout_transform_2: num_args should be 2\00", align 1
@.str.114 = private constant [152 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_layout_transform_2: Expect arg[0] to be pointer\00", align 1
@.str.115 = private constant [152 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_layout_transform_2: Expect arg[1] to be pointer\00", align 1
@.str.116 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 4\00", align 1
@.str.117 = private constant [197 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (28 == int32(arg0.strides[2]))) && (784 == int32(arg0.strides[1]))) && (784 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.118 = private constant [96 x i8] c"Assert fail: (28 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.119 = private constant [96 x i8] c"Assert fail: (28 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint\00", align 1
@.str.120 = private constant [232 x i8] c"Assert fail: (((((1 == int32(arg1.strides[4])) && (1 == int32(arg1.strides[3]))) && (28 == int32(arg1.strides[2]))) && (784 == int32(arg1.strides[1]))) && (784 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.122 = private constant [92 x i8] c"Assert fail: (num_args == 6), fused_nn_dense_add_multiply_add_nn_relu: num_args should be 6\00", align 1
@.str.123 = private constant [167 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_dense_add_multiply_add_nn_relu: Expect arg[0] to be pointer\00", align 1
@.str.124 = private constant [167 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_dense_add_multiply_add_nn_relu: Expect arg[1] to be pointer\00", align 1
@.str.125 = private constant [167 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), fused_nn_dense_add_multiply_add_nn_relu: Expect arg[2] to be pointer\00", align 1
@.str.126 = private constant [167 x i8] c"Assert fail: ((((arg3.code == 3) || (arg3.code == 13)) || (arg3.code == 7)) || (arg3.code == 4)), fused_nn_dense_add_multiply_add_nn_relu: Expect arg[3] to be pointer\00", align 1
@.str.127 = private constant [167 x i8] c"Assert fail: ((((arg4.code == 3) || (arg4.code == 13)) || (arg4.code == 7)) || (arg4.code == 4)), fused_nn_dense_add_multiply_add_nn_relu: Expect arg[4] to be pointer\00", align 1
@.str.128 = private constant [167 x i8] c"Assert fail: ((((arg5.code == 3) || (arg5.code == 13)) || (arg5.code == 7)) || (arg5.code == 4)), fused_nn_dense_add_multiply_add_nn_relu: Expect arg[5] to be pointer\00", align 1
@.str.129 = private constant [98 x i8] c"Assert fail: (2704 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.130 = private constant [125 x i8] c"Assert fail: ((1 == int32(arg0.strides[1])) && (2704 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.131 = private constant [97 x i8] c"Assert fail: (100 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.132 = private constant [97 x i8] c"Assert fail: (100 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.133 = private constant [81 x i8] c"Assert fail: (1 == tvm_struct_get(arg3, 0, 4)), arg3.ndim is expected to equal 1\00", align 1
@.str.134 = private constant [97 x i8] c"Assert fail: (100 == int32(arg3.shape[0])), Argument arg3.shape[0] has an unsatisfied constraint\00", align 1
@.str.135 = private constant [87 x i8] c"Assert fail: (1 == int32(arg3.strides[0])), arg3.strides: expected to be compact array\00", align 1
@.str.136 = private constant [81 x i8] c"Assert fail: (1 == tvm_struct_get(arg4, 0, 4)), arg4.ndim is expected to equal 1\00", align 1
@.str.137 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg4, 0, 5) == (uint8)2) && (tvm_struct_get(arg4, 0, 6) == (uint8)32)) && (tvm_struct_get(arg4, 0, 7) == (uint16)1)), arg4.dtype is expected to be float32\00", align 1
@.str.138 = private constant [97 x i8] c"Assert fail: (100 == int32(arg4.shape[0])), Argument arg4.shape[0] has an unsatisfied constraint\00", align 1
@.str.139 = private constant [87 x i8] c"Assert fail: (1 == int32(arg4.strides[0])), arg4.strides: expected to be compact array\00", align 1
@.str.140 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg4, 0, 8)), Argument arg4.byte_offset has an unsatisfied constraint\00", align 1
@.str.141 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg4, 0, 10)), Argument arg4.device_type has an unsatisfied constraint\00", align 1
@.str.142 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg4, 0, 9)), Argument arg4.device_id has an unsatisfied constraint\00", align 1
@.str.143 = private constant [81 x i8] c"Assert fail: (2 == tvm_struct_get(arg5, 0, 4)), arg5.ndim is expected to equal 2\00", align 1
@.str.144 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg5, 0, 5) == (uint8)2) && (tvm_struct_get(arg5, 0, 6) == (uint8)32)) && (tvm_struct_get(arg5, 0, 7) == (uint16)1)), arg5.dtype is expected to be float32\00", align 1
@.str.145 = private constant [95 x i8] c"Assert fail: (1 == int32(arg5.shape[0])), Argument arg5.shape[0] has an unsatisfied constraint\00", align 1
@.str.146 = private constant [97 x i8] c"Assert fail: (100 == int32(arg5.shape[1])), Argument arg5.shape[1] has an unsatisfied constraint\00", align 1
@.str.147 = private constant [124 x i8] c"Assert fail: ((1 == int32(arg5.strides[1])) && (100 == int32(arg5.strides[0]))), arg5.strides: expected to be compact array\00", align 1
@.str.148 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg5, 0, 8)), Argument arg5.byte_offset has an unsatisfied constraint\00", align 1
@.str.149 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg5, 0, 10)), Argument arg5.device_type has an unsatisfied constraint\00", align 1
@.str.150 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg5, 0, 9)), Argument arg5.device_id has an unsatisfied constraint\00", align 1

define dllexport i32 @fused_nn_softmax(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 2
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %1**
  %8 = load %1*, %1** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !9
  %11 = getelementptr inbounds i8, i8* %0, i64 8
  %12 = bitcast i8* %11 to %1**
  %13 = load %1*, %1** %12, align 8
  %14 = getelementptr inbounds %1, %1* %8, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %1, %1* %8, i64 0, i32 4
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds %1, %1* %8, i64 0, i32 5
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds %1, %1* %8, i64 0, i32 1, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %1, %1* %8, i64 0, i32 1, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %1, %1* %13, i64 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %1, %1* %13, i64 0, i32 4
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds %1, %1* %13, i64 0, i32 5
  %29 = load i64*, i64** %28, align 8
  switch i32 %10, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %30 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %30(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.1, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %31 = getelementptr inbounds i8, i8* %1, i64 4
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !23
  switch i32 %33, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %34(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.2, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %35 = icmp eq i32 %21, 1
  br i1 %35, label %assert_end6, label %assert_fail5, !prof !5

assert_fail5:                                     ; preds = %assert_end4
  %36 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %36(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4
  %37 = getelementptr inbounds %1, %1* %8, i64 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %assert_end8, label %assert_fail7, !prof !5

assert_fail7:                                     ; preds = %assert_end6
  %40 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %40(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6
  %41 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 2
  %42 = load i16, i16* %41, align 2
  %43 = icmp eq i16 %42, 1
  %44 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 1
  %45 = load i8, i8* %44, align 1
  %46 = icmp eq i8 %45, 32
  %47 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 0
  %48 = load i8, i8* %47, align 1
  %49 = icmp eq i8 %48, 2
  %50 = and i1 %46, %49
  %51 = and i1 %43, %50
  br i1 %51, label %assert_end10, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %52 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %52(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %53 = load i64, i64* %17, align 8, !tbaa !25
  %54 = trunc i64 %53 to i32
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %56 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %56(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %57 = getelementptr inbounds i64, i64* %17, i64 1
  %58 = load i64, i64* %57, align 8, !tbaa !39
  %59 = trunc i64 %58 to i32
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %61 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %61(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %62 = icmp eq i64* %19, null
  br i1 %62, label %if_end, label %if_then, !prof !41

if_then:                                          ; preds = %assert_end14
  %63 = load i64, i64* %19, align 8, !tbaa !42
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 10
  %66 = getelementptr inbounds i64, i64* %19, i64 1
  %67 = load i64, i64* %66, align 8, !tbaa !56
  %68 = trunc i64 %67 to i32
  %69 = icmp eq i32 %68, 1
  %70 = and i1 %65, %69
  br i1 %70, label %if_end, label %assert_fail15, !prof !5

if_end:                                           ; preds = %assert_end14, %if_then
  %71 = getelementptr inbounds %1, %1* %8, i64 0, i32 6
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %assert_end18, label %assert_fail17, !prof !5

assert_fail15:                                    ; preds = %if_then
  %74 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %74(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_fail17:                                    ; preds = %if_end
  %75 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %75(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %if_end
  %76 = getelementptr inbounds %1, %1* %13, i64 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %assert_end20, label %assert_fail19, !prof !5

assert_fail19:                                    ; preds = %assert_end18
  %79 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %79(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %80 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 2
  %81 = load i16, i16* %80, align 2
  %82 = icmp eq i16 %81, 1
  %83 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 1
  %84 = load i8, i8* %83, align 1
  %85 = icmp eq i8 %84, 32
  %86 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 0
  %87 = load i8, i8* %86, align 1
  %88 = icmp eq i8 %87, 2
  %89 = and i1 %85, %88
  %90 = and i1 %82, %89
  br i1 %90, label %assert_end22, label %assert_fail21, !prof !5

assert_fail21:                                    ; preds = %assert_end20
  %91 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %91(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %assert_end20
  %92 = load i64, i64* %27, align 8, !tbaa !58
  %93 = trunc i64 %92 to i32
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %95 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %95(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end22
  %96 = getelementptr inbounds i64, i64* %27, i64 1
  %97 = load i64, i64* %96, align 8, !tbaa !72
  %98 = trunc i64 %97 to i32
  %99 = icmp eq i32 %98, 10
  br i1 %99, label %assert_end26, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %100 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %100(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %101 = icmp eq i64* %29, null
  br i1 %101, label %if_end28, label %if_then27, !prof !41

if_then27:                                        ; preds = %assert_end26
  %102 = load i64, i64* %29, align 8, !tbaa !74
  %103 = trunc i64 %102 to i32
  %104 = icmp eq i32 %103, 10
  %105 = getelementptr inbounds i64, i64* %29, i64 1
  %106 = load i64, i64* %105, align 8, !tbaa !88
  %107 = trunc i64 %106 to i32
  %108 = icmp eq i32 %107, 1
  %109 = and i1 %104, %108
  br i1 %109, label %if_end28, label %assert_fail29, !prof !5

if_end28:                                         ; preds = %assert_end26, %if_then27
  %110 = getelementptr inbounds %1, %1* %13, i64 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %assert_end32, label %assert_fail31, !prof !5

assert_fail29:                                    ; preds = %if_then27
  %113 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %113(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.14, i64 0, i64 0))
  ret i32 -1

assert_fail31:                                    ; preds = %if_end28
  %114 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %114(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %if_end28
  %115 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %118 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %118(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %119 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %23, %120
  br i1 %121, label %assert_end36, label %assert_fail35, !prof !5

assert_fail35:                                    ; preds = %assert_end34
  %122 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %122(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %assert_end34
  tail call fastcc void @fused_nn_softmax_compute_(i8* %15, i8* %25)
  ret i32 0
}

; Function Attrs: noinline nounwind
define private fastcc void @fused_nn_softmax_compute_(i8* noalias nocapture readonly, i8* noalias nocapture) unnamed_addr #0 {
entry:
  %2 = bitcast i8* %0 to <4 x float>*
  %3 = load <4 x float>, <4 x float>* %2, align 4, !tbaa !90
  %4 = extractelement <4 x float> %3, i32 0
  %5 = fcmp olt float %4, 0xC7EFFFFFE0000000
  %6 = select i1 %5, float 0xC7EFFFFFE0000000, float %4
  %7 = extractelement <4 x float> %3, i32 1
  %8 = fcmp ogt float %6, %7
  %9 = select i1 %8, float %6, float %7
  %10 = extractelement <4 x float> %3, i32 2
  %11 = fcmp ogt float %9, %10
  %12 = select i1 %11, float %9, float %10
  %13 = extractelement <4 x float> %3, i32 3
  %14 = fcmp ogt float %12, %13
  %15 = select i1 %14, float %12, float %13
  %16 = getelementptr inbounds i8, i8* %0, i64 16
  %17 = bitcast i8* %16 to <4 x float>*
  %18 = load <4 x float>, <4 x float>* %17, align 4, !tbaa !90
  %19 = extractelement <4 x float> %18, i32 0
  %20 = fcmp ogt float %15, %19
  %21 = select i1 %20, float %15, float %19
  %22 = extractelement <4 x float> %18, i32 1
  %23 = fcmp ogt float %21, %22
  %24 = select i1 %23, float %21, float %22
  %25 = extractelement <4 x float> %18, i32 2
  %26 = fcmp ogt float %24, %25
  %27 = select i1 %26, float %24, float %25
  %28 = extractelement <4 x float> %18, i32 3
  %29 = fcmp ogt float %27, %28
  %30 = select i1 %29, float %27, float %28
  %31 = getelementptr inbounds i8, i8* %0, i64 32
  %32 = bitcast i8* %31 to float*
  %33 = load float, float* %32, align 4, !tbaa !90
  %34 = fcmp ogt float %30, %33
  %35 = select i1 %34, float %30, float %33
  %36 = getelementptr inbounds i8, i8* %0, i64 36
  %37 = bitcast i8* %36 to float*
  %38 = load float, float* %37, align 4, !tbaa !90
  %39 = fcmp ogt float %35, %38
  %40 = select i1 %39, float %35, float %38
  %41 = insertelement <4 x float> undef, float %40, i32 0
  %42 = shufflevector <4 x float> %41, <4 x float> undef, <4 x i32> zeroinitializer
  %43 = fsub <4 x float> %3, %42
  %44 = call <4 x float> @llvm.exp.v4f32(<4 x float> %43)
  %45 = fsub <4 x float> %18, %42
  %46 = call <4 x float> @llvm.exp.v4f32(<4 x float> %45)
  %47 = fsub float %33, %40
  %48 = tail call float @llvm.exp.f32(float %47)
  %49 = fsub float %38, %40
  %50 = tail call float @llvm.exp.f32(float %49)
  %51 = extractelement <4 x float> %44, i32 0
  %52 = fadd float %51, 0.000000e+00
  %53 = extractelement <4 x float> %44, i32 1
  %54 = fadd float %52, %53
  %55 = extractelement <4 x float> %44, i32 2
  %56 = fadd float %54, %55
  %57 = extractelement <4 x float> %44, i32 3
  %58 = fadd float %56, %57
  %59 = extractelement <4 x float> %46, i32 0
  %60 = fadd float %58, %59
  %61 = extractelement <4 x float> %46, i32 1
  %62 = fadd float %60, %61
  %63 = extractelement <4 x float> %46, i32 2
  %64 = fadd float %62, %63
  %65 = extractelement <4 x float> %46, i32 3
  %66 = fadd float %64, %65
  %67 = fadd float %66, %48
  %68 = fadd float %67, %50
  %69 = insertelement <4 x float> undef, float %68, i32 0
  %70 = shufflevector <4 x float> %69, <4 x float> undef, <4 x i32> zeroinitializer
  %71 = fdiv <4 x float> %44, %70
  %72 = bitcast i8* %1 to <4 x float>*
  store <4 x float> %71, <4 x float>* %72, align 4, !tbaa !93
  %73 = getelementptr inbounds i8, i8* %1, i64 16
  %74 = fdiv <4 x float> %46, %70
  %75 = bitcast i8* %73 to <4 x float>*
  store <4 x float> %74, <4 x float>* %75, align 4, !tbaa !93
  %76 = fdiv float %48, %68
  %77 = getelementptr inbounds i8, i8* %1, i64 32
  %78 = bitcast i8* %77 to float*
  store float %76, float* %78, align 4, !tbaa !93
  %79 = fdiv float %50, %68
  %80 = getelementptr inbounds i8, i8* %1, i64 36
  %81 = bitcast i8* %80 to float*
  store float %79, float* %81, align 4, !tbaa !93
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare float @llvm.exp.f32(float) #1

define dllexport i32 @fused_layout_transform_transpose_nn_batch_flatten(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 2
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %1**
  %8 = load %1*, %1** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !96
  %11 = getelementptr inbounds i8, i8* %0, i64 8
  %12 = bitcast i8* %11 to %1**
  %13 = load %1*, %1** %12, align 8
  %14 = getelementptr inbounds %1, %1* %8, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %1, %1* %8, i64 0, i32 4
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds %1, %1* %8, i64 0, i32 5
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds %1, %1* %8, i64 0, i32 1, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %1, %1* %8, i64 0, i32 1, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %1, %1* %13, i64 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %1, %1* %13, i64 0, i32 4
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds %1, %1* %13, i64 0, i32 5
  %29 = load i64*, i64** %28, align 8
  switch i32 %10, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %30 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %30(i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.19, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %31 = getelementptr inbounds i8, i8* %1, i64 4
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !110
  switch i32 %33, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %34(i8* getelementptr inbounds ([177 x i8], [177 x i8]* @.str.20, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %35 = icmp eq i32 %21, 1
  br i1 %35, label %assert_end6, label %assert_fail5, !prof !5

assert_fail5:                                     ; preds = %assert_end4
  %36 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %36(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4
  %37 = getelementptr inbounds %1, %1* %8, i64 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %assert_end8, label %assert_fail7, !prof !5

assert_fail7:                                     ; preds = %assert_end6
  %40 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %40(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.21, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6
  %41 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 2
  %42 = load i16, i16* %41, align 2
  %43 = icmp eq i16 %42, 1
  %44 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 1
  %45 = load i8, i8* %44, align 1
  %46 = icmp eq i8 %45, 32
  %47 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 0
  %48 = load i8, i8* %47, align 1
  %49 = icmp eq i8 %48, 2
  %50 = and i1 %46, %49
  %51 = and i1 %43, %50
  br i1 %51, label %assert_end10, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %52 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %52(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %53 = load i64, i64* %17, align 8, !tbaa !112
  %54 = trunc i64 %53 to i32
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %56 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %56(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %57 = getelementptr inbounds i64, i64* %17, i64 1
  %58 = load i64, i64* %57, align 8, !tbaa !126
  %59 = trunc i64 %58 to i32
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %61 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %61(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.22, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %62 = getelementptr inbounds i64, i64* %17, i64 2
  %63 = load i64, i64* %62, align 8, !tbaa !128
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 13
  br i1 %65, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %66 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %66(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.23, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %67 = getelementptr inbounds i64, i64* %17, i64 3
  %68 = load i64, i64* %67, align 8, !tbaa !131
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, 13
  br i1 %70, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %71 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %71(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.24, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %72 = getelementptr inbounds i64, i64* %17, i64 4
  %73 = load i64, i64* %72, align 8, !tbaa !133
  %74 = trunc i64 %73 to i32
  %75 = icmp eq i32 %74, 8
  br i1 %75, label %assert_end20, label %assert_fail19, !prof !5

assert_fail19:                                    ; preds = %assert_end18
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %76(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.25, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %77 = icmp eq i64* %19, null
  br i1 %77, label %if_end, label %if_then, !prof !41

if_then:                                          ; preds = %assert_end20
  %78 = bitcast i64* %19 to <4 x i64>*
  %79 = load <4 x i64>, <4 x i64>* %78, align 8, !tbaa !137
  %80 = trunc <4 x i64> %79 to <4 x i32>
  %81 = icmp eq <4 x i32> %80, <i32 2704, i32 1352, i32 104, i32 8>
  %82 = getelementptr inbounds i64, i64* %19, i64 4
  %83 = load i64, i64* %82, align 8, !tbaa !149
  %84 = trunc i64 %83 to i32
  %85 = icmp eq i32 %84, 1
  %rdx.shuf = shufflevector <4 x i1> %81, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx = and <4 x i1> %81, %rdx.shuf
  %rdx.shuf43 = shufflevector <4 x i1> %bin.rdx, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx44 = and <4 x i1> %bin.rdx, %rdx.shuf43
  %86 = extractelement <4 x i1> %bin.rdx44, i32 0
  %87 = and i1 %86, %85
  br i1 %87, label %if_end, label %assert_fail21, !prof !5

if_end:                                           ; preds = %assert_end20, %if_then
  %88 = getelementptr inbounds %1, %1* %8, i64 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %assert_end24, label %assert_fail23, !prof !5

assert_fail21:                                    ; preds = %if_then
  %91 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %91(i8* getelementptr inbounds ([235 x i8], [235 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_fail23:                                    ; preds = %if_end
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %92(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %if_end
  %93 = getelementptr inbounds %1, %1* %13, i64 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 2
  br i1 %95, label %assert_end26, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %96 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %96(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %97 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 2
  %98 = load i16, i16* %97, align 2
  %99 = icmp eq i16 %98, 1
  %100 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 1
  %101 = load i8, i8* %100, align 1
  %102 = icmp eq i8 %101, 32
  %103 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 0
  %104 = load i8, i8* %103, align 1
  %105 = icmp eq i8 %104, 2
  %106 = and i1 %102, %105
  %107 = and i1 %99, %106
  br i1 %107, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %108 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %108(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %109 = load i64, i64* %27, align 8, !tbaa !153
  %110 = trunc i64 %109 to i32
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %112(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %113 = getelementptr inbounds i64, i64* %27, i64 1
  %114 = load i64, i64* %113, align 8, !tbaa !167
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %115, 2704
  br i1 %116, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %118 = icmp eq i64* %29, null
  br i1 %118, label %if_end34, label %if_then33, !prof !41

if_then33:                                        ; preds = %assert_end32
  %119 = load i64, i64* %29, align 8, !tbaa !169
  %120 = trunc i64 %119 to i32
  %121 = icmp eq i32 %120, 2704
  %122 = getelementptr inbounds i64, i64* %29, i64 1
  %123 = load i64, i64* %122, align 8, !tbaa !183
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %124, 1
  %126 = and i1 %121, %125
  br i1 %126, label %if_end34, label %assert_fail35, !prof !5

if_end34:                                         ; preds = %assert_end32, %if_then33
  %127 = getelementptr inbounds %1, %1* %13, i64 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %assert_end38, label %assert_fail37, !prof !5

assert_fail35:                                    ; preds = %if_then33
  %130 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %130(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_fail37:                                    ; preds = %if_end34
  %131 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %131(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end38:                                     ; preds = %if_end34
  %132 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 1
  br i1 %134, label %assert_end40, label %assert_fail39, !prof !5

assert_fail39:                                    ; preds = %assert_end38
  %135 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %135(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %assert_end38
  %136 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = icmp eq i32 %23, %137
  br i1 %138, label %assert_end42, label %assert_fail41, !prof !5

assert_fail41:                                    ; preds = %assert_end40
  %139 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %139(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %assert_end40
  tail call fastcc void @fused_layout_transform_transpose_nn_batch_flatten_compute_(i8* %25, i8* %15)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind
define private fastcc void @fused_layout_transform_transpose_nn_batch_flatten_compute_(i8* noalias nocapture, i8* noalias nocapture readonly) unnamed_addr #2 {
entry:
  %2 = bitcast i8* %1 to float*
  %3 = bitcast i8* %0 to float*
  br label %for_body

for_body:                                         ; preds = %for_body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for_body ]
  %4 = shl nsw i64 %indvars.iv, 4
  %5 = shl nsw i64 %indvars.iv, 3
  %6 = trunc i64 %5 to i32
  %7 = insertelement <16 x i32> undef, i32 %6, i32 0
  %8 = shufflevector <16 x i32> %7, <16 x i32> undef, <16 x i32> zeroinitializer
  %9 = add <16 x i32> %8, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 1352, i32 1353, i32 1354, i32 1355, i32 1356, i32 1357, i32 1358, i32 1359>
  %10 = getelementptr inbounds float, float* %2, i64 %5
  %11 = load float, float* %10, align 4, !tbaa !185
  %12 = insertelement <16 x float> undef, float %11, i32 0
  %13 = extractelement <16 x i32> %9, i64 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds float, float* %2, i64 %14
  %16 = load float, float* %15, align 4, !tbaa !185
  %17 = insertelement <16 x float> %12, float %16, i32 1
  %18 = extractelement <16 x i32> %9, i64 2
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds float, float* %2, i64 %19
  %21 = load float, float* %20, align 4, !tbaa !185
  %22 = insertelement <16 x float> %17, float %21, i32 2
  %23 = extractelement <16 x i32> %9, i64 3
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds float, float* %2, i64 %24
  %26 = load float, float* %25, align 4, !tbaa !185
  %27 = insertelement <16 x float> %22, float %26, i32 3
  %28 = extractelement <16 x i32> %9, i64 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds float, float* %2, i64 %29
  %31 = load float, float* %30, align 4, !tbaa !185
  %32 = insertelement <16 x float> %27, float %31, i32 4
  %33 = extractelement <16 x i32> %9, i64 5
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds float, float* %2, i64 %34
  %36 = load float, float* %35, align 4, !tbaa !185
  %37 = insertelement <16 x float> %32, float %36, i32 5
  %38 = extractelement <16 x i32> %9, i64 6
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds float, float* %2, i64 %39
  %41 = load float, float* %40, align 4, !tbaa !185
  %42 = insertelement <16 x float> %37, float %41, i32 6
  %43 = extractelement <16 x i32> %9, i64 7
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %2, i64 %44
  %46 = load float, float* %45, align 4, !tbaa !185
  %47 = insertelement <16 x float> %42, float %46, i32 7
  %48 = extractelement <16 x i32> %9, i64 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds float, float* %2, i64 %49
  %51 = load float, float* %50, align 4, !tbaa !185
  %52 = insertelement <16 x float> %47, float %51, i32 8
  %53 = extractelement <16 x i32> %9, i64 9
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds float, float* %2, i64 %54
  %56 = load float, float* %55, align 4, !tbaa !185
  %57 = insertelement <16 x float> %52, float %56, i32 9
  %58 = extractelement <16 x i32> %9, i64 10
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds float, float* %2, i64 %59
  %61 = load float, float* %60, align 4, !tbaa !185
  %62 = insertelement <16 x float> %57, float %61, i32 10
  %63 = extractelement <16 x i32> %9, i64 11
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds float, float* %2, i64 %64
  %66 = load float, float* %65, align 4, !tbaa !185
  %67 = insertelement <16 x float> %62, float %66, i32 11
  %68 = extractelement <16 x i32> %9, i64 12
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %2, i64 %69
  %71 = load float, float* %70, align 4, !tbaa !185
  %72 = insertelement <16 x float> %67, float %71, i32 12
  %73 = extractelement <16 x i32> %9, i64 13
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds float, float* %2, i64 %74
  %76 = load float, float* %75, align 4, !tbaa !185
  %77 = insertelement <16 x float> %72, float %76, i32 13
  %78 = extractelement <16 x i32> %9, i64 14
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float, float* %2, i64 %79
  %81 = load float, float* %80, align 4, !tbaa !185
  %82 = insertelement <16 x float> %77, float %81, i32 14
  %83 = extractelement <16 x i32> %9, i64 15
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds float, float* %2, i64 %84
  %86 = load float, float* %85, align 4, !tbaa !185
  %87 = insertelement <16 x float> %82, float %86, i32 15
  %88 = getelementptr inbounds float, float* %3, i64 %4
  %89 = bitcast float* %88 to <16 x float>*
  store <16 x float> %87, <16 x float>* %89, align 64, !tbaa !188
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 169
  br i1 %exitcond, label %for_end, label %for_body, !prof !41

for_end:                                          ; preds = %for_body
  ret void
}

define dllexport i32 @fused_nn_max_pool2d(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 2
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.29, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %1**
  %8 = load %1*, %1** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !191
  %11 = getelementptr inbounds i8, i8* %0, i64 8
  %12 = bitcast i8* %11 to %1**
  %13 = load %1*, %1** %12, align 8
  %14 = getelementptr inbounds %1, %1* %8, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %1, %1* %8, i64 0, i32 4
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds %1, %1* %8, i64 0, i32 5
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds %1, %1* %8, i64 0, i32 1, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %1, %1* %8, i64 0, i32 1, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %1, %1* %13, i64 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %1, %1* %13, i64 0, i32 4
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds %1, %1* %13, i64 0, i32 5
  %29 = load i64*, i64** %28, align 8
  switch i32 %10, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %30 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %30(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.30, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %31 = getelementptr inbounds i8, i8* %1, i64 4
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !205
  switch i32 %33, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %34(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.31, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %35 = icmp eq i32 %21, 1
  br i1 %35, label %assert_end6, label %assert_fail5, !prof !5

assert_fail5:                                     ; preds = %assert_end4
  %36 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %36(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4
  %37 = getelementptr inbounds %1, %1* %8, i64 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %assert_end8, label %assert_fail7, !prof !5

assert_fail7:                                     ; preds = %assert_end6
  %40 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %40(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.21, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6
  %41 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 2
  %42 = load i16, i16* %41, align 2
  %43 = icmp eq i16 %42, 1
  %44 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 1
  %45 = load i8, i8* %44, align 1
  %46 = icmp eq i8 %45, 32
  %47 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 0
  %48 = load i8, i8* %47, align 1
  %49 = icmp eq i8 %48, 2
  %50 = and i1 %46, %49
  %51 = and i1 %43, %50
  br i1 %51, label %assert_end10, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %52 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %52(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %53 = load i64, i64* %17, align 8, !tbaa !207
  %54 = trunc i64 %53 to i32
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %56 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %56(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %57 = getelementptr inbounds i64, i64* %17, i64 1
  %58 = load i64, i64* %57, align 8, !tbaa !221
  %59 = trunc i64 %58 to i32
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %61 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %61(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.22, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %62 = getelementptr inbounds i64, i64* %17, i64 2
  %63 = load i64, i64* %62, align 8, !tbaa !223
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 27
  br i1 %65, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %66 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %66(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.32, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %67 = getelementptr inbounds i64, i64* %17, i64 3
  %68 = load i64, i64* %67, align 8, !tbaa !226
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, 27
  br i1 %70, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %71 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %71(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.33, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %72 = getelementptr inbounds i64, i64* %17, i64 4
  %73 = load i64, i64* %72, align 8, !tbaa !228
  %74 = trunc i64 %73 to i32
  %75 = icmp eq i32 %74, 8
  br i1 %75, label %assert_end20, label %assert_fail19, !prof !5

assert_fail19:                                    ; preds = %assert_end18
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %76(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.25, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %77 = icmp eq i64* %19, null
  br i1 %77, label %if_end, label %if_then, !prof !41

if_then:                                          ; preds = %assert_end20
  %78 = bitcast i64* %19 to <4 x i64>*
  %79 = load <4 x i64>, <4 x i64>* %78, align 8, !tbaa !232
  %80 = trunc <4 x i64> %79 to <4 x i32>
  %81 = icmp eq <4 x i32> %80, <i32 11664, i32 5832, i32 216, i32 8>
  %82 = getelementptr inbounds i64, i64* %19, i64 4
  %83 = load i64, i64* %82, align 8, !tbaa !244
  %84 = trunc i64 %83 to i32
  %85 = icmp eq i32 %84, 1
  %rdx.shuf51 = shufflevector <4 x i1> %81, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx52 = and <4 x i1> %81, %rdx.shuf51
  %rdx.shuf53 = shufflevector <4 x i1> %bin.rdx52, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx54 = and <4 x i1> %bin.rdx52, %rdx.shuf53
  %86 = extractelement <4 x i1> %bin.rdx54, i32 0
  %87 = and i1 %86, %85
  br i1 %87, label %if_end, label %assert_fail21, !prof !5

if_end:                                           ; preds = %assert_end20, %if_then
  %88 = getelementptr inbounds %1, %1* %8, i64 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %assert_end24, label %assert_fail23, !prof !5

assert_fail21:                                    ; preds = %if_then
  %91 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %91(i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.34, i64 0, i64 0))
  ret i32 -1

assert_fail23:                                    ; preds = %if_end
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %92(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %if_end
  %93 = getelementptr inbounds %1, %1* %13, i64 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 5
  br i1 %95, label %assert_end26, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %96 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %96(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.35, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %97 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 2
  %98 = load i16, i16* %97, align 2
  %99 = icmp eq i16 %98, 1
  %100 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 1
  %101 = load i8, i8* %100, align 1
  %102 = icmp eq i8 %101, 32
  %103 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 0
  %104 = load i8, i8* %103, align 1
  %105 = icmp eq i8 %104, 2
  %106 = and i1 %102, %105
  %107 = and i1 %99, %106
  br i1 %107, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %108 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %108(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %109 = load i64, i64* %27, align 8, !tbaa !248
  %110 = trunc i64 %109 to i32
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %112(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %113 = getelementptr inbounds i64, i64* %27, i64 1
  %114 = load i64, i64* %113, align 8, !tbaa !262
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %115, 2
  br i1 %116, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.36, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %118 = getelementptr inbounds i64, i64* %27, i64 2
  %119 = load i64, i64* %118, align 8, !tbaa !264
  %120 = trunc i64 %119 to i32
  %121 = icmp eq i32 %120, 13
  br i1 %121, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %122 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %122(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.37, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %123 = getelementptr inbounds i64, i64* %27, i64 3
  %124 = load i64, i64* %123, align 8, !tbaa !267
  %125 = trunc i64 %124 to i32
  %126 = icmp eq i32 %125, 13
  br i1 %126, label %assert_end36, label %assert_fail35, !prof !5

assert_fail35:                                    ; preds = %assert_end34
  %127 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %127(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.38, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %assert_end34
  %128 = getelementptr inbounds i64, i64* %27, i64 4
  %129 = load i64, i64* %128, align 8, !tbaa !269
  %130 = trunc i64 %129 to i32
  %131 = icmp eq i32 %130, 8
  br i1 %131, label %assert_end38, label %assert_fail37, !prof !5

assert_fail37:                                    ; preds = %assert_end36
  %132 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %132(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.39, i64 0, i64 0))
  ret i32 -1

assert_end38:                                     ; preds = %assert_end36
  %133 = icmp eq i64* %29, null
  br i1 %133, label %if_end40, label %if_then39, !prof !41

if_then39:                                        ; preds = %assert_end38
  %134 = bitcast i64* %29 to <4 x i64>*
  %135 = load <4 x i64>, <4 x i64>* %134, align 8, !tbaa !273
  %136 = trunc <4 x i64> %135 to <4 x i32>
  %137 = icmp eq <4 x i32> %136, <i32 2704, i32 1352, i32 104, i32 8>
  %138 = getelementptr inbounds i64, i64* %29, i64 4
  %139 = load i64, i64* %138, align 8, !tbaa !285
  %140 = trunc i64 %139 to i32
  %141 = icmp eq i32 %140, 1
  %rdx.shuf = shufflevector <4 x i1> %137, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx = and <4 x i1> %137, %rdx.shuf
  %rdx.shuf49 = shufflevector <4 x i1> %bin.rdx, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx50 = and <4 x i1> %bin.rdx, %rdx.shuf49
  %142 = extractelement <4 x i1> %bin.rdx50, i32 0
  %143 = and i1 %142, %141
  br i1 %143, label %if_end40, label %assert_fail41, !prof !5

if_end40:                                         ; preds = %assert_end38, %if_then39
  %144 = getelementptr inbounds %1, %1* %13, i64 0, i32 6
  %145 = load i64, i64* %144, align 8
  %146 = icmp eq i64 %145, 0
  br i1 %146, label %assert_end44, label %assert_fail43, !prof !5

assert_fail41:                                    ; preds = %if_then39
  %147 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %147(i8* getelementptr inbounds ([235 x i8], [235 x i8]* @.str.40, i64 0, i64 0))
  ret i32 -1

assert_fail43:                                    ; preds = %if_end40
  %148 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %148(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %if_end40
  %149 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %assert_end46, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %152 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %152(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end46:                                     ; preds = %assert_end44
  %153 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %23, %154
  br i1 %155, label %assert_end48, label %assert_fail47, !prof !5

assert_fail47:                                    ; preds = %assert_end46
  %156 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %156(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end48:                                     ; preds = %assert_end46
  %157 = tail call fastcc i32 @fused_nn_max_pool2d_compute_(i8* %25, i8* %15)
  ret i32 %157
}

; Function Attrs: noinline
define private fastcc i32 @fused_nn_max_pool2d_compute_(i8* noalias, i8* noalias) unnamed_addr #3 {
entry:
  %2 = alloca %4, align 8
  %3 = getelementptr inbounds %4, %4* %2, i64 0, i32 0
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds %4, %4* %2, i64 0, i32 1
  store i8* %1, i8** %4, align 8
  %5 = bitcast %4* %2 to i8*
  %6 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %7 = call i32 %6(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda, i8* nonnull %5, i32 0)
  ret i32 %7
}

; Function Attrs: norecurse nounwind
define private i32 @__tvm_parallel_lambda(i32, %0* nocapture readonly, i8* nocapture readonly) #4 {
entry:
  %3 = bitcast i8* %2 to float**
  %4 = load float*, float** %3, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr inbounds %0, %0* %1, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 25
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 26
  %15 = select i1 %14, i32 %13, i32 26
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 26
  %18 = select i1 %17, i32 %16, i32 26
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %20 = add i32 %18, 1
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, -1
  %23 = sext i32 %15 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_end3
  %indvars.iv8 = phi i64 [ %22, %for_begin1.preheader.preheader ], [ %indvars.iv.next9, %for_end3 ]
  %24 = mul nsw i64 %indvars.iv8, 104
  %25 = trunc i64 %indvars.iv8 to i32
  %26 = srem i32 %25, 13
  %27 = mul nsw i32 %26, 432
  %28 = sdiv i32 %25, 13
  %29 = mul nsw i32 %28, 5832
  %30 = add nsw i32 %29, %27
  br label %for_body2

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_body2:                                        ; preds = %for_body2, %for_begin1.preheader
  %indvars.iv = phi i64 [ 0, %for_begin1.preheader ], [ %indvars.iv.next, %for_body2 ]
  %31 = shl i64 %indvars.iv, 3
  %32 = add nsw i64 %31, %24
  %33 = getelementptr inbounds float, float* %4, i64 %32
  %34 = bitcast float* %33 to <8 x float>*
  %indvars.iv.tr = trunc i64 %indvars.iv to i32
  %35 = shl i32 %indvars.iv.tr, 4
  %36 = add i32 %30, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds float, float* %7, i64 %37
  %39 = bitcast float* %38 to <8 x float>*
  %40 = load <8 x float>, <8 x float>* %39, align 32, !tbaa !289
  %41 = fcmp olt <8 x float> %40, <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %42 = select <8 x i1> %41, <8 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, <8 x float> %40
  %43 = add i32 %36, 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds float, float* %7, i64 %44
  %46 = bitcast float* %45 to <8 x float>*
  %47 = load <8 x float>, <8 x float>* %46, align 32, !tbaa !289
  %48 = fcmp ogt <8 x float> %42, %47
  %49 = select <8 x i1> %48, <8 x float> %42, <8 x float> %47
  %50 = add i32 %36, 216
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds float, float* %7, i64 %51
  %53 = bitcast float* %52 to <8 x float>*
  %54 = load <8 x float>, <8 x float>* %53, align 32, !tbaa !289
  %55 = fcmp ogt <8 x float> %49, %54
  %56 = select <8 x i1> %55, <8 x float> %49, <8 x float> %54
  %57 = add i32 %36, 224
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds float, float* %7, i64 %58
  %60 = bitcast float* %59 to <8 x float>*
  %61 = load <8 x float>, <8 x float>* %60, align 32, !tbaa !289
  %62 = fcmp ogt <8 x float> %56, %61
  %63 = select <8 x i1> %62, <8 x float> %56, <8 x float> %61
  store <8 x float> %63, <8 x float>* %34, align 32, !tbaa !292
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond, label %for_end3, label %for_body2, !prof !41

for_end3:                                         ; preds = %for_body2
  %indvars.iv.next9 = add nsw i64 %indvars.iv8, 1
  %64 = icmp slt i64 %indvars.iv.next9, %23
  br i1 %64, label %for_begin1.preheader, label %for_end, !prof !5
}

define dllexport i32 @fused_nn_contrib_conv2d_NCHWc_add(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 4
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.41, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %1**
  %8 = load %1*, %1** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !295
  %11 = getelementptr inbounds i8, i8* %0, i64 8
  %12 = bitcast i8* %11 to %1**
  %13 = load %1*, %1** %12, align 8
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %1**
  %16 = load %1*, %1** %15, align 8
  %17 = getelementptr inbounds i8, i8* %1, i64 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4, !tbaa !309
  %20 = getelementptr inbounds i8, i8* %0, i64 24
  %21 = bitcast i8* %20 to %1**
  %22 = load %1*, %1** %21, align 8
  %23 = getelementptr inbounds i8, i8* %1, i64 12
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4, !tbaa !312
  %26 = getelementptr inbounds %1, %1* %8, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %1, %1* %8, i64 0, i32 4
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds %1, %1* %8, i64 0, i32 5
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds %1, %1* %8, i64 0, i32 1, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %1, %1* %8, i64 0, i32 1, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %1, %1* %13, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %1, %1* %13, i64 0, i32 4
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds %1, %1* %13, i64 0, i32 5
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds %1, %1* %16, i64 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %1, %1* %16, i64 0, i32 4
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds %1, %1* %16, i64 0, i32 5
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds %1, %1* %22, i64 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds %1, %1* %22, i64 0, i32 4
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds %1, %1* %22, i64 0, i32 5
  %53 = load i64*, i64** %52, align 8
  switch i32 %10, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %54 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %54(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.42, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %55 = getelementptr inbounds i8, i8* %1, i64 4
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4, !tbaa !314
  switch i32 %57, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %58 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %58(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.43, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  switch i32 %19, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ]

assert_fail5:                                     ; preds = %assert_end4
  %59 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %59(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.44, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  switch i32 %25, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ]

assert_fail7:                                     ; preds = %assert_end6
  %60 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %60(i8* getelementptr inbounds ([161 x i8], [161 x i8]* @.str.45, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  %61 = icmp eq i32 %33, 1
  br i1 %61, label %assert_end10, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %62 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %62(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %63 = getelementptr inbounds %1, %1* %8, i64 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 5
  br i1 %65, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %66 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %66(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.21, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %67 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 2
  %68 = load i16, i16* %67, align 2
  %69 = icmp eq i16 %68, 1
  %70 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 1
  %71 = load i8, i8* %70, align 1
  %72 = icmp eq i8 %71, 32
  %73 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 0
  %74 = load i8, i8* %73, align 1
  %75 = icmp eq i8 %74, 2
  %76 = and i1 %72, %75
  %77 = and i1 %69, %76
  br i1 %77, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %78 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %78(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %79 = load i64, i64* %29, align 8, !tbaa !316
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %82 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %82(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %83 = getelementptr inbounds i64, i64* %29, i64 1
  %84 = load i64, i64* %83, align 8, !tbaa !330
  %85 = trunc i64 %84 to i32
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %87 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %87(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.46, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %88 = getelementptr inbounds i64, i64* %29, i64 2
  %89 = load i64, i64* %88, align 8, !tbaa !332
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 28
  br i1 %91, label %assert_end20, label %assert_fail19, !prof !5

assert_fail19:                                    ; preds = %assert_end18
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %92(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.47, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %93 = getelementptr inbounds i64, i64* %29, i64 3
  %94 = load i64, i64* %93, align 8, !tbaa !335
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %95, 28
  br i1 %96, label %assert_end22, label %assert_fail21, !prof !5

assert_fail21:                                    ; preds = %assert_end20
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %97(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.48, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %assert_end20
  %98 = getelementptr inbounds i64, i64* %29, i64 4
  %99 = load i64, i64* %98, align 8, !tbaa !337
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %102 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %102(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.49, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end22
  %103 = icmp eq i64* %31, null
  br i1 %103, label %if_end, label %if_then, !prof !41

if_then:                                          ; preds = %assert_end24
  %104 = bitcast i64* %31 to <4 x i64>*
  %105 = load <4 x i64>, <4 x i64>* %104, align 8, !tbaa !341
  %106 = trunc <4 x i64> %105 to <4 x i32>
  %107 = icmp eq <4 x i32> %106, <i32 784, i32 784, i32 28, i32 1>
  %108 = getelementptr inbounds i64, i64* %31, i64 4
  %109 = load i64, i64* %108, align 8, !tbaa !353
  %110 = trunc i64 %109 to i32
  %111 = icmp eq i32 %110, 1
  %rdx.shuf113 = shufflevector <4 x i1> %107, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx114 = and <4 x i1> %107, %rdx.shuf113
  %rdx.shuf115 = shufflevector <4 x i1> %bin.rdx114, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx116 = and <4 x i1> %bin.rdx114, %rdx.shuf115
  %112 = extractelement <4 x i1> %bin.rdx116, i32 0
  %113 = and i1 %112, %111
  br i1 %113, label %if_end, label %assert_fail25, !prof !5

if_end:                                           ; preds = %assert_end24, %if_then
  %114 = getelementptr inbounds %1, %1* %8, i64 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %assert_end28, label %assert_fail27, !prof !5

assert_fail25:                                    ; preds = %if_then
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([232 x i8], [232 x i8]* @.str.50, i64 0, i64 0))
  ret i32 -1

assert_fail27:                                    ; preds = %if_end
  %118 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %118(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %if_end
  %119 = getelementptr inbounds %1, %1* %13, i64 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 6
  br i1 %121, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %122 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %122(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.51, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %123 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 2
  %124 = load i16, i16* %123, align 2
  %125 = icmp eq i16 %124, 1
  %126 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 1
  %127 = load i8, i8* %126, align 1
  %128 = icmp eq i8 %127, 32
  %129 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 0
  %130 = load i8, i8* %129, align 1
  %131 = icmp eq i8 %130, 2
  %132 = and i1 %128, %131
  %133 = and i1 %125, %132
  br i1 %133, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %134 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %134(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %135 = load i64, i64* %39, align 8, !tbaa !357
  %136 = trunc i64 %135 to i32
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %138(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.52, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %139 = getelementptr inbounds i64, i64* %39, i64 1
  %140 = load i64, i64* %139, align 8, !tbaa !371
  %141 = trunc i64 %140 to i32
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %assert_end36, label %assert_fail35, !prof !5

assert_fail35:                                    ; preds = %assert_end34
  %143 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %143(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.53, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %assert_end34
  %144 = getelementptr inbounds i64, i64* %39, i64 2
  %145 = load i64, i64* %144, align 8, !tbaa !373
  %146 = trunc i64 %145 to i32
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %assert_end38, label %assert_fail37, !prof !5

assert_fail37:                                    ; preds = %assert_end36
  %148 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %148(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.54, i64 0, i64 0))
  ret i32 -1

assert_end38:                                     ; preds = %assert_end36
  %149 = getelementptr inbounds i64, i64* %39, i64 3
  %150 = load i64, i64* %149, align 8, !tbaa !376
  %151 = trunc i64 %150 to i32
  %152 = icmp eq i32 %151, 2
  br i1 %152, label %assert_end40, label %assert_fail39, !prof !5

assert_fail39:                                    ; preds = %assert_end38
  %153 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %153(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.55, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %assert_end38
  %154 = getelementptr inbounds i64, i64* %39, i64 4
  %155 = load i64, i64* %154, align 8, !tbaa !378
  %156 = trunc i64 %155 to i32
  %157 = icmp eq i32 %156, 1
  br i1 %157, label %assert_end42, label %assert_fail41, !prof !5

assert_fail41:                                    ; preds = %assert_end40
  %158 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %158(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.56, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %assert_end40
  %159 = getelementptr inbounds i64, i64* %39, i64 5
  %160 = load i64, i64* %159, align 8, !tbaa !382
  %161 = trunc i64 %160 to i32
  %162 = icmp eq i32 %161, 8
  br i1 %162, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %163 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %163(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.57, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %164 = icmp eq i64* %41, null
  br i1 %164, label %if_end46, label %if_then45, !prof !41

if_then45:                                        ; preds = %assert_end44
  %165 = bitcast i64* %41 to <4 x i64>*
  %166 = load <4 x i64>, <4 x i64>* %165, align 8, !tbaa !384
  %167 = trunc <4 x i64> %166 to <4 x i32>
  %168 = icmp eq <4 x i32> %167, <i32 32, i32 32, i32 16, i32 8>
  %169 = getelementptr inbounds i64, i64* %41, i64 4
  %170 = load i64, i64* %169, align 8, !tbaa !396
  %171 = trunc i64 %170 to i32
  %172 = icmp eq i32 %171, 8
  %173 = getelementptr inbounds i64, i64* %41, i64 5
  %174 = load i64, i64* %173, align 8, !tbaa !400
  %175 = trunc i64 %174 to i32
  %176 = icmp eq i32 %175, 1
  %rdx.shuf109 = shufflevector <4 x i1> %168, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx110 = and <4 x i1> %168, %rdx.shuf109
  %rdx.shuf111 = shufflevector <4 x i1> %bin.rdx110, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx112 = and <4 x i1> %bin.rdx110, %rdx.shuf111
  %177 = extractelement <4 x i1> %bin.rdx112, i32 0
  %178 = and i1 %177, %172
  %179 = and i1 %178, %176
  br i1 %179, label %if_end46, label %assert_fail47, !prof !5

if_end46:                                         ; preds = %assert_end44, %if_then45
  %180 = getelementptr inbounds %1, %1* %13, i64 0, i32 6
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %assert_end50, label %assert_fail49, !prof !5

assert_fail47:                                    ; preds = %if_then45
  %183 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %183(i8* getelementptr inbounds ([265 x i8], [265 x i8]* @.str.58, i64 0, i64 0))
  ret i32 -1

assert_fail49:                                    ; preds = %if_end46
  %184 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %184(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end50:                                     ; preds = %if_end46
  %185 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 1
  br i1 %187, label %assert_end52, label %assert_fail51, !prof !5

assert_fail51:                                    ; preds = %assert_end50
  %188 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %188(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end52:                                     ; preds = %assert_end50
  %189 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = icmp eq i32 %35, %190
  br i1 %191, label %assert_end54, label %assert_fail53, !prof !5

assert_fail53:                                    ; preds = %assert_end52
  %192 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %192(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end54:                                     ; preds = %assert_end52
  %193 = getelementptr inbounds %1, %1* %16, i64 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = icmp eq i32 %194, 5
  br i1 %195, label %assert_end56, label %assert_fail55, !prof !5

assert_fail55:                                    ; preds = %assert_end54
  %196 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %196(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.59, i64 0, i64 0))
  ret i32 -1

assert_end56:                                     ; preds = %assert_end54
  %197 = getelementptr inbounds %1, %1* %16, i64 0, i32 3, i32 2
  %198 = load i16, i16* %197, align 2
  %199 = icmp eq i16 %198, 1
  %200 = getelementptr inbounds %1, %1* %16, i64 0, i32 3, i32 1
  %201 = load i8, i8* %200, align 1
  %202 = icmp eq i8 %201, 32
  %203 = getelementptr inbounds %1, %1* %16, i64 0, i32 3, i32 0
  %204 = load i8, i8* %203, align 1
  %205 = icmp eq i8 %204, 2
  %206 = and i1 %202, %205
  %207 = and i1 %199, %206
  br i1 %207, label %assert_end58, label %assert_fail57, !prof !5

assert_fail57:                                    ; preds = %assert_end56
  %208 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %208(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.60, i64 0, i64 0))
  ret i32 -1

assert_end58:                                     ; preds = %assert_end56
  %209 = load i64, i64* %45, align 8, !tbaa !402
  %210 = trunc i64 %209 to i32
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %assert_end60, label %assert_fail59, !prof !5

assert_fail59:                                    ; preds = %assert_end58
  %212 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %212(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.61, i64 0, i64 0))
  ret i32 -1

assert_end60:                                     ; preds = %assert_end58
  %213 = getelementptr inbounds i64, i64* %45, i64 1
  %214 = load i64, i64* %213, align 8, !tbaa !416
  %215 = trunc i64 %214 to i32
  %216 = icmp eq i32 %215, 2
  br i1 %216, label %assert_end62, label %assert_fail61, !prof !5

assert_fail61:                                    ; preds = %assert_end60
  %217 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %217(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.62, i64 0, i64 0))
  ret i32 -1

assert_end62:                                     ; preds = %assert_end60
  %218 = getelementptr inbounds i64, i64* %45, i64 2
  %219 = load i64, i64* %218, align 8, !tbaa !418
  %220 = trunc i64 %219 to i32
  %221 = icmp eq i32 %220, 1
  br i1 %221, label %assert_end64, label %assert_fail63, !prof !5

assert_fail63:                                    ; preds = %assert_end62
  %222 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %222(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.63, i64 0, i64 0))
  ret i32 -1

assert_end64:                                     ; preds = %assert_end62
  %223 = getelementptr inbounds i64, i64* %45, i64 3
  %224 = load i64, i64* %223, align 8, !tbaa !421
  %225 = trunc i64 %224 to i32
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %assert_end66, label %assert_fail65, !prof !5

assert_fail65:                                    ; preds = %assert_end64
  %227 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %227(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.64, i64 0, i64 0))
  ret i32 -1

assert_end66:                                     ; preds = %assert_end64
  %228 = getelementptr inbounds i64, i64* %45, i64 4
  %229 = load i64, i64* %228, align 8, !tbaa !423
  %230 = trunc i64 %229 to i32
  %231 = icmp eq i32 %230, 8
  br i1 %231, label %assert_end68, label %assert_fail67, !prof !5

assert_fail67:                                    ; preds = %assert_end66
  %232 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %232(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.65, i64 0, i64 0))
  ret i32 -1

assert_end68:                                     ; preds = %assert_end66
  %233 = icmp eq i64* %47, null
  br i1 %233, label %if_end70, label %if_then69, !prof !41

if_then69:                                        ; preds = %assert_end68
  %234 = bitcast i64* %47 to <4 x i64>*
  %235 = load <4 x i64>, <4 x i64>* %234, align 8, !tbaa !427
  %236 = trunc <4 x i64> %235 to <4 x i32>
  %237 = icmp eq <4 x i32> %236, <i32 16, i32 8, i32 8, i32 8>
  %238 = getelementptr inbounds i64, i64* %47, i64 4
  %239 = load i64, i64* %238, align 8, !tbaa !439
  %240 = trunc i64 %239 to i32
  %241 = icmp eq i32 %240, 1
  %rdx.shuf105 = shufflevector <4 x i1> %237, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx106 = and <4 x i1> %237, %rdx.shuf105
  %rdx.shuf107 = shufflevector <4 x i1> %bin.rdx106, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx108 = and <4 x i1> %bin.rdx106, %rdx.shuf107
  %242 = extractelement <4 x i1> %bin.rdx108, i32 0
  %243 = and i1 %242, %241
  br i1 %243, label %if_end70, label %assert_fail71, !prof !5

if_end70:                                         ; preds = %assert_end68, %if_then69
  %244 = getelementptr inbounds %1, %1* %16, i64 0, i32 6
  %245 = load i64, i64* %244, align 8
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %assert_end74, label %assert_fail73, !prof !5

assert_fail71:                                    ; preds = %if_then69
  %247 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %247(i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.66, i64 0, i64 0))
  ret i32 -1

assert_fail73:                                    ; preds = %if_end70
  %248 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %248(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.67, i64 0, i64 0))
  ret i32 -1

assert_end74:                                     ; preds = %if_end70
  %249 = getelementptr inbounds %1, %1* %16, i64 0, i32 1, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %assert_end76, label %assert_fail75, !prof !5

assert_fail75:                                    ; preds = %assert_end74
  %252 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %252(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.68, i64 0, i64 0))
  ret i32 -1

assert_end76:                                     ; preds = %assert_end74
  %253 = getelementptr inbounds %1, %1* %16, i64 0, i32 1, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = icmp eq i32 %35, %254
  br i1 %255, label %assert_end78, label %assert_fail77, !prof !5

assert_fail77:                                    ; preds = %assert_end76
  %256 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %256(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.69, i64 0, i64 0))
  ret i32 -1

assert_end78:                                     ; preds = %assert_end76
  %257 = getelementptr inbounds %1, %1* %22, i64 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = icmp eq i32 %258, 5
  br i1 %259, label %assert_end80, label %assert_fail79, !prof !5

assert_fail79:                                    ; preds = %assert_end78
  %260 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %260(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.70, i64 0, i64 0))
  ret i32 -1

assert_end80:                                     ; preds = %assert_end78
  %261 = getelementptr inbounds %1, %1* %22, i64 0, i32 3, i32 2
  %262 = load i16, i16* %261, align 2
  %263 = icmp eq i16 %262, 1
  %264 = getelementptr inbounds %1, %1* %22, i64 0, i32 3, i32 1
  %265 = load i8, i8* %264, align 1
  %266 = icmp eq i8 %265, 32
  %267 = getelementptr inbounds %1, %1* %22, i64 0, i32 3, i32 0
  %268 = load i8, i8* %267, align 1
  %269 = icmp eq i8 %268, 2
  %270 = and i1 %266, %269
  %271 = and i1 %263, %270
  br i1 %271, label %assert_end82, label %assert_fail81, !prof !5

assert_fail81:                                    ; preds = %assert_end80
  %272 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %272(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.71, i64 0, i64 0))
  ret i32 -1

assert_end82:                                     ; preds = %assert_end80
  %273 = load i64, i64* %51, align 8, !tbaa !443
  %274 = trunc i64 %273 to i32
  %275 = icmp eq i32 %274, 1
  br i1 %275, label %assert_end84, label %assert_fail83, !prof !5

assert_fail83:                                    ; preds = %assert_end82
  %276 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %276(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.72, i64 0, i64 0))
  ret i32 -1

assert_end84:                                     ; preds = %assert_end82
  %277 = getelementptr inbounds i64, i64* %51, i64 1
  %278 = load i64, i64* %277, align 8, !tbaa !457
  %279 = trunc i64 %278 to i32
  %280 = icmp eq i32 %279, 2
  br i1 %280, label %assert_end86, label %assert_fail85, !prof !5

assert_fail85:                                    ; preds = %assert_end84
  %281 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %281(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.73, i64 0, i64 0))
  ret i32 -1

assert_end86:                                     ; preds = %assert_end84
  %282 = getelementptr inbounds i64, i64* %51, i64 2
  %283 = load i64, i64* %282, align 8, !tbaa !459
  %284 = trunc i64 %283 to i32
  %285 = icmp eq i32 %284, 27
  br i1 %285, label %assert_end88, label %assert_fail87, !prof !5

assert_fail87:                                    ; preds = %assert_end86
  %286 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %286(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.74, i64 0, i64 0))
  ret i32 -1

assert_end88:                                     ; preds = %assert_end86
  %287 = getelementptr inbounds i64, i64* %51, i64 3
  %288 = load i64, i64* %287, align 8, !tbaa !462
  %289 = trunc i64 %288 to i32
  %290 = icmp eq i32 %289, 27
  br i1 %290, label %assert_end90, label %assert_fail89, !prof !5

assert_fail89:                                    ; preds = %assert_end88
  %291 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %291(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.75, i64 0, i64 0))
  ret i32 -1

assert_end90:                                     ; preds = %assert_end88
  %292 = getelementptr inbounds i64, i64* %51, i64 4
  %293 = load i64, i64* %292, align 8, !tbaa !464
  %294 = trunc i64 %293 to i32
  %295 = icmp eq i32 %294, 8
  br i1 %295, label %assert_end92, label %assert_fail91, !prof !5

assert_fail91:                                    ; preds = %assert_end90
  %296 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %296(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.76, i64 0, i64 0))
  ret i32 -1

assert_end92:                                     ; preds = %assert_end90
  %297 = icmp eq i64* %53, null
  br i1 %297, label %if_end94, label %if_then93, !prof !41

if_then93:                                        ; preds = %assert_end92
  %298 = bitcast i64* %53 to <4 x i64>*
  %299 = load <4 x i64>, <4 x i64>* %298, align 8, !tbaa !468
  %300 = trunc <4 x i64> %299 to <4 x i32>
  %301 = icmp eq <4 x i32> %300, <i32 11664, i32 5832, i32 216, i32 8>
  %302 = getelementptr inbounds i64, i64* %53, i64 4
  %303 = load i64, i64* %302, align 8, !tbaa !480
  %304 = trunc i64 %303 to i32
  %305 = icmp eq i32 %304, 1
  %rdx.shuf = shufflevector <4 x i1> %301, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx = and <4 x i1> %301, %rdx.shuf
  %rdx.shuf103 = shufflevector <4 x i1> %bin.rdx, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx104 = and <4 x i1> %bin.rdx, %rdx.shuf103
  %306 = extractelement <4 x i1> %bin.rdx104, i32 0
  %307 = and i1 %306, %305
  br i1 %307, label %if_end94, label %assert_fail95, !prof !5

if_end94:                                         ; preds = %assert_end92, %if_then93
  %308 = getelementptr inbounds %1, %1* %22, i64 0, i32 6
  %309 = load i64, i64* %308, align 8
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %assert_end98, label %assert_fail97, !prof !5

assert_fail95:                                    ; preds = %if_then93
  %311 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %311(i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str.77, i64 0, i64 0))
  ret i32 -1

assert_fail97:                                    ; preds = %if_end94
  %312 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %312(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.78, i64 0, i64 0))
  ret i32 -1

assert_end98:                                     ; preds = %if_end94
  %313 = getelementptr inbounds %1, %1* %22, i64 0, i32 1, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = icmp eq i32 %314, 1
  br i1 %315, label %assert_end100, label %assert_fail99, !prof !5

assert_fail99:                                    ; preds = %assert_end98
  %316 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %316(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.79, i64 0, i64 0))
  ret i32 -1

assert_end100:                                    ; preds = %assert_end98
  %317 = getelementptr inbounds %1, %1* %22, i64 0, i32 1, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = icmp eq i32 %35, %318
  br i1 %319, label %assert_end102, label %assert_fail101, !prof !5

assert_fail101:                                   ; preds = %assert_end100
  %320 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %320(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.80, i64 0, i64 0))
  ret i32 -1

assert_end102:                                    ; preds = %assert_end100
  %321 = tail call fastcc i32 @fused_nn_contrib_conv2d_NCHWc_add_compute_(i8* %27, i8* %37, i8* %49, i8* %43)
  ret i32 %321
}

; Function Attrs: noinline
define private fastcc i32 @fused_nn_contrib_conv2d_NCHWc_add_compute_(i8* noalias, i8* noalias, i8* noalias, i8* noalias) unnamed_addr #3 {
entry:
  %4 = alloca %5, align 8
  %5 = getelementptr inbounds %5, %5* %4, i64 0, i32 0
  store i8* %0, i8** %5, align 8
  %6 = getelementptr inbounds %5, %5* %4, i64 0, i32 1
  store i8* %1, i8** %6, align 8
  %7 = getelementptr inbounds %5, %5* %4, i64 0, i32 2
  store i8* %2, i8** %7, align 8
  %8 = getelementptr inbounds %5, %5* %4, i64 0, i32 3
  store i8* %3, i8** %8, align 8
  %9 = bitcast %5* %4 to i8*
  %10 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %11 = call i32 %10(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.81, i8* nonnull %9, i32 0)
  ret i32 %11
}

; Function Attrs: nounwind
define private i32 @__tvm_parallel_lambda.81(i32, %0* nocapture readonly, i8* nocapture readonly) #5 {
entry:
  %3 = alloca [27 x <8 x float>], align 32
  %.sub = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0
  %4 = bitcast i8* %2 to float**
  %5 = load float*, float** %4, align 8
  %6 = getelementptr inbounds i8, i8* %2, i64 8
  %7 = bitcast i8* %6 to float**
  %8 = load float*, float** %7, align 8
  %9 = getelementptr inbounds i8, i8* %2, i64 16
  %10 = bitcast i8* %9 to float**
  %11 = load float*, float** %10, align 8
  %12 = getelementptr inbounds i8, i8* %2, i64 24
  %13 = bitcast i8* %12 to float**
  %14 = load float*, float** %13, align 8
  %15 = getelementptr inbounds %0, %0* %1, i64 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 53
  %18 = sdiv i32 %17, %16
  %19 = add nsw i32 %0, 1
  %20 = mul nsw i32 %18, %19
  %21 = icmp slt i32 %20, 54
  %22 = select i1 %21, i32 %20, i32 54
  %23 = mul nsw i32 %18, %0
  %24 = icmp slt i32 %23, 54
  %25 = select i1 %24, i32 %23, i32 54
  %26 = icmp slt i32 %25, %22
  br i1 %26, label %for_body.lr.ph, label %for_end, !prof !5

for_body.lr.ph:                                   ; preds = %entry
  %27 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 8
  %28 = bitcast float* %27 to <8 x float>*
  %29 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 16
  %30 = bitcast float* %29 to <8 x float>*
  %31 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 24
  %32 = bitcast float* %31 to <8 x float>*
  %33 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 32
  %34 = bitcast float* %33 to <8 x float>*
  %35 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 40
  %36 = bitcast float* %35 to <8 x float>*
  %37 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 48
  %38 = bitcast float* %37 to <8 x float>*
  %39 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 56
  %40 = bitcast float* %39 to <8 x float>*
  %41 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 64
  %42 = bitcast float* %41 to <8 x float>*
  %43 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 72
  %44 = bitcast float* %43 to <8 x float>*
  %45 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 80
  %46 = bitcast float* %45 to <8 x float>*
  %47 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 88
  %48 = bitcast float* %47 to <8 x float>*
  %49 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 96
  %50 = bitcast float* %49 to <8 x float>*
  %51 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 104
  %52 = bitcast float* %51 to <8 x float>*
  %53 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 112
  %54 = bitcast float* %53 to <8 x float>*
  %55 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 120
  %56 = bitcast float* %55 to <8 x float>*
  %57 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 128
  %58 = bitcast float* %57 to <8 x float>*
  %59 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 136
  %60 = bitcast float* %59 to <8 x float>*
  %61 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 144
  %62 = bitcast float* %61 to <8 x float>*
  %63 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 152
  %64 = bitcast float* %63 to <8 x float>*
  %65 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 160
  %66 = bitcast float* %65 to <8 x float>*
  %67 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 168
  %68 = bitcast float* %67 to <8 x float>*
  %69 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 176
  %70 = bitcast float* %69 to <8 x float>*
  %71 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 184
  %72 = bitcast float* %71 to <8 x float>*
  %73 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 192
  %74 = bitcast float* %73 to <8 x float>*
  %75 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 200
  %76 = bitcast float* %75 to <8 x float>*
  %77 = getelementptr inbounds [27 x <8 x float>], [27 x <8 x float>]* %3, i64 0, i64 0, i64 208
  %78 = bitcast float* %77 to <8 x float>*
  %79 = add i32 %25, 1
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, -1
  %82 = sext i32 %22 to i64
  %83 = bitcast [27 x <8 x float>]* %3 to i8*
  br label %for_body

for_body:                                         ; preds = %for_body.lr.ph, %for_begin7.preheader
  %indvars.iv145 = phi i64 [ %81, %for_body.lr.ph ], [ %indvars.iv.next146, %for_begin7.preheader ]
  %84 = trunc i64 %indvars.iv145 to i32
  %85 = srem i32 %84, 27
  %86 = sdiv i32 %84, 27
  %87 = shl i32 %86, 5
  %88 = sext i32 %87 to i64
  call void @llvm.memset.p0i8.i64(i8* nonnull align 32 %83, i8 0, i64 864, i1 false)
  br label %for_begin4.preheader

for_end:                                          ; preds = %for_begin7.preheader, %entry
  ret i32 0

for_begin7.preheader:                             ; preds = %for_begin4.preheader
  store <8 x float> %390, <8 x float>* %.sub, align 32, !tbaa !484
  store <8 x float> %396, <8 x float>* %28, align 32, !tbaa !484
  store <8 x float> %402, <8 x float>* %30, align 32, !tbaa !484
  store <8 x float> %408, <8 x float>* %32, align 32, !tbaa !484
  store <8 x float> %414, <8 x float>* %34, align 32, !tbaa !484
  store <8 x float> %420, <8 x float>* %36, align 32, !tbaa !484
  store <8 x float> %426, <8 x float>* %38, align 32, !tbaa !484
  store <8 x float> %432, <8 x float>* %40, align 32, !tbaa !484
  store <8 x float> %438, <8 x float>* %42, align 32, !tbaa !484
  store <8 x float> %444, <8 x float>* %44, align 32, !tbaa !484
  store <8 x float> %450, <8 x float>* %46, align 32, !tbaa !484
  store <8 x float> %456, <8 x float>* %48, align 32, !tbaa !484
  store <8 x float> %462, <8 x float>* %50, align 32, !tbaa !484
  store <8 x float> %468, <8 x float>* %52, align 32, !tbaa !484
  store <8 x float> %474, <8 x float>* %54, align 32, !tbaa !484
  store <8 x float> %480, <8 x float>* %56, align 32, !tbaa !484
  store <8 x float> %486, <8 x float>* %58, align 32, !tbaa !484
  store <8 x float> %492, <8 x float>* %60, align 32, !tbaa !484
  store <8 x float> %498, <8 x float>* %62, align 32, !tbaa !484
  store <8 x float> %504, <8 x float>* %64, align 32, !tbaa !484
  store <8 x float> %510, <8 x float>* %66, align 32, !tbaa !484
  store <8 x float> %516, <8 x float>* %68, align 32, !tbaa !484
  store <8 x float> %522, <8 x float>* %70, align 32, !tbaa !484
  store <8 x float> %528, <8 x float>* %72, align 32, !tbaa !484
  store <8 x float> %534, <8 x float>* %74, align 32, !tbaa !484
  store <8 x float> %540, <8 x float>* %76, align 32, !tbaa !484
  store <8 x float> %546, <8 x float>* %78, align 32, !tbaa !484
  %89 = mul nsw i64 %indvars.iv145, 216
  %90 = shl nsw i32 %86, 3
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds float, float* %14, i64 %91
  %93 = bitcast float* %92 to <8 x float>*
  %94 = load <8 x float>, <8 x float>* %93, align 32, !tbaa !495
  %95 = fadd <8 x float> %94, %390
  %96 = getelementptr inbounds float, float* %11, i64 %89
  %97 = bitcast float* %96 to <8 x float>*
  store <8 x float> %95, <8 x float>* %97, align 32, !tbaa !498
  %98 = add nsw i64 %89, 8
  %99 = fadd <8 x float> %94, %396
  %100 = getelementptr inbounds float, float* %11, i64 %98
  %101 = bitcast float* %100 to <8 x float>*
  store <8 x float> %99, <8 x float>* %101, align 32, !tbaa !498
  %102 = add nsw i64 %89, 16
  %103 = fadd <8 x float> %94, %402
  %104 = getelementptr inbounds float, float* %11, i64 %102
  %105 = bitcast float* %104 to <8 x float>*
  store <8 x float> %103, <8 x float>* %105, align 32, !tbaa !498
  %106 = add nsw i64 %89, 24
  %107 = fadd <8 x float> %94, %408
  %108 = getelementptr inbounds float, float* %11, i64 %106
  %109 = bitcast float* %108 to <8 x float>*
  store <8 x float> %107, <8 x float>* %109, align 32, !tbaa !498
  %110 = add nsw i64 %89, 32
  %111 = fadd <8 x float> %94, %414
  %112 = getelementptr inbounds float, float* %11, i64 %110
  %113 = bitcast float* %112 to <8 x float>*
  store <8 x float> %111, <8 x float>* %113, align 32, !tbaa !498
  %114 = add nsw i64 %89, 40
  %115 = fadd <8 x float> %94, %420
  %116 = getelementptr inbounds float, float* %11, i64 %114
  %117 = bitcast float* %116 to <8 x float>*
  store <8 x float> %115, <8 x float>* %117, align 32, !tbaa !498
  %118 = add nsw i64 %89, 48
  %119 = fadd <8 x float> %94, %426
  %120 = getelementptr inbounds float, float* %11, i64 %118
  %121 = bitcast float* %120 to <8 x float>*
  store <8 x float> %119, <8 x float>* %121, align 32, !tbaa !498
  %122 = add nsw i64 %89, 56
  %123 = fadd <8 x float> %94, %432
  %124 = getelementptr inbounds float, float* %11, i64 %122
  %125 = bitcast float* %124 to <8 x float>*
  store <8 x float> %123, <8 x float>* %125, align 32, !tbaa !498
  %126 = add nsw i64 %89, 64
  %127 = fadd <8 x float> %94, %438
  %128 = getelementptr inbounds float, float* %11, i64 %126
  %129 = bitcast float* %128 to <8 x float>*
  store <8 x float> %127, <8 x float>* %129, align 32, !tbaa !498
  %130 = add nsw i64 %89, 72
  %131 = fadd <8 x float> %94, %444
  %132 = getelementptr inbounds float, float* %11, i64 %130
  %133 = bitcast float* %132 to <8 x float>*
  store <8 x float> %131, <8 x float>* %133, align 32, !tbaa !498
  %134 = add nsw i64 %89, 80
  %135 = fadd <8 x float> %94, %450
  %136 = getelementptr inbounds float, float* %11, i64 %134
  %137 = bitcast float* %136 to <8 x float>*
  store <8 x float> %135, <8 x float>* %137, align 32, !tbaa !498
  %138 = add nsw i64 %89, 88
  %139 = fadd <8 x float> %94, %456
  %140 = getelementptr inbounds float, float* %11, i64 %138
  %141 = bitcast float* %140 to <8 x float>*
  store <8 x float> %139, <8 x float>* %141, align 32, !tbaa !498
  %142 = add nsw i64 %89, 96
  %143 = fadd <8 x float> %94, %462
  %144 = getelementptr inbounds float, float* %11, i64 %142
  %145 = bitcast float* %144 to <8 x float>*
  store <8 x float> %143, <8 x float>* %145, align 32, !tbaa !498
  %146 = add nsw i64 %89, 104
  %147 = fadd <8 x float> %94, %468
  %148 = getelementptr inbounds float, float* %11, i64 %146
  %149 = bitcast float* %148 to <8 x float>*
  store <8 x float> %147, <8 x float>* %149, align 32, !tbaa !498
  %150 = add nsw i64 %89, 112
  %151 = fadd <8 x float> %94, %474
  %152 = getelementptr inbounds float, float* %11, i64 %150
  %153 = bitcast float* %152 to <8 x float>*
  store <8 x float> %151, <8 x float>* %153, align 32, !tbaa !498
  %154 = add nsw i64 %89, 120
  %155 = fadd <8 x float> %94, %480
  %156 = getelementptr inbounds float, float* %11, i64 %154
  %157 = bitcast float* %156 to <8 x float>*
  store <8 x float> %155, <8 x float>* %157, align 32, !tbaa !498
  %158 = add nsw i64 %89, 128
  %159 = fadd <8 x float> %94, %486
  %160 = getelementptr inbounds float, float* %11, i64 %158
  %161 = bitcast float* %160 to <8 x float>*
  store <8 x float> %159, <8 x float>* %161, align 32, !tbaa !498
  %162 = add nsw i64 %89, 136
  %163 = load <8 x float>, <8 x float>* %60, align 32, !tbaa !501
  %164 = fadd <8 x float> %94, %163
  %165 = getelementptr inbounds float, float* %11, i64 %162
  %166 = bitcast float* %165 to <8 x float>*
  store <8 x float> %164, <8 x float>* %166, align 32, !tbaa !498
  %167 = add nsw i64 %89, 144
  %168 = load <8 x float>, <8 x float>* %62, align 32, !tbaa !501
  %169 = fadd <8 x float> %94, %168
  %170 = getelementptr inbounds float, float* %11, i64 %167
  %171 = bitcast float* %170 to <8 x float>*
  store <8 x float> %169, <8 x float>* %171, align 32, !tbaa !498
  %172 = add nsw i64 %89, 152
  %173 = load <8 x float>, <8 x float>* %64, align 32, !tbaa !501
  %174 = fadd <8 x float> %94, %173
  %175 = getelementptr inbounds float, float* %11, i64 %172
  %176 = bitcast float* %175 to <8 x float>*
  store <8 x float> %174, <8 x float>* %176, align 32, !tbaa !498
  %177 = add nsw i64 %89, 160
  %178 = load <8 x float>, <8 x float>* %66, align 32, !tbaa !501
  %179 = fadd <8 x float> %94, %178
  %180 = getelementptr inbounds float, float* %11, i64 %177
  %181 = bitcast float* %180 to <8 x float>*
  store <8 x float> %179, <8 x float>* %181, align 32, !tbaa !498
  %182 = add nsw i64 %89, 168
  %183 = load <8 x float>, <8 x float>* %68, align 32, !tbaa !501
  %184 = fadd <8 x float> %94, %183
  %185 = getelementptr inbounds float, float* %11, i64 %182
  %186 = bitcast float* %185 to <8 x float>*
  store <8 x float> %184, <8 x float>* %186, align 32, !tbaa !498
  %187 = add nsw i64 %89, 176
  %188 = load <8 x float>, <8 x float>* %70, align 32, !tbaa !501
  %189 = fadd <8 x float> %94, %188
  %190 = getelementptr inbounds float, float* %11, i64 %187
  %191 = bitcast float* %190 to <8 x float>*
  store <8 x float> %189, <8 x float>* %191, align 32, !tbaa !498
  %192 = add nsw i64 %89, 184
  %193 = load <8 x float>, <8 x float>* %72, align 32, !tbaa !501
  %194 = fadd <8 x float> %94, %193
  %195 = getelementptr inbounds float, float* %11, i64 %192
  %196 = bitcast float* %195 to <8 x float>*
  store <8 x float> %194, <8 x float>* %196, align 32, !tbaa !498
  %197 = add nsw i64 %89, 192
  %198 = load <8 x float>, <8 x float>* %74, align 32, !tbaa !501
  %199 = fadd <8 x float> %94, %198
  %200 = getelementptr inbounds float, float* %11, i64 %197
  %201 = bitcast float* %200 to <8 x float>*
  store <8 x float> %199, <8 x float>* %201, align 32, !tbaa !498
  %202 = add nsw i64 %89, 200
  %203 = load <8 x float>, <8 x float>* %76, align 32, !tbaa !501
  %204 = fadd <8 x float> %94, %203
  %205 = getelementptr inbounds float, float* %11, i64 %202
  %206 = bitcast float* %205 to <8 x float>*
  store <8 x float> %204, <8 x float>* %206, align 32, !tbaa !498
  %207 = add nsw i64 %89, 208
  %208 = load <8 x float>, <8 x float>* %78, align 32, !tbaa !501
  %209 = fadd <8 x float> %94, %208
  %210 = getelementptr inbounds float, float* %11, i64 %207
  %211 = bitcast float* %210 to <8 x float>*
  store <8 x float> %209, <8 x float>* %211, align 32, !tbaa !498
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, 1
  %212 = icmp slt i64 %indvars.iv.next146, %82
  br i1 %212, label %for_body, label %for_end, !prof !5

for_begin4.preheader:                             ; preds = %for_begin4.preheader, %for_body
  %indvars.iv = phi i64 [ 0, %for_body ], [ %indvars.iv.next, %for_begin4.preheader ]
  %.lcssa62115 = phi <8 x float> [ zeroinitializer, %for_body ], [ %546, %for_begin4.preheader ]
  %.lcssa60113 = phi <8 x float> [ zeroinitializer, %for_body ], [ %540, %for_begin4.preheader ]
  %.lcssa58111 = phi <8 x float> [ zeroinitializer, %for_body ], [ %534, %for_begin4.preheader ]
  %.lcssa56109 = phi <8 x float> [ zeroinitializer, %for_body ], [ %528, %for_begin4.preheader ]
  %.lcssa54107 = phi <8 x float> [ zeroinitializer, %for_body ], [ %522, %for_begin4.preheader ]
  %.lcssa52105 = phi <8 x float> [ zeroinitializer, %for_body ], [ %516, %for_begin4.preheader ]
  %.lcssa50103 = phi <8 x float> [ zeroinitializer, %for_body ], [ %510, %for_begin4.preheader ]
  %.lcssa48101 = phi <8 x float> [ zeroinitializer, %for_body ], [ %504, %for_begin4.preheader ]
  %.lcssa4699 = phi <8 x float> [ zeroinitializer, %for_body ], [ %498, %for_begin4.preheader ]
  %.lcssa4497 = phi <8 x float> [ zeroinitializer, %for_body ], [ %492, %for_begin4.preheader ]
  %.lcssa4295 = phi <8 x float> [ zeroinitializer, %for_body ], [ %486, %for_begin4.preheader ]
  %.lcssa4093 = phi <8 x float> [ zeroinitializer, %for_body ], [ %480, %for_begin4.preheader ]
  %.lcssa3891 = phi <8 x float> [ zeroinitializer, %for_body ], [ %474, %for_begin4.preheader ]
  %.lcssa3689 = phi <8 x float> [ zeroinitializer, %for_body ], [ %468, %for_begin4.preheader ]
  %.lcssa3487 = phi <8 x float> [ zeroinitializer, %for_body ], [ %462, %for_begin4.preheader ]
  %.lcssa3285 = phi <8 x float> [ zeroinitializer, %for_body ], [ %456, %for_begin4.preheader ]
  %.lcssa3083 = phi <8 x float> [ zeroinitializer, %for_body ], [ %450, %for_begin4.preheader ]
  %.lcssa2881 = phi <8 x float> [ zeroinitializer, %for_body ], [ %444, %for_begin4.preheader ]
  %.lcssa2679 = phi <8 x float> [ zeroinitializer, %for_body ], [ %438, %for_begin4.preheader ]
  %.lcssa2477 = phi <8 x float> [ zeroinitializer, %for_body ], [ %432, %for_begin4.preheader ]
  %.lcssa2275 = phi <8 x float> [ zeroinitializer, %for_body ], [ %426, %for_begin4.preheader ]
  %.lcssa2073 = phi <8 x float> [ zeroinitializer, %for_body ], [ %420, %for_begin4.preheader ]
  %.lcssa1871 = phi <8 x float> [ zeroinitializer, %for_body ], [ %414, %for_begin4.preheader ]
  %.lcssa1669 = phi <8 x float> [ zeroinitializer, %for_body ], [ %408, %for_begin4.preheader ]
  %.lcssa1467 = phi <8 x float> [ zeroinitializer, %for_body ], [ %402, %for_begin4.preheader ]
  %.lcssa1266 = phi <8 x float> [ zeroinitializer, %for_body ], [ %396, %for_begin4.preheader ]
  %.lcssa64 = phi <8 x float> [ zeroinitializer, %for_body ], [ %390, %for_begin4.preheader ]
  %213 = phi i32 [ 0, %for_body ], [ %547, %for_begin4.preheader ]
  %214 = add nsw i32 %213, %85
  %215 = mul i32 %214, 28
  %216 = shl i64 %indvars.iv, 4
  %217 = add nuw nsw i64 %216, %88
  %218 = sext i32 %215 to i64
  %219 = getelementptr inbounds float, float* %5, i64 %218
  %220 = load float, float* %219, align 4, !tbaa !502
  %221 = insertelement <8 x float> undef, float %220, i32 0
  %222 = shufflevector <8 x float> %221, <8 x float> undef, <8 x i32> zeroinitializer
  %223 = getelementptr inbounds float, float* %8, i64 %217
  %224 = bitcast float* %223 to <8 x float>*
  %225 = load <8 x float>, <8 x float>* %224, align 32, !tbaa !505
  %226 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %222, <8 x float> %225, <8 x float> %.lcssa64)
  %227 = or i64 %218, 1
  %228 = getelementptr inbounds float, float* %5, i64 %227
  %229 = load float, float* %228, align 4, !tbaa !502
  %230 = insertelement <8 x float> undef, float %229, i32 0
  %231 = shufflevector <8 x float> %230, <8 x float> undef, <8 x i32> zeroinitializer
  %232 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %231, <8 x float> %225, <8 x float> %.lcssa1266)
  %233 = or i64 %218, 2
  %234 = getelementptr inbounds float, float* %5, i64 %233
  %235 = load float, float* %234, align 4, !tbaa !502
  %236 = insertelement <8 x float> undef, float %235, i32 0
  %237 = shufflevector <8 x float> %236, <8 x float> undef, <8 x i32> zeroinitializer
  %238 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %237, <8 x float> %225, <8 x float> %.lcssa1467)
  %239 = or i64 %218, 3
  %240 = getelementptr inbounds float, float* %5, i64 %239
  %241 = load float, float* %240, align 4, !tbaa !502
  %242 = insertelement <8 x float> undef, float %241, i32 0
  %243 = shufflevector <8 x float> %242, <8 x float> undef, <8 x i32> zeroinitializer
  %244 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %243, <8 x float> %225, <8 x float> %.lcssa1669)
  %245 = add nsw i64 %218, 4
  %246 = getelementptr inbounds float, float* %5, i64 %245
  %247 = load float, float* %246, align 4, !tbaa !502
  %248 = insertelement <8 x float> undef, float %247, i32 0
  %249 = shufflevector <8 x float> %248, <8 x float> undef, <8 x i32> zeroinitializer
  %250 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %249, <8 x float> %225, <8 x float> %.lcssa1871)
  %251 = add nsw i64 %218, 5
  %252 = getelementptr inbounds float, float* %5, i64 %251
  %253 = load float, float* %252, align 4, !tbaa !502
  %254 = insertelement <8 x float> undef, float %253, i32 0
  %255 = shufflevector <8 x float> %254, <8 x float> undef, <8 x i32> zeroinitializer
  %256 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %255, <8 x float> %225, <8 x float> %.lcssa2073)
  %257 = add nsw i64 %218, 6
  %258 = getelementptr inbounds float, float* %5, i64 %257
  %259 = load float, float* %258, align 4, !tbaa !502
  %260 = insertelement <8 x float> undef, float %259, i32 0
  %261 = shufflevector <8 x float> %260, <8 x float> undef, <8 x i32> zeroinitializer
  %262 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %261, <8 x float> %225, <8 x float> %.lcssa2275)
  %263 = add nsw i64 %218, 7
  %264 = getelementptr inbounds float, float* %5, i64 %263
  %265 = load float, float* %264, align 4, !tbaa !502
  %266 = insertelement <8 x float> undef, float %265, i32 0
  %267 = shufflevector <8 x float> %266, <8 x float> undef, <8 x i32> zeroinitializer
  %268 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %267, <8 x float> %225, <8 x float> %.lcssa2477)
  %269 = add nsw i64 %218, 8
  %270 = getelementptr inbounds float, float* %5, i64 %269
  %271 = load float, float* %270, align 4, !tbaa !502
  %272 = insertelement <8 x float> undef, float %271, i32 0
  %273 = shufflevector <8 x float> %272, <8 x float> undef, <8 x i32> zeroinitializer
  %274 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %273, <8 x float> %225, <8 x float> %.lcssa2679)
  %275 = add nsw i64 %218, 9
  %276 = getelementptr inbounds float, float* %5, i64 %275
  %277 = load float, float* %276, align 4, !tbaa !502
  %278 = insertelement <8 x float> undef, float %277, i32 0
  %279 = shufflevector <8 x float> %278, <8 x float> undef, <8 x i32> zeroinitializer
  %280 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %279, <8 x float> %225, <8 x float> %.lcssa2881)
  %281 = add nsw i64 %218, 10
  %282 = getelementptr inbounds float, float* %5, i64 %281
  %283 = load float, float* %282, align 4, !tbaa !502
  %284 = insertelement <8 x float> undef, float %283, i32 0
  %285 = shufflevector <8 x float> %284, <8 x float> undef, <8 x i32> zeroinitializer
  %286 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %285, <8 x float> %225, <8 x float> %.lcssa3083)
  %287 = add nsw i64 %218, 11
  %288 = getelementptr inbounds float, float* %5, i64 %287
  %289 = load float, float* %288, align 4, !tbaa !502
  %290 = insertelement <8 x float> undef, float %289, i32 0
  %291 = shufflevector <8 x float> %290, <8 x float> undef, <8 x i32> zeroinitializer
  %292 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %291, <8 x float> %225, <8 x float> %.lcssa3285)
  %293 = add nsw i64 %218, 12
  %294 = getelementptr inbounds float, float* %5, i64 %293
  %295 = load float, float* %294, align 4, !tbaa !502
  %296 = insertelement <8 x float> undef, float %295, i32 0
  %297 = shufflevector <8 x float> %296, <8 x float> undef, <8 x i32> zeroinitializer
  %298 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %297, <8 x float> %225, <8 x float> %.lcssa3487)
  %299 = add nsw i64 %218, 13
  %300 = getelementptr inbounds float, float* %5, i64 %299
  %301 = load float, float* %300, align 4, !tbaa !502
  %302 = insertelement <8 x float> undef, float %301, i32 0
  %303 = shufflevector <8 x float> %302, <8 x float> undef, <8 x i32> zeroinitializer
  %304 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %303, <8 x float> %225, <8 x float> %.lcssa3689)
  %305 = add nsw i64 %218, 14
  %306 = getelementptr inbounds float, float* %5, i64 %305
  %307 = load float, float* %306, align 4, !tbaa !502
  %308 = insertelement <8 x float> undef, float %307, i32 0
  %309 = shufflevector <8 x float> %308, <8 x float> undef, <8 x i32> zeroinitializer
  %310 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %309, <8 x float> %225, <8 x float> %.lcssa3891)
  %311 = add nsw i64 %218, 15
  %312 = getelementptr inbounds float, float* %5, i64 %311
  %313 = load float, float* %312, align 4, !tbaa !502
  %314 = insertelement <8 x float> undef, float %313, i32 0
  %315 = shufflevector <8 x float> %314, <8 x float> undef, <8 x i32> zeroinitializer
  %316 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %315, <8 x float> %225, <8 x float> %.lcssa4093)
  %317 = add nsw i64 %218, 16
  %318 = getelementptr inbounds float, float* %5, i64 %317
  %319 = load float, float* %318, align 4, !tbaa !502
  %320 = insertelement <8 x float> undef, float %319, i32 0
  %321 = shufflevector <8 x float> %320, <8 x float> undef, <8 x i32> zeroinitializer
  %322 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %321, <8 x float> %225, <8 x float> %.lcssa4295)
  %323 = add nsw i64 %218, 17
  %324 = getelementptr inbounds float, float* %5, i64 %323
  %325 = load float, float* %324, align 4, !tbaa !502
  %326 = insertelement <8 x float> undef, float %325, i32 0
  %327 = shufflevector <8 x float> %326, <8 x float> undef, <8 x i32> zeroinitializer
  %328 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %327, <8 x float> %225, <8 x float> %.lcssa4497)
  %329 = add nsw i64 %218, 18
  %330 = getelementptr inbounds float, float* %5, i64 %329
  %331 = load float, float* %330, align 4, !tbaa !502
  %332 = insertelement <8 x float> undef, float %331, i32 0
  %333 = shufflevector <8 x float> %332, <8 x float> undef, <8 x i32> zeroinitializer
  %334 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %333, <8 x float> %225, <8 x float> %.lcssa4699)
  %335 = add nsw i64 %218, 19
  %336 = getelementptr inbounds float, float* %5, i64 %335
  %337 = load float, float* %336, align 4, !tbaa !502
  %338 = insertelement <8 x float> undef, float %337, i32 0
  %339 = shufflevector <8 x float> %338, <8 x float> undef, <8 x i32> zeroinitializer
  %340 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %339, <8 x float> %225, <8 x float> %.lcssa48101)
  %341 = add nsw i64 %218, 20
  %342 = getelementptr inbounds float, float* %5, i64 %341
  %343 = load float, float* %342, align 4, !tbaa !502
  %344 = insertelement <8 x float> undef, float %343, i32 0
  %345 = shufflevector <8 x float> %344, <8 x float> undef, <8 x i32> zeroinitializer
  %346 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %345, <8 x float> %225, <8 x float> %.lcssa50103)
  %347 = add nsw i64 %218, 21
  %348 = getelementptr inbounds float, float* %5, i64 %347
  %349 = load float, float* %348, align 4, !tbaa !502
  %350 = insertelement <8 x float> undef, float %349, i32 0
  %351 = shufflevector <8 x float> %350, <8 x float> undef, <8 x i32> zeroinitializer
  %352 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %351, <8 x float> %225, <8 x float> %.lcssa52105)
  %353 = add nsw i64 %218, 22
  %354 = getelementptr inbounds float, float* %5, i64 %353
  %355 = load float, float* %354, align 4, !tbaa !502
  %356 = insertelement <8 x float> undef, float %355, i32 0
  %357 = shufflevector <8 x float> %356, <8 x float> undef, <8 x i32> zeroinitializer
  %358 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %357, <8 x float> %225, <8 x float> %.lcssa54107)
  %359 = add nsw i64 %218, 23
  %360 = getelementptr inbounds float, float* %5, i64 %359
  %361 = load float, float* %360, align 4, !tbaa !502
  %362 = insertelement <8 x float> undef, float %361, i32 0
  %363 = shufflevector <8 x float> %362, <8 x float> undef, <8 x i32> zeroinitializer
  %364 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %363, <8 x float> %225, <8 x float> %.lcssa56109)
  %365 = add nsw i64 %218, 24
  %366 = getelementptr inbounds float, float* %5, i64 %365
  %367 = load float, float* %366, align 4, !tbaa !502
  %368 = insertelement <8 x float> undef, float %367, i32 0
  %369 = shufflevector <8 x float> %368, <8 x float> undef, <8 x i32> zeroinitializer
  %370 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %369, <8 x float> %225, <8 x float> %.lcssa58111)
  %371 = add nsw i64 %218, 25
  %372 = getelementptr inbounds float, float* %5, i64 %371
  %373 = load float, float* %372, align 4, !tbaa !502
  %374 = insertelement <8 x float> undef, float %373, i32 0
  %375 = shufflevector <8 x float> %374, <8 x float> undef, <8 x i32> zeroinitializer
  %376 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %375, <8 x float> %225, <8 x float> %.lcssa60113)
  %377 = add nsw i64 %218, 26
  %378 = getelementptr inbounds float, float* %5, i64 %377
  %379 = load float, float* %378, align 4, !tbaa !502
  %380 = insertelement <8 x float> undef, float %379, i32 0
  %381 = shufflevector <8 x float> %380, <8 x float> undef, <8 x i32> zeroinitializer
  %382 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %381, <8 x float> %225, <8 x float> %.lcssa62115)
  %383 = load float, float* %228, align 4, !tbaa !502
  %384 = insertelement <8 x float> undef, float %383, i32 0
  %385 = shufflevector <8 x float> %384, <8 x float> undef, <8 x i32> zeroinitializer
  %386 = or i64 %217, 8
  %387 = getelementptr inbounds float, float* %8, i64 %386
  %388 = bitcast float* %387 to <8 x float>*
  %389 = load <8 x float>, <8 x float>* %388, align 32, !tbaa !505
  %390 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %385, <8 x float> %389, <8 x float> %226)
  %391 = add nsw i64 %227, 1
  %392 = getelementptr inbounds float, float* %5, i64 %391
  %393 = load float, float* %392, align 4, !tbaa !502
  %394 = insertelement <8 x float> undef, float %393, i32 0
  %395 = shufflevector <8 x float> %394, <8 x float> undef, <8 x i32> zeroinitializer
  %396 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %395, <8 x float> %389, <8 x float> %232)
  %397 = or i64 %218, 3
  %398 = getelementptr inbounds float, float* %5, i64 %397
  %399 = load float, float* %398, align 4, !tbaa !502
  %400 = insertelement <8 x float> undef, float %399, i32 0
  %401 = shufflevector <8 x float> %400, <8 x float> undef, <8 x i32> zeroinitializer
  %402 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %401, <8 x float> %389, <8 x float> %238)
  %403 = add nsw i64 %227, 3
  %404 = getelementptr inbounds float, float* %5, i64 %403
  %405 = load float, float* %404, align 4, !tbaa !502
  %406 = insertelement <8 x float> undef, float %405, i32 0
  %407 = shufflevector <8 x float> %406, <8 x float> undef, <8 x i32> zeroinitializer
  %408 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %407, <8 x float> %389, <8 x float> %244)
  %409 = add nsw i64 %227, 4
  %410 = getelementptr inbounds float, float* %5, i64 %409
  %411 = load float, float* %410, align 4, !tbaa !502
  %412 = insertelement <8 x float> undef, float %411, i32 0
  %413 = shufflevector <8 x float> %412, <8 x float> undef, <8 x i32> zeroinitializer
  %414 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %413, <8 x float> %389, <8 x float> %250)
  %415 = add nsw i64 %227, 5
  %416 = getelementptr inbounds float, float* %5, i64 %415
  %417 = load float, float* %416, align 4, !tbaa !502
  %418 = insertelement <8 x float> undef, float %417, i32 0
  %419 = shufflevector <8 x float> %418, <8 x float> undef, <8 x i32> zeroinitializer
  %420 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %419, <8 x float> %389, <8 x float> %256)
  %421 = add nsw i64 %227, 6
  %422 = getelementptr inbounds float, float* %5, i64 %421
  %423 = load float, float* %422, align 4, !tbaa !502
  %424 = insertelement <8 x float> undef, float %423, i32 0
  %425 = shufflevector <8 x float> %424, <8 x float> undef, <8 x i32> zeroinitializer
  %426 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %425, <8 x float> %389, <8 x float> %262)
  %427 = add nsw i64 %227, 7
  %428 = getelementptr inbounds float, float* %5, i64 %427
  %429 = load float, float* %428, align 4, !tbaa !502
  %430 = insertelement <8 x float> undef, float %429, i32 0
  %431 = shufflevector <8 x float> %430, <8 x float> undef, <8 x i32> zeroinitializer
  %432 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %431, <8 x float> %389, <8 x float> %268)
  %433 = add nsw i64 %227, 8
  %434 = getelementptr inbounds float, float* %5, i64 %433
  %435 = load float, float* %434, align 4, !tbaa !502
  %436 = insertelement <8 x float> undef, float %435, i32 0
  %437 = shufflevector <8 x float> %436, <8 x float> undef, <8 x i32> zeroinitializer
  %438 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %437, <8 x float> %389, <8 x float> %274)
  %439 = add nsw i64 %227, 9
  %440 = getelementptr inbounds float, float* %5, i64 %439
  %441 = load float, float* %440, align 4, !tbaa !502
  %442 = insertelement <8 x float> undef, float %441, i32 0
  %443 = shufflevector <8 x float> %442, <8 x float> undef, <8 x i32> zeroinitializer
  %444 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %443, <8 x float> %389, <8 x float> %280)
  %445 = add nsw i64 %227, 10
  %446 = getelementptr inbounds float, float* %5, i64 %445
  %447 = load float, float* %446, align 4, !tbaa !502
  %448 = insertelement <8 x float> undef, float %447, i32 0
  %449 = shufflevector <8 x float> %448, <8 x float> undef, <8 x i32> zeroinitializer
  %450 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %449, <8 x float> %389, <8 x float> %286)
  %451 = add nsw i64 %227, 11
  %452 = getelementptr inbounds float, float* %5, i64 %451
  %453 = load float, float* %452, align 4, !tbaa !502
  %454 = insertelement <8 x float> undef, float %453, i32 0
  %455 = shufflevector <8 x float> %454, <8 x float> undef, <8 x i32> zeroinitializer
  %456 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %455, <8 x float> %389, <8 x float> %292)
  %457 = add nsw i64 %227, 12
  %458 = getelementptr inbounds float, float* %5, i64 %457
  %459 = load float, float* %458, align 4, !tbaa !502
  %460 = insertelement <8 x float> undef, float %459, i32 0
  %461 = shufflevector <8 x float> %460, <8 x float> undef, <8 x i32> zeroinitializer
  %462 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %461, <8 x float> %389, <8 x float> %298)
  %463 = add nsw i64 %227, 13
  %464 = getelementptr inbounds float, float* %5, i64 %463
  %465 = load float, float* %464, align 4, !tbaa !502
  %466 = insertelement <8 x float> undef, float %465, i32 0
  %467 = shufflevector <8 x float> %466, <8 x float> undef, <8 x i32> zeroinitializer
  %468 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %467, <8 x float> %389, <8 x float> %304)
  %469 = add nsw i64 %227, 14
  %470 = getelementptr inbounds float, float* %5, i64 %469
  %471 = load float, float* %470, align 4, !tbaa !502
  %472 = insertelement <8 x float> undef, float %471, i32 0
  %473 = shufflevector <8 x float> %472, <8 x float> undef, <8 x i32> zeroinitializer
  %474 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %473, <8 x float> %389, <8 x float> %310)
  %475 = add nsw i64 %227, 15
  %476 = getelementptr inbounds float, float* %5, i64 %475
  %477 = load float, float* %476, align 4, !tbaa !502
  %478 = insertelement <8 x float> undef, float %477, i32 0
  %479 = shufflevector <8 x float> %478, <8 x float> undef, <8 x i32> zeroinitializer
  %480 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %479, <8 x float> %389, <8 x float> %316)
  %481 = add nsw i64 %227, 16
  %482 = getelementptr inbounds float, float* %5, i64 %481
  %483 = load float, float* %482, align 4, !tbaa !502
  %484 = insertelement <8 x float> undef, float %483, i32 0
  %485 = shufflevector <8 x float> %484, <8 x float> undef, <8 x i32> zeroinitializer
  %486 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %485, <8 x float> %389, <8 x float> %322)
  %487 = add nsw i64 %227, 17
  %488 = getelementptr inbounds float, float* %5, i64 %487
  %489 = load float, float* %488, align 4, !tbaa !502
  %490 = insertelement <8 x float> undef, float %489, i32 0
  %491 = shufflevector <8 x float> %490, <8 x float> undef, <8 x i32> zeroinitializer
  %492 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %491, <8 x float> %389, <8 x float> %328)
  %493 = add nsw i64 %227, 18
  %494 = getelementptr inbounds float, float* %5, i64 %493
  %495 = load float, float* %494, align 4, !tbaa !502
  %496 = insertelement <8 x float> undef, float %495, i32 0
  %497 = shufflevector <8 x float> %496, <8 x float> undef, <8 x i32> zeroinitializer
  %498 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %497, <8 x float> %389, <8 x float> %334)
  %499 = add nsw i64 %227, 19
  %500 = getelementptr inbounds float, float* %5, i64 %499
  %501 = load float, float* %500, align 4, !tbaa !502
  %502 = insertelement <8 x float> undef, float %501, i32 0
  %503 = shufflevector <8 x float> %502, <8 x float> undef, <8 x i32> zeroinitializer
  %504 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %503, <8 x float> %389, <8 x float> %340)
  %505 = add nsw i64 %227, 20
  %506 = getelementptr inbounds float, float* %5, i64 %505
  %507 = load float, float* %506, align 4, !tbaa !502
  %508 = insertelement <8 x float> undef, float %507, i32 0
  %509 = shufflevector <8 x float> %508, <8 x float> undef, <8 x i32> zeroinitializer
  %510 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %509, <8 x float> %389, <8 x float> %346)
  %511 = add nsw i64 %227, 21
  %512 = getelementptr inbounds float, float* %5, i64 %511
  %513 = load float, float* %512, align 4, !tbaa !502
  %514 = insertelement <8 x float> undef, float %513, i32 0
  %515 = shufflevector <8 x float> %514, <8 x float> undef, <8 x i32> zeroinitializer
  %516 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %515, <8 x float> %389, <8 x float> %352)
  %517 = add nsw i64 %227, 22
  %518 = getelementptr inbounds float, float* %5, i64 %517
  %519 = load float, float* %518, align 4, !tbaa !502
  %520 = insertelement <8 x float> undef, float %519, i32 0
  %521 = shufflevector <8 x float> %520, <8 x float> undef, <8 x i32> zeroinitializer
  %522 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %521, <8 x float> %389, <8 x float> %358)
  %523 = add nsw i64 %227, 23
  %524 = getelementptr inbounds float, float* %5, i64 %523
  %525 = load float, float* %524, align 4, !tbaa !502
  %526 = insertelement <8 x float> undef, float %525, i32 0
  %527 = shufflevector <8 x float> %526, <8 x float> undef, <8 x i32> zeroinitializer
  %528 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %527, <8 x float> %389, <8 x float> %364)
  %529 = add nsw i64 %227, 24
  %530 = getelementptr inbounds float, float* %5, i64 %529
  %531 = load float, float* %530, align 4, !tbaa !502
  %532 = insertelement <8 x float> undef, float %531, i32 0
  %533 = shufflevector <8 x float> %532, <8 x float> undef, <8 x i32> zeroinitializer
  %534 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %533, <8 x float> %389, <8 x float> %370)
  %535 = add nsw i64 %227, 25
  %536 = getelementptr inbounds float, float* %5, i64 %535
  %537 = load float, float* %536, align 4, !tbaa !502
  %538 = insertelement <8 x float> undef, float %537, i32 0
  %539 = shufflevector <8 x float> %538, <8 x float> undef, <8 x i32> zeroinitializer
  %540 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %539, <8 x float> %389, <8 x float> %376)
  %541 = add nsw i64 %227, 26
  %542 = getelementptr inbounds float, float* %5, i64 %541
  %543 = load float, float* %542, align 4, !tbaa !502
  %544 = insertelement <8 x float> undef, float %543, i32 0
  %545 = shufflevector <8 x float> %544, <8 x float> undef, <8 x i32> zeroinitializer
  %546 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %545, <8 x float> %389, <8 x float> %382)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %547 = add nuw nsw i32 %213, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 2
  br i1 %exitcond, label %for_begin7.preheader, label %for_begin4.preheader, !prof !41
}

; Function Attrs: nounwind readnone speculatable
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #1

define dllexport i32 @fused_nn_dense_add_1(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 4
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.82, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %1**
  %8 = load %1*, %1** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !508
  %11 = getelementptr inbounds i8, i8* %0, i64 8
  %12 = bitcast i8* %11 to %1**
  %13 = load %1*, %1** %12, align 8
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %1**
  %16 = load %1*, %1** %15, align 8
  %17 = getelementptr inbounds i8, i8* %1, i64 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4, !tbaa !522
  %20 = getelementptr inbounds i8, i8* %0, i64 24
  %21 = bitcast i8* %20 to %1**
  %22 = load %1*, %1** %21, align 8
  %23 = getelementptr inbounds i8, i8* %1, i64 12
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4, !tbaa !525
  %26 = getelementptr inbounds %1, %1* %8, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %1, %1* %8, i64 0, i32 4
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds %1, %1* %8, i64 0, i32 5
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds %1, %1* %8, i64 0, i32 1, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %1, %1* %8, i64 0, i32 1, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %1, %1* %13, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %1, %1* %13, i64 0, i32 4
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds %1, %1* %13, i64 0, i32 5
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds %1, %1* %16, i64 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %1, %1* %16, i64 0, i32 4
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds %1, %1* %16, i64 0, i32 5
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds %1, %1* %22, i64 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds %1, %1* %22, i64 0, i32 4
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds %1, %1* %22, i64 0, i32 5
  %53 = load i64*, i64** %52, align 8
  switch i32 %10, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %54 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %54(i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.83, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %55 = getelementptr inbounds i8, i8* %1, i64 4
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4, !tbaa !527
  switch i32 %57, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %58 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %58(i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.84, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  switch i32 %19, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ]

assert_fail5:                                     ; preds = %assert_end4
  %59 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %59(i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.85, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  switch i32 %25, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ]

assert_fail7:                                     ; preds = %assert_end6
  %60 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %60(i8* getelementptr inbounds ([148 x i8], [148 x i8]* @.str.86, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  %61 = icmp eq i32 %33, 1
  br i1 %61, label %assert_end10, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %62 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %62(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %63 = getelementptr inbounds %1, %1* %8, i64 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %66 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %66(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %67 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 2
  %68 = load i16, i16* %67, align 2
  %69 = icmp eq i16 %68, 1
  %70 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 1
  %71 = load i8, i8* %70, align 1
  %72 = icmp eq i8 %71, 32
  %73 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 0
  %74 = load i8, i8* %73, align 1
  %75 = icmp eq i8 %74, 2
  %76 = and i1 %72, %75
  %77 = and i1 %69, %76
  br i1 %77, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %78 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %78(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %79 = load i64, i64* %29, align 8, !tbaa !529
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %82 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %82(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %83 = getelementptr inbounds i64, i64* %29, i64 1
  %84 = load i64, i64* %83, align 8, !tbaa !543
  %85 = trunc i64 %84 to i32
  %86 = icmp eq i32 %85, 100
  br i1 %86, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %87 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %87(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.87, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %88 = icmp eq i64* %31, null
  br i1 %88, label %if_end, label %if_then, !prof !41

if_then:                                          ; preds = %assert_end18
  %89 = load i64, i64* %31, align 8, !tbaa !545
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 100
  %92 = getelementptr inbounds i64, i64* %31, i64 1
  %93 = load i64, i64* %92, align 8, !tbaa !559
  %94 = trunc i64 %93 to i32
  %95 = icmp eq i32 %94, 1
  %96 = and i1 %91, %95
  br i1 %96, label %if_end, label %assert_fail19, !prof !5

if_end:                                           ; preds = %assert_end18, %if_then
  %97 = getelementptr inbounds %1, %1* %8, i64 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %assert_end22, label %assert_fail21, !prof !5

assert_fail19:                                    ; preds = %if_then
  %100 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %100(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.88, i64 0, i64 0))
  ret i32 -1

assert_fail21:                                    ; preds = %if_end
  %101 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %101(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %if_end
  %102 = getelementptr inbounds %1, %1* %13, i64 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %105 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %105(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end22
  %106 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 2
  %107 = load i16, i16* %106, align 2
  %108 = icmp eq i16 %107, 1
  %109 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 1
  %110 = load i8, i8* %109, align 1
  %111 = icmp eq i8 %110, 32
  %112 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 0
  %113 = load i8, i8* %112, align 1
  %114 = icmp eq i8 %113, 2
  %115 = and i1 %111, %114
  %116 = and i1 %108, %115
  br i1 %116, label %assert_end26, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %118 = load i64, i64* %39, align 8, !tbaa !561
  %119 = trunc i64 %118 to i32
  %120 = icmp eq i32 %119, 32
  br i1 %120, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %121 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %121(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.89, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %122 = getelementptr inbounds i64, i64* %39, i64 1
  %123 = load i64, i64* %122, align 8, !tbaa !575
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %124, 100
  br i1 %125, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %126 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %126(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.90, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %127 = icmp eq i64* %41, null
  br i1 %127, label %if_end32, label %if_then31, !prof !41

if_then31:                                        ; preds = %assert_end30
  %128 = load i64, i64* %41, align 8, !tbaa !577
  %129 = trunc i64 %128 to i32
  %130 = icmp eq i32 %129, 100
  %131 = getelementptr inbounds i64, i64* %41, i64 1
  %132 = load i64, i64* %131, align 8, !tbaa !591
  %133 = trunc i64 %132 to i32
  %134 = icmp eq i32 %133, 1
  %135 = and i1 %130, %134
  br i1 %135, label %if_end32, label %assert_fail33, !prof !5

if_end32:                                         ; preds = %assert_end30, %if_then31
  %136 = getelementptr inbounds %1, %1* %13, i64 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %assert_end36, label %assert_fail35, !prof !5

assert_fail33:                                    ; preds = %if_then31
  %139 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %139(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.91, i64 0, i64 0))
  ret i32 -1

assert_fail35:                                    ; preds = %if_end32
  %140 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %140(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %if_end32
  %141 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %assert_end38, label %assert_fail37, !prof !5

assert_fail37:                                    ; preds = %assert_end36
  %144 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %144(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end38:                                     ; preds = %assert_end36
  %145 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %35, %146
  br i1 %147, label %assert_end40, label %assert_fail39, !prof !5

assert_fail39:                                    ; preds = %assert_end38
  %148 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %148(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %assert_end38
  %149 = getelementptr inbounds %1, %1* %16, i64 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %assert_end42, label %assert_fail41, !prof !5

assert_fail41:                                    ; preds = %assert_end40
  %152 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %152(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.92, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %assert_end40
  %153 = getelementptr inbounds %1, %1* %16, i64 0, i32 3, i32 2
  %154 = load i16, i16* %153, align 2
  %155 = icmp eq i16 %154, 1
  %156 = getelementptr inbounds %1, %1* %16, i64 0, i32 3, i32 1
  %157 = load i8, i8* %156, align 1
  %158 = icmp eq i8 %157, 32
  %159 = getelementptr inbounds %1, %1* %16, i64 0, i32 3, i32 0
  %160 = load i8, i8* %159, align 1
  %161 = icmp eq i8 %160, 2
  %162 = and i1 %158, %161
  %163 = and i1 %155, %162
  br i1 %163, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %164 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %164(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.60, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %165 = load i64, i64* %45, align 8, !tbaa !593
  %166 = trunc i64 %165 to i32
  %167 = icmp eq i32 %166, 32
  br i1 %167, label %assert_end46, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %168 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %168(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.93, i64 0, i64 0))
  ret i32 -1

assert_end46:                                     ; preds = %assert_end44
  %169 = icmp eq i64* %47, null
  br i1 %169, label %if_end48, label %if_then47, !prof !41

if_then47:                                        ; preds = %assert_end46
  %170 = load i64, i64* %47, align 8, !tbaa !607
  %171 = trunc i64 %170 to i32
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %if_end48, label %assert_fail49, !prof !5

if_end48:                                         ; preds = %assert_end46, %if_then47
  %173 = getelementptr inbounds %1, %1* %16, i64 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %assert_end52, label %assert_fail51, !prof !5

assert_fail49:                                    ; preds = %if_then47
  %176 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %176(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.94, i64 0, i64 0))
  ret i32 -1

assert_fail51:                                    ; preds = %if_end48
  %177 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %177(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.67, i64 0, i64 0))
  ret i32 -1

assert_end52:                                     ; preds = %if_end48
  %178 = getelementptr inbounds %1, %1* %16, i64 0, i32 1, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %assert_end54, label %assert_fail53, !prof !5

assert_fail53:                                    ; preds = %assert_end52
  %181 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %181(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.68, i64 0, i64 0))
  ret i32 -1

assert_end54:                                     ; preds = %assert_end52
  %182 = getelementptr inbounds %1, %1* %16, i64 0, i32 1, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %35, %183
  br i1 %184, label %assert_end56, label %assert_fail55, !prof !5

assert_fail55:                                    ; preds = %assert_end54
  %185 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %185(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.69, i64 0, i64 0))
  ret i32 -1

assert_end56:                                     ; preds = %assert_end54
  %186 = getelementptr inbounds %1, %1* %22, i64 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 2
  br i1 %188, label %assert_end58, label %assert_fail57, !prof !5

assert_fail57:                                    ; preds = %assert_end56
  %189 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %189(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.95, i64 0, i64 0))
  ret i32 -1

assert_end58:                                     ; preds = %assert_end56
  %190 = getelementptr inbounds %1, %1* %22, i64 0, i32 3, i32 2
  %191 = load i16, i16* %190, align 2
  %192 = icmp eq i16 %191, 1
  %193 = getelementptr inbounds %1, %1* %22, i64 0, i32 3, i32 1
  %194 = load i8, i8* %193, align 1
  %195 = icmp eq i8 %194, 32
  %196 = getelementptr inbounds %1, %1* %22, i64 0, i32 3, i32 0
  %197 = load i8, i8* %196, align 1
  %198 = icmp eq i8 %197, 2
  %199 = and i1 %195, %198
  %200 = and i1 %192, %199
  br i1 %200, label %assert_end60, label %assert_fail59, !prof !5

assert_fail59:                                    ; preds = %assert_end58
  %201 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %201(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.71, i64 0, i64 0))
  ret i32 -1

assert_end60:                                     ; preds = %assert_end58
  %202 = load i64, i64* %51, align 8, !tbaa !621
  %203 = trunc i64 %202 to i32
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %assert_end62, label %assert_fail61, !prof !5

assert_fail61:                                    ; preds = %assert_end60
  %205 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %205(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.72, i64 0, i64 0))
  ret i32 -1

assert_end62:                                     ; preds = %assert_end60
  %206 = getelementptr inbounds i64, i64* %51, i64 1
  %207 = load i64, i64* %206, align 8, !tbaa !635
  %208 = trunc i64 %207 to i32
  %209 = icmp eq i32 %208, 32
  br i1 %209, label %assert_end64, label %assert_fail63, !prof !5

assert_fail63:                                    ; preds = %assert_end62
  %210 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %210(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.96, i64 0, i64 0))
  ret i32 -1

assert_end64:                                     ; preds = %assert_end62
  %211 = icmp eq i64* %53, null
  br i1 %211, label %if_end66, label %if_then65, !prof !41

if_then65:                                        ; preds = %assert_end64
  %212 = load i64, i64* %53, align 8, !tbaa !637
  %213 = trunc i64 %212 to i32
  %214 = icmp eq i32 %213, 32
  %215 = getelementptr inbounds i64, i64* %53, i64 1
  %216 = load i64, i64* %215, align 8, !tbaa !651
  %217 = trunc i64 %216 to i32
  %218 = icmp eq i32 %217, 1
  %219 = and i1 %214, %218
  br i1 %219, label %if_end66, label %assert_fail67, !prof !5

if_end66:                                         ; preds = %assert_end64, %if_then65
  %220 = getelementptr inbounds %1, %1* %22, i64 0, i32 6
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %assert_end70, label %assert_fail69, !prof !5

assert_fail67:                                    ; preds = %if_then65
  %223 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %223(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.97, i64 0, i64 0))
  ret i32 -1

assert_fail69:                                    ; preds = %if_end66
  %224 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %224(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.78, i64 0, i64 0))
  ret i32 -1

assert_end70:                                     ; preds = %if_end66
  %225 = getelementptr inbounds %1, %1* %22, i64 0, i32 1, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %assert_end72, label %assert_fail71, !prof !5

assert_fail71:                                    ; preds = %assert_end70
  %228 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %228(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.79, i64 0, i64 0))
  ret i32 -1

assert_end72:                                     ; preds = %assert_end70
  %229 = getelementptr inbounds %1, %1* %22, i64 0, i32 1, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %35, %230
  br i1 %231, label %assert_end74, label %assert_fail73, !prof !5

assert_fail73:                                    ; preds = %assert_end72
  %232 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %232(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.80, i64 0, i64 0))
  ret i32 -1

assert_end74:                                     ; preds = %assert_end72
  %233 = tail call fastcc i32 @fused_nn_dense_add_1_compute_(i8* %27, i8* %37, i8* %49, i8* %43)
  ret i32 %233
}

; Function Attrs: noinline
define private fastcc i32 @fused_nn_dense_add_1_compute_(i8* noalias, i8* noalias, i8* noalias nocapture, i8* noalias nocapture readonly) unnamed_addr #3 {
entry:
  %4 = alloca [32 x float], align 16
  %5 = alloca %6, align 8
  %.sub = getelementptr inbounds [32 x float], [32 x float]* %4, i64 0, i64 0
  %6 = getelementptr inbounds %6, %6* %5, i64 0, i32 0
  store i8* %0, i8** %6, align 8
  %7 = getelementptr inbounds %6, %6* %5, i64 0, i32 1
  store i8* %1, i8** %7, align 8
  %8 = getelementptr inbounds %6, %6* %5, i64 0, i32 2
  store float* %.sub, float** %8, align 8
  %9 = bitcast %6* %5 to i8*
  %10 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %11 = call i32 %10(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.98, i8* nonnull %9, i32 0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %for_begin.preheader, label %call_fail, !prof !5

for_begin.preheader:                              ; preds = %entry
  %13 = bitcast i8* %3 to <4 x float>*
  %14 = load <4 x float>, <4 x float>* %13, align 4, !tbaa !653
  %15 = bitcast [32 x float]* %4 to <4 x float>*
  %16 = load <4 x float>, <4 x float>* %15, align 16, !tbaa !656
  %17 = fadd <4 x float> %14, %16
  %18 = bitcast i8* %2 to <4 x float>*
  store <4 x float> %17, <4 x float>* %18, align 4, !tbaa !659
  %19 = getelementptr inbounds i8, i8* %3, i64 16
  %20 = getelementptr inbounds [32 x float], [32 x float]* %4, i64 0, i64 4
  %21 = getelementptr inbounds i8, i8* %2, i64 16
  %22 = bitcast i8* %19 to <4 x float>*
  %23 = load <4 x float>, <4 x float>* %22, align 4, !tbaa !653
  %24 = bitcast float* %20 to <4 x float>*
  %25 = load <4 x float>, <4 x float>* %24, align 16, !tbaa !656
  %26 = fadd <4 x float> %23, %25
  %27 = bitcast i8* %21 to <4 x float>*
  store <4 x float> %26, <4 x float>* %27, align 4, !tbaa !659
  %28 = getelementptr inbounds i8, i8* %3, i64 32
  %29 = getelementptr inbounds [32 x float], [32 x float]* %4, i64 0, i64 8
  %30 = getelementptr inbounds i8, i8* %2, i64 32
  %31 = bitcast i8* %28 to <4 x float>*
  %32 = load <4 x float>, <4 x float>* %31, align 4, !tbaa !653
  %33 = bitcast float* %29 to <4 x float>*
  %34 = load <4 x float>, <4 x float>* %33, align 16, !tbaa !656
  %35 = fadd <4 x float> %32, %34
  %36 = bitcast i8* %30 to <4 x float>*
  store <4 x float> %35, <4 x float>* %36, align 4, !tbaa !659
  %37 = getelementptr inbounds i8, i8* %3, i64 48
  %38 = getelementptr inbounds [32 x float], [32 x float]* %4, i64 0, i64 12
  %39 = getelementptr inbounds i8, i8* %2, i64 48
  %40 = bitcast i8* %37 to <4 x float>*
  %41 = load <4 x float>, <4 x float>* %40, align 4, !tbaa !653
  %42 = bitcast float* %38 to <4 x float>*
  %43 = load <4 x float>, <4 x float>* %42, align 16, !tbaa !656
  %44 = fadd <4 x float> %41, %43
  %45 = bitcast i8* %39 to <4 x float>*
  store <4 x float> %44, <4 x float>* %45, align 4, !tbaa !659
  %46 = getelementptr inbounds i8, i8* %3, i64 64
  %47 = getelementptr inbounds [32 x float], [32 x float]* %4, i64 0, i64 16
  %48 = getelementptr inbounds i8, i8* %2, i64 64
  %49 = bitcast i8* %46 to <4 x float>*
  %50 = load <4 x float>, <4 x float>* %49, align 4, !tbaa !653
  %51 = bitcast float* %47 to <4 x float>*
  %52 = load <4 x float>, <4 x float>* %51, align 16, !tbaa !656
  %53 = fadd <4 x float> %50, %52
  %54 = bitcast i8* %48 to <4 x float>*
  store <4 x float> %53, <4 x float>* %54, align 4, !tbaa !659
  %55 = getelementptr inbounds i8, i8* %3, i64 80
  %56 = getelementptr inbounds [32 x float], [32 x float]* %4, i64 0, i64 20
  %57 = getelementptr inbounds i8, i8* %2, i64 80
  %58 = bitcast i8* %55 to <4 x float>*
  %59 = load <4 x float>, <4 x float>* %58, align 4, !tbaa !653
  %60 = bitcast float* %56 to <4 x float>*
  %61 = load <4 x float>, <4 x float>* %60, align 16, !tbaa !656
  %62 = fadd <4 x float> %59, %61
  %63 = bitcast i8* %57 to <4 x float>*
  store <4 x float> %62, <4 x float>* %63, align 4, !tbaa !659
  %64 = getelementptr inbounds i8, i8* %3, i64 96
  %65 = getelementptr inbounds [32 x float], [32 x float]* %4, i64 0, i64 24
  %66 = getelementptr inbounds i8, i8* %2, i64 96
  %67 = bitcast i8* %64 to <4 x float>*
  %68 = load <4 x float>, <4 x float>* %67, align 4, !tbaa !653
  %69 = bitcast float* %65 to <4 x float>*
  %70 = load <4 x float>, <4 x float>* %69, align 16, !tbaa !656
  %71 = fadd <4 x float> %68, %70
  %72 = bitcast i8* %66 to <4 x float>*
  store <4 x float> %71, <4 x float>* %72, align 4, !tbaa !659
  %73 = getelementptr inbounds i8, i8* %3, i64 112
  %74 = getelementptr inbounds [32 x float], [32 x float]* %4, i64 0, i64 28
  %75 = getelementptr inbounds i8, i8* %2, i64 112
  %76 = bitcast i8* %73 to <4 x float>*
  %77 = load <4 x float>, <4 x float>* %76, align 4, !tbaa !653
  %78 = bitcast float* %74 to <4 x float>*
  %79 = load <4 x float>, <4 x float>* %78, align 16, !tbaa !656
  %80 = fadd <4 x float> %77, %79
  %81 = bitcast i8* %75 to <4 x float>*
  store <4 x float> %80, <4 x float>* %81, align 4, !tbaa !659
  br label %call_fail

call_fail:                                        ; preds = %for_begin.preheader, %entry
  ret i32 %11
}

; Function Attrs: nounwind
define private i32 @__tvm_parallel_lambda.98(i32, %0* nocapture readonly, i8* nocapture readonly) #5 {
entry:
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
  %13 = add nsw i32 %12, 31
  %14 = sdiv i32 %13, %12
  %15 = add nsw i32 %0, 1
  %16 = mul nsw i32 %14, %15
  %17 = icmp slt i32 %16, 32
  %18 = select i1 %17, i32 %16, i32 32
  %19 = mul nsw i32 %14, %0
  %20 = icmp slt i32 %19, 32
  %21 = select i1 %20, i32 %19, i32 32
  %22 = icmp slt i32 %21, %18
  br i1 %22, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %23 = bitcast float* %4 to <10 x float>*
  %24 = add i32 %21, 1
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, -1
  %27 = sext i32 %18 to i64
  %.phi.trans.insert = getelementptr inbounds float, float* %4, i64 10
  %.phi.trans.insert7 = bitcast float* %.phi.trans.insert to <10 x float>*
  %.pre = load <10 x float>, <10 x float>* %.phi.trans.insert7, align 8, !tbaa !662
  %.phi.trans.insert8 = getelementptr inbounds float, float* %4, i64 20
  %.phi.trans.insert9 = bitcast float* %.phi.trans.insert8 to <10 x float>*
  %.pre10 = load <10 x float>, <10 x float>* %.phi.trans.insert9, align 8, !tbaa !662
  %.phi.trans.insert11 = getelementptr inbounds float, float* %4, i64 30
  %.phi.trans.insert12 = bitcast float* %.phi.trans.insert11 to <10 x float>*
  %.pre13 = load <10 x float>, <10 x float>* %.phi.trans.insert12, align 8, !tbaa !662
  %.phi.trans.insert14 = getelementptr inbounds float, float* %4, i64 40
  %.phi.trans.insert15 = bitcast float* %.phi.trans.insert14 to <10 x float>*
  %.pre16 = load <10 x float>, <10 x float>* %.phi.trans.insert15, align 8, !tbaa !662
  %.phi.trans.insert17 = getelementptr inbounds float, float* %4, i64 50
  %.phi.trans.insert18 = bitcast float* %.phi.trans.insert17 to <10 x float>*
  %.pre19 = load <10 x float>, <10 x float>* %.phi.trans.insert18, align 8, !tbaa !662
  %.phi.trans.insert20 = getelementptr inbounds float, float* %4, i64 60
  %.phi.trans.insert21 = bitcast float* %.phi.trans.insert20 to <10 x float>*
  %.pre22 = load <10 x float>, <10 x float>* %.phi.trans.insert21, align 8, !tbaa !662
  %.phi.trans.insert23 = getelementptr inbounds float, float* %4, i64 70
  %.phi.trans.insert24 = bitcast float* %.phi.trans.insert23 to <10 x float>*
  %.pre25 = load <10 x float>, <10 x float>* %.phi.trans.insert24, align 8, !tbaa !662
  %.phi.trans.insert26 = getelementptr inbounds float, float* %4, i64 80
  %.phi.trans.insert27 = bitcast float* %.phi.trans.insert26 to <10 x float>*
  %.pre28 = load <10 x float>, <10 x float>* %.phi.trans.insert27, align 8, !tbaa !662
  %.phi.trans.insert29 = getelementptr inbounds float, float* %4, i64 90
  %.phi.trans.insert30 = bitcast float* %.phi.trans.insert29 to <10 x float>*
  %.pre31 = load <10 x float>, <10 x float>* %.phi.trans.insert30, align 8, !tbaa !662
  %28 = load <10 x float>, <10 x float>* %23, align 8, !tbaa !662
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_begin1.preheader
  %indvars.iv = phi i64 [ %26, %for_begin1.preheader.preheader ], [ %indvars.iv.next, %for_begin1.preheader ]
  %29 = mul nsw i64 %indvars.iv, 100
  %30 = getelementptr inbounds float, float* %7, i64 %29
  %31 = bitcast float* %30 to <10 x float>*
  %32 = load <10 x float>, <10 x float>* %31, align 8, !tbaa !665
  %33 = tail call <10 x float> @llvm.fmuladd.v10f32(<10 x float> %28, <10 x float> %32, <10 x float> zeroinitializer)
  %34 = add nsw i64 %29, 10
  %35 = getelementptr inbounds float, float* %7, i64 %34
  %36 = bitcast float* %35 to <10 x float>*
  %37 = load <10 x float>, <10 x float>* %36, align 8, !tbaa !665
  %38 = tail call <10 x float> @llvm.fmuladd.v10f32(<10 x float> %.pre, <10 x float> %37, <10 x float> %33)
  %39 = add nsw i64 %29, 20
  %40 = getelementptr inbounds float, float* %7, i64 %39
  %41 = bitcast float* %40 to <10 x float>*
  %42 = load <10 x float>, <10 x float>* %41, align 8, !tbaa !665
  %43 = tail call <10 x float> @llvm.fmuladd.v10f32(<10 x float> %.pre10, <10 x float> %42, <10 x float> %38)
  %44 = add nsw i64 %29, 30
  %45 = getelementptr inbounds float, float* %7, i64 %44
  %46 = bitcast float* %45 to <10 x float>*
  %47 = load <10 x float>, <10 x float>* %46, align 8, !tbaa !665
  %48 = tail call <10 x float> @llvm.fmuladd.v10f32(<10 x float> %.pre13, <10 x float> %47, <10 x float> %43)
  %49 = add nsw i64 %29, 40
  %50 = getelementptr inbounds float, float* %7, i64 %49
  %51 = bitcast float* %50 to <10 x float>*
  %52 = load <10 x float>, <10 x float>* %51, align 8, !tbaa !665
  %53 = tail call <10 x float> @llvm.fmuladd.v10f32(<10 x float> %.pre16, <10 x float> %52, <10 x float> %48)
  %54 = add nsw i64 %29, 50
  %55 = getelementptr inbounds float, float* %7, i64 %54
  %56 = bitcast float* %55 to <10 x float>*
  %57 = load <10 x float>, <10 x float>* %56, align 8, !tbaa !665
  %58 = tail call <10 x float> @llvm.fmuladd.v10f32(<10 x float> %.pre19, <10 x float> %57, <10 x float> %53)
  %59 = add nsw i64 %29, 60
  %60 = getelementptr inbounds float, float* %7, i64 %59
  %61 = bitcast float* %60 to <10 x float>*
  %62 = load <10 x float>, <10 x float>* %61, align 8, !tbaa !665
  %63 = tail call <10 x float> @llvm.fmuladd.v10f32(<10 x float> %.pre22, <10 x float> %62, <10 x float> %58)
  %64 = add nsw i64 %29, 70
  %65 = getelementptr inbounds float, float* %7, i64 %64
  %66 = bitcast float* %65 to <10 x float>*
  %67 = load <10 x float>, <10 x float>* %66, align 8, !tbaa !665
  %68 = tail call <10 x float> @llvm.fmuladd.v10f32(<10 x float> %.pre25, <10 x float> %67, <10 x float> %63)
  %69 = add nsw i64 %29, 80
  %70 = getelementptr inbounds float, float* %7, i64 %69
  %71 = bitcast float* %70 to <10 x float>*
  %72 = load <10 x float>, <10 x float>* %71, align 8, !tbaa !665
  %73 = tail call <10 x float> @llvm.fmuladd.v10f32(<10 x float> %.pre28, <10 x float> %72, <10 x float> %68)
  %74 = add nsw i64 %29, 90
  %75 = getelementptr inbounds float, float* %7, i64 %74
  %76 = bitcast float* %75 to <10 x float>*
  %77 = load <10 x float>, <10 x float>* %76, align 8, !tbaa !665
  %78 = tail call <10 x float> @llvm.fmuladd.v10f32(<10 x float> %.pre31, <10 x float> %77, <10 x float> %73)
  %79 = getelementptr inbounds float, float* %10, i64 %indvars.iv
  %.sroa.0.0.vec.extract = extractelement <10 x float> %78, i32 0
  %80 = fadd float %.sroa.0.0.vec.extract, 0.000000e+00
  %.sroa.0.4.vec.extract = extractelement <10 x float> %78, i32 1
  %81 = fadd float %.sroa.0.4.vec.extract, %80
  %.sroa.0.8.vec.extract = extractelement <10 x float> %78, i32 2
  %82 = fadd float %.sroa.0.8.vec.extract, %81
  %.sroa.0.12.vec.extract = extractelement <10 x float> %78, i32 3
  %83 = fadd float %.sroa.0.12.vec.extract, %82
  %.sroa.0.16.vec.extract = extractelement <10 x float> %78, i32 4
  %84 = fadd float %.sroa.0.16.vec.extract, %83
  %.sroa.0.20.vec.extract = extractelement <10 x float> %78, i32 5
  %85 = fadd float %.sroa.0.20.vec.extract, %84
  %.sroa.0.24.vec.extract = extractelement <10 x float> %78, i32 6
  %86 = fadd float %.sroa.0.24.vec.extract, %85
  %.sroa.0.28.vec.extract = extractelement <10 x float> %78, i32 7
  %87 = fadd float %.sroa.0.28.vec.extract, %86
  %.sroa.0.32.vec.extract = extractelement <10 x float> %78, i32 8
  %88 = fadd float %.sroa.0.32.vec.extract, %87
  %.sroa.0.36.vec.extract = extractelement <10 x float> %78, i32 9
  %89 = fadd float %.sroa.0.36.vec.extract, %88
  store float %89, float* %79, align 4, !tbaa !656
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %90 = icmp slt i64 %indvars.iv.next, %27
  br i1 %90, label %for_begin1.preheader, label %for_end, !prof !5

for_end:                                          ; preds = %for_begin1.preheader, %entry
  ret i32 0
}

; Function Attrs: nounwind readnone speculatable
declare <10 x float> @llvm.fmuladd.v10f32(<10 x float>, <10 x float>, <10 x float>) #1

define dllexport i32 @fused_nn_dense_add(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 4
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.99, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %1**
  %8 = load %1*, %1** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !668
  %11 = getelementptr inbounds i8, i8* %0, i64 8
  %12 = bitcast i8* %11 to %1**
  %13 = load %1*, %1** %12, align 8
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %1**
  %16 = load %1*, %1** %15, align 8
  %17 = getelementptr inbounds i8, i8* %1, i64 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4, !tbaa !682
  %20 = getelementptr inbounds i8, i8* %0, i64 24
  %21 = bitcast i8* %20 to %1**
  %22 = load %1*, %1** %21, align 8
  %23 = getelementptr inbounds i8, i8* %1, i64 12
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4, !tbaa !685
  %26 = getelementptr inbounds %1, %1* %8, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %1, %1* %8, i64 0, i32 4
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds %1, %1* %8, i64 0, i32 5
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds %1, %1* %8, i64 0, i32 1, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %1, %1* %8, i64 0, i32 1, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %1, %1* %13, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %1, %1* %13, i64 0, i32 4
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds %1, %1* %13, i64 0, i32 5
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds %1, %1* %16, i64 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %1, %1* %16, i64 0, i32 4
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds %1, %1* %16, i64 0, i32 5
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds %1, %1* %22, i64 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds %1, %1* %22, i64 0, i32 4
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds %1, %1* %22, i64 0, i32 5
  %53 = load i64*, i64** %52, align 8
  switch i32 %10, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %54 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %54(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.100, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %55 = getelementptr inbounds i8, i8* %1, i64 4
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4, !tbaa !687
  switch i32 %57, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %58 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %58(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.101, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  switch i32 %19, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ]

assert_fail5:                                     ; preds = %assert_end4
  %59 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %59(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.102, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  switch i32 %25, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ]

assert_fail7:                                     ; preds = %assert_end6
  %60 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %60(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.103, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  %61 = icmp eq i32 %33, 1
  br i1 %61, label %assert_end10, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %62 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %62(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %63 = getelementptr inbounds %1, %1* %8, i64 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 2
  br i1 %65, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %66 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %66(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %67 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 2
  %68 = load i16, i16* %67, align 2
  %69 = icmp eq i16 %68, 1
  %70 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 1
  %71 = load i8, i8* %70, align 1
  %72 = icmp eq i8 %71, 32
  %73 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 0
  %74 = load i8, i8* %73, align 1
  %75 = icmp eq i8 %74, 2
  %76 = and i1 %72, %75
  %77 = and i1 %69, %76
  br i1 %77, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %78 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %78(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %79 = load i64, i64* %29, align 8, !tbaa !689
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %82 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %82(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %83 = getelementptr inbounds i64, i64* %29, i64 1
  %84 = load i64, i64* %83, align 8, !tbaa !703
  %85 = trunc i64 %84 to i32
  %86 = icmp eq i32 %85, 32
  br i1 %86, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %87 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %87(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.104, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %88 = icmp eq i64* %31, null
  br i1 %88, label %if_end, label %if_then, !prof !41

if_then:                                          ; preds = %assert_end18
  %89 = load i64, i64* %31, align 8, !tbaa !705
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 32
  %92 = getelementptr inbounds i64, i64* %31, i64 1
  %93 = load i64, i64* %92, align 8, !tbaa !719
  %94 = trunc i64 %93 to i32
  %95 = icmp eq i32 %94, 1
  %96 = and i1 %91, %95
  br i1 %96, label %if_end, label %assert_fail19, !prof !5

if_end:                                           ; preds = %assert_end18, %if_then
  %97 = getelementptr inbounds %1, %1* %8, i64 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %assert_end22, label %assert_fail21, !prof !5

assert_fail19:                                    ; preds = %if_then
  %100 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %100(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.105, i64 0, i64 0))
  ret i32 -1

assert_fail21:                                    ; preds = %if_end
  %101 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %101(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %if_end
  %102 = getelementptr inbounds %1, %1* %13, i64 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %105 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %105(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end22
  %106 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 2
  %107 = load i16, i16* %106, align 2
  %108 = icmp eq i16 %107, 1
  %109 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 1
  %110 = load i8, i8* %109, align 1
  %111 = icmp eq i8 %110, 32
  %112 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 0
  %113 = load i8, i8* %112, align 1
  %114 = icmp eq i8 %113, 2
  %115 = and i1 %111, %114
  %116 = and i1 %108, %115
  br i1 %116, label %assert_end26, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %118 = load i64, i64* %39, align 8, !tbaa !721
  %119 = trunc i64 %118 to i32
  %120 = icmp eq i32 %119, 10
  br i1 %120, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %121 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %121(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.106, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %122 = getelementptr inbounds i64, i64* %39, i64 1
  %123 = load i64, i64* %122, align 8, !tbaa !735
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %124, 32
  br i1 %125, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %126 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %126(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.107, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %127 = icmp eq i64* %41, null
  br i1 %127, label %if_end32, label %if_then31, !prof !41

if_then31:                                        ; preds = %assert_end30
  %128 = load i64, i64* %41, align 8, !tbaa !737
  %129 = trunc i64 %128 to i32
  %130 = icmp eq i32 %129, 32
  %131 = getelementptr inbounds i64, i64* %41, i64 1
  %132 = load i64, i64* %131, align 8, !tbaa !751
  %133 = trunc i64 %132 to i32
  %134 = icmp eq i32 %133, 1
  %135 = and i1 %130, %134
  br i1 %135, label %if_end32, label %assert_fail33, !prof !5

if_end32:                                         ; preds = %assert_end30, %if_then31
  %136 = getelementptr inbounds %1, %1* %13, i64 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %assert_end36, label %assert_fail35, !prof !5

assert_fail33:                                    ; preds = %if_then31
  %139 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %139(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.108, i64 0, i64 0))
  ret i32 -1

assert_fail35:                                    ; preds = %if_end32
  %140 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %140(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %if_end32
  %141 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %assert_end38, label %assert_fail37, !prof !5

assert_fail37:                                    ; preds = %assert_end36
  %144 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %144(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end38:                                     ; preds = %assert_end36
  %145 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %35, %146
  br i1 %147, label %assert_end40, label %assert_fail39, !prof !5

assert_fail39:                                    ; preds = %assert_end38
  %148 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %148(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %assert_end38
  %149 = getelementptr inbounds %1, %1* %16, i64 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %assert_end42, label %assert_fail41, !prof !5

assert_fail41:                                    ; preds = %assert_end40
  %152 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %152(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.92, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %assert_end40
  %153 = getelementptr inbounds %1, %1* %16, i64 0, i32 3, i32 2
  %154 = load i16, i16* %153, align 2
  %155 = icmp eq i16 %154, 1
  %156 = getelementptr inbounds %1, %1* %16, i64 0, i32 3, i32 1
  %157 = load i8, i8* %156, align 1
  %158 = icmp eq i8 %157, 32
  %159 = getelementptr inbounds %1, %1* %16, i64 0, i32 3, i32 0
  %160 = load i8, i8* %159, align 1
  %161 = icmp eq i8 %160, 2
  %162 = and i1 %158, %161
  %163 = and i1 %155, %162
  br i1 %163, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %164 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %164(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.60, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %165 = load i64, i64* %45, align 8, !tbaa !753
  %166 = trunc i64 %165 to i32
  %167 = icmp eq i32 %166, 10
  br i1 %167, label %assert_end46, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %168 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %168(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.109, i64 0, i64 0))
  ret i32 -1

assert_end46:                                     ; preds = %assert_end44
  %169 = icmp eq i64* %47, null
  br i1 %169, label %if_end48, label %if_then47, !prof !41

if_then47:                                        ; preds = %assert_end46
  %170 = load i64, i64* %47, align 8, !tbaa !767
  %171 = trunc i64 %170 to i32
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %if_end48, label %assert_fail49, !prof !5

if_end48:                                         ; preds = %assert_end46, %if_then47
  %173 = getelementptr inbounds %1, %1* %16, i64 0, i32 6
  %174 = load i64, i64* %173, align 8
  %175 = icmp eq i64 %174, 0
  br i1 %175, label %assert_end52, label %assert_fail51, !prof !5

assert_fail49:                                    ; preds = %if_then47
  %176 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %176(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.94, i64 0, i64 0))
  ret i32 -1

assert_fail51:                                    ; preds = %if_end48
  %177 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %177(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.67, i64 0, i64 0))
  ret i32 -1

assert_end52:                                     ; preds = %if_end48
  %178 = getelementptr inbounds %1, %1* %16, i64 0, i32 1, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %assert_end54, label %assert_fail53, !prof !5

assert_fail53:                                    ; preds = %assert_end52
  %181 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %181(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.68, i64 0, i64 0))
  ret i32 -1

assert_end54:                                     ; preds = %assert_end52
  %182 = getelementptr inbounds %1, %1* %16, i64 0, i32 1, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %35, %183
  br i1 %184, label %assert_end56, label %assert_fail55, !prof !5

assert_fail55:                                    ; preds = %assert_end54
  %185 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %185(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.69, i64 0, i64 0))
  ret i32 -1

assert_end56:                                     ; preds = %assert_end54
  %186 = getelementptr inbounds %1, %1* %22, i64 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 2
  br i1 %188, label %assert_end58, label %assert_fail57, !prof !5

assert_fail57:                                    ; preds = %assert_end56
  %189 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %189(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.95, i64 0, i64 0))
  ret i32 -1

assert_end58:                                     ; preds = %assert_end56
  %190 = getelementptr inbounds %1, %1* %22, i64 0, i32 3, i32 2
  %191 = load i16, i16* %190, align 2
  %192 = icmp eq i16 %191, 1
  %193 = getelementptr inbounds %1, %1* %22, i64 0, i32 3, i32 1
  %194 = load i8, i8* %193, align 1
  %195 = icmp eq i8 %194, 32
  %196 = getelementptr inbounds %1, %1* %22, i64 0, i32 3, i32 0
  %197 = load i8, i8* %196, align 1
  %198 = icmp eq i8 %197, 2
  %199 = and i1 %195, %198
  %200 = and i1 %192, %199
  br i1 %200, label %assert_end60, label %assert_fail59, !prof !5

assert_fail59:                                    ; preds = %assert_end58
  %201 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %201(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.71, i64 0, i64 0))
  ret i32 -1

assert_end60:                                     ; preds = %assert_end58
  %202 = load i64, i64* %51, align 8, !tbaa !781
  %203 = trunc i64 %202 to i32
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %assert_end62, label %assert_fail61, !prof !5

assert_fail61:                                    ; preds = %assert_end60
  %205 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %205(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.72, i64 0, i64 0))
  ret i32 -1

assert_end62:                                     ; preds = %assert_end60
  %206 = getelementptr inbounds i64, i64* %51, i64 1
  %207 = load i64, i64* %206, align 8, !tbaa !795
  %208 = trunc i64 %207 to i32
  %209 = icmp eq i32 %208, 10
  br i1 %209, label %assert_end64, label %assert_fail63, !prof !5

assert_fail63:                                    ; preds = %assert_end62
  %210 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %210(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.110, i64 0, i64 0))
  ret i32 -1

assert_end64:                                     ; preds = %assert_end62
  %211 = icmp eq i64* %53, null
  br i1 %211, label %if_end66, label %if_then65, !prof !41

if_then65:                                        ; preds = %assert_end64
  %212 = load i64, i64* %53, align 8, !tbaa !797
  %213 = trunc i64 %212 to i32
  %214 = icmp eq i32 %213, 10
  %215 = getelementptr inbounds i64, i64* %53, i64 1
  %216 = load i64, i64* %215, align 8, !tbaa !811
  %217 = trunc i64 %216 to i32
  %218 = icmp eq i32 %217, 1
  %219 = and i1 %214, %218
  br i1 %219, label %if_end66, label %assert_fail67, !prof !5

if_end66:                                         ; preds = %assert_end64, %if_then65
  %220 = getelementptr inbounds %1, %1* %22, i64 0, i32 6
  %221 = load i64, i64* %220, align 8
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %assert_end70, label %assert_fail69, !prof !5

assert_fail67:                                    ; preds = %if_then65
  %223 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %223(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.111, i64 0, i64 0))
  ret i32 -1

assert_fail69:                                    ; preds = %if_end66
  %224 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %224(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.78, i64 0, i64 0))
  ret i32 -1

assert_end70:                                     ; preds = %if_end66
  %225 = getelementptr inbounds %1, %1* %22, i64 0, i32 1, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %assert_end72, label %assert_fail71, !prof !5

assert_fail71:                                    ; preds = %assert_end70
  %228 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %228(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.79, i64 0, i64 0))
  ret i32 -1

assert_end72:                                     ; preds = %assert_end70
  %229 = getelementptr inbounds %1, %1* %22, i64 0, i32 1, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %35, %230
  br i1 %231, label %assert_end74, label %assert_fail73, !prof !5

assert_fail73:                                    ; preds = %assert_end72
  %232 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %232(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.80, i64 0, i64 0))
  ret i32 -1

assert_end74:                                     ; preds = %assert_end72
  %233 = tail call fastcc i32 @fused_nn_dense_add_compute_(i8* %27, i8* %37, i8* %49, i8* %43)
  ret i32 %233
}

; Function Attrs: noinline
define private fastcc i32 @fused_nn_dense_add_compute_(i8* noalias, i8* noalias, i8* noalias nocapture, i8* noalias nocapture readonly) unnamed_addr #3 {
entry:
  %4 = alloca [10 x float], align 16
  %5 = alloca %7, align 8
  %.sub = getelementptr inbounds [10 x float], [10 x float]* %4, i64 0, i64 0
  %6 = getelementptr inbounds %7, %7* %5, i64 0, i32 0
  store i8* %0, i8** %6, align 8
  %7 = getelementptr inbounds %7, %7* %5, i64 0, i32 1
  store i8* %1, i8** %7, align 8
  %8 = getelementptr inbounds %7, %7* %5, i64 0, i32 2
  store float* %.sub, float** %8, align 8
  %9 = bitcast %7* %5 to i8*
  %10 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %11 = call i32 %10(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.112, i8* nonnull %9, i32 0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %for_begin.preheader, label %call_fail, !prof !5

for_begin.preheader:                              ; preds = %entry
  %13 = bitcast i8* %3 to <4 x float>*
  %14 = load <4 x float>, <4 x float>* %13, align 4, !tbaa !813
  %15 = bitcast [10 x float]* %4 to <4 x float>*
  %16 = load <4 x float>, <4 x float>* %15, align 16, !tbaa !816
  %17 = fadd <4 x float> %14, %16
  %18 = bitcast i8* %2 to <4 x float>*
  store <4 x float> %17, <4 x float>* %18, align 4, !tbaa !819
  %19 = getelementptr inbounds i8, i8* %3, i64 16
  %20 = getelementptr inbounds [10 x float], [10 x float]* %4, i64 0, i64 4
  %21 = getelementptr inbounds i8, i8* %2, i64 16
  %22 = bitcast i8* %19 to <4 x float>*
  %23 = load <4 x float>, <4 x float>* %22, align 4, !tbaa !813
  %24 = bitcast float* %20 to <4 x float>*
  %25 = load <4 x float>, <4 x float>* %24, align 16, !tbaa !816
  %26 = fadd <4 x float> %23, %25
  %27 = bitcast i8* %21 to <4 x float>*
  store <4 x float> %26, <4 x float>* %27, align 4, !tbaa !819
  %28 = getelementptr inbounds i8, i8* %3, i64 32
  %29 = bitcast i8* %28 to float*
  %30 = load float, float* %29, align 4, !tbaa !813
  %31 = getelementptr inbounds [10 x float], [10 x float]* %4, i64 0, i64 8
  %32 = load float, float* %31, align 16, !tbaa !816
  %33 = fadd float %30, %32
  %34 = getelementptr inbounds i8, i8* %2, i64 32
  %35 = bitcast i8* %34 to float*
  store float %33, float* %35, align 4, !tbaa !819
  %36 = getelementptr inbounds i8, i8* %3, i64 36
  %37 = bitcast i8* %36 to float*
  %38 = load float, float* %37, align 4, !tbaa !813
  %39 = getelementptr inbounds [10 x float], [10 x float]* %4, i64 0, i64 9
  %40 = load float, float* %39, align 4, !tbaa !816
  %41 = fadd float %38, %40
  %42 = getelementptr inbounds i8, i8* %2, i64 36
  %43 = bitcast i8* %42 to float*
  store float %41, float* %43, align 4, !tbaa !819
  br label %call_fail

call_fail:                                        ; preds = %for_begin.preheader, %entry
  ret i32 %11
}

; Function Attrs: nounwind
define private i32 @__tvm_parallel_lambda.112(i32, %0* nocapture readonly, i8* nocapture readonly) #5 {
entry:
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
  %13 = add nsw i32 %12, 9
  %14 = sdiv i32 %13, %12
  %15 = add nsw i32 %0, 1
  %16 = mul nsw i32 %14, %15
  %17 = icmp slt i32 %16, 10
  %18 = select i1 %17, i32 %16, i32 10
  %19 = mul nsw i32 %14, %0
  %20 = icmp slt i32 %19, 10
  %21 = select i1 %20, i32 %19, i32 10
  %22 = icmp slt i32 %21, %18
  br i1 %22, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %23 = bitcast float* %4 to <16 x float>*
  %24 = add i32 %21, 1
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, -1
  %27 = sext i32 %18 to i64
  %.pre = load <16 x float>, <16 x float>* %23, align 64, !tbaa !822
  %.phi.trans.insert = getelementptr inbounds float, float* %4, i64 16
  %.phi.trans.insert7 = bitcast float* %.phi.trans.insert to <16 x float>*
  %.pre8 = load <16 x float>, <16 x float>* %.phi.trans.insert7, align 64, !tbaa !822
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_begin1.preheader
  %indvars.iv = phi i64 [ %26, %for_begin1.preheader.preheader ], [ %indvars.iv.next, %for_begin1.preheader ]
  %28 = trunc i64 %indvars.iv to i32
  %29 = shl i32 %28, 5
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds float, float* %7, i64 %30
  %32 = bitcast float* %31 to <16 x float>*
  %33 = load <16 x float>, <16 x float>* %32, align 64, !tbaa !825
  %34 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %.pre, <16 x float> %33, <16 x float> zeroinitializer)
  %35 = or i64 %30, 16
  %36 = getelementptr inbounds float, float* %7, i64 %35
  %37 = bitcast float* %36 to <16 x float>*
  %38 = load <16 x float>, <16 x float>* %37, align 64, !tbaa !825
  %39 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %.pre8, <16 x float> %38, <16 x float> %34)
  %40 = getelementptr inbounds float, float* %10, i64 %indvars.iv
  %.0.vec.extract = extractelement <16 x float> %39, i32 0
  %41 = fadd float %.0.vec.extract, 0.000000e+00
  %.4.vec.extract = extractelement <16 x float> %39, i32 1
  %42 = fadd float %.4.vec.extract, %41
  %.8.vec.extract = extractelement <16 x float> %39, i32 2
  %43 = fadd float %.8.vec.extract, %42
  %.12.vec.extract = extractelement <16 x float> %39, i32 3
  %44 = fadd float %.12.vec.extract, %43
  %.16.vec.extract = extractelement <16 x float> %39, i32 4
  %45 = fadd float %.16.vec.extract, %44
  %.20.vec.extract = extractelement <16 x float> %39, i32 5
  %46 = fadd float %.20.vec.extract, %45
  %.24.vec.extract = extractelement <16 x float> %39, i32 6
  %47 = fadd float %.24.vec.extract, %46
  %.28.vec.extract = extractelement <16 x float> %39, i32 7
  %48 = fadd float %.28.vec.extract, %47
  %.32.vec.extract = extractelement <16 x float> %39, i32 8
  %49 = fadd float %.32.vec.extract, %48
  %.36.vec.extract = extractelement <16 x float> %39, i32 9
  %50 = fadd float %.36.vec.extract, %49
  %.40.vec.extract = extractelement <16 x float> %39, i32 10
  %51 = fadd float %.40.vec.extract, %50
  %.44.vec.extract = extractelement <16 x float> %39, i32 11
  %52 = fadd float %.44.vec.extract, %51
  %.48.vec.extract = extractelement <16 x float> %39, i32 12
  %53 = fadd float %.48.vec.extract, %52
  %.52.vec.extract = extractelement <16 x float> %39, i32 13
  %54 = fadd float %.52.vec.extract, %53
  %.56.vec.extract = extractelement <16 x float> %39, i32 14
  %55 = fadd float %.56.vec.extract, %54
  %.60.vec.extract = extractelement <16 x float> %39, i32 15
  %56 = fadd float %.60.vec.extract, %55
  store float %56, float* %40, align 4, !tbaa !816
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %57 = icmp slt i64 %indvars.iv.next, %27
  br i1 %57, label %for_begin1.preheader, label %for_end, !prof !5

for_end:                                          ; preds = %for_begin1.preheader, %entry
  ret i32 0
}

; Function Attrs: nounwind readnone speculatable
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #1

define dllexport i32 @fused_layout_transform_2(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 2
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.113, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %1**
  %8 = load %1*, %1** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !828
  %11 = getelementptr inbounds i8, i8* %0, i64 8
  %12 = bitcast i8* %11 to %1**
  %13 = load %1*, %1** %12, align 8
  %14 = getelementptr inbounds %1, %1* %8, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %1, %1* %8, i64 0, i32 4
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds %1, %1* %8, i64 0, i32 5
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds %1, %1* %8, i64 0, i32 1, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %1, %1* %8, i64 0, i32 1, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %1, %1* %13, i64 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %1, %1* %13, i64 0, i32 4
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds %1, %1* %13, i64 0, i32 5
  %29 = load i64*, i64** %28, align 8
  switch i32 %10, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %30 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %30(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.114, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %31 = getelementptr inbounds i8, i8* %1, i64 4
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !842
  switch i32 %33, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %34(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.115, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %35 = icmp eq i32 %21, 1
  br i1 %35, label %assert_end6, label %assert_fail5, !prof !5

assert_fail5:                                     ; preds = %assert_end4
  %36 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %36(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4
  %37 = getelementptr inbounds %1, %1* %8, i64 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %assert_end8, label %assert_fail7, !prof !5

assert_fail7:                                     ; preds = %assert_end6
  %40 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %40(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.116, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6
  %41 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 2
  %42 = load i16, i16* %41, align 2
  %43 = icmp eq i16 %42, 1
  %44 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 1
  %45 = load i8, i8* %44, align 1
  %46 = icmp eq i8 %45, 32
  %47 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 0
  %48 = load i8, i8* %47, align 1
  %49 = icmp eq i8 %48, 2
  %50 = and i1 %46, %49
  %51 = and i1 %43, %50
  br i1 %51, label %assert_end10, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %52 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %52(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %53 = load i64, i64* %17, align 8, !tbaa !844
  %54 = trunc i64 %53 to i32
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %56 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %56(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %57 = getelementptr inbounds i64, i64* %17, i64 1
  %58 = load i64, i64* %57, align 8, !tbaa !858
  %59 = trunc i64 %58 to i32
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %61 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %61(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.46, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %62 = getelementptr inbounds i64, i64* %17, i64 2
  %63 = load i64, i64* %62, align 8, !tbaa !860
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 28
  br i1 %65, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %66 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %66(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.47, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %67 = getelementptr inbounds i64, i64* %17, i64 3
  %68 = load i64, i64* %67, align 8, !tbaa !863
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, 28
  br i1 %70, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %71 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %71(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.48, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %72 = icmp eq i64* %19, null
  br i1 %72, label %if_end, label %if_then, !prof !41

if_then:                                          ; preds = %assert_end18
  %73 = bitcast i64* %19 to <4 x i64>*
  %74 = load <4 x i64>, <4 x i64>* %73, align 8, !tbaa !865
  %75 = trunc <4 x i64> %74 to <4 x i32>
  %76 = icmp eq <4 x i32> %75, <i32 784, i32 784, i32 28, i32 1>
  %rdx.shuf49 = shufflevector <4 x i1> %76, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx50 = and <4 x i1> %76, %rdx.shuf49
  %rdx.shuf51 = shufflevector <4 x i1> %bin.rdx50, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx52 = and <4 x i1> %bin.rdx50, %rdx.shuf51
  %77 = extractelement <4 x i1> %bin.rdx52, i32 0
  br i1 %77, label %if_end, label %assert_fail19, !prof !5

if_end:                                           ; preds = %assert_end18, %if_then
  %78 = getelementptr inbounds %1, %1* %8, i64 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %assert_end22, label %assert_fail21, !prof !5

assert_fail19:                                    ; preds = %if_then
  %81 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %81(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.117, i64 0, i64 0))
  ret i32 -1

assert_fail21:                                    ; preds = %if_end
  %82 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %82(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %if_end
  %83 = getelementptr inbounds %1, %1* %13, i64 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 5
  br i1 %85, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %86 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %86(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.35, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end22
  %87 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 2
  %88 = load i16, i16* %87, align 2
  %89 = icmp eq i16 %88, 1
  %90 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 1
  %91 = load i8, i8* %90, align 1
  %92 = icmp eq i8 %91, 32
  %93 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 0
  %94 = load i8, i8* %93, align 1
  %95 = icmp eq i8 %94, 2
  %96 = and i1 %92, %95
  %97 = and i1 %89, %96
  br i1 %97, label %assert_end26, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %98 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %98(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %99 = load i64, i64* %27, align 8, !tbaa !877
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %102 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %102(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %103 = getelementptr inbounds i64, i64* %27, i64 1
  %104 = load i64, i64* %103, align 8, !tbaa !891
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %107 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %107(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.53, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %108 = getelementptr inbounds i64, i64* %27, i64 2
  %109 = load i64, i64* %108, align 8, !tbaa !893
  %110 = trunc i64 %109 to i32
  %111 = icmp eq i32 %110, 28
  br i1 %111, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %112(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.118, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %113 = getelementptr inbounds i64, i64* %27, i64 3
  %114 = load i64, i64* %113, align 8, !tbaa !896
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %115, 28
  br i1 %116, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.119, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %118 = getelementptr inbounds i64, i64* %27, i64 4
  %119 = load i64, i64* %118, align 8, !tbaa !898
  %120 = trunc i64 %119 to i32
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %assert_end36, label %assert_fail35, !prof !5

assert_fail35:                                    ; preds = %assert_end34
  %122 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %122(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.56, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %assert_end34
  %123 = icmp eq i64* %29, null
  br i1 %123, label %if_end38, label %if_then37, !prof !41

if_then37:                                        ; preds = %assert_end36
  %124 = bitcast i64* %29 to <4 x i64>*
  %125 = load <4 x i64>, <4 x i64>* %124, align 8, !tbaa !902
  %126 = trunc <4 x i64> %125 to <4 x i32>
  %127 = icmp eq <4 x i32> %126, <i32 784, i32 784, i32 28, i32 1>
  %128 = getelementptr inbounds i64, i64* %29, i64 4
  %129 = load i64, i64* %128, align 8, !tbaa !914
  %130 = trunc i64 %129 to i32
  %131 = icmp eq i32 %130, 1
  %rdx.shuf = shufflevector <4 x i1> %127, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx = and <4 x i1> %127, %rdx.shuf
  %rdx.shuf47 = shufflevector <4 x i1> %bin.rdx, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx48 = and <4 x i1> %bin.rdx, %rdx.shuf47
  %132 = extractelement <4 x i1> %bin.rdx48, i32 0
  %133 = and i1 %132, %131
  br i1 %133, label %if_end38, label %assert_fail39, !prof !5

if_end38:                                         ; preds = %assert_end36, %if_then37
  %134 = getelementptr inbounds %1, %1* %13, i64 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %assert_end42, label %assert_fail41, !prof !5

assert_fail39:                                    ; preds = %if_then37
  %137 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %137(i8* getelementptr inbounds ([232 x i8], [232 x i8]* @.str.120, i64 0, i64 0))
  ret i32 -1

assert_fail41:                                    ; preds = %if_end38
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %138(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %if_end38
  %139 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %142 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %142(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %143 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %23, %144
  br i1 %145, label %assert_end46, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %146 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %146(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end46:                                     ; preds = %assert_end44
  %147 = tail call fastcc i32 @fused_layout_transform_2_compute_(i8* %25, i8* %15)
  ret i32 %147
}

; Function Attrs: noinline
define private fastcc i32 @fused_layout_transform_2_compute_(i8* noalias, i8* noalias) unnamed_addr #3 {
entry:
  %2 = alloca %8, align 8
  %3 = getelementptr inbounds %8, %8* %2, i64 0, i32 0
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds %8, %8* %2, i64 0, i32 1
  store i8* %1, i8** %4, align 8
  %5 = bitcast %8* %2 to i8*
  %6 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %7 = call i32 %6(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.121, i8* nonnull %5, i32 0)
  ret i32 %7
}

; Function Attrs: norecurse nounwind
define private i32 @__tvm_parallel_lambda.121(i32, %0* nocapture readonly, i8* nocapture readonly) #4 {
entry:
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
  br i1 %19, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %20 = add i32 %18, 1
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, -1
  %23 = sext i32 %15 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_begin1.preheader
  %indvars.iv = phi i64 [ %22, %for_begin1.preheader.preheader ], [ %indvars.iv.next, %for_begin1.preheader ]
  %24 = mul nsw i64 %indvars.iv, 28
  %25 = getelementptr inbounds float, float* %7, i64 %24
  %26 = getelementptr inbounds float, float* %4, i64 %24
  %27 = bitcast float* %25 to <4 x i32>*
  %28 = load <4 x i32>, <4 x i32>* %27, align 4, !tbaa !918
  %29 = bitcast float* %26 to <4 x i32>*
  store <4 x i32> %28, <4 x i32>* %29, align 4, !tbaa !921
  %30 = add nsw i64 %24, 4
  %31 = getelementptr inbounds float, float* %7, i64 %30
  %32 = getelementptr inbounds float, float* %4, i64 %30
  %33 = bitcast float* %31 to <4 x i32>*
  %34 = load <4 x i32>, <4 x i32>* %33, align 4, !tbaa !918
  %35 = bitcast float* %32 to <4 x i32>*
  store <4 x i32> %34, <4 x i32>* %35, align 4, !tbaa !921
  %36 = add nsw i64 %24, 8
  %37 = getelementptr inbounds float, float* %7, i64 %36
  %38 = getelementptr inbounds float, float* %4, i64 %36
  %39 = bitcast float* %37 to <4 x i32>*
  %40 = load <4 x i32>, <4 x i32>* %39, align 4, !tbaa !918
  %41 = bitcast float* %38 to <4 x i32>*
  store <4 x i32> %40, <4 x i32>* %41, align 4, !tbaa !921
  %42 = add nsw i64 %24, 12
  %43 = getelementptr inbounds float, float* %7, i64 %42
  %44 = getelementptr inbounds float, float* %4, i64 %42
  %45 = bitcast float* %43 to <4 x i32>*
  %46 = load <4 x i32>, <4 x i32>* %45, align 4, !tbaa !918
  %47 = bitcast float* %44 to <4 x i32>*
  store <4 x i32> %46, <4 x i32>* %47, align 4, !tbaa !921
  %48 = add nsw i64 %24, 16
  %49 = getelementptr inbounds float, float* %7, i64 %48
  %50 = getelementptr inbounds float, float* %4, i64 %48
  %51 = bitcast float* %49 to <4 x i32>*
  %52 = load <4 x i32>, <4 x i32>* %51, align 4, !tbaa !918
  %53 = bitcast float* %50 to <4 x i32>*
  store <4 x i32> %52, <4 x i32>* %53, align 4, !tbaa !921
  %54 = add nsw i64 %24, 20
  %55 = getelementptr inbounds float, float* %7, i64 %54
  %56 = getelementptr inbounds float, float* %4, i64 %54
  %57 = bitcast float* %55 to <4 x i32>*
  %58 = load <4 x i32>, <4 x i32>* %57, align 4, !tbaa !918
  %59 = bitcast float* %56 to <4 x i32>*
  store <4 x i32> %58, <4 x i32>* %59, align 4, !tbaa !921
  %60 = add nsw i64 %24, 24
  %61 = getelementptr inbounds float, float* %7, i64 %60
  %62 = getelementptr inbounds float, float* %4, i64 %60
  %63 = bitcast float* %61 to <4 x i32>*
  %64 = load <4 x i32>, <4 x i32>* %63, align 4, !tbaa !918
  %65 = bitcast float* %62 to <4 x i32>*
  store <4 x i32> %64, <4 x i32>* %65, align 4, !tbaa !921
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %66 = icmp slt i64 %indvars.iv.next, %23
  br i1 %66, label %for_begin1.preheader, label %for_end, !prof !5

for_end:                                          ; preds = %for_begin1.preheader, %entry
  ret i32 0
}

define dllexport i32 @fused_nn_dense_add_multiply_add_nn_relu(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 6
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.122, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %1**
  %8 = load %1*, %1** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !924
  %11 = getelementptr inbounds i8, i8* %0, i64 8
  %12 = bitcast i8* %11 to %1**
  %13 = load %1*, %1** %12, align 8
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %1**
  %16 = load %1*, %1** %15, align 8
  %17 = getelementptr inbounds i8, i8* %1, i64 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4, !tbaa !938
  %20 = getelementptr inbounds i8, i8* %0, i64 24
  %21 = bitcast i8* %20 to %1**
  %22 = load %1*, %1** %21, align 8
  %23 = getelementptr inbounds i8, i8* %1, i64 12
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4, !tbaa !941
  %26 = getelementptr inbounds i8, i8* %0, i64 32
  %27 = bitcast i8* %26 to %1**
  %28 = load %1*, %1** %27, align 8
  %29 = getelementptr inbounds i8, i8* %1, i64 16
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %30, align 4, !tbaa !943
  %32 = getelementptr inbounds i8, i8* %0, i64 40
  %33 = bitcast i8* %32 to %1**
  %34 = load %1*, %1** %33, align 8
  %35 = getelementptr inbounds i8, i8* %1, i64 20
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 4, !tbaa !947
  %38 = getelementptr inbounds %1, %1* %8, i64 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr inbounds %1, %1* %8, i64 0, i32 4
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds %1, %1* %8, i64 0, i32 5
  %43 = load i64*, i64** %42, align 8
  %44 = getelementptr inbounds %1, %1* %8, i64 0, i32 1, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %1, %1* %8, i64 0, i32 1, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %1, %1* %13, i64 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds %1, %1* %13, i64 0, i32 4
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds %1, %1* %13, i64 0, i32 5
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds %1, %1* %16, i64 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds %1, %1* %16, i64 0, i32 4
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds %1, %1* %16, i64 0, i32 5
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds %1, %1* %22, i64 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds %1, %1* %22, i64 0, i32 4
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds %1, %1* %22, i64 0, i32 5
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds %1, %1* %28, i64 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = getelementptr inbounds %1, %1* %28, i64 0, i32 4
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds %1, %1* %28, i64 0, i32 5
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds %1, %1* %34, i64 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds %1, %1* %34, i64 0, i32 4
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds %1, %1* %34, i64 0, i32 5
  %77 = load i64*, i64** %76, align 8
  switch i32 %10, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %78 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %78(i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.123, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %79 = getelementptr inbounds i8, i8* %1, i64 4
  %80 = bitcast i8* %79 to i32*
  %81 = load i32, i32* %80, align 4, !tbaa !949
  switch i32 %81, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %82 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %82(i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.124, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  switch i32 %19, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ]

assert_fail5:                                     ; preds = %assert_end4
  %83 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %83(i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.125, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  switch i32 %25, label %assert_fail7 [
    i32 13, label %assert_end8
    i32 7, label %assert_end8
    i32 4, label %assert_end8
    i32 3, label %assert_end8
  ]

assert_fail7:                                     ; preds = %assert_end6
  %84 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %84(i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.126, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  switch i32 %31, label %assert_fail9 [
    i32 13, label %assert_end10
    i32 7, label %assert_end10
    i32 4, label %assert_end10
    i32 3, label %assert_end10
  ]

assert_fail9:                                     ; preds = %assert_end8
  %85 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %85(i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.127, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8, %assert_end8, %assert_end8, %assert_end8
  switch i32 %37, label %assert_fail11 [
    i32 13, label %assert_end12
    i32 7, label %assert_end12
    i32 4, label %assert_end12
    i32 3, label %assert_end12
  ]

assert_fail11:                                    ; preds = %assert_end10
  %86 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %86(i8* getelementptr inbounds ([167 x i8], [167 x i8]* @.str.128, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10, %assert_end10, %assert_end10, %assert_end10
  %87 = icmp eq i32 %45, 1
  br i1 %87, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %88 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %88(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %89 = getelementptr inbounds %1, %1* %8, i64 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 2
  br i1 %91, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %92(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.4, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %93 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 2
  %94 = load i16, i16* %93, align 2
  %95 = icmp eq i16 %94, 1
  %96 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 1
  %97 = load i8, i8* %96, align 1
  %98 = icmp eq i8 %97, 32
  %99 = getelementptr inbounds %1, %1* %8, i64 0, i32 3, i32 0
  %100 = load i8, i8* %99, align 1
  %101 = icmp eq i8 %100, 2
  %102 = and i1 %98, %101
  %103 = and i1 %95, %102
  br i1 %103, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %104 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %104(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %105 = load i64, i64* %41, align 8, !tbaa !951
  %106 = trunc i64 %105 to i32
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %assert_end20, label %assert_fail19, !prof !5

assert_fail19:                                    ; preds = %assert_end18
  %108 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %108(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %109 = getelementptr inbounds i64, i64* %41, i64 1
  %110 = load i64, i64* %109, align 8, !tbaa !965
  %111 = trunc i64 %110 to i32
  %112 = icmp eq i32 %111, 2704
  br i1 %112, label %assert_end22, label %assert_fail21, !prof !5

assert_fail21:                                    ; preds = %assert_end20
  %113 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %113(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.129, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %assert_end20
  %114 = icmp eq i64* %43, null
  br i1 %114, label %if_end, label %if_then, !prof !41

if_then:                                          ; preds = %assert_end22
  %115 = load i64, i64* %43, align 8, !tbaa !967
  %116 = trunc i64 %115 to i32
  %117 = icmp eq i32 %116, 2704
  %118 = getelementptr inbounds i64, i64* %43, i64 1
  %119 = load i64, i64* %118, align 8, !tbaa !981
  %120 = trunc i64 %119 to i32
  %121 = icmp eq i32 %120, 1
  %122 = and i1 %117, %121
  br i1 %122, label %if_end, label %assert_fail23, !prof !5

if_end:                                           ; preds = %assert_end22, %if_then
  %123 = getelementptr inbounds %1, %1* %8, i64 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %assert_end26, label %assert_fail25, !prof !5

assert_fail23:                                    ; preds = %if_then
  %126 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %126(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.130, i64 0, i64 0))
  ret i32 -1

assert_fail25:                                    ; preds = %if_end
  %127 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %127(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %if_end
  %128 = getelementptr inbounds %1, %1* %13, i64 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = icmp eq i32 %129, 2
  br i1 %130, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %131 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %131(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %132 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 2
  %133 = load i16, i16* %132, align 2
  %134 = icmp eq i16 %133, 1
  %135 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 1
  %136 = load i8, i8* %135, align 1
  %137 = icmp eq i8 %136, 32
  %138 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 0
  %139 = load i8, i8* %138, align 1
  %140 = icmp eq i8 %139, 2
  %141 = and i1 %137, %140
  %142 = and i1 %134, %141
  br i1 %142, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %143 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %143(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %144 = load i64, i64* %51, align 8, !tbaa !983
  %145 = trunc i64 %144 to i32
  %146 = icmp eq i32 %145, 100
  br i1 %146, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %147 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %147(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.131, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %148 = getelementptr inbounds i64, i64* %51, i64 1
  %149 = load i64, i64* %148, align 8, !tbaa !997
  %150 = trunc i64 %149 to i32
  %151 = icmp eq i32 %150, 2704
  br i1 %151, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %152 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %152(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %153 = icmp eq i64* %53, null
  br i1 %153, label %if_end36, label %if_then35, !prof !41

if_then35:                                        ; preds = %assert_end34
  %154 = load i64, i64* %53, align 8, !tbaa !999
  %155 = trunc i64 %154 to i32
  %156 = icmp eq i32 %155, 2704
  %157 = getelementptr inbounds i64, i64* %53, i64 1
  %158 = load i64, i64* %157, align 8, !tbaa !1013
  %159 = trunc i64 %158 to i32
  %160 = icmp eq i32 %159, 1
  %161 = and i1 %156, %160
  br i1 %161, label %if_end36, label %assert_fail37, !prof !5

if_end36:                                         ; preds = %assert_end34, %if_then35
  %162 = getelementptr inbounds %1, %1* %13, i64 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %assert_end40, label %assert_fail39, !prof !5

assert_fail37:                                    ; preds = %if_then35
  %165 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %165(i8* getelementptr inbounds ([125 x i8], [125 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_fail39:                                    ; preds = %if_end36
  %166 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %166(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %if_end36
  %167 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %assert_end42, label %assert_fail41, !prof !5

assert_fail41:                                    ; preds = %assert_end40
  %170 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %170(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %assert_end40
  %171 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %47, %172
  br i1 %173, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %174 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %174(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %175 = getelementptr inbounds %1, %1* %16, i64 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %assert_end46, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %178 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %178(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.92, i64 0, i64 0))
  ret i32 -1

assert_end46:                                     ; preds = %assert_end44
  %179 = getelementptr inbounds %1, %1* %16, i64 0, i32 3, i32 2
  %180 = load i16, i16* %179, align 2
  %181 = icmp eq i16 %180, 1
  %182 = getelementptr inbounds %1, %1* %16, i64 0, i32 3, i32 1
  %183 = load i8, i8* %182, align 1
  %184 = icmp eq i8 %183, 32
  %185 = getelementptr inbounds %1, %1* %16, i64 0, i32 3, i32 0
  %186 = load i8, i8* %185, align 1
  %187 = icmp eq i8 %186, 2
  %188 = and i1 %184, %187
  %189 = and i1 %181, %188
  br i1 %189, label %assert_end48, label %assert_fail47, !prof !5

assert_fail47:                                    ; preds = %assert_end46
  %190 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %190(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.60, i64 0, i64 0))
  ret i32 -1

assert_end48:                                     ; preds = %assert_end46
  %191 = load i64, i64* %57, align 8, !tbaa !1015
  %192 = trunc i64 %191 to i32
  %193 = icmp eq i32 %192, 100
  br i1 %193, label %assert_end50, label %assert_fail49, !prof !5

assert_fail49:                                    ; preds = %assert_end48
  %194 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %194(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.132, i64 0, i64 0))
  ret i32 -1

assert_end50:                                     ; preds = %assert_end48
  %195 = icmp eq i64* %59, null
  br i1 %195, label %if_end52, label %if_then51, !prof !41

if_then51:                                        ; preds = %assert_end50
  %196 = load i64, i64* %59, align 8, !tbaa !1029
  %197 = trunc i64 %196 to i32
  %198 = icmp eq i32 %197, 1
  br i1 %198, label %if_end52, label %assert_fail53, !prof !5

if_end52:                                         ; preds = %assert_end50, %if_then51
  %199 = getelementptr inbounds %1, %1* %16, i64 0, i32 6
  %200 = load i64, i64* %199, align 8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %assert_end56, label %assert_fail55, !prof !5

assert_fail53:                                    ; preds = %if_then51
  %202 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %202(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.94, i64 0, i64 0))
  ret i32 -1

assert_fail55:                                    ; preds = %if_end52
  %203 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %203(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.67, i64 0, i64 0))
  ret i32 -1

assert_end56:                                     ; preds = %if_end52
  %204 = getelementptr inbounds %1, %1* %16, i64 0, i32 1, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = icmp eq i32 %205, 1
  br i1 %206, label %assert_end58, label %assert_fail57, !prof !5

assert_fail57:                                    ; preds = %assert_end56
  %207 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %207(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.68, i64 0, i64 0))
  ret i32 -1

assert_end58:                                     ; preds = %assert_end56
  %208 = getelementptr inbounds %1, %1* %16, i64 0, i32 1, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp eq i32 %47, %209
  br i1 %210, label %assert_end60, label %assert_fail59, !prof !5

assert_fail59:                                    ; preds = %assert_end58
  %211 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %211(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.69, i64 0, i64 0))
  ret i32 -1

assert_end60:                                     ; preds = %assert_end58
  %212 = getelementptr inbounds %1, %1* %22, i64 0, i32 2
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %213, 1
  br i1 %214, label %assert_end62, label %assert_fail61, !prof !5

assert_fail61:                                    ; preds = %assert_end60
  %215 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %215(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.133, i64 0, i64 0))
  ret i32 -1

assert_end62:                                     ; preds = %assert_end60
  %216 = getelementptr inbounds %1, %1* %22, i64 0, i32 3, i32 2
  %217 = load i16, i16* %216, align 2
  %218 = icmp eq i16 %217, 1
  %219 = getelementptr inbounds %1, %1* %22, i64 0, i32 3, i32 1
  %220 = load i8, i8* %219, align 1
  %221 = icmp eq i8 %220, 32
  %222 = getelementptr inbounds %1, %1* %22, i64 0, i32 3, i32 0
  %223 = load i8, i8* %222, align 1
  %224 = icmp eq i8 %223, 2
  %225 = and i1 %221, %224
  %226 = and i1 %218, %225
  br i1 %226, label %assert_end64, label %assert_fail63, !prof !5

assert_fail63:                                    ; preds = %assert_end62
  %227 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %227(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.71, i64 0, i64 0))
  ret i32 -1

assert_end64:                                     ; preds = %assert_end62
  %228 = load i64, i64* %63, align 8, !tbaa !1043
  %229 = trunc i64 %228 to i32
  %230 = icmp eq i32 %229, 100
  br i1 %230, label %assert_end66, label %assert_fail65, !prof !5

assert_fail65:                                    ; preds = %assert_end64
  %231 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %231(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.134, i64 0, i64 0))
  ret i32 -1

assert_end66:                                     ; preds = %assert_end64
  %232 = icmp eq i64* %65, null
  br i1 %232, label %if_end68, label %if_then67, !prof !41

if_then67:                                        ; preds = %assert_end66
  %233 = load i64, i64* %65, align 8, !tbaa !1057
  %234 = trunc i64 %233 to i32
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %if_end68, label %assert_fail69, !prof !5

if_end68:                                         ; preds = %assert_end66, %if_then67
  %236 = getelementptr inbounds %1, %1* %22, i64 0, i32 6
  %237 = load i64, i64* %236, align 8
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %assert_end72, label %assert_fail71, !prof !5

assert_fail69:                                    ; preds = %if_then67
  %239 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %239(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.135, i64 0, i64 0))
  ret i32 -1

assert_fail71:                                    ; preds = %if_end68
  %240 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %240(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.78, i64 0, i64 0))
  ret i32 -1

assert_end72:                                     ; preds = %if_end68
  %241 = getelementptr inbounds %1, %1* %22, i64 0, i32 1, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 1
  br i1 %243, label %assert_end74, label %assert_fail73, !prof !5

assert_fail73:                                    ; preds = %assert_end72
  %244 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %244(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.79, i64 0, i64 0))
  ret i32 -1

assert_end74:                                     ; preds = %assert_end72
  %245 = getelementptr inbounds %1, %1* %22, i64 0, i32 1, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = icmp eq i32 %47, %246
  br i1 %247, label %assert_end76, label %assert_fail75, !prof !5

assert_fail75:                                    ; preds = %assert_end74
  %248 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %248(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.80, i64 0, i64 0))
  ret i32 -1

assert_end76:                                     ; preds = %assert_end74
  %249 = getelementptr inbounds %1, %1* %28, i64 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %assert_end78, label %assert_fail77, !prof !5

assert_fail77:                                    ; preds = %assert_end76
  %252 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %252(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.136, i64 0, i64 0))
  ret i32 -1

assert_end78:                                     ; preds = %assert_end76
  %253 = getelementptr inbounds %1, %1* %28, i64 0, i32 3, i32 2
  %254 = load i16, i16* %253, align 2
  %255 = icmp eq i16 %254, 1
  %256 = getelementptr inbounds %1, %1* %28, i64 0, i32 3, i32 1
  %257 = load i8, i8* %256, align 1
  %258 = icmp eq i8 %257, 32
  %259 = getelementptr inbounds %1, %1* %28, i64 0, i32 3, i32 0
  %260 = load i8, i8* %259, align 1
  %261 = icmp eq i8 %260, 2
  %262 = and i1 %258, %261
  %263 = and i1 %255, %262
  br i1 %263, label %assert_end80, label %assert_fail79, !prof !5

assert_fail79:                                    ; preds = %assert_end78
  %264 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %264(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.137, i64 0, i64 0))
  ret i32 -1

assert_end80:                                     ; preds = %assert_end78
  %265 = load i64, i64* %69, align 8, !tbaa !1071
  %266 = trunc i64 %265 to i32
  %267 = icmp eq i32 %266, 100
  br i1 %267, label %assert_end82, label %assert_fail81, !prof !5

assert_fail81:                                    ; preds = %assert_end80
  %268 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %268(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.138, i64 0, i64 0))
  ret i32 -1

assert_end82:                                     ; preds = %assert_end80
  %269 = icmp eq i64* %71, null
  br i1 %269, label %if_end84, label %if_then83, !prof !41

if_then83:                                        ; preds = %assert_end82
  %270 = load i64, i64* %71, align 8, !tbaa !1085
  %271 = trunc i64 %270 to i32
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %if_end84, label %assert_fail85, !prof !5

if_end84:                                         ; preds = %assert_end82, %if_then83
  %273 = getelementptr inbounds %1, %1* %28, i64 0, i32 6
  %274 = load i64, i64* %273, align 8
  %275 = icmp eq i64 %274, 0
  br i1 %275, label %assert_end88, label %assert_fail87, !prof !5

assert_fail85:                                    ; preds = %if_then83
  %276 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %276(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.139, i64 0, i64 0))
  ret i32 -1

assert_fail87:                                    ; preds = %if_end84
  %277 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %277(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.140, i64 0, i64 0))
  ret i32 -1

assert_end88:                                     ; preds = %if_end84
  %278 = getelementptr inbounds %1, %1* %28, i64 0, i32 1, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %assert_end90, label %assert_fail89, !prof !5

assert_fail89:                                    ; preds = %assert_end88
  %281 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %281(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.141, i64 0, i64 0))
  ret i32 -1

assert_end90:                                     ; preds = %assert_end88
  %282 = getelementptr inbounds %1, %1* %28, i64 0, i32 1, i32 1
  %283 = load i32, i32* %282, align 4
  %284 = icmp eq i32 %47, %283
  br i1 %284, label %assert_end92, label %assert_fail91, !prof !5

assert_fail91:                                    ; preds = %assert_end90
  %285 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %285(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.142, i64 0, i64 0))
  ret i32 -1

assert_end92:                                     ; preds = %assert_end90
  %286 = getelementptr inbounds %1, %1* %34, i64 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = icmp eq i32 %287, 2
  br i1 %288, label %assert_end94, label %assert_fail93, !prof !5

assert_fail93:                                    ; preds = %assert_end92
  %289 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %289(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.143, i64 0, i64 0))
  ret i32 -1

assert_end94:                                     ; preds = %assert_end92
  %290 = getelementptr inbounds %1, %1* %34, i64 0, i32 3, i32 2
  %291 = load i16, i16* %290, align 2
  %292 = icmp eq i16 %291, 1
  %293 = getelementptr inbounds %1, %1* %34, i64 0, i32 3, i32 1
  %294 = load i8, i8* %293, align 1
  %295 = icmp eq i8 %294, 32
  %296 = getelementptr inbounds %1, %1* %34, i64 0, i32 3, i32 0
  %297 = load i8, i8* %296, align 1
  %298 = icmp eq i8 %297, 2
  %299 = and i1 %295, %298
  %300 = and i1 %292, %299
  br i1 %300, label %assert_end96, label %assert_fail95, !prof !5

assert_fail95:                                    ; preds = %assert_end94
  %301 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %301(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.144, i64 0, i64 0))
  ret i32 -1

assert_end96:                                     ; preds = %assert_end94
  %302 = load i64, i64* %75, align 8, !tbaa !1099
  %303 = trunc i64 %302 to i32
  %304 = icmp eq i32 %303, 1
  br i1 %304, label %assert_end98, label %assert_fail97, !prof !5

assert_fail97:                                    ; preds = %assert_end96
  %305 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %305(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.145, i64 0, i64 0))
  ret i32 -1

assert_end98:                                     ; preds = %assert_end96
  %306 = getelementptr inbounds i64, i64* %75, i64 1
  %307 = load i64, i64* %306, align 8, !tbaa !1113
  %308 = trunc i64 %307 to i32
  %309 = icmp eq i32 %308, 100
  br i1 %309, label %assert_end100, label %assert_fail99, !prof !5

assert_fail99:                                    ; preds = %assert_end98
  %310 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %310(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.146, i64 0, i64 0))
  ret i32 -1

assert_end100:                                    ; preds = %assert_end98
  %311 = icmp eq i64* %77, null
  br i1 %311, label %if_end102, label %if_then101, !prof !41

if_then101:                                       ; preds = %assert_end100
  %312 = load i64, i64* %77, align 8, !tbaa !1115
  %313 = trunc i64 %312 to i32
  %314 = icmp eq i32 %313, 100
  %315 = getelementptr inbounds i64, i64* %77, i64 1
  %316 = load i64, i64* %315, align 8, !tbaa !1129
  %317 = trunc i64 %316 to i32
  %318 = icmp eq i32 %317, 1
  %319 = and i1 %314, %318
  br i1 %319, label %if_end102, label %assert_fail103, !prof !5

if_end102:                                        ; preds = %assert_end100, %if_then101
  %320 = getelementptr inbounds %1, %1* %34, i64 0, i32 6
  %321 = load i64, i64* %320, align 8
  %322 = icmp eq i64 %321, 0
  br i1 %322, label %assert_end106, label %assert_fail105, !prof !5

assert_fail103:                                   ; preds = %if_then101
  %323 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %323(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.147, i64 0, i64 0))
  ret i32 -1

assert_fail105:                                   ; preds = %if_end102
  %324 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %324(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.148, i64 0, i64 0))
  ret i32 -1

assert_end106:                                    ; preds = %if_end102
  %325 = getelementptr inbounds %1, %1* %34, i64 0, i32 1, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = icmp eq i32 %326, 1
  br i1 %327, label %assert_end108, label %assert_fail107, !prof !5

assert_fail107:                                   ; preds = %assert_end106
  %328 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %328(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.149, i64 0, i64 0))
  ret i32 -1

assert_end108:                                    ; preds = %assert_end106
  %329 = getelementptr inbounds %1, %1* %34, i64 0, i32 1, i32 1
  %330 = load i32, i32* %329, align 4
  %331 = icmp eq i32 %47, %330
  br i1 %331, label %assert_end110, label %assert_fail109, !prof !5

assert_fail109:                                   ; preds = %assert_end108
  %332 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %332(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.150, i64 0, i64 0))
  ret i32 -1

assert_end110:                                    ; preds = %assert_end108
  %333 = tail call fastcc i32 @fused_nn_dense_add_multiply_add_nn_relu_compute_(i8* %39, i8* %49, i8* %73, i8* %55, i8* %61, i8* %67)
  ret i32 %333
}

; Function Attrs: noinline
define private fastcc i32 @fused_nn_dense_add_multiply_add_nn_relu_compute_(i8* noalias, i8* noalias, i8* noalias nocapture, i8* noalias nocapture readonly, i8* noalias nocapture readonly, i8* noalias nocapture readonly) unnamed_addr #3 {
entry:
  %6 = alloca [100 x float], align 16
  %7 = alloca %9, align 8
  %.sub = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 0
  %8 = getelementptr inbounds %9, %9* %7, i64 0, i32 0
  store i8* %0, i8** %8, align 8
  %9 = getelementptr inbounds %9, %9* %7, i64 0, i32 1
  store i8* %1, i8** %9, align 8
  %10 = getelementptr inbounds %9, %9* %7, i64 0, i32 2
  store float* %.sub, float** %10, align 8
  %11 = bitcast %9* %7 to i8*
  %12 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %13 = call i32 %12(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.151, i8* nonnull %11, i32 0)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %vector.body, label %call_fail, !prof !5

vector.body:                                      ; preds = %entry
  %15 = bitcast i8* %3 to <4 x float>*
  %wide.load = load <4 x float>, <4 x float>* %15, align 4, !tbaa !1131
  %16 = bitcast [100 x float]* %6 to <4 x float>*
  %wide.load2 = load <4 x float>, <4 x float>* %16, align 16, !tbaa !1134
  %17 = fadd <4 x float> %wide.load, %wide.load2
  %18 = bitcast i8* %4 to <4 x float>*
  %wide.load3 = load <4 x float>, <4 x float>* %18, align 4, !tbaa !1137
  %19 = bitcast i8* %5 to <4 x float>*
  %wide.load4 = load <4 x float>, <4 x float>* %19, align 4, !tbaa !1140
  %20 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %17, <4 x float> %wide.load3, <4 x float> %wide.load4)
  %21 = fcmp ogt <4 x float> %20, zeroinitializer
  %22 = select <4 x i1> %21, <4 x float> %20, <4 x float> zeroinitializer
  %23 = bitcast i8* %2 to <4 x float>*
  store <4 x float> %22, <4 x float>* %23, align 4, !tbaa !1143
  %24 = getelementptr inbounds i8, i8* %3, i64 16
  %25 = bitcast i8* %24 to <4 x float>*
  %wide.load.1 = load <4 x float>, <4 x float>* %25, align 4, !tbaa !1131
  %26 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 4
  %27 = bitcast float* %26 to <4 x float>*
  %wide.load2.1 = load <4 x float>, <4 x float>* %27, align 16, !tbaa !1134
  %28 = fadd <4 x float> %wide.load.1, %wide.load2.1
  %29 = getelementptr inbounds i8, i8* %4, i64 16
  %30 = bitcast i8* %29 to <4 x float>*
  %wide.load3.1 = load <4 x float>, <4 x float>* %30, align 4, !tbaa !1137
  %31 = getelementptr inbounds i8, i8* %5, i64 16
  %32 = bitcast i8* %31 to <4 x float>*
  %wide.load4.1 = load <4 x float>, <4 x float>* %32, align 4, !tbaa !1140
  %33 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %28, <4 x float> %wide.load3.1, <4 x float> %wide.load4.1)
  %34 = fcmp ogt <4 x float> %33, zeroinitializer
  %35 = select <4 x i1> %34, <4 x float> %33, <4 x float> zeroinitializer
  %36 = getelementptr inbounds i8, i8* %2, i64 16
  %37 = bitcast i8* %36 to <4 x float>*
  store <4 x float> %35, <4 x float>* %37, align 4, !tbaa !1143
  %38 = getelementptr inbounds i8, i8* %3, i64 32
  %39 = bitcast i8* %38 to <4 x float>*
  %wide.load.2 = load <4 x float>, <4 x float>* %39, align 4, !tbaa !1131
  %40 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 8
  %41 = bitcast float* %40 to <4 x float>*
  %wide.load2.2 = load <4 x float>, <4 x float>* %41, align 16, !tbaa !1134
  %42 = fadd <4 x float> %wide.load.2, %wide.load2.2
  %43 = getelementptr inbounds i8, i8* %4, i64 32
  %44 = bitcast i8* %43 to <4 x float>*
  %wide.load3.2 = load <4 x float>, <4 x float>* %44, align 4, !tbaa !1137
  %45 = getelementptr inbounds i8, i8* %5, i64 32
  %46 = bitcast i8* %45 to <4 x float>*
  %wide.load4.2 = load <4 x float>, <4 x float>* %46, align 4, !tbaa !1140
  %47 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %42, <4 x float> %wide.load3.2, <4 x float> %wide.load4.2)
  %48 = fcmp ogt <4 x float> %47, zeroinitializer
  %49 = select <4 x i1> %48, <4 x float> %47, <4 x float> zeroinitializer
  %50 = getelementptr inbounds i8, i8* %2, i64 32
  %51 = bitcast i8* %50 to <4 x float>*
  store <4 x float> %49, <4 x float>* %51, align 4, !tbaa !1143
  %52 = getelementptr inbounds i8, i8* %3, i64 48
  %53 = bitcast i8* %52 to <4 x float>*
  %wide.load.3 = load <4 x float>, <4 x float>* %53, align 4, !tbaa !1131
  %54 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 12
  %55 = bitcast float* %54 to <4 x float>*
  %wide.load2.3 = load <4 x float>, <4 x float>* %55, align 16, !tbaa !1134
  %56 = fadd <4 x float> %wide.load.3, %wide.load2.3
  %57 = getelementptr inbounds i8, i8* %4, i64 48
  %58 = bitcast i8* %57 to <4 x float>*
  %wide.load3.3 = load <4 x float>, <4 x float>* %58, align 4, !tbaa !1137
  %59 = getelementptr inbounds i8, i8* %5, i64 48
  %60 = bitcast i8* %59 to <4 x float>*
  %wide.load4.3 = load <4 x float>, <4 x float>* %60, align 4, !tbaa !1140
  %61 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %56, <4 x float> %wide.load3.3, <4 x float> %wide.load4.3)
  %62 = fcmp ogt <4 x float> %61, zeroinitializer
  %63 = select <4 x i1> %62, <4 x float> %61, <4 x float> zeroinitializer
  %64 = getelementptr inbounds i8, i8* %2, i64 48
  %65 = bitcast i8* %64 to <4 x float>*
  store <4 x float> %63, <4 x float>* %65, align 4, !tbaa !1143
  %66 = getelementptr inbounds i8, i8* %3, i64 64
  %67 = bitcast i8* %66 to <4 x float>*
  %wide.load.4 = load <4 x float>, <4 x float>* %67, align 4, !tbaa !1131
  %68 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 16
  %69 = bitcast float* %68 to <4 x float>*
  %wide.load2.4 = load <4 x float>, <4 x float>* %69, align 16, !tbaa !1134
  %70 = fadd <4 x float> %wide.load.4, %wide.load2.4
  %71 = getelementptr inbounds i8, i8* %4, i64 64
  %72 = bitcast i8* %71 to <4 x float>*
  %wide.load3.4 = load <4 x float>, <4 x float>* %72, align 4, !tbaa !1137
  %73 = getelementptr inbounds i8, i8* %5, i64 64
  %74 = bitcast i8* %73 to <4 x float>*
  %wide.load4.4 = load <4 x float>, <4 x float>* %74, align 4, !tbaa !1140
  %75 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %70, <4 x float> %wide.load3.4, <4 x float> %wide.load4.4)
  %76 = fcmp ogt <4 x float> %75, zeroinitializer
  %77 = select <4 x i1> %76, <4 x float> %75, <4 x float> zeroinitializer
  %78 = getelementptr inbounds i8, i8* %2, i64 64
  %79 = bitcast i8* %78 to <4 x float>*
  store <4 x float> %77, <4 x float>* %79, align 4, !tbaa !1143
  %80 = getelementptr inbounds i8, i8* %3, i64 80
  %81 = bitcast i8* %80 to <4 x float>*
  %wide.load.5 = load <4 x float>, <4 x float>* %81, align 4, !tbaa !1131
  %82 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 20
  %83 = bitcast float* %82 to <4 x float>*
  %wide.load2.5 = load <4 x float>, <4 x float>* %83, align 16, !tbaa !1134
  %84 = fadd <4 x float> %wide.load.5, %wide.load2.5
  %85 = getelementptr inbounds i8, i8* %4, i64 80
  %86 = bitcast i8* %85 to <4 x float>*
  %wide.load3.5 = load <4 x float>, <4 x float>* %86, align 4, !tbaa !1137
  %87 = getelementptr inbounds i8, i8* %5, i64 80
  %88 = bitcast i8* %87 to <4 x float>*
  %wide.load4.5 = load <4 x float>, <4 x float>* %88, align 4, !tbaa !1140
  %89 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %84, <4 x float> %wide.load3.5, <4 x float> %wide.load4.5)
  %90 = fcmp ogt <4 x float> %89, zeroinitializer
  %91 = select <4 x i1> %90, <4 x float> %89, <4 x float> zeroinitializer
  %92 = getelementptr inbounds i8, i8* %2, i64 80
  %93 = bitcast i8* %92 to <4 x float>*
  store <4 x float> %91, <4 x float>* %93, align 4, !tbaa !1143
  %94 = getelementptr inbounds i8, i8* %3, i64 96
  %95 = bitcast i8* %94 to <4 x float>*
  %wide.load.6 = load <4 x float>, <4 x float>* %95, align 4, !tbaa !1131
  %96 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 24
  %97 = bitcast float* %96 to <4 x float>*
  %wide.load2.6 = load <4 x float>, <4 x float>* %97, align 16, !tbaa !1134
  %98 = fadd <4 x float> %wide.load.6, %wide.load2.6
  %99 = getelementptr inbounds i8, i8* %4, i64 96
  %100 = bitcast i8* %99 to <4 x float>*
  %wide.load3.6 = load <4 x float>, <4 x float>* %100, align 4, !tbaa !1137
  %101 = getelementptr inbounds i8, i8* %5, i64 96
  %102 = bitcast i8* %101 to <4 x float>*
  %wide.load4.6 = load <4 x float>, <4 x float>* %102, align 4, !tbaa !1140
  %103 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %98, <4 x float> %wide.load3.6, <4 x float> %wide.load4.6)
  %104 = fcmp ogt <4 x float> %103, zeroinitializer
  %105 = select <4 x i1> %104, <4 x float> %103, <4 x float> zeroinitializer
  %106 = getelementptr inbounds i8, i8* %2, i64 96
  %107 = bitcast i8* %106 to <4 x float>*
  store <4 x float> %105, <4 x float>* %107, align 4, !tbaa !1143
  %108 = getelementptr inbounds i8, i8* %3, i64 112
  %109 = bitcast i8* %108 to <4 x float>*
  %wide.load.7 = load <4 x float>, <4 x float>* %109, align 4, !tbaa !1131
  %110 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 28
  %111 = bitcast float* %110 to <4 x float>*
  %wide.load2.7 = load <4 x float>, <4 x float>* %111, align 16, !tbaa !1134
  %112 = fadd <4 x float> %wide.load.7, %wide.load2.7
  %113 = getelementptr inbounds i8, i8* %4, i64 112
  %114 = bitcast i8* %113 to <4 x float>*
  %wide.load3.7 = load <4 x float>, <4 x float>* %114, align 4, !tbaa !1137
  %115 = getelementptr inbounds i8, i8* %5, i64 112
  %116 = bitcast i8* %115 to <4 x float>*
  %wide.load4.7 = load <4 x float>, <4 x float>* %116, align 4, !tbaa !1140
  %117 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %112, <4 x float> %wide.load3.7, <4 x float> %wide.load4.7)
  %118 = fcmp ogt <4 x float> %117, zeroinitializer
  %119 = select <4 x i1> %118, <4 x float> %117, <4 x float> zeroinitializer
  %120 = getelementptr inbounds i8, i8* %2, i64 112
  %121 = bitcast i8* %120 to <4 x float>*
  store <4 x float> %119, <4 x float>* %121, align 4, !tbaa !1143
  %122 = getelementptr inbounds i8, i8* %3, i64 128
  %123 = bitcast i8* %122 to <4 x float>*
  %wide.load.8 = load <4 x float>, <4 x float>* %123, align 4, !tbaa !1131
  %124 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 32
  %125 = bitcast float* %124 to <4 x float>*
  %wide.load2.8 = load <4 x float>, <4 x float>* %125, align 16, !tbaa !1134
  %126 = fadd <4 x float> %wide.load.8, %wide.load2.8
  %127 = getelementptr inbounds i8, i8* %4, i64 128
  %128 = bitcast i8* %127 to <4 x float>*
  %wide.load3.8 = load <4 x float>, <4 x float>* %128, align 4, !tbaa !1137
  %129 = getelementptr inbounds i8, i8* %5, i64 128
  %130 = bitcast i8* %129 to <4 x float>*
  %wide.load4.8 = load <4 x float>, <4 x float>* %130, align 4, !tbaa !1140
  %131 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %126, <4 x float> %wide.load3.8, <4 x float> %wide.load4.8)
  %132 = fcmp ogt <4 x float> %131, zeroinitializer
  %133 = select <4 x i1> %132, <4 x float> %131, <4 x float> zeroinitializer
  %134 = getelementptr inbounds i8, i8* %2, i64 128
  %135 = bitcast i8* %134 to <4 x float>*
  store <4 x float> %133, <4 x float>* %135, align 4, !tbaa !1143
  %136 = getelementptr inbounds i8, i8* %3, i64 144
  %137 = bitcast i8* %136 to <4 x float>*
  %wide.load.9 = load <4 x float>, <4 x float>* %137, align 4, !tbaa !1131
  %138 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 36
  %139 = bitcast float* %138 to <4 x float>*
  %wide.load2.9 = load <4 x float>, <4 x float>* %139, align 16, !tbaa !1134
  %140 = fadd <4 x float> %wide.load.9, %wide.load2.9
  %141 = getelementptr inbounds i8, i8* %4, i64 144
  %142 = bitcast i8* %141 to <4 x float>*
  %wide.load3.9 = load <4 x float>, <4 x float>* %142, align 4, !tbaa !1137
  %143 = getelementptr inbounds i8, i8* %5, i64 144
  %144 = bitcast i8* %143 to <4 x float>*
  %wide.load4.9 = load <4 x float>, <4 x float>* %144, align 4, !tbaa !1140
  %145 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %140, <4 x float> %wide.load3.9, <4 x float> %wide.load4.9)
  %146 = fcmp ogt <4 x float> %145, zeroinitializer
  %147 = select <4 x i1> %146, <4 x float> %145, <4 x float> zeroinitializer
  %148 = getelementptr inbounds i8, i8* %2, i64 144
  %149 = bitcast i8* %148 to <4 x float>*
  store <4 x float> %147, <4 x float>* %149, align 4, !tbaa !1143
  %150 = getelementptr inbounds i8, i8* %3, i64 160
  %151 = bitcast i8* %150 to <4 x float>*
  %wide.load.10 = load <4 x float>, <4 x float>* %151, align 4, !tbaa !1131
  %152 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 40
  %153 = bitcast float* %152 to <4 x float>*
  %wide.load2.10 = load <4 x float>, <4 x float>* %153, align 16, !tbaa !1134
  %154 = fadd <4 x float> %wide.load.10, %wide.load2.10
  %155 = getelementptr inbounds i8, i8* %4, i64 160
  %156 = bitcast i8* %155 to <4 x float>*
  %wide.load3.10 = load <4 x float>, <4 x float>* %156, align 4, !tbaa !1137
  %157 = getelementptr inbounds i8, i8* %5, i64 160
  %158 = bitcast i8* %157 to <4 x float>*
  %wide.load4.10 = load <4 x float>, <4 x float>* %158, align 4, !tbaa !1140
  %159 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %154, <4 x float> %wide.load3.10, <4 x float> %wide.load4.10)
  %160 = fcmp ogt <4 x float> %159, zeroinitializer
  %161 = select <4 x i1> %160, <4 x float> %159, <4 x float> zeroinitializer
  %162 = getelementptr inbounds i8, i8* %2, i64 160
  %163 = bitcast i8* %162 to <4 x float>*
  store <4 x float> %161, <4 x float>* %163, align 4, !tbaa !1143
  %164 = getelementptr inbounds i8, i8* %3, i64 176
  %165 = bitcast i8* %164 to <4 x float>*
  %wide.load.11 = load <4 x float>, <4 x float>* %165, align 4, !tbaa !1131
  %166 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 44
  %167 = bitcast float* %166 to <4 x float>*
  %wide.load2.11 = load <4 x float>, <4 x float>* %167, align 16, !tbaa !1134
  %168 = fadd <4 x float> %wide.load.11, %wide.load2.11
  %169 = getelementptr inbounds i8, i8* %4, i64 176
  %170 = bitcast i8* %169 to <4 x float>*
  %wide.load3.11 = load <4 x float>, <4 x float>* %170, align 4, !tbaa !1137
  %171 = getelementptr inbounds i8, i8* %5, i64 176
  %172 = bitcast i8* %171 to <4 x float>*
  %wide.load4.11 = load <4 x float>, <4 x float>* %172, align 4, !tbaa !1140
  %173 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %168, <4 x float> %wide.load3.11, <4 x float> %wide.load4.11)
  %174 = fcmp ogt <4 x float> %173, zeroinitializer
  %175 = select <4 x i1> %174, <4 x float> %173, <4 x float> zeroinitializer
  %176 = getelementptr inbounds i8, i8* %2, i64 176
  %177 = bitcast i8* %176 to <4 x float>*
  store <4 x float> %175, <4 x float>* %177, align 4, !tbaa !1143
  %178 = getelementptr inbounds i8, i8* %3, i64 192
  %179 = bitcast i8* %178 to <4 x float>*
  %wide.load.12 = load <4 x float>, <4 x float>* %179, align 4, !tbaa !1131
  %180 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 48
  %181 = bitcast float* %180 to <4 x float>*
  %wide.load2.12 = load <4 x float>, <4 x float>* %181, align 16, !tbaa !1134
  %182 = fadd <4 x float> %wide.load.12, %wide.load2.12
  %183 = getelementptr inbounds i8, i8* %4, i64 192
  %184 = bitcast i8* %183 to <4 x float>*
  %wide.load3.12 = load <4 x float>, <4 x float>* %184, align 4, !tbaa !1137
  %185 = getelementptr inbounds i8, i8* %5, i64 192
  %186 = bitcast i8* %185 to <4 x float>*
  %wide.load4.12 = load <4 x float>, <4 x float>* %186, align 4, !tbaa !1140
  %187 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %182, <4 x float> %wide.load3.12, <4 x float> %wide.load4.12)
  %188 = fcmp ogt <4 x float> %187, zeroinitializer
  %189 = select <4 x i1> %188, <4 x float> %187, <4 x float> zeroinitializer
  %190 = getelementptr inbounds i8, i8* %2, i64 192
  %191 = bitcast i8* %190 to <4 x float>*
  store <4 x float> %189, <4 x float>* %191, align 4, !tbaa !1143
  %192 = getelementptr inbounds i8, i8* %3, i64 208
  %193 = bitcast i8* %192 to <4 x float>*
  %wide.load.13 = load <4 x float>, <4 x float>* %193, align 4, !tbaa !1131
  %194 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 52
  %195 = bitcast float* %194 to <4 x float>*
  %wide.load2.13 = load <4 x float>, <4 x float>* %195, align 16, !tbaa !1134
  %196 = fadd <4 x float> %wide.load.13, %wide.load2.13
  %197 = getelementptr inbounds i8, i8* %4, i64 208
  %198 = bitcast i8* %197 to <4 x float>*
  %wide.load3.13 = load <4 x float>, <4 x float>* %198, align 4, !tbaa !1137
  %199 = getelementptr inbounds i8, i8* %5, i64 208
  %200 = bitcast i8* %199 to <4 x float>*
  %wide.load4.13 = load <4 x float>, <4 x float>* %200, align 4, !tbaa !1140
  %201 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %196, <4 x float> %wide.load3.13, <4 x float> %wide.load4.13)
  %202 = fcmp ogt <4 x float> %201, zeroinitializer
  %203 = select <4 x i1> %202, <4 x float> %201, <4 x float> zeroinitializer
  %204 = getelementptr inbounds i8, i8* %2, i64 208
  %205 = bitcast i8* %204 to <4 x float>*
  store <4 x float> %203, <4 x float>* %205, align 4, !tbaa !1143
  %206 = getelementptr inbounds i8, i8* %3, i64 224
  %207 = bitcast i8* %206 to <4 x float>*
  %wide.load.14 = load <4 x float>, <4 x float>* %207, align 4, !tbaa !1131
  %208 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 56
  %209 = bitcast float* %208 to <4 x float>*
  %wide.load2.14 = load <4 x float>, <4 x float>* %209, align 16, !tbaa !1134
  %210 = fadd <4 x float> %wide.load.14, %wide.load2.14
  %211 = getelementptr inbounds i8, i8* %4, i64 224
  %212 = bitcast i8* %211 to <4 x float>*
  %wide.load3.14 = load <4 x float>, <4 x float>* %212, align 4, !tbaa !1137
  %213 = getelementptr inbounds i8, i8* %5, i64 224
  %214 = bitcast i8* %213 to <4 x float>*
  %wide.load4.14 = load <4 x float>, <4 x float>* %214, align 4, !tbaa !1140
  %215 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %210, <4 x float> %wide.load3.14, <4 x float> %wide.load4.14)
  %216 = fcmp ogt <4 x float> %215, zeroinitializer
  %217 = select <4 x i1> %216, <4 x float> %215, <4 x float> zeroinitializer
  %218 = getelementptr inbounds i8, i8* %2, i64 224
  %219 = bitcast i8* %218 to <4 x float>*
  store <4 x float> %217, <4 x float>* %219, align 4, !tbaa !1143
  %220 = getelementptr inbounds i8, i8* %3, i64 240
  %221 = bitcast i8* %220 to <4 x float>*
  %wide.load.15 = load <4 x float>, <4 x float>* %221, align 4, !tbaa !1131
  %222 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 60
  %223 = bitcast float* %222 to <4 x float>*
  %wide.load2.15 = load <4 x float>, <4 x float>* %223, align 16, !tbaa !1134
  %224 = fadd <4 x float> %wide.load.15, %wide.load2.15
  %225 = getelementptr inbounds i8, i8* %4, i64 240
  %226 = bitcast i8* %225 to <4 x float>*
  %wide.load3.15 = load <4 x float>, <4 x float>* %226, align 4, !tbaa !1137
  %227 = getelementptr inbounds i8, i8* %5, i64 240
  %228 = bitcast i8* %227 to <4 x float>*
  %wide.load4.15 = load <4 x float>, <4 x float>* %228, align 4, !tbaa !1140
  %229 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %224, <4 x float> %wide.load3.15, <4 x float> %wide.load4.15)
  %230 = fcmp ogt <4 x float> %229, zeroinitializer
  %231 = select <4 x i1> %230, <4 x float> %229, <4 x float> zeroinitializer
  %232 = getelementptr inbounds i8, i8* %2, i64 240
  %233 = bitcast i8* %232 to <4 x float>*
  store <4 x float> %231, <4 x float>* %233, align 4, !tbaa !1143
  %234 = getelementptr inbounds i8, i8* %3, i64 256
  %235 = bitcast i8* %234 to <4 x float>*
  %wide.load.16 = load <4 x float>, <4 x float>* %235, align 4, !tbaa !1131
  %236 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 64
  %237 = bitcast float* %236 to <4 x float>*
  %wide.load2.16 = load <4 x float>, <4 x float>* %237, align 16, !tbaa !1134
  %238 = fadd <4 x float> %wide.load.16, %wide.load2.16
  %239 = getelementptr inbounds i8, i8* %4, i64 256
  %240 = bitcast i8* %239 to <4 x float>*
  %wide.load3.16 = load <4 x float>, <4 x float>* %240, align 4, !tbaa !1137
  %241 = getelementptr inbounds i8, i8* %5, i64 256
  %242 = bitcast i8* %241 to <4 x float>*
  %wide.load4.16 = load <4 x float>, <4 x float>* %242, align 4, !tbaa !1140
  %243 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %238, <4 x float> %wide.load3.16, <4 x float> %wide.load4.16)
  %244 = fcmp ogt <4 x float> %243, zeroinitializer
  %245 = select <4 x i1> %244, <4 x float> %243, <4 x float> zeroinitializer
  %246 = getelementptr inbounds i8, i8* %2, i64 256
  %247 = bitcast i8* %246 to <4 x float>*
  store <4 x float> %245, <4 x float>* %247, align 4, !tbaa !1143
  %248 = getelementptr inbounds i8, i8* %3, i64 272
  %249 = bitcast i8* %248 to <4 x float>*
  %wide.load.17 = load <4 x float>, <4 x float>* %249, align 4, !tbaa !1131
  %250 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 68
  %251 = bitcast float* %250 to <4 x float>*
  %wide.load2.17 = load <4 x float>, <4 x float>* %251, align 16, !tbaa !1134
  %252 = fadd <4 x float> %wide.load.17, %wide.load2.17
  %253 = getelementptr inbounds i8, i8* %4, i64 272
  %254 = bitcast i8* %253 to <4 x float>*
  %wide.load3.17 = load <4 x float>, <4 x float>* %254, align 4, !tbaa !1137
  %255 = getelementptr inbounds i8, i8* %5, i64 272
  %256 = bitcast i8* %255 to <4 x float>*
  %wide.load4.17 = load <4 x float>, <4 x float>* %256, align 4, !tbaa !1140
  %257 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %252, <4 x float> %wide.load3.17, <4 x float> %wide.load4.17)
  %258 = fcmp ogt <4 x float> %257, zeroinitializer
  %259 = select <4 x i1> %258, <4 x float> %257, <4 x float> zeroinitializer
  %260 = getelementptr inbounds i8, i8* %2, i64 272
  %261 = bitcast i8* %260 to <4 x float>*
  store <4 x float> %259, <4 x float>* %261, align 4, !tbaa !1143
  %262 = getelementptr inbounds i8, i8* %3, i64 288
  %263 = bitcast i8* %262 to <4 x float>*
  %wide.load.18 = load <4 x float>, <4 x float>* %263, align 4, !tbaa !1131
  %264 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 72
  %265 = bitcast float* %264 to <4 x float>*
  %wide.load2.18 = load <4 x float>, <4 x float>* %265, align 16, !tbaa !1134
  %266 = fadd <4 x float> %wide.load.18, %wide.load2.18
  %267 = getelementptr inbounds i8, i8* %4, i64 288
  %268 = bitcast i8* %267 to <4 x float>*
  %wide.load3.18 = load <4 x float>, <4 x float>* %268, align 4, !tbaa !1137
  %269 = getelementptr inbounds i8, i8* %5, i64 288
  %270 = bitcast i8* %269 to <4 x float>*
  %wide.load4.18 = load <4 x float>, <4 x float>* %270, align 4, !tbaa !1140
  %271 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %266, <4 x float> %wide.load3.18, <4 x float> %wide.load4.18)
  %272 = fcmp ogt <4 x float> %271, zeroinitializer
  %273 = select <4 x i1> %272, <4 x float> %271, <4 x float> zeroinitializer
  %274 = getelementptr inbounds i8, i8* %2, i64 288
  %275 = bitcast i8* %274 to <4 x float>*
  store <4 x float> %273, <4 x float>* %275, align 4, !tbaa !1143
  %276 = getelementptr inbounds i8, i8* %3, i64 304
  %277 = bitcast i8* %276 to <4 x float>*
  %wide.load.19 = load <4 x float>, <4 x float>* %277, align 4, !tbaa !1131
  %278 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 76
  %279 = bitcast float* %278 to <4 x float>*
  %wide.load2.19 = load <4 x float>, <4 x float>* %279, align 16, !tbaa !1134
  %280 = fadd <4 x float> %wide.load.19, %wide.load2.19
  %281 = getelementptr inbounds i8, i8* %4, i64 304
  %282 = bitcast i8* %281 to <4 x float>*
  %wide.load3.19 = load <4 x float>, <4 x float>* %282, align 4, !tbaa !1137
  %283 = getelementptr inbounds i8, i8* %5, i64 304
  %284 = bitcast i8* %283 to <4 x float>*
  %wide.load4.19 = load <4 x float>, <4 x float>* %284, align 4, !tbaa !1140
  %285 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %280, <4 x float> %wide.load3.19, <4 x float> %wide.load4.19)
  %286 = fcmp ogt <4 x float> %285, zeroinitializer
  %287 = select <4 x i1> %286, <4 x float> %285, <4 x float> zeroinitializer
  %288 = getelementptr inbounds i8, i8* %2, i64 304
  %289 = bitcast i8* %288 to <4 x float>*
  store <4 x float> %287, <4 x float>* %289, align 4, !tbaa !1143
  %290 = getelementptr inbounds i8, i8* %3, i64 320
  %291 = bitcast i8* %290 to <4 x float>*
  %wide.load.20 = load <4 x float>, <4 x float>* %291, align 4, !tbaa !1131
  %292 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 80
  %293 = bitcast float* %292 to <4 x float>*
  %wide.load2.20 = load <4 x float>, <4 x float>* %293, align 16, !tbaa !1134
  %294 = fadd <4 x float> %wide.load.20, %wide.load2.20
  %295 = getelementptr inbounds i8, i8* %4, i64 320
  %296 = bitcast i8* %295 to <4 x float>*
  %wide.load3.20 = load <4 x float>, <4 x float>* %296, align 4, !tbaa !1137
  %297 = getelementptr inbounds i8, i8* %5, i64 320
  %298 = bitcast i8* %297 to <4 x float>*
  %wide.load4.20 = load <4 x float>, <4 x float>* %298, align 4, !tbaa !1140
  %299 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %294, <4 x float> %wide.load3.20, <4 x float> %wide.load4.20)
  %300 = fcmp ogt <4 x float> %299, zeroinitializer
  %301 = select <4 x i1> %300, <4 x float> %299, <4 x float> zeroinitializer
  %302 = getelementptr inbounds i8, i8* %2, i64 320
  %303 = bitcast i8* %302 to <4 x float>*
  store <4 x float> %301, <4 x float>* %303, align 4, !tbaa !1143
  %304 = getelementptr inbounds i8, i8* %3, i64 336
  %305 = bitcast i8* %304 to <4 x float>*
  %wide.load.21 = load <4 x float>, <4 x float>* %305, align 4, !tbaa !1131
  %306 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 84
  %307 = bitcast float* %306 to <4 x float>*
  %wide.load2.21 = load <4 x float>, <4 x float>* %307, align 16, !tbaa !1134
  %308 = fadd <4 x float> %wide.load.21, %wide.load2.21
  %309 = getelementptr inbounds i8, i8* %4, i64 336
  %310 = bitcast i8* %309 to <4 x float>*
  %wide.load3.21 = load <4 x float>, <4 x float>* %310, align 4, !tbaa !1137
  %311 = getelementptr inbounds i8, i8* %5, i64 336
  %312 = bitcast i8* %311 to <4 x float>*
  %wide.load4.21 = load <4 x float>, <4 x float>* %312, align 4, !tbaa !1140
  %313 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %308, <4 x float> %wide.load3.21, <4 x float> %wide.load4.21)
  %314 = fcmp ogt <4 x float> %313, zeroinitializer
  %315 = select <4 x i1> %314, <4 x float> %313, <4 x float> zeroinitializer
  %316 = getelementptr inbounds i8, i8* %2, i64 336
  %317 = bitcast i8* %316 to <4 x float>*
  store <4 x float> %315, <4 x float>* %317, align 4, !tbaa !1143
  %318 = getelementptr inbounds i8, i8* %3, i64 352
  %319 = bitcast i8* %318 to <4 x float>*
  %wide.load.22 = load <4 x float>, <4 x float>* %319, align 4, !tbaa !1131
  %320 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 88
  %321 = bitcast float* %320 to <4 x float>*
  %wide.load2.22 = load <4 x float>, <4 x float>* %321, align 16, !tbaa !1134
  %322 = fadd <4 x float> %wide.load.22, %wide.load2.22
  %323 = getelementptr inbounds i8, i8* %4, i64 352
  %324 = bitcast i8* %323 to <4 x float>*
  %wide.load3.22 = load <4 x float>, <4 x float>* %324, align 4, !tbaa !1137
  %325 = getelementptr inbounds i8, i8* %5, i64 352
  %326 = bitcast i8* %325 to <4 x float>*
  %wide.load4.22 = load <4 x float>, <4 x float>* %326, align 4, !tbaa !1140
  %327 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %322, <4 x float> %wide.load3.22, <4 x float> %wide.load4.22)
  %328 = fcmp ogt <4 x float> %327, zeroinitializer
  %329 = select <4 x i1> %328, <4 x float> %327, <4 x float> zeroinitializer
  %330 = getelementptr inbounds i8, i8* %2, i64 352
  %331 = bitcast i8* %330 to <4 x float>*
  store <4 x float> %329, <4 x float>* %331, align 4, !tbaa !1143
  %332 = getelementptr inbounds i8, i8* %3, i64 368
  %333 = bitcast i8* %332 to <4 x float>*
  %wide.load.23 = load <4 x float>, <4 x float>* %333, align 4, !tbaa !1131
  %334 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 92
  %335 = bitcast float* %334 to <4 x float>*
  %wide.load2.23 = load <4 x float>, <4 x float>* %335, align 16, !tbaa !1134
  %336 = fadd <4 x float> %wide.load.23, %wide.load2.23
  %337 = getelementptr inbounds i8, i8* %4, i64 368
  %338 = bitcast i8* %337 to <4 x float>*
  %wide.load3.23 = load <4 x float>, <4 x float>* %338, align 4, !tbaa !1137
  %339 = getelementptr inbounds i8, i8* %5, i64 368
  %340 = bitcast i8* %339 to <4 x float>*
  %wide.load4.23 = load <4 x float>, <4 x float>* %340, align 4, !tbaa !1140
  %341 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %336, <4 x float> %wide.load3.23, <4 x float> %wide.load4.23)
  %342 = fcmp ogt <4 x float> %341, zeroinitializer
  %343 = select <4 x i1> %342, <4 x float> %341, <4 x float> zeroinitializer
  %344 = getelementptr inbounds i8, i8* %2, i64 368
  %345 = bitcast i8* %344 to <4 x float>*
  store <4 x float> %343, <4 x float>* %345, align 4, !tbaa !1143
  %346 = getelementptr inbounds i8, i8* %3, i64 384
  %347 = bitcast i8* %346 to <4 x float>*
  %wide.load.24 = load <4 x float>, <4 x float>* %347, align 4, !tbaa !1131
  %348 = getelementptr inbounds [100 x float], [100 x float]* %6, i64 0, i64 96
  %349 = bitcast float* %348 to <4 x float>*
  %wide.load2.24 = load <4 x float>, <4 x float>* %349, align 16, !tbaa !1134
  %350 = fadd <4 x float> %wide.load.24, %wide.load2.24
  %351 = getelementptr inbounds i8, i8* %4, i64 384
  %352 = bitcast i8* %351 to <4 x float>*
  %wide.load3.24 = load <4 x float>, <4 x float>* %352, align 4, !tbaa !1137
  %353 = getelementptr inbounds i8, i8* %5, i64 384
  %354 = bitcast i8* %353 to <4 x float>*
  %wide.load4.24 = load <4 x float>, <4 x float>* %354, align 4, !tbaa !1140
  %355 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %350, <4 x float> %wide.load3.24, <4 x float> %wide.load4.24)
  %356 = fcmp ogt <4 x float> %355, zeroinitializer
  %357 = select <4 x i1> %356, <4 x float> %355, <4 x float> zeroinitializer
  %358 = getelementptr inbounds i8, i8* %2, i64 384
  %359 = bitcast i8* %358 to <4 x float>*
  store <4 x float> %357, <4 x float>* %359, align 4, !tbaa !1143
  br label %call_fail

call_fail:                                        ; preds = %vector.body, %entry
  %merge = phi i32 [ %13, %entry ], [ 0, %vector.body ]
  ret i32 %merge
}

; Function Attrs: nounwind
define private i32 @__tvm_parallel_lambda.151(i32, %0* nocapture readonly, i8* nocapture readonly) #5 {
entry:
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
  %13 = add nsw i32 %12, 99
  %14 = sdiv i32 %13, %12
  %15 = add nsw i32 %0, 1
  %16 = mul nsw i32 %14, %15
  %17 = icmp slt i32 %16, 100
  %18 = select i1 %17, i32 %16, i32 100
  %19 = mul nsw i32 %14, %0
  %20 = icmp slt i32 %19, 100
  %21 = select i1 %20, i32 %19, i32 100
  %22 = icmp slt i32 %21, %18
  br i1 %22, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %23 = add i32 %21, 1
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, -1
  %26 = sext i32 %18 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_end3
  %indvars.iv7 = phi i64 [ %25, %for_begin1.preheader.preheader ], [ %indvars.iv.next8, %for_end3 ]
  %27 = mul nsw i64 %indvars.iv7, 2704
  br label %for_body2

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_body2:                                        ; preds = %for_body2, %for_begin1.preheader
  %indvars.iv = phi i64 [ 0, %for_begin1.preheader ], [ %indvars.iv.next, %for_body2 ]
  %.06 = phi <16 x float> [ zeroinitializer, %for_begin1.preheader ], [ %36, %for_body2 ]
  %28 = shl nsw i64 %indvars.iv, 4
  %29 = getelementptr inbounds float, float* %4, i64 %28
  %30 = bitcast float* %29 to <16 x float>*
  %31 = load <16 x float>, <16 x float>* %30, align 64, !tbaa !1146
  %32 = add nsw i64 %28, %27
  %33 = getelementptr inbounds float, float* %7, i64 %32
  %34 = bitcast float* %33 to <16 x float>*
  %35 = load <16 x float>, <16 x float>* %34, align 64, !tbaa !1149
  %36 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %31, <16 x float> %35, <16 x float> %.06)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 169
  br i1 %exitcond, label %for_end3, label %for_body2, !prof !41

for_end3:                                         ; preds = %for_body2
  %37 = getelementptr inbounds float, float* %10, i64 %indvars.iv7
  %.0.vec.extract = extractelement <16 x float> %36, i32 0
  %38 = fadd float %.0.vec.extract, 0.000000e+00
  %.4.vec.extract = extractelement <16 x float> %36, i32 1
  %39 = fadd float %.4.vec.extract, %38
  %.8.vec.extract = extractelement <16 x float> %36, i32 2
  %40 = fadd float %.8.vec.extract, %39
  %.12.vec.extract = extractelement <16 x float> %36, i32 3
  %41 = fadd float %.12.vec.extract, %40
  %.16.vec.extract = extractelement <16 x float> %36, i32 4
  %42 = fadd float %.16.vec.extract, %41
  %.20.vec.extract = extractelement <16 x float> %36, i32 5
  %43 = fadd float %.20.vec.extract, %42
  %.24.vec.extract = extractelement <16 x float> %36, i32 6
  %44 = fadd float %.24.vec.extract, %43
  %.28.vec.extract = extractelement <16 x float> %36, i32 7
  %45 = fadd float %.28.vec.extract, %44
  %.32.vec.extract = extractelement <16 x float> %36, i32 8
  %46 = fadd float %.32.vec.extract, %45
  %.36.vec.extract = extractelement <16 x float> %36, i32 9
  %47 = fadd float %.36.vec.extract, %46
  %.40.vec.extract = extractelement <16 x float> %36, i32 10
  %48 = fadd float %.40.vec.extract, %47
  %.44.vec.extract = extractelement <16 x float> %36, i32 11
  %49 = fadd float %.44.vec.extract, %48
  %.48.vec.extract = extractelement <16 x float> %36, i32 12
  %50 = fadd float %.48.vec.extract, %49
  %.52.vec.extract = extractelement <16 x float> %36, i32 13
  %51 = fadd float %.52.vec.extract, %50
  %.56.vec.extract = extractelement <16 x float> %36, i32 14
  %52 = fadd float %.56.vec.extract, %51
  %.60.vec.extract = extractelement <16 x float> %36, i32 15
  %53 = fadd float %.60.vec.extract, %52
  store float %53, float* %37, align 4, !tbaa !1134
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, 1
  %54 = icmp slt i64 %indvars.iv.next8, %26
  br i1 %54, label %for_begin1.preheader, label %for_end, !prof !5
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #6

; Function Attrs: nounwind readnone speculatable
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #1

; Function Attrs: nounwind readnone speculatable
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

attributes #0 = { noinline nounwind }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { noinline norecurse nounwind }
attributes #3 = { noinline }
attributes #4 = { norecurse nounwind }
attributes #5 = { nounwind }
attributes #6 = { argmemonly nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "TVM", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, dwoId: 1)
!1 = !DIFile(filename: "model.tvm", directory: "/tmp/")
!2 = !{}
!3 = !{i32 2, !"tvm_target", !"llvm"}
!4 = !{i32 4, !"Debug Info Version", i32 3}
!5 = !{!"branch_weights", i32 1048576, i32 1}
!6 = !{!7, !7, i64 0}
!7 = !{!"ctx_ptr", !8, i64 0}
!8 = !{!"tvm-tbaa"}
!9 = !{!10, !10, i64 0}
!10 = !{!"0x558f5abe4310.w1.b0", !11, i64 0}
!11 = !{!"0x558f5abe4310.w2.b0", !12, i64 0}
!12 = !{!"0x558f5abe4310.w4.b0", !13, i64 0}
!13 = !{!"0x558f5abe4310.w8.b0", !14, i64 0}
!14 = !{!"0x558f5abe4310.w16.b0", !15, i64 0}
!15 = !{!"0x558f5abe4310.w32.b0", !16, i64 0}
!16 = !{!"0x558f5abe4310.w64.b0", !17, i64 0}
!17 = !{!"0x558f5abe4310.w128.b0", !18, i64 0}
!18 = !{!"0x558f5abe4310.w256.b0", !19, i64 0}
!19 = !{!"0x558f5abe4310.w512.b0", !20, i64 0}
!20 = !{!"0x558f5abe4310.w1024.b0", !21, i64 0}
!21 = !{!"int32", !22, i64 0}
!22 = !{!"0x558f5abe4310", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x558f5abe4310.w1.b1", !11, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"0x558f5a88a940.w1.b0", !27, i64 0}
!27 = !{!"0x558f5a88a940.w2.b0", !28, i64 0}
!28 = !{!"0x558f5a88a940.w4.b0", !29, i64 0}
!29 = !{!"0x558f5a88a940.w8.b0", !30, i64 0}
!30 = !{!"0x558f5a88a940.w16.b0", !31, i64 0}
!31 = !{!"0x558f5a88a940.w32.b0", !32, i64 0}
!32 = !{!"0x558f5a88a940.w64.b0", !33, i64 0}
!33 = !{!"0x558f5a88a940.w128.b0", !34, i64 0}
!34 = !{!"0x558f5a88a940.w256.b0", !35, i64 0}
!35 = !{!"0x558f5a88a940.w512.b0", !36, i64 0}
!36 = !{!"0x558f5a88a940.w1024.b0", !37, i64 0}
!37 = !{!"int64", !38, i64 0}
!38 = !{!"0x558f5a88a940", !8, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"0x558f5a88a940.w1.b1", !27, i64 0}
!41 = !{!"branch_weights", i32 1, i32 1048576}
!42 = !{!43, !43, i64 0}
!43 = !{!"0x558f5aaa4c60.w1.b0", !44, i64 0}
!44 = !{!"0x558f5aaa4c60.w2.b0", !45, i64 0}
!45 = !{!"0x558f5aaa4c60.w4.b0", !46, i64 0}
!46 = !{!"0x558f5aaa4c60.w8.b0", !47, i64 0}
!47 = !{!"0x558f5aaa4c60.w16.b0", !48, i64 0}
!48 = !{!"0x558f5aaa4c60.w32.b0", !49, i64 0}
!49 = !{!"0x558f5aaa4c60.w64.b0", !50, i64 0}
!50 = !{!"0x558f5aaa4c60.w128.b0", !51, i64 0}
!51 = !{!"0x558f5aaa4c60.w256.b0", !52, i64 0}
!52 = !{!"0x558f5aaa4c60.w512.b0", !53, i64 0}
!53 = !{!"0x558f5aaa4c60.w1024.b0", !54, i64 0}
!54 = !{!"int64", !55, i64 0}
!55 = !{!"0x558f5aaa4c60", !8, i64 0}
!56 = !{!57, !57, i64 0}
!57 = !{!"0x558f5aaa4c60.w1.b1", !44, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"0x558f5a8d23e0.w1.b0", !60, i64 0}
!60 = !{!"0x558f5a8d23e0.w2.b0", !61, i64 0}
!61 = !{!"0x558f5a8d23e0.w4.b0", !62, i64 0}
!62 = !{!"0x558f5a8d23e0.w8.b0", !63, i64 0}
!63 = !{!"0x558f5a8d23e0.w16.b0", !64, i64 0}
!64 = !{!"0x558f5a8d23e0.w32.b0", !65, i64 0}
!65 = !{!"0x558f5a8d23e0.w64.b0", !66, i64 0}
!66 = !{!"0x558f5a8d23e0.w128.b0", !67, i64 0}
!67 = !{!"0x558f5a8d23e0.w256.b0", !68, i64 0}
!68 = !{!"0x558f5a8d23e0.w512.b0", !69, i64 0}
!69 = !{!"0x558f5a8d23e0.w1024.b0", !70, i64 0}
!70 = !{!"int64", !71, i64 0}
!71 = !{!"0x558f5a8d23e0", !8, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"0x558f5a8d23e0.w1.b1", !60, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"0x558f5a328680.w1.b0", !76, i64 0}
!76 = !{!"0x558f5a328680.w2.b0", !77, i64 0}
!77 = !{!"0x558f5a328680.w4.b0", !78, i64 0}
!78 = !{!"0x558f5a328680.w8.b0", !79, i64 0}
!79 = !{!"0x558f5a328680.w16.b0", !80, i64 0}
!80 = !{!"0x558f5a328680.w32.b0", !81, i64 0}
!81 = !{!"0x558f5a328680.w64.b0", !82, i64 0}
!82 = !{!"0x558f5a328680.w128.b0", !83, i64 0}
!83 = !{!"0x558f5a328680.w256.b0", !84, i64 0}
!84 = !{!"0x558f5a328680.w512.b0", !85, i64 0}
!85 = !{!"0x558f5a328680.w1024.b0", !86, i64 0}
!86 = !{!"int64", !87, i64 0}
!87 = !{!"0x558f5a328680", !8, i64 0}
!88 = !{!89, !89, i64 0}
!89 = !{!"0x558f5a328680.w1.b1", !76, i64 0}
!90 = !{!91, !91, i64 0}
!91 = !{!"float32", !92, i64 0}
!92 = !{!"0x558f5a91a490", !8, i64 0}
!93 = !{!94, !94, i64 0}
!94 = !{!"float32", !95, i64 0}
!95 = !{!"0x558f5a3ce070", !8, i64 0}
!96 = !{!97, !97, i64 0}
!97 = !{!"0x558f5abcff50.w1.b0", !98, i64 0}
!98 = !{!"0x558f5abcff50.w2.b0", !99, i64 0}
!99 = !{!"0x558f5abcff50.w4.b0", !100, i64 0}
!100 = !{!"0x558f5abcff50.w8.b0", !101, i64 0}
!101 = !{!"0x558f5abcff50.w16.b0", !102, i64 0}
!102 = !{!"0x558f5abcff50.w32.b0", !103, i64 0}
!103 = !{!"0x558f5abcff50.w64.b0", !104, i64 0}
!104 = !{!"0x558f5abcff50.w128.b0", !105, i64 0}
!105 = !{!"0x558f5abcff50.w256.b0", !106, i64 0}
!106 = !{!"0x558f5abcff50.w512.b0", !107, i64 0}
!107 = !{!"0x558f5abcff50.w1024.b0", !108, i64 0}
!108 = !{!"int32", !109, i64 0}
!109 = !{!"0x558f5abcff50", !8, i64 0}
!110 = !{!111, !111, i64 0}
!111 = !{!"0x558f5abcff50.w1.b1", !98, i64 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"0x558f5abd1c60.w1.b0", !114, i64 0}
!114 = !{!"0x558f5abd1c60.w2.b0", !115, i64 0}
!115 = !{!"0x558f5abd1c60.w4.b0", !116, i64 0}
!116 = !{!"0x558f5abd1c60.w8.b0", !117, i64 0}
!117 = !{!"0x558f5abd1c60.w16.b0", !118, i64 0}
!118 = !{!"0x558f5abd1c60.w32.b0", !119, i64 0}
!119 = !{!"0x558f5abd1c60.w64.b0", !120, i64 0}
!120 = !{!"0x558f5abd1c60.w128.b0", !121, i64 0}
!121 = !{!"0x558f5abd1c60.w256.b0", !122, i64 0}
!122 = !{!"0x558f5abd1c60.w512.b0", !123, i64 0}
!123 = !{!"0x558f5abd1c60.w1024.b0", !124, i64 0}
!124 = !{!"int64", !125, i64 0}
!125 = !{!"0x558f5abd1c60", !8, i64 0}
!126 = !{!127, !127, i64 0}
!127 = !{!"0x558f5abd1c60.w1.b1", !114, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"0x558f5abd1c60.w1.b2", !130, i64 0}
!130 = !{!"0x558f5abd1c60.w2.b2", !115, i64 0}
!131 = !{!132, !132, i64 0}
!132 = !{!"0x558f5abd1c60.w1.b3", !130, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"0x558f5abd1c60.w1.b4", !135, i64 0}
!135 = !{!"0x558f5abd1c60.w2.b4", !136, i64 0}
!136 = !{!"0x558f5abd1c60.w4.b4", !116, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"0x558f5abd2070.w4.b0", !139, i64 0}
!139 = !{!"0x558f5abd2070.w8.b0", !140, i64 0}
!140 = !{!"0x558f5abd2070.w16.b0", !141, i64 0}
!141 = !{!"0x558f5abd2070.w32.b0", !142, i64 0}
!142 = !{!"0x558f5abd2070.w64.b0", !143, i64 0}
!143 = !{!"0x558f5abd2070.w128.b0", !144, i64 0}
!144 = !{!"0x558f5abd2070.w256.b0", !145, i64 0}
!145 = !{!"0x558f5abd2070.w512.b0", !146, i64 0}
!146 = !{!"0x558f5abd2070.w1024.b0", !147, i64 0}
!147 = !{!"int64", !148, i64 0}
!148 = !{!"0x558f5abd2070", !8, i64 0}
!149 = !{!150, !150, i64 0}
!150 = !{!"0x558f5abd2070.w1.b4", !151, i64 0}
!151 = !{!"0x558f5abd2070.w2.b4", !152, i64 0}
!152 = !{!"0x558f5abd2070.w4.b4", !139, i64 0}
!153 = !{!154, !154, i64 0}
!154 = !{!"0x558f5abd23c0.w1.b0", !155, i64 0}
!155 = !{!"0x558f5abd23c0.w2.b0", !156, i64 0}
!156 = !{!"0x558f5abd23c0.w4.b0", !157, i64 0}
!157 = !{!"0x558f5abd23c0.w8.b0", !158, i64 0}
!158 = !{!"0x558f5abd23c0.w16.b0", !159, i64 0}
!159 = !{!"0x558f5abd23c0.w32.b0", !160, i64 0}
!160 = !{!"0x558f5abd23c0.w64.b0", !161, i64 0}
!161 = !{!"0x558f5abd23c0.w128.b0", !162, i64 0}
!162 = !{!"0x558f5abd23c0.w256.b0", !163, i64 0}
!163 = !{!"0x558f5abd23c0.w512.b0", !164, i64 0}
!164 = !{!"0x558f5abd23c0.w1024.b0", !165, i64 0}
!165 = !{!"int64", !166, i64 0}
!166 = !{!"0x558f5abd23c0", !8, i64 0}
!167 = !{!168, !168, i64 0}
!168 = !{!"0x558f5abd23c0.w1.b1", !155, i64 0}
!169 = !{!170, !170, i64 0}
!170 = !{!"0x558f5abd1e30.w1.b0", !171, i64 0}
!171 = !{!"0x558f5abd1e30.w2.b0", !172, i64 0}
!172 = !{!"0x558f5abd1e30.w4.b0", !173, i64 0}
!173 = !{!"0x558f5abd1e30.w8.b0", !174, i64 0}
!174 = !{!"0x558f5abd1e30.w16.b0", !175, i64 0}
!175 = !{!"0x558f5abd1e30.w32.b0", !176, i64 0}
!176 = !{!"0x558f5abd1e30.w64.b0", !177, i64 0}
!177 = !{!"0x558f5abd1e30.w128.b0", !178, i64 0}
!178 = !{!"0x558f5abd1e30.w256.b0", !179, i64 0}
!179 = !{!"0x558f5abd1e30.w512.b0", !180, i64 0}
!180 = !{!"0x558f5abd1e30.w1024.b0", !181, i64 0}
!181 = !{!"int64", !182, i64 0}
!182 = !{!"0x558f5abd1e30", !8, i64 0}
!183 = !{!184, !184, i64 0}
!184 = !{!"0x558f5abd1e30.w1.b1", !171, i64 0}
!185 = !{!186, !186, i64 0}
!186 = !{!"float32", !187, i64 0}
!187 = !{!"0x558f5abca7d0", !8, i64 0}
!188 = !{!189, !189, i64 0}
!189 = !{!"float32", !190, i64 0}
!190 = !{!"0x558f5ab51210", !8, i64 0}
!191 = !{!192, !192, i64 0}
!192 = !{!"0x558f5ab3fbe0.w1.b0", !193, i64 0}
!193 = !{!"0x558f5ab3fbe0.w2.b0", !194, i64 0}
!194 = !{!"0x558f5ab3fbe0.w4.b0", !195, i64 0}
!195 = !{!"0x558f5ab3fbe0.w8.b0", !196, i64 0}
!196 = !{!"0x558f5ab3fbe0.w16.b0", !197, i64 0}
!197 = !{!"0x558f5ab3fbe0.w32.b0", !198, i64 0}
!198 = !{!"0x558f5ab3fbe0.w64.b0", !199, i64 0}
!199 = !{!"0x558f5ab3fbe0.w128.b0", !200, i64 0}
!200 = !{!"0x558f5ab3fbe0.w256.b0", !201, i64 0}
!201 = !{!"0x558f5ab3fbe0.w512.b0", !202, i64 0}
!202 = !{!"0x558f5ab3fbe0.w1024.b0", !203, i64 0}
!203 = !{!"int32", !204, i64 0}
!204 = !{!"0x558f5ab3fbe0", !8, i64 0}
!205 = !{!206, !206, i64 0}
!206 = !{!"0x558f5ab3fbe0.w1.b1", !193, i64 0}
!207 = !{!208, !208, i64 0}
!208 = !{!"0x558f5ac0a730.w1.b0", !209, i64 0}
!209 = !{!"0x558f5ac0a730.w2.b0", !210, i64 0}
!210 = !{!"0x558f5ac0a730.w4.b0", !211, i64 0}
!211 = !{!"0x558f5ac0a730.w8.b0", !212, i64 0}
!212 = !{!"0x558f5ac0a730.w16.b0", !213, i64 0}
!213 = !{!"0x558f5ac0a730.w32.b0", !214, i64 0}
!214 = !{!"0x558f5ac0a730.w64.b0", !215, i64 0}
!215 = !{!"0x558f5ac0a730.w128.b0", !216, i64 0}
!216 = !{!"0x558f5ac0a730.w256.b0", !217, i64 0}
!217 = !{!"0x558f5ac0a730.w512.b0", !218, i64 0}
!218 = !{!"0x558f5ac0a730.w1024.b0", !219, i64 0}
!219 = !{!"int64", !220, i64 0}
!220 = !{!"0x558f5ac0a730", !8, i64 0}
!221 = !{!222, !222, i64 0}
!222 = !{!"0x558f5ac0a730.w1.b1", !209, i64 0}
!223 = !{!224, !224, i64 0}
!224 = !{!"0x558f5ac0a730.w1.b2", !225, i64 0}
!225 = !{!"0x558f5ac0a730.w2.b2", !210, i64 0}
!226 = !{!227, !227, i64 0}
!227 = !{!"0x558f5ac0a730.w1.b3", !225, i64 0}
!228 = !{!229, !229, i64 0}
!229 = !{!"0x558f5ac0a730.w1.b4", !230, i64 0}
!230 = !{!"0x558f5ac0a730.w2.b4", !231, i64 0}
!231 = !{!"0x558f5ac0a730.w4.b4", !211, i64 0}
!232 = !{!233, !233, i64 0}
!233 = !{!"0x558f5ac0acf0.w4.b0", !234, i64 0}
!234 = !{!"0x558f5ac0acf0.w8.b0", !235, i64 0}
!235 = !{!"0x558f5ac0acf0.w16.b0", !236, i64 0}
!236 = !{!"0x558f5ac0acf0.w32.b0", !237, i64 0}
!237 = !{!"0x558f5ac0acf0.w64.b0", !238, i64 0}
!238 = !{!"0x558f5ac0acf0.w128.b0", !239, i64 0}
!239 = !{!"0x558f5ac0acf0.w256.b0", !240, i64 0}
!240 = !{!"0x558f5ac0acf0.w512.b0", !241, i64 0}
!241 = !{!"0x558f5ac0acf0.w1024.b0", !242, i64 0}
!242 = !{!"int64", !243, i64 0}
!243 = !{!"0x558f5ac0acf0", !8, i64 0}
!244 = !{!245, !245, i64 0}
!245 = !{!"0x558f5ac0acf0.w1.b4", !246, i64 0}
!246 = !{!"0x558f5ac0acf0.w2.b4", !247, i64 0}
!247 = !{!"0x558f5ac0acf0.w4.b4", !234, i64 0}
!248 = !{!249, !249, i64 0}
!249 = !{!"0x558f5ac0af40.w1.b0", !250, i64 0}
!250 = !{!"0x558f5ac0af40.w2.b0", !251, i64 0}
!251 = !{!"0x558f5ac0af40.w4.b0", !252, i64 0}
!252 = !{!"0x558f5ac0af40.w8.b0", !253, i64 0}
!253 = !{!"0x558f5ac0af40.w16.b0", !254, i64 0}
!254 = !{!"0x558f5ac0af40.w32.b0", !255, i64 0}
!255 = !{!"0x558f5ac0af40.w64.b0", !256, i64 0}
!256 = !{!"0x558f5ac0af40.w128.b0", !257, i64 0}
!257 = !{!"0x558f5ac0af40.w256.b0", !258, i64 0}
!258 = !{!"0x558f5ac0af40.w512.b0", !259, i64 0}
!259 = !{!"0x558f5ac0af40.w1024.b0", !260, i64 0}
!260 = !{!"int64", !261, i64 0}
!261 = !{!"0x558f5ac0af40", !8, i64 0}
!262 = !{!263, !263, i64 0}
!263 = !{!"0x558f5ac0af40.w1.b1", !250, i64 0}
!264 = !{!265, !265, i64 0}
!265 = !{!"0x558f5ac0af40.w1.b2", !266, i64 0}
!266 = !{!"0x558f5ac0af40.w2.b2", !251, i64 0}
!267 = !{!268, !268, i64 0}
!268 = !{!"0x558f5ac0af40.w1.b3", !266, i64 0}
!269 = !{!270, !270, i64 0}
!270 = !{!"0x558f5ac0af40.w1.b4", !271, i64 0}
!271 = !{!"0x558f5ac0af40.w2.b4", !272, i64 0}
!272 = !{!"0x558f5ac0af40.w4.b4", !252, i64 0}
!273 = !{!274, !274, i64 0}
!274 = !{!"0x558f5ac0a960.w4.b0", !275, i64 0}
!275 = !{!"0x558f5ac0a960.w8.b0", !276, i64 0}
!276 = !{!"0x558f5ac0a960.w16.b0", !277, i64 0}
!277 = !{!"0x558f5ac0a960.w32.b0", !278, i64 0}
!278 = !{!"0x558f5ac0a960.w64.b0", !279, i64 0}
!279 = !{!"0x558f5ac0a960.w128.b0", !280, i64 0}
!280 = !{!"0x558f5ac0a960.w256.b0", !281, i64 0}
!281 = !{!"0x558f5ac0a960.w512.b0", !282, i64 0}
!282 = !{!"0x558f5ac0a960.w1024.b0", !283, i64 0}
!283 = !{!"int64", !284, i64 0}
!284 = !{!"0x558f5ac0a960", !8, i64 0}
!285 = !{!286, !286, i64 0}
!286 = !{!"0x558f5ac0a960.w1.b4", !287, i64 0}
!287 = !{!"0x558f5ac0a960.w2.b4", !288, i64 0}
!288 = !{!"0x558f5ac0a960.w4.b4", !275, i64 0}
!289 = !{!290, !290, i64 0}
!290 = !{!"float32", !291, i64 0}
!291 = !{!"0x558f5abd1b70", !8, i64 0}
!292 = !{!293, !293, i64 0}
!293 = !{!"float32", !294, i64 0}
!294 = !{!"0x558f5abcfd10", !8, i64 0}
!295 = !{!296, !296, i64 0}
!296 = !{!"0x558f5abf3bd0.w1.b0", !297, i64 0}
!297 = !{!"0x558f5abf3bd0.w2.b0", !298, i64 0}
!298 = !{!"0x558f5abf3bd0.w4.b0", !299, i64 0}
!299 = !{!"0x558f5abf3bd0.w8.b0", !300, i64 0}
!300 = !{!"0x558f5abf3bd0.w16.b0", !301, i64 0}
!301 = !{!"0x558f5abf3bd0.w32.b0", !302, i64 0}
!302 = !{!"0x558f5abf3bd0.w64.b0", !303, i64 0}
!303 = !{!"0x558f5abf3bd0.w128.b0", !304, i64 0}
!304 = !{!"0x558f5abf3bd0.w256.b0", !305, i64 0}
!305 = !{!"0x558f5abf3bd0.w512.b0", !306, i64 0}
!306 = !{!"0x558f5abf3bd0.w1024.b0", !307, i64 0}
!307 = !{!"int32", !308, i64 0}
!308 = !{!"0x558f5abf3bd0", !8, i64 0}
!309 = !{!310, !310, i64 0}
!310 = !{!"0x558f5abf3bd0.w1.b2", !311, i64 0}
!311 = !{!"0x558f5abf3bd0.w2.b2", !298, i64 0}
!312 = !{!313, !313, i64 0}
!313 = !{!"0x558f5abf3bd0.w1.b3", !311, i64 0}
!314 = !{!315, !315, i64 0}
!315 = !{!"0x558f5abf3bd0.w1.b1", !297, i64 0}
!316 = !{!317, !317, i64 0}
!317 = !{!"0x558f5abf4310.w1.b0", !318, i64 0}
!318 = !{!"0x558f5abf4310.w2.b0", !319, i64 0}
!319 = !{!"0x558f5abf4310.w4.b0", !320, i64 0}
!320 = !{!"0x558f5abf4310.w8.b0", !321, i64 0}
!321 = !{!"0x558f5abf4310.w16.b0", !322, i64 0}
!322 = !{!"0x558f5abf4310.w32.b0", !323, i64 0}
!323 = !{!"0x558f5abf4310.w64.b0", !324, i64 0}
!324 = !{!"0x558f5abf4310.w128.b0", !325, i64 0}
!325 = !{!"0x558f5abf4310.w256.b0", !326, i64 0}
!326 = !{!"0x558f5abf4310.w512.b0", !327, i64 0}
!327 = !{!"0x558f5abf4310.w1024.b0", !328, i64 0}
!328 = !{!"int64", !329, i64 0}
!329 = !{!"0x558f5abf4310", !8, i64 0}
!330 = !{!331, !331, i64 0}
!331 = !{!"0x558f5abf4310.w1.b1", !318, i64 0}
!332 = !{!333, !333, i64 0}
!333 = !{!"0x558f5abf4310.w1.b2", !334, i64 0}
!334 = !{!"0x558f5abf4310.w2.b2", !319, i64 0}
!335 = !{!336, !336, i64 0}
!336 = !{!"0x558f5abf4310.w1.b3", !334, i64 0}
!337 = !{!338, !338, i64 0}
!338 = !{!"0x558f5abf4310.w1.b4", !339, i64 0}
!339 = !{!"0x558f5abf4310.w2.b4", !340, i64 0}
!340 = !{!"0x558f5abf4310.w4.b4", !320, i64 0}
!341 = !{!342, !342, i64 0}
!342 = !{!"0x558f5abf68f0.w4.b0", !343, i64 0}
!343 = !{!"0x558f5abf68f0.w8.b0", !344, i64 0}
!344 = !{!"0x558f5abf68f0.w16.b0", !345, i64 0}
!345 = !{!"0x558f5abf68f0.w32.b0", !346, i64 0}
!346 = !{!"0x558f5abf68f0.w64.b0", !347, i64 0}
!347 = !{!"0x558f5abf68f0.w128.b0", !348, i64 0}
!348 = !{!"0x558f5abf68f0.w256.b0", !349, i64 0}
!349 = !{!"0x558f5abf68f0.w512.b0", !350, i64 0}
!350 = !{!"0x558f5abf68f0.w1024.b0", !351, i64 0}
!351 = !{!"int64", !352, i64 0}
!352 = !{!"0x558f5abf68f0", !8, i64 0}
!353 = !{!354, !354, i64 0}
!354 = !{!"0x558f5abf68f0.w1.b4", !355, i64 0}
!355 = !{!"0x558f5abf68f0.w2.b4", !356, i64 0}
!356 = !{!"0x558f5abf68f0.w4.b4", !343, i64 0}
!357 = !{!358, !358, i64 0}
!358 = !{!"0x558f5abf7860.w1.b0", !359, i64 0}
!359 = !{!"0x558f5abf7860.w2.b0", !360, i64 0}
!360 = !{!"0x558f5abf7860.w4.b0", !361, i64 0}
!361 = !{!"0x558f5abf7860.w8.b0", !362, i64 0}
!362 = !{!"0x558f5abf7860.w16.b0", !363, i64 0}
!363 = !{!"0x558f5abf7860.w32.b0", !364, i64 0}
!364 = !{!"0x558f5abf7860.w64.b0", !365, i64 0}
!365 = !{!"0x558f5abf7860.w128.b0", !366, i64 0}
!366 = !{!"0x558f5abf7860.w256.b0", !367, i64 0}
!367 = !{!"0x558f5abf7860.w512.b0", !368, i64 0}
!368 = !{!"0x558f5abf7860.w1024.b0", !369, i64 0}
!369 = !{!"int64", !370, i64 0}
!370 = !{!"0x558f5abf7860", !8, i64 0}
!371 = !{!372, !372, i64 0}
!372 = !{!"0x558f5abf7860.w1.b1", !359, i64 0}
!373 = !{!374, !374, i64 0}
!374 = !{!"0x558f5abf7860.w1.b2", !375, i64 0}
!375 = !{!"0x558f5abf7860.w2.b2", !360, i64 0}
!376 = !{!377, !377, i64 0}
!377 = !{!"0x558f5abf7860.w1.b3", !375, i64 0}
!378 = !{!379, !379, i64 0}
!379 = !{!"0x558f5abf7860.w1.b4", !380, i64 0}
!380 = !{!"0x558f5abf7860.w2.b4", !381, i64 0}
!381 = !{!"0x558f5abf7860.w4.b4", !361, i64 0}
!382 = !{!383, !383, i64 0}
!383 = !{!"0x558f5abf7860.w1.b5", !380, i64 0}
!384 = !{!385, !385, i64 0}
!385 = !{!"0x558f5abf5270.w4.b0", !386, i64 0}
!386 = !{!"0x558f5abf5270.w8.b0", !387, i64 0}
!387 = !{!"0x558f5abf5270.w16.b0", !388, i64 0}
!388 = !{!"0x558f5abf5270.w32.b0", !389, i64 0}
!389 = !{!"0x558f5abf5270.w64.b0", !390, i64 0}
!390 = !{!"0x558f5abf5270.w128.b0", !391, i64 0}
!391 = !{!"0x558f5abf5270.w256.b0", !392, i64 0}
!392 = !{!"0x558f5abf5270.w512.b0", !393, i64 0}
!393 = !{!"0x558f5abf5270.w1024.b0", !394, i64 0}
!394 = !{!"int64", !395, i64 0}
!395 = !{!"0x558f5abf5270", !8, i64 0}
!396 = !{!397, !397, i64 0}
!397 = !{!"0x558f5abf5270.w1.b4", !398, i64 0}
!398 = !{!"0x558f5abf5270.w2.b4", !399, i64 0}
!399 = !{!"0x558f5abf5270.w4.b4", !386, i64 0}
!400 = !{!401, !401, i64 0}
!401 = !{!"0x558f5abf5270.w1.b5", !398, i64 0}
!402 = !{!403, !403, i64 0}
!403 = !{!"0x558f5abf1cb0.w1.b0", !404, i64 0}
!404 = !{!"0x558f5abf1cb0.w2.b0", !405, i64 0}
!405 = !{!"0x558f5abf1cb0.w4.b0", !406, i64 0}
!406 = !{!"0x558f5abf1cb0.w8.b0", !407, i64 0}
!407 = !{!"0x558f5abf1cb0.w16.b0", !408, i64 0}
!408 = !{!"0x558f5abf1cb0.w32.b0", !409, i64 0}
!409 = !{!"0x558f5abf1cb0.w64.b0", !410, i64 0}
!410 = !{!"0x558f5abf1cb0.w128.b0", !411, i64 0}
!411 = !{!"0x558f5abf1cb0.w256.b0", !412, i64 0}
!412 = !{!"0x558f5abf1cb0.w512.b0", !413, i64 0}
!413 = !{!"0x558f5abf1cb0.w1024.b0", !414, i64 0}
!414 = !{!"int64", !415, i64 0}
!415 = !{!"0x558f5abf1cb0", !8, i64 0}
!416 = !{!417, !417, i64 0}
!417 = !{!"0x558f5abf1cb0.w1.b1", !404, i64 0}
!418 = !{!419, !419, i64 0}
!419 = !{!"0x558f5abf1cb0.w1.b2", !420, i64 0}
!420 = !{!"0x558f5abf1cb0.w2.b2", !405, i64 0}
!421 = !{!422, !422, i64 0}
!422 = !{!"0x558f5abf1cb0.w1.b3", !420, i64 0}
!423 = !{!424, !424, i64 0}
!424 = !{!"0x558f5abf1cb0.w1.b4", !425, i64 0}
!425 = !{!"0x558f5abf1cb0.w2.b4", !426, i64 0}
!426 = !{!"0x558f5abf1cb0.w4.b4", !406, i64 0}
!427 = !{!428, !428, i64 0}
!428 = !{!"0x558f5abf3430.w4.b0", !429, i64 0}
!429 = !{!"0x558f5abf3430.w8.b0", !430, i64 0}
!430 = !{!"0x558f5abf3430.w16.b0", !431, i64 0}
!431 = !{!"0x558f5abf3430.w32.b0", !432, i64 0}
!432 = !{!"0x558f5abf3430.w64.b0", !433, i64 0}
!433 = !{!"0x558f5abf3430.w128.b0", !434, i64 0}
!434 = !{!"0x558f5abf3430.w256.b0", !435, i64 0}
!435 = !{!"0x558f5abf3430.w512.b0", !436, i64 0}
!436 = !{!"0x558f5abf3430.w1024.b0", !437, i64 0}
!437 = !{!"int64", !438, i64 0}
!438 = !{!"0x558f5abf3430", !8, i64 0}
!439 = !{!440, !440, i64 0}
!440 = !{!"0x558f5abf3430.w1.b4", !441, i64 0}
!441 = !{!"0x558f5abf3430.w2.b4", !442, i64 0}
!442 = !{!"0x558f5abf3430.w4.b4", !429, i64 0}
!443 = !{!444, !444, i64 0}
!444 = !{!"0x558f5abe9680.w1.b0", !445, i64 0}
!445 = !{!"0x558f5abe9680.w2.b0", !446, i64 0}
!446 = !{!"0x558f5abe9680.w4.b0", !447, i64 0}
!447 = !{!"0x558f5abe9680.w8.b0", !448, i64 0}
!448 = !{!"0x558f5abe9680.w16.b0", !449, i64 0}
!449 = !{!"0x558f5abe9680.w32.b0", !450, i64 0}
!450 = !{!"0x558f5abe9680.w64.b0", !451, i64 0}
!451 = !{!"0x558f5abe9680.w128.b0", !452, i64 0}
!452 = !{!"0x558f5abe9680.w256.b0", !453, i64 0}
!453 = !{!"0x558f5abe9680.w512.b0", !454, i64 0}
!454 = !{!"0x558f5abe9680.w1024.b0", !455, i64 0}
!455 = !{!"int64", !456, i64 0}
!456 = !{!"0x558f5abe9680", !8, i64 0}
!457 = !{!458, !458, i64 0}
!458 = !{!"0x558f5abe9680.w1.b1", !445, i64 0}
!459 = !{!460, !460, i64 0}
!460 = !{!"0x558f5abe9680.w1.b2", !461, i64 0}
!461 = !{!"0x558f5abe9680.w2.b2", !446, i64 0}
!462 = !{!463, !463, i64 0}
!463 = !{!"0x558f5abe9680.w1.b3", !461, i64 0}
!464 = !{!465, !465, i64 0}
!465 = !{!"0x558f5abe9680.w1.b4", !466, i64 0}
!466 = !{!"0x558f5abe9680.w2.b4", !467, i64 0}
!467 = !{!"0x558f5abe9680.w4.b4", !447, i64 0}
!468 = !{!469, !469, i64 0}
!469 = !{!"0x558f5abe96d0.w4.b0", !470, i64 0}
!470 = !{!"0x558f5abe96d0.w8.b0", !471, i64 0}
!471 = !{!"0x558f5abe96d0.w16.b0", !472, i64 0}
!472 = !{!"0x558f5abe96d0.w32.b0", !473, i64 0}
!473 = !{!"0x558f5abe96d0.w64.b0", !474, i64 0}
!474 = !{!"0x558f5abe96d0.w128.b0", !475, i64 0}
!475 = !{!"0x558f5abe96d0.w256.b0", !476, i64 0}
!476 = !{!"0x558f5abe96d0.w512.b0", !477, i64 0}
!477 = !{!"0x558f5abe96d0.w1024.b0", !478, i64 0}
!478 = !{!"int64", !479, i64 0}
!479 = !{!"0x558f5abe96d0", !8, i64 0}
!480 = !{!481, !481, i64 0}
!481 = !{!"0x558f5abe96d0.w1.b4", !482, i64 0}
!482 = !{!"0x558f5abe96d0.w2.b4", !483, i64 0}
!483 = !{!"0x558f5abe96d0.w4.b4", !470, i64 0}
!484 = !{!485, !485, i64 0}
!485 = !{!"0x558f5ac016e0.w8.b0", !486, i64 0}
!486 = !{!"0x558f5ac016e0.w16.b0", !487, i64 0}
!487 = !{!"0x558f5ac016e0.w32.b0", !488, i64 0}
!488 = !{!"0x558f5ac016e0.w64.b0", !489, i64 0}
!489 = !{!"0x558f5ac016e0.w128.b0", !490, i64 0}
!490 = !{!"0x558f5ac016e0.w256.b0", !491, i64 0}
!491 = !{!"0x558f5ac016e0.w512.b0", !492, i64 0}
!492 = !{!"0x558f5ac016e0.w1024.b0", !493, i64 0}
!493 = !{!"float32", !494, i64 0}
!494 = !{!"0x558f5ac016e0", !8, i64 0}
!495 = !{!496, !496, i64 0}
!496 = !{!"float32", !497, i64 0}
!497 = !{!"0x558f5abf2090", !8, i64 0}
!498 = !{!499, !499, i64 0}
!499 = !{!"float32", !500, i64 0}
!500 = !{!"0x558f5abf2010", !8, i64 0}
!501 = !{!493, !493, i64 0}
!502 = !{!503, !503, i64 0}
!503 = !{!"float32", !504, i64 0}
!504 = !{!"0x558f5abf2ab0", !8, i64 0}
!505 = !{!506, !506, i64 0}
!506 = !{!"float32", !507, i64 0}
!507 = !{!"0x558f5abf28c0", !8, i64 0}
!508 = !{!509, !509, i64 0}
!509 = !{!"0x558f5abde620.w1.b0", !510, i64 0}
!510 = !{!"0x558f5abde620.w2.b0", !511, i64 0}
!511 = !{!"0x558f5abde620.w4.b0", !512, i64 0}
!512 = !{!"0x558f5abde620.w8.b0", !513, i64 0}
!513 = !{!"0x558f5abde620.w16.b0", !514, i64 0}
!514 = !{!"0x558f5abde620.w32.b0", !515, i64 0}
!515 = !{!"0x558f5abde620.w64.b0", !516, i64 0}
!516 = !{!"0x558f5abde620.w128.b0", !517, i64 0}
!517 = !{!"0x558f5abde620.w256.b0", !518, i64 0}
!518 = !{!"0x558f5abde620.w512.b0", !519, i64 0}
!519 = !{!"0x558f5abde620.w1024.b0", !520, i64 0}
!520 = !{!"int32", !521, i64 0}
!521 = !{!"0x558f5abde620", !8, i64 0}
!522 = !{!523, !523, i64 0}
!523 = !{!"0x558f5abde620.w1.b2", !524, i64 0}
!524 = !{!"0x558f5abde620.w2.b2", !511, i64 0}
!525 = !{!526, !526, i64 0}
!526 = !{!"0x558f5abde620.w1.b3", !524, i64 0}
!527 = !{!528, !528, i64 0}
!528 = !{!"0x558f5abde620.w1.b1", !510, i64 0}
!529 = !{!530, !530, i64 0}
!530 = !{!"0x558f5a644b10.w1.b0", !531, i64 0}
!531 = !{!"0x558f5a644b10.w2.b0", !532, i64 0}
!532 = !{!"0x558f5a644b10.w4.b0", !533, i64 0}
!533 = !{!"0x558f5a644b10.w8.b0", !534, i64 0}
!534 = !{!"0x558f5a644b10.w16.b0", !535, i64 0}
!535 = !{!"0x558f5a644b10.w32.b0", !536, i64 0}
!536 = !{!"0x558f5a644b10.w64.b0", !537, i64 0}
!537 = !{!"0x558f5a644b10.w128.b0", !538, i64 0}
!538 = !{!"0x558f5a644b10.w256.b0", !539, i64 0}
!539 = !{!"0x558f5a644b10.w512.b0", !540, i64 0}
!540 = !{!"0x558f5a644b10.w1024.b0", !541, i64 0}
!541 = !{!"int64", !542, i64 0}
!542 = !{!"0x558f5a644b10", !8, i64 0}
!543 = !{!544, !544, i64 0}
!544 = !{!"0x558f5a644b10.w1.b1", !531, i64 0}
!545 = !{!546, !546, i64 0}
!546 = !{!"0x558f5a644b60.w1.b0", !547, i64 0}
!547 = !{!"0x558f5a644b60.w2.b0", !548, i64 0}
!548 = !{!"0x558f5a644b60.w4.b0", !549, i64 0}
!549 = !{!"0x558f5a644b60.w8.b0", !550, i64 0}
!550 = !{!"0x558f5a644b60.w16.b0", !551, i64 0}
!551 = !{!"0x558f5a644b60.w32.b0", !552, i64 0}
!552 = !{!"0x558f5a644b60.w64.b0", !553, i64 0}
!553 = !{!"0x558f5a644b60.w128.b0", !554, i64 0}
!554 = !{!"0x558f5a644b60.w256.b0", !555, i64 0}
!555 = !{!"0x558f5a644b60.w512.b0", !556, i64 0}
!556 = !{!"0x558f5a644b60.w1024.b0", !557, i64 0}
!557 = !{!"int64", !558, i64 0}
!558 = !{!"0x558f5a644b60", !8, i64 0}
!559 = !{!560, !560, i64 0}
!560 = !{!"0x558f5a644b60.w1.b1", !547, i64 0}
!561 = !{!562, !562, i64 0}
!562 = !{!"0x558f5ab08e10.w1.b0", !563, i64 0}
!563 = !{!"0x558f5ab08e10.w2.b0", !564, i64 0}
!564 = !{!"0x558f5ab08e10.w4.b0", !565, i64 0}
!565 = !{!"0x558f5ab08e10.w8.b0", !566, i64 0}
!566 = !{!"0x558f5ab08e10.w16.b0", !567, i64 0}
!567 = !{!"0x558f5ab08e10.w32.b0", !568, i64 0}
!568 = !{!"0x558f5ab08e10.w64.b0", !569, i64 0}
!569 = !{!"0x558f5ab08e10.w128.b0", !570, i64 0}
!570 = !{!"0x558f5ab08e10.w256.b0", !571, i64 0}
!571 = !{!"0x558f5ab08e10.w512.b0", !572, i64 0}
!572 = !{!"0x558f5ab08e10.w1024.b0", !573, i64 0}
!573 = !{!"int64", !574, i64 0}
!574 = !{!"0x558f5ab08e10", !8, i64 0}
!575 = !{!576, !576, i64 0}
!576 = !{!"0x558f5ab08e10.w1.b1", !563, i64 0}
!577 = !{!578, !578, i64 0}
!578 = !{!"0x558f5a644e00.w1.b0", !579, i64 0}
!579 = !{!"0x558f5a644e00.w2.b0", !580, i64 0}
!580 = !{!"0x558f5a644e00.w4.b0", !581, i64 0}
!581 = !{!"0x558f5a644e00.w8.b0", !582, i64 0}
!582 = !{!"0x558f5a644e00.w16.b0", !583, i64 0}
!583 = !{!"0x558f5a644e00.w32.b0", !584, i64 0}
!584 = !{!"0x558f5a644e00.w64.b0", !585, i64 0}
!585 = !{!"0x558f5a644e00.w128.b0", !586, i64 0}
!586 = !{!"0x558f5a644e00.w256.b0", !587, i64 0}
!587 = !{!"0x558f5a644e00.w512.b0", !588, i64 0}
!588 = !{!"0x558f5a644e00.w1024.b0", !589, i64 0}
!589 = !{!"int64", !590, i64 0}
!590 = !{!"0x558f5a644e00", !8, i64 0}
!591 = !{!592, !592, i64 0}
!592 = !{!"0x558f5a644e00.w1.b1", !579, i64 0}
!593 = !{!594, !594, i64 0}
!594 = !{!"0x558f5ab4ecf0.w1.b0", !595, i64 0}
!595 = !{!"0x558f5ab4ecf0.w2.b0", !596, i64 0}
!596 = !{!"0x558f5ab4ecf0.w4.b0", !597, i64 0}
!597 = !{!"0x558f5ab4ecf0.w8.b0", !598, i64 0}
!598 = !{!"0x558f5ab4ecf0.w16.b0", !599, i64 0}
!599 = !{!"0x558f5ab4ecf0.w32.b0", !600, i64 0}
!600 = !{!"0x558f5ab4ecf0.w64.b0", !601, i64 0}
!601 = !{!"0x558f5ab4ecf0.w128.b0", !602, i64 0}
!602 = !{!"0x558f5ab4ecf0.w256.b0", !603, i64 0}
!603 = !{!"0x558f5ab4ecf0.w512.b0", !604, i64 0}
!604 = !{!"0x558f5ab4ecf0.w1024.b0", !605, i64 0}
!605 = !{!"int64", !606, i64 0}
!606 = !{!"0x558f5ab4ecf0", !8, i64 0}
!607 = !{!608, !608, i64 0}
!608 = !{!"0x558f5ab4ed40.w1.b0", !609, i64 0}
!609 = !{!"0x558f5ab4ed40.w2.b0", !610, i64 0}
!610 = !{!"0x558f5ab4ed40.w4.b0", !611, i64 0}
!611 = !{!"0x558f5ab4ed40.w8.b0", !612, i64 0}
!612 = !{!"0x558f5ab4ed40.w16.b0", !613, i64 0}
!613 = !{!"0x558f5ab4ed40.w32.b0", !614, i64 0}
!614 = !{!"0x558f5ab4ed40.w64.b0", !615, i64 0}
!615 = !{!"0x558f5ab4ed40.w128.b0", !616, i64 0}
!616 = !{!"0x558f5ab4ed40.w256.b0", !617, i64 0}
!617 = !{!"0x558f5ab4ed40.w512.b0", !618, i64 0}
!618 = !{!"0x558f5ab4ed40.w1024.b0", !619, i64 0}
!619 = !{!"int64", !620, i64 0}
!620 = !{!"0x558f5ab4ed40", !8, i64 0}
!621 = !{!622, !622, i64 0}
!622 = !{!"0x558f5abcb120.w1.b0", !623, i64 0}
!623 = !{!"0x558f5abcb120.w2.b0", !624, i64 0}
!624 = !{!"0x558f5abcb120.w4.b0", !625, i64 0}
!625 = !{!"0x558f5abcb120.w8.b0", !626, i64 0}
!626 = !{!"0x558f5abcb120.w16.b0", !627, i64 0}
!627 = !{!"0x558f5abcb120.w32.b0", !628, i64 0}
!628 = !{!"0x558f5abcb120.w64.b0", !629, i64 0}
!629 = !{!"0x558f5abcb120.w128.b0", !630, i64 0}
!630 = !{!"0x558f5abcb120.w256.b0", !631, i64 0}
!631 = !{!"0x558f5abcb120.w512.b0", !632, i64 0}
!632 = !{!"0x558f5abcb120.w1024.b0", !633, i64 0}
!633 = !{!"int64", !634, i64 0}
!634 = !{!"0x558f5abcb120", !8, i64 0}
!635 = !{!636, !636, i64 0}
!636 = !{!"0x558f5abcb120.w1.b1", !623, i64 0}
!637 = !{!638, !638, i64 0}
!638 = !{!"0x558f5abcb170.w1.b0", !639, i64 0}
!639 = !{!"0x558f5abcb170.w2.b0", !640, i64 0}
!640 = !{!"0x558f5abcb170.w4.b0", !641, i64 0}
!641 = !{!"0x558f5abcb170.w8.b0", !642, i64 0}
!642 = !{!"0x558f5abcb170.w16.b0", !643, i64 0}
!643 = !{!"0x558f5abcb170.w32.b0", !644, i64 0}
!644 = !{!"0x558f5abcb170.w64.b0", !645, i64 0}
!645 = !{!"0x558f5abcb170.w128.b0", !646, i64 0}
!646 = !{!"0x558f5abcb170.w256.b0", !647, i64 0}
!647 = !{!"0x558f5abcb170.w512.b0", !648, i64 0}
!648 = !{!"0x558f5abcb170.w1024.b0", !649, i64 0}
!649 = !{!"int64", !650, i64 0}
!650 = !{!"0x558f5abcb170", !8, i64 0}
!651 = !{!652, !652, i64 0}
!652 = !{!"0x558f5abcb170.w1.b1", !639, i64 0}
!653 = !{!654, !654, i64 0}
!654 = !{!"float32", !655, i64 0}
!655 = !{!"0x558f5abfb990", !8, i64 0}
!656 = !{!657, !657, i64 0}
!657 = !{!"float32", !658, i64 0}
!658 = !{!"0x558f5abfb5b0", !8, i64 0}
!659 = !{!660, !660, i64 0}
!660 = !{!"float32", !661, i64 0}
!661 = !{!"0x558f5abfbb10", !8, i64 0}
!662 = !{!663, !663, i64 0}
!663 = !{!"float32", !664, i64 0}
!664 = !{!"0x558f5abfbb60", !8, i64 0}
!665 = !{!666, !666, i64 0}
!666 = !{!"float32", !667, i64 0}
!667 = !{!"0x558f5abfb9e0", !8, i64 0}
!668 = !{!669, !669, i64 0}
!669 = !{!"0x558f5ab9e800.w1.b0", !670, i64 0}
!670 = !{!"0x558f5ab9e800.w2.b0", !671, i64 0}
!671 = !{!"0x558f5ab9e800.w4.b0", !672, i64 0}
!672 = !{!"0x558f5ab9e800.w8.b0", !673, i64 0}
!673 = !{!"0x558f5ab9e800.w16.b0", !674, i64 0}
!674 = !{!"0x558f5ab9e800.w32.b0", !675, i64 0}
!675 = !{!"0x558f5ab9e800.w64.b0", !676, i64 0}
!676 = !{!"0x558f5ab9e800.w128.b0", !677, i64 0}
!677 = !{!"0x558f5ab9e800.w256.b0", !678, i64 0}
!678 = !{!"0x558f5ab9e800.w512.b0", !679, i64 0}
!679 = !{!"0x558f5ab9e800.w1024.b0", !680, i64 0}
!680 = !{!"int32", !681, i64 0}
!681 = !{!"0x558f5ab9e800", !8, i64 0}
!682 = !{!683, !683, i64 0}
!683 = !{!"0x558f5ab9e800.w1.b2", !684, i64 0}
!684 = !{!"0x558f5ab9e800.w2.b2", !671, i64 0}
!685 = !{!686, !686, i64 0}
!686 = !{!"0x558f5ab9e800.w1.b3", !684, i64 0}
!687 = !{!688, !688, i64 0}
!688 = !{!"0x558f5ab9e800.w1.b1", !670, i64 0}
!689 = !{!690, !690, i64 0}
!690 = !{!"0x558f5abd4660.w1.b0", !691, i64 0}
!691 = !{!"0x558f5abd4660.w2.b0", !692, i64 0}
!692 = !{!"0x558f5abd4660.w4.b0", !693, i64 0}
!693 = !{!"0x558f5abd4660.w8.b0", !694, i64 0}
!694 = !{!"0x558f5abd4660.w16.b0", !695, i64 0}
!695 = !{!"0x558f5abd4660.w32.b0", !696, i64 0}
!696 = !{!"0x558f5abd4660.w64.b0", !697, i64 0}
!697 = !{!"0x558f5abd4660.w128.b0", !698, i64 0}
!698 = !{!"0x558f5abd4660.w256.b0", !699, i64 0}
!699 = !{!"0x558f5abd4660.w512.b0", !700, i64 0}
!700 = !{!"0x558f5abd4660.w1024.b0", !701, i64 0}
!701 = !{!"int64", !702, i64 0}
!702 = !{!"0x558f5abd4660", !8, i64 0}
!703 = !{!704, !704, i64 0}
!704 = !{!"0x558f5abd4660.w1.b1", !691, i64 0}
!705 = !{!706, !706, i64 0}
!706 = !{!"0x558f5abd4770.w1.b0", !707, i64 0}
!707 = !{!"0x558f5abd4770.w2.b0", !708, i64 0}
!708 = !{!"0x558f5abd4770.w4.b0", !709, i64 0}
!709 = !{!"0x558f5abd4770.w8.b0", !710, i64 0}
!710 = !{!"0x558f5abd4770.w16.b0", !711, i64 0}
!711 = !{!"0x558f5abd4770.w32.b0", !712, i64 0}
!712 = !{!"0x558f5abd4770.w64.b0", !713, i64 0}
!713 = !{!"0x558f5abd4770.w128.b0", !714, i64 0}
!714 = !{!"0x558f5abd4770.w256.b0", !715, i64 0}
!715 = !{!"0x558f5abd4770.w512.b0", !716, i64 0}
!716 = !{!"0x558f5abd4770.w1024.b0", !717, i64 0}
!717 = !{!"int64", !718, i64 0}
!718 = !{!"0x558f5abd4770", !8, i64 0}
!719 = !{!720, !720, i64 0}
!720 = !{!"0x558f5abd4770.w1.b1", !707, i64 0}
!721 = !{!722, !722, i64 0}
!722 = !{!"0x558f5aad7360.w1.b0", !723, i64 0}
!723 = !{!"0x558f5aad7360.w2.b0", !724, i64 0}
!724 = !{!"0x558f5aad7360.w4.b0", !725, i64 0}
!725 = !{!"0x558f5aad7360.w8.b0", !726, i64 0}
!726 = !{!"0x558f5aad7360.w16.b0", !727, i64 0}
!727 = !{!"0x558f5aad7360.w32.b0", !728, i64 0}
!728 = !{!"0x558f5aad7360.w64.b0", !729, i64 0}
!729 = !{!"0x558f5aad7360.w128.b0", !730, i64 0}
!730 = !{!"0x558f5aad7360.w256.b0", !731, i64 0}
!731 = !{!"0x558f5aad7360.w512.b0", !732, i64 0}
!732 = !{!"0x558f5aad7360.w1024.b0", !733, i64 0}
!733 = !{!"int64", !734, i64 0}
!734 = !{!"0x558f5aad7360", !8, i64 0}
!735 = !{!736, !736, i64 0}
!736 = !{!"0x558f5aad7360.w1.b1", !723, i64 0}
!737 = !{!738, !738, i64 0}
!738 = !{!"0x558f5aabcb10.w1.b0", !739, i64 0}
!739 = !{!"0x558f5aabcb10.w2.b0", !740, i64 0}
!740 = !{!"0x558f5aabcb10.w4.b0", !741, i64 0}
!741 = !{!"0x558f5aabcb10.w8.b0", !742, i64 0}
!742 = !{!"0x558f5aabcb10.w16.b0", !743, i64 0}
!743 = !{!"0x558f5aabcb10.w32.b0", !744, i64 0}
!744 = !{!"0x558f5aabcb10.w64.b0", !745, i64 0}
!745 = !{!"0x558f5aabcb10.w128.b0", !746, i64 0}
!746 = !{!"0x558f5aabcb10.w256.b0", !747, i64 0}
!747 = !{!"0x558f5aabcb10.w512.b0", !748, i64 0}
!748 = !{!"0x558f5aabcb10.w1024.b0", !749, i64 0}
!749 = !{!"int64", !750, i64 0}
!750 = !{!"0x558f5aabcb10", !8, i64 0}
!751 = !{!752, !752, i64 0}
!752 = !{!"0x558f5aabcb10.w1.b1", !739, i64 0}
!753 = !{!754, !754, i64 0}
!754 = !{!"0x558f5aa9e1b0.w1.b0", !755, i64 0}
!755 = !{!"0x558f5aa9e1b0.w2.b0", !756, i64 0}
!756 = !{!"0x558f5aa9e1b0.w4.b0", !757, i64 0}
!757 = !{!"0x558f5aa9e1b0.w8.b0", !758, i64 0}
!758 = !{!"0x558f5aa9e1b0.w16.b0", !759, i64 0}
!759 = !{!"0x558f5aa9e1b0.w32.b0", !760, i64 0}
!760 = !{!"0x558f5aa9e1b0.w64.b0", !761, i64 0}
!761 = !{!"0x558f5aa9e1b0.w128.b0", !762, i64 0}
!762 = !{!"0x558f5aa9e1b0.w256.b0", !763, i64 0}
!763 = !{!"0x558f5aa9e1b0.w512.b0", !764, i64 0}
!764 = !{!"0x558f5aa9e1b0.w1024.b0", !765, i64 0}
!765 = !{!"int64", !766, i64 0}
!766 = !{!"0x558f5aa9e1b0", !8, i64 0}
!767 = !{!768, !768, i64 0}
!768 = !{!"0x558f5aa9e200.w1.b0", !769, i64 0}
!769 = !{!"0x558f5aa9e200.w2.b0", !770, i64 0}
!770 = !{!"0x558f5aa9e200.w4.b0", !771, i64 0}
!771 = !{!"0x558f5aa9e200.w8.b0", !772, i64 0}
!772 = !{!"0x558f5aa9e200.w16.b0", !773, i64 0}
!773 = !{!"0x558f5aa9e200.w32.b0", !774, i64 0}
!774 = !{!"0x558f5aa9e200.w64.b0", !775, i64 0}
!775 = !{!"0x558f5aa9e200.w128.b0", !776, i64 0}
!776 = !{!"0x558f5aa9e200.w256.b0", !777, i64 0}
!777 = !{!"0x558f5aa9e200.w512.b0", !778, i64 0}
!778 = !{!"0x558f5aa9e200.w1024.b0", !779, i64 0}
!779 = !{!"int64", !780, i64 0}
!780 = !{!"0x558f5aa9e200", !8, i64 0}
!781 = !{!782, !782, i64 0}
!782 = !{!"0x558f5abe6a50.w1.b0", !783, i64 0}
!783 = !{!"0x558f5abe6a50.w2.b0", !784, i64 0}
!784 = !{!"0x558f5abe6a50.w4.b0", !785, i64 0}
!785 = !{!"0x558f5abe6a50.w8.b0", !786, i64 0}
!786 = !{!"0x558f5abe6a50.w16.b0", !787, i64 0}
!787 = !{!"0x558f5abe6a50.w32.b0", !788, i64 0}
!788 = !{!"0x558f5abe6a50.w64.b0", !789, i64 0}
!789 = !{!"0x558f5abe6a50.w128.b0", !790, i64 0}
!790 = !{!"0x558f5abe6a50.w256.b0", !791, i64 0}
!791 = !{!"0x558f5abe6a50.w512.b0", !792, i64 0}
!792 = !{!"0x558f5abe6a50.w1024.b0", !793, i64 0}
!793 = !{!"int64", !794, i64 0}
!794 = !{!"0x558f5abe6a50", !8, i64 0}
!795 = !{!796, !796, i64 0}
!796 = !{!"0x558f5abe6a50.w1.b1", !783, i64 0}
!797 = !{!798, !798, i64 0}
!798 = !{!"0x558f5abe6aa0.w1.b0", !799, i64 0}
!799 = !{!"0x558f5abe6aa0.w2.b0", !800, i64 0}
!800 = !{!"0x558f5abe6aa0.w4.b0", !801, i64 0}
!801 = !{!"0x558f5abe6aa0.w8.b0", !802, i64 0}
!802 = !{!"0x558f5abe6aa0.w16.b0", !803, i64 0}
!803 = !{!"0x558f5abe6aa0.w32.b0", !804, i64 0}
!804 = !{!"0x558f5abe6aa0.w64.b0", !805, i64 0}
!805 = !{!"0x558f5abe6aa0.w128.b0", !806, i64 0}
!806 = !{!"0x558f5abe6aa0.w256.b0", !807, i64 0}
!807 = !{!"0x558f5abe6aa0.w512.b0", !808, i64 0}
!808 = !{!"0x558f5abe6aa0.w1024.b0", !809, i64 0}
!809 = !{!"int64", !810, i64 0}
!810 = !{!"0x558f5abe6aa0", !8, i64 0}
!811 = !{!812, !812, i64 0}
!812 = !{!"0x558f5abe6aa0.w1.b1", !799, i64 0}
!813 = !{!814, !814, i64 0}
!814 = !{!"float32", !815, i64 0}
!815 = !{!"0x558f5ab0f2c0", !8, i64 0}
!816 = !{!817, !817, i64 0}
!817 = !{!"float32", !818, i64 0}
!818 = !{!"0x558f5ab37bd0", !8, i64 0}
!819 = !{!820, !820, i64 0}
!820 = !{!"float32", !821, i64 0}
!821 = !{!"0x558f5aaa7d10", !8, i64 0}
!822 = !{!823, !823, i64 0}
!823 = !{!"float32", !824, i64 0}
!824 = !{!"0x558f5aa3dd90", !8, i64 0}
!825 = !{!826, !826, i64 0}
!826 = !{!"float32", !827, i64 0}
!827 = !{!"0x558f5aad81a0", !8, i64 0}
!828 = !{!829, !829, i64 0}
!829 = !{!"0x558f5abf33a0.w1.b0", !830, i64 0}
!830 = !{!"0x558f5abf33a0.w2.b0", !831, i64 0}
!831 = !{!"0x558f5abf33a0.w4.b0", !832, i64 0}
!832 = !{!"0x558f5abf33a0.w8.b0", !833, i64 0}
!833 = !{!"0x558f5abf33a0.w16.b0", !834, i64 0}
!834 = !{!"0x558f5abf33a0.w32.b0", !835, i64 0}
!835 = !{!"0x558f5abf33a0.w64.b0", !836, i64 0}
!836 = !{!"0x558f5abf33a0.w128.b0", !837, i64 0}
!837 = !{!"0x558f5abf33a0.w256.b0", !838, i64 0}
!838 = !{!"0x558f5abf33a0.w512.b0", !839, i64 0}
!839 = !{!"0x558f5abf33a0.w1024.b0", !840, i64 0}
!840 = !{!"int32", !841, i64 0}
!841 = !{!"0x558f5abf33a0", !8, i64 0}
!842 = !{!843, !843, i64 0}
!843 = !{!"0x558f5abf33a0.w1.b1", !830, i64 0}
!844 = !{!845, !845, i64 0}
!845 = !{!"0x558f5ac659b0.w1.b0", !846, i64 0}
!846 = !{!"0x558f5ac659b0.w2.b0", !847, i64 0}
!847 = !{!"0x558f5ac659b0.w4.b0", !848, i64 0}
!848 = !{!"0x558f5ac659b0.w8.b0", !849, i64 0}
!849 = !{!"0x558f5ac659b0.w16.b0", !850, i64 0}
!850 = !{!"0x558f5ac659b0.w32.b0", !851, i64 0}
!851 = !{!"0x558f5ac659b0.w64.b0", !852, i64 0}
!852 = !{!"0x558f5ac659b0.w128.b0", !853, i64 0}
!853 = !{!"0x558f5ac659b0.w256.b0", !854, i64 0}
!854 = !{!"0x558f5ac659b0.w512.b0", !855, i64 0}
!855 = !{!"0x558f5ac659b0.w1024.b0", !856, i64 0}
!856 = !{!"int64", !857, i64 0}
!857 = !{!"0x558f5ac659b0", !8, i64 0}
!858 = !{!859, !859, i64 0}
!859 = !{!"0x558f5ac659b0.w1.b1", !846, i64 0}
!860 = !{!861, !861, i64 0}
!861 = !{!"0x558f5ac659b0.w1.b2", !862, i64 0}
!862 = !{!"0x558f5ac659b0.w2.b2", !847, i64 0}
!863 = !{!864, !864, i64 0}
!864 = !{!"0x558f5ac659b0.w1.b3", !862, i64 0}
!865 = !{!866, !866, i64 0}
!866 = !{!"0x558f5ac65f10.w4.b0", !867, i64 0}
!867 = !{!"0x558f5ac65f10.w8.b0", !868, i64 0}
!868 = !{!"0x558f5ac65f10.w16.b0", !869, i64 0}
!869 = !{!"0x558f5ac65f10.w32.b0", !870, i64 0}
!870 = !{!"0x558f5ac65f10.w64.b0", !871, i64 0}
!871 = !{!"0x558f5ac65f10.w128.b0", !872, i64 0}
!872 = !{!"0x558f5ac65f10.w256.b0", !873, i64 0}
!873 = !{!"0x558f5ac65f10.w512.b0", !874, i64 0}
!874 = !{!"0x558f5ac65f10.w1024.b0", !875, i64 0}
!875 = !{!"int64", !876, i64 0}
!876 = !{!"0x558f5ac65f10", !8, i64 0}
!877 = !{!878, !878, i64 0}
!878 = !{!"0x558f5ac661e0.w1.b0", !879, i64 0}
!879 = !{!"0x558f5ac661e0.w2.b0", !880, i64 0}
!880 = !{!"0x558f5ac661e0.w4.b0", !881, i64 0}
!881 = !{!"0x558f5ac661e0.w8.b0", !882, i64 0}
!882 = !{!"0x558f5ac661e0.w16.b0", !883, i64 0}
!883 = !{!"0x558f5ac661e0.w32.b0", !884, i64 0}
!884 = !{!"0x558f5ac661e0.w64.b0", !885, i64 0}
!885 = !{!"0x558f5ac661e0.w128.b0", !886, i64 0}
!886 = !{!"0x558f5ac661e0.w256.b0", !887, i64 0}
!887 = !{!"0x558f5ac661e0.w512.b0", !888, i64 0}
!888 = !{!"0x558f5ac661e0.w1024.b0", !889, i64 0}
!889 = !{!"int64", !890, i64 0}
!890 = !{!"0x558f5ac661e0", !8, i64 0}
!891 = !{!892, !892, i64 0}
!892 = !{!"0x558f5ac661e0.w1.b1", !879, i64 0}
!893 = !{!894, !894, i64 0}
!894 = !{!"0x558f5ac661e0.w1.b2", !895, i64 0}
!895 = !{!"0x558f5ac661e0.w2.b2", !880, i64 0}
!896 = !{!897, !897, i64 0}
!897 = !{!"0x558f5ac661e0.w1.b3", !895, i64 0}
!898 = !{!899, !899, i64 0}
!899 = !{!"0x558f5ac661e0.w1.b4", !900, i64 0}
!900 = !{!"0x558f5ac661e0.w2.b4", !901, i64 0}
!901 = !{!"0x558f5ac661e0.w4.b4", !881, i64 0}
!902 = !{!903, !903, i64 0}
!903 = !{!"0x558f5ac66190.w4.b0", !904, i64 0}
!904 = !{!"0x558f5ac66190.w8.b0", !905, i64 0}
!905 = !{!"0x558f5ac66190.w16.b0", !906, i64 0}
!906 = !{!"0x558f5ac66190.w32.b0", !907, i64 0}
!907 = !{!"0x558f5ac66190.w64.b0", !908, i64 0}
!908 = !{!"0x558f5ac66190.w128.b0", !909, i64 0}
!909 = !{!"0x558f5ac66190.w256.b0", !910, i64 0}
!910 = !{!"0x558f5ac66190.w512.b0", !911, i64 0}
!911 = !{!"0x558f5ac66190.w1024.b0", !912, i64 0}
!912 = !{!"int64", !913, i64 0}
!913 = !{!"0x558f5ac66190", !8, i64 0}
!914 = !{!915, !915, i64 0}
!915 = !{!"0x558f5ac66190.w1.b4", !916, i64 0}
!916 = !{!"0x558f5ac66190.w2.b4", !917, i64 0}
!917 = !{!"0x558f5ac66190.w4.b4", !904, i64 0}
!918 = !{!919, !919, i64 0}
!919 = !{!"float32", !920, i64 0}
!920 = !{!"0x558f5abf6080", !8, i64 0}
!921 = !{!922, !922, i64 0}
!922 = !{!"float32", !923, i64 0}
!923 = !{!"0x558f5ac63200", !8, i64 0}
!924 = !{!925, !925, i64 0}
!925 = !{!"0x558f5aad4b80.w1.b0", !926, i64 0}
!926 = !{!"0x558f5aad4b80.w2.b0", !927, i64 0}
!927 = !{!"0x558f5aad4b80.w4.b0", !928, i64 0}
!928 = !{!"0x558f5aad4b80.w8.b0", !929, i64 0}
!929 = !{!"0x558f5aad4b80.w16.b0", !930, i64 0}
!930 = !{!"0x558f5aad4b80.w32.b0", !931, i64 0}
!931 = !{!"0x558f5aad4b80.w64.b0", !932, i64 0}
!932 = !{!"0x558f5aad4b80.w128.b0", !933, i64 0}
!933 = !{!"0x558f5aad4b80.w256.b0", !934, i64 0}
!934 = !{!"0x558f5aad4b80.w512.b0", !935, i64 0}
!935 = !{!"0x558f5aad4b80.w1024.b0", !936, i64 0}
!936 = !{!"int32", !937, i64 0}
!937 = !{!"0x558f5aad4b80", !8, i64 0}
!938 = !{!939, !939, i64 0}
!939 = !{!"0x558f5aad4b80.w1.b2", !940, i64 0}
!940 = !{!"0x558f5aad4b80.w2.b2", !927, i64 0}
!941 = !{!942, !942, i64 0}
!942 = !{!"0x558f5aad4b80.w1.b3", !940, i64 0}
!943 = !{!944, !944, i64 0}
!944 = !{!"0x558f5aad4b80.w1.b4", !945, i64 0}
!945 = !{!"0x558f5aad4b80.w2.b4", !946, i64 0}
!946 = !{!"0x558f5aad4b80.w4.b4", !928, i64 0}
!947 = !{!948, !948, i64 0}
!948 = !{!"0x558f5aad4b80.w1.b5", !945, i64 0}
!949 = !{!950, !950, i64 0}
!950 = !{!"0x558f5aad4b80.w1.b1", !926, i64 0}
!951 = !{!952, !952, i64 0}
!952 = !{!"0x558f5aad6010.w1.b0", !953, i64 0}
!953 = !{!"0x558f5aad6010.w2.b0", !954, i64 0}
!954 = !{!"0x558f5aad6010.w4.b0", !955, i64 0}
!955 = !{!"0x558f5aad6010.w8.b0", !956, i64 0}
!956 = !{!"0x558f5aad6010.w16.b0", !957, i64 0}
!957 = !{!"0x558f5aad6010.w32.b0", !958, i64 0}
!958 = !{!"0x558f5aad6010.w64.b0", !959, i64 0}
!959 = !{!"0x558f5aad6010.w128.b0", !960, i64 0}
!960 = !{!"0x558f5aad6010.w256.b0", !961, i64 0}
!961 = !{!"0x558f5aad6010.w512.b0", !962, i64 0}
!962 = !{!"0x558f5aad6010.w1024.b0", !963, i64 0}
!963 = !{!"int64", !964, i64 0}
!964 = !{!"0x558f5aad6010", !8, i64 0}
!965 = !{!966, !966, i64 0}
!966 = !{!"0x558f5aad6010.w1.b1", !953, i64 0}
!967 = !{!968, !968, i64 0}
!968 = !{!"0x558f5aad61e0.w1.b0", !969, i64 0}
!969 = !{!"0x558f5aad61e0.w2.b0", !970, i64 0}
!970 = !{!"0x558f5aad61e0.w4.b0", !971, i64 0}
!971 = !{!"0x558f5aad61e0.w8.b0", !972, i64 0}
!972 = !{!"0x558f5aad61e0.w16.b0", !973, i64 0}
!973 = !{!"0x558f5aad61e0.w32.b0", !974, i64 0}
!974 = !{!"0x558f5aad61e0.w64.b0", !975, i64 0}
!975 = !{!"0x558f5aad61e0.w128.b0", !976, i64 0}
!976 = !{!"0x558f5aad61e0.w256.b0", !977, i64 0}
!977 = !{!"0x558f5aad61e0.w512.b0", !978, i64 0}
!978 = !{!"0x558f5aad61e0.w1024.b0", !979, i64 0}
!979 = !{!"int64", !980, i64 0}
!980 = !{!"0x558f5aad61e0", !8, i64 0}
!981 = !{!982, !982, i64 0}
!982 = !{!"0x558f5aad61e0.w1.b1", !969, i64 0}
!983 = !{!984, !984, i64 0}
!984 = !{!"0x558f5ab52780.w1.b0", !985, i64 0}
!985 = !{!"0x558f5ab52780.w2.b0", !986, i64 0}
!986 = !{!"0x558f5ab52780.w4.b0", !987, i64 0}
!987 = !{!"0x558f5ab52780.w8.b0", !988, i64 0}
!988 = !{!"0x558f5ab52780.w16.b0", !989, i64 0}
!989 = !{!"0x558f5ab52780.w32.b0", !990, i64 0}
!990 = !{!"0x558f5ab52780.w64.b0", !991, i64 0}
!991 = !{!"0x558f5ab52780.w128.b0", !992, i64 0}
!992 = !{!"0x558f5ab52780.w256.b0", !993, i64 0}
!993 = !{!"0x558f5ab52780.w512.b0", !994, i64 0}
!994 = !{!"0x558f5ab52780.w1024.b0", !995, i64 0}
!995 = !{!"int64", !996, i64 0}
!996 = !{!"0x558f5ab52780", !8, i64 0}
!997 = !{!998, !998, i64 0}
!998 = !{!"0x558f5ab52780.w1.b1", !985, i64 0}
!999 = !{!1000, !1000, i64 0}
!1000 = !{!"0x558f5aad6570.w1.b0", !1001, i64 0}
!1001 = !{!"0x558f5aad6570.w2.b0", !1002, i64 0}
!1002 = !{!"0x558f5aad6570.w4.b0", !1003, i64 0}
!1003 = !{!"0x558f5aad6570.w8.b0", !1004, i64 0}
!1004 = !{!"0x558f5aad6570.w16.b0", !1005, i64 0}
!1005 = !{!"0x558f5aad6570.w32.b0", !1006, i64 0}
!1006 = !{!"0x558f5aad6570.w64.b0", !1007, i64 0}
!1007 = !{!"0x558f5aad6570.w128.b0", !1008, i64 0}
!1008 = !{!"0x558f5aad6570.w256.b0", !1009, i64 0}
!1009 = !{!"0x558f5aad6570.w512.b0", !1010, i64 0}
!1010 = !{!"0x558f5aad6570.w1024.b0", !1011, i64 0}
!1011 = !{!"int64", !1012, i64 0}
!1012 = !{!"0x558f5aad6570", !8, i64 0}
!1013 = !{!1014, !1014, i64 0}
!1014 = !{!"0x558f5aad6570.w1.b1", !1001, i64 0}
!1015 = !{!1016, !1016, i64 0}
!1016 = !{!"0x558f5ab52f50.w1.b0", !1017, i64 0}
!1017 = !{!"0x558f5ab52f50.w2.b0", !1018, i64 0}
!1018 = !{!"0x558f5ab52f50.w4.b0", !1019, i64 0}
!1019 = !{!"0x558f5ab52f50.w8.b0", !1020, i64 0}
!1020 = !{!"0x558f5ab52f50.w16.b0", !1021, i64 0}
!1021 = !{!"0x558f5ab52f50.w32.b0", !1022, i64 0}
!1022 = !{!"0x558f5ab52f50.w64.b0", !1023, i64 0}
!1023 = !{!"0x558f5ab52f50.w128.b0", !1024, i64 0}
!1024 = !{!"0x558f5ab52f50.w256.b0", !1025, i64 0}
!1025 = !{!"0x558f5ab52f50.w512.b0", !1026, i64 0}
!1026 = !{!"0x558f5ab52f50.w1024.b0", !1027, i64 0}
!1027 = !{!"int64", !1028, i64 0}
!1028 = !{!"0x558f5ab52f50", !8, i64 0}
!1029 = !{!1030, !1030, i64 0}
!1030 = !{!"0x558f5ab52fa0.w1.b0", !1031, i64 0}
!1031 = !{!"0x558f5ab52fa0.w2.b0", !1032, i64 0}
!1032 = !{!"0x558f5ab52fa0.w4.b0", !1033, i64 0}
!1033 = !{!"0x558f5ab52fa0.w8.b0", !1034, i64 0}
!1034 = !{!"0x558f5ab52fa0.w16.b0", !1035, i64 0}
!1035 = !{!"0x558f5ab52fa0.w32.b0", !1036, i64 0}
!1036 = !{!"0x558f5ab52fa0.w64.b0", !1037, i64 0}
!1037 = !{!"0x558f5ab52fa0.w128.b0", !1038, i64 0}
!1038 = !{!"0x558f5ab52fa0.w256.b0", !1039, i64 0}
!1039 = !{!"0x558f5ab52fa0.w512.b0", !1040, i64 0}
!1040 = !{!"0x558f5ab52fa0.w1024.b0", !1041, i64 0}
!1041 = !{!"int64", !1042, i64 0}
!1042 = !{!"0x558f5ab52fa0", !8, i64 0}
!1043 = !{!1044, !1044, i64 0}
!1044 = !{!"0x558f5aabb480.w1.b0", !1045, i64 0}
!1045 = !{!"0x558f5aabb480.w2.b0", !1046, i64 0}
!1046 = !{!"0x558f5aabb480.w4.b0", !1047, i64 0}
!1047 = !{!"0x558f5aabb480.w8.b0", !1048, i64 0}
!1048 = !{!"0x558f5aabb480.w16.b0", !1049, i64 0}
!1049 = !{!"0x558f5aabb480.w32.b0", !1050, i64 0}
!1050 = !{!"0x558f5aabb480.w64.b0", !1051, i64 0}
!1051 = !{!"0x558f5aabb480.w128.b0", !1052, i64 0}
!1052 = !{!"0x558f5aabb480.w256.b0", !1053, i64 0}
!1053 = !{!"0x558f5aabb480.w512.b0", !1054, i64 0}
!1054 = !{!"0x558f5aabb480.w1024.b0", !1055, i64 0}
!1055 = !{!"int64", !1056, i64 0}
!1056 = !{!"0x558f5aabb480", !8, i64 0}
!1057 = !{!1058, !1058, i64 0}
!1058 = !{!"0x558f5aabb4d0.w1.b0", !1059, i64 0}
!1059 = !{!"0x558f5aabb4d0.w2.b0", !1060, i64 0}
!1060 = !{!"0x558f5aabb4d0.w4.b0", !1061, i64 0}
!1061 = !{!"0x558f5aabb4d0.w8.b0", !1062, i64 0}
!1062 = !{!"0x558f5aabb4d0.w16.b0", !1063, i64 0}
!1063 = !{!"0x558f5aabb4d0.w32.b0", !1064, i64 0}
!1064 = !{!"0x558f5aabb4d0.w64.b0", !1065, i64 0}
!1065 = !{!"0x558f5aabb4d0.w128.b0", !1066, i64 0}
!1066 = !{!"0x558f5aabb4d0.w256.b0", !1067, i64 0}
!1067 = !{!"0x558f5aabb4d0.w512.b0", !1068, i64 0}
!1068 = !{!"0x558f5aabb4d0.w1024.b0", !1069, i64 0}
!1069 = !{!"int64", !1070, i64 0}
!1070 = !{!"0x558f5aabb4d0", !8, i64 0}
!1071 = !{!1072, !1072, i64 0}
!1072 = !{!"0x558f5aabbc50.w1.b0", !1073, i64 0}
!1073 = !{!"0x558f5aabbc50.w2.b0", !1074, i64 0}
!1074 = !{!"0x558f5aabbc50.w4.b0", !1075, i64 0}
!1075 = !{!"0x558f5aabbc50.w8.b0", !1076, i64 0}
!1076 = !{!"0x558f5aabbc50.w16.b0", !1077, i64 0}
!1077 = !{!"0x558f5aabbc50.w32.b0", !1078, i64 0}
!1078 = !{!"0x558f5aabbc50.w64.b0", !1079, i64 0}
!1079 = !{!"0x558f5aabbc50.w128.b0", !1080, i64 0}
!1080 = !{!"0x558f5aabbc50.w256.b0", !1081, i64 0}
!1081 = !{!"0x558f5aabbc50.w512.b0", !1082, i64 0}
!1082 = !{!"0x558f5aabbc50.w1024.b0", !1083, i64 0}
!1083 = !{!"int64", !1084, i64 0}
!1084 = !{!"0x558f5aabbc50", !8, i64 0}
!1085 = !{!1086, !1086, i64 0}
!1086 = !{!"0x558f5ac0e6c0.w1.b0", !1087, i64 0}
!1087 = !{!"0x558f5ac0e6c0.w2.b0", !1088, i64 0}
!1088 = !{!"0x558f5ac0e6c0.w4.b0", !1089, i64 0}
!1089 = !{!"0x558f5ac0e6c0.w8.b0", !1090, i64 0}
!1090 = !{!"0x558f5ac0e6c0.w16.b0", !1091, i64 0}
!1091 = !{!"0x558f5ac0e6c0.w32.b0", !1092, i64 0}
!1092 = !{!"0x558f5ac0e6c0.w64.b0", !1093, i64 0}
!1093 = !{!"0x558f5ac0e6c0.w128.b0", !1094, i64 0}
!1094 = !{!"0x558f5ac0e6c0.w256.b0", !1095, i64 0}
!1095 = !{!"0x558f5ac0e6c0.w512.b0", !1096, i64 0}
!1096 = !{!"0x558f5ac0e6c0.w1024.b0", !1097, i64 0}
!1097 = !{!"int64", !1098, i64 0}
!1098 = !{!"0x558f5ac0e6c0", !8, i64 0}
!1099 = !{!1100, !1100, i64 0}
!1100 = !{!"0x558f5ac0ed30.w1.b0", !1101, i64 0}
!1101 = !{!"0x558f5ac0ed30.w2.b0", !1102, i64 0}
!1102 = !{!"0x558f5ac0ed30.w4.b0", !1103, i64 0}
!1103 = !{!"0x558f5ac0ed30.w8.b0", !1104, i64 0}
!1104 = !{!"0x558f5ac0ed30.w16.b0", !1105, i64 0}
!1105 = !{!"0x558f5ac0ed30.w32.b0", !1106, i64 0}
!1106 = !{!"0x558f5ac0ed30.w64.b0", !1107, i64 0}
!1107 = !{!"0x558f5ac0ed30.w128.b0", !1108, i64 0}
!1108 = !{!"0x558f5ac0ed30.w256.b0", !1109, i64 0}
!1109 = !{!"0x558f5ac0ed30.w512.b0", !1110, i64 0}
!1110 = !{!"0x558f5ac0ed30.w1024.b0", !1111, i64 0}
!1111 = !{!"int64", !1112, i64 0}
!1112 = !{!"0x558f5ac0ed30", !8, i64 0}
!1113 = !{!1114, !1114, i64 0}
!1114 = !{!"0x558f5ac0ed30.w1.b1", !1101, i64 0}
!1115 = !{!1116, !1116, i64 0}
!1116 = !{!"0x558f5ac10160.w1.b0", !1117, i64 0}
!1117 = !{!"0x558f5ac10160.w2.b0", !1118, i64 0}
!1118 = !{!"0x558f5ac10160.w4.b0", !1119, i64 0}
!1119 = !{!"0x558f5ac10160.w8.b0", !1120, i64 0}
!1120 = !{!"0x558f5ac10160.w16.b0", !1121, i64 0}
!1121 = !{!"0x558f5ac10160.w32.b0", !1122, i64 0}
!1122 = !{!"0x558f5ac10160.w64.b0", !1123, i64 0}
!1123 = !{!"0x558f5ac10160.w128.b0", !1124, i64 0}
!1124 = !{!"0x558f5ac10160.w256.b0", !1125, i64 0}
!1125 = !{!"0x558f5ac10160.w512.b0", !1126, i64 0}
!1126 = !{!"0x558f5ac10160.w1024.b0", !1127, i64 0}
!1127 = !{!"int64", !1128, i64 0}
!1128 = !{!"0x558f5ac10160", !8, i64 0}
!1129 = !{!1130, !1130, i64 0}
!1130 = !{!"0x558f5ac10160.w1.b1", !1117, i64 0}
!1131 = !{!1132, !1132, i64 0}
!1132 = !{!"float32", !1133, i64 0}
!1133 = !{!"0x558f5abd5c90", !8, i64 0}
!1134 = !{!1135, !1135, i64 0}
!1135 = !{!"float32", !1136, i64 0}
!1136 = !{!"0x558f5abd5a00", !8, i64 0}
!1137 = !{!1138, !1138, i64 0}
!1138 = !{!"float32", !1139, i64 0}
!1139 = !{!"0x558f5abd5c40", !8, i64 0}
!1140 = !{!1141, !1141, i64 0}
!1141 = !{!"float32", !1142, i64 0}
!1142 = !{!"0x558f5abd5dc0", !8, i64 0}
!1143 = !{!1144, !1144, i64 0}
!1144 = !{!"float32", !1145, i64 0}
!1145 = !{!"0x558f5abd5b40", !8, i64 0}
!1146 = !{!1147, !1147, i64 0}
!1147 = !{!"float32", !1148, i64 0}
!1148 = !{!"0x558f5abd5e10", !8, i64 0}
!1149 = !{!1150, !1150, i64 0}
!1150 = !{!"float32", !1151, i64 0}
!1151 = !{!"0x558f5abd59b0", !8, i64 0}
