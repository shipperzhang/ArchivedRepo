; ModuleID = 'myadd'
source_filename = "myadd"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i8*, %1, i32, %2, i64*, i64*, i64 }
%1 = type { i32, i32 }
%2 = type { i8, i8, i16 }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@.str = private constant [58 x i8] c"Assert fail: (num_args == 3), myadd: num_args should be 3\00", align 1
@.str.1 = private constant [133 x i8] c"Assert fail: ((((arg0.code == 3) || (arg0.code == 13)) || (arg0.code == 7)) || (arg0.code == 4)), myadd: Expect arg[0] to be pointer\00", align 1
@.str.2 = private constant [133 x i8] c"Assert fail: ((((arg1.code == 3) || (arg1.code == 13)) || (arg1.code == 7)) || (arg1.code == 4)), myadd: Expect arg[1] to be pointer\00", align 1
@.str.3 = private constant [133 x i8] c"Assert fail: ((((arg2.code == 3) || (arg2.code == 13)) || (arg2.code == 7)) || (arg2.code == 4)), myadd: Expect arg[2] to be pointer\00", align 1
@.str.4 = private constant [55 x i8] c"Assert fail: (dev_type == 1), device_type need to be 1\00", align 1
@.str.5 = private constant [81 x i8] c"Assert fail: (1 == tvm_struct_get(arg0, 0, 4)), arg0.ndim is expected to equal 1\00", align 1
@.str.6 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg0, 0, 5) == (uint8)2) && (tvm_struct_get(arg0, 0, 6) == (uint8)32)) && (tvm_struct_get(arg0, 0, 7) == (uint16)1)), arg0.dtype is expected to be float32\00", align 1
@.str.7 = private constant [87 x i8] c"Assert fail: (1 == int32(arg0.strides[0])), arg0.strides: expected to be compact array\00", align 1
@.str.8 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg0, 0, 8)), Argument arg0.byte_offset has an unsatisfied constraint\00", align 1
@.str.9 = private constant [81 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 4)), arg1.ndim is expected to equal 1\00", align 1
@.str.10 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg1, 0, 5) == (uint8)2) && (tvm_struct_get(arg1, 0, 6) == (uint8)32)) && (tvm_struct_get(arg1, 0, 7) == (uint16)1)), arg1.dtype is expected to be float32\00", align 1
@.str.11 = private constant [95 x i8] c"Assert fail: (n == int32(arg1.shape[0])), Argument arg1.shape[0] has an unsatisfied constraint\00", align 1
@.str.12 = private constant [87 x i8] c"Assert fail: (1 == int32(arg1.strides[0])), arg1.strides: expected to be compact array\00", align 1
@.str.13 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg1, 0, 8)), Argument arg1.byte_offset has an unsatisfied constraint\00", align 1
@.str.14 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg1, 0, 10)), Argument arg1.device_type has an unsatisfied constraint\00", align 1
@.str.15 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg1, 0, 9)), Argument arg1.device_id has an unsatisfied constraint\00", align 1
@.str.16 = private constant [81 x i8] c"Assert fail: (1 == tvm_struct_get(arg2, 0, 4)), arg2.ndim is expected to equal 1\00", align 1
@.str.17 = private constant [186 x i8] c"Assert fail: (((tvm_struct_get(arg2, 0, 5) == (uint8)2) && (tvm_struct_get(arg2, 0, 6) == (uint8)32)) && (tvm_struct_get(arg2, 0, 7) == (uint16)1)), arg2.dtype is expected to be float32\00", align 1
@.str.18 = private constant [95 x i8] c"Assert fail: (n == int32(arg2.shape[0])), Argument arg2.shape[0] has an unsatisfied constraint\00", align 1
@.str.19 = private constant [87 x i8] c"Assert fail: (1 == int32(arg2.strides[0])), arg2.strides: expected to be compact array\00", align 1
@.str.20 = private constant [112 x i8] c"Assert fail: ((uint64)0 == tvm_struct_get(arg2, 0, 8)), Argument arg2.byte_offset has an unsatisfied constraint\00", align 1
@.str.21 = private constant [105 x i8] c"Assert fail: (1 == tvm_struct_get(arg2, 0, 10)), Argument arg2.device_type has an unsatisfied constraint\00", align 1
@.str.22 = private constant [107 x i8] c"Assert fail: (dev_id == tvm_struct_get(arg2, 0, 9)), Argument arg2.device_id has an unsatisfied constraint\00", align 1
@__tvm_main__ = weak local_unnamed_addr constant [6 x i8] c"myadd\00", align 1

