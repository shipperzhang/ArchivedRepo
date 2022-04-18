; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i8*, %1, i32, %2, i64*, i64*, i64 }
%1 = type { i32, i32 }
%2 = type { i8, i8, i16 }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@.str = private constant [84 x i8] c"Assert fail: (num_args == 2), tvmgen_default_fused_nn_softmax: num_args should be 2\00", align 1
@.str.1 = private constant [159 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_softmax: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [159 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_softmax: Expect arg[1] to be pointer\00", align 1
@.str.3 = private constant [85 x i8] c"Assert fail: (4 == tir.tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 4\00", align 1
@.str.4 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg0, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be float32\00", align 1
@.str.5 = private constant [124 x i8] c"Assert fail: (1 == int32(arg0.shape[0])), Argument arg0.shape[0] has an unsatisfied constraint: (1 == int32(arg0.shape[0]))\00", align 1
@.str.6 = private constant [124 x i8] c"Assert fail: (1 == int32(arg0.shape[1])), Argument arg0.shape[1] has an unsatisfied constraint: (1 == int32(arg0.shape[1]))\00", align 1
@.str.7 = private constant [126 x i8] c"Assert fail: (28 == int32(arg0.shape[2])), Argument arg0.shape[2] has an unsatisfied constraint: (28 == int32(arg0.shape[2]))\00", align 1
@.str.8 = private constant [126 x i8] c"Assert fail: (28 == int32(arg0.shape[3])), Argument arg0.shape[3] has an unsatisfied constraint: (28 == int32(arg0.shape[3]))\00", align 1
@.str.9 = private constant [197 x i8] c"Assert fail: ((((1 == int32(arg0.strides[3])) && (28 == int32(arg0.strides[2]))) && (784 == int32(arg0.strides[1]))) && (784 == int32(arg0.strides[0]))), arg0.strides: expected to be compact array\00", align 1
@.str.10 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg0, 0, 8))\00", align 1
@.str.11 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg0, 0, 10)), Argument arg0.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg0, 0, 10))\00", align 1
@.str.12 = private constant [85 x i8] c"Assert fail: (4 == tir.tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 4\00", align 1
@.str.13 = private constant [198 x i8] c"Assert fail: (((tir.tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tir.tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tir.tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.14 = private constant [124 x i8] c"Assert fail: (1 == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint: (1 == int32(arg1.shape[0]))\00", align 1
@.str.15 = private constant [124 x i8] c"Assert fail: (1 == int32(arg1.shape[1])), Argument arg1.shape[1] has an unsatisfied constraint: (1 == int32(arg1.shape[1]))\00", align 1
@.str.16 = private constant [126 x i8] c"Assert fail: (28 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint: (28 == int32(arg1.shape[2]))\00", align 1
@.str.17 = private constant [126 x i8] c"Assert fail: (28 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint: (28 == int32(arg1.shape[3]))\00", align 1
@.str.18 = private constant [197 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (28 == int32(arg1.strides[2]))) && (784 == int32(arg1.strides[1]))) && (784 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.19 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8))\00", align 1
@.str.20 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg1, 0, 10))\00", align 1
@.str.21 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg1, 0, 9))\00", align 1
@__TVMBackendAllocWorkspace = linkonce dllexport local_unnamed_addr global i8* (i32, i32, i64, i32, i32)* null, align 8
@__TVMBackendFreeWorkspace = linkonce dllexport local_unnamed_addr global i32 (i32, i32, i8*)* null, align 8
@__tvm_main__ = weak dllexport local_unnamed_addr constant [32 x i8] c"tvmgen_default_fused_nn_softmax\00", align 1
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

define dllexport i32 @tvmgen_default_fused_nn_softmax(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end48, %assert_fail47, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail37, %assert_fail35, %assert_fail33, %assert_fail31, %assert_fail29, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail47 ], [ %127, %assert_end48 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0))
  br label %common.ret

assert_end:                                       ; preds = %entry
  %8 = bitcast i8* %0 to %0**
  %arg049 = load %0*, %0** %8, align 8
  %9 = bitcast i8* %1 to i32*
  %arg0.code = load i32, i32* %9, align 4, !tbaa !8
  %10 = getelementptr inbounds i8, i8* %0, i64 8
  %11 = bitcast i8* %10 to %0**
  %arg150 = load %0*, %0** %11, align 8
  %12 = getelementptr inbounds i8, i8* %1, i64 4
  %13 = bitcast i8* %12 to i32*
  %arg1.code = load i32, i32* %13, align 4, !tbaa !22
  %14 = getelementptr inbounds %0, %0* %arg049, i64 0, i32 0
  %placeholder = load i8*, i8** %14, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %placeholder, i64 128) ]
  %15 = getelementptr inbounds %0, %0* %arg049, i64 0, i32 4
  %arg0.shape = load i64*, i64** %15, align 8
  %16 = getelementptr inbounds %0, %0* %arg049, i64 0, i32 5
  %arg0.strides = load i64*, i64** %16, align 8
  %17 = getelementptr inbounds %0, %0* %arg049, i64 0, i32 1, i32 1
  %dev_id = load i32, i32* %17, align 4
  %18 = getelementptr inbounds %0, %0* %arg150, i64 0, i32 0
  %T_softmax_norm = load i8*, i8** %18, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %T_softmax_norm, i64 128) ]
  %19 = getelementptr inbounds %0, %0* %arg150, i64 0, i32 4
  %arg1.shape = load i64*, i64** %19, align 8
  %20 = getelementptr inbounds %0, %0* %arg150, i64 0, i32 5
  %arg1.strides = load i64*, i64** %20, align 8
  switch i32 %arg0.code, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %21 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %21(i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.1, i64 0, i64 0))
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
  tail call void %22(i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.2, i64 0, i64 0))
  br label %common.ret

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  %23 = getelementptr inbounds %0, %0* %arg049, i64 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 4
  br i1 %25, label %assert_end8, label %assert_fail5, !prof !4

