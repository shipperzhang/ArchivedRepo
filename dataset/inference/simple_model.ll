; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i32*, i32 }
%1 = type { i8*, %2, i32, %3, i64*, i64*, i64 }
%2 = type { i32, i32 }
%3 = type { i8, i8, i16 }
%4 = type { i8*, i8*, float* }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@__TVMBackendParallelLaunch = linkonce dllexport local_unnamed_addr global i32 (i32 (i32, %0*, i8*)*, i8*, i32)* null, align 8
@.str = private constant [85 x i8] c"Assert fail: (num_args == 2), fused_transpose_nn_batch_flatten: num_args should be 2\00", align 1
@.str.1 = private constant [160 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_transpose_nn_batch_flatten: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [160 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_transpose_nn_batch_flatten: Expect arg[1] to be pointer\00", align 1
@.str.3 = private constant [55 x i8] c"Assert fail: (dev_type == 1), device_type need to be 1\00", align 1
@.str.4 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 4\00", align 1
@.str.5 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg0, 0, 5) == (uint8)2) && (tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be float32\00", align 1
@.str.6 = private constant [95 x i8] c"Assert fail: (1 == int32(arg0.shape[0])), Argument arg0.shape[0] has an unsatisfied constraint\00", align 1
@.str.7 = private constant [95 x i8] c"Assert fail: (1 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.8 = private constant [96 x i8] c"Assert fail: (28 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.9 = private constant [96 x i8] c"Assert fail: (28 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.10 = private constant [197 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (28 == int32(arg0.strides[2]))) && (784 == int32(arg0.strides[1]))) && (784 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.11 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint\00", align 1
@.str.12 = private constant [81 x i8] c"Assert fail: (2 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 2\00", align 1
@.str.13 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.14 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.15 = private constant [97 x i8] c"Assert fail: (784 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.16 = private constant [124 x i8] c"Assert fail: ((1 == int32(arg1.strides[1])) && (784 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.17 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint\00", align 1
@.str.18 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint\00", align 1
@.str.19 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint\00", align 1
@.str.20 = private constant [71 x i8] c"Assert fail: (num_args == 4), fused_nn_dense_add: num_args should be 4\00", align 1
@.str.21 = private constant [146 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_dense_add: Expect arg[0] to be pointer\00", align 1
@.str.22 = private constant [146 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_dense_add: Expect arg[1] to be pointer\00", align 1
@.str.23 = private constant [146 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), fused_nn_dense_add: Expect arg[2] to be pointer\00", align 1
@.str.24 = private constant [146 x i8] c"Assert fail: ((((arg3.code == 3) || (arg3.code == 13)) || (arg3.code == 7)) || (arg3.code == 4)), fused_nn_dense_add: Expect arg[3] to be pointer\00", align 1
@.str.25 = private constant [81 x i8] c"Assert fail: (2 == tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 2\00", align 1
@.str.26 = private constant [97 x i8] c"Assert fail: (784 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.27 = private constant [124 x i8] c"Assert fail: ((1 == int32(arg0.strides[1])) && (784 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.28 = private constant [96 x i8] c"Assert fail: (10 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.29 = private constant [81 x i8] c"Assert fail: (1 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 1\00", align 1
@.str.30 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.31 = private constant [96 x i8] c"Assert fail: (10 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.32 = private constant [87 x i8] c"Assert fail: (1 == int32(arg2.strides[0])), arg2.strides: expected to be compact array\00", align 1
@.str.33 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg2, 0, 8)), Argument arg2.byte_offset has an unsatisfied constraint\00", align 1
@.str.34 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg2, 0, 10)), Argument arg2.device_type has an unsatisfied constraint\00", align 1
@.str.35 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg2, 0, 9)), Argument arg2.device_id has an unsatisfied constraint\00", align 1
@.str.36 = private constant [81 x i8] c"Assert fail: (2 == tvm_struct_get(arg3, 0, 4)), arg3.ndim is expected to equal 2\00", align 1
@.str.37 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg3, 0, 5) == (uint8)2) && (tvm_struct_get(arg3, 0, 6) == (uint8)32)) && (tvm_struct_get(arg3, 0, 7) == (uint16)1)), arg3.dtype is expected to be float32\00", align 1
@.str.38 = private constant [95 x i8] c"Assert fail: (1 == int32(arg3.shape[0])), Argument arg3.shape[0] has an unsatisfied constraint\00", align 1
@.str.39 = private constant [96 x i8] c"Assert fail: (10 == int32(arg3.shape[1])), Argument arg3.shape[1] has an unsatisfied constraint\00", align 1
@.str.40 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg3.strides[1])) && (10 == int32(arg3.strides[0]))), arg3.strides: expected to be compact array\00", align 1
@.str.41 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg3, 0, 8)), Argument arg3.byte_offset has an unsatisfied constraint\00", align 1
@.str.42 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg3, 0, 10)), Argument arg3.device_type has an unsatisfied constraint\00", align 1
@.str.43 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg3, 0, 9)), Argument arg3.device_id has an unsatisfied constraint\00", align 1
@.str.44 = private constant [69 x i8] c"Assert fail: (num_args == 2), fused_nn_softmax: num_args should be 2\00", align 1
@.str.45 = private constant [144 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_softmax: Expect arg[0] to be pointer\00", align 1
@.str.46 = private constant [144 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_softmax: Expect arg[1] to be pointer\00", align 1
@.str.47 = private constant [96 x i8] c"Assert fail: (10 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.48 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg0.strides[1])) && (10 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.49 = private constant [96 x i8] c"Assert fail: (10 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.50 = private constant [123 x i8] c"Assert fail: ((1 == int32(arg1.strides[1])) && (10 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1

define dllexport i32 @fused_transpose_nn_batch_flatten(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 2
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str, i64 0, i64 0))
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
  tail call void %30(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.1, i64 0, i64 0))
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
  tail call void %34(i8* getelementptr inbounds ([160 x i8], [160 x i8]* @.str.2, i64 0, i64 0))
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
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %61 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %61(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %62 = getelementptr inbounds i64, i64* %17, i64 2
  %63 = load i64, i64* %62, align 8, !tbaa !41
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 28
  br i1 %65, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %66 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %66(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %67 = getelementptr inbounds i64, i64* %17, i64 3
  %68 = load i64, i64* %67, align 8, !tbaa !44
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, 28
  br i1 %70, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %71 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %71(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %72 = icmp eq i64* %19, null
  br i1 %72, label %if_end, label %if_then, !prof !46

if_then:                                          ; preds = %assert_end18
  %73 = bitcast i64* %19 to <4 x i64>*
  %74 = load <4 x i64>, <4 x i64>* %73, align 8, !tbaa !47
  %75 = trunc <4 x i64> %74 to <4 x i32>
  %76 = icmp eq <4 x i32> %75, <i32 784, i32 784, i32 28, i32 1>
  %rdx.shuf = shufflevector <4 x i1> %76, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx = and <4 x i1> %76, %rdx.shuf
  %rdx.shuf41 = shufflevector <4 x i1> %bin.rdx, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx42 = and <4 x i1> %bin.rdx, %rdx.shuf41
  %77 = extractelement <4 x i1> %bin.rdx42, i32 0
  br i1 %77, label %if_end, label %assert_fail19, !prof !5

if_end:                                           ; preds = %assert_end18, %if_then
  %78 = getelementptr inbounds %1, %1* %8, i64 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %assert_end22, label %assert_fail21, !prof !5

assert_fail19:                                    ; preds = %if_then
  %81 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %81(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_fail21:                                    ; preds = %if_end
  %82 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %82(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %if_end
  %83 = getelementptr inbounds %1, %1* %13, i64 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %86 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %86(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.12, i64 0, i64 0))
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
  tail call void %98(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %99 = load i64, i64* %27, align 8, !tbaa !59
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %102 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %102(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.14, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %103 = getelementptr inbounds i64, i64* %27, i64 1
  %104 = load i64, i64* %103, align 8, !tbaa !73
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %105, 784
  br i1 %106, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %107 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %107(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %108 = icmp eq i64* %29, null
  br i1 %108, label %if_end32, label %if_then31, !prof !46

if_then31:                                        ; preds = %assert_end30
  %109 = load i64, i64* %29, align 8, !tbaa !75
  %110 = trunc i64 %109 to i32
  %111 = icmp eq i32 %110, 784
  %112 = getelementptr inbounds i64, i64* %29, i64 1
  %113 = load i64, i64* %112, align 8, !tbaa !89
  %114 = trunc i64 %113 to i32
  %115 = icmp eq i32 %114, 1
  %116 = and i1 %111, %115
  br i1 %116, label %if_end32, label %assert_fail33, !prof !5

if_end32:                                         ; preds = %assert_end30, %if_then31
  %117 = getelementptr inbounds %1, %1* %13, i64 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %assert_end36, label %assert_fail35, !prof !5

assert_fail33:                                    ; preds = %if_then31
  %120 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %120(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_fail35:                                    ; preds = %if_end32
  %121 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %121(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %if_end32
  %122 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %assert_end38, label %assert_fail37, !prof !5

assert_fail37:                                    ; preds = %assert_end36
  %125 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %125(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end38:                                     ; preds = %assert_end36
  %126 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = icmp eq i32 %23, %127
  br i1 %128, label %assert_end40, label %assert_fail39, !prof !5

assert_fail39:                                    ; preds = %assert_end38
  %129 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %129(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.19, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %assert_end38
  tail call fastcc void @fused_transpose_nn_batch_flatten_compute_(i8* %25, i8* %15)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind
define private fastcc void @fused_transpose_nn_batch_flatten_compute_(i8* noalias nocapture, i8* noalias nocapture readonly) unnamed_addr #0 {
entry:
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 64 %0, i8* align 64 %1, i64 3136, i1 false)
  ret void
}

define dllexport i32 @fused_nn_dense_add(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 4
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.20, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %1**
  %8 = load %1*, %1** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !91
  %11 = getelementptr inbounds i8, i8* %0, i64 8
  %12 = bitcast i8* %11 to %1**
  %13 = load %1*, %1** %12, align 8
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %1**
  %16 = load %1*, %1** %15, align 8
  %17 = getelementptr inbounds i8, i8* %1, i64 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4, !tbaa !105
  %20 = getelementptr inbounds i8, i8* %0, i64 24
  %21 = bitcast i8* %20 to %1**
  %22 = load %1*, %1** %21, align 8
  %23 = getelementptr inbounds i8, i8* %1, i64 12
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4, !tbaa !108
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
  tail call void %54(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.21, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %55 = getelementptr inbounds i8, i8* %1, i64 4
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4, !tbaa !110
  switch i32 %57, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %58 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %58(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.22, i64 0, i64 0))
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
  tail call void %59(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.23, i64 0, i64 0))
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
  tail call void %60(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.24, i64 0, i64 0))
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
  tail call void %66(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.25, i64 0, i64 0))
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
  %79 = load i64, i64* %29, align 8, !tbaa !112
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %82 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %82(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %83 = getelementptr inbounds i64, i64* %29, i64 1
  %84 = load i64, i64* %83, align 8, !tbaa !126
  %85 = trunc i64 %84 to i32
  %86 = icmp eq i32 %85, 784
  br i1 %86, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %87 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %87(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %88 = icmp eq i64* %31, null
  br i1 %88, label %if_end, label %if_then, !prof !46

if_then:                                          ; preds = %assert_end18
  %89 = load i64, i64* %31, align 8, !tbaa !128
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 784
  %92 = getelementptr inbounds i64, i64* %31, i64 1
  %93 = load i64, i64* %92, align 8, !tbaa !142
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
  tail call void %100(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_fail21:                                    ; preds = %if_end
  %101 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %101(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %if_end
  %102 = getelementptr inbounds %1, %1* %13, i64 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 2
  br i1 %104, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %105 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %105(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.12, i64 0, i64 0))
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
  tail call void %117(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %118 = load i64, i64* %39, align 8, !tbaa !144
  %119 = trunc i64 %118 to i32
  %120 = icmp eq i32 %119, 10
  br i1 %120, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %121 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %121(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %122 = getelementptr inbounds i64, i64* %39, i64 1
  %123 = load i64, i64* %122, align 8, !tbaa !158
  %124 = trunc i64 %123 to i32
  %125 = icmp eq i32 %124, 784
  br i1 %125, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %126 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %126(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %127 = icmp eq i64* %41, null
  br i1 %127, label %if_end32, label %if_then31, !prof !46

if_then31:                                        ; preds = %assert_end30
  %128 = load i64, i64* %41, align 8, !tbaa !160
  %129 = trunc i64 %128 to i32
  %130 = icmp eq i32 %129, 784
  %131 = getelementptr inbounds i64, i64* %41, i64 1
  %132 = load i64, i64* %131, align 8, !tbaa !174
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
  tail call void %139(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_fail35:                                    ; preds = %if_end32
  %140 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %140(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %if_end32
  %141 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %assert_end38, label %assert_fail37, !prof !5

assert_fail37:                                    ; preds = %assert_end36
  %144 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %144(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end38:                                     ; preds = %assert_end36
  %145 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %35, %146
  br i1 %147, label %assert_end40, label %assert_fail39, !prof !5

assert_fail39:                                    ; preds = %assert_end38
  %148 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %148(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.19, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %assert_end38
  %149 = getelementptr inbounds %1, %1* %16, i64 0, i32 2
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %assert_end42, label %assert_fail41, !prof !5

assert_fail41:                                    ; preds = %assert_end40
  %152 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %152(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.29, i64 0, i64 0))
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
  tail call void %164(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.30, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %165 = load i64, i64* %45, align 8, !tbaa !176
  %166 = trunc i64 %165 to i32
  %167 = icmp eq i32 %166, 10
  br i1 %167, label %assert_end46, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %168 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %168(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.31, i64 0, i64 0))
  ret i32 -1

assert_end46:                                     ; preds = %assert_end44
  %169 = icmp eq i64* %47, null
  br i1 %169, label %if_end48, label %if_then47, !prof !46

if_then47:                                        ; preds = %assert_end46
  %170 = load i64, i64* %47, align 8, !tbaa !190
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
  tail call void %176(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.32, i64 0, i64 0))
  ret i32 -1

assert_fail51:                                    ; preds = %if_end48
  %177 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %177(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.33, i64 0, i64 0))
  ret i32 -1

assert_end52:                                     ; preds = %if_end48
  %178 = getelementptr inbounds %1, %1* %16, i64 0, i32 1, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %assert_end54, label %assert_fail53, !prof !5

assert_fail53:                                    ; preds = %assert_end52
  %181 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %181(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.34, i64 0, i64 0))
  ret i32 -1

assert_end54:                                     ; preds = %assert_end52
  %182 = getelementptr inbounds %1, %1* %16, i64 0, i32 1, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %35, %183
  br i1 %184, label %assert_end56, label %assert_fail55, !prof !5

assert_fail55:                                    ; preds = %assert_end54
  %185 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %185(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.35, i64 0, i64 0))
  ret i32 -1

assert_end56:                                     ; preds = %assert_end54
  %186 = getelementptr inbounds %1, %1* %22, i64 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = icmp eq i32 %187, 2
  br i1 %188, label %assert_end58, label %assert_fail57, !prof !5

assert_fail57:                                    ; preds = %assert_end56
  %189 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %189(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.36, i64 0, i64 0))
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
  tail call void %201(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.37, i64 0, i64 0))
  ret i32 -1

assert_end60:                                     ; preds = %assert_end58
  %202 = load i64, i64* %51, align 8, !tbaa !204
  %203 = trunc i64 %202 to i32
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %assert_end62, label %assert_fail61, !prof !5

assert_fail61:                                    ; preds = %assert_end60
  %205 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %205(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.38, i64 0, i64 0))
  ret i32 -1

assert_end62:                                     ; preds = %assert_end60
  %206 = getelementptr inbounds i64, i64* %51, i64 1
  %207 = load i64, i64* %206, align 8, !tbaa !218
  %208 = trunc i64 %207 to i32
  %209 = icmp eq i32 %208, 10
  br i1 %209, label %assert_end64, label %assert_fail63, !prof !5

assert_fail63:                                    ; preds = %assert_end62
  %210 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %210(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.39, i64 0, i64 0))
  ret i32 -1

assert_end64:                                     ; preds = %assert_end62
  %211 = icmp eq i64* %53, null
  br i1 %211, label %if_end66, label %if_then65, !prof !46

if_then65:                                        ; preds = %assert_end64
  %212 = load i64, i64* %53, align 8, !tbaa !220
  %213 = trunc i64 %212 to i32
  %214 = icmp eq i32 %213, 10
  %215 = getelementptr inbounds i64, i64* %53, i64 1
  %216 = load i64, i64* %215, align 8, !tbaa !234
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
  tail call void %223(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.40, i64 0, i64 0))
  ret i32 -1

assert_fail69:                                    ; preds = %if_end66
  %224 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %224(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.41, i64 0, i64 0))
  ret i32 -1

assert_end70:                                     ; preds = %if_end66
  %225 = getelementptr inbounds %1, %1* %22, i64 0, i32 1, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %assert_end72, label %assert_fail71, !prof !5

assert_fail71:                                    ; preds = %assert_end70
  %228 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %228(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.42, i64 0, i64 0))
  ret i32 -1

assert_end72:                                     ; preds = %assert_end70
  %229 = getelementptr inbounds %1, %1* %22, i64 0, i32 1, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = icmp eq i32 %35, %230
  br i1 %231, label %assert_end74, label %assert_fail73, !prof !5

assert_fail73:                                    ; preds = %assert_end72
  %232 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %232(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.43, i64 0, i64 0))
  ret i32 -1

assert_end74:                                     ; preds = %assert_end72
  %233 = tail call fastcc i32 @fused_nn_dense_add_compute_(i8* %27, i8* %37, i8* %49, i8* %43)
  ret i32 %233
}

; Function Attrs: noinline
define private fastcc i32 @fused_nn_dense_add_compute_(i8* noalias, i8* noalias, i8* noalias nocapture, i8* noalias nocapture readonly) unnamed_addr #1 {
entry:
  %4 = alloca [10 x float], align 16
  %5 = alloca %4, align 8
  %.sub = getelementptr inbounds [10 x float], [10 x float]* %4, i64 0, i64 0
  %6 = getelementptr inbounds %4, %4* %5, i64 0, i32 0
  store i8* %0, i8** %6, align 8
  %7 = getelementptr inbounds %4, %4* %5, i64 0, i32 1
  store i8* %1, i8** %7, align 8
  %8 = getelementptr inbounds %4, %4* %5, i64 0, i32 2
  store float* %.sub, float** %8, align 8
  %9 = bitcast %4* %5 to i8*
  %10 = load i32 (i32 (i32, %0*, i8*)*, i8*, i32)*, i32 (i32 (i32, %0*, i8*)*, i8*, i32)** @__TVMBackendParallelLaunch, align 8, !tbaa !6
  %11 = call i32 %10(i32 (i32, %0*, i8*)* nonnull @__tvm_parallel_lambda, i8* nonnull %9, i32 0)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %for_begin.preheader, label %call_fail, !prof !5

for_begin.preheader:                              ; preds = %entry
  %13 = bitcast i8* %3 to <4 x float>*
  %14 = load <4 x float>, <4 x float>* %13, align 4, !tbaa !236
  %15 = bitcast [10 x float]* %4 to <4 x float>*
  %16 = load <4 x float>, <4 x float>* %15, align 16, !tbaa !239
  %17 = fadd <4 x float> %14, %16
  %18 = bitcast i8* %2 to <4 x float>*
  store <4 x float> %17, <4 x float>* %18, align 4, !tbaa !242
  %19 = getelementptr inbounds i8, i8* %3, i64 16
  %20 = getelementptr inbounds [10 x float], [10 x float]* %4, i64 0, i64 4
  %21 = getelementptr inbounds i8, i8* %2, i64 16
  %22 = bitcast i8* %19 to <4 x float>*
  %23 = load <4 x float>, <4 x float>* %22, align 4, !tbaa !236
  %24 = bitcast float* %20 to <4 x float>*
  %25 = load <4 x float>, <4 x float>* %24, align 16, !tbaa !239
  %26 = fadd <4 x float> %23, %25
  %27 = bitcast i8* %21 to <4 x float>*
  store <4 x float> %26, <4 x float>* %27, align 4, !tbaa !242
  %28 = getelementptr inbounds i8, i8* %3, i64 32
  %29 = bitcast i8* %28 to float*
  %30 = load float, float* %29, align 4, !tbaa !236
  %31 = getelementptr inbounds [10 x float], [10 x float]* %4, i64 0, i64 8
  %32 = load float, float* %31, align 16, !tbaa !239
  %33 = fadd float %30, %32
  %34 = getelementptr inbounds i8, i8* %2, i64 32
  %35 = bitcast i8* %34 to float*
  store float %33, float* %35, align 4, !tbaa !242
  %36 = getelementptr inbounds i8, i8* %3, i64 36
  %37 = bitcast i8* %36 to float*
  %38 = load float, float* %37, align 4, !tbaa !236
  %39 = getelementptr inbounds [10 x float], [10 x float]* %4, i64 0, i64 9
  %40 = load float, float* %39, align 4, !tbaa !239
  %41 = fadd float %38, %40
  %42 = getelementptr inbounds i8, i8* %2, i64 36
  %43 = bitcast i8* %42 to float*
  store float %41, float* %43, align 4, !tbaa !242
  br label %call_fail

call_fail:                                        ; preds = %for_begin.preheader, %entry
  ret i32 %11
}

; Function Attrs: nounwind
define private i32 @__tvm_parallel_lambda(i32, %0* nocapture readonly, i8* nocapture readonly) #2 {
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
  %28 = load <16 x float>, <16 x float>* %23, align 64, !tbaa !245
  %29 = getelementptr inbounds float, float* %4, i64 16
  %30 = bitcast float* %29 to <16 x float>*
  %31 = load <16 x float>, <16 x float>* %30, align 64, !tbaa !245
  %32 = getelementptr inbounds float, float* %4, i64 32
  %33 = bitcast float* %32 to <16 x float>*
  %34 = load <16 x float>, <16 x float>* %33, align 64, !tbaa !245
  %35 = getelementptr inbounds float, float* %4, i64 48
  %36 = bitcast float* %35 to <16 x float>*
  %37 = load <16 x float>, <16 x float>* %36, align 64, !tbaa !245
  %38 = getelementptr inbounds float, float* %4, i64 64
  %39 = bitcast float* %38 to <16 x float>*
  %40 = load <16 x float>, <16 x float>* %39, align 64, !tbaa !245
  %41 = getelementptr inbounds float, float* %4, i64 80
  %42 = bitcast float* %41 to <16 x float>*
  %43 = load <16 x float>, <16 x float>* %42, align 64, !tbaa !245
  %44 = getelementptr inbounds float, float* %4, i64 96
  %45 = bitcast float* %44 to <16 x float>*
  %46 = load <16 x float>, <16 x float>* %45, align 64, !tbaa !245
  %47 = getelementptr inbounds float, float* %4, i64 112
  %48 = bitcast float* %47 to <16 x float>*
  %49 = load <16 x float>, <16 x float>* %48, align 64, !tbaa !245
  %50 = getelementptr inbounds float, float* %4, i64 128
  %51 = bitcast float* %50 to <16 x float>*
  %52 = load <16 x float>, <16 x float>* %51, align 64, !tbaa !245
  %53 = getelementptr inbounds float, float* %4, i64 144
  %54 = bitcast float* %53 to <16 x float>*
  %55 = load <16 x float>, <16 x float>* %54, align 64, !tbaa !245
  %56 = getelementptr inbounds float, float* %4, i64 160
  %57 = bitcast float* %56 to <16 x float>*
  %58 = load <16 x float>, <16 x float>* %57, align 64, !tbaa !245
  %59 = getelementptr inbounds float, float* %4, i64 176
  %60 = bitcast float* %59 to <16 x float>*
  %61 = load <16 x float>, <16 x float>* %60, align 64, !tbaa !245
  %62 = getelementptr inbounds float, float* %4, i64 192
  %63 = bitcast float* %62 to <16 x float>*
  %64 = load <16 x float>, <16 x float>* %63, align 64, !tbaa !245
  %65 = getelementptr inbounds float, float* %4, i64 208
  %66 = bitcast float* %65 to <16 x float>*
  %67 = load <16 x float>, <16 x float>* %66, align 64, !tbaa !245
  %68 = getelementptr inbounds float, float* %4, i64 224
  %69 = bitcast float* %68 to <16 x float>*
  %70 = load <16 x float>, <16 x float>* %69, align 64, !tbaa !245
  %71 = getelementptr inbounds float, float* %4, i64 240
  %72 = bitcast float* %71 to <16 x float>*
  %73 = load <16 x float>, <16 x float>* %72, align 64, !tbaa !245
  %74 = getelementptr inbounds float, float* %4, i64 256
  %75 = bitcast float* %74 to <16 x float>*
  %76 = load <16 x float>, <16 x float>* %75, align 64, !tbaa !245
  %77 = getelementptr inbounds float, float* %4, i64 272
  %78 = bitcast float* %77 to <16 x float>*
  %79 = load <16 x float>, <16 x float>* %78, align 64, !tbaa !245
  %80 = getelementptr inbounds float, float* %4, i64 288
  %81 = bitcast float* %80 to <16 x float>*
  %82 = load <16 x float>, <16 x float>* %81, align 64, !tbaa !245
  %83 = getelementptr inbounds float, float* %4, i64 304
  %84 = bitcast float* %83 to <16 x float>*
  %85 = load <16 x float>, <16 x float>* %84, align 64, !tbaa !245
  %86 = getelementptr inbounds float, float* %4, i64 320
  %87 = bitcast float* %86 to <16 x float>*
  %88 = load <16 x float>, <16 x float>* %87, align 64, !tbaa !245
  %89 = getelementptr inbounds float, float* %4, i64 336
  %90 = bitcast float* %89 to <16 x float>*
  %91 = load <16 x float>, <16 x float>* %90, align 64, !tbaa !245
  %92 = getelementptr inbounds float, float* %4, i64 352
  %93 = bitcast float* %92 to <16 x float>*
  %94 = load <16 x float>, <16 x float>* %93, align 64, !tbaa !245
  %95 = getelementptr inbounds float, float* %4, i64 368
  %96 = bitcast float* %95 to <16 x float>*
  %97 = load <16 x float>, <16 x float>* %96, align 64, !tbaa !245
  %98 = getelementptr inbounds float, float* %4, i64 384
  %99 = bitcast float* %98 to <16 x float>*
  %100 = load <16 x float>, <16 x float>* %99, align 64, !tbaa !245
  %101 = getelementptr inbounds float, float* %4, i64 400
  %102 = bitcast float* %101 to <16 x float>*
  %103 = load <16 x float>, <16 x float>* %102, align 64, !tbaa !245
  %104 = getelementptr inbounds float, float* %4, i64 416
  %105 = bitcast float* %104 to <16 x float>*
  %106 = load <16 x float>, <16 x float>* %105, align 64, !tbaa !245
  %107 = getelementptr inbounds float, float* %4, i64 432
  %108 = bitcast float* %107 to <16 x float>*
  %109 = load <16 x float>, <16 x float>* %108, align 64, !tbaa !245
  %110 = getelementptr inbounds float, float* %4, i64 448
  %111 = bitcast float* %110 to <16 x float>*
  %112 = load <16 x float>, <16 x float>* %111, align 64, !tbaa !245
  %113 = getelementptr inbounds float, float* %4, i64 464
  %114 = bitcast float* %113 to <16 x float>*
  %115 = load <16 x float>, <16 x float>* %114, align 64, !tbaa !245
  %116 = getelementptr inbounds float, float* %4, i64 480
  %117 = bitcast float* %116 to <16 x float>*
  %118 = load <16 x float>, <16 x float>* %117, align 64, !tbaa !245
  %119 = getelementptr inbounds float, float* %4, i64 496
  %120 = bitcast float* %119 to <16 x float>*
  %121 = load <16 x float>, <16 x float>* %120, align 64, !tbaa !245
  %122 = getelementptr inbounds float, float* %4, i64 512
  %123 = bitcast float* %122 to <16 x float>*
  %124 = load <16 x float>, <16 x float>* %123, align 64, !tbaa !245
  %125 = getelementptr inbounds float, float* %4, i64 528
  %126 = bitcast float* %125 to <16 x float>*
  %127 = load <16 x float>, <16 x float>* %126, align 64, !tbaa !245
  %128 = getelementptr inbounds float, float* %4, i64 544
  %129 = bitcast float* %128 to <16 x float>*
  %130 = load <16 x float>, <16 x float>* %129, align 64, !tbaa !245
  %131 = getelementptr inbounds float, float* %4, i64 560
  %132 = bitcast float* %131 to <16 x float>*
  %133 = load <16 x float>, <16 x float>* %132, align 64, !tbaa !245
  %134 = getelementptr inbounds float, float* %4, i64 576
  %135 = bitcast float* %134 to <16 x float>*
  %136 = load <16 x float>, <16 x float>* %135, align 64, !tbaa !245
  %137 = getelementptr inbounds float, float* %4, i64 592
  %138 = bitcast float* %137 to <16 x float>*
  %139 = load <16 x float>, <16 x float>* %138, align 64, !tbaa !245
  %140 = getelementptr inbounds float, float* %4, i64 608
  %141 = bitcast float* %140 to <16 x float>*
  %142 = load <16 x float>, <16 x float>* %141, align 64, !tbaa !245
  %143 = getelementptr inbounds float, float* %4, i64 624
  %144 = bitcast float* %143 to <16 x float>*
  %145 = load <16 x float>, <16 x float>* %144, align 64, !tbaa !245
  %146 = getelementptr inbounds float, float* %4, i64 640
  %147 = bitcast float* %146 to <16 x float>*
  %148 = load <16 x float>, <16 x float>* %147, align 64, !tbaa !245
  %149 = getelementptr inbounds float, float* %4, i64 656
  %150 = bitcast float* %149 to <16 x float>*
  %151 = load <16 x float>, <16 x float>* %150, align 64, !tbaa !245
  %152 = getelementptr inbounds float, float* %4, i64 672
  %153 = bitcast float* %152 to <16 x float>*
  %154 = load <16 x float>, <16 x float>* %153, align 64, !tbaa !245
  %155 = getelementptr inbounds float, float* %4, i64 688
  %156 = bitcast float* %155 to <16 x float>*
  %157 = load <16 x float>, <16 x float>* %156, align 64, !tbaa !245
  %158 = getelementptr inbounds float, float* %4, i64 704
  %159 = bitcast float* %158 to <16 x float>*
  %160 = load <16 x float>, <16 x float>* %159, align 64, !tbaa !245
  %161 = getelementptr inbounds float, float* %4, i64 720
  %162 = bitcast float* %161 to <16 x float>*
  %163 = load <16 x float>, <16 x float>* %162, align 64, !tbaa !245
  %164 = getelementptr inbounds float, float* %4, i64 736
  %165 = bitcast float* %164 to <16 x float>*
  %166 = load <16 x float>, <16 x float>* %165, align 64, !tbaa !245
  %167 = getelementptr inbounds float, float* %4, i64 752
  %168 = bitcast float* %167 to <16 x float>*
  %169 = load <16 x float>, <16 x float>* %168, align 64, !tbaa !245
  %170 = getelementptr inbounds float, float* %4, i64 768
  %171 = bitcast float* %170 to <16 x float>*
  %172 = load <16 x float>, <16 x float>* %171, align 64, !tbaa !245
  br label %for_begin1.preheader

for_begin1.preheader:                             ; preds = %for_begin1.preheader.preheader, %for_begin1.preheader
  %indvars.iv = phi i64 [ %26, %for_begin1.preheader.preheader ], [ %indvars.iv.next, %for_begin1.preheader ]
  %173 = mul nsw i64 %indvars.iv, 784
  %174 = getelementptr inbounds float, float* %7, i64 %173
  %175 = bitcast float* %174 to <16 x float>*
  %176 = load <16 x float>, <16 x float>* %175, align 64, !tbaa !248
  %177 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %28, <16 x float> %176, <16 x float> zeroinitializer)
  %178 = add nsw i64 %173, 16
  %179 = getelementptr inbounds float, float* %7, i64 %178
  %180 = bitcast float* %179 to <16 x float>*
  %181 = load <16 x float>, <16 x float>* %180, align 64, !tbaa !248
  %182 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %31, <16 x float> %181, <16 x float> %177)
  %183 = add nsw i64 %173, 32
  %184 = getelementptr inbounds float, float* %7, i64 %183
  %185 = bitcast float* %184 to <16 x float>*
  %186 = load <16 x float>, <16 x float>* %185, align 64, !tbaa !248
  %187 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %34, <16 x float> %186, <16 x float> %182)
  %188 = add nsw i64 %173, 48
  %189 = getelementptr inbounds float, float* %7, i64 %188
  %190 = bitcast float* %189 to <16 x float>*
  %191 = load <16 x float>, <16 x float>* %190, align 64, !tbaa !248
  %192 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %37, <16 x float> %191, <16 x float> %187)
  %193 = add nsw i64 %173, 64
  %194 = getelementptr inbounds float, float* %7, i64 %193
  %195 = bitcast float* %194 to <16 x float>*
  %196 = load <16 x float>, <16 x float>* %195, align 64, !tbaa !248
  %197 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %40, <16 x float> %196, <16 x float> %192)
  %198 = add nsw i64 %173, 80
  %199 = getelementptr inbounds float, float* %7, i64 %198
  %200 = bitcast float* %199 to <16 x float>*
  %201 = load <16 x float>, <16 x float>* %200, align 64, !tbaa !248
  %202 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %43, <16 x float> %201, <16 x float> %197)
  %203 = add nsw i64 %173, 96
  %204 = getelementptr inbounds float, float* %7, i64 %203
  %205 = bitcast float* %204 to <16 x float>*
  %206 = load <16 x float>, <16 x float>* %205, align 64, !tbaa !248
  %207 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %46, <16 x float> %206, <16 x float> %202)
  %208 = add nsw i64 %173, 112
  %209 = getelementptr inbounds float, float* %7, i64 %208
  %210 = bitcast float* %209 to <16 x float>*
  %211 = load <16 x float>, <16 x float>* %210, align 64, !tbaa !248
  %212 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %49, <16 x float> %211, <16 x float> %207)
  %213 = add nsw i64 %173, 128
  %214 = getelementptr inbounds float, float* %7, i64 %213
  %215 = bitcast float* %214 to <16 x float>*
  %216 = load <16 x float>, <16 x float>* %215, align 64, !tbaa !248
  %217 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %52, <16 x float> %216, <16 x float> %212)
  %218 = add nsw i64 %173, 144
  %219 = getelementptr inbounds float, float* %7, i64 %218
  %220 = bitcast float* %219 to <16 x float>*
  %221 = load <16 x float>, <16 x float>* %220, align 64, !tbaa !248
  %222 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %55, <16 x float> %221, <16 x float> %217)
  %223 = add nsw i64 %173, 160
  %224 = getelementptr inbounds float, float* %7, i64 %223
  %225 = bitcast float* %224 to <16 x float>*
  %226 = load <16 x float>, <16 x float>* %225, align 64, !tbaa !248
  %227 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %58, <16 x float> %226, <16 x float> %222)
  %228 = add nsw i64 %173, 176
  %229 = getelementptr inbounds float, float* %7, i64 %228
  %230 = bitcast float* %229 to <16 x float>*
  %231 = load <16 x float>, <16 x float>* %230, align 64, !tbaa !248
  %232 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %61, <16 x float> %231, <16 x float> %227)
  %233 = add nsw i64 %173, 192
  %234 = getelementptr inbounds float, float* %7, i64 %233
  %235 = bitcast float* %234 to <16 x float>*
  %236 = load <16 x float>, <16 x float>* %235, align 64, !tbaa !248
  %237 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %64, <16 x float> %236, <16 x float> %232)
  %238 = add nsw i64 %173, 208
  %239 = getelementptr inbounds float, float* %7, i64 %238
  %240 = bitcast float* %239 to <16 x float>*
  %241 = load <16 x float>, <16 x float>* %240, align 64, !tbaa !248
  %242 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %67, <16 x float> %241, <16 x float> %237)
  %243 = add nsw i64 %173, 224
  %244 = getelementptr inbounds float, float* %7, i64 %243
  %245 = bitcast float* %244 to <16 x float>*
  %246 = load <16 x float>, <16 x float>* %245, align 64, !tbaa !248
  %247 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %70, <16 x float> %246, <16 x float> %242)
  %248 = add nsw i64 %173, 240
  %249 = getelementptr inbounds float, float* %7, i64 %248
  %250 = bitcast float* %249 to <16 x float>*
  %251 = load <16 x float>, <16 x float>* %250, align 64, !tbaa !248
  %252 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %73, <16 x float> %251, <16 x float> %247)
  %253 = add nsw i64 %173, 256
  %254 = getelementptr inbounds float, float* %7, i64 %253
  %255 = bitcast float* %254 to <16 x float>*
  %256 = load <16 x float>, <16 x float>* %255, align 64, !tbaa !248
  %257 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %76, <16 x float> %256, <16 x float> %252)
  %258 = add nsw i64 %173, 272
  %259 = getelementptr inbounds float, float* %7, i64 %258
  %260 = bitcast float* %259 to <16 x float>*
  %261 = load <16 x float>, <16 x float>* %260, align 64, !tbaa !248
  %262 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %79, <16 x float> %261, <16 x float> %257)
  %263 = add nsw i64 %173, 288
  %264 = getelementptr inbounds float, float* %7, i64 %263
  %265 = bitcast float* %264 to <16 x float>*
  %266 = load <16 x float>, <16 x float>* %265, align 64, !tbaa !248
  %267 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %82, <16 x float> %266, <16 x float> %262)
  %268 = add nsw i64 %173, 304
  %269 = getelementptr inbounds float, float* %7, i64 %268
  %270 = bitcast float* %269 to <16 x float>*
  %271 = load <16 x float>, <16 x float>* %270, align 64, !tbaa !248
  %272 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %85, <16 x float> %271, <16 x float> %267)
  %273 = add nsw i64 %173, 320
  %274 = getelementptr inbounds float, float* %7, i64 %273
  %275 = bitcast float* %274 to <16 x float>*
  %276 = load <16 x float>, <16 x float>* %275, align 64, !tbaa !248
  %277 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %88, <16 x float> %276, <16 x float> %272)
  %278 = add nsw i64 %173, 336
  %279 = getelementptr inbounds float, float* %7, i64 %278
  %280 = bitcast float* %279 to <16 x float>*
  %281 = load <16 x float>, <16 x float>* %280, align 64, !tbaa !248
  %282 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %91, <16 x float> %281, <16 x float> %277)
  %283 = add nsw i64 %173, 352
  %284 = getelementptr inbounds float, float* %7, i64 %283
  %285 = bitcast float* %284 to <16 x float>*
  %286 = load <16 x float>, <16 x float>* %285, align 64, !tbaa !248
  %287 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %94, <16 x float> %286, <16 x float> %282)
  %288 = add nsw i64 %173, 368
  %289 = getelementptr inbounds float, float* %7, i64 %288
  %290 = bitcast float* %289 to <16 x float>*
  %291 = load <16 x float>, <16 x float>* %290, align 64, !tbaa !248
  %292 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %97, <16 x float> %291, <16 x float> %287)
  %293 = add nsw i64 %173, 384
  %294 = getelementptr inbounds float, float* %7, i64 %293
  %295 = bitcast float* %294 to <16 x float>*
  %296 = load <16 x float>, <16 x float>* %295, align 64, !tbaa !248
  %297 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %100, <16 x float> %296, <16 x float> %292)
  %298 = add nsw i64 %173, 400
  %299 = getelementptr inbounds float, float* %7, i64 %298
  %300 = bitcast float* %299 to <16 x float>*
  %301 = load <16 x float>, <16 x float>* %300, align 64, !tbaa !248
  %302 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %103, <16 x float> %301, <16 x float> %297)
  %303 = add nsw i64 %173, 416
  %304 = getelementptr inbounds float, float* %7, i64 %303
  %305 = bitcast float* %304 to <16 x float>*
  %306 = load <16 x float>, <16 x float>* %305, align 64, !tbaa !248
  %307 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %106, <16 x float> %306, <16 x float> %302)
  %308 = add nsw i64 %173, 432
  %309 = getelementptr inbounds float, float* %7, i64 %308
  %310 = bitcast float* %309 to <16 x float>*
  %311 = load <16 x float>, <16 x float>* %310, align 64, !tbaa !248
  %312 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %109, <16 x float> %311, <16 x float> %307)
  %313 = add nsw i64 %173, 448
  %314 = getelementptr inbounds float, float* %7, i64 %313
  %315 = bitcast float* %314 to <16 x float>*
  %316 = load <16 x float>, <16 x float>* %315, align 64, !tbaa !248
  %317 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %112, <16 x float> %316, <16 x float> %312)
  %318 = add nsw i64 %173, 464
  %319 = getelementptr inbounds float, float* %7, i64 %318
  %320 = bitcast float* %319 to <16 x float>*
  %321 = load <16 x float>, <16 x float>* %320, align 64, !tbaa !248
  %322 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %115, <16 x float> %321, <16 x float> %317)
  %323 = add nsw i64 %173, 480
  %324 = getelementptr inbounds float, float* %7, i64 %323
  %325 = bitcast float* %324 to <16 x float>*
  %326 = load <16 x float>, <16 x float>* %325, align 64, !tbaa !248
  %327 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %118, <16 x float> %326, <16 x float> %322)
  %328 = add nsw i64 %173, 496
  %329 = getelementptr inbounds float, float* %7, i64 %328
  %330 = bitcast float* %329 to <16 x float>*
  %331 = load <16 x float>, <16 x float>* %330, align 64, !tbaa !248
  %332 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %121, <16 x float> %331, <16 x float> %327)
  %333 = add nsw i64 %173, 512
  %334 = getelementptr inbounds float, float* %7, i64 %333
  %335 = bitcast float* %334 to <16 x float>*
  %336 = load <16 x float>, <16 x float>* %335, align 64, !tbaa !248
  %337 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %124, <16 x float> %336, <16 x float> %332)
  %338 = add nsw i64 %173, 528
  %339 = getelementptr inbounds float, float* %7, i64 %338
  %340 = bitcast float* %339 to <16 x float>*
  %341 = load <16 x float>, <16 x float>* %340, align 64, !tbaa !248
  %342 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %127, <16 x float> %341, <16 x float> %337)
  %343 = add nsw i64 %173, 544
  %344 = getelementptr inbounds float, float* %7, i64 %343
  %345 = bitcast float* %344 to <16 x float>*
  %346 = load <16 x float>, <16 x float>* %345, align 64, !tbaa !248
  %347 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %130, <16 x float> %346, <16 x float> %342)
  %348 = add nsw i64 %173, 560
  %349 = getelementptr inbounds float, float* %7, i64 %348
  %350 = bitcast float* %349 to <16 x float>*
  %351 = load <16 x float>, <16 x float>* %350, align 64, !tbaa !248
  %352 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %133, <16 x float> %351, <16 x float> %347)
  %353 = add nsw i64 %173, 576
  %354 = getelementptr inbounds float, float* %7, i64 %353
  %355 = bitcast float* %354 to <16 x float>*
  %356 = load <16 x float>, <16 x float>* %355, align 64, !tbaa !248
  %357 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %136, <16 x float> %356, <16 x float> %352)
  %358 = add nsw i64 %173, 592
  %359 = getelementptr inbounds float, float* %7, i64 %358
  %360 = bitcast float* %359 to <16 x float>*
  %361 = load <16 x float>, <16 x float>* %360, align 64, !tbaa !248
  %362 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %139, <16 x float> %361, <16 x float> %357)
  %363 = add nsw i64 %173, 608
  %364 = getelementptr inbounds float, float* %7, i64 %363
  %365 = bitcast float* %364 to <16 x float>*
  %366 = load <16 x float>, <16 x float>* %365, align 64, !tbaa !248
  %367 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %142, <16 x float> %366, <16 x float> %362)
  %368 = add nsw i64 %173, 624
  %369 = getelementptr inbounds float, float* %7, i64 %368
  %370 = bitcast float* %369 to <16 x float>*
  %371 = load <16 x float>, <16 x float>* %370, align 64, !tbaa !248
  %372 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %145, <16 x float> %371, <16 x float> %367)
  %373 = add nsw i64 %173, 640
  %374 = getelementptr inbounds float, float* %7, i64 %373
  %375 = bitcast float* %374 to <16 x float>*
  %376 = load <16 x float>, <16 x float>* %375, align 64, !tbaa !248
  %377 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %148, <16 x float> %376, <16 x float> %372)
  %378 = add nsw i64 %173, 656
  %379 = getelementptr inbounds float, float* %7, i64 %378
  %380 = bitcast float* %379 to <16 x float>*
  %381 = load <16 x float>, <16 x float>* %380, align 64, !tbaa !248
  %382 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %151, <16 x float> %381, <16 x float> %377)
  %383 = add nsw i64 %173, 672
  %384 = getelementptr inbounds float, float* %7, i64 %383
  %385 = bitcast float* %384 to <16 x float>*
  %386 = load <16 x float>, <16 x float>* %385, align 64, !tbaa !248
  %387 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %154, <16 x float> %386, <16 x float> %382)
  %388 = add nsw i64 %173, 688
  %389 = getelementptr inbounds float, float* %7, i64 %388
  %390 = bitcast float* %389 to <16 x float>*
  %391 = load <16 x float>, <16 x float>* %390, align 64, !tbaa !248
  %392 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %157, <16 x float> %391, <16 x float> %387)
  %393 = add nsw i64 %173, 704
  %394 = getelementptr inbounds float, float* %7, i64 %393
  %395 = bitcast float* %394 to <16 x float>*
  %396 = load <16 x float>, <16 x float>* %395, align 64, !tbaa !248
  %397 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %160, <16 x float> %396, <16 x float> %392)
  %398 = add nsw i64 %173, 720
  %399 = getelementptr inbounds float, float* %7, i64 %398
  %400 = bitcast float* %399 to <16 x float>*
  %401 = load <16 x float>, <16 x float>* %400, align 64, !tbaa !248
  %402 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %163, <16 x float> %401, <16 x float> %397)
  %403 = add nsw i64 %173, 736
  %404 = getelementptr inbounds float, float* %7, i64 %403
  %405 = bitcast float* %404 to <16 x float>*
  %406 = load <16 x float>, <16 x float>* %405, align 64, !tbaa !248
  %407 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %166, <16 x float> %406, <16 x float> %402)
  %408 = add nsw i64 %173, 752
  %409 = getelementptr inbounds float, float* %7, i64 %408
  %410 = bitcast float* %409 to <16 x float>*
  %411 = load <16 x float>, <16 x float>* %410, align 64, !tbaa !248
  %412 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %169, <16 x float> %411, <16 x float> %407)
  %413 = add nsw i64 %173, 768
  %414 = getelementptr inbounds float, float* %7, i64 %413
  %415 = bitcast float* %414 to <16 x float>*
  %416 = load <16 x float>, <16 x float>* %415, align 64, !tbaa !248
  %417 = tail call <16 x float> @llvm.fmuladd.v16f32(<16 x float> %172, <16 x float> %416, <16 x float> %412)
  %418 = getelementptr inbounds float, float* %10, i64 %indvars.iv
  %.0.vec.extract = extractelement <16 x float> %417, i32 0
  %419 = fadd float %.0.vec.extract, 0.000000e+00
  %.4.vec.extract = extractelement <16 x float> %417, i32 1
  %420 = fadd float %.4.vec.extract, %419
  %.8.vec.extract = extractelement <16 x float> %417, i32 2
  %421 = fadd float %.8.vec.extract, %420
  %.12.vec.extract = extractelement <16 x float> %417, i32 3
  %422 = fadd float %.12.vec.extract, %421
  %.16.vec.extract = extractelement <16 x float> %417, i32 4
  %423 = fadd float %.16.vec.extract, %422
  %.20.vec.extract = extractelement <16 x float> %417, i32 5
  %424 = fadd float %.20.vec.extract, %423
  %.24.vec.extract = extractelement <16 x float> %417, i32 6
  %425 = fadd float %.24.vec.extract, %424
  %.28.vec.extract = extractelement <16 x float> %417, i32 7
  %426 = fadd float %.28.vec.extract, %425
  %.32.vec.extract = extractelement <16 x float> %417, i32 8
  %427 = fadd float %.32.vec.extract, %426
  %.36.vec.extract = extractelement <16 x float> %417, i32 9
  %428 = fadd float %.36.vec.extract, %427
  %.40.vec.extract = extractelement <16 x float> %417, i32 10
  %429 = fadd float %.40.vec.extract, %428
  %.44.vec.extract = extractelement <16 x float> %417, i32 11
  %430 = fadd float %.44.vec.extract, %429
  %.48.vec.extract = extractelement <16 x float> %417, i32 12
  %431 = fadd float %.48.vec.extract, %430
  %.52.vec.extract = extractelement <16 x float> %417, i32 13
  %432 = fadd float %.52.vec.extract, %431
  %.56.vec.extract = extractelement <16 x float> %417, i32 14
  %433 = fadd float %.56.vec.extract, %432
  %.60.vec.extract = extractelement <16 x float> %417, i32 15
  %434 = fadd float %.60.vec.extract, %433
  store float %434, float* %418, align 4, !tbaa !239
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %435 = icmp slt i64 %indvars.iv.next, %27
  br i1 %435, label %for_begin1.preheader, label %for_end, !prof !5

