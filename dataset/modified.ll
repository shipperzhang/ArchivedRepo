; ModuleID = 'modified.bc'
source_filename = "myadd"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%0 = type { i8*, %1, i32, %2, i64*, i64*, i64 }
%1 = type { i32, i32 }
%2 = type { i8, i8, i16 }

@__TVMAPISetLastError = linkonce dllexport local_unnamed_addr global void (i8*)* null, align 8
@.str = private global [58 x i8] c"'U'C2Gh\0Fo\07lWxQ@6\5C\04f\15s\01\22 \1E?\0D%\0A+G?_<YdE,Z8h\0Ay\1FmN>W9M\22Gh\0BoPde", align 1
@.str.1 = private global [133 x i8] c"\08|\10v\05rS6X2_fGpYr[;J.\1F2R>[? \1E$\057\1F@=BcL.];\0C#A/L*\0B7\0B,\1E.\08\22\03\80\FD\DE\F7\97\E6\82\B3\9E\FE\92\F7\93\B4\8A\B8\99\AF\87\AF\90\ED\92\B3\9C\FE\8D\EB\DC\F3\91\FF\9C\FA\DB\E7\DB\FC\C9\E1\C9\E6\C7\AB\D3\B3\D8\BD\88\A9\ED\96\E7\83\E1\96\B7\D7\A6\C2\9A\AB\F7\D8\AD\C3\E4\87\E3\C4\B5\DB\B3\DE\AB\CF\BE\BF", align 1
@.str.2 = private global [133 x i8] c")[)M@5\16q\11y\16-\0E'\109\12t\07aQ\80\E4\8C\E9\8D\AE\94\AA\8B\B9\91\B2\CF\B4\95\BE\E0\93\F5\C5\EC\90\00e\01\22 \1E?\0F=\15=\1Ec \01*L?YiH,D!Ef\5CbCu]uV+XyR4G!\11@$L)MnTjK\80\AA\84\A9\8A\E8\92\F4\91\F6\CD\EE\AC\D5\A6\C4\A8\DD\FE\A0\D3\B5\EF\DF\83\A4\D1\BF\A0\C3\A7\88\F9\97\FF\92\E7\83\F2\F3", align 1
@.str.3 = private global [133 x i8] c"3A3W&St\13s\1BxCdMfOh\0Ay\1F.\01c\0Dj\101\0D1\12\22\0C-R/\109Y,L\7FR2^;_\80\BE\84\A5\95\A7\8F\A7\88\F5\8A\AB\84\E6\95\F3\C2\ED\8F\E1\86\E4\C5\F9\C5\E6\D2\FC\D6\F7\8C\F1\D2\FB\9B\EA\8E\BD\94\F8\98\FD\99\BA\88\B6\97\A4\8E\A8\85\A6\CC\B6\D8\BD\DA\E1\C2\88\F1\82\E8\8C\F9\DA\BC\CF\A9\F3\C2\A0\81\F6\9A\BB\DA\C0\E1\92\FE\98\F7\84\E2\91\92", align 1
@.str.4 = private global [55 x i8] c"\11c\11u\08}^9Y1^eFo\0Cj\1DC8B3WxF|]mEjK0V!I+O\11f Q5\16y\1Dy\1E?L$\05h\0E/\1F ", align 1
@.str.5 = private global [81 x i8] c"?M?[*_\80\E7\87\EF\84\BF\A0\89\B9\9A\A8\96\B7\C4\B3\DF\81\F3\88\FB\8F\ED\9A\C6\A2\C8\BD\96\F8\8B\ED\DE\F3\D4\E5\CA\EB\E0\CA\E4\C9\EA\8C\FF\99\AA\85\EC\89\E1\8D\AE\C8\BC\9D\F9\82\F3\97\F5\82\E8\8D\AE\DB\B5\96\F4\86\F4\96\FB\DC\EE\EF", align 1
@.str.6 = private global [186 x i8] c"\0C\80\F4\92\E1\96\B7\D2\B4\DE\B3\8A\AB\84\AD\86\F3\86\EC\B4\C8\BD\D0\A6\C6\B3\ED\8B\EF\9C\B5\D5\A8\D0\E1\CE\EF\E0\CD\EE\DC\F6\D7\EB\D7\F8\D1\A5\CD\A4\D1\EA\C4\F7\DF\00'\02#\0Cy\10~\22R'V$H=c\05a\16?_.J{XyJgH\7FWxF|]v\04n\01vOgUhBlMlKlE2E)w\05r\01u\17d<\5C:Oh\0Ay\1F0\1D>\0F$\053\1B<\02@aJ@*E2\043\1B+\03+\08)I<\5CmD!V0A%\06p\04%A:K/M:`\05&S=\1E}\19:]2^@5\0767", align 1
@.str.7 = private global [87 x i8] c".^.L?Lm\0Cn\08e`Aj\5C}A}^8W$\18+\04f\15sDk\19n\1Du\12x\0CXi5\1D5\1A;[*N\7FR\22W&P5Q#\1A;_(Y=_,J/\10e\0B,O+\0Cp N?_=Jk\0Bz\09i\11\12", align 1
@.str.8 = private global [112 x i8] c"i\1Bi\0D\80\F5\D6\B1\D1\B9\D6\ED\CE\E7\D0\A6\D0\BF\CC\FB\D0\FA\CB\EC\D2\F0\D1\A6\D1\BD\E3\91\E6\95\E1\83\F8\A8\D0\B6\C3\EC\8E\FD\9B\AC\81\A2\93\C0\E1\DA\F4\DE\F3\D4\96\E5\83\F7\9B\FF\92\E7\C8\AA\D9\BF\90\BF\DE\A8\DD\B9\E7\89\F0\97\E5\81\F6\D7\C0\A2\D2\F3\93\FE\DF\AB\C6\B6\D8\AD\C5\B7\D2\BC\DA\BF\A0\C4\AC\C3\B1\C6\B5\D5\BD\D4\A1\A2", align 1
@.str.9 = private global [81 x i8] c"\0D\7F\0Di\1CiJ-M%JqR{KlRpQ&Q=c\11f\15a\03x(P6Cl\0E}\1B+\08)\1A7\18-\05-\02#C2VhG*O'Kl\06vW3L=Y;P6St\01oP6H>`\0D. !", align 1
@.str.10 = private global [186 x i8] c"|\10d\02q\06'B$N#\1A;\14=\16c\16|$X-`\16v\03];_,\05e\18\80\B2\9F\C0\F1\DE\FF\CB\E3\C4\FA\C8\E9\C2\B8\D2\BD\CA\F3\DB\EA\C4\E5\C4\E3\C4\ED\9A\ED\81\DF\AD\DA\A9\DD\BF\CC\94\F4\92\E7\D0\B2\C1\A7\97\BC\9D\AE\83\A4\93\BB\9C\A2\A0\81\AA\E0\8A\E5\92\AB\83\B1\84\AE\88\A9\90\B7\98\B1\C6\B1\DD\83\F1\86\F5\81\E3\98\C8\B0\D6\A3\8C\EE\9D\FB\CB\E8\C9\FA\D7\F8\D0\FA\DB\E7\DB\FC\D5\A1\C9\A8\DD\ED\DC\F6\C8\E2\CC\E1\C2\A4\D7\B1\81\B0\D5\A2\DC\AD\C9\EA\84\F8\D9\BD\C6\B7\D3\B1\C6\A4\C1\E2\97\F9\DA\B9\DD\FE\99\F6\9A\FC\89\BB\8A\8B", align 1
@.str.11 = private global [95 x i8] c"k\19k\0F~\0B,K+C0\0B,\05lMqMn\08g\14(\1B4V%Cs^.G'X>fW\0B#\0B(\09I<\5C*H.A6\17w\06bT{\09b\04u\11K|\22\03l\0E~_?Rs\07j\1A|\09a\13v F#\04h\08g\15b\11q\19x\0D\0E", align 1
@.str.12 = private global [87 x i8] c"4H<Z)^\7F\1A|\16{BcL~_c_\80\EA\85\F2\C2\F1\DA\BC\CF\A9\99\B8\CC\B9\CC\A6\C3\A7\D5\8F\C0\9E\B8\92\BF\A0\C2\B1\D7\E7\CA\BA\CF\BE\D8\BD\D9\AB\92\B3\D7\B0\C1\A5\C7\B4\D2\B7\98\ED\83\A4\C7\A3\84\E8\88\E6\97\F7\95\E2\C3\A3\D2\A1\C1\B9\BA", align 1
@.str.13 = private global [112 x i8] c";I;_.[|\1B{\13\80\BB\9C\B5\9E\EC\86\E9\9E\A9\9E\B8\89\AA\98\A6\87\F4\83\EF\B1\C3\B8\CB\BF\DD\AA\F6\92\F8\8D\A6\C8\BB\DD\ED\C2\E3\D4\F9\DA\E3\CB\E3\D0\F1\B1\C4\A4\D2\C0\A6\C9\BE\9F\FF\8E\EA\DC\F3\92\EC\99\FD\A3\CD\AC\CB\B9\DD\AA\8B\E4\86\F6\D7\B7\DA\FB\8F\E2\92\F4\81\E9\9B\FE\98\FE\9B\BC\E0\90\FF\8D\FA\89\E9\81\F0\85\86", align 1
@.str.14 = private global [105 x i8] c"#Q#G6Cd\03c\0BhSt]mNtJk W;e\17d\17c\01v*N,Yr\14g\011\1E?\10=\1E0\01)\01.\0FO>Z0^<S(\09i\1C|Na\06d\13{\19}#X\22S7\18q\11cD&Ij O=]*D8_7S8\19{\15|\10e\18z\14{\10\11", align 1
@.str.15 = private global [107 x i8] c"\08|\10v\05rS6X2_fGp\15q\08X2WxF|]*]1o\1Dj\19m\0F|$D\22W\80\E2\91\F7\C7\EC\CD\FE\D3\F4\CE\E8\C2\EF\D0\92\E1\87\F3\9F\FB\96\E3\C4\A6\D5\B3\83\AE\CB\AF\DA\B4\D8\BE\E2\8C\E9\CA\A3\C3\B1\92\F4\9B\BC\CA\A5\D7\B7\C4\AE\DE\B9\D1\B5\D2\F3\91\FF\92\E2\97\E6\88\E2\8D\FA\FB", align 1
@.str.16 = private global [81 x i8] c">N>\5C/\5C}\1C~\18uPqZlMqMn\1Bn\04\5C0E8N.[\05c\07t]=P8\0B(\09:\178\0D%\0D\22\03c\12vEl\03h\02pQ9Kl\0As\04b\02w\13xY.Bc\07w\03c\101\01\02", align 1
@.str.17 = private global [186 x i8] c"\04x\0Cj\19nO*L&KrS|U~\0B~\14L@5H>^+u\13w\04-M@(\1B8\19*\07(\1E8\19%\19:\13g\0Fb\170\1A)\01\22\05$\05.[.D\1Cp\05x\0En\1BE#G4\1D}\10xKhIzWxOgHvLmF4^1F\7FWeXr\5C}\5C{\5Cu\02u\19G5B1E'T\0Cl\0A\7FX:I/\1E3\14%\0A+\1D5\16,\123\1Cj\04k \12%\0D=\15=\123S\22Fu\5C9N8I-\0Eh\1C=Y\22S7U\22H-\0E{\156U1\12u\1Av\18m_no", align 1
@.str.18 = private global [95 x i8] c"\16f\16t\07tU4V@-\189\12}^dZ{\13~\0B9\0C%E8`S~\0Eg\07x\1EFw+\03+\08)i\1C|\0Ah\0Ea\167W&Bq`\14}\1Dn\0CXi5\16\7F\1FmN0_\80\F6\99\EB\8B\00j\1A}\15q\167U;V&S\22D.A67", align 1
@.str.19 = private global [87 x i8] c":J:`\13hI0R<QlMfXyEyZ4[0\047 B1WfI;P#K0V&~O\13;\13@a\01t\14'\0Az\0F~\18}\19kRs\17p\01e\07t\12wX-Cd\07cD(H&W7U\22\03c\12a\01yz", align 1
@.str.20 = private global [112 x i8] c"[)[?N;\1C{\1Bs \1B<\15>L&I>\09>\18)\0A8\06'T#O\11c\18k\1F}\0AV2X-\06h\1B}P}^oDe^xR\7F`\22Q7C/K&St\16e\032\1D\80\FA\8F\EB\B5\DB\BE\D9\AB\CF\BC\9D\F6\98\EC\CD\AD\C4\E5\91\00t\16c\0By J0Uv\16z\15g\14g\07o\02wx", align 1
@.str.21 = private global [105 x i8] c"*Z*P#Xy B,A|]vHiUiJ?J(x\0Cy\0Cz\1Ao1W3Ha\01t\14'\0C-\1E3\14&\17?\17<\1D]0X.D\22M:\1B{\0An]t\11u\04n\0El4A9J0\11z\1CpQ1`A5\5C0R'O=\5C6T1\12r\1Eq\03x\0Bk\03n\1B\1C", align 1
@.str.22 = private global [107 x i8] c"'U'C2Gh\0Fo\07lWxQ6T#}\15rSoSt\01x\16J:O>L0E\1B}\19nG'V2\01.\0F@mNxR|Qr4G!U9]4Ab\04w\11$\0Bp\16a\09k\0FQ9^\7F\18z\0A+K&\07s\1En\10e\0D\7F\1At\12wX<T;I>M-E,YZ", align 1
@__tvm_main__ = weak local_unnamed_addr global [6 x i8] c"a\19y\1E{|", align 1
@"__<stdin>.decode.status" = internal global [24 x i8] c"gFisQ\7FJl)M:+r{cF|BTx\1Bhg\0D", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 0, void ()* @"__<stdin>.decode.Ctor", i8* null }]

