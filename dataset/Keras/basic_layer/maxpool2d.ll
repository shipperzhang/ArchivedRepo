; ModuleID = 'TVMMod'
source_filename = "TVMMod"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i8*, %1, i32, %2, i64*, i64*, i64 }
%1 = type { i32, i32 }
%2 = type { i8, i8, i16 }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@.str = private constant [87 x i8] c"Assert fail: (num_args == 2), tvmgen_default_fused_nn_max_pool2d: num_args should be 2\00", align 1
@.str.1 = private constant [162 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), tvmgen_default_fused_nn_max_pool2d: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [162 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), tvmgen_default_fused_nn_max_pool2d: Expect arg[1] to be pointer\00", align 1
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
@.str.16 = private constant [126 x i8] c"Assert fail: (14 == int32(arg1.shape[2])), Argument arg1.shape[2] has an unsatisfied constraint: (14 == int32(arg1.shape[2]))\00", align 1
@.str.17 = private constant [126 x i8] c"Assert fail: (14 == int32(arg1.shape[3])), Argument arg1.shape[3] has an unsatisfied constraint: (14 == int32(arg1.shape[3]))\00", align 1
@.str.18 = private constant [197 x i8] c"Assert fail: ((((1 == int32(arg1.strides[3])) && (14 == int32(arg1.strides[2]))) && (196 == int32(arg1.strides[1]))) && (196 == int32(arg1.strides[0]))), arg1.strides: expected to be compact array\00", align 1
@.str.19 = private constant [163 x i8] c"Assert fail: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint: ((uint64)0 == tir.tvm_struct_get(arg1, 0, 8))\00", align 1
@.str.20 = private constant [149 x i8] c"Assert fail: (1 == tir.tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint: (1 == tir.tvm_struct_get(arg1, 0, 10))\00", align 1
@.str.21 = private constant [155 x i8] c"Assert fail: (dev_id == tir.tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint: (dev_id == tir.tvm_struct_get(arg1, 0, 9))\00", align 1
@__tvm_main__ = weak dllexport local_unnamed_addr constant [35 x i8] c"tvmgen_default_fused_nn_max_pool2d\00", align 1
@llvm.global_ctors = appending global [0 x { i32, void ()*, i8* }] zeroinitializer

define dllexport i32 @tvmgen_default_fused_nn_max_pool2d(i8* noalias nocapture readonly %0, i8* noalias nocapture readonly %1, i32 %2, i8* noalias nocapture readnone %3, i8* noalias nocapture readnone %4, i8* noalias nocapture readnone %5) local_unnamed_addr {
entry:
  %6 = icmp eq i32 %2, 2
  br i1 %6, label %assert_end, label %assert_fail, !prof !4

common.ret:                                       ; preds = %assert_end48, %assert_fail47, %assert_fail45, %assert_fail43, %assert_fail41, %assert_fail37, %assert_fail35, %assert_fail33, %assert_fail31, %assert_fail29, %assert_fail25, %assert_fail23, %assert_fail21, %assert_fail19, %assert_fail17, %assert_fail15, %assert_fail13, %assert_fail11, %assert_fail9, %assert_fail5, %assert_fail3, %assert_fail1, %assert_fail
  %common.ret.op = phi i32 [ -1, %assert_fail ], [ -1, %assert_fail1 ], [ -1, %assert_fail3 ], [ -1, %assert_fail5 ], [ -1, %assert_fail9 ], [ -1, %assert_fail11 ], [ -1, %assert_fail13 ], [ -1, %assert_fail15 ], [ -1, %assert_fail17 ], [ -1, %assert_fail19 ], [ -1, %assert_fail21 ], [ -1, %assert_fail23 ], [ -1, %assert_fail25 ], [ -1, %assert_fail29 ], [ -1, %assert_fail31 ], [ -1, %assert_fail33 ], [ -1, %assert_fail35 ], [ -1, %assert_fail37 ], [ -1, %assert_fail41 ], [ -1, %assert_fail43 ], [ -1, %assert_fail45 ], [ -1, %assert_fail47 ], [ 0, %assert_end48 ]
  ret i32 %common.ret.op

assert_fail:                                      ; preds = %entry
  %7 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %7(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str, i64 0, i64 0))
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
  %tensor = load i8*, i8** %18, align 8
  call void @llvm.assume(i1 true) [ "align"(i8* %tensor, i64 128) ]
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
  tail call void %21(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.1, i64 0, i64 0))
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
  tail call void %22(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.2, i64 0, i64 0))
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
  %101 = icmp eq i32 %100, 14
  br i1 %101, label %assert_end36, label %assert_fail35, !prof !4