assert_fail5:                                     ; preds = %assert_end4
  %26 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %26(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0))
  br label %common.ret

assert_end8:                                      ; preds = %assert_end4
  %27 = getelementptr inbounds %0, %0* %arg049, i64 0, i32 3, i32 2
  %28 = load i16, i16* %27, align 2
  %29 = icmp eq i16 %28, 1
  %30 = getelementptr inbounds %0, %0* %arg049, i64 0, i32 3, i32 1
  %31 = load i8, i8* %30, align 1
  %32 = icmp eq i8 %31, 32
  %33 = getelementptr inbounds %0, %0* %arg049, i64 0, i32 3, i32 0
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
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %assert_end14, label %assert_fail13, !prof !4

assert_fail13:                                    ; preds = %assert_end12
  %47 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %47(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.6, i64 0, i64 0))
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
  %56 = icmp eq i32 %55, 28
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
  %61 = icmp ne <4 x i32> %60, <i32 784, i32 784, i32 28, i32 1>
  %62 = bitcast <4 x i1> %61 to i4
  %63 = icmp eq i4 %62, 0
  br i1 %63, label %if_end, label %assert_fail19, !prof !4

if_end:                                           ; preds = %if_then, %assert_end18
  %64 = getelementptr inbounds %0, %0* %arg049, i64 0, i32 6
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %assert_end22, label %assert_fail21, !prof !4

assert_fail19:                                    ; preds = %if_then
  %67 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %67(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.9, i64 0, i64 0))
  br label %common.ret

assert_fail21:                                    ; preds = %if_end
  %68 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %68(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.10, i64 0, i64 0))
  br label %common.ret

assert_end22:                                     ; preds = %if_end
  %69 = getelementptr inbounds %0, %0* %arg049, i64 0, i32 1, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %assert_end24, label %assert_fail23, !prof !4

assert_fail23:                                    ; preds = %assert_end22
  %72 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %72(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.11, i64 0, i64 0))
  br label %common.ret

assert_end24:                                     ; preds = %assert_end22
  %73 = getelementptr inbounds %0, %0* %arg150, i64 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %assert_end28, label %assert_fail25, !prof !4

assert_fail25:                                    ; preds = %assert_end24
  %76 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %76(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.12, i64 0, i64 0))
  br label %common.ret

assert_end28:                                     ; preds = %assert_end24
  %77 = getelementptr inbounds %0, %0* %arg150, i64 0, i32 3, i32 2
  %78 = load i16, i16* %77, align 2
  %79 = icmp eq i16 %78, 1
  %80 = getelementptr inbounds %0, %0* %arg150, i64 0, i32 3, i32 1
  %81 = load i8, i8* %80, align 1
  %82 = icmp eq i8 %81, 32
  %83 = getelementptr inbounds %0, %0* %arg150, i64 0, i32 3, i32 0
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
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %assert_end34, label %assert_fail33, !prof !4

assert_fail33:                                    ; preds = %assert_end32
  %97 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %97(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.15, i64 0, i64 0))
  br label %common.ret

assert_end34:                                     ; preds = %assert_end32
  %98 = getelementptr inbounds i64, i64* %arg1.shape, i64 2
  %99 = load i64, i64* %98, align 8, !tbaa !74
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %100, 28
  br i1 %101, label %assert_end36, label %assert_fail35, !prof !4

assert_fail35:                                    ; preds = %assert_end34
  %102 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %102(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.16, i64 0, i64 0))
  br label %common.ret

assert_end36:                                     ; preds = %assert_end34
  %103 = getelementptr inbounds i64, i64* %arg1.shape, i64 3
  %104 = load i64, i64* %103, align 8, !tbaa !77
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %105, 28
  br i1 %106, label %assert_end38, label %assert_fail37, !prof !4

assert_fail37:                                    ; preds = %assert_end36
  %107 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %107(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.17, i64 0, i64 0))
  br label %common.ret

assert_end38:                                     ; preds = %assert_end36
  %.not51 = icmp eq i64* %arg1.strides, null
  br i1 %.not51, label %if_end40, label %if_then39, !prof !45