define dllexport i32 @myadd(i8* noalias nocapture readonly, i8* noalias nocapture readonly, i32) local_unnamed_addr {
entry:
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.12, i32 0, i32 0), i32 12, i8 114, i64 86)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i32 0, i32 0), i32 0, i8 103, i64 57)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.1, i32 0, i32 0), i32 1, i8 70, i64 132)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.2, i32 0, i32 0), i32 2, i8 105, i64 132)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str.3, i32 0, i32 0), i32 3, i8 115, i64 132)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.8, i32 0, i32 0), i32 8, i8 41, i64 111)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.9, i32 0, i32 0), i32 9, i8 77, i64 80)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i32 0, i32 0), i32 4, i8 81, i64 54)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.5, i32 0, i32 0), i32 5, i8 127, i64 80)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.6, i32 0, i32 0), i32 6, i8 74, i64 185)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.7, i32 0, i32 0), i32 7, i8 108, i64 86)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.16, i32 0, i32 0), i32 16, i8 124, i64 80)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.17, i32 0, i32 0), i32 17, i8 66, i64 185)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.18, i32 0, i32 0), i32 18, i8 84, i64 94)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.19, i32 0, i32 0), i32 19, i8 120, i64 86)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([186 x i8], [186 x i8]* @.str.10, i32 0, i32 0), i32 10, i8 58, i64 185)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.11, i32 0, i32 0), i32 11, i8 43, i64 94)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.13, i32 0, i32 0), i32 13, i8 123, i64 111)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.14, i32 0, i32 0), i32 14, i8 99, i64 104)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.15, i32 0, i32 0), i32 15, i8 70, i64 106)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([112 x i8], [112 x i8]* @.str.20, i32 0, i32 0), i32 20, i8 27, i64 111)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.21, i32 0, i32 0), i32 21, i8 104, i64 104)
  call void @"__<stdin>.decode.String"(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.22, i32 0, i32 0), i32 22, i8 103, i64 106)
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

