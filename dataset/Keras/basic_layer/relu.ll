; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i8*, %1, i32, %2, i64*, i64*, i64 }
%1 = type { i32, i32 }
%2 = type { i8, i8, i16 }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@.str = private constant [81 x i8] c"Assert fail: (num_args == 2), tvmgen_default_fused_nn_relu: num_args should be 2\00", align 1
@.str.1 = private constant [156 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_relu: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [156 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_relu: Expect arg[1] to be pointer\00", align 1
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
@__tvm_main__ = weak dllexport local_unnamed_addr constant [29 x i8] c"tvmgen_default_fused_nn_relu\00", align 1
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

define dllexport i32 @tvmgen_default_fused_nn_relu(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end48, %assert_fail47, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail37, %assert_fail35, %assert_fail33, %assert_fail31, %assert_fail29, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail47 ], [ 0, %assert_end48 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0))
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
  %T_relu = load i8*, i8** %18, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %T_relu, i64 128) ]
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
  tail call void %21(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.1, i64 0, i64 0))
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
  tail call void %22(i8* getelementptr inbounds ([156 x i8], [156 x i8]* @.str.2, i64 0, i64 0))
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
  tail call fastcc void @tvmgen_default_fused_nn_relu_compute_(i8* %T_relu, i8* %placeholder)
  br label %common.ret
}

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #0

; Function Attrs: nofree noinline norecurse nosync nounwind
define internal fastcc void @tvmgen_default_fused_nn_relu_compute_(i8* noalias nocapture writeonly align 128 %0, i8* noalias nocapture readonly align 128 %1) unnamed_addr #1 {
entry:
  %2 = bitcast i8* %1 to float*
  %3 = bitcast i8* %0 to float*
  br label %if_end.15.1

for_end_ax2:                                      ; preds = %if_end.15.1
  ret void

