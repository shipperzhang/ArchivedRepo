; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32*, i32 }
%1 = type { i8*, %2, i32, %3, i64*, i64*, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }
%4 = type { i8*, i8*, i8*, i8*, i8*, i8* }
%5 = type { i8*, i8* }
%6 = type { i8*, i8* }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global i32 (i32 (i32, %0*, i8*)*, i8*, i32)* null, align 8
@.str = private constant [107 x i8] c"Assert fail: (num_args == 6), fused_nn_contrib_conv2d_NCHWc_add_multiply_add_nn_relu: num_args should be 6\00", align 1
@.str.1 = private constant [182 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_contrib_conv2d_NCHWc_add_multiply_add_nn_relu: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [182 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_contrib_conv2d_NCHWc_add_multiply_add_nn_relu: Expect arg[1] to be pointer\00", align 1
@.str.3 = private constant [182 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), fused_nn_contrib_conv2d_NCHWc_add_multiply_add_nn_relu: Expect arg[2] to be pointer\00", align 1
@.str.4 = private constant [182 x i8] c"Assert fail: ((((arg3.code == 3) || (arg3.code == 13)) || (arg3.code == 7)) || (arg3.code == 4)), fused_nn_contrib_conv2d_NCHWc_add_multiply_add_nn_relu: Expect arg[3] to be pointer\00", align 1
@.str.5 = private constant [182 x i8] c"Assert fail: ((((arg4.code == 3) || (arg4.code == 13)) || (arg4.code == 7)) || (arg4.code == 4)), fused_nn_contrib_conv2d_NCHWc_add_multiply_add_nn_relu: Expect arg[4] to be pointer\00", align 1
@.str.6 = private constant [182 x i8] c"Assert fail: ((((arg5.code == 3) || (arg5.code == 13)) || (arg5.code == 7)) || (arg5.code == 4)), fused_nn_contrib_conv2d_NCHWc_add_multiply_add_nn_relu: Expect arg[5] to be pointer\00", align 1
@.str.7 = private constant [55 x i8] c"Assert fail: (dev_type == 1), device_type need to be 1\00", align 1
@.str.8 = private constant [81 x i8] c"Assert fail: (5 == tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 5\00", align 1
@.str.9 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg0, 0, 5) == (uint8)2) && (tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be float32\00", align 1
@.str.10 = private constant [95 x i8] c"Assert fail: (1 == int32(arg0.shape[0])), Argument arg0.shape[0] has an unsatisfied constraint\00", align 1
@.str.11 = private constant [95 x i8] c"Assert fail: (1 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.12 = private constant [96 x i8] c"Assert fail: (14 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.13 = private constant [96 x i8] c"Assert fail: (14 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.14 = private constant [95 x i8] c"Assert fail: (1 == int32(arg0.shape[4])), Argument arg0.shape[4] has an unsatisfied constraint\00", align 1
@.str.15 = private constant [232 x i8] c"Assert fail: (((((1 == int32(arg0.strides[4])) && (1 == int32(arg0.strides[3]))) && (14 == int32(arg0.strides[2]))) && (196 == int32(arg0.strides[1]))) && (196 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.16 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint\00", align 1
@.str.17 = private constant [81 x i8] c"Assert fail: (6 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 6\00", align 1
@.str.18 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.19 = private constant [95 x i8] c"Assert fail: (2 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.20 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.21 = private constant [95 x i8] c"Assert fail: (2 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.22 = private constant [95 x i8] c"Assert fail: (2 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint\00", align 1
@.str.23 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[4])), Argument arg1.shape[4] has an unsatisfied constraint\00", align 1
@.str.24 = private constant [95 x i8] c"Assert fail: (8 == int32(arg1.shape[5])), Argument arg1.shape[5] has an unsatisfied constraint\00", align 1
@.str.25 = private constant [265 x i8] c"Assert fail: ((((((1 == int32(arg1.strides[5])) && (8 == int32(arg1.strides[4]))) && (8 == int32(arg1.strides[3]))) && (16 == int32(arg1.strides[2]))) && (32 == int32(arg1.strides[1]))) && (32 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.26 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint\00", align 1
@.str.27 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint\00", align 1
@.str.28 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint\00", align 1
@.str.29 = private constant [81 x i8] c"Assert fail: (5 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 5\00", align 1
@.str.30 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.31 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.32 = private constant [95 x i8] c"Assert fail: (2 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint\00", align 1
@.str.33 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[2])), Argument arg2.shape[2] has an unsatisfied constraint\00", align 1
@.str.34 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[3])), Argument arg2.shape[3] has an unsatisfied constraint\00", align 1
@.str.35 = private constant [95 x i8] c"Assert fail: (8 == int32(arg2.shape[4])), Argument arg2.shape[4] has an unsatisfied constraint\00", align 1
@.str.36 = private constant [228 x i8] c"Assert fail: (((((1 == int32(arg2.strides[4])) && (8 == int32(arg2.strides[3]))) && (8 == int32(arg2.strides[2]))) && (8 == int32(arg2.strides[1]))) && (16 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
@.str.37 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg2, 0, 8)), Argument arg2.byte_offset has an unsatisfied constraint\00", align 1
@.str.38 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg2, 0, 10)), Argument arg2.device_type has an unsatisfied constraint\00", align 1
@.str.39 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg2, 0, 9)), Argument arg2.device_id has an unsatisfied constraint\00", align 1
@.str.40 = private constant [81 x i8] c"Assert fail: (5 == tvm_struct_get(arg3, 0, 4)), arg3.ndim is expected to equal 5\00", align 1
@.str.41 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg3, 0, 5) == (uint8)2) && (tvm_struct_get(arg3, 0, 6) == (uint8)32)) && (tvm_struct_get(arg3, 0, 7) == (uint16)1)), arg3.dtype is expected to be float32\00", align 1
@.str.42 = private constant [95 x i8] c"Assert fail: (1 == int32(arg3.shape[0])), Argument arg3.shape[0] has an unsatisfied constraint\00", align 1
@.str.43 = private constant [95 x i8] c"Assert fail: (2 == int32(arg3.shape[1])), Argument arg3.shape[1] has an unsatisfied constraint\00", align 1
@.str.44 = private constant [95 x i8] c"Assert fail: (1 == int32(arg3.shape[2])), Argument arg3.shape[2] has an unsatisfied constraint\00", align 1
@.str.45 = private constant [95 x i8] c"Assert fail: (1 == int32(arg3.shape[3])), Argument arg3.shape[3] has an unsatisfied constraint\00", align 1
@.str.46 = private constant [95 x i8] c"Assert fail: (8 == int32(arg3.shape[4])), Argument arg3.shape[4] has an unsatisfied constraint\00", align 1
@.str.47 = private constant [228 x i8] c"Assert fail: (((((1 == int32(arg3.strides[4])) && (8 == int32(arg3.strides[3]))) && (8 == int32(arg3.strides[2]))) && (8 == int32(arg3.strides[1]))) && (16 == int32(arg3.strides[0]))), arg3.strides: expected to be compact array\00", align 1
@.str.48 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg3, 0, 8)), Argument arg3.byte_offset has an unsatisfied constraint\00", align 1
@.str.49 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg3, 0, 10)), Argument arg3.device_type has an unsatisfied constraint\00", align 1
@.str.50 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg3, 0, 9)), Argument arg3.device_id has an unsatisfied constraint\00", align 1
@.str.51 = private constant [81 x i8] c"Assert fail: (5 == tvm_struct_get(arg4, 0, 4)), arg4.ndim is expected to equal 5\00", align 1
@.str.52 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg4, 0, 5) == (uint8)2) && (tvm_struct_get(arg4, 0, 6) == (uint8)32)) && (tvm_struct_get(arg4, 0, 7) == (uint16)1)), arg4.dtype is expected to be float32\00", align 1
@.str.53 = private constant [95 x i8] c"Assert fail: (1 == int32(arg4.shape[0])), Argument arg4.shape[0] has an unsatisfied constraint\00", align 1
@.str.54 = private constant [95 x i8] c"Assert fail: (2 == int32(arg4.shape[1])), Argument arg4.shape[1] has an unsatisfied constraint\00", align 1
@.str.55 = private constant [95 x i8] c"Assert fail: (1 == int32(arg4.shape[2])), Argument arg4.shape[2] has an unsatisfied constraint\00", align 1
@.str.56 = private constant [95 x i8] c"Assert fail: (1 == int32(arg4.shape[3])), Argument arg4.shape[3] has an unsatisfied constraint\00", align 1
@.str.57 = private constant [95 x i8] c"Assert fail: (8 == int32(arg4.shape[4])), Argument arg4.shape[4] has an unsatisfied constraint\00", align 1
@.str.58 = private constant [228 x i8] c"Assert fail: (((((1 == int32(arg4.strides[4])) && (8 == int32(arg4.strides[3]))) && (8 == int32(arg4.strides[2]))) && (8 == int32(arg4.strides[1]))) && (16 == int32(arg4.strides[0]))), arg4.strides: expected to be compact array\00", align 1
@.str.59 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg4, 0, 8)), Argument arg4.byte_offset has an unsatisfied constraint\00", align 1
@.str.60 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg4, 0, 10)), Argument arg4.device_type has an unsatisfied constraint\00", align 1
@.str.61 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg4, 0, 9)), Argument arg4.device_id has an unsatisfied constraint\00", align 1
@.str.62 = private constant [81 x i8] c"Assert fail: (5 == tvm_struct_get(arg5, 0, 4)), arg5.ndim is expected to equal 5\00", align 1
@.str.63 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg5, 0, 5) == (uint8)2) && (tvm_struct_get(arg5, 0, 6) == (uint8)32)) && (tvm_struct_get(arg5, 0, 7) == (uint16)1)), arg5.dtype is expected to be float32\00", align 1
@.str.64 = private constant [95 x i8] c"Assert fail: (1 == int32(arg5.shape[0])), Argument arg5.shape[0] has an unsatisfied constraint\00", align 1
@.str.65 = private constant [95 x i8] c"Assert fail: (2 == int32(arg5.shape[1])), Argument arg5.shape[1] has an unsatisfied constraint\00", align 1
@.str.66 = private constant [96 x i8] c"Assert fail: (13 == int32(arg5.shape[2])), Argument arg5.shape[2] has an unsatisfied constraint\00", align 1
@.str.67 = private constant [96 x i8] c"Assert fail: (13 == int32(arg5.shape[3])), Argument arg5.shape[3] has an unsatisfied constraint\00", align 1
@.str.68 = private constant [95 x i8] c"Assert fail: (8 == int32(arg5.shape[4])), Argument arg5.shape[4] has an unsatisfied constraint\00", align 1
@.str.69 = private constant [235 x i8] c"Assert fail: (((((1 == int32(arg5.strides[4])) && (8 == int32(arg5.strides[3]))) && (104 == int32(arg5.strides[2]))) && (1352 == int32(arg5.strides[1]))) && (2704 == int32(arg5.strides[0]))), arg5.strides: expected to be compact array\00", align 1
@.str.70 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg5, 0, 8)), Argument arg5.byte_offset has an unsatisfied constraint\00", align 1
@.str.71 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg5, 0, 10)), Argument arg5.device_type has an unsatisfied constraint\00", align 1
@.str.72 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg5, 0, 9)), Argument arg5.device_id has an unsatisfied constraint\00", align 1
@.str.73 = private constant [77 x i8] c"Assert fail: (num_args == 2), fused_layout_transform_3: num_args should be 2\00", align 1
@.str.74 = private constant [152 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_layout_transform_3: Expect arg[0] to be pointer\00", align 1
@.str.75 = private constant [152 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_layout_transform_3: Expect arg[1] to be pointer\00", align 1
@.str.76 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 4\00", align 1
@.str.77 = private constant [197 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (14 == int32(arg0.strides[2]))) && (196 == int32(arg0.strides[1]))) && (196 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.78 = private constant [81 x i8] c"Assert fail: (5 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 5\00", align 1
@.str.79 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.80 = private constant [96 x i8] c"Assert fail: (14 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.81 = private constant [96 x i8] c"Assert fail: (14 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint\00", align 1
@.str.82 = private constant [232 x i8] c"Assert fail: (((((1 == int32(arg1.strides[4])) && (1 == int32(arg1.strides[3]))) && (14 == int32(arg1.strides[2]))) && (196 == int32(arg1.strides[1]))) && (196 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.84 = private constant [77 x i8] c"Assert fail: (num_args == 2), fused_layout_transform_2: num_args should be 2\00", align 1
@.str.85 = private constant [152 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_layout_transform_2: Expect arg[0] to be pointer\00", align 1
@.str.86 = private constant [152 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_layout_transform_2: Expect arg[1] to be pointer\00", align 1
@.str.87 = private constant [95 x i8] c"Assert fail: (2 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.88 = private constant [96 x i8] c"Assert fail: (13 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.89 = private constant [96 x i8] c"Assert fail: (13 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.90 = private constant [95 x i8] c"Assert fail: (8 == int32(arg0.shape[4])), Argument arg0.shape[4] has an unsatisfied constraint\00", align 1
@.str.91 = private constant [235 x i8] c"Assert fail: (((((1 == int32(arg0.strides[4])) && (8 == int32(arg0.strides[3]))) && (104 == int32(arg0.strides[2]))) && (1352 == int32(arg0.strides[1]))) && (2704 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.92 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4\00", align 1
@.str.93 = private constant [96 x i8] c"Assert fail: (16 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.94 = private constant [96 x i8] c"Assert fail: (13 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.95 = private constant [96 x i8] c"Assert fail: (13 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint\00", align 1
@.str.96 = private constant [198 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (13 == int32(arg1.strides[2]))) && (169 == int32(arg1.strides[1]))) && (2704 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.98 = private constant [72 x i8] c"Assert fail: (num_args == 2), fused_nn_max_pool2d: num_args should be 2\00", align 1
@.str.99 = private constant [147 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_max_pool2d: Expect arg[0] to be pointer\00", align 1
@.str.100 = private constant [147 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_max_pool2d: Expect arg[1] to be pointer\00", align 1
@.str.101 = private constant [96 x i8] c"Assert fail: (28 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.102 = private constant [96 x i8] c"Assert fail: (28 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.103 = private constant [197 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (28 == int32(arg0.strides[2]))) && (784 == int32(arg0.strides[1]))) && (784 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.104 = private constant [197 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (14 == int32(arg1.strides[2]))) && (196 == int32(arg1.strides[1]))) && (196 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.105 = private constant [69 x i8] c"Assert fail: (num_args == 2), fused_nn_softmax: num_args should be 2\00", align 1
@.str.106 = private constant [144 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_softmax: Expect arg[0] to be pointer\00", align 1
@.str.107 = private constant [144 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_softmax: Expect arg[1] to be pointer\00", align 1
@.str.108 = private constant [96 x i8] c"Assert fail: (16 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.109 = private constant [198 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (13 == int32(arg0.strides[2]))) && (169 == int32(arg0.strides[1]))) && (2704 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@__TVMBackendAllocWorkspace = linkonce dllexport local_unnamed_addr global i8* (i32, i32, i64, i32, i32)* null, align 8
@__TVMBackendFreeWorkspace = linkonce dllexport local_unnamed_addr global i32 (i32, i32, i8*)* null, align 8

define dllexport i32 @fused_nn_contrib_conv2d_NCHWc_add_multiply_add_nn_relu(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 6
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %1**
  %8 = load %1*, %1** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !9
  %11 = getelementptr inbounds i8, i8* %0, i64 8
  %12 = bitcast i8* %11 to %1**
  %13 = load %1*, %1** %12, align 8
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %1**
  %16 = load %1*, %1** %15, align 8
  %17 = getelementptr inbounds i8, i8* %1, i64 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4, !tbaa !23
  %20 = getelementptr inbounds i8, i8* %0, i64 24
  %21 = bitcast i8* %20 to %1**
  %22 = load %1*, %1** %21, align 8
  %23 = getelementptr inbounds i8, i8* %1, i64 12
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4, !tbaa !26
  %26 = getelementptr inbounds i8, i8* %0, i64 32
  %27 = bitcast i8* %26 to %1**
  %28 = load %1*, %1** %27, align 8
  %29 = getelementptr inbounds i8, i8* %1, i64 16
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %30, align 4, !tbaa !28
  %32 = getelementptr inbounds i8, i8* %0, i64 40
  %33 = bitcast i8* %32 to %1**
  %34 = load %1*, %1** %33, align 8
  %35 = getelementptr inbounds i8, i8* %1, i64 20
  %36 = bitcast i8* %35 to i32*
  %37 = load i32, i32* %36, align 4, !tbaa !32
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
  tail call void %78(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.1, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %79 = getelementptr inbounds i8, i8* %1, i64 4
  %80 = bitcast i8* %79 to i32*
  %81 = load i32, i32* %80, align 4, !tbaa !34
  switch i32 %81, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %82 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %82(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.2, i64 0, i64 0))
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
  tail call void %83(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.3, i64 0, i64 0))
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
  tail call void %84(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.4, i64 0, i64 0))
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
  tail call void %85(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.5, i64 0, i64 0))
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
  tail call void %86(i8* getelementptr inbounds ([182 x i8], [182 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10, %assert_end10, %assert_end10, %assert_end10
  %87 = icmp eq i32 %45, 1
  br i1 %87, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %88 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %88(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %89 = getelementptr inbounds %1, %1* %8, i64 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %90, 5
  br i1 %91, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %92(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0))
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
  tail call void %104(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %105 = load i64, i64* %41, align 8, !tbaa !36
  %106 = trunc i64 %105 to i32
  %107 = icmp eq i32 %106, 1
  br i1 %107, label %assert_end20, label %assert_fail19, !prof !5

assert_fail19:                                    ; preds = %assert_end18
  %108 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %108(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %109 = getelementptr inbounds i64, i64* %41, i64 1
  %110 = load i64, i64* %109, align 8, !tbaa !50
  %111 = trunc i64 %110 to i32
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %assert_end22, label %assert_fail21, !prof !5

assert_fail21:                                    ; preds = %assert_end20
  %113 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %113(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %assert_end20
  %114 = getelementptr inbounds i64, i64* %41, i64 2
  %115 = load i64, i64* %114, align 8, !tbaa !52
  %116 = trunc i64 %115 to i32
  %117 = icmp eq i32 %116, 14
  br i1 %117, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %118 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %118(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end22
  %119 = getelementptr inbounds i64, i64* %41, i64 3
  %120 = load i64, i64* %119, align 8, !tbaa !55
  %121 = trunc i64 %120 to i32
  %122 = icmp eq i32 %121, 14
  br i1 %122, label %assert_end26, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %123 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %123(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %124 = getelementptr inbounds i64, i64* %41, i64 4
  %125 = load i64, i64* %124, align 8, !tbaa !57
  %126 = trunc i64 %125 to i32
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %128 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %128(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.14, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %129 = icmp eq i64* %43, null
  br i1 %129, label %if_end, label %if_then, !prof !61

if_then:                                          ; preds = %assert_end28
  %130 = bitcast i64* %43 to <4 x i64>*
  %131 = load <4 x i64>, <4 x i64>* %130, align 8, !tbaa !62
  %132 = trunc <4 x i64> %131 to <4 x i32>
  %133 = icmp eq <4 x i32> %132, <i32 196, i32 196, i32 14, i32 1>
  %134 = getelementptr inbounds i64, i64* %43, i64 4
  %135 = load i64, i64* %134, align 8, !tbaa !74
  %136 = trunc i64 %135 to i32
  %137 = icmp eq i32 %136, 1
  %rdx.shuf173 = shufflevector <4 x i1> %133, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx174 = and <4 x i1> %133, %rdx.shuf173
  %rdx.shuf175 = shufflevector <4 x i1> %bin.rdx174, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx176 = and <4 x i1> %bin.rdx174, %rdx.shuf175
  %138 = extractelement <4 x i1> %bin.rdx176, i32 0
  %139 = and i1 %138, %137
  br i1 %139, label %if_end, label %assert_fail29, !prof !5

if_end:                                           ; preds = %assert_end28, %if_then
  %140 = getelementptr inbounds %1, %1* %8, i64 0, i32 6
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %assert_end32, label %assert_fail31, !prof !5

assert_fail29:                                    ; preds = %if_then
  %143 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %143(i8* getelementptr inbounds ([232 x i8], [232 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_fail31:                                    ; preds = %if_end
  %144 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %144(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %if_end
  %145 = getelementptr inbounds %1, %1* %13, i64 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 6
  br i1 %147, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %148 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %148(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %149 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 2
  %150 = load i16, i16* %149, align 2
  %151 = icmp eq i16 %150, 1
  %152 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 1
  %153 = load i8, i8* %152, align 1
  %154 = icmp eq i8 %153, 32
  %155 = getelementptr inbounds %1, %1* %13, i64 0, i32 3, i32 0
  %156 = load i8, i8* %155, align 1
  %157 = icmp eq i8 %156, 2
  %158 = and i1 %154, %157
  %159 = and i1 %151, %158
  br i1 %159, label %assert_end36, label %assert_fail35, !prof !5

assert_fail35:                                    ; preds = %assert_end34
  %160 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %160(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %assert_end34
  %161 = load i64, i64* %51, align 8, !tbaa !78
  %162 = trunc i64 %161 to i32
  %163 = icmp eq i32 %162, 2
  br i1 %163, label %assert_end38, label %assert_fail37, !prof !5

assert_fail37:                                    ; preds = %assert_end36
  %164 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %164(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.19, i64 0, i64 0))
  ret i32 -1

assert_end38:                                     ; preds = %assert_end36
  %165 = getelementptr inbounds i64, i64* %51, i64 1
  %166 = load i64, i64* %165, align 8, !tbaa !92
  %167 = trunc i64 %166 to i32
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %assert_end40, label %assert_fail39, !prof !5

assert_fail39:                                    ; preds = %assert_end38
  %169 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %169(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.20, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %assert_end38
  %170 = getelementptr inbounds i64, i64* %51, i64 2
  %171 = load i64, i64* %170, align 8, !tbaa !94
  %172 = trunc i64 %171 to i32
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %assert_end42, label %assert_fail41, !prof !5

assert_fail41:                                    ; preds = %assert_end40
  %174 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %174(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.21, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %assert_end40
  %175 = getelementptr inbounds i64, i64* %51, i64 3
  %176 = load i64, i64* %175, align 8, !tbaa !97
  %177 = trunc i64 %176 to i32
  %178 = icmp eq i32 %177, 2
  br i1 %178, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %179 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %179(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.22, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %180 = getelementptr inbounds i64, i64* %51, i64 4
  %181 = load i64, i64* %180, align 8, !tbaa !99
  %182 = trunc i64 %181 to i32
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %assert_end46, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %184 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %184(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.23, i64 0, i64 0))
  ret i32 -1

assert_end46:                                     ; preds = %assert_end44
  %185 = getelementptr inbounds i64, i64* %51, i64 5
  %186 = load i64, i64* %185, align 8, !tbaa !103
  %187 = trunc i64 %186 to i32
  %188 = icmp eq i32 %187, 8
  br i1 %188, label %assert_end48, label %assert_fail47, !prof !5

assert_fail47:                                    ; preds = %assert_end46
  %189 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %189(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.24, i64 0, i64 0))
  ret i32 -1

assert_end48:                                     ; preds = %assert_end46
  %190 = icmp eq i64* %53, null
  br i1 %190, label %if_end50, label %if_then49, !prof !61

if_then49:                                        ; preds = %assert_end48
  %191 = bitcast i64* %53 to <4 x i64>*
  %192 = load <4 x i64>, <4 x i64>* %191, align 8, !tbaa !105
  %193 = trunc <4 x i64> %192 to <4 x i32>
  %194 = icmp eq <4 x i32> %193, <i32 32, i32 32, i32 16, i32 8>
  %195 = getelementptr inbounds i64, i64* %53, i64 4
  %196 = load i64, i64* %195, align 8, !tbaa !117
  %197 = trunc i64 %196 to i32
  %198 = icmp eq i32 %197, 8
  %199 = getelementptr inbounds i64, i64* %53, i64 5
  %200 = load i64, i64* %199, align 8, !tbaa !121
  %201 = trunc i64 %200 to i32
  %202 = icmp eq i32 %201, 1
  %rdx.shuf169 = shufflevector <4 x i1> %194, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx170 = and <4 x i1> %194, %rdx.shuf169
  %rdx.shuf171 = shufflevector <4 x i1> %bin.rdx170, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx172 = and <4 x i1> %bin.rdx170, %rdx.shuf171
  %203 = extractelement <4 x i1> %bin.rdx172, i32 0
  %204 = and i1 %203, %198
  %205 = and i1 %204, %202
  br i1 %205, label %if_end50, label %assert_fail51, !prof !5

if_end50:                                         ; preds = %assert_end48, %if_then49
  %206 = getelementptr inbounds %1, %1* %13, i64 0, i32 6
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %assert_end54, label %assert_fail53, !prof !5

assert_fail51:                                    ; preds = %if_then49
  %209 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %209(i8* getelementptr inbounds ([265 x i8], [265 x i8]* @.str.25, i64 0, i64 0))
  ret i32 -1

assert_fail53:                                    ; preds = %if_end50
  %210 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %210(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_end54:                                     ; preds = %if_end50
  %211 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = icmp eq i32 %212, 1
  br i1 %213, label %assert_end56, label %assert_fail55, !prof !5

assert_fail55:                                    ; preds = %assert_end54
  %214 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %214(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end56:                                     ; preds = %assert_end54
  %215 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %47, %216
  br i1 %217, label %assert_end58, label %assert_fail57, !prof !5

assert_fail57:                                    ; preds = %assert_end56
  %218 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %218(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_end58:                                     ; preds = %assert_end56
  %219 = getelementptr inbounds %1, %1* %16, i64 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %220, 5
  br i1 %221, label %assert_end60, label %assert_fail59, !prof !5

assert_fail59:                                    ; preds = %assert_end58
  %222 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %222(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.29, i64 0, i64 0))
  ret i32 -1

assert_end60:                                     ; preds = %assert_end58
  %223 = getelementptr inbounds %1, %1* %16, i64 0, i32 3, i32 2
  %224 = load i16, i16* %223, align 2
  %225 = icmp eq i16 %224, 1
  %226 = getelementptr inbounds %1, %1* %16, i64 0, i32 3, i32 1
  %227 = load i8, i8* %226, align 1
  %228 = icmp eq i8 %227, 32
  %229 = getelementptr inbounds %1, %1* %16, i64 0, i32 3, i32 0
  %230 = load i8, i8* %229, align 1
  %231 = icmp eq i8 %230, 2
  %232 = and i1 %228, %231
  %233 = and i1 %225, %232
  br i1 %233, label %assert_end62, label %assert_fail61, !prof !5

assert_fail61:                                    ; preds = %assert_end60
  %234 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %234(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.30, i64 0, i64 0))
  ret i32 -1

assert_end62:                                     ; preds = %assert_end60
  %235 = load i64, i64* %57, align 8, !tbaa !123
  %236 = trunc i64 %235 to i32
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %assert_end64, label %assert_fail63, !prof !5

assert_fail63:                                    ; preds = %assert_end62
  %238 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %238(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.31, i64 0, i64 0))
  ret i32 -1

assert_end64:                                     ; preds = %assert_end62
  %239 = getelementptr inbounds i64, i64* %57, i64 1
  %240 = load i64, i64* %239, align 8, !tbaa !137
  %241 = trunc i64 %240 to i32
  %242 = icmp eq i32 %241, 2
  br i1 %242, label %assert_end66, label %assert_fail65, !prof !5

assert_fail65:                                    ; preds = %assert_end64
  %243 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %243(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.32, i64 0, i64 0))
  ret i32 -1

assert_end66:                                     ; preds = %assert_end64
  %244 = getelementptr inbounds i64, i64* %57, i64 2
  %245 = load i64, i64* %244, align 8, !tbaa !139
  %246 = trunc i64 %245 to i32
  %247 = icmp eq i32 %246, 1
  br i1 %247, label %assert_end68, label %assert_fail67, !prof !5

assert_fail67:                                    ; preds = %assert_end66
  %248 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %248(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.33, i64 0, i64 0))
  ret i32 -1

assert_end68:                                     ; preds = %assert_end66
  %249 = getelementptr inbounds i64, i64* %57, i64 3
  %250 = load i64, i64* %249, align 8, !tbaa !142
  %251 = trunc i64 %250 to i32
  %252 = icmp eq i32 %251, 1
  br i1 %252, label %assert_end70, label %assert_fail69, !prof !5

assert_fail69:                                    ; preds = %assert_end68
  %253 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %253(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.34, i64 0, i64 0))
  ret i32 -1

assert_end70:                                     ; preds = %assert_end68
  %254 = getelementptr inbounds i64, i64* %57, i64 4
  %255 = load i64, i64* %254, align 8, !tbaa !144
  %256 = trunc i64 %255 to i32
  %257 = icmp eq i32 %256, 8
  br i1 %257, label %assert_end72, label %assert_fail71, !prof !5

assert_fail71:                                    ; preds = %assert_end70
  %258 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %258(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.35, i64 0, i64 0))
  ret i32 -1

assert_end72:                                     ; preds = %assert_end70
  %259 = icmp eq i64* %59, null
  br i1 %259, label %if_end74, label %if_then73, !prof !61

if_then73:                                        ; preds = %assert_end72
  %260 = bitcast i64* %59 to <4 x i64>*
  %261 = load <4 x i64>, <4 x i64>* %260, align 8, !tbaa !148
  %262 = trunc <4 x i64> %261 to <4 x i32>
  %263 = icmp eq <4 x i32> %262, <i32 16, i32 8, i32 8, i32 8>
  %264 = getelementptr inbounds i64, i64* %59, i64 4
  %265 = load i64, i64* %264, align 8, !tbaa !160
  %266 = trunc i64 %265 to i32
  %267 = icmp eq i32 %266, 1
  %rdx.shuf165 = shufflevector <4 x i1> %263, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx166 = and <4 x i1> %263, %rdx.shuf165
  %rdx.shuf167 = shufflevector <4 x i1> %bin.rdx166, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx168 = and <4 x i1> %bin.rdx166, %rdx.shuf167
  %268 = extractelement <4 x i1> %bin.rdx168, i32 0
  %269 = and i1 %268, %267
  br i1 %269, label %if_end74, label %assert_fail75, !prof !5

if_end74:                                         ; preds = %assert_end72, %if_then73
  %270 = getelementptr inbounds %1, %1* %16, i64 0, i32 6
  %271 = load i64, i64* %270, align 8
  %272 = icmp eq i64 %271, 0
  br i1 %272, label %assert_end78, label %assert_fail77, !prof !5

assert_fail75:                                    ; preds = %if_then73
  %273 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %273(i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.36, i64 0, i64 0))
  ret i32 -1

assert_fail77:                                    ; preds = %if_end74
  %274 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %274(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.37, i64 0, i64 0))
  ret i32 -1

assert_end78:                                     ; preds = %if_end74
  %275 = getelementptr inbounds %1, %1* %16, i64 0, i32 1, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = icmp eq i32 %276, 1
  br i1 %277, label %assert_end80, label %assert_fail79, !prof !5

assert_fail79:                                    ; preds = %assert_end78
  %278 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %278(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.38, i64 0, i64 0))
  ret i32 -1

assert_end80:                                     ; preds = %assert_end78
  %279 = getelementptr inbounds %1, %1* %16, i64 0, i32 1, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = icmp eq i32 %47, %280
  br i1 %281, label %assert_end82, label %assert_fail81, !prof !5

assert_fail81:                                    ; preds = %assert_end80
  %282 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %282(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.39, i64 0, i64 0))
  ret i32 -1

assert_end82:                                     ; preds = %assert_end80
  %283 = getelementptr inbounds %1, %1* %22, i64 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = icmp eq i32 %284, 5
  br i1 %285, label %assert_end84, label %assert_fail83, !prof !5

assert_fail83:                                    ; preds = %assert_end82
  %286 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %286(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.40, i64 0, i64 0))
  ret i32 -1

assert_end84:                                     ; preds = %assert_end82
  %287 = getelementptr inbounds %1, %1* %22, i64 0, i32 3, i32 2
  %288 = load i16, i16* %287, align 2
  %289 = icmp eq i16 %288, 1
  %290 = getelementptr inbounds %1, %1* %22, i64 0, i32 3, i32 1
  %291 = load i8, i8* %290, align 1
  %292 = icmp eq i8 %291, 32
  %293 = getelementptr inbounds %1, %1* %22, i64 0, i32 3, i32 0
  %294 = load i8, i8* %293, align 1
  %295 = icmp eq i8 %294, 2
  %296 = and i1 %292, %295
  %297 = and i1 %289, %296
  br i1 %297, label %assert_end86, label %assert_fail85, !prof !5

assert_fail85:                                    ; preds = %assert_end84
  %298 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %298(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.41, i64 0, i64 0))
  ret i32 -1

assert_end86:                                     ; preds = %assert_end84
  %299 = load i64, i64* %63, align 8, !tbaa !164
  %300 = trunc i64 %299 to i32
  %301 = icmp eq i32 %300, 1
  br i1 %301, label %assert_end88, label %assert_fail87, !prof !5

assert_fail87:                                    ; preds = %assert_end86
  %302 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %302(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.42, i64 0, i64 0))
  ret i32 -1

assert_end88:                                     ; preds = %assert_end86
  %303 = getelementptr inbounds i64, i64* %63, i64 1
  %304 = load i64, i64* %303, align 8, !tbaa !178
  %305 = trunc i64 %304 to i32
  %306 = icmp eq i32 %305, 2
  br i1 %306, label %assert_end90, label %assert_fail89, !prof !5

assert_fail89:                                    ; preds = %assert_end88
  %307 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %307(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.43, i64 0, i64 0))
  ret i32 -1

assert_end90:                                     ; preds = %assert_end88
  %308 = getelementptr inbounds i64, i64* %63, i64 2
  %309 = load i64, i64* %308, align 8, !tbaa !180
  %310 = trunc i64 %309 to i32
  %311 = icmp eq i32 %310, 1
  br i1 %311, label %assert_end92, label %assert_fail91, !prof !5

assert_fail91:                                    ; preds = %assert_end90
  %312 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %312(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.44, i64 0, i64 0))
  ret i32 -1

assert_end92:                                     ; preds = %assert_end90
  %313 = getelementptr inbounds i64, i64* %63, i64 3
  %314 = load i64, i64* %313, align 8, !tbaa !183
  %315 = trunc i64 %314 to i32
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %assert_end94, label %assert_fail93, !prof !5

assert_fail93:                                    ; preds = %assert_end92
  %317 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %317(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.45, i64 0, i64 0))
  ret i32 -1

assert_end94:                                     ; preds = %assert_end92
  %318 = getelementptr inbounds i64, i64* %63, i64 4
  %319 = load i64, i64* %318, align 8, !tbaa !185
  %320 = trunc i64 %319 to i32
  %321 = icmp eq i32 %320, 8
  br i1 %321, label %assert_end96, label %assert_fail95, !prof !5

assert_fail95:                                    ; preds = %assert_end94
  %322 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %322(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.46, i64 0, i64 0))
  ret i32 -1

assert_end96:                                     ; preds = %assert_end94
  %323 = icmp eq i64* %65, null
  br i1 %323, label %if_end98, label %if_then97, !prof !61

if_then97:                                        ; preds = %assert_end96
  %324 = bitcast i64* %65 to <4 x i64>*
  %325 = load <4 x i64>, <4 x i64>* %324, align 8, !tbaa !189
  %326 = trunc <4 x i64> %325 to <4 x i32>
  %327 = icmp eq <4 x i32> %326, <i32 16, i32 8, i32 8, i32 8>
  %328 = getelementptr inbounds i64, i64* %65, i64 4
  %329 = load i64, i64* %328, align 8, !tbaa !201
  %330 = trunc i64 %329 to i32
  %331 = icmp eq i32 %330, 1
  %rdx.shuf161 = shufflevector <4 x i1> %327, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx162 = and <4 x i1> %327, %rdx.shuf161
  %rdx.shuf163 = shufflevector <4 x i1> %bin.rdx162, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx164 = and <4 x i1> %bin.rdx162, %rdx.shuf163
  %332 = extractelement <4 x i1> %bin.rdx164, i32 0
  %333 = and i1 %332, %331
  br i1 %333, label %if_end98, label %assert_fail99, !prof !5

if_end98:                                         ; preds = %assert_end96, %if_then97
  %334 = getelementptr inbounds %1, %1* %22, i64 0, i32 6
  %335 = load i64, i64* %334, align 8
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %assert_end102, label %assert_fail101, !prof !5

assert_fail99:                                    ; preds = %if_then97
  %337 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %337(i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.47, i64 0, i64 0))
  ret i32 -1

assert_fail101:                                   ; preds = %if_end98
  %338 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %338(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.48, i64 0, i64 0))
  ret i32 -1

assert_end102:                                    ; preds = %if_end98
  %339 = getelementptr inbounds %1, %1* %22, i64 0, i32 1, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = icmp eq i32 %340, 1
  br i1 %341, label %assert_end104, label %assert_fail103, !prof !5

assert_fail103:                                   ; preds = %assert_end102
  %342 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %342(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.49, i64 0, i64 0))
  ret i32 -1

assert_end104:                                    ; preds = %assert_end102
  %343 = getelementptr inbounds %1, %1* %22, i64 0, i32 1, i32 1
  %344 = load i32, i32* %343, align 4
  %345 = icmp eq i32 %47, %344
  br i1 %345, label %assert_end106, label %assert_fail105, !prof !5

assert_fail105:                                   ; preds = %assert_end104
  %346 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %346(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.50, i64 0, i64 0))
  ret i32 -1

assert_end106:                                    ; preds = %assert_end104
  %347 = getelementptr inbounds %1, %1* %28, i64 0, i32 2
  %348 = load i32, i32* %347, align 4
  %349 = icmp eq i32 %348, 5
  br i1 %349, label %assert_end108, label %assert_fail107, !prof !5

assert_fail107:                                   ; preds = %assert_end106
  %350 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %350(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.51, i64 0, i64 0))
  ret i32 -1

assert_end108:                                    ; preds = %assert_end106
  %351 = getelementptr inbounds %1, %1* %28, i64 0, i32 3, i32 2
  %352 = load i16, i16* %351, align 2
  %353 = icmp eq i16 %352, 1
  %354 = getelementptr inbounds %1, %1* %28, i64 0, i32 3, i32 1
  %355 = load i8, i8* %354, align 1
  %356 = icmp eq i8 %355, 32
  %357 = getelementptr inbounds %1, %1* %28, i64 0, i32 3, i32 0
  %358 = load i8, i8* %357, align 1
  %359 = icmp eq i8 %358, 2
  %360 = and i1 %356, %359
  %361 = and i1 %353, %360
  br i1 %361, label %assert_end110, label %assert_fail109, !prof !5

assert_fail109:                                   ; preds = %assert_end108
  %362 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %362(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.52, i64 0, i64 0))
  ret i32 -1

assert_end110:                                    ; preds = %assert_end108
  %363 = load i64, i64* %69, align 8, !tbaa !205
  %364 = trunc i64 %363 to i32
  %365 = icmp eq i32 %364, 1
  br i1 %365, label %assert_end112, label %assert_fail111, !prof !5

assert_fail111:                                   ; preds = %assert_end110
  %366 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %366(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.53, i64 0, i64 0))
  ret i32 -1

assert_end112:                                    ; preds = %assert_end110
  %367 = getelementptr inbounds i64, i64* %69, i64 1
  %368 = load i64, i64* %367, align 8, !tbaa !219
  %369 = trunc i64 %368 to i32
  %370 = icmp eq i32 %369, 2
  br i1 %370, label %assert_end114, label %assert_fail113, !prof !5

assert_fail113:                                   ; preds = %assert_end112
  %371 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %371(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.54, i64 0, i64 0))
  ret i32 -1

assert_end114:                                    ; preds = %assert_end112
  %372 = getelementptr inbounds i64, i64* %69, i64 2
  %373 = load i64, i64* %372, align 8, !tbaa !221
  %374 = trunc i64 %373 to i32
  %375 = icmp eq i32 %374, 1
  br i1 %375, label %assert_end116, label %assert_fail115, !prof !5

assert_fail115:                                   ; preds = %assert_end114
  %376 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %376(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.55, i64 0, i64 0))
  ret i32 -1

assert_end116:                                    ; preds = %assert_end114
  %377 = getelementptr inbounds i64, i64* %69, i64 3
  %378 = load i64, i64* %377, align 8, !tbaa !224
  %379 = trunc i64 %378 to i32
  %380 = icmp eq i32 %379, 1
  br i1 %380, label %assert_end118, label %assert_fail117, !prof !5

assert_fail117:                                   ; preds = %assert_end116
  %381 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %381(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.56, i64 0, i64 0))
  ret i32 -1

