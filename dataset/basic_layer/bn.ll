; ModuleID = 'bn.bc'
source_filename = "TVMMod"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i8*, %1, i32, %2, i64*, i64*, i64 }
%1 = type { i32, i32 }
%2 = type { i8, i8, i16 }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@.str = private constant [71 x i8] c"Assert fail: (num_args == 4), fused_multiply_add: num_args should be 4\00", align 1
@.str.1 = private constant [146 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_multiply_add: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [146 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_multiply_add: Expect arg[1] to be pointer\00", align 1
@.str.3 = private constant [146 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), fused_multiply_add: Expect arg[2] to be pointer\00", align 1
@.str.4 = private constant [146 x i8] c"Assert fail: ((((arg3.code == 3) || (arg3.code == 13)) || (arg3.code == 7)) || (arg3.code == 4)), fused_multiply_add: Expect arg[3] to be pointer\00", align 1
@.str.5 = private constant [55 x i8] c"Assert fail: (dev_type == 1), device_type need to be 1\00", align 1
@.str.6 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 4\00", align 1
@.str.7 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg0, 0, 5) == (uint8)2) && (tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be float32\00", align 1
@.str.8 = private constant [95 x i8] c"Assert fail: (1 == int32(arg0.shape[0])), Argument arg0.shape[0] has an unsatisfied constraint\00", align 1
@.str.9 = private constant [95 x i8] c"Assert fail: (1 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint\00", align 1
@.str.10 = private constant [96 x i8] c"Assert fail: (28 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint\00", align 1
@.str.11 = private constant [96 x i8] c"Assert fail: (28 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint\00", align 1
@.str.12 = private constant [197 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (28 == int32(arg0.strides[2]))) && (784 == int32(arg0.strides[1]))) && (784 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.13 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint\00", align 1
@.str.14 = private constant [81 x i8] c"Assert fail: (3 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 3\00", align 1
@.str.15 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.16 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.17 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint\00", align 1
@.str.18 = private constant [95 x i8] c"Assert fail: (1 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.19 = private constant [157 x i8] c"Assert fail: (((1 == int32(arg1.strides[2])) && (1 == int32(arg1.strides[1]))) && (1 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.20 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint\00", align 1
@.str.21 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint\00", align 1
@.str.22 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint\00", align 1
@.str.23 = private constant [81 x i8] c"Assert fail: (3 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 3\00", align 1
@.str.24 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.25 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.26 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[1])), Argument arg2.shape[1] has an unsatisfied constraint\00", align 1
@.str.27 = private constant [95 x i8] c"Assert fail: (1 == int32(arg2.shape[2])), Argument arg2.shape[2] has an unsatisfied constraint\00", align 1
@.str.28 = private constant [157 x i8] c"Assert fail: (((1 == int32(arg2.strides[2])) && (1 == int32(arg2.strides[1]))) && (1 == int32(arg2.strides[0]))), arg2.strides: expected to be compact array\00", align 1
@.str.29 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg2, 0, 8)), Argument arg2.byte_offset has an unsatisfied constraint\00", align 1
@.str.30 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg2, 0, 10)), Argument arg2.device_type has an unsatisfied constraint\00", align 1
@.str.31 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg2, 0, 9)), Argument arg2.device_id has an unsatisfied constraint\00", align 1
@.str.32 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg3, 0, 4)), arg3.ndim is expected to equal 4\00", align 1
@.str.33 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg3, 0, 5) == (uint8)2) && (tvm_struct_get(arg3, 0, 6) == (uint8)32)) && (tvm_struct_get(arg3, 0, 7) == (uint16)1)), arg3.dtype is expected to be float32\00", align 1
@.str.34 = private constant [95 x i8] c"Assert fail: (1 == int32(arg3.shape[0])), Argument arg3.shape[0] has an unsatisfied constraint\00", align 1
@.str.35 = private constant [95 x i8] c"Assert fail: (1 == int32(arg3.shape[1])), Argument arg3.shape[1] has an unsatisfied constraint\00", align 1
@.str.36 = private constant [96 x i8] c"Assert fail: (28 == int32(arg3.shape[2])), Argument arg3.shape[2] has an unsatisfied constraint\00", align 1
@.str.37 = private constant [96 x i8] c"Assert fail: (28 == int32(arg3.shape[3])), Argument arg3.shape[3] has an unsatisfied constraint\00", align 1
@.str.38 = private constant [197 x i8] c"Assert fail: ((((1 == int32(arg3.strides[3])) && (28 == int32(arg3.strides[2]))) && (784 == int32(arg3.strides[1]))) && (784 == int32(arg3.strides[0]))), arg3.strides: expected to be compact array\00", align 1
@.str.39 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg3, 0, 8)), Argument arg3.byte_offset has an unsatisfied constraint\00", align 1
@.str.40 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg3, 0, 10)), Argument arg3.device_type has an unsatisfied constraint\00", align 1
@.str.41 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg3, 0, 9)), Argument arg3.device_id has an unsatisfied constraint\00", align 1
@.str.42 = private constant [69 x i8] c"Assert fail: (num_args == 2), fused_nn_softmax: num_args should be 2\00", align 1
@.str.43 = private constant [144 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), fused_nn_softmax: Expect arg[0] to be pointer\00", align 1
@.str.44 = private constant [144 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), fused_nn_softmax: Expect arg[1] to be pointer\00", align 1
@.str.45 = private constant [81 x i8] c"Assert fail: (4 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4\00", align 1
@.str.46 = private constant [96 x i8] c"Assert fail: (28 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint\00", align 1
@.str.47 = private constant [96 x i8] c"Assert fail: (28 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint\00", align 1
@.str.48 = private constant [197 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (28 == int32(arg1.strides[2]))) && (784 == int32(arg1.strides[1]))) && (784 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@__TVMBackendAllocWorkspace = linkonce dllexport local_unnamed_addr global i8* (i32, i32, i64, i32, i32)* null, align 8
@__TVMBackendFreeWorkspace = linkonce dllexport local_unnamed_addr global i32 (i32, i32, i8*)* null, align 8

define dllexport i32 @fused_multiply_add(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 4
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %0**
  %8 = load %0*, %0** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !9
  %11 = getelementptr inbounds i8, i8* %0, i64 8
  %12 = bitcast i8* %11 to %0**
  %13 = load %0*, %0** %12, align 8
  %14 = getelementptr inbounds i8, i8* %0, i64 16
  %15 = bitcast i8* %14 to %0**
  %16 = load %0*, %0** %15, align 8
  %17 = getelementptr inbounds i8, i8* %1, i64 8
  %18 = bitcast i8* %17 to i32*
  %19 = load i32, i32* %18, align 4, !tbaa !23
  %20 = getelementptr inbounds i8, i8* %0, i64 24
  %21 = bitcast i8* %20 to %0**
  %22 = load %0*, %0** %21, align 8
  %23 = getelementptr inbounds i8, i8* %1, i64 12
  %24 = bitcast i8* %23 to i32*
  %25 = load i32, i32* %24, align 4, !tbaa !26
  %26 = getelementptr inbounds %0, %0* %8, i64 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = getelementptr inbounds %0, %0* %8, i64 0, i32 4
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds %0, %0* %8, i64 0, i32 5
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds %0, %0* %8, i64 0, i32 1, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %0, %0* %8, i64 0, i32 1, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %0, %0* %13, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %0, %0* %13, i64 0, i32 4
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds %0, %0* %13, i64 0, i32 5
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds %0, %0* %16, i64 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds %0, %0* %16, i64 0, i32 4
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds %0, %0* %16, i64 0, i32 5
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds %0, %0* %22, i64 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = getelementptr inbounds %0, %0* %22, i64 0, i32 4
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds %0, %0* %22, i64 0, i32 5
  %53 = load i64*, i64** %52, align 8
  switch i32 %10, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %54 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %54(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.1, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %55 = getelementptr inbounds i8, i8* %1, i64 4
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4, !tbaa !28
  switch i32 %57, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %58 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %58(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.2, i64 0, i64 0))
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
  tail call void %59(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.3, i64 0, i64 0))
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
  tail call void %60(i8* getelementptr inbounds ([146 x i8], [146 x i8]* @.str.4, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6, %assert_end6, %assert_end6, %assert_end6
  %61 = icmp eq i32 %33, 1
  br i1 %61, label %assert_end10, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %62 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %62(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %63 = getelementptr inbounds %0, %0* %8, i64 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 4
  br i1 %65, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %66 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %66(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %67 = getelementptr inbounds %0, %0* %8, i64 0, i32 3, i32 2
  %68 = load i16, i16* %67, align 2
  %69 = icmp eq i16 %68, 1
  %70 = getelementptr inbounds %0, %0* %8, i64 0, i32 3, i32 1
  %71 = load i8, i8* %70, align 1
  %72 = icmp eq i8 %71, 32
  %73 = getelementptr inbounds %0, %0* %8, i64 0, i32 3, i32 0
  %74 = load i8, i8* %73, align 1
  %75 = icmp eq i8 %74, 2
  %76 = and i1 %72, %75
  %77 = and i1 %69, %76
  br i1 %77, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %78 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %78(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %79 = load i64, i64* %29, align 8, !tbaa !30
  %80 = trunc i64 %79 to i32
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %82 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %82(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %83 = getelementptr inbounds i64, i64* %29, i64 1
  %84 = load i64, i64* %83, align 8, !tbaa !44
  %85 = trunc i64 %84 to i32
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %87 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %87(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %88 = getelementptr inbounds i64, i64* %29, i64 2
  %89 = load i64, i64* %88, align 8, !tbaa !46
  %90 = trunc i64 %89 to i32
  %91 = icmp eq i32 %90, 28
  br i1 %91, label %assert_end20, label %assert_fail19, !prof !5

assert_fail19:                                    ; preds = %assert_end18
  %92 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %92(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %93 = getelementptr inbounds i64, i64* %29, i64 3
  %94 = load i64, i64* %93, align 8, !tbaa !49
  %95 = trunc i64 %94 to i32
  %96 = icmp eq i32 %95, 28
  br i1 %96, label %assert_end22, label %assert_fail21, !prof !5

assert_fail21:                                    ; preds = %assert_end20
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %97(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %assert_end20
  %98 = icmp eq i64* %31, null
  br i1 %98, label %if_end, label %if_then, !prof !51

if_then:                                          ; preds = %assert_end22
  %99 = bitcast i64* %31 to <4 x i64>*
  %100 = load <4 x i64>, <4 x i64>* %99, align 8, !tbaa !52
  %101 = trunc <4 x i64> %100 to <4 x i32>
  %102 = icmp eq <4 x i32> %101, <i32 784, i32 784, i32 28, i32 1>
  %rdx.shuf91 = shufflevector <4 x i1> %102, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx92 = and <4 x i1> %102, %rdx.shuf91
  %rdx.shuf93 = shufflevector <4 x i1> %bin.rdx92, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx94 = and <4 x i1> %bin.rdx92, %rdx.shuf93
  %103 = extractelement <4 x i1> %bin.rdx94, i32 0
  br i1 %103, label %if_end, label %assert_fail23, !prof !5

if_end:                                           ; preds = %if_then, %assert_end22
  %104 = getelementptr inbounds %0, %0* %8, i64 0, i32 6
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %assert_end26, label %assert_fail25, !prof !5

assert_fail23:                                    ; preds = %if_then
  %107 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %107(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_fail25:                                    ; preds = %if_end
  %108 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %108(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %if_end
  %109 = getelementptr inbounds %0, %0* %13, i64 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %110, 3
  br i1 %111, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %112(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.14, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %113 = getelementptr inbounds %0, %0* %13, i64 0, i32 3, i32 2
  %114 = load i16, i16* %113, align 2
  %115 = icmp eq i16 %114, 1
  %116 = getelementptr inbounds %0, %0* %13, i64 0, i32 3, i32 1
  %117 = load i8, i8* %116, align 1
  %118 = icmp eq i8 %117, 32
  %119 = getelementptr inbounds %0, %0* %13, i64 0, i32 3, i32 0
  %120 = load i8, i8* %119, align 1
  %121 = icmp eq i8 %120, 2
  %122 = and i1 %118, %121
  %123 = and i1 %115, %122
  br i1 %123, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %124 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %124(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %125 = load i64, i64* %39, align 8, !tbaa !64
  %126 = trunc i64 %125 to i32
  %127 = icmp eq i32 %126, 1
  br i1 %127, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %128 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %128(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %129 = getelementptr inbounds i64, i64* %39, i64 1
  %130 = load i64, i64* %129, align 8, !tbaa !78
  %131 = trunc i64 %130 to i32
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %133 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %133(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %134 = getelementptr inbounds i64, i64* %39, i64 2
  %135 = load i64, i64* %134, align 8, !tbaa !80
  %136 = trunc i64 %135 to i32
  %137 = icmp eq i32 %136, 1
  br i1 %137, label %assert_end36, label %assert_fail35, !prof !5

assert_fail35:                                    ; preds = %assert_end34
  %138 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %138(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %assert_end34
  %139 = icmp eq i64* %41, null
  br i1 %139, label %if_end38, label %if_then37, !prof !51

if_then37:                                        ; preds = %assert_end36
  %140 = load i64, i64* %41, align 8, !tbaa !83
  %141 = trunc i64 %140 to i32
  %142 = icmp eq i32 %141, 1
  %143 = getelementptr inbounds i64, i64* %41, i64 1
  %144 = load i64, i64* %143, align 8, !tbaa !97
  %145 = trunc i64 %144 to i32
  %146 = icmp eq i32 %145, 1
  %147 = getelementptr inbounds i64, i64* %41, i64 2
  %148 = load i64, i64* %147, align 8, !tbaa !99
  %149 = trunc i64 %148 to i32
  %150 = icmp eq i32 %149, 1
  %151 = and i1 %146, %150
  %152 = and i1 %142, %151
  br i1 %152, label %if_end38, label %assert_fail39, !prof !5

if_end38:                                         ; preds = %if_then37, %assert_end36
  %153 = getelementptr inbounds %0, %0* %13, i64 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %assert_end42, label %assert_fail41, !prof !5

assert_fail39:                                    ; preds = %if_then37
  %156 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %156(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.19, i64 0, i64 0))
  ret i32 -1

assert_fail41:                                    ; preds = %if_end38
  %157 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %157(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.20, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %if_end38
  %158 = getelementptr inbounds %0, %0* %13, i64 0, i32 1, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 1
  br i1 %160, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %161 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %161(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.21, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  %162 = getelementptr inbounds %0, %0* %13, i64 0, i32 1, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %35, %163
  br i1 %164, label %assert_end46, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %165 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %165(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.22, i64 0, i64 0))
  ret i32 -1

assert_end46:                                     ; preds = %assert_end44
  %166 = getelementptr inbounds %0, %0* %16, i64 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 3
  br i1 %168, label %assert_end48, label %assert_fail47, !prof !5

assert_fail47:                                    ; preds = %assert_end46
  %169 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %169(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.23, i64 0, i64 0))
  ret i32 -1

assert_end48:                                     ; preds = %assert_end46
  %170 = getelementptr inbounds %0, %0* %16, i64 0, i32 3, i32 2
  %171 = load i16, i16* %170, align 2
  %172 = icmp eq i16 %171, 1
  %173 = getelementptr inbounds %0, %0* %16, i64 0, i32 3, i32 1
  %174 = load i8, i8* %173, align 1
  %175 = icmp eq i8 %174, 32
  %176 = getelementptr inbounds %0, %0* %16, i64 0, i32 3, i32 0
  %177 = load i8, i8* %176, align 1
  %178 = icmp eq i8 %177, 2
  %179 = and i1 %175, %178
  %180 = and i1 %172, %179
  br i1 %180, label %assert_end50, label %assert_fail49, !prof !5

assert_fail49:                                    ; preds = %assert_end48
  %181 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %181(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.24, i64 0, i64 0))
  ret i32 -1

assert_end50:                                     ; preds = %assert_end48
  %182 = load i64, i64* %45, align 8, !tbaa !102
  %183 = trunc i64 %182 to i32
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %assert_end52, label %assert_fail51, !prof !5

assert_fail51:                                    ; preds = %assert_end50
  %185 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %185(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.25, i64 0, i64 0))
  ret i32 -1

assert_end52:                                     ; preds = %assert_end50
  %186 = getelementptr inbounds i64, i64* %45, i64 1
  %187 = load i64, i64* %186, align 8, !tbaa !116
  %188 = trunc i64 %187 to i32
  %189 = icmp eq i32 %188, 1
  br i1 %189, label %assert_end54, label %assert_fail53, !prof !5

assert_fail53:                                    ; preds = %assert_end52
  %190 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %190(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.26, i64 0, i64 0))
  ret i32 -1

assert_end54:                                     ; preds = %assert_end52
  %191 = getelementptr inbounds i64, i64* %45, i64 2
  %192 = load i64, i64* %191, align 8, !tbaa !118
  %193 = trunc i64 %192 to i32
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %assert_end56, label %assert_fail55, !prof !5

assert_fail55:                                    ; preds = %assert_end54
  %195 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %195(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.27, i64 0, i64 0))
  ret i32 -1

assert_end56:                                     ; preds = %assert_end54
  %196 = icmp eq i64* %47, null
  br i1 %196, label %if_end58, label %if_then57, !prof !51

if_then57:                                        ; preds = %assert_end56
  %197 = load i64, i64* %47, align 8, !tbaa !121
  %198 = trunc i64 %197 to i32
  %199 = icmp eq i32 %198, 1
  %200 = getelementptr inbounds i64, i64* %47, i64 1
  %201 = load i64, i64* %200, align 8, !tbaa !135
  %202 = trunc i64 %201 to i32
  %203 = icmp eq i32 %202, 1
  %204 = getelementptr inbounds i64, i64* %47, i64 2
  %205 = load i64, i64* %204, align 8, !tbaa !137
  %206 = trunc i64 %205 to i32
  %207 = icmp eq i32 %206, 1
  %208 = and i1 %203, %207
  %209 = and i1 %199, %208
  br i1 %209, label %if_end58, label %assert_fail59, !prof !5

if_end58:                                         ; preds = %if_then57, %assert_end56
  %210 = getelementptr inbounds %0, %0* %16, i64 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %assert_end62, label %assert_fail61, !prof !5

assert_fail59:                                    ; preds = %if_then57
  %213 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %213(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.28, i64 0, i64 0))
  ret i32 -1

assert_fail61:                                    ; preds = %if_end58
  %214 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %214(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.29, i64 0, i64 0))
  ret i32 -1

assert_end62:                                     ; preds = %if_end58
  %215 = getelementptr inbounds %0, %0* %16, i64 0, i32 1, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %assert_end64, label %assert_fail63, !prof !5

assert_fail63:                                    ; preds = %assert_end62
  %218 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %218(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.30, i64 0, i64 0))
  ret i32 -1

assert_end64:                                     ; preds = %assert_end62
  %219 = getelementptr inbounds %0, %0* %16, i64 0, i32 1, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = icmp eq i32 %35, %220
  br i1 %221, label %assert_end66, label %assert_fail65, !prof !5

assert_fail65:                                    ; preds = %assert_end64
  %222 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %222(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.31, i64 0, i64 0))
  ret i32 -1

assert_end66:                                     ; preds = %assert_end64
  %223 = getelementptr inbounds %0, %0* %22, i64 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 4
  br i1 %225, label %assert_end68, label %assert_fail67, !prof !5

assert_fail67:                                    ; preds = %assert_end66
  %226 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %226(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.32, i64 0, i64 0))
  ret i32 -1

assert_end68:                                     ; preds = %assert_end66
  %227 = getelementptr inbounds %0, %0* %22, i64 0, i32 3, i32 2
  %228 = load i16, i16* %227, align 2
  %229 = icmp eq i16 %228, 1
  %230 = getelementptr inbounds %0, %0* %22, i64 0, i32 3, i32 1
  %231 = load i8, i8* %230, align 1
  %232 = icmp eq i8 %231, 32
  %233 = getelementptr inbounds %0, %0* %22, i64 0, i32 3, i32 0
  %234 = load i8, i8* %233, align 1
  %235 = icmp eq i8 %234, 2
  %236 = and i1 %232, %235
  %237 = and i1 %229, %236
  br i1 %237, label %assert_end70, label %assert_fail69, !prof !5

assert_fail69:                                    ; preds = %assert_end68
  %238 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %238(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.33, i64 0, i64 0))
  ret i32 -1

assert_end70:                                     ; preds = %assert_end68
  %239 = load i64, i64* %51, align 8, !tbaa !140
  %240 = trunc i64 %239 to i32
  %241 = icmp eq i32 %240, 1
  br i1 %241, label %assert_end72, label %assert_fail71, !prof !5

assert_fail71:                                    ; preds = %assert_end70
  %242 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %242(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.34, i64 0, i64 0))
  ret i32 -1

assert_end72:                                     ; preds = %assert_end70
  %243 = getelementptr inbounds i64, i64* %51, i64 1
  %244 = load i64, i64* %243, align 8, !tbaa !154
  %245 = trunc i64 %244 to i32
  %246 = icmp eq i32 %245, 1
  br i1 %246, label %assert_end74, label %assert_fail73, !prof !5

assert_fail73:                                    ; preds = %assert_end72
  %247 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %247(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.35, i64 0, i64 0))
  ret i32 -1

assert_end74:                                     ; preds = %assert_end72
  %248 = getelementptr inbounds i64, i64* %51, i64 2
  %249 = load i64, i64* %248, align 8, !tbaa !156
  %250 = trunc i64 %249 to i32
  %251 = icmp eq i32 %250, 28
  br i1 %251, label %assert_end76, label %assert_fail75, !prof !5

assert_fail75:                                    ; preds = %assert_end74
  %252 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %252(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.36, i64 0, i64 0))
  ret i32 -1

assert_end76:                                     ; preds = %assert_end74
  %253 = getelementptr inbounds i64, i64* %51, i64 3
  %254 = load i64, i64* %253, align 8, !tbaa !159
  %255 = trunc i64 %254 to i32
  %256 = icmp eq i32 %255, 28
  br i1 %256, label %assert_end78, label %assert_fail77, !prof !5

assert_fail77:                                    ; preds = %assert_end76
  %257 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %257(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.37, i64 0, i64 0))
  ret i32 -1

assert_end78:                                     ; preds = %assert_end76
  %258 = icmp eq i64* %53, null
  br i1 %258, label %if_end80, label %if_then79, !prof !51

if_then79:                                        ; preds = %assert_end78
  %259 = bitcast i64* %53 to <4 x i64>*
  %260 = load <4 x i64>, <4 x i64>* %259, align 8, !tbaa !161
  %261 = trunc <4 x i64> %260 to <4 x i32>
  %262 = icmp eq <4 x i32> %261, <i32 784, i32 784, i32 28, i32 1>
  %rdx.shuf = shufflevector <4 x i1> %262, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx = and <4 x i1> %262, %rdx.shuf
  %rdx.shuf89 = shufflevector <4 x i1> %bin.rdx, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx90 = and <4 x i1> %bin.rdx, %rdx.shuf89
  %263 = extractelement <4 x i1> %bin.rdx90, i32 0
  br i1 %263, label %if_end80, label %assert_fail81, !prof !5

if_end80:                                         ; preds = %if_then79, %assert_end78
  %264 = getelementptr inbounds %0, %0* %22, i64 0, i32 6
  %265 = load i64, i64* %264, align 8
  %266 = icmp eq i64 %265, 0
  br i1 %266, label %assert_end84, label %assert_fail83, !prof !5

assert_fail81:                                    ; preds = %if_then79
  %267 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %267(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.38, i64 0, i64 0))
  ret i32 -1

assert_fail83:                                    ; preds = %if_end80
  %268 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %268(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.39, i64 0, i64 0))
  ret i32 -1