if_then39:                                        ; preds = %assert_end38
  %108 = bitcast i64* %arg1.strides to <4 x i64>*
  %109 = load <4 x i64>, <4 x i64>* %108, align 8, !tbaa !79
  %110 = trunc <4 x i64> %109 to <4 x i32>
  %111 = icmp ne <4 x i32> %110, <i32 784, i32 784, i32 28, i32 1>
  %112 = bitcast <4 x i1> %111 to i4
  %113 = icmp eq i4 %112, 0
  br i1 %113, label %if_end40, label %assert_fail41, !prof !4

if_end40:                                         ; preds = %if_then39, %assert_end38
  %114 = getelementptr inbounds %0, %0* %arg150, i64 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %assert_end44, label %assert_fail43, !prof !4

assert_fail41:                                    ; preds = %if_then39
  %117 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %117(i8* getelementptr inbounds ([197 x i8], [197 x i8]* @.str.18, i64 0, i64 0))
  br label %common.ret

assert_fail43:                                    ; preds = %if_end40
  %118 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %118(i8* getelementptr inbounds ([163 x i8], [163 x i8]* @.str.19, i64 0, i64 0))
  br label %common.ret

assert_end44:                                     ; preds = %if_end40
  %119 = getelementptr inbounds %0, %0* %arg150, i64 0, i32 1, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 %120, 1
  br i1 %121, label %assert_end46, label %assert_fail45, !prof !4

assert_fail45:                                    ; preds = %assert_end44
  %122 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %122(i8* getelementptr inbounds ([149 x i8], [149 x i8]* @.str.20, i64 0, i64 0))
  br label %common.ret

assert_end46:                                     ; preds = %assert_end44
  %123 = getelementptr inbounds %0, %0* %arg150, i64 0, i32 1, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %dev_id, %124
  br i1 %125, label %assert_end48, label %assert_fail47, !prof !4

assert_fail47:                                    ; preds = %assert_end46
  %126 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %126(i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.21, i64 0, i64 0))
  br label %common.ret

assert_end48:                                     ; preds = %assert_end46
  %127 = tail call fastcc i32 @tvmgen_default_fused_nn_softmax_compute_(i8* %placeholder, i8* %T_softmax_norm, i32 %dev_id)
  br label %common.ret
}

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #0

; Function Attrs: noinline
define internal fastcc i32 @tvmgen_default_fused_nn_softmax_compute_(i8* noalias nocapture readonly align 128 %0, i8* noalias nocapture writeonly align 128 %1, i32 %2) unnamed_addr #1 {
entry:
  %3 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !5
  %T_softmax_maxelem = tail call i8* %3(i32 1, i32 %2, i64 3136, i32 2, i32 32)
  call void @llvm.assume(i1 true) [ "align"(i8* %T_softmax_maxelem, i64 128) ]
  %4 = icmp eq i8* %T_softmax_maxelem, null
  br i1 %4, label %common.ret, label %if_end, !prof !4

common.ret:                                       ; preds = %if_end25, %for_end_i218, %if_end, %entry
  %common.ret.op = phi i32 [ -1, %entry ], [ -1, %if_end ], [ -1, %for_end_i218 ], [ %., %if_end25 ]
  ret i32 %common.ret.op

if_end:                                           ; preds = %entry
  %5 = load i8* (i32, i32, i64, i32, i32)*, i8* (i32, i32, i64, i32, i32)** @__TVMBackendAllocWorkspace, align 8, !tbaa !5
  %T_softmax_expsum = tail call i8* %5(i32 1, i32 %2, i64 3136, i32 2, i32 32)
  call void @llvm.assume(i1 true) [ "align"(i8* %T_softmax_expsum, i64 128) ]
  %6 = icmp eq i8* %T_softmax_expsum, null
  br i1 %6, label %common.ret, label %for_begin_i1.preheader, !prof !4

for_begin_i1.preheader:                           ; preds = %if_end
  %7 = bitcast i8* %T_softmax_maxelem to float*
  %8 = bitcast i8* %0 to float*
  br label %for_begin_i2.preheader