assert_end118:                                    ; preds = %assert_end116
  %382 = getelementptr inbounds i64, i64* %69, i64 4
  %383 = load i64, i64* %382, align 8, !tbaa !226
  %384 = trunc i64 %383 to i32
  %385 = icmp eq i32 %384, 8
  br i1 %385, label %assert_end120, label %assert_fail119, !prof !5

assert_fail119:                                   ; preds = %assert_end118
  %386 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %386(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.57, i64 0, i64 0))
  ret i32 -1

assert_end120:                                    ; preds = %assert_end118
  %387 = icmp eq i64* %71, null
  br i1 %387, label %if_end122, label %if_then121, !prof !61

if_then121:                                       ; preds = %assert_end120
  %388 = bitcast i64* %71 to <4 x i64>*
  %389 = load <4 x i64>, <4 x i64>* %388, align 8, !tbaa !230
  %390 = trunc <4 x i64> %389 to <4 x i32>
  %391 = icmp eq <4 x i32> %390, <i32 16, i32 8, i32 8, i32 8>
  %392 = getelementptr inbounds i64, i64* %71, i64 4
  %393 = load i64, i64* %392, align 8, !tbaa !242
  %394 = trunc i64 %393 to i32
  %395 = icmp eq i32 %394, 1
  %rdx.shuf157 = shufflevector <4 x i1> %391, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx158 = and <4 x i1> %391, %rdx.shuf157
  %rdx.shuf159 = shufflevector <4 x i1> %bin.rdx158, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx160 = and <4 x i1> %bin.rdx158, %rdx.shuf159
  %396 = extractelement <4 x i1> %bin.rdx160, i32 0
  %397 = and i1 %396, %395
  br i1 %397, label %if_end122, label %assert_fail123, !prof !5

if_end122:                                        ; preds = %assert_end120, %if_then121
  %398 = getelementptr inbounds %1, %1* %28, i64 0, i32 6
  %399 = load i64, i64* %398, align 8
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %assert_end126, label %assert_fail125, !prof !5

assert_fail123:                                   ; preds = %if_then121
  %401 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %401(i8* getelementptr inbounds ([228 x i8], [228 x i8]* @.str.58, i64 0, i64 0))
  ret i32 -1

assert_fail125:                                   ; preds = %if_end122
  %402 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %402(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.59, i64 0, i64 0))
  ret i32 -1

assert_end126:                                    ; preds = %if_end122
  %403 = getelementptr inbounds %1, %1* %28, i64 0, i32 1, i32 0
  %404 = load i32, i32* %403, align 4
  %405 = icmp eq i32 %404, 1
  br i1 %405, label %assert_end128, label %assert_fail127, !prof !5

assert_fail127:                                   ; preds = %assert_end126
  %406 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %406(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.60, i64 0, i64 0))
  ret i32 -1

assert_end128:                                    ; preds = %assert_end126
  %407 = getelementptr inbounds %1, %1* %28, i64 0, i32 1, i32 1
  %408 = load i32, i32* %407, align 4
  %409 = icmp eq i32 %47, %408
  br i1 %409, label %assert_end130, label %assert_fail129, !prof !5

assert_fail129:                                   ; preds = %assert_end128
  %410 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %410(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.61, i64 0, i64 0))
  ret i32 -1

assert_end130:                                    ; preds = %assert_end128
  %411 = getelementptr inbounds %1, %1* %34, i64 0, i32 2
  %412 = load i32, i32* %411, align 4
  %413 = icmp eq i32 %412, 5
  br i1 %413, label %assert_end132, label %assert_fail131, !prof !5

assert_fail131:                                   ; preds = %assert_end130
  %414 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %414(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.62, i64 0, i64 0))
  ret i32 -1

assert_end132:                                    ; preds = %assert_end130
  %415 = getelementptr inbounds %1, %1* %34, i64 0, i32 3, i32 2
  %416 = load i16, i16* %415, align 2
  %417 = icmp eq i16 %416, 1
  %418 = getelementptr inbounds %1, %1* %34, i64 0, i32 3, i32 1
  %419 = load i8, i8* %418, align 1
  %420 = icmp eq i8 %419, 32
  %421 = getelementptr inbounds %1, %1* %34, i64 0, i32 3, i32 0
  %422 = load i8, i8* %421, align 1
  %423 = icmp eq i8 %422, 2
  %424 = and i1 %420, %423
  %425 = and i1 %417, %424
  br i1 %425, label %assert_end134, label %assert_fail133, !prof !5

assert_fail133:                                   ; preds = %assert_end132
  %426 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %426(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.63, i64 0, i64 0))
  ret i32 -1

assert_end134:                                    ; preds = %assert_end132
  %427 = load i64, i64* %75, align 8, !tbaa !246
  %428 = trunc i64 %427 to i32
  %429 = icmp eq i32 %428, 1
  br i1 %429, label %assert_end136, label %assert_fail135, !prof !5

assert_fail135:                                   ; preds = %assert_end134
  %430 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %430(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.64, i64 0, i64 0))
  ret i32 -1

assert_end136:                                    ; preds = %assert_end134
  %431 = getelementptr inbounds i64, i64* %75, i64 1
  %432 = load i64, i64* %431, align 8, !tbaa !260
  %433 = trunc i64 %432 to i32
  %434 = icmp eq i32 %433, 2
  br i1 %434, label %assert_end138, label %assert_fail137, !prof !5

assert_fail137:                                   ; preds = %assert_end136
  %435 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %435(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.65, i64 0, i64 0))
  ret i32 -1

assert_end138:                                    ; preds = %assert_end136
  %436 = getelementptr inbounds i64, i64* %75, i64 2
  %437 = load i64, i64* %436, align 8, !tbaa !262
  %438 = trunc i64 %437 to i32
  %439 = icmp eq i32 %438, 13
  br i1 %439, label %assert_end140, label %assert_fail139, !prof !5

assert_fail139:                                   ; preds = %assert_end138
  %440 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %440(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.66, i64 0, i64 0))
  ret i32 -1

assert_end140:                                    ; preds = %assert_end138
  %441 = getelementptr inbounds i64, i64* %75, i64 3
  %442 = load i64, i64* %441, align 8, !tbaa !265
  %443 = trunc i64 %442 to i32
  %444 = icmp eq i32 %443, 13
  br i1 %444, label %assert_end142, label %assert_fail141, !prof !5

assert_fail141:                                   ; preds = %assert_end140
  %445 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %445(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.67, i64 0, i64 0))
  ret i32 -1

assert_end142:                                    ; preds = %assert_end140
  %446 = getelementptr inbounds i64, i64* %75, i64 4
  %447 = load i64, i64* %446, align 8, !tbaa !267
  %448 = trunc i64 %447 to i32
  %449 = icmp eq i32 %448, 8
  br i1 %449, label %assert_end144, label %assert_fail143, !prof !5

assert_fail143:                                   ; preds = %assert_end142
  %450 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %450(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.68, i64 0, i64 0))
  ret i32 -1

assert_end144:                                    ; preds = %assert_end142
  %451 = icmp eq i64* %77, null
  br i1 %451, label %if_end146, label %if_then145, !prof !61

if_then145:                                       ; preds = %assert_end144
  %452 = bitcast i64* %77 to <4 x i64>*
  %453 = load <4 x i64>, <4 x i64>* %452, align 8, !tbaa !271
  %454 = trunc <4 x i64> %453 to <4 x i32>
  %455 = icmp eq <4 x i32> %454, <i32 2704, i32 1352, i32 104, i32 8>
  %456 = getelementptr inbounds i64, i64* %77, i64 4
  %457 = load i64, i64* %456, align 8, !tbaa !283
  %458 = trunc i64 %457 to i32
  %459 = icmp eq i32 %458, 1
  %rdx.shuf = shufflevector <4 x i1> %455, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx = and <4 x i1> %455, %rdx.shuf
  %rdx.shuf155 = shufflevector <4 x i1> %bin.rdx, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx156 = and <4 x i1> %bin.rdx, %rdx.shuf155
  %460 = extractelement <4 x i1> %bin.rdx156, i32 0
  %461 = and i1 %460, %459
  br i1 %461, label %if_end146, label %assert_fail147, !prof !5

if_end146:                                        ; preds = %assert_end144, %if_then145
  %462 = getelementptr inbounds %1, %1* %34, i64 0, i32 6
  %463 = load i64, i64* %462, align 8
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %assert_end150, label %assert_fail149, !prof !5

assert_fail147:                                   ; preds = %if_then145
  %465 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %465(i8* getelementptr inbounds ([235 x i8], [235 x i8]* @.str.69, i64 0, i64 0))
  ret i32 -1

assert_fail149:                                   ; preds = %if_end146
  %466 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %466(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.70, i64 0, i64 0))
  ret i32 -1

assert_end150:                                    ; preds = %if_end146
  %467 = getelementptr inbounds %1, %1* %34, i64 0, i32 1, i32 0
  %468 = load i32, i32* %467, align 4
  %469 = icmp eq i32 %468, 1
  br i1 %469, label %assert_end152, label %assert_fail151, !prof !5

assert_fail151:                                   ; preds = %assert_end150
  %470 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %470(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.71, i64 0, i64 0))
  ret i32 -1

assert_end152:                                    ; preds = %assert_end150
  %471 = getelementptr inbounds %1, %1* %34, i64 0, i32 1, i32 1
  %472 = load i32, i32* %471, align 4
  %473 = icmp eq i32 %47, %472
  br i1 %473, label %assert_end154, label %assert_fail153, !prof !5

assert_fail153:                                   ; preds = %assert_end152
  %474 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %474(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.72, i64 0, i64 0))
  ret i32 -1