define dllexport i32 @myadd(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32) local_unnamed_addr {
entry:
  %3 = icmp eq i32 %2, 3
  br i1 %3, label %assert_end, label %assert_fail, !prof !5

assert_fail:                                      ; preds = %entry
  %4 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %4(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  ret i32 -1

assert_end:                                       ; preds = %entry
  %5 = bitcast i8* %0 to %0**
  %6 = load %0*, %0** %5, align 8
  %7 = bitcast i8* %1 to i32*
  %8 = load i32, i32* %7, align 4, !tbaa !9
  %9 = getelementptr inbounds i8, i8* %0, i64 8
  %10 = bitcast i8* %9 to %0**
  %11 = load %0*, %0** %10, align 8
  %12 = getelementptr inbounds i8, i8* %0, i64 16
  %13 = bitcast i8* %12 to %0**
  %14 = load %0*, %0** %13, align 8
  %15 = getelementptr inbounds i8, i8* %1, i64 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !23
  %18 = getelementptr inbounds %0, %0* %6, i64 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds %0, %0* %6, i64 0, i32 4
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %21, align 8, !tbaa !26
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds %0, %0* %6, i64 0, i32 5
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds %0, %0* %6, i64 0, i32 1, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %0, %0* %6, i64 0, i32 1, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %0, %0* %11, i64 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = getelementptr inbounds %0, %0* %11, i64 0, i32 4
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds %0, %0* %11, i64 0, i32 5
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds %0, %0* %14, i64 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr inbounds %0, %0* %14, i64 0, i32 4
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds %0, %0* %14, i64 0, i32 5
  %41 = load i64*, i64** %40, align 8
  switch i32 %8, label %assert_fail1 [
    i32 13, label %assert_end2
    i32 7, label %assert_end2
    i32 4, label %assert_end2
    i32 3, label %assert_end2
  ]

assert_fail1:                                     ; preds = %assert_end
  %42 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %42(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.1, i64 0, i64 0))
  ret i32 -1

assert_end2:                                      ; preds = %assert_end, %assert_end, %assert_end, %assert_end
  %43 = getelementptr inbounds i8, i8* %1, i64 4
  %44 = bitcast i8* %43 to i32*
  %45 = load i32, i32* %44, align 4, !tbaa !40
  switch i32 %45, label %assert_fail3 [
    i32 13, label %assert_end4
    i32 7, label %assert_end4
    i32 4, label %assert_end4
    i32 3, label %assert_end4
  ]

assert_fail3:                                     ; preds = %assert_end2
  %46 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %46(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.2, i64 0, i64 0))
  ret i32 -1

assert_end4:                                      ; preds = %assert_end2, %assert_end2, %assert_end2, %assert_end2
  switch i32 %17, label %assert_fail5 [
    i32 13, label %assert_end6
    i32 7, label %assert_end6
    i32 4, label %assert_end6
    i32 3, label %assert_end6
  ]

assert_fail5:                                     ; preds = %assert_end4
  %47 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %47(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i64 0, i64 0))
  ret i32 -1

assert_end6:                                      ; preds = %assert_end4, %assert_end4, %assert_end4, %assert_end4
  %48 = icmp eq i32 %27, 1
  br i1 %48, label %assert_end8, label %assert_fail7, !prof !5

assert_fail7:                                     ; preds = %assert_end6
  %49 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %49(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0))
  ret i32 -1