if_end.15.1:                                      ; preds = %entry, %if_end.15.1
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %if_end.15.1 ]
  %4 = mul nuw nsw i64 %indvars.iv, 28
  %5 = getelementptr inbounds float, float* %2, i64 %4
  %6 = getelementptr inbounds float, float* %3, i64 %4
  %7 = bitcast float* %5 to <4 x float>*
  %8 = load <4 x float>, <4 x float>* %7, align 16, !tbaa !91
  %9 = fcmp ogt <4 x float> %8, zeroinitializer
  %10 = select <4 x i1> %9, <4 x float> %8, <4 x float> zeroinitializer
  %11 = bitcast float* %6 to <4 x float>*
  store <4 x float> %10, <4 x float>* %11, align 16, !tbaa !94
  %12 = add nuw nsw i64 %4, 4
  %13 = getelementptr inbounds float, float* %2, i64 %12
  %14 = getelementptr inbounds float, float* %3, i64 %12
  %15 = bitcast float* %13 to <4 x float>*
  %16 = load <4 x float>, <4 x float>* %15, align 16, !tbaa !91
  %17 = fcmp ogt <4 x float> %16, zeroinitializer
  %18 = select <4 x i1> %17, <4 x float> %16, <4 x float> zeroinitializer
  %19 = bitcast float* %14 to <4 x float>*
  store <4 x float> %18, <4 x float>* %19, align 16, !tbaa !94
  %20 = add nuw nsw i64 %4, 8
  %21 = getelementptr inbounds float, float* %2, i64 %20
  %22 = getelementptr inbounds float, float* %3, i64 %20
  %23 = bitcast float* %21 to <4 x float>*
  %24 = load <4 x float>, <4 x float>* %23, align 16, !tbaa !91
  %25 = fcmp ogt <4 x float> %24, zeroinitializer
  %26 = select <4 x i1> %25, <4 x float> %24, <4 x float> zeroinitializer
  %27 = bitcast float* %22 to <4 x float>*
  store <4 x float> %26, <4 x float>* %27, align 16, !tbaa !94
  %28 = add nuw nsw i64 %4, 12
  %29 = getelementptr inbounds float, float* %2, i64 %28
  %30 = getelementptr inbounds float, float* %3, i64 %28
  %31 = bitcast float* %29 to <4 x float>*
  %32 = load <4 x float>, <4 x float>* %31, align 16, !tbaa !91
  %33 = fcmp ogt <4 x float> %32, zeroinitializer
  %34 = select <4 x i1> %33, <4 x float> %32, <4 x float> zeroinitializer
  %35 = bitcast float* %30 to <4 x float>*
  store <4 x float> %34, <4 x float>* %35, align 16, !tbaa !94
  %36 = add nuw nsw i64 %4, 16
  %37 = getelementptr inbounds float, float* %2, i64 %36
  %38 = getelementptr inbounds float, float* %3, i64 %36
  %39 = bitcast float* %37 to <4 x float>*
  %40 = load <4 x float>, <4 x float>* %39, align 16, !tbaa !91
  %41 = fcmp ogt <4 x float> %40, zeroinitializer
  %42 = select <4 x i1> %41, <4 x float> %40, <4 x float> zeroinitializer
  %43 = bitcast float* %38 to <4 x float>*
  store <4 x float> %42, <4 x float>* %43, align 16, !tbaa !94
  %44 = add nuw nsw i64 %4, 20
  %45 = getelementptr inbounds float, float* %2, i64 %44
  %46 = getelementptr inbounds float, float* %3, i64 %44
  %47 = bitcast float* %45 to <4 x float>*
  %48 = load <4 x float>, <4 x float>* %47, align 16, !tbaa !91
  %49 = fcmp ogt <4 x float> %48, zeroinitializer
  %50 = select <4 x i1> %49, <4 x float> %48, <4 x float> zeroinitializer
  %51 = bitcast float* %46 to <4 x float>*
  store <4 x float> %50, <4 x float>* %51, align 16, !tbaa !94
  %52 = add nuw nsw i64 %4, 24
  %53 = getelementptr inbounds float, float* %2, i64 %52
  %54 = getelementptr inbounds float, float* %3, i64 %52
  %55 = bitcast float* %53 to <4 x float>*
  %56 = load <4 x float>, <4 x float>* %55, align 16, !tbaa !91
  %57 = fcmp ogt <4 x float> %56, zeroinitializer
  %58 = select <4 x i1> %57, <4 x float> %56, <4 x float> zeroinitializer
  %59 = bitcast float* %54 to <4 x float>*
  store <4 x float> %58, <4 x float>* %59, align 16, !tbaa !94
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 28
  br i1 %exitcond.not, label %for_end_ax2, label %if_end.15.1, !prof !45
}