assert_end154:                                    ; preds = %assert_end152
  %475 = tail call fastcc i32 @fused_nn_contrib_conv2d_NCHWc_add_multiply_add_nn_relu_compute_(i8* %39, i8* %49, i8* %73, i8* %55, i8* %61, i8* %67)
  ret i32 %475
}

; Function Attrs: noinline
define private fastcc i32 @fused_nn_contrib_conv2d_NCHWc_add_multiply_add_nn_relu_compute_(i8* noalias, i8* noalias, i8* noalias, i8* noalias, i8* noalias, i8* noalias) unnamed_addr #0 {
entry:
  %6 = alloca %4, align 8
  %7 = getelementptr inbounds %4, %4* %6, i64 0, i32 0
  store i8* %0, i8** %7, align 8
  %8 = getelementptr inbounds %4, %4* %6, i64 0, i32 1
  store i8* %1, i8** %8, align 8
  %9 = getelementptr inbounds %4, %4* %6, i64 0, i32 2
  store i8* %2, i8** %9, align 8
  %10 = getelementptr inbounds %4, %4* %6, i64 0, i32 3
  store i8* %3, i8** %10, align 8
  %11 = getelementptr inbounds %4, %4* %6, i64 0, i32 4
  store i8* %4, i8** %11, align 8
  %12 = getelementptr inbounds %4, %4* %6, i64 0, i32 5
  store i8* %5, i8** %12, align 8
  %13 = bitcast %4* %6 to i8*
  %14 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %15 = call i32 %14(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda, i8* nonnull %13, i32 0)
  ret i32 %15
}

; Function Attrs: nounwind
define private i32 @__tvm_parallel_lambda(i32, %0* nocapture readonly, i8* nocapture readonly) #1 {
entry:
  %3 = alloca [13 x <8 x float>], align 32
  %.sub = getelementptr inbounds [13 x <8 x float>], [13 x <8 x float>]* %3, i64 0, i64 0
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
  %15 = getelementptr inbounds i8, i8* %2, i64 32
  %16 = bitcast i8* %15 to float**
  %17 = load float*, float** %16, align 8
  %18 = getelementptr inbounds i8, i8* %2, i64 40
  %19 = bitcast i8* %18 to float**
  %20 = load float*, float** %19, align 8
  %21 = getelementptr inbounds %0, %0* %1, i64 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 25
  %24 = sdiv i32 %23, %22
  %25 = add nsw i32 %0, 1
  %26 = mul nsw i32 %24, %25
  %27 = icmp slt i32 %26, 26
  %28 = select i1 %27, i32 %26, i32 26
  %29 = mul nsw i32 %24, %0
  %30 = icmp slt i32 %29, 26
  %31 = select i1 %30, i32 %29, i32 26
  %32 = icmp slt i32 %31, %28
  br i1 %32, label %for_body.lr.ph, label %for_end, !prof !5

for_body.lr.ph:                                   ; preds = %entry
  %33 = getelementptr inbounds [13 x <8 x float>], [13 x <8 x float>]* %3, i64 0, i64 0, i64 8
  %34 = bitcast float* %33 to <8 x float>*
  %35 = getelementptr inbounds [13 x <8 x float>], [13 x <8 x float>]* %3, i64 0, i64 0, i64 16
  %36 = bitcast float* %35 to <8 x float>*
  %37 = getelementptr inbounds [13 x <8 x float>], [13 x <8 x float>]* %3, i64 0, i64 0, i64 24
  %38 = bitcast float* %37 to <8 x float>*
  %39 = getelementptr inbounds [13 x <8 x float>], [13 x <8 x float>]* %3, i64 0, i64 0, i64 32
  %40 = bitcast float* %39 to <8 x float>*
  %41 = getelementptr inbounds [13 x <8 x float>], [13 x <8 x float>]* %3, i64 0, i64 0, i64 40
  %42 = bitcast float* %41 to <8 x float>*
  %43 = getelementptr inbounds [13 x <8 x float>], [13 x <8 x float>]* %3, i64 0, i64 0, i64 48
  %44 = bitcast float* %43 to <8 x float>*
  %45 = getelementptr inbounds [13 x <8 x float>], [13 x <8 x float>]* %3, i64 0, i64 0, i64 56
  %46 = bitcast float* %45 to <8 x float>*
  %47 = getelementptr inbounds [13 x <8 x float>], [13 x <8 x float>]* %3, i64 0, i64 0, i64 64
  %48 = bitcast float* %47 to <8 x float>*
  %49 = getelementptr inbounds [13 x <8 x float>], [13 x <8 x float>]* %3, i64 0, i64 0, i64 72
  %50 = bitcast float* %49 to <8 x float>*
  %51 = getelementptr inbounds [13 x <8 x float>], [13 x <8 x float>]* %3, i64 0, i64 0, i64 80
  %52 = bitcast float* %51 to <8 x float>*
  %53 = getelementptr inbounds [13 x <8 x float>], [13 x <8 x float>]* %3, i64 0, i64 0, i64 88
  %54 = bitcast float* %53 to <8 x float>*
  %55 = getelementptr inbounds [13 x <8 x float>], [13 x <8 x float>]* %3, i64 0, i64 0, i64 96
  %56 = bitcast float* %55 to <8 x float>*
  %57 = add i32 %31, 1
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, -1
  %60 = sext i32 %28 to i64
  %61 = bitcast [13 x <8 x float>]* %3 to i8*
  br label %for_body

for_body:                                         ; preds = %for_body.lr.ph, %for_body
  %indvars.iv = phi i64 [ %59, %for_body.lr.ph ], [ %indvars.iv.next, %for_body ]
  %62 = trunc i64 %indvars.iv to i32
  %63 = srem i32 %62, 13
  %64 = sdiv i32 %62, 13
  %65 = shl i32 %64, 5
  %66 = sext i32 %65 to i64
  %67 = mul nsw i32 %63, 14
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds float, float* %5, i64 %68
  call void @llvm.memset.p0i8.i64(i8* nonnull align 32 %61, i8 0, i64 416, i1 false)
  %70 = load float, float* %69, align 4, !tbaa !287
  %71 = insertelement <8 x float> undef, float %70, i32 0
  %72 = shufflevector <8 x float> %71, <8 x float> undef, <8 x i32> zeroinitializer
  %73 = getelementptr inbounds float, float* %8, i64 %66
  %74 = bitcast float* %73 to <8 x float>*
  %75 = load <8 x float>, <8 x float>* %74, align 32, !tbaa !290
  %76 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %72, <8 x float> %75, <8 x float> zeroinitializer)
  %77 = or i64 %68, 1
  %78 = getelementptr inbounds float, float* %5, i64 %77
  %79 = load float, float* %78, align 4, !tbaa !287
  %80 = insertelement <8 x float> undef, float %79, i32 0
  %81 = shufflevector <8 x float> %80, <8 x float> undef, <8 x i32> zeroinitializer
  %82 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %81, <8 x float> %75, <8 x float> zeroinitializer)
  %83 = add nsw i64 %68, 2
  %84 = getelementptr inbounds float, float* %5, i64 %83
  %85 = load float, float* %84, align 4, !tbaa !287
  %86 = insertelement <8 x float> undef, float %85, i32 0
  %87 = shufflevector <8 x float> %86, <8 x float> undef, <8 x i32> zeroinitializer
  %88 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %87, <8 x float> %75, <8 x float> zeroinitializer)
  %89 = add nsw i64 %68, 3
  %90 = getelementptr inbounds float, float* %5, i64 %89
  %91 = load float, float* %90, align 4, !tbaa !287
  %92 = insertelement <8 x float> undef, float %91, i32 0
  %93 = shufflevector <8 x float> %92, <8 x float> undef, <8 x i32> zeroinitializer
  %94 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %93, <8 x float> %75, <8 x float> zeroinitializer)
  %95 = add nsw i64 %68, 4
  %96 = getelementptr inbounds float, float* %5, i64 %95
  %97 = load float, float* %96, align 4, !tbaa !287
  %98 = insertelement <8 x float> undef, float %97, i32 0
  %99 = shufflevector <8 x float> %98, <8 x float> undef, <8 x i32> zeroinitializer
  %100 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %99, <8 x float> %75, <8 x float> zeroinitializer)
  %101 = add nsw i64 %68, 5
  %102 = getelementptr inbounds float, float* %5, i64 %101
  %103 = load float, float* %102, align 4, !tbaa !287
  %104 = insertelement <8 x float> undef, float %103, i32 0
  %105 = shufflevector <8 x float> %104, <8 x float> undef, <8 x i32> zeroinitializer
  %106 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %105, <8 x float> %75, <8 x float> zeroinitializer)
  %107 = add nsw i64 %68, 6
  %108 = getelementptr inbounds float, float* %5, i64 %107
  %109 = load float, float* %108, align 4, !tbaa !287
  %110 = insertelement <8 x float> undef, float %109, i32 0
  %111 = shufflevector <8 x float> %110, <8 x float> undef, <8 x i32> zeroinitializer
  %112 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %111, <8 x float> %75, <8 x float> zeroinitializer)
  %113 = add nsw i64 %68, 7
  %114 = getelementptr inbounds float, float* %5, i64 %113
  %115 = load float, float* %114, align 4, !tbaa !287
  %116 = insertelement <8 x float> undef, float %115, i32 0
  %117 = shufflevector <8 x float> %116, <8 x float> undef, <8 x i32> zeroinitializer
  %118 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %117, <8 x float> %75, <8 x float> zeroinitializer)
  %119 = add nsw i64 %68, 8
  %120 = getelementptr inbounds float, float* %5, i64 %119
  %121 = load float, float* %120, align 4, !tbaa !287
  %122 = insertelement <8 x float> undef, float %121, i32 0
  %123 = shufflevector <8 x float> %122, <8 x float> undef, <8 x i32> zeroinitializer
  %124 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %123, <8 x float> %75, <8 x float> zeroinitializer)
  %125 = add nsw i64 %68, 9
  %126 = getelementptr inbounds float, float* %5, i64 %125
  %127 = load float, float* %126, align 4, !tbaa !287
  %128 = insertelement <8 x float> undef, float %127, i32 0
  %129 = shufflevector <8 x float> %128, <8 x float> undef, <8 x i32> zeroinitializer
  %130 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %129, <8 x float> %75, <8 x float> zeroinitializer)
  %131 = add nsw i64 %68, 10
  %132 = getelementptr inbounds float, float* %5, i64 %131
  %133 = load float, float* %132, align 4, !tbaa !287
  %134 = insertelement <8 x float> undef, float %133, i32 0
  %135 = shufflevector <8 x float> %134, <8 x float> undef, <8 x i32> zeroinitializer
  %136 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %135, <8 x float> %75, <8 x float> zeroinitializer)
  %137 = add nsw i64 %68, 11
  %138 = getelementptr inbounds float, float* %5, i64 %137
  %139 = load float, float* %138, align 4, !tbaa !287
  %140 = insertelement <8 x float> undef, float %139, i32 0
  %141 = shufflevector <8 x float> %140, <8 x float> undef, <8 x i32> zeroinitializer
  %142 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %141, <8 x float> %75, <8 x float> zeroinitializer)
  %143 = add nsw i64 %68, 12
  %144 = getelementptr inbounds float, float* %5, i64 %143
  %145 = load float, float* %144, align 4, !tbaa !287
  %146 = insertelement <8 x float> undef, float %145, i32 0
  %147 = shufflevector <8 x float> %146, <8 x float> undef, <8 x i32> zeroinitializer
  %148 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %147, <8 x float> %75, <8 x float> zeroinitializer)
  %149 = or i64 %66, 8
  %150 = getelementptr inbounds float, float* %8, i64 %149
  %151 = bitcast float* %150 to <8 x float>*
  %152 = load <8 x float>, <8 x float>* %151, align 32, !tbaa !290
  %153 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %81, <8 x float> %152, <8 x float> %76)
  %154 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %87, <8 x float> %152, <8 x float> %82)
  %155 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %93, <8 x float> %152, <8 x float> %88)
  %156 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %99, <8 x float> %152, <8 x float> %94)
  %157 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %105, <8 x float> %152, <8 x float> %100)
  %158 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %111, <8 x float> %152, <8 x float> %106)
  %159 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %117, <8 x float> %152, <8 x float> %112)
  %160 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %123, <8 x float> %152, <8 x float> %118)
  %161 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %129, <8 x float> %152, <8 x float> %124)
  %162 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %135, <8 x float> %152, <8 x float> %130)
  %163 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %141, <8 x float> %152, <8 x float> %136)
  %164 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %147, <8 x float> %152, <8 x float> %142)
  %165 = add nsw i64 %77, 12
  %166 = getelementptr inbounds float, float* %5, i64 %165
  %167 = load float, float* %166, align 4, !tbaa !287
  %168 = insertelement <8 x float> undef, float %167, i32 0
  %169 = shufflevector <8 x float> %168, <8 x float> undef, <8 x i32> zeroinitializer
  %170 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %169, <8 x float> %152, <8 x float> %148)
  %171 = mul nsw i32 %63, 14
  %172 = add nsw i32 %171, 14
  %173 = or i64 %66, 16
  %174 = sext i32 %172 to i64
  %175 = getelementptr inbounds float, float* %5, i64 %174
  %176 = load float, float* %175, align 4, !tbaa !287
  %177 = insertelement <8 x float> undef, float %176, i32 0
  %178 = shufflevector <8 x float> %177, <8 x float> undef, <8 x i32> zeroinitializer
  %179 = getelementptr inbounds float, float* %8, i64 %173
  %180 = bitcast float* %179 to <8 x float>*
  %181 = load <8 x float>, <8 x float>* %180, align 32, !tbaa !290
  %182 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %178, <8 x float> %181, <8 x float> %153)
  %183 = or i64 %174, 1
  %184 = getelementptr inbounds float, float* %5, i64 %183
  %185 = load float, float* %184, align 4, !tbaa !287
  %186 = insertelement <8 x float> undef, float %185, i32 0
  %187 = shufflevector <8 x float> %186, <8 x float> undef, <8 x i32> zeroinitializer
  %188 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %187, <8 x float> %181, <8 x float> %154)
  %189 = add nsw i64 %174, 2
  %190 = getelementptr inbounds float, float* %5, i64 %189
  %191 = load float, float* %190, align 4, !tbaa !287
  %192 = insertelement <8 x float> undef, float %191, i32 0
  %193 = shufflevector <8 x float> %192, <8 x float> undef, <8 x i32> zeroinitializer
  %194 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %193, <8 x float> %181, <8 x float> %155)
  %195 = add nsw i64 %174, 3
  %196 = getelementptr inbounds float, float* %5, i64 %195
  %197 = load float, float* %196, align 4, !tbaa !287
  %198 = insertelement <8 x float> undef, float %197, i32 0
  %199 = shufflevector <8 x float> %198, <8 x float> undef, <8 x i32> zeroinitializer
  %200 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %199, <8 x float> %181, <8 x float> %156)
  %201 = add nsw i64 %174, 4
  %202 = getelementptr inbounds float, float* %5, i64 %201
  %203 = load float, float* %202, align 4, !tbaa !287
  %204 = insertelement <8 x float> undef, float %203, i32 0
  %205 = shufflevector <8 x float> %204, <8 x float> undef, <8 x i32> zeroinitializer
  %206 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %205, <8 x float> %181, <8 x float> %157)
  %207 = add nsw i64 %174, 5
  %208 = getelementptr inbounds float, float* %5, i64 %207
  %209 = load float, float* %208, align 4, !tbaa !287
  %210 = insertelement <8 x float> undef, float %209, i32 0
  %211 = shufflevector <8 x float> %210, <8 x float> undef, <8 x i32> zeroinitializer
  %212 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %211, <8 x float> %181, <8 x float> %158)
  %213 = add nsw i64 %174, 6
  %214 = getelementptr inbounds float, float* %5, i64 %213
  %215 = load float, float* %214, align 4, !tbaa !287
  %216 = insertelement <8 x float> undef, float %215, i32 0
  %217 = shufflevector <8 x float> %216, <8 x float> undef, <8 x i32> zeroinitializer
  %218 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %217, <8 x float> %181, <8 x float> %159)
  %219 = add nsw i64 %174, 7
  %220 = getelementptr inbounds float, float* %5, i64 %219
  %221 = load float, float* %220, align 4, !tbaa !287
  %222 = insertelement <8 x float> undef, float %221, i32 0
  %223 = shufflevector <8 x float> %222, <8 x float> undef, <8 x i32> zeroinitializer
  %224 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %223, <8 x float> %181, <8 x float> %160)
  %225 = add nsw i64 %174, 8
  %226 = getelementptr inbounds float, float* %5, i64 %225
  %227 = load float, float* %226, align 4, !tbaa !287
  %228 = insertelement <8 x float> undef, float %227, i32 0
  %229 = shufflevector <8 x float> %228, <8 x float> undef, <8 x i32> zeroinitializer
  %230 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %229, <8 x float> %181, <8 x float> %161)
  %231 = add nsw i64 %174, 9
  %232 = getelementptr inbounds float, float* %5, i64 %231
  %233 = load float, float* %232, align 4, !tbaa !287
  %234 = insertelement <8 x float> undef, float %233, i32 0
  %235 = shufflevector <8 x float> %234, <8 x float> undef, <8 x i32> zeroinitializer
  %236 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %235, <8 x float> %181, <8 x float> %162)
  %237 = add nsw i64 %174, 10
  %238 = getelementptr inbounds float, float* %5, i64 %237
  %239 = load float, float* %238, align 4, !tbaa !287
  %240 = insertelement <8 x float> undef, float %239, i32 0
  %241 = shufflevector <8 x float> %240, <8 x float> undef, <8 x i32> zeroinitializer
  %242 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %241, <8 x float> %181, <8 x float> %163)
  %243 = add nsw i64 %174, 11
  %244 = getelementptr inbounds float, float* %5, i64 %243
  %245 = load float, float* %244, align 4, !tbaa !287
  %246 = insertelement <8 x float> undef, float %245, i32 0
  %247 = shufflevector <8 x float> %246, <8 x float> undef, <8 x i32> zeroinitializer
  %248 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %247, <8 x float> %181, <8 x float> %164)
  %249 = add nsw i64 %174, 12
  %250 = getelementptr inbounds float, float* %5, i64 %249
  %251 = load float, float* %250, align 4, !tbaa !287
  %252 = insertelement <8 x float> undef, float %251, i32 0
  %253 = shufflevector <8 x float> %252, <8 x float> undef, <8 x i32> zeroinitializer
  %254 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %253, <8 x float> %181, <8 x float> %170)
  %255 = or i64 %66, 24
  %256 = getelementptr inbounds float, float* %8, i64 %255
  %257 = bitcast float* %256 to <8 x float>*
  %258 = load <8 x float>, <8 x float>* %257, align 32, !tbaa !290
  %259 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %187, <8 x float> %258, <8 x float> %182)
  %260 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %193, <8 x float> %258, <8 x float> %188)
  %261 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %199, <8 x float> %258, <8 x float> %194)
  %262 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %205, <8 x float> %258, <8 x float> %200)
  %263 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %211, <8 x float> %258, <8 x float> %206)
  %264 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %217, <8 x float> %258, <8 x float> %212)
  %265 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %223, <8 x float> %258, <8 x float> %218)
  %266 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %229, <8 x float> %258, <8 x float> %224)
  %267 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %235, <8 x float> %258, <8 x float> %230)
  %268 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %241, <8 x float> %258, <8 x float> %236)
  %269 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %247, <8 x float> %258, <8 x float> %242)
  %270 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %253, <8 x float> %258, <8 x float> %248)
  %271 = add nsw i64 %183, 12
  %272 = getelementptr inbounds float, float* %5, i64 %271
  %273 = load float, float* %272, align 4, !tbaa !287
  %274 = insertelement <8 x float> undef, float %273, i32 0
  %275 = shufflevector <8 x float> %274, <8 x float> undef, <8 x i32> zeroinitializer
  %276 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %275, <8 x float> %258, <8 x float> %254)
  store <8 x float> %259, <8 x float>* %.sub, align 32, !tbaa !293
  store <8 x float> %260, <8 x float>* %34, align 32, !tbaa !293
  store <8 x float> %261, <8 x float>* %36, align 32, !tbaa !293
  store <8 x float> %262, <8 x float>* %38, align 32, !tbaa !293
  store <8 x float> %263, <8 x float>* %40, align 32, !tbaa !293
  store <8 x float> %264, <8 x float>* %42, align 32, !tbaa !293
  store <8 x float> %265, <8 x float>* %44, align 32, !tbaa !293
  store <8 x float> %266, <8 x float>* %46, align 32, !tbaa !293
  store <8 x float> %267, <8 x float>* %48, align 32, !tbaa !293
  store <8 x float> %268, <8 x float>* %50, align 32, !tbaa !293
  store <8 x float> %269, <8 x float>* %52, align 32, !tbaa !293
  store <8 x float> %270, <8 x float>* %54, align 32, !tbaa !293
  store <8 x float> %276, <8 x float>* %56, align 32, !tbaa !293
  %277 = mul nsw i64 %indvars.iv, 104
  %278 = shl nsw i32 %64, 3
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds float, float* %14, i64 %279
  %281 = bitcast float* %280 to <8 x float>*
  %282 = load <8 x float>, <8 x float>* %281, align 32, !tbaa !304
  %283 = getelementptr inbounds float, float* %17, i64 %279
  %284 = bitcast float* %283 to <8 x float>*
  %285 = load <8 x float>, <8 x float>* %284, align 32, !tbaa !307
  %286 = getelementptr inbounds float, float* %20, i64 %279
  %287 = bitcast float* %286 to <8 x float>*
  %288 = load <8 x float>, <8 x float>* %287, align 32, !tbaa !310
  %289 = fadd <8 x float> %282, %259
  %290 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %289, <8 x float> %285, <8 x float> %288)
  %291 = fcmp ogt <8 x float> %290, zeroinitializer
  %292 = select <8 x i1> %291, <8 x float> %290, <8 x float> zeroinitializer
  %293 = getelementptr inbounds float, float* %11, i64 %277
  %294 = bitcast float* %293 to <8 x float>*
  store <8 x float> %292, <8 x float>* %294, align 32, !tbaa !313
  %295 = add nsw i64 %277, 8
  %296 = fadd <8 x float> %282, %260
  %297 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %296, <8 x float> %285, <8 x float> %288)
  %298 = fcmp ogt <8 x float> %297, zeroinitializer
  %299 = select <8 x i1> %298, <8 x float> %297, <8 x float> zeroinitializer
  %300 = getelementptr inbounds float, float* %11, i64 %295
  %301 = bitcast float* %300 to <8 x float>*
  store <8 x float> %299, <8 x float>* %301, align 32, !tbaa !313
  %302 = add nsw i64 %277, 16
  %303 = fadd <8 x float> %282, %261
  %304 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %303, <8 x float> %285, <8 x float> %288)
  %305 = fcmp ogt <8 x float> %304, zeroinitializer
  %306 = select <8 x i1> %305, <8 x float> %304, <8 x float> zeroinitializer
  %307 = getelementptr inbounds float, float* %11, i64 %302
  %308 = bitcast float* %307 to <8 x float>*
  store <8 x float> %306, <8 x float>* %308, align 32, !tbaa !313
  %309 = add nsw i64 %277, 24
  %310 = fadd <8 x float> %282, %262
  %311 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %310, <8 x float> %285, <8 x float> %288)
  %312 = fcmp ogt <8 x float> %311, zeroinitializer
  %313 = select <8 x i1> %312, <8 x float> %311, <8 x float> zeroinitializer
  %314 = getelementptr inbounds float, float* %11, i64 %309
  %315 = bitcast float* %314 to <8 x float>*
  store <8 x float> %313, <8 x float>* %315, align 32, !tbaa !313
  %316 = add nsw i64 %277, 32
  %317 = fadd <8 x float> %282, %263
  %318 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %317, <8 x float> %285, <8 x float> %288)
  %319 = fcmp ogt <8 x float> %318, zeroinitializer
  %320 = select <8 x i1> %319, <8 x float> %318, <8 x float> zeroinitializer
  %321 = getelementptr inbounds float, float* %11, i64 %316
  %322 = bitcast float* %321 to <8 x float>*
  store <8 x float> %320, <8 x float>* %322, align 32, !tbaa !313
  %323 = add nsw i64 %277, 40
  %324 = fadd <8 x float> %282, %264
  %325 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %324, <8 x float> %285, <8 x float> %288)
  %326 = fcmp ogt <8 x float> %325, zeroinitializer
  %327 = select <8 x i1> %326, <8 x float> %325, <8 x float> zeroinitializer
  %328 = getelementptr inbounds float, float* %11, i64 %323
  %329 = bitcast float* %328 to <8 x float>*
  store <8 x float> %327, <8 x float>* %329, align 32, !tbaa !313
  %330 = add nsw i64 %277, 48
  %331 = fadd <8 x float> %282, %265
  %332 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %331, <8 x float> %285, <8 x float> %288)
  %333 = fcmp ogt <8 x float> %332, zeroinitializer
  %334 = select <8 x i1> %333, <8 x float> %332, <8 x float> zeroinitializer
  %335 = getelementptr inbounds float, float* %11, i64 %330
  %336 = bitcast float* %335 to <8 x float>*
  store <8 x float> %334, <8 x float>* %336, align 32, !tbaa !313
  %337 = add nsw i64 %277, 56
  %338 = fadd <8 x float> %282, %266
  %339 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %338, <8 x float> %285, <8 x float> %288)
  %340 = fcmp ogt <8 x float> %339, zeroinitializer
  %341 = select <8 x i1> %340, <8 x float> %339, <8 x float> zeroinitializer
  %342 = getelementptr inbounds float, float* %11, i64 %337
  %343 = bitcast float* %342 to <8 x float>*
  store <8 x float> %341, <8 x float>* %343, align 32, !tbaa !313
  %344 = add nsw i64 %277, 64
  %345 = fadd <8 x float> %282, %267
  %346 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %345, <8 x float> %285, <8 x float> %288)
  %347 = fcmp ogt <8 x float> %346, zeroinitializer
  %348 = select <8 x i1> %347, <8 x float> %346, <8 x float> zeroinitializer
  %349 = getelementptr inbounds float, float* %11, i64 %344
  %350 = bitcast float* %349 to <8 x float>*
  store <8 x float> %348, <8 x float>* %350, align 32, !tbaa !313
  %351 = add nsw i64 %277, 72
  %352 = fadd <8 x float> %282, %268
  %353 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %352, <8 x float> %285, <8 x float> %288)
  %354 = fcmp ogt <8 x float> %353, zeroinitializer
  %355 = select <8 x i1> %354, <8 x float> %353, <8 x float> zeroinitializer
  %356 = getelementptr inbounds float, float* %11, i64 %351
  %357 = bitcast float* %356 to <8 x float>*
  store <8 x float> %355, <8 x float>* %357, align 32, !tbaa !313
  %358 = add nsw i64 %277, 80
  %359 = fadd <8 x float> %282, %269
  %360 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %359, <8 x float> %285, <8 x float> %288)
  %361 = fcmp ogt <8 x float> %360, zeroinitializer
  %362 = select <8 x i1> %361, <8 x float> %360, <8 x float> zeroinitializer
  %363 = getelementptr inbounds float, float* %11, i64 %358
  %364 = bitcast float* %363 to <8 x float>*
  store <8 x float> %362, <8 x float>* %364, align 32, !tbaa !313
  %365 = add nsw i64 %277, 88
  %366 = load <8 x float>, <8 x float>* %54, align 32, !tbaa !316
  %367 = fadd <8 x float> %282, %366
  %368 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %367, <8 x float> %285, <8 x float> %288)
  %369 = fcmp ogt <8 x float> %368, zeroinitializer
  %370 = select <8 x i1> %369, <8 x float> %368, <8 x float> zeroinitializer
  %371 = getelementptr inbounds float, float* %11, i64 %365
  %372 = bitcast float* %371 to <8 x float>*
  store <8 x float> %370, <8 x float>* %372, align 32, !tbaa !313
  %373 = add nsw i64 %277, 96
  %374 = load <8 x float>, <8 x float>* %56, align 32, !tbaa !316
  %375 = fadd <8 x float> %282, %374
  %376 = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %375, <8 x float> %285, <8 x float> %288)
  %377 = fcmp ogt <8 x float> %376, zeroinitializer
  %378 = select <8 x i1> %377, <8 x float> %376, <8 x float> zeroinitializer
  %379 = getelementptr inbounds float, float* %11, i64 %373
  %380 = bitcast float* %379 to <8 x float>*
  store <8 x float> %378, <8 x float>* %380, align 32, !tbaa !313
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %381 = icmp slt i64 %indvars.iv.next, %60
  br i1 %381, label %for_body, label %for_end, !prof !5