assert_end8:                                      ; preds = %assert_end6
  %50 = getelementptr inbounds %0, %0* %6, i64 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 1
  br i1 %52, label %assert_end10, label %assert_fail9, !prof !5

assert_fail9:                                     ; preds = %assert_end8
  %53 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %53(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i64 0, i64 0))
  ret i32 -1

assert_end10:                                     ; preds = %assert_end8
  %54 = getelementptr inbounds %0, %0* %6, i64 0, i32 3, i32 2
  %55 = load i16, i16* %54, align 2
  %56 = icmp eq i16 %55, 1
  %57 = getelementptr inbounds %0, %0* %6, i64 0, i32 3, i32 1
  %58 = load i8, i8* %57, align 1
  %59 = icmp eq i8 %58, 32
  %60 = getelementptr inbounds %0, %0* %6, i64 0, i32 3, i32 0
  %61 = load i8, i8* %60, align 1
  %62 = icmp eq i8 %61, 2
  %63 = and i1 %59, %62
  %64 = and i1 %56, %63
  br i1 %64, label %assert_end12, label %assert_fail11, !prof !5

assert_fail11:                                    ; preds = %assert_end10
  %65 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %65(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.6, i64 0, i64 0))
  ret i32 -1

assert_end12:                                     ; preds = %assert_end10
  %66 = icmp eq i64* %25, null
  br i1 %66, label %if_end, label %if_then, !prof !42

if_then:                                          ; preds = %assert_end12
  %67 = load i64, i64* %25, align 8, !tbaa !43
  %68 = trunc i64 %67 to i32
  %69 = icmp eq i32 %68, 1
  br i1 %69, label %if_end, label %assert_fail13, !prof !5

if_end:                                           ; preds = %assert_end12, %if_then
  %70 = getelementptr inbounds %0, %0* %6, i64 0, i32 6
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %assert_end16, label %assert_fail15, !prof !5

assert_fail13:                                    ; preds = %if_then
  %73 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %73(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.7, i64 0, i64 0))
  ret i32 -1

assert_fail15:                                    ; preds = %if_end
  %74 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %74(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.8, i64 0, i64 0))
  ret i32 -1

assert_end16:                                     ; preds = %if_end
  %75 = getelementptr inbounds %0, %0* %11, i64 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %assert_end18, label %assert_fail17, !prof !5

assert_fail17:                                    ; preds = %assert_end16
  %78 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %78(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.9, i64 0, i64 0))
  ret i32 -1

assert_end18:                                     ; preds = %assert_end16
  %79 = getelementptr inbounds %0, %0* %11, i64 0, i32 3, i32 2
  %80 = load i16, i16* %79, align 2
  %81 = icmp eq i16 %80, 1
  %82 = getelementptr inbounds %0, %0* %11, i64 0, i32 3, i32 1
  %83 = load i8, i8* %82, align 1
  %84 = icmp eq i8 %83, 32
  %85 = getelementptr inbounds %0, %0* %11, i64 0, i32 3, i32 0
  %86 = load i8, i8* %85, align 1
  %87 = icmp eq i8 %86, 2
  %88 = and i1 %84, %87
  %89 = and i1 %81, %88
  br i1 %89, label %assert_end20, label %assert_fail19, !prof !5

assert_fail19:                                    ; preds = %assert_end18
  %90 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %90(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.10, i64 0, i64 0))
  ret i32 -1

assert_end20:                                     ; preds = %assert_end18
  %91 = load i64, i64* %33, align 8, !tbaa !57
  %92 = trunc i64 %91 to i32
  %93 = icmp eq i32 %23, %92
  br i1 %93, label %assert_end22, label %assert_fail21, !prof !5

assert_fail21:                                    ; preds = %assert_end20
  %94 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %94(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.11, i64 0, i64 0))
  ret i32 -1

assert_end22:                                     ; preds = %assert_end20
  %95 = icmp eq i64* %35, null
  br i1 %95, label %if_end24, label %if_then23, !prof !42