assert_end84:                                     ; preds = %if_end80
  %269 = getelementptr inbounds %0, %0* %22, i64 0, i32 1, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %assert_end86, label %assert_fail85, !prof !5

assert_fail85:                                    ; preds = %assert_end84
  %272 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %272(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.40, i64 0, i64 0))
  ret i32 -1

assert_end86:                                     ; preds = %assert_end84
  %273 = getelementptr inbounds %0, %0* %22, i64 0, i32 1, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = icmp eq i32 %35, %274
  br i1 %275, label %assert_end88, label %assert_fail87, !prof !5

assert_fail87:                                    ; preds = %assert_end86
  %276 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %276(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.41, i64 0, i64 0))
  ret i32 -1

assert_end88:                                     ; preds = %assert_end86
  tail call fastcc void @fused_multiply_add_compute_(i8* %49, i8* %27, i8* %37, i8* %43)
  ret i32 0
}

; Function Attrs: noinline nounwind
define private fastcc void @fused_multiply_add_compute_(i8* noalias nocapture, i8* noalias nocapture readonly, i8* noalias nocapture readonly, i8* noalias nocapture readonly) unnamed_addr #0 {
entry:
  %4 = bitcast i8* %1 to float*
  %5 = bitcast i8* %2 to float*
  %6 = bitcast i8* %3 to float*
  %7 = bitcast i8* %0 to float*
  %8 = load float, float* %5, align 64, !tbaa !173
  %9 = load float, float* %6, align 64, !tbaa !187
  %10 = insertelement <4 x float> undef, float %8, i32 0
  %11 = shufflevector <4 x float> %10, <4 x float> undef, <4 x i32> zeroinitializer
  %12 = insertelement <4 x float> undef, float %9, i32 0
  %13 = shufflevector <4 x float> %12, <4 x float> undef, <4 x i32> zeroinitializer
  %14 = insertelement <4 x float> undef, float %8, i32 0
  %15 = shufflevector <4 x float> %14, <4 x float> undef, <4 x i32> zeroinitializer
  %16 = insertelement <4 x float> undef, float %9, i32 0
  %17 = shufflevector <4 x float> %16, <4 x float> undef, <4 x i32> zeroinitializer
  %18 = insertelement <4 x float> undef, float %8, i32 0
  %19 = shufflevector <4 x float> %18, <4 x float> undef, <4 x i32> zeroinitializer
  %20 = insertelement <4 x float> undef, float %9, i32 0
  %21 = shufflevector <4 x float> %20, <4 x float> undef, <4 x i32> zeroinitializer
  %22 = insertelement <4 x float> undef, float %8, i32 0
  %23 = shufflevector <4 x float> %22, <4 x float> undef, <4 x i32> zeroinitializer
  %24 = insertelement <4 x float> undef, float %9, i32 0
  %25 = shufflevector <4 x float> %24, <4 x float> undef, <4 x i32> zeroinitializer
  %26 = insertelement <4 x float> undef, float %8, i32 0
  %27 = shufflevector <4 x float> %26, <4 x float> undef, <4 x i32> zeroinitializer
  %28 = insertelement <4 x float> undef, float %9, i32 0
  %29 = shufflevector <4 x float> %28, <4 x float> undef, <4 x i32> zeroinitializer
  %30 = insertelement <4 x float> undef, float %8, i32 0
  %31 = shufflevector <4 x float> %30, <4 x float> undef, <4 x i32> zeroinitializer
  %32 = insertelement <4 x float> undef, float %9, i32 0
  %33 = shufflevector <4 x float> %32, <4 x float> undef, <4 x i32> zeroinitializer
  %34 = insertelement <4 x float> undef, float %8, i32 0
  %35 = shufflevector <4 x float> %34, <4 x float> undef, <4 x i32> zeroinitializer
  %36 = insertelement <4 x float> undef, float %9, i32 0
  %37 = shufflevector <4 x float> %36, <4 x float> undef, <4 x i32> zeroinitializer
  br label %if_end.15.1