for_end:                                          ; preds = %for_body, %entry
  ret i32 0
}

; Function Attrs: nounwind readnone speculatable
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #2

define dllexport i32 @fused_layout_transform_3(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 2
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.73, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %1**
  %8 = load %1*, %1** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !317
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
  tail call void %30(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.74, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %31 = getelementptr inbounds i8, i8* %1, i64 4
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !331
  switch i32 %33, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %34(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.75, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %35 = icmp eq i32 %21, 1
  br i1 %35, label %assert_end6, label %assert_fail5, !prof !5

assert_fail5:                                     ; preds = %assert_end4
  %36 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %36(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4
  %37 = getelementptr inbounds %1, %1* %8, i64 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %assert_end8, label %assert_fail7, !prof !5

assert_fail7:                                     ; preds = %assert_end6
  %40 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %40(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.76, i64 0, i64 0))
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
  tail call void %52(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %53 = load i64, i64* %17, align 8, !tbaa !333
  %54 = trunc i64 %53 to i32
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %56 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %56(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %57 = getelementptr inbounds i64, i64* %17, i64 1
  %58 = load i64, i64* %57, align 8, !tbaa !347
  %59 = trunc i64 %58 to i32
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %61 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %61(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %62 = getelementptr inbounds i64, i64* %17, i64 2
  %63 = load i64, i64* %62, align 8, !tbaa !349
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 14
  br i1 %65, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %66 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %66(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %67 = getelementptr inbounds i64, i64* %17, i64 3
  %68 = load i64, i64* %67, align 8, !tbaa !352
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, 14
  br i1 %70, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %71 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %71(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %72 = icmp eq i64* %19, null
  br i1 %72, label %if_end, label %if_then, !prof !61

if_then:                                          ; preds = %assert_end18
  %73 = bitcast i64* %19 to <4 x i64>*
  %74 = load <4 x i64>, <4 x i64>* %73, align 8, !tbaa !354
  %75 = trunc <4 x i64> %74 to <4 x i32>
  %76 = icmp eq <4 x i32> %75, <i32 196, i32 196, i32 14, i32 1>
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
  tail call void %81(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.77, i64 0, i64 0))
  ret i32 -1

assert_fail21:                                    ; preds = %if_end
  %82 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %82(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %if_end
  %83 = getelementptr inbounds %1, %1* %13, i64 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 5
  br i1 %85, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %86 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %86(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.78, i64 0, i64 0))
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
  tail call void %98(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %99 = load i64, i64* %27, align 8, !tbaa !366
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %102 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %102(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.79, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %103 = getelementptr inbounds i64, i64* %27, i64 1
  %104 = load i64, i64* %103, align 8, !tbaa !380
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %107 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %107(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.20, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %108 = getelementptr inbounds i64, i64* %27, i64 2
  %109 = load i64, i64* %108, align 8, !tbaa !382
  %110 = trunc i64 %109 to i32
  %111 = icmp eq i32 %110, 14
  br i1 %111, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %112(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.80, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %113 = getelementptr inbounds i64, i64* %27, i64 3
  %114 = load i64, i64* %113, align 8, !tbaa !385
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %115, 14
  br i1 %116, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.81, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %118 = getelementptr inbounds i64, i64* %27, i64 4
  %119 = load i64, i64* %118, align 8, !tbaa !387
  %120 = trunc i64 %119 to i32
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %assert_end36, label %assert_fail35, !prof !5

assert_fail35:                                    ; preds = %assert_end34
  %122 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %122(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.23, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %assert_end34
  %123 = icmp eq i64* %29, null
  br i1 %123, label %if_end38, label %if_then37, !prof !61

if_then37:                                        ; preds = %assert_end36
  %124 = bitcast i64* %29 to <4 x i64>*
  %125 = load <4 x i64>, <4 x i64>* %124, align 8, !tbaa !391
  %126 = trunc <4 x i64> %125 to <4 x i32>
  %127 = icmp eq <4 x i32> %126, <i32 196, i32 196, i32 14, i32 1>
  %128 = getelementptr inbounds i64, i64* %29, i64 4
  %129 = load i64, i64* %128, align 8, !tbaa !403
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
  tail call void %137(i8* getelementptr inbounds ([232 x i8], [232 x i8]* @.str.82, i64 0, i64 0))
  ret i32 -1

assert_fail41:                                    ; preds = %if_end38
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %138(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %if_end38
  %139 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %142 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %142(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %143 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %23, %144
  br i1 %145, label %assert_end46, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %146 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %146(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_end46:                                     ; preds = %assert_end44
  %147 = tail call fastcc i32 @fused_layout_transform_3_compute_(i8* %25, i8* %15)
  ret i32 %147
}

; Function Attrs: noinline
define private fastcc i32 @fused_layout_transform_3_compute_(i8* noalias, i8* noalias) unnamed_addr #0 {
entry:
  %2 = alloca %5, align 8
  %3 = getelementptr inbounds %5, %5* %2, i64 0, i32 0
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds %5, %5* %2, i64 0, i32 1
  store i8* %1, i8** %4, align 8
  %5 = bitcast %5* %2 to i8*
  %6 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %7 = call i32 %6(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.83, i8* nonnull %5, i32 0)
  ret i32 %7
}

; Function Attrs: norecurse nounwind
define private i32 @__tvm_parallel_lambda.83(i32, %0* nocapture readonly, i8* nocapture readonly) #3 {
entry:
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
  br i1 %19, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %20 = add i32 %18, 1
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, -1
  %23 = sext i32 %15 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_begin1.preheader
  %indvars.iv = phi i64 [ %22, %for_begin1.preheader.preheader ], [ %indvars.iv.next, %for_begin1.preheader ]
  %24 = mul nsw i64 %indvars.iv, 14
  %25 = getelementptr inbounds float, float* %7, i64 %24
  %26 = getelementptr inbounds float, float* %4, i64 %24
  %27 = bitcast float* %25 to <4 x i32>*
  %28 = load <4 x i32>, <4 x i32>* %27, align 4, !tbaa !407
  %29 = bitcast float* %26 to <4 x i32>*
  store <4 x i32> %28, <4 x i32>* %29, align 4, !tbaa !410
  %30 = add nsw i64 %24, 4
  %31 = getelementptr inbounds float, float* %7, i64 %30
  %32 = getelementptr inbounds float, float* %4, i64 %30
  %33 = bitcast float* %31 to <4 x i32>*
  %34 = load <4 x i32>, <4 x i32>* %33, align 4, !tbaa !407
  %35 = bitcast float* %32 to <4 x i32>*
  store <4 x i32> %34, <4 x i32>* %35, align 4, !tbaa !410
  %36 = add nsw i64 %24, 8
  %37 = getelementptr inbounds float, float* %7, i64 %36
  %38 = getelementptr inbounds float, float* %4, i64 %36
  %39 = bitcast float* %37 to <4 x i32>*
  %40 = load <4 x i32>, <4 x i32>* %39, align 4, !tbaa !407
  %41 = bitcast float* %38 to <4 x i32>*
  store <4 x i32> %40, <4 x i32>* %41, align 4, !tbaa !410
  %42 = add nsw i64 %24, 12
  %43 = getelementptr inbounds float, float* %7, i64 %42
  %44 = bitcast float* %43 to i32*
  %45 = load i32, i32* %44, align 4, !tbaa !407
  %46 = getelementptr inbounds float, float* %4, i64 %42
  %47 = bitcast float* %46 to i32*
  store i32 %45, i32* %47, align 4, !tbaa !410
  %48 = add nsw i64 %24, 13
  %49 = getelementptr inbounds float, float* %7, i64 %48
  %50 = bitcast float* %49 to i32*
  %51 = load i32, i32* %50, align 4, !tbaa !407
  %52 = getelementptr inbounds float, float* %4, i64 %48
  %53 = bitcast float* %52 to i32*
  store i32 %51, i32* %53, align 4, !tbaa !410
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %54 = icmp slt i64 %indvars.iv.next, %23
  br i1 %54, label %for_begin1.preheader, label %for_end, !prof !5

for_end:                                          ; preds = %for_begin1.preheader, %entry
  ret i32 0
}

define dllexport i32 @fused_layout_transform_2(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 2
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.84, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %1**
  %8 = load %1*, %1** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !413
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
  tail call void %30(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.85, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %31 = getelementptr inbounds i8, i8* %1, i64 4
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !427
  switch i32 %33, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %34(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.86, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %35 = icmp eq i32 %21, 1
  br i1 %35, label %assert_end6, label %assert_fail5, !prof !5

assert_fail5:                                     ; preds = %assert_end4
  %36 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %36(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4
  %37 = getelementptr inbounds %1, %1* %8, i64 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %assert_end8, label %assert_fail7, !prof !5

assert_fail7:                                     ; preds = %assert_end6
  %40 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %40(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.8, i64 0, i64 0))
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
  tail call void %52(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %53 = load i64, i64* %17, align 8, !tbaa !429
  %54 = trunc i64 %53 to i32
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %56 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %56(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %57 = getelementptr inbounds i64, i64* %17, i64 1
  %58 = load i64, i64* %57, align 8, !tbaa !443
  %59 = trunc i64 %58 to i32
  %60 = icmp eq i32 %59, 2
  br i1 %60, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %61 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %61(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.87, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %62 = getelementptr inbounds i64, i64* %17, i64 2
  %63 = load i64, i64* %62, align 8, !tbaa !445
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 13
  br i1 %65, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %66 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %66(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.88, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %67 = getelementptr inbounds i64, i64* %17, i64 3
  %68 = load i64, i64* %67, align 8, !tbaa !448
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, 13
  br i1 %70, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %71 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %71(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.89, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %72 = getelementptr inbounds i64, i64* %17, i64 4
  %73 = load i64, i64* %72, align 8, !tbaa !450
  %74 = trunc i64 %73 to i32
  %75 = icmp eq i32 %74, 8
  br i1 %75, label %assert_end20, label %assert_fail19, !prof !5

assert_fail19:                                    ; preds = %assert_end18
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %76(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.90, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %77 = icmp eq i64* %19, null
  br i1 %77, label %if_end, label %if_then, !prof !61

if_then:                                          ; preds = %assert_end20
  %78 = bitcast i64* %19 to <4 x i64>*
  %79 = load <4 x i64>, <4 x i64>* %78, align 8, !tbaa !454
  %80 = trunc <4 x i64> %79 to <4 x i32>
  %81 = icmp eq <4 x i32> %80, <i32 2704, i32 1352, i32 104, i32 8>
  %82 = getelementptr inbounds i64, i64* %19, i64 4
  %83 = load i64, i64* %82, align 8, !tbaa !466
  %84 = trunc i64 %83 to i32
  %85 = icmp eq i32 %84, 1
  %rdx.shuf49 = shufflevector <4 x i1> %81, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx50 = and <4 x i1> %81, %rdx.shuf49
  %rdx.shuf51 = shufflevector <4 x i1> %bin.rdx50, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx52 = and <4 x i1> %bin.rdx50, %rdx.shuf51
  %86 = extractelement <4 x i1> %bin.rdx52, i32 0
  %87 = and i1 %86, %85
  br i1 %87, label %if_end, label %assert_fail21, !prof !5

if_end:                                           ; preds = %assert_end20, %if_then
  %88 = getelementptr inbounds %1, %1* %8, i64 0, i32 6
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %assert_end24, label %assert_fail23, !prof !5

assert_fail21:                                    ; preds = %if_then
  %91 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %91(i8* getelementptr inbounds ([235 x i8], [235 x i8]* @.str.91, i64 0, i64 0))
  ret i32 -1

assert_fail23:                                    ; preds = %if_end
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %92(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %if_end
  %93 = getelementptr inbounds %1, %1* %13, i64 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 4
  br i1 %95, label %assert_end26, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %96 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %96(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.92, i64 0, i64 0))
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
  tail call void %108(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %109 = load i64, i64* %27, align 8, !tbaa !470
  %110 = trunc i64 %109 to i32
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %112(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.79, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %113 = getelementptr inbounds i64, i64* %27, i64 1
  %114 = load i64, i64* %113, align 8, !tbaa !484
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %115, 16
  br i1 %116, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.93, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %118 = getelementptr inbounds i64, i64* %27, i64 2
  %119 = load i64, i64* %118, align 8, !tbaa !486
  %120 = trunc i64 %119 to i32
  %121 = icmp eq i32 %120, 13
  br i1 %121, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %122 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %122(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.94, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %123 = getelementptr inbounds i64, i64* %27, i64 3
  %124 = load i64, i64* %123, align 8, !tbaa !489
  %125 = trunc i64 %124 to i32
  %126 = icmp eq i32 %125, 13
  br i1 %126, label %assert_end36, label %assert_fail35, !prof !5

assert_fail35:                                    ; preds = %assert_end34
  %127 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %127(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.95, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %assert_end34
  %128 = icmp eq i64* %29, null
  br i1 %128, label %if_end38, label %if_then37, !prof !61

if_then37:                                        ; preds = %assert_end36
  %129 = bitcast i64* %29 to <4 x i64>*
  %130 = load <4 x i64>, <4 x i64>* %129, align 8, !tbaa !491
  %131 = trunc <4 x i64> %130 to <4 x i32>
  %132 = icmp eq <4 x i32> %131, <i32 2704, i32 169, i32 13, i32 1>
  %rdx.shuf = shufflevector <4 x i1> %132, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx = and <4 x i1> %132, %rdx.shuf
  %rdx.shuf47 = shufflevector <4 x i1> %bin.rdx, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx48 = and <4 x i1> %bin.rdx, %rdx.shuf47
  %133 = extractelement <4 x i1> %bin.rdx48, i32 0
  br i1 %133, label %if_end38, label %assert_fail39, !prof !5

if_end38:                                         ; preds = %assert_end36, %if_then37
  %134 = getelementptr inbounds %1, %1* %13, i64 0, i32 6
  %135 = load i64, i64* %134, align 8
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %assert_end42, label %assert_fail41, !prof !5

assert_fail39:                                    ; preds = %if_then37
  %137 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %137(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.96, i64 0, i64 0))
  ret i32 -1

assert_fail41:                                    ; preds = %if_end38
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %138(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %if_end38
  %139 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 1
  br i1 %141, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %142 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %142(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %143 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %23, %144
  br i1 %145, label %assert_end46, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %146 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %146(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_end46:                                     ; preds = %assert_end44
  %147 = tail call fastcc i32 @fused_layout_transform_2_compute_(i8* %25, i8* %15)
  ret i32 %147
}

; Function Attrs: noinline
define private fastcc i32 @fused_layout_transform_2_compute_(i8* noalias, i8* noalias) unnamed_addr #0 {
entry:
  %2 = alloca %6, align 8
  %3 = getelementptr inbounds %6, %6* %2, i64 0, i32 0
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds %6, %6* %2, i64 0, i32 1
  store i8* %1, i8** %4, align 8
  %5 = bitcast %6* %2 to i8*
  %6 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %7 = call i32 %6(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda.97, i8* nonnull %5, i32 0)
  ret i32 %7
}

; Function Attrs: norecurse nounwind
define private i32 @__tvm_parallel_lambda.97(i32, %0* nocapture readonly, i8* nocapture readonly) #3 {
entry:
  %3 = bitcast i8* %2 to float**
  %4 = load float*, float** %3, align 8
  %5 = getelementptr inbounds i8, i8* %2, i64 8
  %6 = bitcast i8* %5 to float**
  %7 = load float*, float** %6, align 8
  %8 = getelementptr inbounds %0, %0* %1, i64 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = add nsw i32 %9, 15
  %11 = sdiv i32 %10, %9
  %12 = add nsw i32 %0, 1
  %13 = mul nsw i32 %11, %12
  %14 = icmp slt i32 %13, 16
  %15 = select i1 %14, i32 %13, i32 16
  %16 = mul nsw i32 %11, %0
  %17 = icmp slt i32 %16, 16
  %18 = select i1 %17, i32 %16, i32 16
  %19 = icmp slt i32 %18, %15
  br i1 %19, label %for_begin1.preheader.preheader, label %for_end, !prof !5

for_begin1.preheader.preheader:                   ; preds = %entry
  %20 = add i32 %18, 1
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, -1
  %23 = sext i32 %15 to i64
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_end3
  %indvars.iv4 = phi i64 [ %22, %for_begin1.preheader.preheader ], [ %indvars.iv.next5, %for_end3 ]
  %24 = mul nsw i64 %indvars.iv4, 169
  %25 = trunc i64 %indvars.iv4 to i32
  %26 = and i32 %25, 7
  %27 = ashr i32 %25, 3
  %28 = mul nsw i32 %27, 1352
  br label %for_body2

for_end:                                          ; preds = %for_end3, %entry
  ret i32 0

for_body2:                                        ; preds = %for_body2, %for_begin1.preheader
  %indvars.iv = phi i64 [ 0, %for_begin1.preheader ], [ %indvars.iv.next, %for_body2 ]
  %29 = mul nuw nsw i64 %indvars.iv, 13
  %30 = add nsw i64 %29, %24
  %31 = trunc i64 %indvars.iv to i32
  %32 = mul i32 %31, 104
  %33 = add i32 %28, %32
  %34 = or i32 %33, %26
  %35 = add nsw i32 %34, 8
  %36 = add nsw i32 %34, 16
  %37 = add nsw i32 %34, 24
  %38 = add nsw i32 %34, 32
  %39 = add nsw i32 %34, 40
  %40 = add nsw i32 %34, 48
  %41 = add nsw i32 %34, 56
  %42 = add nsw i32 %34, 64
  %43 = add nsw i32 %34, 72
  %44 = add nsw i32 %34, 80
  %45 = add nsw i32 %34, 88
  %46 = add nsw i32 %34, 96
  %47 = sext i32 %34 to i64
  %48 = getelementptr inbounds float, float* %7, i64 %47
  %49 = load float, float* %48, align 4, !tbaa !503
  %50 = insertelement <13 x float> undef, float %49, i32 0
  %51 = sext i32 %35 to i64
  %52 = getelementptr inbounds float, float* %7, i64 %51
  %53 = load float, float* %52, align 4, !tbaa !503
  %54 = insertelement <13 x float> %50, float %53, i32 1
  %55 = sext i32 %36 to i64
  %56 = getelementptr inbounds float, float* %7, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !503
  %58 = insertelement <13 x float> %54, float %57, i32 2
  %59 = sext i32 %37 to i64
  %60 = getelementptr inbounds float, float* %7, i64 %59
  %61 = load float, float* %60, align 4, !tbaa !503
  %62 = insertelement <13 x float> %58, float %61, i32 3
  %63 = sext i32 %38 to i64
  %64 = getelementptr inbounds float, float* %7, i64 %63
  %65 = load float, float* %64, align 4, !tbaa !503
  %66 = insertelement <13 x float> %62, float %65, i32 4
  %67 = sext i32 %39 to i64
  %68 = getelementptr inbounds float, float* %7, i64 %67
  %69 = load float, float* %68, align 4, !tbaa !503
  %70 = insertelement <13 x float> %66, float %69, i32 5
  %71 = sext i32 %40 to i64
  %72 = getelementptr inbounds float, float* %7, i64 %71
  %73 = load float, float* %72, align 4, !tbaa !503
  %74 = insertelement <13 x float> %70, float %73, i32 6
  %75 = sext i32 %41 to i64
  %76 = getelementptr inbounds float, float* %7, i64 %75
  %77 = load float, float* %76, align 4, !tbaa !503
  %78 = insertelement <13 x float> %74, float %77, i32 7
  %79 = sext i32 %42 to i64
  %80 = getelementptr inbounds float, float* %7, i64 %79
  %81 = load float, float* %80, align 4, !tbaa !503
  %82 = insertelement <13 x float> %78, float %81, i32 8
  %83 = sext i32 %43 to i64
  %84 = getelementptr inbounds float, float* %7, i64 %83
  %85 = load float, float* %84, align 4, !tbaa !503
  %86 = insertelement <13 x float> %82, float %85, i32 9
  %87 = sext i32 %44 to i64
  %88 = getelementptr inbounds float, float* %7, i64 %87
  %89 = load float, float* %88, align 4, !tbaa !503
  %90 = insertelement <13 x float> %86, float %89, i32 10
  %91 = sext i32 %45 to i64
  %92 = getelementptr inbounds float, float* %7, i64 %91
  %93 = load float, float* %92, align 4, !tbaa !503
  %94 = insertelement <13 x float> %90, float %93, i32 11
  %95 = sext i32 %46 to i64
  %96 = getelementptr inbounds float, float* %7, i64 %95
  %97 = load float, float* %96, align 4, !tbaa !503
  %98 = insertelement <13 x float> %94, float %97, i32 12
  %99 = getelementptr inbounds float, float* %4, i64 %30
  %100 = bitcast float* %99 to <13 x float>*
  store <13 x float> %98, <13 x float>* %100, align 4, !tbaa !506
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond, label %for_end3, label %for_body2, !prof !61

for_end3:                                         ; preds = %for_body2
  %indvars.iv.next5 = add nsw i64 %indvars.iv4, 1
  %101 = icmp slt i64 %indvars.iv.next5, %23
  br i1 %101, label %for_begin1.preheader, label %for_end, !prof !5
}

define dllexport i32 @fused_nn_max_pool2d(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 2
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.98, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %1**
  %8 = load %1*, %1** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !509
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
  tail call void %30(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.99, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %31 = getelementptr inbounds i8, i8* %1, i64 4
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !523
  switch i32 %33, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %34(i8* getelementptr inbounds ([147 x i8], [147 x i8]* @.str.100, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %35 = icmp eq i32 %21, 1
  br i1 %35, label %assert_end6, label %assert_fail5, !prof !5

assert_fail5:                                     ; preds = %assert_end4
  %36 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %36(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4
  %37 = getelementptr inbounds %1, %1* %8, i64 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %assert_end8, label %assert_fail7, !prof !5

assert_fail7:                                     ; preds = %assert_end6
  %40 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %40(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.76, i64 0, i64 0))
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
  tail call void %52(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %53 = load i64, i64* %17, align 8, !tbaa !525
  %54 = trunc i64 %53 to i32
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %56 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %56(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %57 = getelementptr inbounds i64, i64* %17, i64 1
  %58 = load i64, i64* %57, align 8, !tbaa !539
  %59 = trunc i64 %58 to i32
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %61 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %61(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %62 = getelementptr inbounds i64, i64* %17, i64 2
  %63 = load i64, i64* %62, align 8, !tbaa !541
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 28
  br i1 %65, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %66 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %66(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.101, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %67 = getelementptr inbounds i64, i64* %17, i64 3
  %68 = load i64, i64* %67, align 8, !tbaa !544
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, 28
  br i1 %70, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %71 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %71(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.102, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %72 = icmp eq i64* %19, null
  br i1 %72, label %if_end, label %if_then, !prof !61

if_then:                                          ; preds = %assert_end18
  %73 = bitcast i64* %19 to <4 x i64>*
  %74 = load <4 x i64>, <4 x i64>* %73, align 8, !tbaa !546
  %75 = trunc <4 x i64> %74 to <4 x i32>
  %76 = icmp eq <4 x i32> %75, <i32 784, i32 784, i32 28, i32 1>
  %rdx.shuf47 = shufflevector <4 x i1> %76, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx48 = and <4 x i1> %76, %rdx.shuf47
  %rdx.shuf49 = shufflevector <4 x i1> %bin.rdx48, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx50 = and <4 x i1> %bin.rdx48, %rdx.shuf49
  %77 = extractelement <4 x i1> %bin.rdx50, i32 0
  br i1 %77, label %if_end, label %assert_fail19, !prof !5

if_end:                                           ; preds = %assert_end18, %if_then
  %78 = getelementptr inbounds %1, %1* %8, i64 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %assert_end22, label %assert_fail21, !prof !5

assert_fail19:                                    ; preds = %if_then
  %81 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %81(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.103, i64 0, i64 0))
  ret i32 -1

assert_fail21:                                    ; preds = %if_end
  %82 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %82(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %if_end
  %83 = getelementptr inbounds %1, %1* %13, i64 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %86 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %86(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.92, i64 0, i64 0))
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
  tail call void %98(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %99 = load i64, i64* %27, align 8, !tbaa !558
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %102 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %102(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.79, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %103 = getelementptr inbounds i64, i64* %27, i64 1
  %104 = load i64, i64* %103, align 8, !tbaa !572
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %107 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %107(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.20, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %108 = getelementptr inbounds i64, i64* %27, i64 2
  %109 = load i64, i64* %108, align 8, !tbaa !574
  %110 = trunc i64 %109 to i32
  %111 = icmp eq i32 %110, 14
  br i1 %111, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %112(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.80, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %113 = getelementptr inbounds i64, i64* %27, i64 3
  %114 = load i64, i64* %113, align 8, !tbaa !577
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %115, 14
  br i1 %116, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.81, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %118 = icmp eq i64* %29, null
  br i1 %118, label %if_end36, label %if_then35, !prof !61

if_then35:                                        ; preds = %assert_end34
  %119 = bitcast i64* %29 to <4 x i64>*
  %120 = load <4 x i64>, <4 x i64>* %119, align 8, !tbaa !579
  %121 = trunc <4 x i64> %120 to <4 x i32>
  %122 = icmp eq <4 x i32> %121, <i32 196, i32 196, i32 14, i32 1>
  %rdx.shuf = shufflevector <4 x i1> %122, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx = and <4 x i1> %122, %rdx.shuf
  %rdx.shuf45 = shufflevector <4 x i1> %bin.rdx, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx46 = and <4 x i1> %bin.rdx, %rdx.shuf45
  %123 = extractelement <4 x i1> %bin.rdx46, i32 0
  br i1 %123, label %if_end36, label %assert_fail37, !prof !5

if_end36:                                         ; preds = %assert_end34, %if_then35
  %124 = getelementptr inbounds %1, %1* %13, i64 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %assert_end40, label %assert_fail39, !prof !5

assert_fail37:                                    ; preds = %if_then35
  %127 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %127(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.104, i64 0, i64 0))
  ret i32 -1

assert_fail39:                                    ; preds = %if_end36
  %128 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %128(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %if_end36
  %129 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %assert_end42, label %assert_fail41, !prof !5

assert_fail41:                                    ; preds = %assert_end40
  %132 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %132(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %assert_end40
  %133 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %23, %134
  br i1 %135, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %136 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %136(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  tail call fastcc void @fused_nn_max_pool2d_compute_(i8* %25, i8* %15)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind
define private fastcc void @fused_nn_max_pool2d_compute_(i8* noalias nocapture, i8* noalias nocapture readonly) unnamed_addr #4 {
entry:
  %2 = bitcast i8* %0 to float*
  %3 = bitcast i8* %1 to float*
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader, %entry
  %indvars.iv3 = phi i64 [ 0, %entry ], [ %indvars.iv.next4, %for_begin1.preheader ]
  %4 = mul nuw nsw i64 %indvars.iv3, 14
  %5 = mul nuw nsw i64 %indvars.iv3, 56
  %6 = getelementptr inbounds float, float* %2, i64 %4
  %7 = getelementptr inbounds float, float* %3, i64 %5
  %8 = load float, float* %7, align 4, !tbaa !591
  %9 = fcmp olt float %8, 0xC7EFFFFFE0000000
  %10 = select i1 %9, float 0xC7EFFFFFE0000000, float %8
  %11 = or i64 %5, 1
  %12 = getelementptr inbounds float, float* %3, i64 %11
  %13 = load float, float* %12, align 4, !tbaa !591
  %14 = fcmp ogt float %10, %13
  %15 = select i1 %14, float %10, float %13
  %16 = add nuw nsw i64 %5, 28
  %17 = getelementptr inbounds float, float* %3, i64 %16
  %18 = load float, float* %17, align 4, !tbaa !591
  %19 = fcmp ogt float %15, %18
  %20 = select i1 %19, float %15, float %18
  %21 = add nuw nsw i64 %5, 29
  %22 = getelementptr inbounds float, float* %3, i64 %21
  %23 = load float, float* %22, align 4, !tbaa !591
  %24 = fcmp ogt float %20, %23
  %25 = select i1 %24, float %20, float %23
  store float %25, float* %6, align 4, !tbaa !594
  %26 = or i64 %4, 1
  %27 = getelementptr inbounds float, float* %2, i64 %26
  %28 = or i64 %5, 2
  %29 = getelementptr inbounds float, float* %3, i64 %28
  %30 = load float, float* %29, align 4, !tbaa !591
  %31 = fcmp olt float %30, 0xC7EFFFFFE0000000
  %32 = select i1 %31, float 0xC7EFFFFFE0000000, float %30
  %33 = or i64 %5, 3
  %34 = getelementptr inbounds float, float* %3, i64 %33
  %35 = load float, float* %34, align 4, !tbaa !591
  %36 = fcmp ogt float %32, %35
  %37 = select i1 %36, float %32, float %35
  %38 = add nuw nsw i64 %28, 28
  %39 = getelementptr inbounds float, float* %3, i64 %38
  %40 = load float, float* %39, align 4, !tbaa !591
  %41 = fcmp ogt float %37, %40
  %42 = select i1 %41, float %37, float %40
  %43 = add nuw nsw i64 %28, 29
  %44 = getelementptr inbounds float, float* %3, i64 %43
  %45 = load float, float* %44, align 4, !tbaa !591
  %46 = fcmp ogt float %42, %45
  %47 = select i1 %46, float %42, float %45
  store float %47, float* %27, align 4, !tbaa !594
  %48 = add nuw nsw i64 %4, 2
  %49 = getelementptr inbounds float, float* %2, i64 %48
  %50 = or i64 %5, 4
  %51 = getelementptr inbounds float, float* %3, i64 %50
  %52 = load float, float* %51, align 4, !tbaa !591
  %53 = fcmp olt float %52, 0xC7EFFFFFE0000000
  %54 = select i1 %53, float 0xC7EFFFFFE0000000, float %52
  %55 = or i64 %5, 5
  %56 = getelementptr inbounds float, float* %3, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !591
  %58 = fcmp ogt float %54, %57
  %59 = select i1 %58, float %54, float %57
  %60 = add nuw nsw i64 %50, 28
  %61 = getelementptr inbounds float, float* %3, i64 %60
  %62 = load float, float* %61, align 4, !tbaa !591
  %63 = fcmp ogt float %59, %62
  %64 = select i1 %63, float %59, float %62
  %65 = add nuw nsw i64 %50, 29
  %66 = getelementptr inbounds float, float* %3, i64 %65
  %67 = load float, float* %66, align 4, !tbaa !591
  %68 = fcmp ogt float %64, %67
  %69 = select i1 %68, float %64, float %67
  store float %69, float* %49, align 4, !tbaa !594
  %70 = add nuw nsw i64 %4, 3
  %71 = getelementptr inbounds float, float* %2, i64 %70
  %72 = or i64 %5, 6
  %73 = getelementptr inbounds float, float* %3, i64 %72
  %74 = load float, float* %73, align 4, !tbaa !591
  %75 = fcmp olt float %74, 0xC7EFFFFFE0000000
  %76 = select i1 %75, float 0xC7EFFFFFE0000000, float %74
  %77 = or i64 %5, 7
  %78 = getelementptr inbounds float, float* %3, i64 %77
  %79 = load float, float* %78, align 4, !tbaa !591
  %80 = fcmp ogt float %76, %79
  %81 = select i1 %80, float %76, float %79
  %82 = add nuw nsw i64 %72, 28
  %83 = getelementptr inbounds float, float* %3, i64 %82
  %84 = load float, float* %83, align 4, !tbaa !591
  %85 = fcmp ogt float %81, %84
  %86 = select i1 %85, float %81, float %84
  %87 = add nuw nsw i64 %72, 29
  %88 = getelementptr inbounds float, float* %3, i64 %87
  %89 = load float, float* %88, align 4, !tbaa !591
  %90 = fcmp ogt float %86, %89
  %91 = select i1 %90, float %86, float %89
  store float %91, float* %71, align 4, !tbaa !594
  %92 = add nuw nsw i64 %4, 4
  %93 = getelementptr inbounds float, float* %2, i64 %92
  %94 = add nuw nsw i64 %5, 8
  %95 = getelementptr inbounds float, float* %3, i64 %94
  %96 = load float, float* %95, align 4, !tbaa !591
  %97 = fcmp olt float %96, 0xC7EFFFFFE0000000
  %98 = select i1 %97, float 0xC7EFFFFFE0000000, float %96
  %99 = or i64 %94, 1
  %100 = getelementptr inbounds float, float* %3, i64 %99
  %101 = load float, float* %100, align 4, !tbaa !591
  %102 = fcmp ogt float %98, %101
  %103 = select i1 %102, float %98, float %101
  %104 = add nuw nsw i64 %5, 36
  %105 = getelementptr inbounds float, float* %3, i64 %104
  %106 = load float, float* %105, align 4, !tbaa !591
  %107 = fcmp ogt float %103, %106
  %108 = select i1 %107, float %103, float %106
  %109 = add nuw nsw i64 %5, 37
  %110 = getelementptr inbounds float, float* %3, i64 %109
  %111 = load float, float* %110, align 4, !tbaa !591
  %112 = fcmp ogt float %108, %111
  %113 = select i1 %112, float %108, float %111
  store float %113, float* %93, align 4, !tbaa !594
  %114 = add nuw nsw i64 %4, 5
  %115 = getelementptr inbounds float, float* %2, i64 %114
  %116 = add nuw nsw i64 %5, 10
  %117 = getelementptr inbounds float, float* %3, i64 %116
  %118 = load float, float* %117, align 4, !tbaa !591
  %119 = fcmp olt float %118, 0xC7EFFFFFE0000000
  %120 = select i1 %119, float 0xC7EFFFFFE0000000, float %118
  %121 = or i64 %116, 1
  %122 = getelementptr inbounds float, float* %3, i64 %121
  %123 = load float, float* %122, align 4, !tbaa !591
  %124 = fcmp ogt float %120, %123
  %125 = select i1 %124, float %120, float %123
  %126 = add nuw nsw i64 %5, 38
  %127 = getelementptr inbounds float, float* %3, i64 %126
  %128 = load float, float* %127, align 4, !tbaa !591
  %129 = fcmp ogt float %125, %128
  %130 = select i1 %129, float %125, float %128
  %131 = add nuw nsw i64 %5, 39
  %132 = getelementptr inbounds float, float* %3, i64 %131
  %133 = load float, float* %132, align 4, !tbaa !591
  %134 = fcmp ogt float %130, %133
  %135 = select i1 %134, float %130, float %133
  store float %135, float* %115, align 4, !tbaa !594
  %136 = add nuw nsw i64 %4, 6
  %137 = getelementptr inbounds float, float* %2, i64 %136
  %138 = add nuw nsw i64 %5, 12
  %139 = getelementptr inbounds float, float* %3, i64 %138
  %140 = load float, float* %139, align 4, !tbaa !591
  %141 = fcmp olt float %140, 0xC7EFFFFFE0000000
  %142 = select i1 %141, float 0xC7EFFFFFE0000000, float %140
  %143 = or i64 %138, 1
  %144 = getelementptr inbounds float, float* %3, i64 %143
  %145 = load float, float* %144, align 4, !tbaa !591
  %146 = fcmp ogt float %142, %145
  %147 = select i1 %146, float %142, float %145
  %148 = add nuw nsw i64 %5, 40
  %149 = getelementptr inbounds float, float* %3, i64 %148
  %150 = load float, float* %149, align 4, !tbaa !591
  %151 = fcmp ogt float %147, %150
  %152 = select i1 %151, float %147, float %150
  %153 = add nuw nsw i64 %5, 41
  %154 = getelementptr inbounds float, float* %3, i64 %153
  %155 = load float, float* %154, align 4, !tbaa !591
  %156 = fcmp ogt float %152, %155
  %157 = select i1 %156, float %152, float %155
  store float %157, float* %137, align 4, !tbaa !594
  %158 = add nuw nsw i64 %4, 7
  %159 = getelementptr inbounds float, float* %2, i64 %158
  %160 = add nuw nsw i64 %5, 14
  %161 = getelementptr inbounds float, float* %3, i64 %160
  %162 = load float, float* %161, align 4, !tbaa !591
  %163 = fcmp olt float %162, 0xC7EFFFFFE0000000
  %164 = select i1 %163, float 0xC7EFFFFFE0000000, float %162
  %165 = or i64 %160, 1
  %166 = getelementptr inbounds float, float* %3, i64 %165
  %167 = load float, float* %166, align 4, !tbaa !591
  %168 = fcmp ogt float %164, %167
  %169 = select i1 %168, float %164, float %167
  %170 = add nuw nsw i64 %5, 42
  %171 = getelementptr inbounds float, float* %3, i64 %170
  %172 = load float, float* %171, align 4, !tbaa !591
  %173 = fcmp ogt float %169, %172
  %174 = select i1 %173, float %169, float %172
  %175 = add nuw nsw i64 %5, 43
  %176 = getelementptr inbounds float, float* %3, i64 %175
  %177 = load float, float* %176, align 4, !tbaa !591
  %178 = fcmp ogt float %174, %177
  %179 = select i1 %178, float %174, float %177
  store float %179, float* %159, align 4, !tbaa !594
  %180 = add nuw nsw i64 %4, 8
  %181 = getelementptr inbounds float, float* %2, i64 %180
  %182 = add nuw nsw i64 %5, 16
  %183 = getelementptr inbounds float, float* %3, i64 %182
  %184 = load float, float* %183, align 4, !tbaa !591
  %185 = fcmp olt float %184, 0xC7EFFFFFE0000000
  %186 = select i1 %185, float 0xC7EFFFFFE0000000, float %184
  %187 = or i64 %182, 1
  %188 = getelementptr inbounds float, float* %3, i64 %187
  %189 = load float, float* %188, align 4, !tbaa !591
  %190 = fcmp ogt float %186, %189
  %191 = select i1 %190, float %186, float %189
  %192 = add nuw nsw i64 %5, 44
  %193 = getelementptr inbounds float, float* %3, i64 %192
  %194 = load float, float* %193, align 4, !tbaa !591
  %195 = fcmp ogt float %191, %194
  %196 = select i1 %195, float %191, float %194
  %197 = add nuw nsw i64 %5, 45
  %198 = getelementptr inbounds float, float* %3, i64 %197
  %199 = load float, float* %198, align 4, !tbaa !591
  %200 = fcmp ogt float %196, %199
  %201 = select i1 %200, float %196, float %199
  store float %201, float* %181, align 4, !tbaa !594
  %202 = add nuw nsw i64 %4, 9
  %203 = getelementptr inbounds float, float* %2, i64 %202
  %204 = add nuw nsw i64 %5, 18
  %205 = getelementptr inbounds float, float* %3, i64 %204
  %206 = load float, float* %205, align 4, !tbaa !591
  %207 = fcmp olt float %206, 0xC7EFFFFFE0000000
  %208 = select i1 %207, float 0xC7EFFFFFE0000000, float %206
  %209 = or i64 %204, 1
  %210 = getelementptr inbounds float, float* %3, i64 %209
  %211 = load float, float* %210, align 4, !tbaa !591
  %212 = fcmp ogt float %208, %211
  %213 = select i1 %212, float %208, float %211
  %214 = add nuw nsw i64 %5, 46
  %215 = getelementptr inbounds float, float* %3, i64 %214
  %216 = load float, float* %215, align 4, !tbaa !591
  %217 = fcmp ogt float %213, %216
  %218 = select i1 %217, float %213, float %216
  %219 = add nuw nsw i64 %5, 47
  %220 = getelementptr inbounds float, float* %3, i64 %219
  %221 = load float, float* %220, align 4, !tbaa !591
  %222 = fcmp ogt float %218, %221
  %223 = select i1 %222, float %218, float %221
  store float %223, float* %203, align 4, !tbaa !594
  %224 = add nuw nsw i64 %4, 10
  %225 = getelementptr inbounds float, float* %2, i64 %224
  %226 = add nuw nsw i64 %5, 20
  %227 = getelementptr inbounds float, float* %3, i64 %226
  %228 = load float, float* %227, align 4, !tbaa !591
  %229 = fcmp olt float %228, 0xC7EFFFFFE0000000
  %230 = select i1 %229, float 0xC7EFFFFFE0000000, float %228
  %231 = or i64 %226, 1
  %232 = getelementptr inbounds float, float* %3, i64 %231
  %233 = load float, float* %232, align 4, !tbaa !591
  %234 = fcmp ogt float %230, %233
  %235 = select i1 %234, float %230, float %233
  %236 = add nuw nsw i64 %5, 48
  %237 = getelementptr inbounds float, float* %3, i64 %236
  %238 = load float, float* %237, align 4, !tbaa !591
  %239 = fcmp ogt float %235, %238
  %240 = select i1 %239, float %235, float %238
  %241 = add nuw nsw i64 %5, 49
  %242 = getelementptr inbounds float, float* %3, i64 %241
  %243 = load float, float* %242, align 4, !tbaa !591
  %244 = fcmp ogt float %240, %243
  %245 = select i1 %244, float %240, float %243
  store float %245, float* %225, align 4, !tbaa !594
  %246 = add nuw nsw i64 %4, 11
  %247 = getelementptr inbounds float, float* %2, i64 %246
  %248 = add nuw nsw i64 %5, 22
  %249 = getelementptr inbounds float, float* %3, i64 %248
  %250 = load float, float* %249, align 4, !tbaa !591
  %251 = fcmp olt float %250, 0xC7EFFFFFE0000000
  %252 = select i1 %251, float 0xC7EFFFFFE0000000, float %250
  %253 = or i64 %248, 1
  %254 = getelementptr inbounds float, float* %3, i64 %253
  %255 = load float, float* %254, align 4, !tbaa !591
  %256 = fcmp ogt float %252, %255
  %257 = select i1 %256, float %252, float %255
  %258 = add nuw nsw i64 %5, 50
  %259 = getelementptr inbounds float, float* %3, i64 %258
  %260 = load float, float* %259, align 4, !tbaa !591
  %261 = fcmp ogt float %257, %260
  %262 = select i1 %261, float %257, float %260
  %263 = add nuw nsw i64 %5, 51
  %264 = getelementptr inbounds float, float* %3, i64 %263
  %265 = load float, float* %264, align 4, !tbaa !591
  %266 = fcmp ogt float %262, %265
  %267 = select i1 %266, float %262, float %265
  store float %267, float* %247, align 4, !tbaa !594
  %268 = add nuw nsw i64 %4, 12
  %269 = getelementptr inbounds float, float* %2, i64 %268
  %270 = add nuw nsw i64 %5, 24
  %271 = getelementptr inbounds float, float* %3, i64 %270
  %272 = load float, float* %271, align 4, !tbaa !591
  %273 = fcmp olt float %272, 0xC7EFFFFFE0000000
  %274 = select i1 %273, float 0xC7EFFFFFE0000000, float %272
  %275 = or i64 %270, 1
  %276 = getelementptr inbounds float, float* %3, i64 %275
  %277 = load float, float* %276, align 4, !tbaa !591
  %278 = fcmp ogt float %274, %277
  %279 = select i1 %278, float %274, float %277
  %280 = add nuw nsw i64 %5, 52
  %281 = getelementptr inbounds float, float* %3, i64 %280
  %282 = load float, float* %281, align 4, !tbaa !591
  %283 = fcmp ogt float %279, %282
  %284 = select i1 %283, float %279, float %282
  %285 = add nuw nsw i64 %5, 53
  %286 = getelementptr inbounds float, float* %3, i64 %285
  %287 = load float, float* %286, align 4, !tbaa !591
  %288 = fcmp ogt float %284, %287
  %289 = select i1 %288, float %284, float %287
  store float %289, float* %269, align 4, !tbaa !594
  %290 = add nuw nsw i64 %4, 13
  %291 = getelementptr inbounds float, float* %2, i64 %290
  %292 = add nuw nsw i64 %5, 26
  %293 = getelementptr inbounds float, float* %3, i64 %292
  %294 = load float, float* %293, align 4, !tbaa !591
  %295 = fcmp olt float %294, 0xC7EFFFFFE0000000
  %296 = select i1 %295, float 0xC7EFFFFFE0000000, float %294
  %297 = or i64 %292, 1
  %298 = getelementptr inbounds float, float* %3, i64 %297
  %299 = load float, float* %298, align 4, !tbaa !591
  %300 = fcmp ogt float %296, %299
  %301 = select i1 %300, float %296, float %299
  %302 = add nuw nsw i64 %5, 54
  %303 = getelementptr inbounds float, float* %3, i64 %302
  %304 = load float, float* %303, align 4, !tbaa !591
  %305 = fcmp ogt float %301, %304
  %306 = select i1 %305, float %301, float %304
  %307 = add nuw nsw i64 %5, 55
  %308 = getelementptr inbounds float, float* %3, i64 %307
  %309 = load float, float* %308, align 4, !tbaa !591
  %310 = fcmp ogt float %306, %309
  %311 = select i1 %310, float %306, float %309
  store float %311, float* %291, align 4, !tbaa !594
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  %exitcond5 = icmp eq i64 %indvars.iv.next4, 14
  br i1 %exitcond5, label %for_end, label %for_begin1.preheader, !prof !61

for_end:                                          ; preds = %for_begin1.preheader
  ret void
}

define dllexport i32 @fused_nn_softmax(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 2
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.105, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %1**
  %8 = load %1*, %1** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !597
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
  tail call void %30(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.106, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %31 = getelementptr inbounds i8, i8* %1, i64 4
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !611
  switch i32 %33, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %34(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.107, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %35 = icmp eq i32 %21, 1
  br i1 %35, label %assert_end6, label %assert_fail5, !prof !5

assert_fail5:                                     ; preds = %assert_end4
  %36 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %36(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4
  %37 = getelementptr inbounds %1, %1* %8, i64 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %assert_end8, label %assert_fail7, !prof !5

assert_fail7:                                     ; preds = %assert_end6
  %40 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %40(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.76, i64 0, i64 0))
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
  tail call void %52(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %53 = load i64, i64* %17, align 8, !tbaa !613
  %54 = trunc i64 %53 to i32
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %56 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %56(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %57 = getelementptr inbounds i64, i64* %17, i64 1
  %58 = load i64, i64* %57, align 8, !tbaa !627
  %59 = trunc i64 %58 to i32
  %60 = icmp eq i32 %59, 16
  br i1 %60, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %61 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %61(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.108, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %62 = getelementptr inbounds i64, i64* %17, i64 2
  %63 = load i64, i64* %62, align 8, !tbaa !629
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 13
  br i1 %65, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %66 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %66(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.88, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %67 = getelementptr inbounds i64, i64* %17, i64 3
  %68 = load i64, i64* %67, align 8, !tbaa !632
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, 13
  br i1 %70, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %71 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %71(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.89, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %72 = icmp eq i64* %19, null
  br i1 %72, label %if_end, label %if_then, !prof !61

if_then:                                          ; preds = %assert_end18
  %73 = bitcast i64* %19 to <4 x i64>*
  %74 = load <4 x i64>, <4 x i64>* %73, align 8, !tbaa !634
  %75 = trunc <4 x i64> %74 to <4 x i32>
  %76 = icmp eq <4 x i32> %75, <i32 2704, i32 169, i32 13, i32 1>
  %rdx.shuf47 = shufflevector <4 x i1> %76, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx48 = and <4 x i1> %76, %rdx.shuf47
  %rdx.shuf49 = shufflevector <4 x i1> %bin.rdx48, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx50 = and <4 x i1> %bin.rdx48, %rdx.shuf49
  %77 = extractelement <4 x i1> %bin.rdx50, i32 0
  br i1 %77, label %if_end, label %assert_fail19, !prof !5

if_end:                                           ; preds = %assert_end18, %if_then
  %78 = getelementptr inbounds %1, %1* %8, i64 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %assert_end22, label %assert_fail21, !prof !5

assert_fail19:                                    ; preds = %if_then
  %81 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %81(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.109, i64 0, i64 0))
  ret i32 -1

assert_fail21:                                    ; preds = %if_end
  %82 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %82(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %if_end
  %83 = getelementptr inbounds %1, %1* %13, i64 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %86 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %86(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.92, i64 0, i64 0))
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
  tail call void %98(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %99 = load i64, i64* %27, align 8, !tbaa !646
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %102 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %102(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.79, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %103 = getelementptr inbounds i64, i64* %27, i64 1
  %104 = load i64, i64* %103, align 8, !tbaa !660
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %105, 16
  br i1 %106, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %107 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %107(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.93, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %108 = getelementptr inbounds i64, i64* %27, i64 2
  %109 = load i64, i64* %108, align 8, !tbaa !662
  %110 = trunc i64 %109 to i32
  %111 = icmp eq i32 %110, 13
  br i1 %111, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %112(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.94, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %113 = getelementptr inbounds i64, i64* %27, i64 3
  %114 = load i64, i64* %113, align 8, !tbaa !665
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %115, 13
  br i1 %116, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.95, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %118 = icmp eq i64* %29, null
  br i1 %118, label %if_end36, label %if_then35, !prof !61

if_then35:                                        ; preds = %assert_end34
  %119 = bitcast i64* %29 to <4 x i64>*
  %120 = load <4 x i64>, <4 x i64>* %119, align 8, !tbaa !667
  %121 = trunc <4 x i64> %120 to <4 x i32>
  %122 = icmp eq <4 x i32> %121, <i32 2704, i32 169, i32 13, i32 1>
  %rdx.shuf = shufflevector <4 x i1> %122, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx = and <4 x i1> %122, %rdx.shuf
  %rdx.shuf45 = shufflevector <4 x i1> %bin.rdx, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx46 = and <4 x i1> %bin.rdx, %rdx.shuf45
  %123 = extractelement <4 x i1> %bin.rdx46, i32 0
  br i1 %123, label %if_end36, label %assert_fail37, !prof !5

if_end36:                                         ; preds = %assert_end34, %if_then35
  %124 = getelementptr inbounds %1, %1* %13, i64 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %assert_end40, label %assert_fail39, !prof !5

assert_fail37:                                    ; preds = %if_then35
  %127 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %127(i8* getelementptr inbounds ([198 x i8], [198 x i8]* @.str.96, i64 0, i64 0))
  ret i32 -1

assert_fail39:                                    ; preds = %if_end36
  %128 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %128(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %if_end36
  %129 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %assert_end42, label %assert_fail41, !prof !5

assert_fail41:                                    ; preds = %assert_end40
  %132 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %132(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %assert_end40
  %133 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %23, %134
  br i1 %135, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %136 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %136(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  tail call fastcc void @fused_nn_softmax_compute_(i8* %15, i8* %25, i32 %23)
  ret i32 0
}

; Function Attrs: noinline
define private fastcc void @fused_nn_softmax_compute_(i8* noalias nocapture readonly, i8* noalias nocapture, i32) unnamed_addr #0 {
entry:
  %3 = alloca [169 x float], align 4
  %4 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %5 = tail call i8* %4(i32 1, i32 %2, i64 10816, i32 2, i32 32)
  %6 = bitcast i8* %0 to float*
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_end3, %entry
  %indvars.iv30 = phi i64 [ 0, %entry ], [ %indvars.iv.next31, %for_end3 ]
  %7 = mul nuw nsw i64 %indvars.iv30, 13
  br label %for_body2

for_begin7.preheader:                             ; preds = %for_end3
  %8 = bitcast i8* %5 to float*
  br label %for_begin10.preheader

for_body2:                                        ; preds = %for_body2, %for_begin1.preheader
  %indvars.iv27 = phi i64 [ 0, %for_begin1.preheader ], [ %indvars.iv.next28, %for_body2 ]
  %9 = add nuw nsw i64 %indvars.iv27, %7
  %10 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %9
  %11 = getelementptr inbounds float, float* %6, i64 %9
  %12 = load float, float* %11, align 4, !tbaa !679
  %13 = fcmp olt float %12, 0xC7EFFFFFE0000000
  %14 = select i1 %13, float 0xC7EFFFFFE0000000, float %12
  %15 = add nuw nsw i64 %9, 169
  %16 = getelementptr inbounds float, float* %6, i64 %15
  %17 = load float, float* %16, align 4, !tbaa !679
  %18 = fcmp ogt float %14, %17
  %19 = select i1 %18, float %14, float %17
  %20 = add nuw nsw i64 %9, 338
  %21 = getelementptr inbounds float, float* %6, i64 %20
  %22 = load float, float* %21, align 4, !tbaa !679
  %23 = fcmp ogt float %19, %22
  %24 = select i1 %23, float %19, float %22
  %25 = add nuw nsw i64 %9, 507
  %26 = getelementptr inbounds float, float* %6, i64 %25
  %27 = load float, float* %26, align 4, !tbaa !679
  %28 = fcmp ogt float %24, %27
  %29 = select i1 %28, float %24, float %27
  %30 = add nuw nsw i64 %9, 676
  %31 = getelementptr inbounds float, float* %6, i64 %30
  %32 = load float, float* %31, align 4, !tbaa !679
  %33 = fcmp ogt float %29, %32
  %34 = select i1 %33, float %29, float %32
  %35 = add nuw nsw i64 %9, 845
  %36 = getelementptr inbounds float, float* %6, i64 %35
  %37 = load float, float* %36, align 4, !tbaa !679
  %38 = fcmp ogt float %34, %37
  %39 = select i1 %38, float %34, float %37
  %40 = add nuw nsw i64 %9, 1014
  %41 = getelementptr inbounds float, float* %6, i64 %40
  %42 = load float, float* %41, align 4, !tbaa !679
  %43 = fcmp ogt float %39, %42
  %44 = select i1 %43, float %39, float %42
  %45 = add nuw nsw i64 %9, 1183
  %46 = getelementptr inbounds float, float* %6, i64 %45
  %47 = load float, float* %46, align 4, !tbaa !679
  %48 = fcmp ogt float %44, %47
  %49 = select i1 %48, float %44, float %47
  %50 = add nuw nsw i64 %9, 1352
  %51 = getelementptr inbounds float, float* %6, i64 %50
  %52 = load float, float* %51, align 4, !tbaa !679
  %53 = fcmp ogt float %49, %52
  %54 = select i1 %53, float %49, float %52
  %55 = add nuw nsw i64 %9, 1521
  %56 = getelementptr inbounds float, float* %6, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !679
  %58 = fcmp ogt float %54, %57
  %59 = select i1 %58, float %54, float %57
  %60 = add nuw nsw i64 %9, 1690
  %61 = getelementptr inbounds float, float* %6, i64 %60
  %62 = load float, float* %61, align 4, !tbaa !679
  %63 = fcmp ogt float %59, %62
  %64 = select i1 %63, float %59, float %62
  %65 = add nuw nsw i64 %9, 1859
  %66 = getelementptr inbounds float, float* %6, i64 %65
  %67 = load float, float* %66, align 4, !tbaa !679
  %68 = fcmp ogt float %64, %67
  %69 = select i1 %68, float %64, float %67
  %70 = add nuw nsw i64 %9, 2028
  %71 = getelementptr inbounds float, float* %6, i64 %70
  %72 = load float, float* %71, align 4, !tbaa !679
  %73 = fcmp ogt float %69, %72
  %74 = select i1 %73, float %69, float %72
  %75 = add nuw nsw i64 %9, 2197
  %76 = getelementptr inbounds float, float* %6, i64 %75
  %77 = load float, float* %76, align 4, !tbaa !679
  %78 = fcmp ogt float %74, %77
  %79 = select i1 %78, float %74, float %77
  %80 = add nuw nsw i64 %9, 2366
  %81 = getelementptr inbounds float, float* %6, i64 %80
  %82 = load float, float* %81, align 4, !tbaa !679
  %83 = fcmp ogt float %79, %82
  %84 = select i1 %83, float %79, float %82
  %85 = add nuw nsw i64 %9, 2535
  %86 = getelementptr inbounds float, float* %6, i64 %85
  %87 = load float, float* %86, align 4, !tbaa !679
  %88 = fcmp ogt float %84, %87
  %89 = select i1 %88, float %84, float %87
  store float %89, float* %10, align 4, !tbaa !682
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond29 = icmp eq i64 %indvars.iv.next28, 13
  br i1 %exitcond29, label %for_end3, label %for_body2, !prof !61

for_end3:                                         ; preds = %for_body2
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %exitcond32 = icmp eq i64 %indvars.iv.next31, 13
  br i1 %exitcond32, label %for_begin7.preheader, label %for_begin1.preheader, !prof !61

for_begin10.preheader:                            ; preds = %for_end12, %for_begin7.preheader
  %indvars.iv21 = phi i64 [ 0, %for_begin7.preheader ], [ %indvars.iv.next22, %for_end12 ]
  %90 = mul nuw nsw i64 %indvars.iv21, 169
  br label %for_begin13.preheader

for_begin13.preheader:                            ; preds = %for_begin13.preheader, %for_begin10.preheader
  %indvars.iv18 = phi i64 [ 0, %for_begin10.preheader ], [ %indvars.iv.next19, %for_begin13.preheader ]
  %91 = mul nuw nsw i64 %indvars.iv18, 13
  %92 = add nuw nsw i64 %91, %90
  %93 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %91
  %94 = load float, float* %93, align 4, !tbaa !682
  %95 = getelementptr inbounds float, float* %6, i64 %92
  %96 = load float, float* %95, align 4, !tbaa !679
  %97 = fsub float %96, %94
  %98 = tail call float @llvm.exp.f32(float %97)
  %99 = getelementptr inbounds float, float* %8, i64 %92
  store float %98, float* %99, align 4, !tbaa !685
  %100 = add nuw nsw i64 %91, 1
  %101 = add nuw nsw i64 %100, %90
  %102 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %100
  %103 = load float, float* %102, align 4, !tbaa !682
  %104 = getelementptr inbounds float, float* %6, i64 %101
  %105 = load float, float* %104, align 4, !tbaa !679
  %106 = fsub float %105, %103
  %107 = tail call float @llvm.exp.f32(float %106)
  %108 = getelementptr inbounds float, float* %8, i64 %101
  store float %107, float* %108, align 4, !tbaa !685
  %109 = add nuw nsw i64 %91, 2
  %110 = add nuw nsw i64 %109, %90
  %111 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %109
  %112 = load float, float* %111, align 4, !tbaa !682
  %113 = getelementptr inbounds float, float* %6, i64 %110
  %114 = load float, float* %113, align 4, !tbaa !679
  %115 = fsub float %114, %112
  %116 = tail call float @llvm.exp.f32(float %115)
  %117 = getelementptr inbounds float, float* %8, i64 %110
  store float %116, float* %117, align 4, !tbaa !685
  %118 = add nuw nsw i64 %91, 3
  %119 = add nuw nsw i64 %118, %90
  %120 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %118
  %121 = load float, float* %120, align 4, !tbaa !682
  %122 = getelementptr inbounds float, float* %6, i64 %119
  %123 = load float, float* %122, align 4, !tbaa !679
  %124 = fsub float %123, %121
  %125 = tail call float @llvm.exp.f32(float %124)
  %126 = getelementptr inbounds float, float* %8, i64 %119
  store float %125, float* %126, align 4, !tbaa !685
  %127 = add nuw nsw i64 %91, 4
  %128 = add nuw nsw i64 %127, %90
  %129 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %127
  %130 = load float, float* %129, align 4, !tbaa !682
  %131 = getelementptr inbounds float, float* %6, i64 %128
  %132 = load float, float* %131, align 4, !tbaa !679
  %133 = fsub float %132, %130
  %134 = tail call float @llvm.exp.f32(float %133)
  %135 = getelementptr inbounds float, float* %8, i64 %128
  store float %134, float* %135, align 4, !tbaa !685
  %136 = add nuw nsw i64 %91, 5
  %137 = add nuw nsw i64 %136, %90
  %138 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %136
  %139 = load float, float* %138, align 4, !tbaa !682
  %140 = getelementptr inbounds float, float* %6, i64 %137
  %141 = load float, float* %140, align 4, !tbaa !679
  %142 = fsub float %141, %139
  %143 = tail call float @llvm.exp.f32(float %142)
  %144 = getelementptr inbounds float, float* %8, i64 %137
  store float %143, float* %144, align 4, !tbaa !685
  %145 = add nuw nsw i64 %91, 6
  %146 = add nuw nsw i64 %145, %90
  %147 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %145
  %148 = load float, float* %147, align 4, !tbaa !682
  %149 = getelementptr inbounds float, float* %6, i64 %146
  %150 = load float, float* %149, align 4, !tbaa !679
  %151 = fsub float %150, %148
  %152 = tail call float @llvm.exp.f32(float %151)
  %153 = getelementptr inbounds float, float* %8, i64 %146
  store float %152, float* %153, align 4, !tbaa !685
  %154 = add nuw nsw i64 %91, 7
  %155 = add nuw nsw i64 %154, %90
  %156 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %154
  %157 = load float, float* %156, align 4, !tbaa !682
  %158 = getelementptr inbounds float, float* %6, i64 %155
  %159 = load float, float* %158, align 4, !tbaa !679
  %160 = fsub float %159, %157
  %161 = tail call float @llvm.exp.f32(float %160)
  %162 = getelementptr inbounds float, float* %8, i64 %155
  store float %161, float* %162, align 4, !tbaa !685
  %163 = add nuw nsw i64 %91, 8
  %164 = add nuw nsw i64 %163, %90
  %165 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %163
  %166 = load float, float* %165, align 4, !tbaa !682
  %167 = getelementptr inbounds float, float* %6, i64 %164
  %168 = load float, float* %167, align 4, !tbaa !679
  %169 = fsub float %168, %166
  %170 = tail call float @llvm.exp.f32(float %169)
  %171 = getelementptr inbounds float, float* %8, i64 %164
  store float %170, float* %171, align 4, !tbaa !685
  %172 = add nuw nsw i64 %91, 9
  %173 = add nuw nsw i64 %172, %90
  %174 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %172
  %175 = load float, float* %174, align 4, !tbaa !682
  %176 = getelementptr inbounds float, float* %6, i64 %173
  %177 = load float, float* %176, align 4, !tbaa !679
  %178 = fsub float %177, %175
  %179 = tail call float @llvm.exp.f32(float %178)
  %180 = getelementptr inbounds float, float* %8, i64 %173
  store float %179, float* %180, align 4, !tbaa !685
  %181 = add nuw nsw i64 %91, 10
  %182 = add nuw nsw i64 %181, %90
  %183 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %181
  %184 = load float, float* %183, align 4, !tbaa !682
  %185 = getelementptr inbounds float, float* %6, i64 %182
  %186 = load float, float* %185, align 4, !tbaa !679
  %187 = fsub float %186, %184
  %188 = tail call float @llvm.exp.f32(float %187)
  %189 = getelementptr inbounds float, float* %8, i64 %182
  store float %188, float* %189, align 4, !tbaa !685
  %190 = add nuw nsw i64 %91, 11
  %191 = add nuw nsw i64 %190, %90
  %192 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %190
  %193 = load float, float* %192, align 4, !tbaa !682
  %194 = getelementptr inbounds float, float* %6, i64 %191
  %195 = load float, float* %194, align 4, !tbaa !679
  %196 = fsub float %195, %193
  %197 = tail call float @llvm.exp.f32(float %196)
  %198 = getelementptr inbounds float, float* %8, i64 %191
  store float %197, float* %198, align 4, !tbaa !685
  %199 = add nuw nsw i64 %91, 12
  %200 = add nuw nsw i64 %199, %90
  %201 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %199
  %202 = load float, float* %201, align 4, !tbaa !682
  %203 = getelementptr inbounds float, float* %6, i64 %200
  %204 = load float, float* %203, align 4, !tbaa !679
  %205 = fsub float %204, %202
  %206 = tail call float @llvm.exp.f32(float %205)
  %207 = getelementptr inbounds float, float* %8, i64 %200
  store float %206, float* %207, align 4, !tbaa !685
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond20 = icmp eq i64 %indvars.iv.next19, 13
  br i1 %exitcond20, label %for_end12, label %for_begin13.preheader, !prof !61

for_end12:                                        ; preds = %for_begin13.preheader
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond23 = icmp eq i64 %indvars.iv.next22, 16
  br i1 %exitcond23, label %for_begin19.preheader, label %for_begin10.preheader, !prof !61

for_begin19.preheader:                            ; preds = %for_end12, %for_end21
  %indvar = phi i64 [ %indvar.next, %for_end21 ], [ 0, %for_end12 ]
  %208 = mul nuw nsw i64 %indvar, 13
  br label %for_body20

for_begin25.preheader:                            ; preds = %for_end21
  %209 = bitcast i8* %1 to float*
  br label %for_begin28.preheader

for_body20:                                       ; preds = %for_body20, %for_begin19.preheader
  %indvars.iv10 = phi i64 [ 0, %for_begin19.preheader ], [ %indvars.iv.next11, %for_body20 ]
  %210 = add nuw nsw i64 %indvars.iv10, %208
  %211 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %210
  %212 = getelementptr inbounds float, float* %8, i64 %210
  %213 = load float, float* %212, align 4, !tbaa !685
  %214 = fadd float %213, 0.000000e+00
  %215 = add nuw nsw i64 %210, 169
  %216 = getelementptr inbounds float, float* %8, i64 %215
  %217 = load float, float* %216, align 4, !tbaa !685
  %218 = fadd float %217, %214
  %219 = add nuw nsw i64 %210, 338
  %220 = getelementptr inbounds float, float* %8, i64 %219
  %221 = load float, float* %220, align 4, !tbaa !685
  %222 = fadd float %221, %218
  %223 = add nuw nsw i64 %210, 507
  %224 = getelementptr inbounds float, float* %8, i64 %223
  %225 = load float, float* %224, align 4, !tbaa !685
  %226 = fadd float %225, %222
  %227 = add nuw nsw i64 %210, 676
  %228 = getelementptr inbounds float, float* %8, i64 %227
  %229 = load float, float* %228, align 4, !tbaa !685
  %230 = fadd float %229, %226
  %231 = add nuw nsw i64 %210, 845
  %232 = getelementptr inbounds float, float* %8, i64 %231
  %233 = load float, float* %232, align 4, !tbaa !685
  %234 = fadd float %233, %230
  %235 = add nuw nsw i64 %210, 1014
  %236 = getelementptr inbounds float, float* %8, i64 %235
  %237 = load float, float* %236, align 4, !tbaa !685
  %238 = fadd float %237, %234
  %239 = add nuw nsw i64 %210, 1183
  %240 = getelementptr inbounds float, float* %8, i64 %239
  %241 = load float, float* %240, align 4, !tbaa !685
  %242 = fadd float %241, %238
  %243 = add nuw nsw i64 %210, 1352
  %244 = getelementptr inbounds float, float* %8, i64 %243
  %245 = load float, float* %244, align 4, !tbaa !685
  %246 = fadd float %245, %242
  %247 = add nuw nsw i64 %210, 1521
  %248 = getelementptr inbounds float, float* %8, i64 %247
  %249 = load float, float* %248, align 4, !tbaa !685
  %250 = fadd float %249, %246
  %251 = add nuw nsw i64 %210, 1690
  %252 = getelementptr inbounds float, float* %8, i64 %251
  %253 = load float, float* %252, align 4, !tbaa !685
  %254 = fadd float %253, %250
  %255 = add nuw nsw i64 %210, 1859
  %256 = getelementptr inbounds float, float* %8, i64 %255
  %257 = load float, float* %256, align 4, !tbaa !685
  %258 = fadd float %257, %254
  %259 = add nuw nsw i64 %210, 2028
  %260 = getelementptr inbounds float, float* %8, i64 %259
  %261 = load float, float* %260, align 4, !tbaa !685
  %262 = fadd float %261, %258
  %263 = add nuw nsw i64 %210, 2197
  %264 = getelementptr inbounds float, float* %8, i64 %263
  %265 = load float, float* %264, align 4, !tbaa !685
  %266 = fadd float %265, %262
  %267 = add nuw nsw i64 %210, 2366
  %268 = getelementptr inbounds float, float* %8, i64 %267
  %269 = load float, float* %268, align 4, !tbaa !685
  %270 = fadd float %269, %266
  %271 = add nuw nsw i64 %210, 2535
  %272 = getelementptr inbounds float, float* %8, i64 %271
  %273 = load float, float* %272, align 4, !tbaa !685
  %274 = fadd float %273, %270
  store float %274, float* %211, align 4, !tbaa !682
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  %exitcond12 = icmp eq i64 %indvars.iv.next11, 13
  br i1 %exitcond12, label %for_end21, label %for_body20, !prof !61

for_end21:                                        ; preds = %for_body20
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond14 = icmp eq i64 %indvar.next, 13
  br i1 %exitcond14, label %for_begin25.preheader, label %for_begin19.preheader, !prof !61

for_begin28.preheader:                            ; preds = %for_end30, %for_begin25.preheader
  %indvars.iv4 = phi i64 [ 0, %for_begin25.preheader ], [ %indvars.iv.next5, %for_end30 ]
  %275 = mul nuw nsw i64 %indvars.iv4, 169
  br label %for_begin31.preheader

for_end27:                                        ; preds = %for_end30
  %276 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !6
  %277 = tail call i32 %276(i32 1, i32 %2, i8* nonnull %5)
  ret void

for_begin31.preheader:                            ; preds = %for_begin31.preheader, %for_begin28.preheader
  %indvars.iv = phi i64 [ 0, %for_begin28.preheader ], [ %indvars.iv.next, %for_begin31.preheader ]
  %278 = mul nuw nsw i64 %indvars.iv, 13
  %279 = add nuw nsw i64 %278, %275
  %280 = getelementptr inbounds float, float* %8, i64 %279
  %281 = load float, float* %280, align 4, !tbaa !685
  %282 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %278
  %283 = load float, float* %282, align 4, !tbaa !682
  %284 = fdiv float %281, %283
  %285 = getelementptr inbounds float, float* %209, i64 %279
  store float %284, float* %285, align 4, !tbaa !688
  %286 = add nuw nsw i64 %278, 1
  %287 = add nuw nsw i64 %286, %275
  %288 = getelementptr inbounds float, float* %8, i64 %287
  %289 = load float, float* %288, align 4, !tbaa !685
  %290 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %286
  %291 = load float, float* %290, align 4, !tbaa !682
  %292 = fdiv float %289, %291
  %293 = getelementptr inbounds float, float* %209, i64 %287
  store float %292, float* %293, align 4, !tbaa !688
  %294 = add nuw nsw i64 %278, 2
  %295 = add nuw nsw i64 %294, %275
  %296 = getelementptr inbounds float, float* %8, i64 %295
  %297 = load float, float* %296, align 4, !tbaa !685
  %298 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %294
  %299 = load float, float* %298, align 4, !tbaa !682
  %300 = fdiv float %297, %299
  %301 = getelementptr inbounds float, float* %209, i64 %295
  store float %300, float* %301, align 4, !tbaa !688
  %302 = add nuw nsw i64 %278, 3
  %303 = add nuw nsw i64 %302, %275
  %304 = getelementptr inbounds float, float* %8, i64 %303
  %305 = load float, float* %304, align 4, !tbaa !685
  %306 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %302
  %307 = load float, float* %306, align 4, !tbaa !682
  %308 = fdiv float %305, %307
  %309 = getelementptr inbounds float, float* %209, i64 %303
  store float %308, float* %309, align 4, !tbaa !688
  %310 = add nuw nsw i64 %278, 4
  %311 = add nuw nsw i64 %310, %275
  %312 = getelementptr inbounds float, float* %8, i64 %311
  %313 = load float, float* %312, align 4, !tbaa !685
  %314 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %310
  %315 = load float, float* %314, align 4, !tbaa !682
  %316 = fdiv float %313, %315
  %317 = getelementptr inbounds float, float* %209, i64 %311
  store float %316, float* %317, align 4, !tbaa !688
  %318 = add nuw nsw i64 %278, 5
  %319 = add nuw nsw i64 %318, %275
  %320 = getelementptr inbounds float, float* %8, i64 %319
  %321 = load float, float* %320, align 4, !tbaa !685
  %322 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %318
  %323 = load float, float* %322, align 4, !tbaa !682
  %324 = fdiv float %321, %323
  %325 = getelementptr inbounds float, float* %209, i64 %319
  store float %324, float* %325, align 4, !tbaa !688
  %326 = add nuw nsw i64 %278, 6
  %327 = add nuw nsw i64 %326, %275
  %328 = getelementptr inbounds float, float* %8, i64 %327
  %329 = load float, float* %328, align 4, !tbaa !685
  %330 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %326
  %331 = load float, float* %330, align 4, !tbaa !682
  %332 = fdiv float %329, %331
  %333 = getelementptr inbounds float, float* %209, i64 %327
  store float %332, float* %333, align 4, !tbaa !688
  %334 = add nuw nsw i64 %278, 7
  %335 = add nuw nsw i64 %334, %275
  %336 = getelementptr inbounds float, float* %8, i64 %335
  %337 = load float, float* %336, align 4, !tbaa !685
  %338 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %334
  %339 = load float, float* %338, align 4, !tbaa !682
  %340 = fdiv float %337, %339
  %341 = getelementptr inbounds float, float* %209, i64 %335
  store float %340, float* %341, align 4, !tbaa !688
  %342 = add nuw nsw i64 %278, 8
  %343 = add nuw nsw i64 %342, %275
  %344 = getelementptr inbounds float, float* %8, i64 %343
  %345 = load float, float* %344, align 4, !tbaa !685
  %346 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %342
  %347 = load float, float* %346, align 4, !tbaa !682
  %348 = fdiv float %345, %347
  %349 = getelementptr inbounds float, float* %209, i64 %343
  store float %348, float* %349, align 4, !tbaa !688
  %350 = add nuw nsw i64 %278, 9
  %351 = add nuw nsw i64 %350, %275
  %352 = getelementptr inbounds float, float* %8, i64 %351
  %353 = load float, float* %352, align 4, !tbaa !685
  %354 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %350
  %355 = load float, float* %354, align 4, !tbaa !682
  %356 = fdiv float %353, %355
  %357 = getelementptr inbounds float, float* %209, i64 %351
  store float %356, float* %357, align 4, !tbaa !688
  %358 = add nuw nsw i64 %278, 10
  %359 = add nuw nsw i64 %358, %275
  %360 = getelementptr inbounds float, float* %8, i64 %359
  %361 = load float, float* %360, align 4, !tbaa !685
  %362 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %358
  %363 = load float, float* %362, align 4, !tbaa !682
  %364 = fdiv float %361, %363
  %365 = getelementptr inbounds float, float* %209, i64 %359
  store float %364, float* %365, align 4, !tbaa !688
  %366 = add nuw nsw i64 %278, 11
  %367 = add nuw nsw i64 %366, %275
  %368 = getelementptr inbounds float, float* %8, i64 %367
  %369 = load float, float* %368, align 4, !tbaa !685
  %370 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %366
  %371 = load float, float* %370, align 4, !tbaa !682
  %372 = fdiv float %369, %371
  %373 = getelementptr inbounds float, float* %209, i64 %367
  store float %372, float* %373, align 4, !tbaa !688
  %374 = add nuw nsw i64 %278, 12
  %375 = add nuw nsw i64 %374, %275
  %376 = getelementptr inbounds float, float* %8, i64 %375
  %377 = load float, float* %376, align 4, !tbaa !685
  %378 = getelementptr inbounds [169 x float], [169 x float]* %3, i64 0, i64 %374
  %379 = load float, float* %378, align 4, !tbaa !682
  %380 = fdiv float %377, %379
  %381 = getelementptr inbounds float, float* %209, i64 %375
  store float %380, float* %381, align 4, !tbaa !688
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 13
  br i1 %exitcond, label %for_end30, label %for_begin31.preheader, !prof !61

for_end30:                                        ; preds = %for_begin31.preheader
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  %exitcond6 = icmp eq i64 %indvars.iv.next5, 16
  br i1 %exitcond6, label %for_end27, label %for_begin28.preheader, !prof !61
}

; Function Attrs: nounwind readnone speculatable
declare float @llvm.exp.f32(float) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #5

attributes #0 = { noinline }
attributes #1 = { nounwind }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { norecurse nounwind }
attributes #4 = { noinline norecurse nounwind }
attributes #5 = { argmemonly nounwind }

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
!10 = !{!"0x564708fb2800.w1.b0", !11, i64 0}
!11 = !{!"0x564708fb2800.w2.b0", !12, i64 0}
!12 = !{!"0x564708fb2800.w4.b0", !13, i64 0}
!13 = !{!"0x564708fb2800.w8.b0", !14, i64 0}
!14 = !{!"0x564708fb2800.w16.b0", !15, i64 0}
!15 = !{!"0x564708fb2800.w32.b0", !16, i64 0}
!16 = !{!"0x564708fb2800.w64.b0", !17, i64 0}
!17 = !{!"0x564708fb2800.w128.b0", !18, i64 0}
!18 = !{!"0x564708fb2800.w256.b0", !19, i64 0}
!19 = !{!"0x564708fb2800.w512.b0", !20, i64 0}
!20 = !{!"0x564708fb2800.w1024.b0", !21, i64 0}
!21 = !{!"int32", !22, i64 0}
!22 = !{!"0x564708fb2800", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x564708fb2800.w1.b2", !25, i64 0}
!25 = !{!"0x564708fb2800.w2.b2", !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"0x564708fb2800.w1.b3", !25, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"0x564708fb2800.w1.b4", !30, i64 0}
!30 = !{!"0x564708fb2800.w2.b4", !31, i64 0}
!31 = !{!"0x564708fb2800.w4.b4", !13, i64 0}
!32 = !{!33, !33, i64 0}
!33 = !{!"0x564708fb2800.w1.b5", !30, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"0x564708fb2800.w1.b1", !11, i64 0}
!36 = !{!37, !37, i64 0}
!37 = !{!"0x564708f0c8d0.w1.b0", !38, i64 0}
!38 = !{!"0x564708f0c8d0.w2.b0", !39, i64 0}
!39 = !{!"0x564708f0c8d0.w4.b0", !40, i64 0}
!40 = !{!"0x564708f0c8d0.w8.b0", !41, i64 0}
!41 = !{!"0x564708f0c8d0.w16.b0", !42, i64 0}
!42 = !{!"0x564708f0c8d0.w32.b0", !43, i64 0}
!43 = !{!"0x564708f0c8d0.w64.b0", !44, i64 0}
!44 = !{!"0x564708f0c8d0.w128.b0", !45, i64 0}
!45 = !{!"0x564708f0c8d0.w256.b0", !46, i64 0}
!46 = !{!"0x564708f0c8d0.w512.b0", !47, i64 0}
!47 = !{!"0x564708f0c8d0.w1024.b0", !48, i64 0}
!48 = !{!"int64", !49, i64 0}
!49 = !{!"0x564708f0c8d0", !8, i64 0}
!50 = !{!51, !51, i64 0}
!51 = !{!"0x564708f0c8d0.w1.b1", !38, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"0x564708f0c8d0.w1.b2", !54, i64 0}
!54 = !{!"0x564708f0c8d0.w2.b2", !39, i64 0}
!55 = !{!56, !56, i64 0}
!56 = !{!"0x564708f0c8d0.w1.b3", !54, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"0x564708f0c8d0.w1.b4", !59, i64 0}
!59 = !{!"0x564708f0c8d0.w2.b4", !60, i64 0}
!60 = !{!"0x564708f0c8d0.w4.b4", !40, i64 0}
!61 = !{!"branch_weights", i32 1, i32 1048576}
!62 = !{!63, !63, i64 0}
!63 = !{!"0x564708f0cbe0.w4.b0", !64, i64 0}
!64 = !{!"0x564708f0cbe0.w8.b0", !65, i64 0}
!65 = !{!"0x564708f0cbe0.w16.b0", !66, i64 0}
!66 = !{!"0x564708f0cbe0.w32.b0", !67, i64 0}
!67 = !{!"0x564708f0cbe0.w64.b0", !68, i64 0}
!68 = !{!"0x564708f0cbe0.w128.b0", !69, i64 0}
!69 = !{!"0x564708f0cbe0.w256.b0", !70, i64 0}
!70 = !{!"0x564708f0cbe0.w512.b0", !71, i64 0}
!71 = !{!"0x564708f0cbe0.w1024.b0", !72, i64 0}
!72 = !{!"int64", !73, i64 0}
!73 = !{!"0x564708f0cbe0", !8, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"0x564708f0cbe0.w1.b4", !76, i64 0}
!76 = !{!"0x564708f0cbe0.w2.b4", !77, i64 0}
!77 = !{!"0x564708f0cbe0.w4.b4", !64, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"0x564708f0cce0.w1.b0", !80, i64 0}
!80 = !{!"0x564708f0cce0.w2.b0", !81, i64 0}
!81 = !{!"0x564708f0cce0.w4.b0", !82, i64 0}
!82 = !{!"0x564708f0cce0.w8.b0", !83, i64 0}
!83 = !{!"0x564708f0cce0.w16.b0", !84, i64 0}
!84 = !{!"0x564708f0cce0.w32.b0", !85, i64 0}
!85 = !{!"0x564708f0cce0.w64.b0", !86, i64 0}
!86 = !{!"0x564708f0cce0.w128.b0", !87, i64 0}
!87 = !{!"0x564708f0cce0.w256.b0", !88, i64 0}
!88 = !{!"0x564708f0cce0.w512.b0", !89, i64 0}
!89 = !{!"0x564708f0cce0.w1024.b0", !90, i64 0}
!90 = !{!"int64", !91, i64 0}
!91 = !{!"0x564708f0cce0", !8, i64 0}
!92 = !{!93, !93, i64 0}
!93 = !{!"0x564708f0cce0.w1.b1", !80, i64 0}
!94 = !{!95, !95, i64 0}
!95 = !{!"0x564708f0cce0.w1.b2", !96, i64 0}
!96 = !{!"0x564708f0cce0.w2.b2", !81, i64 0}
!97 = !{!98, !98, i64 0}
!98 = !{!"0x564708f0cce0.w1.b3", !96, i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"0x564708f0cce0.w1.b4", !101, i64 0}
!101 = !{!"0x564708f0cce0.w2.b4", !102, i64 0}
!102 = !{!"0x564708f0cce0.w4.b4", !82, i64 0}
!103 = !{!104, !104, i64 0}
!104 = !{!"0x564708f0cce0.w1.b5", !101, i64 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"0x564708f0c980.w4.b0", !107, i64 0}
!107 = !{!"0x564708f0c980.w8.b0", !108, i64 0}
!108 = !{!"0x564708f0c980.w16.b0", !109, i64 0}
!109 = !{!"0x564708f0c980.w32.b0", !110, i64 0}
!110 = !{!"0x564708f0c980.w64.b0", !111, i64 0}
!111 = !{!"0x564708f0c980.w128.b0", !112, i64 0}
!112 = !{!"0x564708f0c980.w256.b0", !113, i64 0}
!113 = !{!"0x564708f0c980.w512.b0", !114, i64 0}
!114 = !{!"0x564708f0c980.w1024.b0", !115, i64 0}
!115 = !{!"int64", !116, i64 0}
!116 = !{!"0x564708f0c980", !8, i64 0}
!117 = !{!118, !118, i64 0}
!118 = !{!"0x564708f0c980.w1.b4", !119, i64 0}
!119 = !{!"0x564708f0c980.w2.b4", !120, i64 0}
!120 = !{!"0x564708f0c980.w4.b4", !107, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"0x564708f0c980.w1.b5", !119, i64 0}
!123 = !{!124, !124, i64 0}
!124 = !{!"0x564708e655e0.w1.b0", !125, i64 0}
!125 = !{!"0x564708e655e0.w2.b0", !126, i64 0}
!126 = !{!"0x564708e655e0.w4.b0", !127, i64 0}
!127 = !{!"0x564708e655e0.w8.b0", !128, i64 0}
!128 = !{!"0x564708e655e0.w16.b0", !129, i64 0}
!129 = !{!"0x564708e655e0.w32.b0", !130, i64 0}
!130 = !{!"0x564708e655e0.w64.b0", !131, i64 0}
!131 = !{!"0x564708e655e0.w128.b0", !132, i64 0}
!132 = !{!"0x564708e655e0.w256.b0", !133, i64 0}
!133 = !{!"0x564708e655e0.w512.b0", !134, i64 0}
!134 = !{!"0x564708e655e0.w1024.b0", !135, i64 0}
!135 = !{!"int64", !136, i64 0}
!136 = !{!"0x564708e655e0", !8, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"0x564708e655e0.w1.b1", !125, i64 0}
!139 = !{!140, !140, i64 0}
!140 = !{!"0x564708e655e0.w1.b2", !141, i64 0}
!141 = !{!"0x564708e655e0.w2.b2", !126, i64 0}
!142 = !{!143, !143, i64 0}
!143 = !{!"0x564708e655e0.w1.b3", !141, i64 0}
!144 = !{!145, !145, i64 0}
!145 = !{!"0x564708e655e0.w1.b4", !146, i64 0}
!146 = !{!"0x564708e655e0.w2.b4", !147, i64 0}
!147 = !{!"0x564708e655e0.w4.b4", !127, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"0x564708e41c20.w4.b0", !150, i64 0}
!150 = !{!"0x564708e41c20.w8.b0", !151, i64 0}
!151 = !{!"0x564708e41c20.w16.b0", !152, i64 0}
!152 = !{!"0x564708e41c20.w32.b0", !153, i64 0}
!153 = !{!"0x564708e41c20.w64.b0", !154, i64 0}
!154 = !{!"0x564708e41c20.w128.b0", !155, i64 0}
!155 = !{!"0x564708e41c20.w256.b0", !156, i64 0}
!156 = !{!"0x564708e41c20.w512.b0", !157, i64 0}
!157 = !{!"0x564708e41c20.w1024.b0", !158, i64 0}
!158 = !{!"int64", !159, i64 0}
!159 = !{!"0x564708e41c20", !8, i64 0}
!160 = !{!161, !161, i64 0}
!161 = !{!"0x564708e41c20.w1.b4", !162, i64 0}
!162 = !{!"0x564708e41c20.w2.b4", !163, i64 0}
!163 = !{!"0x564708e41c20.w4.b4", !150, i64 0}
!164 = !{!165, !165, i64 0}
!165 = !{!"0x564708e42e80.w1.b0", !166, i64 0}
!166 = !{!"0x564708e42e80.w2.b0", !167, i64 0}
!167 = !{!"0x564708e42e80.w4.b0", !168, i64 0}
!168 = !{!"0x564708e42e80.w8.b0", !169, i64 0}
!169 = !{!"0x564708e42e80.w16.b0", !170, i64 0}
!170 = !{!"0x564708e42e80.w32.b0", !171, i64 0}
!171 = !{!"0x564708e42e80.w64.b0", !172, i64 0}
!172 = !{!"0x564708e42e80.w128.b0", !173, i64 0}
!173 = !{!"0x564708e42e80.w256.b0", !174, i64 0}
!174 = !{!"0x564708e42e80.w512.b0", !175, i64 0}
!175 = !{!"0x564708e42e80.w1024.b0", !176, i64 0}
!176 = !{!"int64", !177, i64 0}
!177 = !{!"0x564708e42e80", !8, i64 0}
!178 = !{!179, !179, i64 0}
!179 = !{!"0x564708e42e80.w1.b1", !166, i64 0}
!180 = !{!181, !181, i64 0}
!181 = !{!"0x564708e42e80.w1.b2", !182, i64 0}
!182 = !{!"0x564708e42e80.w2.b2", !167, i64 0}
!183 = !{!184, !184, i64 0}
!184 = !{!"0x564708e42e80.w1.b3", !182, i64 0}
!185 = !{!186, !186, i64 0}
!186 = !{!"0x564708e42e80.w1.b4", !187, i64 0}
!187 = !{!"0x564708e42e80.w2.b4", !188, i64 0}
!188 = !{!"0x564708e42e80.w4.b4", !168, i64 0}
!189 = !{!190, !190, i64 0}
!190 = !{!"0x564708e42ed0.w4.b0", !191, i64 0}
!191 = !{!"0x564708e42ed0.w8.b0", !192, i64 0}
!192 = !{!"0x564708e42ed0.w16.b0", !193, i64 0}
!193 = !{!"0x564708e42ed0.w32.b0", !194, i64 0}
!194 = !{!"0x564708e42ed0.w64.b0", !195, i64 0}
!195 = !{!"0x564708e42ed0.w128.b0", !196, i64 0}
!196 = !{!"0x564708e42ed0.w256.b0", !197, i64 0}
!197 = !{!"0x564708e42ed0.w512.b0", !198, i64 0}
!198 = !{!"0x564708e42ed0.w1024.b0", !199, i64 0}
!199 = !{!"int64", !200, i64 0}
!200 = !{!"0x564708e42ed0", !8, i64 0}
!201 = !{!202, !202, i64 0}
!202 = !{!"0x564708e42ed0.w1.b4", !203, i64 0}
!203 = !{!"0x564708e42ed0.w2.b4", !204, i64 0}
!204 = !{!"0x564708e42ed0.w4.b4", !191, i64 0}
!205 = !{!206, !206, i64 0}
!206 = !{!"0x564708f3a740.w1.b0", !207, i64 0}
!207 = !{!"0x564708f3a740.w2.b0", !208, i64 0}
!208 = !{!"0x564708f3a740.w4.b0", !209, i64 0}
!209 = !{!"0x564708f3a740.w8.b0", !210, i64 0}
!210 = !{!"0x564708f3a740.w16.b0", !211, i64 0}
!211 = !{!"0x564708f3a740.w32.b0", !212, i64 0}
!212 = !{!"0x564708f3a740.w64.b0", !213, i64 0}
!213 = !{!"0x564708f3a740.w128.b0", !214, i64 0}
!214 = !{!"0x564708f3a740.w256.b0", !215, i64 0}
!215 = !{!"0x564708f3a740.w512.b0", !216, i64 0}
!216 = !{!"0x564708f3a740.w1024.b0", !217, i64 0}
!217 = !{!"int64", !218, i64 0}
!218 = !{!"0x564708f3a740", !8, i64 0}
!219 = !{!220, !220, i64 0}
!220 = !{!"0x564708f3a740.w1.b1", !207, i64 0}
!221 = !{!222, !222, i64 0}
!222 = !{!"0x564708f3a740.w1.b2", !223, i64 0}
!223 = !{!"0x564708f3a740.w2.b2", !208, i64 0}
!224 = !{!225, !225, i64 0}
!225 = !{!"0x564708f3a740.w1.b3", !223, i64 0}
!226 = !{!227, !227, i64 0}
!227 = !{!"0x564708f3a740.w1.b4", !228, i64 0}
!228 = !{!"0x564708f3a740.w2.b4", !229, i64 0}
!229 = !{!"0x564708f3a740.w4.b4", !209, i64 0}
!230 = !{!231, !231, i64 0}
!231 = !{!"0x564708e2c400.w4.b0", !232, i64 0}
!232 = !{!"0x564708e2c400.w8.b0", !233, i64 0}
!233 = !{!"0x564708e2c400.w16.b0", !234, i64 0}
!234 = !{!"0x564708e2c400.w32.b0", !235, i64 0}
!235 = !{!"0x564708e2c400.w64.b0", !236, i64 0}
!236 = !{!"0x564708e2c400.w128.b0", !237, i64 0}
!237 = !{!"0x564708e2c400.w256.b0", !238, i64 0}
!238 = !{!"0x564708e2c400.w512.b0", !239, i64 0}
!239 = !{!"0x564708e2c400.w1024.b0", !240, i64 0}
!240 = !{!"int64", !241, i64 0}
!241 = !{!"0x564708e2c400", !8, i64 0}
!242 = !{!243, !243, i64 0}
!243 = !{!"0x564708e2c400.w1.b4", !244, i64 0}
!244 = !{!"0x564708e2c400.w2.b4", !245, i64 0}
!245 = !{!"0x564708e2c400.w4.b4", !232, i64 0}
!246 = !{!247, !247, i64 0}
!247 = !{!"0x564708e2d810.w1.b0", !248, i64 0}
!248 = !{!"0x564708e2d810.w2.b0", !249, i64 0}
!249 = !{!"0x564708e2d810.w4.b0", !250, i64 0}
!250 = !{!"0x564708e2d810.w8.b0", !251, i64 0}
!251 = !{!"0x564708e2d810.w16.b0", !252, i64 0}
!252 = !{!"0x564708e2d810.w32.b0", !253, i64 0}
!253 = !{!"0x564708e2d810.w64.b0", !254, i64 0}
!254 = !{!"0x564708e2d810.w128.b0", !255, i64 0}
!255 = !{!"0x564708e2d810.w256.b0", !256, i64 0}
!256 = !{!"0x564708e2d810.w512.b0", !257, i64 0}
!257 = !{!"0x564708e2d810.w1024.b0", !258, i64 0}
!258 = !{!"int64", !259, i64 0}
!259 = !{!"0x564708e2d810", !8, i64 0}
!260 = !{!261, !261, i64 0}
!261 = !{!"0x564708e2d810.w1.b1", !248, i64 0}
!262 = !{!263, !263, i64 0}
!263 = !{!"0x564708e2d810.w1.b2", !264, i64 0}
!264 = !{!"0x564708e2d810.w2.b2", !249, i64 0}
!265 = !{!266, !266, i64 0}
!266 = !{!"0x564708e2d810.w1.b3", !264, i64 0}
!267 = !{!268, !268, i64 0}
!268 = !{!"0x564708e2d810.w1.b4", !269, i64 0}
!269 = !{!"0x564708e2d810.w2.b4", !270, i64 0}
!270 = !{!"0x564708e2d810.w4.b4", !250, i64 0}
!271 = !{!272, !272, i64 0}
!272 = !{!"0x564708fabd40.w4.b0", !273, i64 0}
!273 = !{!"0x564708fabd40.w8.b0", !274, i64 0}
!274 = !{!"0x564708fabd40.w16.b0", !275, i64 0}
!275 = !{!"0x564708fabd40.w32.b0", !276, i64 0}
!276 = !{!"0x564708fabd40.w64.b0", !277, i64 0}
!277 = !{!"0x564708fabd40.w128.b0", !278, i64 0}
!278 = !{!"0x564708fabd40.w256.b0", !279, i64 0}
!279 = !{!"0x564708fabd40.w512.b0", !280, i64 0}
!280 = !{!"0x564708fabd40.w1024.b0", !281, i64 0}
!281 = !{!"int64", !282, i64 0}
!282 = !{!"0x564708fabd40", !8, i64 0}
!283 = !{!284, !284, i64 0}
!284 = !{!"0x564708fabd40.w1.b4", !285, i64 0}
!285 = !{!"0x564708fabd40.w2.b4", !286, i64 0}
!286 = !{!"0x564708fabd40.w4.b4", !273, i64 0}
!287 = !{!288, !288, i64 0}
!288 = !{!"float32", !289, i64 0}
!289 = !{!"0x564708f86130", !8, i64 0}
!290 = !{!291, !291, i64 0}
!291 = !{!"float32", !292, i64 0}
!292 = !{!"0x564708f85f40", !8, i64 0}
!293 = !{!294, !294, i64 0}
!294 = !{!"0x564708f78890.w8.b0", !295, i64 0}
!295 = !{!"0x564708f78890.w16.b0", !296, i64 0}
!296 = !{!"0x564708f78890.w32.b0", !297, i64 0}
!297 = !{!"0x564708f78890.w64.b0", !298, i64 0}
!298 = !{!"0x564708f78890.w128.b0", !299, i64 0}
!299 = !{!"0x564708f78890.w256.b0", !300, i64 0}
!300 = !{!"0x564708f78890.w512.b0", !301, i64 0}
!301 = !{!"0x564708f78890.w1024.b0", !302, i64 0}
!302 = !{!"float32", !303, i64 0}
!303 = !{!"0x564708f78890", !8, i64 0}
!304 = !{!305, !305, i64 0}
!305 = !{!"float32", !306, i64 0}
!306 = !{!"0x564708f85ce0", !8, i64 0}
!307 = !{!308, !308, i64 0}
!308 = !{!"float32", !309, i64 0}
!309 = !{!"0x564708eb9030", !8, i64 0}
!310 = !{!311, !311, i64 0}
!311 = !{!"float32", !312, i64 0}
!312 = !{!"0x564708f02d10", !8, i64 0}
!313 = !{!314, !314, i64 0}
!314 = !{!"float32", !315, i64 0}
!315 = !{!"0x564708eb9680", !8, i64 0}
!316 = !{!302, !302, i64 0}
!317 = !{!318, !318, i64 0}
!318 = !{!"0x564708f0daa0.w1.b0", !319, i64 0}
!319 = !{!"0x564708f0daa0.w2.b0", !320, i64 0}
!320 = !{!"0x564708f0daa0.w4.b0", !321, i64 0}
!321 = !{!"0x564708f0daa0.w8.b0", !322, i64 0}
!322 = !{!"0x564708f0daa0.w16.b0", !323, i64 0}
!323 = !{!"0x564708f0daa0.w32.b0", !324, i64 0}
!324 = !{!"0x564708f0daa0.w64.b0", !325, i64 0}
!325 = !{!"0x564708f0daa0.w128.b0", !326, i64 0}
!326 = !{!"0x564708f0daa0.w256.b0", !327, i64 0}
!327 = !{!"0x564708f0daa0.w512.b0", !328, i64 0}
!328 = !{!"0x564708f0daa0.w1024.b0", !329, i64 0}
!329 = !{!"int32", !330, i64 0}
!330 = !{!"0x564708f0daa0", !8, i64 0}
!331 = !{!332, !332, i64 0}
!332 = !{!"0x564708f0daa0.w1.b1", !319, i64 0}
!333 = !{!334, !334, i64 0}
!334 = !{!"0x564708f6a770.w1.b0", !335, i64 0}
!335 = !{!"0x564708f6a770.w2.b0", !336, i64 0}
!336 = !{!"0x564708f6a770.w4.b0", !337, i64 0}
!337 = !{!"0x564708f6a770.w8.b0", !338, i64 0}
!338 = !{!"0x564708f6a770.w16.b0", !339, i64 0}
!339 = !{!"0x564708f6a770.w32.b0", !340, i64 0}
!340 = !{!"0x564708f6a770.w64.b0", !341, i64 0}
!341 = !{!"0x564708f6a770.w128.b0", !342, i64 0}
!342 = !{!"0x564708f6a770.w256.b0", !343, i64 0}
!343 = !{!"0x564708f6a770.w512.b0", !344, i64 0}
!344 = !{!"0x564708f6a770.w1024.b0", !345, i64 0}
!345 = !{!"int64", !346, i64 0}
!346 = !{!"0x564708f6a770", !8, i64 0}
!347 = !{!348, !348, i64 0}
!348 = !{!"0x564708f6a770.w1.b1", !335, i64 0}
!349 = !{!350, !350, i64 0}
!350 = !{!"0x564708f6a770.w1.b2", !351, i64 0}
!351 = !{!"0x564708f6a770.w2.b2", !336, i64 0}
!352 = !{!353, !353, i64 0}
!353 = !{!"0x564708f6a770.w1.b3", !351, i64 0}
!354 = !{!355, !355, i64 0}
!355 = !{!"0x564708f6acd0.w4.b0", !356, i64 0}
!356 = !{!"0x564708f6acd0.w8.b0", !357, i64 0}
!357 = !{!"0x564708f6acd0.w16.b0", !358, i64 0}
!358 = !{!"0x564708f6acd0.w32.b0", !359, i64 0}
!359 = !{!"0x564708f6acd0.w64.b0", !360, i64 0}
!360 = !{!"0x564708f6acd0.w128.b0", !361, i64 0}
!361 = !{!"0x564708f6acd0.w256.b0", !362, i64 0}
!362 = !{!"0x564708f6acd0.w512.b0", !363, i64 0}
!363 = !{!"0x564708f6acd0.w1024.b0", !364, i64 0}
!364 = !{!"int64", !365, i64 0}
!365 = !{!"0x564708f6acd0", !8, i64 0}
!366 = !{!367, !367, i64 0}
!367 = !{!"0x564708f6af20.w1.b0", !368, i64 0}
!368 = !{!"0x564708f6af20.w2.b0", !369, i64 0}
!369 = !{!"0x564708f6af20.w4.b0", !370, i64 0}
!370 = !{!"0x564708f6af20.w8.b0", !371, i64 0}
!371 = !{!"0x564708f6af20.w16.b0", !372, i64 0}
!372 = !{!"0x564708f6af20.w32.b0", !373, i64 0}
!373 = !{!"0x564708f6af20.w64.b0", !374, i64 0}
!374 = !{!"0x564708f6af20.w128.b0", !375, i64 0}
!375 = !{!"0x564708f6af20.w256.b0", !376, i64 0}
!376 = !{!"0x564708f6af20.w512.b0", !377, i64 0}
!377 = !{!"0x564708f6af20.w1024.b0", !378, i64 0}
!378 = !{!"int64", !379, i64 0}
!379 = !{!"0x564708f6af20", !8, i64 0}
!380 = !{!381, !381, i64 0}
!381 = !{!"0x564708f6af20.w1.b1", !368, i64 0}
!382 = !{!383, !383, i64 0}
!383 = !{!"0x564708f6af20.w1.b2", !384, i64 0}
!384 = !{!"0x564708f6af20.w2.b2", !369, i64 0}
!385 = !{!386, !386, i64 0}
!386 = !{!"0x564708f6af20.w1.b3", !384, i64 0}
!387 = !{!388, !388, i64 0}
!388 = !{!"0x564708f6af20.w1.b4", !389, i64 0}
!389 = !{!"0x564708f6af20.w2.b4", !390, i64 0}
!390 = !{!"0x564708f6af20.w4.b4", !370, i64 0}
!391 = !{!392, !392, i64 0}
!392 = !{!"0x564708f6aed0.w4.b0", !393, i64 0}
!393 = !{!"0x564708f6aed0.w8.b0", !394, i64 0}
!394 = !{!"0x564708f6aed0.w16.b0", !395, i64 0}
!395 = !{!"0x564708f6aed0.w32.b0", !396, i64 0}
!396 = !{!"0x564708f6aed0.w64.b0", !397, i64 0}
!397 = !{!"0x564708f6aed0.w128.b0", !398, i64 0}
!398 = !{!"0x564708f6aed0.w256.b0", !399, i64 0}
!399 = !{!"0x564708f6aed0.w512.b0", !400, i64 0}
!400 = !{!"0x564708f6aed0.w1024.b0", !401, i64 0}
!401 = !{!"int64", !402, i64 0}
!402 = !{!"0x564708f6aed0", !8, i64 0}
!403 = !{!404, !404, i64 0}
!404 = !{!"0x564708f6aed0.w1.b4", !405, i64 0}
!405 = !{!"0x564708f6aed0.w2.b4", !406, i64 0}
!406 = !{!"0x564708f6aed0.w4.b4", !393, i64 0}
!407 = !{!408, !408, i64 0}
!408 = !{!"float32", !409, i64 0}
!409 = !{!"0x564708e65590", !8, i64 0}
!410 = !{!411, !411, i64 0}
!411 = !{!"float32", !412, i64 0}
!412 = !{!"0x564708f0cc90", !8, i64 0}
!413 = !{!414, !414, i64 0}
!414 = !{!"0x564708db2f40.w1.b0", !415, i64 0}
!415 = !{!"0x564708db2f40.w2.b0", !416, i64 0}
!416 = !{!"0x564708db2f40.w4.b0", !417, i64 0}
!417 = !{!"0x564708db2f40.w8.b0", !418, i64 0}
!418 = !{!"0x564708db2f40.w16.b0", !419, i64 0}
!419 = !{!"0x564708db2f40.w32.b0", !420, i64 0}
!420 = !{!"0x564708db2f40.w64.b0", !421, i64 0}
!421 = !{!"0x564708db2f40.w128.b0", !422, i64 0}
!422 = !{!"0x564708db2f40.w256.b0", !423, i64 0}
!423 = !{!"0x564708db2f40.w512.b0", !424, i64 0}
!424 = !{!"0x564708db2f40.w1024.b0", !425, i64 0}
!425 = !{!"int32", !426, i64 0}
!426 = !{!"0x564708db2f40", !8, i64 0}
!427 = !{!428, !428, i64 0}
!428 = !{!"0x564708db2f40.w1.b1", !415, i64 0}
!429 = !{!430, !430, i64 0}
!430 = !{!"0x564708e72f40.w1.b0", !431, i64 0}
!431 = !{!"0x564708e72f40.w2.b0", !432, i64 0}
!432 = !{!"0x564708e72f40.w4.b0", !433, i64 0}
!433 = !{!"0x564708e72f40.w8.b0", !434, i64 0}
!434 = !{!"0x564708e72f40.w16.b0", !435, i64 0}
!435 = !{!"0x564708e72f40.w32.b0", !436, i64 0}
!436 = !{!"0x564708e72f40.w64.b0", !437, i64 0}
!437 = !{!"0x564708e72f40.w128.b0", !438, i64 0}
!438 = !{!"0x564708e72f40.w256.b0", !439, i64 0}
!439 = !{!"0x564708e72f40.w512.b0", !440, i64 0}
!440 = !{!"0x564708e72f40.w1024.b0", !441, i64 0}
!441 = !{!"int64", !442, i64 0}
!442 = !{!"0x564708e72f40", !8, i64 0}
!443 = !{!444, !444, i64 0}
!444 = !{!"0x564708e72f40.w1.b1", !431, i64 0}
!445 = !{!446, !446, i64 0}
!446 = !{!"0x564708e72f40.w1.b2", !447, i64 0}
!447 = !{!"0x564708e72f40.w2.b2", !432, i64 0}
!448 = !{!449, !449, i64 0}
!449 = !{!"0x564708e72f40.w1.b3", !447, i64 0}
!450 = !{!451, !451, i64 0}
!451 = !{!"0x564708e72f40.w1.b4", !452, i64 0}
!452 = !{!"0x564708e72f40.w2.b4", !453, i64 0}
!453 = !{!"0x564708e72f40.w4.b4", !433, i64 0}
!454 = !{!455, !455, i64 0}
!455 = !{!"0x564708ff5390.w4.b0", !456, i64 0}
!456 = !{!"0x564708ff5390.w8.b0", !457, i64 0}
!457 = !{!"0x564708ff5390.w16.b0", !458, i64 0}
!458 = !{!"0x564708ff5390.w32.b0", !459, i64 0}
!459 = !{!"0x564708ff5390.w64.b0", !460, i64 0}
!460 = !{!"0x564708ff5390.w128.b0", !461, i64 0}
!461 = !{!"0x564708ff5390.w256.b0", !462, i64 0}
!462 = !{!"0x564708ff5390.w512.b0", !463, i64 0}
!463 = !{!"0x564708ff5390.w1024.b0", !464, i64 0}
!464 = !{!"int64", !465, i64 0}
!465 = !{!"0x564708ff5390", !8, i64 0}
!466 = !{!467, !467, i64 0}
!467 = !{!"0x564708ff5390.w1.b4", !468, i64 0}
!468 = !{!"0x564708ff5390.w2.b4", !469, i64 0}
!469 = !{!"0x564708ff5390.w4.b4", !456, i64 0}
!470 = !{!471, !471, i64 0}
!471 = !{!"0x564708ff55e0.w1.b0", !472, i64 0}
!472 = !{!"0x564708ff55e0.w2.b0", !473, i64 0}
!473 = !{!"0x564708ff55e0.w4.b0", !474, i64 0}
!474 = !{!"0x564708ff55e0.w8.b0", !475, i64 0}
!475 = !{!"0x564708ff55e0.w16.b0", !476, i64 0}
!476 = !{!"0x564708ff55e0.w32.b0", !477, i64 0}
!477 = !{!"0x564708ff55e0.w64.b0", !478, i64 0}
!478 = !{!"0x564708ff55e0.w128.b0", !479, i64 0}
!479 = !{!"0x564708ff55e0.w256.b0", !480, i64 0}
!480 = !{!"0x564708ff55e0.w512.b0", !481, i64 0}
!481 = !{!"0x564708ff55e0.w1024.b0", !482, i64 0}
!482 = !{!"int64", !483, i64 0}
!483 = !{!"0x564708ff55e0", !8, i64 0}
!484 = !{!485, !485, i64 0}
!485 = !{!"0x564708ff55e0.w1.b1", !472, i64 0}
!486 = !{!487, !487, i64 0}
!487 = !{!"0x564708ff55e0.w1.b2", !488, i64 0}
!488 = !{!"0x564708ff55e0.w2.b2", !473, i64 0}
!489 = !{!490, !490, i64 0}
!490 = !{!"0x564708ff55e0.w1.b3", !488, i64 0}
!491 = !{!492, !492, i64 0}
!492 = !{!"0x564708e73110.w4.b0", !493, i64 0}
!493 = !{!"0x564708e73110.w8.b0", !494, i64 0}
!494 = !{!"0x564708e73110.w16.b0", !495, i64 0}
!495 = !{!"0x564708e73110.w32.b0", !496, i64 0}
!496 = !{!"0x564708e73110.w64.b0", !497, i64 0}
!497 = !{!"0x564708e73110.w128.b0", !498, i64 0}
!498 = !{!"0x564708e73110.w256.b0", !499, i64 0}
!499 = !{!"0x564708e73110.w512.b0", !500, i64 0}
!500 = !{!"0x564708e73110.w1024.b0", !501, i64 0}
!501 = !{!"int64", !502, i64 0}
!502 = !{!"0x564708e73110", !8, i64 0}
!503 = !{!504, !504, i64 0}
!504 = !{!"float32", !505, i64 0}
!505 = !{!"0x564708f6b8d0", !8, i64 0}
!506 = !{!507, !507, i64 0}
!507 = !{!"float32", !508, i64 0}
!508 = !{!"0x564708f79670", !8, i64 0}
!509 = !{!510, !510, i64 0}
!510 = !{!"0x564708f8e6e0.w1.b0", !511, i64 0}
!511 = !{!"0x564708f8e6e0.w2.b0", !512, i64 0}
!512 = !{!"0x564708f8e6e0.w4.b0", !513, i64 0}
!513 = !{!"0x564708f8e6e0.w8.b0", !514, i64 0}
!514 = !{!"0x564708f8e6e0.w16.b0", !515, i64 0}
!515 = !{!"0x564708f8e6e0.w32.b0", !516, i64 0}
!516 = !{!"0x564708f8e6e0.w64.b0", !517, i64 0}
!517 = !{!"0x564708f8e6e0.w128.b0", !518, i64 0}
!518 = !{!"0x564708f8e6e0.w256.b0", !519, i64 0}
!519 = !{!"0x564708f8e6e0.w512.b0", !520, i64 0}
!520 = !{!"0x564708f8e6e0.w1024.b0", !521, i64 0}
!521 = !{!"int32", !522, i64 0}
!522 = !{!"0x564708f8e6e0", !8, i64 0}
!523 = !{!524, !524, i64 0}
!524 = !{!"0x564708f8e6e0.w1.b1", !511, i64 0}
!525 = !{!526, !526, i64 0}
!526 = !{!"0x564708f900d0.w1.b0", !527, i64 0}
!527 = !{!"0x564708f900d0.w2.b0", !528, i64 0}
!528 = !{!"0x564708f900d0.w4.b0", !529, i64 0}
!529 = !{!"0x564708f900d0.w8.b0", !530, i64 0}
!530 = !{!"0x564708f900d0.w16.b0", !531, i64 0}
!531 = !{!"0x564708f900d0.w32.b0", !532, i64 0}
!532 = !{!"0x564708f900d0.w64.b0", !533, i64 0}
!533 = !{!"0x564708f900d0.w128.b0", !534, i64 0}
!534 = !{!"0x564708f900d0.w256.b0", !535, i64 0}
!535 = !{!"0x564708f900d0.w512.b0", !536, i64 0}
!536 = !{!"0x564708f900d0.w1024.b0", !537, i64 0}
!537 = !{!"int64", !538, i64 0}
!538 = !{!"0x564708f900d0", !8, i64 0}
!539 = !{!540, !540, i64 0}
!540 = !{!"0x564708f900d0.w1.b1", !527, i64 0}
!541 = !{!542, !542, i64 0}
!542 = !{!"0x564708f900d0.w1.b2", !543, i64 0}
!543 = !{!"0x564708f900d0.w2.b2", !528, i64 0}
!544 = !{!545, !545, i64 0}
!545 = !{!"0x564708f900d0.w1.b3", !543, i64 0}
!546 = !{!547, !547, i64 0}
!547 = !{!"0x564708f904b0.w4.b0", !548, i64 0}
!548 = !{!"0x564708f904b0.w8.b0", !549, i64 0}
!549 = !{!"0x564708f904b0.w16.b0", !550, i64 0}
!550 = !{!"0x564708f904b0.w32.b0", !551, i64 0}
!551 = !{!"0x564708f904b0.w64.b0", !552, i64 0}
!552 = !{!"0x564708f904b0.w128.b0", !553, i64 0}
!553 = !{!"0x564708f904b0.w256.b0", !554, i64 0}
!554 = !{!"0x564708f904b0.w512.b0", !555, i64 0}
!555 = !{!"0x564708f904b0.w1024.b0", !556, i64 0}
!556 = !{!"int64", !557, i64 0}
!557 = !{!"0x564708f904b0", !8, i64 0}
!558 = !{!559, !559, i64 0}
!559 = !{!"0x564708f90700.w1.b0", !560, i64 0}
!560 = !{!"0x564708f90700.w2.b0", !561, i64 0}
!561 = !{!"0x564708f90700.w4.b0", !562, i64 0}
!562 = !{!"0x564708f90700.w8.b0", !563, i64 0}
!563 = !{!"0x564708f90700.w16.b0", !564, i64 0}
!564 = !{!"0x564708f90700.w32.b0", !565, i64 0}
!565 = !{!"0x564708f90700.w64.b0", !566, i64 0}
!566 = !{!"0x564708f90700.w128.b0", !567, i64 0}
!567 = !{!"0x564708f90700.w256.b0", !568, i64 0}
!568 = !{!"0x564708f90700.w512.b0", !569, i64 0}
!569 = !{!"0x564708f90700.w1024.b0", !570, i64 0}
!570 = !{!"int64", !571, i64 0}
!571 = !{!"0x564708f90700", !8, i64 0}
!572 = !{!573, !573, i64 0}
!573 = !{!"0x564708f90700.w1.b1", !560, i64 0}
!574 = !{!575, !575, i64 0}
!575 = !{!"0x564708f90700.w1.b2", !576, i64 0}
!576 = !{!"0x564708f90700.w2.b2", !561, i64 0}
!577 = !{!578, !578, i64 0}
!578 = !{!"0x564708f90700.w1.b3", !576, i64 0}
!579 = !{!580, !580, i64 0}
!580 = !{!"0x564708f906b0.w4.b0", !581, i64 0}
!581 = !{!"0x564708f906b0.w8.b0", !582, i64 0}
!582 = !{!"0x564708f906b0.w16.b0", !583, i64 0}
!583 = !{!"0x564708f906b0.w32.b0", !584, i64 0}
!584 = !{!"0x564708f906b0.w64.b0", !585, i64 0}
!585 = !{!"0x564708f906b0.w128.b0", !586, i64 0}
!586 = !{!"0x564708f906b0.w256.b0", !587, i64 0}
!587 = !{!"0x564708f906b0.w512.b0", !588, i64 0}
!588 = !{!"0x564708f906b0.w1024.b0", !589, i64 0}
!589 = !{!"int64", !590, i64 0}
!590 = !{!"0x564708f906b0", !8, i64 0}
!591 = !{!592, !592, i64 0}
!592 = !{!"float32", !593, i64 0}
!593 = !{!"0x564708f6f2e0", !8, i64 0}
!594 = !{!595, !595, i64 0}
!595 = !{!"float32", !596, i64 0}
!596 = !{!"0x564708f6f5f0", !8, i64 0}
!597 = !{!598, !598, i64 0}
!598 = !{!"0x564708db9e90.w1.b0", !599, i64 0}
!599 = !{!"0x564708db9e90.w2.b0", !600, i64 0}
!600 = !{!"0x564708db9e90.w4.b0", !601, i64 0}
!601 = !{!"0x564708db9e90.w8.b0", !602, i64 0}
!602 = !{!"0x564708db9e90.w16.b0", !603, i64 0}
!603 = !{!"0x564708db9e90.w32.b0", !604, i64 0}
!604 = !{!"0x564708db9e90.w64.b0", !605, i64 0}
!605 = !{!"0x564708db9e90.w128.b0", !606, i64 0}
!606 = !{!"0x564708db9e90.w256.b0", !607, i64 0}
!607 = !{!"0x564708db9e90.w512.b0", !608, i64 0}
!608 = !{!"0x564708db9e90.w1024.b0", !609, i64 0}
!609 = !{!"int32", !610, i64 0}
!610 = !{!"0x564708db9e90", !8, i64 0}
!611 = !{!612, !612, i64 0}
!612 = !{!"0x564708db9e90.w1.b1", !599, i64 0}
!613 = !{!614, !614, i64 0}
!614 = !{!"0x564708de85a0.w1.b0", !615, i64 0}
!615 = !{!"0x564708de85a0.w2.b0", !616, i64 0}
!616 = !{!"0x564708de85a0.w4.b0", !617, i64 0}
!617 = !{!"0x564708de85a0.w8.b0", !618, i64 0}
!618 = !{!"0x564708de85a0.w16.b0", !619, i64 0}
!619 = !{!"0x564708de85a0.w32.b0", !620, i64 0}
!620 = !{!"0x564708de85a0.w64.b0", !621, i64 0}
!621 = !{!"0x564708de85a0.w128.b0", !622, i64 0}
!622 = !{!"0x564708de85a0.w256.b0", !623, i64 0}
!623 = !{!"0x564708de85a0.w512.b0", !624, i64 0}
!624 = !{!"0x564708de85a0.w1024.b0", !625, i64 0}
!625 = !{!"int64", !626, i64 0}
!626 = !{!"0x564708de85a0", !8, i64 0}
!627 = !{!628, !628, i64 0}
!628 = !{!"0x564708de85a0.w1.b1", !615, i64 0}
!629 = !{!630, !630, i64 0}
!630 = !{!"0x564708de85a0.w1.b2", !631, i64 0}
!631 = !{!"0x564708de85a0.w2.b2", !616, i64 0}
!632 = !{!633, !633, i64 0}
!633 = !{!"0x564708de85a0.w1.b3", !631, i64 0}
!634 = !{!635, !635, i64 0}
!635 = !{!"0x5647088ebce0.w4.b0", !636, i64 0}
!636 = !{!"0x5647088ebce0.w8.b0", !637, i64 0}
!637 = !{!"0x5647088ebce0.w16.b0", !638, i64 0}
!638 = !{!"0x5647088ebce0.w32.b0", !639, i64 0}
!639 = !{!"0x5647088ebce0.w64.b0", !640, i64 0}
!640 = !{!"0x5647088ebce0.w128.b0", !641, i64 0}
!641 = !{!"0x5647088ebce0.w256.b0", !642, i64 0}
!642 = !{!"0x5647088ebce0.w512.b0", !643, i64 0}
!643 = !{!"0x5647088ebce0.w1024.b0", !644, i64 0}
!644 = !{!"int64", !645, i64 0}
!645 = !{!"0x5647088ebce0", !8, i64 0}
!646 = !{!647, !647, i64 0}
!647 = !{!"0x564708ebb740.w1.b0", !648, i64 0}
!648 = !{!"0x564708ebb740.w2.b0", !649, i64 0}
!649 = !{!"0x564708ebb740.w4.b0", !650, i64 0}
!650 = !{!"0x564708ebb740.w8.b0", !651, i64 0}
!651 = !{!"0x564708ebb740.w16.b0", !652, i64 0}
!652 = !{!"0x564708ebb740.w32.b0", !653, i64 0}
!653 = !{!"0x564708ebb740.w64.b0", !654, i64 0}
!654 = !{!"0x564708ebb740.w128.b0", !655, i64 0}
!655 = !{!"0x564708ebb740.w256.b0", !656, i64 0}
!656 = !{!"0x564708ebb740.w512.b0", !657, i64 0}
!657 = !{!"0x564708ebb740.w1024.b0", !658, i64 0}
!658 = !{!"int64", !659, i64 0}
!659 = !{!"0x564708ebb740", !8, i64 0}
!660 = !{!661, !661, i64 0}
!661 = !{!"0x564708ebb740.w1.b1", !648, i64 0}
!662 = !{!663, !663, i64 0}
!663 = !{!"0x564708ebb740.w1.b2", !664, i64 0}
!664 = !{!"0x564708ebb740.w2.b2", !649, i64 0}
!665 = !{!666, !666, i64 0}
!666 = !{!"0x564708ebb740.w1.b3", !664, i64 0}
!667 = !{!668, !668, i64 0}
!668 = !{!"0x564708eb8810.w4.b0", !669, i64 0}
!669 = !{!"0x564708eb8810.w8.b0", !670, i64 0}
!670 = !{!"0x564708eb8810.w16.b0", !671, i64 0}
!671 = !{!"0x564708eb8810.w32.b0", !672, i64 0}
!672 = !{!"0x564708eb8810.w64.b0", !673, i64 0}
!673 = !{!"0x564708eb8810.w128.b0", !674, i64 0}
!674 = !{!"0x564708eb8810.w256.b0", !675, i64 0}
!675 = !{!"0x564708eb8810.w512.b0", !676, i64 0}
!676 = !{!"0x564708eb8810.w1024.b0", !677, i64 0}
!677 = !{!"int64", !678, i64 0}
!678 = !{!"0x564708eb8810", !8, i64 0}
!679 = !{!680, !680, i64 0}
!680 = !{!"float32", !681, i64 0}
!681 = !{!"0x564708a3b560", !8, i64 0}
!682 = !{!683, !683, i64 0}
!683 = !{!"float32", !684, i64 0}
!684 = !{!"0x564708f0f4d0", !8, i64 0}
!685 = !{!686, !686, i64 0}
!686 = !{!"float32", !687, i64 0}
!687 = !{!"0x564708e71140", !8, i64 0}
!688 = !{!689, !689, i64 0}
!689 = !{!"float32", !690, i64 0}
!690 = !{!"0x564708ebd340", !8, i64 0}