for_begin_i2.preheader:                           ; preds = %for_begin_i1.preheader, %for_begin_i2.preheader
  %indvars.iv65 = phi i64 [ 0, %for_begin_i1.preheader ], [ %indvars.iv.next66, %for_begin_i2.preheader ]
  %9 = mul nuw nsw i64 %indvars.iv65, 28
  %10 = getelementptr inbounds float, float* %7, i64 %9
  %11 = getelementptr inbounds float, float* %8, i64 %9
  %12 = bitcast float* %11 to <4 x float>*
  %13 = load <4 x float>, <4 x float>* %12, align 16, !tbaa !91
  %14 = fcmp olt <4 x float> %13, <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %15 = select <4 x i1> %14, <4 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, <4 x float> %13
  %16 = bitcast float* %10 to <4 x float>*
  store <4 x float> %15, <4 x float>* %16, align 16, !tbaa !94
  %17 = add nuw nsw i64 %9, 4
  %18 = getelementptr inbounds float, float* %7, i64 %17
  %19 = getelementptr inbounds float, float* %8, i64 %17
  %20 = bitcast float* %19 to <4 x float>*
  %21 = load <4 x float>, <4 x float>* %20, align 16, !tbaa !91
  %22 = fcmp olt <4 x float> %21, <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %23 = select <4 x i1> %22, <4 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, <4 x float> %21
  %24 = bitcast float* %18 to <4 x float>*
  store <4 x float> %23, <4 x float>* %24, align 16, !tbaa !94
  %25 = add nuw nsw i64 %9, 8
  %26 = getelementptr inbounds float, float* %7, i64 %25
  %27 = getelementptr inbounds float, float* %8, i64 %25
  %28 = bitcast float* %27 to <4 x float>*
  %29 = load <4 x float>, <4 x float>* %28, align 16, !tbaa !91
  %30 = fcmp olt <4 x float> %29, <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %31 = select <4 x i1> %30, <4 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, <4 x float> %29
  %32 = bitcast float* %26 to <4 x float>*
  store <4 x float> %31, <4 x float>* %32, align 16, !tbaa !94
  %33 = add nuw nsw i64 %9, 12
  %34 = getelementptr inbounds float, float* %7, i64 %33
  %35 = getelementptr inbounds float, float* %8, i64 %33
  %36 = bitcast float* %35 to <4 x float>*
  %37 = load <4 x float>, <4 x float>* %36, align 16, !tbaa !91
  %38 = fcmp olt <4 x float> %37, <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %39 = select <4 x i1> %38, <4 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, <4 x float> %37
  %40 = bitcast float* %34 to <4 x float>*
  store <4 x float> %39, <4 x float>* %40, align 16, !tbaa !94
  %41 = add nuw nsw i64 %9, 16
  %42 = getelementptr inbounds float, float* %7, i64 %41
  %43 = getelementptr inbounds float, float* %8, i64 %41
  %44 = bitcast float* %43 to <4 x float>*
  %45 = load <4 x float>, <4 x float>* %44, align 16, !tbaa !91
  %46 = fcmp olt <4 x float> %45, <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %47 = select <4 x i1> %46, <4 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, <4 x float> %45
  %48 = bitcast float* %42 to <4 x float>*
  store <4 x float> %47, <4 x float>* %48, align 16, !tbaa !94
  %49 = add nuw nsw i64 %9, 20
  %50 = getelementptr inbounds float, float* %7, i64 %49
  %51 = getelementptr inbounds float, float* %8, i64 %49
  %52 = bitcast float* %51 to <4 x float>*
  %53 = load <4 x float>, <4 x float>* %52, align 16, !tbaa !91
  %54 = fcmp olt <4 x float> %53, <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %55 = select <4 x i1> %54, <4 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, <4 x float> %53
  %56 = bitcast float* %50 to <4 x float>*
  store <4 x float> %55, <4 x float>* %56, align 16, !tbaa !94
  %57 = add nuw nsw i64 %9, 24
  %58 = getelementptr inbounds float, float* %7, i64 %57
  %59 = getelementptr inbounds float, float* %8, i64 %57
  %60 = bitcast float* %59 to <4 x float>*
  %61 = load <4 x float>, <4 x float>* %60, align 16, !tbaa !91
  %62 = fcmp olt <4 x float> %61, <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>
  %63 = select <4 x i1> %62, <4 x float> <float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000, float 0xC7EFFFFFE0000000>, <4 x float> %61
  %64 = bitcast float* %58 to <4 x float>*
  store <4 x float> %63, <4 x float>* %64, align 16, !tbaa !94
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %exitcond68.not = icmp eq i64 %indvars.iv.next66, 28
  br i1 %exitcond68.not, label %for_begin_i3.preheader, label %for_begin_i2.preheader, !prof !45