if_then23:                                        ; preds = %assert_end22
  %96 = load i64, i64* %35, align 8, !tbaa !71
  %97 = trunc i64 %96 to i32
  %98 = icmp eq i32 %97, 1
  br i1 %98, label %if_end24, label %assert_fail25, !prof !5

if_end24:                                         ; preds = %assert_end22, %if_then23
  %99 = getelementptr inbounds %0, %0* %11, i64 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %assert_end28, label %assert_fail27, !prof !5

assert_fail25:                                    ; preds = %if_then23
  %102 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %102(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.12, i64 0, i64 0))
  ret i32 -1

assert_fail27:                                    ; preds = %if_end24
  %103 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %103(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.13, i64 0, i64 0))
  ret i32 -1

assert_end28:                                     ; preds = %if_end24
  %104 = getelementptr inbounds %0, %0* %11, i64 0, i32 1, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %assert_end30, label %assert_fail29, !prof !5

assert_fail29:                                    ; preds = %assert_end28
  %107 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %107(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.14, i64 0, i64 0))
  ret i32 -1

assert_end30:                                     ; preds = %assert_end28
  %108 = getelementptr inbounds %0, %0* %11, i64 0, i32 1, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %29, %109
  br i1 %110, label %assert_end32, label %assert_fail31, !prof !5

assert_fail31:                                    ; preds = %assert_end30
  %111 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %111(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.15, i64 0, i64 0))
  ret i32 -1

assert_end32:                                     ; preds = %assert_end30
  %112 = getelementptr inbounds %0, %0* %14, i64 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, 1
  br i1 %114, label %assert_end34, label %assert_fail33, !prof !5

assert_fail33:                                    ; preds = %assert_end32
  %115 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %115(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.16, i64 0, i64 0))
  ret i32 -1

assert_end34:                                     ; preds = %assert_end32
  %116 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 2
  %117 = load i16, i16* %116, align 2
  %118 = icmp eq i16 %117, 1
  %119 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 1
  %120 = load i8, i8* %119, align 1
  %121 = icmp eq i8 %120, 32
  %122 = getelementptr inbounds %0, %0* %14, i64 0, i32 3, i32 0
  %123 = load i8, i8* %122, align 1
  %124 = icmp eq i8 %123, 2
  %125 = and i1 %121, %124
  %126 = and i1 %118, %125
  br i1 %126, label %assert_end36, label %assert_fail35, !prof !5

assert_fail35:                                    ; preds = %assert_end34
  %127 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %127(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.17, i64 0, i64 0))
  ret i32 -1

assert_end36:                                     ; preds = %assert_end34
  %128 = load i64, i64* %39, align 8, !tbaa !85
  %129 = trunc i64 %128 to i32
  %130 = icmp eq i32 %23, %129
  br i1 %130, label %assert_end38, label %assert_fail37, !prof !5

assert_fail37:                                    ; preds = %assert_end36
  %131 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %131(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.18, i64 0, i64 0))
  ret i32 -1

assert_end38:                                     ; preds = %assert_end36
  %132 = icmp eq i64* %41, null
  br i1 %132, label %if_end40, label %if_then39, !prof !42

if_then39:                                        ; preds = %assert_end38
  %133 = load i64, i64* %41, align 8, !tbaa !99
  %134 = trunc i64 %133 to i32
  %135 = icmp eq i32 %134, 1
  br i1 %135, label %if_end40, label %assert_fail41, !prof !5

if_end40:                                         ; preds = %assert_end38, %if_then39
  %136 = getelementptr inbounds %0, %0* %14, i64 0, i32 6
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %137, 0
  br i1 %138, label %assert_end44, label %assert_fail43, !prof !5

assert_fail41:                                    ; preds = %if_then39
  %139 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %139(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.19, i64 0, i64 0))
  ret i32 -1

assert_fail43:                                    ; preds = %if_end40
  %140 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %140(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.20, i64 0, i64 0))
  ret i32 -1

assert_end44:                                     ; preds = %if_end40
  %141 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %142, 1
  br i1 %143, label %assert_end46, label %assert_fail45, !prof !5