assert_fail35:                                    ; preds = %assert_end34
  %102 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !5
  tail call void %102(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.16, i64 0, i64 0))
  br label %common.ret

assert_end36:                                     ; preds = %assert_end34
  %103 = getelementptr inbounds i64, i64* %arg1.shape, i64 3
  %104 = load i64, i64* %103, align 8, !tbaa !77
  %105 = trunc i64 %104 to i32
  %106 = icmp eq i32 %105, 14
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
  %111 = icmp ne <4 x i32> %110, <i32 196, i32 196, i32 14, i32 1>
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
  tail call fastcc void @tvmgen_default_fused_nn_max_pool2d_compute_(i8* %tensor, i8* %placeholder)
  br label %common.ret
}

; Function Attrs: inaccessiblememonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #0

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
  %8 = load float, float* %7, align 32, !tbaa !91
  %9 = fcmp olt float %8, 0xC7EFFFFFE0000000
  %10 = select i1 %9, float 0xC7EFFFFFE0000000, float %8
  %11 = or i64 %5, 1
  %12 = getelementptr inbounds float, float* %3, i64 %11
  %13 = load float, float* %12, align 4, !tbaa !91
  %14 = fcmp ogt float %10, %13
  %15 = select i1 %14, float %10, float %13
  %16 = add nuw nsw i64 %5, 28
  %17 = getelementptr inbounds float, float* %3, i64 %16
  %18 = load float, float* %17, align 16, !tbaa !91
  %19 = fcmp ogt float %15, %18
  %20 = select i1 %19, float %15, float %18
  %21 = add nuw nsw i64 %5, 29
  %22 = getelementptr inbounds float, float* %3, i64 %21
  %23 = load float, float* %22, align 4, !tbaa !91
  %24 = fcmp ogt float %20, %23
  %25 = select i1 %24, float %20, float %23
  store float %25, float* %6, align 8, !tbaa !94
  %26 = or i64 %4, 1
  %27 = getelementptr inbounds float, float* %2, i64 %26
  %28 = or i64 %5, 2
  %29 = getelementptr inbounds float, float* %3, i64 %28
  %30 = load float, float* %29, align 8, !tbaa !91
  %31 = fcmp olt float %30, 0xC7EFFFFFE0000000
  %32 = select i1 %31, float 0xC7EFFFFFE0000000, float %30
  %33 = or i64 %5, 3
  %34 = getelementptr inbounds float, float* %3, i64 %33
  %35 = load float, float* %34, align 4, !tbaa !91
  %36 = fcmp ogt float %32, %35
  %37 = select i1 %36, float %32, float %35
  %38 = add nuw i64 %5, 30
  %39 = getelementptr inbounds float, float* %3, i64 %38
  %40 = load float, float* %39, align 8, !tbaa !91
  %41 = fcmp ogt float %37, %40
  %42 = select i1 %41, float %37, float %40
  %43 = add nuw i64 %5, 31
  %44 = getelementptr inbounds float, float* %3, i64 %43
  %45 = load float, float* %44, align 4, !tbaa !91
  %46 = fcmp ogt float %42, %45
  %47 = select i1 %46, float %42, float %45
  store float %47, float* %27, align 4, !tbaa !94
  %48 = add nuw nsw i64 %4, 2
  %49 = getelementptr inbounds float, float* %2, i64 %48
  %50 = or i64 %5, 4
  %51 = getelementptr inbounds float, float* %3, i64 %50
  %52 = load float, float* %51, align 16, !tbaa !91
  %53 = fcmp olt float %52, 0xC7EFFFFFE0000000
  %54 = select i1 %53, float 0xC7EFFFFFE0000000, float %52
  %55 = or i64 %5, 5
  %56 = getelementptr inbounds float, float* %3, i64 %55
  %57 = load float, float* %56, align 4, !tbaa !91
  %58 = fcmp ogt float %54, %57
  %59 = select i1 %58, float %54, float %57
  %60 = add nuw i64 %5, 32
  %61 = getelementptr inbounds float, float* %3, i64 %60
  %62 = load float, float* %61, align 32, !tbaa !91
  %63 = fcmp ogt float %59, %62
  %64 = select i1 %63, float %59, float %62
  %65 = add nuw i64 %5, 33
  %66 = getelementptr inbounds float, float* %3, i64 %65
  %67 = load float, float* %66, align 4, !tbaa !91
  %68 = fcmp ogt float %64, %67
  %69 = select i1 %68, float %64, float %67
  store float %69, float* %49, align 8, !tbaa !94
  %70 = add nuw nsw i64 %4, 3
  %71 = getelementptr inbounds float, float* %2, i64 %70
  %72 = or i64 %5, 6
  %73 = getelementptr inbounds float, float* %3, i64 %72
  %74 = load float, float* %73, align 8, !tbaa !91
  %75 = fcmp olt float %74, 0xC7EFFFFFE0000000
  %76 = select i1 %75, float 0xC7EFFFFFE0000000, float %74
  %77 = or i64 %5, 7
  %78 = getelementptr inbounds float, float* %3, i64 %77
  %79 = load float, float* %78, align 4, !tbaa !91
  %80 = fcmp ogt float %76, %79
  %81 = select i1 %80, float %76, float %79
  %82 = add nuw i64 %5, 34
  %83 = getelementptr inbounds float, float* %3, i64 %82
  %84 = load float, float* %83, align 8, !tbaa !91
  %85 = fcmp ogt float %81, %84
  %86 = select i1 %85, float %81, float %84
  %87 = add nuw i64 %5, 35
  %88 = getelementptr inbounds float, float* %3, i64 %87
  %89 = load float, float* %88, align 4, !tbaa !91
  %90 = fcmp ogt float %86, %89
  %91 = select i1 %90, float %86, float %89
  store float %91, float* %71, align 4, !tbaa !94
  %92 = add nuw nsw i64 %4, 4
  %93 = getelementptr inbounds float, float* %2, i64 %92
  %94 = add nuw nsw i64 %5, 8
  %95 = getelementptr inbounds float, float* %3, i64 %94
  %96 = load float, float* %95, align 32, !tbaa !91
  %97 = fcmp olt float %96, 0xC7EFFFFFE0000000
  %98 = select i1 %97, float 0xC7EFFFFFE0000000, float %96
  %99 = or i64 %94, 1
  %100 = getelementptr inbounds float, float* %3, i64 %99
  %101 = load float, float* %100, align 4, !tbaa !91
  %102 = fcmp ogt float %98, %101
  %103 = select i1 %102, float %98, float %101
  %104 = add nuw nsw i64 %5, 36
  %105 = getelementptr inbounds float, float* %3, i64 %104
  %106 = load float, float* %105, align 16, !tbaa !91
  %107 = fcmp ogt float %103, %106
  %108 = select i1 %107, float %103, float %106
  %109 = add nuw nsw i64 %5, 37
  %110 = getelementptr inbounds float, float* %3, i64 %109
  %111 = load float, float* %110, align 4, !tbaa !91
  %112 = fcmp ogt float %108, %111
  %113 = select i1 %112, float %108, float %111
  store float %113, float* %93, align 8, !tbaa !94
  %114 = add nuw nsw i64 %4, 5
  %115 = getelementptr inbounds float, float* %2, i64 %114
  %116 = add nuw nsw i64 %5, 10
  %117 = getelementptr inbounds float, float* %3, i64 %116
  %118 = load float, float* %117, align 8, !tbaa !91
  %119 = fcmp olt float %118, 0xC7EFFFFFE0000000
  %120 = select i1 %119, float 0xC7EFFFFFE0000000, float %118
  %121 = or i64 %116, 1
  %122 = getelementptr inbounds float, float* %3, i64 %121
  %123 = load float, float* %122, align 4, !tbaa !91
  %124 = fcmp ogt float %120, %123
  %125 = select i1 %124, float %120, float %123
  %126 = add nuw nsw i64 %5, 38
  %127 = getelementptr inbounds float, float* %3, i64 %126
  %128 = load float, float* %127, align 8, !tbaa !91
  %129 = fcmp ogt float %125, %128
  %130 = select i1 %129, float %125, float %128
  %131 = add nuw nsw i64 %5, 39
  %132 = getelementptr inbounds float, float* %3, i64 %131
  %133 = load float, float* %132, align 4, !tbaa !91
  %134 = fcmp ogt float %130, %133
  %135 = select i1 %134, float %130, float %133
  store float %135, float* %115, align 4, !tbaa !94
  %136 = add nuw nsw i64 %4, 6
  %137 = getelementptr inbounds float, float* %2, i64 %136
  %138 = add nuw nsw i64 %5, 12
  %139 = getelementptr inbounds float, float* %3, i64 %138
  %140 = load float, float* %139, align 16, !tbaa !91
  %141 = fcmp olt float %140, 0xC7EFFFFFE0000000
  %142 = select i1 %141, float 0xC7EFFFFFE0000000, float %140
  %143 = or i64 %138, 1
  %144 = getelementptr inbounds float, float* %3, i64 %143
  %145 = load float, float* %144, align 4, !tbaa !91
  %146 = fcmp ogt float %142, %145
  %147 = select i1 %146, float %142, float %145
  %148 = add nuw nsw i64 %5, 40
  %149 = getelementptr inbounds float, float* %3, i64 %148
  %150 = load float, float* %149, align 32, !tbaa !91
  %151 = fcmp ogt float %147, %150
  %152 = select i1 %151, float %147, float %150
  %153 = add nuw nsw i64 %5, 41
  %154 = getelementptr inbounds float, float* %3, i64 %153
  %155 = load float, float* %154, align 4, !tbaa !91
  %156 = fcmp ogt float %152, %155
  %157 = select i1 %156, float %152, float %155
  store float %157, float* %137, align 8, !tbaa !94
  %158 = add nuw nsw i64 %4, 7
  %159 = getelementptr inbounds float, float* %2, i64 %158
  %160 = add nuw nsw i64 %5, 14
  %161 = getelementptr inbounds float, float* %3, i64 %160
  %162 = load float, float* %161, align 8, !tbaa !91
  %163 = fcmp olt float %162, 0xC7EFFFFFE0000000
  %164 = select i1 %163, float 0xC7EFFFFFE0000000, float %162
  %165 = or i64 %160, 1
  %166 = getelementptr inbounds float, float* %3, i64 %165
  %167 = load float, float* %166, align 4, !tbaa !91
  %168 = fcmp ogt float %164, %167
  %169 = select i1 %168, float %164, float %167
  %170 = add nuw nsw i64 %5, 42
  %171 = getelementptr inbounds float, float* %3, i64 %170
  %172 = load float, float* %171, align 8, !tbaa !91
  %173 = fcmp ogt float %169, %172
  %174 = select i1 %173, float %169, float %172
  %175 = add nuw nsw i64 %5, 43
  %176 = getelementptr inbounds float, float* %3, i64 %175
  %177 = load float, float* %176, align 4, !tbaa !91
  %178 = fcmp ogt float %174, %177
  %179 = select i1 %178, float %174, float %177
  store float %179, float* %159, align 4, !tbaa !94
  %180 = add nuw nsw i64 %4, 8
  %181 = getelementptr inbounds float, float* %2, i64 %180
  %182 = add nuw nsw i64 %5, 16
  %183 = getelementptr inbounds float, float* %3, i64 %182
  %184 = load float, float* %183, align 32, !tbaa !91
  %185 = fcmp olt float %184, 0xC7EFFFFFE0000000
  %186 = select i1 %185, float 0xC7EFFFFFE0000000, float %184
  %187 = or i64 %182, 1
  %188 = getelementptr inbounds float, float* %3, i64 %187
  %189 = load float, float* %188, align 4, !tbaa !91
  %190 = fcmp ogt float %186, %189
  %191 = select i1 %190, float %186, float %189
  %192 = add nuw nsw i64 %5, 44
  %193 = getelementptr inbounds float, float* %3, i64 %192
  %194 = load float, float* %193, align 16, !tbaa !91
  %195 = fcmp ogt float %191, %194
  %196 = select i1 %195, float %191, float %194
  %197 = add nuw nsw i64 %5, 45
  %198 = getelementptr inbounds float, float* %3, i64 %197
  %199 = load float, float* %198, align 4, !tbaa !91
  %200 = fcmp ogt float %196, %199
  %201 = select i1 %200, float %196, float %199
  store float %201, float* %181, align 8, !tbaa !94
  %202 = add nuw nsw i64 %4, 9
  %203 = getelementptr inbounds float, float* %2, i64 %202
  %204 = add nuw nsw i64 %5, 18
  %205 = getelementptr inbounds float, float* %3, i64 %204
  %206 = load float, float* %205, align 8, !tbaa !91
  %207 = fcmp olt float %206, 0xC7EFFFFFE0000000
  %208 = select i1 %207, float 0xC7EFFFFFE0000000, float %206
  %209 = or i64 %204, 1
  %210 = getelementptr inbounds float, float* %3, i64 %209
  %211 = load float, float* %210, align 4, !tbaa !91
  %212 = fcmp ogt float %208, %211
  %213 = select i1 %212, float %208, float %211
  %214 = add nuw nsw i64 %5, 46
  %215 = getelementptr inbounds float, float* %3, i64 %214
  %216 = load float, float* %215, align 8, !tbaa !91
  %217 = fcmp ogt float %213, %216
  %218 = select i1 %217, float %213, float %216
  %219 = add nuw nsw i64 %5, 47
  %220 = getelementptr inbounds float, float* %3, i64 %219
  %221 = load float, float* %220, align 4, !tbaa !91
  %222 = fcmp ogt float %218, %221
  %223 = select i1 %222, float %218, float %221
  store float %223, float* %203, align 4, !tbaa !94
  %224 = add nuw nsw i64 %4, 10
  %225 = getelementptr inbounds float, float* %2, i64 %224
  %226 = add nuw nsw i64 %5, 20
  %227 = getelementptr inbounds float, float* %3, i64 %226
  %228 = load float, float* %227, align 16, !tbaa !91
  %229 = fcmp olt float %228, 0xC7EFFFFFE0000000
  %230 = select i1 %229, float 0xC7EFFFFFE0000000, float %228
  %231 = or i64 %226, 1
  %232 = getelementptr inbounds float, float* %3, i64 %231
  %233 = load float, float* %232, align 4, !tbaa !91
  %234 = fcmp ogt float %230, %233
  %235 = select i1 %234, float %230, float %233
  %236 = add nuw nsw i64 %5, 48
  %237 = getelementptr inbounds float, float* %3, i64 %236
  %238 = load float, float* %237, align 32, !tbaa !91
  %239 = fcmp ogt float %235, %238
  %240 = select i1 %239, float %235, float %238
  %241 = add nuw nsw i64 %5, 49
  %242 = getelementptr inbounds float, float* %3, i64 %241
  %243 = load float, float* %242, align 4, !tbaa !91
  %244 = fcmp ogt float %240, %243
  %245 = select i1 %244, float %240, float %243
  store float %245, float* %225, align 8, !tbaa !94
  %246 = add nuw nsw i64 %4, 11
  %247 = getelementptr inbounds float, float* %2, i64 %246
  %248 = add nuw nsw i64 %5, 22
  %249 = getelementptr inbounds float, float* %3, i64 %248
  %250 = load float, float* %249, align 8, !tbaa !91
  %251 = fcmp olt float %250, 0xC7EFFFFFE0000000
  %252 = select i1 %251, float 0xC7EFFFFFE0000000, float %250
  %253 = or i64 %248, 1
  %254 = getelementptr inbounds float, float* %3, i64 %253
  %255 = load float, float* %254, align 4, !tbaa !91
  %256 = fcmp ogt float %252, %255
  %257 = select i1 %256, float %252, float %255
  %258 = add nuw nsw i64 %5, 50
  %259 = getelementptr inbounds float, float* %3, i64 %258
  %260 = load float, float* %259, align 8, !tbaa !91
  %261 = fcmp ogt float %257, %260
  %262 = select i1 %261, float %257, float %260
  %263 = add nuw nsw i64 %5, 51
  %264 = getelementptr inbounds float, float* %3, i64 %263
  %265 = load float, float* %264, align 4, !tbaa !91
  %266 = fcmp ogt float %262, %265
  %267 = select i1 %266, float %262, float %265
  store float %267, float* %247, align 4, !tbaa !94
  %268 = add nuw nsw i64 %4, 12
  %269 = getelementptr inbounds float, float* %2, i64 %268
  %270 = add nuw nsw i64 %5, 24
  %271 = getelementptr inbounds float, float* %3, i64 %270
  %272 = load float, float* %271, align 32, !tbaa !91
  %273 = fcmp olt float %272, 0xC7EFFFFFE0000000
  %274 = select i1 %273, float 0xC7EFFFFFE0000000, float %272
  %275 = or i64 %270, 1
  %276 = getelementptr inbounds float, float* %3, i64 %275
  %277 = load float, float* %276, align 4, !tbaa !91
  %278 = fcmp ogt float %274, %277
  %279 = select i1 %278, float %274, float %277
  %280 = add nuw nsw i64 %5, 52
  %281 = getelementptr inbounds float, float* %3, i64 %280
  %282 = load float, float* %281, align 16, !tbaa !91
  %283 = fcmp ogt float %279, %282
  %284 = select i1 %283, float %279, float %282
  %285 = add nuw nsw i64 %5, 53
  %286 = getelementptr inbounds float, float* %3, i64 %285
  %287 = load float, float* %286, align 4, !tbaa !91
  %288 = fcmp ogt float %284, %287
  %289 = select i1 %288, float %284, float %287
  store float %289, float* %269, align 8, !tbaa !94
  %290 = add nuw nsw i64 %4, 13
  %291 = getelementptr inbounds float, float* %2, i64 %290
  %292 = add nuw nsw i64 %5, 26
  %293 = getelementptr inbounds float, float* %3, i64 %292
  %294 = load float, float* %293, align 8, !tbaa !91
  %295 = fcmp olt float %294, 0xC7EFFFFFE0000000
  %296 = select i1 %295, float 0xC7EFFFFFE0000000, float %294
  %297 = or i64 %292, 1
  %298 = getelementptr inbounds float, float* %3, i64 %297
  %299 = load float, float* %298, align 4, !tbaa !91
  %300 = fcmp ogt float %296, %299
  %301 = select i1 %300, float %296, float %299
  %302 = add nuw nsw i64 %5, 54
  %303 = getelementptr inbounds float, float* %3, i64 %302
  %304 = load float, float* %303, align 8, !tbaa !91
  %305 = fcmp ogt float %301, %304
  %306 = select i1 %305, float %301, float %304
  %307 = add nuw nsw i64 %5, 55
  %308 = getelementptr inbounds float, float* %3, i64 %307
  %309 = load float, float* %308, align 4, !tbaa !91
  %310 = fcmp ogt float %306, %309
  %311 = select i1 %310, float %306, float %309
  store float %311, float* %291, align 4, !tbaa !94
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %exitcond14.not = icmp eq i64 %indvars.iv.next12, 14
  br i1 %exitcond14.not, label %for_end_ax2, label %for_begin_ax3.preheader, !prof !45