for_begin_i3.preheader:                           ; preds = %for_begin_i2.preheader, %for_begin_i3.preheader
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for_begin_i3.preheader ], [ 0, %for_begin_i2.preheader ]
  %65 = mul nuw nsw i64 %indvars.iv56, 28
  %66 = getelementptr inbounds float, float* %7, i64 %65
  %67 = getelementptr inbounds float, float* %8, i64 %65
  %68 = bitcast float* %66 to <4 x float>*
  %69 = load <4 x float>, <4 x float>* %68, align 16, !tbaa !94
  %70 = bitcast float* %67 to <4 x float>*
  %71 = load <4 x float>, <4 x float>* %70, align 16, !tbaa !91
  %72 = fsub <4 x float> %71, %69
  %73 = call <4 x float> @llvm.exp.v4f32(<4 x float> %72)
  %74 = bitcast float* %66 to <4 x float>*
  store <4 x float> %73, <4 x float>* %74, align 16, !tbaa !94
  %75 = add nuw nsw i64 %65, 4
  %76 = getelementptr inbounds float, float* %7, i64 %75
  %77 = getelementptr inbounds float, float* %8, i64 %75
  %78 = bitcast float* %76 to <4 x float>*
  %79 = load <4 x float>, <4 x float>* %78, align 16, !tbaa !94
  %80 = bitcast float* %77 to <4 x float>*
  %81 = load <4 x float>, <4 x float>* %80, align 16, !tbaa !91
  %82 = fsub <4 x float> %81, %79
  %83 = call <4 x float> @llvm.exp.v4f32(<4 x float> %82)
  %84 = bitcast float* %76 to <4 x float>*
  store <4 x float> %83, <4 x float>* %84, align 16, !tbaa !94
  %85 = add nuw nsw i64 %65, 8
  %86 = getelementptr inbounds float, float* %7, i64 %85
  %87 = getelementptr inbounds float, float* %8, i64 %85
  %88 = bitcast float* %86 to <4 x float>*
  %89 = load <4 x float>, <4 x float>* %88, align 16, !tbaa !94
  %90 = bitcast float* %87 to <4 x float>*
  %91 = load <4 x float>, <4 x float>* %90, align 16, !tbaa !91
  %92 = fsub <4 x float> %91, %89
  %93 = call <4 x float> @llvm.exp.v4f32(<4 x float> %92)
  %94 = bitcast float* %86 to <4 x float>*
  store <4 x float> %93, <4 x float>* %94, align 16, !tbaa !94
  %95 = add nuw nsw i64 %65, 12
  %96 = getelementptr inbounds float, float* %7, i64 %95
  %97 = getelementptr inbounds float, float* %8, i64 %95
  %98 = bitcast float* %96 to <4 x float>*
  %99 = load <4 x float>, <4 x float>* %98, align 16, !tbaa !94
  %100 = bitcast float* %97 to <4 x float>*
  %101 = load <4 x float>, <4 x float>* %100, align 16, !tbaa !91
  %102 = fsub <4 x float> %101, %99
  %103 = call <4 x float> @llvm.exp.v4f32(<4 x float> %102)
  %104 = bitcast float* %96 to <4 x float>*
  store <4 x float> %103, <4 x float>* %104, align 16, !tbaa !94
  %105 = add nuw nsw i64 %65, 16
  %106 = getelementptr inbounds float, float* %7, i64 %105
  %107 = getelementptr inbounds float, float* %8, i64 %105
  %108 = bitcast float* %106 to <4 x float>*
  %109 = load <4 x float>, <4 x float>* %108, align 16, !tbaa !94
  %110 = bitcast float* %107 to <4 x float>*
  %111 = load <4 x float>, <4 x float>* %110, align 16, !tbaa !91
  %112 = fsub <4 x float> %111, %109
  %113 = call <4 x float> @llvm.exp.v4f32(<4 x float> %112)
  %114 = bitcast float* %106 to <4 x float>*
  store <4 x float> %113, <4 x float>* %114, align 16, !tbaa !94
  %115 = add nuw nsw i64 %65, 20
  %116 = getelementptr inbounds float, float* %7, i64 %115
  %117 = getelementptr inbounds float, float* %8, i64 %115
  %118 = bitcast float* %116 to <4 x float>*
  %119 = load <4 x float>, <4 x float>* %118, align 16, !tbaa !94
  %120 = bitcast float* %117 to <4 x float>*
  %121 = load <4 x float>, <4 x float>* %120, align 16, !tbaa !91
  %122 = fsub <4 x float> %121, %119
  %123 = call <4 x float> @llvm.exp.v4f32(<4 x float> %122)
  %124 = bitcast float* %116 to <4 x float>*
  store <4 x float> %123, <4 x float>* %124, align 16, !tbaa !94
  %125 = add nuw nsw i64 %65, 24
  %126 = getelementptr inbounds float, float* %7, i64 %125
  %127 = getelementptr inbounds float, float* %8, i64 %125
  %128 = bitcast float* %126 to <4 x float>*
  %129 = load <4 x float>, <4 x float>* %128, align 16, !tbaa !94
  %130 = bitcast float* %127 to <4 x float>*
  %131 = load <4 x float>, <4 x float>* %130, align 16, !tbaa !91
  %132 = fsub <4 x float> %131, %129
  %133 = call <4 x float> @llvm.exp.v4f32(<4 x float> %132)
  %134 = bitcast float* %126 to <4 x float>*
  store <4 x float> %133, <4 x float>* %134, align 16, !tbaa !94
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %exitcond59.not = icmp eq i64 %indvars.iv.next57, 28
  br i1 %exitcond59.not, label %for_begin_i18.preheader, label %for_begin_i3.preheader, !prof !45

for_begin_i18.preheader:                          ; preds = %for_begin_i3.preheader
  %135 = bitcast i8* %T_softmax_expsum to float*
  br label %for_begin_i212.preheader