for_end:                                          ; preds = %if_end.15.1
  ret void

if_end.15.1:                                      ; preds = %if_end.15.1, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if_end.15.1 ]
  %38 = mul nuw nsw i64 %indvars.iv, 28
  %39 = getelementptr inbounds float, float* %4, i64 %38
  %40 = getelementptr inbounds float, float* %7, i64 %38
  %41 = bitcast float* %39 to <4 x float>*
  %42 = load <4 x float>, <4 x float>* %41, align 4, !tbaa !201
  %43 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %42, <4 x float> %11, <4 x float> %13)
  %44 = bitcast float* %40 to <4 x float>*
  store <4 x float> %43, <4 x float>* %44, align 4, !tbaa !204
  %45 = add nuw nsw i64 %38, 4
  %46 = getelementptr inbounds float, float* %4, i64 %45
  %47 = getelementptr inbounds float, float* %7, i64 %45
  %48 = bitcast float* %46 to <4 x float>*
  %49 = load <4 x float>, <4 x float>* %48, align 4, !tbaa !201
  %50 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %49, <4 x float> %15, <4 x float> %17)
  %51 = bitcast float* %47 to <4 x float>*
  store <4 x float> %50, <4 x float>* %51, align 4, !tbaa !204
  %52 = add nuw nsw i64 %38, 8
  %53 = getelementptr inbounds float, float* %4, i64 %52
  %54 = getelementptr inbounds float, float* %7, i64 %52
  %55 = bitcast float* %53 to <4 x float>*
  %56 = load <4 x float>, <4 x float>* %55, align 4, !tbaa !201
  %57 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %56, <4 x float> %19, <4 x float> %21)
  %58 = bitcast float* %54 to <4 x float>*
  store <4 x float> %57, <4 x float>* %58, align 4, !tbaa !204
  %59 = add nuw nsw i64 %38, 12
  %60 = getelementptr inbounds float, float* %4, i64 %59
  %61 = getelementptr inbounds float, float* %7, i64 %59
  %62 = bitcast float* %60 to <4 x float>*
  %63 = load <4 x float>, <4 x float>* %62, align 4, !tbaa !201
  %64 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %63, <4 x float> %23, <4 x float> %25)
  %65 = bitcast float* %61 to <4 x float>*
  store <4 x float> %64, <4 x float>* %65, align 4, !tbaa !204
  %66 = add nuw nsw i64 %38, 16
  %67 = getelementptr inbounds float, float* %4, i64 %66
  %68 = getelementptr inbounds float, float* %7, i64 %66
  %69 = bitcast float* %67 to <4 x float>*
  %70 = load <4 x float>, <4 x float>* %69, align 4, !tbaa !201
  %71 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %70, <4 x float> %27, <4 x float> %29)
  %72 = bitcast float* %68 to <4 x float>*
  store <4 x float> %71, <4 x float>* %72, align 4, !tbaa !204
  %73 = add nuw nsw i64 %38, 20
  %74 = getelementptr inbounds float, float* %4, i64 %73
  %75 = getelementptr inbounds float, float* %7, i64 %73
  %76 = bitcast float* %74 to <4 x float>*
  %77 = load <4 x float>, <4 x float>* %76, align 4, !tbaa !201
  %78 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %77, <4 x float> %31, <4 x float> %33)
  %79 = bitcast float* %75 to <4 x float>*
  store <4 x float> %78, <4 x float>* %79, align 4, !tbaa !204
  %80 = add nuw nsw i64 %38, 24
  %81 = getelementptr inbounds float, float* %4, i64 %80
  %82 = getelementptr inbounds float, float* %7, i64 %80
  %83 = bitcast float* %81 to <4 x float>*
  %84 = load <4 x float>, <4 x float>* %83, align 4, !tbaa !201
  %85 = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %84, <4 x float> %35, <4 x float> %37)
  %86 = bitcast float* %82 to <4 x float>*
  store <4 x float> %85, <4 x float>* %86, align 4, !tbaa !204
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 28
  br i1 %exitcond, label %for_end, label %if_end.15.1, !prof !51
}