for_end_ax2:                                      ; preds = %for_begin_ax3.preheader
  ret void
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
!9 = !{!"0x2a54530.w1.b0", !10, i64 0}
!10 = !{!"0x2a54530.w2.b0", !11, i64 0}
!11 = !{!"0x2a54530.w4.b0", !12, i64 0}
!12 = !{!"0x2a54530.w8.b0", !13, i64 0}
!13 = !{!"0x2a54530.w16.b0", !14, i64 0}
!14 = !{!"0x2a54530.w32.b0", !15, i64 0}
!15 = !{!"0x2a54530.w64.b0", !16, i64 0}
!16 = !{!"0x2a54530.w128.b0", !17, i64 0}
!17 = !{!"0x2a54530.w256.b0", !18, i64 0}
!18 = !{!"0x2a54530.w512.b0", !19, i64 0}
!19 = !{!"0x2a54530.w1024.b0", !20, i64 0}
!20 = !{!"i8*", !21, i64 0}
!21 = !{!"0x2a54530", !7, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"0x2a54530.w1.b1", !10, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"0x554c9a0.w1.b0", !26, i64 0}
!26 = !{!"0x554c9a0.w2.b0", !27, i64 0}
!27 = !{!"0x554c9a0.w4.b0", !28, i64 0}
!28 = !{!"0x554c9a0.w8.b0", !29, i64 0}
!29 = !{!"0x554c9a0.w16.b0", !30, i64 0}
!30 = !{!"0x554c9a0.w32.b0", !31, i64 0}
!31 = !{!"0x554c9a0.w64.b0", !32, i64 0}
!32 = !{!"0x554c9a0.w128.b0", !33, i64 0}
!33 = !{!"0x554c9a0.w256.b0", !34, i64 0}
!34 = !{!"0x554c9a0.w512.b0", !35, i64 0}
!35 = !{!"0x554c9a0.w1024.b0", !36, i64 0}
!36 = !{!"i8*", !37, i64 0}
!37 = !{!"0x554c9a0", !7, i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"0x554c9a0.w1.b1", !26, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"0x554c9a0.w1.b2", !42, i64 0}
!42 = !{!"0x554c9a0.w2.b2", !27, i64 0}
!43 = !{!44, !44, i64 0}
!44 = !{!"0x554c9a0.w1.b3", !42, i64 0}
!45 = !{!"branch_weights", i32 1, i32 1048576}
!46 = !{!47, !47, i64 0}
!47 = !{!"0x55378c0.w4.b0", !48, i64 0}
!48 = !{!"0x55378c0.w8.b0", !49, i64 0}
!49 = !{!"0x55378c0.w16.b0", !50, i64 0}
!50 = !{!"0x55378c0.w32.b0", !51, i64 0}
!51 = !{!"0x55378c0.w64.b0", !52, i64 0}
!52 = !{!"0x55378c0.w128.b0", !53, i64 0}
!53 = !{!"0x55378c0.w256.b0", !54, i64 0}
!54 = !{!"0x55378c0.w512.b0", !55, i64 0}
!55 = !{!"0x55378c0.w1024.b0", !56, i64 0}
!56 = !{!"i8*", !57, i64 0}
!57 = !{!"0x55378c0", !7, i64 0}
!58 = !{!59, !59, i64 0}
!59 = !{!"0x55551b0.w1.b0", !60, i64 0}
!60 = !{!"0x55551b0.w2.b0", !61, i64 0}
!61 = !{!"0x55551b0.w4.b0", !62, i64 0}
!62 = !{!"0x55551b0.w8.b0", !63, i64 0}
!63 = !{!"0x55551b0.w16.b0", !64, i64 0}
!64 = !{!"0x55551b0.w32.b0", !65, i64 0}
!65 = !{!"0x55551b0.w64.b0", !66, i64 0}
!66 = !{!"0x55551b0.w128.b0", !67, i64 0}
!67 = !{!"0x55551b0.w256.b0", !68, i64 0}
!68 = !{!"0x55551b0.w512.b0", !69, i64 0}
!69 = !{!"0x55551b0.w1024.b0", !70, i64 0}
!70 = !{!"i8*", !71, i64 0}
!71 = !{!"0x55551b0", !7, i64 0}
!72 = !{!73, !73, i64 0}
!73 = !{!"0x55551b0.w1.b1", !60, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"0x55551b0.w1.b2", !76, i64 0}
!76 = !{!"0x55551b0.w2.b2", !61, i64 0}
!77 = !{!78, !78, i64 0}
!78 = !{!"0x55551b0.w1.b3", !76, i64 0}
!79 = !{!80, !80, i64 0}
!80 = !{!"0x5555ae0.w4.b0", !81, i64 0}
!81 = !{!"0x5555ae0.w8.b0", !82, i64 0}
!82 = !{!"0x5555ae0.w16.b0", !83, i64 0}
!83 = !{!"0x5555ae0.w32.b0", !84, i64 0}
!84 = !{!"0x5555ae0.w64.b0", !85, i64 0}
!85 = !{!"0x5555ae0.w128.b0", !86, i64 0}
!86 = !{!"0x5555ae0.w256.b0", !87, i64 0}
!87 = !{!"0x5555ae0.w512.b0", !88, i64 0}
!88 = !{!"0x5555ae0.w1024.b0", !89, i64 0}
!89 = !{!"i8*", !90, i64 0}
!90 = !{!"0x5555ae0", !7, i64 0}
!91 = !{!92, !92, i64 0}
!92 = !{!"float", !93, i64 0}
!93 = !{!"0x5547210", !7, i64 0}
!94 = !{!95, !95, i64 0}
!95 = !{!"float", !96, i64 0}
!96 = !{!"0x5546d60", !7, i64 0}