if_end:                                           ; preds = %if_then, %assert_end12
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

if_end24:                                         ; preds = %if_then23, %assert_end22
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

if_end40:                                         ; preds = %if_then39, %assert_end38
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

for_body:                                         ; preds = %for_body, %for_body.preheader
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

define void @"__<stdin>.decode.String"(i8* %str, i32 %sidx, i8 %key, i64 %len) {
check:
  %idx = alloca i64, align 4
  %0 = getelementptr inbounds [24 x i8], [24 x i8]* @"__<stdin>.decode.status", i32 0, i32 %sidx
  %1 = cmpxchg i8* %0, i8 %key, i8 1 acq_rel monotonic
  %2 = extractvalue { i8, i1 } %1, 0
  %3 = extractvalue { i8, i1 } %1, 1
  br i1 %3, label %for.entry, label %lock

lock:                                             ; preds = %lock, %check
  %4 = icmp eq i8 %2, 1
  br i1 %4, label %lock, label %exit

for.entry:                                        ; preds = %check
  store i64 %len, i64* %idx, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %for.entry
  %5 = load i64, i64* %idx, align 4
  %cmp = icmp ugt i64 %5, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %lastIdx = sub nsw i64 %5, 1
  %addr = getelementptr inbounds i8, i8* %str, i64 %5
  %enc = load i8, i8* %addr, align 1
  %6 = sub nsw i8 %enc, 1
  %7 = getelementptr inbounds i8, i8* %str, i64 %lastIdx
  %key1 = load i8, i8* %7, align 1
  %dec = xor i8 %6, %key1
  store i8 %dec, i8* %addr, align 1
  store i64 %lastIdx, i64* %idx, align 4
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %8 = getelementptr inbounds i8, i8* %str, i64 %5
  %9 = load i8, i8* %8, align 1
  %10 = sub nsw i8 %9, 1
  %11 = xor i8 %10, %2
  store i8 %11, i8* %8, align 1
  store i8 0, i8* %0, align 1
  br label %exit

exit:                                             ; preds = %for.end, %lock
  ret void
}

define internal void @"__<stdin>.decode.Ctor"() {
entry:
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