define dllexport i32 @fused_nn_softmax(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32, i8* noalias nocapture readnone, i8* noalias nocapture readnone) local_unnamed_addr {
entry:
  %5 = icmp eq i32 %2, 2
  br i1 %5, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %6 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %6(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.42, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %7 = bitcast i8* %0 to %0**
  %8 = load %0*, %0** %7, align 8
  %9 = bitcast i8* %1 to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !207
  %11 = getelementptr inbounds i8, i8* %0, i64 8
  %12 = bitcast i8* %11 to %0**
  %13 = load %0*, %0** %12, align 8
  %14 = getelementptr inbounds %0, %0* %8, i64 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds %0, %0* %8, i64 0, i32 4
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds %0, %0* %8, i64 0, i32 5
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds %0, %0* %8, i64 0, i32 1, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %0, %0* %8, i64 0, i32 1, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %0, %0* %13, i64 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds %0, %0* %13, i64 0, i32 4
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds %0, %0* %13, i64 0, i32 5
  %29 = load i64*, i64** %28, align 8
  switch i32 %10, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %30 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %30(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.43, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %31 = getelementptr inbounds i8, i8* %1, i64 4
  %32 = bitcast i8* %31 to i32*
  %33 = load i32, i32* %32, align 4, !tbaa !221
  switch i32 %33, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %34 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %34(i8* getelementptr inbounds ([144 x i8], [144 x i8]* @.str.44, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %35 = icmp eq i32 %21, 1
  br i1 %35, label %assert_end6, label %assert_fail5, !prof !5

assert_fail5:                                     ; preds = %assert_end4
  %36 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %36(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4
  %37 = getelementptr inbounds %0, %0* %8, i64 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %assert_end8, label %assert_fail7, !prof !5

assert_fail7:                                     ; preds = %assert_end6
  %40 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %40(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6
  %41 = getelementptr inbounds %0, %0* %8, i64 0, i32 3, i32 2
  %42 = load i16, i16* %41, align 2
  %43 = icmp eq i16 %42, 1
  %44 = getelementptr inbounds %0, %0* %8, i64 0, i32 3, i32 1
  %45 = load i8, i8* %44, align 1
  %46 = icmp eq i8 %45, 32
  %47 = getelementptr inbounds %0, %0* %8, i64 0, i32 3, i32 0
  %48 = load i8, i8* %47, align 1
  %49 = icmp eq i8 %48, 2
  %50 = and i1 %46, %49
  %51 = and i1 %43, %50
  br i1 %51, label %assert_end10, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %52 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %52(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %53 = load i64, i64* %17, align 8, !tbaa !223
  %54 = trunc i64 %53 to i32
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %56 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %56(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %57 = getelementptr inbounds i64, i64* %17, i64 1
  %58 = load i64, i64* %57, align 8, !tbaa !237
  %59 = trunc i64 %58 to i32
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %assert_end14, label %assert_fail13, !prof !5

assert_fail13:                                    ; preds = %assert_end12
  %61 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %61(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end14:                                     ; preds = %assert_end12
  %62 = getelementptr inbounds i64, i64* %17, i64 2
  %63 = load i64, i64* %62, align 8, !tbaa !239
  %64 = trunc i64 %63 to i32
  %65 = icmp eq i32 %64, 28
  br i1 %65, label %assert_end16, label %assert_fail15, !prof !5

assert_fail15:                                    ; preds = %assert_end14
  %66 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %66(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %assert_end14
  %67 = getelementptr inbounds i64, i64* %17, i64 3
  %68 = load i64, i64* %67, align 8, !tbaa !242
  %69 = trunc i64 %68 to i32
  %70 = icmp eq i32 %69, 28
  br i1 %70, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %71 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %71(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %72 = icmp eq i64* %19, null
  br i1 %72, label %if_end, label %if_then, !prof !51

if_then:                                          ; preds = %assert_end18
  %73 = bitcast i64* %19 to <4 x i64>*
  %74 = load <4 x i64>, <4 x i64>* %73, align 8, !tbaa !244
  %75 = trunc <4 x i64> %74 to <4 x i32>
  %76 = icmp eq <4 x i32> %75, <i32 784, i32 784, i32 28, i32 1>
  %rdx.shuf47 = shufflevector <4 x i1> %76, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx48 = and <4 x i1> %76, %rdx.shuf47
  %rdx.shuf49 = shufflevector <4 x i1> %bin.rdx48, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx50 = and <4 x i1> %bin.rdx48, %rdx.shuf49
  %77 = extractelement <4 x i1> %bin.rdx50, i32 0
  br i1 %77, label %if_end, label %assert_fail19, !prof !5

if_end:                                           ; preds = %if_then, %assert_end18
  %78 = getelementptr inbounds %0, %0* %8, i64 0, i32 6
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %assert_end22, label %assert_fail21, !prof !5

assert_fail19:                                    ; preds = %if_then
  %81 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %81(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_fail21:                                    ; preds = %if_end
  %82 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %82(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %if_end
  %83 = getelementptr inbounds %0, %0* %13, i64 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 4
  br i1 %85, label %assert_end24, label %assert_fail23, !prof !5

assert_fail23:                                    ; preds = %assert_end22
  %86 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %86(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.45, i64 0, i64 0))
  ret i32 -1

assert_end24:                                     ; preds = %assert_end22
  %87 = getelementptr inbounds %0, %0* %13, i64 0, i32 3, i32 2
  %88 = load i16, i16* %87, align 2
  %89 = icmp eq i16 %88, 1
  %90 = getelementptr inbounds %0, %0* %13, i64 0, i32 3, i32 1
  %91 = load i8, i8* %90, align 1
  %92 = icmp eq i8 %91, 32
  %93 = getelementptr inbounds %0, %0* %13, i64 0, i32 3, i32 0
  %94 = load i8, i8* %93, align 1
  %95 = icmp eq i8 %94, 2
  %96 = and i1 %92, %95
  %97 = and i1 %89, %96
  br i1 %97, label %assert_end26, label %assert_fail25, !prof !5

assert_fail25:                                    ; preds = %assert_end24
  %98 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %98(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end26:                                     ; preds = %assert_end24
  %99 = load i64, i64* %27, align 8, !tbaa !256
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %assert_end28, label %assert_fail27, !prof !5

assert_fail27:                                    ; preds = %assert_end26
  %102 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %102(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %assert_end26
  %103 = getelementptr inbounds i64, i64* %27, i64 1
  %104 = load i64, i64* %103, align 8, !tbaa !270
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %107 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %107(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %108 = getelementptr inbounds i64, i64* %27, i64 2
  %109 = load i64, i64* %108, align 8, !tbaa !272
  %110 = trunc i64 %109 to i32
  %111 = icmp eq i32 %110, 28
  br i1 %111, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %112 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %112(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.46, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %113 = getelementptr inbounds i64, i64* %27, i64 3
  %114 = load i64, i64* %113, align 8, !tbaa !275
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %115, 28
  br i1 %116, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %117(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.47, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %118 = icmp eq i64* %29, null
  br i1 %118, label %if_end36, label %if_then35, !prof !51

if_then35:                                        ; preds = %assert_end34
  %119 = bitcast i64* %29 to <4 x i64>*
  %120 = load <4 x i64>, <4 x i64>* %119, align 8, !tbaa !277
  %121 = trunc <4 x i64> %120 to <4 x i32>
  %122 = icmp eq <4 x i32> %121, <i32 784, i32 784, i32 28, i32 1>
  %rdx.shuf = shufflevector <4 x i1> %122, <4 x i1> undef, <4 x i32> <i32 2, i32 3, i32 undef, i32 undef>
  %bin.rdx = and <4 x i1> %122, %rdx.shuf
  %rdx.shuf45 = shufflevector <4 x i1> %bin.rdx, <4 x i1> undef, <4 x i32> <i32 1, i32 undef, i32 undef, i32 undef>
  %bin.rdx46 = and <4 x i1> %bin.rdx, %rdx.shuf45
  %123 = extractelement <4 x i1> %bin.rdx46, i32 0
  br i1 %123, label %if_end36, label %assert_fail37, !prof !5

if_end36:                                         ; preds = %if_then35, %assert_end34
  %124 = getelementptr inbounds %0, %0* %13, i64 0, i32 6
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %assert_end40, label %assert_fail39, !prof !5

assert_fail37:                                    ; preds = %if_then35
  %127 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %127(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.48, i64 0, i64 0))
  ret i32 -1

assert_fail39:                                    ; preds = %if_end36
  %128 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %128(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.20, i64 0, i64 0))
  ret i32 -1

assert_end40:                                     ; preds = %if_end36
  %129 = getelementptr inbounds %0, %0* %13, i64 0, i32 1, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 1
  br i1 %131, label %assert_end42, label %assert_fail41, !prof !5

assert_fail41:                                    ; preds = %assert_end40
  %132 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %132(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.21, i64 0, i64 0))
  ret i32 -1

assert_end42:                                     ; preds = %assert_end40
  %133 = getelementptr inbounds %0, %0* %13, i64 0, i32 1, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %23, %134
  br i1 %135, label %assert_end44, label %assert_fail43, !prof !5

assert_fail43:                                    ; preds = %assert_end42
  %136 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %136(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.22, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %assert_end42
  tail call fastcc void @fused_nn_softmax_compute_(i8* %15, i8* %25, i32 %23)
  ret i32 0
}

; Function Attrs: noinline
define private fastcc void @fused_nn_softmax_compute_(i8* noalias nocapture readonly, i8* noalias nocapture, i32) unnamed_addr #1 {
entry:
  %3 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %4 = tail call i8* %3(i32 1, i32 %2, i64 3136, i32 2, i32 32)
  %5 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !6
  %6 = tail call i8* %5(i32 1, i32 %2, i64 3136, i32 2, i32 32)
  %7 = bitcast i8* %4 to float*
  %8 = bitcast i8* %0 to float*
  br label %for_begin3.preheader

for_begin3.preheader:                             ; preds = %for_begin3.preheader, %entry
  %indvars.iv14 = phi i64 [ 0, %entry ], [ %indvars.iv.next15, %for_begin3.preheader ]
  %9 = mul nuw nsw i64 %indvars.iv14, 28
  %10 = getelementptr inbounds float, float* %7, i64 %9
  %11 = getelementptr inbounds float, float* %8, i64 %9
  %12 = bitcast float* %11 to <4 x float>*
  %13 = load <4 x float>, <4 x float>* %12, align 4, !tbaa !289
  %14 = fcmp olt <4 x float> %13, <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %15 = select <4 x i1> %14, <4 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, <4 x float> %13
  %16 = bitcast float* %10 to <4 x float>*
  store <4 x float> %15, <4 x float>* %16, align 4, !tbaa !292
  %17 = add nuw nsw i64 %9, 4
  %18 = getelementptr inbounds float, float* %7, i64 %17
  %19 = getelementptr inbounds float, float* %8, i64 %17
  %20 = bitcast float* %19 to <4 x float>*
  %21 = load <4 x float>, <4 x float>* %20, align 4, !tbaa !289
  %22 = fcmp olt <4 x float> %21, <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %23 = select <4 x i1> %22, <4 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, <4 x float> %21
  %24 = bitcast float* %18 to <4 x float>*
  store <4 x float> %23, <4 x float>* %24, align 4, !tbaa !292
  %25 = add nuw nsw i64 %9, 8
  %26 = getelementptr inbounds float, float* %7, i64 %25
  %27 = getelementptr inbounds float, float* %8, i64 %25
  %28 = bitcast float* %27 to <4 x float>*
  %29 = load <4 x float>, <4 x float>* %28, align 4, !tbaa !289
  %30 = fcmp olt <4 x float> %29, <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %31 = select <4 x i1> %30, <4 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, <4 x float> %29
  %32 = bitcast float* %26 to <4 x float>*
  store <4 x float> %31, <4 x float>* %32, align 4, !tbaa !292
  %33 = add nuw nsw i64 %9, 12
  %34 = getelementptr inbounds float, float* %7, i64 %33
  %35 = getelementptr inbounds float, float* %8, i64 %33
  %36 = bitcast float* %35 to <4 x float>*
  %37 = load <4 x float>, <4 x float>* %36, align 4, !tbaa !289
  %38 = fcmp olt <4 x float> %37, <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %39 = select <4 x i1> %38, <4 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, <4 x float> %37
  %40 = bitcast float* %34 to <4 x float>*
  store <4 x float> %39, <4 x float>* %40, align 4, !tbaa !292
  %41 = add nuw nsw i64 %9, 16
  %42 = getelementptr inbounds float, float* %7, i64 %41
  %43 = getelementptr inbounds float, float* %8, i64 %41
  %44 = bitcast float* %43 to <4 x float>*
  %45 = load <4 x float>, <4 x float>* %44, align 4, !tbaa !289
  %46 = fcmp olt <4 x float> %45, <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %47 = select <4 x i1> %46, <4 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, <4 x float> %45
  %48 = bitcast float* %42 to <4 x float>*
  store <4 x float> %47, <4 x float>* %48, align 4, !tbaa !292
  %49 = add nuw nsw i64 %9, 20
  %50 = getelementptr inbounds float, float* %7, i64 %49
  %51 = getelementptr inbounds float, float* %8, i64 %49
  %52 = bitcast float* %51 to <4 x float>*
  %53 = load <4 x float>, <4 x float>* %52, align 4, !tbaa !289
  %54 = fcmp olt <4 x float> %53, <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %55 = select <4 x i1> %54, <4 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, <4 x float> %53
  %56 = bitcast float* %50 to <4 x float>*
  store <4 x float> %55, <4 x float>* %56, align 4, !tbaa !292
  %57 = add nuw nsw i64 %9, 24
  %58 = getelementptr inbounds float, float* %7, i64 %57
  %59 = getelementptr inbounds float, float* %8, i64 %57
  %60 = bitcast float* %59 to <4 x float>*
  %61 = load <4 x float>, <4 x float>* %60, align 4, !tbaa !289
  %62 = fcmp olt <4 x float> %61, <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %63 = select <4 x i1> %62, <4 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, <4 x float> %61
  %64 = bitcast float* %58 to <4 x float>*
  store <4 x float> %63, <4 x float>* %64, align 4, !tbaa !292
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond16 = icmp eq i64 %indvars.iv.next15, 28
  br i1 %exitcond16, label %for_begin9.preheader, label %for_begin3.preheader, !prof !51

for_begin9.preheader:                             ; preds = %for_begin9.preheader, %for_begin3.preheader
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for_begin9.preheader ], [ 0, %for_begin3.preheader ]
  %65 = mul nuw nsw i64 %indvars.iv8, 28
  %66 = getelementptr inbounds float, float* %7, i64 %65
  %67 = getelementptr inbounds float, float* %8, i64 %65
  %68 = bitcast float* %66 to <4 x float>*
  %69 = load <4 x float>, <4 x float>* %68, align 4, !tbaa !292
  %70 = bitcast float* %67 to <4 x float>*
  %71 = load <4 x float>, <4 x float>* %70, align 4, !tbaa !289
  %72 = fsub <4 x float> %71, %69
  %73 = call <4 x float> @llvm.exp.v4f32(<4 x float> %72)
  %74 = bitcast float* %66 to <4 x float>*
  store <4 x float> %73, <4 x float>* %74, align 4, !tbaa !292
  %75 = add nuw nsw i64 %65, 4
  %76 = getelementptr inbounds float, float* %7, i64 %75
  %77 = getelementptr inbounds float, float* %8, i64 %75
  %78 = bitcast float* %76 to <4 x float>*
  %79 = load <4 x float>, <4 x float>* %78, align 4, !tbaa !292
  %80 = bitcast float* %77 to <4 x float>*
  %81 = load <4 x float>, <4 x float>* %80, align 4, !tbaa !289
  %82 = fsub <4 x float> %81, %79
  %83 = call <4 x float> @llvm.exp.v4f32(<4 x float> %82)
  %84 = bitcast float* %76 to <4 x float>*
  store <4 x float> %83, <4 x float>* %84, align 4, !tbaa !292
  %85 = add nuw nsw i64 %65, 8
  %86 = getelementptr inbounds float, float* %7, i64 %85
  %87 = getelementptr inbounds float, float* %8, i64 %85
  %88 = bitcast float* %86 to <4 x float>*
  %89 = load <4 x float>, <4 x float>* %88, align 4, !tbaa !292
  %90 = bitcast float* %87 to <4 x float>*
  %91 = load <4 x float>, <4 x float>* %90, align 4, !tbaa !289
  %92 = fsub <4 x float> %91, %89
  %93 = call <4 x float> @llvm.exp.v4f32(<4 x float> %92)
  %94 = bitcast float* %86 to <4 x float>*
  store <4 x float> %93, <4 x float>* %94, align 4, !tbaa !292
  %95 = add nuw nsw i64 %65, 12
  %96 = getelementptr inbounds float, float* %7, i64 %95
  %97 = getelementptr inbounds float, float* %8, i64 %95
  %98 = bitcast float* %96 to <4 x float>*
  %99 = load <4 x float>, <4 x float>* %98, align 4, !tbaa !292
  %100 = bitcast float* %97 to <4 x float>*
  %101 = load <4 x float>, <4 x float>* %100, align 4, !tbaa !289
  %102 = fsub <4 x float> %101, %99
  %103 = call <4 x float> @llvm.exp.v4f32(<4 x float> %102)
  %104 = bitcast float* %96 to <4 x float>*
  store <4 x float> %103, <4 x float>* %104, align 4, !tbaa !292
  %105 = add nuw nsw i64 %65, 16
  %106 = getelementptr inbounds float, float* %7, i64 %105
  %107 = getelementptr inbounds float, float* %8, i64 %105
  %108 = bitcast float* %106 to <4 x float>*
  %109 = load <4 x float>, <4 x float>* %108, align 4, !tbaa !292
  %110 = bitcast float* %107 to <4 x float>*
  %111 = load <4 x float>, <4 x float>* %110, align 4, !tbaa !289
  %112 = fsub <4 x float> %111, %109
  %113 = call <4 x float> @llvm.exp.v4f32(<4 x float> %112)
  %114 = bitcast float* %106 to <4 x float>*
  store <4 x float> %113, <4 x float>* %114, align 4, !tbaa !292
  %115 = add nuw nsw i64 %65, 20
  %116 = getelementptr inbounds float, float* %7, i64 %115
  %117 = getelementptr inbounds float, float* %8, i64 %115
  %118 = bitcast float* %116 to <4 x float>*
  %119 = load <4 x float>, <4 x float>* %118, align 4, !tbaa !292
  %120 = bitcast float* %117 to <4 x float>*
  %121 = load <4 x float>, <4 x float>* %120, align 4, !tbaa !289
  %122 = fsub <4 x float> %121, %119
  %123 = call <4 x float> @llvm.exp.v4f32(<4 x float> %122)
  %124 = bitcast float* %116 to <4 x float>*
  store <4 x float> %123, <4 x float>* %124, align 4, !tbaa !292
  %125 = add nuw nsw i64 %65, 24
  %126 = getelementptr inbounds float, float* %7, i64 %125
  %127 = getelementptr inbounds float, float* %8, i64 %125
  %128 = bitcast float* %126 to <4 x float>*
  %129 = load <4 x float>, <4 x float>* %128, align 4, !tbaa !292
  %130 = bitcast float* %127 to <4 x float>*
  %131 = load <4 x float>, <4 x float>* %130, align 4, !tbaa !289
  %132 = fsub <4 x float> %131, %129
  %133 = call <4 x float> @llvm.exp.v4f32(<4 x float> %132)
  %134 = bitcast float* %126 to <4 x float>*
  store <4 x float> %133, <4 x float>* %134, align 4, !tbaa !292
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  %exitcond10 = icmp eq i64 %indvars.iv.next9, 28
  br i1 %exitcond10, label %for_begin12.preheader, label %for_begin9.preheader, !prof !51

for_begin12.preheader:                            ; preds = %for_begin9.preheader
  %135 = bitcast i8* %6 to float*
  br label %for_begin15.preheader

for_begin15.preheader:                            ; preds = %for_begin15.preheader, %for_begin12.preheader
  %indvar = phi i64 [ 0, %for_begin12.preheader ], [ %indvar.next, %for_begin15.preheader ]
  %136 = mul nuw nsw i64 %indvar, 28
  %137 = getelementptr inbounds float, float* %135, i64 %136
  %138 = getelementptr inbounds float, float* %7, i64 %136
  %139 = bitcast float* %138 to <4 x float>*
  %140 = load <4 x float>, <4 x float>* %139, align 4, !tbaa !292
  %141 = fadd <4 x float> %140, zeroinitializer
  %142 = bitcast float* %137 to <4 x float>*
  store <4 x float> %141, <4 x float>* %142, align 4, !tbaa !295
  %143 = add nuw nsw i64 %136, 4
  %144 = getelementptr inbounds float, float* %135, i64 %143
  %145 = getelementptr inbounds float, float* %7, i64 %143
  %146 = bitcast float* %145 to <4 x float>*
  %147 = load <4 x float>, <4 x float>* %146, align 4, !tbaa !292
  %148 = fadd <4 x float> %147, zeroinitializer
  %149 = bitcast float* %144 to <4 x float>*
  store <4 x float> %148, <4 x float>* %149, align 4, !tbaa !295
  %150 = add nuw nsw i64 %136, 8
  %151 = getelementptr inbounds float, float* %135, i64 %150
  %152 = getelementptr inbounds float, float* %7, i64 %150
  %153 = bitcast float* %152 to <4 x float>*
  %154 = load <4 x float>, <4 x float>* %153, align 4, !tbaa !292
  %155 = fadd <4 x float> %154, zeroinitializer
  %156 = bitcast float* %151 to <4 x float>*
  store <4 x float> %155, <4 x float>* %156, align 4, !tbaa !295
  %157 = add nuw nsw i64 %136, 12
  %158 = getelementptr inbounds float, float* %135, i64 %157
  %159 = getelementptr inbounds float, float* %7, i64 %157
  %160 = bitcast float* %159 to <4 x float>*
  %161 = load <4 x float>, <4 x float>* %160, align 4, !tbaa !292
  %162 = fadd <4 x float> %161, zeroinitializer
  %163 = bitcast float* %158 to <4 x float>*
  store <4 x float> %162, <4 x float>* %163, align 4, !tbaa !295
  %164 = add nuw nsw i64 %136, 16
  %165 = getelementptr inbounds float, float* %135, i64 %164
  %166 = getelementptr inbounds float, float* %7, i64 %164
  %167 = bitcast float* %166 to <4 x float>*
  %168 = load <4 x float>, <4 x float>* %167, align 4, !tbaa !292
  %169 = fadd <4 x float> %168, zeroinitializer
  %170 = bitcast float* %165 to <4 x float>*
  store <4 x float> %169, <4 x float>* %170, align 4, !tbaa !295
  %171 = add nuw nsw i64 %136, 20
  %172 = getelementptr inbounds float, float* %135, i64 %171
  %173 = getelementptr inbounds float, float* %7, i64 %171
  %174 = bitcast float* %173 to <4 x float>*
  %175 = load <4 x float>, <4 x float>* %174, align 4, !tbaa !292
  %176 = fadd <4 x float> %175, zeroinitializer
  %177 = bitcast float* %172 to <4 x float>*
  store <4 x float> %176, <4 x float>* %177, align 4, !tbaa !295
  %178 = add nuw nsw i64 %136, 24
  %179 = getelementptr inbounds float, float* %135, i64 %178
  %180 = getelementptr inbounds float, float* %7, i64 %178
  %181 = bitcast float* %180 to <4 x float>*
  %182 = load <4 x float>, <4 x float>* %181, align 4, !tbaa !292
  %183 = fadd <4 x float> %182, zeroinitializer
  %184 = bitcast float* %179 to <4 x float>*
  store <4 x float> %183, <4 x float>* %184, align 4, !tbaa !295
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond4 = icmp eq i64 %indvar.next, 28
  br i1 %exitcond4, label %for_begin18.preheader, label %for_begin15.preheader, !prof !51

for_begin18.preheader:                            ; preds = %for_begin15.preheader
  %185 = bitcast i8* %1 to float*
  br label %for_begin21.preheader

for_begin21.preheader:                            ; preds = %for_begin21.preheader, %for_begin18.preheader
  %indvars.iv = phi i64 [ 0, %for_begin18.preheader ], [ %indvars.iv.next, %for_begin21.preheader ]
  %186 = mul nuw nsw i64 %indvars.iv, 28
  %187 = getelementptr inbounds float, float* %7, i64 %186
  %188 = getelementptr inbounds float, float* %135, i64 %186
  %189 = getelementptr inbounds float, float* %185, i64 %186
  %190 = bitcast float* %187 to <4 x float>*
  %191 = load <4 x float>, <4 x float>* %190, align 4, !tbaa !292
  %192 = bitcast float* %188 to <4 x float>*
  %193 = load <4 x float>, <4 x float>* %192, align 4, !tbaa !295
  %194 = fdiv <4 x float> %191, %193
  %195 = bitcast float* %189 to <4 x float>*
  store <4 x float> %194, <4 x float>* %195, align 4, !tbaa !298
  %196 = add nuw nsw i64 %186, 4
  %197 = getelementptr inbounds float, float* %7, i64 %196
  %198 = getelementptr inbounds float, float* %135, i64 %196
  %199 = getelementptr inbounds float, float* %185, i64 %196
  %200 = bitcast float* %197 to <4 x float>*
  %201 = load <4 x float>, <4 x float>* %200, align 4, !tbaa !292
  %202 = bitcast float* %198 to <4 x float>*
  %203 = load <4 x float>, <4 x float>* %202, align 4, !tbaa !295
  %204 = fdiv <4 x float> %201, %203
  %205 = bitcast float* %199 to <4 x float>*
  store <4 x float> %204, <4 x float>* %205, align 4, !tbaa !298
  %206 = add nuw nsw i64 %186, 8
  %207 = getelementptr inbounds float, float* %7, i64 %206
  %208 = getelementptr inbounds float, float* %135, i64 %206
  %209 = getelementptr inbounds float, float* %185, i64 %206
  %210 = bitcast float* %207 to <4 x float>*
  %211 = load <4 x float>, <4 x float>* %210, align 4, !tbaa !292
  %212 = bitcast float* %208 to <4 x float>*
  %213 = load <4 x float>, <4 x float>* %212, align 4, !tbaa !295
  %214 = fdiv <4 x float> %211, %213
  %215 = bitcast float* %209 to <4 x float>*
  store <4 x float> %214, <4 x float>* %215, align 4, !tbaa !298
  %216 = add nuw nsw i64 %186, 12
  %217 = getelementptr inbounds float, float* %7, i64 %216
  %218 = getelementptr inbounds float, float* %135, i64 %216
  %219 = getelementptr inbounds float, float* %185, i64 %216
  %220 = bitcast float* %217 to <4 x float>*
  %221 = load <4 x float>, <4 x float>* %220, align 4, !tbaa !292
  %222 = bitcast float* %218 to <4 x float>*
  %223 = load <4 x float>, <4 x float>* %222, align 4, !tbaa !295
  %224 = fdiv <4 x float> %221, %223
  %225 = bitcast float* %219 to <4 x float>*
  store <4 x float> %224, <4 x float>* %225, align 4, !tbaa !298
  %226 = add nuw nsw i64 %186, 16
  %227 = getelementptr inbounds float, float* %7, i64 %226
  %228 = getelementptr inbounds float, float* %135, i64 %226
  %229 = getelementptr inbounds float, float* %185, i64 %226
  %230 = bitcast float* %227 to <4 x float>*
  %231 = load <4 x float>, <4 x float>* %230, align 4, !tbaa !292
  %232 = bitcast float* %228 to <4 x float>*
  %233 = load <4 x float>, <4 x float>* %232, align 4, !tbaa !295
  %234 = fdiv <4 x float> %231, %233
  %235 = bitcast float* %229 to <4 x float>*
  store <4 x float> %234, <4 x float>* %235, align 4, !tbaa !298
  %236 = add nuw nsw i64 %186, 20
  %237 = getelementptr inbounds float, float* %7, i64 %236
  %238 = getelementptr inbounds float, float* %135, i64 %236
  %239 = getelementptr inbounds float, float* %185, i64 %236
  %240 = bitcast float* %237 to <4 x float>*
  %241 = load <4 x float>, <4 x float>* %240, align 4, !tbaa !292
  %242 = bitcast float* %238 to <4 x float>*
  %243 = load <4 x float>, <4 x float>* %242, align 4, !tbaa !295
  %244 = fdiv <4 x float> %241, %243
  %245 = bitcast float* %239 to <4 x float>*
  store <4 x float> %244, <4 x float>* %245, align 4, !tbaa !298
  %246 = add nuw nsw i64 %186, 24
  %247 = getelementptr inbounds float, float* %7, i64 %246
  %248 = getelementptr inbounds float, float* %135, i64 %246
  %249 = getelementptr inbounds float, float* %185, i64 %246
  %250 = bitcast float* %247 to <4 x float>*
  %251 = load <4 x float>, <4 x float>* %250, align 4, !tbaa !292
  %252 = bitcast float* %248 to <4 x float>*
  %253 = load <4 x float>, <4 x float>* %252, align 4, !tbaa !295
  %254 = fdiv <4 x float> %251, %253
  %255 = bitcast float* %249 to <4 x float>*
  store <4 x float> %254, <4 x float>* %255, align 4, !tbaa !298
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, 28
  br i1 %exitcond, label %for_end20, label %for_begin21.preheader, !prof !51

for_end20:                                        ; preds = %for_begin21.preheader
  %256 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !6
  %257 = tail call i32 %256(i32 1, i32 %2, i8* nonnull %6)
  %258 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !6
  %259 = tail call i32 %258(i32 1, i32 %2, i8* nonnull %4)
  ret void
}

; Function Attrs: nounwind readnone speculatable
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nounwind readnone speculatable
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #2

attributes #0 = { noinline nounwind }
attributes #1 = { noinline }
attributes #2 = { nounwind readnone speculatable }

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
!10 = !{!"0x55bc47a16ce0.w1.b0", !11, i64 0}
!11 = !{!"0x55bc47a16ce0.w2.b0", !12, i64 0}
!12 = !{!"0x55bc47a16ce0.w4.b0", !13, i64 0}
!13 = !{!"0x55bc47a16ce0.w8.b0", !14, i64 0}
!14 = !{!"0x55bc47a16ce0.w16.b0", !15, i64 0}
!15 = !{!"0x55bc47a16ce0.w32.b0", !16, i64 0}
!16 = !{!"0x55bc47a16ce0.w64.b0", !17, i64 0}
!17 = !{!"0x55bc47a16ce0.w128.b0", !18, i64 0}
!18 = !{!"0x55bc47a16ce0.w256.b0", !19, i64 0}
!19 = !{!"0x55bc47a16ce0.w512.b0", !20, i64 0}
!20 = !{!"0x55bc47a16ce0.w1024.b0", !21, i64 0}
!21 = !{!"int32", !22, i64 0}
!22 = !{!"0x55bc47a16ce0", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x55bc47a16ce0.w1.b2", !25, i64 0}
!25 = !{!"0x55bc47a16ce0.w2.b2", !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"0x55bc47a16ce0.w1.b3", !25, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"0x55bc47a16ce0.w1.b1", !11, i64 0}
!30 = !{!31, !31, i64 0}
!31 = !{!"0x55bc479dfd80.w1.b0", !32, i64 0}
!32 = !{!"0x55bc479dfd80.w2.b0", !33, i64 0}
!33 = !{!"0x55bc479dfd80.w4.b0", !34, i64 0}
!34 = !{!"0x55bc479dfd80.w8.b0", !35, i64 0}
!35 = !{!"0x55bc479dfd80.w16.b0", !36, i64 0}
!36 = !{!"0x55bc479dfd80.w32.b0", !37, i64 0}
!37 = !{!"0x55bc479dfd80.w64.b0", !38, i64 0}
!38 = !{!"0x55bc479dfd80.w128.b0", !39, i64 0}
!39 = !{!"0x55bc479dfd80.w256.b0", !40, i64 0}
!40 = !{!"0x55bc479dfd80.w512.b0", !41, i64 0}
!41 = !{!"0x55bc479dfd80.w1024.b0", !42, i64 0}
!42 = !{!"int64", !43, i64 0}
!43 = !{!"0x55bc479dfd80", !8, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"0x55bc479dfd80.w1.b1", !32, i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"0x55bc479dfd80.w1.b2", !48, i64 0}
!48 = !{!"0x55bc479dfd80.w2.b2", !33, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"0x55bc479dfd80.w1.b3", !48, i64 0}
!51 = !{!"branch_weights", i32 1, i32 1048576}
!52 = !{!53, !53, i64 0}
!53 = !{!"0x55bc47a21a70.w4.b0", !54, i64 0}
!54 = !{!"0x55bc47a21a70.w8.b0", !55, i64 0}
!55 = !{!"0x55bc47a21a70.w16.b0", !56, i64 0}
!56 = !{!"0x55bc47a21a70.w32.b0", !57, i64 0}
!57 = !{!"0x55bc47a21a70.w64.b0", !58, i64 0}
!58 = !{!"0x55bc47a21a70.w128.b0", !59, i64 0}
!59 = !{!"0x55bc47a21a70.w256.b0", !60, i64 0}
!60 = !{!"0x55bc47a21a70.w512.b0", !61, i64 0}
!61 = !{!"0x55bc47a21a70.w1024.b0", !62, i64 0}
!62 = !{!"int64", !63, i64 0}
!63 = !{!"0x55bc47a21a70", !8, i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"0x55bc47a21cc0.w1.b0", !66, i64 0}
!66 = !{!"0x55bc47a21cc0.w2.b0", !67, i64 0}
!67 = !{!"0x55bc47a21cc0.w4.b0", !68, i64 0}
!68 = !{!"0x55bc47a21cc0.w8.b0", !69, i64 0}
!69 = !{!"0x55bc47a21cc0.w16.b0", !70, i64 0}
!70 = !{!"0x55bc47a21cc0.w32.b0", !71, i64 0}
!71 = !{!"0x55bc47a21cc0.w64.b0", !72, i64 0}
!72 = !{!"0x55bc47a21cc0.w128.b0", !73, i64 0}
!73 = !{!"0x55bc47a21cc0.w256.b0", !74, i64 0}
!74 = !{!"0x55bc47a21cc0.w512.b0", !75, i64 0}
!75 = !{!"0x55bc47a21cc0.w1024.b0", !76, i64 0}
!76 = !{!"int64", !77, i64 0}
!77 = !{!"0x55bc47a21cc0", !8, i64 0}
!78 = !{!79, !79, i64 0}
!79 = !{!"0x55bc47a21cc0.w1.b1", !66, i64 0}
!80 = !{!81, !81, i64 0}
!81 = !{!"0x55bc47a21cc0.w1.b2", !82, i64 0}
!82 = !{!"0x55bc47a21cc0.w2.b2", !67, i64 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"0x55bc47a21c70.w1.b0", !85, i64 0}
!85 = !{!"0x55bc47a21c70.w2.b0", !86, i64 0}
!86 = !{!"0x55bc47a21c70.w4.b0", !87, i64 0}
!87 = !{!"0x55bc47a21c70.w8.b0", !88, i64 0}
!88 = !{!"0x55bc47a21c70.w16.b0", !89, i64 0}
!89 = !{!"0x55bc47a21c70.w32.b0", !90, i64 0}
!90 = !{!"0x55bc47a21c70.w64.b0", !91, i64 0}
!91 = !{!"0x55bc47a21c70.w128.b0", !92, i64 0}
!92 = !{!"0x55bc47a21c70.w256.b0", !93, i64 0}
!93 = !{!"0x55bc47a21c70.w512.b0", !94, i64 0}
!94 = !{!"0x55bc47a21c70.w1024.b0", !95, i64 0}
!95 = !{!"int64", !96, i64 0}
!96 = !{!"0x55bc47a21c70", !8, i64 0}
!97 = !{!98, !98, i64 0}
!98 = !{!"0x55bc47a21c70.w1.b1", !85, i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"0x55bc47a21c70.w1.b2", !101, i64 0}
!101 = !{!"0x55bc47a21c70.w2.b2", !86, i64 0}
!102 = !{!103, !103, i64 0}
!103 = !{!"0x55bc47948210.w1.b0", !104, i64 0}
!104 = !{!"0x55bc47948210.w2.b0", !105, i64 0}
!105 = !{!"0x55bc47948210.w4.b0", !106, i64 0}
!106 = !{!"0x55bc47948210.w8.b0", !107, i64 0}
!107 = !{!"0x55bc47948210.w16.b0", !108, i64 0}
!108 = !{!"0x55bc47948210.w32.b0", !109, i64 0}
!109 = !{!"0x55bc47948210.w64.b0", !110, i64 0}
!110 = !{!"0x55bc47948210.w128.b0", !111, i64 0}
!111 = !{!"0x55bc47948210.w256.b0", !112, i64 0}
!112 = !{!"0x55bc47948210.w512.b0", !113, i64 0}
!113 = !{!"0x55bc47948210.w1024.b0", !114, i64 0}
!114 = !{!"int64", !115, i64 0}
!115 = !{!"0x55bc47948210", !8, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"0x55bc47948210.w1.b1", !104, i64 0}
!118 = !{!119, !119, i64 0}
!119 = !{!"0x55bc47948210.w1.b2", !120, i64 0}
!120 = !{!"0x55bc47948210.w2.b2", !105, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"0x55bc47948f80.w1.b0", !123, i64 0}
!123 = !{!"0x55bc47948f80.w2.b0", !124, i64 0}
!124 = !{!"0x55bc47948f80.w4.b0", !125, i64 0}
!125 = !{!"0x55bc47948f80.w8.b0", !126, i64 0}
!126 = !{!"0x55bc47948f80.w16.b0", !127, i64 0}
!127 = !{!"0x55bc47948f80.w32.b0", !128, i64 0}
!128 = !{!"0x55bc47948f80.w64.b0", !129, i64 0}
!129 = !{!"0x55bc47948f80.w128.b0", !130, i64 0}
!130 = !{!"0x55bc47948f80.w256.b0", !131, i64 0}
!131 = !{!"0x55bc47948f80.w512.b0", !132, i64 0}
!132 = !{!"0x55bc47948f80.w1024.b0", !133, i64 0}
!133 = !{!"int64", !134, i64 0}
!134 = !{!"0x55bc47948f80", !8, i64 0}
!135 = !{!136, !136, i64 0}
!136 = !{!"0x55bc47948f80.w1.b1", !123, i64 0}
!137 = !{!138, !138, i64 0}
!138 = !{!"0x55bc47948f80.w1.b2", !139, i64 0}
!139 = !{!"0x55bc47948f80.w2.b2", !124, i64 0}
!140 = !{!141, !141, i64 0}
!141 = !{!"0x55bc47a269e0.w1.b0", !142, i64 0}
!142 = !{!"0x55bc47a269e0.w2.b0", !143, i64 0}
!143 = !{!"0x55bc47a269e0.w4.b0", !144, i64 0}
!144 = !{!"0x55bc47a269e0.w8.b0", !145, i64 0}
!145 = !{!"0x55bc47a269e0.w16.b0", !146, i64 0}
!146 = !{!"0x55bc47a269e0.w32.b0", !147, i64 0}
!147 = !{!"0x55bc47a269e0.w64.b0", !148, i64 0}
!148 = !{!"0x55bc47a269e0.w128.b0", !149, i64 0}
!149 = !{!"0x55bc47a269e0.w256.b0", !150, i64 0}
!150 = !{!"0x55bc47a269e0.w512.b0", !151, i64 0}
!151 = !{!"0x55bc47a269e0.w1024.b0", !152, i64 0}
!152 = !{!"int64", !153, i64 0}
!153 = !{!"0x55bc47a269e0", !8, i64 0}
!154 = !{!155, !155, i64 0}
!155 = !{!"0x55bc47a269e0.w1.b1", !142, i64 0}
!156 = !{!157, !157, i64 0}
!157 = !{!"0x55bc47a269e0.w1.b2", !158, i64 0}
!158 = !{!"0x55bc47a269e0.w2.b2", !143, i64 0}
!159 = !{!160, !160, i64 0}
!160 = !{!"0x55bc47a269e0.w1.b3", !158, i64 0}
!161 = !{!162, !162, i64 0}
!162 = !{!"0x55bc47984ac0.w4.b0", !163, i64 0}
!163 = !{!"0x55bc47984ac0.w8.b0", !164, i64 0}
!164 = !{!"0x55bc47984ac0.w16.b0", !165, i64 0}
!165 = !{!"0x55bc47984ac0.w32.b0", !166, i64 0}
!166 = !{!"0x55bc47984ac0.w64.b0", !167, i64 0}
!167 = !{!"0x55bc47984ac0.w128.b0", !168, i64 0}
!168 = !{!"0x55bc47984ac0.w256.b0", !169, i64 0}
!169 = !{!"0x55bc47984ac0.w512.b0", !170, i64 0}
!170 = !{!"0x55bc47984ac0.w1024.b0", !171, i64 0}
!171 = !{!"int64", !172, i64 0}
!172 = !{!"0x55bc47984ac0", !8, i64 0}
!173 = !{!174, !174, i64 0}
!174 = !{!"0x55bc47a33b20.w1.b0", !175, i64 0}
!175 = !{!"0x55bc47a33b20.w2.b0", !176, i64 0}
!176 = !{!"0x55bc47a33b20.w4.b0", !177, i64 0}
!177 = !{!"0x55bc47a33b20.w8.b0", !178, i64 0}
!178 = !{!"0x55bc47a33b20.w16.b0", !179, i64 0}
!179 = !{!"0x55bc47a33b20.w32.b0", !180, i64 0}
!180 = !{!"0x55bc47a33b20.w64.b0", !181, i64 0}
!181 = !{!"0x55bc47a33b20.w128.b0", !182, i64 0}
!182 = !{!"0x55bc47a33b20.w256.b0", !183, i64 0}
!183 = !{!"0x55bc47a33b20.w512.b0", !184, i64 0}
!184 = !{!"0x55bc47a33b20.w1024.b0", !185, i64 0}
!185 = !{!"float32", !186, i64 0}
!186 = !{!"0x55bc47a33b20", !8, i64 0}
!187 = !{!188, !188, i64 0}
!188 = !{!"0x55bc47a33760.w1.b0", !189, i64 0}
!189 = !{!"0x55bc47a33760.w2.b0", !190, i64 0}
!190 = !{!"0x55bc47a33760.w4.b0", !191, i64 0}
!191 = !{!"0x55bc47a33760.w8.b0", !192, i64 0}
!192 = !{!"0x55bc47a33760.w16.b0", !193, i64 0}
!193 = !{!"0x55bc47a33760.w32.b0", !194, i64 0}
!194 = !{!"0x55bc47a33760.w64.b0", !195, i64 0}
!195 = !{!"0x55bc47a33760.w128.b0", !196, i64 0}
!196 = !{!"0x55bc47a33760.w256.b0", !197, i64 0}
!197 = !{!"0x55bc47a33760.w512.b0", !198, i64 0}
!198 = !{!"0x55bc47a33760.w1024.b0", !199, i64 0}
!199 = !{!"float32", !200, i64 0}
!200 = !{!"0x55bc47a33760", !8, i64 0}
!201 = !{!202, !202, i64 0}
!202 = !{!"float32", !203, i64 0}
!203 = !{!"0x55bc47a33b70", !8, i64 0}
!204 = !{!205, !205, i64 0}
!205 = !{!"float32", !206, i64 0}
!206 = !{!"0x55bc47a3dfa0", !8, i64 0}
!207 = !{!208, !208, i64 0}
!208 = !{!"0x55bc478b5bb0.w1.b0", !209, i64 0}
!209 = !{!"0x55bc478b5bb0.w2.b0", !210, i64 0}
!210 = !{!"0x55bc478b5bb0.w4.b0", !211, i64 0}
!211 = !{!"0x55bc478b5bb0.w8.b0", !212, i64 0}
!212 = !{!"0x55bc478b5bb0.w16.b0", !213, i64 0}
!213 = !{!"0x55bc478b5bb0.w32.b0", !214, i64 0}
!214 = !{!"0x55bc478b5bb0.w64.b0", !215, i64 0}
!215 = !{!"0x55bc478b5bb0.w128.b0", !216, i64 0}
!216 = !{!"0x55bc478b5bb0.w256.b0", !217, i64 0}
!217 = !{!"0x55bc478b5bb0.w512.b0", !218, i64 0}
!218 = !{!"0x55bc478b5bb0.w1024.b0", !219, i64 0}
!219 = !{!"int32", !220, i64 0}
!220 = !{!"0x55bc478b5bb0", !8, i64 0}
!221 = !{!222, !222, i64 0}
!222 = !{!"0x55bc478b5bb0.w1.b1", !209, i64 0}
!223 = !{!224, !224, i64 0}
!224 = !{!"0x55bc475a9790.w1.b0", !225, i64 0}
!225 = !{!"0x55bc475a9790.w2.b0", !226, i64 0}
!226 = !{!"0x55bc475a9790.w4.b0", !227, i64 0}
!227 = !{!"0x55bc475a9790.w8.b0", !228, i64 0}
!228 = !{!"0x55bc475a9790.w16.b0", !229, i64 0}
!229 = !{!"0x55bc475a9790.w32.b0", !230, i64 0}
!230 = !{!"0x55bc475a9790.w64.b0", !231, i64 0}
!231 = !{!"0x55bc475a9790.w128.b0", !232, i64 0}
!232 = !{!"0x55bc475a9790.w256.b0", !233, i64 0}
!233 = !{!"0x55bc475a9790.w512.b0", !234, i64 0}
!234 = !{!"0x55bc475a9790.w1024.b0", !235, i64 0}
!235 = !{!"int64", !236, i64 0}
!236 = !{!"0x55bc475a9790", !8, i64 0}
!237 = !{!238, !238, i64 0}
!238 = !{!"0x55bc475a9790.w1.b1", !225, i64 0}
!239 = !{!240, !240, i64 0}
!240 = !{!"0x55bc475a9790.w1.b2", !241, i64 0}
!241 = !{!"0x55bc475a9790.w2.b2", !226, i64 0}
!242 = !{!243, !243, i64 0}
!243 = !{!"0x55bc475a9790.w1.b3", !241, i64 0}
!244 = !{!245, !245, i64 0}
!245 = !{!"0x55bc475a96f0.w4.b0", !246, i64 0}
!246 = !{!"0x55bc475a96f0.w8.b0", !247, i64 0}
!247 = !{!"0x55bc475a96f0.w16.b0", !248, i64 0}
!248 = !{!"0x55bc475a96f0.w32.b0", !249, i64 0}
!249 = !{!"0x55bc475a96f0.w64.b0", !250, i64 0}
!250 = !{!"0x55bc475a96f0.w128.b0", !251, i64 0}
!251 = !{!"0x55bc475a96f0.w256.b0", !252, i64 0}
!252 = !{!"0x55bc475a96f0.w512.b0", !253, i64 0}
!253 = !{!"0x55bc475a96f0.w1024.b0", !254, i64 0}
!254 = !{!"int64", !255, i64 0}
!255 = !{!"0x55bc475a96f0", !8, i64 0}
!256 = !{!257, !257, i64 0}
!257 = !{!"0x55bc47994520.w1.b0", !258, i64 0}
!258 = !{!"0x55bc47994520.w2.b0", !259, i64 0}
!259 = !{!"0x55bc47994520.w4.b0", !260, i64 0}
!260 = !{!"0x55bc47994520.w8.b0", !261, i64 0}
!261 = !{!"0x55bc47994520.w16.b0", !262, i64 0}
!262 = !{!"0x55bc47994520.w32.b0", !263, i64 0}
!263 = !{!"0x55bc47994520.w64.b0", !264, i64 0}
!264 = !{!"0x55bc47994520.w128.b0", !265, i64 0}
!265 = !{!"0x55bc47994520.w256.b0", !266, i64 0}
!266 = !{!"0x55bc47994520.w512.b0", !267, i64 0}
!267 = !{!"0x55bc47994520.w1024.b0", !268, i64 0}
!268 = !{!"int64", !269, i64 0}
!269 = !{!"0x55bc47994520", !8, i64 0}
!270 = !{!271, !271, i64 0}
!271 = !{!"0x55bc47994520.w1.b1", !258, i64 0}
!272 = !{!273, !273, i64 0}
!273 = !{!"0x55bc47994520.w1.b2", !274, i64 0}
!274 = !{!"0x55bc47994520.w2.b2", !259, i64 0}
!275 = !{!276, !276, i64 0}
!276 = !{!"0x55bc47994520.w1.b3", !274, i64 0}
!277 = !{!278, !278, i64 0}
!278 = !{!"0x55bc47994570.w4.b0", !279, i64 0}
!279 = !{!"0x55bc47994570.w8.b0", !280, i64 0}
!280 = !{!"0x55bc47994570.w16.b0", !281, i64 0}
!281 = !{!"0x55bc47994570.w32.b0", !282, i64 0}
!282 = !{!"0x55bc47994570.w64.b0", !283, i64 0}
!283 = !{!"0x55bc47994570.w128.b0", !284, i64 0}
!284 = !{!"0x55bc47994570.w256.b0", !285, i64 0}
!285 = !{!"0x55bc47994570.w512.b0", !286, i64 0}
!286 = !{!"0x55bc47994570.w1024.b0", !287, i64 0}
!287 = !{!"int64", !288, i64 0}
!288 = !{!"0x55bc47994570", !8, i64 0}
!289 = !{!290, !290, i64 0}
!290 = !{!"float32", !291, i64 0}
!291 = !{!"0x55bc478b53f0", !8, i64 0}
!292 = !{!293, !293, i64 0}
!293 = !{!"float32", !294, i64 0}
!294 = !{!"0x55bc479e80e0", !8, i64 0}
!295 = !{!296, !296, i64 0}
!296 = !{!"float32", !297, i64 0}
!297 = !{!"0x55bc475f90a0", !8, i64 0}
!298 = !{!299, !299, i64 0}
!299 = !{!"float32", !300, i64 0}
!300 = !{!"0x55bc478bef00", !8, i64 0}
