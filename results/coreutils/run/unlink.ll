; ModuleID = 'coreutils-8.30/src/unlink.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.infomap = type { i8*, i8* }
%struct.option = type { i8*, i32, i32*, i32 }
%struct.quoting_options = type { i32, i32, [8 x i32], i8*, i8* }
%struct.slotvec = type { i64, i8* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Usage: %s FILE\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"Call the unlink function to remove the specified FILE.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.14 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"unlink\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.25 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.27 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.28 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@long_options = internal constant [1 x %struct.option] zeroinitializer, align 16, !dbg !0
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"cannot unlink %s\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), align 8, !dbg !39
@.str.29 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !45
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !50
@.str.32 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.33 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.34 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !54
@opterr = external local_unnamed_addr global i32, align 4
@.str.39 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options.40 = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.41, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.42, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !61
@.str.1.41 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.42 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !77
@.str.47 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.48 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.49 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.51, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.53, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.54, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.55, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.56, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.58, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.59, i32 0, i32 0), i8* null], align 16, !dbg !85
@.str.50 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.51 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.52 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.53 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.54 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.55 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.56 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.57 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.58 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.59 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !116
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !123
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !135
@.str.11.60 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.61 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.62 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.63 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.64 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.65 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.66 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !142
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !149
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !137
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !151
@.str.73 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.74 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.75 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.76 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.77 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.78 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.79 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.80 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.81 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.82 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.83 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.84 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.85 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.86 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.89 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.90 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.91 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.92 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.93 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.94 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !157
@.str.1.105 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.115 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.116 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.119 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.120 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) #0 !dbg !603 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !608, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.value(metadata i32 %0, metadata !607, metadata !DIExpression()), !dbg !631
  %3 = icmp eq i32 %0, 0, !dbg !632
  br i1 %3, label %9, label %4, !dbg !633

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !634, !tbaa !636
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !634
  %7 = load i8*, i8** @program_name, align 8, !dbg !634, !tbaa !636
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !634
  br label %57, !dbg !634

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !640
  %11 = load i8*, i8** @program_name, align 8, !dbg !640, !tbaa !636
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #10, !dbg !640
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !641
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !641, !tbaa !636
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !641
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !642
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !642, !tbaa !636
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !642
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !643
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !643, !tbaa !636
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !643
  %22 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !644
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %22) #10, !dbg !644
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %22, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !627
  %23 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !645
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !616, metadata !DIExpression()) #10, !dbg !646
  br label %24, !dbg !647

; <label>:24:                                     ; preds = %29, %9
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !616, metadata !DIExpression()) #10, !dbg !646
  %27 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #14, !dbg !647
  %28 = icmp eq i32 %27, 0, !dbg !647
  br i1 %28, label %34, label %29, !dbg !648

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds %struct.infomap, %struct.infomap* %26, i64 1, !dbg !649
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !616, metadata !DIExpression()) #10, !dbg !646
  %31 = getelementptr inbounds %struct.infomap, %struct.infomap* %30, i64 0, i32 0, !dbg !650
  %32 = load i8*, i8** %31, align 8, !dbg !650, !tbaa !651
  %33 = icmp eq i8* %32, null, !dbg !653
  br i1 %33, label %34, label %24, !dbg !654, !llvm.loop !655

; <label>:34:                                     ; preds = %29, %24
  %35 = phi %struct.infomap* [ %30, %29 ], [ %26, %24 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !616, metadata !DIExpression()) #10, !dbg !646
  call void @llvm.dbg.value(metadata %struct.infomap* %35, metadata !616, metadata !DIExpression()) #10, !dbg !646
  %36 = getelementptr inbounds %struct.infomap, %struct.infomap* %35, i64 0, i32 1, !dbg !658
  %37 = load i8*, i8** %36, align 8, !dbg !658, !tbaa !660
  %38 = icmp eq i8* %37, null, !dbg !661
  %39 = select i1 %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !662
  call void @llvm.dbg.value(metadata i8* %39, metadata !615, metadata !DIExpression()) #10, !dbg !663
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0), i32 5) #10, !dbg !664
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !664
  %42 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !665
  call void @llvm.dbg.value(metadata i8* %42, metadata !623, metadata !DIExpression()) #10, !dbg !666
  %43 = icmp eq i8* %42, null, !dbg !667
  br i1 %43, label %50, label %44, !dbg !669

; <label>:44:                                     ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.24, i64 0, i64 0), i64 3) #14, !dbg !670
  %46 = icmp eq i32 %45, 0, !dbg !670
  br i1 %46, label %50, label %47, !dbg !671

; <label>:47:                                     ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !672
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !672
  br label %50, !dbg !674

; <label>:50:                                     ; preds = %34, %44, %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !675
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !675
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !676
  %54 = icmp eq i8* %39, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), !dbg !676
  %55 = select i1 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.28, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !676
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %53, i8* %39, i8* %55) #10, !dbg !676
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %22) #10, !dbg !677
  br label %57

; <label>:57:                                     ; preds = %50, %4
  tail call void @exit(i32 %0) #15, !dbg !678
  unreachable, !dbg !678
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @dcgettext(i8*, i8*, i32) local_unnamed_addr #2

declare i32 @__fprintf_chk(%struct._IO_FILE*, i32, i8*, ...) local_unnamed_addr #3

declare i32 @__printf_chk(i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fputs_unlocked(i8* nocapture readonly, %struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #4

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8* nocapture, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @setlocale(i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @strncmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !679 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !684, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i8** %1, metadata !685, metadata !DIExpression()), !dbg !687
  %3 = load i8*, i8** %1, align 8, !dbg !688, !tbaa !636
  tail call void @set_program_name(i8* %3) #10, !dbg !689
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !690
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !691
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !692
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !693
  %8 = load i8*, i8** @Version, align 8, !dbg !694, !tbaa !636
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* null) #10, !dbg !695
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* getelementptr inbounds ([1 x %struct.option], [1 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !696
  %10 = icmp eq i32 %9, -1, !dbg !698
  br i1 %10, label %12, label %11, !dbg !699

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !700
  unreachable, !dbg !700

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !701, !tbaa !703
  %14 = icmp slt i32 %13, %0, !dbg !705
  br i1 %14, label %17, label %15, !dbg !706

; <label>:15:                                     ; preds = %12
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !707
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16) #10, !dbg !709
  tail call void @usage(i32 1) #16, !dbg !710
  unreachable, !dbg !710

; <label>:17:                                     ; preds = %12
  %18 = add nsw i32 %13, 1, !dbg !711
  %19 = icmp slt i32 %18, %0, !dbg !712
  br i1 %19, label %20, label %28, !dbg !714

; <label>:20:                                     ; preds = %17
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !715
  %22 = load i32, i32* @optind, align 4, !dbg !717, !tbaa !703
  %23 = add nsw i32 %22, 1, !dbg !718
  %24 = sext i32 %23 to i64, !dbg !719
  %25 = getelementptr inbounds i8*, i8** %1, i64 %24, !dbg !719
  %26 = load i8*, i8** %25, align 8, !dbg !719, !tbaa !636
  %27 = tail call i8* @quote(i8* %26) #10, !dbg !720
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %21, i8* %27) #10, !dbg !721
  tail call void @usage(i32 1) #16, !dbg !722
  unreachable, !dbg !722

; <label>:28:                                     ; preds = %17
  %29 = sext i32 %13 to i64, !dbg !723
  %30 = getelementptr inbounds i8*, i8** %1, i64 %29, !dbg !723
  %31 = load i8*, i8** %30, align 8, !dbg !723, !tbaa !636
  %32 = tail call i32 @unlink(i8* %31) #10, !dbg !725
  %33 = icmp eq i32 %32, 0, !dbg !726
  br i1 %33, label %43, label %34, !dbg !727

; <label>:34:                                     ; preds = %28
  %35 = tail call i32* @__errno_location() #17, !dbg !728
  %36 = load i32, i32* %35, align 4, !dbg !728, !tbaa !703
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !728
  %38 = load i32, i32* @optind, align 4, !dbg !728, !tbaa !703
  %39 = sext i32 %38 to i64, !dbg !728
  %40 = getelementptr inbounds i8*, i8** %1, i64 %39, !dbg !728
  %41 = load i8*, i8** %40, align 8, !dbg !728, !tbaa !636
  %42 = tail call i8* @quotearg_style(i32 4, i8* %41) #10, !dbg !728
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %36, i8* %37, i8* %42) #10, !dbg !728
  unreachable, !dbg !728

; <label>:43:                                     ; preds = %28
  ret i32 0, !dbg !729
}

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @unlink(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !730 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !732, metadata !DIExpression()), !dbg !733
  store i8* %0, i8** @file_name, align 8, !dbg !734, !tbaa !636
  ret void, !dbg !735
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !736 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !740, metadata !DIExpression()), !dbg !741
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !742, !tbaa !743
  ret void, !dbg !745
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !746 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !753, !tbaa !636
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !754
  %3 = icmp eq i32 %2, 0, !dbg !755
  br i1 %3, label %22, label %4, !dbg !756

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !757, !tbaa !743, !range !758
  %6 = icmp eq i8 %5, 0, !dbg !757
  br i1 %6, label %11, label %7, !dbg !759

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !760
  %9 = load i32, i32* %8, align 4, !dbg !760, !tbaa !703
  %10 = icmp eq i32 %9, 32, !dbg !761
  br i1 %10, label %22, label %11, !dbg !762

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.32, i64 0, i64 0), i32 5) #10, !dbg !763
  call void @llvm.dbg.value(metadata i8* %12, metadata !750, metadata !DIExpression()), !dbg !764
  %13 = load i8*, i8** @file_name, align 8, !dbg !765, !tbaa !636
  %14 = icmp eq i8* %13, null, !dbg !765
  %15 = tail call i32* @__errno_location() #17, !dbg !767
  %16 = load i32, i32* %15, align 4, !dbg !767, !tbaa !703
  br i1 %14, label %19, label %17, !dbg !768

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !769
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.33, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !770
  br label %20, !dbg !770

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.34, i64 0, i64 0), i8* %12) #10, !dbg !771
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !772, !tbaa !703
  tail call void @_exit(i32 %21) #15, !dbg !773
  unreachable, !dbg !773

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !774, !tbaa !636
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !776
  %25 = icmp eq i32 %24, 0, !dbg !777
  br i1 %25, label %28, label %26, !dbg !778

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !779, !tbaa !703
  tail call void @_exit(i32 %27) #15, !dbg !780
  unreachable, !dbg !780

; <label>:28:                                     ; preds = %22
  ret void, !dbg !781
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #7 !dbg !782 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !787, metadata !DIExpression()), !dbg !812
  call void @llvm.dbg.value(metadata i8** %1, metadata !788, metadata !DIExpression()), !dbg !813
  call void @llvm.dbg.value(metadata i8* %2, metadata !789, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.value(metadata i8* %3, metadata !790, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.value(metadata i8* %4, metadata !791, metadata !DIExpression()), !dbg !816
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !792, metadata !DIExpression()), !dbg !817
  %8 = load i32, i32* @opterr, align 4, !dbg !818, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %8, metadata !794, metadata !DIExpression()), !dbg !819
  store i32 0, i32* @opterr, align 4, !dbg !820, !tbaa !703
  %9 = icmp eq i32 %0, 2, !dbg !821
  br i1 %9, label %10, label %17, !dbg !822

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.39, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options.40, i64 0, i64 0), i32* null) #10, !dbg !823
  call void @llvm.dbg.value(metadata i32 %11, metadata !793, metadata !DIExpression()), !dbg !824
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !825

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !826
  br label %17, !dbg !827

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !828
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #10, !dbg !828
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !795, metadata !DIExpression()), !dbg !829
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !830
  call void @llvm.va_start(i8* nonnull %14), !dbg !830
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !831, !tbaa !636
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !832
  call void @exit(i32 0) #15, !dbg !833
  unreachable, !dbg !833

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !834, !tbaa !703
  store i32 0, i32* @optind, align 4, !dbg !835, !tbaa !703
  ret void, !dbg !836
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !837 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !839, metadata !DIExpression()), !dbg !842
  %2 = icmp eq i8* %0, null, !dbg !843
  br i1 %2, label %3, label %6, !dbg !845

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !846, !tbaa !636
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.47, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !848
  tail call void @abort() #15, !dbg !849
  unreachable, !dbg !849

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !850
  call void @llvm.dbg.value(metadata i8* %7, metadata !840, metadata !DIExpression()), !dbg !851
  %8 = icmp eq i8* %7, null, !dbg !852
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !853
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !854
  call void @llvm.dbg.value(metadata i8* %10, metadata !841, metadata !DIExpression()), !dbg !855
  %11 = ptrtoint i8* %10 to i64, !dbg !856
  %12 = ptrtoint i8* %0 to i64, !dbg !856
  %13 = sub i64 %11, %12, !dbg !856
  %14 = icmp sgt i64 %13, 6, !dbg !858
  br i1 %14, label %15, label %24, !dbg !859

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !860
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.48, i64 0, i64 0), i64 7) #14, !dbg !861
  %18 = icmp eq i32 %17, 0, !dbg !862
  br i1 %18, label %19, label %24, !dbg !863

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !839, metadata !DIExpression()), !dbg !842
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.49, i64 0, i64 0), i64 3) #14, !dbg !864
  %21 = icmp eq i32 %20, 0, !dbg !867
  br i1 %21, label %22, label %24, !dbg !868

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !869
  call void @llvm.dbg.value(metadata i8* %23, metadata !839, metadata !DIExpression()), !dbg !842
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !871, !tbaa !636
  br label %24, !dbg !872

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !839, metadata !DIExpression()), !dbg !842
  store i8* %25, i8** @program_name, align 8, !dbg !873, !tbaa !636
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !874, !tbaa !636
  ret void, !dbg !875
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !876 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !881, metadata !DIExpression()), !dbg !884
  %2 = tail call i32* @__errno_location() #17, !dbg !885
  %3 = load i32, i32* %2, align 4, !dbg !885, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %3, metadata !882, metadata !DIExpression()), !dbg !886
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !887
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !887
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !887
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !888
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !888
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !883, metadata !DIExpression()), !dbg !889
  store i32 %3, i32* %2, align 4, !dbg !890, !tbaa !703
  ret %struct.quoting_options* %8, !dbg !891
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !892 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !898, metadata !DIExpression()), !dbg !899
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !900
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !900
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !901
  %5 = load i32, i32* %4, align 8, !dbg !901, !tbaa !902
  ret i32 %5, !dbg !904
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !905 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !909, metadata !DIExpression()), !dbg !911
  call void @llvm.dbg.value(metadata i32 %1, metadata !910, metadata !DIExpression()), !dbg !912
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !913
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !913
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !914
  store i32 %1, i32* %5, align 8, !dbg !915, !tbaa !902
  ret void, !dbg !916
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !917 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !921, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.value(metadata i8 %1, metadata !922, metadata !DIExpression()), !dbg !931
  call void @llvm.dbg.value(metadata i32 %2, metadata !923, metadata !DIExpression()), !dbg !932
  call void @llvm.dbg.value(metadata i8 %1, metadata !924, metadata !DIExpression()), !dbg !933
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !934
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !934
  %6 = lshr i8 %1, 5, !dbg !935
  %7 = zext i8 %6 to i64, !dbg !935
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !936
  call void @llvm.dbg.value(metadata i32* %8, metadata !926, metadata !DIExpression()), !dbg !937
  %9 = and i8 %1, 31, !dbg !938
  %10 = zext i8 %9 to i32, !dbg !938
  call void @llvm.dbg.value(metadata i32 %10, metadata !928, metadata !DIExpression()), !dbg !939
  %11 = load i32, i32* %8, align 4, !dbg !940, !tbaa !703
  %12 = lshr i32 %11, %10, !dbg !941
  %13 = and i32 %12, 1, !dbg !942
  call void @llvm.dbg.value(metadata i32 %13, metadata !929, metadata !DIExpression()), !dbg !943
  %14 = and i32 %2, 1, !dbg !944
  %15 = xor i32 %13, %14, !dbg !945
  %16 = shl i32 %15, %10, !dbg !946
  %17 = xor i32 %16, %11, !dbg !947
  store i32 %17, i32* %8, align 4, !dbg !947, !tbaa !703
  ret i32 %13, !dbg !948
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !949 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !953, metadata !DIExpression()), !dbg !956
  call void @llvm.dbg.value(metadata i32 %1, metadata !954, metadata !DIExpression()), !dbg !957
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !958
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !960
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !953, metadata !DIExpression()), !dbg !956
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !961
  %6 = load i32, i32* %5, align 4, !dbg !961, !tbaa !962
  call void @llvm.dbg.value(metadata i32 %6, metadata !955, metadata !DIExpression()), !dbg !963
  store i32 %1, i32* %5, align 4, !dbg !964, !tbaa !962
  ret i32 %6, !dbg !965
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !966 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !970, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.value(metadata i8* %1, metadata !971, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i8* %2, metadata !972, metadata !DIExpression()), !dbg !975
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !976
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !978
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !970, metadata !DIExpression()), !dbg !973
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !979
  store i32 10, i32* %6, align 8, !dbg !980, !tbaa !902
  %7 = icmp ne i8* %1, null, !dbg !981
  %8 = icmp ne i8* %2, null, !dbg !983
  %9 = and i1 %7, %8, !dbg !984
  br i1 %9, label %11, label %10, !dbg !984

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !985
  unreachable, !dbg !985

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !986
  store i8* %1, i8** %12, align 8, !dbg !987, !tbaa !988
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !989
  store i8* %2, i8** %13, align 8, !dbg !990, !tbaa !991
  ret void, !dbg !992
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !993 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !997, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i64 %1, metadata !998, metadata !DIExpression()), !dbg !1006
  call void @llvm.dbg.value(metadata i8* %2, metadata !999, metadata !DIExpression()), !dbg !1007
  call void @llvm.dbg.value(metadata i64 %3, metadata !1000, metadata !DIExpression()), !dbg !1008
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1001, metadata !DIExpression()), !dbg !1009
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1010
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1010
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1002, metadata !DIExpression()), !dbg !1011
  %8 = tail call i32* @__errno_location() #17, !dbg !1012
  %9 = load i32, i32* %8, align 4, !dbg !1012, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %9, metadata !1003, metadata !DIExpression()), !dbg !1013
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1014
  %11 = load i32, i32* %10, align 8, !dbg !1014, !tbaa !902
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1015
  %13 = load i32, i32* %12, align 4, !dbg !1015, !tbaa !962
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1016
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1017
  %16 = load i8*, i8** %15, align 8, !dbg !1017, !tbaa !988
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1018
  %18 = load i8*, i8** %17, align 8, !dbg !1018, !tbaa !991
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1019
  call void @llvm.dbg.value(metadata i64 %19, metadata !1004, metadata !DIExpression()), !dbg !1020
  store i32 %9, i32* %8, align 4, !dbg !1021, !tbaa !703
  ret i64 %19, !dbg !1022
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1023 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1029, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 %1, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %2, metadata !1031, metadata !DIExpression()), !dbg !1095
  call void @llvm.dbg.value(metadata i64 %3, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %4, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 %5, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i32* %6, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8* %7, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %8, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 0, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 0, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* null, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 0, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8 0, metadata !1043, metadata !DIExpression()), !dbg !1106
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1107
  %14 = icmp eq i64 %13, 1, !dbg !1108
  %15 = lshr i32 %5, 1, !dbg !1109
  %16 = trunc i32 %15 to i8, !dbg !1109
  %17 = and i8 %16, 1, !dbg !1109
  call void @llvm.dbg.value(metadata i8 %17, metadata !1045, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8 0, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 0, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 1, metadata !1048, metadata !DIExpression()), !dbg !1112
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1113

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1103
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1104
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1105
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1106
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1114
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1110
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1111
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1112
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %39, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %38, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %37, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %36, metadata !1045, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i64 %35, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %34, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %33, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8* %32, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %31, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 0, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %30, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %29, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32 %28, metadata !1033, metadata !DIExpression()), !dbg !1097
  switch i32 %28, label %92 [
    i32 6, label %41
    i32 5, label %42
    i32 7, label %93
    i32 0, label %91
    i32 2, label %83
    i32 4, label %77
    i32 3, label %74
    i32 1, label %75
    i32 10, label %51
    i32 8, label %48
    i32 9, label %48
  ], !dbg !1116

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 1, metadata !1045, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %36, metadata !1045, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i32 5, metadata !1033, metadata !DIExpression()), !dbg !1097
  br label %93, !dbg !1117

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1045, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i32 5, metadata !1033, metadata !DIExpression()), !dbg !1097
  %43 = and i8 %36, 1, !dbg !1118
  %44 = icmp eq i8 %43, 0, !dbg !1118
  br i1 %44, label %45, label %93, !dbg !1117

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1120
  br i1 %46, label %93, label %47, !dbg !1123

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1120, !tbaa !1124
  br label %93, !dbg !1120

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.60, i64 0, i64 0), i32 %28), !dbg !1125
  call void @llvm.dbg.value(metadata i8* %49, metadata !1036, metadata !DIExpression()), !dbg !1100
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.61, i64 0, i64 0), i32 %28), !dbg !1129
  call void @llvm.dbg.value(metadata i8* %50, metadata !1037, metadata !DIExpression()), !dbg !1101
  br label %51, !dbg !1130

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %52, metadata !1036, metadata !DIExpression()), !dbg !1100
  %54 = and i8 %36, 1, !dbg !1131
  %55 = icmp eq i8 %54, 0, !dbg !1131
  br i1 %55, label %56, label %71, !dbg !1133

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 0, metadata !1039, metadata !DIExpression()), !dbg !1102
  %57 = load i8, i8* %52, align 1, !dbg !1134, !tbaa !1124
  %58 = icmp eq i8 %57, 0, !dbg !1137
  br i1 %58, label %71, label %59, !dbg !1137

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %62, metadata !1039, metadata !DIExpression()), !dbg !1102
  %63 = icmp ult i64 %62, %40, !dbg !1138
  br i1 %63, label %64, label %66, !dbg !1141

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1138
  store i8 %60, i8* %65, align 1, !dbg !1138, !tbaa !1124
  br label %66, !dbg !1138

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1141
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1142
  call void @llvm.dbg.value(metadata i8* %68, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %67, metadata !1039, metadata !DIExpression()), !dbg !1102
  %69 = load i8, i8* %68, align 1, !dbg !1134, !tbaa !1124
  %70 = icmp eq i8 %69, 0, !dbg !1137
  br i1 %70, label %71, label %59, !dbg !1137, !llvm.loop !1143

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1102
  call void @llvm.dbg.value(metadata i64 %72, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 1, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %53, metadata !1041, metadata !DIExpression()), !dbg !1104
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1145
  call void @llvm.dbg.value(metadata i64 %73, metadata !1042, metadata !DIExpression()), !dbg !1105
  br label %93, !dbg !1146

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1043, metadata !DIExpression()), !dbg !1106
  br label %75, !dbg !1147

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1114
  call void @llvm.dbg.value(metadata i8 %76, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 1, metadata !1045, metadata !DIExpression()), !dbg !1109
  br label %77, !dbg !1148

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1106
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1114
  call void @llvm.dbg.value(metadata i8 %79, metadata !1045, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %78, metadata !1043, metadata !DIExpression()), !dbg !1106
  %80 = and i8 %79, 1, !dbg !1149
  %81 = icmp eq i8 %80, 0, !dbg !1149
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1151
  br label %83, !dbg !1151

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1152
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1109
  call void @llvm.dbg.value(metadata i8 %85, metadata !1045, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %84, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i32 2, metadata !1033, metadata !DIExpression()), !dbg !1097
  %86 = and i8 %85, 1, !dbg !1153
  %87 = icmp eq i8 %86, 0, !dbg !1153
  br i1 %87, label %88, label %93, !dbg !1155

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1156
  br i1 %89, label %93, label %90, !dbg !1159

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1156, !tbaa !1124
  br label %93, !dbg !1156

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1045, metadata !DIExpression()), !dbg !1109
  br label %93, !dbg !1160

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1161
  unreachable, !dbg !1161

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1102
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.61, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.61, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.61, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), %41 ], !dbg !1114
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1114
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1114
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1162
  call void @llvm.dbg.value(metadata i8 %101, metadata !1045, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8 %100, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %99, metadata !1042, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i8* %98, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %97, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i32 %94, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 0, metadata !1038, metadata !DIExpression()), !dbg !1163
  %102 = and i8 %100, 1
  %103 = icmp ne i8 %102, 0
  %104 = icmp ne i32 %94, 2
  %105 = and i1 %104, %103
  %106 = icmp ne i64 %99, 0
  %107 = and i1 %106, %105
  %108 = icmp ugt i64 %99, 1
  %109 = and i8 %101, 1
  %110 = icmp eq i8 %109, 0
  %111 = icmp ne i8 %109, 0
  %112 = and i1 %18, %111
  %113 = or i1 %104, %110
  %114 = icmp eq i32 %94, 2
  %115 = xor i1 %103, true
  %116 = and i1 %114, %111
  %117 = and i8 %100, %101
  %118 = and i8 %117, 1
  %119 = icmp ne i8 %118, 0
  %120 = and i1 %119, %106
  br label %121, !dbg !1164

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1165
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1102
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1103
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1110
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1111
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1112
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %128, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %127, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %126, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %125, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %122, metadata !1038, metadata !DIExpression()), !dbg !1163
  %130 = icmp eq i64 %125, -1, !dbg !1166
  br i1 %130, label %131, label %135, !dbg !1167

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1168
  %133 = load i8, i8* %132, align 1, !dbg !1168, !tbaa !1124
  %134 = icmp eq i8 %133, 0, !dbg !1169
  br i1 %134, label %617, label %137, !dbg !1170

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1171
  br i1 %136, label %617, label %137, !dbg !1170

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1054, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 0, metadata !1055, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 0, metadata !1056, metadata !DIExpression()), !dbg !1174
  br i1 %107, label %138, label %153, !dbg !1175

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1177
  %140 = and i1 %108, %130, !dbg !1178
  br i1 %140, label %141, label %143, !dbg !1178

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1179
  call void @llvm.dbg.value(metadata i64 %142, metadata !1032, metadata !DIExpression()), !dbg !1096
  br label %143, !dbg !1180

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1032, metadata !DIExpression()), !dbg !1096
  %145 = icmp ugt i64 %139, %144, !dbg !1181
  br i1 %145, label %153, label %146, !dbg !1182

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1183
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1184
  %149 = icmp ne i32 %148, 0, !dbg !1185
  %150 = or i1 %149, %110, !dbg !1186
  %151 = xor i1 %149, true, !dbg !1186
  %152 = zext i1 %151 to i8, !dbg !1186
  br i1 %150, label %153, label %661, !dbg !1186

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1187
  call void @llvm.dbg.value(metadata i8 %155, metadata !1054, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i64 %154, metadata !1032, metadata !DIExpression()), !dbg !1096
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1188
  %157 = load i8, i8* %156, align 1, !dbg !1188, !tbaa !1124
  call void @llvm.dbg.value(metadata i8 %157, metadata !1049, metadata !DIExpression()), !dbg !1189
  switch i8 %157, label %296 [
    i8 0, label %158
    i8 63, label %208
    i8 7, label %255
    i8 8, label %245
    i8 12, label %246
    i8 10, label %253
    i8 13, label %247
    i8 9, label %248
    i8 11, label %249
    i8 92, label %250
    i8 123, label %257
    i8 125, label %257
    i8 35, label %268
    i8 126, label %268
    i8 32, label %270
    i8 33, label %271
    i8 34, label %271
    i8 36, label %271
    i8 38, label %271
    i8 40, label %271
    i8 41, label %271
    i8 42, label %271
    i8 59, label %271
    i8 60, label %271
    i8 61, label %271
    i8 62, label %271
    i8 91, label %271
    i8 94, label %271
    i8 96, label %271
    i8 124, label %271
    i8 39, label %273
    i8 37, label %467
    i8 43, label %467
    i8 44, label %467
    i8 45, label %467
    i8 46, label %467
    i8 47, label %467
    i8 48, label %467
    i8 49, label %467
    i8 50, label %467
    i8 51, label %467
    i8 52, label %467
    i8 53, label %467
    i8 54, label %467
    i8 55, label %467
    i8 56, label %467
    i8 57, label %467
    i8 58, label %467
    i8 65, label %467
    i8 66, label %467
    i8 67, label %467
    i8 68, label %467
    i8 69, label %467
    i8 70, label %467
    i8 71, label %467
    i8 72, label %467
    i8 73, label %467
    i8 74, label %467
    i8 75, label %467
    i8 76, label %467
    i8 77, label %467
    i8 78, label %467
    i8 79, label %467
    i8 80, label %467
    i8 81, label %467
    i8 82, label %467
    i8 83, label %467
    i8 84, label %467
    i8 85, label %467
    i8 86, label %467
    i8 87, label %467
    i8 88, label %467
    i8 89, label %467
    i8 90, label %467
    i8 93, label %467
    i8 95, label %467
    i8 97, label %467
    i8 98, label %467
    i8 99, label %467
    i8 100, label %467
    i8 101, label %467
    i8 102, label %467
    i8 103, label %467
    i8 104, label %467
    i8 105, label %467
    i8 106, label %467
    i8 107, label %467
    i8 108, label %467
    i8 109, label %467
    i8 110, label %467
    i8 111, label %467
    i8 112, label %467
    i8 113, label %467
    i8 114, label %467
    i8 115, label %467
    i8 116, label %467
    i8 117, label %467
    i8 118, label %467
    i8 119, label %467
    i8 120, label %467
    i8 121, label %467
    i8 122, label %467
  ], !dbg !1190

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1191

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1192

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1055, metadata !DIExpression()), !dbg !1173
  %161 = and i8 %126, 1, !dbg !1196
  %162 = icmp eq i8 %161, 0, !dbg !1196
  %163 = and i1 %114, %162, !dbg !1196
  br i1 %163, label %164, label %180, !dbg !1196

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1198
  br i1 %165, label %166, label %168, !dbg !1202

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1198
  store i8 39, i8* %167, align 1, !dbg !1198, !tbaa !1124
  br label %168, !dbg !1198

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1202
  call void @llvm.dbg.value(metadata i64 %169, metadata !1039, metadata !DIExpression()), !dbg !1102
  %170 = icmp ult i64 %169, %129, !dbg !1203
  br i1 %170, label %171, label %173, !dbg !1206

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1203
  store i8 36, i8* %172, align 1, !dbg !1203, !tbaa !1124
  br label %173, !dbg !1203

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1206
  call void @llvm.dbg.value(metadata i64 %174, metadata !1039, metadata !DIExpression()), !dbg !1102
  %175 = icmp ult i64 %174, %129, !dbg !1207
  br i1 %175, label %176, label %178, !dbg !1210

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1207
  store i8 39, i8* %177, align 1, !dbg !1207, !tbaa !1124
  br label %178, !dbg !1207

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1210
  call void @llvm.dbg.value(metadata i64 %179, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 1, metadata !1046, metadata !DIExpression()), !dbg !1110
  br label %180, !dbg !1211

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1162
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1162
  call void @llvm.dbg.value(metadata i8 %182, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %181, metadata !1039, metadata !DIExpression()), !dbg !1102
  %183 = icmp ult i64 %181, %129, !dbg !1212
  br i1 %183, label %184, label %186, !dbg !1215

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1212
  store i8 92, i8* %185, align 1, !dbg !1212, !tbaa !1124
  br label %186, !dbg !1212

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1215
  call void @llvm.dbg.value(metadata i64 %187, metadata !1039, metadata !DIExpression()), !dbg !1102
  br i1 %104, label %188, label %478, !dbg !1216

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1218
  %190 = icmp ult i64 %189, %154, !dbg !1219
  br i1 %190, label %191, label %467, !dbg !1220

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1221
  %193 = load i8, i8* %192, align 1, !dbg !1221, !tbaa !1124
  %194 = add i8 %193, -48, !dbg !1222
  %195 = icmp ult i8 %194, 10, !dbg !1222
  br i1 %195, label %196, label %467, !dbg !1222

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1223
  br i1 %197, label %198, label %200, !dbg !1227

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1223
  store i8 48, i8* %199, align 1, !dbg !1223, !tbaa !1124
  br label %200, !dbg !1223

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1227
  call void @llvm.dbg.value(metadata i64 %201, metadata !1039, metadata !DIExpression()), !dbg !1102
  %202 = icmp ult i64 %201, %129, !dbg !1228
  br i1 %202, label %203, label %205, !dbg !1231

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1228
  store i8 48, i8* %204, align 1, !dbg !1228, !tbaa !1124
  br label %205, !dbg !1228

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1231
  call void @llvm.dbg.value(metadata i64 %206, metadata !1039, metadata !DIExpression()), !dbg !1102
  br label %467, !dbg !1232

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1233

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1234

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1235

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1237

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1239
  %213 = icmp ult i64 %212, %154, !dbg !1240
  br i1 %213, label %214, label %467, !dbg !1241

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1242
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1243
  %217 = load i8, i8* %216, align 1, !dbg !1243, !tbaa !1124
  %218 = icmp eq i8 %217, 63, !dbg !1244
  br i1 %218, label %219, label %467, !dbg !1245

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1246
  %221 = load i8, i8* %220, align 1, !dbg !1246, !tbaa !1124
  %222 = sext i8 %221 to i32, !dbg !1246
  switch i32 %222, label %467 [
    i32 33, label %223
    i32 39, label %223
    i32 40, label %223
    i32 41, label %223
    i32 45, label %223
    i32 47, label %223
    i32 60, label %223
    i32 61, label %223
    i32 62, label %223
  ], !dbg !1247

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1248

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1049, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i64 %212, metadata !1038, metadata !DIExpression()), !dbg !1163
  %225 = icmp ult i64 %123, %129, !dbg !1250
  br i1 %225, label %226, label %228, !dbg !1253

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1250
  store i8 63, i8* %227, align 1, !dbg !1250, !tbaa !1124
  br label %228, !dbg !1250

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1253
  call void @llvm.dbg.value(metadata i64 %229, metadata !1039, metadata !DIExpression()), !dbg !1102
  %230 = icmp ult i64 %229, %129, !dbg !1254
  br i1 %230, label %231, label %233, !dbg !1257

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1254
  store i8 34, i8* %232, align 1, !dbg !1254, !tbaa !1124
  br label %233, !dbg !1254

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1257
  call void @llvm.dbg.value(metadata i64 %234, metadata !1039, metadata !DIExpression()), !dbg !1102
  %235 = icmp ult i64 %234, %129, !dbg !1258
  br i1 %235, label %236, label %238, !dbg !1261

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1258
  store i8 34, i8* %237, align 1, !dbg !1258, !tbaa !1124
  br label %238, !dbg !1258

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1261
  call void @llvm.dbg.value(metadata i64 %239, metadata !1039, metadata !DIExpression()), !dbg !1102
  %240 = icmp ult i64 %239, %129, !dbg !1262
  br i1 %240, label %241, label %243, !dbg !1265

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1262
  store i8 63, i8* %242, align 1, !dbg !1262, !tbaa !1124
  br label %243, !dbg !1262

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1265
  call void @llvm.dbg.value(metadata i64 %244, metadata !1039, metadata !DIExpression()), !dbg !1102
  br label %467, !dbg !1266

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1053, metadata !DIExpression()), !dbg !1267
  br label %255, !dbg !1268

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1053, metadata !DIExpression()), !dbg !1267
  br label %255, !dbg !1269

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1053, metadata !DIExpression()), !dbg !1267
  br label %253, !dbg !1270

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1053, metadata !DIExpression()), !dbg !1267
  br label %253, !dbg !1271

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1053, metadata !DIExpression()), !dbg !1267
  br label %255, !dbg !1272

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1053, metadata !DIExpression()), !dbg !1267
  br i1 %114, label %251, label %252, !dbg !1273

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1274

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1277

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1279
  call void @llvm.dbg.value(metadata i8 %254, metadata !1053, metadata !DIExpression()), !dbg !1267
  br i1 %113, label %255, label %661, !dbg !1280

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1279
  call void @llvm.dbg.value(metadata i8 %256, metadata !1053, metadata !DIExpression()), !dbg !1267
  br i1 %103, label %524, label %478, !dbg !1282

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1283
  br i1 %258, label %259, label %264, !dbg !1285

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1286, !tbaa !1124
  %261 = icmp ne i8 %260, 0, !dbg !1287
  %262 = icmp ne i64 %122, 0, !dbg !1288
  %263 = or i1 %262, %261, !dbg !1290
  br i1 %263, label %467, label %270, !dbg !1290

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1291
  %266 = icmp ne i64 %122, 0, !dbg !1288
  %267 = or i1 %266, %265, !dbg !1285
  br i1 %267, label %467, label %270, !dbg !1285

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1288
  br i1 %269, label %270, label %467, !dbg !1292

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1056, metadata !DIExpression()), !dbg !1174
  br label %271, !dbg !1293

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1279
  call void @llvm.dbg.value(metadata i8 %272, metadata !1056, metadata !DIExpression()), !dbg !1174
  br i1 %113, label %467, label %661, !dbg !1294

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 1, metadata !1056, metadata !DIExpression()), !dbg !1174
  br i1 %114, label %274, label %467, !dbg !1296

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1297

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1300
  %277 = icmp ne i64 %124, 0, !dbg !1302
  %278 = or i1 %277, %276, !dbg !1303
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1303
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1303
  call void @llvm.dbg.value(metadata i64 %280, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %279, metadata !1040, metadata !DIExpression()), !dbg !1103
  %281 = icmp ult i64 %123, %280, !dbg !1304
  br i1 %281, label %282, label %284, !dbg !1307

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1304
  store i8 39, i8* %283, align 1, !dbg !1304, !tbaa !1124
  br label %284, !dbg !1304

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1307
  call void @llvm.dbg.value(metadata i64 %285, metadata !1039, metadata !DIExpression()), !dbg !1102
  %286 = icmp ult i64 %285, %280, !dbg !1308
  br i1 %286, label %287, label %289, !dbg !1311

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1308
  store i8 92, i8* %288, align 1, !dbg !1308, !tbaa !1124
  br label %289, !dbg !1308

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1311
  call void @llvm.dbg.value(metadata i64 %290, metadata !1039, metadata !DIExpression()), !dbg !1102
  %291 = icmp ult i64 %290, %280, !dbg !1312
  br i1 %291, label %292, label %294, !dbg !1315

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1312
  store i8 39, i8* %293, align 1, !dbg !1312, !tbaa !1124
  br label %294, !dbg !1312

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1315
  call void @llvm.dbg.value(metadata i64 %295, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 0, metadata !1046, metadata !DIExpression()), !dbg !1110
  br label %467, !dbg !1316

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1317

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1057, metadata !DIExpression()), !dbg !1318
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1319
  %299 = load i16*, i16** %298, align 8, !dbg !1319, !tbaa !636
  %300 = zext i8 %157 to i64, !dbg !1319
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1319
  %302 = load i16, i16* %301, align 2, !dbg !1319, !tbaa !1321
  %303 = lshr i16 %302, 14, !dbg !1323
  %304 = trunc i16 %303 to i8, !dbg !1323
  %305 = and i8 %304, 1, !dbg !1323
  call void @llvm.dbg.value(metadata i8 %305, metadata !1060, metadata !DIExpression()), !dbg !1324
  br label %359, !dbg !1325

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1326
  store i64 0, i64* %10, align 8, !dbg !1327
  call void @llvm.dbg.value(metadata i64 0, metadata !1057, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i8 1, metadata !1060, metadata !DIExpression()), !dbg !1324
  %307 = icmp eq i64 %154, -1, !dbg !1328
  br i1 %307, label %308, label %310, !dbg !1330

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1331
  call void @llvm.dbg.value(metadata i64 %309, metadata !1032, metadata !DIExpression()), !dbg !1096
  br label %310, !dbg !1332

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1333
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  br label %312, !dbg !1334

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1335
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1336
  call void @llvm.dbg.value(metadata i8 %314, metadata !1060, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i64 %313, metadata !1057, metadata !DIExpression()), !dbg !1318
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1337
  %315 = add i64 %313, %122, !dbg !1338
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1339
  %317 = sub i64 %311, %315, !dbg !1340
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1061, metadata !DIExpression(DW_OP_deref)), !dbg !1341
  call void @llvm.dbg.value(metadata i32* %12, metadata !1079, metadata !DIExpression(DW_OP_deref)), !dbg !1342
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1343
  call void @llvm.dbg.value(metadata i64 %318, metadata !1082, metadata !DIExpression()), !dbg !1344
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1345

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1057, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %313, metadata !1057, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %313, metadata !1057, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %313, metadata !1057, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %313, metadata !1057, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %313, metadata !1057, metadata !DIExpression()), !dbg !1318
  %320 = icmp ugt i64 %311, %315, !dbg !1346
  br i1 %320, label %321, label %344, !dbg !1348

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1057, metadata !DIExpression()), !dbg !1318
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1349
  %325 = load i8, i8* %324, align 1, !dbg !1349, !tbaa !1124
  %326 = icmp eq i8 %325, 0, !dbg !1348
  br i1 %326, label %344, label %327, !dbg !1350

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1351
  call void @llvm.dbg.value(metadata i64 %328, metadata !1057, metadata !DIExpression()), !dbg !1318
  %329 = add i64 %328, %122, !dbg !1352
  %330 = icmp ult i64 %329, %311, !dbg !1346
  br i1 %330, label %321, label %344, !dbg !1348, !llvm.loop !1353

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1354
  %333 = and i1 %116, %332, !dbg !1357
  call void @llvm.dbg.value(metadata i64 1, metadata !1083, metadata !DIExpression()), !dbg !1358
  br i1 %333, label %334, label %347, !dbg !1357

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1083, metadata !DIExpression()), !dbg !1358
  %336 = add i64 %335, %315, !dbg !1359
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1360
  %338 = load i8, i8* %337, align 1, !dbg !1360, !tbaa !1124
  %339 = sext i8 %338 to i32, !dbg !1360
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1361

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1362
  call void @llvm.dbg.value(metadata i64 %341, metadata !1083, metadata !DIExpression()), !dbg !1358
  %342 = icmp ult i64 %341, %318, !dbg !1354
  br i1 %342, label %334, label %347, !dbg !1363, !llvm.loop !1364

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1057, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i8 %314, metadata !1060, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i64 %313, metadata !1057, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i8 %314, metadata !1060, metadata !DIExpression()), !dbg !1324
  br label %344, !dbg !1366

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1060, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i64 %352, metadata !1057, metadata !DIExpression()), !dbg !1318
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1366
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1367, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %348, metadata !1079, metadata !DIExpression()), !dbg !1342
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1369
  %350 = icmp eq i32 %349, 0, !dbg !1369
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1370
  call void @llvm.dbg.value(metadata i8 %351, metadata !1060, metadata !DIExpression()), !dbg !1324
  %352 = add i64 %318, %313, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %352, metadata !1057, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i8 %351, metadata !1060, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i64 %352, metadata !1057, metadata !DIExpression()), !dbg !1318
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1366
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1061, metadata !DIExpression(DW_OP_deref)), !dbg !1341
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1372
  %354 = icmp eq i32 %353, 0, !dbg !1373
  br i1 %354, label %312, label %355, !dbg !1374, !llvm.loop !1375

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1377
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 2, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 2, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 2, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 2, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 2, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %100, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %100, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %100, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %100, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %100, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 %94, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 %94, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 %94, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 %94, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i32 %94, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i8 %100, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %100, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %100, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %100, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %100, metadata !1043, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %311, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %351, metadata !1060, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i64 %352, metadata !1057, metadata !DIExpression()), !dbg !1318
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1366
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1377
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1378
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1379
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1379
  call void @llvm.dbg.value(metadata i8 %362, metadata !1060, metadata !DIExpression()), !dbg !1324
  call void @llvm.dbg.value(metadata i64 %361, metadata !1057, metadata !DIExpression()), !dbg !1318
  call void @llvm.dbg.value(metadata i64 %360, metadata !1032, metadata !DIExpression()), !dbg !1096
  %363 = and i8 %362, 1, !dbg !1380
  %364 = icmp ne i8 %363, 0, !dbg !1380
  call void @llvm.dbg.value(metadata i8 %363, metadata !1056, metadata !DIExpression()), !dbg !1174
  %365 = icmp ult i64 %361, 2, !dbg !1381
  %366 = or i1 %364, %115, !dbg !1382
  %367 = and i1 %365, %366, !dbg !1383
  br i1 %367, label %467, label %368, !dbg !1383

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1384
  call void @llvm.dbg.value(metadata i64 %369, metadata !1090, metadata !DIExpression()), !dbg !1385
  br label %370, !dbg !1386

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1387
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1391
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1110
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1387
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1393
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1173
  call void @llvm.dbg.value(metadata i8 %376, metadata !1055, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 %375, metadata !1054, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %374, metadata !1049, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %373, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %372, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %371, metadata !1038, metadata !DIExpression()), !dbg !1163
  br i1 %366, label %423, label %377, !dbg !1397

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1398

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1055, metadata !DIExpression()), !dbg !1173
  %379 = and i8 %373, 1, !dbg !1401
  %380 = icmp eq i8 %379, 0, !dbg !1401
  %381 = and i1 %114, %380, !dbg !1401
  br i1 %381, label %382, label %398, !dbg !1401

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1403
  br i1 %383, label %384, label %386, !dbg !1407

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1403
  store i8 39, i8* %385, align 1, !dbg !1403, !tbaa !1124
  br label %386, !dbg !1403

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %387, metadata !1039, metadata !DIExpression()), !dbg !1102
  %388 = icmp ult i64 %387, %129, !dbg !1408
  br i1 %388, label %389, label %391, !dbg !1411

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1408
  store i8 36, i8* %390, align 1, !dbg !1408, !tbaa !1124
  br label %391, !dbg !1408

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %392, metadata !1039, metadata !DIExpression()), !dbg !1102
  %393 = icmp ult i64 %392, %129, !dbg !1412
  br i1 %393, label %394, label %396, !dbg !1415

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1412
  store i8 39, i8* %395, align 1, !dbg !1412, !tbaa !1124
  br label %396, !dbg !1412

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %397, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 1, metadata !1046, metadata !DIExpression()), !dbg !1110
  br label %398, !dbg !1416

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1162
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1162
  call void @llvm.dbg.value(metadata i8 %400, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %399, metadata !1039, metadata !DIExpression()), !dbg !1102
  %401 = icmp ult i64 %399, %129, !dbg !1417
  br i1 %401, label %402, label %404, !dbg !1420

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1417
  store i8 92, i8* %403, align 1, !dbg !1417, !tbaa !1124
  br label %404, !dbg !1417

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1420
  call void @llvm.dbg.value(metadata i64 %405, metadata !1039, metadata !DIExpression()), !dbg !1102
  %406 = icmp ult i64 %405, %129, !dbg !1421
  br i1 %406, label %407, label %411, !dbg !1424

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1421
  %409 = or i8 %408, 48, !dbg !1421
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1421
  store i8 %409, i8* %410, align 1, !dbg !1421, !tbaa !1124
  br label %411, !dbg !1421

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1424
  call void @llvm.dbg.value(metadata i64 %412, metadata !1039, metadata !DIExpression()), !dbg !1102
  %413 = icmp ult i64 %412, %129, !dbg !1425
  br i1 %413, label %414, label %419, !dbg !1428

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1425
  %416 = and i8 %415, 7, !dbg !1425
  %417 = or i8 %416, 48, !dbg !1425
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1425
  store i8 %417, i8* %418, align 1, !dbg !1425, !tbaa !1124
  br label %419, !dbg !1425

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1428
  call void @llvm.dbg.value(metadata i64 %420, metadata !1039, metadata !DIExpression()), !dbg !1102
  %421 = and i8 %374, 7, !dbg !1429
  %422 = or i8 %421, 48, !dbg !1430
  call void @llvm.dbg.value(metadata i8 %422, metadata !1049, metadata !DIExpression()), !dbg !1189
  br label %432, !dbg !1431

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1432
  %425 = icmp eq i8 %424, 0, !dbg !1432
  br i1 %425, label %432, label %426, !dbg !1433

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1434
  br i1 %427, label %428, label %430, !dbg !1437

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1434
  store i8 92, i8* %429, align 1, !dbg !1434, !tbaa !1124
  br label %430, !dbg !1434

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %431, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 0, metadata !1054, metadata !DIExpression()), !dbg !1172
  br label %432, !dbg !1438

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1439
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1110
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1440
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1441
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1443
  call void @llvm.dbg.value(metadata i8 %437, metadata !1055, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 %436, metadata !1054, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %435, metadata !1049, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %434, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %433, metadata !1039, metadata !DIExpression()), !dbg !1102
  %438 = add i64 %371, 1, !dbg !1444
  %439 = icmp ugt i64 %369, %438, !dbg !1446
  br i1 %439, label %440, label %562, !dbg !1447

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1448
  %442 = icmp ne i8 %441, 0, !dbg !1448
  %443 = and i8 %437, 1, !dbg !1448
  %444 = icmp eq i8 %443, 0, !dbg !1448
  %445 = and i1 %442, %444, !dbg !1448
  br i1 %445, label %446, label %457, !dbg !1448

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1451
  br i1 %447, label %448, label %450, !dbg !1455

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1451
  store i8 39, i8* %449, align 1, !dbg !1451, !tbaa !1124
  br label %450, !dbg !1451

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1455
  call void @llvm.dbg.value(metadata i64 %451, metadata !1039, metadata !DIExpression()), !dbg !1102
  %452 = icmp ult i64 %451, %129, !dbg !1456
  br i1 %452, label %453, label %455, !dbg !1459

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1456
  store i8 39, i8* %454, align 1, !dbg !1456, !tbaa !1124
  br label %455, !dbg !1456

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1459
  call void @llvm.dbg.value(metadata i64 %456, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 0, metadata !1046, metadata !DIExpression()), !dbg !1110
  br label %457, !dbg !1460

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1461
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1162
  call void @llvm.dbg.value(metadata i8 %459, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %458, metadata !1039, metadata !DIExpression()), !dbg !1102
  %460 = icmp ult i64 %458, %129, !dbg !1462
  br i1 %460, label %461, label %463, !dbg !1464

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1462
  store i8 %435, i8* %462, align 1, !dbg !1462, !tbaa !1124
  br label %463, !dbg !1462

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1464
  call void @llvm.dbg.value(metadata i64 %464, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %438, metadata !1038, metadata !DIExpression()), !dbg !1163
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1465
  %466 = load i8, i8* %465, align 1, !dbg !1465, !tbaa !1124
  call void @llvm.dbg.value(metadata i8 %466, metadata !1049, metadata !DIExpression()), !dbg !1189
  br label %370, !dbg !1466, !llvm.loop !1467

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1470
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1162
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1103
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1471
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1162
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1162
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1187
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1187
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1187
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %476, metadata !1056, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %475, metadata !1055, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 %155, metadata !1054, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.value(metadata i8 %474, metadata !1049, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %473, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %472, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %471, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %470, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %469, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %468, metadata !1038, metadata !DIExpression()), !dbg !1163
  br i1 %105, label %489, label %478, !dbg !1472

; <label>:478:                                    ; preds = %255, %207, %186, %467
  %479 = phi i64 [ %477, %467 ], [ %129, %186 ], [ %129, %207 ], [ %129, %255 ]
  %480 = phi i8 [ %476, %467 ], [ 0, %186 ], [ 0, %207 ], [ 0, %255 ]
  %481 = phi i8 [ %475, %467 ], [ 1, %186 ], [ 0, %207 ], [ 0, %255 ]
  %482 = phi i8 [ %474, %467 ], [ 48, %186 ], [ 0, %207 ], [ %157, %255 ]
  %483 = phi i8 [ %473, %467 ], [ %127, %186 ], [ %127, %207 ], [ %127, %255 ]
  %484 = phi i8 [ %472, %467 ], [ %182, %186 ], [ %126, %207 ], [ %126, %255 ]
  %485 = phi i64 [ %471, %467 ], [ %154, %186 ], [ %154, %207 ], [ %154, %255 ]
  %486 = phi i64 [ %470, %467 ], [ %124, %186 ], [ %124, %207 ], [ %124, %255 ]
  %487 = phi i64 [ %469, %467 ], [ %187, %186 ], [ %123, %207 ], [ %123, %255 ]
  %488 = phi i64 [ %468, %467 ], [ %122, %186 ], [ %122, %207 ], [ %122, %255 ]
  br i1 %112, label %490, label %512, !dbg !1474

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1475

; <label>:490:                                    ; preds = %489, %478
  %491 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %492 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %493 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %494 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %495 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %496 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %497 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %498 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %499 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %500 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %501 = lshr i8 %494, 5, !dbg !1476
  %502 = zext i8 %501 to i64, !dbg !1476
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1477
  %504 = load i32, i32* %503, align 4, !dbg !1477, !tbaa !703
  %505 = and i8 %494, 31, !dbg !1478
  %506 = zext i8 %505 to i32, !dbg !1478
  %507 = shl i32 1, %506, !dbg !1479
  %508 = and i32 %504, %507, !dbg !1479
  %509 = icmp eq i32 %508, 0, !dbg !1479
  %510 = icmp eq i8 %155, 0, !dbg !1480
  %511 = and i1 %510, %509, !dbg !1481
  br i1 %511, label %562, label %524, !dbg !1481

; <label>:512:                                    ; preds = %489, %478
  %513 = phi i64 [ %477, %489 ], [ %479, %478 ]
  %514 = phi i8 [ %476, %489 ], [ %480, %478 ]
  %515 = phi i8 [ %475, %489 ], [ %481, %478 ]
  %516 = phi i8 [ %474, %489 ], [ %482, %478 ]
  %517 = phi i8 [ %473, %489 ], [ %483, %478 ]
  %518 = phi i8 [ %472, %489 ], [ %484, %478 ]
  %519 = phi i64 [ %471, %489 ], [ %485, %478 ]
  %520 = phi i64 [ %470, %489 ], [ %486, %478 ]
  %521 = phi i64 [ %469, %489 ], [ %487, %478 ]
  %522 = phi i64 [ %468, %489 ], [ %488, %478 ]
  %523 = icmp eq i8 %155, 0, !dbg !1480
  br i1 %523, label %562, label %524, !dbg !1482

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1483
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1162
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1103
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1471
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1110
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1111
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1484
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1187
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %532, metadata !1056, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %531, metadata !1049, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %530, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %529, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %528, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %527, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %526, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %525, metadata !1038, metadata !DIExpression()), !dbg !1163
  br i1 %110, label %534, label %661, !dbg !1487

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1055, metadata !DIExpression()), !dbg !1173
  %535 = and i8 %529, 1, !dbg !1489
  %536 = icmp eq i8 %535, 0, !dbg !1489
  %537 = and i1 %114, %536, !dbg !1489
  br i1 %537, label %538, label %554, !dbg !1489

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1491
  br i1 %539, label %540, label %542, !dbg !1495

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1491
  store i8 39, i8* %541, align 1, !dbg !1491, !tbaa !1124
  br label %542, !dbg !1491

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %543, metadata !1039, metadata !DIExpression()), !dbg !1102
  %544 = icmp ult i64 %543, %533, !dbg !1496
  br i1 %544, label %545, label %547, !dbg !1499

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1496
  store i8 36, i8* %546, align 1, !dbg !1496, !tbaa !1124
  br label %547, !dbg !1496

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1499
  call void @llvm.dbg.value(metadata i64 %548, metadata !1039, metadata !DIExpression()), !dbg !1102
  %549 = icmp ult i64 %548, %533, !dbg !1500
  br i1 %549, label %550, label %552, !dbg !1503

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1500
  store i8 39, i8* %551, align 1, !dbg !1500, !tbaa !1124
  br label %552, !dbg !1500

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1503
  call void @llvm.dbg.value(metadata i64 %553, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 1, metadata !1046, metadata !DIExpression()), !dbg !1110
  br label %554, !dbg !1504

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1461
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1162
  call void @llvm.dbg.value(metadata i8 %556, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %555, metadata !1039, metadata !DIExpression()), !dbg !1102
  %557 = icmp ult i64 %555, %533, !dbg !1505
  br i1 %557, label %558, label %560, !dbg !1508

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1505
  store i8 92, i8* %559, align 1, !dbg !1505, !tbaa !1124
  br label %560, !dbg !1505

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %561, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %572, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %571, metadata !1056, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %570, metadata !1055, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 %569, metadata !1049, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %568, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %567, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %566, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %565, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %564, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %563, metadata !1038, metadata !DIExpression()), !dbg !1163
  br label %589, !dbg !1509

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1483
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1162
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1103
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1471
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1110
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1111
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1512
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1187
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1187
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %571, metadata !1056, metadata !DIExpression()), !dbg !1174
  call void @llvm.dbg.value(metadata i8 %570, metadata !1055, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.value(metadata i8 %569, metadata !1049, metadata !DIExpression()), !dbg !1189
  call void @llvm.dbg.value(metadata i8 %568, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %567, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %566, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %565, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %564, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %563, metadata !1038, metadata !DIExpression()), !dbg !1163
  %573 = and i8 %567, 1, !dbg !1509
  %574 = icmp ne i8 %573, 0, !dbg !1509
  %575 = and i8 %570, 1, !dbg !1509
  %576 = icmp eq i8 %575, 0, !dbg !1509
  %577 = and i1 %574, %576, !dbg !1509
  br i1 %577, label %578, label %589, !dbg !1509

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1513
  br i1 %579, label %580, label %582, !dbg !1517

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1513
  store i8 39, i8* %581, align 1, !dbg !1513, !tbaa !1124
  br label %582, !dbg !1513

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %583, metadata !1039, metadata !DIExpression()), !dbg !1102
  %584 = icmp ult i64 %583, %572, !dbg !1518
  br i1 %584, label %585, label %587, !dbg !1521

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1518
  store i8 39, i8* %586, align 1, !dbg !1518, !tbaa !1124
  br label %587, !dbg !1518

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1521
  call void @llvm.dbg.value(metadata i64 %588, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i8 0, metadata !1046, metadata !DIExpression()), !dbg !1110
  br label %589, !dbg !1522

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1461
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1162
  call void @llvm.dbg.value(metadata i8 %598, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %597, metadata !1039, metadata !DIExpression()), !dbg !1102
  %599 = icmp ult i64 %597, %590, !dbg !1523
  br i1 %599, label %600, label %602, !dbg !1526

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1523
  store i8 %592, i8* %601, align 1, !dbg !1523, !tbaa !1124
  br label %602, !dbg !1523

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1526
  call void @llvm.dbg.value(metadata i64 %603, metadata !1039, metadata !DIExpression()), !dbg !1102
  %604 = and i8 %591, 1, !dbg !1527
  %605 = icmp eq i8 %604, 0, !dbg !1527
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1529
  call void @llvm.dbg.value(metadata i8 %606, metadata !1048, metadata !DIExpression()), !dbg !1112
  br label %607, !dbg !1530

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1483
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1162
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1103
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1471
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1110
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1162
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1112
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8 %614, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %613, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %612, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i64 %611, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %610, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %609, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %608, metadata !1038, metadata !DIExpression()), !dbg !1163
  %616 = add i64 %608, 1, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %616, metadata !1038, metadata !DIExpression()), !dbg !1163
  br label %121, !dbg !1532, !llvm.loop !1533

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %126, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %126, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %127, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %127, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %128, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %128, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %126, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %126, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %127, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %127, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %128, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %128, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %126, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %126, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %127, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %127, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %128, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %128, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8 %126, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %126, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %127, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %127, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %128, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %128, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %618, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %618, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %126, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %126, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %127, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %127, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %128, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %128, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %125, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %125, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %126, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %126, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8 %127, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %127, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %128, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 %128, metadata !1048, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  %619 = icmp eq i64 %123, 0, !dbg !1535
  %620 = and i1 %114, %619, !dbg !1537
  %621 = xor i1 %620, true, !dbg !1537
  %622 = or i1 %110, %621, !dbg !1537
  br i1 %622, label %623, label %661, !dbg !1537

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1538
  %625 = xor i1 %624, true, !dbg !1538
  %626 = and i8 %127, 1, !dbg !1540
  %627 = icmp eq i8 %626, 0, !dbg !1540
  %628 = or i1 %627, %625, !dbg !1538
  br i1 %628, label %638, label %629, !dbg !1538

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1541
  %631 = icmp eq i8 %630, 0, !dbg !1541
  br i1 %631, label %634, label %632, !dbg !1544

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %618, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %618, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %618, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %618, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8* %95, metadata !1036, metadata !DIExpression()), !dbg !1100
  call void @llvm.dbg.value(metadata i8* %96, metadata !1037, metadata !DIExpression()), !dbg !1101
  call void @llvm.dbg.value(metadata i64 %124, metadata !1040, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %125, metadata !1032, metadata !DIExpression()), !dbg !1096
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1545
  br label %671, !dbg !1546

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1547
  %636 = icmp ne i64 %124, 0, !dbg !1549
  %637 = and i1 %636, %635, !dbg !1550
  br i1 %637, label %27, label %638, !dbg !1550

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %98, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %98, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %98, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %98, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i8* %98, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %129, metadata !1030, metadata !DIExpression()), !dbg !1094
  %639 = icmp ne i8* %98, null, !dbg !1551
  %640 = and i1 %639, %110, !dbg !1553
  br i1 %640, label %641, label %656, !dbg !1553

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1039, metadata !DIExpression()), !dbg !1102
  %642 = load i8, i8* %98, align 1, !dbg !1554, !tbaa !1124
  %643 = icmp eq i8 %642, 0, !dbg !1557
  br i1 %643, label %656, label %644, !dbg !1557

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %647, metadata !1039, metadata !DIExpression()), !dbg !1102
  %648 = icmp ult i64 %647, %129, !dbg !1558
  br i1 %648, label %649, label %651, !dbg !1561

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1558
  store i8 %645, i8* %650, align 1, !dbg !1558, !tbaa !1124
  br label %651, !dbg !1558

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1561
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1562
  call void @llvm.dbg.value(metadata i8* %653, metadata !1041, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %652, metadata !1039, metadata !DIExpression()), !dbg !1102
  %654 = load i8, i8* %653, align 1, !dbg !1554, !tbaa !1124
  %655 = icmp eq i8 %654, 0, !dbg !1557
  br i1 %655, label %656, label %644, !dbg !1557, !llvm.loop !1563

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1102
  call void @llvm.dbg.value(metadata i64 %657, metadata !1039, metadata !DIExpression()), !dbg !1102
  %658 = icmp ult i64 %657, %129, !dbg !1565
  br i1 %658, label %659, label %671, !dbg !1567

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1568
  store i8 0, i8* %660, align 1, !dbg !1569, !tbaa !1124
  br label %671, !dbg !1568

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1030, metadata !DIExpression()), !dbg !1094
  call void @llvm.dbg.value(metadata i64 %663, metadata !1032, metadata !DIExpression()), !dbg !1096
  %665 = icmp ne i32 %662, 2, !dbg !1570
  %666 = icmp eq i8 %102, 0, !dbg !1572
  %667 = or i1 %665, %666, !dbg !1573
  call void @llvm.dbg.value(metadata i32 4, metadata !1033, metadata !DIExpression()), !dbg !1097
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1573
  call void @llvm.dbg.value(metadata i32 %668, metadata !1033, metadata !DIExpression()), !dbg !1097
  %669 = and i32 %5, -3, !dbg !1574
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1575
  br label %671, !dbg !1576

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1577
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1578 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1582, metadata !DIExpression()), !dbg !1586
  call void @llvm.dbg.value(metadata i32 %1, metadata !1583, metadata !DIExpression()), !dbg !1587
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1588
  call void @llvm.dbg.value(metadata i8* %3, metadata !1584, metadata !DIExpression()), !dbg !1589
  %4 = icmp eq i8* %3, %0, !dbg !1590
  br i1 %4, label %5, label %71, !dbg !1592

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1593
  call void @llvm.dbg.value(metadata i8* %6, metadata !1585, metadata !DIExpression()), !dbg !1594
  call void @llvm.dbg.value(metadata i8* %6, metadata !1595, metadata !DIExpression()), !dbg !1611
  call void @llvm.dbg.value(metadata i8* null, metadata !1601, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8 85, metadata !1602, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 84, metadata !1603, metadata !DIExpression()), !dbg !1616
  call void @llvm.dbg.value(metadata i8 70, metadata !1604, metadata !DIExpression()), !dbg !1617
  call void @llvm.dbg.value(metadata i8 45, metadata !1605, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.value(metadata i8 56, metadata !1606, metadata !DIExpression()), !dbg !1619
  call void @llvm.dbg.value(metadata i8 0, metadata !1607, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.value(metadata i8 0, metadata !1608, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8 0, metadata !1609, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata i8 0, metadata !1610, metadata !DIExpression()), !dbg !1623
  %7 = load i8, i8* %6, align 1, !dbg !1624, !tbaa !1124
  %8 = and i8 %7, -33, !dbg !1624
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1624

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1626, metadata !DIExpression()), !dbg !1640
  call void @llvm.dbg.value(metadata i8* null, metadata !1631, metadata !DIExpression()), !dbg !1644
  call void @llvm.dbg.value(metadata i8 84, metadata !1632, metadata !DIExpression()), !dbg !1645
  call void @llvm.dbg.value(metadata i8 70, metadata !1633, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i8 45, metadata !1634, metadata !DIExpression()), !dbg !1647
  call void @llvm.dbg.value(metadata i8 56, metadata !1635, metadata !DIExpression()), !dbg !1648
  call void @llvm.dbg.value(metadata i8 0, metadata !1636, metadata !DIExpression()), !dbg !1649
  call void @llvm.dbg.value(metadata i8 0, metadata !1637, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8 0, metadata !1638, metadata !DIExpression()), !dbg !1651
  call void @llvm.dbg.value(metadata i8 0, metadata !1639, metadata !DIExpression()), !dbg !1652
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1653
  %11 = load i8, i8* %10, align 1, !dbg !1653, !tbaa !1124
  %12 = and i8 %11, -33, !dbg !1653
  %13 = icmp eq i8 %12, 84, !dbg !1653
  br i1 %13, label %14, label %68, !dbg !1653

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1655, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.value(metadata i8* null, metadata !1660, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata i8 70, metadata !1661, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.value(metadata i8 45, metadata !1662, metadata !DIExpression()), !dbg !1674
  call void @llvm.dbg.value(metadata i8 56, metadata !1663, metadata !DIExpression()), !dbg !1675
  call void @llvm.dbg.value(metadata i8 0, metadata !1664, metadata !DIExpression()), !dbg !1676
  call void @llvm.dbg.value(metadata i8 0, metadata !1665, metadata !DIExpression()), !dbg !1677
  call void @llvm.dbg.value(metadata i8 0, metadata !1666, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata i8 0, metadata !1667, metadata !DIExpression()), !dbg !1679
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1680
  %16 = load i8, i8* %15, align 1, !dbg !1680, !tbaa !1124
  %17 = and i8 %16, -33, !dbg !1680
  %18 = icmp eq i8 %17, 70, !dbg !1680
  br i1 %18, label %19, label %68, !dbg !1680

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1682, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i8* null, metadata !1687, metadata !DIExpression()), !dbg !1698
  call void @llvm.dbg.value(metadata i8 45, metadata !1688, metadata !DIExpression()), !dbg !1699
  call void @llvm.dbg.value(metadata i8 56, metadata !1689, metadata !DIExpression()), !dbg !1700
  call void @llvm.dbg.value(metadata i8 0, metadata !1690, metadata !DIExpression()), !dbg !1701
  call void @llvm.dbg.value(metadata i8 0, metadata !1691, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.value(metadata i8 0, metadata !1692, metadata !DIExpression()), !dbg !1703
  call void @llvm.dbg.value(metadata i8 0, metadata !1693, metadata !DIExpression()), !dbg !1704
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1705
  %21 = load i8, i8* %20, align 1, !dbg !1705, !tbaa !1124
  %22 = icmp eq i8 %21, 45, !dbg !1705
  br i1 %22, label %23, label %68, !dbg !1707

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1708, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i8* null, metadata !1713, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.value(metadata i8 56, metadata !1714, metadata !DIExpression()), !dbg !1724
  call void @llvm.dbg.value(metadata i8 0, metadata !1715, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.value(metadata i8 0, metadata !1716, metadata !DIExpression()), !dbg !1726
  call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1728
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1729
  %25 = load i8, i8* %24, align 1, !dbg !1729, !tbaa !1124
  %26 = icmp eq i8 %25, 56, !dbg !1729
  br i1 %26, label %27, label %68, !dbg !1731

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1732, metadata !DIExpression()), !dbg !1742
  call void @llvm.dbg.value(metadata i8* null, metadata !1737, metadata !DIExpression()), !dbg !1746
  call void @llvm.dbg.value(metadata i8 0, metadata !1738, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 0, metadata !1739, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 0, metadata !1740, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 0, metadata !1741, metadata !DIExpression()), !dbg !1750
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1751
  %29 = load i8, i8* %28, align 1, !dbg !1751, !tbaa !1124
  %30 = icmp eq i8 %29, 0, !dbg !1751
  br i1 %30, label %31, label %68, !dbg !1753

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1754, !tbaa !1124
  %33 = icmp eq i8 %32, 96, !dbg !1755
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.63, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.64, i64 0, i64 0), !dbg !1754
  br label %71, !dbg !1756

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1626, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8* null, metadata !1631, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 66, metadata !1632, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 49, metadata !1633, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 56, metadata !1634, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 48, metadata !1635, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 51, metadata !1636, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 48, metadata !1637, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i8 0, metadata !1638, metadata !DIExpression()), !dbg !1768
  call void @llvm.dbg.value(metadata i8 0, metadata !1639, metadata !DIExpression()), !dbg !1769
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1770
  %37 = load i8, i8* %36, align 1, !dbg !1770, !tbaa !1124
  %38 = and i8 %37, -33, !dbg !1770
  %39 = icmp eq i8 %38, 66, !dbg !1770
  br i1 %39, label %40, label %68, !dbg !1770

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1655, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8* null, metadata !1660, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 49, metadata !1661, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 56, metadata !1662, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 48, metadata !1663, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i8 51, metadata !1664, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 48, metadata !1665, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !1666, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 0, metadata !1667, metadata !DIExpression()), !dbg !1780
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1781
  %42 = load i8, i8* %41, align 1, !dbg !1781, !tbaa !1124
  %43 = icmp eq i8 %42, 49, !dbg !1781
  br i1 %43, label %44, label %68, !dbg !1782

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1682, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8* null, metadata !1687, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 56, metadata !1688, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 48, metadata !1689, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 51, metadata !1690, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 48, metadata !1691, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 0, metadata !1692, metadata !DIExpression()), !dbg !1790
  call void @llvm.dbg.value(metadata i8 0, metadata !1693, metadata !DIExpression()), !dbg !1791
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1792
  %46 = load i8, i8* %45, align 1, !dbg !1792, !tbaa !1124
  %47 = icmp eq i8 %46, 56, !dbg !1792
  br i1 %47, label %48, label %68, !dbg !1793

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1708, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8* null, metadata !1713, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 48, metadata !1714, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 51, metadata !1715, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 48, metadata !1716, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 0, metadata !1717, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i8 0, metadata !1718, metadata !DIExpression()), !dbg !1801
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1802
  %50 = load i8, i8* %49, align 1, !dbg !1802, !tbaa !1124
  %51 = icmp eq i8 %50, 48, !dbg !1802
  br i1 %51, label %52, label %68, !dbg !1803

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1732, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* null, metadata !1737, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 51, metadata !1738, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 48, metadata !1739, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 0, metadata !1740, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8 0, metadata !1741, metadata !DIExpression()), !dbg !1810
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1811
  %54 = load i8, i8* %53, align 1, !dbg !1811, !tbaa !1124
  %55 = icmp eq i8 %54, 51, !dbg !1811
  br i1 %55, label %56, label %68, !dbg !1812

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1813, metadata !DIExpression()), !dbg !1822
  call void @llvm.dbg.value(metadata i8* null, metadata !1818, metadata !DIExpression()), !dbg !1826
  call void @llvm.dbg.value(metadata i8 48, metadata !1819, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8 0, metadata !1820, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8 0, metadata !1821, metadata !DIExpression()), !dbg !1829
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1830
  %58 = load i8, i8* %57, align 1, !dbg !1830, !tbaa !1124
  %59 = icmp eq i8 %58, 48, !dbg !1830
  br i1 %59, label %60, label %68, !dbg !1832

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1833, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.value(metadata i8* null, metadata !1838, metadata !DIExpression()), !dbg !1845
  call void @llvm.dbg.value(metadata i8 0, metadata !1839, metadata !DIExpression()), !dbg !1846
  call void @llvm.dbg.value(metadata i8 0, metadata !1840, metadata !DIExpression()), !dbg !1847
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1848
  %62 = load i8, i8* %61, align 1, !dbg !1848, !tbaa !1124
  %63 = icmp eq i8 %62, 0, !dbg !1848
  br i1 %63, label %64, label %68, !dbg !1850

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1851, !tbaa !1124
  %66 = icmp eq i8 %65, 96, !dbg !1852
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.65, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.66, i64 0, i64 0), !dbg !1851
  br label %71, !dbg !1853

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1854
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.62, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.61, i64 0, i64 0), !dbg !1855
  br label %71, !dbg !1856

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1857
  ret i8* %72, !dbg !1858
}

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #12

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1859 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1863, metadata !DIExpression()), !dbg !1866
  call void @llvm.dbg.value(metadata i64 %1, metadata !1864, metadata !DIExpression()), !dbg !1867
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1865, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.value(metadata i8* %0, metadata !1869, metadata !DIExpression()) #10, !dbg !1882
  call void @llvm.dbg.value(metadata i64 %1, metadata !1874, metadata !DIExpression()) #10, !dbg !1884
  call void @llvm.dbg.value(metadata i64* null, metadata !1875, metadata !DIExpression()) #10, !dbg !1885
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1876, metadata !DIExpression()) #10, !dbg !1886
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1887
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1887
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1877, metadata !DIExpression()) #10, !dbg !1888
  %6 = tail call i32* @__errno_location() #17, !dbg !1889
  %7 = load i32, i32* %6, align 4, !dbg !1889, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %7, metadata !1878, metadata !DIExpression()) #10, !dbg !1890
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1891
  %9 = load i32, i32* %8, align 4, !dbg !1891, !tbaa !962
  %10 = or i32 %9, 1, !dbg !1892
  call void @llvm.dbg.value(metadata i32 %10, metadata !1879, metadata !DIExpression()) #10, !dbg !1893
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1894
  %12 = load i32, i32* %11, align 8, !dbg !1894, !tbaa !902
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1895
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1896
  %15 = load i8*, i8** %14, align 8, !dbg !1896, !tbaa !988
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1897
  %17 = load i8*, i8** %16, align 8, !dbg !1897, !tbaa !991
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !1898
  %19 = add i64 %18, 1, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %19, metadata !1880, metadata !DIExpression()) #10, !dbg !1900
  call void @llvm.dbg.value(metadata i64 %19, metadata !1901, metadata !DIExpression()) #10, !dbg !1906
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1908
  call void @llvm.dbg.value(metadata i8* %20, metadata !1881, metadata !DIExpression()) #10, !dbg !1909
  %21 = load i32, i32* %11, align 8, !dbg !1910, !tbaa !902
  %22 = load i8*, i8** %14, align 8, !dbg !1911, !tbaa !988
  %23 = load i8*, i8** %16, align 8, !dbg !1912, !tbaa !991
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !1913
  store i32 %7, i32* %6, align 4, !dbg !1914, !tbaa !703
  ret i8* %20, !dbg !1915
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1870 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1869, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i64 %1, metadata !1874, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64* %2, metadata !1875, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1876, metadata !DIExpression()), !dbg !1919
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1920
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1920
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1877, metadata !DIExpression()), !dbg !1921
  %7 = tail call i32* @__errno_location() #17, !dbg !1922
  %8 = load i32, i32* %7, align 4, !dbg !1922, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %8, metadata !1878, metadata !DIExpression()), !dbg !1923
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1924
  %10 = load i32, i32* %9, align 4, !dbg !1924, !tbaa !962
  %11 = icmp ne i64* %2, null, !dbg !1925
  %12 = xor i1 %11, true, !dbg !1925
  %13 = zext i1 %12 to i32, !dbg !1925
  %14 = or i32 %10, %13, !dbg !1926
  call void @llvm.dbg.value(metadata i32 %14, metadata !1879, metadata !DIExpression()), !dbg !1927
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1928
  %16 = load i32, i32* %15, align 8, !dbg !1928, !tbaa !902
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1929
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1930
  %19 = load i8*, i8** %18, align 8, !dbg !1930, !tbaa !988
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1931
  %21 = load i8*, i8** %20, align 8, !dbg !1931, !tbaa !991
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !1932
  %23 = add i64 %22, 1, !dbg !1933
  call void @llvm.dbg.value(metadata i64 %23, metadata !1880, metadata !DIExpression()), !dbg !1934
  call void @llvm.dbg.value(metadata i64 %23, metadata !1901, metadata !DIExpression()) #10, !dbg !1935
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1937
  call void @llvm.dbg.value(metadata i8* %24, metadata !1881, metadata !DIExpression()), !dbg !1938
  %25 = load i32, i32* %15, align 8, !dbg !1939, !tbaa !902
  %26 = load i8*, i8** %18, align 8, !dbg !1940, !tbaa !988
  %27 = load i8*, i8** %20, align 8, !dbg !1941, !tbaa !991
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !1942
  store i32 %8, i32* %7, align 4, !dbg !1943, !tbaa !703
  br i1 %11, label %29, label %30, !dbg !1944

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1945, !tbaa !1947
  br label %30, !dbg !1949

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1950
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !1951 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1955, !tbaa !636
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1953, metadata !DIExpression()), !dbg !1956
  call void @llvm.dbg.value(metadata i32 1, metadata !1954, metadata !DIExpression()), !dbg !1957
  %2 = load i32, i32* @nslots, align 4, !dbg !1958, !tbaa !703
  %3 = icmp sgt i32 %2, 1, !dbg !1961
  br i1 %3, label %4, label %12, !dbg !1962

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1954, metadata !DIExpression()), !dbg !1957
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !1963
  %7 = load i8*, i8** %6, align 8, !dbg !1963, !tbaa !1964
  tail call void @free(i8* %7) #10, !dbg !1966
  %8 = add nuw nsw i64 %5, 1, !dbg !1967
  call void @llvm.dbg.value(metadata i32 undef, metadata !1954, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1957
  %9 = load i32, i32* @nslots, align 4, !dbg !1958, !tbaa !703
  %10 = sext i32 %9 to i64, !dbg !1961
  %11 = icmp slt i64 %8, %10, !dbg !1961
  br i1 %11, label %4, label %12, !dbg !1962, !llvm.loop !1968

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1970
  %14 = load i8*, i8** %13, align 8, !dbg !1970, !tbaa !1964
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1972
  br i1 %15, label %17, label %16, !dbg !1973

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !1974
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1976, !tbaa !1977
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1978, !tbaa !1964
  br label %17, !dbg !1979

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1980
  br i1 %18, label %21, label %19, !dbg !1982

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1983
  tail call void @free(i8* %20) #10, !dbg !1985
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1986, !tbaa !636
  br label %21, !dbg !1987

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !1988, !tbaa !703
  ret void, !dbg !1989
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !1990 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata i8* %1, metadata !1995, metadata !DIExpression()), !dbg !1997
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1998
  ret i8* %3, !dbg !1999
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2000 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2004, metadata !DIExpression()), !dbg !2019
  call void @llvm.dbg.value(metadata i8* %1, metadata !2005, metadata !DIExpression()), !dbg !2020
  call void @llvm.dbg.value(metadata i64 %2, metadata !2006, metadata !DIExpression()), !dbg !2021
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2007, metadata !DIExpression()), !dbg !2022
  %5 = tail call i32* @__errno_location() #17, !dbg !2023
  %6 = load i32, i32* %5, align 4, !dbg !2023, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %6, metadata !2008, metadata !DIExpression()), !dbg !2024
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2025, !tbaa !636
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2009, metadata !DIExpression()), !dbg !2026
  %8 = icmp slt i32 %0, 0, !dbg !2027
  br i1 %8, label %9, label %10, !dbg !2029

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2030
  unreachable, !dbg !2030

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2031, !tbaa !703
  %12 = icmp sgt i32 %11, %0, !dbg !2032
  br i1 %12, label %34, label %13, !dbg !2033

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2034
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2013, metadata !DIExpression()), !dbg !2035
  %15 = icmp eq i32 %0, 2147483647, !dbg !2036
  br i1 %15, label %16, label %17, !dbg !2038

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2039
  unreachable, !dbg !2039

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2040
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2040
  %20 = add nsw i32 %0, 1, !dbg !2041
  %21 = sext i32 %20 to i64, !dbg !2042
  %22 = shl nsw i64 %21, 4, !dbg !2043
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2044
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2044
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2009, metadata !DIExpression()), !dbg !2026
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2045, !tbaa !636
  br i1 %14, label %25, label %26, !dbg !2046

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2047, !tbaa.struct !2049
  br label %26, !dbg !2050

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2051, !tbaa !703
  %28 = sext i32 %27 to i64, !dbg !2052
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2052
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2053
  %31 = sub nsw i32 %20, %27, !dbg !2054
  %32 = sext i32 %31 to i64, !dbg !2055
  %33 = shl nsw i64 %32, 4, !dbg !2056
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2053
  store i32 %20, i32* @nslots, align 4, !dbg !2057, !tbaa !703
  br label %34, !dbg !2058

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2059
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2009, metadata !DIExpression()), !dbg !2026
  %36 = sext i32 %0 to i64, !dbg !2060
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2061
  %38 = load i64, i64* %37, align 8, !dbg !2061, !tbaa !1977
  call void @llvm.dbg.value(metadata i64 %38, metadata !2014, metadata !DIExpression()), !dbg !2062
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2063
  %40 = load i8*, i8** %39, align 8, !dbg !2063, !tbaa !1964
  call void @llvm.dbg.value(metadata i8* %40, metadata !2016, metadata !DIExpression()), !dbg !2064
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2065
  %42 = load i32, i32* %41, align 4, !dbg !2065, !tbaa !962
  %43 = or i32 %42, 1, !dbg !2066
  call void @llvm.dbg.value(metadata i32 %43, metadata !2017, metadata !DIExpression()), !dbg !2067
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2068
  %45 = load i32, i32* %44, align 8, !dbg !2068, !tbaa !902
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2069
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2070
  %48 = load i8*, i8** %47, align 8, !dbg !2070, !tbaa !988
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2071
  %50 = load i8*, i8** %49, align 8, !dbg !2071, !tbaa !991
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2072
  call void @llvm.dbg.value(metadata i64 %51, metadata !2018, metadata !DIExpression()), !dbg !2073
  %52 = icmp ugt i64 %38, %51, !dbg !2074
  br i1 %52, label %63, label %53, !dbg !2076

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2077
  call void @llvm.dbg.value(metadata i64 %54, metadata !2014, metadata !DIExpression()), !dbg !2062
  store i64 %54, i64* %37, align 8, !dbg !2079, !tbaa !1977
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2080
  br i1 %55, label %57, label %56, !dbg !2082

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2083
  br label %57, !dbg !2083

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !1901, metadata !DIExpression()) #10, !dbg !2084
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2086
  call void @llvm.dbg.value(metadata i8* %58, metadata !2016, metadata !DIExpression()), !dbg !2064
  store i8* %58, i8** %39, align 8, !dbg !2087, !tbaa !1964
  %59 = load i32, i32* %44, align 8, !dbg !2088, !tbaa !902
  %60 = load i8*, i8** %47, align 8, !dbg !2089, !tbaa !988
  %61 = load i8*, i8** %49, align 8, !dbg !2090, !tbaa !991
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2091
  br label %63, !dbg !2092

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2093
  call void @llvm.dbg.value(metadata i8* %64, metadata !2016, metadata !DIExpression()), !dbg !2064
  store i32 %6, i32* %5, align 4, !dbg !2094, !tbaa !703
  ret i8* %64, !dbg !2095
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2096 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2100, metadata !DIExpression()), !dbg !2103
  call void @llvm.dbg.value(metadata i8* %1, metadata !2101, metadata !DIExpression()), !dbg !2104
  call void @llvm.dbg.value(metadata i64 %2, metadata !2102, metadata !DIExpression()), !dbg !2105
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2106
  ret i8* %4, !dbg !2107
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2108 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2112, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 0, metadata !1994, metadata !DIExpression()) #10, !dbg !2114
  call void @llvm.dbg.value(metadata i8* %0, metadata !1995, metadata !DIExpression()) #10, !dbg !2116
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2117
  ret i8* %2, !dbg !2118
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2119 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2123, metadata !DIExpression()), !dbg !2125
  call void @llvm.dbg.value(metadata i64 %1, metadata !2124, metadata !DIExpression()), !dbg !2126
  call void @llvm.dbg.value(metadata i32 0, metadata !2100, metadata !DIExpression()) #10, !dbg !2127
  call void @llvm.dbg.value(metadata i8* %0, metadata !2101, metadata !DIExpression()) #10, !dbg !2129
  call void @llvm.dbg.value(metadata i64 %1, metadata !2102, metadata !DIExpression()) #10, !dbg !2130
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2131
  ret i8* %3, !dbg !2132
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2133 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2137, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i32 %1, metadata !2138, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i8* %2, metadata !2139, metadata !DIExpression()), !dbg !2143
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2144
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2144
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2140, metadata !DIExpression(DW_OP_deref)), !dbg !2145
  call void @llvm.dbg.value(metadata i32 %1, metadata !2146, metadata !DIExpression()) #10, !dbg !2152
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2154, !alias.scope !2155
  %6 = icmp eq i32 %1, 10, !dbg !2158
  br i1 %6, label %7, label %8, !dbg !2160

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2161, !noalias !2155
  unreachable, !dbg !2161

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2162
  store i32 %1, i32* %9, align 8, !dbg !2163, !tbaa !902, !alias.scope !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2140, metadata !DIExpression(DW_OP_deref)), !dbg !2145
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2151, metadata !DIExpression(DW_OP_deref)), !dbg !2154
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2164
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2165
  ret i8* %10, !dbg !2166
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2167 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2171, metadata !DIExpression()), !dbg !2176
  call void @llvm.dbg.value(metadata i32 %1, metadata !2172, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8* %2, metadata !2173, metadata !DIExpression()), !dbg !2178
  call void @llvm.dbg.value(metadata i64 %3, metadata !2174, metadata !DIExpression()), !dbg !2179
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2180
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2180
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2175, metadata !DIExpression(DW_OP_deref)), !dbg !2181
  call void @llvm.dbg.value(metadata i32 %1, metadata !2146, metadata !DIExpression()) #10, !dbg !2182
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2184, !alias.scope !2185
  %7 = icmp eq i32 %1, 10, !dbg !2188
  br i1 %7, label %8, label %9, !dbg !2189

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2190, !noalias !2185
  unreachable, !dbg !2190

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2191
  store i32 %1, i32* %10, align 8, !dbg !2192, !tbaa !902, !alias.scope !2185
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2175, metadata !DIExpression(DW_OP_deref)), !dbg !2181
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2151, metadata !DIExpression(DW_OP_deref)), !dbg !2184
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2193
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2194
  ret i8* %11, !dbg !2195
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2196 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2200, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8* %1, metadata !2201, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i32 0, metadata !2137, metadata !DIExpression()) #10, !dbg !2204
  call void @llvm.dbg.value(metadata i32 %0, metadata !2138, metadata !DIExpression()) #10, !dbg !2206
  call void @llvm.dbg.value(metadata i8* %1, metadata !2139, metadata !DIExpression()) #10, !dbg !2207
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2208
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2208
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2140, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2209
  call void @llvm.dbg.value(metadata i32 %0, metadata !2146, metadata !DIExpression()) #10, !dbg !2210
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2212, !alias.scope !2213
  %5 = icmp eq i32 %0, 10, !dbg !2216
  br i1 %5, label %6, label %7, !dbg !2217

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2218, !noalias !2213
  unreachable, !dbg !2218

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2219
  store i32 %0, i32* %8, align 8, !dbg !2220, !tbaa !902, !alias.scope !2213
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2140, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2209
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2151, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2212
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2221
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2222
  ret i8* %9, !dbg !2223
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2224 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2228, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.value(metadata i8* %1, metadata !2229, metadata !DIExpression()), !dbg !2232
  call void @llvm.dbg.value(metadata i64 %2, metadata !2230, metadata !DIExpression()), !dbg !2233
  call void @llvm.dbg.value(metadata i32 0, metadata !2171, metadata !DIExpression()) #10, !dbg !2234
  call void @llvm.dbg.value(metadata i32 %0, metadata !2172, metadata !DIExpression()) #10, !dbg !2236
  call void @llvm.dbg.value(metadata i8* %1, metadata !2173, metadata !DIExpression()) #10, !dbg !2237
  call void @llvm.dbg.value(metadata i64 %2, metadata !2174, metadata !DIExpression()) #10, !dbg !2238
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2239
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2239
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2175, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2240
  call void @llvm.dbg.value(metadata i32 %0, metadata !2146, metadata !DIExpression()) #10, !dbg !2241
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2243, !alias.scope !2244
  %6 = icmp eq i32 %0, 10, !dbg !2247
  br i1 %6, label %7, label %8, !dbg !2248

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2249, !noalias !2244
  unreachable, !dbg !2249

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2250
  store i32 %0, i32* %9, align 8, !dbg !2251, !tbaa !902, !alias.scope !2244
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2175, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2240
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2151, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2243
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2252
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2253
  ret i8* %10, !dbg !2254
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2255 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2259, metadata !DIExpression()), !dbg !2263
  call void @llvm.dbg.value(metadata i64 %1, metadata !2260, metadata !DIExpression()), !dbg !2264
  call void @llvm.dbg.value(metadata i8 %2, metadata !2261, metadata !DIExpression()), !dbg !2265
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2266
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2266
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2267, !tbaa.struct !2268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2262, metadata !DIExpression(DW_OP_deref)), !dbg !2269
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !921, metadata !DIExpression()), !dbg !2270
  call void @llvm.dbg.value(metadata i8 %2, metadata !922, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i32 1, metadata !923, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8 %2, metadata !924, metadata !DIExpression()), !dbg !2274
  %6 = lshr i8 %2, 5, !dbg !2275
  %7 = zext i8 %6 to i64, !dbg !2275
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2276
  call void @llvm.dbg.value(metadata i32* %8, metadata !926, metadata !DIExpression()), !dbg !2277
  %9 = and i8 %2, 31, !dbg !2278
  %10 = zext i8 %9 to i32, !dbg !2278
  call void @llvm.dbg.value(metadata i32 %10, metadata !928, metadata !DIExpression()), !dbg !2279
  %11 = load i32, i32* %8, align 4, !dbg !2280, !tbaa !703
  %12 = lshr i32 %11, %10, !dbg !2281
  %13 = and i32 %12, 1, !dbg !2282
  call void @llvm.dbg.value(metadata i32 %13, metadata !929, metadata !DIExpression()), !dbg !2283
  %14 = xor i32 %13, 1, !dbg !2284
  %15 = shl i32 %14, %10, !dbg !2285
  %16 = xor i32 %15, %11, !dbg !2286
  store i32 %16, i32* %8, align 4, !dbg !2286, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2262, metadata !DIExpression(DW_OP_deref)), !dbg !2269
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2287
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2288
  ret i8* %17, !dbg !2289
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2290 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2294, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i8 %1, metadata !2295, metadata !DIExpression()), !dbg !2297
  call void @llvm.dbg.value(metadata i8* %0, metadata !2259, metadata !DIExpression()) #10, !dbg !2298
  call void @llvm.dbg.value(metadata i64 -1, metadata !2260, metadata !DIExpression()) #10, !dbg !2300
  call void @llvm.dbg.value(metadata i8 %1, metadata !2261, metadata !DIExpression()) #10, !dbg !2301
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2302
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2302
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2303, !tbaa.struct !2268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2262, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2304
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !921, metadata !DIExpression()) #10, !dbg !2305
  call void @llvm.dbg.value(metadata i8 %1, metadata !922, metadata !DIExpression()) #10, !dbg !2307
  call void @llvm.dbg.value(metadata i32 1, metadata !923, metadata !DIExpression()) #10, !dbg !2308
  call void @llvm.dbg.value(metadata i8 %1, metadata !924, metadata !DIExpression()) #10, !dbg !2309
  %5 = lshr i8 %1, 5, !dbg !2310
  %6 = zext i8 %5 to i64, !dbg !2310
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2311
  call void @llvm.dbg.value(metadata i32* %7, metadata !926, metadata !DIExpression()) #10, !dbg !2312
  %8 = and i8 %1, 31, !dbg !2313
  %9 = zext i8 %8 to i32, !dbg !2313
  call void @llvm.dbg.value(metadata i32 %9, metadata !928, metadata !DIExpression()) #10, !dbg !2314
  %10 = load i32, i32* %7, align 4, !dbg !2315, !tbaa !703
  %11 = lshr i32 %10, %9, !dbg !2316
  %12 = and i32 %11, 1, !dbg !2317
  call void @llvm.dbg.value(metadata i32 %12, metadata !929, metadata !DIExpression()) #10, !dbg !2318
  %13 = xor i32 %12, 1, !dbg !2319
  %14 = shl i32 %13, %9, !dbg !2320
  %15 = xor i32 %14, %10, !dbg !2321
  store i32 %15, i32* %7, align 4, !dbg !2321, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2262, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2304
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2322
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2323
  ret i8* %16, !dbg !2324
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2325 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2327, metadata !DIExpression()), !dbg !2328
  call void @llvm.dbg.value(metadata i8* %0, metadata !2294, metadata !DIExpression()) #10, !dbg !2329
  call void @llvm.dbg.value(metadata i8 58, metadata !2295, metadata !DIExpression()) #10, !dbg !2331
  call void @llvm.dbg.value(metadata i8* %0, metadata !2259, metadata !DIExpression()) #10, !dbg !2332
  call void @llvm.dbg.value(metadata i64 -1, metadata !2260, metadata !DIExpression()) #10, !dbg !2334
  call void @llvm.dbg.value(metadata i8 58, metadata !2261, metadata !DIExpression()) #10, !dbg !2335
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2336
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2336
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2337, !tbaa.struct !2268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2262, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2338
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !921, metadata !DIExpression()) #10, !dbg !2339
  call void @llvm.dbg.value(metadata i8 58, metadata !922, metadata !DIExpression()) #10, !dbg !2341
  call void @llvm.dbg.value(metadata i32 1, metadata !923, metadata !DIExpression()) #10, !dbg !2342
  call void @llvm.dbg.value(metadata i8 58, metadata !924, metadata !DIExpression()) #10, !dbg !2343
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2344
  call void @llvm.dbg.value(metadata i32* %4, metadata !926, metadata !DIExpression()) #10, !dbg !2345
  call void @llvm.dbg.value(metadata i32 26, metadata !928, metadata !DIExpression()) #10, !dbg !2346
  %5 = load i32, i32* %4, align 4, !dbg !2347, !tbaa !703
  %6 = or i32 %5, 67108864, !dbg !2348
  store i32 %6, i32* %4, align 4, !dbg !2348, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2262, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2338
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2349
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2350
  ret i8* %7, !dbg !2351
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2352 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2354, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata i64 %1, metadata !2355, metadata !DIExpression()), !dbg !2357
  call void @llvm.dbg.value(metadata i8* %0, metadata !2259, metadata !DIExpression()) #10, !dbg !2358
  call void @llvm.dbg.value(metadata i64 %1, metadata !2260, metadata !DIExpression()) #10, !dbg !2360
  call void @llvm.dbg.value(metadata i8 58, metadata !2261, metadata !DIExpression()) #10, !dbg !2361
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2362
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2362
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2363, !tbaa.struct !2268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2262, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2364
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !921, metadata !DIExpression()) #10, !dbg !2365
  call void @llvm.dbg.value(metadata i8 58, metadata !922, metadata !DIExpression()) #10, !dbg !2367
  call void @llvm.dbg.value(metadata i32 1, metadata !923, metadata !DIExpression()) #10, !dbg !2368
  call void @llvm.dbg.value(metadata i8 58, metadata !924, metadata !DIExpression()) #10, !dbg !2369
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2370
  call void @llvm.dbg.value(metadata i32* %5, metadata !926, metadata !DIExpression()) #10, !dbg !2371
  call void @llvm.dbg.value(metadata i32 26, metadata !928, metadata !DIExpression()) #10, !dbg !2372
  %6 = load i32, i32* %5, align 4, !dbg !2373, !tbaa !703
  %7 = or i32 %6, 67108864, !dbg !2374
  store i32 %7, i32* %5, align 4, !dbg !2374, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2262, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2364
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2375
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2376
  ret i8* %8, !dbg !2377
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2378 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2151, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2384
  call void @llvm.dbg.value(metadata i32 %0, metadata !2380, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i32 %1, metadata !2381, metadata !DIExpression()), !dbg !2387
  call void @llvm.dbg.value(metadata i8* %2, metadata !2382, metadata !DIExpression()), !dbg !2388
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2389
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2389
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2390
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2390
  call void @llvm.dbg.value(metadata i32 %1, metadata !2146, metadata !DIExpression()) #10, !dbg !2391
  call void @llvm.dbg.value(metadata i32 0, metadata !2151, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2384
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2384, !alias.scope !2392
  %8 = icmp eq i32 %1, 10, !dbg !2395
  br i1 %8, label %9, label %10, !dbg !2396

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2397, !noalias !2392
  unreachable, !dbg !2397

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2151, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2384
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2390
  store i32 %1, i32* %11, align 8, !dbg !2390
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2390
  %13 = bitcast i32* %12 to i8*, !dbg !2390
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2390
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2390
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2383, metadata !DIExpression(DW_OP_deref)), !dbg !2398
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !921, metadata !DIExpression()), !dbg !2399
  call void @llvm.dbg.value(metadata i8 58, metadata !922, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i32 1, metadata !923, metadata !DIExpression()), !dbg !2402
  call void @llvm.dbg.value(metadata i8 58, metadata !924, metadata !DIExpression()), !dbg !2403
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2404
  call void @llvm.dbg.value(metadata i32* %14, metadata !926, metadata !DIExpression()), !dbg !2405
  call void @llvm.dbg.value(metadata i32 26, metadata !928, metadata !DIExpression()), !dbg !2406
  %15 = load i32, i32* %14, align 4, !dbg !2407, !tbaa !703
  %16 = or i32 %15, 67108864, !dbg !2408
  store i32 %16, i32* %14, align 4, !dbg !2408, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2383, metadata !DIExpression(DW_OP_deref)), !dbg !2398
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2409
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2410
  ret i8* %17, !dbg !2411
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2412 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2416, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i8* %1, metadata !2417, metadata !DIExpression()), !dbg !2421
  call void @llvm.dbg.value(metadata i8* %2, metadata !2418, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.value(metadata i8* %3, metadata !2419, metadata !DIExpression()), !dbg !2423
  call void @llvm.dbg.value(metadata i32 %0, metadata !2424, metadata !DIExpression()) #10, !dbg !2434
  call void @llvm.dbg.value(metadata i8* %1, metadata !2429, metadata !DIExpression()) #10, !dbg !2436
  call void @llvm.dbg.value(metadata i8* %2, metadata !2430, metadata !DIExpression()) #10, !dbg !2437
  call void @llvm.dbg.value(metadata i8* %3, metadata !2431, metadata !DIExpression()) #10, !dbg !2438
  call void @llvm.dbg.value(metadata i64 -1, metadata !2432, metadata !DIExpression()) #10, !dbg !2439
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2440
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2440
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2441, !tbaa.struct !2268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2433, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2442
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !970, metadata !DIExpression()) #10, !dbg !2443
  call void @llvm.dbg.value(metadata i8* %1, metadata !971, metadata !DIExpression()) #10, !dbg !2445
  call void @llvm.dbg.value(metadata i8* %2, metadata !972, metadata !DIExpression()) #10, !dbg !2446
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !970, metadata !DIExpression()) #10, !dbg !2443
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2447
  store i32 10, i32* %7, align 8, !dbg !2448, !tbaa !902
  %8 = icmp ne i8* %1, null, !dbg !2449
  %9 = icmp ne i8* %2, null, !dbg !2450
  %10 = and i1 %8, %9, !dbg !2451
  br i1 %10, label %12, label %11, !dbg !2451

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2452
  unreachable, !dbg !2452

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2453
  store i8* %1, i8** %13, align 8, !dbg !2454, !tbaa !988
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2455
  store i8* %2, i8** %14, align 8, !dbg !2456, !tbaa !991
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2433, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2442
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2457
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2458
  ret i8* %15, !dbg !2459
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2425 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2424, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.value(metadata i8* %1, metadata !2429, metadata !DIExpression()), !dbg !2461
  call void @llvm.dbg.value(metadata i8* %2, metadata !2430, metadata !DIExpression()), !dbg !2462
  call void @llvm.dbg.value(metadata i8* %3, metadata !2431, metadata !DIExpression()), !dbg !2463
  call void @llvm.dbg.value(metadata i64 %4, metadata !2432, metadata !DIExpression()), !dbg !2464
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2465
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2465
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2466, !tbaa.struct !2268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2433, metadata !DIExpression(DW_OP_deref)), !dbg !2467
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !970, metadata !DIExpression()) #10, !dbg !2468
  call void @llvm.dbg.value(metadata i8* %1, metadata !971, metadata !DIExpression()) #10, !dbg !2470
  call void @llvm.dbg.value(metadata i8* %2, metadata !972, metadata !DIExpression()) #10, !dbg !2471
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !970, metadata !DIExpression()) #10, !dbg !2468
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2472
  store i32 10, i32* %8, align 8, !dbg !2473, !tbaa !902
  %9 = icmp ne i8* %1, null, !dbg !2474
  %10 = icmp ne i8* %2, null, !dbg !2475
  %11 = and i1 %9, %10, !dbg !2476
  br i1 %11, label %13, label %12, !dbg !2476

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2477
  unreachable, !dbg !2477

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2478
  store i8* %1, i8** %14, align 8, !dbg !2479, !tbaa !988
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2480
  store i8* %2, i8** %15, align 8, !dbg !2481, !tbaa !991
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2433, metadata !DIExpression(DW_OP_deref)), !dbg !2467
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2482
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2483
  ret i8* %16, !dbg !2484
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2485 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2489, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.value(metadata i8* %1, metadata !2490, metadata !DIExpression()), !dbg !2493
  call void @llvm.dbg.value(metadata i8* %2, metadata !2491, metadata !DIExpression()), !dbg !2494
  call void @llvm.dbg.value(metadata i32 0, metadata !2416, metadata !DIExpression()) #10, !dbg !2495
  call void @llvm.dbg.value(metadata i8* %0, metadata !2417, metadata !DIExpression()) #10, !dbg !2497
  call void @llvm.dbg.value(metadata i8* %1, metadata !2418, metadata !DIExpression()) #10, !dbg !2498
  call void @llvm.dbg.value(metadata i8* %2, metadata !2419, metadata !DIExpression()) #10, !dbg !2499
  call void @llvm.dbg.value(metadata i32 0, metadata !2424, metadata !DIExpression()) #10, !dbg !2500
  call void @llvm.dbg.value(metadata i8* %0, metadata !2429, metadata !DIExpression()) #10, !dbg !2502
  call void @llvm.dbg.value(metadata i8* %1, metadata !2430, metadata !DIExpression()) #10, !dbg !2503
  call void @llvm.dbg.value(metadata i8* %2, metadata !2431, metadata !DIExpression()) #10, !dbg !2504
  call void @llvm.dbg.value(metadata i64 -1, metadata !2432, metadata !DIExpression()) #10, !dbg !2505
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2506
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2506
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2507, !tbaa.struct !2268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2433, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2508
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !970, metadata !DIExpression()) #10, !dbg !2509
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()) #10, !dbg !2511
  call void @llvm.dbg.value(metadata i8* %1, metadata !972, metadata !DIExpression()) #10, !dbg !2512
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !970, metadata !DIExpression()) #10, !dbg !2509
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2513
  store i32 10, i32* %6, align 8, !dbg !2514, !tbaa !902
  %7 = icmp ne i8* %0, null, !dbg !2515
  %8 = icmp ne i8* %1, null, !dbg !2516
  %9 = and i1 %7, %8, !dbg !2517
  br i1 %9, label %11, label %10, !dbg !2517

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2518
  unreachable, !dbg !2518

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2519
  store i8* %0, i8** %12, align 8, !dbg !2520, !tbaa !988
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2521
  store i8* %1, i8** %13, align 8, !dbg !2522, !tbaa !991
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2433, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2508
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2523
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2524
  ret i8* %14, !dbg !2525
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2526 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2530, metadata !DIExpression()), !dbg !2534
  call void @llvm.dbg.value(metadata i8* %1, metadata !2531, metadata !DIExpression()), !dbg !2535
  call void @llvm.dbg.value(metadata i8* %2, metadata !2532, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i64 %3, metadata !2533, metadata !DIExpression()), !dbg !2537
  call void @llvm.dbg.value(metadata i32 0, metadata !2424, metadata !DIExpression()) #10, !dbg !2538
  call void @llvm.dbg.value(metadata i8* %0, metadata !2429, metadata !DIExpression()) #10, !dbg !2540
  call void @llvm.dbg.value(metadata i8* %1, metadata !2430, metadata !DIExpression()) #10, !dbg !2541
  call void @llvm.dbg.value(metadata i8* %2, metadata !2431, metadata !DIExpression()) #10, !dbg !2542
  call void @llvm.dbg.value(metadata i64 %3, metadata !2432, metadata !DIExpression()) #10, !dbg !2543
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2544
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2544
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2545, !tbaa.struct !2268
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2433, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2546
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !970, metadata !DIExpression()) #10, !dbg !2547
  call void @llvm.dbg.value(metadata i8* %0, metadata !971, metadata !DIExpression()) #10, !dbg !2549
  call void @llvm.dbg.value(metadata i8* %1, metadata !972, metadata !DIExpression()) #10, !dbg !2550
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !970, metadata !DIExpression()) #10, !dbg !2547
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2551
  store i32 10, i32* %7, align 8, !dbg !2552, !tbaa !902
  %8 = icmp ne i8* %0, null, !dbg !2553
  %9 = icmp ne i8* %1, null, !dbg !2554
  %10 = and i1 %8, %9, !dbg !2555
  br i1 %10, label %12, label %11, !dbg !2555

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2556
  unreachable, !dbg !2556

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2557
  store i8* %0, i8** %13, align 8, !dbg !2558, !tbaa !988
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2559
  store i8* %1, i8** %14, align 8, !dbg !2560, !tbaa !991
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2433, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2546
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2561
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2562
  ret i8* %15, !dbg !2563
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2564 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2568, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata i8* %1, metadata !2569, metadata !DIExpression()), !dbg !2572
  call void @llvm.dbg.value(metadata i64 %2, metadata !2570, metadata !DIExpression()), !dbg !2573
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2574
  ret i8* %4, !dbg !2575
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2576 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2580, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %1, metadata !2581, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i32 0, metadata !2568, metadata !DIExpression()) #10, !dbg !2584
  call void @llvm.dbg.value(metadata i8* %0, metadata !2569, metadata !DIExpression()) #10, !dbg !2586
  call void @llvm.dbg.value(metadata i64 %1, metadata !2570, metadata !DIExpression()) #10, !dbg !2587
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2588
  ret i8* %3, !dbg !2589
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2590 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2594, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i8* %1, metadata !2595, metadata !DIExpression()), !dbg !2597
  call void @llvm.dbg.value(metadata i32 %0, metadata !2568, metadata !DIExpression()) #10, !dbg !2598
  call void @llvm.dbg.value(metadata i8* %1, metadata !2569, metadata !DIExpression()) #10, !dbg !2600
  call void @llvm.dbg.value(metadata i64 -1, metadata !2570, metadata !DIExpression()) #10, !dbg !2601
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2602
  ret i8* %3, !dbg !2603
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2604 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2608, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.value(metadata i32 0, metadata !2594, metadata !DIExpression()) #10, !dbg !2610
  call void @llvm.dbg.value(metadata i8* %0, metadata !2595, metadata !DIExpression()) #10, !dbg !2612
  call void @llvm.dbg.value(metadata i32 0, metadata !2568, metadata !DIExpression()) #10, !dbg !2613
  call void @llvm.dbg.value(metadata i8* %0, metadata !2569, metadata !DIExpression()) #10, !dbg !2615
  call void @llvm.dbg.value(metadata i64 -1, metadata !2570, metadata !DIExpression()) #10, !dbg !2616
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2617
  ret i8* %2, !dbg !2618
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2619 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2677, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.value(metadata i8* %1, metadata !2678, metadata !DIExpression()), !dbg !2684
  call void @llvm.dbg.value(metadata i8* %2, metadata !2679, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.value(metadata i8* %3, metadata !2680, metadata !DIExpression()), !dbg !2686
  call void @llvm.dbg.value(metadata i8** %4, metadata !2681, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.value(metadata i64 %5, metadata !2682, metadata !DIExpression()), !dbg !2688
  %7 = icmp eq i8* %1, null, !dbg !2689
  br i1 %7, label %10, label %8, !dbg !2691

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.73, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2692
  br label %12, !dbg !2692

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.74, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2693
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.75, i64 0, i64 0), i32 5) #10, !dbg !2694
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !2694
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.76, i64 0, i64 0), i32 5) #10, !dbg !2695
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2695
  switch i64 %5, label %126 [
    i64 0, label %17
    i64 1, label %18
    i64 2, label %22
    i64 3, label %28
    i64 4, label %36
    i64 5, label %46
    i64 6, label %58
    i64 7, label %72
    i64 8, label %88
    i64 9, label %106
  ], !dbg !2696

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2697
  unreachable, !dbg !2697

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.77, i64 0, i64 0), i32 5) #10, !dbg !2699
  %20 = load i8*, i8** %4, align 8, !dbg !2699, !tbaa !636
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2699
  br label %146, !dbg !2700

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.78, i64 0, i64 0), i32 5) #10, !dbg !2701
  %24 = load i8*, i8** %4, align 8, !dbg !2701, !tbaa !636
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2701
  %26 = load i8*, i8** %25, align 8, !dbg !2701, !tbaa !636
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2701
  br label %146, !dbg !2702

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.79, i64 0, i64 0), i32 5) #10, !dbg !2703
  %30 = load i8*, i8** %4, align 8, !dbg !2703, !tbaa !636
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2703
  %32 = load i8*, i8** %31, align 8, !dbg !2703, !tbaa !636
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2703
  %34 = load i8*, i8** %33, align 8, !dbg !2703, !tbaa !636
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2703
  br label %146, !dbg !2704

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.80, i64 0, i64 0), i32 5) #10, !dbg !2705
  %38 = load i8*, i8** %4, align 8, !dbg !2705, !tbaa !636
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2705
  %40 = load i8*, i8** %39, align 8, !dbg !2705, !tbaa !636
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2705
  %42 = load i8*, i8** %41, align 8, !dbg !2705, !tbaa !636
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2705
  %44 = load i8*, i8** %43, align 8, !dbg !2705, !tbaa !636
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2705
  br label %146, !dbg !2706

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.81, i64 0, i64 0), i32 5) #10, !dbg !2707
  %48 = load i8*, i8** %4, align 8, !dbg !2707, !tbaa !636
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2707
  %50 = load i8*, i8** %49, align 8, !dbg !2707, !tbaa !636
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2707
  %52 = load i8*, i8** %51, align 8, !dbg !2707, !tbaa !636
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2707
  %54 = load i8*, i8** %53, align 8, !dbg !2707, !tbaa !636
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2707
  %56 = load i8*, i8** %55, align 8, !dbg !2707, !tbaa !636
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2707
  br label %146, !dbg !2708

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.82, i64 0, i64 0), i32 5) #10, !dbg !2709
  %60 = load i8*, i8** %4, align 8, !dbg !2709, !tbaa !636
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2709
  %62 = load i8*, i8** %61, align 8, !dbg !2709, !tbaa !636
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2709
  %64 = load i8*, i8** %63, align 8, !dbg !2709, !tbaa !636
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2709
  %66 = load i8*, i8** %65, align 8, !dbg !2709, !tbaa !636
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2709
  %68 = load i8*, i8** %67, align 8, !dbg !2709, !tbaa !636
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2709
  %70 = load i8*, i8** %69, align 8, !dbg !2709, !tbaa !636
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2709
  br label %146, !dbg !2710

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.83, i64 0, i64 0), i32 5) #10, !dbg !2711
  %74 = load i8*, i8** %4, align 8, !dbg !2711, !tbaa !636
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2711
  %76 = load i8*, i8** %75, align 8, !dbg !2711, !tbaa !636
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2711
  %78 = load i8*, i8** %77, align 8, !dbg !2711, !tbaa !636
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2711
  %80 = load i8*, i8** %79, align 8, !dbg !2711, !tbaa !636
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2711
  %82 = load i8*, i8** %81, align 8, !dbg !2711, !tbaa !636
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2711
  %84 = load i8*, i8** %83, align 8, !dbg !2711, !tbaa !636
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2711
  %86 = load i8*, i8** %85, align 8, !dbg !2711, !tbaa !636
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2711
  br label %146, !dbg !2712

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.84, i64 0, i64 0), i32 5) #10, !dbg !2713
  %90 = load i8*, i8** %4, align 8, !dbg !2713, !tbaa !636
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2713
  %92 = load i8*, i8** %91, align 8, !dbg !2713, !tbaa !636
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2713
  %94 = load i8*, i8** %93, align 8, !dbg !2713, !tbaa !636
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2713
  %96 = load i8*, i8** %95, align 8, !dbg !2713, !tbaa !636
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2713
  %98 = load i8*, i8** %97, align 8, !dbg !2713, !tbaa !636
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2713
  %100 = load i8*, i8** %99, align 8, !dbg !2713, !tbaa !636
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2713
  %102 = load i8*, i8** %101, align 8, !dbg !2713, !tbaa !636
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2713
  %104 = load i8*, i8** %103, align 8, !dbg !2713, !tbaa !636
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2713
  br label %146, !dbg !2714

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.85, i64 0, i64 0), i32 5) #10, !dbg !2715
  %108 = load i8*, i8** %4, align 8, !dbg !2715, !tbaa !636
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2715
  %110 = load i8*, i8** %109, align 8, !dbg !2715, !tbaa !636
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2715
  %112 = load i8*, i8** %111, align 8, !dbg !2715, !tbaa !636
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2715
  %114 = load i8*, i8** %113, align 8, !dbg !2715, !tbaa !636
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2715
  %116 = load i8*, i8** %115, align 8, !dbg !2715, !tbaa !636
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2715
  %118 = load i8*, i8** %117, align 8, !dbg !2715, !tbaa !636
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2715
  %120 = load i8*, i8** %119, align 8, !dbg !2715, !tbaa !636
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2715
  %122 = load i8*, i8** %121, align 8, !dbg !2715, !tbaa !636
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2715
  %124 = load i8*, i8** %123, align 8, !dbg !2715, !tbaa !636
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2715
  br label %146, !dbg !2716

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.86, i64 0, i64 0), i32 5) #10, !dbg !2717
  %128 = load i8*, i8** %4, align 8, !dbg !2717, !tbaa !636
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2717
  %130 = load i8*, i8** %129, align 8, !dbg !2717, !tbaa !636
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2717
  %132 = load i8*, i8** %131, align 8, !dbg !2717, !tbaa !636
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2717
  %134 = load i8*, i8** %133, align 8, !dbg !2717, !tbaa !636
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2717
  %136 = load i8*, i8** %135, align 8, !dbg !2717, !tbaa !636
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2717
  %138 = load i8*, i8** %137, align 8, !dbg !2717, !tbaa !636
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2717
  %140 = load i8*, i8** %139, align 8, !dbg !2717, !tbaa !636
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2717
  %142 = load i8*, i8** %141, align 8, !dbg !2717, !tbaa !636
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2717
  %144 = load i8*, i8** %143, align 8, !dbg !2717, !tbaa !636
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2717
  br label %146, !dbg !2718

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2719
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2720 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2724, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata i8* %1, metadata !2725, metadata !DIExpression()), !dbg !2731
  call void @llvm.dbg.value(metadata i8* %2, metadata !2726, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8* %3, metadata !2727, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8** %4, metadata !2728, metadata !DIExpression()), !dbg !2734
  call void @llvm.dbg.value(metadata i64 0, metadata !2729, metadata !DIExpression()), !dbg !2735
  br label %6, !dbg !2736

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2738
  call void @llvm.dbg.value(metadata i64 %7, metadata !2729, metadata !DIExpression()), !dbg !2735
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2740
  %9 = load i8*, i8** %8, align 8, !dbg !2740, !tbaa !636
  %10 = icmp eq i8* %9, null, !dbg !2741
  %11 = add i64 %7, 1, !dbg !2742
  call void @llvm.dbg.value(metadata i64 %11, metadata !2729, metadata !DIExpression()), !dbg !2735
  br i1 %10, label %12, label %6, !dbg !2741, !llvm.loop !2743

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2729, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 %7, metadata !2729, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 %7, metadata !2729, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 %7, metadata !2729, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 %7, metadata !2729, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.value(metadata i64 %7, metadata !2729, metadata !DIExpression()), !dbg !2735
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2745
  ret void, !dbg !2746
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2747 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2758, metadata !DIExpression()), !dbg !2766
  call void @llvm.dbg.value(metadata i8* %1, metadata !2759, metadata !DIExpression()), !dbg !2767
  call void @llvm.dbg.value(metadata i8* %2, metadata !2760, metadata !DIExpression()), !dbg !2768
  call void @llvm.dbg.value(metadata i8* %3, metadata !2761, metadata !DIExpression()), !dbg !2769
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2762, metadata !DIExpression()), !dbg !2770
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2771
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2771
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2764, metadata !DIExpression()), !dbg !2772
  call void @llvm.dbg.value(metadata i64 0, metadata !2763, metadata !DIExpression()), !dbg !2773
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2763, metadata !DIExpression()), !dbg !2773
  %11 = load i32, i32* %8, align 8, !dbg !2774
  %12 = icmp ult i32 %11, 41, !dbg !2774
  br i1 %12, label %13, label %18, !dbg !2774

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2774
  %15 = sext i32 %11 to i64, !dbg !2774
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2774
  %17 = add i32 %11, 8, !dbg !2774
  store i32 %17, i32* %8, align 8, !dbg !2774
  br label %21, !dbg !2774

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2774
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2774
  store i8* %20, i8** %10, align 8, !dbg !2774
  br label %21, !dbg !2774

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2774
  %25 = load i8*, i8** %24, align 8, !dbg !2774
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2777
  store i8* %25, i8** %26, align 16, !dbg !2778, !tbaa !636
  %27 = icmp eq i8* %25, null, !dbg !2779
  br i1 %27, label %30, label %28, !dbg !2780

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2763, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 1, metadata !2763, metadata !DIExpression()), !dbg !2773
  %29 = icmp ult i32 %22, 41, !dbg !2774
  br i1 %29, label %35, label %32, !dbg !2774

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2781
  call void @llvm.dbg.value(metadata i64 %31, metadata !2763, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 %31, metadata !2763, metadata !DIExpression()), !dbg !2773
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2782
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2783
  ret void, !dbg !2783

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2774
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2774
  store i8* %34, i8** %10, align 8, !dbg !2774
  br label %40, !dbg !2774

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2774
  %37 = sext i32 %22 to i64, !dbg !2774
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2774
  %39 = add i32 %22, 8, !dbg !2774
  store i32 %39, i32* %8, align 8, !dbg !2774
  br label %40, !dbg !2774

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2774
  %44 = load i8*, i8** %43, align 8, !dbg !2774
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2777
  store i8* %44, i8** %45, align 8, !dbg !2778, !tbaa !636
  %46 = icmp eq i8* %44, null, !dbg !2779
  br i1 %46, label %30, label %47, !dbg !2780

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2763, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 2, metadata !2763, metadata !DIExpression()), !dbg !2773
  %48 = icmp ult i32 %41, 41, !dbg !2774
  br i1 %48, label %52, label %49, !dbg !2774

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2774
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2774
  store i8* %51, i8** %10, align 8, !dbg !2774
  br label %57, !dbg !2774

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2774
  %54 = sext i32 %41 to i64, !dbg !2774
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2774
  %56 = add i32 %41, 8, !dbg !2774
  store i32 %56, i32* %8, align 8, !dbg !2774
  br label %57, !dbg !2774

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2774
  %61 = load i8*, i8** %60, align 8, !dbg !2774
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2777
  store i8* %61, i8** %62, align 16, !dbg !2778, !tbaa !636
  %63 = icmp eq i8* %61, null, !dbg !2779
  br i1 %63, label %30, label %64, !dbg !2780

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2763, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 3, metadata !2763, metadata !DIExpression()), !dbg !2773
  %65 = icmp ult i32 %58, 41, !dbg !2774
  br i1 %65, label %69, label %66, !dbg !2774

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2774
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2774
  store i8* %68, i8** %10, align 8, !dbg !2774
  br label %74, !dbg !2774

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2774
  %71 = sext i32 %58 to i64, !dbg !2774
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2774
  %73 = add i32 %58, 8, !dbg !2774
  store i32 %73, i32* %8, align 8, !dbg !2774
  br label %74, !dbg !2774

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2774
  %78 = load i8*, i8** %77, align 8, !dbg !2774
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2777
  store i8* %78, i8** %79, align 8, !dbg !2778, !tbaa !636
  %80 = icmp eq i8* %78, null, !dbg !2779
  br i1 %80, label %30, label %81, !dbg !2780

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2763, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 4, metadata !2763, metadata !DIExpression()), !dbg !2773
  %82 = icmp ult i32 %75, 41, !dbg !2774
  br i1 %82, label %86, label %83, !dbg !2774

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2774
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2774
  store i8* %85, i8** %10, align 8, !dbg !2774
  br label %91, !dbg !2774

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2774
  %88 = sext i32 %75 to i64, !dbg !2774
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2774
  %90 = add i32 %75, 8, !dbg !2774
  store i32 %90, i32* %8, align 8, !dbg !2774
  br label %91, !dbg !2774

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2774
  %95 = load i8*, i8** %94, align 8, !dbg !2774
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2777
  store i8* %95, i8** %96, align 16, !dbg !2778, !tbaa !636
  %97 = icmp eq i8* %95, null, !dbg !2779
  br i1 %97, label %30, label %98, !dbg !2780

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2763, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 5, metadata !2763, metadata !DIExpression()), !dbg !2773
  %99 = icmp ult i32 %92, 41, !dbg !2774
  br i1 %99, label %103, label %100, !dbg !2774

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2774
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2774
  store i8* %102, i8** %10, align 8, !dbg !2774
  br label %108, !dbg !2774

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2774
  %105 = sext i32 %92 to i64, !dbg !2774
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2774
  %107 = add i32 %92, 8, !dbg !2774
  store i32 %107, i32* %8, align 8, !dbg !2774
  br label %108, !dbg !2774

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2774
  %111 = load i8*, i8** %110, align 8, !dbg !2774
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2777
  store i8* %111, i8** %112, align 8, !dbg !2778, !tbaa !636
  %113 = icmp eq i8* %111, null, !dbg !2779
  br i1 %113, label %30, label %114, !dbg !2780

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2763, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 6, metadata !2763, metadata !DIExpression()), !dbg !2773
  %115 = load i8*, i8** %10, align 8, !dbg !2774
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2774
  store i8* %116, i8** %10, align 8, !dbg !2774
  %117 = bitcast i8* %115 to i8**, !dbg !2774
  %118 = load i8*, i8** %117, align 8, !dbg !2774
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2777
  store i8* %118, i8** %119, align 16, !dbg !2778, !tbaa !636
  %120 = icmp eq i8* %118, null, !dbg !2779
  br i1 %120, label %30, label %121, !dbg !2780

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2763, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 7, metadata !2763, metadata !DIExpression()), !dbg !2773
  %122 = load i8*, i8** %10, align 8, !dbg !2774
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2774
  store i8* %123, i8** %10, align 8, !dbg !2774
  %124 = bitcast i8* %122 to i8**, !dbg !2774
  %125 = load i8*, i8** %124, align 8, !dbg !2774
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2777
  store i8* %125, i8** %126, align 8, !dbg !2778, !tbaa !636
  %127 = icmp eq i8* %125, null, !dbg !2779
  br i1 %127, label %30, label %128, !dbg !2780

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2763, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 8, metadata !2763, metadata !DIExpression()), !dbg !2773
  %129 = load i8*, i8** %10, align 8, !dbg !2774
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2774
  store i8* %130, i8** %10, align 8, !dbg !2774
  %131 = bitcast i8* %129 to i8**, !dbg !2774
  %132 = load i8*, i8** %131, align 8, !dbg !2774
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2777
  store i8* %132, i8** %133, align 16, !dbg !2778, !tbaa !636
  %134 = icmp eq i8* %132, null, !dbg !2779
  br i1 %134, label %30, label %135, !dbg !2780

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2763, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.value(metadata i64 9, metadata !2763, metadata !DIExpression()), !dbg !2773
  %136 = load i8*, i8** %10, align 8, !dbg !2774
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2774
  store i8* %137, i8** %10, align 8, !dbg !2774
  %138 = bitcast i8* %136 to i8**, !dbg !2774
  %139 = load i8*, i8** %138, align 8, !dbg !2774
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2777
  store i8* %139, i8** %140, align 8, !dbg !2778, !tbaa !636
  %141 = icmp eq i8* %139, null, !dbg !2779
  %142 = select i1 %141, i64 9, i64 10, !dbg !2780
  br label %30, !dbg !2780
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2784 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2788, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8* %1, metadata !2789, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i8* %2, metadata !2790, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i8* %3, metadata !2791, metadata !DIExpression()), !dbg !2800
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2801
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2801
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2792, metadata !DIExpression()), !dbg !2802
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2803
  call void @llvm.va_start(i8* nonnull %6), !dbg !2803
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2804
  call void @llvm.va_end(i8* nonnull %6), !dbg !2805
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2806
  ret void, !dbg !2806
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2807 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.89, i64 0, i64 0), i32 5) #10, !dbg !2808
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.90, i64 0, i64 0)) #10, !dbg !2808
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.91, i64 0, i64 0), i32 5) #10, !dbg !2809
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.92, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.93, i64 0, i64 0)) #10, !dbg !2809
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.94, i64 0, i64 0), i32 5) #10, !dbg !2810
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2810, !tbaa !636
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2810
  ret void, !dbg !2811
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2812 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2816, metadata !DIExpression()), !dbg !2818
  call void @llvm.dbg.value(metadata i64 %1, metadata !2817, metadata !DIExpression()), !dbg !2819
  %3 = udiv i64 9223372036854775807, %1, !dbg !2820
  %4 = icmp ult i64 %3, %0, !dbg !2820
  br i1 %4, label %5, label %6, !dbg !2822

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2823
  unreachable, !dbg !2823

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2824
  call void @llvm.dbg.value(metadata i64 %7, metadata !2825, metadata !DIExpression()) #10, !dbg !2832
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2834
  call void @llvm.dbg.value(metadata i8* %8, metadata !2831, metadata !DIExpression()) #10, !dbg !2835
  %9 = icmp eq i8* %8, null, !dbg !2836
  %10 = icmp ne i64 %7, 0, !dbg !2838
  %11 = and i1 %10, %9, !dbg !2839
  br i1 %11, label %12, label %13, !dbg !2839

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2840
  unreachable, !dbg !2840

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2841
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2826 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2825, metadata !DIExpression()), !dbg !2842
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2843
  call void @llvm.dbg.value(metadata i8* %2, metadata !2831, metadata !DIExpression()), !dbg !2844
  %3 = icmp eq i8* %2, null, !dbg !2845
  %4 = icmp ne i64 %0, 0, !dbg !2846
  %5 = and i1 %4, %3, !dbg !2847
  br i1 %5, label %6, label %7, !dbg !2847

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2848
  unreachable, !dbg !2848

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2849
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2850 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2854, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i64 %1, metadata !2855, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i64 %2, metadata !2856, metadata !DIExpression()), !dbg !2859
  %4 = udiv i64 9223372036854775807, %2, !dbg !2860
  %5 = icmp ult i64 %4, %1, !dbg !2860
  br i1 %5, label %6, label %7, !dbg !2862

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2863
  unreachable, !dbg !2863

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2864
  call void @llvm.dbg.value(metadata i8* %0, metadata !2865, metadata !DIExpression()) #10, !dbg !2871
  call void @llvm.dbg.value(metadata i64 %8, metadata !2870, metadata !DIExpression()) #10, !dbg !2873
  %9 = icmp eq i64 %8, 0, !dbg !2874
  %10 = icmp ne i8* %0, null, !dbg !2876
  %11 = and i1 %10, %9, !dbg !2877
  br i1 %11, label %12, label %13, !dbg !2877

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2878
  br label %19, !dbg !2880

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2881
  call void @llvm.dbg.value(metadata i8* %14, metadata !2865, metadata !DIExpression()) #10, !dbg !2871
  %15 = icmp eq i8* %14, null, !dbg !2882
  %16 = icmp ne i64 %8, 0, !dbg !2884
  %17 = and i1 %16, %15, !dbg !2885
  br i1 %17, label %18, label %19, !dbg !2885

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2886
  unreachable, !dbg !2886

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2887
  ret i8* %20, !dbg !2888
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !2866 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2865, metadata !DIExpression()), !dbg !2889
  call void @llvm.dbg.value(metadata i64 %1, metadata !2870, metadata !DIExpression()), !dbg !2890
  %3 = icmp eq i64 %1, 0, !dbg !2891
  %4 = icmp ne i8* %0, null, !dbg !2892
  %5 = and i1 %4, %3, !dbg !2893
  br i1 %5, label %6, label %7, !dbg !2893

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2894
  br label %13, !dbg !2895

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2896
  call void @llvm.dbg.value(metadata i8* %8, metadata !2865, metadata !DIExpression()), !dbg !2889
  %9 = icmp eq i8* %8, null, !dbg !2897
  %10 = icmp ne i64 %1, 0, !dbg !2898
  %11 = and i1 %10, %9, !dbg !2899
  br i1 %11, label %12, label %13, !dbg !2899

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2900
  unreachable, !dbg !2900

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2901
  ret i8* %14, !dbg !2902
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !179 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !184, metadata !DIExpression()), !dbg !2903
  call void @llvm.dbg.value(metadata i64* %1, metadata !185, metadata !DIExpression()), !dbg !2904
  call void @llvm.dbg.value(metadata i64 %2, metadata !186, metadata !DIExpression()), !dbg !2905
  %4 = load i64, i64* %1, align 8, !dbg !2906, !tbaa !1947
  call void @llvm.dbg.value(metadata i64 %4, metadata !187, metadata !DIExpression()), !dbg !2907
  %5 = icmp eq i8* %0, null, !dbg !2908
  br i1 %5, label %6, label %20, !dbg !2910

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2911
  br i1 %7, label %8, label %13, !dbg !2914

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2915
  call void @llvm.dbg.value(metadata i64 %9, metadata !187, metadata !DIExpression()), !dbg !2907
  %10 = icmp ugt i64 %2, 128, !dbg !2917
  %11 = zext i1 %10 to i64, !dbg !2917
  %12 = add nuw nsw i64 %9, %11, !dbg !2918
  call void @llvm.dbg.value(metadata i64 %12, metadata !187, metadata !DIExpression()), !dbg !2907
  br label %13, !dbg !2919

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2920
  call void @llvm.dbg.value(metadata i64 %14, metadata !187, metadata !DIExpression()), !dbg !2907
  %15 = udiv i64 9223372036854775807, %2, !dbg !2921
  %16 = icmp ult i64 %15, %14, !dbg !2921
  br i1 %16, label %19, label %17, !dbg !2923

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !187, metadata !DIExpression()), !dbg !2907
  store i64 %14, i64* %1, align 8, !dbg !2924, !tbaa !1947
  %18 = mul i64 %14, %2, !dbg !2925
  call void @llvm.dbg.value(metadata i8* %0, metadata !2865, metadata !DIExpression()) #10, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %28, metadata !2870, metadata !DIExpression()) #10, !dbg !2928
  br label %31, !dbg !2929

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2930
  unreachable, !dbg !2930

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2931
  %22 = icmp ugt i64 %21, %4, !dbg !2934
  br i1 %22, label %24, label %23, !dbg !2935

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !2936
  unreachable, !dbg !2936

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2937
  %26 = add i64 %4, 1, !dbg !2938
  %27 = add i64 %26, %25, !dbg !2939
  call void @llvm.dbg.value(metadata i64 %27, metadata !187, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.value(metadata i64 %27, metadata !187, metadata !DIExpression()), !dbg !2907
  store i64 %27, i64* %1, align 8, !dbg !2924, !tbaa !1947
  %28 = mul i64 %27, %2, !dbg !2925
  call void @llvm.dbg.value(metadata i8* %0, metadata !2865, metadata !DIExpression()) #10, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %28, metadata !2870, metadata !DIExpression()) #10, !dbg !2928
  %29 = icmp eq i64 %28, 0, !dbg !2940
  br i1 %29, label %30, label %31, !dbg !2929

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !2941
  br label %38, !dbg !2942

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !2943
  call void @llvm.dbg.value(metadata i8* %33, metadata !2865, metadata !DIExpression()) #10, !dbg !2926
  %34 = icmp eq i8* %33, null, !dbg !2944
  %35 = icmp ne i64 %32, 0, !dbg !2945
  %36 = and i1 %35, %34, !dbg !2946
  br i1 %36, label %37, label %38, !dbg !2946

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !2947
  unreachable, !dbg !2947

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2948
  ret i8* %39, !dbg !2949
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2950 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2952, metadata !DIExpression()), !dbg !2953
  call void @llvm.dbg.value(metadata i64 %0, metadata !2825, metadata !DIExpression()) #10, !dbg !2954
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2956
  call void @llvm.dbg.value(metadata i8* %2, metadata !2831, metadata !DIExpression()) #10, !dbg !2957
  %3 = icmp eq i8* %2, null, !dbg !2958
  %4 = icmp ne i64 %0, 0, !dbg !2959
  %5 = and i1 %4, %3, !dbg !2960
  br i1 %5, label %6, label %7, !dbg !2960

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2961
  unreachable, !dbg !2961

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2962
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !2963 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2967, metadata !DIExpression()), !dbg !2969
  call void @llvm.dbg.value(metadata i64* %1, metadata !2968, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8* %0, metadata !184, metadata !DIExpression()) #10, !dbg !2971
  call void @llvm.dbg.value(metadata i64* %1, metadata !185, metadata !DIExpression()) #10, !dbg !2973
  call void @llvm.dbg.value(metadata i64 1, metadata !186, metadata !DIExpression()) #10, !dbg !2974
  %3 = load i64, i64* %1, align 8, !dbg !2975, !tbaa !1947
  call void @llvm.dbg.value(metadata i64 %3, metadata !187, metadata !DIExpression()) #10, !dbg !2976
  %4 = icmp eq i8* %0, null, !dbg !2977
  br i1 %4, label %5, label %12, !dbg !2978

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2979
  br i1 %6, label %9, label %7, !dbg !2980

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !187, metadata !DIExpression()) #10, !dbg !2976
  %8 = icmp slt i64 %3, 0, !dbg !2981
  br i1 %8, label %11, label %9, !dbg !2982

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !187, metadata !DIExpression()) #10, !dbg !2976
  store i64 %10, i64* %1, align 8, !dbg !2983, !tbaa !1947
  call void @llvm.dbg.value(metadata i8* %0, metadata !2865, metadata !DIExpression()) #10, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %18, metadata !2870, metadata !DIExpression()) #10, !dbg !2986
  br label %21, !dbg !2987

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2988
  unreachable, !dbg !2988

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !2989
  br i1 %13, label %15, label %14, !dbg !2990

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !2991
  unreachable, !dbg !2991

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !2992
  %17 = add i64 %3, 1, !dbg !2993
  %18 = add i64 %17, %16, !dbg !2994
  call void @llvm.dbg.value(metadata i64 %18, metadata !187, metadata !DIExpression()) #10, !dbg !2976
  call void @llvm.dbg.value(metadata i64 %18, metadata !187, metadata !DIExpression()) #10, !dbg !2976
  store i64 %18, i64* %1, align 8, !dbg !2983, !tbaa !1947
  call void @llvm.dbg.value(metadata i8* %0, metadata !2865, metadata !DIExpression()) #10, !dbg !2984
  call void @llvm.dbg.value(metadata i64 %18, metadata !2870, metadata !DIExpression()) #10, !dbg !2986
  %19 = icmp eq i64 %18, 0, !dbg !2995
  br i1 %19, label %20, label %21, !dbg !2987

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !2996
  br label %28, !dbg !2997

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !2998
  call void @llvm.dbg.value(metadata i8* %23, metadata !2865, metadata !DIExpression()) #10, !dbg !2984
  %24 = icmp eq i8* %23, null, !dbg !2999
  %25 = icmp ne i64 %22, 0, !dbg !3000
  %26 = and i1 %25, %24, !dbg !3001
  br i1 %26, label %27, label %28, !dbg !3001

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3002
  unreachable, !dbg !3002

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3003
  ret i8* %29, !dbg !3004
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3005 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3007, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %0, metadata !2825, metadata !DIExpression()) #10, !dbg !3009
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3011
  call void @llvm.dbg.value(metadata i8* %2, metadata !2831, metadata !DIExpression()) #10, !dbg !3012
  %3 = icmp eq i8* %2, null, !dbg !3013
  %4 = icmp ne i64 %0, 0, !dbg !3014
  %5 = and i1 %4, %3, !dbg !3015
  br i1 %5, label %6, label %7, !dbg !3015

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3016
  unreachable, !dbg !3016

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3017
  ret i8* %2, !dbg !3018
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3019 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3021, metadata !DIExpression()), !dbg !3024
  call void @llvm.dbg.value(metadata i64 %1, metadata !3022, metadata !DIExpression()), !dbg !3025
  %3 = udiv i64 9223372036854775807, %1, !dbg !3026
  %4 = icmp ult i64 %3, %0, !dbg !3026
  br i1 %4, label %8, label %5, !dbg !3028

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3029
  call void @llvm.dbg.value(metadata i8* %6, metadata !3023, metadata !DIExpression()), !dbg !3030
  %7 = icmp eq i8* %6, null, !dbg !3031
  br i1 %7, label %8, label %9, !dbg !3032

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3033
  unreachable, !dbg !3033

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3034
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3035 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3041, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.value(metadata i64 %1, metadata !3042, metadata !DIExpression()), !dbg !3044
  call void @llvm.dbg.value(metadata i64 %1, metadata !2825, metadata !DIExpression()) #10, !dbg !3045
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %3, metadata !2831, metadata !DIExpression()) #10, !dbg !3048
  %4 = icmp eq i8* %3, null, !dbg !3049
  %5 = icmp ne i64 %1, 0, !dbg !3050
  %6 = and i1 %5, %4, !dbg !3051
  br i1 %6, label %7, label %8, !dbg !3051

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3052
  unreachable, !dbg !3052

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3053
  ret i8* %3, !dbg !3054
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3055 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3057, metadata !DIExpression()), !dbg !3058
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3059
  %3 = add i64 %2, 1, !dbg !3060
  call void @llvm.dbg.value(metadata i8* %0, metadata !3041, metadata !DIExpression()) #10, !dbg !3061
  call void @llvm.dbg.value(metadata i64 %3, metadata !3042, metadata !DIExpression()) #10, !dbg !3063
  call void @llvm.dbg.value(metadata i64 %3, metadata !2825, metadata !DIExpression()) #10, !dbg !3064
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3066
  call void @llvm.dbg.value(metadata i8* %4, metadata !2831, metadata !DIExpression()) #10, !dbg !3067
  %5 = icmp eq i8* %4, null, !dbg !3068
  %6 = icmp ne i64 %3, 0, !dbg !3069
  %7 = and i1 %6, %5, !dbg !3070
  br i1 %7, label %8, label %9, !dbg !3070

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3071
  unreachable, !dbg !3071

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3072
  ret i8* %4, !dbg !3073
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3074 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3076, !tbaa !703
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.105, i64 0, i64 0), i32 5) #10, !dbg !3077
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.106, i64 0, i64 0), i8* %2) #10, !dbg !3078
  tail call void @abort() #15, !dbg !3079
  unreachable, !dbg !3079
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3080 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3083, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i64 %1, metadata !3084, metadata !DIExpression()), !dbg !3090
  %3 = icmp eq i64 %0, 0, !dbg !3091
  %4 = icmp eq i64 %1, 0, !dbg !3092
  %5 = or i1 %3, %4, !dbg !3093
  br i1 %5, label %12, label %6, !dbg !3093

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3094
  call void @llvm.dbg.value(metadata i64 %7, metadata !3086, metadata !DIExpression()), !dbg !3095
  %8 = udiv i64 %7, %1, !dbg !3096
  %9 = icmp eq i64 %8, %0, !dbg !3098
  br i1 %9, label %12, label %10, !dbg !3099

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3100
  store i32 12, i32* %11, align 4, !dbg !3102, !tbaa !703
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3083, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.value(metadata i64 %13, metadata !3084, metadata !DIExpression()), !dbg !3090
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3103
  call void @llvm.dbg.value(metadata i8* %15, metadata !3085, metadata !DIExpression()), !dbg !3104
  br label %16, !dbg !3105

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3106
  ret i8* %17, !dbg !3107
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3108 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3125, metadata !DIExpression()), !dbg !3134
  call void @llvm.dbg.value(metadata i8* %1, metadata !3126, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.value(metadata i64 %2, metadata !3127, metadata !DIExpression()), !dbg !3136
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3128, metadata !DIExpression()), !dbg !3137
  %6 = bitcast i32* %5 to i8*, !dbg !3138
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3138
  %7 = icmp eq i32* %0, null, !dbg !3139
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3141
  call void @llvm.dbg.value(metadata i32* %8, metadata !3125, metadata !DIExpression()), !dbg !3134
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3142
  call void @llvm.dbg.value(metadata i64 %9, metadata !3129, metadata !DIExpression()), !dbg !3143
  %10 = icmp ugt i64 %9, -3, !dbg !3144
  %11 = icmp ne i64 %2, 0, !dbg !3145
  %12 = and i1 %11, %10, !dbg !3146
  br i1 %12, label %13, label %18, !dbg !3146

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3147
  br i1 %14, label %18, label %15, !dbg !3148

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3149, !tbaa !1124
  call void @llvm.dbg.value(metadata i8 %16, metadata !3131, metadata !DIExpression()), !dbg !3150
  %17 = zext i8 %16 to i32, !dbg !3151
  store i32 %17, i32* %8, align 4, !dbg !3152, !tbaa !703
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3154
  ret i64 %19, !dbg !3154
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3155 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3194, metadata !DIExpression()), !dbg !3199
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3200
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3201, metadata !DIExpression()), !dbg !3205
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3207
  %4 = load i32, i32* %3, align 8, !dbg !3207, !tbaa !3208
  %5 = and i32 %4, 32, !dbg !3207
  %6 = icmp eq i32 %5, 0, !dbg !3210
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3211
  %8 = icmp ne i32 %7, 0, !dbg !3212
  br i1 %6, label %9, label %19, !dbg !3213

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3215
  %11 = xor i1 %8, true, !dbg !3216
  %12 = or i1 %10, %11, !dbg !3216
  %13 = sext i1 %8 to i32, !dbg !3216
  br i1 %12, label %22, label %14, !dbg !3216

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3217
  %16 = load i32, i32* %15, align 4, !dbg !3217, !tbaa !703
  %17 = icmp ne i32 %16, 9, !dbg !3218
  %18 = sext i1 %17 to i32, !dbg !3219
  br label %22, !dbg !3219

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3220

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3222
  store i32 0, i32* %21, align 4, !dbg !3224, !tbaa !703
  br label %22, !dbg !3222

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3225
  ret i32 %23, !dbg !3226
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3227 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3232, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.value(metadata i8 1, metadata !3233, metadata !DIExpression()), !dbg !3236
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3237
  call void @llvm.dbg.value(metadata i8* %2, metadata !3234, metadata !DIExpression()), !dbg !3238
  %3 = icmp eq i8* %2, null, !dbg !3239
  br i1 %3, label %11, label %4, !dbg !3241

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.115, i64 0, i64 0)) #14, !dbg !3242
  %6 = icmp eq i32 %5, 0, !dbg !3247
  br i1 %6, label %10, label %7, !dbg !3248

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i64 0, i64 0)) #14, !dbg !3249
  %9 = icmp eq i32 %8, 0, !dbg !3250
  br i1 %9, label %10, label %11, !dbg !3251

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3233, metadata !DIExpression()), !dbg !3236
  br label %11, !dbg !3252

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3253
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3254 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3260
  call void @llvm.dbg.value(metadata i8* %1, metadata !3259, metadata !DIExpression()), !dbg !3261
  %2 = icmp eq i8* %1, null, !dbg !3262
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.119, i64 0, i64 0), i8* %1, !dbg !3264
  call void @llvm.dbg.value(metadata i8* %3, metadata !3259, metadata !DIExpression()), !dbg !3261
  %4 = load i8, i8* %3, align 1, !dbg !3265, !tbaa !1124
  %5 = icmp eq i8 %4, 0, !dbg !3269
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.120, i64 0, i64 0), i8* %3, !dbg !3270
  call void @llvm.dbg.value(metadata i8* %6, metadata !3259, metadata !DIExpression()), !dbg !3261
  ret i8* %6, !dbg !3271
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3272 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3311, metadata !DIExpression()), !dbg !3315
  call void @llvm.dbg.value(metadata i32 0, metadata !3312, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32 0, metadata !3314, metadata !DIExpression()), !dbg !3317
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3318
  call void @llvm.dbg.value(metadata i32 %2, metadata !3313, metadata !DIExpression()), !dbg !3319
  %3 = icmp slt i32 %2, 0, !dbg !3320
  br i1 %3, label %4, label %6, !dbg !3322

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3323
  br label %24, !dbg !3324

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3325
  %8 = icmp eq i32 %7, 0, !dbg !3325
  br i1 %8, label %13, label %9, !dbg !3327

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3328
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3329
  %12 = icmp eq i64 %11, -1, !dbg !3330
  br i1 %12, label %16, label %13, !dbg !3331

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3332
  %15 = icmp eq i32 %14, 0, !dbg !3332
  br i1 %15, label %16, label %18, !dbg !3333

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3312, metadata !DIExpression()), !dbg !3316
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3334
  call void @llvm.dbg.value(metadata i32 %21, metadata !3314, metadata !DIExpression()), !dbg !3317
  br label %24, !dbg !3335

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3336
  %20 = load i32, i32* %19, align 4, !dbg !3336, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %20, metadata !3312, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata i32 %20, metadata !3312, metadata !DIExpression()), !dbg !3316
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3334
  call void @llvm.dbg.value(metadata i32 %21, metadata !3314, metadata !DIExpression()), !dbg !3317
  %22 = icmp eq i32 %20, 0, !dbg !3337
  br i1 %22, label %24, label %23, !dbg !3335

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3339, !tbaa !703
  call void @llvm.dbg.value(metadata i32 -1, metadata !3314, metadata !DIExpression()), !dbg !3317
  br label %24, !dbg !3341

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3342
  ret i32 %25, !dbg !3343
}

; Function Attrs: nounwind
declare i32 @fileno(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fclose(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__freading(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i64 @lseek(i32, i64, i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3344 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3383, metadata !DIExpression()), !dbg !3384
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3385
  br i1 %2, label %6, label %3, !dbg !3387

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3388
  %5 = icmp eq i32 %4, 0, !dbg !3388
  br i1 %5, label %6, label %8, !dbg !3389

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3390
  br label %17, !dbg !3391

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3392, metadata !DIExpression()) #10, !dbg !3397
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3399
  %10 = load i32, i32* %9, align 8, !dbg !3399, !tbaa !3208
  %11 = and i32 %10, 256, !dbg !3401
  %12 = icmp eq i32 %11, 0, !dbg !3401
  br i1 %12, label %15, label %13, !dbg !3402

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3403
  br label %15, !dbg !3403

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3404
  br label %17, !dbg !3405

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3406
  ret i32 %18, !dbg !3407
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3408 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3448, metadata !DIExpression()), !dbg !3454
  call void @llvm.dbg.value(metadata i64 %1, metadata !3449, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.value(metadata i32 %2, metadata !3450, metadata !DIExpression()), !dbg !3456
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3457
  %5 = load i8*, i8** %4, align 8, !dbg !3457, !tbaa !3458
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3459
  %7 = load i8*, i8** %6, align 8, !dbg !3459, !tbaa !3460
  %8 = icmp eq i8* %5, %7, !dbg !3461
  br i1 %8, label %9, label %28, !dbg !3462

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3463
  %11 = load i8*, i8** %10, align 8, !dbg !3463, !tbaa !3464
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3465
  %13 = load i8*, i8** %12, align 8, !dbg !3465, !tbaa !3466
  %14 = icmp eq i8* %11, %13, !dbg !3467
  br i1 %14, label %15, label %28, !dbg !3468

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3469
  %17 = load i8*, i8** %16, align 8, !dbg !3469, !tbaa !3470
  %18 = icmp eq i8* %17, null, !dbg !3471
  br i1 %18, label %19, label %28, !dbg !3472

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3473
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3474
  call void @llvm.dbg.value(metadata i64 %21, metadata !3451, metadata !DIExpression()), !dbg !3475
  %22 = icmp eq i64 %21, -1, !dbg !3476
  br i1 %22, label %30, label %23, !dbg !3478

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3479
  %25 = load i32, i32* %24, align 8, !dbg !3480, !tbaa !3208
  %26 = and i32 %25, -17, !dbg !3480
  store i32 %26, i32* %24, align 8, !dbg !3480, !tbaa !3208
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3481
  store i64 %21, i64* %27, align 8, !dbg !3482, !tbaa !3483
  br label %30, !dbg !3484

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3485
  br label %30, !dbg !3486

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3487
  ret i32 %31, !dbg !3488
}

; Function Attrs: nounwind
declare i32 @fseeko(%struct._IO_FILE* nocapture, i64, i32) local_unnamed_addr #2

attributes #0 = { noreturn nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { nounwind }
attributes #11 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #12 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !41, !47, !56, !63, !79, !87, !166, !159, !174, !191, !193, !195, !198, !200, !202, !591, !593, !595}
!llvm.ident = !{!597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597, !597}
!llvm.module.flags = !{!598, !599, !600, !601, !602}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 39, type: !26, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !20, globals: !25)
!3 = !DIFile(filename: "src/unlink.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !6, line: 32, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19}
!9 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!20 = !{!21, !24}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!25 = !{!0}
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 256, elements: !37)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !29, line: 50, size: 256, elements: !30)
!29 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!30 = !{!31, !32, !34, !36}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !28, file: !29, line: 52, baseType: !21, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !28, file: !29, line: 55, baseType: !33, size: 32, offset: 64)
!33 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !28, file: !29, line: 56, baseType: !35, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !28, file: !29, line: 57, baseType: !33, size: 32, offset: 192)
!37 = !{!38}
!38 = !DISubrange(count: 1)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "Version", scope: !41, file: !42, line: 2, type: !21, isLocal: false, isDefinition: true)
!41 = distinct !DICompileUnit(language: DW_LANG_C99, file: !42, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !43, globals: !44)
!42 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!43 = !{}
!44 = !{!39}
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "file_name", scope: !47, file: !52, line: 46, type: !21, isLocal: true, isDefinition: true)
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !43, globals: !49)
!48 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!49 = !{!45, !50}
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !47, file: !52, line: 56, type: !53, isLocal: true, isDefinition: true)
!52 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!53 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!54 = !DIGlobalVariableExpression(var: !55, expr: !DIExpression())
!55 = distinct !DIGlobalVariable(name: "exit_failure", scope: !56, file: !59, line: 24, type: !60, isLocal: false, isDefinition: true)
!56 = distinct !DICompileUnit(language: DW_LANG_C99, file: !57, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !43, globals: !58)
!57 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!58 = !{!54}
!59 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!60 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "long_options", scope: !63, file: !66, line: 33, type: !67, isLocal: true, isDefinition: true)
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !43, globals: !65)
!64 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!65 = !{!61}
!66 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !68, size: 768, elements: !75)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !29, line: 50, size: 256, elements: !70)
!70 = !{!71, !72, !73, !74}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !69, file: !29, line: 52, baseType: !21, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !69, file: !29, line: 55, baseType: !33, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !69, file: !29, line: 56, baseType: !35, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !69, file: !29, line: 57, baseType: !33, size: 32, offset: 192)
!75 = !{!76}
!76 = !DISubrange(count: 3)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(name: "program_name", scope: !79, file: !84, line: 33, type: !21, isLocal: false, isDefinition: true)
!79 = distinct !DICompileUnit(language: DW_LANG_C99, file: !80, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !43, retainedTypes: !81, globals: !83)
!80 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!81 = !{!24, !82}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!83 = !{!77}
!84 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !87, file: !118, line: 85, type: !153, isLocal: false, isDefinition: true)
!87 = distinct !DICompileUnit(language: DW_LANG_C99, file: !88, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !89, retainedTypes: !110, globals: !115)
!88 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!89 = !{!5, !90, !95}
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!93 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!94 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 46, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!98 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!99 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!100 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!101 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!102 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!103 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!104 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!105 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!106 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!107 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!108 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!109 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!110 = !{!33, !111, !112, !82}
!111 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 62, baseType: !114)
!113 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!114 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!115 = !{!85, !116, !123, !135, !137, !142, !149, !151}
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !87, file: !118, line: 101, type: !119, isLocal: false, isDefinition: true)
!118 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 320, elements: !121)
!120 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!121 = !{!122}
!122 = !DISubrange(count: 10)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !87, file: !118, line: 1052, type: !125, isLocal: false, isDefinition: true)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !118, line: 65, size: 448, elements: !126)
!126 = !{!127, !128, !129, !133, !134}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !125, file: !118, line: 68, baseType: !5, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !125, file: !118, line: 71, baseType: !33, size: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !125, file: !118, line: 75, baseType: !130, size: 256, offset: 64)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 8)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !125, file: !118, line: 78, baseType: !21, size: 64, offset: 320)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !125, file: !118, line: 81, baseType: !21, size: 64, offset: 384)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !87, file: !118, line: 116, type: !125, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "slot0", scope: !87, file: !118, line: 842, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 2048, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 256)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "slotvec", scope: !87, file: !118, line: 845, type: !144, isLocal: true, isDefinition: true)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !118, line: 834, size: 128, elements: !146)
!146 = !{!147, !148}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !145, file: !118, line: 836, baseType: !112, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !145, file: !118, line: 837, baseType: !82, size: 64, offset: 64)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(name: "nslots", scope: !87, file: !118, line: 843, type: !33, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "slotvec0", scope: !87, file: !118, line: 844, type: !145, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 704, elements: !155)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!155 = !{!156}
!156 = !DISubrange(count: 11)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !159, file: !162, line: 26, type: !163, isLocal: false, isDefinition: true)
!159 = distinct !DICompileUnit(language: DW_LANG_C99, file: !160, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !43, globals: !161)
!160 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!161 = !{!157}
!162 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 376, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 47)
!166 = distinct !DICompileUnit(language: DW_LANG_C99, file: !167, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !168, retainedTypes: !173)
!167 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!168 = !{!169}
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !170, line: 41, baseType: !7, size: 32, elements: !171)
!170 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!171 = !{!172}
!172 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!173 = !{!24}
!174 = distinct !DICompileUnit(language: DW_LANG_C99, file: !175, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !176, retainedTypes: !190)
!175 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!176 = !{!177}
!177 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !179, file: !178, line: 186, baseType: !7, size: 32, elements: !188)
!178 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!179 = distinct !DISubprogram(name: "x2nrealloc", scope: !178, file: !178, line: 174, type: !180, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !183)
!180 = !DISubroutineType(types: !181)
!181 = !{!24, !24, !182, !112}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!183 = !{!184, !185, !186, !187}
!184 = !DILocalVariable(name: "p", arg: 1, scope: !179, file: !178, line: 174, type: !24)
!185 = !DILocalVariable(name: "pn", arg: 2, scope: !179, file: !178, line: 174, type: !182)
!186 = !DILocalVariable(name: "s", arg: 3, scope: !179, file: !178, line: 174, type: !112)
!187 = !DILocalVariable(name: "n", scope: !179, file: !178, line: 176, type: !112)
!188 = !{!189}
!189 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!190 = !{!112, !82, !24}
!191 = distinct !DICompileUnit(language: DW_LANG_C99, file: !192, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !43)
!192 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!193 = distinct !DICompileUnit(language: DW_LANG_C99, file: !194, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !43, retainedTypes: !173)
!194 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!195 = distinct !DICompileUnit(language: DW_LANG_C99, file: !196, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !43, retainedTypes: !197)
!196 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!197 = !{!112}
!198 = distinct !DICompileUnit(language: DW_LANG_C99, file: !199, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !43)
!199 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!200 = distinct !DICompileUnit(language: DW_LANG_C99, file: !201, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !43)
!201 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!202 = distinct !DICompileUnit(language: DW_LANG_C99, file: !203, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !204, retainedTypes: !173)
!203 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!204 = !{!205}
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !206, line: 41, baseType: !7, size: 32, elements: !207)
!206 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!207 = !{!208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590}
!208 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!209 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!210 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!211 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!212 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!213 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!214 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!215 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!216 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!217 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!218 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!219 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!220 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!221 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!222 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!223 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!224 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!225 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!226 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!227 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!228 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!229 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!230 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!231 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!232 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!233 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!234 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!235 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!236 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!237 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!238 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!239 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!240 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!241 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!242 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!243 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!244 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!245 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!246 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!247 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!248 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!249 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!250 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!251 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!252 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!253 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!254 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!255 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!256 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!257 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!316 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!319 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!320 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!321 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!322 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!323 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!324 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!325 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!326 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!327 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!328 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!329 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!330 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!403 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!476 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!477 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!478 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!479 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!480 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!481 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!482 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!483 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!484 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!485 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!486 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!487 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!488 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!489 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!490 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!492 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!493 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!494 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!495 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!496 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!497 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!523 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!524 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!525 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!526 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!527 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!532 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!533 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!534 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!535 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!591 = distinct !DICompileUnit(language: DW_LANG_C99, file: !592, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !43)
!592 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!593 = distinct !DICompileUnit(language: DW_LANG_C99, file: !594, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !43, retainedTypes: !173)
!594 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!595 = distinct !DICompileUnit(language: DW_LANG_C99, file: !596, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !43, retainedTypes: !173)
!596 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!597 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!598 = !{i32 2, !"Dwarf Version", i32 4}
!599 = !{i32 2, !"Debug Info Version", i32 3}
!600 = !{i32 1, !"wchar_size", i32 4}
!601 = !{i32 7, !"PIC Level", i32 2}
!602 = !{i32 7, !"PIE Level", i32 2}
!603 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 45, type: !604, isLocal: false, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{null, !33}
!606 = !{!607}
!607 = !DILocalVariable(name: "status", arg: 1, scope: !603, file: !3, line: 45, type: !33)
!608 = !DILocalVariable(name: "infomap", scope: !609, file: !610, line: 632, type: !624)
!609 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !610, file: !610, line: 630, type: !611, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !613)
!610 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!611 = !DISubroutineType(types: !612)
!612 = !{null, !21}
!613 = !{!614, !608, !615, !616, !623}
!614 = !DILocalVariable(name: "program", arg: 1, scope: !609, file: !610, line: 630, type: !21)
!615 = !DILocalVariable(name: "node", scope: !609, file: !610, line: 642, type: !21)
!616 = !DILocalVariable(name: "map_prog", scope: !609, file: !610, line: 643, type: !617)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !609, file: !610, line: 632, size: 128, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !619, file: !610, line: 632, baseType: !21, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !619, file: !610, line: 632, baseType: !21, size: 64, offset: 64)
!623 = !DILocalVariable(name: "lc_messages", scope: !609, file: !610, line: 655, type: !21)
!624 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 896, elements: !625)
!625 = !{!626}
!626 = !DISubrange(count: 7)
!627 = !DILocation(line: 632, column: 67, scope: !609, inlinedAt: !628)
!628 = distinct !DILocation(line: 58, column: 7, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !3, line: 50, column: 5)
!630 = distinct !DILexicalBlock(scope: !603, file: !3, line: 47, column: 7)
!631 = !DILocation(line: 45, column: 12, scope: !603)
!632 = !DILocation(line: 47, column: 14, scope: !630)
!633 = !DILocation(line: 47, column: 7, scope: !603)
!634 = !DILocation(line: 48, column: 5, scope: !635)
!635 = distinct !DILexicalBlock(scope: !630, file: !3, line: 48, column: 5)
!636 = !{!637, !637, i64 0}
!637 = !{!"any pointer", !638, i64 0}
!638 = !{!"omnipotent char", !639, i64 0}
!639 = !{!"Simple C/C++ TBAA"}
!640 = !DILocation(line: 51, column: 7, scope: !629)
!641 = !DILocation(line: 54, column: 7, scope: !629)
!642 = !DILocation(line: 56, column: 7, scope: !629)
!643 = !DILocation(line: 57, column: 7, scope: !629)
!644 = !DILocation(line: 632, column: 3, scope: !609, inlinedAt: !628)
!645 = !DILocation(line: 643, column: 36, scope: !609, inlinedAt: !628)
!646 = !DILocation(line: 643, column: 25, scope: !609, inlinedAt: !628)
!647 = !DILocation(line: 645, column: 33, scope: !609, inlinedAt: !628)
!648 = !DILocation(line: 645, column: 3, scope: !609, inlinedAt: !628)
!649 = !DILocation(line: 646, column: 13, scope: !609, inlinedAt: !628)
!650 = !DILocation(line: 645, column: 20, scope: !609, inlinedAt: !628)
!651 = !{!652, !637, i64 0}
!652 = !{!"infomap", !637, i64 0, !637, i64 8}
!653 = !DILocation(line: 645, column: 10, scope: !609, inlinedAt: !628)
!654 = !DILocation(line: 645, column: 28, scope: !609, inlinedAt: !628)
!655 = distinct !{!655, !656, !657}
!656 = !DILocation(line: 645, column: 3, scope: !609)
!657 = !DILocation(line: 646, column: 13, scope: !609)
!658 = !DILocation(line: 648, column: 17, scope: !659, inlinedAt: !628)
!659 = distinct !DILexicalBlock(scope: !609, file: !610, line: 648, column: 7)
!660 = !{!652, !637, i64 8}
!661 = !DILocation(line: 648, column: 7, scope: !659, inlinedAt: !628)
!662 = !DILocation(line: 648, column: 7, scope: !609, inlinedAt: !628)
!663 = !DILocation(line: 642, column: 15, scope: !609, inlinedAt: !628)
!664 = !DILocation(line: 651, column: 3, scope: !609, inlinedAt: !628)
!665 = !DILocation(line: 655, column: 29, scope: !609, inlinedAt: !628)
!666 = !DILocation(line: 655, column: 15, scope: !609, inlinedAt: !628)
!667 = !DILocation(line: 656, column: 7, scope: !668, inlinedAt: !628)
!668 = distinct !DILexicalBlock(scope: !609, file: !610, line: 656, column: 7)
!669 = !DILocation(line: 656, column: 19, scope: !668, inlinedAt: !628)
!670 = !DILocation(line: 656, column: 22, scope: !668, inlinedAt: !628)
!671 = !DILocation(line: 656, column: 7, scope: !609, inlinedAt: !628)
!672 = !DILocation(line: 662, column: 7, scope: !673, inlinedAt: !628)
!673 = distinct !DILexicalBlock(scope: !668, file: !610, line: 657, column: 5)
!674 = !DILocation(line: 664, column: 5, scope: !673, inlinedAt: !628)
!675 = !DILocation(line: 665, column: 3, scope: !609, inlinedAt: !628)
!676 = !DILocation(line: 667, column: 3, scope: !609, inlinedAt: !628)
!677 = !DILocation(line: 669, column: 1, scope: !609, inlinedAt: !628)
!678 = !DILocation(line: 60, column: 3, scope: !603)
!679 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 64, type: !680, isLocal: false, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !683)
!680 = !DISubroutineType(types: !681)
!681 = !{!33, !33, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!683 = !{!684, !685}
!684 = !DILocalVariable(name: "argc", arg: 1, scope: !679, file: !3, line: 64, type: !33)
!685 = !DILocalVariable(name: "argv", arg: 2, scope: !679, file: !3, line: 64, type: !682)
!686 = !DILocation(line: 64, column: 11, scope: !679)
!687 = !DILocation(line: 64, column: 24, scope: !679)
!688 = !DILocation(line: 67, column: 21, scope: !679)
!689 = !DILocation(line: 67, column: 3, scope: !679)
!690 = !DILocation(line: 68, column: 3, scope: !679)
!691 = !DILocation(line: 69, column: 3, scope: !679)
!692 = !DILocation(line: 70, column: 3, scope: !679)
!693 = !DILocation(line: 72, column: 3, scope: !679)
!694 = !DILocation(line: 74, column: 63, scope: !679)
!695 = !DILocation(line: 74, column: 3, scope: !679)
!696 = !DILocation(line: 76, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !679, file: !3, line: 76, column: 7)
!698 = !DILocation(line: 76, column: 56, scope: !697)
!699 = !DILocation(line: 76, column: 7, scope: !679)
!700 = !DILocation(line: 77, column: 5, scope: !697)
!701 = !DILocation(line: 79, column: 14, scope: !702)
!702 = distinct !DILexicalBlock(scope: !679, file: !3, line: 79, column: 7)
!703 = !{!704, !704, i64 0}
!704 = !{!"int", !638, i64 0}
!705 = !DILocation(line: 79, column: 12, scope: !702)
!706 = !DILocation(line: 79, column: 7, scope: !679)
!707 = !DILocation(line: 81, column: 20, scope: !708)
!708 = distinct !DILexicalBlock(scope: !702, file: !3, line: 80, column: 5)
!709 = !DILocation(line: 81, column: 7, scope: !708)
!710 = !DILocation(line: 82, column: 7, scope: !708)
!711 = !DILocation(line: 79, column: 21, scope: !702)
!712 = !DILocation(line: 85, column: 18, scope: !713)
!713 = distinct !DILexicalBlock(scope: !679, file: !3, line: 85, column: 7)
!714 = !DILocation(line: 85, column: 7, scope: !679)
!715 = !DILocation(line: 87, column: 20, scope: !716)
!716 = distinct !DILexicalBlock(scope: !713, file: !3, line: 86, column: 5)
!717 = !DILocation(line: 87, column: 55, scope: !716)
!718 = !DILocation(line: 87, column: 62, scope: !716)
!719 = !DILocation(line: 87, column: 50, scope: !716)
!720 = !DILocation(line: 87, column: 43, scope: !716)
!721 = !DILocation(line: 87, column: 7, scope: !716)
!722 = !DILocation(line: 88, column: 7, scope: !716)
!723 = !DILocation(line: 91, column: 15, scope: !724)
!724 = distinct !DILexicalBlock(scope: !679, file: !3, line: 91, column: 7)
!725 = !DILocation(line: 91, column: 7, scope: !724)
!726 = !DILocation(line: 91, column: 29, scope: !724)
!727 = !DILocation(line: 91, column: 7, scope: !679)
!728 = !DILocation(line: 92, column: 5, scope: !724)
!729 = !DILocation(line: 94, column: 3, scope: !679)
!730 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !52, file: !52, line: 51, type: !611, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !47, retainedNodes: !731)
!731 = !{!732}
!732 = !DILocalVariable(name: "file", arg: 1, scope: !730, file: !52, line: 51, type: !21)
!733 = !DILocation(line: 51, column: 41, scope: !730)
!734 = !DILocation(line: 53, column: 13, scope: !730)
!735 = !DILocation(line: 54, column: 1, scope: !730)
!736 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !52, file: !52, line: 88, type: !737, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !47, retainedNodes: !739)
!737 = !DISubroutineType(types: !738)
!738 = !{null, !53}
!739 = !{!740}
!740 = !DILocalVariable(name: "ignore", arg: 1, scope: !736, file: !52, line: 88, type: !53)
!741 = !DILocation(line: 88, column: 37, scope: !736)
!742 = !DILocation(line: 90, column: 16, scope: !736)
!743 = !{!744, !744, i64 0}
!744 = !{!"_Bool", !638, i64 0}
!745 = !DILocation(line: 91, column: 1, scope: !736)
!746 = distinct !DISubprogram(name: "close_stdout", scope: !52, file: !52, line: 117, type: !747, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !47, retainedNodes: !749)
!747 = !DISubroutineType(types: !748)
!748 = !{null}
!749 = !{!750}
!750 = !DILocalVariable(name: "write_error", scope: !751, file: !52, line: 122, type: !21)
!751 = distinct !DILexicalBlock(scope: !752, file: !52, line: 121, column: 5)
!752 = distinct !DILexicalBlock(scope: !746, file: !52, line: 119, column: 7)
!753 = !DILocation(line: 119, column: 21, scope: !752)
!754 = !DILocation(line: 119, column: 7, scope: !752)
!755 = !DILocation(line: 119, column: 29, scope: !752)
!756 = !DILocation(line: 120, column: 7, scope: !752)
!757 = !DILocation(line: 120, column: 12, scope: !752)
!758 = !{i8 0, i8 2}
!759 = !DILocation(line: 120, column: 25, scope: !752)
!760 = !DILocation(line: 120, column: 28, scope: !752)
!761 = !DILocation(line: 120, column: 34, scope: !752)
!762 = !DILocation(line: 119, column: 7, scope: !746)
!763 = !DILocation(line: 122, column: 33, scope: !751)
!764 = !DILocation(line: 122, column: 19, scope: !751)
!765 = !DILocation(line: 123, column: 11, scope: !766)
!766 = distinct !DILexicalBlock(scope: !751, file: !52, line: 123, column: 11)
!767 = !DILocation(line: 0, scope: !766)
!768 = !DILocation(line: 123, column: 11, scope: !751)
!769 = !DILocation(line: 124, column: 36, scope: !766)
!770 = !DILocation(line: 124, column: 9, scope: !766)
!771 = !DILocation(line: 127, column: 9, scope: !766)
!772 = !DILocation(line: 129, column: 14, scope: !751)
!773 = !DILocation(line: 129, column: 7, scope: !751)
!774 = !DILocation(line: 134, column: 42, scope: !775)
!775 = distinct !DILexicalBlock(scope: !746, file: !52, line: 134, column: 7)
!776 = !DILocation(line: 134, column: 28, scope: !775)
!777 = !DILocation(line: 134, column: 50, scope: !775)
!778 = !DILocation(line: 134, column: 7, scope: !746)
!779 = !DILocation(line: 135, column: 12, scope: !775)
!780 = !DILocation(line: 135, column: 5, scope: !775)
!781 = !DILocation(line: 136, column: 1, scope: !746)
!782 = distinct !DISubprogram(name: "parse_long_options", scope: !66, file: !66, line: 44, type: !783, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !786)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !33, !682, !21, !21, !21, !785, null}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!786 = !{!787, !788, !789, !790, !791, !792, !793, !794, !795}
!787 = !DILocalVariable(name: "argc", arg: 1, scope: !782, file: !66, line: 44, type: !33)
!788 = !DILocalVariable(name: "argv", arg: 2, scope: !782, file: !66, line: 45, type: !682)
!789 = !DILocalVariable(name: "command_name", arg: 3, scope: !782, file: !66, line: 46, type: !21)
!790 = !DILocalVariable(name: "package", arg: 4, scope: !782, file: !66, line: 47, type: !21)
!791 = !DILocalVariable(name: "version", arg: 5, scope: !782, file: !66, line: 48, type: !21)
!792 = !DILocalVariable(name: "usage_func", arg: 6, scope: !782, file: !66, line: 49, type: !785)
!793 = !DILocalVariable(name: "c", scope: !782, file: !66, line: 52, type: !33)
!794 = !DILocalVariable(name: "saved_opterr", scope: !782, file: !66, line: 53, type: !33)
!795 = !DILocalVariable(name: "authors", scope: !796, file: !66, line: 71, type: !800)
!796 = distinct !DILexicalBlock(scope: !797, file: !66, line: 70, column: 11)
!797 = distinct !DILexicalBlock(scope: !798, file: !66, line: 64, column: 9)
!798 = distinct !DILexicalBlock(scope: !799, file: !66, line: 62, column: 5)
!799 = distinct !DILexicalBlock(scope: !782, file: !66, line: 60, column: 7)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !801, line: 52, baseType: !802)
!801 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !803, line: 48, baseType: !804)
!803 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !64, line: 71, baseType: !805)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !806, size: 192, elements: !37)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !64, line: 71, size: 192, elements: !807)
!807 = !{!808, !809, !810, !811}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !806, file: !64, line: 71, baseType: !7, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !806, file: !64, line: 71, baseType: !7, size: 32, offset: 32)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !806, file: !64, line: 71, baseType: !24, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !806, file: !64, line: 71, baseType: !24, size: 64, offset: 128)
!812 = !DILocation(line: 44, column: 25, scope: !782)
!813 = !DILocation(line: 45, column: 28, scope: !782)
!814 = !DILocation(line: 46, column: 33, scope: !782)
!815 = !DILocation(line: 47, column: 33, scope: !782)
!816 = !DILocation(line: 48, column: 33, scope: !782)
!817 = !DILocation(line: 49, column: 28, scope: !782)
!818 = !DILocation(line: 55, column: 18, scope: !782)
!819 = !DILocation(line: 53, column: 7, scope: !782)
!820 = !DILocation(line: 58, column: 10, scope: !782)
!821 = !DILocation(line: 60, column: 12, scope: !799)
!822 = !DILocation(line: 61, column: 7, scope: !799)
!823 = !DILocation(line: 61, column: 15, scope: !799)
!824 = !DILocation(line: 52, column: 7, scope: !782)
!825 = !DILocation(line: 60, column: 7, scope: !782)
!826 = !DILocation(line: 66, column: 11, scope: !797)
!827 = !DILocation(line: 67, column: 11, scope: !797)
!828 = !DILocation(line: 71, column: 13, scope: !796)
!829 = !DILocation(line: 71, column: 21, scope: !796)
!830 = !DILocation(line: 72, column: 13, scope: !796)
!831 = !DILocation(line: 73, column: 29, scope: !796)
!832 = !DILocation(line: 73, column: 13, scope: !796)
!833 = !DILocation(line: 74, column: 13, scope: !796)
!834 = !DILocation(line: 84, column: 10, scope: !782)
!835 = !DILocation(line: 88, column: 10, scope: !782)
!836 = !DILocation(line: 89, column: 1, scope: !782)
!837 = distinct !DISubprogram(name: "set_program_name", scope: !84, file: !84, line: 39, type: !611, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !79, retainedNodes: !838)
!838 = !{!839, !840, !841}
!839 = !DILocalVariable(name: "argv0", arg: 1, scope: !837, file: !84, line: 39, type: !21)
!840 = !DILocalVariable(name: "slash", scope: !837, file: !84, line: 46, type: !21)
!841 = !DILocalVariable(name: "base", scope: !837, file: !84, line: 47, type: !21)
!842 = !DILocation(line: 39, column: 31, scope: !837)
!843 = !DILocation(line: 51, column: 13, scope: !844)
!844 = distinct !DILexicalBlock(scope: !837, file: !84, line: 51, column: 7)
!845 = !DILocation(line: 51, column: 7, scope: !837)
!846 = !DILocation(line: 55, column: 14, scope: !847)
!847 = distinct !DILexicalBlock(scope: !844, file: !84, line: 52, column: 5)
!848 = !DILocation(line: 54, column: 7, scope: !847)
!849 = !DILocation(line: 56, column: 7, scope: !847)
!850 = !DILocation(line: 59, column: 11, scope: !837)
!851 = !DILocation(line: 46, column: 15, scope: !837)
!852 = !DILocation(line: 60, column: 17, scope: !837)
!853 = !DILocation(line: 60, column: 33, scope: !837)
!854 = !DILocation(line: 60, column: 11, scope: !837)
!855 = !DILocation(line: 47, column: 15, scope: !837)
!856 = !DILocation(line: 61, column: 12, scope: !857)
!857 = distinct !DILexicalBlock(scope: !837, file: !84, line: 61, column: 7)
!858 = !DILocation(line: 61, column: 20, scope: !857)
!859 = !DILocation(line: 61, column: 25, scope: !857)
!860 = !DILocation(line: 61, column: 42, scope: !857)
!861 = !DILocation(line: 61, column: 28, scope: !857)
!862 = !DILocation(line: 61, column: 61, scope: !857)
!863 = !DILocation(line: 61, column: 7, scope: !837)
!864 = !DILocation(line: 64, column: 11, scope: !865)
!865 = distinct !DILexicalBlock(scope: !866, file: !84, line: 64, column: 11)
!866 = distinct !DILexicalBlock(scope: !857, file: !84, line: 62, column: 5)
!867 = !DILocation(line: 64, column: 36, scope: !865)
!868 = !DILocation(line: 64, column: 11, scope: !866)
!869 = !DILocation(line: 66, column: 24, scope: !870)
!870 = distinct !DILexicalBlock(scope: !865, file: !84, line: 65, column: 9)
!871 = !DILocation(line: 70, column: 41, scope: !870)
!872 = !DILocation(line: 72, column: 9, scope: !870)
!873 = !DILocation(line: 84, column: 16, scope: !837)
!874 = !DILocation(line: 90, column: 27, scope: !837)
!875 = !DILocation(line: 92, column: 1, scope: !837)
!876 = distinct !DISubprogram(name: "clone_quoting_options", scope: !118, file: !118, line: 122, type: !877, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !880)
!877 = !DISubroutineType(types: !878)
!878 = !{!879, !879}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!880 = !{!881, !882, !883}
!881 = !DILocalVariable(name: "o", arg: 1, scope: !876, file: !118, line: 122, type: !879)
!882 = !DILocalVariable(name: "e", scope: !876, file: !118, line: 124, type: !33)
!883 = !DILocalVariable(name: "p", scope: !876, file: !118, line: 125, type: !879)
!884 = !DILocation(line: 122, column: 48, scope: !876)
!885 = !DILocation(line: 124, column: 11, scope: !876)
!886 = !DILocation(line: 124, column: 7, scope: !876)
!887 = !DILocation(line: 125, column: 40, scope: !876)
!888 = !DILocation(line: 125, column: 31, scope: !876)
!889 = !DILocation(line: 125, column: 27, scope: !876)
!890 = !DILocation(line: 127, column: 9, scope: !876)
!891 = !DILocation(line: 128, column: 3, scope: !876)
!892 = distinct !DISubprogram(name: "get_quoting_style", scope: !118, file: !118, line: 133, type: !893, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !897)
!893 = !DISubroutineType(types: !894)
!894 = !{!5, !895}
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!897 = !{!898}
!898 = !DILocalVariable(name: "o", arg: 1, scope: !892, file: !118, line: 133, type: !895)
!899 = !DILocation(line: 133, column: 50, scope: !892)
!900 = !DILocation(line: 135, column: 11, scope: !892)
!901 = !DILocation(line: 135, column: 46, scope: !892)
!902 = !{!903, !638, i64 0}
!903 = !{!"quoting_options", !638, i64 0, !704, i64 4, !638, i64 8, !637, i64 40, !637, i64 48}
!904 = !DILocation(line: 135, column: 3, scope: !892)
!905 = distinct !DISubprogram(name: "set_quoting_style", scope: !118, file: !118, line: 141, type: !906, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !908)
!906 = !DISubroutineType(types: !907)
!907 = !{null, !879, !5}
!908 = !{!909, !910}
!909 = !DILocalVariable(name: "o", arg: 1, scope: !905, file: !118, line: 141, type: !879)
!910 = !DILocalVariable(name: "s", arg: 2, scope: !905, file: !118, line: 141, type: !5)
!911 = !DILocation(line: 141, column: 44, scope: !905)
!912 = !DILocation(line: 141, column: 66, scope: !905)
!913 = !DILocation(line: 143, column: 4, scope: !905)
!914 = !DILocation(line: 143, column: 39, scope: !905)
!915 = !DILocation(line: 143, column: 45, scope: !905)
!916 = !DILocation(line: 144, column: 1, scope: !905)
!917 = distinct !DISubprogram(name: "set_char_quoting", scope: !118, file: !118, line: 152, type: !918, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !920)
!918 = !DISubroutineType(types: !919)
!919 = !{!33, !879, !23, !33}
!920 = !{!921, !922, !923, !924, !926, !928, !929}
!921 = !DILocalVariable(name: "o", arg: 1, scope: !917, file: !118, line: 152, type: !879)
!922 = !DILocalVariable(name: "c", arg: 2, scope: !917, file: !118, line: 152, type: !23)
!923 = !DILocalVariable(name: "i", arg: 3, scope: !917, file: !118, line: 152, type: !33)
!924 = !DILocalVariable(name: "uc", scope: !917, file: !118, line: 154, type: !925)
!925 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!926 = !DILocalVariable(name: "p", scope: !917, file: !118, line: 155, type: !927)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!928 = !DILocalVariable(name: "shift", scope: !917, file: !118, line: 157, type: !33)
!929 = !DILocalVariable(name: "r", scope: !917, file: !118, line: 158, type: !33)
!930 = !DILocation(line: 152, column: 43, scope: !917)
!931 = !DILocation(line: 152, column: 51, scope: !917)
!932 = !DILocation(line: 152, column: 58, scope: !917)
!933 = !DILocation(line: 154, column: 17, scope: !917)
!934 = !DILocation(line: 156, column: 6, scope: !917)
!935 = !DILocation(line: 156, column: 62, scope: !917)
!936 = !DILocation(line: 156, column: 57, scope: !917)
!937 = !DILocation(line: 155, column: 17, scope: !917)
!938 = !DILocation(line: 157, column: 15, scope: !917)
!939 = !DILocation(line: 157, column: 7, scope: !917)
!940 = !DILocation(line: 158, column: 12, scope: !917)
!941 = !DILocation(line: 158, column: 15, scope: !917)
!942 = !DILocation(line: 158, column: 25, scope: !917)
!943 = !DILocation(line: 158, column: 7, scope: !917)
!944 = !DILocation(line: 159, column: 13, scope: !917)
!945 = !DILocation(line: 159, column: 18, scope: !917)
!946 = !DILocation(line: 159, column: 23, scope: !917)
!947 = !DILocation(line: 159, column: 6, scope: !917)
!948 = !DILocation(line: 160, column: 3, scope: !917)
!949 = distinct !DISubprogram(name: "set_quoting_flags", scope: !118, file: !118, line: 168, type: !950, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !952)
!950 = !DISubroutineType(types: !951)
!951 = !{!33, !879, !33}
!952 = !{!953, !954, !955}
!953 = !DILocalVariable(name: "o", arg: 1, scope: !949, file: !118, line: 168, type: !879)
!954 = !DILocalVariable(name: "i", arg: 2, scope: !949, file: !118, line: 168, type: !33)
!955 = !DILocalVariable(name: "r", scope: !949, file: !118, line: 170, type: !33)
!956 = !DILocation(line: 168, column: 44, scope: !949)
!957 = !DILocation(line: 168, column: 51, scope: !949)
!958 = !DILocation(line: 171, column: 8, scope: !959)
!959 = distinct !DILexicalBlock(scope: !949, file: !118, line: 171, column: 7)
!960 = !DILocation(line: 171, column: 7, scope: !949)
!961 = !DILocation(line: 173, column: 10, scope: !949)
!962 = !{!903, !704, i64 4}
!963 = !DILocation(line: 170, column: 7, scope: !949)
!964 = !DILocation(line: 174, column: 12, scope: !949)
!965 = !DILocation(line: 175, column: 3, scope: !949)
!966 = distinct !DISubprogram(name: "set_custom_quoting", scope: !118, file: !118, line: 179, type: !967, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !969)
!967 = !DISubroutineType(types: !968)
!968 = !{null, !879, !21, !21}
!969 = !{!970, !971, !972}
!970 = !DILocalVariable(name: "o", arg: 1, scope: !966, file: !118, line: 179, type: !879)
!971 = !DILocalVariable(name: "left_quote", arg: 2, scope: !966, file: !118, line: 180, type: !21)
!972 = !DILocalVariable(name: "right_quote", arg: 3, scope: !966, file: !118, line: 180, type: !21)
!973 = !DILocation(line: 179, column: 45, scope: !966)
!974 = !DILocation(line: 180, column: 33, scope: !966)
!975 = !DILocation(line: 180, column: 57, scope: !966)
!976 = !DILocation(line: 182, column: 8, scope: !977)
!977 = distinct !DILexicalBlock(scope: !966, file: !118, line: 182, column: 7)
!978 = !DILocation(line: 182, column: 7, scope: !966)
!979 = !DILocation(line: 184, column: 6, scope: !966)
!980 = !DILocation(line: 184, column: 12, scope: !966)
!981 = !DILocation(line: 185, column: 8, scope: !982)
!982 = distinct !DILexicalBlock(scope: !966, file: !118, line: 185, column: 7)
!983 = !DILocation(line: 185, column: 23, scope: !982)
!984 = !DILocation(line: 185, column: 19, scope: !982)
!985 = !DILocation(line: 186, column: 5, scope: !982)
!986 = !DILocation(line: 187, column: 6, scope: !966)
!987 = !DILocation(line: 187, column: 17, scope: !966)
!988 = !{!903, !637, i64 40}
!989 = !DILocation(line: 188, column: 6, scope: !966)
!990 = !DILocation(line: 188, column: 18, scope: !966)
!991 = !{!903, !637, i64 48}
!992 = !DILocation(line: 189, column: 1, scope: !966)
!993 = distinct !DISubprogram(name: "quotearg_buffer", scope: !118, file: !118, line: 784, type: !994, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !996)
!994 = !DISubroutineType(types: !995)
!995 = !{!112, !82, !112, !21, !112, !895}
!996 = !{!997, !998, !999, !1000, !1001, !1002, !1003, !1004}
!997 = !DILocalVariable(name: "buffer", arg: 1, scope: !993, file: !118, line: 784, type: !82)
!998 = !DILocalVariable(name: "buffersize", arg: 2, scope: !993, file: !118, line: 784, type: !112)
!999 = !DILocalVariable(name: "arg", arg: 3, scope: !993, file: !118, line: 785, type: !21)
!1000 = !DILocalVariable(name: "argsize", arg: 4, scope: !993, file: !118, line: 785, type: !112)
!1001 = !DILocalVariable(name: "o", arg: 5, scope: !993, file: !118, line: 786, type: !895)
!1002 = !DILocalVariable(name: "p", scope: !993, file: !118, line: 788, type: !895)
!1003 = !DILocalVariable(name: "e", scope: !993, file: !118, line: 789, type: !33)
!1004 = !DILocalVariable(name: "r", scope: !993, file: !118, line: 790, type: !112)
!1005 = !DILocation(line: 784, column: 24, scope: !993)
!1006 = !DILocation(line: 784, column: 39, scope: !993)
!1007 = !DILocation(line: 785, column: 30, scope: !993)
!1008 = !DILocation(line: 785, column: 42, scope: !993)
!1009 = !DILocation(line: 786, column: 48, scope: !993)
!1010 = !DILocation(line: 788, column: 37, scope: !993)
!1011 = !DILocation(line: 788, column: 33, scope: !993)
!1012 = !DILocation(line: 789, column: 11, scope: !993)
!1013 = !DILocation(line: 789, column: 7, scope: !993)
!1014 = !DILocation(line: 791, column: 43, scope: !993)
!1015 = !DILocation(line: 791, column: 53, scope: !993)
!1016 = !DILocation(line: 791, column: 60, scope: !993)
!1017 = !DILocation(line: 792, column: 43, scope: !993)
!1018 = !DILocation(line: 792, column: 58, scope: !993)
!1019 = !DILocation(line: 790, column: 14, scope: !993)
!1020 = !DILocation(line: 790, column: 10, scope: !993)
!1021 = !DILocation(line: 793, column: 9, scope: !993)
!1022 = !DILocation(line: 794, column: 3, scope: !993)
!1023 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !118, file: !118, line: 256, type: !1024, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1028)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{!112, !82, !112, !21, !112, !5, !33, !1026, !21, !21}
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1053, !1054, !1055, !1056, !1057, !1060, !1061, !1079, !1082, !1083, !1090}
!1029 = !DILocalVariable(name: "buffer", arg: 1, scope: !1023, file: !118, line: 256, type: !82)
!1030 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1023, file: !118, line: 256, type: !112)
!1031 = !DILocalVariable(name: "arg", arg: 3, scope: !1023, file: !118, line: 257, type: !21)
!1032 = !DILocalVariable(name: "argsize", arg: 4, scope: !1023, file: !118, line: 257, type: !112)
!1033 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1023, file: !118, line: 258, type: !5)
!1034 = !DILocalVariable(name: "flags", arg: 6, scope: !1023, file: !118, line: 258, type: !33)
!1035 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1023, file: !118, line: 259, type: !1026)
!1036 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1023, file: !118, line: 260, type: !21)
!1037 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1023, file: !118, line: 261, type: !21)
!1038 = !DILocalVariable(name: "i", scope: !1023, file: !118, line: 263, type: !112)
!1039 = !DILocalVariable(name: "len", scope: !1023, file: !118, line: 264, type: !112)
!1040 = !DILocalVariable(name: "orig_buffersize", scope: !1023, file: !118, line: 265, type: !112)
!1041 = !DILocalVariable(name: "quote_string", scope: !1023, file: !118, line: 266, type: !21)
!1042 = !DILocalVariable(name: "quote_string_len", scope: !1023, file: !118, line: 267, type: !112)
!1043 = !DILocalVariable(name: "backslash_escapes", scope: !1023, file: !118, line: 268, type: !53)
!1044 = !DILocalVariable(name: "unibyte_locale", scope: !1023, file: !118, line: 269, type: !53)
!1045 = !DILocalVariable(name: "elide_outer_quotes", scope: !1023, file: !118, line: 270, type: !53)
!1046 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1023, file: !118, line: 271, type: !53)
!1047 = !DILocalVariable(name: "encountered_single_quote", scope: !1023, file: !118, line: 272, type: !53)
!1048 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1023, file: !118, line: 273, type: !53)
!1049 = !DILocalVariable(name: "c", scope: !1050, file: !118, line: 402, type: !925)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !118, line: 401, column: 5)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !118, line: 400, column: 3)
!1052 = distinct !DILexicalBlock(scope: !1023, file: !118, line: 400, column: 3)
!1053 = !DILocalVariable(name: "esc", scope: !1050, file: !118, line: 403, type: !925)
!1054 = !DILocalVariable(name: "is_right_quote", scope: !1050, file: !118, line: 404, type: !53)
!1055 = !DILocalVariable(name: "escaping", scope: !1050, file: !118, line: 405, type: !53)
!1056 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1050, file: !118, line: 406, type: !53)
!1057 = !DILocalVariable(name: "m", scope: !1058, file: !118, line: 610, type: !112)
!1058 = distinct !DILexicalBlock(scope: !1059, file: !118, line: 608, column: 11)
!1059 = distinct !DILexicalBlock(scope: !1050, file: !118, line: 426, column: 9)
!1060 = !DILocalVariable(name: "printable", scope: !1058, file: !118, line: 612, type: !53)
!1061 = !DILocalVariable(name: "mbstate", scope: !1062, file: !118, line: 621, type: !1064)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !118, line: 620, column: 15)
!1063 = distinct !DILexicalBlock(scope: !1058, file: !118, line: 614, column: 17)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1065, line: 6, baseType: !1066)
!1065 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1067, line: 21, baseType: !1068)
!1067 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1067, line: 13, size: 64, elements: !1069)
!1069 = !{!1070, !1071}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1068, file: !1067, line: 15, baseType: !33, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1068, file: !1067, line: 20, baseType: !1072, size: 32, offset: 32)
!1072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1068, file: !1067, line: 16, size: 32, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1072, file: !1067, line: 18, baseType: !7, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1072, file: !1067, line: 19, baseType: !1076, size: 32)
!1076 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !1077)
!1077 = !{!1078}
!1078 = !DISubrange(count: 4)
!1079 = !DILocalVariable(name: "w", scope: !1080, file: !118, line: 631, type: !1081)
!1080 = distinct !DILexicalBlock(scope: !1062, file: !118, line: 630, column: 19)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !113, line: 90, baseType: !33)
!1082 = !DILocalVariable(name: "bytes", scope: !1080, file: !118, line: 632, type: !112)
!1083 = !DILocalVariable(name: "j", scope: !1084, file: !118, line: 657, type: !112)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !118, line: 656, column: 27)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !118, line: 654, column: 29)
!1086 = distinct !DILexicalBlock(scope: !1087, file: !118, line: 649, column: 23)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !118, line: 641, column: 30)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !118, line: 636, column: 30)
!1089 = distinct !DILexicalBlock(scope: !1080, file: !118, line: 634, column: 25)
!1090 = !DILocalVariable(name: "ilim", scope: !1091, file: !118, line: 684, type: !112)
!1091 = distinct !DILexicalBlock(scope: !1092, file: !118, line: 681, column: 15)
!1092 = distinct !DILexicalBlock(scope: !1058, file: !118, line: 680, column: 17)
!1093 = !DILocation(line: 256, column: 33, scope: !1023)
!1094 = !DILocation(line: 256, column: 48, scope: !1023)
!1095 = !DILocation(line: 257, column: 39, scope: !1023)
!1096 = !DILocation(line: 257, column: 51, scope: !1023)
!1097 = !DILocation(line: 258, column: 46, scope: !1023)
!1098 = !DILocation(line: 258, column: 65, scope: !1023)
!1099 = !DILocation(line: 259, column: 47, scope: !1023)
!1100 = !DILocation(line: 260, column: 39, scope: !1023)
!1101 = !DILocation(line: 261, column: 39, scope: !1023)
!1102 = !DILocation(line: 264, column: 10, scope: !1023)
!1103 = !DILocation(line: 265, column: 10, scope: !1023)
!1104 = !DILocation(line: 266, column: 15, scope: !1023)
!1105 = !DILocation(line: 267, column: 10, scope: !1023)
!1106 = !DILocation(line: 268, column: 8, scope: !1023)
!1107 = !DILocation(line: 269, column: 25, scope: !1023)
!1108 = !DILocation(line: 269, column: 36, scope: !1023)
!1109 = !DILocation(line: 270, column: 8, scope: !1023)
!1110 = !DILocation(line: 271, column: 8, scope: !1023)
!1111 = !DILocation(line: 272, column: 8, scope: !1023)
!1112 = !DILocation(line: 273, column: 8, scope: !1023)
!1113 = !DILocation(line: 273, column: 3, scope: !1023)
!1114 = !DILocation(line: 0, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1023, file: !118, line: 317, column: 5)
!1116 = !DILocation(line: 316, column: 3, scope: !1023)
!1117 = !DILocation(line: 323, column: 11, scope: !1115)
!1118 = !DILocation(line: 323, column: 12, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !118, line: 323, column: 11)
!1120 = !DILocation(line: 324, column: 9, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1122, file: !118, line: 324, column: 9)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !118, line: 324, column: 9)
!1123 = !DILocation(line: 324, column: 9, scope: !1122)
!1124 = !{!638, !638, i64 0}
!1125 = !DILocation(line: 362, column: 26, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !118, line: 340, column: 11)
!1127 = distinct !DILexicalBlock(scope: !1128, file: !118, line: 339, column: 13)
!1128 = distinct !DILexicalBlock(scope: !1115, file: !118, line: 338, column: 7)
!1129 = !DILocation(line: 363, column: 27, scope: !1126)
!1130 = !DILocation(line: 364, column: 11, scope: !1126)
!1131 = !DILocation(line: 365, column: 14, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1128, file: !118, line: 365, column: 13)
!1133 = !DILocation(line: 365, column: 13, scope: !1128)
!1134 = !DILocation(line: 366, column: 43, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !118, line: 366, column: 11)
!1136 = distinct !DILexicalBlock(scope: !1132, file: !118, line: 366, column: 11)
!1137 = !DILocation(line: 366, column: 11, scope: !1136)
!1138 = !DILocation(line: 367, column: 13, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !118, line: 367, column: 13)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !118, line: 367, column: 13)
!1141 = !DILocation(line: 367, column: 13, scope: !1140)
!1142 = !DILocation(line: 366, column: 70, scope: !1135)
!1143 = distinct !{!1143, !1137, !1144}
!1144 = !DILocation(line: 367, column: 13, scope: !1136)
!1145 = !DILocation(line: 370, column: 28, scope: !1128)
!1146 = !DILocation(line: 372, column: 7, scope: !1115)
!1147 = !DILocation(line: 376, column: 7, scope: !1115)
!1148 = !DILocation(line: 379, column: 7, scope: !1115)
!1149 = !DILocation(line: 381, column: 12, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1115, file: !118, line: 381, column: 11)
!1151 = !DILocation(line: 381, column: 11, scope: !1115)
!1152 = !DILocation(line: 0, scope: !1150)
!1153 = !DILocation(line: 386, column: 12, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1115, file: !118, line: 386, column: 11)
!1155 = !DILocation(line: 386, column: 11, scope: !1115)
!1156 = !DILocation(line: 387, column: 9, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !118, line: 387, column: 9)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !118, line: 387, column: 9)
!1159 = !DILocation(line: 387, column: 9, scope: !1158)
!1160 = !DILocation(line: 394, column: 7, scope: !1115)
!1161 = !DILocation(line: 397, column: 7, scope: !1115)
!1162 = !DILocation(line: 0, scope: !1023)
!1163 = !DILocation(line: 263, column: 10, scope: !1023)
!1164 = !DILocation(line: 400, column: 8, scope: !1052)
!1165 = !DILocation(line: 0, scope: !1051)
!1166 = !DILocation(line: 400, column: 27, scope: !1051)
!1167 = !DILocation(line: 400, column: 19, scope: !1051)
!1168 = !DILocation(line: 400, column: 41, scope: !1051)
!1169 = !DILocation(line: 400, column: 48, scope: !1051)
!1170 = !DILocation(line: 400, column: 3, scope: !1052)
!1171 = !DILocation(line: 400, column: 60, scope: !1051)
!1172 = !DILocation(line: 404, column: 12, scope: !1050)
!1173 = !DILocation(line: 405, column: 12, scope: !1050)
!1174 = !DILocation(line: 406, column: 12, scope: !1050)
!1175 = !DILocation(line: 409, column: 11, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1050, file: !118, line: 408, column: 11)
!1177 = !DILocation(line: 411, column: 17, scope: !1176)
!1178 = !DILocation(line: 412, column: 39, scope: !1176)
!1179 = !DILocation(line: 416, column: 32, scope: !1176)
!1180 = !DILocation(line: 412, column: 19, scope: !1176)
!1181 = !DILocation(line: 412, column: 15, scope: !1176)
!1182 = !DILocation(line: 417, column: 11, scope: !1176)
!1183 = !DILocation(line: 417, column: 26, scope: !1176)
!1184 = !DILocation(line: 417, column: 14, scope: !1176)
!1185 = !DILocation(line: 417, column: 63, scope: !1176)
!1186 = !DILocation(line: 408, column: 11, scope: !1050)
!1187 = !DILocation(line: 0, scope: !1050)
!1188 = !DILocation(line: 424, column: 11, scope: !1050)
!1189 = !DILocation(line: 402, column: 21, scope: !1050)
!1190 = !DILocation(line: 425, column: 7, scope: !1050)
!1191 = !DILocation(line: 428, column: 15, scope: !1059)
!1192 = !DILocation(line: 430, column: 15, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !118, line: 430, column: 15)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !118, line: 429, column: 13)
!1195 = distinct !DILexicalBlock(scope: !1059, file: !118, line: 428, column: 15)
!1196 = !DILocation(line: 430, column: 15, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1193, file: !118, line: 430, column: 15)
!1198 = !DILocation(line: 430, column: 15, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !118, line: 430, column: 15)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !118, line: 430, column: 15)
!1201 = distinct !DILexicalBlock(scope: !1197, file: !118, line: 430, column: 15)
!1202 = !DILocation(line: 430, column: 15, scope: !1200)
!1203 = !DILocation(line: 430, column: 15, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !118, line: 430, column: 15)
!1205 = distinct !DILexicalBlock(scope: !1201, file: !118, line: 430, column: 15)
!1206 = !DILocation(line: 430, column: 15, scope: !1205)
!1207 = !DILocation(line: 430, column: 15, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1209, file: !118, line: 430, column: 15)
!1209 = distinct !DILexicalBlock(scope: !1201, file: !118, line: 430, column: 15)
!1210 = !DILocation(line: 430, column: 15, scope: !1209)
!1211 = !DILocation(line: 430, column: 15, scope: !1201)
!1212 = !DILocation(line: 430, column: 15, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1214, file: !118, line: 430, column: 15)
!1214 = distinct !DILexicalBlock(scope: !1193, file: !118, line: 430, column: 15)
!1215 = !DILocation(line: 430, column: 15, scope: !1214)
!1216 = !DILocation(line: 438, column: 19, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1194, file: !118, line: 437, column: 19)
!1218 = !DILocation(line: 438, column: 24, scope: !1217)
!1219 = !DILocation(line: 438, column: 28, scope: !1217)
!1220 = !DILocation(line: 438, column: 38, scope: !1217)
!1221 = !DILocation(line: 438, column: 48, scope: !1217)
!1222 = !DILocation(line: 438, column: 59, scope: !1217)
!1223 = !DILocation(line: 440, column: 19, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !118, line: 440, column: 19)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !118, line: 440, column: 19)
!1226 = distinct !DILexicalBlock(scope: !1217, file: !118, line: 439, column: 17)
!1227 = !DILocation(line: 440, column: 19, scope: !1225)
!1228 = !DILocation(line: 441, column: 19, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !118, line: 441, column: 19)
!1230 = distinct !DILexicalBlock(scope: !1226, file: !118, line: 441, column: 19)
!1231 = !DILocation(line: 441, column: 19, scope: !1230)
!1232 = !DILocation(line: 442, column: 17, scope: !1226)
!1233 = !DILocation(line: 449, column: 20, scope: !1195)
!1234 = !DILocation(line: 454, column: 11, scope: !1059)
!1235 = !DILocation(line: 457, column: 19, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1059, file: !118, line: 455, column: 13)
!1237 = !DILocation(line: 463, column: 19, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1236, file: !118, line: 462, column: 19)
!1239 = !DILocation(line: 463, column: 24, scope: !1238)
!1240 = !DILocation(line: 463, column: 28, scope: !1238)
!1241 = !DILocation(line: 463, column: 38, scope: !1238)
!1242 = !DILocation(line: 463, column: 47, scope: !1238)
!1243 = !DILocation(line: 463, column: 41, scope: !1238)
!1244 = !DILocation(line: 463, column: 52, scope: !1238)
!1245 = !DILocation(line: 462, column: 19, scope: !1236)
!1246 = !DILocation(line: 464, column: 25, scope: !1238)
!1247 = !DILocation(line: 464, column: 17, scope: !1238)
!1248 = !DILocation(line: 471, column: 25, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1238, file: !118, line: 465, column: 19)
!1250 = !DILocation(line: 475, column: 21, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !118, line: 475, column: 21)
!1252 = distinct !DILexicalBlock(scope: !1249, file: !118, line: 475, column: 21)
!1253 = !DILocation(line: 475, column: 21, scope: !1252)
!1254 = !DILocation(line: 476, column: 21, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !118, line: 476, column: 21)
!1256 = distinct !DILexicalBlock(scope: !1249, file: !118, line: 476, column: 21)
!1257 = !DILocation(line: 476, column: 21, scope: !1256)
!1258 = !DILocation(line: 477, column: 21, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !118, line: 477, column: 21)
!1260 = distinct !DILexicalBlock(scope: !1249, file: !118, line: 477, column: 21)
!1261 = !DILocation(line: 477, column: 21, scope: !1260)
!1262 = !DILocation(line: 478, column: 21, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !118, line: 478, column: 21)
!1264 = distinct !DILexicalBlock(scope: !1249, file: !118, line: 478, column: 21)
!1265 = !DILocation(line: 478, column: 21, scope: !1264)
!1266 = !DILocation(line: 479, column: 21, scope: !1249)
!1267 = !DILocation(line: 403, column: 21, scope: !1050)
!1268 = !DILocation(line: 492, column: 31, scope: !1059)
!1269 = !DILocation(line: 493, column: 31, scope: !1059)
!1270 = !DILocation(line: 495, column: 31, scope: !1059)
!1271 = !DILocation(line: 496, column: 31, scope: !1059)
!1272 = !DILocation(line: 497, column: 31, scope: !1059)
!1273 = !DILocation(line: 500, column: 15, scope: !1059)
!1274 = !DILocation(line: 502, column: 19, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !118, line: 501, column: 13)
!1276 = distinct !DILexicalBlock(scope: !1059, file: !118, line: 500, column: 15)
!1277 = !DILocation(line: 509, column: 33, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1059, file: !118, line: 509, column: 15)
!1279 = !DILocation(line: 0, scope: !1059)
!1280 = !DILocation(line: 514, column: 15, scope: !1281)
!1281 = distinct !DILexicalBlock(scope: !1059, file: !118, line: 513, column: 15)
!1282 = !DILocation(line: 518, column: 15, scope: !1059)
!1283 = !DILocation(line: 526, column: 26, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1059, file: !118, line: 526, column: 15)
!1285 = !DILocation(line: 526, column: 15, scope: !1059)
!1286 = !DILocation(line: 526, column: 40, scope: !1284)
!1287 = !DILocation(line: 526, column: 47, scope: !1284)
!1288 = !DILocation(line: 530, column: 17, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1059, file: !118, line: 530, column: 15)
!1290 = !DILocation(line: 526, column: 18, scope: !1284)
!1291 = !DILocation(line: 526, column: 65, scope: !1284)
!1292 = !DILocation(line: 530, column: 15, scope: !1059)
!1293 = !DILocation(line: 535, column: 11, scope: !1059)
!1294 = !DILocation(line: 549, column: 15, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1059, file: !118, line: 548, column: 15)
!1296 = !DILocation(line: 556, column: 15, scope: !1059)
!1297 = !DILocation(line: 558, column: 19, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1299, file: !118, line: 557, column: 13)
!1299 = distinct !DILexicalBlock(scope: !1059, file: !118, line: 556, column: 15)
!1300 = !DILocation(line: 561, column: 19, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1298, file: !118, line: 561, column: 19)
!1302 = !DILocation(line: 561, column: 35, scope: !1301)
!1303 = !DILocation(line: 561, column: 30, scope: !1301)
!1304 = !DILocation(line: 570, column: 15, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1306, file: !118, line: 570, column: 15)
!1306 = distinct !DILexicalBlock(scope: !1298, file: !118, line: 570, column: 15)
!1307 = !DILocation(line: 570, column: 15, scope: !1306)
!1308 = !DILocation(line: 571, column: 15, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !118, line: 571, column: 15)
!1310 = distinct !DILexicalBlock(scope: !1298, file: !118, line: 571, column: 15)
!1311 = !DILocation(line: 571, column: 15, scope: !1310)
!1312 = !DILocation(line: 572, column: 15, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !118, line: 572, column: 15)
!1314 = distinct !DILexicalBlock(scope: !1298, file: !118, line: 572, column: 15)
!1315 = !DILocation(line: 572, column: 15, scope: !1314)
!1316 = !DILocation(line: 574, column: 13, scope: !1298)
!1317 = !DILocation(line: 614, column: 17, scope: !1058)
!1318 = !DILocation(line: 610, column: 20, scope: !1058)
!1319 = !DILocation(line: 617, column: 29, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1063, file: !118, line: 615, column: 15)
!1321 = !{!1322, !1322, i64 0}
!1322 = !{!"short", !638, i64 0}
!1323 = !DILocation(line: 617, column: 27, scope: !1320)
!1324 = !DILocation(line: 612, column: 18, scope: !1058)
!1325 = !DILocation(line: 618, column: 15, scope: !1320)
!1326 = !DILocation(line: 621, column: 17, scope: !1062)
!1327 = !DILocation(line: 622, column: 17, scope: !1062)
!1328 = !DILocation(line: 626, column: 29, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1062, file: !118, line: 626, column: 21)
!1330 = !DILocation(line: 626, column: 21, scope: !1062)
!1331 = !DILocation(line: 627, column: 29, scope: !1329)
!1332 = !DILocation(line: 627, column: 19, scope: !1329)
!1333 = !DILocation(line: 0, scope: !1176)
!1334 = !DILocation(line: 629, column: 17, scope: !1062)
!1335 = !DILocation(line: 624, column: 19, scope: !1062)
!1336 = !DILocation(line: 625, column: 27, scope: !1062)
!1337 = !DILocation(line: 631, column: 21, scope: !1080)
!1338 = !DILocation(line: 632, column: 56, scope: !1080)
!1339 = !DILocation(line: 632, column: 50, scope: !1080)
!1340 = !DILocation(line: 633, column: 53, scope: !1080)
!1341 = !DILocation(line: 621, column: 27, scope: !1062)
!1342 = !DILocation(line: 631, column: 29, scope: !1080)
!1343 = !DILocation(line: 632, column: 36, scope: !1080)
!1344 = !DILocation(line: 632, column: 28, scope: !1080)
!1345 = !DILocation(line: 634, column: 25, scope: !1080)
!1346 = !DILocation(line: 644, column: 38, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1087, file: !118, line: 642, column: 23)
!1348 = !DILocation(line: 644, column: 48, scope: !1347)
!1349 = !DILocation(line: 644, column: 51, scope: !1347)
!1350 = !DILocation(line: 644, column: 25, scope: !1347)
!1351 = !DILocation(line: 645, column: 28, scope: !1347)
!1352 = !DILocation(line: 644, column: 34, scope: !1347)
!1353 = distinct !{!1353, !1350, !1351}
!1354 = !DILocation(line: 658, column: 43, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1356, file: !118, line: 658, column: 29)
!1356 = distinct !DILexicalBlock(scope: !1084, file: !118, line: 658, column: 29)
!1357 = !DILocation(line: 655, column: 29, scope: !1085)
!1358 = !DILocation(line: 657, column: 36, scope: !1084)
!1359 = !DILocation(line: 659, column: 49, scope: !1355)
!1360 = !DILocation(line: 659, column: 39, scope: !1355)
!1361 = !DILocation(line: 659, column: 31, scope: !1355)
!1362 = !DILocation(line: 658, column: 53, scope: !1355)
!1363 = !DILocation(line: 658, column: 29, scope: !1356)
!1364 = distinct !{!1364, !1363, !1365}
!1365 = !DILocation(line: 667, column: 33, scope: !1356)
!1366 = !DILocation(line: 674, column: 19, scope: !1062)
!1367 = !DILocation(line: 670, column: 41, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1086, file: !118, line: 670, column: 29)
!1369 = !DILocation(line: 670, column: 31, scope: !1368)
!1370 = !DILocation(line: 670, column: 29, scope: !1086)
!1371 = !DILocation(line: 672, column: 27, scope: !1086)
!1372 = !DILocation(line: 675, column: 26, scope: !1062)
!1373 = !DILocation(line: 675, column: 24, scope: !1062)
!1374 = !DILocation(line: 674, column: 19, scope: !1080)
!1375 = distinct !{!1375, !1334, !1376}
!1376 = !DILocation(line: 675, column: 44, scope: !1062)
!1377 = !DILocation(line: 676, column: 15, scope: !1063)
!1378 = !DILocation(line: 0, scope: !1329)
!1379 = !DILocation(line: 0, scope: !1062)
!1380 = !DILocation(line: 678, column: 40, scope: !1058)
!1381 = !DILocation(line: 680, column: 19, scope: !1092)
!1382 = !DILocation(line: 680, column: 45, scope: !1092)
!1383 = !DILocation(line: 680, column: 23, scope: !1092)
!1384 = !DILocation(line: 684, column: 33, scope: !1091)
!1385 = !DILocation(line: 684, column: 24, scope: !1091)
!1386 = !DILocation(line: 686, column: 17, scope: !1091)
!1387 = !DILocation(line: 0, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !118, line: 687, column: 19)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !118, line: 686, column: 17)
!1390 = distinct !DILexicalBlock(scope: !1091, file: !118, line: 686, column: 17)
!1391 = !DILocation(line: 0, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1388, file: !118, line: 703, column: 21)
!1393 = !DILocation(line: 0, scope: !1394)
!1394 = distinct !DILexicalBlock(scope: !1395, file: !118, line: 696, column: 23)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !118, line: 695, column: 30)
!1396 = distinct !DILexicalBlock(scope: !1388, file: !118, line: 688, column: 25)
!1397 = !DILocation(line: 688, column: 43, scope: !1396)
!1398 = !DILocation(line: 690, column: 25, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !118, line: 690, column: 25)
!1400 = distinct !DILexicalBlock(scope: !1396, file: !118, line: 689, column: 23)
!1401 = !DILocation(line: 690, column: 25, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1399, file: !118, line: 690, column: 25)
!1403 = !DILocation(line: 690, column: 25, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !118, line: 690, column: 25)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !118, line: 690, column: 25)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !118, line: 690, column: 25)
!1407 = !DILocation(line: 690, column: 25, scope: !1405)
!1408 = !DILocation(line: 690, column: 25, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !118, line: 690, column: 25)
!1410 = distinct !DILexicalBlock(scope: !1406, file: !118, line: 690, column: 25)
!1411 = !DILocation(line: 690, column: 25, scope: !1410)
!1412 = !DILocation(line: 690, column: 25, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !118, line: 690, column: 25)
!1414 = distinct !DILexicalBlock(scope: !1406, file: !118, line: 690, column: 25)
!1415 = !DILocation(line: 690, column: 25, scope: !1414)
!1416 = !DILocation(line: 690, column: 25, scope: !1406)
!1417 = !DILocation(line: 690, column: 25, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !118, line: 690, column: 25)
!1419 = distinct !DILexicalBlock(scope: !1399, file: !118, line: 690, column: 25)
!1420 = !DILocation(line: 690, column: 25, scope: !1419)
!1421 = !DILocation(line: 691, column: 25, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !118, line: 691, column: 25)
!1423 = distinct !DILexicalBlock(scope: !1400, file: !118, line: 691, column: 25)
!1424 = !DILocation(line: 691, column: 25, scope: !1423)
!1425 = !DILocation(line: 692, column: 25, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1427, file: !118, line: 692, column: 25)
!1427 = distinct !DILexicalBlock(scope: !1400, file: !118, line: 692, column: 25)
!1428 = !DILocation(line: 692, column: 25, scope: !1427)
!1429 = !DILocation(line: 693, column: 38, scope: !1400)
!1430 = !DILocation(line: 693, column: 33, scope: !1400)
!1431 = !DILocation(line: 694, column: 23, scope: !1400)
!1432 = !DILocation(line: 695, column: 30, scope: !1395)
!1433 = !DILocation(line: 695, column: 30, scope: !1396)
!1434 = !DILocation(line: 697, column: 25, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1436, file: !118, line: 697, column: 25)
!1436 = distinct !DILexicalBlock(scope: !1394, file: !118, line: 697, column: 25)
!1437 = !DILocation(line: 697, column: 25, scope: !1436)
!1438 = !DILocation(line: 699, column: 23, scope: !1394)
!1439 = !DILocation(line: 0, scope: !1427)
!1440 = !DILocation(line: 0, scope: !1400)
!1441 = !DILocation(line: 0, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1176, file: !118, line: 418, column: 9)
!1443 = !DILocation(line: 0, scope: !1399)
!1444 = !DILocation(line: 700, column: 35, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1388, file: !118, line: 700, column: 25)
!1446 = !DILocation(line: 700, column: 30, scope: !1445)
!1447 = !DILocation(line: 700, column: 25, scope: !1388)
!1448 = !DILocation(line: 702, column: 21, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !118, line: 702, column: 21)
!1450 = distinct !DILexicalBlock(scope: !1388, file: !118, line: 702, column: 21)
!1451 = !DILocation(line: 702, column: 21, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1453, file: !118, line: 702, column: 21)
!1453 = distinct !DILexicalBlock(scope: !1454, file: !118, line: 702, column: 21)
!1454 = distinct !DILexicalBlock(scope: !1449, file: !118, line: 702, column: 21)
!1455 = !DILocation(line: 702, column: 21, scope: !1453)
!1456 = !DILocation(line: 702, column: 21, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !118, line: 702, column: 21)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !118, line: 702, column: 21)
!1459 = !DILocation(line: 702, column: 21, scope: !1458)
!1460 = !DILocation(line: 702, column: 21, scope: !1454)
!1461 = !DILocation(line: 0, scope: !1436)
!1462 = !DILocation(line: 703, column: 21, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1392, file: !118, line: 703, column: 21)
!1464 = !DILocation(line: 703, column: 21, scope: !1392)
!1465 = !DILocation(line: 704, column: 25, scope: !1388)
!1466 = !DILocation(line: 686, column: 17, scope: !1389)
!1467 = distinct !{!1467, !1468, !1469}
!1468 = !DILocation(line: 686, column: 17, scope: !1390)
!1469 = !DILocation(line: 705, column: 19, scope: !1390)
!1470 = !DILocation(line: 0, scope: !1052)
!1471 = !DILocation(line: 416, column: 30, scope: !1176)
!1472 = !DILocation(line: 712, column: 34, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1050, file: !118, line: 712, column: 11)
!1474 = !DILocation(line: 714, column: 14, scope: !1473)
!1475 = !DILocation(line: 715, column: 14, scope: !1473)
!1476 = !DILocation(line: 715, column: 35, scope: !1473)
!1477 = !DILocation(line: 715, column: 17, scope: !1473)
!1478 = !DILocation(line: 715, column: 47, scope: !1473)
!1479 = !DILocation(line: 715, column: 65, scope: !1473)
!1480 = !DILocation(line: 716, column: 15, scope: !1473)
!1481 = !DILocation(line: 716, column: 11, scope: !1473)
!1482 = !DILocation(line: 712, column: 11, scope: !1050)
!1483 = !DILocation(line: 400, column: 10, scope: !1052)
!1484 = !DILocation(line: 0, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !118, line: 519, column: 13)
!1486 = distinct !DILexicalBlock(scope: !1059, file: !118, line: 518, column: 15)
!1487 = !DILocation(line: 720, column: 7, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1050, file: !118, line: 720, column: 7)
!1489 = !DILocation(line: 720, column: 7, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1488, file: !118, line: 720, column: 7)
!1491 = !DILocation(line: 720, column: 7, scope: !1492)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !118, line: 720, column: 7)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !118, line: 720, column: 7)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !118, line: 720, column: 7)
!1495 = !DILocation(line: 720, column: 7, scope: !1493)
!1496 = !DILocation(line: 720, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !118, line: 720, column: 7)
!1498 = distinct !DILexicalBlock(scope: !1494, file: !118, line: 720, column: 7)
!1499 = !DILocation(line: 720, column: 7, scope: !1498)
!1500 = !DILocation(line: 720, column: 7, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !118, line: 720, column: 7)
!1502 = distinct !DILexicalBlock(scope: !1494, file: !118, line: 720, column: 7)
!1503 = !DILocation(line: 720, column: 7, scope: !1502)
!1504 = !DILocation(line: 720, column: 7, scope: !1494)
!1505 = !DILocation(line: 720, column: 7, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !118, line: 720, column: 7)
!1507 = distinct !DILexicalBlock(scope: !1488, file: !118, line: 720, column: 7)
!1508 = !DILocation(line: 720, column: 7, scope: !1507)
!1509 = !DILocation(line: 723, column: 7, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1511, file: !118, line: 723, column: 7)
!1511 = distinct !DILexicalBlock(scope: !1050, file: !118, line: 723, column: 7)
!1512 = !DILocation(line: 424, column: 9, scope: !1050)
!1513 = !DILocation(line: 723, column: 7, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1515, file: !118, line: 723, column: 7)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !118, line: 723, column: 7)
!1516 = distinct !DILexicalBlock(scope: !1510, file: !118, line: 723, column: 7)
!1517 = !DILocation(line: 723, column: 7, scope: !1515)
!1518 = !DILocation(line: 723, column: 7, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !118, line: 723, column: 7)
!1520 = distinct !DILexicalBlock(scope: !1516, file: !118, line: 723, column: 7)
!1521 = !DILocation(line: 723, column: 7, scope: !1520)
!1522 = !DILocation(line: 723, column: 7, scope: !1516)
!1523 = !DILocation(line: 724, column: 7, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !118, line: 724, column: 7)
!1525 = distinct !DILexicalBlock(scope: !1050, file: !118, line: 724, column: 7)
!1526 = !DILocation(line: 724, column: 7, scope: !1525)
!1527 = !DILocation(line: 726, column: 13, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1050, file: !118, line: 726, column: 11)
!1529 = !DILocation(line: 726, column: 11, scope: !1050)
!1530 = !DILocation(line: 728, column: 5, scope: !1051)
!1531 = !DILocation(line: 400, column: 75, scope: !1051)
!1532 = !DILocation(line: 400, column: 3, scope: !1051)
!1533 = distinct !{!1533, !1170, !1534}
!1534 = !DILocation(line: 728, column: 5, scope: !1052)
!1535 = !DILocation(line: 730, column: 11, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1023, file: !118, line: 730, column: 7)
!1537 = !DILocation(line: 730, column: 16, scope: !1536)
!1538 = !DILocation(line: 738, column: 51, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1023, file: !118, line: 738, column: 7)
!1540 = !DILocation(line: 739, column: 10, scope: !1539)
!1541 = !DILocation(line: 741, column: 11, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !118, line: 741, column: 11)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !118, line: 740, column: 5)
!1544 = !DILocation(line: 741, column: 11, scope: !1543)
!1545 = !DILocation(line: 742, column: 16, scope: !1542)
!1546 = !DILocation(line: 742, column: 9, scope: !1542)
!1547 = !DILocation(line: 746, column: 18, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1542, file: !118, line: 746, column: 16)
!1549 = !DILocation(line: 746, column: 32, scope: !1548)
!1550 = !DILocation(line: 746, column: 29, scope: !1548)
!1551 = !DILocation(line: 755, column: 7, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1023, file: !118, line: 755, column: 7)
!1553 = !DILocation(line: 755, column: 20, scope: !1552)
!1554 = !DILocation(line: 756, column: 12, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !118, line: 756, column: 5)
!1556 = distinct !DILexicalBlock(scope: !1552, file: !118, line: 756, column: 5)
!1557 = !DILocation(line: 756, column: 5, scope: !1556)
!1558 = !DILocation(line: 757, column: 7, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !118, line: 757, column: 7)
!1560 = distinct !DILexicalBlock(scope: !1555, file: !118, line: 757, column: 7)
!1561 = !DILocation(line: 757, column: 7, scope: !1560)
!1562 = !DILocation(line: 756, column: 39, scope: !1555)
!1563 = distinct !{!1563, !1557, !1564}
!1564 = !DILocation(line: 757, column: 7, scope: !1556)
!1565 = !DILocation(line: 759, column: 11, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1023, file: !118, line: 759, column: 7)
!1567 = !DILocation(line: 759, column: 7, scope: !1023)
!1568 = !DILocation(line: 760, column: 5, scope: !1566)
!1569 = !DILocation(line: 760, column: 17, scope: !1566)
!1570 = !DILocation(line: 766, column: 21, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1023, file: !118, line: 766, column: 7)
!1572 = !DILocation(line: 766, column: 54, scope: !1571)
!1573 = !DILocation(line: 766, column: 51, scope: !1571)
!1574 = !DILocation(line: 770, column: 42, scope: !1023)
!1575 = !DILocation(line: 768, column: 10, scope: !1023)
!1576 = !DILocation(line: 768, column: 3, scope: !1023)
!1577 = !DILocation(line: 772, column: 1, scope: !1023)
!1578 = distinct !DISubprogram(name: "gettext_quote", scope: !118, file: !118, line: 207, type: !1579, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1581)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!21, !21, !5}
!1581 = !{!1582, !1583, !1584, !1585}
!1582 = !DILocalVariable(name: "msgid", arg: 1, scope: !1578, file: !118, line: 207, type: !21)
!1583 = !DILocalVariable(name: "s", arg: 2, scope: !1578, file: !118, line: 207, type: !5)
!1584 = !DILocalVariable(name: "translation", scope: !1578, file: !118, line: 209, type: !21)
!1585 = !DILocalVariable(name: "locale_code", scope: !1578, file: !118, line: 210, type: !21)
!1586 = !DILocation(line: 207, column: 28, scope: !1578)
!1587 = !DILocation(line: 207, column: 54, scope: !1578)
!1588 = !DILocation(line: 209, column: 29, scope: !1578)
!1589 = !DILocation(line: 209, column: 15, scope: !1578)
!1590 = !DILocation(line: 212, column: 19, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1578, file: !118, line: 212, column: 7)
!1592 = !DILocation(line: 212, column: 7, scope: !1578)
!1593 = !DILocation(line: 233, column: 17, scope: !1578)
!1594 = !DILocation(line: 210, column: 15, scope: !1578)
!1595 = !DILocalVariable(name: "s1", arg: 1, scope: !1596, file: !1597, line: 160, type: !21)
!1596 = distinct !DISubprogram(name: "strcaseeq0", scope: !1597, file: !1597, line: 160, type: !1598, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1600)
!1597 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1598 = !DISubroutineType(types: !1599)
!1599 = !{!33, !21, !21, !23, !23, !23, !23, !23, !23, !23, !23, !23}
!1600 = !{!1595, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610}
!1601 = !DILocalVariable(name: "s2", arg: 2, scope: !1596, file: !1597, line: 160, type: !21)
!1602 = !DILocalVariable(name: "s20", arg: 3, scope: !1596, file: !1597, line: 160, type: !23)
!1603 = !DILocalVariable(name: "s21", arg: 4, scope: !1596, file: !1597, line: 160, type: !23)
!1604 = !DILocalVariable(name: "s22", arg: 5, scope: !1596, file: !1597, line: 160, type: !23)
!1605 = !DILocalVariable(name: "s23", arg: 6, scope: !1596, file: !1597, line: 160, type: !23)
!1606 = !DILocalVariable(name: "s24", arg: 7, scope: !1596, file: !1597, line: 160, type: !23)
!1607 = !DILocalVariable(name: "s25", arg: 8, scope: !1596, file: !1597, line: 160, type: !23)
!1608 = !DILocalVariable(name: "s26", arg: 9, scope: !1596, file: !1597, line: 160, type: !23)
!1609 = !DILocalVariable(name: "s27", arg: 10, scope: !1596, file: !1597, line: 160, type: !23)
!1610 = !DILocalVariable(name: "s28", arg: 11, scope: !1596, file: !1597, line: 160, type: !23)
!1611 = !DILocation(line: 160, column: 25, scope: !1596, inlinedAt: !1612)
!1612 = distinct !DILocation(line: 234, column: 7, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1578, file: !118, line: 234, column: 7)
!1614 = !DILocation(line: 160, column: 41, scope: !1596, inlinedAt: !1612)
!1615 = !DILocation(line: 160, column: 50, scope: !1596, inlinedAt: !1612)
!1616 = !DILocation(line: 160, column: 60, scope: !1596, inlinedAt: !1612)
!1617 = !DILocation(line: 160, column: 70, scope: !1596, inlinedAt: !1612)
!1618 = !DILocation(line: 160, column: 80, scope: !1596, inlinedAt: !1612)
!1619 = !DILocation(line: 160, column: 90, scope: !1596, inlinedAt: !1612)
!1620 = !DILocation(line: 160, column: 100, scope: !1596, inlinedAt: !1612)
!1621 = !DILocation(line: 160, column: 110, scope: !1596, inlinedAt: !1612)
!1622 = !DILocation(line: 160, column: 120, scope: !1596, inlinedAt: !1612)
!1623 = !DILocation(line: 160, column: 130, scope: !1596, inlinedAt: !1612)
!1624 = !DILocation(line: 162, column: 7, scope: !1625, inlinedAt: !1612)
!1625 = distinct !DILexicalBlock(scope: !1596, file: !1597, line: 162, column: 7)
!1626 = !DILocalVariable(name: "s1", arg: 1, scope: !1627, file: !1597, line: 146, type: !21)
!1627 = distinct !DISubprogram(name: "strcaseeq1", scope: !1597, file: !1597, line: 146, type: !1628, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1630)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!33, !21, !21, !23, !23, !23, !23, !23, !23, !23, !23}
!1630 = !{!1626, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639}
!1631 = !DILocalVariable(name: "s2", arg: 2, scope: !1627, file: !1597, line: 146, type: !21)
!1632 = !DILocalVariable(name: "s21", arg: 3, scope: !1627, file: !1597, line: 146, type: !23)
!1633 = !DILocalVariable(name: "s22", arg: 4, scope: !1627, file: !1597, line: 146, type: !23)
!1634 = !DILocalVariable(name: "s23", arg: 5, scope: !1627, file: !1597, line: 146, type: !23)
!1635 = !DILocalVariable(name: "s24", arg: 6, scope: !1627, file: !1597, line: 146, type: !23)
!1636 = !DILocalVariable(name: "s25", arg: 7, scope: !1627, file: !1597, line: 146, type: !23)
!1637 = !DILocalVariable(name: "s26", arg: 8, scope: !1627, file: !1597, line: 146, type: !23)
!1638 = !DILocalVariable(name: "s27", arg: 9, scope: !1627, file: !1597, line: 146, type: !23)
!1639 = !DILocalVariable(name: "s28", arg: 10, scope: !1627, file: !1597, line: 146, type: !23)
!1640 = !DILocation(line: 146, column: 25, scope: !1627, inlinedAt: !1641)
!1641 = distinct !DILocation(line: 167, column: 16, scope: !1642, inlinedAt: !1612)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !1597, line: 164, column: 11)
!1643 = distinct !DILexicalBlock(scope: !1625, file: !1597, line: 163, column: 5)
!1644 = !DILocation(line: 146, column: 41, scope: !1627, inlinedAt: !1641)
!1645 = !DILocation(line: 146, column: 50, scope: !1627, inlinedAt: !1641)
!1646 = !DILocation(line: 146, column: 60, scope: !1627, inlinedAt: !1641)
!1647 = !DILocation(line: 146, column: 70, scope: !1627, inlinedAt: !1641)
!1648 = !DILocation(line: 146, column: 80, scope: !1627, inlinedAt: !1641)
!1649 = !DILocation(line: 146, column: 90, scope: !1627, inlinedAt: !1641)
!1650 = !DILocation(line: 146, column: 100, scope: !1627, inlinedAt: !1641)
!1651 = !DILocation(line: 146, column: 110, scope: !1627, inlinedAt: !1641)
!1652 = !DILocation(line: 146, column: 120, scope: !1627, inlinedAt: !1641)
!1653 = !DILocation(line: 148, column: 7, scope: !1654, inlinedAt: !1641)
!1654 = distinct !DILexicalBlock(scope: !1627, file: !1597, line: 148, column: 7)
!1655 = !DILocalVariable(name: "s1", arg: 1, scope: !1656, file: !1597, line: 132, type: !21)
!1656 = distinct !DISubprogram(name: "strcaseeq2", scope: !1597, file: !1597, line: 132, type: !1657, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1659)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!33, !21, !21, !23, !23, !23, !23, !23, !23, !23}
!1659 = !{!1655, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667}
!1660 = !DILocalVariable(name: "s2", arg: 2, scope: !1656, file: !1597, line: 132, type: !21)
!1661 = !DILocalVariable(name: "s22", arg: 3, scope: !1656, file: !1597, line: 132, type: !23)
!1662 = !DILocalVariable(name: "s23", arg: 4, scope: !1656, file: !1597, line: 132, type: !23)
!1663 = !DILocalVariable(name: "s24", arg: 5, scope: !1656, file: !1597, line: 132, type: !23)
!1664 = !DILocalVariable(name: "s25", arg: 6, scope: !1656, file: !1597, line: 132, type: !23)
!1665 = !DILocalVariable(name: "s26", arg: 7, scope: !1656, file: !1597, line: 132, type: !23)
!1666 = !DILocalVariable(name: "s27", arg: 8, scope: !1656, file: !1597, line: 132, type: !23)
!1667 = !DILocalVariable(name: "s28", arg: 9, scope: !1656, file: !1597, line: 132, type: !23)
!1668 = !DILocation(line: 132, column: 25, scope: !1656, inlinedAt: !1669)
!1669 = distinct !DILocation(line: 153, column: 16, scope: !1670, inlinedAt: !1641)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !1597, line: 150, column: 11)
!1671 = distinct !DILexicalBlock(scope: !1654, file: !1597, line: 149, column: 5)
!1672 = !DILocation(line: 132, column: 41, scope: !1656, inlinedAt: !1669)
!1673 = !DILocation(line: 132, column: 50, scope: !1656, inlinedAt: !1669)
!1674 = !DILocation(line: 132, column: 60, scope: !1656, inlinedAt: !1669)
!1675 = !DILocation(line: 132, column: 70, scope: !1656, inlinedAt: !1669)
!1676 = !DILocation(line: 132, column: 80, scope: !1656, inlinedAt: !1669)
!1677 = !DILocation(line: 132, column: 90, scope: !1656, inlinedAt: !1669)
!1678 = !DILocation(line: 132, column: 100, scope: !1656, inlinedAt: !1669)
!1679 = !DILocation(line: 132, column: 110, scope: !1656, inlinedAt: !1669)
!1680 = !DILocation(line: 134, column: 7, scope: !1681, inlinedAt: !1669)
!1681 = distinct !DILexicalBlock(scope: !1656, file: !1597, line: 134, column: 7)
!1682 = !DILocalVariable(name: "s1", arg: 1, scope: !1683, file: !1597, line: 118, type: !21)
!1683 = distinct !DISubprogram(name: "strcaseeq3", scope: !1597, file: !1597, line: 118, type: !1684, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1686)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!33, !21, !21, !23, !23, !23, !23, !23, !23}
!1686 = !{!1682, !1687, !1688, !1689, !1690, !1691, !1692, !1693}
!1687 = !DILocalVariable(name: "s2", arg: 2, scope: !1683, file: !1597, line: 118, type: !21)
!1688 = !DILocalVariable(name: "s23", arg: 3, scope: !1683, file: !1597, line: 118, type: !23)
!1689 = !DILocalVariable(name: "s24", arg: 4, scope: !1683, file: !1597, line: 118, type: !23)
!1690 = !DILocalVariable(name: "s25", arg: 5, scope: !1683, file: !1597, line: 118, type: !23)
!1691 = !DILocalVariable(name: "s26", arg: 6, scope: !1683, file: !1597, line: 118, type: !23)
!1692 = !DILocalVariable(name: "s27", arg: 7, scope: !1683, file: !1597, line: 118, type: !23)
!1693 = !DILocalVariable(name: "s28", arg: 8, scope: !1683, file: !1597, line: 118, type: !23)
!1694 = !DILocation(line: 118, column: 25, scope: !1683, inlinedAt: !1695)
!1695 = distinct !DILocation(line: 139, column: 16, scope: !1696, inlinedAt: !1669)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !1597, line: 136, column: 11)
!1697 = distinct !DILexicalBlock(scope: !1681, file: !1597, line: 135, column: 5)
!1698 = !DILocation(line: 118, column: 41, scope: !1683, inlinedAt: !1695)
!1699 = !DILocation(line: 118, column: 50, scope: !1683, inlinedAt: !1695)
!1700 = !DILocation(line: 118, column: 60, scope: !1683, inlinedAt: !1695)
!1701 = !DILocation(line: 118, column: 70, scope: !1683, inlinedAt: !1695)
!1702 = !DILocation(line: 118, column: 80, scope: !1683, inlinedAt: !1695)
!1703 = !DILocation(line: 118, column: 90, scope: !1683, inlinedAt: !1695)
!1704 = !DILocation(line: 118, column: 100, scope: !1683, inlinedAt: !1695)
!1705 = !DILocation(line: 120, column: 7, scope: !1706, inlinedAt: !1695)
!1706 = distinct !DILexicalBlock(scope: !1683, file: !1597, line: 120, column: 7)
!1707 = !DILocation(line: 120, column: 7, scope: !1683, inlinedAt: !1695)
!1708 = !DILocalVariable(name: "s1", arg: 1, scope: !1709, file: !1597, line: 104, type: !21)
!1709 = distinct !DISubprogram(name: "strcaseeq4", scope: !1597, file: !1597, line: 104, type: !1710, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1712)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!33, !21, !21, !23, !23, !23, !23, !23}
!1712 = !{!1708, !1713, !1714, !1715, !1716, !1717, !1718}
!1713 = !DILocalVariable(name: "s2", arg: 2, scope: !1709, file: !1597, line: 104, type: !21)
!1714 = !DILocalVariable(name: "s24", arg: 3, scope: !1709, file: !1597, line: 104, type: !23)
!1715 = !DILocalVariable(name: "s25", arg: 4, scope: !1709, file: !1597, line: 104, type: !23)
!1716 = !DILocalVariable(name: "s26", arg: 5, scope: !1709, file: !1597, line: 104, type: !23)
!1717 = !DILocalVariable(name: "s27", arg: 6, scope: !1709, file: !1597, line: 104, type: !23)
!1718 = !DILocalVariable(name: "s28", arg: 7, scope: !1709, file: !1597, line: 104, type: !23)
!1719 = !DILocation(line: 104, column: 25, scope: !1709, inlinedAt: !1720)
!1720 = distinct !DILocation(line: 125, column: 16, scope: !1721, inlinedAt: !1695)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !1597, line: 122, column: 11)
!1722 = distinct !DILexicalBlock(scope: !1706, file: !1597, line: 121, column: 5)
!1723 = !DILocation(line: 104, column: 41, scope: !1709, inlinedAt: !1720)
!1724 = !DILocation(line: 104, column: 50, scope: !1709, inlinedAt: !1720)
!1725 = !DILocation(line: 104, column: 60, scope: !1709, inlinedAt: !1720)
!1726 = !DILocation(line: 104, column: 70, scope: !1709, inlinedAt: !1720)
!1727 = !DILocation(line: 104, column: 80, scope: !1709, inlinedAt: !1720)
!1728 = !DILocation(line: 104, column: 90, scope: !1709, inlinedAt: !1720)
!1729 = !DILocation(line: 106, column: 7, scope: !1730, inlinedAt: !1720)
!1730 = distinct !DILexicalBlock(scope: !1709, file: !1597, line: 106, column: 7)
!1731 = !DILocation(line: 106, column: 7, scope: !1709, inlinedAt: !1720)
!1732 = !DILocalVariable(name: "s1", arg: 1, scope: !1733, file: !1597, line: 90, type: !21)
!1733 = distinct !DISubprogram(name: "strcaseeq5", scope: !1597, file: !1597, line: 90, type: !1734, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1736)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{!33, !21, !21, !23, !23, !23, !23}
!1736 = !{!1732, !1737, !1738, !1739, !1740, !1741}
!1737 = !DILocalVariable(name: "s2", arg: 2, scope: !1733, file: !1597, line: 90, type: !21)
!1738 = !DILocalVariable(name: "s25", arg: 3, scope: !1733, file: !1597, line: 90, type: !23)
!1739 = !DILocalVariable(name: "s26", arg: 4, scope: !1733, file: !1597, line: 90, type: !23)
!1740 = !DILocalVariable(name: "s27", arg: 5, scope: !1733, file: !1597, line: 90, type: !23)
!1741 = !DILocalVariable(name: "s28", arg: 6, scope: !1733, file: !1597, line: 90, type: !23)
!1742 = !DILocation(line: 90, column: 25, scope: !1733, inlinedAt: !1743)
!1743 = distinct !DILocation(line: 111, column: 16, scope: !1744, inlinedAt: !1720)
!1744 = distinct !DILexicalBlock(scope: !1745, file: !1597, line: 108, column: 11)
!1745 = distinct !DILexicalBlock(scope: !1730, file: !1597, line: 107, column: 5)
!1746 = !DILocation(line: 90, column: 41, scope: !1733, inlinedAt: !1743)
!1747 = !DILocation(line: 90, column: 50, scope: !1733, inlinedAt: !1743)
!1748 = !DILocation(line: 90, column: 60, scope: !1733, inlinedAt: !1743)
!1749 = !DILocation(line: 90, column: 70, scope: !1733, inlinedAt: !1743)
!1750 = !DILocation(line: 90, column: 80, scope: !1733, inlinedAt: !1743)
!1751 = !DILocation(line: 92, column: 7, scope: !1752, inlinedAt: !1743)
!1752 = distinct !DILexicalBlock(scope: !1733, file: !1597, line: 92, column: 7)
!1753 = !DILocation(line: 92, column: 7, scope: !1733, inlinedAt: !1743)
!1754 = !DILocation(line: 235, column: 12, scope: !1613)
!1755 = !DILocation(line: 235, column: 21, scope: !1613)
!1756 = !DILocation(line: 235, column: 5, scope: !1613)
!1757 = !DILocation(line: 146, column: 25, scope: !1627, inlinedAt: !1758)
!1758 = distinct !DILocation(line: 167, column: 16, scope: !1642, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 236, column: 7, scope: !1760)
!1760 = distinct !DILexicalBlock(scope: !1578, file: !118, line: 236, column: 7)
!1761 = !DILocation(line: 146, column: 41, scope: !1627, inlinedAt: !1758)
!1762 = !DILocation(line: 146, column: 50, scope: !1627, inlinedAt: !1758)
!1763 = !DILocation(line: 146, column: 60, scope: !1627, inlinedAt: !1758)
!1764 = !DILocation(line: 146, column: 70, scope: !1627, inlinedAt: !1758)
!1765 = !DILocation(line: 146, column: 80, scope: !1627, inlinedAt: !1758)
!1766 = !DILocation(line: 146, column: 90, scope: !1627, inlinedAt: !1758)
!1767 = !DILocation(line: 146, column: 100, scope: !1627, inlinedAt: !1758)
!1768 = !DILocation(line: 146, column: 110, scope: !1627, inlinedAt: !1758)
!1769 = !DILocation(line: 146, column: 120, scope: !1627, inlinedAt: !1758)
!1770 = !DILocation(line: 148, column: 7, scope: !1654, inlinedAt: !1758)
!1771 = !DILocation(line: 132, column: 25, scope: !1656, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 153, column: 16, scope: !1670, inlinedAt: !1758)
!1773 = !DILocation(line: 132, column: 41, scope: !1656, inlinedAt: !1772)
!1774 = !DILocation(line: 132, column: 50, scope: !1656, inlinedAt: !1772)
!1775 = !DILocation(line: 132, column: 60, scope: !1656, inlinedAt: !1772)
!1776 = !DILocation(line: 132, column: 70, scope: !1656, inlinedAt: !1772)
!1777 = !DILocation(line: 132, column: 80, scope: !1656, inlinedAt: !1772)
!1778 = !DILocation(line: 132, column: 90, scope: !1656, inlinedAt: !1772)
!1779 = !DILocation(line: 132, column: 100, scope: !1656, inlinedAt: !1772)
!1780 = !DILocation(line: 132, column: 110, scope: !1656, inlinedAt: !1772)
!1781 = !DILocation(line: 134, column: 7, scope: !1681, inlinedAt: !1772)
!1782 = !DILocation(line: 134, column: 7, scope: !1656, inlinedAt: !1772)
!1783 = !DILocation(line: 118, column: 25, scope: !1683, inlinedAt: !1784)
!1784 = distinct !DILocation(line: 139, column: 16, scope: !1696, inlinedAt: !1772)
!1785 = !DILocation(line: 118, column: 41, scope: !1683, inlinedAt: !1784)
!1786 = !DILocation(line: 118, column: 50, scope: !1683, inlinedAt: !1784)
!1787 = !DILocation(line: 118, column: 60, scope: !1683, inlinedAt: !1784)
!1788 = !DILocation(line: 118, column: 70, scope: !1683, inlinedAt: !1784)
!1789 = !DILocation(line: 118, column: 80, scope: !1683, inlinedAt: !1784)
!1790 = !DILocation(line: 118, column: 90, scope: !1683, inlinedAt: !1784)
!1791 = !DILocation(line: 118, column: 100, scope: !1683, inlinedAt: !1784)
!1792 = !DILocation(line: 120, column: 7, scope: !1706, inlinedAt: !1784)
!1793 = !DILocation(line: 120, column: 7, scope: !1683, inlinedAt: !1784)
!1794 = !DILocation(line: 104, column: 25, scope: !1709, inlinedAt: !1795)
!1795 = distinct !DILocation(line: 125, column: 16, scope: !1721, inlinedAt: !1784)
!1796 = !DILocation(line: 104, column: 41, scope: !1709, inlinedAt: !1795)
!1797 = !DILocation(line: 104, column: 50, scope: !1709, inlinedAt: !1795)
!1798 = !DILocation(line: 104, column: 60, scope: !1709, inlinedAt: !1795)
!1799 = !DILocation(line: 104, column: 70, scope: !1709, inlinedAt: !1795)
!1800 = !DILocation(line: 104, column: 80, scope: !1709, inlinedAt: !1795)
!1801 = !DILocation(line: 104, column: 90, scope: !1709, inlinedAt: !1795)
!1802 = !DILocation(line: 106, column: 7, scope: !1730, inlinedAt: !1795)
!1803 = !DILocation(line: 106, column: 7, scope: !1709, inlinedAt: !1795)
!1804 = !DILocation(line: 90, column: 25, scope: !1733, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 111, column: 16, scope: !1744, inlinedAt: !1795)
!1806 = !DILocation(line: 90, column: 41, scope: !1733, inlinedAt: !1805)
!1807 = !DILocation(line: 90, column: 50, scope: !1733, inlinedAt: !1805)
!1808 = !DILocation(line: 90, column: 60, scope: !1733, inlinedAt: !1805)
!1809 = !DILocation(line: 90, column: 70, scope: !1733, inlinedAt: !1805)
!1810 = !DILocation(line: 90, column: 80, scope: !1733, inlinedAt: !1805)
!1811 = !DILocation(line: 92, column: 7, scope: !1752, inlinedAt: !1805)
!1812 = !DILocation(line: 92, column: 7, scope: !1733, inlinedAt: !1805)
!1813 = !DILocalVariable(name: "s1", arg: 1, scope: !1814, file: !1597, line: 76, type: !21)
!1814 = distinct !DISubprogram(name: "strcaseeq6", scope: !1597, file: !1597, line: 76, type: !1815, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1817)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!33, !21, !21, !23, !23, !23}
!1817 = !{!1813, !1818, !1819, !1820, !1821}
!1818 = !DILocalVariable(name: "s2", arg: 2, scope: !1814, file: !1597, line: 76, type: !21)
!1819 = !DILocalVariable(name: "s26", arg: 3, scope: !1814, file: !1597, line: 76, type: !23)
!1820 = !DILocalVariable(name: "s27", arg: 4, scope: !1814, file: !1597, line: 76, type: !23)
!1821 = !DILocalVariable(name: "s28", arg: 5, scope: !1814, file: !1597, line: 76, type: !23)
!1822 = !DILocation(line: 76, column: 25, scope: !1814, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 97, column: 16, scope: !1824, inlinedAt: !1805)
!1824 = distinct !DILexicalBlock(scope: !1825, file: !1597, line: 94, column: 11)
!1825 = distinct !DILexicalBlock(scope: !1752, file: !1597, line: 93, column: 5)
!1826 = !DILocation(line: 76, column: 41, scope: !1814, inlinedAt: !1823)
!1827 = !DILocation(line: 76, column: 50, scope: !1814, inlinedAt: !1823)
!1828 = !DILocation(line: 76, column: 60, scope: !1814, inlinedAt: !1823)
!1829 = !DILocation(line: 76, column: 70, scope: !1814, inlinedAt: !1823)
!1830 = !DILocation(line: 78, column: 7, scope: !1831, inlinedAt: !1823)
!1831 = distinct !DILexicalBlock(scope: !1814, file: !1597, line: 78, column: 7)
!1832 = !DILocation(line: 78, column: 7, scope: !1814, inlinedAt: !1823)
!1833 = !DILocalVariable(name: "s1", arg: 1, scope: !1834, file: !1597, line: 62, type: !21)
!1834 = distinct !DISubprogram(name: "strcaseeq7", scope: !1597, file: !1597, line: 62, type: !1835, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1837)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!33, !21, !21, !23, !23}
!1837 = !{!1833, !1838, !1839, !1840}
!1838 = !DILocalVariable(name: "s2", arg: 2, scope: !1834, file: !1597, line: 62, type: !21)
!1839 = !DILocalVariable(name: "s27", arg: 3, scope: !1834, file: !1597, line: 62, type: !23)
!1840 = !DILocalVariable(name: "s28", arg: 4, scope: !1834, file: !1597, line: 62, type: !23)
!1841 = !DILocation(line: 62, column: 25, scope: !1834, inlinedAt: !1842)
!1842 = distinct !DILocation(line: 83, column: 16, scope: !1843, inlinedAt: !1823)
!1843 = distinct !DILexicalBlock(scope: !1844, file: !1597, line: 80, column: 11)
!1844 = distinct !DILexicalBlock(scope: !1831, file: !1597, line: 79, column: 5)
!1845 = !DILocation(line: 62, column: 41, scope: !1834, inlinedAt: !1842)
!1846 = !DILocation(line: 62, column: 50, scope: !1834, inlinedAt: !1842)
!1847 = !DILocation(line: 62, column: 60, scope: !1834, inlinedAt: !1842)
!1848 = !DILocation(line: 64, column: 7, scope: !1849, inlinedAt: !1842)
!1849 = distinct !DILexicalBlock(scope: !1834, file: !1597, line: 64, column: 7)
!1850 = !DILocation(line: 236, column: 7, scope: !1578)
!1851 = !DILocation(line: 237, column: 12, scope: !1760)
!1852 = !DILocation(line: 237, column: 21, scope: !1760)
!1853 = !DILocation(line: 237, column: 5, scope: !1760)
!1854 = !DILocation(line: 239, column: 13, scope: !1578)
!1855 = !DILocation(line: 239, column: 11, scope: !1578)
!1856 = !DILocation(line: 239, column: 3, scope: !1578)
!1857 = !DILocation(line: 0, scope: !1578)
!1858 = !DILocation(line: 240, column: 1, scope: !1578)
!1859 = distinct !DISubprogram(name: "quotearg_alloc", scope: !118, file: !118, line: 799, type: !1860, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1862)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!82, !21, !112, !895}
!1862 = !{!1863, !1864, !1865}
!1863 = !DILocalVariable(name: "arg", arg: 1, scope: !1859, file: !118, line: 799, type: !21)
!1864 = !DILocalVariable(name: "argsize", arg: 2, scope: !1859, file: !118, line: 799, type: !112)
!1865 = !DILocalVariable(name: "o", arg: 3, scope: !1859, file: !118, line: 800, type: !895)
!1866 = !DILocation(line: 799, column: 29, scope: !1859)
!1867 = !DILocation(line: 799, column: 41, scope: !1859)
!1868 = !DILocation(line: 800, column: 47, scope: !1859)
!1869 = !DILocalVariable(name: "arg", arg: 1, scope: !1870, file: !118, line: 812, type: !21)
!1870 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !118, file: !118, line: 812, type: !1871, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!82, !21, !112, !182, !895}
!1873 = !{!1869, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881}
!1874 = !DILocalVariable(name: "argsize", arg: 2, scope: !1870, file: !118, line: 812, type: !112)
!1875 = !DILocalVariable(name: "size", arg: 3, scope: !1870, file: !118, line: 812, type: !182)
!1876 = !DILocalVariable(name: "o", arg: 4, scope: !1870, file: !118, line: 813, type: !895)
!1877 = !DILocalVariable(name: "p", scope: !1870, file: !118, line: 815, type: !895)
!1878 = !DILocalVariable(name: "e", scope: !1870, file: !118, line: 816, type: !33)
!1879 = !DILocalVariable(name: "flags", scope: !1870, file: !118, line: 818, type: !33)
!1880 = !DILocalVariable(name: "bufsize", scope: !1870, file: !118, line: 819, type: !112)
!1881 = !DILocalVariable(name: "buf", scope: !1870, file: !118, line: 823, type: !82)
!1882 = !DILocation(line: 812, column: 33, scope: !1870, inlinedAt: !1883)
!1883 = distinct !DILocation(line: 802, column: 10, scope: !1859)
!1884 = !DILocation(line: 812, column: 45, scope: !1870, inlinedAt: !1883)
!1885 = !DILocation(line: 812, column: 62, scope: !1870, inlinedAt: !1883)
!1886 = !DILocation(line: 813, column: 51, scope: !1870, inlinedAt: !1883)
!1887 = !DILocation(line: 815, column: 37, scope: !1870, inlinedAt: !1883)
!1888 = !DILocation(line: 815, column: 33, scope: !1870, inlinedAt: !1883)
!1889 = !DILocation(line: 816, column: 11, scope: !1870, inlinedAt: !1883)
!1890 = !DILocation(line: 816, column: 7, scope: !1870, inlinedAt: !1883)
!1891 = !DILocation(line: 818, column: 18, scope: !1870, inlinedAt: !1883)
!1892 = !DILocation(line: 818, column: 24, scope: !1870, inlinedAt: !1883)
!1893 = !DILocation(line: 818, column: 7, scope: !1870, inlinedAt: !1883)
!1894 = !DILocation(line: 819, column: 69, scope: !1870, inlinedAt: !1883)
!1895 = !DILocation(line: 820, column: 53, scope: !1870, inlinedAt: !1883)
!1896 = !DILocation(line: 821, column: 49, scope: !1870, inlinedAt: !1883)
!1897 = !DILocation(line: 822, column: 49, scope: !1870, inlinedAt: !1883)
!1898 = !DILocation(line: 819, column: 20, scope: !1870, inlinedAt: !1883)
!1899 = !DILocation(line: 822, column: 62, scope: !1870, inlinedAt: !1883)
!1900 = !DILocation(line: 819, column: 10, scope: !1870, inlinedAt: !1883)
!1901 = !DILocalVariable(name: "n", arg: 1, scope: !1902, file: !178, line: 216, type: !112)
!1902 = distinct !DISubprogram(name: "xcharalloc", scope: !178, file: !178, line: 216, type: !1903, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1905)
!1903 = !DISubroutineType(types: !1904)
!1904 = !{!82, !112}
!1905 = !{!1901}
!1906 = !DILocation(line: 216, column: 20, scope: !1902, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 823, column: 15, scope: !1870, inlinedAt: !1883)
!1908 = !DILocation(line: 218, column: 10, scope: !1902, inlinedAt: !1907)
!1909 = !DILocation(line: 823, column: 9, scope: !1870, inlinedAt: !1883)
!1910 = !DILocation(line: 824, column: 60, scope: !1870, inlinedAt: !1883)
!1911 = !DILocation(line: 826, column: 32, scope: !1870, inlinedAt: !1883)
!1912 = !DILocation(line: 826, column: 47, scope: !1870, inlinedAt: !1883)
!1913 = !DILocation(line: 824, column: 3, scope: !1870, inlinedAt: !1883)
!1914 = !DILocation(line: 827, column: 9, scope: !1870, inlinedAt: !1883)
!1915 = !DILocation(line: 802, column: 3, scope: !1859)
!1916 = !DILocation(line: 812, column: 33, scope: !1870)
!1917 = !DILocation(line: 812, column: 45, scope: !1870)
!1918 = !DILocation(line: 812, column: 62, scope: !1870)
!1919 = !DILocation(line: 813, column: 51, scope: !1870)
!1920 = !DILocation(line: 815, column: 37, scope: !1870)
!1921 = !DILocation(line: 815, column: 33, scope: !1870)
!1922 = !DILocation(line: 816, column: 11, scope: !1870)
!1923 = !DILocation(line: 816, column: 7, scope: !1870)
!1924 = !DILocation(line: 818, column: 18, scope: !1870)
!1925 = !DILocation(line: 818, column: 27, scope: !1870)
!1926 = !DILocation(line: 818, column: 24, scope: !1870)
!1927 = !DILocation(line: 818, column: 7, scope: !1870)
!1928 = !DILocation(line: 819, column: 69, scope: !1870)
!1929 = !DILocation(line: 820, column: 53, scope: !1870)
!1930 = !DILocation(line: 821, column: 49, scope: !1870)
!1931 = !DILocation(line: 822, column: 49, scope: !1870)
!1932 = !DILocation(line: 819, column: 20, scope: !1870)
!1933 = !DILocation(line: 822, column: 62, scope: !1870)
!1934 = !DILocation(line: 819, column: 10, scope: !1870)
!1935 = !DILocation(line: 216, column: 20, scope: !1902, inlinedAt: !1936)
!1936 = distinct !DILocation(line: 823, column: 15, scope: !1870)
!1937 = !DILocation(line: 218, column: 10, scope: !1902, inlinedAt: !1936)
!1938 = !DILocation(line: 823, column: 9, scope: !1870)
!1939 = !DILocation(line: 824, column: 60, scope: !1870)
!1940 = !DILocation(line: 826, column: 32, scope: !1870)
!1941 = !DILocation(line: 826, column: 47, scope: !1870)
!1942 = !DILocation(line: 824, column: 3, scope: !1870)
!1943 = !DILocation(line: 827, column: 9, scope: !1870)
!1944 = !DILocation(line: 828, column: 7, scope: !1870)
!1945 = !DILocation(line: 829, column: 11, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1870, file: !118, line: 828, column: 7)
!1947 = !{!1948, !1948, i64 0}
!1948 = !{!"long", !638, i64 0}
!1949 = !DILocation(line: 829, column: 5, scope: !1946)
!1950 = !DILocation(line: 830, column: 3, scope: !1870)
!1951 = distinct !DISubprogram(name: "quotearg_free", scope: !118, file: !118, line: 848, type: !747, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1952)
!1952 = !{!1953, !1954}
!1953 = !DILocalVariable(name: "sv", scope: !1951, file: !118, line: 850, type: !144)
!1954 = !DILocalVariable(name: "i", scope: !1951, file: !118, line: 851, type: !33)
!1955 = !DILocation(line: 850, column: 24, scope: !1951)
!1956 = !DILocation(line: 850, column: 19, scope: !1951)
!1957 = !DILocation(line: 851, column: 7, scope: !1951)
!1958 = !DILocation(line: 852, column: 19, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !118, line: 852, column: 3)
!1960 = distinct !DILexicalBlock(scope: !1951, file: !118, line: 852, column: 3)
!1961 = !DILocation(line: 852, column: 17, scope: !1959)
!1962 = !DILocation(line: 852, column: 3, scope: !1960)
!1963 = !DILocation(line: 853, column: 17, scope: !1959)
!1964 = !{!1965, !637, i64 8}
!1965 = !{!"slotvec", !1948, i64 0, !637, i64 8}
!1966 = !DILocation(line: 853, column: 5, scope: !1959)
!1967 = !DILocation(line: 852, column: 28, scope: !1959)
!1968 = distinct !{!1968, !1962, !1969}
!1969 = !DILocation(line: 853, column: 20, scope: !1960)
!1970 = !DILocation(line: 854, column: 13, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1951, file: !118, line: 854, column: 7)
!1972 = !DILocation(line: 854, column: 17, scope: !1971)
!1973 = !DILocation(line: 854, column: 7, scope: !1951)
!1974 = !DILocation(line: 856, column: 7, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1971, file: !118, line: 855, column: 5)
!1976 = !DILocation(line: 857, column: 21, scope: !1975)
!1977 = !{!1965, !1948, i64 0}
!1978 = !DILocation(line: 858, column: 20, scope: !1975)
!1979 = !DILocation(line: 859, column: 5, scope: !1975)
!1980 = !DILocation(line: 860, column: 10, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1951, file: !118, line: 860, column: 7)
!1982 = !DILocation(line: 860, column: 7, scope: !1951)
!1983 = !DILocation(line: 862, column: 13, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1981, file: !118, line: 861, column: 5)
!1985 = !DILocation(line: 862, column: 7, scope: !1984)
!1986 = !DILocation(line: 863, column: 15, scope: !1984)
!1987 = !DILocation(line: 864, column: 5, scope: !1984)
!1988 = !DILocation(line: 865, column: 10, scope: !1951)
!1989 = !DILocation(line: 866, column: 1, scope: !1951)
!1990 = distinct !DISubprogram(name: "quotearg_n", scope: !118, file: !118, line: 931, type: !1991, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1993)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!82, !33, !21}
!1993 = !{!1994, !1995}
!1994 = !DILocalVariable(name: "n", arg: 1, scope: !1990, file: !118, line: 931, type: !33)
!1995 = !DILocalVariable(name: "arg", arg: 2, scope: !1990, file: !118, line: 931, type: !21)
!1996 = !DILocation(line: 931, column: 17, scope: !1990)
!1997 = !DILocation(line: 931, column: 32, scope: !1990)
!1998 = !DILocation(line: 933, column: 10, scope: !1990)
!1999 = !DILocation(line: 933, column: 3, scope: !1990)
!2000 = distinct !DISubprogram(name: "quotearg_n_options", scope: !118, file: !118, line: 877, type: !2001, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!82, !33, !21, !112, !895}
!2003 = !{!2004, !2005, !2006, !2007, !2008, !2009, !2010, !2013, !2014, !2016, !2017, !2018}
!2004 = !DILocalVariable(name: "n", arg: 1, scope: !2000, file: !118, line: 877, type: !33)
!2005 = !DILocalVariable(name: "arg", arg: 2, scope: !2000, file: !118, line: 877, type: !21)
!2006 = !DILocalVariable(name: "argsize", arg: 3, scope: !2000, file: !118, line: 877, type: !112)
!2007 = !DILocalVariable(name: "options", arg: 4, scope: !2000, file: !118, line: 878, type: !895)
!2008 = !DILocalVariable(name: "e", scope: !2000, file: !118, line: 880, type: !33)
!2009 = !DILocalVariable(name: "sv", scope: !2000, file: !118, line: 882, type: !144)
!2010 = !DILocalVariable(name: "preallocated", scope: !2011, file: !118, line: 889, type: !53)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !118, line: 888, column: 5)
!2012 = distinct !DILexicalBlock(scope: !2000, file: !118, line: 887, column: 7)
!2013 = !DILocalVariable(name: "nmax", scope: !2011, file: !118, line: 890, type: !33)
!2014 = !DILocalVariable(name: "size", scope: !2015, file: !118, line: 903, type: !112)
!2015 = distinct !DILexicalBlock(scope: !2000, file: !118, line: 902, column: 3)
!2016 = !DILocalVariable(name: "val", scope: !2015, file: !118, line: 904, type: !82)
!2017 = !DILocalVariable(name: "flags", scope: !2015, file: !118, line: 906, type: !33)
!2018 = !DILocalVariable(name: "qsize", scope: !2015, file: !118, line: 907, type: !112)
!2019 = !DILocation(line: 877, column: 25, scope: !2000)
!2020 = !DILocation(line: 877, column: 40, scope: !2000)
!2021 = !DILocation(line: 877, column: 52, scope: !2000)
!2022 = !DILocation(line: 878, column: 51, scope: !2000)
!2023 = !DILocation(line: 880, column: 11, scope: !2000)
!2024 = !DILocation(line: 880, column: 7, scope: !2000)
!2025 = !DILocation(line: 882, column: 24, scope: !2000)
!2026 = !DILocation(line: 882, column: 19, scope: !2000)
!2027 = !DILocation(line: 884, column: 9, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2000, file: !118, line: 884, column: 7)
!2029 = !DILocation(line: 884, column: 7, scope: !2000)
!2030 = !DILocation(line: 885, column: 5, scope: !2028)
!2031 = !DILocation(line: 887, column: 7, scope: !2012)
!2032 = !DILocation(line: 887, column: 14, scope: !2012)
!2033 = !DILocation(line: 887, column: 7, scope: !2000)
!2034 = !DILocation(line: 889, column: 31, scope: !2011)
!2035 = !DILocation(line: 890, column: 11, scope: !2011)
!2036 = !DILocation(line: 892, column: 16, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2011, file: !118, line: 892, column: 11)
!2038 = !DILocation(line: 892, column: 11, scope: !2011)
!2039 = !DILocation(line: 893, column: 9, scope: !2037)
!2040 = !DILocation(line: 895, column: 32, scope: !2011)
!2041 = !DILocation(line: 895, column: 61, scope: !2011)
!2042 = !DILocation(line: 895, column: 58, scope: !2011)
!2043 = !DILocation(line: 895, column: 66, scope: !2011)
!2044 = !DILocation(line: 895, column: 22, scope: !2011)
!2045 = !DILocation(line: 895, column: 15, scope: !2011)
!2046 = !DILocation(line: 896, column: 11, scope: !2011)
!2047 = !DILocation(line: 897, column: 15, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2011, file: !118, line: 896, column: 11)
!2049 = !{i64 0, i64 8, !1947, i64 8, i64 8, !636}
!2050 = !DILocation(line: 897, column: 9, scope: !2048)
!2051 = !DILocation(line: 898, column: 20, scope: !2011)
!2052 = !DILocation(line: 898, column: 18, scope: !2011)
!2053 = !DILocation(line: 898, column: 7, scope: !2011)
!2054 = !DILocation(line: 898, column: 38, scope: !2011)
!2055 = !DILocation(line: 898, column: 31, scope: !2011)
!2056 = !DILocation(line: 898, column: 48, scope: !2011)
!2057 = !DILocation(line: 899, column: 14, scope: !2011)
!2058 = !DILocation(line: 900, column: 5, scope: !2011)
!2059 = !DILocation(line: 0, scope: !2000)
!2060 = !DILocation(line: 903, column: 19, scope: !2015)
!2061 = !DILocation(line: 903, column: 25, scope: !2015)
!2062 = !DILocation(line: 903, column: 12, scope: !2015)
!2063 = !DILocation(line: 904, column: 23, scope: !2015)
!2064 = !DILocation(line: 904, column: 11, scope: !2015)
!2065 = !DILocation(line: 906, column: 26, scope: !2015)
!2066 = !DILocation(line: 906, column: 32, scope: !2015)
!2067 = !DILocation(line: 906, column: 9, scope: !2015)
!2068 = !DILocation(line: 908, column: 55, scope: !2015)
!2069 = !DILocation(line: 909, column: 46, scope: !2015)
!2070 = !DILocation(line: 910, column: 55, scope: !2015)
!2071 = !DILocation(line: 911, column: 55, scope: !2015)
!2072 = !DILocation(line: 907, column: 20, scope: !2015)
!2073 = !DILocation(line: 907, column: 12, scope: !2015)
!2074 = !DILocation(line: 913, column: 14, scope: !2075)
!2075 = distinct !DILexicalBlock(scope: !2015, file: !118, line: 913, column: 9)
!2076 = !DILocation(line: 913, column: 9, scope: !2015)
!2077 = !DILocation(line: 915, column: 35, scope: !2078)
!2078 = distinct !DILexicalBlock(scope: !2075, file: !118, line: 914, column: 7)
!2079 = !DILocation(line: 915, column: 20, scope: !2078)
!2080 = !DILocation(line: 916, column: 17, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2078, file: !118, line: 916, column: 13)
!2082 = !DILocation(line: 916, column: 13, scope: !2078)
!2083 = !DILocation(line: 917, column: 11, scope: !2081)
!2084 = !DILocation(line: 216, column: 20, scope: !1902, inlinedAt: !2085)
!2085 = distinct !DILocation(line: 918, column: 27, scope: !2078)
!2086 = !DILocation(line: 218, column: 10, scope: !1902, inlinedAt: !2085)
!2087 = !DILocation(line: 918, column: 19, scope: !2078)
!2088 = !DILocation(line: 919, column: 69, scope: !2078)
!2089 = !DILocation(line: 921, column: 44, scope: !2078)
!2090 = !DILocation(line: 922, column: 44, scope: !2078)
!2091 = !DILocation(line: 919, column: 9, scope: !2078)
!2092 = !DILocation(line: 923, column: 7, scope: !2078)
!2093 = !DILocation(line: 0, scope: !2015)
!2094 = !DILocation(line: 925, column: 11, scope: !2015)
!2095 = !DILocation(line: 926, column: 5, scope: !2015)
!2096 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !118, file: !118, line: 937, type: !2097, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!82, !33, !21, !112}
!2099 = !{!2100, !2101, !2102}
!2100 = !DILocalVariable(name: "n", arg: 1, scope: !2096, file: !118, line: 937, type: !33)
!2101 = !DILocalVariable(name: "arg", arg: 2, scope: !2096, file: !118, line: 937, type: !21)
!2102 = !DILocalVariable(name: "argsize", arg: 3, scope: !2096, file: !118, line: 937, type: !112)
!2103 = !DILocation(line: 937, column: 21, scope: !2096)
!2104 = !DILocation(line: 937, column: 36, scope: !2096)
!2105 = !DILocation(line: 937, column: 48, scope: !2096)
!2106 = !DILocation(line: 939, column: 10, scope: !2096)
!2107 = !DILocation(line: 939, column: 3, scope: !2096)
!2108 = distinct !DISubprogram(name: "quotearg", scope: !118, file: !118, line: 943, type: !2109, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2111)
!2109 = !DISubroutineType(types: !2110)
!2110 = !{!82, !21}
!2111 = !{!2112}
!2112 = !DILocalVariable(name: "arg", arg: 1, scope: !2108, file: !118, line: 943, type: !21)
!2113 = !DILocation(line: 943, column: 23, scope: !2108)
!2114 = !DILocation(line: 931, column: 17, scope: !1990, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 945, column: 10, scope: !2108)
!2116 = !DILocation(line: 931, column: 32, scope: !1990, inlinedAt: !2115)
!2117 = !DILocation(line: 933, column: 10, scope: !1990, inlinedAt: !2115)
!2118 = !DILocation(line: 945, column: 3, scope: !2108)
!2119 = distinct !DISubprogram(name: "quotearg_mem", scope: !118, file: !118, line: 949, type: !2120, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2122)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!82, !21, !112}
!2122 = !{!2123, !2124}
!2123 = !DILocalVariable(name: "arg", arg: 1, scope: !2119, file: !118, line: 949, type: !21)
!2124 = !DILocalVariable(name: "argsize", arg: 2, scope: !2119, file: !118, line: 949, type: !112)
!2125 = !DILocation(line: 949, column: 27, scope: !2119)
!2126 = !DILocation(line: 949, column: 39, scope: !2119)
!2127 = !DILocation(line: 937, column: 21, scope: !2096, inlinedAt: !2128)
!2128 = distinct !DILocation(line: 951, column: 10, scope: !2119)
!2129 = !DILocation(line: 937, column: 36, scope: !2096, inlinedAt: !2128)
!2130 = !DILocation(line: 937, column: 48, scope: !2096, inlinedAt: !2128)
!2131 = !DILocation(line: 939, column: 10, scope: !2096, inlinedAt: !2128)
!2132 = !DILocation(line: 951, column: 3, scope: !2119)
!2133 = distinct !DISubprogram(name: "quotearg_n_style", scope: !118, file: !118, line: 955, type: !2134, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2136)
!2134 = !DISubroutineType(types: !2135)
!2135 = !{!82, !33, !5, !21}
!2136 = !{!2137, !2138, !2139, !2140}
!2137 = !DILocalVariable(name: "n", arg: 1, scope: !2133, file: !118, line: 955, type: !33)
!2138 = !DILocalVariable(name: "s", arg: 2, scope: !2133, file: !118, line: 955, type: !5)
!2139 = !DILocalVariable(name: "arg", arg: 3, scope: !2133, file: !118, line: 955, type: !21)
!2140 = !DILocalVariable(name: "o", scope: !2133, file: !118, line: 957, type: !896)
!2141 = !DILocation(line: 955, column: 23, scope: !2133)
!2142 = !DILocation(line: 955, column: 45, scope: !2133)
!2143 = !DILocation(line: 955, column: 60, scope: !2133)
!2144 = !DILocation(line: 957, column: 3, scope: !2133)
!2145 = !DILocation(line: 957, column: 32, scope: !2133)
!2146 = !DILocalVariable(name: "style", arg: 1, scope: !2147, file: !118, line: 193, type: !5)
!2147 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !118, file: !118, line: 193, type: !2148, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2150)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!125, !5}
!2150 = !{!2146, !2151}
!2151 = !DILocalVariable(name: "o", scope: !2147, file: !118, line: 195, type: !125)
!2152 = !DILocation(line: 193, column: 48, scope: !2147, inlinedAt: !2153)
!2153 = distinct !DILocation(line: 957, column: 36, scope: !2133)
!2154 = !DILocation(line: 195, column: 26, scope: !2147, inlinedAt: !2153)
!2155 = !{!2156}
!2156 = distinct !{!2156, !2157, !"quoting_options_from_style: argument 0"}
!2157 = distinct !{!2157, !"quoting_options_from_style"}
!2158 = !DILocation(line: 196, column: 13, scope: !2159, inlinedAt: !2153)
!2159 = distinct !DILexicalBlock(scope: !2147, file: !118, line: 196, column: 7)
!2160 = !DILocation(line: 196, column: 7, scope: !2147, inlinedAt: !2153)
!2161 = !DILocation(line: 197, column: 5, scope: !2159, inlinedAt: !2153)
!2162 = !DILocation(line: 198, column: 5, scope: !2147, inlinedAt: !2153)
!2163 = !DILocation(line: 198, column: 11, scope: !2147, inlinedAt: !2153)
!2164 = !DILocation(line: 958, column: 10, scope: !2133)
!2165 = !DILocation(line: 959, column: 1, scope: !2133)
!2166 = !DILocation(line: 958, column: 3, scope: !2133)
!2167 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !118, file: !118, line: 962, type: !2168, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2170)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!82, !33, !5, !21, !112}
!2170 = !{!2171, !2172, !2173, !2174, !2175}
!2171 = !DILocalVariable(name: "n", arg: 1, scope: !2167, file: !118, line: 962, type: !33)
!2172 = !DILocalVariable(name: "s", arg: 2, scope: !2167, file: !118, line: 962, type: !5)
!2173 = !DILocalVariable(name: "arg", arg: 3, scope: !2167, file: !118, line: 963, type: !21)
!2174 = !DILocalVariable(name: "argsize", arg: 4, scope: !2167, file: !118, line: 963, type: !112)
!2175 = !DILocalVariable(name: "o", scope: !2167, file: !118, line: 965, type: !896)
!2176 = !DILocation(line: 962, column: 27, scope: !2167)
!2177 = !DILocation(line: 962, column: 49, scope: !2167)
!2178 = !DILocation(line: 963, column: 35, scope: !2167)
!2179 = !DILocation(line: 963, column: 47, scope: !2167)
!2180 = !DILocation(line: 965, column: 3, scope: !2167)
!2181 = !DILocation(line: 965, column: 32, scope: !2167)
!2182 = !DILocation(line: 193, column: 48, scope: !2147, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 965, column: 36, scope: !2167)
!2184 = !DILocation(line: 195, column: 26, scope: !2147, inlinedAt: !2183)
!2185 = !{!2186}
!2186 = distinct !{!2186, !2187, !"quoting_options_from_style: argument 0"}
!2187 = distinct !{!2187, !"quoting_options_from_style"}
!2188 = !DILocation(line: 196, column: 13, scope: !2159, inlinedAt: !2183)
!2189 = !DILocation(line: 196, column: 7, scope: !2147, inlinedAt: !2183)
!2190 = !DILocation(line: 197, column: 5, scope: !2159, inlinedAt: !2183)
!2191 = !DILocation(line: 198, column: 5, scope: !2147, inlinedAt: !2183)
!2192 = !DILocation(line: 198, column: 11, scope: !2147, inlinedAt: !2183)
!2193 = !DILocation(line: 966, column: 10, scope: !2167)
!2194 = !DILocation(line: 967, column: 1, scope: !2167)
!2195 = !DILocation(line: 966, column: 3, scope: !2167)
!2196 = distinct !DISubprogram(name: "quotearg_style", scope: !118, file: !118, line: 970, type: !2197, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2199)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{!82, !5, !21}
!2199 = !{!2200, !2201}
!2200 = !DILocalVariable(name: "s", arg: 1, scope: !2196, file: !118, line: 970, type: !5)
!2201 = !DILocalVariable(name: "arg", arg: 2, scope: !2196, file: !118, line: 970, type: !21)
!2202 = !DILocation(line: 970, column: 36, scope: !2196)
!2203 = !DILocation(line: 970, column: 51, scope: !2196)
!2204 = !DILocation(line: 955, column: 23, scope: !2133, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 972, column: 10, scope: !2196)
!2206 = !DILocation(line: 955, column: 45, scope: !2133, inlinedAt: !2205)
!2207 = !DILocation(line: 955, column: 60, scope: !2133, inlinedAt: !2205)
!2208 = !DILocation(line: 957, column: 3, scope: !2133, inlinedAt: !2205)
!2209 = !DILocation(line: 957, column: 32, scope: !2133, inlinedAt: !2205)
!2210 = !DILocation(line: 193, column: 48, scope: !2147, inlinedAt: !2211)
!2211 = distinct !DILocation(line: 957, column: 36, scope: !2133, inlinedAt: !2205)
!2212 = !DILocation(line: 195, column: 26, scope: !2147, inlinedAt: !2211)
!2213 = !{!2214}
!2214 = distinct !{!2214, !2215, !"quoting_options_from_style: argument 0"}
!2215 = distinct !{!2215, !"quoting_options_from_style"}
!2216 = !DILocation(line: 196, column: 13, scope: !2159, inlinedAt: !2211)
!2217 = !DILocation(line: 196, column: 7, scope: !2147, inlinedAt: !2211)
!2218 = !DILocation(line: 197, column: 5, scope: !2159, inlinedAt: !2211)
!2219 = !DILocation(line: 198, column: 5, scope: !2147, inlinedAt: !2211)
!2220 = !DILocation(line: 198, column: 11, scope: !2147, inlinedAt: !2211)
!2221 = !DILocation(line: 958, column: 10, scope: !2133, inlinedAt: !2205)
!2222 = !DILocation(line: 959, column: 1, scope: !2133, inlinedAt: !2205)
!2223 = !DILocation(line: 972, column: 3, scope: !2196)
!2224 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !118, file: !118, line: 976, type: !2225, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2227)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!82, !5, !21, !112}
!2227 = !{!2228, !2229, !2230}
!2228 = !DILocalVariable(name: "s", arg: 1, scope: !2224, file: !118, line: 976, type: !5)
!2229 = !DILocalVariable(name: "arg", arg: 2, scope: !2224, file: !118, line: 976, type: !21)
!2230 = !DILocalVariable(name: "argsize", arg: 3, scope: !2224, file: !118, line: 976, type: !112)
!2231 = !DILocation(line: 976, column: 40, scope: !2224)
!2232 = !DILocation(line: 976, column: 55, scope: !2224)
!2233 = !DILocation(line: 976, column: 67, scope: !2224)
!2234 = !DILocation(line: 962, column: 27, scope: !2167, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 978, column: 10, scope: !2224)
!2236 = !DILocation(line: 962, column: 49, scope: !2167, inlinedAt: !2235)
!2237 = !DILocation(line: 963, column: 35, scope: !2167, inlinedAt: !2235)
!2238 = !DILocation(line: 963, column: 47, scope: !2167, inlinedAt: !2235)
!2239 = !DILocation(line: 965, column: 3, scope: !2167, inlinedAt: !2235)
!2240 = !DILocation(line: 965, column: 32, scope: !2167, inlinedAt: !2235)
!2241 = !DILocation(line: 193, column: 48, scope: !2147, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 965, column: 36, scope: !2167, inlinedAt: !2235)
!2243 = !DILocation(line: 195, column: 26, scope: !2147, inlinedAt: !2242)
!2244 = !{!2245}
!2245 = distinct !{!2245, !2246, !"quoting_options_from_style: argument 0"}
!2246 = distinct !{!2246, !"quoting_options_from_style"}
!2247 = !DILocation(line: 196, column: 13, scope: !2159, inlinedAt: !2242)
!2248 = !DILocation(line: 196, column: 7, scope: !2147, inlinedAt: !2242)
!2249 = !DILocation(line: 197, column: 5, scope: !2159, inlinedAt: !2242)
!2250 = !DILocation(line: 198, column: 5, scope: !2147, inlinedAt: !2242)
!2251 = !DILocation(line: 198, column: 11, scope: !2147, inlinedAt: !2242)
!2252 = !DILocation(line: 966, column: 10, scope: !2167, inlinedAt: !2235)
!2253 = !DILocation(line: 967, column: 1, scope: !2167, inlinedAt: !2235)
!2254 = !DILocation(line: 978, column: 3, scope: !2224)
!2255 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !118, file: !118, line: 982, type: !2256, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2258)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!82, !21, !112, !23}
!2258 = !{!2259, !2260, !2261, !2262}
!2259 = !DILocalVariable(name: "arg", arg: 1, scope: !2255, file: !118, line: 982, type: !21)
!2260 = !DILocalVariable(name: "argsize", arg: 2, scope: !2255, file: !118, line: 982, type: !112)
!2261 = !DILocalVariable(name: "ch", arg: 3, scope: !2255, file: !118, line: 982, type: !23)
!2262 = !DILocalVariable(name: "options", scope: !2255, file: !118, line: 984, type: !125)
!2263 = !DILocation(line: 982, column: 32, scope: !2255)
!2264 = !DILocation(line: 982, column: 44, scope: !2255)
!2265 = !DILocation(line: 982, column: 58, scope: !2255)
!2266 = !DILocation(line: 984, column: 3, scope: !2255)
!2267 = !DILocation(line: 985, column: 13, scope: !2255)
!2268 = !{i64 0, i64 4, !1124, i64 4, i64 4, !703, i64 8, i64 32, !1124, i64 40, i64 8, !636, i64 48, i64 8, !636}
!2269 = !DILocation(line: 984, column: 26, scope: !2255)
!2270 = !DILocation(line: 152, column: 43, scope: !917, inlinedAt: !2271)
!2271 = distinct !DILocation(line: 986, column: 3, scope: !2255)
!2272 = !DILocation(line: 152, column: 51, scope: !917, inlinedAt: !2271)
!2273 = !DILocation(line: 152, column: 58, scope: !917, inlinedAt: !2271)
!2274 = !DILocation(line: 154, column: 17, scope: !917, inlinedAt: !2271)
!2275 = !DILocation(line: 156, column: 62, scope: !917, inlinedAt: !2271)
!2276 = !DILocation(line: 156, column: 57, scope: !917, inlinedAt: !2271)
!2277 = !DILocation(line: 155, column: 17, scope: !917, inlinedAt: !2271)
!2278 = !DILocation(line: 157, column: 15, scope: !917, inlinedAt: !2271)
!2279 = !DILocation(line: 157, column: 7, scope: !917, inlinedAt: !2271)
!2280 = !DILocation(line: 158, column: 12, scope: !917, inlinedAt: !2271)
!2281 = !DILocation(line: 158, column: 15, scope: !917, inlinedAt: !2271)
!2282 = !DILocation(line: 158, column: 25, scope: !917, inlinedAt: !2271)
!2283 = !DILocation(line: 158, column: 7, scope: !917, inlinedAt: !2271)
!2284 = !DILocation(line: 159, column: 18, scope: !917, inlinedAt: !2271)
!2285 = !DILocation(line: 159, column: 23, scope: !917, inlinedAt: !2271)
!2286 = !DILocation(line: 159, column: 6, scope: !917, inlinedAt: !2271)
!2287 = !DILocation(line: 987, column: 10, scope: !2255)
!2288 = !DILocation(line: 988, column: 1, scope: !2255)
!2289 = !DILocation(line: 987, column: 3, scope: !2255)
!2290 = distinct !DISubprogram(name: "quotearg_char", scope: !118, file: !118, line: 991, type: !2291, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2293)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!82, !21, !23}
!2293 = !{!2294, !2295}
!2294 = !DILocalVariable(name: "arg", arg: 1, scope: !2290, file: !118, line: 991, type: !21)
!2295 = !DILocalVariable(name: "ch", arg: 2, scope: !2290, file: !118, line: 991, type: !23)
!2296 = !DILocation(line: 991, column: 28, scope: !2290)
!2297 = !DILocation(line: 991, column: 38, scope: !2290)
!2298 = !DILocation(line: 982, column: 32, scope: !2255, inlinedAt: !2299)
!2299 = distinct !DILocation(line: 993, column: 10, scope: !2290)
!2300 = !DILocation(line: 982, column: 44, scope: !2255, inlinedAt: !2299)
!2301 = !DILocation(line: 982, column: 58, scope: !2255, inlinedAt: !2299)
!2302 = !DILocation(line: 984, column: 3, scope: !2255, inlinedAt: !2299)
!2303 = !DILocation(line: 985, column: 13, scope: !2255, inlinedAt: !2299)
!2304 = !DILocation(line: 984, column: 26, scope: !2255, inlinedAt: !2299)
!2305 = !DILocation(line: 152, column: 43, scope: !917, inlinedAt: !2306)
!2306 = distinct !DILocation(line: 986, column: 3, scope: !2255, inlinedAt: !2299)
!2307 = !DILocation(line: 152, column: 51, scope: !917, inlinedAt: !2306)
!2308 = !DILocation(line: 152, column: 58, scope: !917, inlinedAt: !2306)
!2309 = !DILocation(line: 154, column: 17, scope: !917, inlinedAt: !2306)
!2310 = !DILocation(line: 156, column: 62, scope: !917, inlinedAt: !2306)
!2311 = !DILocation(line: 156, column: 57, scope: !917, inlinedAt: !2306)
!2312 = !DILocation(line: 155, column: 17, scope: !917, inlinedAt: !2306)
!2313 = !DILocation(line: 157, column: 15, scope: !917, inlinedAt: !2306)
!2314 = !DILocation(line: 157, column: 7, scope: !917, inlinedAt: !2306)
!2315 = !DILocation(line: 158, column: 12, scope: !917, inlinedAt: !2306)
!2316 = !DILocation(line: 158, column: 15, scope: !917, inlinedAt: !2306)
!2317 = !DILocation(line: 158, column: 25, scope: !917, inlinedAt: !2306)
!2318 = !DILocation(line: 158, column: 7, scope: !917, inlinedAt: !2306)
!2319 = !DILocation(line: 159, column: 18, scope: !917, inlinedAt: !2306)
!2320 = !DILocation(line: 159, column: 23, scope: !917, inlinedAt: !2306)
!2321 = !DILocation(line: 159, column: 6, scope: !917, inlinedAt: !2306)
!2322 = !DILocation(line: 987, column: 10, scope: !2255, inlinedAt: !2299)
!2323 = !DILocation(line: 988, column: 1, scope: !2255, inlinedAt: !2299)
!2324 = !DILocation(line: 993, column: 3, scope: !2290)
!2325 = distinct !DISubprogram(name: "quotearg_colon", scope: !118, file: !118, line: 997, type: !2109, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2326)
!2326 = !{!2327}
!2327 = !DILocalVariable(name: "arg", arg: 1, scope: !2325, file: !118, line: 997, type: !21)
!2328 = !DILocation(line: 997, column: 29, scope: !2325)
!2329 = !DILocation(line: 991, column: 28, scope: !2290, inlinedAt: !2330)
!2330 = distinct !DILocation(line: 999, column: 10, scope: !2325)
!2331 = !DILocation(line: 991, column: 38, scope: !2290, inlinedAt: !2330)
!2332 = !DILocation(line: 982, column: 32, scope: !2255, inlinedAt: !2333)
!2333 = distinct !DILocation(line: 993, column: 10, scope: !2290, inlinedAt: !2330)
!2334 = !DILocation(line: 982, column: 44, scope: !2255, inlinedAt: !2333)
!2335 = !DILocation(line: 982, column: 58, scope: !2255, inlinedAt: !2333)
!2336 = !DILocation(line: 984, column: 3, scope: !2255, inlinedAt: !2333)
!2337 = !DILocation(line: 985, column: 13, scope: !2255, inlinedAt: !2333)
!2338 = !DILocation(line: 984, column: 26, scope: !2255, inlinedAt: !2333)
!2339 = !DILocation(line: 152, column: 43, scope: !917, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 986, column: 3, scope: !2255, inlinedAt: !2333)
!2341 = !DILocation(line: 152, column: 51, scope: !917, inlinedAt: !2340)
!2342 = !DILocation(line: 152, column: 58, scope: !917, inlinedAt: !2340)
!2343 = !DILocation(line: 154, column: 17, scope: !917, inlinedAt: !2340)
!2344 = !DILocation(line: 156, column: 57, scope: !917, inlinedAt: !2340)
!2345 = !DILocation(line: 155, column: 17, scope: !917, inlinedAt: !2340)
!2346 = !DILocation(line: 157, column: 7, scope: !917, inlinedAt: !2340)
!2347 = !DILocation(line: 158, column: 12, scope: !917, inlinedAt: !2340)
!2348 = !DILocation(line: 159, column: 6, scope: !917, inlinedAt: !2340)
!2349 = !DILocation(line: 987, column: 10, scope: !2255, inlinedAt: !2333)
!2350 = !DILocation(line: 988, column: 1, scope: !2255, inlinedAt: !2333)
!2351 = !DILocation(line: 999, column: 3, scope: !2325)
!2352 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !118, file: !118, line: 1003, type: !2120, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2353)
!2353 = !{!2354, !2355}
!2354 = !DILocalVariable(name: "arg", arg: 1, scope: !2352, file: !118, line: 1003, type: !21)
!2355 = !DILocalVariable(name: "argsize", arg: 2, scope: !2352, file: !118, line: 1003, type: !112)
!2356 = !DILocation(line: 1003, column: 33, scope: !2352)
!2357 = !DILocation(line: 1003, column: 45, scope: !2352)
!2358 = !DILocation(line: 982, column: 32, scope: !2255, inlinedAt: !2359)
!2359 = distinct !DILocation(line: 1005, column: 10, scope: !2352)
!2360 = !DILocation(line: 982, column: 44, scope: !2255, inlinedAt: !2359)
!2361 = !DILocation(line: 982, column: 58, scope: !2255, inlinedAt: !2359)
!2362 = !DILocation(line: 984, column: 3, scope: !2255, inlinedAt: !2359)
!2363 = !DILocation(line: 985, column: 13, scope: !2255, inlinedAt: !2359)
!2364 = !DILocation(line: 984, column: 26, scope: !2255, inlinedAt: !2359)
!2365 = !DILocation(line: 152, column: 43, scope: !917, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 986, column: 3, scope: !2255, inlinedAt: !2359)
!2367 = !DILocation(line: 152, column: 51, scope: !917, inlinedAt: !2366)
!2368 = !DILocation(line: 152, column: 58, scope: !917, inlinedAt: !2366)
!2369 = !DILocation(line: 154, column: 17, scope: !917, inlinedAt: !2366)
!2370 = !DILocation(line: 156, column: 57, scope: !917, inlinedAt: !2366)
!2371 = !DILocation(line: 155, column: 17, scope: !917, inlinedAt: !2366)
!2372 = !DILocation(line: 157, column: 7, scope: !917, inlinedAt: !2366)
!2373 = !DILocation(line: 158, column: 12, scope: !917, inlinedAt: !2366)
!2374 = !DILocation(line: 159, column: 6, scope: !917, inlinedAt: !2366)
!2375 = !DILocation(line: 987, column: 10, scope: !2255, inlinedAt: !2359)
!2376 = !DILocation(line: 988, column: 1, scope: !2255, inlinedAt: !2359)
!2377 = !DILocation(line: 1005, column: 3, scope: !2352)
!2378 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !118, file: !118, line: 1009, type: !2134, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2379)
!2379 = !{!2380, !2381, !2382, !2383}
!2380 = !DILocalVariable(name: "n", arg: 1, scope: !2378, file: !118, line: 1009, type: !33)
!2381 = !DILocalVariable(name: "s", arg: 2, scope: !2378, file: !118, line: 1009, type: !5)
!2382 = !DILocalVariable(name: "arg", arg: 3, scope: !2378, file: !118, line: 1009, type: !21)
!2383 = !DILocalVariable(name: "options", scope: !2378, file: !118, line: 1011, type: !125)
!2384 = !DILocation(line: 195, column: 26, scope: !2147, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 1012, column: 13, scope: !2378)
!2386 = !DILocation(line: 1009, column: 29, scope: !2378)
!2387 = !DILocation(line: 1009, column: 51, scope: !2378)
!2388 = !DILocation(line: 1009, column: 66, scope: !2378)
!2389 = !DILocation(line: 1011, column: 3, scope: !2378)
!2390 = !DILocation(line: 1012, column: 13, scope: !2378)
!2391 = !DILocation(line: 193, column: 48, scope: !2147, inlinedAt: !2385)
!2392 = !{!2393}
!2393 = distinct !{!2393, !2394, !"quoting_options_from_style: argument 0"}
!2394 = distinct !{!2394, !"quoting_options_from_style"}
!2395 = !DILocation(line: 196, column: 13, scope: !2159, inlinedAt: !2385)
!2396 = !DILocation(line: 196, column: 7, scope: !2147, inlinedAt: !2385)
!2397 = !DILocation(line: 197, column: 5, scope: !2159, inlinedAt: !2385)
!2398 = !DILocation(line: 1011, column: 26, scope: !2378)
!2399 = !DILocation(line: 152, column: 43, scope: !917, inlinedAt: !2400)
!2400 = distinct !DILocation(line: 1013, column: 3, scope: !2378)
!2401 = !DILocation(line: 152, column: 51, scope: !917, inlinedAt: !2400)
!2402 = !DILocation(line: 152, column: 58, scope: !917, inlinedAt: !2400)
!2403 = !DILocation(line: 154, column: 17, scope: !917, inlinedAt: !2400)
!2404 = !DILocation(line: 156, column: 57, scope: !917, inlinedAt: !2400)
!2405 = !DILocation(line: 155, column: 17, scope: !917, inlinedAt: !2400)
!2406 = !DILocation(line: 157, column: 7, scope: !917, inlinedAt: !2400)
!2407 = !DILocation(line: 158, column: 12, scope: !917, inlinedAt: !2400)
!2408 = !DILocation(line: 159, column: 6, scope: !917, inlinedAt: !2400)
!2409 = !DILocation(line: 1014, column: 10, scope: !2378)
!2410 = !DILocation(line: 1015, column: 1, scope: !2378)
!2411 = !DILocation(line: 1014, column: 3, scope: !2378)
!2412 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !118, file: !118, line: 1018, type: !2413, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2415)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!82, !33, !21, !21, !21}
!2415 = !{!2416, !2417, !2418, !2419}
!2416 = !DILocalVariable(name: "n", arg: 1, scope: !2412, file: !118, line: 1018, type: !33)
!2417 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2412, file: !118, line: 1018, type: !21)
!2418 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2412, file: !118, line: 1019, type: !21)
!2419 = !DILocalVariable(name: "arg", arg: 4, scope: !2412, file: !118, line: 1019, type: !21)
!2420 = !DILocation(line: 1018, column: 24, scope: !2412)
!2421 = !DILocation(line: 1018, column: 39, scope: !2412)
!2422 = !DILocation(line: 1019, column: 32, scope: !2412)
!2423 = !DILocation(line: 1019, column: 57, scope: !2412)
!2424 = !DILocalVariable(name: "n", arg: 1, scope: !2425, file: !118, line: 1026, type: !33)
!2425 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !118, file: !118, line: 1026, type: !2426, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2428)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!82, !33, !21, !21, !21, !112}
!2428 = !{!2424, !2429, !2430, !2431, !2432, !2433}
!2429 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2425, file: !118, line: 1026, type: !21)
!2430 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2425, file: !118, line: 1027, type: !21)
!2431 = !DILocalVariable(name: "arg", arg: 4, scope: !2425, file: !118, line: 1028, type: !21)
!2432 = !DILocalVariable(name: "argsize", arg: 5, scope: !2425, file: !118, line: 1028, type: !112)
!2433 = !DILocalVariable(name: "o", scope: !2425, file: !118, line: 1030, type: !125)
!2434 = !DILocation(line: 1026, column: 28, scope: !2425, inlinedAt: !2435)
!2435 = distinct !DILocation(line: 1021, column: 10, scope: !2412)
!2436 = !DILocation(line: 1026, column: 43, scope: !2425, inlinedAt: !2435)
!2437 = !DILocation(line: 1027, column: 36, scope: !2425, inlinedAt: !2435)
!2438 = !DILocation(line: 1028, column: 36, scope: !2425, inlinedAt: !2435)
!2439 = !DILocation(line: 1028, column: 48, scope: !2425, inlinedAt: !2435)
!2440 = !DILocation(line: 1030, column: 3, scope: !2425, inlinedAt: !2435)
!2441 = !DILocation(line: 1030, column: 30, scope: !2425, inlinedAt: !2435)
!2442 = !DILocation(line: 1030, column: 26, scope: !2425, inlinedAt: !2435)
!2443 = !DILocation(line: 179, column: 45, scope: !966, inlinedAt: !2444)
!2444 = distinct !DILocation(line: 1031, column: 3, scope: !2425, inlinedAt: !2435)
!2445 = !DILocation(line: 180, column: 33, scope: !966, inlinedAt: !2444)
!2446 = !DILocation(line: 180, column: 57, scope: !966, inlinedAt: !2444)
!2447 = !DILocation(line: 184, column: 6, scope: !966, inlinedAt: !2444)
!2448 = !DILocation(line: 184, column: 12, scope: !966, inlinedAt: !2444)
!2449 = !DILocation(line: 185, column: 8, scope: !982, inlinedAt: !2444)
!2450 = !DILocation(line: 185, column: 23, scope: !982, inlinedAt: !2444)
!2451 = !DILocation(line: 185, column: 19, scope: !982, inlinedAt: !2444)
!2452 = !DILocation(line: 186, column: 5, scope: !982, inlinedAt: !2444)
!2453 = !DILocation(line: 187, column: 6, scope: !966, inlinedAt: !2444)
!2454 = !DILocation(line: 187, column: 17, scope: !966, inlinedAt: !2444)
!2455 = !DILocation(line: 188, column: 6, scope: !966, inlinedAt: !2444)
!2456 = !DILocation(line: 188, column: 18, scope: !966, inlinedAt: !2444)
!2457 = !DILocation(line: 1032, column: 10, scope: !2425, inlinedAt: !2435)
!2458 = !DILocation(line: 1033, column: 1, scope: !2425, inlinedAt: !2435)
!2459 = !DILocation(line: 1021, column: 3, scope: !2412)
!2460 = !DILocation(line: 1026, column: 28, scope: !2425)
!2461 = !DILocation(line: 1026, column: 43, scope: !2425)
!2462 = !DILocation(line: 1027, column: 36, scope: !2425)
!2463 = !DILocation(line: 1028, column: 36, scope: !2425)
!2464 = !DILocation(line: 1028, column: 48, scope: !2425)
!2465 = !DILocation(line: 1030, column: 3, scope: !2425)
!2466 = !DILocation(line: 1030, column: 30, scope: !2425)
!2467 = !DILocation(line: 1030, column: 26, scope: !2425)
!2468 = !DILocation(line: 179, column: 45, scope: !966, inlinedAt: !2469)
!2469 = distinct !DILocation(line: 1031, column: 3, scope: !2425)
!2470 = !DILocation(line: 180, column: 33, scope: !966, inlinedAt: !2469)
!2471 = !DILocation(line: 180, column: 57, scope: !966, inlinedAt: !2469)
!2472 = !DILocation(line: 184, column: 6, scope: !966, inlinedAt: !2469)
!2473 = !DILocation(line: 184, column: 12, scope: !966, inlinedAt: !2469)
!2474 = !DILocation(line: 185, column: 8, scope: !982, inlinedAt: !2469)
!2475 = !DILocation(line: 185, column: 23, scope: !982, inlinedAt: !2469)
!2476 = !DILocation(line: 185, column: 19, scope: !982, inlinedAt: !2469)
!2477 = !DILocation(line: 186, column: 5, scope: !982, inlinedAt: !2469)
!2478 = !DILocation(line: 187, column: 6, scope: !966, inlinedAt: !2469)
!2479 = !DILocation(line: 187, column: 17, scope: !966, inlinedAt: !2469)
!2480 = !DILocation(line: 188, column: 6, scope: !966, inlinedAt: !2469)
!2481 = !DILocation(line: 188, column: 18, scope: !966, inlinedAt: !2469)
!2482 = !DILocation(line: 1032, column: 10, scope: !2425)
!2483 = !DILocation(line: 1033, column: 1, scope: !2425)
!2484 = !DILocation(line: 1032, column: 3, scope: !2425)
!2485 = distinct !DISubprogram(name: "quotearg_custom", scope: !118, file: !118, line: 1036, type: !2486, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2488)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!82, !21, !21, !21}
!2488 = !{!2489, !2490, !2491}
!2489 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2485, file: !118, line: 1036, type: !21)
!2490 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2485, file: !118, line: 1036, type: !21)
!2491 = !DILocalVariable(name: "arg", arg: 3, scope: !2485, file: !118, line: 1037, type: !21)
!2492 = !DILocation(line: 1036, column: 30, scope: !2485)
!2493 = !DILocation(line: 1036, column: 54, scope: !2485)
!2494 = !DILocation(line: 1037, column: 30, scope: !2485)
!2495 = !DILocation(line: 1018, column: 24, scope: !2412, inlinedAt: !2496)
!2496 = distinct !DILocation(line: 1039, column: 10, scope: !2485)
!2497 = !DILocation(line: 1018, column: 39, scope: !2412, inlinedAt: !2496)
!2498 = !DILocation(line: 1019, column: 32, scope: !2412, inlinedAt: !2496)
!2499 = !DILocation(line: 1019, column: 57, scope: !2412, inlinedAt: !2496)
!2500 = !DILocation(line: 1026, column: 28, scope: !2425, inlinedAt: !2501)
!2501 = distinct !DILocation(line: 1021, column: 10, scope: !2412, inlinedAt: !2496)
!2502 = !DILocation(line: 1026, column: 43, scope: !2425, inlinedAt: !2501)
!2503 = !DILocation(line: 1027, column: 36, scope: !2425, inlinedAt: !2501)
!2504 = !DILocation(line: 1028, column: 36, scope: !2425, inlinedAt: !2501)
!2505 = !DILocation(line: 1028, column: 48, scope: !2425, inlinedAt: !2501)
!2506 = !DILocation(line: 1030, column: 3, scope: !2425, inlinedAt: !2501)
!2507 = !DILocation(line: 1030, column: 30, scope: !2425, inlinedAt: !2501)
!2508 = !DILocation(line: 1030, column: 26, scope: !2425, inlinedAt: !2501)
!2509 = !DILocation(line: 179, column: 45, scope: !966, inlinedAt: !2510)
!2510 = distinct !DILocation(line: 1031, column: 3, scope: !2425, inlinedAt: !2501)
!2511 = !DILocation(line: 180, column: 33, scope: !966, inlinedAt: !2510)
!2512 = !DILocation(line: 180, column: 57, scope: !966, inlinedAt: !2510)
!2513 = !DILocation(line: 184, column: 6, scope: !966, inlinedAt: !2510)
!2514 = !DILocation(line: 184, column: 12, scope: !966, inlinedAt: !2510)
!2515 = !DILocation(line: 185, column: 8, scope: !982, inlinedAt: !2510)
!2516 = !DILocation(line: 185, column: 23, scope: !982, inlinedAt: !2510)
!2517 = !DILocation(line: 185, column: 19, scope: !982, inlinedAt: !2510)
!2518 = !DILocation(line: 186, column: 5, scope: !982, inlinedAt: !2510)
!2519 = !DILocation(line: 187, column: 6, scope: !966, inlinedAt: !2510)
!2520 = !DILocation(line: 187, column: 17, scope: !966, inlinedAt: !2510)
!2521 = !DILocation(line: 188, column: 6, scope: !966, inlinedAt: !2510)
!2522 = !DILocation(line: 188, column: 18, scope: !966, inlinedAt: !2510)
!2523 = !DILocation(line: 1032, column: 10, scope: !2425, inlinedAt: !2501)
!2524 = !DILocation(line: 1033, column: 1, scope: !2425, inlinedAt: !2501)
!2525 = !DILocation(line: 1039, column: 3, scope: !2485)
!2526 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !118, file: !118, line: 1043, type: !2527, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2529)
!2527 = !DISubroutineType(types: !2528)
!2528 = !{!82, !21, !21, !21, !112}
!2529 = !{!2530, !2531, !2532, !2533}
!2530 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2526, file: !118, line: 1043, type: !21)
!2531 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2526, file: !118, line: 1043, type: !21)
!2532 = !DILocalVariable(name: "arg", arg: 3, scope: !2526, file: !118, line: 1044, type: !21)
!2533 = !DILocalVariable(name: "argsize", arg: 4, scope: !2526, file: !118, line: 1044, type: !112)
!2534 = !DILocation(line: 1043, column: 34, scope: !2526)
!2535 = !DILocation(line: 1043, column: 58, scope: !2526)
!2536 = !DILocation(line: 1044, column: 34, scope: !2526)
!2537 = !DILocation(line: 1044, column: 46, scope: !2526)
!2538 = !DILocation(line: 1026, column: 28, scope: !2425, inlinedAt: !2539)
!2539 = distinct !DILocation(line: 1046, column: 10, scope: !2526)
!2540 = !DILocation(line: 1026, column: 43, scope: !2425, inlinedAt: !2539)
!2541 = !DILocation(line: 1027, column: 36, scope: !2425, inlinedAt: !2539)
!2542 = !DILocation(line: 1028, column: 36, scope: !2425, inlinedAt: !2539)
!2543 = !DILocation(line: 1028, column: 48, scope: !2425, inlinedAt: !2539)
!2544 = !DILocation(line: 1030, column: 3, scope: !2425, inlinedAt: !2539)
!2545 = !DILocation(line: 1030, column: 30, scope: !2425, inlinedAt: !2539)
!2546 = !DILocation(line: 1030, column: 26, scope: !2425, inlinedAt: !2539)
!2547 = !DILocation(line: 179, column: 45, scope: !966, inlinedAt: !2548)
!2548 = distinct !DILocation(line: 1031, column: 3, scope: !2425, inlinedAt: !2539)
!2549 = !DILocation(line: 180, column: 33, scope: !966, inlinedAt: !2548)
!2550 = !DILocation(line: 180, column: 57, scope: !966, inlinedAt: !2548)
!2551 = !DILocation(line: 184, column: 6, scope: !966, inlinedAt: !2548)
!2552 = !DILocation(line: 184, column: 12, scope: !966, inlinedAt: !2548)
!2553 = !DILocation(line: 185, column: 8, scope: !982, inlinedAt: !2548)
!2554 = !DILocation(line: 185, column: 23, scope: !982, inlinedAt: !2548)
!2555 = !DILocation(line: 185, column: 19, scope: !982, inlinedAt: !2548)
!2556 = !DILocation(line: 186, column: 5, scope: !982, inlinedAt: !2548)
!2557 = !DILocation(line: 187, column: 6, scope: !966, inlinedAt: !2548)
!2558 = !DILocation(line: 187, column: 17, scope: !966, inlinedAt: !2548)
!2559 = !DILocation(line: 188, column: 6, scope: !966, inlinedAt: !2548)
!2560 = !DILocation(line: 188, column: 18, scope: !966, inlinedAt: !2548)
!2561 = !DILocation(line: 1032, column: 10, scope: !2425, inlinedAt: !2539)
!2562 = !DILocation(line: 1033, column: 1, scope: !2425, inlinedAt: !2539)
!2563 = !DILocation(line: 1046, column: 3, scope: !2526)
!2564 = distinct !DISubprogram(name: "quote_n_mem", scope: !118, file: !118, line: 1061, type: !2565, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2567)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!21, !33, !21, !112}
!2567 = !{!2568, !2569, !2570}
!2568 = !DILocalVariable(name: "n", arg: 1, scope: !2564, file: !118, line: 1061, type: !33)
!2569 = !DILocalVariable(name: "arg", arg: 2, scope: !2564, file: !118, line: 1061, type: !21)
!2570 = !DILocalVariable(name: "argsize", arg: 3, scope: !2564, file: !118, line: 1061, type: !112)
!2571 = !DILocation(line: 1061, column: 18, scope: !2564)
!2572 = !DILocation(line: 1061, column: 33, scope: !2564)
!2573 = !DILocation(line: 1061, column: 45, scope: !2564)
!2574 = !DILocation(line: 1063, column: 10, scope: !2564)
!2575 = !DILocation(line: 1063, column: 3, scope: !2564)
!2576 = distinct !DISubprogram(name: "quote_mem", scope: !118, file: !118, line: 1067, type: !2577, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2579)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!21, !21, !112}
!2579 = !{!2580, !2581}
!2580 = !DILocalVariable(name: "arg", arg: 1, scope: !2576, file: !118, line: 1067, type: !21)
!2581 = !DILocalVariable(name: "argsize", arg: 2, scope: !2576, file: !118, line: 1067, type: !112)
!2582 = !DILocation(line: 1067, column: 24, scope: !2576)
!2583 = !DILocation(line: 1067, column: 36, scope: !2576)
!2584 = !DILocation(line: 1061, column: 18, scope: !2564, inlinedAt: !2585)
!2585 = distinct !DILocation(line: 1069, column: 10, scope: !2576)
!2586 = !DILocation(line: 1061, column: 33, scope: !2564, inlinedAt: !2585)
!2587 = !DILocation(line: 1061, column: 45, scope: !2564, inlinedAt: !2585)
!2588 = !DILocation(line: 1063, column: 10, scope: !2564, inlinedAt: !2585)
!2589 = !DILocation(line: 1069, column: 3, scope: !2576)
!2590 = distinct !DISubprogram(name: "quote_n", scope: !118, file: !118, line: 1073, type: !2591, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2593)
!2591 = !DISubroutineType(types: !2592)
!2592 = !{!21, !33, !21}
!2593 = !{!2594, !2595}
!2594 = !DILocalVariable(name: "n", arg: 1, scope: !2590, file: !118, line: 1073, type: !33)
!2595 = !DILocalVariable(name: "arg", arg: 2, scope: !2590, file: !118, line: 1073, type: !21)
!2596 = !DILocation(line: 1073, column: 14, scope: !2590)
!2597 = !DILocation(line: 1073, column: 29, scope: !2590)
!2598 = !DILocation(line: 1061, column: 18, scope: !2564, inlinedAt: !2599)
!2599 = distinct !DILocation(line: 1075, column: 10, scope: !2590)
!2600 = !DILocation(line: 1061, column: 33, scope: !2564, inlinedAt: !2599)
!2601 = !DILocation(line: 1061, column: 45, scope: !2564, inlinedAt: !2599)
!2602 = !DILocation(line: 1063, column: 10, scope: !2564, inlinedAt: !2599)
!2603 = !DILocation(line: 1075, column: 3, scope: !2590)
!2604 = distinct !DISubprogram(name: "quote", scope: !118, file: !118, line: 1079, type: !2605, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2607)
!2605 = !DISubroutineType(types: !2606)
!2606 = !{!21, !21}
!2607 = !{!2608}
!2608 = !DILocalVariable(name: "arg", arg: 1, scope: !2604, file: !118, line: 1079, type: !21)
!2609 = !DILocation(line: 1079, column: 20, scope: !2604)
!2610 = !DILocation(line: 1073, column: 14, scope: !2590, inlinedAt: !2611)
!2611 = distinct !DILocation(line: 1081, column: 10, scope: !2604)
!2612 = !DILocation(line: 1073, column: 29, scope: !2590, inlinedAt: !2611)
!2613 = !DILocation(line: 1061, column: 18, scope: !2564, inlinedAt: !2614)
!2614 = distinct !DILocation(line: 1075, column: 10, scope: !2590, inlinedAt: !2611)
!2615 = !DILocation(line: 1061, column: 33, scope: !2564, inlinedAt: !2614)
!2616 = !DILocation(line: 1061, column: 45, scope: !2564, inlinedAt: !2614)
!2617 = !DILocation(line: 1063, column: 10, scope: !2564, inlinedAt: !2614)
!2618 = !DILocation(line: 1081, column: 3, scope: !2604)
!2619 = distinct !DISubprogram(name: "version_etc_arn", scope: !170, file: !170, line: 62, type: !2620, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2676)
!2620 = !DISubroutineType(types: !2621)
!2621 = !{null, !2622, !21, !21, !21, !2675, !112}
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2624, line: 7, baseType: !2625)
!2624 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2626, line: 49, size: 1728, elements: !2627)
!2626 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2627 = !{!2628, !2629, !2630, !2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638, !2639, !2640, !2643, !2645, !2646, !2647, !2651, !2652, !2654, !2656, !2659, !2661, !2664, !2667, !2668, !2669, !2670, !2671}
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2625, file: !2626, line: 51, baseType: !33, size: 32)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2625, file: !2626, line: 54, baseType: !82, size: 64, offset: 64)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2625, file: !2626, line: 55, baseType: !82, size: 64, offset: 128)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2625, file: !2626, line: 56, baseType: !82, size: 64, offset: 192)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2625, file: !2626, line: 57, baseType: !82, size: 64, offset: 256)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2625, file: !2626, line: 58, baseType: !82, size: 64, offset: 320)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2625, file: !2626, line: 59, baseType: !82, size: 64, offset: 384)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2625, file: !2626, line: 60, baseType: !82, size: 64, offset: 448)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2625, file: !2626, line: 61, baseType: !82, size: 64, offset: 512)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2625, file: !2626, line: 64, baseType: !82, size: 64, offset: 576)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2625, file: !2626, line: 65, baseType: !82, size: 64, offset: 640)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2625, file: !2626, line: 66, baseType: !82, size: 64, offset: 704)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2625, file: !2626, line: 68, baseType: !2641, size: 64, offset: 768)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2626, line: 36, flags: DIFlagFwdDecl)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2625, file: !2626, line: 70, baseType: !2644, size: 64, offset: 832)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2625, file: !2626, line: 72, baseType: !33, size: 32, offset: 896)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2625, file: !2626, line: 73, baseType: !33, size: 32, offset: 928)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2625, file: !2626, line: 74, baseType: !2648, size: 64, offset: 960)
!2648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2649, line: 150, baseType: !2650)
!2649 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2650 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2625, file: !2626, line: 77, baseType: !111, size: 16, offset: 1024)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2625, file: !2626, line: 78, baseType: !2653, size: 8, offset: 1040)
!2653 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2625, file: !2626, line: 79, baseType: !2655, size: 8, offset: 1048)
!2655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !37)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2625, file: !2626, line: 81, baseType: !2657, size: 64, offset: 1088)
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2626, line: 43, baseType: null)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2625, file: !2626, line: 89, baseType: !2660, size: 64, offset: 1152)
!2660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2649, line: 151, baseType: !2650)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2625, file: !2626, line: 91, baseType: !2662, size: 64, offset: 1216)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2663, size: 64)
!2663 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2626, line: 37, flags: DIFlagFwdDecl)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2625, file: !2626, line: 92, baseType: !2665, size: 64, offset: 1280)
!2665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2666, size: 64)
!2666 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2626, line: 38, flags: DIFlagFwdDecl)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2625, file: !2626, line: 93, baseType: !2644, size: 64, offset: 1344)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2625, file: !2626, line: 94, baseType: !24, size: 64, offset: 1408)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2625, file: !2626, line: 95, baseType: !112, size: 64, offset: 1472)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2625, file: !2626, line: 96, baseType: !33, size: 32, offset: 1536)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2625, file: !2626, line: 98, baseType: !2672, size: 160, offset: 1568)
!2672 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !2673)
!2673 = !{!2674}
!2674 = !DISubrange(count: 20)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!2676 = !{!2677, !2678, !2679, !2680, !2681, !2682}
!2677 = !DILocalVariable(name: "stream", arg: 1, scope: !2619, file: !170, line: 62, type: !2622)
!2678 = !DILocalVariable(name: "command_name", arg: 2, scope: !2619, file: !170, line: 63, type: !21)
!2679 = !DILocalVariable(name: "package", arg: 3, scope: !2619, file: !170, line: 63, type: !21)
!2680 = !DILocalVariable(name: "version", arg: 4, scope: !2619, file: !170, line: 64, type: !21)
!2681 = !DILocalVariable(name: "authors", arg: 5, scope: !2619, file: !170, line: 65, type: !2675)
!2682 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2619, file: !170, line: 65, type: !112)
!2683 = !DILocation(line: 62, column: 24, scope: !2619)
!2684 = !DILocation(line: 63, column: 30, scope: !2619)
!2685 = !DILocation(line: 63, column: 56, scope: !2619)
!2686 = !DILocation(line: 64, column: 30, scope: !2619)
!2687 = !DILocation(line: 65, column: 39, scope: !2619)
!2688 = !DILocation(line: 65, column: 55, scope: !2619)
!2689 = !DILocation(line: 67, column: 7, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2619, file: !170, line: 67, column: 7)
!2691 = !DILocation(line: 67, column: 7, scope: !2619)
!2692 = !DILocation(line: 68, column: 5, scope: !2690)
!2693 = !DILocation(line: 70, column: 5, scope: !2690)
!2694 = !DILocation(line: 84, column: 3, scope: !2619)
!2695 = !DILocation(line: 86, column: 3, scope: !2619)
!2696 = !DILocation(line: 95, column: 3, scope: !2619)
!2697 = !DILocation(line: 99, column: 7, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2619, file: !170, line: 96, column: 5)
!2699 = !DILocation(line: 102, column: 7, scope: !2698)
!2700 = !DILocation(line: 103, column: 7, scope: !2698)
!2701 = !DILocation(line: 106, column: 7, scope: !2698)
!2702 = !DILocation(line: 107, column: 7, scope: !2698)
!2703 = !DILocation(line: 110, column: 7, scope: !2698)
!2704 = !DILocation(line: 112, column: 7, scope: !2698)
!2705 = !DILocation(line: 117, column: 7, scope: !2698)
!2706 = !DILocation(line: 119, column: 7, scope: !2698)
!2707 = !DILocation(line: 124, column: 7, scope: !2698)
!2708 = !DILocation(line: 126, column: 7, scope: !2698)
!2709 = !DILocation(line: 131, column: 7, scope: !2698)
!2710 = !DILocation(line: 134, column: 7, scope: !2698)
!2711 = !DILocation(line: 139, column: 7, scope: !2698)
!2712 = !DILocation(line: 142, column: 7, scope: !2698)
!2713 = !DILocation(line: 147, column: 7, scope: !2698)
!2714 = !DILocation(line: 151, column: 7, scope: !2698)
!2715 = !DILocation(line: 156, column: 7, scope: !2698)
!2716 = !DILocation(line: 160, column: 7, scope: !2698)
!2717 = !DILocation(line: 167, column: 7, scope: !2698)
!2718 = !DILocation(line: 171, column: 7, scope: !2698)
!2719 = !DILocation(line: 173, column: 1, scope: !2619)
!2720 = distinct !DISubprogram(name: "version_etc_ar", scope: !170, file: !170, line: 180, type: !2721, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2723)
!2721 = !DISubroutineType(types: !2722)
!2722 = !{null, !2622, !21, !21, !21, !2675}
!2723 = !{!2724, !2725, !2726, !2727, !2728, !2729}
!2724 = !DILocalVariable(name: "stream", arg: 1, scope: !2720, file: !170, line: 180, type: !2622)
!2725 = !DILocalVariable(name: "command_name", arg: 2, scope: !2720, file: !170, line: 181, type: !21)
!2726 = !DILocalVariable(name: "package", arg: 3, scope: !2720, file: !170, line: 181, type: !21)
!2727 = !DILocalVariable(name: "version", arg: 4, scope: !2720, file: !170, line: 182, type: !21)
!2728 = !DILocalVariable(name: "authors", arg: 5, scope: !2720, file: !170, line: 182, type: !2675)
!2729 = !DILocalVariable(name: "n_authors", scope: !2720, file: !170, line: 184, type: !112)
!2730 = !DILocation(line: 180, column: 23, scope: !2720)
!2731 = !DILocation(line: 181, column: 29, scope: !2720)
!2732 = !DILocation(line: 181, column: 55, scope: !2720)
!2733 = !DILocation(line: 182, column: 29, scope: !2720)
!2734 = !DILocation(line: 182, column: 59, scope: !2720)
!2735 = !DILocation(line: 184, column: 10, scope: !2720)
!2736 = !DILocation(line: 186, column: 8, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2720, file: !170, line: 186, column: 3)
!2738 = !DILocation(line: 0, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2737, file: !170, line: 186, column: 3)
!2740 = !DILocation(line: 186, column: 23, scope: !2739)
!2741 = !DILocation(line: 186, column: 3, scope: !2737)
!2742 = !DILocation(line: 186, column: 52, scope: !2739)
!2743 = distinct !{!2743, !2741, !2744}
!2744 = !DILocation(line: 187, column: 5, scope: !2737)
!2745 = !DILocation(line: 188, column: 3, scope: !2720)
!2746 = !DILocation(line: 189, column: 1, scope: !2720)
!2747 = distinct !DISubprogram(name: "version_etc_va", scope: !170, file: !170, line: 196, type: !2748, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2757)
!2748 = !DISubroutineType(types: !2749)
!2749 = !{null, !2622, !21, !21, !21, !2750}
!2750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2751, size: 64)
!2751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !167, line: 189, size: 192, elements: !2752)
!2752 = !{!2753, !2754, !2755, !2756}
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2751, file: !167, line: 189, baseType: !7, size: 32)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2751, file: !167, line: 189, baseType: !7, size: 32, offset: 32)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2751, file: !167, line: 189, baseType: !24, size: 64, offset: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2751, file: !167, line: 189, baseType: !24, size: 64, offset: 128)
!2757 = !{!2758, !2759, !2760, !2761, !2762, !2763, !2764}
!2758 = !DILocalVariable(name: "stream", arg: 1, scope: !2747, file: !170, line: 196, type: !2622)
!2759 = !DILocalVariable(name: "command_name", arg: 2, scope: !2747, file: !170, line: 197, type: !21)
!2760 = !DILocalVariable(name: "package", arg: 3, scope: !2747, file: !170, line: 197, type: !21)
!2761 = !DILocalVariable(name: "version", arg: 4, scope: !2747, file: !170, line: 198, type: !21)
!2762 = !DILocalVariable(name: "authors", arg: 5, scope: !2747, file: !170, line: 198, type: !2750)
!2763 = !DILocalVariable(name: "n_authors", scope: !2747, file: !170, line: 200, type: !112)
!2764 = !DILocalVariable(name: "authtab", scope: !2747, file: !170, line: 201, type: !2765)
!2765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 640, elements: !121)
!2766 = !DILocation(line: 196, column: 23, scope: !2747)
!2767 = !DILocation(line: 197, column: 29, scope: !2747)
!2768 = !DILocation(line: 197, column: 55, scope: !2747)
!2769 = !DILocation(line: 198, column: 29, scope: !2747)
!2770 = !DILocation(line: 198, column: 46, scope: !2747)
!2771 = !DILocation(line: 201, column: 3, scope: !2747)
!2772 = !DILocation(line: 201, column: 15, scope: !2747)
!2773 = !DILocation(line: 200, column: 10, scope: !2747)
!2774 = !DILocation(line: 205, column: 35, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2776, file: !170, line: 203, column: 3)
!2776 = distinct !DILexicalBlock(scope: !2747, file: !170, line: 203, column: 3)
!2777 = !DILocation(line: 205, column: 14, scope: !2775)
!2778 = !DILocation(line: 205, column: 33, scope: !2775)
!2779 = !DILocation(line: 205, column: 67, scope: !2775)
!2780 = !DILocation(line: 203, column: 3, scope: !2776)
!2781 = !DILocation(line: 0, scope: !2775)
!2782 = !DILocation(line: 208, column: 3, scope: !2747)
!2783 = !DILocation(line: 210, column: 1, scope: !2747)
!2784 = distinct !DISubprogram(name: "version_etc", scope: !170, file: !170, line: 227, type: !2785, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2787)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{null, !2622, !21, !21, !21, null}
!2787 = !{!2788, !2789, !2790, !2791, !2792}
!2788 = !DILocalVariable(name: "stream", arg: 1, scope: !2784, file: !170, line: 227, type: !2622)
!2789 = !DILocalVariable(name: "command_name", arg: 2, scope: !2784, file: !170, line: 228, type: !21)
!2790 = !DILocalVariable(name: "package", arg: 3, scope: !2784, file: !170, line: 228, type: !21)
!2791 = !DILocalVariable(name: "version", arg: 4, scope: !2784, file: !170, line: 229, type: !21)
!2792 = !DILocalVariable(name: "authors", scope: !2784, file: !170, line: 231, type: !2793)
!2793 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !801, line: 52, baseType: !2794)
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !803, line: 48, baseType: !2795)
!2795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !167, line: 231, baseType: !2796)
!2796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2751, size: 192, elements: !37)
!2797 = !DILocation(line: 227, column: 20, scope: !2784)
!2798 = !DILocation(line: 228, column: 26, scope: !2784)
!2799 = !DILocation(line: 228, column: 52, scope: !2784)
!2800 = !DILocation(line: 229, column: 26, scope: !2784)
!2801 = !DILocation(line: 231, column: 3, scope: !2784)
!2802 = !DILocation(line: 231, column: 11, scope: !2784)
!2803 = !DILocation(line: 233, column: 3, scope: !2784)
!2804 = !DILocation(line: 234, column: 3, scope: !2784)
!2805 = !DILocation(line: 235, column: 3, scope: !2784)
!2806 = !DILocation(line: 236, column: 1, scope: !2784)
!2807 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !170, file: !170, line: 239, type: !747, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !43)
!2808 = !DILocation(line: 245, column: 3, scope: !2807)
!2809 = !DILocation(line: 251, column: 3, scope: !2807)
!2810 = !DILocation(line: 256, column: 3, scope: !2807)
!2811 = !DILocation(line: 258, column: 1, scope: !2807)
!2812 = distinct !DISubprogram(name: "xnmalloc", scope: !178, file: !178, line: 99, type: !2813, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !2815)
!2813 = !DISubroutineType(types: !2814)
!2814 = !{!24, !112, !112}
!2815 = !{!2816, !2817}
!2816 = !DILocalVariable(name: "n", arg: 1, scope: !2812, file: !178, line: 99, type: !112)
!2817 = !DILocalVariable(name: "s", arg: 2, scope: !2812, file: !178, line: 99, type: !112)
!2818 = !DILocation(line: 99, column: 18, scope: !2812)
!2819 = !DILocation(line: 99, column: 28, scope: !2812)
!2820 = !DILocation(line: 101, column: 7, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2812, file: !178, line: 101, column: 7)
!2822 = !DILocation(line: 101, column: 7, scope: !2812)
!2823 = !DILocation(line: 102, column: 5, scope: !2821)
!2824 = !DILocation(line: 103, column: 21, scope: !2812)
!2825 = !DILocalVariable(name: "n", arg: 1, scope: !2826, file: !2827, line: 39, type: !112)
!2826 = distinct !DISubprogram(name: "xmalloc", scope: !2827, file: !2827, line: 39, type: !2828, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !2830)
!2827 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2828 = !DISubroutineType(types: !2829)
!2829 = !{!24, !112}
!2830 = !{!2825, !2831}
!2831 = !DILocalVariable(name: "p", scope: !2826, file: !2827, line: 41, type: !24)
!2832 = !DILocation(line: 39, column: 17, scope: !2826, inlinedAt: !2833)
!2833 = distinct !DILocation(line: 103, column: 10, scope: !2812)
!2834 = !DILocation(line: 41, column: 13, scope: !2826, inlinedAt: !2833)
!2835 = !DILocation(line: 41, column: 9, scope: !2826, inlinedAt: !2833)
!2836 = !DILocation(line: 42, column: 8, scope: !2837, inlinedAt: !2833)
!2837 = distinct !DILexicalBlock(scope: !2826, file: !2827, line: 42, column: 7)
!2838 = !DILocation(line: 42, column: 15, scope: !2837, inlinedAt: !2833)
!2839 = !DILocation(line: 42, column: 10, scope: !2837, inlinedAt: !2833)
!2840 = !DILocation(line: 43, column: 5, scope: !2837, inlinedAt: !2833)
!2841 = !DILocation(line: 103, column: 3, scope: !2812)
!2842 = !DILocation(line: 39, column: 17, scope: !2826)
!2843 = !DILocation(line: 41, column: 13, scope: !2826)
!2844 = !DILocation(line: 41, column: 9, scope: !2826)
!2845 = !DILocation(line: 42, column: 8, scope: !2837)
!2846 = !DILocation(line: 42, column: 15, scope: !2837)
!2847 = !DILocation(line: 42, column: 10, scope: !2837)
!2848 = !DILocation(line: 43, column: 5, scope: !2837)
!2849 = !DILocation(line: 44, column: 3, scope: !2826)
!2850 = distinct !DISubprogram(name: "xnrealloc", scope: !178, file: !178, line: 112, type: !2851, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!24, !24, !112, !112}
!2853 = !{!2854, !2855, !2856}
!2854 = !DILocalVariable(name: "p", arg: 1, scope: !2850, file: !178, line: 112, type: !24)
!2855 = !DILocalVariable(name: "n", arg: 2, scope: !2850, file: !178, line: 112, type: !112)
!2856 = !DILocalVariable(name: "s", arg: 3, scope: !2850, file: !178, line: 112, type: !112)
!2857 = !DILocation(line: 112, column: 18, scope: !2850)
!2858 = !DILocation(line: 112, column: 28, scope: !2850)
!2859 = !DILocation(line: 112, column: 38, scope: !2850)
!2860 = !DILocation(line: 114, column: 7, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2850, file: !178, line: 114, column: 7)
!2862 = !DILocation(line: 114, column: 7, scope: !2850)
!2863 = !DILocation(line: 115, column: 5, scope: !2861)
!2864 = !DILocation(line: 116, column: 25, scope: !2850)
!2865 = !DILocalVariable(name: "p", arg: 1, scope: !2866, file: !2827, line: 51, type: !24)
!2866 = distinct !DISubprogram(name: "xrealloc", scope: !2827, file: !2827, line: 51, type: !2867, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !2869)
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!24, !24, !112}
!2869 = !{!2865, !2870}
!2870 = !DILocalVariable(name: "n", arg: 2, scope: !2866, file: !2827, line: 51, type: !112)
!2871 = !DILocation(line: 51, column: 17, scope: !2866, inlinedAt: !2872)
!2872 = distinct !DILocation(line: 116, column: 10, scope: !2850)
!2873 = !DILocation(line: 51, column: 27, scope: !2866, inlinedAt: !2872)
!2874 = !DILocation(line: 53, column: 8, scope: !2875, inlinedAt: !2872)
!2875 = distinct !DILexicalBlock(scope: !2866, file: !2827, line: 53, column: 7)
!2876 = !DILocation(line: 53, column: 13, scope: !2875, inlinedAt: !2872)
!2877 = !DILocation(line: 53, column: 10, scope: !2875, inlinedAt: !2872)
!2878 = !DILocation(line: 57, column: 7, scope: !2879, inlinedAt: !2872)
!2879 = distinct !DILexicalBlock(scope: !2875, file: !2827, line: 54, column: 5)
!2880 = !DILocation(line: 58, column: 7, scope: !2879, inlinedAt: !2872)
!2881 = !DILocation(line: 61, column: 7, scope: !2866, inlinedAt: !2872)
!2882 = !DILocation(line: 62, column: 8, scope: !2883, inlinedAt: !2872)
!2883 = distinct !DILexicalBlock(scope: !2866, file: !2827, line: 62, column: 7)
!2884 = !DILocation(line: 62, column: 13, scope: !2883, inlinedAt: !2872)
!2885 = !DILocation(line: 62, column: 10, scope: !2883, inlinedAt: !2872)
!2886 = !DILocation(line: 63, column: 5, scope: !2883, inlinedAt: !2872)
!2887 = !DILocation(line: 0, scope: !2866, inlinedAt: !2872)
!2888 = !DILocation(line: 116, column: 3, scope: !2850)
!2889 = !DILocation(line: 51, column: 17, scope: !2866)
!2890 = !DILocation(line: 51, column: 27, scope: !2866)
!2891 = !DILocation(line: 53, column: 8, scope: !2875)
!2892 = !DILocation(line: 53, column: 13, scope: !2875)
!2893 = !DILocation(line: 53, column: 10, scope: !2875)
!2894 = !DILocation(line: 57, column: 7, scope: !2879)
!2895 = !DILocation(line: 58, column: 7, scope: !2879)
!2896 = !DILocation(line: 61, column: 7, scope: !2866)
!2897 = !DILocation(line: 62, column: 8, scope: !2883)
!2898 = !DILocation(line: 62, column: 13, scope: !2883)
!2899 = !DILocation(line: 62, column: 10, scope: !2883)
!2900 = !DILocation(line: 63, column: 5, scope: !2883)
!2901 = !DILocation(line: 0, scope: !2866)
!2902 = !DILocation(line: 65, column: 1, scope: !2866)
!2903 = !DILocation(line: 174, column: 19, scope: !179)
!2904 = !DILocation(line: 174, column: 30, scope: !179)
!2905 = !DILocation(line: 174, column: 41, scope: !179)
!2906 = !DILocation(line: 176, column: 14, scope: !179)
!2907 = !DILocation(line: 176, column: 10, scope: !179)
!2908 = !DILocation(line: 178, column: 9, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !179, file: !178, line: 178, column: 7)
!2910 = !DILocation(line: 178, column: 7, scope: !179)
!2911 = !DILocation(line: 180, column: 13, scope: !2912)
!2912 = distinct !DILexicalBlock(scope: !2913, file: !178, line: 180, column: 11)
!2913 = distinct !DILexicalBlock(scope: !2909, file: !178, line: 179, column: 5)
!2914 = !DILocation(line: 180, column: 11, scope: !2913)
!2915 = !DILocation(line: 188, column: 30, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2912, file: !178, line: 181, column: 9)
!2917 = !DILocation(line: 189, column: 16, scope: !2916)
!2918 = !DILocation(line: 189, column: 13, scope: !2916)
!2919 = !DILocation(line: 190, column: 9, scope: !2916)
!2920 = !DILocation(line: 0, scope: !2916)
!2921 = !DILocation(line: 191, column: 11, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2913, file: !178, line: 191, column: 11)
!2923 = !DILocation(line: 191, column: 11, scope: !2913)
!2924 = !DILocation(line: 206, column: 7, scope: !179)
!2925 = !DILocation(line: 207, column: 25, scope: !179)
!2926 = !DILocation(line: 51, column: 17, scope: !2866, inlinedAt: !2927)
!2927 = distinct !DILocation(line: 207, column: 10, scope: !179)
!2928 = !DILocation(line: 51, column: 27, scope: !2866, inlinedAt: !2927)
!2929 = !DILocation(line: 53, column: 10, scope: !2875, inlinedAt: !2927)
!2930 = !DILocation(line: 192, column: 9, scope: !2922)
!2931 = !DILocation(line: 200, column: 69, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2933, file: !178, line: 200, column: 11)
!2933 = distinct !DILexicalBlock(scope: !2909, file: !178, line: 195, column: 5)
!2934 = !DILocation(line: 201, column: 11, scope: !2932)
!2935 = !DILocation(line: 200, column: 11, scope: !2933)
!2936 = !DILocation(line: 202, column: 9, scope: !2932)
!2937 = !DILocation(line: 203, column: 14, scope: !2933)
!2938 = !DILocation(line: 203, column: 18, scope: !2933)
!2939 = !DILocation(line: 203, column: 9, scope: !2933)
!2940 = !DILocation(line: 53, column: 8, scope: !2875, inlinedAt: !2927)
!2941 = !DILocation(line: 57, column: 7, scope: !2879, inlinedAt: !2927)
!2942 = !DILocation(line: 58, column: 7, scope: !2879, inlinedAt: !2927)
!2943 = !DILocation(line: 61, column: 7, scope: !2866, inlinedAt: !2927)
!2944 = !DILocation(line: 62, column: 8, scope: !2883, inlinedAt: !2927)
!2945 = !DILocation(line: 62, column: 13, scope: !2883, inlinedAt: !2927)
!2946 = !DILocation(line: 62, column: 10, scope: !2883, inlinedAt: !2927)
!2947 = !DILocation(line: 63, column: 5, scope: !2883, inlinedAt: !2927)
!2948 = !DILocation(line: 0, scope: !2866, inlinedAt: !2927)
!2949 = !DILocation(line: 207, column: 3, scope: !179)
!2950 = distinct !DISubprogram(name: "xcharalloc", scope: !178, file: !178, line: 216, type: !1903, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !2951)
!2951 = !{!2952}
!2952 = !DILocalVariable(name: "n", arg: 1, scope: !2950, file: !178, line: 216, type: !112)
!2953 = !DILocation(line: 216, column: 20, scope: !2950)
!2954 = !DILocation(line: 39, column: 17, scope: !2826, inlinedAt: !2955)
!2955 = distinct !DILocation(line: 218, column: 10, scope: !2950)
!2956 = !DILocation(line: 41, column: 13, scope: !2826, inlinedAt: !2955)
!2957 = !DILocation(line: 41, column: 9, scope: !2826, inlinedAt: !2955)
!2958 = !DILocation(line: 42, column: 8, scope: !2837, inlinedAt: !2955)
!2959 = !DILocation(line: 42, column: 15, scope: !2837, inlinedAt: !2955)
!2960 = !DILocation(line: 42, column: 10, scope: !2837, inlinedAt: !2955)
!2961 = !DILocation(line: 43, column: 5, scope: !2837, inlinedAt: !2955)
!2962 = !DILocation(line: 218, column: 3, scope: !2950)
!2963 = distinct !DISubprogram(name: "x2realloc", scope: !2827, file: !2827, line: 74, type: !2964, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !2966)
!2964 = !DISubroutineType(types: !2965)
!2965 = !{!24, !24, !182}
!2966 = !{!2967, !2968}
!2967 = !DILocalVariable(name: "p", arg: 1, scope: !2963, file: !2827, line: 74, type: !24)
!2968 = !DILocalVariable(name: "pn", arg: 2, scope: !2963, file: !2827, line: 74, type: !182)
!2969 = !DILocation(line: 74, column: 18, scope: !2963)
!2970 = !DILocation(line: 74, column: 29, scope: !2963)
!2971 = !DILocation(line: 174, column: 19, scope: !179, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 76, column: 10, scope: !2963)
!2973 = !DILocation(line: 174, column: 30, scope: !179, inlinedAt: !2972)
!2974 = !DILocation(line: 174, column: 41, scope: !179, inlinedAt: !2972)
!2975 = !DILocation(line: 176, column: 14, scope: !179, inlinedAt: !2972)
!2976 = !DILocation(line: 176, column: 10, scope: !179, inlinedAt: !2972)
!2977 = !DILocation(line: 178, column: 9, scope: !2909, inlinedAt: !2972)
!2978 = !DILocation(line: 178, column: 7, scope: !179, inlinedAt: !2972)
!2979 = !DILocation(line: 180, column: 13, scope: !2912, inlinedAt: !2972)
!2980 = !DILocation(line: 180, column: 11, scope: !2913, inlinedAt: !2972)
!2981 = !DILocation(line: 191, column: 11, scope: !2922, inlinedAt: !2972)
!2982 = !DILocation(line: 191, column: 11, scope: !2913, inlinedAt: !2972)
!2983 = !DILocation(line: 206, column: 7, scope: !179, inlinedAt: !2972)
!2984 = !DILocation(line: 51, column: 17, scope: !2866, inlinedAt: !2985)
!2985 = distinct !DILocation(line: 207, column: 10, scope: !179, inlinedAt: !2972)
!2986 = !DILocation(line: 51, column: 27, scope: !2866, inlinedAt: !2985)
!2987 = !DILocation(line: 53, column: 10, scope: !2875, inlinedAt: !2985)
!2988 = !DILocation(line: 192, column: 9, scope: !2922, inlinedAt: !2972)
!2989 = !DILocation(line: 201, column: 11, scope: !2932, inlinedAt: !2972)
!2990 = !DILocation(line: 200, column: 11, scope: !2933, inlinedAt: !2972)
!2991 = !DILocation(line: 202, column: 9, scope: !2932, inlinedAt: !2972)
!2992 = !DILocation(line: 203, column: 14, scope: !2933, inlinedAt: !2972)
!2993 = !DILocation(line: 203, column: 18, scope: !2933, inlinedAt: !2972)
!2994 = !DILocation(line: 203, column: 9, scope: !2933, inlinedAt: !2972)
!2995 = !DILocation(line: 53, column: 8, scope: !2875, inlinedAt: !2985)
!2996 = !DILocation(line: 57, column: 7, scope: !2879, inlinedAt: !2985)
!2997 = !DILocation(line: 58, column: 7, scope: !2879, inlinedAt: !2985)
!2998 = !DILocation(line: 61, column: 7, scope: !2866, inlinedAt: !2985)
!2999 = !DILocation(line: 62, column: 8, scope: !2883, inlinedAt: !2985)
!3000 = !DILocation(line: 62, column: 13, scope: !2883, inlinedAt: !2985)
!3001 = !DILocation(line: 62, column: 10, scope: !2883, inlinedAt: !2985)
!3002 = !DILocation(line: 63, column: 5, scope: !2883, inlinedAt: !2985)
!3003 = !DILocation(line: 0, scope: !2866, inlinedAt: !2985)
!3004 = !DILocation(line: 76, column: 3, scope: !2963)
!3005 = distinct !DISubprogram(name: "xzalloc", scope: !2827, file: !2827, line: 84, type: !2828, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !3006)
!3006 = !{!3007}
!3007 = !DILocalVariable(name: "s", arg: 1, scope: !3005, file: !2827, line: 84, type: !112)
!3008 = !DILocation(line: 84, column: 17, scope: !3005)
!3009 = !DILocation(line: 39, column: 17, scope: !2826, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 86, column: 18, scope: !3005)
!3011 = !DILocation(line: 41, column: 13, scope: !2826, inlinedAt: !3010)
!3012 = !DILocation(line: 41, column: 9, scope: !2826, inlinedAt: !3010)
!3013 = !DILocation(line: 42, column: 8, scope: !2837, inlinedAt: !3010)
!3014 = !DILocation(line: 42, column: 15, scope: !2837, inlinedAt: !3010)
!3015 = !DILocation(line: 42, column: 10, scope: !2837, inlinedAt: !3010)
!3016 = !DILocation(line: 43, column: 5, scope: !2837, inlinedAt: !3010)
!3017 = !DILocation(line: 86, column: 10, scope: !3005)
!3018 = !DILocation(line: 86, column: 3, scope: !3005)
!3019 = distinct !DISubprogram(name: "xcalloc", scope: !2827, file: !2827, line: 93, type: !2813, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !3020)
!3020 = !{!3021, !3022, !3023}
!3021 = !DILocalVariable(name: "n", arg: 1, scope: !3019, file: !2827, line: 93, type: !112)
!3022 = !DILocalVariable(name: "s", arg: 2, scope: !3019, file: !2827, line: 93, type: !112)
!3023 = !DILocalVariable(name: "p", scope: !3019, file: !2827, line: 95, type: !24)
!3024 = !DILocation(line: 93, column: 17, scope: !3019)
!3025 = !DILocation(line: 93, column: 27, scope: !3019)
!3026 = !DILocation(line: 100, column: 7, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3019, file: !2827, line: 100, column: 7)
!3028 = !DILocation(line: 101, column: 7, scope: !3027)
!3029 = !DILocation(line: 101, column: 18, scope: !3027)
!3030 = !DILocation(line: 95, column: 9, scope: !3019)
!3031 = !DILocation(line: 101, column: 16, scope: !3027)
!3032 = !DILocation(line: 100, column: 7, scope: !3019)
!3033 = !DILocation(line: 102, column: 5, scope: !3027)
!3034 = !DILocation(line: 103, column: 3, scope: !3019)
!3035 = distinct !DISubprogram(name: "xmemdup", scope: !2827, file: !2827, line: 111, type: !3036, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !3040)
!3036 = !DISubroutineType(types: !3037)
!3037 = !{!24, !3038, !112}
!3038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3039, size: 64)
!3039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3040 = !{!3041, !3042}
!3041 = !DILocalVariable(name: "p", arg: 1, scope: !3035, file: !2827, line: 111, type: !3038)
!3042 = !DILocalVariable(name: "s", arg: 2, scope: !3035, file: !2827, line: 111, type: !112)
!3043 = !DILocation(line: 111, column: 22, scope: !3035)
!3044 = !DILocation(line: 111, column: 32, scope: !3035)
!3045 = !DILocation(line: 39, column: 17, scope: !2826, inlinedAt: !3046)
!3046 = distinct !DILocation(line: 113, column: 18, scope: !3035)
!3047 = !DILocation(line: 41, column: 13, scope: !2826, inlinedAt: !3046)
!3048 = !DILocation(line: 41, column: 9, scope: !2826, inlinedAt: !3046)
!3049 = !DILocation(line: 42, column: 8, scope: !2837, inlinedAt: !3046)
!3050 = !DILocation(line: 42, column: 15, scope: !2837, inlinedAt: !3046)
!3051 = !DILocation(line: 42, column: 10, scope: !2837, inlinedAt: !3046)
!3052 = !DILocation(line: 43, column: 5, scope: !2837, inlinedAt: !3046)
!3053 = !DILocation(line: 113, column: 10, scope: !3035)
!3054 = !DILocation(line: 113, column: 3, scope: !3035)
!3055 = distinct !DISubprogram(name: "xstrdup", scope: !2827, file: !2827, line: 119, type: !2109, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !3056)
!3056 = !{!3057}
!3057 = !DILocalVariable(name: "string", arg: 1, scope: !3055, file: !2827, line: 119, type: !21)
!3058 = !DILocation(line: 119, column: 22, scope: !3055)
!3059 = !DILocation(line: 121, column: 27, scope: !3055)
!3060 = !DILocation(line: 121, column: 43, scope: !3055)
!3061 = !DILocation(line: 111, column: 22, scope: !3035, inlinedAt: !3062)
!3062 = distinct !DILocation(line: 121, column: 10, scope: !3055)
!3063 = !DILocation(line: 111, column: 32, scope: !3035, inlinedAt: !3062)
!3064 = !DILocation(line: 39, column: 17, scope: !2826, inlinedAt: !3065)
!3065 = distinct !DILocation(line: 113, column: 18, scope: !3035, inlinedAt: !3062)
!3066 = !DILocation(line: 41, column: 13, scope: !2826, inlinedAt: !3065)
!3067 = !DILocation(line: 41, column: 9, scope: !2826, inlinedAt: !3065)
!3068 = !DILocation(line: 42, column: 8, scope: !2837, inlinedAt: !3065)
!3069 = !DILocation(line: 42, column: 15, scope: !2837, inlinedAt: !3065)
!3070 = !DILocation(line: 42, column: 10, scope: !2837, inlinedAt: !3065)
!3071 = !DILocation(line: 43, column: 5, scope: !2837, inlinedAt: !3065)
!3072 = !DILocation(line: 113, column: 10, scope: !3035, inlinedAt: !3062)
!3073 = !DILocation(line: 121, column: 3, scope: !3055)
!3074 = distinct !DISubprogram(name: "xalloc_die", scope: !3075, file: !3075, line: 32, type: !747, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !191, retainedNodes: !43)
!3075 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3076 = !DILocation(line: 34, column: 10, scope: !3074)
!3077 = !DILocation(line: 34, column: 33, scope: !3074)
!3078 = !DILocation(line: 34, column: 3, scope: !3074)
!3079 = !DILocation(line: 40, column: 3, scope: !3074)
!3080 = distinct !DISubprogram(name: "rpl_calloc", scope: !3081, file: !3081, line: 42, type: !2813, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !3082)
!3081 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3082 = !{!3083, !3084, !3085, !3086}
!3083 = !DILocalVariable(name: "n", arg: 1, scope: !3080, file: !3081, line: 42, type: !112)
!3084 = !DILocalVariable(name: "s", arg: 2, scope: !3080, file: !3081, line: 42, type: !112)
!3085 = !DILocalVariable(name: "result", scope: !3080, file: !3081, line: 44, type: !24)
!3086 = !DILocalVariable(name: "bytes", scope: !3087, file: !3081, line: 56, type: !112)
!3087 = distinct !DILexicalBlock(scope: !3088, file: !3081, line: 53, column: 5)
!3088 = distinct !DILexicalBlock(scope: !3080, file: !3081, line: 47, column: 7)
!3089 = !DILocation(line: 42, column: 20, scope: !3080)
!3090 = !DILocation(line: 42, column: 30, scope: !3080)
!3091 = !DILocation(line: 47, column: 9, scope: !3088)
!3092 = !DILocation(line: 47, column: 19, scope: !3088)
!3093 = !DILocation(line: 47, column: 14, scope: !3088)
!3094 = !DILocation(line: 56, column: 24, scope: !3087)
!3095 = !DILocation(line: 56, column: 14, scope: !3087)
!3096 = !DILocation(line: 57, column: 17, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3087, file: !3081, line: 57, column: 11)
!3098 = !DILocation(line: 57, column: 21, scope: !3097)
!3099 = !DILocation(line: 57, column: 11, scope: !3087)
!3100 = !DILocation(line: 59, column: 11, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3097, file: !3081, line: 58, column: 9)
!3102 = !DILocation(line: 59, column: 17, scope: !3101)
!3103 = !DILocation(line: 65, column: 12, scope: !3080)
!3104 = !DILocation(line: 44, column: 9, scope: !3080)
!3105 = !DILocation(line: 72, column: 3, scope: !3080)
!3106 = !DILocation(line: 0, scope: !3101)
!3107 = !DILocation(line: 73, column: 1, scope: !3080)
!3108 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3109, file: !3109, line: 385, type: !3110, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !3124)
!3109 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!112, !3112, !21, !112, !3113}
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3114, size: 64)
!3114 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1065, line: 6, baseType: !3115)
!3115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1067, line: 21, baseType: !3116)
!3116 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1067, line: 13, size: 64, elements: !3117)
!3117 = !{!3118, !3119}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3116, file: !1067, line: 15, baseType: !33, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3116, file: !1067, line: 20, baseType: !3120, size: 32, offset: 32)
!3120 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3116, file: !1067, line: 16, size: 32, elements: !3121)
!3121 = !{!3122, !3123}
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3120, file: !1067, line: 18, baseType: !7, size: 32)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3120, file: !1067, line: 19, baseType: !1076, size: 32)
!3124 = !{!3125, !3126, !3127, !3128, !3129, !3130, !3131}
!3125 = !DILocalVariable(name: "pwc", arg: 1, scope: !3108, file: !3109, line: 385, type: !3112)
!3126 = !DILocalVariable(name: "s", arg: 2, scope: !3108, file: !3109, line: 385, type: !21)
!3127 = !DILocalVariable(name: "n", arg: 3, scope: !3108, file: !3109, line: 385, type: !112)
!3128 = !DILocalVariable(name: "ps", arg: 4, scope: !3108, file: !3109, line: 385, type: !3113)
!3129 = !DILocalVariable(name: "ret", scope: !3108, file: !3109, line: 387, type: !112)
!3130 = !DILocalVariable(name: "wc", scope: !3108, file: !3109, line: 388, type: !1081)
!3131 = !DILocalVariable(name: "uc", scope: !3132, file: !3109, line: 449, type: !925)
!3132 = distinct !DILexicalBlock(scope: !3133, file: !3109, line: 448, column: 5)
!3133 = distinct !DILexicalBlock(scope: !3108, file: !3109, line: 447, column: 7)
!3134 = !DILocation(line: 385, column: 23, scope: !3108)
!3135 = !DILocation(line: 385, column: 40, scope: !3108)
!3136 = !DILocation(line: 385, column: 50, scope: !3108)
!3137 = !DILocation(line: 385, column: 64, scope: !3108)
!3138 = !DILocation(line: 388, column: 3, scope: !3108)
!3139 = !DILocation(line: 404, column: 9, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3108, file: !3109, line: 404, column: 7)
!3141 = !DILocation(line: 404, column: 7, scope: !3108)
!3142 = !DILocation(line: 439, column: 9, scope: !3108)
!3143 = !DILocation(line: 387, column: 10, scope: !3108)
!3144 = !DILocation(line: 447, column: 19, scope: !3133)
!3145 = !DILocation(line: 447, column: 31, scope: !3133)
!3146 = !DILocation(line: 447, column: 26, scope: !3133)
!3147 = !DILocation(line: 447, column: 41, scope: !3133)
!3148 = !DILocation(line: 447, column: 7, scope: !3108)
!3149 = !DILocation(line: 449, column: 26, scope: !3132)
!3150 = !DILocation(line: 449, column: 21, scope: !3132)
!3151 = !DILocation(line: 450, column: 14, scope: !3132)
!3152 = !DILocation(line: 450, column: 12, scope: !3132)
!3153 = !DILocation(line: 0, scope: !3132)
!3154 = !DILocation(line: 456, column: 1, scope: !3108)
!3155 = distinct !DISubprogram(name: "close_stream", scope: !3156, file: !3156, line: 56, type: !3157, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !198, retainedNodes: !3193)
!3156 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!33, !3159}
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2624, line: 7, baseType: !3161)
!3161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2626, line: 49, size: 1728, elements: !3162)
!3162 = !{!3163, !3164, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3187, !3188, !3189, !3190, !3191, !3192}
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3161, file: !2626, line: 51, baseType: !33, size: 32)
!3164 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3161, file: !2626, line: 54, baseType: !82, size: 64, offset: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3161, file: !2626, line: 55, baseType: !82, size: 64, offset: 128)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3161, file: !2626, line: 56, baseType: !82, size: 64, offset: 192)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3161, file: !2626, line: 57, baseType: !82, size: 64, offset: 256)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3161, file: !2626, line: 58, baseType: !82, size: 64, offset: 320)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3161, file: !2626, line: 59, baseType: !82, size: 64, offset: 384)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3161, file: !2626, line: 60, baseType: !82, size: 64, offset: 448)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3161, file: !2626, line: 61, baseType: !82, size: 64, offset: 512)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3161, file: !2626, line: 64, baseType: !82, size: 64, offset: 576)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3161, file: !2626, line: 65, baseType: !82, size: 64, offset: 640)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3161, file: !2626, line: 66, baseType: !82, size: 64, offset: 704)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3161, file: !2626, line: 68, baseType: !2641, size: 64, offset: 768)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3161, file: !2626, line: 70, baseType: !3177, size: 64, offset: 832)
!3177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3161, size: 64)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3161, file: !2626, line: 72, baseType: !33, size: 32, offset: 896)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3161, file: !2626, line: 73, baseType: !33, size: 32, offset: 928)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3161, file: !2626, line: 74, baseType: !2648, size: 64, offset: 960)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3161, file: !2626, line: 77, baseType: !111, size: 16, offset: 1024)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3161, file: !2626, line: 78, baseType: !2653, size: 8, offset: 1040)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3161, file: !2626, line: 79, baseType: !2655, size: 8, offset: 1048)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3161, file: !2626, line: 81, baseType: !2657, size: 64, offset: 1088)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3161, file: !2626, line: 89, baseType: !2660, size: 64, offset: 1152)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3161, file: !2626, line: 91, baseType: !2662, size: 64, offset: 1216)
!3187 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3161, file: !2626, line: 92, baseType: !2665, size: 64, offset: 1280)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3161, file: !2626, line: 93, baseType: !3177, size: 64, offset: 1344)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3161, file: !2626, line: 94, baseType: !24, size: 64, offset: 1408)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3161, file: !2626, line: 95, baseType: !112, size: 64, offset: 1472)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3161, file: !2626, line: 96, baseType: !33, size: 32, offset: 1536)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3161, file: !2626, line: 98, baseType: !2672, size: 160, offset: 1568)
!3193 = !{!3194, !3195, !3197, !3198}
!3194 = !DILocalVariable(name: "stream", arg: 1, scope: !3155, file: !3156, line: 56, type: !3159)
!3195 = !DILocalVariable(name: "some_pending", scope: !3155, file: !3156, line: 58, type: !3196)
!3196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!3197 = !DILocalVariable(name: "prev_fail", scope: !3155, file: !3156, line: 59, type: !3196)
!3198 = !DILocalVariable(name: "fclose_fail", scope: !3155, file: !3156, line: 60, type: !3196)
!3199 = !DILocation(line: 56, column: 21, scope: !3155)
!3200 = !DILocation(line: 58, column: 30, scope: !3155)
!3201 = !DILocalVariable(name: "__stream", arg: 1, scope: !3202, file: !3203, line: 135, type: !3159)
!3202 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3203, file: !3203, line: 135, type: !3157, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !198, retainedNodes: !3204)
!3203 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3204 = !{!3201}
!3205 = !DILocation(line: 135, column: 1, scope: !3202, inlinedAt: !3206)
!3206 = distinct !DILocation(line: 59, column: 27, scope: !3155)
!3207 = !DILocation(line: 137, column: 10, scope: !3202, inlinedAt: !3206)
!3208 = !{!3209, !704, i64 0}
!3209 = !{!"_IO_FILE", !704, i64 0, !637, i64 8, !637, i64 16, !637, i64 24, !637, i64 32, !637, i64 40, !637, i64 48, !637, i64 56, !637, i64 64, !637, i64 72, !637, i64 80, !637, i64 88, !637, i64 96, !637, i64 104, !704, i64 112, !704, i64 116, !1948, i64 120, !1322, i64 128, !638, i64 130, !638, i64 131, !637, i64 136, !1948, i64 144, !637, i64 152, !637, i64 160, !637, i64 168, !637, i64 176, !1948, i64 184, !704, i64 192, !638, i64 196}
!3210 = !DILocation(line: 59, column: 43, scope: !3155)
!3211 = !DILocation(line: 60, column: 29, scope: !3155)
!3212 = !DILocation(line: 60, column: 45, scope: !3155)
!3213 = !DILocation(line: 70, column: 17, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3155, file: !3156, line: 70, column: 7)
!3215 = !DILocation(line: 58, column: 50, scope: !3155)
!3216 = !DILocation(line: 70, column: 33, scope: !3214)
!3217 = !DILocation(line: 70, column: 53, scope: !3214)
!3218 = !DILocation(line: 70, column: 59, scope: !3214)
!3219 = !DILocation(line: 70, column: 7, scope: !3155)
!3220 = !DILocation(line: 72, column: 11, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3214, file: !3156, line: 71, column: 5)
!3222 = !DILocation(line: 73, column: 9, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3221, file: !3156, line: 72, column: 11)
!3224 = !DILocation(line: 73, column: 15, scope: !3223)
!3225 = !DILocation(line: 0, scope: !3155)
!3226 = !DILocation(line: 78, column: 1, scope: !3155)
!3227 = distinct !DISubprogram(name: "hard_locale", scope: !3228, file: !3228, line: 38, type: !3229, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !200, retainedNodes: !3231)
!3228 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3229 = !DISubroutineType(types: !3230)
!3230 = !{!53, !33}
!3231 = !{!3232, !3233, !3234}
!3232 = !DILocalVariable(name: "category", arg: 1, scope: !3227, file: !3228, line: 38, type: !33)
!3233 = !DILocalVariable(name: "hard", scope: !3227, file: !3228, line: 40, type: !53)
!3234 = !DILocalVariable(name: "p", scope: !3227, file: !3228, line: 41, type: !21)
!3235 = !DILocation(line: 38, column: 18, scope: !3227)
!3236 = !DILocation(line: 40, column: 8, scope: !3227)
!3237 = !DILocation(line: 41, column: 19, scope: !3227)
!3238 = !DILocation(line: 41, column: 15, scope: !3227)
!3239 = !DILocation(line: 43, column: 7, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3227, file: !3228, line: 43, column: 7)
!3241 = !DILocation(line: 43, column: 7, scope: !3227)
!3242 = !DILocation(line: 47, column: 15, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3244, file: !3228, line: 47, column: 15)
!3244 = distinct !DILexicalBlock(scope: !3245, file: !3228, line: 46, column: 9)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !3228, line: 45, column: 11)
!3246 = distinct !DILexicalBlock(scope: !3240, file: !3228, line: 44, column: 5)
!3247 = !DILocation(line: 47, column: 31, scope: !3243)
!3248 = !DILocation(line: 47, column: 36, scope: !3243)
!3249 = !DILocation(line: 47, column: 39, scope: !3243)
!3250 = !DILocation(line: 47, column: 59, scope: !3243)
!3251 = !DILocation(line: 47, column: 15, scope: !3244)
!3252 = !DILocation(line: 48, column: 13, scope: !3243)
!3253 = !DILocation(line: 71, column: 3, scope: !3227)
!3254 = distinct !DISubprogram(name: "locale_charset", scope: !3255, file: !3255, line: 687, type: !3256, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !202, retainedNodes: !3258)
!3255 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3256 = !DISubroutineType(types: !3257)
!3257 = !{!21}
!3258 = !{!3259}
!3259 = !DILocalVariable(name: "codeset", scope: !3254, file: !3255, line: 689, type: !21)
!3260 = !DILocation(line: 696, column: 13, scope: !3254)
!3261 = !DILocation(line: 689, column: 15, scope: !3254)
!3262 = !DILocation(line: 754, column: 15, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3254, file: !3255, line: 754, column: 7)
!3264 = !DILocation(line: 754, column: 7, scope: !3254)
!3265 = !DILocation(line: 907, column: 13, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3267, file: !3255, line: 907, column: 13)
!3267 = distinct !DILexicalBlock(scope: !3268, file: !3255, line: 897, column: 7)
!3268 = distinct !DILexicalBlock(scope: !3254, file: !3255, line: 856, column: 3)
!3269 = !DILocation(line: 907, column: 24, scope: !3266)
!3270 = !DILocation(line: 907, column: 13, scope: !3267)
!3271 = !DILocation(line: 995, column: 3, scope: !3254)
!3272 = distinct !DISubprogram(name: "rpl_fclose", scope: !3273, file: !3273, line: 58, type: !3274, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !591, retainedNodes: !3310)
!3273 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3274 = !DISubroutineType(types: !3275)
!3275 = !{!33, !3276}
!3276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3277, size: 64)
!3277 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2624, line: 7, baseType: !3278)
!3278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2626, line: 49, size: 1728, elements: !3279)
!3279 = !{!3280, !3281, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3304, !3305, !3306, !3307, !3308, !3309}
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3278, file: !2626, line: 51, baseType: !33, size: 32)
!3281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3278, file: !2626, line: 54, baseType: !82, size: 64, offset: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3278, file: !2626, line: 55, baseType: !82, size: 64, offset: 128)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3278, file: !2626, line: 56, baseType: !82, size: 64, offset: 192)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3278, file: !2626, line: 57, baseType: !82, size: 64, offset: 256)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3278, file: !2626, line: 58, baseType: !82, size: 64, offset: 320)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3278, file: !2626, line: 59, baseType: !82, size: 64, offset: 384)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3278, file: !2626, line: 60, baseType: !82, size: 64, offset: 448)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3278, file: !2626, line: 61, baseType: !82, size: 64, offset: 512)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3278, file: !2626, line: 64, baseType: !82, size: 64, offset: 576)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3278, file: !2626, line: 65, baseType: !82, size: 64, offset: 640)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3278, file: !2626, line: 66, baseType: !82, size: 64, offset: 704)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3278, file: !2626, line: 68, baseType: !2641, size: 64, offset: 768)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3278, file: !2626, line: 70, baseType: !3294, size: 64, offset: 832)
!3294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3278, size: 64)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3278, file: !2626, line: 72, baseType: !33, size: 32, offset: 896)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3278, file: !2626, line: 73, baseType: !33, size: 32, offset: 928)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3278, file: !2626, line: 74, baseType: !2648, size: 64, offset: 960)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3278, file: !2626, line: 77, baseType: !111, size: 16, offset: 1024)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3278, file: !2626, line: 78, baseType: !2653, size: 8, offset: 1040)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3278, file: !2626, line: 79, baseType: !2655, size: 8, offset: 1048)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3278, file: !2626, line: 81, baseType: !2657, size: 64, offset: 1088)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3278, file: !2626, line: 89, baseType: !2660, size: 64, offset: 1152)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3278, file: !2626, line: 91, baseType: !2662, size: 64, offset: 1216)
!3304 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3278, file: !2626, line: 92, baseType: !2665, size: 64, offset: 1280)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3278, file: !2626, line: 93, baseType: !3294, size: 64, offset: 1344)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3278, file: !2626, line: 94, baseType: !24, size: 64, offset: 1408)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3278, file: !2626, line: 95, baseType: !112, size: 64, offset: 1472)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3278, file: !2626, line: 96, baseType: !33, size: 32, offset: 1536)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3278, file: !2626, line: 98, baseType: !2672, size: 160, offset: 1568)
!3310 = !{!3311, !3312, !3313, !3314}
!3311 = !DILocalVariable(name: "fp", arg: 1, scope: !3272, file: !3273, line: 58, type: !3276)
!3312 = !DILocalVariable(name: "saved_errno", scope: !3272, file: !3273, line: 60, type: !33)
!3313 = !DILocalVariable(name: "fd", scope: !3272, file: !3273, line: 61, type: !33)
!3314 = !DILocalVariable(name: "result", scope: !3272, file: !3273, line: 62, type: !33)
!3315 = !DILocation(line: 58, column: 19, scope: !3272)
!3316 = !DILocation(line: 60, column: 7, scope: !3272)
!3317 = !DILocation(line: 62, column: 7, scope: !3272)
!3318 = !DILocation(line: 65, column: 8, scope: !3272)
!3319 = !DILocation(line: 61, column: 7, scope: !3272)
!3320 = !DILocation(line: 66, column: 10, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3272, file: !3273, line: 66, column: 7)
!3322 = !DILocation(line: 66, column: 7, scope: !3272)
!3323 = !DILocation(line: 67, column: 12, scope: !3321)
!3324 = !DILocation(line: 67, column: 5, scope: !3321)
!3325 = !DILocation(line: 72, column: 9, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3272, file: !3273, line: 72, column: 7)
!3327 = !DILocation(line: 72, column: 23, scope: !3326)
!3328 = !DILocation(line: 72, column: 33, scope: !3326)
!3329 = !DILocation(line: 72, column: 26, scope: !3326)
!3330 = !DILocation(line: 72, column: 59, scope: !3326)
!3331 = !DILocation(line: 73, column: 7, scope: !3326)
!3332 = !DILocation(line: 73, column: 10, scope: !3326)
!3333 = !DILocation(line: 72, column: 7, scope: !3272)
!3334 = !DILocation(line: 100, column: 12, scope: !3272)
!3335 = !DILocation(line: 105, column: 7, scope: !3272)
!3336 = !DILocation(line: 74, column: 19, scope: !3326)
!3337 = !DILocation(line: 105, column: 19, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3272, file: !3273, line: 105, column: 7)
!3339 = !DILocation(line: 107, column: 13, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3338, file: !3273, line: 106, column: 5)
!3341 = !DILocation(line: 109, column: 5, scope: !3340)
!3342 = !DILocation(line: 0, scope: !3272)
!3343 = !DILocation(line: 112, column: 1, scope: !3272)
!3344 = distinct !DISubprogram(name: "rpl_fflush", scope: !3345, file: !3345, line: 129, type: !3346, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !593, retainedNodes: !3382)
!3345 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3346 = !DISubroutineType(types: !3347)
!3347 = !{!33, !3348}
!3348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3349, size: 64)
!3349 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2624, line: 7, baseType: !3350)
!3350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2626, line: 49, size: 1728, elements: !3351)
!3351 = !{!3352, !3353, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3376, !3377, !3378, !3379, !3380, !3381}
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3350, file: !2626, line: 51, baseType: !33, size: 32)
!3353 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3350, file: !2626, line: 54, baseType: !82, size: 64, offset: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3350, file: !2626, line: 55, baseType: !82, size: 64, offset: 128)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3350, file: !2626, line: 56, baseType: !82, size: 64, offset: 192)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3350, file: !2626, line: 57, baseType: !82, size: 64, offset: 256)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3350, file: !2626, line: 58, baseType: !82, size: 64, offset: 320)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3350, file: !2626, line: 59, baseType: !82, size: 64, offset: 384)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3350, file: !2626, line: 60, baseType: !82, size: 64, offset: 448)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3350, file: !2626, line: 61, baseType: !82, size: 64, offset: 512)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3350, file: !2626, line: 64, baseType: !82, size: 64, offset: 576)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3350, file: !2626, line: 65, baseType: !82, size: 64, offset: 640)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3350, file: !2626, line: 66, baseType: !82, size: 64, offset: 704)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3350, file: !2626, line: 68, baseType: !2641, size: 64, offset: 768)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3350, file: !2626, line: 70, baseType: !3366, size: 64, offset: 832)
!3366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3350, size: 64)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3350, file: !2626, line: 72, baseType: !33, size: 32, offset: 896)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3350, file: !2626, line: 73, baseType: !33, size: 32, offset: 928)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3350, file: !2626, line: 74, baseType: !2648, size: 64, offset: 960)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3350, file: !2626, line: 77, baseType: !111, size: 16, offset: 1024)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3350, file: !2626, line: 78, baseType: !2653, size: 8, offset: 1040)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3350, file: !2626, line: 79, baseType: !2655, size: 8, offset: 1048)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3350, file: !2626, line: 81, baseType: !2657, size: 64, offset: 1088)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3350, file: !2626, line: 89, baseType: !2660, size: 64, offset: 1152)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3350, file: !2626, line: 91, baseType: !2662, size: 64, offset: 1216)
!3376 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3350, file: !2626, line: 92, baseType: !2665, size: 64, offset: 1280)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3350, file: !2626, line: 93, baseType: !3366, size: 64, offset: 1344)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3350, file: !2626, line: 94, baseType: !24, size: 64, offset: 1408)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3350, file: !2626, line: 95, baseType: !112, size: 64, offset: 1472)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3350, file: !2626, line: 96, baseType: !33, size: 32, offset: 1536)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3350, file: !2626, line: 98, baseType: !2672, size: 160, offset: 1568)
!3382 = !{!3383}
!3383 = !DILocalVariable(name: "stream", arg: 1, scope: !3344, file: !3345, line: 129, type: !3348)
!3384 = !DILocation(line: 129, column: 19, scope: !3344)
!3385 = !DILocation(line: 150, column: 14, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3344, file: !3345, line: 150, column: 7)
!3387 = !DILocation(line: 150, column: 22, scope: !3386)
!3388 = !DILocation(line: 150, column: 27, scope: !3386)
!3389 = !DILocation(line: 150, column: 7, scope: !3344)
!3390 = !DILocation(line: 151, column: 12, scope: !3386)
!3391 = !DILocation(line: 151, column: 5, scope: !3386)
!3392 = !DILocalVariable(name: "fp", arg: 1, scope: !3393, file: !3345, line: 41, type: !3348)
!3393 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3345, file: !3345, line: 41, type: !3394, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !593, retainedNodes: !3396)
!3394 = !DISubroutineType(types: !3395)
!3395 = !{null, !3348}
!3396 = !{!3392}
!3397 = !DILocation(line: 41, column: 48, scope: !3393, inlinedAt: !3398)
!3398 = distinct !DILocation(line: 156, column: 3, scope: !3344)
!3399 = !DILocation(line: 43, column: 11, scope: !3400, inlinedAt: !3398)
!3400 = distinct !DILexicalBlock(scope: !3393, file: !3345, line: 43, column: 7)
!3401 = !DILocation(line: 43, column: 18, scope: !3400, inlinedAt: !3398)
!3402 = !DILocation(line: 43, column: 7, scope: !3393, inlinedAt: !3398)
!3403 = !DILocation(line: 45, column: 5, scope: !3400, inlinedAt: !3398)
!3404 = !DILocation(line: 158, column: 10, scope: !3344)
!3405 = !DILocation(line: 158, column: 3, scope: !3344)
!3406 = !DILocation(line: 0, scope: !3344)
!3407 = !DILocation(line: 232, column: 1, scope: !3344)
!3408 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3409, file: !3409, line: 28, type: !3410, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !595, retainedNodes: !3447)
!3409 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3410 = !DISubroutineType(types: !3411)
!3411 = !{!33, !3412, !3446, !33}
!3412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3413, size: 64)
!3413 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2624, line: 7, baseType: !3414)
!3414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2626, line: 49, size: 1728, elements: !3415)
!3415 = !{!3416, !3417, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3442, !3443, !3444, !3445}
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3414, file: !2626, line: 51, baseType: !33, size: 32)
!3417 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3414, file: !2626, line: 54, baseType: !82, size: 64, offset: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3414, file: !2626, line: 55, baseType: !82, size: 64, offset: 128)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3414, file: !2626, line: 56, baseType: !82, size: 64, offset: 192)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3414, file: !2626, line: 57, baseType: !82, size: 64, offset: 256)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3414, file: !2626, line: 58, baseType: !82, size: 64, offset: 320)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3414, file: !2626, line: 59, baseType: !82, size: 64, offset: 384)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3414, file: !2626, line: 60, baseType: !82, size: 64, offset: 448)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3414, file: !2626, line: 61, baseType: !82, size: 64, offset: 512)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3414, file: !2626, line: 64, baseType: !82, size: 64, offset: 576)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3414, file: !2626, line: 65, baseType: !82, size: 64, offset: 640)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3414, file: !2626, line: 66, baseType: !82, size: 64, offset: 704)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3414, file: !2626, line: 68, baseType: !2641, size: 64, offset: 768)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3414, file: !2626, line: 70, baseType: !3430, size: 64, offset: 832)
!3430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3414, size: 64)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3414, file: !2626, line: 72, baseType: !33, size: 32, offset: 896)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3414, file: !2626, line: 73, baseType: !33, size: 32, offset: 928)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3414, file: !2626, line: 74, baseType: !2648, size: 64, offset: 960)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3414, file: !2626, line: 77, baseType: !111, size: 16, offset: 1024)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3414, file: !2626, line: 78, baseType: !2653, size: 8, offset: 1040)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3414, file: !2626, line: 79, baseType: !2655, size: 8, offset: 1048)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3414, file: !2626, line: 81, baseType: !2657, size: 64, offset: 1088)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3414, file: !2626, line: 89, baseType: !2660, size: 64, offset: 1152)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3414, file: !2626, line: 91, baseType: !2662, size: 64, offset: 1216)
!3440 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3414, file: !2626, line: 92, baseType: !2665, size: 64, offset: 1280)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3414, file: !2626, line: 93, baseType: !3430, size: 64, offset: 1344)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3414, file: !2626, line: 94, baseType: !24, size: 64, offset: 1408)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3414, file: !2626, line: 95, baseType: !112, size: 64, offset: 1472)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3414, file: !2626, line: 96, baseType: !33, size: 32, offset: 1536)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3414, file: !2626, line: 98, baseType: !2672, size: 160, offset: 1568)
!3446 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !801, line: 63, baseType: !2648)
!3447 = !{!3448, !3449, !3450, !3451}
!3448 = !DILocalVariable(name: "fp", arg: 1, scope: !3408, file: !3409, line: 28, type: !3412)
!3449 = !DILocalVariable(name: "offset", arg: 2, scope: !3408, file: !3409, line: 28, type: !3446)
!3450 = !DILocalVariable(name: "whence", arg: 3, scope: !3408, file: !3409, line: 28, type: !33)
!3451 = !DILocalVariable(name: "pos", scope: !3452, file: !3409, line: 117, type: !3446)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !3409, line: 113, column: 5)
!3453 = distinct !DILexicalBlock(scope: !3408, file: !3409, line: 52, column: 7)
!3454 = !DILocation(line: 28, column: 15, scope: !3408)
!3455 = !DILocation(line: 28, column: 25, scope: !3408)
!3456 = !DILocation(line: 28, column: 37, scope: !3408)
!3457 = !DILocation(line: 52, column: 11, scope: !3453)
!3458 = !{!3209, !637, i64 16}
!3459 = !DILocation(line: 52, column: 31, scope: !3453)
!3460 = !{!3209, !637, i64 8}
!3461 = !DILocation(line: 52, column: 24, scope: !3453)
!3462 = !DILocation(line: 53, column: 7, scope: !3453)
!3463 = !DILocation(line: 53, column: 14, scope: !3453)
!3464 = !{!3209, !637, i64 40}
!3465 = !DILocation(line: 53, column: 35, scope: !3453)
!3466 = !{!3209, !637, i64 32}
!3467 = !DILocation(line: 53, column: 28, scope: !3453)
!3468 = !DILocation(line: 54, column: 7, scope: !3453)
!3469 = !DILocation(line: 54, column: 14, scope: !3453)
!3470 = !{!3209, !637, i64 72}
!3471 = !DILocation(line: 54, column: 28, scope: !3453)
!3472 = !DILocation(line: 52, column: 7, scope: !3408)
!3473 = !DILocation(line: 117, column: 26, scope: !3452)
!3474 = !DILocation(line: 117, column: 19, scope: !3452)
!3475 = !DILocation(line: 117, column: 13, scope: !3452)
!3476 = !DILocation(line: 118, column: 15, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3452, file: !3409, line: 118, column: 11)
!3478 = !DILocation(line: 118, column: 11, scope: !3452)
!3479 = !DILocation(line: 129, column: 11, scope: !3452)
!3480 = !DILocation(line: 129, column: 18, scope: !3452)
!3481 = !DILocation(line: 130, column: 11, scope: !3452)
!3482 = !DILocation(line: 130, column: 19, scope: !3452)
!3483 = !{!3209, !1948, i64 144}
!3484 = !DILocation(line: 161, column: 7, scope: !3452)
!3485 = !DILocation(line: 163, column: 10, scope: !3408)
!3486 = !DILocation(line: 163, column: 3, scope: !3408)
!3487 = !DILocation(line: 0, scope: !3408)
!3488 = !DILocation(line: 164, column: 1, scope: !3408)