for_end:                                          ; preds = %for_begin1.preheader, %entry
  ret i32 0
}

; Function Attrs: nounwind readnone speculatable
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #3

define dllexport i32 @fused_nn_softmax(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 2
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.44, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %1**
  %8 = load %1*, %1** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !251
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
  tail call void %30(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.45, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %31 = getelementptr inbounds i8, i8* %1, i64 4
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !265
  switch i32 %33, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %34(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.46, i64 0, i64 0))
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
  tail call void %40(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.25, i64 0, i64 0))
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
  %53 = load i64, i64* %17, align 8, !tbaa !267
  %54 = trunc i64 %53 to i32
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %56 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %56(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %57 = getelementptr inbounds i64, i64* %17, i64 1
  %58 = load i64, i64* %57, align 8, !tbaa !281
  %59 = trunc i64 %58 to i32
  %60 = icmp eq i32 %59, 10
  br i1 %60, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %61 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %61(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.47, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %62 = icmp eq i64* %19, null
  br i1 %62, label %if_end, label %if_then, !prof !46

if_then:                                          ; preds = %assert_end14
  %63 = load i64, i64* %19, align 8, !tbaa !283
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 10
  %66 = getelementptr inbounds i64, i64* %19, i64 1
  %67 = load i64, i64* %66, align 8, !tbaa !297
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
  tail call void %74(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.48, i64 0, i64 0))
  ret i32 -1

assert_fail17:                                    ; preds = %if_end
  %75 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %75(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %if_end
  %76 = getelementptr inbounds %1, %1* %13, i64 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 2
  br i1 %78, label %assert_end20, label %assert_fail19, !prof !5

assert_fail19:                                    ; preds = %assert_end18
  %79 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %79(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.12, i64 0, i64 0))
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
  tail call void %91(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %assert_end20
  %92 = load i64, i64* %27, align 8, !tbaa !299
  %93 = trunc i64 %92 to i32
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %95 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %95(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.14, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end22
  %96 = getelementptr inbounds i64, i64* %27, i64 1
  %97 = load i64, i64* %96, align 8, !tbaa !313
  %98 = trunc i64 %97 to i32
  %99 = icmp eq i32 %98, 10
  br i1 %99, label %assert_end26, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %100 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %100(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.49, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %101 = icmp eq i64* %29, null
  br i1 %101, label %if_end28, label %if_then27, !prof !46

if_then27:                                        ; preds = %assert_end26
  %102 = load i64, i64* %29, align 8, !tbaa !315
  %103 = trunc i64 %102 to i32
  %104 = icmp eq i32 %103, 10
  %105 = getelementptr inbounds i64, i64* %29, i64 1
  %106 = load i64, i64* %105, align 8, !tbaa !329
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
  tail call void %113(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.50, i64 0, i64 0))
  ret i32 -1

assert_fail31:                                    ; preds = %if_end28
  %114 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %114(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %if_end28
  %115 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %118 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %118(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %119 = getelementptr inbounds %1, %1* %13, i64 0, i32 1, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %23, %120
  br i1 %121, label %assert_end36, label %assert_fail35, !prof !5

assert_fail35:                                    ; preds = %assert_end34
  %122 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %122(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.19, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %assert_end34
  tail call fastcc void @fused_nn_softmax_compute_(i8* %15, i8* %25)
  ret i32 0
}

; Function Attrs: noinline nounwind
define private fastcc void @fused_nn_softmax_compute_(i8* noalias nocapture readonly, i8* noalias nocapture) unnamed_addr #4 {
entry:
  %2 = bitcast i8* %0 to <4 x float>*
  %3 = load <4 x float>, <4 x float>* %2, align 4, !tbaa !331
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
  %18 = load <4 x float>, <4 x float>* %17, align 4, !tbaa !331
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
  %33 = load float, float* %32, align 4, !tbaa !331
  %34 = fcmp ogt float %30, %33
  %35 = select i1 %34, float %30, float %33
  %36 = getelementptr inbounds i8, i8* %0, i64 36
  %37 = bitcast i8* %36 to float*
  %38 = load float, float* %37, align 4, !tbaa !331
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
  store <4 x float> %71, <4 x float>* %72, align 4, !tbaa !334
  %73 = getelementptr inbounds i8, i8* %1, i64 16
  %74 = fdiv <4 x float> %46, %70
  %75 = bitcast i8* %73 to <4 x float>*
  store <4 x float> %74, <4 x float>* %75, align 4, !tbaa !334
  %76 = fdiv float %48, %68
  %77 = getelementptr inbounds i8, i8* %1, i64 32
  %78 = bitcast i8* %77 to float*
  store float %76, float* %78, align 4, !tbaa !334
  %79 = fdiv float %50, %68
  %80 = getelementptr inbounds i8, i8* %1, i64 36
  %81 = bitcast i8* %80 to float*
  store float %79, float* %81, align 4, !tbaa !334
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare float @llvm.exp.f32(float) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #5

; Function Attrs: nounwind readnone speculatable
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #3

attributes #0 = { noinline norecurse nounwind }
attributes #1 = { noinline }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { noinline nounwind }
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
!10 = !{!"0x5646607d5d70.w1.b0", !11, i64 0}
!11 = !{!"0x5646607d5d70.w2.b0", !12, i64 0}
!12 = !{!"0x5646607d5d70.w4.b0", !13, i64 0}
!13 = !{!"0x5646607d5d70.w8.b0", !14, i64 0}
!14 = !{!"0x5646607d5d70.w16.b0", !15, i64 0}
!15 = !{!"0x5646607d5d70.w32.b0", !16, i64 0}
!16 = !{!"0x5646607d5d70.w64.b0", !17, i64 0}
!17 = !{!"0x5646607d5d70.w128.b0", !18, i64 0}
!18 = !{!"0x5646607d5d70.w256.b0", !19, i64 0}
!19 = !{!"0x5646607d5d70.w512.b0", !20, i64 0}
!20 = !{!"0x5646607d5d70.w1024.b0", !21, i64 0}
!21 = !{!"int32", !22, i64 0}
!22 = !{!"0x5646607d5d70", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x5646607d5d70.w1.b1", !11, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"0x56466074ccc0.w1.b0", !27, i64 0}
!27 = !{!"0x56466074ccc0.w2.b0", !28, i64 0}
!28 = !{!"0x56466074ccc0.w4.b0", !29, i64 0}
!29 = !{!"0x56466074ccc0.w8.b0", !30, i64 0}
!30 = !{!"0x56466074ccc0.w16.b0", !31, i64 0}
!31 = !{!"0x56466074ccc0.w32.b0", !32, i64 0}
!32 = !{!"0x56466074ccc0.w64.b0", !33, i64 0}
!33 = !{!"0x56466074ccc0.w128.b0", !34, i64 0}
!34 = !{!"0x56466074ccc0.w256.b0", !35, i64 0}
!35 = !{!"0x56466074ccc0.w512.b0", !36, i64 0}
!36 = !{!"0x56466074ccc0.w1024.b0", !37, i64 0}
!37 = !{!"int64", !38, i64 0}
!38 = !{!"0x56466074ccc0", !8, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"0x56466074ccc0.w1.b1", !27, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"0x56466074ccc0.w1.b2", !43, i64 0}
!43 = !{!"0x56466074ccc0.w2.b2", !28, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"0x56466074ccc0.w1.b3", !43, i64 0}
!46 = !{!"branch_weights", i32 1, i32 1048576}
!47 = !{!48, !48, i64 0}
!48 = !{!"0x5646609650b0.w4.b0", !49, i64 0}
!49 = !{!"0x5646609650b0.w8.b0", !50, i64 0}
!50 = !{!"0x5646609650b0.w16.b0", !51, i64 0}
!51 = !{!"0x5646609650b0.w32.b0", !52, i64 0}
!52 = !{!"0x5646609650b0.w64.b0", !53, i64 0}
!53 = !{!"0x5646609650b0.w128.b0", !54, i64 0}
!54 = !{!"0x5646609650b0.w256.b0", !55, i64 0}
!55 = !{!"0x5646609650b0.w512.b0", !56, i64 0}
!56 = !{!"0x5646609650b0.w1024.b0", !57, i64 0}
!57 = !{!"int64", !58, i64 0}
!58 = !{!"0x5646609650b0", !8, i64 0}
!59 = !{!60, !60, i64 0}
!60 = !{!"0x564660965300.w1.b0", !61, i64 0}
!61 = !{!"0x564660965300.w2.b0", !62, i64 0}
!62 = !{!"0x564660965300.w4.b0", !63, i64 0}
!63 = !{!"0x564660965300.w8.b0", !64, i64 0}
!64 = !{!"0x564660965300.w16.b0", !65, i64 0}
!65 = !{!"0x564660965300.w32.b0", !66, i64 0}
!66 = !{!"0x564660965300.w64.b0", !67, i64 0}
!67 = !{!"0x564660965300.w128.b0", !68, i64 0}
!68 = !{!"0x564660965300.w256.b0", !69, i64 0}
!69 = !{!"0x564660965300.w512.b0", !70, i64 0}
!70 = !{!"0x564660965300.w1024.b0", !71, i64 0}
!71 = !{!"int64", !72, i64 0}
!72 = !{!"0x564660965300", !8, i64 0}
!73 = !{!74, !74, i64 0}
!74 = !{!"0x564660965300.w1.b1", !61, i64 0}
!75 = !{!76, !76, i64 0}
!76 = !{!"0x5646609652b0.w1.b0", !77, i64 0}
!77 = !{!"0x5646609652b0.w2.b0", !78, i64 0}
!78 = !{!"0x5646609652b0.w4.b0", !79, i64 0}
!79 = !{!"0x5646609652b0.w8.b0", !80, i64 0}
!80 = !{!"0x5646609652b0.w16.b0", !81, i64 0}
!81 = !{!"0x5646609652b0.w32.b0", !82, i64 0}
!82 = !{!"0x5646609652b0.w64.b0", !83, i64 0}
!83 = !{!"0x5646609652b0.w128.b0", !84, i64 0}
!84 = !{!"0x5646609652b0.w256.b0", !85, i64 0}
!85 = !{!"0x5646609652b0.w512.b0", !86, i64 0}
!86 = !{!"0x5646609652b0.w1024.b0", !87, i64 0}
!87 = !{!"int64", !88, i64 0}
!88 = !{!"0x5646609652b0", !8, i64 0}
!89 = !{!90, !90, i64 0}
!90 = !{!"0x5646609652b0.w1.b1", !77, i64 0}
!91 = !{!92, !92, i64 0}
!92 = !{!"0x56466097d980.w1.b0", !93, i64 0}
!93 = !{!"0x56466097d980.w2.b0", !94, i64 0}
!94 = !{!"0x56466097d980.w4.b0", !95, i64 0}
!95 = !{!"0x56466097d980.w8.b0", !96, i64 0}
!96 = !{!"0x56466097d980.w16.b0", !97, i64 0}
!97 = !{!"0x56466097d980.w32.b0", !98, i64 0}
!98 = !{!"0x56466097d980.w64.b0", !99, i64 0}
!99 = !{!"0x56466097d980.w128.b0", !100, i64 0}
!100 = !{!"0x56466097d980.w256.b0", !101, i64 0}
!101 = !{!"0x56466097d980.w512.b0", !102, i64 0}
!102 = !{!"0x56466097d980.w1024.b0", !103, i64 0}
!103 = !{!"int32", !104, i64 0}
!104 = !{!"0x56466097d980", !8, i64 0}
!105 = !{!106, !106, i64 0}
!106 = !{!"0x56466097d980.w1.b2", !107, i64 0}
!107 = !{!"0x56466097d980.w2.b2", !94, i64 0}
!108 = !{!109, !109, i64 0}
!109 = !{!"0x56466097d980.w1.b3", !107, i64 0}
!110 = !{!111, !111, i64 0}
!111 = !{!"0x56466097d980.w1.b1", !93, i64 0}
!112 = !{!113, !113, i64 0}
!113 = !{!"0x56466094da50.w1.b0", !114, i64 0}
!114 = !{!"0x56466094da50.w2.b0", !115, i64 0}
!115 = !{!"0x56466094da50.w4.b0", !116, i64 0}
!116 = !{!"0x56466094da50.w8.b0", !117, i64 0}
!117 = !{!"0x56466094da50.w16.b0", !118, i64 0}
!118 = !{!"0x56466094da50.w32.b0", !119, i64 0}
!119 = !{!"0x56466094da50.w64.b0", !120, i64 0}
!120 = !{!"0x56466094da50.w128.b0", !121, i64 0}
!121 = !{!"0x56466094da50.w256.b0", !122, i64 0}
!122 = !{!"0x56466094da50.w512.b0", !123, i64 0}
!123 = !{!"0x56466094da50.w1024.b0", !124, i64 0}
!124 = !{!"int64", !125, i64 0}
!125 = !{!"0x56466094da50", !8, i64 0}
!126 = !{!127, !127, i64 0}
!127 = !{!"0x56466094da50.w1.b1", !114, i64 0}
!128 = !{!129, !129, i64 0}
!129 = !{!"0x56466094dad0.w1.b0", !130, i64 0}
!130 = !{!"0x56466094dad0.w2.b0", !131, i64 0}
!131 = !{!"0x56466094dad0.w4.b0", !132, i64 0}
!132 = !{!"0x56466094dad0.w8.b0", !133, i64 0}
!133 = !{!"0x56466094dad0.w16.b0", !134, i64 0}
!134 = !{!"0x56466094dad0.w32.b0", !135, i64 0}
!135 = !{!"0x56466094dad0.w64.b0", !136, i64 0}
!136 = !{!"0x56466094dad0.w128.b0", !137, i64 0}
!137 = !{!"0x56466094dad0.w256.b0", !138, i64 0}
!138 = !{!"0x56466094dad0.w512.b0", !139, i64 0}
!139 = !{!"0x56466094dad0.w1024.b0", !140, i64 0}
!140 = !{!"int64", !141, i64 0}
!141 = !{!"0x56466094dad0", !8, i64 0}
!142 = !{!143, !143, i64 0}
!143 = !{!"0x56466094dad0.w1.b1", !130, i64 0}
!144 = !{!145, !145, i64 0}
!145 = !{!"0x56466094e0b0.w1.b0", !146, i64 0}
!146 = !{!"0x56466094e0b0.w2.b0", !147, i64 0}
!147 = !{!"0x56466094e0b0.w4.b0", !148, i64 0}
!148 = !{!"0x56466094e0b0.w8.b0", !149, i64 0}
!149 = !{!"0x56466094e0b0.w16.b0", !150, i64 0}
!150 = !{!"0x56466094e0b0.w32.b0", !151, i64 0}
!151 = !{!"0x56466094e0b0.w64.b0", !152, i64 0}
!152 = !{!"0x56466094e0b0.w128.b0", !153, i64 0}
!153 = !{!"0x56466094e0b0.w256.b0", !154, i64 0}
!154 = !{!"0x56466094e0b0.w512.b0", !155, i64 0}
!155 = !{!"0x56466094e0b0.w1024.b0", !156, i64 0}
!156 = !{!"int64", !157, i64 0}
!157 = !{!"0x56466094e0b0", !8, i64 0}
!158 = !{!159, !159, i64 0}
!159 = !{!"0x56466094e0b0.w1.b1", !146, i64 0}
!160 = !{!161, !161, i64 0}
!161 = !{!"0x56466094e700.w1.b0", !162, i64 0}
!162 = !{!"0x56466094e700.w2.b0", !163, i64 0}
!163 = !{!"0x56466094e700.w4.b0", !164, i64 0}
!164 = !{!"0x56466094e700.w8.b0", !165, i64 0}
!165 = !{!"0x56466094e700.w16.b0", !166, i64 0}
!166 = !{!"0x56466094e700.w32.b0", !167, i64 0}
!167 = !{!"0x56466094e700.w64.b0", !168, i64 0}
!168 = !{!"0x56466094e700.w128.b0", !169, i64 0}
!169 = !{!"0x56466094e700.w256.b0", !170, i64 0}
!170 = !{!"0x56466094e700.w512.b0", !171, i64 0}
!171 = !{!"0x56466094e700.w1024.b0", !172, i64 0}
!172 = !{!"int64", !173, i64 0}
!173 = !{!"0x56466094e700", !8, i64 0}
!174 = !{!175, !175, i64 0}
!175 = !{!"0x56466094e700.w1.b1", !162, i64 0}
!176 = !{!177, !177, i64 0}
!177 = !{!"0x5646607522d0.w1.b0", !178, i64 0}
!178 = !{!"0x5646607522d0.w2.b0", !179, i64 0}
!179 = !{!"0x5646607522d0.w4.b0", !180, i64 0}
!180 = !{!"0x5646607522d0.w8.b0", !181, i64 0}
!181 = !{!"0x5646607522d0.w16.b0", !182, i64 0}
!182 = !{!"0x5646607522d0.w32.b0", !183, i64 0}
!183 = !{!"0x5646607522d0.w64.b0", !184, i64 0}
!184 = !{!"0x5646607522d0.w128.b0", !185, i64 0}
!185 = !{!"0x5646607522d0.w256.b0", !186, i64 0}
!186 = !{!"0x5646607522d0.w512.b0", !187, i64 0}
!187 = !{!"0x5646607522d0.w1024.b0", !188, i64 0}
!188 = !{!"int64", !189, i64 0}
!189 = !{!"0x5646607522d0", !8, i64 0}
!190 = !{!191, !191, i64 0}
!191 = !{!"0x564660752320.w1.b0", !192, i64 0}
!192 = !{!"0x564660752320.w2.b0", !193, i64 0}
!193 = !{!"0x564660752320.w4.b0", !194, i64 0}
!194 = !{!"0x564660752320.w8.b0", !195, i64 0}
!195 = !{!"0x564660752320.w16.b0", !196, i64 0}
!196 = !{!"0x564660752320.w32.b0", !197, i64 0}
!197 = !{!"0x564660752320.w64.b0", !198, i64 0}
!198 = !{!"0x564660752320.w128.b0", !199, i64 0}
!199 = !{!"0x564660752320.w256.b0", !200, i64 0}
!200 = !{!"0x564660752320.w512.b0", !201, i64 0}
!201 = !{!"0x564660752320.w1024.b0", !202, i64 0}
!202 = !{!"int64", !203, i64 0}
!203 = !{!"0x564660752320", !8, i64 0}
!204 = !{!205, !205, i64 0}
!205 = !{!"0x564660760d30.w1.b0", !206, i64 0}
!206 = !{!"0x564660760d30.w2.b0", !207, i64 0}
!207 = !{!"0x564660760d30.w4.b0", !208, i64 0}
!208 = !{!"0x564660760d30.w8.b0", !209, i64 0}
!209 = !{!"0x564660760d30.w16.b0", !210, i64 0}
!210 = !{!"0x564660760d30.w32.b0", !211, i64 0}
!211 = !{!"0x564660760d30.w64.b0", !212, i64 0}
!212 = !{!"0x564660760d30.w128.b0", !213, i64 0}
!213 = !{!"0x564660760d30.w256.b0", !214, i64 0}
!214 = !{!"0x564660760d30.w512.b0", !215, i64 0}
!215 = !{!"0x564660760d30.w1024.b0", !216, i64 0}
!216 = !{!"int64", !217, i64 0}
!217 = !{!"0x564660760d30", !8, i64 0}
!218 = !{!219, !219, i64 0}
!219 = !{!"0x564660760d30.w1.b1", !206, i64 0}
!220 = !{!221, !221, i64 0}
!221 = !{!"0x564660760d80.w1.b0", !222, i64 0}
!222 = !{!"0x564660760d80.w2.b0", !223, i64 0}
!223 = !{!"0x564660760d80.w4.b0", !224, i64 0}
!224 = !{!"0x564660760d80.w8.b0", !225, i64 0}
!225 = !{!"0x564660760d80.w16.b0", !226, i64 0}
!226 = !{!"0x564660760d80.w32.b0", !227, i64 0}
!227 = !{!"0x564660760d80.w64.b0", !228, i64 0}
!228 = !{!"0x564660760d80.w128.b0", !229, i64 0}
!229 = !{!"0x564660760d80.w256.b0", !230, i64 0}
!230 = !{!"0x564660760d80.w512.b0", !231, i64 0}
!231 = !{!"0x564660760d80.w1024.b0", !232, i64 0}
!232 = !{!"int64", !233, i64 0}
!233 = !{!"0x564660760d80", !8, i64 0}
!234 = !{!235, !235, i64 0}
!235 = !{!"0x564660760d80.w1.b1", !222, i64 0}
!236 = !{!237, !237, i64 0}
!237 = !{!"float32", !238, i64 0}
!238 = !{!"0x56466076fe80", !8, i64 0}
!239 = !{!240, !240, i64 0}
!240 = !{!"float32", !241, i64 0}
!241 = !{!"0x56466076fc90", !8, i64 0}
!242 = !{!243, !243, i64 0}
!243 = !{!"float32", !244, i64 0}
!244 = !{!"0x56466076fb70", !8, i64 0}
!245 = !{!246, !246, i64 0}
!246 = !{!"float32", !247, i64 0}
!247 = !{!"0x564660770240", !8, i64 0}
!248 = !{!249, !249, i64 0}
!249 = !{!"float32", !250, i64 0}
!250 = !{!"0x5646607701f0", !8, i64 0}
!251 = !{!252, !252, i64 0}
!252 = !{!"0x56466078b530.w1.b0", !253, i64 0}
!253 = !{!"0x56466078b530.w2.b0", !254, i64 0}
!254 = !{!"0x56466078b530.w4.b0", !255, i64 0}
!255 = !{!"0x56466078b530.w8.b0", !256, i64 0}
!256 = !{!"0x56466078b530.w16.b0", !257, i64 0}
!257 = !{!"0x56466078b530.w32.b0", !258, i64 0}
!258 = !{!"0x56466078b530.w64.b0", !259, i64 0}
!259 = !{!"0x56466078b530.w128.b0", !260, i64 0}
!260 = !{!"0x56466078b530.w256.b0", !261, i64 0}
!261 = !{!"0x56466078b530.w512.b0", !262, i64 0}
!262 = !{!"0x56466078b530.w1024.b0", !263, i64 0}
!263 = !{!"int32", !264, i64 0}
!264 = !{!"0x56466078b530", !8, i64 0}
!265 = !{!266, !266, i64 0}
!266 = !{!"0x56466078b530.w1.b1", !253, i64 0}
!267 = !{!268, !268, i64 0}
!268 = !{!"0x56466077c430.w1.b0", !269, i64 0}
!269 = !{!"0x56466077c430.w2.b0", !270, i64 0}
!270 = !{!"0x56466077c430.w4.b0", !271, i64 0}
!271 = !{!"0x56466077c430.w8.b0", !272, i64 0}
!272 = !{!"0x56466077c430.w16.b0", !273, i64 0}
!273 = !{!"0x56466077c430.w32.b0", !274, i64 0}
!274 = !{!"0x56466077c430.w64.b0", !275, i64 0}
!275 = !{!"0x56466077c430.w128.b0", !276, i64 0}
!276 = !{!"0x56466077c430.w256.b0", !277, i64 0}
!277 = !{!"0x56466077c430.w512.b0", !278, i64 0}
!278 = !{!"0x56466077c430.w1024.b0", !279, i64 0}
!279 = !{!"int64", !280, i64 0}
!280 = !{!"0x56466077c430", !8, i64 0}
!281 = !{!282, !282, i64 0}
!282 = !{!"0x56466077c430.w1.b1", !269, i64 0}
!283 = !{!284, !284, i64 0}
!284 = !{!"0x5646607769d0.w1.b0", !285, i64 0}
!285 = !{!"0x5646607769d0.w2.b0", !286, i64 0}
!286 = !{!"0x5646607769d0.w4.b0", !287, i64 0}
!287 = !{!"0x5646607769d0.w8.b0", !288, i64 0}
!288 = !{!"0x5646607769d0.w16.b0", !289, i64 0}
!289 = !{!"0x5646607769d0.w32.b0", !290, i64 0}
!290 = !{!"0x5646607769d0.w64.b0", !291, i64 0}
!291 = !{!"0x5646607769d0.w128.b0", !292, i64 0}
!292 = !{!"0x5646607769d0.w256.b0", !293, i64 0}
!293 = !{!"0x5646607769d0.w512.b0", !294, i64 0}
!294 = !{!"0x5646607769d0.w1024.b0", !295, i64 0}
!295 = !{!"int64", !296, i64 0}
!296 = !{!"0x5646607769d0", !8, i64 0}
!297 = !{!298, !298, i64 0}
!298 = !{!"0x5646607769d0.w1.b1", !285, i64 0}
!299 = !{!300, !300, i64 0}
!300 = !{!"0x56466096f690.w1.b0", !301, i64 0}
!301 = !{!"0x56466096f690.w2.b0", !302, i64 0}
!302 = !{!"0x56466096f690.w4.b0", !303, i64 0}
!303 = !{!"0x56466096f690.w8.b0", !304, i64 0}
!304 = !{!"0x56466096f690.w16.b0", !305, i64 0}
!305 = !{!"0x56466096f690.w32.b0", !306, i64 0}
!306 = !{!"0x56466096f690.w64.b0", !307, i64 0}
!307 = !{!"0x56466096f690.w128.b0", !308, i64 0}
!308 = !{!"0x56466096f690.w256.b0", !309, i64 0}
!309 = !{!"0x56466096f690.w512.b0", !310, i64 0}
!310 = !{!"0x56466096f690.w1024.b0", !311, i64 0}
!311 = !{!"int64", !312, i64 0}
!312 = !{!"0x56466096f690", !8, i64 0}
!313 = !{!314, !314, i64 0}
!314 = !{!"0x56466096f690.w1.b1", !301, i64 0}
!315 = !{!316, !316, i64 0}
!316 = !{!"0x564660776d20.w1.b0", !317, i64 0}
!317 = !{!"0x564660776d20.w2.b0", !318, i64 0}
!318 = !{!"0x564660776d20.w4.b0", !319, i64 0}
!319 = !{!"0x564660776d20.w8.b0", !320, i64 0}
!320 = !{!"0x564660776d20.w16.b0", !321, i64 0}
!321 = !{!"0x564660776d20.w32.b0", !322, i64 0}
!322 = !{!"0x564660776d20.w64.b0", !323, i64 0}
!323 = !{!"0x564660776d20.w128.b0", !324, i64 0}
!324 = !{!"0x564660776d20.w256.b0", !325, i64 0}
!325 = !{!"0x564660776d20.w512.b0", !326, i64 0}
!326 = !{!"0x564660776d20.w1024.b0", !327, i64 0}
!327 = !{!"int64", !328, i64 0}
!328 = !{!"0x564660776d20", !8, i64 0}
!329 = !{!330, !330, i64 0}
!330 = !{!"0x564660776d20.w1.b1", !317, i64 0}
!331 = !{!332, !332, i64 0}
!332 = !{!"float32", !333, i64 0}
!333 = !{!"0x56466075a160", !8, i64 0}
!334 = !{!335, !335, i64 0}
!335 = !{!"float32", !336, i64 0}
!336 = !{!"0x564660783030", !8, i64 0}