for_begin_i212.preheader:                         ; preds = %for_begin_i18.preheader, %for_begin_i212.preheader
  %indvars.iv47 = phi i64 [ 0, %for_begin_i18.preheader ], [ %indvars.iv.next48, %for_begin_i212.preheader ]
  %136 = mul nuw nsw i64 %indvars.iv47, 28
  %137 = getelementptr inbounds float, float* %135, i64 %136
  %138 = getelementptr inbounds float, float* %7, i64 %136
  %139 = bitcast float* %138 to <4 x float>*
  %140 = load <4 x float>, <4 x float>* %139, align 16, !tbaa !94
  %141 = fadd <4 x float> %140, zeroinitializer
  %142 = bitcast float* %137 to <4 x float>*
  store <4 x float> %141, <4 x float>* %142, align 16, !tbaa !97
  %143 = add nuw nsw i64 %136, 4
  %144 = getelementptr inbounds float, float* %135, i64 %143
  %145 = getelementptr inbounds float, float* %7, i64 %143
  %146 = bitcast float* %145 to <4 x float>*
  %147 = load <4 x float>, <4 x float>* %146, align 16, !tbaa !94
  %148 = fadd <4 x float> %147, zeroinitializer
  %149 = bitcast float* %144 to <4 x float>*
  store <4 x float> %148, <4 x float>* %149, align 16, !tbaa !97
  %150 = add nuw nsw i64 %136, 8
  %151 = getelementptr inbounds float, float* %135, i64 %150
  %152 = getelementptr inbounds float, float* %7, i64 %150
  %153 = bitcast float* %152 to <4 x float>*
  %154 = load <4 x float>, <4 x float>* %153, align 16, !tbaa !94
  %155 = fadd <4 x float> %154, zeroinitializer
  %156 = bitcast float* %151 to <4 x float>*
  store <4 x float> %155, <4 x float>* %156, align 16, !tbaa !97
  %157 = add nuw nsw i64 %136, 12
  %158 = getelementptr inbounds float, float* %135, i64 %157
  %159 = getelementptr inbounds float, float* %7, i64 %157
  %160 = bitcast float* %159 to <4 x float>*
  %161 = load <4 x float>, <4 x float>* %160, align 16, !tbaa !94
  %162 = fadd <4 x float> %161, zeroinitializer
  %163 = bitcast float* %158 to <4 x float>*
  store <4 x float> %162, <4 x float>* %163, align 16, !tbaa !97
  %164 = add nuw nsw i64 %136, 16
  %165 = getelementptr inbounds float, float* %135, i64 %164
  %166 = getelementptr inbounds float, float* %7, i64 %164
  %167 = bitcast float* %166 to <4 x float>*
  %168 = load <4 x float>, <4 x float>* %167, align 16, !tbaa !94
  %169 = fadd <4 x float> %168, zeroinitializer
  %170 = bitcast float* %165 to <4 x float>*
  store <4 x float> %169, <4 x float>* %170, align 16, !tbaa !97
  %171 = add nuw nsw i64 %136, 20
  %172 = getelementptr inbounds float, float* %135, i64 %171
  %173 = getelementptr inbounds float, float* %7, i64 %171
  %174 = bitcast float* %173 to <4 x float>*
  %175 = load <4 x float>, <4 x float>* %174, align 16, !tbaa !94
  %176 = fadd <4 x float> %175, zeroinitializer
  %177 = bitcast float* %172 to <4 x float>*
  store <4 x float> %176, <4 x float>* %177, align 16, !tbaa !97
  %178 = add nuw nsw i64 %136, 24
  %179 = getelementptr inbounds float, float* %135, i64 %178
  %180 = getelementptr inbounds float, float* %7, i64 %178
  %181 = bitcast float* %180 to <4 x float>*
  %182 = load <4 x float>, <4 x float>* %181, align 16, !tbaa !94
  %183 = fadd <4 x float> %182, zeroinitializer
  %184 = bitcast float* %179 to <4 x float>*
  store <4 x float> %183, <4 x float>* %184, align 16, !tbaa !97
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next48, 28
  br i1 %exitcond50.not, label %for_begin_i216.preheader, label %for_begin_i212.preheader, !prof !45

for_begin_i216.preheader:                         ; preds = %for_begin_i212.preheader
  %185 = bitcast i8* %1 to float*
  br label %for_begin_i320.preheader