attributes #0 = { inaccessiblememonly mustprogress nofree nosync nounwind willreturn }
attributes #1 = { nofree noinline norecurse nosync nounwind }

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
!9 = !{!"0x1f77590.w1.b0", !10, i64 0}
!10 = !{!"0x1f77590.w2.b0", !11, i64 0}
!11 = !{!"0x1f77590.w4.b0", !12, i64 0}
!12 = !{!"0x1f77590.w8.b0", !13, i64 0}
!13 = !{!"0x1f77590.w16.b0", !14, i64 0}
!14 = !{!"0x1f77590.w32.b0", !15, i64 0}
!15 = !{!"0x1f77590.w64.b0", !16, i64 0}
!16 = !{!"0x1f77590.w128.b0", !17, i64 0}
!17 = !{!"0x1f77590.w256.b0", !18, i64 0}
!18 = !{!"0x1f77590.w512.b0", !19, i64 0}
!19 = !{!"0x1f77590.w1024.b0", !20, i64 0}
!20 = !{!"i8*", !21, i64 0}
!21 = !{!"0x1f77590", !7, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"0x1f77590.w1.b1", !10, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"0x52fea90.w1.b0", !26, i64 0}
!26 = !{!"0x52fea90.w2.b0", !27, i64 0}
!27 = !{!"0x52fea90.w4.b0", !28, i64 0}
!28 = !{!"0x52fea90.w8.b0", !29, i64 0}
!29 = !{!"0x52fea90.w16.b0", !30, i64 0}
!30 = !{!"0x52fea90.w32.b0", !31, i64 0}
!31 = !{!"0x52fea90.w64.b0", !32, i64 0}
!32 = !{!"0x52fea90.w128.b0", !33, i64 0}
!33 = !{!"0x52fea90.w256.b0", !34, i64 0}
!34 = !{!"0x52fea90.w512.b0", !35, i64 0}
!35 = !{!"0x52fea90.w1024.b0", !36, i64 0}
!36 = !{!"i8*", !37, i64 0}
!37 = !{!"0x52fea90", !7, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"0x52fea90.w1.b1", !26, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"0x52fea90.w1.b2", !42, i64 0}
!42 = !{!"0x52fea90.w2.b2", !27, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"0x52fea90.w1.b3", !42, i64 0}
!45 = !{!"branch_weights", i32 1, i32 1048576}
!46 = !{!47, !47, i64 0}
!47 = !{!"0x52f59a0.w4.b0", !48, i64 0}
!48 = !{!"0x52f59a0.w8.b0", !49, i64 0}
!49 = !{!"0x52f59a0.w16.b0", !50, i64 0}
!50 = !{!"0x52f59a0.w32.b0", !51, i64 0}
!51 = !{!"0x52f59a0.w64.b0", !52, i64 0}
!52 = !{!"0x52f59a0.w128.b0", !53, i64 0}
!53 = !{!"0x52f59a0.w256.b0", !54, i64 0}
!54 = !{!"0x52f59a0.w512.b0", !55, i64 0}
!55 = !{!"0x52f59a0.w1024.b0", !56, i64 0}
!56 = !{!"i8*", !57, i64 0}
!57 = !{!"0x52f59a0", !7, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"0x53070b0.w1.b0", !60, i64 0}
!60 = !{!"0x53070b0.w2.b0", !61, i64 0}
!61 = !{!"0x53070b0.w4.b0", !62, i64 0}
!62 = !{!"0x53070b0.w8.b0", !63, i64 0}
!63 = !{!"0x53070b0.w16.b0", !64, i64 0}
!64 = !{!"0x53070b0.w32.b0", !65, i64 0}
!65 = !{!"0x53070b0.w64.b0", !66, i64 0}
!66 = !{!"0x53070b0.w128.b0", !67, i64 0}
!67 = !{!"0x53070b0.w256.b0", !68, i64 0}
!68 = !{!"0x53070b0.w512.b0", !69, i64 0}
!69 = !{!"0x53070b0.w1024.b0", !70, i64 0}
!70 = !{!"i8*", !71, i64 0}
!71 = !{!"0x53070b0", !7, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"0x53070b0.w1.b1", !60, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"0x53070b0.w1.b2", !76, i64 0}
!76 = !{!"0x53070b0.w2.b2", !61, i64 0}
!77 = !{!78, !78, i64 0}
!78 = !{!"0x53070b0.w1.b3", !76, i64 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"0x5307a40.w4.b0", !81, i64 0}
!81 = !{!"0x5307a40.w8.b0", !82, i64 0}
!82 = !{!"0x5307a40.w16.b0", !83, i64 0}
!83 = !{!"0x5307a40.w32.b0", !84, i64 0}
!84 = !{!"0x5307a40.w64.b0", !85, i64 0}
!85 = !{!"0x5307a40.w128.b0", !86, i64 0}
!86 = !{!"0x5307a40.w256.b0", !87, i64 0}
!87 = !{!"0x5307a40.w512.b0", !88, i64 0}
!88 = !{!"0x5307a40.w1024.b0", !89, i64 0}
!89 = !{!"i8*", !90, i64 0}
!90 = !{!"0x5307a40", !7, i64 0}
!91 = !{!92, !92, i64 0}
!92 = !{!"float", !93, i64 0}
!93 = !{!"0x5304e80", !7, i64 0}
!94 = !{!95, !95, i64 0}
!95 = !{!"float", !96, i64 0}
!96 = !{!"0x5304ca0", !7, i64 0}