assert_fail45:                                    ; preds = %assert_end44
  %144 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %144(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.21, i64 0, i64 0))
  ret i32 -1

assert_end46:                                     ; preds = %assert_end44
  %145 = getelementptr inbounds %0, %0* %14, i64 0, i32 1, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %29, %146
  br i1 %147, label %assert_end48, label %assert_fail47, !prof !5

assert_fail47:                                    ; preds = %assert_end46
  %148 = load void (i8*)*, void (i8*)** @__TVMAPISetLastError, align 8, !tbaa !6
  tail call void %148(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.22, i64 0, i64 0))
  ret i32 -1

assert_end48:                                     ; preds = %assert_end46
  tail call fastcc void @myadd_compute_(i32 %23, i8* %37, i8* %19, i8* %31)
  ret i32 0
}

; Function Attrs: noinline norecurse nounwind
define private fastcc void @myadd_compute_(i32, i8* noalias nocapture, i8* noalias nocapture readonly, i8* noalias nocapture readonly) unnamed_addr #0 {
entry:
  %4 = icmp sgt i32 %0, 0
  br i1 %4, label %for_body.lr.ph, label %for_end, !prof !5

for_body.lr.ph:                                   ; preds = %entry
  %5 = bitcast i8* %3 to float*
  %6 = bitcast i8* %2 to float*
  %7 = bitcast i8* %1 to float*
  %wide.trip.count = zext i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 8
  br i1 %min.iters.check, label %for_body.preheader, label %vector.ph

vector.ph:                                        ; preds = %for_body.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %8 = getelementptr inbounds float, float* %5, i64 %index
  %9 = bitcast float* %8 to <4 x float>*
  %wide.load = load <4 x float>, <4 x float>* %9, align 4, !tbaa !113
  %10 = getelementptr inbounds float, float* %8, i64 4
  %11 = bitcast float* %10 to <4 x float>*
  %wide.load2 = load <4 x float>, <4 x float>* %11, align 4, !tbaa !113
  %12 = getelementptr inbounds float, float* %6, i64 %index
  %13 = bitcast float* %12 to <4 x float>*
  %wide.load3 = load <4 x float>, <4 x float>* %13, align 4, !tbaa !116
  %14 = getelementptr inbounds float, float* %12, i64 4
  %15 = bitcast float* %14 to <4 x float>*
  %wide.load4 = load <4 x float>, <4 x float>* %15, align 4, !tbaa !116
  %16 = fadd <4 x float> %wide.load, %wide.load3
  %17 = fadd <4 x float> %wide.load2, %wide.load4
  %18 = getelementptr inbounds float, float* %7, i64 %index
  %19 = bitcast float* %18 to <4 x float>*
  store <4 x float> %16, <4 x float>* %19, align 4, !tbaa !119
  %20 = getelementptr inbounds float, float* %18, i64 4
  %21 = bitcast float* %20 to <4 x float>*
  store <4 x float> %17, <4 x float>* %21, align 4, !tbaa !119
  %index.next = add i64 %index, 8
  %22 = icmp eq i64 %index.next, %n.vec
  br i1 %22, label %middle.block, label %vector.body, !llvm.loop !122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for_end, label %for_body.preheader

for_body.preheader:                               ; preds = %middle.block, %for_body.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %for_body.lr.ph ], [ %n.vec, %middle.block ]
  br label %for_body

for_body:                                         ; preds = %for_body.preheader, %for_body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for_body ], [ %indvars.iv.ph, %for_body.preheader ]
  %23 = getelementptr inbounds float, float* %5, i64 %indvars.iv
  %24 = load float, float* %23, align 4, !tbaa !113
  %25 = getelementptr inbounds float, float* %6, i64 %indvars.iv
  %26 = load float, float* %25, align 4, !tbaa !116
  %27 = fadd float %24, %26
  %28 = getelementptr inbounds float, float* %7, i64 %indvars.iv
  store float %27, float* %28, align 4, !tbaa !119
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond, label %for_end, label %for_body, !prof !42, !llvm.loop !124