for_begin_i320.preheader:                         ; preds = %for_begin_i216.preheader, %for_begin_i320.preheader
  %indvars.iv = phi i64 [ 0, %for_begin_i216.preheader ], [ %indvars.iv.next, %for_begin_i320.preheader ]
  %186 = mul nuw nsw i64 %indvars.iv, 28
  %187 = getelementptr inbounds float, float* %7, i64 %186
  %188 = getelementptr inbounds float, float* %135, i64 %186
  %189 = getelementptr inbounds float, float* %185, i64 %186
  %190 = bitcast float* %187 to <4 x float>*
  %191 = load <4 x float>, <4 x float>* %190, align 16, !tbaa !94
  %192 = bitcast float* %188 to <4 x float>*
  %193 = load <4 x float>, <4 x float>* %192, align 16, !tbaa !97
  %194 = fdiv <4 x float> %191, %193
  %195 = bitcast float* %189 to <4 x float>*
  store <4 x float> %194, <4 x float>* %195, align 16, !tbaa !100
  %196 = add nuw nsw i64 %186, 4
  %197 = getelementptr inbounds float, float* %7, i64 %196
  %198 = getelementptr inbounds float, float* %135, i64 %196
  %199 = getelementptr inbounds float, float* %185, i64 %196
  %200 = bitcast float* %197 to <4 x float>*
  %201 = load <4 x float>, <4 x float>* %200, align 16, !tbaa !94
  %202 = bitcast float* %198 to <4 x float>*
  %203 = load <4 x float>, <4 x float>* %202, align 16, !tbaa !97
  %204 = fdiv <4 x float> %201, %203
  %205 = bitcast float* %199 to <4 x float>*
  store <4 x float> %204, <4 x float>* %205, align 16, !tbaa !100
  %206 = add nuw nsw i64 %186, 8
  %207 = getelementptr inbounds float, float* %7, i64 %206
  %208 = getelementptr inbounds float, float* %135, i64 %206
  %209 = getelementptr inbounds float, float* %185, i64 %206
  %210 = bitcast float* %207 to <4 x float>*
  %211 = load <4 x float>, <4 x float>* %210, align 16, !tbaa !94
  %212 = bitcast float* %208 to <4 x float>*
  %213 = load <4 x float>, <4 x float>* %212, align 16, !tbaa !97
  %214 = fdiv <4 x float> %211, %213
  %215 = bitcast float* %209 to <4 x float>*
  store <4 x float> %214, <4 x float>* %215, align 16, !tbaa !100
  %216 = add nuw nsw i64 %186, 12
  %217 = getelementptr inbounds float, float* %7, i64 %216
  %218 = getelementptr inbounds float, float* %135, i64 %216
  %219 = getelementptr inbounds float, float* %185, i64 %216
  %220 = bitcast float* %217 to <4 x float>*
  %221 = load <4 x float>, <4 x float>* %220, align 16, !tbaa !94
  %222 = bitcast float* %218 to <4 x float>*
  %223 = load <4 x float>, <4 x float>* %222, align 16, !tbaa !97
  %224 = fdiv <4 x float> %221, %223
  %225 = bitcast float* %219 to <4 x float>*
  store <4 x float> %224, <4 x float>* %225, align 16, !tbaa !100
  %226 = add nuw nsw i64 %186, 16
  %227 = getelementptr inbounds float, float* %7, i64 %226
  %228 = getelementptr inbounds float, float* %135, i64 %226
  %229 = getelementptr inbounds float, float* %185, i64 %226
  %230 = bitcast float* %227 to <4 x float>*
  %231 = load <4 x float>, <4 x float>* %230, align 16, !tbaa !94
  %232 = bitcast float* %228 to <4 x float>*
  %233 = load <4 x float>, <4 x float>* %232, align 16, !tbaa !97
  %234 = fdiv <4 x float> %231, %233
  %235 = bitcast float* %229 to <4 x float>*
  store <4 x float> %234, <4 x float>* %235, align 16, !tbaa !100
  %236 = add nuw nsw i64 %186, 20
  %237 = getelementptr inbounds float, float* %7, i64 %236
  %238 = getelementptr inbounds float, float* %135, i64 %236
  %239 = getelementptr inbounds float, float* %185, i64 %236
  %240 = bitcast float* %237 to <4 x float>*
  %241 = load <4 x float>, <4 x float>* %240, align 16, !tbaa !94
  %242 = bitcast float* %238 to <4 x float>*
  %243 = load <4 x float>, <4 x float>* %242, align 16, !tbaa !97
  %244 = fdiv <4 x float> %241, %243
  %245 = bitcast float* %239 to <4 x float>*
  store <4 x float> %244, <4 x float>* %245, align 16, !tbaa !100
  %246 = add nuw nsw i64 %186, 24
  %247 = getelementptr inbounds float, float* %7, i64 %246
  %248 = getelementptr inbounds float, float* %135, i64 %246
  %249 = getelementptr inbounds float, float* %185, i64 %246
  %250 = bitcast float* %247 to <4 x float>*
  %251 = load <4 x float>, <4 x float>* %250, align 16, !tbaa !94
  %252 = bitcast float* %248 to <4 x float>*
  %253 = load <4 x float>, <4 x float>* %252, align 16, !tbaa !97
  %254 = fdiv <4 x float> %251, %253
  %255 = bitcast float* %249 to <4 x float>*
  store <4 x float> %254, <4 x float>* %255, align 16, !tbaa !100
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 28
  br i1 %exitcond.not, label %for_end_i218, label %for_begin_i320.preheader, !prof !45

for_end_i218:                                     ; preds = %for_begin_i320.preheader
  %256 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !5
  %257 = tail call i32 %256(i32 1, i32 %2, i8* nonnull %T_softmax_expsum)
  %.not = icmp eq i32 %257, 0
  br i1 %.not, label %if_end25, label %common.ret, !prof !45

if_end25:                                         ; preds = %for_end_i218
  %258 = load i32 (i32, i32, i8*)*, i32 (i32, i32, i8*)** @__TVMBackendFreeWorkspace, align 8, !tbaa !5
  %259 = tail call i32 %258(i32 1, i32 %2, i8* nonnull %T_softmax_maxelem)
  %.not30 = icmp ne i32 %259, 0
  %. = sext i1 %.not30 to i32
  br label %common.ret
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #2