for_end:                                          ; preds = %for_body, %middle.block, %entry
  ret void
}

attributes #0 = { noinline norecurse nounwind }

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
!10 = !{!"0x1c5e420.w1.b0", !11, i64 0}
!11 = !{!"0x1c5e420.w2.b0", !12, i64 0}
!12 = !{!"0x1c5e420.w4.b0", !13, i64 0}
!13 = !{!"0x1c5e420.w8.b0", !14, i64 0}
!14 = !{!"0x1c5e420.w16.b0", !15, i64 0}
!15 = !{!"0x1c5e420.w32.b0", !16, i64 0}
!16 = !{!"0x1c5e420.w64.b0", !17, i64 0}
!17 = !{!"0x1c5e420.w128.b0", !18, i64 0}
!18 = !{!"0x1c5e420.w256.b0", !19, i64 0}
!19 = !{!"0x1c5e420.w512.b0", !20, i64 0}
!20 = !{!"0x1c5e420.w1024.b0", !21, i64 0}
!21 = !{!"int32", !22, i64 0}
!22 = !{!"0x1c5e420", !8, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"0x1c5e420.w1.b2", !25, i64 0}
!25 = !{!"0x1c5e420.w2.b2", !12, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"0x1c61510.w1.b0", !28, i64 0}
!28 = !{!"0x1c61510.w2.b0", !29, i64 0}
!29 = !{!"0x1c61510.w4.b0", !30, i64 0}
!30 = !{!"0x1c61510.w8.b0", !31, i64 0}
!31 = !{!"0x1c61510.w16.b0", !32, i64 0}
!32 = !{!"0x1c61510.w32.b0", !33, i64 0}
!33 = !{!"0x1c61510.w64.b0", !34, i64 0}
!34 = !{!"0x1c61510.w128.b0", !35, i64 0}
!35 = !{!"0x1c61510.w256.b0", !36, i64 0}
!36 = !{!"0x1c61510.w512.b0", !37, i64 0}
!37 = !{!"0x1c61510.w1024.b0", !38, i64 0}
!38 = !{!"int64", !39, i64 0}
!39 = !{!"0x1c61510", !8, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"0x1c5e420.w1.b1", !11, i64 0}
!42 = !{!"branch_weights", i32 1, i32 1048576}
!43 = !{!44, !44, i64 0}
!44 = !{!"0x1c61850.w1.b0", !45, i64 0}
!45 = !{!"0x1c61850.w2.b0", !46, i64 0}
!46 = !{!"0x1c61850.w4.b0", !47, i64 0}
!47 = !{!"0x1c61850.w8.b0", !48, i64 0}
!48 = !{!"0x1c61850.w16.b0", !49, i64 0}
!49 = !{!"0x1c61850.w32.b0", !50, i64 0}
!50 = !{!"0x1c61850.w64.b0", !51, i64 0}
!51 = !{!"0x1c61850.w128.b0", !52, i64 0}
!52 = !{!"0x1c61850.w256.b0", !53, i64 0}
!53 = !{!"0x1c61850.w512.b0", !54, i64 0}
!54 = !{!"0x1c61850.w1024.b0", !55, i64 0}
!55 = !{!"int64", !56, i64 0}
!56 = !{!"0x1c61850", !8, i64 0}
!57 = !{!58, !58, i64 0}
!58 = !{!"0x1c61cd0.w1.b0", !59, i64 0}
!59 = !{!"0x1c61cd0.w2.b0", !60, i64 0}
!60 = !{!"0x1c61cd0.w4.b0", !61, i64 0}
!61 = !{!"0x1c61cd0.w8.b0", !62, i64 0}
!62 = !{!"0x1c61cd0.w16.b0", !63, i64 0}
!63 = !{!"0x1c61cd0.w32.b0", !64, i64 0}
!64 = !{!"0x1c61cd0.w64.b0", !65, i64 0}
!65 = !{!"0x1c61cd0.w128.b0", !66, i64 0}
!66 = !{!"0x1c61cd0.w256.b0", !67, i64 0}
!67 = !{!"0x1c61cd0.w512.b0", !68, i64 0}
!68 = !{!"0x1c61cd0.w1024.b0", !69, i64 0}
!69 = !{!"int64", !70, i64 0}
!70 = !{!"0x1c61cd0", !8, i64 0}
!71 = !{!72, !72, i64 0}
!72 = !{!"0x1c5c280.w1.b0", !73, i64 0}
!73 = !{!"0x1c5c280.w2.b0", !74, i64 0}
!74 = !{!"0x1c5c280.w4.b0", !75, i64 0}
!75 = !{!"0x1c5c280.w8.b0", !76, i64 0}
!76 = !{!"0x1c5c280.w16.b0", !77, i64 0}
!77 = !{!"0x1c5c280.w32.b0", !78, i64 0}
!78 = !{!"0x1c5c280.w64.b0", !79, i64 0}
!79 = !{!"0x1c5c280.w128.b0", !80, i64 0}
!80 = !{!"0x1c5c280.w256.b0", !81, i64 0}
!81 = !{!"0x1c5c280.w512.b0", !82, i64 0}
!82 = !{!"0x1c5c280.w1024.b0", !83, i64 0}
!83 = !{!"int64", !84, i64 0}
!84 = !{!"0x1c5c280", !8, i64 0}
!85 = !{!86, !86, i64 0}
!86 = !{!"0x1c65f30.w1.b0", !87, i64 0}
!87 = !{!"0x1c65f30.w2.b0", !88, i64 0}
!88 = !{!"0x1c65f30.w4.b0", !89, i64 0}
!89 = !{!"0x1c65f30.w8.b0", !90, i64 0}
!90 = !{!"0x1c65f30.w16.b0", !91, i64 0}
!91 = !{!"0x1c65f30.w32.b0", !92, i64 0}
!92 = !{!"0x1c65f30.w64.b0", !93, i64 0}
!93 = !{!"0x1c65f30.w128.b0", !94, i64 0}
!94 = !{!"0x1c65f30.w256.b0", !95, i64 0}
!95 = !{!"0x1c65f30.w512.b0", !96, i64 0}
!96 = !{!"0x1c65f30.w1024.b0", !97, i64 0}
!97 = !{!"int64", !98, i64 0}
!98 = !{!"0x1c65f30", !8, i64 0}
!99 = !{!100, !100, i64 0}
!100 = !{!"0x1c638f0.w1.b0", !101, i64 0}
!101 = !{!"0x1c638f0.w2.b0", !102, i64 0}
!102 = !{!"0x1c638f0.w4.b0", !103, i64 0}
!103 = !{!"0x1c638f0.w8.b0", !104, i64 0}
!104 = !{!"0x1c638f0.w16.b0", !105, i64 0}
!105 = !{!"0x1c638f0.w32.b0", !106, i64 0}
!106 = !{!"0x1c638f0.w64.b0", !107, i64 0}
!107 = !{!"0x1c638f0.w128.b0", !108, i64 0}
!108 = !{!"0x1c638f0.w256.b0", !109, i64 0}
!109 = !{!"0x1c638f0.w512.b0", !110, i64 0}
!110 = !{!"0x1c638f0.w1024.b0", !111, i64 0}
!111 = !{!"int64", !112, i64 0}
!112 = !{!"0x1c638f0", !8, i64 0}
!113 = !{!114, !114, i64 0}
!114 = !{!"float32", !115, i64 0}
!115 = !{!"0x1c59860", !8, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"float32", !118, i64 0}
!118 = !{!"0x1c168b0", !8, i64 0}
!119 = !{!120, !120, i64 0}
!120 = !{!"float32", !121, i64 0}
!121 = !{!"0x1c5bb90", !8, i64 0}
!122 = distinct !{!122, !123}
!123 = !{!"llvm.loop.isvectorized", i32 1}
!124 = distinct !{!124, !125, !123}
!125 = !{!"llvm.loop.unroll.runtime.disable"}