attributes #0 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
attributes #1 = { noinline }
attributes #2 = { nofree nosync nounwind readnone speculatable willreturn }

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
!9 = !{!"0x5e80070.w1.b0", !10, i64 0}
!10 = !{!"0x5e80070.w2.b0", !11, i64 0}
!11 = !{!"0x5e80070.w4.b0", !12, i64 0}
!12 = !{!"0x5e80070.w8.b0", !13, i64 0}
!13 = !{!"0x5e80070.w16.b0", !14, i64 0}
!14 = !{!"0x5e80070.w32.b0", !15, i64 0}
!15 = !{!"0x5e80070.w64.b0", !16, i64 0}
!16 = !{!"0x5e80070.w128.b0", !17, i64 0}
!17 = !{!"0x5e80070.w256.b0", !18, i64 0}
!18 = !{!"0x5e80070.w512.b0", !19, i64 0}
!19 = !{!"0x5e80070.w1024.b0", !20, i64 0}
!20 = !{!"i8*", !21, i64 0}
!21 = !{!"0x5e80070", !7, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"0x5e80070.w1.b1", !10, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"0x5e68860.w1.b0", !26, i64 0}
!26 = !{!"0x5e68860.w2.b0", !27, i64 0}
!27 = !{!"0x5e68860.w4.b0", !28, i64 0}
!28 = !{!"0x5e68860.w8.b0", !29, i64 0}
!29 = !{!"0x5e68860.w16.b0", !30, i64 0}
!30 = !{!"0x5e68860.w32.b0", !31, i64 0}
!31 = !{!"0x5e68860.w64.b0", !32, i64 0}
!32 = !{!"0x5e68860.w128.b0", !33, i64 0}
!33 = !{!"0x5e68860.w256.b0", !34, i64 0}
!34 = !{!"0x5e68860.w512.b0", !35, i64 0}
!35 = !{!"0x5e68860.w1024.b0", !36, i64 0}
!36 = !{!"i8*", !37, i64 0}
!37 = !{!"0x5e68860", !7, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"0x5e68860.w1.b1", !26, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"0x5e68860.w1.b2", !42, i64 0}
!42 = !{!"0x5e68860.w2.b2", !27, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"0x5e68860.w1.b3", !42, i64 0}
!45 = !{!"branch_weights", i32 1, i32 1048576}
!46 = !{!47, !47, i64 0}
!47 = !{!"0x5e7cd10.w4.b0", !48, i64 0}
!48 = !{!"0x5e7cd10.w8.b0", !49, i64 0}
!49 = !{!"0x5e7cd10.w16.b0", !50, i64 0}
!50 = !{!"0x5e7cd10.w32.b0", !51, i64 0}
!51 = !{!"0x5e7cd10.w64.b0", !52, i64 0}
!52 = !{!"0x5e7cd10.w128.b0", !53, i64 0}
!53 = !{!"0x5e7cd10.w256.b0", !54, i64 0}
!54 = !{!"0x5e7cd10.w512.b0", !55, i64 0}
!55 = !{!"0x5e7cd10.w1024.b0", !56, i64 0}
!56 = !{!"i8*", !57, i64 0}
!57 = !{!"0x5e7cd10", !7, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"0x5e75380.w1.b0", !60, i64 0}
!60 = !{!"0x5e75380.w2.b0", !61, i64 0}
!61 = !{!"0x5e75380.w4.b0", !62, i64 0}
!62 = !{!"0x5e75380.w8.b0", !63, i64 0}
!63 = !{!"0x5e75380.w16.b0", !64, i64 0}
!64 = !{!"0x5e75380.w32.b0", !65, i64 0}
!65 = !{!"0x5e75380.w64.b0", !66, i64 0}
!66 = !{!"0x5e75380.w128.b0", !67, i64 0}
!67 = !{!"0x5e75380.w256.b0", !68, i64 0}
!68 = !{!"0x5e75380.w512.b0", !69, i64 0}
!69 = !{!"0x5e75380.w1024.b0", !70, i64 0}
!70 = !{!"i8*", !71, i64 0}
!71 = !{!"0x5e75380", !7, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"0x5e75380.w1.b1", !60, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"0x5e75380.w1.b2", !76, i64 0}
!76 = !{!"0x5e75380.w2.b2", !61, i64 0}
!77 = !{!78, !78, i64 0}
!78 = !{!"0x5e75380.w1.b3", !76, i64 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"0x5e78620.w4.b0", !81, i64 0}
!81 = !{!"0x5e78620.w8.b0", !82, i64 0}
!82 = !{!"0x5e78620.w16.b0", !83, i64 0}
!83 = !{!"0x5e78620.w32.b0", !84, i64 0}
!84 = !{!"0x5e78620.w64.b0", !85, i64 0}
!85 = !{!"0x5e78620.w128.b0", !86, i64 0}
!86 = !{!"0x5e78620.w256.b0", !87, i64 0}
!87 = !{!"0x5e78620.w512.b0", !88, i64 0}
!88 = !{!"0x5e78620.w1024.b0", !89, i64 0}
!89 = !{!"i8*", !90, i64 0}
!90 = !{!"0x5e78620", !7, i64 0}
!91 = !{!92, !92, i64 0}
!92 = !{!"float", !93, i64 0}
!93 = !{!"0x5e7e790", !7, i64 0}
!94 = !{!95, !95, i64 0}
!95 = !{!"float", !96, i64 0}
!96 = !{!"0x5e693d0", !7, i64 0}
!97 = !{!98, !98, i64 0}
!98 = !{!"float", !99, i64 0}
!99 = !{!"0x5e6e2c0", !7, i64 0}
!100 = !{!101, !101, i64 0}
!101 = !{!"float", !102, i64 0}
!102 = !{!"0x5e74900", !7, i64 0}
