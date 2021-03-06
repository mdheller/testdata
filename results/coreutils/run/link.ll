; ModuleID = 'coreutils-8.30/src/link.bc'
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
@.str.1 = private unnamed_addr constant [40 x i8] c"Usage: %s FILE1 FILE2\0A  or:  %s OPTION\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Call the link function to create a link named FILE2 to an existing FILE1.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.15 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.23 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.26 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.29 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"Michael Stone\00", align 1
@long_options = internal constant [1 x %struct.option] zeroinitializer, align 16, !dbg !0
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"missing operand\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"missing operand after %s\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.14 = private unnamed_addr constant [28 x i8] c"cannot create link %s to %s\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i64 0, i64 0), align 8, !dbg !39
@.str.30 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !45
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !50
@.str.33 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.34 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.35 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !54
@opterr = external local_unnamed_addr global i32, align 4
@.str.40 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options.41 = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.42, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.43, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !61
@.str.1.42 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.43 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !77
@.str.48 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.49 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.50 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.52, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.53, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.54, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.55, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.58, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.60, i32 0, i32 0), i8* null], align 16, !dbg !85
@.str.51 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.52 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.53 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.54 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.55 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.56 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.57 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.58 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.59 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.60 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !116
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !123
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !135
@.str.11.61 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.62 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.63 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.64 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.65 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.66 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.67 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !142
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !149
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !137
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !151
@.str.74 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.75 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.76 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.77 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.78 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.79 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.80 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.81 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.82 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.83 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.84 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.85 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.86 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.87 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.90 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.91 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.92 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.93 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.94 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.95 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !157
@.str.1.106 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.116 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.117 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.120 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.121 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

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
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !640
  %11 = load i8*, i8** @program_name, align 8, !dbg !640, !tbaa !636
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11, i8* %11) #10, !dbg !640
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !641
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
  %25 = phi i8* [ %32, %29 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0), %9 ]
  %26 = phi %struct.infomap* [ %30, %29 ], [ %23, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %26, metadata !616, metadata !DIExpression()) #10, !dbg !646
  %27 = tail call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* nonnull %25) #14, !dbg !647
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
  %39 = select i1 %38, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %37, !dbg !662
  call void @llvm.dbg.value(metadata i8* %39, metadata !615, metadata !DIExpression()) #10, !dbg !663
  %40 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !664
  %41 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %40, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !664
  %42 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !665
  call void @llvm.dbg.value(metadata i8* %42, metadata !623, metadata !DIExpression()) #10, !dbg !666
  %43 = icmp eq i8* %42, null, !dbg !667
  br i1 %43, label %50, label %44, !dbg !669

; <label>:44:                                     ; preds = %34
  %45 = tail call i32 @strncmp(i8* nonnull %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i64 0, i64 0), i64 3) #14, !dbg !670
  %46 = icmp eq i32 %45, 0, !dbg !670
  br i1 %46, label %50, label %47, !dbg !671

; <label>:47:                                     ; preds = %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.26, i64 0, i64 0), i32 5) #10, !dbg !672
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !672
  br label %50, !dbg !674

; <label>:50:                                     ; preds = %34, %44, %47
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0), i32 5) #10, !dbg !675
  %52 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !675
  %53 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.28, i64 0, i64 0), i32 5) #10, !dbg !676
  %54 = icmp eq i8* %39, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), !dbg !676
  %55 = select i1 %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.29, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), !dbg !676
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
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i8* null) #10, !dbg !695
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0), %struct.option* getelementptr inbounds ([1 x %struct.option], [1 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !696
  %10 = icmp eq i32 %9, -1, !dbg !698
  br i1 %10, label %12, label %11, !dbg !699

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !700
  unreachable, !dbg !700

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !701, !tbaa !703
  %14 = add nsw i32 %13, 2, !dbg !705
  %15 = icmp sgt i32 %14, %0, !dbg !706
  br i1 %15, label %16, label %28, !dbg !707

; <label>:16:                                     ; preds = %12
  %17 = icmp slt i32 %13, %0, !dbg !708
  br i1 %17, label %20, label %18, !dbg !711

; <label>:18:                                     ; preds = %16
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 5) #10, !dbg !712
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %19) #10, !dbg !713
  br label %27, !dbg !713

; <label>:20:                                     ; preds = %16
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 5) #10, !dbg !714
  %22 = load i32, i32* @optind, align 4, !dbg !715, !tbaa !703
  %23 = sext i32 %22 to i64, !dbg !716
  %24 = getelementptr inbounds i8*, i8** %1, i64 %23, !dbg !716
  %25 = load i8*, i8** %24, align 8, !dbg !716, !tbaa !636
  %26 = tail call i8* @quote(i8* %25) #10, !dbg !717
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %21, i8* %26) #10, !dbg !718
  br label %27

; <label>:27:                                     ; preds = %20, %18
  tail call void @usage(i32 1) #16, !dbg !719
  unreachable, !dbg !719

; <label>:28:                                     ; preds = %12
  %29 = icmp slt i32 %14, %0, !dbg !720
  br i1 %29, label %30, label %38, !dbg !722

; <label>:30:                                     ; preds = %28
  %31 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 5) #10, !dbg !723
  %32 = load i32, i32* @optind, align 4, !dbg !725, !tbaa !703
  %33 = add nsw i32 %32, 2, !dbg !726
  %34 = sext i32 %33 to i64, !dbg !727
  %35 = getelementptr inbounds i8*, i8** %1, i64 %34, !dbg !727
  %36 = load i8*, i8** %35, align 8, !dbg !727, !tbaa !636
  %37 = tail call i8* @quote(i8* %36) #10, !dbg !728
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %31, i8* %37) #10, !dbg !729
  tail call void @usage(i32 1) #16, !dbg !730
  unreachable, !dbg !730

; <label>:38:                                     ; preds = %28
  %39 = sext i32 %13 to i64, !dbg !731
  %40 = getelementptr inbounds i8*, i8** %1, i64 %39, !dbg !731
  %41 = load i8*, i8** %40, align 8, !dbg !731, !tbaa !636
  %42 = add nsw i32 %13, 1, !dbg !733
  %43 = sext i32 %42 to i64, !dbg !734
  %44 = getelementptr inbounds i8*, i8** %1, i64 %43, !dbg !734
  %45 = load i8*, i8** %44, align 8, !dbg !734, !tbaa !636
  %46 = tail call i32 @link(i8* %41, i8* %45) #10, !dbg !735
  %47 = icmp eq i32 %46, 0, !dbg !736
  br i1 %47, label %63, label %48, !dbg !737

; <label>:48:                                     ; preds = %38
  %49 = tail call i32* @__errno_location() #17, !dbg !738
  %50 = load i32, i32* %49, align 4, !dbg !738, !tbaa !703
  %51 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !738
  %52 = load i32, i32* @optind, align 4, !dbg !738, !tbaa !703
  %53 = add nsw i32 %52, 1, !dbg !738
  %54 = sext i32 %53 to i64, !dbg !738
  %55 = getelementptr inbounds i8*, i8** %1, i64 %54, !dbg !738
  %56 = load i8*, i8** %55, align 8, !dbg !738, !tbaa !636
  %57 = tail call i8* @quotearg_n_style(i32 0, i32 4, i8* %56) #10, !dbg !738
  %58 = load i32, i32* @optind, align 4, !dbg !738, !tbaa !703
  %59 = sext i32 %58 to i64, !dbg !738
  %60 = getelementptr inbounds i8*, i8** %1, i64 %59, !dbg !738
  %61 = load i8*, i8** %60, align 8, !dbg !738, !tbaa !636
  %62 = tail call i8* @quotearg_n_style(i32 1, i32 4, i8* %61) #10, !dbg !738
  tail call void (i32, i32, i8*, ...) @error(i32 1, i32 %50, i8* %51, i8* %57, i8* %62) #10, !dbg !738
  unreachable, !dbg !738

; <label>:63:                                     ; preds = %38
  ret i32 0, !dbg !739
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
declare i32 @link(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !740 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !742, metadata !DIExpression()), !dbg !743
  store i8* %0, i8** @file_name, align 8, !dbg !744, !tbaa !636
  ret void, !dbg !745
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !746 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !750, metadata !DIExpression()), !dbg !751
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !752, !tbaa !753
  ret void, !dbg !755
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !756 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !763, !tbaa !636
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !764
  %3 = icmp eq i32 %2, 0, !dbg !765
  br i1 %3, label %22, label %4, !dbg !766

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !767, !tbaa !753, !range !768
  %6 = icmp eq i8 %5, 0, !dbg !767
  br i1 %6, label %11, label %7, !dbg !769

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !770
  %9 = load i32, i32* %8, align 4, !dbg !770, !tbaa !703
  %10 = icmp eq i32 %9, 32, !dbg !771
  br i1 %10, label %22, label %11, !dbg !772

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !773
  call void @llvm.dbg.value(metadata i8* %12, metadata !760, metadata !DIExpression()), !dbg !774
  %13 = load i8*, i8** @file_name, align 8, !dbg !775, !tbaa !636
  %14 = icmp eq i8* %13, null, !dbg !775
  %15 = tail call i32* @__errno_location() #17, !dbg !777
  %16 = load i32, i32* %15, align 4, !dbg !777, !tbaa !703
  br i1 %14, label %19, label %17, !dbg !778

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !779
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.34, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !780
  br label %20, !dbg !780

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.35, i64 0, i64 0), i8* %12) #10, !dbg !781
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !782, !tbaa !703
  tail call void @_exit(i32 %21) #15, !dbg !783
  unreachable, !dbg !783

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !784, !tbaa !636
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !786
  %25 = icmp eq i32 %24, 0, !dbg !787
  br i1 %25, label %28, label %26, !dbg !788

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !789, !tbaa !703
  tail call void @_exit(i32 %27) #15, !dbg !790
  unreachable, !dbg !790

; <label>:28:                                     ; preds = %22
  ret void, !dbg !791
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #7 !dbg !792 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !797, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.value(metadata i8** %1, metadata !798, metadata !DIExpression()), !dbg !823
  call void @llvm.dbg.value(metadata i8* %2, metadata !799, metadata !DIExpression()), !dbg !824
  call void @llvm.dbg.value(metadata i8* %3, metadata !800, metadata !DIExpression()), !dbg !825
  call void @llvm.dbg.value(metadata i8* %4, metadata !801, metadata !DIExpression()), !dbg !826
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !802, metadata !DIExpression()), !dbg !827
  %8 = load i32, i32* @opterr, align 4, !dbg !828, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %8, metadata !804, metadata !DIExpression()), !dbg !829
  store i32 0, i32* @opterr, align 4, !dbg !830, !tbaa !703
  %9 = icmp eq i32 %0, 2, !dbg !831
  br i1 %9, label %10, label %17, !dbg !832

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options.41, i64 0, i64 0), i32* null) #10, !dbg !833
  call void @llvm.dbg.value(metadata i32 %11, metadata !803, metadata !DIExpression()), !dbg !834
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !835

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !836
  br label %17, !dbg !837

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !838
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #10, !dbg !838
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !805, metadata !DIExpression()), !dbg !839
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !840
  call void @llvm.va_start(i8* nonnull %14), !dbg !840
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !841, !tbaa !636
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !842
  call void @exit(i32 0) #15, !dbg !843
  unreachable, !dbg !843

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !844, !tbaa !703
  store i32 0, i32* @optind, align 4, !dbg !845, !tbaa !703
  ret void, !dbg !846
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !847 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !849, metadata !DIExpression()), !dbg !852
  %2 = icmp eq i8* %0, null, !dbg !853
  br i1 %2, label %3, label %6, !dbg !855

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !856, !tbaa !636
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.48, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !858
  tail call void @abort() #15, !dbg !859
  unreachable, !dbg !859

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !860
  call void @llvm.dbg.value(metadata i8* %7, metadata !850, metadata !DIExpression()), !dbg !861
  %8 = icmp eq i8* %7, null, !dbg !862
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !863
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !864
  call void @llvm.dbg.value(metadata i8* %10, metadata !851, metadata !DIExpression()), !dbg !865
  %11 = ptrtoint i8* %10 to i64, !dbg !866
  %12 = ptrtoint i8* %0 to i64, !dbg !866
  %13 = sub i64 %11, %12, !dbg !866
  %14 = icmp sgt i64 %13, 6, !dbg !868
  br i1 %14, label %15, label %24, !dbg !869

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !870
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.49, i64 0, i64 0), i64 7) #14, !dbg !871
  %18 = icmp eq i32 %17, 0, !dbg !872
  br i1 %18, label %19, label %24, !dbg !873

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !849, metadata !DIExpression()), !dbg !852
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.50, i64 0, i64 0), i64 3) #14, !dbg !874
  %21 = icmp eq i32 %20, 0, !dbg !877
  br i1 %21, label %22, label %24, !dbg !878

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !879
  call void @llvm.dbg.value(metadata i8* %23, metadata !849, metadata !DIExpression()), !dbg !852
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !881, !tbaa !636
  br label %24, !dbg !882

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !849, metadata !DIExpression()), !dbg !852
  store i8* %25, i8** @program_name, align 8, !dbg !883, !tbaa !636
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !884, !tbaa !636
  ret void, !dbg !885
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !886 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !891, metadata !DIExpression()), !dbg !894
  %2 = tail call i32* @__errno_location() #17, !dbg !895
  %3 = load i32, i32* %2, align 4, !dbg !895, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %3, metadata !892, metadata !DIExpression()), !dbg !896
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !897
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !897
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !897
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !898
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !898
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !893, metadata !DIExpression()), !dbg !899
  store i32 %3, i32* %2, align 4, !dbg !900, !tbaa !703
  ret %struct.quoting_options* %8, !dbg !901
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !902 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !908, metadata !DIExpression()), !dbg !909
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !910
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !910
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !911
  %5 = load i32, i32* %4, align 8, !dbg !911, !tbaa !912
  ret i32 %5, !dbg !914
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !915 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !919, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i32 %1, metadata !920, metadata !DIExpression()), !dbg !922
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !923
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !923
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !924
  store i32 %1, i32* %5, align 8, !dbg !925, !tbaa !912
  ret void, !dbg !926
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !927 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !931, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata i8 %1, metadata !932, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.value(metadata i32 %2, metadata !933, metadata !DIExpression()), !dbg !942
  call void @llvm.dbg.value(metadata i8 %1, metadata !934, metadata !DIExpression()), !dbg !943
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !944
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !944
  %6 = lshr i8 %1, 5, !dbg !945
  %7 = zext i8 %6 to i64, !dbg !945
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !946
  call void @llvm.dbg.value(metadata i32* %8, metadata !936, metadata !DIExpression()), !dbg !947
  %9 = and i8 %1, 31, !dbg !948
  %10 = zext i8 %9 to i32, !dbg !948
  call void @llvm.dbg.value(metadata i32 %10, metadata !938, metadata !DIExpression()), !dbg !949
  %11 = load i32, i32* %8, align 4, !dbg !950, !tbaa !703
  %12 = lshr i32 %11, %10, !dbg !951
  %13 = and i32 %12, 1, !dbg !952
  call void @llvm.dbg.value(metadata i32 %13, metadata !939, metadata !DIExpression()), !dbg !953
  %14 = and i32 %2, 1, !dbg !954
  %15 = xor i32 %13, %14, !dbg !955
  %16 = shl i32 %15, %10, !dbg !956
  %17 = xor i32 %16, %11, !dbg !957
  store i32 %17, i32* %8, align 4, !dbg !957, !tbaa !703
  ret i32 %13, !dbg !958
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !959 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !963, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.value(metadata i32 %1, metadata !964, metadata !DIExpression()), !dbg !967
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !968
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !970
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !963, metadata !DIExpression()), !dbg !966
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !971
  %6 = load i32, i32* %5, align 4, !dbg !971, !tbaa !972
  call void @llvm.dbg.value(metadata i32 %6, metadata !965, metadata !DIExpression()), !dbg !973
  store i32 %1, i32* %5, align 4, !dbg !974, !tbaa !972
  ret i32 %6, !dbg !975
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !976 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !980, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.value(metadata i8* %1, metadata !981, metadata !DIExpression()), !dbg !984
  call void @llvm.dbg.value(metadata i8* %2, metadata !982, metadata !DIExpression()), !dbg !985
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !986
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !988
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !980, metadata !DIExpression()), !dbg !983
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !989
  store i32 10, i32* %6, align 8, !dbg !990, !tbaa !912
  %7 = icmp ne i8* %1, null, !dbg !991
  %8 = icmp ne i8* %2, null, !dbg !993
  %9 = and i1 %7, %8, !dbg !994
  br i1 %9, label %11, label %10, !dbg !994

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !995
  unreachable, !dbg !995

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !996
  store i8* %1, i8** %12, align 8, !dbg !997, !tbaa !998
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !999
  store i8* %2, i8** %13, align 8, !dbg !1000, !tbaa !1001
  ret void, !dbg !1002
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1003 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1007, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.value(metadata i64 %1, metadata !1008, metadata !DIExpression()), !dbg !1016
  call void @llvm.dbg.value(metadata i8* %2, metadata !1009, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.value(metadata i64 %3, metadata !1010, metadata !DIExpression()), !dbg !1018
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1011, metadata !DIExpression()), !dbg !1019
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1020
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1020
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1012, metadata !DIExpression()), !dbg !1021
  %8 = tail call i32* @__errno_location() #17, !dbg !1022
  %9 = load i32, i32* %8, align 4, !dbg !1022, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %9, metadata !1013, metadata !DIExpression()), !dbg !1023
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1024
  %11 = load i32, i32* %10, align 8, !dbg !1024, !tbaa !912
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1025
  %13 = load i32, i32* %12, align 4, !dbg !1025, !tbaa !972
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1026
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1027
  %16 = load i8*, i8** %15, align 8, !dbg !1027, !tbaa !998
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1028
  %18 = load i8*, i8** %17, align 8, !dbg !1028, !tbaa !1001
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1029
  call void @llvm.dbg.value(metadata i64 %19, metadata !1014, metadata !DIExpression()), !dbg !1030
  store i32 %9, i32* %8, align 4, !dbg !1031, !tbaa !703
  ret i64 %19, !dbg !1032
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1033 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1039, metadata !DIExpression()), !dbg !1103
  call void @llvm.dbg.value(metadata i64 %1, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %2, metadata !1041, metadata !DIExpression()), !dbg !1105
  call void @llvm.dbg.value(metadata i64 %3, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i32 %4, metadata !1043, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %5, metadata !1044, metadata !DIExpression()), !dbg !1108
  call void @llvm.dbg.value(metadata i32* %6, metadata !1045, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.value(metadata i8* %7, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %8, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 0, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 0, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8* null, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 0, metadata !1052, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i8 0, metadata !1053, metadata !DIExpression()), !dbg !1116
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1117
  %14 = icmp eq i64 %13, 1, !dbg !1118
  %15 = lshr i32 %5, 1, !dbg !1119
  %16 = trunc i32 %15 to i8, !dbg !1119
  %17 = and i8 %16, 1, !dbg !1119
  call void @llvm.dbg.value(metadata i8 %17, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i8 0, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8 0, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 1, metadata !1058, metadata !DIExpression()), !dbg !1122
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1123

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1113
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1114
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1115
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1116
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1124
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1120
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1121
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1122
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %39, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %38, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %37, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %36, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i64 %35, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %34, metadata !1053, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %33, metadata !1052, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i8* %32, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %31, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 0, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8* %30, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %29, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i32 %28, metadata !1043, metadata !DIExpression()), !dbg !1107
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
  ], !dbg !1126

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1043, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i8 1, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i8 %36, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 5, metadata !1043, metadata !DIExpression()), !dbg !1107
  br label %93, !dbg !1127

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i32 5, metadata !1043, metadata !DIExpression()), !dbg !1107
  %43 = and i8 %36, 1, !dbg !1128
  %44 = icmp eq i8 %43, 0, !dbg !1128
  br i1 %44, label %45, label %93, !dbg !1127

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1130
  br i1 %46, label %93, label %47, !dbg !1133

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1130, !tbaa !1134
  br label %93, !dbg !1130

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.61, i64 0, i64 0), i32 %28), !dbg !1135
  call void @llvm.dbg.value(metadata i8* %49, metadata !1046, metadata !DIExpression()), !dbg !1110
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), i32 %28), !dbg !1139
  call void @llvm.dbg.value(metadata i8* %50, metadata !1047, metadata !DIExpression()), !dbg !1111
  br label %51, !dbg !1140

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %52, metadata !1046, metadata !DIExpression()), !dbg !1110
  %54 = and i8 %36, 1, !dbg !1141
  %55 = icmp eq i8 %54, 0, !dbg !1141
  br i1 %55, label %56, label %71, !dbg !1143

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 0, metadata !1049, metadata !DIExpression()), !dbg !1112
  %57 = load i8, i8* %52, align 1, !dbg !1144, !tbaa !1134
  %58 = icmp eq i8 %57, 0, !dbg !1147
  br i1 %58, label %71, label %59, !dbg !1147

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %62, metadata !1049, metadata !DIExpression()), !dbg !1112
  %63 = icmp ult i64 %62, %40, !dbg !1148
  br i1 %63, label %64, label %66, !dbg !1151

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1148
  store i8 %60, i8* %65, align 1, !dbg !1148, !tbaa !1134
  br label %66, !dbg !1148

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1151
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1152
  call void @llvm.dbg.value(metadata i8* %68, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %67, metadata !1049, metadata !DIExpression()), !dbg !1112
  %69 = load i8, i8* %68, align 1, !dbg !1144, !tbaa !1134
  %70 = icmp eq i8 %69, 0, !dbg !1147
  br i1 %70, label %71, label %59, !dbg !1147, !llvm.loop !1153

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1112
  call void @llvm.dbg.value(metadata i64 %72, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 1, metadata !1053, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8* %53, metadata !1051, metadata !DIExpression()), !dbg !1114
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1155
  call void @llvm.dbg.value(metadata i64 %73, metadata !1052, metadata !DIExpression()), !dbg !1115
  br label %93, !dbg !1156

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1053, metadata !DIExpression()), !dbg !1116
  br label %75, !dbg !1157

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1124
  call void @llvm.dbg.value(metadata i8 %76, metadata !1053, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 1, metadata !1055, metadata !DIExpression()), !dbg !1119
  br label %77, !dbg !1158

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1116
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1124
  call void @llvm.dbg.value(metadata i8 %79, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i8 %78, metadata !1053, metadata !DIExpression()), !dbg !1116
  %80 = and i8 %79, 1, !dbg !1159
  %81 = icmp eq i8 %80, 0, !dbg !1159
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1161
  br label %83, !dbg !1161

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1162
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1119
  call void @llvm.dbg.value(metadata i8 %85, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i8 %84, metadata !1053, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i32 2, metadata !1043, metadata !DIExpression()), !dbg !1107
  %86 = and i8 %85, 1, !dbg !1163
  %87 = icmp eq i8 %86, 0, !dbg !1163
  br i1 %87, label %88, label %93, !dbg !1165

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1166
  br i1 %89, label %93, label %90, !dbg !1169

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1166, !tbaa !1134
  br label %93, !dbg !1166

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1055, metadata !DIExpression()), !dbg !1119
  br label %93, !dbg !1170

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1171
  unreachable, !dbg !1171

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1112
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), %41 ], !dbg !1124
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1124
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1124
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1172
  call void @llvm.dbg.value(metadata i8 %101, metadata !1055, metadata !DIExpression()), !dbg !1119
  call void @llvm.dbg.value(metadata i8 %100, metadata !1053, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %99, metadata !1052, metadata !DIExpression()), !dbg !1115
  call void @llvm.dbg.value(metadata i8* %98, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %97, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i32 %94, metadata !1043, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i64 0, metadata !1048, metadata !DIExpression()), !dbg !1173
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
  br label %121, !dbg !1174

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1175
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1112
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1113
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1120
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1121
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1122
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %128, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %127, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %126, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %125, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %122, metadata !1048, metadata !DIExpression()), !dbg !1173
  %130 = icmp eq i64 %125, -1, !dbg !1176
  br i1 %130, label %131, label %135, !dbg !1177

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1178
  %133 = load i8, i8* %132, align 1, !dbg !1178, !tbaa !1134
  %134 = icmp eq i8 %133, 0, !dbg !1179
  br i1 %134, label %617, label %137, !dbg !1180

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1181
  br i1 %136, label %617, label %137, !dbg !1180

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1064, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 0, metadata !1065, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 0, metadata !1066, metadata !DIExpression()), !dbg !1184
  br i1 %107, label %138, label %153, !dbg !1185

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1187
  %140 = and i1 %108, %130, !dbg !1188
  br i1 %140, label %141, label %143, !dbg !1188

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %142, metadata !1042, metadata !DIExpression()), !dbg !1106
  br label %143, !dbg !1190

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1042, metadata !DIExpression()), !dbg !1106
  %145 = icmp ugt i64 %139, %144, !dbg !1191
  br i1 %145, label %153, label %146, !dbg !1192

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1193
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1194
  %149 = icmp ne i32 %148, 0, !dbg !1195
  %150 = or i1 %149, %110, !dbg !1196
  %151 = xor i1 %149, true, !dbg !1196
  %152 = zext i1 %151 to i8, !dbg !1196
  br i1 %150, label %153, label %661, !dbg !1196

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1197
  call void @llvm.dbg.value(metadata i8 %155, metadata !1064, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i64 %154, metadata !1042, metadata !DIExpression()), !dbg !1106
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1198
  %157 = load i8, i8* %156, align 1, !dbg !1198, !tbaa !1134
  call void @llvm.dbg.value(metadata i8 %157, metadata !1059, metadata !DIExpression()), !dbg !1199
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
  ], !dbg !1200

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1201

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1202

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1065, metadata !DIExpression()), !dbg !1183
  %161 = and i8 %126, 1, !dbg !1206
  %162 = icmp eq i8 %161, 0, !dbg !1206
  %163 = and i1 %114, %162, !dbg !1206
  br i1 %163, label %164, label %180, !dbg !1206

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1208
  br i1 %165, label %166, label %168, !dbg !1212

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1208
  store i8 39, i8* %167, align 1, !dbg !1208, !tbaa !1134
  br label %168, !dbg !1208

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %169, metadata !1049, metadata !DIExpression()), !dbg !1112
  %170 = icmp ult i64 %169, %129, !dbg !1213
  br i1 %170, label %171, label %173, !dbg !1216

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1213
  store i8 36, i8* %172, align 1, !dbg !1213, !tbaa !1134
  br label %173, !dbg !1213

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1216
  call void @llvm.dbg.value(metadata i64 %174, metadata !1049, metadata !DIExpression()), !dbg !1112
  %175 = icmp ult i64 %174, %129, !dbg !1217
  br i1 %175, label %176, label %178, !dbg !1220

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1217
  store i8 39, i8* %177, align 1, !dbg !1217, !tbaa !1134
  br label %178, !dbg !1217

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1220
  call void @llvm.dbg.value(metadata i64 %179, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 1, metadata !1056, metadata !DIExpression()), !dbg !1120
  br label %180, !dbg !1221

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1172
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1172
  call void @llvm.dbg.value(metadata i8 %182, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %181, metadata !1049, metadata !DIExpression()), !dbg !1112
  %183 = icmp ult i64 %181, %129, !dbg !1222
  br i1 %183, label %184, label %186, !dbg !1225

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1222
  store i8 92, i8* %185, align 1, !dbg !1222, !tbaa !1134
  br label %186, !dbg !1222

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1225
  call void @llvm.dbg.value(metadata i64 %187, metadata !1049, metadata !DIExpression()), !dbg !1112
  br i1 %104, label %188, label %478, !dbg !1226

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1228
  %190 = icmp ult i64 %189, %154, !dbg !1229
  br i1 %190, label %191, label %467, !dbg !1230

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1231
  %193 = load i8, i8* %192, align 1, !dbg !1231, !tbaa !1134
  %194 = add i8 %193, -48, !dbg !1232
  %195 = icmp ult i8 %194, 10, !dbg !1232
  br i1 %195, label %196, label %467, !dbg !1232

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1233
  br i1 %197, label %198, label %200, !dbg !1237

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1233
  store i8 48, i8* %199, align 1, !dbg !1233, !tbaa !1134
  br label %200, !dbg !1233

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1237
  call void @llvm.dbg.value(metadata i64 %201, metadata !1049, metadata !DIExpression()), !dbg !1112
  %202 = icmp ult i64 %201, %129, !dbg !1238
  br i1 %202, label %203, label %205, !dbg !1241

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1238
  store i8 48, i8* %204, align 1, !dbg !1238, !tbaa !1134
  br label %205, !dbg !1238

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1241
  call void @llvm.dbg.value(metadata i64 %206, metadata !1049, metadata !DIExpression()), !dbg !1112
  br label %467, !dbg !1242

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1243

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1244

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1245

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1247

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1249
  %213 = icmp ult i64 %212, %154, !dbg !1250
  br i1 %213, label %214, label %467, !dbg !1251

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1252
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1253
  %217 = load i8, i8* %216, align 1, !dbg !1253, !tbaa !1134
  %218 = icmp eq i8 %217, 63, !dbg !1254
  br i1 %218, label %219, label %467, !dbg !1255

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1256
  %221 = load i8, i8* %220, align 1, !dbg !1256, !tbaa !1134
  %222 = sext i8 %221 to i32, !dbg !1256
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
  ], !dbg !1257

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1258

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1059, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i64 %212, metadata !1048, metadata !DIExpression()), !dbg !1173
  %225 = icmp ult i64 %123, %129, !dbg !1260
  br i1 %225, label %226, label %228, !dbg !1263

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1260
  store i8 63, i8* %227, align 1, !dbg !1260, !tbaa !1134
  br label %228, !dbg !1260

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1263
  call void @llvm.dbg.value(metadata i64 %229, metadata !1049, metadata !DIExpression()), !dbg !1112
  %230 = icmp ult i64 %229, %129, !dbg !1264
  br i1 %230, label %231, label %233, !dbg !1267

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1264
  store i8 34, i8* %232, align 1, !dbg !1264, !tbaa !1134
  br label %233, !dbg !1264

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1267
  call void @llvm.dbg.value(metadata i64 %234, metadata !1049, metadata !DIExpression()), !dbg !1112
  %235 = icmp ult i64 %234, %129, !dbg !1268
  br i1 %235, label %236, label %238, !dbg !1271

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1268
  store i8 34, i8* %237, align 1, !dbg !1268, !tbaa !1134
  br label %238, !dbg !1268

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1271
  call void @llvm.dbg.value(metadata i64 %239, metadata !1049, metadata !DIExpression()), !dbg !1112
  %240 = icmp ult i64 %239, %129, !dbg !1272
  br i1 %240, label %241, label %243, !dbg !1275

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1272
  store i8 63, i8* %242, align 1, !dbg !1272, !tbaa !1134
  br label %243, !dbg !1272

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1275
  call void @llvm.dbg.value(metadata i64 %244, metadata !1049, metadata !DIExpression()), !dbg !1112
  br label %467, !dbg !1276

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1063, metadata !DIExpression()), !dbg !1277
  br label %255, !dbg !1278

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1063, metadata !DIExpression()), !dbg !1277
  br label %255, !dbg !1279

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1063, metadata !DIExpression()), !dbg !1277
  br label %253, !dbg !1280

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1063, metadata !DIExpression()), !dbg !1277
  br label %253, !dbg !1281

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1063, metadata !DIExpression()), !dbg !1277
  br label %255, !dbg !1282

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1063, metadata !DIExpression()), !dbg !1277
  br i1 %114, label %251, label %252, !dbg !1283

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1284

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1287

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1289
  call void @llvm.dbg.value(metadata i8 %254, metadata !1063, metadata !DIExpression()), !dbg !1277
  br i1 %113, label %255, label %661, !dbg !1290

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1289
  call void @llvm.dbg.value(metadata i8 %256, metadata !1063, metadata !DIExpression()), !dbg !1277
  br i1 %103, label %524, label %478, !dbg !1292

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1293
  br i1 %258, label %259, label %264, !dbg !1295

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1296, !tbaa !1134
  %261 = icmp ne i8 %260, 0, !dbg !1297
  %262 = icmp ne i64 %122, 0, !dbg !1298
  %263 = or i1 %262, %261, !dbg !1300
  br i1 %263, label %467, label %270, !dbg !1300

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1301
  %266 = icmp ne i64 %122, 0, !dbg !1298
  %267 = or i1 %266, %265, !dbg !1295
  br i1 %267, label %467, label %270, !dbg !1295

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1298
  br i1 %269, label %270, label %467, !dbg !1302

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1066, metadata !DIExpression()), !dbg !1184
  br label %271, !dbg !1303

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1289
  call void @llvm.dbg.value(metadata i8 %272, metadata !1066, metadata !DIExpression()), !dbg !1184
  br i1 %113, label %467, label %661, !dbg !1304

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 1, metadata !1066, metadata !DIExpression()), !dbg !1184
  br i1 %114, label %274, label %467, !dbg !1306

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1307

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1310
  %277 = icmp ne i64 %124, 0, !dbg !1312
  %278 = or i1 %277, %276, !dbg !1313
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1313
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %280, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %279, metadata !1050, metadata !DIExpression()), !dbg !1113
  %281 = icmp ult i64 %123, %280, !dbg !1314
  br i1 %281, label %282, label %284, !dbg !1317

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1314
  store i8 39, i8* %283, align 1, !dbg !1314, !tbaa !1134
  br label %284, !dbg !1314

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1317
  call void @llvm.dbg.value(metadata i64 %285, metadata !1049, metadata !DIExpression()), !dbg !1112
  %286 = icmp ult i64 %285, %280, !dbg !1318
  br i1 %286, label %287, label %289, !dbg !1321

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1318
  store i8 92, i8* %288, align 1, !dbg !1318, !tbaa !1134
  br label %289, !dbg !1318

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1321
  call void @llvm.dbg.value(metadata i64 %290, metadata !1049, metadata !DIExpression()), !dbg !1112
  %291 = icmp ult i64 %290, %280, !dbg !1322
  br i1 %291, label %292, label %294, !dbg !1325

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1322
  store i8 39, i8* %293, align 1, !dbg !1322, !tbaa !1134
  br label %294, !dbg !1322

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1325
  call void @llvm.dbg.value(metadata i64 %295, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 0, metadata !1056, metadata !DIExpression()), !dbg !1120
  br label %467, !dbg !1326

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1327

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1067, metadata !DIExpression()), !dbg !1328
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1329
  %299 = load i16*, i16** %298, align 8, !dbg !1329, !tbaa !636
  %300 = zext i8 %157 to i64, !dbg !1329
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1329
  %302 = load i16, i16* %301, align 2, !dbg !1329, !tbaa !1331
  %303 = lshr i16 %302, 14, !dbg !1333
  %304 = trunc i16 %303 to i8, !dbg !1333
  %305 = and i8 %304, 1, !dbg !1333
  call void @llvm.dbg.value(metadata i8 %305, metadata !1070, metadata !DIExpression()), !dbg !1334
  br label %359, !dbg !1335

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1336
  store i64 0, i64* %10, align 8, !dbg !1337
  call void @llvm.dbg.value(metadata i64 0, metadata !1067, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i8 1, metadata !1070, metadata !DIExpression()), !dbg !1334
  %307 = icmp eq i64 %154, -1, !dbg !1338
  br i1 %307, label %308, label %310, !dbg !1340

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1341
  call void @llvm.dbg.value(metadata i64 %309, metadata !1042, metadata !DIExpression()), !dbg !1106
  br label %310, !dbg !1342

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1343
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  br label %312, !dbg !1344

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1345
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1346
  call void @llvm.dbg.value(metadata i8 %314, metadata !1070, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i64 %313, metadata !1067, metadata !DIExpression()), !dbg !1328
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1347
  %315 = add i64 %313, %122, !dbg !1348
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1349
  %317 = sub i64 %311, %315, !dbg !1350
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1071, metadata !DIExpression(DW_OP_deref)), !dbg !1351
  call void @llvm.dbg.value(metadata i32* %12, metadata !1089, metadata !DIExpression(DW_OP_deref)), !dbg !1352
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1353
  call void @llvm.dbg.value(metadata i64 %318, metadata !1092, metadata !DIExpression()), !dbg !1354
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1355

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1067, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %313, metadata !1067, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %313, metadata !1067, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %313, metadata !1067, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %313, metadata !1067, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %313, metadata !1067, metadata !DIExpression()), !dbg !1328
  %320 = icmp ugt i64 %311, %315, !dbg !1356
  br i1 %320, label %321, label %344, !dbg !1358

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1067, metadata !DIExpression()), !dbg !1328
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1359
  %325 = load i8, i8* %324, align 1, !dbg !1359, !tbaa !1134
  %326 = icmp eq i8 %325, 0, !dbg !1358
  br i1 %326, label %344, label %327, !dbg !1360

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %328, metadata !1067, metadata !DIExpression()), !dbg !1328
  %329 = add i64 %328, %122, !dbg !1362
  %330 = icmp ult i64 %329, %311, !dbg !1356
  br i1 %330, label %321, label %344, !dbg !1358, !llvm.loop !1363

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1364
  %333 = and i1 %116, %332, !dbg !1367
  call void @llvm.dbg.value(metadata i64 1, metadata !1093, metadata !DIExpression()), !dbg !1368
  br i1 %333, label %334, label %347, !dbg !1367

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1093, metadata !DIExpression()), !dbg !1368
  %336 = add i64 %335, %315, !dbg !1369
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1370
  %338 = load i8, i8* %337, align 1, !dbg !1370, !tbaa !1134
  %339 = sext i8 %338 to i32, !dbg !1370
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1371

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1372
  call void @llvm.dbg.value(metadata i64 %341, metadata !1093, metadata !DIExpression()), !dbg !1368
  %342 = icmp ult i64 %341, %318, !dbg !1364
  br i1 %342, label %334, label %347, !dbg !1373, !llvm.loop !1374

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1067, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i8 %314, metadata !1070, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i64 %313, metadata !1067, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i8 %314, metadata !1070, metadata !DIExpression()), !dbg !1334
  br label %344, !dbg !1376

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1070, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i64 %352, metadata !1067, metadata !DIExpression()), !dbg !1328
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1376
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1377, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %348, metadata !1089, metadata !DIExpression()), !dbg !1352
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1379
  %350 = icmp eq i32 %349, 0, !dbg !1379
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1380
  call void @llvm.dbg.value(metadata i8 %351, metadata !1070, metadata !DIExpression()), !dbg !1334
  %352 = add i64 %318, %313, !dbg !1381
  call void @llvm.dbg.value(metadata i64 %352, metadata !1067, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i8 %351, metadata !1070, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i64 %352, metadata !1067, metadata !DIExpression()), !dbg !1328
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1376
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1071, metadata !DIExpression(DW_OP_deref)), !dbg !1351
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1382
  %354 = icmp eq i32 %353, 0, !dbg !1383
  br i1 %354, label %312, label %355, !dbg !1384, !llvm.loop !1385

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1387
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i32 2, metadata !1043, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i32 2, metadata !1043, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i32 2, metadata !1043, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i32 2, metadata !1043, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i32 2, metadata !1043, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %100, metadata !1053, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %100, metadata !1053, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %100, metadata !1053, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %100, metadata !1053, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %100, metadata !1053, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i32 %94, metadata !1043, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %94, metadata !1043, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %94, metadata !1043, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %94, metadata !1043, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i32 %94, metadata !1043, metadata !DIExpression()), !dbg !1107
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8 %100, metadata !1053, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %100, metadata !1053, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %100, metadata !1053, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %100, metadata !1053, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i8 %100, metadata !1053, metadata !DIExpression()), !dbg !1116
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %311, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %351, metadata !1070, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i64 %352, metadata !1067, metadata !DIExpression()), !dbg !1328
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1376
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1387
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1388
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1389
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1389
  call void @llvm.dbg.value(metadata i8 %362, metadata !1070, metadata !DIExpression()), !dbg !1334
  call void @llvm.dbg.value(metadata i64 %361, metadata !1067, metadata !DIExpression()), !dbg !1328
  call void @llvm.dbg.value(metadata i64 %360, metadata !1042, metadata !DIExpression()), !dbg !1106
  %363 = and i8 %362, 1, !dbg !1390
  %364 = icmp ne i8 %363, 0, !dbg !1390
  call void @llvm.dbg.value(metadata i8 %363, metadata !1066, metadata !DIExpression()), !dbg !1184
  %365 = icmp ult i64 %361, 2, !dbg !1391
  %366 = or i1 %364, %115, !dbg !1392
  %367 = and i1 %365, %366, !dbg !1393
  br i1 %367, label %467, label %368, !dbg !1393

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %369, metadata !1100, metadata !DIExpression()), !dbg !1395
  br label %370, !dbg !1396

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1397
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1401
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1120
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1397
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1403
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1183
  call void @llvm.dbg.value(metadata i8 %376, metadata !1065, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %375, metadata !1064, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %374, metadata !1059, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i8 %373, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %372, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %371, metadata !1048, metadata !DIExpression()), !dbg !1173
  br i1 %366, label %423, label %377, !dbg !1407

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1408

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1065, metadata !DIExpression()), !dbg !1183
  %379 = and i8 %373, 1, !dbg !1411
  %380 = icmp eq i8 %379, 0, !dbg !1411
  %381 = and i1 %114, %380, !dbg !1411
  br i1 %381, label %382, label %398, !dbg !1411

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1413
  br i1 %383, label %384, label %386, !dbg !1417

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1413
  store i8 39, i8* %385, align 1, !dbg !1413, !tbaa !1134
  br label %386, !dbg !1413

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1417
  call void @llvm.dbg.value(metadata i64 %387, metadata !1049, metadata !DIExpression()), !dbg !1112
  %388 = icmp ult i64 %387, %129, !dbg !1418
  br i1 %388, label %389, label %391, !dbg !1421

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1418
  store i8 36, i8* %390, align 1, !dbg !1418, !tbaa !1134
  br label %391, !dbg !1418

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1421
  call void @llvm.dbg.value(metadata i64 %392, metadata !1049, metadata !DIExpression()), !dbg !1112
  %393 = icmp ult i64 %392, %129, !dbg !1422
  br i1 %393, label %394, label %396, !dbg !1425

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1422
  store i8 39, i8* %395, align 1, !dbg !1422, !tbaa !1134
  br label %396, !dbg !1422

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1425
  call void @llvm.dbg.value(metadata i64 %397, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 1, metadata !1056, metadata !DIExpression()), !dbg !1120
  br label %398, !dbg !1426

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1172
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1172
  call void @llvm.dbg.value(metadata i8 %400, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %399, metadata !1049, metadata !DIExpression()), !dbg !1112
  %401 = icmp ult i64 %399, %129, !dbg !1427
  br i1 %401, label %402, label %404, !dbg !1430

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1427
  store i8 92, i8* %403, align 1, !dbg !1427, !tbaa !1134
  br label %404, !dbg !1427

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1430
  call void @llvm.dbg.value(metadata i64 %405, metadata !1049, metadata !DIExpression()), !dbg !1112
  %406 = icmp ult i64 %405, %129, !dbg !1431
  br i1 %406, label %407, label %411, !dbg !1434

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1431
  %409 = or i8 %408, 48, !dbg !1431
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1431
  store i8 %409, i8* %410, align 1, !dbg !1431, !tbaa !1134
  br label %411, !dbg !1431

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1434
  call void @llvm.dbg.value(metadata i64 %412, metadata !1049, metadata !DIExpression()), !dbg !1112
  %413 = icmp ult i64 %412, %129, !dbg !1435
  br i1 %413, label %414, label %419, !dbg !1438

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1435
  %416 = and i8 %415, 7, !dbg !1435
  %417 = or i8 %416, 48, !dbg !1435
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1435
  store i8 %417, i8* %418, align 1, !dbg !1435, !tbaa !1134
  br label %419, !dbg !1435

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1438
  call void @llvm.dbg.value(metadata i64 %420, metadata !1049, metadata !DIExpression()), !dbg !1112
  %421 = and i8 %374, 7, !dbg !1439
  %422 = or i8 %421, 48, !dbg !1440
  call void @llvm.dbg.value(metadata i8 %422, metadata !1059, metadata !DIExpression()), !dbg !1199
  br label %432, !dbg !1441

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1442
  %425 = icmp eq i8 %424, 0, !dbg !1442
  br i1 %425, label %432, label %426, !dbg !1443

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1444
  br i1 %427, label %428, label %430, !dbg !1447

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1444
  store i8 92, i8* %429, align 1, !dbg !1444, !tbaa !1134
  br label %430, !dbg !1444

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1447
  call void @llvm.dbg.value(metadata i64 %431, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 0, metadata !1064, metadata !DIExpression()), !dbg !1182
  br label %432, !dbg !1448

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1449
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1120
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1450
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1451
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1453
  call void @llvm.dbg.value(metadata i8 %437, metadata !1065, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %436, metadata !1064, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %435, metadata !1059, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i8 %434, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %433, metadata !1049, metadata !DIExpression()), !dbg !1112
  %438 = add i64 %371, 1, !dbg !1454
  %439 = icmp ugt i64 %369, %438, !dbg !1456
  br i1 %439, label %440, label %562, !dbg !1457

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1458
  %442 = icmp ne i8 %441, 0, !dbg !1458
  %443 = and i8 %437, 1, !dbg !1458
  %444 = icmp eq i8 %443, 0, !dbg !1458
  %445 = and i1 %442, %444, !dbg !1458
  br i1 %445, label %446, label %457, !dbg !1458

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1461
  br i1 %447, label %448, label %450, !dbg !1465

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1461
  store i8 39, i8* %449, align 1, !dbg !1461, !tbaa !1134
  br label %450, !dbg !1461

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1465
  call void @llvm.dbg.value(metadata i64 %451, metadata !1049, metadata !DIExpression()), !dbg !1112
  %452 = icmp ult i64 %451, %129, !dbg !1466
  br i1 %452, label %453, label %455, !dbg !1469

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1466
  store i8 39, i8* %454, align 1, !dbg !1466, !tbaa !1134
  br label %455, !dbg !1466

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1469
  call void @llvm.dbg.value(metadata i64 %456, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 0, metadata !1056, metadata !DIExpression()), !dbg !1120
  br label %457, !dbg !1470

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1471
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1172
  call void @llvm.dbg.value(metadata i8 %459, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %458, metadata !1049, metadata !DIExpression()), !dbg !1112
  %460 = icmp ult i64 %458, %129, !dbg !1472
  br i1 %460, label %461, label %463, !dbg !1474

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1472
  store i8 %435, i8* %462, align 1, !dbg !1472, !tbaa !1134
  br label %463, !dbg !1472

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1474
  call void @llvm.dbg.value(metadata i64 %464, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %438, metadata !1048, metadata !DIExpression()), !dbg !1173
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1475
  %466 = load i8, i8* %465, align 1, !dbg !1475, !tbaa !1134
  call void @llvm.dbg.value(metadata i8 %466, metadata !1059, metadata !DIExpression()), !dbg !1199
  br label %370, !dbg !1476, !llvm.loop !1477

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1480
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1172
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1113
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1481
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1172
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1172
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1197
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1197
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1197
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %476, metadata !1066, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %475, metadata !1065, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %155, metadata !1064, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i8 %474, metadata !1059, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i8 %473, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %472, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %471, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %470, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %469, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %468, metadata !1048, metadata !DIExpression()), !dbg !1173
  br i1 %105, label %489, label %478, !dbg !1482

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
  br i1 %112, label %490, label %512, !dbg !1484

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1485

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
  %501 = lshr i8 %494, 5, !dbg !1486
  %502 = zext i8 %501 to i64, !dbg !1486
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1487
  %504 = load i32, i32* %503, align 4, !dbg !1487, !tbaa !703
  %505 = and i8 %494, 31, !dbg !1488
  %506 = zext i8 %505 to i32, !dbg !1488
  %507 = shl i32 1, %506, !dbg !1489
  %508 = and i32 %504, %507, !dbg !1489
  %509 = icmp eq i32 %508, 0, !dbg !1489
  %510 = icmp eq i8 %155, 0, !dbg !1490
  %511 = and i1 %510, %509, !dbg !1491
  br i1 %511, label %562, label %524, !dbg !1491

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
  %523 = icmp eq i8 %155, 0, !dbg !1490
  br i1 %523, label %562, label %524, !dbg !1492

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1493
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1172
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1113
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1481
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1120
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1121
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1494
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1197
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %532, metadata !1066, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %531, metadata !1059, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i8 %530, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %529, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %528, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %527, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %526, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %525, metadata !1048, metadata !DIExpression()), !dbg !1173
  br i1 %110, label %534, label %661, !dbg !1497

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1065, metadata !DIExpression()), !dbg !1183
  %535 = and i8 %529, 1, !dbg !1499
  %536 = icmp eq i8 %535, 0, !dbg !1499
  %537 = and i1 %114, %536, !dbg !1499
  br i1 %537, label %538, label %554, !dbg !1499

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1501
  br i1 %539, label %540, label %542, !dbg !1505

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1501
  store i8 39, i8* %541, align 1, !dbg !1501, !tbaa !1134
  br label %542, !dbg !1501

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1505
  call void @llvm.dbg.value(metadata i64 %543, metadata !1049, metadata !DIExpression()), !dbg !1112
  %544 = icmp ult i64 %543, %533, !dbg !1506
  br i1 %544, label %545, label %547, !dbg !1509

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1506
  store i8 36, i8* %546, align 1, !dbg !1506, !tbaa !1134
  br label %547, !dbg !1506

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1509
  call void @llvm.dbg.value(metadata i64 %548, metadata !1049, metadata !DIExpression()), !dbg !1112
  %549 = icmp ult i64 %548, %533, !dbg !1510
  br i1 %549, label %550, label %552, !dbg !1513

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1510
  store i8 39, i8* %551, align 1, !dbg !1510, !tbaa !1134
  br label %552, !dbg !1510

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %553, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 1, metadata !1056, metadata !DIExpression()), !dbg !1120
  br label %554, !dbg !1514

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1471
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1172
  call void @llvm.dbg.value(metadata i8 %556, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %555, metadata !1049, metadata !DIExpression()), !dbg !1112
  %557 = icmp ult i64 %555, %533, !dbg !1515
  br i1 %557, label %558, label %560, !dbg !1518

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1515
  store i8 92, i8* %559, align 1, !dbg !1515, !tbaa !1134
  br label %560, !dbg !1515

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %561, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %572, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %571, metadata !1066, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %570, metadata !1065, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %569, metadata !1059, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i8 %568, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %567, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %566, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %565, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %564, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %563, metadata !1048, metadata !DIExpression()), !dbg !1173
  br label %589, !dbg !1519

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1493
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1172
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1113
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1481
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1120
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1121
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1522
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1197
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1197
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %571, metadata !1066, metadata !DIExpression()), !dbg !1184
  call void @llvm.dbg.value(metadata i8 %570, metadata !1065, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.value(metadata i8 %569, metadata !1059, metadata !DIExpression()), !dbg !1199
  call void @llvm.dbg.value(metadata i8 %568, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %567, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %566, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %565, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %564, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %563, metadata !1048, metadata !DIExpression()), !dbg !1173
  %573 = and i8 %567, 1, !dbg !1519
  %574 = icmp ne i8 %573, 0, !dbg !1519
  %575 = and i8 %570, 1, !dbg !1519
  %576 = icmp eq i8 %575, 0, !dbg !1519
  %577 = and i1 %574, %576, !dbg !1519
  br i1 %577, label %578, label %589, !dbg !1519

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1523
  br i1 %579, label %580, label %582, !dbg !1527

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1523
  store i8 39, i8* %581, align 1, !dbg !1523, !tbaa !1134
  br label %582, !dbg !1523

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1527
  call void @llvm.dbg.value(metadata i64 %583, metadata !1049, metadata !DIExpression()), !dbg !1112
  %584 = icmp ult i64 %583, %572, !dbg !1528
  br i1 %584, label %585, label %587, !dbg !1531

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1528
  store i8 39, i8* %586, align 1, !dbg !1528, !tbaa !1134
  br label %587, !dbg !1528

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1531
  call void @llvm.dbg.value(metadata i64 %588, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i8 0, metadata !1056, metadata !DIExpression()), !dbg !1120
  br label %589, !dbg !1532

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1471
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1172
  call void @llvm.dbg.value(metadata i8 %598, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %597, metadata !1049, metadata !DIExpression()), !dbg !1112
  %599 = icmp ult i64 %597, %590, !dbg !1533
  br i1 %599, label %600, label %602, !dbg !1536

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1533
  store i8 %592, i8* %601, align 1, !dbg !1533, !tbaa !1134
  br label %602, !dbg !1533

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1536
  call void @llvm.dbg.value(metadata i64 %603, metadata !1049, metadata !DIExpression()), !dbg !1112
  %604 = and i8 %591, 1, !dbg !1537
  %605 = icmp eq i8 %604, 0, !dbg !1537
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1539
  call void @llvm.dbg.value(metadata i8 %606, metadata !1058, metadata !DIExpression()), !dbg !1122
  br label %607, !dbg !1540

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1493
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1172
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1113
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1481
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1120
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1172
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1122
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8 %614, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %613, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %612, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i64 %611, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %610, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %609, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %608, metadata !1048, metadata !DIExpression()), !dbg !1173
  %616 = add i64 %608, 1, !dbg !1541
  call void @llvm.dbg.value(metadata i64 %616, metadata !1048, metadata !DIExpression()), !dbg !1173
  br label %121, !dbg !1542, !llvm.loop !1543

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %126, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %126, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %127, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %127, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %128, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %128, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %126, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %126, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %127, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %127, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %128, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %128, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %126, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %126, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %127, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %127, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %128, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %128, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8 %126, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %126, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %127, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %127, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %128, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %128, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %618, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %618, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %126, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %126, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %127, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %127, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %128, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %128, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %125, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i64 %125, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8 %126, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %126, metadata !1056, metadata !DIExpression()), !dbg !1120
  call void @llvm.dbg.value(metadata i8 %127, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %127, metadata !1057, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata i8 %128, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i8 %128, metadata !1058, metadata !DIExpression()), !dbg !1122
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  %619 = icmp eq i64 %123, 0, !dbg !1545
  %620 = and i1 %114, %619, !dbg !1547
  %621 = xor i1 %620, true, !dbg !1547
  %622 = or i1 %110, %621, !dbg !1547
  br i1 %622, label %623, label %661, !dbg !1547

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1548
  %625 = xor i1 %624, true, !dbg !1548
  %626 = and i8 %127, 1, !dbg !1550
  %627 = icmp eq i8 %626, 0, !dbg !1550
  %628 = or i1 %627, %625, !dbg !1548
  br i1 %628, label %638, label %629, !dbg !1548

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1551
  %631 = icmp eq i8 %630, 0, !dbg !1551
  br i1 %631, label %634, label %632, !dbg !1554

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %618, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %618, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %618, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %618, metadata !1042, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.value(metadata i8* %95, metadata !1046, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %96, metadata !1047, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i64 %124, metadata !1050, metadata !DIExpression()), !dbg !1113
  call void @llvm.dbg.value(metadata i64 %125, metadata !1042, metadata !DIExpression()), !dbg !1106
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1555
  br label %671, !dbg !1556

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1557
  %636 = icmp ne i64 %124, 0, !dbg !1559
  %637 = and i1 %636, %635, !dbg !1560
  br i1 %637, label %27, label %638, !dbg !1560

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8* %98, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8* %98, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8* %98, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8* %98, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8* %98, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i8* %98, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i8* %98, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %129, metadata !1040, metadata !DIExpression()), !dbg !1104
  %639 = icmp ne i8* %98, null, !dbg !1561
  %640 = and i1 %639, %110, !dbg !1563
  br i1 %640, label %641, label %656, !dbg !1563

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %123, metadata !1049, metadata !DIExpression()), !dbg !1112
  %642 = load i8, i8* %98, align 1, !dbg !1564, !tbaa !1134
  %643 = icmp eq i8 %642, 0, !dbg !1567
  br i1 %643, label %656, label %644, !dbg !1567

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %647, metadata !1049, metadata !DIExpression()), !dbg !1112
  %648 = icmp ult i64 %647, %129, !dbg !1568
  br i1 %648, label %649, label %651, !dbg !1571

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1568
  store i8 %645, i8* %650, align 1, !dbg !1568, !tbaa !1134
  br label %651, !dbg !1568

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1571
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1572
  call void @llvm.dbg.value(metadata i8* %653, metadata !1051, metadata !DIExpression()), !dbg !1114
  call void @llvm.dbg.value(metadata i64 %652, metadata !1049, metadata !DIExpression()), !dbg !1112
  %654 = load i8, i8* %653, align 1, !dbg !1564, !tbaa !1134
  %655 = icmp eq i8 %654, 0, !dbg !1567
  br i1 %655, label %656, label %644, !dbg !1567, !llvm.loop !1573

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1112
  call void @llvm.dbg.value(metadata i64 %657, metadata !1049, metadata !DIExpression()), !dbg !1112
  %658 = icmp ult i64 %657, %129, !dbg !1575
  br i1 %658, label %659, label %671, !dbg !1577

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1578
  store i8 0, i8* %660, align 1, !dbg !1579, !tbaa !1134
  br label %671, !dbg !1578

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1040, metadata !DIExpression()), !dbg !1104
  call void @llvm.dbg.value(metadata i64 %663, metadata !1042, metadata !DIExpression()), !dbg !1106
  %665 = icmp ne i32 %662, 2, !dbg !1580
  %666 = icmp eq i8 %102, 0, !dbg !1582
  %667 = or i1 %665, %666, !dbg !1583
  call void @llvm.dbg.value(metadata i32 4, metadata !1043, metadata !DIExpression()), !dbg !1107
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1583
  call void @llvm.dbg.value(metadata i32 %668, metadata !1043, metadata !DIExpression()), !dbg !1107
  %669 = and i32 %5, -3, !dbg !1584
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1585
  br label %671, !dbg !1586

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1587
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1588 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1592, metadata !DIExpression()), !dbg !1596
  call void @llvm.dbg.value(metadata i32 %1, metadata !1593, metadata !DIExpression()), !dbg !1597
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1598
  call void @llvm.dbg.value(metadata i8* %3, metadata !1594, metadata !DIExpression()), !dbg !1599
  %4 = icmp eq i8* %3, %0, !dbg !1600
  br i1 %4, label %5, label %71, !dbg !1602

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1603
  call void @llvm.dbg.value(metadata i8* %6, metadata !1595, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8* %6, metadata !1605, metadata !DIExpression()), !dbg !1621
  call void @llvm.dbg.value(metadata i8* null, metadata !1611, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.value(metadata i8 85, metadata !1612, metadata !DIExpression()), !dbg !1625
  call void @llvm.dbg.value(metadata i8 84, metadata !1613, metadata !DIExpression()), !dbg !1626
  call void @llvm.dbg.value(metadata i8 70, metadata !1614, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8 45, metadata !1615, metadata !DIExpression()), !dbg !1628
  call void @llvm.dbg.value(metadata i8 56, metadata !1616, metadata !DIExpression()), !dbg !1629
  call void @llvm.dbg.value(metadata i8 0, metadata !1617, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 0, metadata !1618, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8 0, metadata !1619, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 0, metadata !1620, metadata !DIExpression()), !dbg !1633
  %7 = load i8, i8* %6, align 1, !dbg !1634, !tbaa !1134
  %8 = and i8 %7, -33, !dbg !1634
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1634

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1636, metadata !DIExpression()), !dbg !1650
  call void @llvm.dbg.value(metadata i8* null, metadata !1641, metadata !DIExpression()), !dbg !1654
  call void @llvm.dbg.value(metadata i8 84, metadata !1642, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8 70, metadata !1643, metadata !DIExpression()), !dbg !1656
  call void @llvm.dbg.value(metadata i8 45, metadata !1644, metadata !DIExpression()), !dbg !1657
  call void @llvm.dbg.value(metadata i8 56, metadata !1645, metadata !DIExpression()), !dbg !1658
  call void @llvm.dbg.value(metadata i8 0, metadata !1646, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8 0, metadata !1647, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 0, metadata !1648, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 0, metadata !1649, metadata !DIExpression()), !dbg !1662
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1663
  %11 = load i8, i8* %10, align 1, !dbg !1663, !tbaa !1134
  %12 = and i8 %11, -33, !dbg !1663
  %13 = icmp eq i8 %12, 84, !dbg !1663
  br i1 %13, label %14, label %68, !dbg !1663

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1665, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.value(metadata i8* null, metadata !1670, metadata !DIExpression()), !dbg !1682
  call void @llvm.dbg.value(metadata i8 70, metadata !1671, metadata !DIExpression()), !dbg !1683
  call void @llvm.dbg.value(metadata i8 45, metadata !1672, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.value(metadata i8 56, metadata !1673, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8 0, metadata !1674, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i8 0, metadata !1675, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i8 0, metadata !1676, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i8 0, metadata !1677, metadata !DIExpression()), !dbg !1689
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1690
  %16 = load i8, i8* %15, align 1, !dbg !1690, !tbaa !1134
  %17 = and i8 %16, -33, !dbg !1690
  %18 = icmp eq i8 %17, 70, !dbg !1690
  br i1 %18, label %19, label %68, !dbg !1690

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1692, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i8* null, metadata !1697, metadata !DIExpression()), !dbg !1708
  call void @llvm.dbg.value(metadata i8 45, metadata !1698, metadata !DIExpression()), !dbg !1709
  call void @llvm.dbg.value(metadata i8 56, metadata !1699, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8 0, metadata !1700, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 0, metadata !1701, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 0, metadata !1702, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1703, metadata !DIExpression()), !dbg !1714
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1715
  %21 = load i8, i8* %20, align 1, !dbg !1715, !tbaa !1134
  %22 = icmp eq i8 %21, 45, !dbg !1715
  br i1 %22, label %23, label %68, !dbg !1717

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1718, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8* null, metadata !1723, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8 56, metadata !1724, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 0, metadata !1725, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 0, metadata !1726, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i8 0, metadata !1727, metadata !DIExpression()), !dbg !1737
  call void @llvm.dbg.value(metadata i8 0, metadata !1728, metadata !DIExpression()), !dbg !1738
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1739
  %25 = load i8, i8* %24, align 1, !dbg !1739, !tbaa !1134
  %26 = icmp eq i8 %25, 56, !dbg !1739
  br i1 %26, label %27, label %68, !dbg !1741

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1742, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8* null, metadata !1747, metadata !DIExpression()), !dbg !1756
  call void @llvm.dbg.value(metadata i8 0, metadata !1748, metadata !DIExpression()), !dbg !1757
  call void @llvm.dbg.value(metadata i8 0, metadata !1749, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8 0, metadata !1750, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 0, metadata !1751, metadata !DIExpression()), !dbg !1760
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1761
  %29 = load i8, i8* %28, align 1, !dbg !1761, !tbaa !1134
  %30 = icmp eq i8 %29, 0, !dbg !1761
  br i1 %30, label %31, label %68, !dbg !1763

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1764, !tbaa !1134
  %33 = icmp eq i8 %32, 96, !dbg !1765
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.64, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.65, i64 0, i64 0), !dbg !1764
  br label %71, !dbg !1766

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1636, metadata !DIExpression()), !dbg !1767
  call void @llvm.dbg.value(metadata i8* null, metadata !1641, metadata !DIExpression()), !dbg !1771
  call void @llvm.dbg.value(metadata i8 66, metadata !1642, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 49, metadata !1643, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 56, metadata !1644, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 48, metadata !1645, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 51, metadata !1646, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i8 48, metadata !1647, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 0, metadata !1648, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 0, metadata !1649, metadata !DIExpression()), !dbg !1779
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1780
  %37 = load i8, i8* %36, align 1, !dbg !1780, !tbaa !1134
  %38 = and i8 %37, -33, !dbg !1780
  %39 = icmp eq i8 %38, 66, !dbg !1780
  br i1 %39, label %40, label %68, !dbg !1780

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1665, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8* null, metadata !1670, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8 49, metadata !1671, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 56, metadata !1672, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 48, metadata !1673, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 51, metadata !1674, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 48, metadata !1675, metadata !DIExpression()), !dbg !1788
  call void @llvm.dbg.value(metadata i8 0, metadata !1676, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i8 0, metadata !1677, metadata !DIExpression()), !dbg !1790
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1791
  %42 = load i8, i8* %41, align 1, !dbg !1791, !tbaa !1134
  %43 = icmp eq i8 %42, 49, !dbg !1791
  br i1 %43, label %44, label %68, !dbg !1792

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1692, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8* null, metadata !1697, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 56, metadata !1698, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 48, metadata !1699, metadata !DIExpression()), !dbg !1797
  call void @llvm.dbg.value(metadata i8 51, metadata !1700, metadata !DIExpression()), !dbg !1798
  call void @llvm.dbg.value(metadata i8 48, metadata !1701, metadata !DIExpression()), !dbg !1799
  call void @llvm.dbg.value(metadata i8 0, metadata !1702, metadata !DIExpression()), !dbg !1800
  call void @llvm.dbg.value(metadata i8 0, metadata !1703, metadata !DIExpression()), !dbg !1801
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1802
  %46 = load i8, i8* %45, align 1, !dbg !1802, !tbaa !1134
  %47 = icmp eq i8 %46, 56, !dbg !1802
  br i1 %47, label %48, label %68, !dbg !1803

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1718, metadata !DIExpression()), !dbg !1804
  call void @llvm.dbg.value(metadata i8* null, metadata !1723, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 48, metadata !1724, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 51, metadata !1725, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 48, metadata !1726, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8 0, metadata !1727, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1728, metadata !DIExpression()), !dbg !1811
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1812
  %50 = load i8, i8* %49, align 1, !dbg !1812, !tbaa !1134
  %51 = icmp eq i8 %50, 48, !dbg !1812
  br i1 %51, label %52, label %68, !dbg !1813

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1742, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8* null, metadata !1747, metadata !DIExpression()), !dbg !1816
  call void @llvm.dbg.value(metadata i8 51, metadata !1748, metadata !DIExpression()), !dbg !1817
  call void @llvm.dbg.value(metadata i8 48, metadata !1749, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8 0, metadata !1750, metadata !DIExpression()), !dbg !1819
  call void @llvm.dbg.value(metadata i8 0, metadata !1751, metadata !DIExpression()), !dbg !1820
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1821
  %54 = load i8, i8* %53, align 1, !dbg !1821, !tbaa !1134
  %55 = icmp eq i8 %54, 51, !dbg !1821
  br i1 %55, label %56, label %68, !dbg !1822

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1823, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i8* null, metadata !1828, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i8 48, metadata !1829, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8 0, metadata !1830, metadata !DIExpression()), !dbg !1838
  call void @llvm.dbg.value(metadata i8 0, metadata !1831, metadata !DIExpression()), !dbg !1839
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1840
  %58 = load i8, i8* %57, align 1, !dbg !1840, !tbaa !1134
  %59 = icmp eq i8 %58, 48, !dbg !1840
  br i1 %59, label %60, label %68, !dbg !1842

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1843, metadata !DIExpression()), !dbg !1851
  call void @llvm.dbg.value(metadata i8* null, metadata !1848, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8 0, metadata !1849, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 0, metadata !1850, metadata !DIExpression()), !dbg !1857
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1858
  %62 = load i8, i8* %61, align 1, !dbg !1858, !tbaa !1134
  %63 = icmp eq i8 %62, 0, !dbg !1858
  br i1 %63, label %64, label %68, !dbg !1860

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1861, !tbaa !1134
  %66 = icmp eq i8 %65, 96, !dbg !1862
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.66, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.67, i64 0, i64 0), !dbg !1861
  br label %71, !dbg !1863

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1864
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.63, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.62, i64 0, i64 0), !dbg !1865
  br label %71, !dbg !1866

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1867
  ret i8* %72, !dbg !1868
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1869 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1873, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i64 %1, metadata !1874, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1875, metadata !DIExpression()), !dbg !1878
  call void @llvm.dbg.value(metadata i8* %0, metadata !1879, metadata !DIExpression()) #10, !dbg !1892
  call void @llvm.dbg.value(metadata i64 %1, metadata !1884, metadata !DIExpression()) #10, !dbg !1894
  call void @llvm.dbg.value(metadata i64* null, metadata !1885, metadata !DIExpression()) #10, !dbg !1895
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1886, metadata !DIExpression()) #10, !dbg !1896
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1897
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1897
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1887, metadata !DIExpression()) #10, !dbg !1898
  %6 = tail call i32* @__errno_location() #17, !dbg !1899
  %7 = load i32, i32* %6, align 4, !dbg !1899, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %7, metadata !1888, metadata !DIExpression()) #10, !dbg !1900
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1901
  %9 = load i32, i32* %8, align 4, !dbg !1901, !tbaa !972
  %10 = or i32 %9, 1, !dbg !1902
  call void @llvm.dbg.value(metadata i32 %10, metadata !1889, metadata !DIExpression()) #10, !dbg !1903
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1904
  %12 = load i32, i32* %11, align 8, !dbg !1904, !tbaa !912
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1905
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1906
  %15 = load i8*, i8** %14, align 8, !dbg !1906, !tbaa !998
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1907
  %17 = load i8*, i8** %16, align 8, !dbg !1907, !tbaa !1001
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !1908
  %19 = add i64 %18, 1, !dbg !1909
  call void @llvm.dbg.value(metadata i64 %19, metadata !1890, metadata !DIExpression()) #10, !dbg !1910
  call void @llvm.dbg.value(metadata i64 %19, metadata !1911, metadata !DIExpression()) #10, !dbg !1916
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1918
  call void @llvm.dbg.value(metadata i8* %20, metadata !1891, metadata !DIExpression()) #10, !dbg !1919
  %21 = load i32, i32* %11, align 8, !dbg !1920, !tbaa !912
  %22 = load i8*, i8** %14, align 8, !dbg !1921, !tbaa !998
  %23 = load i8*, i8** %16, align 8, !dbg !1922, !tbaa !1001
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !1923
  store i32 %7, i32* %6, align 4, !dbg !1924, !tbaa !703
  ret i8* %20, !dbg !1925
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1880 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1879, metadata !DIExpression()), !dbg !1926
  call void @llvm.dbg.value(metadata i64 %1, metadata !1884, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i64* %2, metadata !1885, metadata !DIExpression()), !dbg !1928
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1886, metadata !DIExpression()), !dbg !1929
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1930
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1930
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1887, metadata !DIExpression()), !dbg !1931
  %7 = tail call i32* @__errno_location() #17, !dbg !1932
  %8 = load i32, i32* %7, align 4, !dbg !1932, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %8, metadata !1888, metadata !DIExpression()), !dbg !1933
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1934
  %10 = load i32, i32* %9, align 4, !dbg !1934, !tbaa !972
  %11 = icmp ne i64* %2, null, !dbg !1935
  %12 = xor i1 %11, true, !dbg !1935
  %13 = zext i1 %12 to i32, !dbg !1935
  %14 = or i32 %10, %13, !dbg !1936
  call void @llvm.dbg.value(metadata i32 %14, metadata !1889, metadata !DIExpression()), !dbg !1937
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1938
  %16 = load i32, i32* %15, align 8, !dbg !1938, !tbaa !912
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1939
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1940
  %19 = load i8*, i8** %18, align 8, !dbg !1940, !tbaa !998
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1941
  %21 = load i8*, i8** %20, align 8, !dbg !1941, !tbaa !1001
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !1942
  %23 = add i64 %22, 1, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %23, metadata !1890, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.value(metadata i64 %23, metadata !1911, metadata !DIExpression()) #10, !dbg !1945
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1947
  call void @llvm.dbg.value(metadata i8* %24, metadata !1891, metadata !DIExpression()), !dbg !1948
  %25 = load i32, i32* %15, align 8, !dbg !1949, !tbaa !912
  %26 = load i8*, i8** %18, align 8, !dbg !1950, !tbaa !998
  %27 = load i8*, i8** %20, align 8, !dbg !1951, !tbaa !1001
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !1952
  store i32 %8, i32* %7, align 4, !dbg !1953, !tbaa !703
  br i1 %11, label %29, label %30, !dbg !1954

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1955, !tbaa !1957
  br label %30, !dbg !1959

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1960
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !1961 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1965, !tbaa !636
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1963, metadata !DIExpression()), !dbg !1966
  call void @llvm.dbg.value(metadata i32 1, metadata !1964, metadata !DIExpression()), !dbg !1967
  %2 = load i32, i32* @nslots, align 4, !dbg !1968, !tbaa !703
  %3 = icmp sgt i32 %2, 1, !dbg !1971
  br i1 %3, label %4, label %12, !dbg !1972

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1964, metadata !DIExpression()), !dbg !1967
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !1973
  %7 = load i8*, i8** %6, align 8, !dbg !1973, !tbaa !1974
  tail call void @free(i8* %7) #10, !dbg !1976
  %8 = add nuw nsw i64 %5, 1, !dbg !1977
  call void @llvm.dbg.value(metadata i32 undef, metadata !1964, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1967
  %9 = load i32, i32* @nslots, align 4, !dbg !1968, !tbaa !703
  %10 = sext i32 %9 to i64, !dbg !1971
  %11 = icmp slt i64 %8, %10, !dbg !1971
  br i1 %11, label %4, label %12, !dbg !1972, !llvm.loop !1978

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1980
  %14 = load i8*, i8** %13, align 8, !dbg !1980, !tbaa !1974
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1982
  br i1 %15, label %17, label %16, !dbg !1983

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !1984
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1986, !tbaa !1987
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1988, !tbaa !1974
  br label %17, !dbg !1989

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1990
  br i1 %18, label %21, label %19, !dbg !1992

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1993
  tail call void @free(i8* %20) #10, !dbg !1995
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1996, !tbaa !636
  br label %21, !dbg !1997

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !1998, !tbaa !703
  ret void, !dbg !1999
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2000 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2004, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8* %1, metadata !2005, metadata !DIExpression()), !dbg !2007
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2008
  ret i8* %3, !dbg !2009
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2010 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2014, metadata !DIExpression()), !dbg !2029
  call void @llvm.dbg.value(metadata i8* %1, metadata !2015, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.value(metadata i64 %2, metadata !2016, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2017, metadata !DIExpression()), !dbg !2032
  %5 = tail call i32* @__errno_location() #17, !dbg !2033
  %6 = load i32, i32* %5, align 4, !dbg !2033, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %6, metadata !2018, metadata !DIExpression()), !dbg !2034
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2035, !tbaa !636
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2019, metadata !DIExpression()), !dbg !2036
  %8 = icmp slt i32 %0, 0, !dbg !2037
  br i1 %8, label %9, label %10, !dbg !2039

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2040
  unreachable, !dbg !2040

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2041, !tbaa !703
  %12 = icmp sgt i32 %11, %0, !dbg !2042
  br i1 %12, label %34, label %13, !dbg !2043

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2044
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2023, metadata !DIExpression()), !dbg !2045
  %15 = icmp eq i32 %0, 2147483647, !dbg !2046
  br i1 %15, label %16, label %17, !dbg !2048

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2049
  unreachable, !dbg !2049

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2050
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2050
  %20 = add nsw i32 %0, 1, !dbg !2051
  %21 = sext i32 %20 to i64, !dbg !2052
  %22 = shl nsw i64 %21, 4, !dbg !2053
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2054
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2054
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2019, metadata !DIExpression()), !dbg !2036
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2055, !tbaa !636
  br i1 %14, label %25, label %26, !dbg !2056

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2057, !tbaa.struct !2059
  br label %26, !dbg !2060

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2061, !tbaa !703
  %28 = sext i32 %27 to i64, !dbg !2062
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2062
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2063
  %31 = sub nsw i32 %20, %27, !dbg !2064
  %32 = sext i32 %31 to i64, !dbg !2065
  %33 = shl nsw i64 %32, 4, !dbg !2066
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2063
  store i32 %20, i32* @nslots, align 4, !dbg !2067, !tbaa !703
  br label %34, !dbg !2068

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2069
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2019, metadata !DIExpression()), !dbg !2036
  %36 = sext i32 %0 to i64, !dbg !2070
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2071
  %38 = load i64, i64* %37, align 8, !dbg !2071, !tbaa !1987
  call void @llvm.dbg.value(metadata i64 %38, metadata !2024, metadata !DIExpression()), !dbg !2072
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2073
  %40 = load i8*, i8** %39, align 8, !dbg !2073, !tbaa !1974
  call void @llvm.dbg.value(metadata i8* %40, metadata !2026, metadata !DIExpression()), !dbg !2074
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2075
  %42 = load i32, i32* %41, align 4, !dbg !2075, !tbaa !972
  %43 = or i32 %42, 1, !dbg !2076
  call void @llvm.dbg.value(metadata i32 %43, metadata !2027, metadata !DIExpression()), !dbg !2077
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2078
  %45 = load i32, i32* %44, align 8, !dbg !2078, !tbaa !912
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2079
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2080
  %48 = load i8*, i8** %47, align 8, !dbg !2080, !tbaa !998
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2081
  %50 = load i8*, i8** %49, align 8, !dbg !2081, !tbaa !1001
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2082
  call void @llvm.dbg.value(metadata i64 %51, metadata !2028, metadata !DIExpression()), !dbg !2083
  %52 = icmp ugt i64 %38, %51, !dbg !2084
  br i1 %52, label %63, label %53, !dbg !2086

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2087
  call void @llvm.dbg.value(metadata i64 %54, metadata !2024, metadata !DIExpression()), !dbg !2072
  store i64 %54, i64* %37, align 8, !dbg !2089, !tbaa !1987
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2090
  br i1 %55, label %57, label %56, !dbg !2092

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2093
  br label %57, !dbg !2093

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !1911, metadata !DIExpression()) #10, !dbg !2094
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2096
  call void @llvm.dbg.value(metadata i8* %58, metadata !2026, metadata !DIExpression()), !dbg !2074
  store i8* %58, i8** %39, align 8, !dbg !2097, !tbaa !1974
  %59 = load i32, i32* %44, align 8, !dbg !2098, !tbaa !912
  %60 = load i8*, i8** %47, align 8, !dbg !2099, !tbaa !998
  %61 = load i8*, i8** %49, align 8, !dbg !2100, !tbaa !1001
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2101
  br label %63, !dbg !2102

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2103
  call void @llvm.dbg.value(metadata i8* %64, metadata !2026, metadata !DIExpression()), !dbg !2074
  store i32 %6, i32* %5, align 4, !dbg !2104, !tbaa !703
  ret i8* %64, !dbg !2105
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2106 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2110, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8* %1, metadata !2111, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i64 %2, metadata !2112, metadata !DIExpression()), !dbg !2115
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2116
  ret i8* %4, !dbg !2117
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2118 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2122, metadata !DIExpression()), !dbg !2123
  call void @llvm.dbg.value(metadata i32 0, metadata !2004, metadata !DIExpression()) #10, !dbg !2124
  call void @llvm.dbg.value(metadata i8* %0, metadata !2005, metadata !DIExpression()) #10, !dbg !2126
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2127
  ret i8* %2, !dbg !2128
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2129 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2133, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 %1, metadata !2134, metadata !DIExpression()), !dbg !2136
  call void @llvm.dbg.value(metadata i32 0, metadata !2110, metadata !DIExpression()) #10, !dbg !2137
  call void @llvm.dbg.value(metadata i8* %0, metadata !2111, metadata !DIExpression()) #10, !dbg !2139
  call void @llvm.dbg.value(metadata i64 %1, metadata !2112, metadata !DIExpression()) #10, !dbg !2140
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2141
  ret i8* %3, !dbg !2142
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2143 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2147, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i32 %1, metadata !2148, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata i8* %2, metadata !2149, metadata !DIExpression()), !dbg !2153
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2154
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2154
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2150, metadata !DIExpression(DW_OP_deref)), !dbg !2155
  call void @llvm.dbg.value(metadata i32 %1, metadata !2156, metadata !DIExpression()) #10, !dbg !2162
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2164, !alias.scope !2165
  %6 = icmp eq i32 %1, 10, !dbg !2168
  br i1 %6, label %7, label %8, !dbg !2170

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2171, !noalias !2165
  unreachable, !dbg !2171

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2172
  store i32 %1, i32* %9, align 8, !dbg !2173, !tbaa !912, !alias.scope !2165
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2150, metadata !DIExpression(DW_OP_deref)), !dbg !2155
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2161, metadata !DIExpression(DW_OP_deref)), !dbg !2164
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2174
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2175
  ret i8* %10, !dbg !2176
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2177 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2181, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i32 %1, metadata !2182, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8* %2, metadata !2183, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i64 %3, metadata !2184, metadata !DIExpression()), !dbg !2189
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2190
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2190
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2185, metadata !DIExpression(DW_OP_deref)), !dbg !2191
  call void @llvm.dbg.value(metadata i32 %1, metadata !2156, metadata !DIExpression()) #10, !dbg !2192
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2194, !alias.scope !2195
  %7 = icmp eq i32 %1, 10, !dbg !2198
  br i1 %7, label %8, label %9, !dbg !2199

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2200, !noalias !2195
  unreachable, !dbg !2200

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2201
  store i32 %1, i32* %10, align 8, !dbg !2202, !tbaa !912, !alias.scope !2195
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2185, metadata !DIExpression(DW_OP_deref)), !dbg !2191
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2161, metadata !DIExpression(DW_OP_deref)), !dbg !2194
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2203
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2204
  ret i8* %11, !dbg !2205
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2206 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2210, metadata !DIExpression()), !dbg !2212
  call void @llvm.dbg.value(metadata i8* %1, metadata !2211, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i32 0, metadata !2147, metadata !DIExpression()) #10, !dbg !2214
  call void @llvm.dbg.value(metadata i32 %0, metadata !2148, metadata !DIExpression()) #10, !dbg !2216
  call void @llvm.dbg.value(metadata i8* %1, metadata !2149, metadata !DIExpression()) #10, !dbg !2217
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2218
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2218
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2150, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2219
  call void @llvm.dbg.value(metadata i32 %0, metadata !2156, metadata !DIExpression()) #10, !dbg !2220
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2222, !alias.scope !2223
  %5 = icmp eq i32 %0, 10, !dbg !2226
  br i1 %5, label %6, label %7, !dbg !2227

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2228, !noalias !2223
  unreachable, !dbg !2228

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2229
  store i32 %0, i32* %8, align 8, !dbg !2230, !tbaa !912, !alias.scope !2223
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2150, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2219
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2161, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2222
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2231
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2232
  ret i8* %9, !dbg !2233
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2234 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2238, metadata !DIExpression()), !dbg !2241
  call void @llvm.dbg.value(metadata i8* %1, metadata !2239, metadata !DIExpression()), !dbg !2242
  call void @llvm.dbg.value(metadata i64 %2, metadata !2240, metadata !DIExpression()), !dbg !2243
  call void @llvm.dbg.value(metadata i32 0, metadata !2181, metadata !DIExpression()) #10, !dbg !2244
  call void @llvm.dbg.value(metadata i32 %0, metadata !2182, metadata !DIExpression()) #10, !dbg !2246
  call void @llvm.dbg.value(metadata i8* %1, metadata !2183, metadata !DIExpression()) #10, !dbg !2247
  call void @llvm.dbg.value(metadata i64 %2, metadata !2184, metadata !DIExpression()) #10, !dbg !2248
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2249
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2249
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2185, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2250
  call void @llvm.dbg.value(metadata i32 %0, metadata !2156, metadata !DIExpression()) #10, !dbg !2251
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2253, !alias.scope !2254
  %6 = icmp eq i32 %0, 10, !dbg !2257
  br i1 %6, label %7, label %8, !dbg !2258

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2259, !noalias !2254
  unreachable, !dbg !2259

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2260
  store i32 %0, i32* %9, align 8, !dbg !2261, !tbaa !912, !alias.scope !2254
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2185, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2250
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2161, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2253
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2262
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2263
  ret i8* %10, !dbg !2264
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2265 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2269, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i64 %1, metadata !2270, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.value(metadata i8 %2, metadata !2271, metadata !DIExpression()), !dbg !2275
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2276
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2276
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2277, !tbaa.struct !2278
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2272, metadata !DIExpression(DW_OP_deref)), !dbg !2279
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !931, metadata !DIExpression()), !dbg !2280
  call void @llvm.dbg.value(metadata i8 %2, metadata !932, metadata !DIExpression()), !dbg !2282
  call void @llvm.dbg.value(metadata i32 1, metadata !933, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8 %2, metadata !934, metadata !DIExpression()), !dbg !2284
  %6 = lshr i8 %2, 5, !dbg !2285
  %7 = zext i8 %6 to i64, !dbg !2285
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2286
  call void @llvm.dbg.value(metadata i32* %8, metadata !936, metadata !DIExpression()), !dbg !2287
  %9 = and i8 %2, 31, !dbg !2288
  %10 = zext i8 %9 to i32, !dbg !2288
  call void @llvm.dbg.value(metadata i32 %10, metadata !938, metadata !DIExpression()), !dbg !2289
  %11 = load i32, i32* %8, align 4, !dbg !2290, !tbaa !703
  %12 = lshr i32 %11, %10, !dbg !2291
  %13 = and i32 %12, 1, !dbg !2292
  call void @llvm.dbg.value(metadata i32 %13, metadata !939, metadata !DIExpression()), !dbg !2293
  %14 = xor i32 %13, 1, !dbg !2294
  %15 = shl i32 %14, %10, !dbg !2295
  %16 = xor i32 %15, %11, !dbg !2296
  store i32 %16, i32* %8, align 4, !dbg !2296, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2272, metadata !DIExpression(DW_OP_deref)), !dbg !2279
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2297
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2298
  ret i8* %17, !dbg !2299
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2300 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2304, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i8 %1, metadata !2305, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i8* %0, metadata !2269, metadata !DIExpression()) #10, !dbg !2308
  call void @llvm.dbg.value(metadata i64 -1, metadata !2270, metadata !DIExpression()) #10, !dbg !2310
  call void @llvm.dbg.value(metadata i8 %1, metadata !2271, metadata !DIExpression()) #10, !dbg !2311
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2312
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2312
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2313, !tbaa.struct !2278
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2272, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2314
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !931, metadata !DIExpression()) #10, !dbg !2315
  call void @llvm.dbg.value(metadata i8 %1, metadata !932, metadata !DIExpression()) #10, !dbg !2317
  call void @llvm.dbg.value(metadata i32 1, metadata !933, metadata !DIExpression()) #10, !dbg !2318
  call void @llvm.dbg.value(metadata i8 %1, metadata !934, metadata !DIExpression()) #10, !dbg !2319
  %5 = lshr i8 %1, 5, !dbg !2320
  %6 = zext i8 %5 to i64, !dbg !2320
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2321
  call void @llvm.dbg.value(metadata i32* %7, metadata !936, metadata !DIExpression()) #10, !dbg !2322
  %8 = and i8 %1, 31, !dbg !2323
  %9 = zext i8 %8 to i32, !dbg !2323
  call void @llvm.dbg.value(metadata i32 %9, metadata !938, metadata !DIExpression()) #10, !dbg !2324
  %10 = load i32, i32* %7, align 4, !dbg !2325, !tbaa !703
  %11 = lshr i32 %10, %9, !dbg !2326
  %12 = and i32 %11, 1, !dbg !2327
  call void @llvm.dbg.value(metadata i32 %12, metadata !939, metadata !DIExpression()) #10, !dbg !2328
  %13 = xor i32 %12, 1, !dbg !2329
  %14 = shl i32 %13, %9, !dbg !2330
  %15 = xor i32 %14, %10, !dbg !2331
  store i32 %15, i32* %7, align 4, !dbg !2331, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2272, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2314
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2332
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2333
  ret i8* %16, !dbg !2334
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2335 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2337, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata i8* %0, metadata !2304, metadata !DIExpression()) #10, !dbg !2339
  call void @llvm.dbg.value(metadata i8 58, metadata !2305, metadata !DIExpression()) #10, !dbg !2341
  call void @llvm.dbg.value(metadata i8* %0, metadata !2269, metadata !DIExpression()) #10, !dbg !2342
  call void @llvm.dbg.value(metadata i64 -1, metadata !2270, metadata !DIExpression()) #10, !dbg !2344
  call void @llvm.dbg.value(metadata i8 58, metadata !2271, metadata !DIExpression()) #10, !dbg !2345
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2346
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2346
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2347, !tbaa.struct !2278
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2272, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2348
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !931, metadata !DIExpression()) #10, !dbg !2349
  call void @llvm.dbg.value(metadata i8 58, metadata !932, metadata !DIExpression()) #10, !dbg !2351
  call void @llvm.dbg.value(metadata i32 1, metadata !933, metadata !DIExpression()) #10, !dbg !2352
  call void @llvm.dbg.value(metadata i8 58, metadata !934, metadata !DIExpression()) #10, !dbg !2353
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2354
  call void @llvm.dbg.value(metadata i32* %4, metadata !936, metadata !DIExpression()) #10, !dbg !2355
  call void @llvm.dbg.value(metadata i32 26, metadata !938, metadata !DIExpression()) #10, !dbg !2356
  %5 = load i32, i32* %4, align 4, !dbg !2357, !tbaa !703
  %6 = or i32 %5, 67108864, !dbg !2358
  store i32 %6, i32* %4, align 4, !dbg !2358, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2272, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2348
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2359
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2360
  ret i8* %7, !dbg !2361
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2362 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2364, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.value(metadata i64 %1, metadata !2365, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.value(metadata i8* %0, metadata !2269, metadata !DIExpression()) #10, !dbg !2368
  call void @llvm.dbg.value(metadata i64 %1, metadata !2270, metadata !DIExpression()) #10, !dbg !2370
  call void @llvm.dbg.value(metadata i8 58, metadata !2271, metadata !DIExpression()) #10, !dbg !2371
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2372
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2372
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2373, !tbaa.struct !2278
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2272, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2374
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !931, metadata !DIExpression()) #10, !dbg !2375
  call void @llvm.dbg.value(metadata i8 58, metadata !932, metadata !DIExpression()) #10, !dbg !2377
  call void @llvm.dbg.value(metadata i32 1, metadata !933, metadata !DIExpression()) #10, !dbg !2378
  call void @llvm.dbg.value(metadata i8 58, metadata !934, metadata !DIExpression()) #10, !dbg !2379
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2380
  call void @llvm.dbg.value(metadata i32* %5, metadata !936, metadata !DIExpression()) #10, !dbg !2381
  call void @llvm.dbg.value(metadata i32 26, metadata !938, metadata !DIExpression()) #10, !dbg !2382
  %6 = load i32, i32* %5, align 4, !dbg !2383, !tbaa !703
  %7 = or i32 %6, 67108864, !dbg !2384
  store i32 %7, i32* %5, align 4, !dbg !2384, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2272, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2374
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2385
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2386
  ret i8* %8, !dbg !2387
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2388 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2161, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2394
  call void @llvm.dbg.value(metadata i32 %0, metadata !2390, metadata !DIExpression()), !dbg !2396
  call void @llvm.dbg.value(metadata i32 %1, metadata !2391, metadata !DIExpression()), !dbg !2397
  call void @llvm.dbg.value(metadata i8* %2, metadata !2392, metadata !DIExpression()), !dbg !2398
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2399
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2399
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2400
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2400
  call void @llvm.dbg.value(metadata i32 %1, metadata !2156, metadata !DIExpression()) #10, !dbg !2401
  call void @llvm.dbg.value(metadata i32 0, metadata !2161, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2394
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2394, !alias.scope !2402
  %8 = icmp eq i32 %1, 10, !dbg !2405
  br i1 %8, label %9, label %10, !dbg !2406

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2407, !noalias !2402
  unreachable, !dbg !2407

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2161, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2394
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2400
  store i32 %1, i32* %11, align 8, !dbg !2400
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2400
  %13 = bitcast i32* %12 to i8*, !dbg !2400
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2400
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2400
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2393, metadata !DIExpression(DW_OP_deref)), !dbg !2408
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !931, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8 58, metadata !932, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.value(metadata i32 1, metadata !933, metadata !DIExpression()), !dbg !2412
  call void @llvm.dbg.value(metadata i8 58, metadata !934, metadata !DIExpression()), !dbg !2413
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2414
  call void @llvm.dbg.value(metadata i32* %14, metadata !936, metadata !DIExpression()), !dbg !2415
  call void @llvm.dbg.value(metadata i32 26, metadata !938, metadata !DIExpression()), !dbg !2416
  %15 = load i32, i32* %14, align 4, !dbg !2417, !tbaa !703
  %16 = or i32 %15, 67108864, !dbg !2418
  store i32 %16, i32* %14, align 4, !dbg !2418, !tbaa !703
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2393, metadata !DIExpression(DW_OP_deref)), !dbg !2408
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2419
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2420
  ret i8* %17, !dbg !2421
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2422 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2426, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.value(metadata i8* %1, metadata !2427, metadata !DIExpression()), !dbg !2431
  call void @llvm.dbg.value(metadata i8* %2, metadata !2428, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8* %3, metadata !2429, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %0, metadata !2434, metadata !DIExpression()) #10, !dbg !2444
  call void @llvm.dbg.value(metadata i8* %1, metadata !2439, metadata !DIExpression()) #10, !dbg !2446
  call void @llvm.dbg.value(metadata i8* %2, metadata !2440, metadata !DIExpression()) #10, !dbg !2447
  call void @llvm.dbg.value(metadata i8* %3, metadata !2441, metadata !DIExpression()) #10, !dbg !2448
  call void @llvm.dbg.value(metadata i64 -1, metadata !2442, metadata !DIExpression()) #10, !dbg !2449
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2450
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2450
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2451, !tbaa.struct !2278
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2443, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2452
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !980, metadata !DIExpression()) #10, !dbg !2453
  call void @llvm.dbg.value(metadata i8* %1, metadata !981, metadata !DIExpression()) #10, !dbg !2455
  call void @llvm.dbg.value(metadata i8* %2, metadata !982, metadata !DIExpression()) #10, !dbg !2456
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !980, metadata !DIExpression()) #10, !dbg !2453
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2457
  store i32 10, i32* %7, align 8, !dbg !2458, !tbaa !912
  %8 = icmp ne i8* %1, null, !dbg !2459
  %9 = icmp ne i8* %2, null, !dbg !2460
  %10 = and i1 %8, %9, !dbg !2461
  br i1 %10, label %12, label %11, !dbg !2461

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2462
  unreachable, !dbg !2462

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2463
  store i8* %1, i8** %13, align 8, !dbg !2464, !tbaa !998
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2465
  store i8* %2, i8** %14, align 8, !dbg !2466, !tbaa !1001
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2443, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2452
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2467
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2468
  ret i8* %15, !dbg !2469
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2435 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2434, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i8* %1, metadata !2439, metadata !DIExpression()), !dbg !2471
  call void @llvm.dbg.value(metadata i8* %2, metadata !2440, metadata !DIExpression()), !dbg !2472
  call void @llvm.dbg.value(metadata i8* %3, metadata !2441, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.value(metadata i64 %4, metadata !2442, metadata !DIExpression()), !dbg !2474
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2475
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2475
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2476, !tbaa.struct !2278
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2443, metadata !DIExpression(DW_OP_deref)), !dbg !2477
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !980, metadata !DIExpression()) #10, !dbg !2478
  call void @llvm.dbg.value(metadata i8* %1, metadata !981, metadata !DIExpression()) #10, !dbg !2480
  call void @llvm.dbg.value(metadata i8* %2, metadata !982, metadata !DIExpression()) #10, !dbg !2481
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !980, metadata !DIExpression()) #10, !dbg !2478
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2482
  store i32 10, i32* %8, align 8, !dbg !2483, !tbaa !912
  %9 = icmp ne i8* %1, null, !dbg !2484
  %10 = icmp ne i8* %2, null, !dbg !2485
  %11 = and i1 %9, %10, !dbg !2486
  br i1 %11, label %13, label %12, !dbg !2486

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2487
  unreachable, !dbg !2487

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2488
  store i8* %1, i8** %14, align 8, !dbg !2489, !tbaa !998
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2490
  store i8* %2, i8** %15, align 8, !dbg !2491, !tbaa !1001
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2443, metadata !DIExpression(DW_OP_deref)), !dbg !2477
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2492
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2493
  ret i8* %16, !dbg !2494
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2495 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2499, metadata !DIExpression()), !dbg !2502
  call void @llvm.dbg.value(metadata i8* %1, metadata !2500, metadata !DIExpression()), !dbg !2503
  call void @llvm.dbg.value(metadata i8* %2, metadata !2501, metadata !DIExpression()), !dbg !2504
  call void @llvm.dbg.value(metadata i32 0, metadata !2426, metadata !DIExpression()) #10, !dbg !2505
  call void @llvm.dbg.value(metadata i8* %0, metadata !2427, metadata !DIExpression()) #10, !dbg !2507
  call void @llvm.dbg.value(metadata i8* %1, metadata !2428, metadata !DIExpression()) #10, !dbg !2508
  call void @llvm.dbg.value(metadata i8* %2, metadata !2429, metadata !DIExpression()) #10, !dbg !2509
  call void @llvm.dbg.value(metadata i32 0, metadata !2434, metadata !DIExpression()) #10, !dbg !2510
  call void @llvm.dbg.value(metadata i8* %0, metadata !2439, metadata !DIExpression()) #10, !dbg !2512
  call void @llvm.dbg.value(metadata i8* %1, metadata !2440, metadata !DIExpression()) #10, !dbg !2513
  call void @llvm.dbg.value(metadata i8* %2, metadata !2441, metadata !DIExpression()) #10, !dbg !2514
  call void @llvm.dbg.value(metadata i64 -1, metadata !2442, metadata !DIExpression()) #10, !dbg !2515
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2516
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2516
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2517, !tbaa.struct !2278
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2443, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2518
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !980, metadata !DIExpression()) #10, !dbg !2519
  call void @llvm.dbg.value(metadata i8* %0, metadata !981, metadata !DIExpression()) #10, !dbg !2521
  call void @llvm.dbg.value(metadata i8* %1, metadata !982, metadata !DIExpression()) #10, !dbg !2522
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !980, metadata !DIExpression()) #10, !dbg !2519
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2523
  store i32 10, i32* %6, align 8, !dbg !2524, !tbaa !912
  %7 = icmp ne i8* %0, null, !dbg !2525
  %8 = icmp ne i8* %1, null, !dbg !2526
  %9 = and i1 %7, %8, !dbg !2527
  br i1 %9, label %11, label %10, !dbg !2527

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2528
  unreachable, !dbg !2528

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2529
  store i8* %0, i8** %12, align 8, !dbg !2530, !tbaa !998
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2531
  store i8* %1, i8** %13, align 8, !dbg !2532, !tbaa !1001
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2443, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2518
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2533
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2534
  ret i8* %14, !dbg !2535
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2536 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2540, metadata !DIExpression()), !dbg !2544
  call void @llvm.dbg.value(metadata i8* %1, metadata !2541, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.value(metadata i8* %2, metadata !2542, metadata !DIExpression()), !dbg !2546
  call void @llvm.dbg.value(metadata i64 %3, metadata !2543, metadata !DIExpression()), !dbg !2547
  call void @llvm.dbg.value(metadata i32 0, metadata !2434, metadata !DIExpression()) #10, !dbg !2548
  call void @llvm.dbg.value(metadata i8* %0, metadata !2439, metadata !DIExpression()) #10, !dbg !2550
  call void @llvm.dbg.value(metadata i8* %1, metadata !2440, metadata !DIExpression()) #10, !dbg !2551
  call void @llvm.dbg.value(metadata i8* %2, metadata !2441, metadata !DIExpression()) #10, !dbg !2552
  call void @llvm.dbg.value(metadata i64 %3, metadata !2442, metadata !DIExpression()) #10, !dbg !2553
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2554
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2554
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2555, !tbaa.struct !2278
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2443, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2556
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !980, metadata !DIExpression()) #10, !dbg !2557
  call void @llvm.dbg.value(metadata i8* %0, metadata !981, metadata !DIExpression()) #10, !dbg !2559
  call void @llvm.dbg.value(metadata i8* %1, metadata !982, metadata !DIExpression()) #10, !dbg !2560
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !980, metadata !DIExpression()) #10, !dbg !2557
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2561
  store i32 10, i32* %7, align 8, !dbg !2562, !tbaa !912
  %8 = icmp ne i8* %0, null, !dbg !2563
  %9 = icmp ne i8* %1, null, !dbg !2564
  %10 = and i1 %8, %9, !dbg !2565
  br i1 %10, label %12, label %11, !dbg !2565

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2566
  unreachable, !dbg !2566

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2567
  store i8* %0, i8** %13, align 8, !dbg !2568, !tbaa !998
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2569
  store i8* %1, i8** %14, align 8, !dbg !2570, !tbaa !1001
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2443, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2556
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2571
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2572
  ret i8* %15, !dbg !2573
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2574 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2578, metadata !DIExpression()), !dbg !2581
  call void @llvm.dbg.value(metadata i8* %1, metadata !2579, metadata !DIExpression()), !dbg !2582
  call void @llvm.dbg.value(metadata i64 %2, metadata !2580, metadata !DIExpression()), !dbg !2583
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2584
  ret i8* %4, !dbg !2585
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2586 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2590, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i64 %1, metadata !2591, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i32 0, metadata !2578, metadata !DIExpression()) #10, !dbg !2594
  call void @llvm.dbg.value(metadata i8* %0, metadata !2579, metadata !DIExpression()) #10, !dbg !2596
  call void @llvm.dbg.value(metadata i64 %1, metadata !2580, metadata !DIExpression()) #10, !dbg !2597
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2598
  ret i8* %3, !dbg !2599
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2600 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2604, metadata !DIExpression()), !dbg !2606
  call void @llvm.dbg.value(metadata i8* %1, metadata !2605, metadata !DIExpression()), !dbg !2607
  call void @llvm.dbg.value(metadata i32 %0, metadata !2578, metadata !DIExpression()) #10, !dbg !2608
  call void @llvm.dbg.value(metadata i8* %1, metadata !2579, metadata !DIExpression()) #10, !dbg !2610
  call void @llvm.dbg.value(metadata i64 -1, metadata !2580, metadata !DIExpression()) #10, !dbg !2611
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2612
  ret i8* %3, !dbg !2613
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2614 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2618, metadata !DIExpression()), !dbg !2619
  call void @llvm.dbg.value(metadata i32 0, metadata !2604, metadata !DIExpression()) #10, !dbg !2620
  call void @llvm.dbg.value(metadata i8* %0, metadata !2605, metadata !DIExpression()) #10, !dbg !2622
  call void @llvm.dbg.value(metadata i32 0, metadata !2578, metadata !DIExpression()) #10, !dbg !2623
  call void @llvm.dbg.value(metadata i8* %0, metadata !2579, metadata !DIExpression()) #10, !dbg !2625
  call void @llvm.dbg.value(metadata i64 -1, metadata !2580, metadata !DIExpression()) #10, !dbg !2626
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2627
  ret i8* %2, !dbg !2628
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2629 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2687, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.value(metadata i8* %1, metadata !2688, metadata !DIExpression()), !dbg !2694
  call void @llvm.dbg.value(metadata i8* %2, metadata !2689, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.value(metadata i8* %3, metadata !2690, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i8** %4, metadata !2691, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.value(metadata i64 %5, metadata !2692, metadata !DIExpression()), !dbg !2698
  %7 = icmp eq i8* %1, null, !dbg !2699
  br i1 %7, label %10, label %8, !dbg !2701

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.74, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2702
  br label %12, !dbg !2702

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.75, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2703
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.76, i64 0, i64 0), i32 5) #10, !dbg !2704
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !2704
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.77, i64 0, i64 0), i32 5) #10, !dbg !2705
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2705
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
  ], !dbg !2706

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2707
  unreachable, !dbg !2707

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.78, i64 0, i64 0), i32 5) #10, !dbg !2709
  %20 = load i8*, i8** %4, align 8, !dbg !2709, !tbaa !636
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2709
  br label %146, !dbg !2710

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.79, i64 0, i64 0), i32 5) #10, !dbg !2711
  %24 = load i8*, i8** %4, align 8, !dbg !2711, !tbaa !636
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2711
  %26 = load i8*, i8** %25, align 8, !dbg !2711, !tbaa !636
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2711
  br label %146, !dbg !2712

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.80, i64 0, i64 0), i32 5) #10, !dbg !2713
  %30 = load i8*, i8** %4, align 8, !dbg !2713, !tbaa !636
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2713
  %32 = load i8*, i8** %31, align 8, !dbg !2713, !tbaa !636
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2713
  %34 = load i8*, i8** %33, align 8, !dbg !2713, !tbaa !636
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2713
  br label %146, !dbg !2714

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.81, i64 0, i64 0), i32 5) #10, !dbg !2715
  %38 = load i8*, i8** %4, align 8, !dbg !2715, !tbaa !636
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2715
  %40 = load i8*, i8** %39, align 8, !dbg !2715, !tbaa !636
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2715
  %42 = load i8*, i8** %41, align 8, !dbg !2715, !tbaa !636
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2715
  %44 = load i8*, i8** %43, align 8, !dbg !2715, !tbaa !636
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2715
  br label %146, !dbg !2716

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.82, i64 0, i64 0), i32 5) #10, !dbg !2717
  %48 = load i8*, i8** %4, align 8, !dbg !2717, !tbaa !636
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2717
  %50 = load i8*, i8** %49, align 8, !dbg !2717, !tbaa !636
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2717
  %52 = load i8*, i8** %51, align 8, !dbg !2717, !tbaa !636
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2717
  %54 = load i8*, i8** %53, align 8, !dbg !2717, !tbaa !636
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2717
  %56 = load i8*, i8** %55, align 8, !dbg !2717, !tbaa !636
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2717
  br label %146, !dbg !2718

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.83, i64 0, i64 0), i32 5) #10, !dbg !2719
  %60 = load i8*, i8** %4, align 8, !dbg !2719, !tbaa !636
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2719
  %62 = load i8*, i8** %61, align 8, !dbg !2719, !tbaa !636
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2719
  %64 = load i8*, i8** %63, align 8, !dbg !2719, !tbaa !636
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2719
  %66 = load i8*, i8** %65, align 8, !dbg !2719, !tbaa !636
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2719
  %68 = load i8*, i8** %67, align 8, !dbg !2719, !tbaa !636
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2719
  %70 = load i8*, i8** %69, align 8, !dbg !2719, !tbaa !636
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2719
  br label %146, !dbg !2720

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.84, i64 0, i64 0), i32 5) #10, !dbg !2721
  %74 = load i8*, i8** %4, align 8, !dbg !2721, !tbaa !636
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2721
  %76 = load i8*, i8** %75, align 8, !dbg !2721, !tbaa !636
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2721
  %78 = load i8*, i8** %77, align 8, !dbg !2721, !tbaa !636
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2721
  %80 = load i8*, i8** %79, align 8, !dbg !2721, !tbaa !636
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2721
  %82 = load i8*, i8** %81, align 8, !dbg !2721, !tbaa !636
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2721
  %84 = load i8*, i8** %83, align 8, !dbg !2721, !tbaa !636
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2721
  %86 = load i8*, i8** %85, align 8, !dbg !2721, !tbaa !636
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2721
  br label %146, !dbg !2722

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.85, i64 0, i64 0), i32 5) #10, !dbg !2723
  %90 = load i8*, i8** %4, align 8, !dbg !2723, !tbaa !636
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2723
  %92 = load i8*, i8** %91, align 8, !dbg !2723, !tbaa !636
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2723
  %94 = load i8*, i8** %93, align 8, !dbg !2723, !tbaa !636
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2723
  %96 = load i8*, i8** %95, align 8, !dbg !2723, !tbaa !636
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2723
  %98 = load i8*, i8** %97, align 8, !dbg !2723, !tbaa !636
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2723
  %100 = load i8*, i8** %99, align 8, !dbg !2723, !tbaa !636
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2723
  %102 = load i8*, i8** %101, align 8, !dbg !2723, !tbaa !636
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2723
  %104 = load i8*, i8** %103, align 8, !dbg !2723, !tbaa !636
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2723
  br label %146, !dbg !2724

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.86, i64 0, i64 0), i32 5) #10, !dbg !2725
  %108 = load i8*, i8** %4, align 8, !dbg !2725, !tbaa !636
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2725
  %110 = load i8*, i8** %109, align 8, !dbg !2725, !tbaa !636
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2725
  %112 = load i8*, i8** %111, align 8, !dbg !2725, !tbaa !636
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2725
  %114 = load i8*, i8** %113, align 8, !dbg !2725, !tbaa !636
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2725
  %116 = load i8*, i8** %115, align 8, !dbg !2725, !tbaa !636
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2725
  %118 = load i8*, i8** %117, align 8, !dbg !2725, !tbaa !636
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2725
  %120 = load i8*, i8** %119, align 8, !dbg !2725, !tbaa !636
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2725
  %122 = load i8*, i8** %121, align 8, !dbg !2725, !tbaa !636
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2725
  %124 = load i8*, i8** %123, align 8, !dbg !2725, !tbaa !636
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2725
  br label %146, !dbg !2726

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.87, i64 0, i64 0), i32 5) #10, !dbg !2727
  %128 = load i8*, i8** %4, align 8, !dbg !2727, !tbaa !636
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2727
  %130 = load i8*, i8** %129, align 8, !dbg !2727, !tbaa !636
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2727
  %132 = load i8*, i8** %131, align 8, !dbg !2727, !tbaa !636
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2727
  %134 = load i8*, i8** %133, align 8, !dbg !2727, !tbaa !636
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2727
  %136 = load i8*, i8** %135, align 8, !dbg !2727, !tbaa !636
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2727
  %138 = load i8*, i8** %137, align 8, !dbg !2727, !tbaa !636
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2727
  %140 = load i8*, i8** %139, align 8, !dbg !2727, !tbaa !636
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2727
  %142 = load i8*, i8** %141, align 8, !dbg !2727, !tbaa !636
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2727
  %144 = load i8*, i8** %143, align 8, !dbg !2727, !tbaa !636
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2727
  br label %146, !dbg !2728

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2729
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2730 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2734, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i8* %1, metadata !2735, metadata !DIExpression()), !dbg !2741
  call void @llvm.dbg.value(metadata i8* %2, metadata !2736, metadata !DIExpression()), !dbg !2742
  call void @llvm.dbg.value(metadata i8* %3, metadata !2737, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i8** %4, metadata !2738, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.value(metadata i64 0, metadata !2739, metadata !DIExpression()), !dbg !2745
  br label %6, !dbg !2746

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2748
  call void @llvm.dbg.value(metadata i64 %7, metadata !2739, metadata !DIExpression()), !dbg !2745
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2750
  %9 = load i8*, i8** %8, align 8, !dbg !2750, !tbaa !636
  %10 = icmp eq i8* %9, null, !dbg !2751
  %11 = add i64 %7, 1, !dbg !2752
  call void @llvm.dbg.value(metadata i64 %11, metadata !2739, metadata !DIExpression()), !dbg !2745
  br i1 %10, label %12, label %6, !dbg !2751, !llvm.loop !2753

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2739, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i64 %7, metadata !2739, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i64 %7, metadata !2739, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i64 %7, metadata !2739, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i64 %7, metadata !2739, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.value(metadata i64 %7, metadata !2739, metadata !DIExpression()), !dbg !2745
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2755
  ret void, !dbg !2756
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2757 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2768, metadata !DIExpression()), !dbg !2776
  call void @llvm.dbg.value(metadata i8* %1, metadata !2769, metadata !DIExpression()), !dbg !2777
  call void @llvm.dbg.value(metadata i8* %2, metadata !2770, metadata !DIExpression()), !dbg !2778
  call void @llvm.dbg.value(metadata i8* %3, metadata !2771, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2772, metadata !DIExpression()), !dbg !2780
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2781
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2781
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2774, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.value(metadata i64 0, metadata !2773, metadata !DIExpression()), !dbg !2783
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2773, metadata !DIExpression()), !dbg !2783
  %11 = load i32, i32* %8, align 8, !dbg !2784
  %12 = icmp ult i32 %11, 41, !dbg !2784
  br i1 %12, label %13, label %18, !dbg !2784

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2784
  %15 = sext i32 %11 to i64, !dbg !2784
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2784
  %17 = add i32 %11, 8, !dbg !2784
  store i32 %17, i32* %8, align 8, !dbg !2784
  br label %21, !dbg !2784

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2784
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2784
  store i8* %20, i8** %10, align 8, !dbg !2784
  br label %21, !dbg !2784

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2784
  %25 = load i8*, i8** %24, align 8, !dbg !2784
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2787
  store i8* %25, i8** %26, align 16, !dbg !2788, !tbaa !636
  %27 = icmp eq i8* %25, null, !dbg !2789
  br i1 %27, label %30, label %28, !dbg !2790

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2773, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 1, metadata !2773, metadata !DIExpression()), !dbg !2783
  %29 = icmp ult i32 %22, 41, !dbg !2784
  br i1 %29, label %35, label %32, !dbg !2784

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2791
  call void @llvm.dbg.value(metadata i64 %31, metadata !2773, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 %31, metadata !2773, metadata !DIExpression()), !dbg !2783
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2792
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2793
  ret void, !dbg !2793

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2784
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2784
  store i8* %34, i8** %10, align 8, !dbg !2784
  br label %40, !dbg !2784

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2784
  %37 = sext i32 %22 to i64, !dbg !2784
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2784
  %39 = add i32 %22, 8, !dbg !2784
  store i32 %39, i32* %8, align 8, !dbg !2784
  br label %40, !dbg !2784

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2784
  %44 = load i8*, i8** %43, align 8, !dbg !2784
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2787
  store i8* %44, i8** %45, align 8, !dbg !2788, !tbaa !636
  %46 = icmp eq i8* %44, null, !dbg !2789
  br i1 %46, label %30, label %47, !dbg !2790

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2773, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 2, metadata !2773, metadata !DIExpression()), !dbg !2783
  %48 = icmp ult i32 %41, 41, !dbg !2784
  br i1 %48, label %52, label %49, !dbg !2784

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2784
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2784
  store i8* %51, i8** %10, align 8, !dbg !2784
  br label %57, !dbg !2784

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2784
  %54 = sext i32 %41 to i64, !dbg !2784
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2784
  %56 = add i32 %41, 8, !dbg !2784
  store i32 %56, i32* %8, align 8, !dbg !2784
  br label %57, !dbg !2784

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2784
  %61 = load i8*, i8** %60, align 8, !dbg !2784
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2787
  store i8* %61, i8** %62, align 16, !dbg !2788, !tbaa !636
  %63 = icmp eq i8* %61, null, !dbg !2789
  br i1 %63, label %30, label %64, !dbg !2790

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2773, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 3, metadata !2773, metadata !DIExpression()), !dbg !2783
  %65 = icmp ult i32 %58, 41, !dbg !2784
  br i1 %65, label %69, label %66, !dbg !2784

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2784
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2784
  store i8* %68, i8** %10, align 8, !dbg !2784
  br label %74, !dbg !2784

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2784
  %71 = sext i32 %58 to i64, !dbg !2784
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2784
  %73 = add i32 %58, 8, !dbg !2784
  store i32 %73, i32* %8, align 8, !dbg !2784
  br label %74, !dbg !2784

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2784
  %78 = load i8*, i8** %77, align 8, !dbg !2784
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2787
  store i8* %78, i8** %79, align 8, !dbg !2788, !tbaa !636
  %80 = icmp eq i8* %78, null, !dbg !2789
  br i1 %80, label %30, label %81, !dbg !2790

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2773, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 4, metadata !2773, metadata !DIExpression()), !dbg !2783
  %82 = icmp ult i32 %75, 41, !dbg !2784
  br i1 %82, label %86, label %83, !dbg !2784

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2784
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2784
  store i8* %85, i8** %10, align 8, !dbg !2784
  br label %91, !dbg !2784

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2784
  %88 = sext i32 %75 to i64, !dbg !2784
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2784
  %90 = add i32 %75, 8, !dbg !2784
  store i32 %90, i32* %8, align 8, !dbg !2784
  br label %91, !dbg !2784

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2784
  %95 = load i8*, i8** %94, align 8, !dbg !2784
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2787
  store i8* %95, i8** %96, align 16, !dbg !2788, !tbaa !636
  %97 = icmp eq i8* %95, null, !dbg !2789
  br i1 %97, label %30, label %98, !dbg !2790

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2773, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 5, metadata !2773, metadata !DIExpression()), !dbg !2783
  %99 = icmp ult i32 %92, 41, !dbg !2784
  br i1 %99, label %103, label %100, !dbg !2784

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2784
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2784
  store i8* %102, i8** %10, align 8, !dbg !2784
  br label %108, !dbg !2784

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2784
  %105 = sext i32 %92 to i64, !dbg !2784
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2784
  %107 = add i32 %92, 8, !dbg !2784
  store i32 %107, i32* %8, align 8, !dbg !2784
  br label %108, !dbg !2784

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2784
  %111 = load i8*, i8** %110, align 8, !dbg !2784
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2787
  store i8* %111, i8** %112, align 8, !dbg !2788, !tbaa !636
  %113 = icmp eq i8* %111, null, !dbg !2789
  br i1 %113, label %30, label %114, !dbg !2790

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2773, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 6, metadata !2773, metadata !DIExpression()), !dbg !2783
  %115 = load i8*, i8** %10, align 8, !dbg !2784
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2784
  store i8* %116, i8** %10, align 8, !dbg !2784
  %117 = bitcast i8* %115 to i8**, !dbg !2784
  %118 = load i8*, i8** %117, align 8, !dbg !2784
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2787
  store i8* %118, i8** %119, align 16, !dbg !2788, !tbaa !636
  %120 = icmp eq i8* %118, null, !dbg !2789
  br i1 %120, label %30, label %121, !dbg !2790

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2773, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 7, metadata !2773, metadata !DIExpression()), !dbg !2783
  %122 = load i8*, i8** %10, align 8, !dbg !2784
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2784
  store i8* %123, i8** %10, align 8, !dbg !2784
  %124 = bitcast i8* %122 to i8**, !dbg !2784
  %125 = load i8*, i8** %124, align 8, !dbg !2784
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2787
  store i8* %125, i8** %126, align 8, !dbg !2788, !tbaa !636
  %127 = icmp eq i8* %125, null, !dbg !2789
  br i1 %127, label %30, label %128, !dbg !2790

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2773, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 8, metadata !2773, metadata !DIExpression()), !dbg !2783
  %129 = load i8*, i8** %10, align 8, !dbg !2784
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2784
  store i8* %130, i8** %10, align 8, !dbg !2784
  %131 = bitcast i8* %129 to i8**, !dbg !2784
  %132 = load i8*, i8** %131, align 8, !dbg !2784
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2787
  store i8* %132, i8** %133, align 16, !dbg !2788, !tbaa !636
  %134 = icmp eq i8* %132, null, !dbg !2789
  br i1 %134, label %30, label %135, !dbg !2790

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2773, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.value(metadata i64 9, metadata !2773, metadata !DIExpression()), !dbg !2783
  %136 = load i8*, i8** %10, align 8, !dbg !2784
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2784
  store i8* %137, i8** %10, align 8, !dbg !2784
  %138 = bitcast i8* %136 to i8**, !dbg !2784
  %139 = load i8*, i8** %138, align 8, !dbg !2784
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2787
  store i8* %139, i8** %140, align 8, !dbg !2788, !tbaa !636
  %141 = icmp eq i8* %139, null, !dbg !2789
  %142 = select i1 %141, i64 9, i64 10, !dbg !2790
  br label %30, !dbg !2790
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2794 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2798, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.value(metadata i8* %1, metadata !2799, metadata !DIExpression()), !dbg !2808
  call void @llvm.dbg.value(metadata i8* %2, metadata !2800, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.value(metadata i8* %3, metadata !2801, metadata !DIExpression()), !dbg !2810
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2811
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2811
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2802, metadata !DIExpression()), !dbg !2812
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2813
  call void @llvm.va_start(i8* nonnull %6), !dbg !2813
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2814
  call void @llvm.va_end(i8* nonnull %6), !dbg !2815
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2816
  ret void, !dbg !2816
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2817 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.90, i64 0, i64 0), i32 5) #10, !dbg !2818
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.91, i64 0, i64 0)) #10, !dbg !2818
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.92, i64 0, i64 0), i32 5) #10, !dbg !2819
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.93, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.94, i64 0, i64 0)) #10, !dbg !2819
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.95, i64 0, i64 0), i32 5) #10, !dbg !2820
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2820, !tbaa !636
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2820
  ret void, !dbg !2821
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2822 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2826, metadata !DIExpression()), !dbg !2828
  call void @llvm.dbg.value(metadata i64 %1, metadata !2827, metadata !DIExpression()), !dbg !2829
  %3 = udiv i64 9223372036854775807, %1, !dbg !2830
  %4 = icmp ult i64 %3, %0, !dbg !2830
  br i1 %4, label %5, label %6, !dbg !2832

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2833
  unreachable, !dbg !2833

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2834
  call void @llvm.dbg.value(metadata i64 %7, metadata !2835, metadata !DIExpression()) #10, !dbg !2842
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2844
  call void @llvm.dbg.value(metadata i8* %8, metadata !2841, metadata !DIExpression()) #10, !dbg !2845
  %9 = icmp eq i8* %8, null, !dbg !2846
  %10 = icmp ne i64 %7, 0, !dbg !2848
  %11 = and i1 %10, %9, !dbg !2849
  br i1 %11, label %12, label %13, !dbg !2849

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2850
  unreachable, !dbg !2850

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2851
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2836 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2835, metadata !DIExpression()), !dbg !2852
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2853
  call void @llvm.dbg.value(metadata i8* %2, metadata !2841, metadata !DIExpression()), !dbg !2854
  %3 = icmp eq i8* %2, null, !dbg !2855
  %4 = icmp ne i64 %0, 0, !dbg !2856
  %5 = and i1 %4, %3, !dbg !2857
  br i1 %5, label %6, label %7, !dbg !2857

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2858
  unreachable, !dbg !2858

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2859
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2860 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2864, metadata !DIExpression()), !dbg !2867
  call void @llvm.dbg.value(metadata i64 %1, metadata !2865, metadata !DIExpression()), !dbg !2868
  call void @llvm.dbg.value(metadata i64 %2, metadata !2866, metadata !DIExpression()), !dbg !2869
  %4 = udiv i64 9223372036854775807, %2, !dbg !2870
  %5 = icmp ult i64 %4, %1, !dbg !2870
  br i1 %5, label %6, label %7, !dbg !2872

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2873
  unreachable, !dbg !2873

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2874
  call void @llvm.dbg.value(metadata i8* %0, metadata !2875, metadata !DIExpression()) #10, !dbg !2881
  call void @llvm.dbg.value(metadata i64 %8, metadata !2880, metadata !DIExpression()) #10, !dbg !2883
  %9 = icmp eq i64 %8, 0, !dbg !2884
  %10 = icmp ne i8* %0, null, !dbg !2886
  %11 = and i1 %10, %9, !dbg !2887
  br i1 %11, label %12, label %13, !dbg !2887

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2888
  br label %19, !dbg !2890

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2891
  call void @llvm.dbg.value(metadata i8* %14, metadata !2875, metadata !DIExpression()) #10, !dbg !2881
  %15 = icmp eq i8* %14, null, !dbg !2892
  %16 = icmp ne i64 %8, 0, !dbg !2894
  %17 = and i1 %16, %15, !dbg !2895
  br i1 %17, label %18, label %19, !dbg !2895

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2896
  unreachable, !dbg !2896

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2897
  ret i8* %20, !dbg !2898
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !2876 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2875, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %1, metadata !2880, metadata !DIExpression()), !dbg !2900
  %3 = icmp eq i64 %1, 0, !dbg !2901
  %4 = icmp ne i8* %0, null, !dbg !2902
  %5 = and i1 %4, %3, !dbg !2903
  br i1 %5, label %6, label %7, !dbg !2903

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2904
  br label %13, !dbg !2905

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2906
  call void @llvm.dbg.value(metadata i8* %8, metadata !2875, metadata !DIExpression()), !dbg !2899
  %9 = icmp eq i8* %8, null, !dbg !2907
  %10 = icmp ne i64 %1, 0, !dbg !2908
  %11 = and i1 %10, %9, !dbg !2909
  br i1 %11, label %12, label %13, !dbg !2909

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2910
  unreachable, !dbg !2910

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2911
  ret i8* %14, !dbg !2912
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !179 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !184, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i64* %1, metadata !185, metadata !DIExpression()), !dbg !2914
  call void @llvm.dbg.value(metadata i64 %2, metadata !186, metadata !DIExpression()), !dbg !2915
  %4 = load i64, i64* %1, align 8, !dbg !2916, !tbaa !1957
  call void @llvm.dbg.value(metadata i64 %4, metadata !187, metadata !DIExpression()), !dbg !2917
  %5 = icmp eq i8* %0, null, !dbg !2918
  br i1 %5, label %6, label %20, !dbg !2920

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2921
  br i1 %7, label %8, label %13, !dbg !2924

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2925
  call void @llvm.dbg.value(metadata i64 %9, metadata !187, metadata !DIExpression()), !dbg !2917
  %10 = icmp ugt i64 %2, 128, !dbg !2927
  %11 = zext i1 %10 to i64, !dbg !2927
  %12 = add nuw nsw i64 %9, %11, !dbg !2928
  call void @llvm.dbg.value(metadata i64 %12, metadata !187, metadata !DIExpression()), !dbg !2917
  br label %13, !dbg !2929

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2930
  call void @llvm.dbg.value(metadata i64 %14, metadata !187, metadata !DIExpression()), !dbg !2917
  %15 = udiv i64 9223372036854775807, %2, !dbg !2931
  %16 = icmp ult i64 %15, %14, !dbg !2931
  br i1 %16, label %19, label %17, !dbg !2933

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !187, metadata !DIExpression()), !dbg !2917
  store i64 %14, i64* %1, align 8, !dbg !2934, !tbaa !1957
  %18 = mul i64 %14, %2, !dbg !2935
  call void @llvm.dbg.value(metadata i8* %0, metadata !2875, metadata !DIExpression()) #10, !dbg !2936
  call void @llvm.dbg.value(metadata i64 %28, metadata !2880, metadata !DIExpression()) #10, !dbg !2938
  br label %31, !dbg !2939

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2940
  unreachable, !dbg !2940

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2941
  %22 = icmp ugt i64 %21, %4, !dbg !2944
  br i1 %22, label %24, label %23, !dbg !2945

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !2946
  unreachable, !dbg !2946

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2947
  %26 = add i64 %4, 1, !dbg !2948
  %27 = add i64 %26, %25, !dbg !2949
  call void @llvm.dbg.value(metadata i64 %27, metadata !187, metadata !DIExpression()), !dbg !2917
  call void @llvm.dbg.value(metadata i64 %27, metadata !187, metadata !DIExpression()), !dbg !2917
  store i64 %27, i64* %1, align 8, !dbg !2934, !tbaa !1957
  %28 = mul i64 %27, %2, !dbg !2935
  call void @llvm.dbg.value(metadata i8* %0, metadata !2875, metadata !DIExpression()) #10, !dbg !2936
  call void @llvm.dbg.value(metadata i64 %28, metadata !2880, metadata !DIExpression()) #10, !dbg !2938
  %29 = icmp eq i64 %28, 0, !dbg !2950
  br i1 %29, label %30, label %31, !dbg !2939

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !2951
  br label %38, !dbg !2952

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !2953
  call void @llvm.dbg.value(metadata i8* %33, metadata !2875, metadata !DIExpression()) #10, !dbg !2936
  %34 = icmp eq i8* %33, null, !dbg !2954
  %35 = icmp ne i64 %32, 0, !dbg !2955
  %36 = and i1 %35, %34, !dbg !2956
  br i1 %36, label %37, label %38, !dbg !2956

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !2957
  unreachable, !dbg !2957

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2958
  ret i8* %39, !dbg !2959
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2960 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2962, metadata !DIExpression()), !dbg !2963
  call void @llvm.dbg.value(metadata i64 %0, metadata !2835, metadata !DIExpression()) #10, !dbg !2964
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2966
  call void @llvm.dbg.value(metadata i8* %2, metadata !2841, metadata !DIExpression()) #10, !dbg !2967
  %3 = icmp eq i8* %2, null, !dbg !2968
  %4 = icmp ne i64 %0, 0, !dbg !2969
  %5 = and i1 %4, %3, !dbg !2970
  br i1 %5, label %6, label %7, !dbg !2970

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2971
  unreachable, !dbg !2971

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2972
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !2973 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2977, metadata !DIExpression()), !dbg !2979
  call void @llvm.dbg.value(metadata i64* %1, metadata !2978, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.value(metadata i8* %0, metadata !184, metadata !DIExpression()) #10, !dbg !2981
  call void @llvm.dbg.value(metadata i64* %1, metadata !185, metadata !DIExpression()) #10, !dbg !2983
  call void @llvm.dbg.value(metadata i64 1, metadata !186, metadata !DIExpression()) #10, !dbg !2984
  %3 = load i64, i64* %1, align 8, !dbg !2985, !tbaa !1957
  call void @llvm.dbg.value(metadata i64 %3, metadata !187, metadata !DIExpression()) #10, !dbg !2986
  %4 = icmp eq i8* %0, null, !dbg !2987
  br i1 %4, label %5, label %12, !dbg !2988

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2989
  br i1 %6, label %9, label %7, !dbg !2990

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !187, metadata !DIExpression()) #10, !dbg !2986
  %8 = icmp slt i64 %3, 0, !dbg !2991
  br i1 %8, label %11, label %9, !dbg !2992

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !187, metadata !DIExpression()) #10, !dbg !2986
  store i64 %10, i64* %1, align 8, !dbg !2993, !tbaa !1957
  call void @llvm.dbg.value(metadata i8* %0, metadata !2875, metadata !DIExpression()) #10, !dbg !2994
  call void @llvm.dbg.value(metadata i64 %18, metadata !2880, metadata !DIExpression()) #10, !dbg !2996
  br label %21, !dbg !2997

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2998
  unreachable, !dbg !2998

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !2999
  br i1 %13, label %15, label %14, !dbg !3000

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3001
  unreachable, !dbg !3001

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3002
  %17 = add i64 %3, 1, !dbg !3003
  %18 = add i64 %17, %16, !dbg !3004
  call void @llvm.dbg.value(metadata i64 %18, metadata !187, metadata !DIExpression()) #10, !dbg !2986
  call void @llvm.dbg.value(metadata i64 %18, metadata !187, metadata !DIExpression()) #10, !dbg !2986
  store i64 %18, i64* %1, align 8, !dbg !2993, !tbaa !1957
  call void @llvm.dbg.value(metadata i8* %0, metadata !2875, metadata !DIExpression()) #10, !dbg !2994
  call void @llvm.dbg.value(metadata i64 %18, metadata !2880, metadata !DIExpression()) #10, !dbg !2996
  %19 = icmp eq i64 %18, 0, !dbg !3005
  br i1 %19, label %20, label %21, !dbg !2997

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3006
  br label %28, !dbg !3007

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3008
  call void @llvm.dbg.value(metadata i8* %23, metadata !2875, metadata !DIExpression()) #10, !dbg !2994
  %24 = icmp eq i8* %23, null, !dbg !3009
  %25 = icmp ne i64 %22, 0, !dbg !3010
  %26 = and i1 %25, %24, !dbg !3011
  br i1 %26, label %27, label %28, !dbg !3011

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3012
  unreachable, !dbg !3012

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3013
  ret i8* %29, !dbg !3014
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3015 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3017, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i64 %0, metadata !2835, metadata !DIExpression()) #10, !dbg !3019
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3021
  call void @llvm.dbg.value(metadata i8* %2, metadata !2841, metadata !DIExpression()) #10, !dbg !3022
  %3 = icmp eq i8* %2, null, !dbg !3023
  %4 = icmp ne i64 %0, 0, !dbg !3024
  %5 = and i1 %4, %3, !dbg !3025
  br i1 %5, label %6, label %7, !dbg !3025

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3026
  unreachable, !dbg !3026

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3027
  ret i8* %2, !dbg !3028
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3029 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3031, metadata !DIExpression()), !dbg !3034
  call void @llvm.dbg.value(metadata i64 %1, metadata !3032, metadata !DIExpression()), !dbg !3035
  %3 = udiv i64 9223372036854775807, %1, !dbg !3036
  %4 = icmp ult i64 %3, %0, !dbg !3036
  br i1 %4, label %8, label %5, !dbg !3038

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3039
  call void @llvm.dbg.value(metadata i8* %6, metadata !3033, metadata !DIExpression()), !dbg !3040
  %7 = icmp eq i8* %6, null, !dbg !3041
  br i1 %7, label %8, label %9, !dbg !3042

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3043
  unreachable, !dbg !3043

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3044
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3045 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3051, metadata !DIExpression()), !dbg !3053
  call void @llvm.dbg.value(metadata i64 %1, metadata !3052, metadata !DIExpression()), !dbg !3054
  call void @llvm.dbg.value(metadata i64 %1, metadata !2835, metadata !DIExpression()) #10, !dbg !3055
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3057
  call void @llvm.dbg.value(metadata i8* %3, metadata !2841, metadata !DIExpression()) #10, !dbg !3058
  %4 = icmp eq i8* %3, null, !dbg !3059
  %5 = icmp ne i64 %1, 0, !dbg !3060
  %6 = and i1 %5, %4, !dbg !3061
  br i1 %6, label %7, label %8, !dbg !3061

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3062
  unreachable, !dbg !3062

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3063
  ret i8* %3, !dbg !3064
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3065 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3067, metadata !DIExpression()), !dbg !3068
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3069
  %3 = add i64 %2, 1, !dbg !3070
  call void @llvm.dbg.value(metadata i8* %0, metadata !3051, metadata !DIExpression()) #10, !dbg !3071
  call void @llvm.dbg.value(metadata i64 %3, metadata !3052, metadata !DIExpression()) #10, !dbg !3073
  call void @llvm.dbg.value(metadata i64 %3, metadata !2835, metadata !DIExpression()) #10, !dbg !3074
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3076
  call void @llvm.dbg.value(metadata i8* %4, metadata !2841, metadata !DIExpression()) #10, !dbg !3077
  %5 = icmp eq i8* %4, null, !dbg !3078
  %6 = icmp ne i64 %3, 0, !dbg !3079
  %7 = and i1 %6, %5, !dbg !3080
  br i1 %7, label %8, label %9, !dbg !3080

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3081
  unreachable, !dbg !3081

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3082
  ret i8* %4, !dbg !3083
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3084 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3086, !tbaa !703
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.106, i64 0, i64 0), i32 5) #10, !dbg !3087
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.107, i64 0, i64 0), i8* %2) #10, !dbg !3088
  tail call void @abort() #15, !dbg !3089
  unreachable, !dbg !3089
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3090 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3093, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %1, metadata !3094, metadata !DIExpression()), !dbg !3100
  %3 = icmp eq i64 %0, 0, !dbg !3101
  %4 = icmp eq i64 %1, 0, !dbg !3102
  %5 = or i1 %3, %4, !dbg !3103
  br i1 %5, label %12, label %6, !dbg !3103

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3104
  call void @llvm.dbg.value(metadata i64 %7, metadata !3096, metadata !DIExpression()), !dbg !3105
  %8 = udiv i64 %7, %1, !dbg !3106
  %9 = icmp eq i64 %8, %0, !dbg !3108
  br i1 %9, label %12, label %10, !dbg !3109

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3110
  store i32 12, i32* %11, align 4, !dbg !3112, !tbaa !703
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3093, metadata !DIExpression()), !dbg !3099
  call void @llvm.dbg.value(metadata i64 %13, metadata !3094, metadata !DIExpression()), !dbg !3100
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3113
  call void @llvm.dbg.value(metadata i8* %15, metadata !3095, metadata !DIExpression()), !dbg !3114
  br label %16, !dbg !3115

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3116
  ret i8* %17, !dbg !3117
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3118 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3135, metadata !DIExpression()), !dbg !3144
  call void @llvm.dbg.value(metadata i8* %1, metadata !3136, metadata !DIExpression()), !dbg !3145
  call void @llvm.dbg.value(metadata i64 %2, metadata !3137, metadata !DIExpression()), !dbg !3146
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3138, metadata !DIExpression()), !dbg !3147
  %6 = bitcast i32* %5 to i8*, !dbg !3148
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3148
  %7 = icmp eq i32* %0, null, !dbg !3149
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3151
  call void @llvm.dbg.value(metadata i32* %8, metadata !3135, metadata !DIExpression()), !dbg !3144
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3152
  call void @llvm.dbg.value(metadata i64 %9, metadata !3139, metadata !DIExpression()), !dbg !3153
  %10 = icmp ugt i64 %9, -3, !dbg !3154
  %11 = icmp ne i64 %2, 0, !dbg !3155
  %12 = and i1 %11, %10, !dbg !3156
  br i1 %12, label %13, label %18, !dbg !3156

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3157
  br i1 %14, label %18, label %15, !dbg !3158

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3159, !tbaa !1134
  call void @llvm.dbg.value(metadata i8 %16, metadata !3141, metadata !DIExpression()), !dbg !3160
  %17 = zext i8 %16 to i32, !dbg !3161
  store i32 %17, i32* %8, align 4, !dbg !3162, !tbaa !703
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3163
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3164
  ret i64 %19, !dbg !3164
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3165 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3204, metadata !DIExpression()), !dbg !3209
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3210
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3211, metadata !DIExpression()), !dbg !3215
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3217
  %4 = load i32, i32* %3, align 8, !dbg !3217, !tbaa !3218
  %5 = and i32 %4, 32, !dbg !3217
  %6 = icmp eq i32 %5, 0, !dbg !3220
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3221
  %8 = icmp ne i32 %7, 0, !dbg !3222
  br i1 %6, label %9, label %19, !dbg !3223

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3225
  %11 = xor i1 %8, true, !dbg !3226
  %12 = or i1 %10, %11, !dbg !3226
  %13 = sext i1 %8 to i32, !dbg !3226
  br i1 %12, label %22, label %14, !dbg !3226

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3227
  %16 = load i32, i32* %15, align 4, !dbg !3227, !tbaa !703
  %17 = icmp ne i32 %16, 9, !dbg !3228
  %18 = sext i1 %17 to i32, !dbg !3229
  br label %22, !dbg !3229

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3230

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3232
  store i32 0, i32* %21, align 4, !dbg !3234, !tbaa !703
  br label %22, !dbg !3232

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3235
  ret i32 %23, !dbg !3236
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3237 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3242, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.value(metadata i8 1, metadata !3243, metadata !DIExpression()), !dbg !3246
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %2, metadata !3244, metadata !DIExpression()), !dbg !3248
  %3 = icmp eq i8* %2, null, !dbg !3249
  br i1 %3, label %11, label %4, !dbg !3251

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.116, i64 0, i64 0)) #14, !dbg !3252
  %6 = icmp eq i32 %5, 0, !dbg !3257
  br i1 %6, label %10, label %7, !dbg !3258

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.117, i64 0, i64 0)) #14, !dbg !3259
  %9 = icmp eq i32 %8, 0, !dbg !3260
  br i1 %9, label %10, label %11, !dbg !3261

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3243, metadata !DIExpression()), !dbg !3246
  br label %11, !dbg !3262

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3263
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3264 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3270
  call void @llvm.dbg.value(metadata i8* %1, metadata !3269, metadata !DIExpression()), !dbg !3271
  %2 = icmp eq i8* %1, null, !dbg !3272
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.120, i64 0, i64 0), i8* %1, !dbg !3274
  call void @llvm.dbg.value(metadata i8* %3, metadata !3269, metadata !DIExpression()), !dbg !3271
  %4 = load i8, i8* %3, align 1, !dbg !3275, !tbaa !1134
  %5 = icmp eq i8 %4, 0, !dbg !3279
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.121, i64 0, i64 0), i8* %3, !dbg !3280
  call void @llvm.dbg.value(metadata i8* %6, metadata !3269, metadata !DIExpression()), !dbg !3271
  ret i8* %6, !dbg !3281
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3282 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3321, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i32 0, metadata !3322, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i32 0, metadata !3324, metadata !DIExpression()), !dbg !3327
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3328
  call void @llvm.dbg.value(metadata i32 %2, metadata !3323, metadata !DIExpression()), !dbg !3329
  %3 = icmp slt i32 %2, 0, !dbg !3330
  br i1 %3, label %4, label %6, !dbg !3332

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3333
  br label %24, !dbg !3334

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3335
  %8 = icmp eq i32 %7, 0, !dbg !3335
  br i1 %8, label %13, label %9, !dbg !3337

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3338
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3339
  %12 = icmp eq i64 %11, -1, !dbg !3340
  br i1 %12, label %16, label %13, !dbg !3341

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3342
  %15 = icmp eq i32 %14, 0, !dbg !3342
  br i1 %15, label %16, label %18, !dbg !3343

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3322, metadata !DIExpression()), !dbg !3326
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3344
  call void @llvm.dbg.value(metadata i32 %21, metadata !3324, metadata !DIExpression()), !dbg !3327
  br label %24, !dbg !3345

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3346
  %20 = load i32, i32* %19, align 4, !dbg !3346, !tbaa !703
  call void @llvm.dbg.value(metadata i32 %20, metadata !3322, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i32 %20, metadata !3322, metadata !DIExpression()), !dbg !3326
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3344
  call void @llvm.dbg.value(metadata i32 %21, metadata !3324, metadata !DIExpression()), !dbg !3327
  %22 = icmp eq i32 %20, 0, !dbg !3347
  br i1 %22, label %24, label %23, !dbg !3345

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3349, !tbaa !703
  call void @llvm.dbg.value(metadata i32 -1, metadata !3324, metadata !DIExpression()), !dbg !3327
  br label %24, !dbg !3351

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3352
  ret i32 %25, !dbg !3353
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3354 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3393, metadata !DIExpression()), !dbg !3394
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3395
  br i1 %2, label %6, label %3, !dbg !3397

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3398
  %5 = icmp eq i32 %4, 0, !dbg !3398
  br i1 %5, label %6, label %8, !dbg !3399

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3400
  br label %17, !dbg !3401

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3402, metadata !DIExpression()) #10, !dbg !3407
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3409
  %10 = load i32, i32* %9, align 8, !dbg !3409, !tbaa !3218
  %11 = and i32 %10, 256, !dbg !3411
  %12 = icmp eq i32 %11, 0, !dbg !3411
  br i1 %12, label %15, label %13, !dbg !3412

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3413
  br label %15, !dbg !3413

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3414
  br label %17, !dbg !3415

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3416
  ret i32 %18, !dbg !3417
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3418 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3458, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.value(metadata i64 %1, metadata !3459, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.value(metadata i32 %2, metadata !3460, metadata !DIExpression()), !dbg !3466
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3467
  %5 = load i8*, i8** %4, align 8, !dbg !3467, !tbaa !3468
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3469
  %7 = load i8*, i8** %6, align 8, !dbg !3469, !tbaa !3470
  %8 = icmp eq i8* %5, %7, !dbg !3471
  br i1 %8, label %9, label %28, !dbg !3472

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3473
  %11 = load i8*, i8** %10, align 8, !dbg !3473, !tbaa !3474
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3475
  %13 = load i8*, i8** %12, align 8, !dbg !3475, !tbaa !3476
  %14 = icmp eq i8* %11, %13, !dbg !3477
  br i1 %14, label %15, label %28, !dbg !3478

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3479
  %17 = load i8*, i8** %16, align 8, !dbg !3479, !tbaa !3480
  %18 = icmp eq i8* %17, null, !dbg !3481
  br i1 %18, label %19, label %28, !dbg !3482

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3483
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3484
  call void @llvm.dbg.value(metadata i64 %21, metadata !3461, metadata !DIExpression()), !dbg !3485
  %22 = icmp eq i64 %21, -1, !dbg !3486
  br i1 %22, label %30, label %23, !dbg !3488

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3489
  %25 = load i32, i32* %24, align 8, !dbg !3490, !tbaa !3218
  %26 = and i32 %25, -17, !dbg !3490
  store i32 %26, i32* %24, align 8, !dbg !3490, !tbaa !3218
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3491
  store i64 %21, i64* %27, align 8, !dbg !3492, !tbaa !3493
  br label %30, !dbg !3494

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3495
  br label %30, !dbg !3496

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3497
  ret i32 %31, !dbg !3498
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
!3 = !DIFile(filename: "src/link.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
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
!628 = distinct !DILocation(line: 59, column: 7, scope: !629)
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
!642 = !DILocation(line: 57, column: 7, scope: !629)
!643 = !DILocation(line: 58, column: 7, scope: !629)
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
!678 = !DILocation(line: 61, column: 3, scope: !603)
!679 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 65, type: !680, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !683)
!680 = !DISubroutineType(types: !681)
!681 = !{!33, !33, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!683 = !{!684, !685}
!684 = !DILocalVariable(name: "argc", arg: 1, scope: !679, file: !3, line: 65, type: !33)
!685 = !DILocalVariable(name: "argv", arg: 2, scope: !679, file: !3, line: 65, type: !682)
!686 = !DILocation(line: 65, column: 11, scope: !679)
!687 = !DILocation(line: 65, column: 24, scope: !679)
!688 = !DILocation(line: 68, column: 21, scope: !679)
!689 = !DILocation(line: 68, column: 3, scope: !679)
!690 = !DILocation(line: 69, column: 3, scope: !679)
!691 = !DILocation(line: 70, column: 3, scope: !679)
!692 = !DILocation(line: 71, column: 3, scope: !679)
!693 = !DILocation(line: 73, column: 3, scope: !679)
!694 = !DILocation(line: 75, column: 63, scope: !679)
!695 = !DILocation(line: 75, column: 3, scope: !679)
!696 = !DILocation(line: 77, column: 7, scope: !697)
!697 = distinct !DILexicalBlock(scope: !679, file: !3, line: 77, column: 7)
!698 = !DILocation(line: 77, column: 56, scope: !697)
!699 = !DILocation(line: 77, column: 7, scope: !679)
!700 = !DILocation(line: 78, column: 5, scope: !697)
!701 = !DILocation(line: 80, column: 14, scope: !702)
!702 = distinct !DILexicalBlock(scope: !679, file: !3, line: 80, column: 7)
!703 = !{!704, !704, i64 0}
!704 = !{!"int", !638, i64 0}
!705 = !DILocation(line: 80, column: 21, scope: !702)
!706 = !DILocation(line: 80, column: 12, scope: !702)
!707 = !DILocation(line: 80, column: 7, scope: !679)
!708 = !DILocation(line: 82, column: 16, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 82, column: 11)
!710 = distinct !DILexicalBlock(scope: !702, file: !3, line: 81, column: 5)
!711 = !DILocation(line: 82, column: 11, scope: !710)
!712 = !DILocation(line: 83, column: 22, scope: !709)
!713 = !DILocation(line: 83, column: 9, scope: !709)
!714 = !DILocation(line: 85, column: 22, scope: !709)
!715 = !DILocation(line: 85, column: 65, scope: !709)
!716 = !DILocation(line: 85, column: 60, scope: !709)
!717 = !DILocation(line: 85, column: 53, scope: !709)
!718 = !DILocation(line: 85, column: 9, scope: !709)
!719 = !DILocation(line: 86, column: 7, scope: !710)
!720 = !DILocation(line: 89, column: 18, scope: !721)
!721 = distinct !DILexicalBlock(scope: !679, file: !3, line: 89, column: 7)
!722 = !DILocation(line: 89, column: 7, scope: !679)
!723 = !DILocation(line: 91, column: 20, scope: !724)
!724 = distinct !DILexicalBlock(scope: !721, file: !3, line: 90, column: 5)
!725 = !DILocation(line: 91, column: 55, scope: !724)
!726 = !DILocation(line: 91, column: 62, scope: !724)
!727 = !DILocation(line: 91, column: 50, scope: !724)
!728 = !DILocation(line: 91, column: 43, scope: !724)
!729 = !DILocation(line: 91, column: 7, scope: !724)
!730 = !DILocation(line: 92, column: 7, scope: !724)
!731 = !DILocation(line: 95, column: 13, scope: !732)
!732 = distinct !DILexicalBlock(scope: !679, file: !3, line: 95, column: 7)
!733 = !DILocation(line: 95, column: 39, scope: !732)
!734 = !DILocation(line: 95, column: 27, scope: !732)
!735 = !DILocation(line: 95, column: 7, scope: !732)
!736 = !DILocation(line: 95, column: 45, scope: !732)
!737 = !DILocation(line: 95, column: 7, scope: !679)
!738 = !DILocation(line: 96, column: 5, scope: !732)
!739 = !DILocation(line: 99, column: 3, scope: !679)
!740 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !52, file: !52, line: 51, type: !611, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !47, retainedNodes: !741)
!741 = !{!742}
!742 = !DILocalVariable(name: "file", arg: 1, scope: !740, file: !52, line: 51, type: !21)
!743 = !DILocation(line: 51, column: 41, scope: !740)
!744 = !DILocation(line: 53, column: 13, scope: !740)
!745 = !DILocation(line: 54, column: 1, scope: !740)
!746 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !52, file: !52, line: 88, type: !747, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !47, retainedNodes: !749)
!747 = !DISubroutineType(types: !748)
!748 = !{null, !53}
!749 = !{!750}
!750 = !DILocalVariable(name: "ignore", arg: 1, scope: !746, file: !52, line: 88, type: !53)
!751 = !DILocation(line: 88, column: 37, scope: !746)
!752 = !DILocation(line: 90, column: 16, scope: !746)
!753 = !{!754, !754, i64 0}
!754 = !{!"_Bool", !638, i64 0}
!755 = !DILocation(line: 91, column: 1, scope: !746)
!756 = distinct !DISubprogram(name: "close_stdout", scope: !52, file: !52, line: 117, type: !757, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !47, retainedNodes: !759)
!757 = !DISubroutineType(types: !758)
!758 = !{null}
!759 = !{!760}
!760 = !DILocalVariable(name: "write_error", scope: !761, file: !52, line: 122, type: !21)
!761 = distinct !DILexicalBlock(scope: !762, file: !52, line: 121, column: 5)
!762 = distinct !DILexicalBlock(scope: !756, file: !52, line: 119, column: 7)
!763 = !DILocation(line: 119, column: 21, scope: !762)
!764 = !DILocation(line: 119, column: 7, scope: !762)
!765 = !DILocation(line: 119, column: 29, scope: !762)
!766 = !DILocation(line: 120, column: 7, scope: !762)
!767 = !DILocation(line: 120, column: 12, scope: !762)
!768 = !{i8 0, i8 2}
!769 = !DILocation(line: 120, column: 25, scope: !762)
!770 = !DILocation(line: 120, column: 28, scope: !762)
!771 = !DILocation(line: 120, column: 34, scope: !762)
!772 = !DILocation(line: 119, column: 7, scope: !756)
!773 = !DILocation(line: 122, column: 33, scope: !761)
!774 = !DILocation(line: 122, column: 19, scope: !761)
!775 = !DILocation(line: 123, column: 11, scope: !776)
!776 = distinct !DILexicalBlock(scope: !761, file: !52, line: 123, column: 11)
!777 = !DILocation(line: 0, scope: !776)
!778 = !DILocation(line: 123, column: 11, scope: !761)
!779 = !DILocation(line: 124, column: 36, scope: !776)
!780 = !DILocation(line: 124, column: 9, scope: !776)
!781 = !DILocation(line: 127, column: 9, scope: !776)
!782 = !DILocation(line: 129, column: 14, scope: !761)
!783 = !DILocation(line: 129, column: 7, scope: !761)
!784 = !DILocation(line: 134, column: 42, scope: !785)
!785 = distinct !DILexicalBlock(scope: !756, file: !52, line: 134, column: 7)
!786 = !DILocation(line: 134, column: 28, scope: !785)
!787 = !DILocation(line: 134, column: 50, scope: !785)
!788 = !DILocation(line: 134, column: 7, scope: !756)
!789 = !DILocation(line: 135, column: 12, scope: !785)
!790 = !DILocation(line: 135, column: 5, scope: !785)
!791 = !DILocation(line: 136, column: 1, scope: !756)
!792 = distinct !DISubprogram(name: "parse_long_options", scope: !66, file: !66, line: 44, type: !793, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !796)
!793 = !DISubroutineType(types: !794)
!794 = !{null, !33, !682, !21, !21, !21, !795, null}
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!796 = !{!797, !798, !799, !800, !801, !802, !803, !804, !805}
!797 = !DILocalVariable(name: "argc", arg: 1, scope: !792, file: !66, line: 44, type: !33)
!798 = !DILocalVariable(name: "argv", arg: 2, scope: !792, file: !66, line: 45, type: !682)
!799 = !DILocalVariable(name: "command_name", arg: 3, scope: !792, file: !66, line: 46, type: !21)
!800 = !DILocalVariable(name: "package", arg: 4, scope: !792, file: !66, line: 47, type: !21)
!801 = !DILocalVariable(name: "version", arg: 5, scope: !792, file: !66, line: 48, type: !21)
!802 = !DILocalVariable(name: "usage_func", arg: 6, scope: !792, file: !66, line: 49, type: !795)
!803 = !DILocalVariable(name: "c", scope: !792, file: !66, line: 52, type: !33)
!804 = !DILocalVariable(name: "saved_opterr", scope: !792, file: !66, line: 53, type: !33)
!805 = !DILocalVariable(name: "authors", scope: !806, file: !66, line: 71, type: !810)
!806 = distinct !DILexicalBlock(scope: !807, file: !66, line: 70, column: 11)
!807 = distinct !DILexicalBlock(scope: !808, file: !66, line: 64, column: 9)
!808 = distinct !DILexicalBlock(scope: !809, file: !66, line: 62, column: 5)
!809 = distinct !DILexicalBlock(scope: !792, file: !66, line: 60, column: 7)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !811, line: 52, baseType: !812)
!811 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !813, line: 48, baseType: !814)
!813 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !64, line: 71, baseType: !815)
!815 = !DICompositeType(tag: DW_TAG_array_type, baseType: !816, size: 192, elements: !37)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !64, line: 71, size: 192, elements: !817)
!817 = !{!818, !819, !820, !821}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !816, file: !64, line: 71, baseType: !7, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !816, file: !64, line: 71, baseType: !7, size: 32, offset: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !816, file: !64, line: 71, baseType: !24, size: 64, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !816, file: !64, line: 71, baseType: !24, size: 64, offset: 128)
!822 = !DILocation(line: 44, column: 25, scope: !792)
!823 = !DILocation(line: 45, column: 28, scope: !792)
!824 = !DILocation(line: 46, column: 33, scope: !792)
!825 = !DILocation(line: 47, column: 33, scope: !792)
!826 = !DILocation(line: 48, column: 33, scope: !792)
!827 = !DILocation(line: 49, column: 28, scope: !792)
!828 = !DILocation(line: 55, column: 18, scope: !792)
!829 = !DILocation(line: 53, column: 7, scope: !792)
!830 = !DILocation(line: 58, column: 10, scope: !792)
!831 = !DILocation(line: 60, column: 12, scope: !809)
!832 = !DILocation(line: 61, column: 7, scope: !809)
!833 = !DILocation(line: 61, column: 15, scope: !809)
!834 = !DILocation(line: 52, column: 7, scope: !792)
!835 = !DILocation(line: 60, column: 7, scope: !792)
!836 = !DILocation(line: 66, column: 11, scope: !807)
!837 = !DILocation(line: 67, column: 11, scope: !807)
!838 = !DILocation(line: 71, column: 13, scope: !806)
!839 = !DILocation(line: 71, column: 21, scope: !806)
!840 = !DILocation(line: 72, column: 13, scope: !806)
!841 = !DILocation(line: 73, column: 29, scope: !806)
!842 = !DILocation(line: 73, column: 13, scope: !806)
!843 = !DILocation(line: 74, column: 13, scope: !806)
!844 = !DILocation(line: 84, column: 10, scope: !792)
!845 = !DILocation(line: 88, column: 10, scope: !792)
!846 = !DILocation(line: 89, column: 1, scope: !792)
!847 = distinct !DISubprogram(name: "set_program_name", scope: !84, file: !84, line: 39, type: !611, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !79, retainedNodes: !848)
!848 = !{!849, !850, !851}
!849 = !DILocalVariable(name: "argv0", arg: 1, scope: !847, file: !84, line: 39, type: !21)
!850 = !DILocalVariable(name: "slash", scope: !847, file: !84, line: 46, type: !21)
!851 = !DILocalVariable(name: "base", scope: !847, file: !84, line: 47, type: !21)
!852 = !DILocation(line: 39, column: 31, scope: !847)
!853 = !DILocation(line: 51, column: 13, scope: !854)
!854 = distinct !DILexicalBlock(scope: !847, file: !84, line: 51, column: 7)
!855 = !DILocation(line: 51, column: 7, scope: !847)
!856 = !DILocation(line: 55, column: 14, scope: !857)
!857 = distinct !DILexicalBlock(scope: !854, file: !84, line: 52, column: 5)
!858 = !DILocation(line: 54, column: 7, scope: !857)
!859 = !DILocation(line: 56, column: 7, scope: !857)
!860 = !DILocation(line: 59, column: 11, scope: !847)
!861 = !DILocation(line: 46, column: 15, scope: !847)
!862 = !DILocation(line: 60, column: 17, scope: !847)
!863 = !DILocation(line: 60, column: 33, scope: !847)
!864 = !DILocation(line: 60, column: 11, scope: !847)
!865 = !DILocation(line: 47, column: 15, scope: !847)
!866 = !DILocation(line: 61, column: 12, scope: !867)
!867 = distinct !DILexicalBlock(scope: !847, file: !84, line: 61, column: 7)
!868 = !DILocation(line: 61, column: 20, scope: !867)
!869 = !DILocation(line: 61, column: 25, scope: !867)
!870 = !DILocation(line: 61, column: 42, scope: !867)
!871 = !DILocation(line: 61, column: 28, scope: !867)
!872 = !DILocation(line: 61, column: 61, scope: !867)
!873 = !DILocation(line: 61, column: 7, scope: !847)
!874 = !DILocation(line: 64, column: 11, scope: !875)
!875 = distinct !DILexicalBlock(scope: !876, file: !84, line: 64, column: 11)
!876 = distinct !DILexicalBlock(scope: !867, file: !84, line: 62, column: 5)
!877 = !DILocation(line: 64, column: 36, scope: !875)
!878 = !DILocation(line: 64, column: 11, scope: !876)
!879 = !DILocation(line: 66, column: 24, scope: !880)
!880 = distinct !DILexicalBlock(scope: !875, file: !84, line: 65, column: 9)
!881 = !DILocation(line: 70, column: 41, scope: !880)
!882 = !DILocation(line: 72, column: 9, scope: !880)
!883 = !DILocation(line: 84, column: 16, scope: !847)
!884 = !DILocation(line: 90, column: 27, scope: !847)
!885 = !DILocation(line: 92, column: 1, scope: !847)
!886 = distinct !DISubprogram(name: "clone_quoting_options", scope: !118, file: !118, line: 122, type: !887, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !890)
!887 = !DISubroutineType(types: !888)
!888 = !{!889, !889}
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!890 = !{!891, !892, !893}
!891 = !DILocalVariable(name: "o", arg: 1, scope: !886, file: !118, line: 122, type: !889)
!892 = !DILocalVariable(name: "e", scope: !886, file: !118, line: 124, type: !33)
!893 = !DILocalVariable(name: "p", scope: !886, file: !118, line: 125, type: !889)
!894 = !DILocation(line: 122, column: 48, scope: !886)
!895 = !DILocation(line: 124, column: 11, scope: !886)
!896 = !DILocation(line: 124, column: 7, scope: !886)
!897 = !DILocation(line: 125, column: 40, scope: !886)
!898 = !DILocation(line: 125, column: 31, scope: !886)
!899 = !DILocation(line: 125, column: 27, scope: !886)
!900 = !DILocation(line: 127, column: 9, scope: !886)
!901 = !DILocation(line: 128, column: 3, scope: !886)
!902 = distinct !DISubprogram(name: "get_quoting_style", scope: !118, file: !118, line: 133, type: !903, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !907)
!903 = !DISubroutineType(types: !904)
!904 = !{!5, !905}
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!907 = !{!908}
!908 = !DILocalVariable(name: "o", arg: 1, scope: !902, file: !118, line: 133, type: !905)
!909 = !DILocation(line: 133, column: 50, scope: !902)
!910 = !DILocation(line: 135, column: 11, scope: !902)
!911 = !DILocation(line: 135, column: 46, scope: !902)
!912 = !{!913, !638, i64 0}
!913 = !{!"quoting_options", !638, i64 0, !704, i64 4, !638, i64 8, !637, i64 40, !637, i64 48}
!914 = !DILocation(line: 135, column: 3, scope: !902)
!915 = distinct !DISubprogram(name: "set_quoting_style", scope: !118, file: !118, line: 141, type: !916, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !918)
!916 = !DISubroutineType(types: !917)
!917 = !{null, !889, !5}
!918 = !{!919, !920}
!919 = !DILocalVariable(name: "o", arg: 1, scope: !915, file: !118, line: 141, type: !889)
!920 = !DILocalVariable(name: "s", arg: 2, scope: !915, file: !118, line: 141, type: !5)
!921 = !DILocation(line: 141, column: 44, scope: !915)
!922 = !DILocation(line: 141, column: 66, scope: !915)
!923 = !DILocation(line: 143, column: 4, scope: !915)
!924 = !DILocation(line: 143, column: 39, scope: !915)
!925 = !DILocation(line: 143, column: 45, scope: !915)
!926 = !DILocation(line: 144, column: 1, scope: !915)
!927 = distinct !DISubprogram(name: "set_char_quoting", scope: !118, file: !118, line: 152, type: !928, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !930)
!928 = !DISubroutineType(types: !929)
!929 = !{!33, !889, !23, !33}
!930 = !{!931, !932, !933, !934, !936, !938, !939}
!931 = !DILocalVariable(name: "o", arg: 1, scope: !927, file: !118, line: 152, type: !889)
!932 = !DILocalVariable(name: "c", arg: 2, scope: !927, file: !118, line: 152, type: !23)
!933 = !DILocalVariable(name: "i", arg: 3, scope: !927, file: !118, line: 152, type: !33)
!934 = !DILocalVariable(name: "uc", scope: !927, file: !118, line: 154, type: !935)
!935 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!936 = !DILocalVariable(name: "p", scope: !927, file: !118, line: 155, type: !937)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!938 = !DILocalVariable(name: "shift", scope: !927, file: !118, line: 157, type: !33)
!939 = !DILocalVariable(name: "r", scope: !927, file: !118, line: 158, type: !33)
!940 = !DILocation(line: 152, column: 43, scope: !927)
!941 = !DILocation(line: 152, column: 51, scope: !927)
!942 = !DILocation(line: 152, column: 58, scope: !927)
!943 = !DILocation(line: 154, column: 17, scope: !927)
!944 = !DILocation(line: 156, column: 6, scope: !927)
!945 = !DILocation(line: 156, column: 62, scope: !927)
!946 = !DILocation(line: 156, column: 57, scope: !927)
!947 = !DILocation(line: 155, column: 17, scope: !927)
!948 = !DILocation(line: 157, column: 15, scope: !927)
!949 = !DILocation(line: 157, column: 7, scope: !927)
!950 = !DILocation(line: 158, column: 12, scope: !927)
!951 = !DILocation(line: 158, column: 15, scope: !927)
!952 = !DILocation(line: 158, column: 25, scope: !927)
!953 = !DILocation(line: 158, column: 7, scope: !927)
!954 = !DILocation(line: 159, column: 13, scope: !927)
!955 = !DILocation(line: 159, column: 18, scope: !927)
!956 = !DILocation(line: 159, column: 23, scope: !927)
!957 = !DILocation(line: 159, column: 6, scope: !927)
!958 = !DILocation(line: 160, column: 3, scope: !927)
!959 = distinct !DISubprogram(name: "set_quoting_flags", scope: !118, file: !118, line: 168, type: !960, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !962)
!960 = !DISubroutineType(types: !961)
!961 = !{!33, !889, !33}
!962 = !{!963, !964, !965}
!963 = !DILocalVariable(name: "o", arg: 1, scope: !959, file: !118, line: 168, type: !889)
!964 = !DILocalVariable(name: "i", arg: 2, scope: !959, file: !118, line: 168, type: !33)
!965 = !DILocalVariable(name: "r", scope: !959, file: !118, line: 170, type: !33)
!966 = !DILocation(line: 168, column: 44, scope: !959)
!967 = !DILocation(line: 168, column: 51, scope: !959)
!968 = !DILocation(line: 171, column: 8, scope: !969)
!969 = distinct !DILexicalBlock(scope: !959, file: !118, line: 171, column: 7)
!970 = !DILocation(line: 171, column: 7, scope: !959)
!971 = !DILocation(line: 173, column: 10, scope: !959)
!972 = !{!913, !704, i64 4}
!973 = !DILocation(line: 170, column: 7, scope: !959)
!974 = !DILocation(line: 174, column: 12, scope: !959)
!975 = !DILocation(line: 175, column: 3, scope: !959)
!976 = distinct !DISubprogram(name: "set_custom_quoting", scope: !118, file: !118, line: 179, type: !977, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !979)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !889, !21, !21}
!979 = !{!980, !981, !982}
!980 = !DILocalVariable(name: "o", arg: 1, scope: !976, file: !118, line: 179, type: !889)
!981 = !DILocalVariable(name: "left_quote", arg: 2, scope: !976, file: !118, line: 180, type: !21)
!982 = !DILocalVariable(name: "right_quote", arg: 3, scope: !976, file: !118, line: 180, type: !21)
!983 = !DILocation(line: 179, column: 45, scope: !976)
!984 = !DILocation(line: 180, column: 33, scope: !976)
!985 = !DILocation(line: 180, column: 57, scope: !976)
!986 = !DILocation(line: 182, column: 8, scope: !987)
!987 = distinct !DILexicalBlock(scope: !976, file: !118, line: 182, column: 7)
!988 = !DILocation(line: 182, column: 7, scope: !976)
!989 = !DILocation(line: 184, column: 6, scope: !976)
!990 = !DILocation(line: 184, column: 12, scope: !976)
!991 = !DILocation(line: 185, column: 8, scope: !992)
!992 = distinct !DILexicalBlock(scope: !976, file: !118, line: 185, column: 7)
!993 = !DILocation(line: 185, column: 23, scope: !992)
!994 = !DILocation(line: 185, column: 19, scope: !992)
!995 = !DILocation(line: 186, column: 5, scope: !992)
!996 = !DILocation(line: 187, column: 6, scope: !976)
!997 = !DILocation(line: 187, column: 17, scope: !976)
!998 = !{!913, !637, i64 40}
!999 = !DILocation(line: 188, column: 6, scope: !976)
!1000 = !DILocation(line: 188, column: 18, scope: !976)
!1001 = !{!913, !637, i64 48}
!1002 = !DILocation(line: 189, column: 1, scope: !976)
!1003 = distinct !DISubprogram(name: "quotearg_buffer", scope: !118, file: !118, line: 784, type: !1004, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1006)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!112, !82, !112, !21, !112, !905}
!1006 = !{!1007, !1008, !1009, !1010, !1011, !1012, !1013, !1014}
!1007 = !DILocalVariable(name: "buffer", arg: 1, scope: !1003, file: !118, line: 784, type: !82)
!1008 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1003, file: !118, line: 784, type: !112)
!1009 = !DILocalVariable(name: "arg", arg: 3, scope: !1003, file: !118, line: 785, type: !21)
!1010 = !DILocalVariable(name: "argsize", arg: 4, scope: !1003, file: !118, line: 785, type: !112)
!1011 = !DILocalVariable(name: "o", arg: 5, scope: !1003, file: !118, line: 786, type: !905)
!1012 = !DILocalVariable(name: "p", scope: !1003, file: !118, line: 788, type: !905)
!1013 = !DILocalVariable(name: "e", scope: !1003, file: !118, line: 789, type: !33)
!1014 = !DILocalVariable(name: "r", scope: !1003, file: !118, line: 790, type: !112)
!1015 = !DILocation(line: 784, column: 24, scope: !1003)
!1016 = !DILocation(line: 784, column: 39, scope: !1003)
!1017 = !DILocation(line: 785, column: 30, scope: !1003)
!1018 = !DILocation(line: 785, column: 42, scope: !1003)
!1019 = !DILocation(line: 786, column: 48, scope: !1003)
!1020 = !DILocation(line: 788, column: 37, scope: !1003)
!1021 = !DILocation(line: 788, column: 33, scope: !1003)
!1022 = !DILocation(line: 789, column: 11, scope: !1003)
!1023 = !DILocation(line: 789, column: 7, scope: !1003)
!1024 = !DILocation(line: 791, column: 43, scope: !1003)
!1025 = !DILocation(line: 791, column: 53, scope: !1003)
!1026 = !DILocation(line: 791, column: 60, scope: !1003)
!1027 = !DILocation(line: 792, column: 43, scope: !1003)
!1028 = !DILocation(line: 792, column: 58, scope: !1003)
!1029 = !DILocation(line: 790, column: 14, scope: !1003)
!1030 = !DILocation(line: 790, column: 10, scope: !1003)
!1031 = !DILocation(line: 793, column: 9, scope: !1003)
!1032 = !DILocation(line: 794, column: 3, scope: !1003)
!1033 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !118, file: !118, line: 256, type: !1034, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1038)
!1034 = !DISubroutineType(types: !1035)
!1035 = !{!112, !82, !112, !21, !112, !5, !33, !1036, !21, !21}
!1036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1038 = !{!1039, !1040, !1041, !1042, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054, !1055, !1056, !1057, !1058, !1059, !1063, !1064, !1065, !1066, !1067, !1070, !1071, !1089, !1092, !1093, !1100}
!1039 = !DILocalVariable(name: "buffer", arg: 1, scope: !1033, file: !118, line: 256, type: !82)
!1040 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1033, file: !118, line: 256, type: !112)
!1041 = !DILocalVariable(name: "arg", arg: 3, scope: !1033, file: !118, line: 257, type: !21)
!1042 = !DILocalVariable(name: "argsize", arg: 4, scope: !1033, file: !118, line: 257, type: !112)
!1043 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1033, file: !118, line: 258, type: !5)
!1044 = !DILocalVariable(name: "flags", arg: 6, scope: !1033, file: !118, line: 258, type: !33)
!1045 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1033, file: !118, line: 259, type: !1036)
!1046 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1033, file: !118, line: 260, type: !21)
!1047 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1033, file: !118, line: 261, type: !21)
!1048 = !DILocalVariable(name: "i", scope: !1033, file: !118, line: 263, type: !112)
!1049 = !DILocalVariable(name: "len", scope: !1033, file: !118, line: 264, type: !112)
!1050 = !DILocalVariable(name: "orig_buffersize", scope: !1033, file: !118, line: 265, type: !112)
!1051 = !DILocalVariable(name: "quote_string", scope: !1033, file: !118, line: 266, type: !21)
!1052 = !DILocalVariable(name: "quote_string_len", scope: !1033, file: !118, line: 267, type: !112)
!1053 = !DILocalVariable(name: "backslash_escapes", scope: !1033, file: !118, line: 268, type: !53)
!1054 = !DILocalVariable(name: "unibyte_locale", scope: !1033, file: !118, line: 269, type: !53)
!1055 = !DILocalVariable(name: "elide_outer_quotes", scope: !1033, file: !118, line: 270, type: !53)
!1056 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1033, file: !118, line: 271, type: !53)
!1057 = !DILocalVariable(name: "encountered_single_quote", scope: !1033, file: !118, line: 272, type: !53)
!1058 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1033, file: !118, line: 273, type: !53)
!1059 = !DILocalVariable(name: "c", scope: !1060, file: !118, line: 402, type: !935)
!1060 = distinct !DILexicalBlock(scope: !1061, file: !118, line: 401, column: 5)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !118, line: 400, column: 3)
!1062 = distinct !DILexicalBlock(scope: !1033, file: !118, line: 400, column: 3)
!1063 = !DILocalVariable(name: "esc", scope: !1060, file: !118, line: 403, type: !935)
!1064 = !DILocalVariable(name: "is_right_quote", scope: !1060, file: !118, line: 404, type: !53)
!1065 = !DILocalVariable(name: "escaping", scope: !1060, file: !118, line: 405, type: !53)
!1066 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1060, file: !118, line: 406, type: !53)
!1067 = !DILocalVariable(name: "m", scope: !1068, file: !118, line: 610, type: !112)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !118, line: 608, column: 11)
!1069 = distinct !DILexicalBlock(scope: !1060, file: !118, line: 426, column: 9)
!1070 = !DILocalVariable(name: "printable", scope: !1068, file: !118, line: 612, type: !53)
!1071 = !DILocalVariable(name: "mbstate", scope: !1072, file: !118, line: 621, type: !1074)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !118, line: 620, column: 15)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !118, line: 614, column: 17)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1075, line: 6, baseType: !1076)
!1075 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1077, line: 21, baseType: !1078)
!1077 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1077, line: 13, size: 64, elements: !1079)
!1079 = !{!1080, !1081}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1078, file: !1077, line: 15, baseType: !33, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1078, file: !1077, line: 20, baseType: !1082, size: 32, offset: 32)
!1082 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1078, file: !1077, line: 16, size: 32, elements: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1082, file: !1077, line: 18, baseType: !7, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1082, file: !1077, line: 19, baseType: !1086, size: 32)
!1086 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 32, elements: !1087)
!1087 = !{!1088}
!1088 = !DISubrange(count: 4)
!1089 = !DILocalVariable(name: "w", scope: !1090, file: !118, line: 631, type: !1091)
!1090 = distinct !DILexicalBlock(scope: !1072, file: !118, line: 630, column: 19)
!1091 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !113, line: 90, baseType: !33)
!1092 = !DILocalVariable(name: "bytes", scope: !1090, file: !118, line: 632, type: !112)
!1093 = !DILocalVariable(name: "j", scope: !1094, file: !118, line: 657, type: !112)
!1094 = distinct !DILexicalBlock(scope: !1095, file: !118, line: 656, column: 27)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !118, line: 654, column: 29)
!1096 = distinct !DILexicalBlock(scope: !1097, file: !118, line: 649, column: 23)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !118, line: 641, column: 30)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !118, line: 636, column: 30)
!1099 = distinct !DILexicalBlock(scope: !1090, file: !118, line: 634, column: 25)
!1100 = !DILocalVariable(name: "ilim", scope: !1101, file: !118, line: 684, type: !112)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !118, line: 681, column: 15)
!1102 = distinct !DILexicalBlock(scope: !1068, file: !118, line: 680, column: 17)
!1103 = !DILocation(line: 256, column: 33, scope: !1033)
!1104 = !DILocation(line: 256, column: 48, scope: !1033)
!1105 = !DILocation(line: 257, column: 39, scope: !1033)
!1106 = !DILocation(line: 257, column: 51, scope: !1033)
!1107 = !DILocation(line: 258, column: 46, scope: !1033)
!1108 = !DILocation(line: 258, column: 65, scope: !1033)
!1109 = !DILocation(line: 259, column: 47, scope: !1033)
!1110 = !DILocation(line: 260, column: 39, scope: !1033)
!1111 = !DILocation(line: 261, column: 39, scope: !1033)
!1112 = !DILocation(line: 264, column: 10, scope: !1033)
!1113 = !DILocation(line: 265, column: 10, scope: !1033)
!1114 = !DILocation(line: 266, column: 15, scope: !1033)
!1115 = !DILocation(line: 267, column: 10, scope: !1033)
!1116 = !DILocation(line: 268, column: 8, scope: !1033)
!1117 = !DILocation(line: 269, column: 25, scope: !1033)
!1118 = !DILocation(line: 269, column: 36, scope: !1033)
!1119 = !DILocation(line: 270, column: 8, scope: !1033)
!1120 = !DILocation(line: 271, column: 8, scope: !1033)
!1121 = !DILocation(line: 272, column: 8, scope: !1033)
!1122 = !DILocation(line: 273, column: 8, scope: !1033)
!1123 = !DILocation(line: 273, column: 3, scope: !1033)
!1124 = !DILocation(line: 0, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1033, file: !118, line: 317, column: 5)
!1126 = !DILocation(line: 316, column: 3, scope: !1033)
!1127 = !DILocation(line: 323, column: 11, scope: !1125)
!1128 = !DILocation(line: 323, column: 12, scope: !1129)
!1129 = distinct !DILexicalBlock(scope: !1125, file: !118, line: 323, column: 11)
!1130 = !DILocation(line: 324, column: 9, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !118, line: 324, column: 9)
!1132 = distinct !DILexicalBlock(scope: !1129, file: !118, line: 324, column: 9)
!1133 = !DILocation(line: 324, column: 9, scope: !1132)
!1134 = !{!638, !638, i64 0}
!1135 = !DILocation(line: 362, column: 26, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !118, line: 340, column: 11)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !118, line: 339, column: 13)
!1138 = distinct !DILexicalBlock(scope: !1125, file: !118, line: 338, column: 7)
!1139 = !DILocation(line: 363, column: 27, scope: !1136)
!1140 = !DILocation(line: 364, column: 11, scope: !1136)
!1141 = !DILocation(line: 365, column: 14, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !118, line: 365, column: 13)
!1143 = !DILocation(line: 365, column: 13, scope: !1138)
!1144 = !DILocation(line: 366, column: 43, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !118, line: 366, column: 11)
!1146 = distinct !DILexicalBlock(scope: !1142, file: !118, line: 366, column: 11)
!1147 = !DILocation(line: 366, column: 11, scope: !1146)
!1148 = !DILocation(line: 367, column: 13, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !118, line: 367, column: 13)
!1150 = distinct !DILexicalBlock(scope: !1145, file: !118, line: 367, column: 13)
!1151 = !DILocation(line: 367, column: 13, scope: !1150)
!1152 = !DILocation(line: 366, column: 70, scope: !1145)
!1153 = distinct !{!1153, !1147, !1154}
!1154 = !DILocation(line: 367, column: 13, scope: !1146)
!1155 = !DILocation(line: 370, column: 28, scope: !1138)
!1156 = !DILocation(line: 372, column: 7, scope: !1125)
!1157 = !DILocation(line: 376, column: 7, scope: !1125)
!1158 = !DILocation(line: 379, column: 7, scope: !1125)
!1159 = !DILocation(line: 381, column: 12, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1125, file: !118, line: 381, column: 11)
!1161 = !DILocation(line: 381, column: 11, scope: !1125)
!1162 = !DILocation(line: 0, scope: !1160)
!1163 = !DILocation(line: 386, column: 12, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1125, file: !118, line: 386, column: 11)
!1165 = !DILocation(line: 386, column: 11, scope: !1125)
!1166 = !DILocation(line: 387, column: 9, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !118, line: 387, column: 9)
!1168 = distinct !DILexicalBlock(scope: !1164, file: !118, line: 387, column: 9)
!1169 = !DILocation(line: 387, column: 9, scope: !1168)
!1170 = !DILocation(line: 394, column: 7, scope: !1125)
!1171 = !DILocation(line: 397, column: 7, scope: !1125)
!1172 = !DILocation(line: 0, scope: !1033)
!1173 = !DILocation(line: 263, column: 10, scope: !1033)
!1174 = !DILocation(line: 400, column: 8, scope: !1062)
!1175 = !DILocation(line: 0, scope: !1061)
!1176 = !DILocation(line: 400, column: 27, scope: !1061)
!1177 = !DILocation(line: 400, column: 19, scope: !1061)
!1178 = !DILocation(line: 400, column: 41, scope: !1061)
!1179 = !DILocation(line: 400, column: 48, scope: !1061)
!1180 = !DILocation(line: 400, column: 3, scope: !1062)
!1181 = !DILocation(line: 400, column: 60, scope: !1061)
!1182 = !DILocation(line: 404, column: 12, scope: !1060)
!1183 = !DILocation(line: 405, column: 12, scope: !1060)
!1184 = !DILocation(line: 406, column: 12, scope: !1060)
!1185 = !DILocation(line: 409, column: 11, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1060, file: !118, line: 408, column: 11)
!1187 = !DILocation(line: 411, column: 17, scope: !1186)
!1188 = !DILocation(line: 412, column: 39, scope: !1186)
!1189 = !DILocation(line: 416, column: 32, scope: !1186)
!1190 = !DILocation(line: 412, column: 19, scope: !1186)
!1191 = !DILocation(line: 412, column: 15, scope: !1186)
!1192 = !DILocation(line: 417, column: 11, scope: !1186)
!1193 = !DILocation(line: 417, column: 26, scope: !1186)
!1194 = !DILocation(line: 417, column: 14, scope: !1186)
!1195 = !DILocation(line: 417, column: 63, scope: !1186)
!1196 = !DILocation(line: 408, column: 11, scope: !1060)
!1197 = !DILocation(line: 0, scope: !1060)
!1198 = !DILocation(line: 424, column: 11, scope: !1060)
!1199 = !DILocation(line: 402, column: 21, scope: !1060)
!1200 = !DILocation(line: 425, column: 7, scope: !1060)
!1201 = !DILocation(line: 428, column: 15, scope: !1069)
!1202 = !DILocation(line: 430, column: 15, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !118, line: 430, column: 15)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !118, line: 429, column: 13)
!1205 = distinct !DILexicalBlock(scope: !1069, file: !118, line: 428, column: 15)
!1206 = !DILocation(line: 430, column: 15, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !118, line: 430, column: 15)
!1208 = !DILocation(line: 430, column: 15, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1210, file: !118, line: 430, column: 15)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !118, line: 430, column: 15)
!1211 = distinct !DILexicalBlock(scope: !1207, file: !118, line: 430, column: 15)
!1212 = !DILocation(line: 430, column: 15, scope: !1210)
!1213 = !DILocation(line: 430, column: 15, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !118, line: 430, column: 15)
!1215 = distinct !DILexicalBlock(scope: !1211, file: !118, line: 430, column: 15)
!1216 = !DILocation(line: 430, column: 15, scope: !1215)
!1217 = !DILocation(line: 430, column: 15, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !118, line: 430, column: 15)
!1219 = distinct !DILexicalBlock(scope: !1211, file: !118, line: 430, column: 15)
!1220 = !DILocation(line: 430, column: 15, scope: !1219)
!1221 = !DILocation(line: 430, column: 15, scope: !1211)
!1222 = !DILocation(line: 430, column: 15, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !118, line: 430, column: 15)
!1224 = distinct !DILexicalBlock(scope: !1203, file: !118, line: 430, column: 15)
!1225 = !DILocation(line: 430, column: 15, scope: !1224)
!1226 = !DILocation(line: 438, column: 19, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1204, file: !118, line: 437, column: 19)
!1228 = !DILocation(line: 438, column: 24, scope: !1227)
!1229 = !DILocation(line: 438, column: 28, scope: !1227)
!1230 = !DILocation(line: 438, column: 38, scope: !1227)
!1231 = !DILocation(line: 438, column: 48, scope: !1227)
!1232 = !DILocation(line: 438, column: 59, scope: !1227)
!1233 = !DILocation(line: 440, column: 19, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !118, line: 440, column: 19)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !118, line: 440, column: 19)
!1236 = distinct !DILexicalBlock(scope: !1227, file: !118, line: 439, column: 17)
!1237 = !DILocation(line: 440, column: 19, scope: !1235)
!1238 = !DILocation(line: 441, column: 19, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !118, line: 441, column: 19)
!1240 = distinct !DILexicalBlock(scope: !1236, file: !118, line: 441, column: 19)
!1241 = !DILocation(line: 441, column: 19, scope: !1240)
!1242 = !DILocation(line: 442, column: 17, scope: !1236)
!1243 = !DILocation(line: 449, column: 20, scope: !1205)
!1244 = !DILocation(line: 454, column: 11, scope: !1069)
!1245 = !DILocation(line: 457, column: 19, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1069, file: !118, line: 455, column: 13)
!1247 = !DILocation(line: 463, column: 19, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1246, file: !118, line: 462, column: 19)
!1249 = !DILocation(line: 463, column: 24, scope: !1248)
!1250 = !DILocation(line: 463, column: 28, scope: !1248)
!1251 = !DILocation(line: 463, column: 38, scope: !1248)
!1252 = !DILocation(line: 463, column: 47, scope: !1248)
!1253 = !DILocation(line: 463, column: 41, scope: !1248)
!1254 = !DILocation(line: 463, column: 52, scope: !1248)
!1255 = !DILocation(line: 462, column: 19, scope: !1246)
!1256 = !DILocation(line: 464, column: 25, scope: !1248)
!1257 = !DILocation(line: 464, column: 17, scope: !1248)
!1258 = !DILocation(line: 471, column: 25, scope: !1259)
!1259 = distinct !DILexicalBlock(scope: !1248, file: !118, line: 465, column: 19)
!1260 = !DILocation(line: 475, column: 21, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !118, line: 475, column: 21)
!1262 = distinct !DILexicalBlock(scope: !1259, file: !118, line: 475, column: 21)
!1263 = !DILocation(line: 475, column: 21, scope: !1262)
!1264 = !DILocation(line: 476, column: 21, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !118, line: 476, column: 21)
!1266 = distinct !DILexicalBlock(scope: !1259, file: !118, line: 476, column: 21)
!1267 = !DILocation(line: 476, column: 21, scope: !1266)
!1268 = !DILocation(line: 477, column: 21, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !118, line: 477, column: 21)
!1270 = distinct !DILexicalBlock(scope: !1259, file: !118, line: 477, column: 21)
!1271 = !DILocation(line: 477, column: 21, scope: !1270)
!1272 = !DILocation(line: 478, column: 21, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !118, line: 478, column: 21)
!1274 = distinct !DILexicalBlock(scope: !1259, file: !118, line: 478, column: 21)
!1275 = !DILocation(line: 478, column: 21, scope: !1274)
!1276 = !DILocation(line: 479, column: 21, scope: !1259)
!1277 = !DILocation(line: 403, column: 21, scope: !1060)
!1278 = !DILocation(line: 492, column: 31, scope: !1069)
!1279 = !DILocation(line: 493, column: 31, scope: !1069)
!1280 = !DILocation(line: 495, column: 31, scope: !1069)
!1281 = !DILocation(line: 496, column: 31, scope: !1069)
!1282 = !DILocation(line: 497, column: 31, scope: !1069)
!1283 = !DILocation(line: 500, column: 15, scope: !1069)
!1284 = !DILocation(line: 502, column: 19, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !118, line: 501, column: 13)
!1286 = distinct !DILexicalBlock(scope: !1069, file: !118, line: 500, column: 15)
!1287 = !DILocation(line: 509, column: 33, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1069, file: !118, line: 509, column: 15)
!1289 = !DILocation(line: 0, scope: !1069)
!1290 = !DILocation(line: 514, column: 15, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1069, file: !118, line: 513, column: 15)
!1292 = !DILocation(line: 518, column: 15, scope: !1069)
!1293 = !DILocation(line: 526, column: 26, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1069, file: !118, line: 526, column: 15)
!1295 = !DILocation(line: 526, column: 15, scope: !1069)
!1296 = !DILocation(line: 526, column: 40, scope: !1294)
!1297 = !DILocation(line: 526, column: 47, scope: !1294)
!1298 = !DILocation(line: 530, column: 17, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1069, file: !118, line: 530, column: 15)
!1300 = !DILocation(line: 526, column: 18, scope: !1294)
!1301 = !DILocation(line: 526, column: 65, scope: !1294)
!1302 = !DILocation(line: 530, column: 15, scope: !1069)
!1303 = !DILocation(line: 535, column: 11, scope: !1069)
!1304 = !DILocation(line: 549, column: 15, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1069, file: !118, line: 548, column: 15)
!1306 = !DILocation(line: 556, column: 15, scope: !1069)
!1307 = !DILocation(line: 558, column: 19, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !118, line: 557, column: 13)
!1309 = distinct !DILexicalBlock(scope: !1069, file: !118, line: 556, column: 15)
!1310 = !DILocation(line: 561, column: 19, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !118, line: 561, column: 19)
!1312 = !DILocation(line: 561, column: 35, scope: !1311)
!1313 = !DILocation(line: 561, column: 30, scope: !1311)
!1314 = !DILocation(line: 570, column: 15, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !118, line: 570, column: 15)
!1316 = distinct !DILexicalBlock(scope: !1308, file: !118, line: 570, column: 15)
!1317 = !DILocation(line: 570, column: 15, scope: !1316)
!1318 = !DILocation(line: 571, column: 15, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !118, line: 571, column: 15)
!1320 = distinct !DILexicalBlock(scope: !1308, file: !118, line: 571, column: 15)
!1321 = !DILocation(line: 571, column: 15, scope: !1320)
!1322 = !DILocation(line: 572, column: 15, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !118, line: 572, column: 15)
!1324 = distinct !DILexicalBlock(scope: !1308, file: !118, line: 572, column: 15)
!1325 = !DILocation(line: 572, column: 15, scope: !1324)
!1326 = !DILocation(line: 574, column: 13, scope: !1308)
!1327 = !DILocation(line: 614, column: 17, scope: !1068)
!1328 = !DILocation(line: 610, column: 20, scope: !1068)
!1329 = !DILocation(line: 617, column: 29, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1073, file: !118, line: 615, column: 15)
!1331 = !{!1332, !1332, i64 0}
!1332 = !{!"short", !638, i64 0}
!1333 = !DILocation(line: 617, column: 27, scope: !1330)
!1334 = !DILocation(line: 612, column: 18, scope: !1068)
!1335 = !DILocation(line: 618, column: 15, scope: !1330)
!1336 = !DILocation(line: 621, column: 17, scope: !1072)
!1337 = !DILocation(line: 622, column: 17, scope: !1072)
!1338 = !DILocation(line: 626, column: 29, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1072, file: !118, line: 626, column: 21)
!1340 = !DILocation(line: 626, column: 21, scope: !1072)
!1341 = !DILocation(line: 627, column: 29, scope: !1339)
!1342 = !DILocation(line: 627, column: 19, scope: !1339)
!1343 = !DILocation(line: 0, scope: !1186)
!1344 = !DILocation(line: 629, column: 17, scope: !1072)
!1345 = !DILocation(line: 624, column: 19, scope: !1072)
!1346 = !DILocation(line: 625, column: 27, scope: !1072)
!1347 = !DILocation(line: 631, column: 21, scope: !1090)
!1348 = !DILocation(line: 632, column: 56, scope: !1090)
!1349 = !DILocation(line: 632, column: 50, scope: !1090)
!1350 = !DILocation(line: 633, column: 53, scope: !1090)
!1351 = !DILocation(line: 621, column: 27, scope: !1072)
!1352 = !DILocation(line: 631, column: 29, scope: !1090)
!1353 = !DILocation(line: 632, column: 36, scope: !1090)
!1354 = !DILocation(line: 632, column: 28, scope: !1090)
!1355 = !DILocation(line: 634, column: 25, scope: !1090)
!1356 = !DILocation(line: 644, column: 38, scope: !1357)
!1357 = distinct !DILexicalBlock(scope: !1097, file: !118, line: 642, column: 23)
!1358 = !DILocation(line: 644, column: 48, scope: !1357)
!1359 = !DILocation(line: 644, column: 51, scope: !1357)
!1360 = !DILocation(line: 644, column: 25, scope: !1357)
!1361 = !DILocation(line: 645, column: 28, scope: !1357)
!1362 = !DILocation(line: 644, column: 34, scope: !1357)
!1363 = distinct !{!1363, !1360, !1361}
!1364 = !DILocation(line: 658, column: 43, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !118, line: 658, column: 29)
!1366 = distinct !DILexicalBlock(scope: !1094, file: !118, line: 658, column: 29)
!1367 = !DILocation(line: 655, column: 29, scope: !1095)
!1368 = !DILocation(line: 657, column: 36, scope: !1094)
!1369 = !DILocation(line: 659, column: 49, scope: !1365)
!1370 = !DILocation(line: 659, column: 39, scope: !1365)
!1371 = !DILocation(line: 659, column: 31, scope: !1365)
!1372 = !DILocation(line: 658, column: 53, scope: !1365)
!1373 = !DILocation(line: 658, column: 29, scope: !1366)
!1374 = distinct !{!1374, !1373, !1375}
!1375 = !DILocation(line: 667, column: 33, scope: !1366)
!1376 = !DILocation(line: 674, column: 19, scope: !1072)
!1377 = !DILocation(line: 670, column: 41, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1096, file: !118, line: 670, column: 29)
!1379 = !DILocation(line: 670, column: 31, scope: !1378)
!1380 = !DILocation(line: 670, column: 29, scope: !1096)
!1381 = !DILocation(line: 672, column: 27, scope: !1096)
!1382 = !DILocation(line: 675, column: 26, scope: !1072)
!1383 = !DILocation(line: 675, column: 24, scope: !1072)
!1384 = !DILocation(line: 674, column: 19, scope: !1090)
!1385 = distinct !{!1385, !1344, !1386}
!1386 = !DILocation(line: 675, column: 44, scope: !1072)
!1387 = !DILocation(line: 676, column: 15, scope: !1073)
!1388 = !DILocation(line: 0, scope: !1339)
!1389 = !DILocation(line: 0, scope: !1072)
!1390 = !DILocation(line: 678, column: 40, scope: !1068)
!1391 = !DILocation(line: 680, column: 19, scope: !1102)
!1392 = !DILocation(line: 680, column: 45, scope: !1102)
!1393 = !DILocation(line: 680, column: 23, scope: !1102)
!1394 = !DILocation(line: 684, column: 33, scope: !1101)
!1395 = !DILocation(line: 684, column: 24, scope: !1101)
!1396 = !DILocation(line: 686, column: 17, scope: !1101)
!1397 = !DILocation(line: 0, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1399, file: !118, line: 687, column: 19)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !118, line: 686, column: 17)
!1400 = distinct !DILexicalBlock(scope: !1101, file: !118, line: 686, column: 17)
!1401 = !DILocation(line: 0, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1398, file: !118, line: 703, column: 21)
!1403 = !DILocation(line: 0, scope: !1404)
!1404 = distinct !DILexicalBlock(scope: !1405, file: !118, line: 696, column: 23)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !118, line: 695, column: 30)
!1406 = distinct !DILexicalBlock(scope: !1398, file: !118, line: 688, column: 25)
!1407 = !DILocation(line: 688, column: 43, scope: !1406)
!1408 = !DILocation(line: 690, column: 25, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !118, line: 690, column: 25)
!1410 = distinct !DILexicalBlock(scope: !1406, file: !118, line: 689, column: 23)
!1411 = !DILocation(line: 690, column: 25, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1409, file: !118, line: 690, column: 25)
!1413 = !DILocation(line: 690, column: 25, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !118, line: 690, column: 25)
!1415 = distinct !DILexicalBlock(scope: !1416, file: !118, line: 690, column: 25)
!1416 = distinct !DILexicalBlock(scope: !1412, file: !118, line: 690, column: 25)
!1417 = !DILocation(line: 690, column: 25, scope: !1415)
!1418 = !DILocation(line: 690, column: 25, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1420, file: !118, line: 690, column: 25)
!1420 = distinct !DILexicalBlock(scope: !1416, file: !118, line: 690, column: 25)
!1421 = !DILocation(line: 690, column: 25, scope: !1420)
!1422 = !DILocation(line: 690, column: 25, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1424, file: !118, line: 690, column: 25)
!1424 = distinct !DILexicalBlock(scope: !1416, file: !118, line: 690, column: 25)
!1425 = !DILocation(line: 690, column: 25, scope: !1424)
!1426 = !DILocation(line: 690, column: 25, scope: !1416)
!1427 = !DILocation(line: 690, column: 25, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !118, line: 690, column: 25)
!1429 = distinct !DILexicalBlock(scope: !1409, file: !118, line: 690, column: 25)
!1430 = !DILocation(line: 690, column: 25, scope: !1429)
!1431 = !DILocation(line: 691, column: 25, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !118, line: 691, column: 25)
!1433 = distinct !DILexicalBlock(scope: !1410, file: !118, line: 691, column: 25)
!1434 = !DILocation(line: 691, column: 25, scope: !1433)
!1435 = !DILocation(line: 692, column: 25, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !118, line: 692, column: 25)
!1437 = distinct !DILexicalBlock(scope: !1410, file: !118, line: 692, column: 25)
!1438 = !DILocation(line: 692, column: 25, scope: !1437)
!1439 = !DILocation(line: 693, column: 38, scope: !1410)
!1440 = !DILocation(line: 693, column: 33, scope: !1410)
!1441 = !DILocation(line: 694, column: 23, scope: !1410)
!1442 = !DILocation(line: 695, column: 30, scope: !1405)
!1443 = !DILocation(line: 695, column: 30, scope: !1406)
!1444 = !DILocation(line: 697, column: 25, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1446, file: !118, line: 697, column: 25)
!1446 = distinct !DILexicalBlock(scope: !1404, file: !118, line: 697, column: 25)
!1447 = !DILocation(line: 697, column: 25, scope: !1446)
!1448 = !DILocation(line: 699, column: 23, scope: !1404)
!1449 = !DILocation(line: 0, scope: !1437)
!1450 = !DILocation(line: 0, scope: !1410)
!1451 = !DILocation(line: 0, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1186, file: !118, line: 418, column: 9)
!1453 = !DILocation(line: 0, scope: !1409)
!1454 = !DILocation(line: 700, column: 35, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1398, file: !118, line: 700, column: 25)
!1456 = !DILocation(line: 700, column: 30, scope: !1455)
!1457 = !DILocation(line: 700, column: 25, scope: !1398)
!1458 = !DILocation(line: 702, column: 21, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1460, file: !118, line: 702, column: 21)
!1460 = distinct !DILexicalBlock(scope: !1398, file: !118, line: 702, column: 21)
!1461 = !DILocation(line: 702, column: 21, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1463, file: !118, line: 702, column: 21)
!1463 = distinct !DILexicalBlock(scope: !1464, file: !118, line: 702, column: 21)
!1464 = distinct !DILexicalBlock(scope: !1459, file: !118, line: 702, column: 21)
!1465 = !DILocation(line: 702, column: 21, scope: !1463)
!1466 = !DILocation(line: 702, column: 21, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !118, line: 702, column: 21)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !118, line: 702, column: 21)
!1469 = !DILocation(line: 702, column: 21, scope: !1468)
!1470 = !DILocation(line: 702, column: 21, scope: !1464)
!1471 = !DILocation(line: 0, scope: !1446)
!1472 = !DILocation(line: 703, column: 21, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1402, file: !118, line: 703, column: 21)
!1474 = !DILocation(line: 703, column: 21, scope: !1402)
!1475 = !DILocation(line: 704, column: 25, scope: !1398)
!1476 = !DILocation(line: 686, column: 17, scope: !1399)
!1477 = distinct !{!1477, !1478, !1479}
!1478 = !DILocation(line: 686, column: 17, scope: !1400)
!1479 = !DILocation(line: 705, column: 19, scope: !1400)
!1480 = !DILocation(line: 0, scope: !1062)
!1481 = !DILocation(line: 416, column: 30, scope: !1186)
!1482 = !DILocation(line: 712, column: 34, scope: !1483)
!1483 = distinct !DILexicalBlock(scope: !1060, file: !118, line: 712, column: 11)
!1484 = !DILocation(line: 714, column: 14, scope: !1483)
!1485 = !DILocation(line: 715, column: 14, scope: !1483)
!1486 = !DILocation(line: 715, column: 35, scope: !1483)
!1487 = !DILocation(line: 715, column: 17, scope: !1483)
!1488 = !DILocation(line: 715, column: 47, scope: !1483)
!1489 = !DILocation(line: 715, column: 65, scope: !1483)
!1490 = !DILocation(line: 716, column: 15, scope: !1483)
!1491 = !DILocation(line: 716, column: 11, scope: !1483)
!1492 = !DILocation(line: 712, column: 11, scope: !1060)
!1493 = !DILocation(line: 400, column: 10, scope: !1062)
!1494 = !DILocation(line: 0, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !118, line: 519, column: 13)
!1496 = distinct !DILexicalBlock(scope: !1069, file: !118, line: 518, column: 15)
!1497 = !DILocation(line: 720, column: 7, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1060, file: !118, line: 720, column: 7)
!1499 = !DILocation(line: 720, column: 7, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1498, file: !118, line: 720, column: 7)
!1501 = !DILocation(line: 720, column: 7, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !118, line: 720, column: 7)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !118, line: 720, column: 7)
!1504 = distinct !DILexicalBlock(scope: !1500, file: !118, line: 720, column: 7)
!1505 = !DILocation(line: 720, column: 7, scope: !1503)
!1506 = !DILocation(line: 720, column: 7, scope: !1507)
!1507 = distinct !DILexicalBlock(scope: !1508, file: !118, line: 720, column: 7)
!1508 = distinct !DILexicalBlock(scope: !1504, file: !118, line: 720, column: 7)
!1509 = !DILocation(line: 720, column: 7, scope: !1508)
!1510 = !DILocation(line: 720, column: 7, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !118, line: 720, column: 7)
!1512 = distinct !DILexicalBlock(scope: !1504, file: !118, line: 720, column: 7)
!1513 = !DILocation(line: 720, column: 7, scope: !1512)
!1514 = !DILocation(line: 720, column: 7, scope: !1504)
!1515 = !DILocation(line: 720, column: 7, scope: !1516)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !118, line: 720, column: 7)
!1517 = distinct !DILexicalBlock(scope: !1498, file: !118, line: 720, column: 7)
!1518 = !DILocation(line: 720, column: 7, scope: !1517)
!1519 = !DILocation(line: 723, column: 7, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !118, line: 723, column: 7)
!1521 = distinct !DILexicalBlock(scope: !1060, file: !118, line: 723, column: 7)
!1522 = !DILocation(line: 424, column: 9, scope: !1060)
!1523 = !DILocation(line: 723, column: 7, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !118, line: 723, column: 7)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !118, line: 723, column: 7)
!1526 = distinct !DILexicalBlock(scope: !1520, file: !118, line: 723, column: 7)
!1527 = !DILocation(line: 723, column: 7, scope: !1525)
!1528 = !DILocation(line: 723, column: 7, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !118, line: 723, column: 7)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !118, line: 723, column: 7)
!1531 = !DILocation(line: 723, column: 7, scope: !1530)
!1532 = !DILocation(line: 723, column: 7, scope: !1526)
!1533 = !DILocation(line: 724, column: 7, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !118, line: 724, column: 7)
!1535 = distinct !DILexicalBlock(scope: !1060, file: !118, line: 724, column: 7)
!1536 = !DILocation(line: 724, column: 7, scope: !1535)
!1537 = !DILocation(line: 726, column: 13, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1060, file: !118, line: 726, column: 11)
!1539 = !DILocation(line: 726, column: 11, scope: !1060)
!1540 = !DILocation(line: 728, column: 5, scope: !1061)
!1541 = !DILocation(line: 400, column: 75, scope: !1061)
!1542 = !DILocation(line: 400, column: 3, scope: !1061)
!1543 = distinct !{!1543, !1180, !1544}
!1544 = !DILocation(line: 728, column: 5, scope: !1062)
!1545 = !DILocation(line: 730, column: 11, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1033, file: !118, line: 730, column: 7)
!1547 = !DILocation(line: 730, column: 16, scope: !1546)
!1548 = !DILocation(line: 738, column: 51, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1033, file: !118, line: 738, column: 7)
!1550 = !DILocation(line: 739, column: 10, scope: !1549)
!1551 = !DILocation(line: 741, column: 11, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !118, line: 741, column: 11)
!1553 = distinct !DILexicalBlock(scope: !1549, file: !118, line: 740, column: 5)
!1554 = !DILocation(line: 741, column: 11, scope: !1553)
!1555 = !DILocation(line: 742, column: 16, scope: !1552)
!1556 = !DILocation(line: 742, column: 9, scope: !1552)
!1557 = !DILocation(line: 746, column: 18, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1552, file: !118, line: 746, column: 16)
!1559 = !DILocation(line: 746, column: 32, scope: !1558)
!1560 = !DILocation(line: 746, column: 29, scope: !1558)
!1561 = !DILocation(line: 755, column: 7, scope: !1562)
!1562 = distinct !DILexicalBlock(scope: !1033, file: !118, line: 755, column: 7)
!1563 = !DILocation(line: 755, column: 20, scope: !1562)
!1564 = !DILocation(line: 756, column: 12, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1566, file: !118, line: 756, column: 5)
!1566 = distinct !DILexicalBlock(scope: !1562, file: !118, line: 756, column: 5)
!1567 = !DILocation(line: 756, column: 5, scope: !1566)
!1568 = !DILocation(line: 757, column: 7, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !118, line: 757, column: 7)
!1570 = distinct !DILexicalBlock(scope: !1565, file: !118, line: 757, column: 7)
!1571 = !DILocation(line: 757, column: 7, scope: !1570)
!1572 = !DILocation(line: 756, column: 39, scope: !1565)
!1573 = distinct !{!1573, !1567, !1574}
!1574 = !DILocation(line: 757, column: 7, scope: !1566)
!1575 = !DILocation(line: 759, column: 11, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1033, file: !118, line: 759, column: 7)
!1577 = !DILocation(line: 759, column: 7, scope: !1033)
!1578 = !DILocation(line: 760, column: 5, scope: !1576)
!1579 = !DILocation(line: 760, column: 17, scope: !1576)
!1580 = !DILocation(line: 766, column: 21, scope: !1581)
!1581 = distinct !DILexicalBlock(scope: !1033, file: !118, line: 766, column: 7)
!1582 = !DILocation(line: 766, column: 54, scope: !1581)
!1583 = !DILocation(line: 766, column: 51, scope: !1581)
!1584 = !DILocation(line: 770, column: 42, scope: !1033)
!1585 = !DILocation(line: 768, column: 10, scope: !1033)
!1586 = !DILocation(line: 768, column: 3, scope: !1033)
!1587 = !DILocation(line: 772, column: 1, scope: !1033)
!1588 = distinct !DISubprogram(name: "gettext_quote", scope: !118, file: !118, line: 207, type: !1589, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1591)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!21, !21, !5}
!1591 = !{!1592, !1593, !1594, !1595}
!1592 = !DILocalVariable(name: "msgid", arg: 1, scope: !1588, file: !118, line: 207, type: !21)
!1593 = !DILocalVariable(name: "s", arg: 2, scope: !1588, file: !118, line: 207, type: !5)
!1594 = !DILocalVariable(name: "translation", scope: !1588, file: !118, line: 209, type: !21)
!1595 = !DILocalVariable(name: "locale_code", scope: !1588, file: !118, line: 210, type: !21)
!1596 = !DILocation(line: 207, column: 28, scope: !1588)
!1597 = !DILocation(line: 207, column: 54, scope: !1588)
!1598 = !DILocation(line: 209, column: 29, scope: !1588)
!1599 = !DILocation(line: 209, column: 15, scope: !1588)
!1600 = !DILocation(line: 212, column: 19, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1588, file: !118, line: 212, column: 7)
!1602 = !DILocation(line: 212, column: 7, scope: !1588)
!1603 = !DILocation(line: 233, column: 17, scope: !1588)
!1604 = !DILocation(line: 210, column: 15, scope: !1588)
!1605 = !DILocalVariable(name: "s1", arg: 1, scope: !1606, file: !1607, line: 160, type: !21)
!1606 = distinct !DISubprogram(name: "strcaseeq0", scope: !1607, file: !1607, line: 160, type: !1608, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1610)
!1607 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!33, !21, !21, !23, !23, !23, !23, !23, !23, !23, !23, !23}
!1610 = !{!1605, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620}
!1611 = !DILocalVariable(name: "s2", arg: 2, scope: !1606, file: !1607, line: 160, type: !21)
!1612 = !DILocalVariable(name: "s20", arg: 3, scope: !1606, file: !1607, line: 160, type: !23)
!1613 = !DILocalVariable(name: "s21", arg: 4, scope: !1606, file: !1607, line: 160, type: !23)
!1614 = !DILocalVariable(name: "s22", arg: 5, scope: !1606, file: !1607, line: 160, type: !23)
!1615 = !DILocalVariable(name: "s23", arg: 6, scope: !1606, file: !1607, line: 160, type: !23)
!1616 = !DILocalVariable(name: "s24", arg: 7, scope: !1606, file: !1607, line: 160, type: !23)
!1617 = !DILocalVariable(name: "s25", arg: 8, scope: !1606, file: !1607, line: 160, type: !23)
!1618 = !DILocalVariable(name: "s26", arg: 9, scope: !1606, file: !1607, line: 160, type: !23)
!1619 = !DILocalVariable(name: "s27", arg: 10, scope: !1606, file: !1607, line: 160, type: !23)
!1620 = !DILocalVariable(name: "s28", arg: 11, scope: !1606, file: !1607, line: 160, type: !23)
!1621 = !DILocation(line: 160, column: 25, scope: !1606, inlinedAt: !1622)
!1622 = distinct !DILocation(line: 234, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1588, file: !118, line: 234, column: 7)
!1624 = !DILocation(line: 160, column: 41, scope: !1606, inlinedAt: !1622)
!1625 = !DILocation(line: 160, column: 50, scope: !1606, inlinedAt: !1622)
!1626 = !DILocation(line: 160, column: 60, scope: !1606, inlinedAt: !1622)
!1627 = !DILocation(line: 160, column: 70, scope: !1606, inlinedAt: !1622)
!1628 = !DILocation(line: 160, column: 80, scope: !1606, inlinedAt: !1622)
!1629 = !DILocation(line: 160, column: 90, scope: !1606, inlinedAt: !1622)
!1630 = !DILocation(line: 160, column: 100, scope: !1606, inlinedAt: !1622)
!1631 = !DILocation(line: 160, column: 110, scope: !1606, inlinedAt: !1622)
!1632 = !DILocation(line: 160, column: 120, scope: !1606, inlinedAt: !1622)
!1633 = !DILocation(line: 160, column: 130, scope: !1606, inlinedAt: !1622)
!1634 = !DILocation(line: 162, column: 7, scope: !1635, inlinedAt: !1622)
!1635 = distinct !DILexicalBlock(scope: !1606, file: !1607, line: 162, column: 7)
!1636 = !DILocalVariable(name: "s1", arg: 1, scope: !1637, file: !1607, line: 146, type: !21)
!1637 = distinct !DISubprogram(name: "strcaseeq1", scope: !1607, file: !1607, line: 146, type: !1638, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1640)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!33, !21, !21, !23, !23, !23, !23, !23, !23, !23, !23}
!1640 = !{!1636, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649}
!1641 = !DILocalVariable(name: "s2", arg: 2, scope: !1637, file: !1607, line: 146, type: !21)
!1642 = !DILocalVariable(name: "s21", arg: 3, scope: !1637, file: !1607, line: 146, type: !23)
!1643 = !DILocalVariable(name: "s22", arg: 4, scope: !1637, file: !1607, line: 146, type: !23)
!1644 = !DILocalVariable(name: "s23", arg: 5, scope: !1637, file: !1607, line: 146, type: !23)
!1645 = !DILocalVariable(name: "s24", arg: 6, scope: !1637, file: !1607, line: 146, type: !23)
!1646 = !DILocalVariable(name: "s25", arg: 7, scope: !1637, file: !1607, line: 146, type: !23)
!1647 = !DILocalVariable(name: "s26", arg: 8, scope: !1637, file: !1607, line: 146, type: !23)
!1648 = !DILocalVariable(name: "s27", arg: 9, scope: !1637, file: !1607, line: 146, type: !23)
!1649 = !DILocalVariable(name: "s28", arg: 10, scope: !1637, file: !1607, line: 146, type: !23)
!1650 = !DILocation(line: 146, column: 25, scope: !1637, inlinedAt: !1651)
!1651 = distinct !DILocation(line: 167, column: 16, scope: !1652, inlinedAt: !1622)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !1607, line: 164, column: 11)
!1653 = distinct !DILexicalBlock(scope: !1635, file: !1607, line: 163, column: 5)
!1654 = !DILocation(line: 146, column: 41, scope: !1637, inlinedAt: !1651)
!1655 = !DILocation(line: 146, column: 50, scope: !1637, inlinedAt: !1651)
!1656 = !DILocation(line: 146, column: 60, scope: !1637, inlinedAt: !1651)
!1657 = !DILocation(line: 146, column: 70, scope: !1637, inlinedAt: !1651)
!1658 = !DILocation(line: 146, column: 80, scope: !1637, inlinedAt: !1651)
!1659 = !DILocation(line: 146, column: 90, scope: !1637, inlinedAt: !1651)
!1660 = !DILocation(line: 146, column: 100, scope: !1637, inlinedAt: !1651)
!1661 = !DILocation(line: 146, column: 110, scope: !1637, inlinedAt: !1651)
!1662 = !DILocation(line: 146, column: 120, scope: !1637, inlinedAt: !1651)
!1663 = !DILocation(line: 148, column: 7, scope: !1664, inlinedAt: !1651)
!1664 = distinct !DILexicalBlock(scope: !1637, file: !1607, line: 148, column: 7)
!1665 = !DILocalVariable(name: "s1", arg: 1, scope: !1666, file: !1607, line: 132, type: !21)
!1666 = distinct !DISubprogram(name: "strcaseeq2", scope: !1607, file: !1607, line: 132, type: !1667, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!33, !21, !21, !23, !23, !23, !23, !23, !23, !23}
!1669 = !{!1665, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677}
!1670 = !DILocalVariable(name: "s2", arg: 2, scope: !1666, file: !1607, line: 132, type: !21)
!1671 = !DILocalVariable(name: "s22", arg: 3, scope: !1666, file: !1607, line: 132, type: !23)
!1672 = !DILocalVariable(name: "s23", arg: 4, scope: !1666, file: !1607, line: 132, type: !23)
!1673 = !DILocalVariable(name: "s24", arg: 5, scope: !1666, file: !1607, line: 132, type: !23)
!1674 = !DILocalVariable(name: "s25", arg: 6, scope: !1666, file: !1607, line: 132, type: !23)
!1675 = !DILocalVariable(name: "s26", arg: 7, scope: !1666, file: !1607, line: 132, type: !23)
!1676 = !DILocalVariable(name: "s27", arg: 8, scope: !1666, file: !1607, line: 132, type: !23)
!1677 = !DILocalVariable(name: "s28", arg: 9, scope: !1666, file: !1607, line: 132, type: !23)
!1678 = !DILocation(line: 132, column: 25, scope: !1666, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 153, column: 16, scope: !1680, inlinedAt: !1651)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !1607, line: 150, column: 11)
!1681 = distinct !DILexicalBlock(scope: !1664, file: !1607, line: 149, column: 5)
!1682 = !DILocation(line: 132, column: 41, scope: !1666, inlinedAt: !1679)
!1683 = !DILocation(line: 132, column: 50, scope: !1666, inlinedAt: !1679)
!1684 = !DILocation(line: 132, column: 60, scope: !1666, inlinedAt: !1679)
!1685 = !DILocation(line: 132, column: 70, scope: !1666, inlinedAt: !1679)
!1686 = !DILocation(line: 132, column: 80, scope: !1666, inlinedAt: !1679)
!1687 = !DILocation(line: 132, column: 90, scope: !1666, inlinedAt: !1679)
!1688 = !DILocation(line: 132, column: 100, scope: !1666, inlinedAt: !1679)
!1689 = !DILocation(line: 132, column: 110, scope: !1666, inlinedAt: !1679)
!1690 = !DILocation(line: 134, column: 7, scope: !1691, inlinedAt: !1679)
!1691 = distinct !DILexicalBlock(scope: !1666, file: !1607, line: 134, column: 7)
!1692 = !DILocalVariable(name: "s1", arg: 1, scope: !1693, file: !1607, line: 118, type: !21)
!1693 = distinct !DISubprogram(name: "strcaseeq3", scope: !1607, file: !1607, line: 118, type: !1694, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1696)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!33, !21, !21, !23, !23, !23, !23, !23, !23}
!1696 = !{!1692, !1697, !1698, !1699, !1700, !1701, !1702, !1703}
!1697 = !DILocalVariable(name: "s2", arg: 2, scope: !1693, file: !1607, line: 118, type: !21)
!1698 = !DILocalVariable(name: "s23", arg: 3, scope: !1693, file: !1607, line: 118, type: !23)
!1699 = !DILocalVariable(name: "s24", arg: 4, scope: !1693, file: !1607, line: 118, type: !23)
!1700 = !DILocalVariable(name: "s25", arg: 5, scope: !1693, file: !1607, line: 118, type: !23)
!1701 = !DILocalVariable(name: "s26", arg: 6, scope: !1693, file: !1607, line: 118, type: !23)
!1702 = !DILocalVariable(name: "s27", arg: 7, scope: !1693, file: !1607, line: 118, type: !23)
!1703 = !DILocalVariable(name: "s28", arg: 8, scope: !1693, file: !1607, line: 118, type: !23)
!1704 = !DILocation(line: 118, column: 25, scope: !1693, inlinedAt: !1705)
!1705 = distinct !DILocation(line: 139, column: 16, scope: !1706, inlinedAt: !1679)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !1607, line: 136, column: 11)
!1707 = distinct !DILexicalBlock(scope: !1691, file: !1607, line: 135, column: 5)
!1708 = !DILocation(line: 118, column: 41, scope: !1693, inlinedAt: !1705)
!1709 = !DILocation(line: 118, column: 50, scope: !1693, inlinedAt: !1705)
!1710 = !DILocation(line: 118, column: 60, scope: !1693, inlinedAt: !1705)
!1711 = !DILocation(line: 118, column: 70, scope: !1693, inlinedAt: !1705)
!1712 = !DILocation(line: 118, column: 80, scope: !1693, inlinedAt: !1705)
!1713 = !DILocation(line: 118, column: 90, scope: !1693, inlinedAt: !1705)
!1714 = !DILocation(line: 118, column: 100, scope: !1693, inlinedAt: !1705)
!1715 = !DILocation(line: 120, column: 7, scope: !1716, inlinedAt: !1705)
!1716 = distinct !DILexicalBlock(scope: !1693, file: !1607, line: 120, column: 7)
!1717 = !DILocation(line: 120, column: 7, scope: !1693, inlinedAt: !1705)
!1718 = !DILocalVariable(name: "s1", arg: 1, scope: !1719, file: !1607, line: 104, type: !21)
!1719 = distinct !DISubprogram(name: "strcaseeq4", scope: !1607, file: !1607, line: 104, type: !1720, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1722)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!33, !21, !21, !23, !23, !23, !23, !23}
!1722 = !{!1718, !1723, !1724, !1725, !1726, !1727, !1728}
!1723 = !DILocalVariable(name: "s2", arg: 2, scope: !1719, file: !1607, line: 104, type: !21)
!1724 = !DILocalVariable(name: "s24", arg: 3, scope: !1719, file: !1607, line: 104, type: !23)
!1725 = !DILocalVariable(name: "s25", arg: 4, scope: !1719, file: !1607, line: 104, type: !23)
!1726 = !DILocalVariable(name: "s26", arg: 5, scope: !1719, file: !1607, line: 104, type: !23)
!1727 = !DILocalVariable(name: "s27", arg: 6, scope: !1719, file: !1607, line: 104, type: !23)
!1728 = !DILocalVariable(name: "s28", arg: 7, scope: !1719, file: !1607, line: 104, type: !23)
!1729 = !DILocation(line: 104, column: 25, scope: !1719, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 125, column: 16, scope: !1731, inlinedAt: !1705)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !1607, line: 122, column: 11)
!1732 = distinct !DILexicalBlock(scope: !1716, file: !1607, line: 121, column: 5)
!1733 = !DILocation(line: 104, column: 41, scope: !1719, inlinedAt: !1730)
!1734 = !DILocation(line: 104, column: 50, scope: !1719, inlinedAt: !1730)
!1735 = !DILocation(line: 104, column: 60, scope: !1719, inlinedAt: !1730)
!1736 = !DILocation(line: 104, column: 70, scope: !1719, inlinedAt: !1730)
!1737 = !DILocation(line: 104, column: 80, scope: !1719, inlinedAt: !1730)
!1738 = !DILocation(line: 104, column: 90, scope: !1719, inlinedAt: !1730)
!1739 = !DILocation(line: 106, column: 7, scope: !1740, inlinedAt: !1730)
!1740 = distinct !DILexicalBlock(scope: !1719, file: !1607, line: 106, column: 7)
!1741 = !DILocation(line: 106, column: 7, scope: !1719, inlinedAt: !1730)
!1742 = !DILocalVariable(name: "s1", arg: 1, scope: !1743, file: !1607, line: 90, type: !21)
!1743 = distinct !DISubprogram(name: "strcaseeq5", scope: !1607, file: !1607, line: 90, type: !1744, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1746)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!33, !21, !21, !23, !23, !23, !23}
!1746 = !{!1742, !1747, !1748, !1749, !1750, !1751}
!1747 = !DILocalVariable(name: "s2", arg: 2, scope: !1743, file: !1607, line: 90, type: !21)
!1748 = !DILocalVariable(name: "s25", arg: 3, scope: !1743, file: !1607, line: 90, type: !23)
!1749 = !DILocalVariable(name: "s26", arg: 4, scope: !1743, file: !1607, line: 90, type: !23)
!1750 = !DILocalVariable(name: "s27", arg: 5, scope: !1743, file: !1607, line: 90, type: !23)
!1751 = !DILocalVariable(name: "s28", arg: 6, scope: !1743, file: !1607, line: 90, type: !23)
!1752 = !DILocation(line: 90, column: 25, scope: !1743, inlinedAt: !1753)
!1753 = distinct !DILocation(line: 111, column: 16, scope: !1754, inlinedAt: !1730)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !1607, line: 108, column: 11)
!1755 = distinct !DILexicalBlock(scope: !1740, file: !1607, line: 107, column: 5)
!1756 = !DILocation(line: 90, column: 41, scope: !1743, inlinedAt: !1753)
!1757 = !DILocation(line: 90, column: 50, scope: !1743, inlinedAt: !1753)
!1758 = !DILocation(line: 90, column: 60, scope: !1743, inlinedAt: !1753)
!1759 = !DILocation(line: 90, column: 70, scope: !1743, inlinedAt: !1753)
!1760 = !DILocation(line: 90, column: 80, scope: !1743, inlinedAt: !1753)
!1761 = !DILocation(line: 92, column: 7, scope: !1762, inlinedAt: !1753)
!1762 = distinct !DILexicalBlock(scope: !1743, file: !1607, line: 92, column: 7)
!1763 = !DILocation(line: 92, column: 7, scope: !1743, inlinedAt: !1753)
!1764 = !DILocation(line: 235, column: 12, scope: !1623)
!1765 = !DILocation(line: 235, column: 21, scope: !1623)
!1766 = !DILocation(line: 235, column: 5, scope: !1623)
!1767 = !DILocation(line: 146, column: 25, scope: !1637, inlinedAt: !1768)
!1768 = distinct !DILocation(line: 167, column: 16, scope: !1652, inlinedAt: !1769)
!1769 = distinct !DILocation(line: 236, column: 7, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1588, file: !118, line: 236, column: 7)
!1771 = !DILocation(line: 146, column: 41, scope: !1637, inlinedAt: !1768)
!1772 = !DILocation(line: 146, column: 50, scope: !1637, inlinedAt: !1768)
!1773 = !DILocation(line: 146, column: 60, scope: !1637, inlinedAt: !1768)
!1774 = !DILocation(line: 146, column: 70, scope: !1637, inlinedAt: !1768)
!1775 = !DILocation(line: 146, column: 80, scope: !1637, inlinedAt: !1768)
!1776 = !DILocation(line: 146, column: 90, scope: !1637, inlinedAt: !1768)
!1777 = !DILocation(line: 146, column: 100, scope: !1637, inlinedAt: !1768)
!1778 = !DILocation(line: 146, column: 110, scope: !1637, inlinedAt: !1768)
!1779 = !DILocation(line: 146, column: 120, scope: !1637, inlinedAt: !1768)
!1780 = !DILocation(line: 148, column: 7, scope: !1664, inlinedAt: !1768)
!1781 = !DILocation(line: 132, column: 25, scope: !1666, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 153, column: 16, scope: !1680, inlinedAt: !1768)
!1783 = !DILocation(line: 132, column: 41, scope: !1666, inlinedAt: !1782)
!1784 = !DILocation(line: 132, column: 50, scope: !1666, inlinedAt: !1782)
!1785 = !DILocation(line: 132, column: 60, scope: !1666, inlinedAt: !1782)
!1786 = !DILocation(line: 132, column: 70, scope: !1666, inlinedAt: !1782)
!1787 = !DILocation(line: 132, column: 80, scope: !1666, inlinedAt: !1782)
!1788 = !DILocation(line: 132, column: 90, scope: !1666, inlinedAt: !1782)
!1789 = !DILocation(line: 132, column: 100, scope: !1666, inlinedAt: !1782)
!1790 = !DILocation(line: 132, column: 110, scope: !1666, inlinedAt: !1782)
!1791 = !DILocation(line: 134, column: 7, scope: !1691, inlinedAt: !1782)
!1792 = !DILocation(line: 134, column: 7, scope: !1666, inlinedAt: !1782)
!1793 = !DILocation(line: 118, column: 25, scope: !1693, inlinedAt: !1794)
!1794 = distinct !DILocation(line: 139, column: 16, scope: !1706, inlinedAt: !1782)
!1795 = !DILocation(line: 118, column: 41, scope: !1693, inlinedAt: !1794)
!1796 = !DILocation(line: 118, column: 50, scope: !1693, inlinedAt: !1794)
!1797 = !DILocation(line: 118, column: 60, scope: !1693, inlinedAt: !1794)
!1798 = !DILocation(line: 118, column: 70, scope: !1693, inlinedAt: !1794)
!1799 = !DILocation(line: 118, column: 80, scope: !1693, inlinedAt: !1794)
!1800 = !DILocation(line: 118, column: 90, scope: !1693, inlinedAt: !1794)
!1801 = !DILocation(line: 118, column: 100, scope: !1693, inlinedAt: !1794)
!1802 = !DILocation(line: 120, column: 7, scope: !1716, inlinedAt: !1794)
!1803 = !DILocation(line: 120, column: 7, scope: !1693, inlinedAt: !1794)
!1804 = !DILocation(line: 104, column: 25, scope: !1719, inlinedAt: !1805)
!1805 = distinct !DILocation(line: 125, column: 16, scope: !1731, inlinedAt: !1794)
!1806 = !DILocation(line: 104, column: 41, scope: !1719, inlinedAt: !1805)
!1807 = !DILocation(line: 104, column: 50, scope: !1719, inlinedAt: !1805)
!1808 = !DILocation(line: 104, column: 60, scope: !1719, inlinedAt: !1805)
!1809 = !DILocation(line: 104, column: 70, scope: !1719, inlinedAt: !1805)
!1810 = !DILocation(line: 104, column: 80, scope: !1719, inlinedAt: !1805)
!1811 = !DILocation(line: 104, column: 90, scope: !1719, inlinedAt: !1805)
!1812 = !DILocation(line: 106, column: 7, scope: !1740, inlinedAt: !1805)
!1813 = !DILocation(line: 106, column: 7, scope: !1719, inlinedAt: !1805)
!1814 = !DILocation(line: 90, column: 25, scope: !1743, inlinedAt: !1815)
!1815 = distinct !DILocation(line: 111, column: 16, scope: !1754, inlinedAt: !1805)
!1816 = !DILocation(line: 90, column: 41, scope: !1743, inlinedAt: !1815)
!1817 = !DILocation(line: 90, column: 50, scope: !1743, inlinedAt: !1815)
!1818 = !DILocation(line: 90, column: 60, scope: !1743, inlinedAt: !1815)
!1819 = !DILocation(line: 90, column: 70, scope: !1743, inlinedAt: !1815)
!1820 = !DILocation(line: 90, column: 80, scope: !1743, inlinedAt: !1815)
!1821 = !DILocation(line: 92, column: 7, scope: !1762, inlinedAt: !1815)
!1822 = !DILocation(line: 92, column: 7, scope: !1743, inlinedAt: !1815)
!1823 = !DILocalVariable(name: "s1", arg: 1, scope: !1824, file: !1607, line: 76, type: !21)
!1824 = distinct !DISubprogram(name: "strcaseeq6", scope: !1607, file: !1607, line: 76, type: !1825, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1827)
!1825 = !DISubroutineType(types: !1826)
!1826 = !{!33, !21, !21, !23, !23, !23}
!1827 = !{!1823, !1828, !1829, !1830, !1831}
!1828 = !DILocalVariable(name: "s2", arg: 2, scope: !1824, file: !1607, line: 76, type: !21)
!1829 = !DILocalVariable(name: "s26", arg: 3, scope: !1824, file: !1607, line: 76, type: !23)
!1830 = !DILocalVariable(name: "s27", arg: 4, scope: !1824, file: !1607, line: 76, type: !23)
!1831 = !DILocalVariable(name: "s28", arg: 5, scope: !1824, file: !1607, line: 76, type: !23)
!1832 = !DILocation(line: 76, column: 25, scope: !1824, inlinedAt: !1833)
!1833 = distinct !DILocation(line: 97, column: 16, scope: !1834, inlinedAt: !1815)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !1607, line: 94, column: 11)
!1835 = distinct !DILexicalBlock(scope: !1762, file: !1607, line: 93, column: 5)
!1836 = !DILocation(line: 76, column: 41, scope: !1824, inlinedAt: !1833)
!1837 = !DILocation(line: 76, column: 50, scope: !1824, inlinedAt: !1833)
!1838 = !DILocation(line: 76, column: 60, scope: !1824, inlinedAt: !1833)
!1839 = !DILocation(line: 76, column: 70, scope: !1824, inlinedAt: !1833)
!1840 = !DILocation(line: 78, column: 7, scope: !1841, inlinedAt: !1833)
!1841 = distinct !DILexicalBlock(scope: !1824, file: !1607, line: 78, column: 7)
!1842 = !DILocation(line: 78, column: 7, scope: !1824, inlinedAt: !1833)
!1843 = !DILocalVariable(name: "s1", arg: 1, scope: !1844, file: !1607, line: 62, type: !21)
!1844 = distinct !DISubprogram(name: "strcaseeq7", scope: !1607, file: !1607, line: 62, type: !1845, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1847)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{!33, !21, !21, !23, !23}
!1847 = !{!1843, !1848, !1849, !1850}
!1848 = !DILocalVariable(name: "s2", arg: 2, scope: !1844, file: !1607, line: 62, type: !21)
!1849 = !DILocalVariable(name: "s27", arg: 3, scope: !1844, file: !1607, line: 62, type: !23)
!1850 = !DILocalVariable(name: "s28", arg: 4, scope: !1844, file: !1607, line: 62, type: !23)
!1851 = !DILocation(line: 62, column: 25, scope: !1844, inlinedAt: !1852)
!1852 = distinct !DILocation(line: 83, column: 16, scope: !1853, inlinedAt: !1833)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !1607, line: 80, column: 11)
!1854 = distinct !DILexicalBlock(scope: !1841, file: !1607, line: 79, column: 5)
!1855 = !DILocation(line: 62, column: 41, scope: !1844, inlinedAt: !1852)
!1856 = !DILocation(line: 62, column: 50, scope: !1844, inlinedAt: !1852)
!1857 = !DILocation(line: 62, column: 60, scope: !1844, inlinedAt: !1852)
!1858 = !DILocation(line: 64, column: 7, scope: !1859, inlinedAt: !1852)
!1859 = distinct !DILexicalBlock(scope: !1844, file: !1607, line: 64, column: 7)
!1860 = !DILocation(line: 236, column: 7, scope: !1588)
!1861 = !DILocation(line: 237, column: 12, scope: !1770)
!1862 = !DILocation(line: 237, column: 21, scope: !1770)
!1863 = !DILocation(line: 237, column: 5, scope: !1770)
!1864 = !DILocation(line: 239, column: 13, scope: !1588)
!1865 = !DILocation(line: 239, column: 11, scope: !1588)
!1866 = !DILocation(line: 239, column: 3, scope: !1588)
!1867 = !DILocation(line: 0, scope: !1588)
!1868 = !DILocation(line: 240, column: 1, scope: !1588)
!1869 = distinct !DISubprogram(name: "quotearg_alloc", scope: !118, file: !118, line: 799, type: !1870, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1872)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!82, !21, !112, !905}
!1872 = !{!1873, !1874, !1875}
!1873 = !DILocalVariable(name: "arg", arg: 1, scope: !1869, file: !118, line: 799, type: !21)
!1874 = !DILocalVariable(name: "argsize", arg: 2, scope: !1869, file: !118, line: 799, type: !112)
!1875 = !DILocalVariable(name: "o", arg: 3, scope: !1869, file: !118, line: 800, type: !905)
!1876 = !DILocation(line: 799, column: 29, scope: !1869)
!1877 = !DILocation(line: 799, column: 41, scope: !1869)
!1878 = !DILocation(line: 800, column: 47, scope: !1869)
!1879 = !DILocalVariable(name: "arg", arg: 1, scope: !1880, file: !118, line: 812, type: !21)
!1880 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !118, file: !118, line: 812, type: !1881, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1883)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!82, !21, !112, !182, !905}
!1883 = !{!1879, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891}
!1884 = !DILocalVariable(name: "argsize", arg: 2, scope: !1880, file: !118, line: 812, type: !112)
!1885 = !DILocalVariable(name: "size", arg: 3, scope: !1880, file: !118, line: 812, type: !182)
!1886 = !DILocalVariable(name: "o", arg: 4, scope: !1880, file: !118, line: 813, type: !905)
!1887 = !DILocalVariable(name: "p", scope: !1880, file: !118, line: 815, type: !905)
!1888 = !DILocalVariable(name: "e", scope: !1880, file: !118, line: 816, type: !33)
!1889 = !DILocalVariable(name: "flags", scope: !1880, file: !118, line: 818, type: !33)
!1890 = !DILocalVariable(name: "bufsize", scope: !1880, file: !118, line: 819, type: !112)
!1891 = !DILocalVariable(name: "buf", scope: !1880, file: !118, line: 823, type: !82)
!1892 = !DILocation(line: 812, column: 33, scope: !1880, inlinedAt: !1893)
!1893 = distinct !DILocation(line: 802, column: 10, scope: !1869)
!1894 = !DILocation(line: 812, column: 45, scope: !1880, inlinedAt: !1893)
!1895 = !DILocation(line: 812, column: 62, scope: !1880, inlinedAt: !1893)
!1896 = !DILocation(line: 813, column: 51, scope: !1880, inlinedAt: !1893)
!1897 = !DILocation(line: 815, column: 37, scope: !1880, inlinedAt: !1893)
!1898 = !DILocation(line: 815, column: 33, scope: !1880, inlinedAt: !1893)
!1899 = !DILocation(line: 816, column: 11, scope: !1880, inlinedAt: !1893)
!1900 = !DILocation(line: 816, column: 7, scope: !1880, inlinedAt: !1893)
!1901 = !DILocation(line: 818, column: 18, scope: !1880, inlinedAt: !1893)
!1902 = !DILocation(line: 818, column: 24, scope: !1880, inlinedAt: !1893)
!1903 = !DILocation(line: 818, column: 7, scope: !1880, inlinedAt: !1893)
!1904 = !DILocation(line: 819, column: 69, scope: !1880, inlinedAt: !1893)
!1905 = !DILocation(line: 820, column: 53, scope: !1880, inlinedAt: !1893)
!1906 = !DILocation(line: 821, column: 49, scope: !1880, inlinedAt: !1893)
!1907 = !DILocation(line: 822, column: 49, scope: !1880, inlinedAt: !1893)
!1908 = !DILocation(line: 819, column: 20, scope: !1880, inlinedAt: !1893)
!1909 = !DILocation(line: 822, column: 62, scope: !1880, inlinedAt: !1893)
!1910 = !DILocation(line: 819, column: 10, scope: !1880, inlinedAt: !1893)
!1911 = !DILocalVariable(name: "n", arg: 1, scope: !1912, file: !178, line: 216, type: !112)
!1912 = distinct !DISubprogram(name: "xcharalloc", scope: !178, file: !178, line: 216, type: !1913, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1915)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!82, !112}
!1915 = !{!1911}
!1916 = !DILocation(line: 216, column: 20, scope: !1912, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 823, column: 15, scope: !1880, inlinedAt: !1893)
!1918 = !DILocation(line: 218, column: 10, scope: !1912, inlinedAt: !1917)
!1919 = !DILocation(line: 823, column: 9, scope: !1880, inlinedAt: !1893)
!1920 = !DILocation(line: 824, column: 60, scope: !1880, inlinedAt: !1893)
!1921 = !DILocation(line: 826, column: 32, scope: !1880, inlinedAt: !1893)
!1922 = !DILocation(line: 826, column: 47, scope: !1880, inlinedAt: !1893)
!1923 = !DILocation(line: 824, column: 3, scope: !1880, inlinedAt: !1893)
!1924 = !DILocation(line: 827, column: 9, scope: !1880, inlinedAt: !1893)
!1925 = !DILocation(line: 802, column: 3, scope: !1869)
!1926 = !DILocation(line: 812, column: 33, scope: !1880)
!1927 = !DILocation(line: 812, column: 45, scope: !1880)
!1928 = !DILocation(line: 812, column: 62, scope: !1880)
!1929 = !DILocation(line: 813, column: 51, scope: !1880)
!1930 = !DILocation(line: 815, column: 37, scope: !1880)
!1931 = !DILocation(line: 815, column: 33, scope: !1880)
!1932 = !DILocation(line: 816, column: 11, scope: !1880)
!1933 = !DILocation(line: 816, column: 7, scope: !1880)
!1934 = !DILocation(line: 818, column: 18, scope: !1880)
!1935 = !DILocation(line: 818, column: 27, scope: !1880)
!1936 = !DILocation(line: 818, column: 24, scope: !1880)
!1937 = !DILocation(line: 818, column: 7, scope: !1880)
!1938 = !DILocation(line: 819, column: 69, scope: !1880)
!1939 = !DILocation(line: 820, column: 53, scope: !1880)
!1940 = !DILocation(line: 821, column: 49, scope: !1880)
!1941 = !DILocation(line: 822, column: 49, scope: !1880)
!1942 = !DILocation(line: 819, column: 20, scope: !1880)
!1943 = !DILocation(line: 822, column: 62, scope: !1880)
!1944 = !DILocation(line: 819, column: 10, scope: !1880)
!1945 = !DILocation(line: 216, column: 20, scope: !1912, inlinedAt: !1946)
!1946 = distinct !DILocation(line: 823, column: 15, scope: !1880)
!1947 = !DILocation(line: 218, column: 10, scope: !1912, inlinedAt: !1946)
!1948 = !DILocation(line: 823, column: 9, scope: !1880)
!1949 = !DILocation(line: 824, column: 60, scope: !1880)
!1950 = !DILocation(line: 826, column: 32, scope: !1880)
!1951 = !DILocation(line: 826, column: 47, scope: !1880)
!1952 = !DILocation(line: 824, column: 3, scope: !1880)
!1953 = !DILocation(line: 827, column: 9, scope: !1880)
!1954 = !DILocation(line: 828, column: 7, scope: !1880)
!1955 = !DILocation(line: 829, column: 11, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1880, file: !118, line: 828, column: 7)
!1957 = !{!1958, !1958, i64 0}
!1958 = !{!"long", !638, i64 0}
!1959 = !DILocation(line: 829, column: 5, scope: !1956)
!1960 = !DILocation(line: 830, column: 3, scope: !1880)
!1961 = distinct !DISubprogram(name: "quotearg_free", scope: !118, file: !118, line: 848, type: !757, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !1962)
!1962 = !{!1963, !1964}
!1963 = !DILocalVariable(name: "sv", scope: !1961, file: !118, line: 850, type: !144)
!1964 = !DILocalVariable(name: "i", scope: !1961, file: !118, line: 851, type: !33)
!1965 = !DILocation(line: 850, column: 24, scope: !1961)
!1966 = !DILocation(line: 850, column: 19, scope: !1961)
!1967 = !DILocation(line: 851, column: 7, scope: !1961)
!1968 = !DILocation(line: 852, column: 19, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1970, file: !118, line: 852, column: 3)
!1970 = distinct !DILexicalBlock(scope: !1961, file: !118, line: 852, column: 3)
!1971 = !DILocation(line: 852, column: 17, scope: !1969)
!1972 = !DILocation(line: 852, column: 3, scope: !1970)
!1973 = !DILocation(line: 853, column: 17, scope: !1969)
!1974 = !{!1975, !637, i64 8}
!1975 = !{!"slotvec", !1958, i64 0, !637, i64 8}
!1976 = !DILocation(line: 853, column: 5, scope: !1969)
!1977 = !DILocation(line: 852, column: 28, scope: !1969)
!1978 = distinct !{!1978, !1972, !1979}
!1979 = !DILocation(line: 853, column: 20, scope: !1970)
!1980 = !DILocation(line: 854, column: 13, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1961, file: !118, line: 854, column: 7)
!1982 = !DILocation(line: 854, column: 17, scope: !1981)
!1983 = !DILocation(line: 854, column: 7, scope: !1961)
!1984 = !DILocation(line: 856, column: 7, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !118, line: 855, column: 5)
!1986 = !DILocation(line: 857, column: 21, scope: !1985)
!1987 = !{!1975, !1958, i64 0}
!1988 = !DILocation(line: 858, column: 20, scope: !1985)
!1989 = !DILocation(line: 859, column: 5, scope: !1985)
!1990 = !DILocation(line: 860, column: 10, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1961, file: !118, line: 860, column: 7)
!1992 = !DILocation(line: 860, column: 7, scope: !1961)
!1993 = !DILocation(line: 862, column: 13, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1991, file: !118, line: 861, column: 5)
!1995 = !DILocation(line: 862, column: 7, scope: !1994)
!1996 = !DILocation(line: 863, column: 15, scope: !1994)
!1997 = !DILocation(line: 864, column: 5, scope: !1994)
!1998 = !DILocation(line: 865, column: 10, scope: !1961)
!1999 = !DILocation(line: 866, column: 1, scope: !1961)
!2000 = distinct !DISubprogram(name: "quotearg_n", scope: !118, file: !118, line: 931, type: !2001, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!82, !33, !21}
!2003 = !{!2004, !2005}
!2004 = !DILocalVariable(name: "n", arg: 1, scope: !2000, file: !118, line: 931, type: !33)
!2005 = !DILocalVariable(name: "arg", arg: 2, scope: !2000, file: !118, line: 931, type: !21)
!2006 = !DILocation(line: 931, column: 17, scope: !2000)
!2007 = !DILocation(line: 931, column: 32, scope: !2000)
!2008 = !DILocation(line: 933, column: 10, scope: !2000)
!2009 = !DILocation(line: 933, column: 3, scope: !2000)
!2010 = distinct !DISubprogram(name: "quotearg_n_options", scope: !118, file: !118, line: 877, type: !2011, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2013)
!2011 = !DISubroutineType(types: !2012)
!2012 = !{!82, !33, !21, !112, !905}
!2013 = !{!2014, !2015, !2016, !2017, !2018, !2019, !2020, !2023, !2024, !2026, !2027, !2028}
!2014 = !DILocalVariable(name: "n", arg: 1, scope: !2010, file: !118, line: 877, type: !33)
!2015 = !DILocalVariable(name: "arg", arg: 2, scope: !2010, file: !118, line: 877, type: !21)
!2016 = !DILocalVariable(name: "argsize", arg: 3, scope: !2010, file: !118, line: 877, type: !112)
!2017 = !DILocalVariable(name: "options", arg: 4, scope: !2010, file: !118, line: 878, type: !905)
!2018 = !DILocalVariable(name: "e", scope: !2010, file: !118, line: 880, type: !33)
!2019 = !DILocalVariable(name: "sv", scope: !2010, file: !118, line: 882, type: !144)
!2020 = !DILocalVariable(name: "preallocated", scope: !2021, file: !118, line: 889, type: !53)
!2021 = distinct !DILexicalBlock(scope: !2022, file: !118, line: 888, column: 5)
!2022 = distinct !DILexicalBlock(scope: !2010, file: !118, line: 887, column: 7)
!2023 = !DILocalVariable(name: "nmax", scope: !2021, file: !118, line: 890, type: !33)
!2024 = !DILocalVariable(name: "size", scope: !2025, file: !118, line: 903, type: !112)
!2025 = distinct !DILexicalBlock(scope: !2010, file: !118, line: 902, column: 3)
!2026 = !DILocalVariable(name: "val", scope: !2025, file: !118, line: 904, type: !82)
!2027 = !DILocalVariable(name: "flags", scope: !2025, file: !118, line: 906, type: !33)
!2028 = !DILocalVariable(name: "qsize", scope: !2025, file: !118, line: 907, type: !112)
!2029 = !DILocation(line: 877, column: 25, scope: !2010)
!2030 = !DILocation(line: 877, column: 40, scope: !2010)
!2031 = !DILocation(line: 877, column: 52, scope: !2010)
!2032 = !DILocation(line: 878, column: 51, scope: !2010)
!2033 = !DILocation(line: 880, column: 11, scope: !2010)
!2034 = !DILocation(line: 880, column: 7, scope: !2010)
!2035 = !DILocation(line: 882, column: 24, scope: !2010)
!2036 = !DILocation(line: 882, column: 19, scope: !2010)
!2037 = !DILocation(line: 884, column: 9, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2010, file: !118, line: 884, column: 7)
!2039 = !DILocation(line: 884, column: 7, scope: !2010)
!2040 = !DILocation(line: 885, column: 5, scope: !2038)
!2041 = !DILocation(line: 887, column: 7, scope: !2022)
!2042 = !DILocation(line: 887, column: 14, scope: !2022)
!2043 = !DILocation(line: 887, column: 7, scope: !2010)
!2044 = !DILocation(line: 889, column: 31, scope: !2021)
!2045 = !DILocation(line: 890, column: 11, scope: !2021)
!2046 = !DILocation(line: 892, column: 16, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2021, file: !118, line: 892, column: 11)
!2048 = !DILocation(line: 892, column: 11, scope: !2021)
!2049 = !DILocation(line: 893, column: 9, scope: !2047)
!2050 = !DILocation(line: 895, column: 32, scope: !2021)
!2051 = !DILocation(line: 895, column: 61, scope: !2021)
!2052 = !DILocation(line: 895, column: 58, scope: !2021)
!2053 = !DILocation(line: 895, column: 66, scope: !2021)
!2054 = !DILocation(line: 895, column: 22, scope: !2021)
!2055 = !DILocation(line: 895, column: 15, scope: !2021)
!2056 = !DILocation(line: 896, column: 11, scope: !2021)
!2057 = !DILocation(line: 897, column: 15, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2021, file: !118, line: 896, column: 11)
!2059 = !{i64 0, i64 8, !1957, i64 8, i64 8, !636}
!2060 = !DILocation(line: 897, column: 9, scope: !2058)
!2061 = !DILocation(line: 898, column: 20, scope: !2021)
!2062 = !DILocation(line: 898, column: 18, scope: !2021)
!2063 = !DILocation(line: 898, column: 7, scope: !2021)
!2064 = !DILocation(line: 898, column: 38, scope: !2021)
!2065 = !DILocation(line: 898, column: 31, scope: !2021)
!2066 = !DILocation(line: 898, column: 48, scope: !2021)
!2067 = !DILocation(line: 899, column: 14, scope: !2021)
!2068 = !DILocation(line: 900, column: 5, scope: !2021)
!2069 = !DILocation(line: 0, scope: !2010)
!2070 = !DILocation(line: 903, column: 19, scope: !2025)
!2071 = !DILocation(line: 903, column: 25, scope: !2025)
!2072 = !DILocation(line: 903, column: 12, scope: !2025)
!2073 = !DILocation(line: 904, column: 23, scope: !2025)
!2074 = !DILocation(line: 904, column: 11, scope: !2025)
!2075 = !DILocation(line: 906, column: 26, scope: !2025)
!2076 = !DILocation(line: 906, column: 32, scope: !2025)
!2077 = !DILocation(line: 906, column: 9, scope: !2025)
!2078 = !DILocation(line: 908, column: 55, scope: !2025)
!2079 = !DILocation(line: 909, column: 46, scope: !2025)
!2080 = !DILocation(line: 910, column: 55, scope: !2025)
!2081 = !DILocation(line: 911, column: 55, scope: !2025)
!2082 = !DILocation(line: 907, column: 20, scope: !2025)
!2083 = !DILocation(line: 907, column: 12, scope: !2025)
!2084 = !DILocation(line: 913, column: 14, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2025, file: !118, line: 913, column: 9)
!2086 = !DILocation(line: 913, column: 9, scope: !2025)
!2087 = !DILocation(line: 915, column: 35, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2085, file: !118, line: 914, column: 7)
!2089 = !DILocation(line: 915, column: 20, scope: !2088)
!2090 = !DILocation(line: 916, column: 17, scope: !2091)
!2091 = distinct !DILexicalBlock(scope: !2088, file: !118, line: 916, column: 13)
!2092 = !DILocation(line: 916, column: 13, scope: !2088)
!2093 = !DILocation(line: 917, column: 11, scope: !2091)
!2094 = !DILocation(line: 216, column: 20, scope: !1912, inlinedAt: !2095)
!2095 = distinct !DILocation(line: 918, column: 27, scope: !2088)
!2096 = !DILocation(line: 218, column: 10, scope: !1912, inlinedAt: !2095)
!2097 = !DILocation(line: 918, column: 19, scope: !2088)
!2098 = !DILocation(line: 919, column: 69, scope: !2088)
!2099 = !DILocation(line: 921, column: 44, scope: !2088)
!2100 = !DILocation(line: 922, column: 44, scope: !2088)
!2101 = !DILocation(line: 919, column: 9, scope: !2088)
!2102 = !DILocation(line: 923, column: 7, scope: !2088)
!2103 = !DILocation(line: 0, scope: !2025)
!2104 = !DILocation(line: 925, column: 11, scope: !2025)
!2105 = !DILocation(line: 926, column: 5, scope: !2025)
!2106 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !118, file: !118, line: 937, type: !2107, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!82, !33, !21, !112}
!2109 = !{!2110, !2111, !2112}
!2110 = !DILocalVariable(name: "n", arg: 1, scope: !2106, file: !118, line: 937, type: !33)
!2111 = !DILocalVariable(name: "arg", arg: 2, scope: !2106, file: !118, line: 937, type: !21)
!2112 = !DILocalVariable(name: "argsize", arg: 3, scope: !2106, file: !118, line: 937, type: !112)
!2113 = !DILocation(line: 937, column: 21, scope: !2106)
!2114 = !DILocation(line: 937, column: 36, scope: !2106)
!2115 = !DILocation(line: 937, column: 48, scope: !2106)
!2116 = !DILocation(line: 939, column: 10, scope: !2106)
!2117 = !DILocation(line: 939, column: 3, scope: !2106)
!2118 = distinct !DISubprogram(name: "quotearg", scope: !118, file: !118, line: 943, type: !2119, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2121)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{!82, !21}
!2121 = !{!2122}
!2122 = !DILocalVariable(name: "arg", arg: 1, scope: !2118, file: !118, line: 943, type: !21)
!2123 = !DILocation(line: 943, column: 23, scope: !2118)
!2124 = !DILocation(line: 931, column: 17, scope: !2000, inlinedAt: !2125)
!2125 = distinct !DILocation(line: 945, column: 10, scope: !2118)
!2126 = !DILocation(line: 931, column: 32, scope: !2000, inlinedAt: !2125)
!2127 = !DILocation(line: 933, column: 10, scope: !2000, inlinedAt: !2125)
!2128 = !DILocation(line: 945, column: 3, scope: !2118)
!2129 = distinct !DISubprogram(name: "quotearg_mem", scope: !118, file: !118, line: 949, type: !2130, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2132)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!82, !21, !112}
!2132 = !{!2133, !2134}
!2133 = !DILocalVariable(name: "arg", arg: 1, scope: !2129, file: !118, line: 949, type: !21)
!2134 = !DILocalVariable(name: "argsize", arg: 2, scope: !2129, file: !118, line: 949, type: !112)
!2135 = !DILocation(line: 949, column: 27, scope: !2129)
!2136 = !DILocation(line: 949, column: 39, scope: !2129)
!2137 = !DILocation(line: 937, column: 21, scope: !2106, inlinedAt: !2138)
!2138 = distinct !DILocation(line: 951, column: 10, scope: !2129)
!2139 = !DILocation(line: 937, column: 36, scope: !2106, inlinedAt: !2138)
!2140 = !DILocation(line: 937, column: 48, scope: !2106, inlinedAt: !2138)
!2141 = !DILocation(line: 939, column: 10, scope: !2106, inlinedAt: !2138)
!2142 = !DILocation(line: 951, column: 3, scope: !2129)
!2143 = distinct !DISubprogram(name: "quotearg_n_style", scope: !118, file: !118, line: 955, type: !2144, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2146)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!82, !33, !5, !21}
!2146 = !{!2147, !2148, !2149, !2150}
!2147 = !DILocalVariable(name: "n", arg: 1, scope: !2143, file: !118, line: 955, type: !33)
!2148 = !DILocalVariable(name: "s", arg: 2, scope: !2143, file: !118, line: 955, type: !5)
!2149 = !DILocalVariable(name: "arg", arg: 3, scope: !2143, file: !118, line: 955, type: !21)
!2150 = !DILocalVariable(name: "o", scope: !2143, file: !118, line: 957, type: !906)
!2151 = !DILocation(line: 955, column: 23, scope: !2143)
!2152 = !DILocation(line: 955, column: 45, scope: !2143)
!2153 = !DILocation(line: 955, column: 60, scope: !2143)
!2154 = !DILocation(line: 957, column: 3, scope: !2143)
!2155 = !DILocation(line: 957, column: 32, scope: !2143)
!2156 = !DILocalVariable(name: "style", arg: 1, scope: !2157, file: !118, line: 193, type: !5)
!2157 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !118, file: !118, line: 193, type: !2158, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2160)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!125, !5}
!2160 = !{!2156, !2161}
!2161 = !DILocalVariable(name: "o", scope: !2157, file: !118, line: 195, type: !125)
!2162 = !DILocation(line: 193, column: 48, scope: !2157, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 957, column: 36, scope: !2143)
!2164 = !DILocation(line: 195, column: 26, scope: !2157, inlinedAt: !2163)
!2165 = !{!2166}
!2166 = distinct !{!2166, !2167, !"quoting_options_from_style: argument 0"}
!2167 = distinct !{!2167, !"quoting_options_from_style"}
!2168 = !DILocation(line: 196, column: 13, scope: !2169, inlinedAt: !2163)
!2169 = distinct !DILexicalBlock(scope: !2157, file: !118, line: 196, column: 7)
!2170 = !DILocation(line: 196, column: 7, scope: !2157, inlinedAt: !2163)
!2171 = !DILocation(line: 197, column: 5, scope: !2169, inlinedAt: !2163)
!2172 = !DILocation(line: 198, column: 5, scope: !2157, inlinedAt: !2163)
!2173 = !DILocation(line: 198, column: 11, scope: !2157, inlinedAt: !2163)
!2174 = !DILocation(line: 958, column: 10, scope: !2143)
!2175 = !DILocation(line: 959, column: 1, scope: !2143)
!2176 = !DILocation(line: 958, column: 3, scope: !2143)
!2177 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !118, file: !118, line: 962, type: !2178, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2180)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!82, !33, !5, !21, !112}
!2180 = !{!2181, !2182, !2183, !2184, !2185}
!2181 = !DILocalVariable(name: "n", arg: 1, scope: !2177, file: !118, line: 962, type: !33)
!2182 = !DILocalVariable(name: "s", arg: 2, scope: !2177, file: !118, line: 962, type: !5)
!2183 = !DILocalVariable(name: "arg", arg: 3, scope: !2177, file: !118, line: 963, type: !21)
!2184 = !DILocalVariable(name: "argsize", arg: 4, scope: !2177, file: !118, line: 963, type: !112)
!2185 = !DILocalVariable(name: "o", scope: !2177, file: !118, line: 965, type: !906)
!2186 = !DILocation(line: 962, column: 27, scope: !2177)
!2187 = !DILocation(line: 962, column: 49, scope: !2177)
!2188 = !DILocation(line: 963, column: 35, scope: !2177)
!2189 = !DILocation(line: 963, column: 47, scope: !2177)
!2190 = !DILocation(line: 965, column: 3, scope: !2177)
!2191 = !DILocation(line: 965, column: 32, scope: !2177)
!2192 = !DILocation(line: 193, column: 48, scope: !2157, inlinedAt: !2193)
!2193 = distinct !DILocation(line: 965, column: 36, scope: !2177)
!2194 = !DILocation(line: 195, column: 26, scope: !2157, inlinedAt: !2193)
!2195 = !{!2196}
!2196 = distinct !{!2196, !2197, !"quoting_options_from_style: argument 0"}
!2197 = distinct !{!2197, !"quoting_options_from_style"}
!2198 = !DILocation(line: 196, column: 13, scope: !2169, inlinedAt: !2193)
!2199 = !DILocation(line: 196, column: 7, scope: !2157, inlinedAt: !2193)
!2200 = !DILocation(line: 197, column: 5, scope: !2169, inlinedAt: !2193)
!2201 = !DILocation(line: 198, column: 5, scope: !2157, inlinedAt: !2193)
!2202 = !DILocation(line: 198, column: 11, scope: !2157, inlinedAt: !2193)
!2203 = !DILocation(line: 966, column: 10, scope: !2177)
!2204 = !DILocation(line: 967, column: 1, scope: !2177)
!2205 = !DILocation(line: 966, column: 3, scope: !2177)
!2206 = distinct !DISubprogram(name: "quotearg_style", scope: !118, file: !118, line: 970, type: !2207, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2209)
!2207 = !DISubroutineType(types: !2208)
!2208 = !{!82, !5, !21}
!2209 = !{!2210, !2211}
!2210 = !DILocalVariable(name: "s", arg: 1, scope: !2206, file: !118, line: 970, type: !5)
!2211 = !DILocalVariable(name: "arg", arg: 2, scope: !2206, file: !118, line: 970, type: !21)
!2212 = !DILocation(line: 970, column: 36, scope: !2206)
!2213 = !DILocation(line: 970, column: 51, scope: !2206)
!2214 = !DILocation(line: 955, column: 23, scope: !2143, inlinedAt: !2215)
!2215 = distinct !DILocation(line: 972, column: 10, scope: !2206)
!2216 = !DILocation(line: 955, column: 45, scope: !2143, inlinedAt: !2215)
!2217 = !DILocation(line: 955, column: 60, scope: !2143, inlinedAt: !2215)
!2218 = !DILocation(line: 957, column: 3, scope: !2143, inlinedAt: !2215)
!2219 = !DILocation(line: 957, column: 32, scope: !2143, inlinedAt: !2215)
!2220 = !DILocation(line: 193, column: 48, scope: !2157, inlinedAt: !2221)
!2221 = distinct !DILocation(line: 957, column: 36, scope: !2143, inlinedAt: !2215)
!2222 = !DILocation(line: 195, column: 26, scope: !2157, inlinedAt: !2221)
!2223 = !{!2224}
!2224 = distinct !{!2224, !2225, !"quoting_options_from_style: argument 0"}
!2225 = distinct !{!2225, !"quoting_options_from_style"}
!2226 = !DILocation(line: 196, column: 13, scope: !2169, inlinedAt: !2221)
!2227 = !DILocation(line: 196, column: 7, scope: !2157, inlinedAt: !2221)
!2228 = !DILocation(line: 197, column: 5, scope: !2169, inlinedAt: !2221)
!2229 = !DILocation(line: 198, column: 5, scope: !2157, inlinedAt: !2221)
!2230 = !DILocation(line: 198, column: 11, scope: !2157, inlinedAt: !2221)
!2231 = !DILocation(line: 958, column: 10, scope: !2143, inlinedAt: !2215)
!2232 = !DILocation(line: 959, column: 1, scope: !2143, inlinedAt: !2215)
!2233 = !DILocation(line: 972, column: 3, scope: !2206)
!2234 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !118, file: !118, line: 976, type: !2235, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2237)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!82, !5, !21, !112}
!2237 = !{!2238, !2239, !2240}
!2238 = !DILocalVariable(name: "s", arg: 1, scope: !2234, file: !118, line: 976, type: !5)
!2239 = !DILocalVariable(name: "arg", arg: 2, scope: !2234, file: !118, line: 976, type: !21)
!2240 = !DILocalVariable(name: "argsize", arg: 3, scope: !2234, file: !118, line: 976, type: !112)
!2241 = !DILocation(line: 976, column: 40, scope: !2234)
!2242 = !DILocation(line: 976, column: 55, scope: !2234)
!2243 = !DILocation(line: 976, column: 67, scope: !2234)
!2244 = !DILocation(line: 962, column: 27, scope: !2177, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 978, column: 10, scope: !2234)
!2246 = !DILocation(line: 962, column: 49, scope: !2177, inlinedAt: !2245)
!2247 = !DILocation(line: 963, column: 35, scope: !2177, inlinedAt: !2245)
!2248 = !DILocation(line: 963, column: 47, scope: !2177, inlinedAt: !2245)
!2249 = !DILocation(line: 965, column: 3, scope: !2177, inlinedAt: !2245)
!2250 = !DILocation(line: 965, column: 32, scope: !2177, inlinedAt: !2245)
!2251 = !DILocation(line: 193, column: 48, scope: !2157, inlinedAt: !2252)
!2252 = distinct !DILocation(line: 965, column: 36, scope: !2177, inlinedAt: !2245)
!2253 = !DILocation(line: 195, column: 26, scope: !2157, inlinedAt: !2252)
!2254 = !{!2255}
!2255 = distinct !{!2255, !2256, !"quoting_options_from_style: argument 0"}
!2256 = distinct !{!2256, !"quoting_options_from_style"}
!2257 = !DILocation(line: 196, column: 13, scope: !2169, inlinedAt: !2252)
!2258 = !DILocation(line: 196, column: 7, scope: !2157, inlinedAt: !2252)
!2259 = !DILocation(line: 197, column: 5, scope: !2169, inlinedAt: !2252)
!2260 = !DILocation(line: 198, column: 5, scope: !2157, inlinedAt: !2252)
!2261 = !DILocation(line: 198, column: 11, scope: !2157, inlinedAt: !2252)
!2262 = !DILocation(line: 966, column: 10, scope: !2177, inlinedAt: !2245)
!2263 = !DILocation(line: 967, column: 1, scope: !2177, inlinedAt: !2245)
!2264 = !DILocation(line: 978, column: 3, scope: !2234)
!2265 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !118, file: !118, line: 982, type: !2266, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2268)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!82, !21, !112, !23}
!2268 = !{!2269, !2270, !2271, !2272}
!2269 = !DILocalVariable(name: "arg", arg: 1, scope: !2265, file: !118, line: 982, type: !21)
!2270 = !DILocalVariable(name: "argsize", arg: 2, scope: !2265, file: !118, line: 982, type: !112)
!2271 = !DILocalVariable(name: "ch", arg: 3, scope: !2265, file: !118, line: 982, type: !23)
!2272 = !DILocalVariable(name: "options", scope: !2265, file: !118, line: 984, type: !125)
!2273 = !DILocation(line: 982, column: 32, scope: !2265)
!2274 = !DILocation(line: 982, column: 44, scope: !2265)
!2275 = !DILocation(line: 982, column: 58, scope: !2265)
!2276 = !DILocation(line: 984, column: 3, scope: !2265)
!2277 = !DILocation(line: 985, column: 13, scope: !2265)
!2278 = !{i64 0, i64 4, !1134, i64 4, i64 4, !703, i64 8, i64 32, !1134, i64 40, i64 8, !636, i64 48, i64 8, !636}
!2279 = !DILocation(line: 984, column: 26, scope: !2265)
!2280 = !DILocation(line: 152, column: 43, scope: !927, inlinedAt: !2281)
!2281 = distinct !DILocation(line: 986, column: 3, scope: !2265)
!2282 = !DILocation(line: 152, column: 51, scope: !927, inlinedAt: !2281)
!2283 = !DILocation(line: 152, column: 58, scope: !927, inlinedAt: !2281)
!2284 = !DILocation(line: 154, column: 17, scope: !927, inlinedAt: !2281)
!2285 = !DILocation(line: 156, column: 62, scope: !927, inlinedAt: !2281)
!2286 = !DILocation(line: 156, column: 57, scope: !927, inlinedAt: !2281)
!2287 = !DILocation(line: 155, column: 17, scope: !927, inlinedAt: !2281)
!2288 = !DILocation(line: 157, column: 15, scope: !927, inlinedAt: !2281)
!2289 = !DILocation(line: 157, column: 7, scope: !927, inlinedAt: !2281)
!2290 = !DILocation(line: 158, column: 12, scope: !927, inlinedAt: !2281)
!2291 = !DILocation(line: 158, column: 15, scope: !927, inlinedAt: !2281)
!2292 = !DILocation(line: 158, column: 25, scope: !927, inlinedAt: !2281)
!2293 = !DILocation(line: 158, column: 7, scope: !927, inlinedAt: !2281)
!2294 = !DILocation(line: 159, column: 18, scope: !927, inlinedAt: !2281)
!2295 = !DILocation(line: 159, column: 23, scope: !927, inlinedAt: !2281)
!2296 = !DILocation(line: 159, column: 6, scope: !927, inlinedAt: !2281)
!2297 = !DILocation(line: 987, column: 10, scope: !2265)
!2298 = !DILocation(line: 988, column: 1, scope: !2265)
!2299 = !DILocation(line: 987, column: 3, scope: !2265)
!2300 = distinct !DISubprogram(name: "quotearg_char", scope: !118, file: !118, line: 991, type: !2301, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2303)
!2301 = !DISubroutineType(types: !2302)
!2302 = !{!82, !21, !23}
!2303 = !{!2304, !2305}
!2304 = !DILocalVariable(name: "arg", arg: 1, scope: !2300, file: !118, line: 991, type: !21)
!2305 = !DILocalVariable(name: "ch", arg: 2, scope: !2300, file: !118, line: 991, type: !23)
!2306 = !DILocation(line: 991, column: 28, scope: !2300)
!2307 = !DILocation(line: 991, column: 38, scope: !2300)
!2308 = !DILocation(line: 982, column: 32, scope: !2265, inlinedAt: !2309)
!2309 = distinct !DILocation(line: 993, column: 10, scope: !2300)
!2310 = !DILocation(line: 982, column: 44, scope: !2265, inlinedAt: !2309)
!2311 = !DILocation(line: 982, column: 58, scope: !2265, inlinedAt: !2309)
!2312 = !DILocation(line: 984, column: 3, scope: !2265, inlinedAt: !2309)
!2313 = !DILocation(line: 985, column: 13, scope: !2265, inlinedAt: !2309)
!2314 = !DILocation(line: 984, column: 26, scope: !2265, inlinedAt: !2309)
!2315 = !DILocation(line: 152, column: 43, scope: !927, inlinedAt: !2316)
!2316 = distinct !DILocation(line: 986, column: 3, scope: !2265, inlinedAt: !2309)
!2317 = !DILocation(line: 152, column: 51, scope: !927, inlinedAt: !2316)
!2318 = !DILocation(line: 152, column: 58, scope: !927, inlinedAt: !2316)
!2319 = !DILocation(line: 154, column: 17, scope: !927, inlinedAt: !2316)
!2320 = !DILocation(line: 156, column: 62, scope: !927, inlinedAt: !2316)
!2321 = !DILocation(line: 156, column: 57, scope: !927, inlinedAt: !2316)
!2322 = !DILocation(line: 155, column: 17, scope: !927, inlinedAt: !2316)
!2323 = !DILocation(line: 157, column: 15, scope: !927, inlinedAt: !2316)
!2324 = !DILocation(line: 157, column: 7, scope: !927, inlinedAt: !2316)
!2325 = !DILocation(line: 158, column: 12, scope: !927, inlinedAt: !2316)
!2326 = !DILocation(line: 158, column: 15, scope: !927, inlinedAt: !2316)
!2327 = !DILocation(line: 158, column: 25, scope: !927, inlinedAt: !2316)
!2328 = !DILocation(line: 158, column: 7, scope: !927, inlinedAt: !2316)
!2329 = !DILocation(line: 159, column: 18, scope: !927, inlinedAt: !2316)
!2330 = !DILocation(line: 159, column: 23, scope: !927, inlinedAt: !2316)
!2331 = !DILocation(line: 159, column: 6, scope: !927, inlinedAt: !2316)
!2332 = !DILocation(line: 987, column: 10, scope: !2265, inlinedAt: !2309)
!2333 = !DILocation(line: 988, column: 1, scope: !2265, inlinedAt: !2309)
!2334 = !DILocation(line: 993, column: 3, scope: !2300)
!2335 = distinct !DISubprogram(name: "quotearg_colon", scope: !118, file: !118, line: 997, type: !2119, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2336)
!2336 = !{!2337}
!2337 = !DILocalVariable(name: "arg", arg: 1, scope: !2335, file: !118, line: 997, type: !21)
!2338 = !DILocation(line: 997, column: 29, scope: !2335)
!2339 = !DILocation(line: 991, column: 28, scope: !2300, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 999, column: 10, scope: !2335)
!2341 = !DILocation(line: 991, column: 38, scope: !2300, inlinedAt: !2340)
!2342 = !DILocation(line: 982, column: 32, scope: !2265, inlinedAt: !2343)
!2343 = distinct !DILocation(line: 993, column: 10, scope: !2300, inlinedAt: !2340)
!2344 = !DILocation(line: 982, column: 44, scope: !2265, inlinedAt: !2343)
!2345 = !DILocation(line: 982, column: 58, scope: !2265, inlinedAt: !2343)
!2346 = !DILocation(line: 984, column: 3, scope: !2265, inlinedAt: !2343)
!2347 = !DILocation(line: 985, column: 13, scope: !2265, inlinedAt: !2343)
!2348 = !DILocation(line: 984, column: 26, scope: !2265, inlinedAt: !2343)
!2349 = !DILocation(line: 152, column: 43, scope: !927, inlinedAt: !2350)
!2350 = distinct !DILocation(line: 986, column: 3, scope: !2265, inlinedAt: !2343)
!2351 = !DILocation(line: 152, column: 51, scope: !927, inlinedAt: !2350)
!2352 = !DILocation(line: 152, column: 58, scope: !927, inlinedAt: !2350)
!2353 = !DILocation(line: 154, column: 17, scope: !927, inlinedAt: !2350)
!2354 = !DILocation(line: 156, column: 57, scope: !927, inlinedAt: !2350)
!2355 = !DILocation(line: 155, column: 17, scope: !927, inlinedAt: !2350)
!2356 = !DILocation(line: 157, column: 7, scope: !927, inlinedAt: !2350)
!2357 = !DILocation(line: 158, column: 12, scope: !927, inlinedAt: !2350)
!2358 = !DILocation(line: 159, column: 6, scope: !927, inlinedAt: !2350)
!2359 = !DILocation(line: 987, column: 10, scope: !2265, inlinedAt: !2343)
!2360 = !DILocation(line: 988, column: 1, scope: !2265, inlinedAt: !2343)
!2361 = !DILocation(line: 999, column: 3, scope: !2335)
!2362 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !118, file: !118, line: 1003, type: !2130, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2363)
!2363 = !{!2364, !2365}
!2364 = !DILocalVariable(name: "arg", arg: 1, scope: !2362, file: !118, line: 1003, type: !21)
!2365 = !DILocalVariable(name: "argsize", arg: 2, scope: !2362, file: !118, line: 1003, type: !112)
!2366 = !DILocation(line: 1003, column: 33, scope: !2362)
!2367 = !DILocation(line: 1003, column: 45, scope: !2362)
!2368 = !DILocation(line: 982, column: 32, scope: !2265, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 1005, column: 10, scope: !2362)
!2370 = !DILocation(line: 982, column: 44, scope: !2265, inlinedAt: !2369)
!2371 = !DILocation(line: 982, column: 58, scope: !2265, inlinedAt: !2369)
!2372 = !DILocation(line: 984, column: 3, scope: !2265, inlinedAt: !2369)
!2373 = !DILocation(line: 985, column: 13, scope: !2265, inlinedAt: !2369)
!2374 = !DILocation(line: 984, column: 26, scope: !2265, inlinedAt: !2369)
!2375 = !DILocation(line: 152, column: 43, scope: !927, inlinedAt: !2376)
!2376 = distinct !DILocation(line: 986, column: 3, scope: !2265, inlinedAt: !2369)
!2377 = !DILocation(line: 152, column: 51, scope: !927, inlinedAt: !2376)
!2378 = !DILocation(line: 152, column: 58, scope: !927, inlinedAt: !2376)
!2379 = !DILocation(line: 154, column: 17, scope: !927, inlinedAt: !2376)
!2380 = !DILocation(line: 156, column: 57, scope: !927, inlinedAt: !2376)
!2381 = !DILocation(line: 155, column: 17, scope: !927, inlinedAt: !2376)
!2382 = !DILocation(line: 157, column: 7, scope: !927, inlinedAt: !2376)
!2383 = !DILocation(line: 158, column: 12, scope: !927, inlinedAt: !2376)
!2384 = !DILocation(line: 159, column: 6, scope: !927, inlinedAt: !2376)
!2385 = !DILocation(line: 987, column: 10, scope: !2265, inlinedAt: !2369)
!2386 = !DILocation(line: 988, column: 1, scope: !2265, inlinedAt: !2369)
!2387 = !DILocation(line: 1005, column: 3, scope: !2362)
!2388 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !118, file: !118, line: 1009, type: !2144, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2389)
!2389 = !{!2390, !2391, !2392, !2393}
!2390 = !DILocalVariable(name: "n", arg: 1, scope: !2388, file: !118, line: 1009, type: !33)
!2391 = !DILocalVariable(name: "s", arg: 2, scope: !2388, file: !118, line: 1009, type: !5)
!2392 = !DILocalVariable(name: "arg", arg: 3, scope: !2388, file: !118, line: 1009, type: !21)
!2393 = !DILocalVariable(name: "options", scope: !2388, file: !118, line: 1011, type: !125)
!2394 = !DILocation(line: 195, column: 26, scope: !2157, inlinedAt: !2395)
!2395 = distinct !DILocation(line: 1012, column: 13, scope: !2388)
!2396 = !DILocation(line: 1009, column: 29, scope: !2388)
!2397 = !DILocation(line: 1009, column: 51, scope: !2388)
!2398 = !DILocation(line: 1009, column: 66, scope: !2388)
!2399 = !DILocation(line: 1011, column: 3, scope: !2388)
!2400 = !DILocation(line: 1012, column: 13, scope: !2388)
!2401 = !DILocation(line: 193, column: 48, scope: !2157, inlinedAt: !2395)
!2402 = !{!2403}
!2403 = distinct !{!2403, !2404, !"quoting_options_from_style: argument 0"}
!2404 = distinct !{!2404, !"quoting_options_from_style"}
!2405 = !DILocation(line: 196, column: 13, scope: !2169, inlinedAt: !2395)
!2406 = !DILocation(line: 196, column: 7, scope: !2157, inlinedAt: !2395)
!2407 = !DILocation(line: 197, column: 5, scope: !2169, inlinedAt: !2395)
!2408 = !DILocation(line: 1011, column: 26, scope: !2388)
!2409 = !DILocation(line: 152, column: 43, scope: !927, inlinedAt: !2410)
!2410 = distinct !DILocation(line: 1013, column: 3, scope: !2388)
!2411 = !DILocation(line: 152, column: 51, scope: !927, inlinedAt: !2410)
!2412 = !DILocation(line: 152, column: 58, scope: !927, inlinedAt: !2410)
!2413 = !DILocation(line: 154, column: 17, scope: !927, inlinedAt: !2410)
!2414 = !DILocation(line: 156, column: 57, scope: !927, inlinedAt: !2410)
!2415 = !DILocation(line: 155, column: 17, scope: !927, inlinedAt: !2410)
!2416 = !DILocation(line: 157, column: 7, scope: !927, inlinedAt: !2410)
!2417 = !DILocation(line: 158, column: 12, scope: !927, inlinedAt: !2410)
!2418 = !DILocation(line: 159, column: 6, scope: !927, inlinedAt: !2410)
!2419 = !DILocation(line: 1014, column: 10, scope: !2388)
!2420 = !DILocation(line: 1015, column: 1, scope: !2388)
!2421 = !DILocation(line: 1014, column: 3, scope: !2388)
!2422 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !118, file: !118, line: 1018, type: !2423, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!82, !33, !21, !21, !21}
!2425 = !{!2426, !2427, !2428, !2429}
!2426 = !DILocalVariable(name: "n", arg: 1, scope: !2422, file: !118, line: 1018, type: !33)
!2427 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2422, file: !118, line: 1018, type: !21)
!2428 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2422, file: !118, line: 1019, type: !21)
!2429 = !DILocalVariable(name: "arg", arg: 4, scope: !2422, file: !118, line: 1019, type: !21)
!2430 = !DILocation(line: 1018, column: 24, scope: !2422)
!2431 = !DILocation(line: 1018, column: 39, scope: !2422)
!2432 = !DILocation(line: 1019, column: 32, scope: !2422)
!2433 = !DILocation(line: 1019, column: 57, scope: !2422)
!2434 = !DILocalVariable(name: "n", arg: 1, scope: !2435, file: !118, line: 1026, type: !33)
!2435 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !118, file: !118, line: 1026, type: !2436, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2438)
!2436 = !DISubroutineType(types: !2437)
!2437 = !{!82, !33, !21, !21, !21, !112}
!2438 = !{!2434, !2439, !2440, !2441, !2442, !2443}
!2439 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2435, file: !118, line: 1026, type: !21)
!2440 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2435, file: !118, line: 1027, type: !21)
!2441 = !DILocalVariable(name: "arg", arg: 4, scope: !2435, file: !118, line: 1028, type: !21)
!2442 = !DILocalVariable(name: "argsize", arg: 5, scope: !2435, file: !118, line: 1028, type: !112)
!2443 = !DILocalVariable(name: "o", scope: !2435, file: !118, line: 1030, type: !125)
!2444 = !DILocation(line: 1026, column: 28, scope: !2435, inlinedAt: !2445)
!2445 = distinct !DILocation(line: 1021, column: 10, scope: !2422)
!2446 = !DILocation(line: 1026, column: 43, scope: !2435, inlinedAt: !2445)
!2447 = !DILocation(line: 1027, column: 36, scope: !2435, inlinedAt: !2445)
!2448 = !DILocation(line: 1028, column: 36, scope: !2435, inlinedAt: !2445)
!2449 = !DILocation(line: 1028, column: 48, scope: !2435, inlinedAt: !2445)
!2450 = !DILocation(line: 1030, column: 3, scope: !2435, inlinedAt: !2445)
!2451 = !DILocation(line: 1030, column: 30, scope: !2435, inlinedAt: !2445)
!2452 = !DILocation(line: 1030, column: 26, scope: !2435, inlinedAt: !2445)
!2453 = !DILocation(line: 179, column: 45, scope: !976, inlinedAt: !2454)
!2454 = distinct !DILocation(line: 1031, column: 3, scope: !2435, inlinedAt: !2445)
!2455 = !DILocation(line: 180, column: 33, scope: !976, inlinedAt: !2454)
!2456 = !DILocation(line: 180, column: 57, scope: !976, inlinedAt: !2454)
!2457 = !DILocation(line: 184, column: 6, scope: !976, inlinedAt: !2454)
!2458 = !DILocation(line: 184, column: 12, scope: !976, inlinedAt: !2454)
!2459 = !DILocation(line: 185, column: 8, scope: !992, inlinedAt: !2454)
!2460 = !DILocation(line: 185, column: 23, scope: !992, inlinedAt: !2454)
!2461 = !DILocation(line: 185, column: 19, scope: !992, inlinedAt: !2454)
!2462 = !DILocation(line: 186, column: 5, scope: !992, inlinedAt: !2454)
!2463 = !DILocation(line: 187, column: 6, scope: !976, inlinedAt: !2454)
!2464 = !DILocation(line: 187, column: 17, scope: !976, inlinedAt: !2454)
!2465 = !DILocation(line: 188, column: 6, scope: !976, inlinedAt: !2454)
!2466 = !DILocation(line: 188, column: 18, scope: !976, inlinedAt: !2454)
!2467 = !DILocation(line: 1032, column: 10, scope: !2435, inlinedAt: !2445)
!2468 = !DILocation(line: 1033, column: 1, scope: !2435, inlinedAt: !2445)
!2469 = !DILocation(line: 1021, column: 3, scope: !2422)
!2470 = !DILocation(line: 1026, column: 28, scope: !2435)
!2471 = !DILocation(line: 1026, column: 43, scope: !2435)
!2472 = !DILocation(line: 1027, column: 36, scope: !2435)
!2473 = !DILocation(line: 1028, column: 36, scope: !2435)
!2474 = !DILocation(line: 1028, column: 48, scope: !2435)
!2475 = !DILocation(line: 1030, column: 3, scope: !2435)
!2476 = !DILocation(line: 1030, column: 30, scope: !2435)
!2477 = !DILocation(line: 1030, column: 26, scope: !2435)
!2478 = !DILocation(line: 179, column: 45, scope: !976, inlinedAt: !2479)
!2479 = distinct !DILocation(line: 1031, column: 3, scope: !2435)
!2480 = !DILocation(line: 180, column: 33, scope: !976, inlinedAt: !2479)
!2481 = !DILocation(line: 180, column: 57, scope: !976, inlinedAt: !2479)
!2482 = !DILocation(line: 184, column: 6, scope: !976, inlinedAt: !2479)
!2483 = !DILocation(line: 184, column: 12, scope: !976, inlinedAt: !2479)
!2484 = !DILocation(line: 185, column: 8, scope: !992, inlinedAt: !2479)
!2485 = !DILocation(line: 185, column: 23, scope: !992, inlinedAt: !2479)
!2486 = !DILocation(line: 185, column: 19, scope: !992, inlinedAt: !2479)
!2487 = !DILocation(line: 186, column: 5, scope: !992, inlinedAt: !2479)
!2488 = !DILocation(line: 187, column: 6, scope: !976, inlinedAt: !2479)
!2489 = !DILocation(line: 187, column: 17, scope: !976, inlinedAt: !2479)
!2490 = !DILocation(line: 188, column: 6, scope: !976, inlinedAt: !2479)
!2491 = !DILocation(line: 188, column: 18, scope: !976, inlinedAt: !2479)
!2492 = !DILocation(line: 1032, column: 10, scope: !2435)
!2493 = !DILocation(line: 1033, column: 1, scope: !2435)
!2494 = !DILocation(line: 1032, column: 3, scope: !2435)
!2495 = distinct !DISubprogram(name: "quotearg_custom", scope: !118, file: !118, line: 1036, type: !2496, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2498)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!82, !21, !21, !21}
!2498 = !{!2499, !2500, !2501}
!2499 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2495, file: !118, line: 1036, type: !21)
!2500 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2495, file: !118, line: 1036, type: !21)
!2501 = !DILocalVariable(name: "arg", arg: 3, scope: !2495, file: !118, line: 1037, type: !21)
!2502 = !DILocation(line: 1036, column: 30, scope: !2495)
!2503 = !DILocation(line: 1036, column: 54, scope: !2495)
!2504 = !DILocation(line: 1037, column: 30, scope: !2495)
!2505 = !DILocation(line: 1018, column: 24, scope: !2422, inlinedAt: !2506)
!2506 = distinct !DILocation(line: 1039, column: 10, scope: !2495)
!2507 = !DILocation(line: 1018, column: 39, scope: !2422, inlinedAt: !2506)
!2508 = !DILocation(line: 1019, column: 32, scope: !2422, inlinedAt: !2506)
!2509 = !DILocation(line: 1019, column: 57, scope: !2422, inlinedAt: !2506)
!2510 = !DILocation(line: 1026, column: 28, scope: !2435, inlinedAt: !2511)
!2511 = distinct !DILocation(line: 1021, column: 10, scope: !2422, inlinedAt: !2506)
!2512 = !DILocation(line: 1026, column: 43, scope: !2435, inlinedAt: !2511)
!2513 = !DILocation(line: 1027, column: 36, scope: !2435, inlinedAt: !2511)
!2514 = !DILocation(line: 1028, column: 36, scope: !2435, inlinedAt: !2511)
!2515 = !DILocation(line: 1028, column: 48, scope: !2435, inlinedAt: !2511)
!2516 = !DILocation(line: 1030, column: 3, scope: !2435, inlinedAt: !2511)
!2517 = !DILocation(line: 1030, column: 30, scope: !2435, inlinedAt: !2511)
!2518 = !DILocation(line: 1030, column: 26, scope: !2435, inlinedAt: !2511)
!2519 = !DILocation(line: 179, column: 45, scope: !976, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 1031, column: 3, scope: !2435, inlinedAt: !2511)
!2521 = !DILocation(line: 180, column: 33, scope: !976, inlinedAt: !2520)
!2522 = !DILocation(line: 180, column: 57, scope: !976, inlinedAt: !2520)
!2523 = !DILocation(line: 184, column: 6, scope: !976, inlinedAt: !2520)
!2524 = !DILocation(line: 184, column: 12, scope: !976, inlinedAt: !2520)
!2525 = !DILocation(line: 185, column: 8, scope: !992, inlinedAt: !2520)
!2526 = !DILocation(line: 185, column: 23, scope: !992, inlinedAt: !2520)
!2527 = !DILocation(line: 185, column: 19, scope: !992, inlinedAt: !2520)
!2528 = !DILocation(line: 186, column: 5, scope: !992, inlinedAt: !2520)
!2529 = !DILocation(line: 187, column: 6, scope: !976, inlinedAt: !2520)
!2530 = !DILocation(line: 187, column: 17, scope: !976, inlinedAt: !2520)
!2531 = !DILocation(line: 188, column: 6, scope: !976, inlinedAt: !2520)
!2532 = !DILocation(line: 188, column: 18, scope: !976, inlinedAt: !2520)
!2533 = !DILocation(line: 1032, column: 10, scope: !2435, inlinedAt: !2511)
!2534 = !DILocation(line: 1033, column: 1, scope: !2435, inlinedAt: !2511)
!2535 = !DILocation(line: 1039, column: 3, scope: !2495)
!2536 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !118, file: !118, line: 1043, type: !2537, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2539)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!82, !21, !21, !21, !112}
!2539 = !{!2540, !2541, !2542, !2543}
!2540 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2536, file: !118, line: 1043, type: !21)
!2541 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2536, file: !118, line: 1043, type: !21)
!2542 = !DILocalVariable(name: "arg", arg: 3, scope: !2536, file: !118, line: 1044, type: !21)
!2543 = !DILocalVariable(name: "argsize", arg: 4, scope: !2536, file: !118, line: 1044, type: !112)
!2544 = !DILocation(line: 1043, column: 34, scope: !2536)
!2545 = !DILocation(line: 1043, column: 58, scope: !2536)
!2546 = !DILocation(line: 1044, column: 34, scope: !2536)
!2547 = !DILocation(line: 1044, column: 46, scope: !2536)
!2548 = !DILocation(line: 1026, column: 28, scope: !2435, inlinedAt: !2549)
!2549 = distinct !DILocation(line: 1046, column: 10, scope: !2536)
!2550 = !DILocation(line: 1026, column: 43, scope: !2435, inlinedAt: !2549)
!2551 = !DILocation(line: 1027, column: 36, scope: !2435, inlinedAt: !2549)
!2552 = !DILocation(line: 1028, column: 36, scope: !2435, inlinedAt: !2549)
!2553 = !DILocation(line: 1028, column: 48, scope: !2435, inlinedAt: !2549)
!2554 = !DILocation(line: 1030, column: 3, scope: !2435, inlinedAt: !2549)
!2555 = !DILocation(line: 1030, column: 30, scope: !2435, inlinedAt: !2549)
!2556 = !DILocation(line: 1030, column: 26, scope: !2435, inlinedAt: !2549)
!2557 = !DILocation(line: 179, column: 45, scope: !976, inlinedAt: !2558)
!2558 = distinct !DILocation(line: 1031, column: 3, scope: !2435, inlinedAt: !2549)
!2559 = !DILocation(line: 180, column: 33, scope: !976, inlinedAt: !2558)
!2560 = !DILocation(line: 180, column: 57, scope: !976, inlinedAt: !2558)
!2561 = !DILocation(line: 184, column: 6, scope: !976, inlinedAt: !2558)
!2562 = !DILocation(line: 184, column: 12, scope: !976, inlinedAt: !2558)
!2563 = !DILocation(line: 185, column: 8, scope: !992, inlinedAt: !2558)
!2564 = !DILocation(line: 185, column: 23, scope: !992, inlinedAt: !2558)
!2565 = !DILocation(line: 185, column: 19, scope: !992, inlinedAt: !2558)
!2566 = !DILocation(line: 186, column: 5, scope: !992, inlinedAt: !2558)
!2567 = !DILocation(line: 187, column: 6, scope: !976, inlinedAt: !2558)
!2568 = !DILocation(line: 187, column: 17, scope: !976, inlinedAt: !2558)
!2569 = !DILocation(line: 188, column: 6, scope: !976, inlinedAt: !2558)
!2570 = !DILocation(line: 188, column: 18, scope: !976, inlinedAt: !2558)
!2571 = !DILocation(line: 1032, column: 10, scope: !2435, inlinedAt: !2549)
!2572 = !DILocation(line: 1033, column: 1, scope: !2435, inlinedAt: !2549)
!2573 = !DILocation(line: 1046, column: 3, scope: !2536)
!2574 = distinct !DISubprogram(name: "quote_n_mem", scope: !118, file: !118, line: 1061, type: !2575, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2577)
!2575 = !DISubroutineType(types: !2576)
!2576 = !{!21, !33, !21, !112}
!2577 = !{!2578, !2579, !2580}
!2578 = !DILocalVariable(name: "n", arg: 1, scope: !2574, file: !118, line: 1061, type: !33)
!2579 = !DILocalVariable(name: "arg", arg: 2, scope: !2574, file: !118, line: 1061, type: !21)
!2580 = !DILocalVariable(name: "argsize", arg: 3, scope: !2574, file: !118, line: 1061, type: !112)
!2581 = !DILocation(line: 1061, column: 18, scope: !2574)
!2582 = !DILocation(line: 1061, column: 33, scope: !2574)
!2583 = !DILocation(line: 1061, column: 45, scope: !2574)
!2584 = !DILocation(line: 1063, column: 10, scope: !2574)
!2585 = !DILocation(line: 1063, column: 3, scope: !2574)
!2586 = distinct !DISubprogram(name: "quote_mem", scope: !118, file: !118, line: 1067, type: !2587, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2589)
!2587 = !DISubroutineType(types: !2588)
!2588 = !{!21, !21, !112}
!2589 = !{!2590, !2591}
!2590 = !DILocalVariable(name: "arg", arg: 1, scope: !2586, file: !118, line: 1067, type: !21)
!2591 = !DILocalVariable(name: "argsize", arg: 2, scope: !2586, file: !118, line: 1067, type: !112)
!2592 = !DILocation(line: 1067, column: 24, scope: !2586)
!2593 = !DILocation(line: 1067, column: 36, scope: !2586)
!2594 = !DILocation(line: 1061, column: 18, scope: !2574, inlinedAt: !2595)
!2595 = distinct !DILocation(line: 1069, column: 10, scope: !2586)
!2596 = !DILocation(line: 1061, column: 33, scope: !2574, inlinedAt: !2595)
!2597 = !DILocation(line: 1061, column: 45, scope: !2574, inlinedAt: !2595)
!2598 = !DILocation(line: 1063, column: 10, scope: !2574, inlinedAt: !2595)
!2599 = !DILocation(line: 1069, column: 3, scope: !2586)
!2600 = distinct !DISubprogram(name: "quote_n", scope: !118, file: !118, line: 1073, type: !2601, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2603)
!2601 = !DISubroutineType(types: !2602)
!2602 = !{!21, !33, !21}
!2603 = !{!2604, !2605}
!2604 = !DILocalVariable(name: "n", arg: 1, scope: !2600, file: !118, line: 1073, type: !33)
!2605 = !DILocalVariable(name: "arg", arg: 2, scope: !2600, file: !118, line: 1073, type: !21)
!2606 = !DILocation(line: 1073, column: 14, scope: !2600)
!2607 = !DILocation(line: 1073, column: 29, scope: !2600)
!2608 = !DILocation(line: 1061, column: 18, scope: !2574, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 1075, column: 10, scope: !2600)
!2610 = !DILocation(line: 1061, column: 33, scope: !2574, inlinedAt: !2609)
!2611 = !DILocation(line: 1061, column: 45, scope: !2574, inlinedAt: !2609)
!2612 = !DILocation(line: 1063, column: 10, scope: !2574, inlinedAt: !2609)
!2613 = !DILocation(line: 1075, column: 3, scope: !2600)
!2614 = distinct !DISubprogram(name: "quote", scope: !118, file: !118, line: 1079, type: !2615, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !87, retainedNodes: !2617)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{!21, !21}
!2617 = !{!2618}
!2618 = !DILocalVariable(name: "arg", arg: 1, scope: !2614, file: !118, line: 1079, type: !21)
!2619 = !DILocation(line: 1079, column: 20, scope: !2614)
!2620 = !DILocation(line: 1073, column: 14, scope: !2600, inlinedAt: !2621)
!2621 = distinct !DILocation(line: 1081, column: 10, scope: !2614)
!2622 = !DILocation(line: 1073, column: 29, scope: !2600, inlinedAt: !2621)
!2623 = !DILocation(line: 1061, column: 18, scope: !2574, inlinedAt: !2624)
!2624 = distinct !DILocation(line: 1075, column: 10, scope: !2600, inlinedAt: !2621)
!2625 = !DILocation(line: 1061, column: 33, scope: !2574, inlinedAt: !2624)
!2626 = !DILocation(line: 1061, column: 45, scope: !2574, inlinedAt: !2624)
!2627 = !DILocation(line: 1063, column: 10, scope: !2574, inlinedAt: !2624)
!2628 = !DILocation(line: 1081, column: 3, scope: !2614)
!2629 = distinct !DISubprogram(name: "version_etc_arn", scope: !170, file: !170, line: 62, type: !2630, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2686)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{null, !2632, !21, !21, !21, !2685, !112}
!2632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2633, size: 64)
!2633 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2634, line: 7, baseType: !2635)
!2634 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2636, line: 49, size: 1728, elements: !2637)
!2636 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2637 = !{!2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2653, !2655, !2656, !2657, !2661, !2662, !2664, !2666, !2669, !2671, !2674, !2677, !2678, !2679, !2680, !2681}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2635, file: !2636, line: 51, baseType: !33, size: 32)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2635, file: !2636, line: 54, baseType: !82, size: 64, offset: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2635, file: !2636, line: 55, baseType: !82, size: 64, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2635, file: !2636, line: 56, baseType: !82, size: 64, offset: 192)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2635, file: !2636, line: 57, baseType: !82, size: 64, offset: 256)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2635, file: !2636, line: 58, baseType: !82, size: 64, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2635, file: !2636, line: 59, baseType: !82, size: 64, offset: 384)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2635, file: !2636, line: 60, baseType: !82, size: 64, offset: 448)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2635, file: !2636, line: 61, baseType: !82, size: 64, offset: 512)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2635, file: !2636, line: 64, baseType: !82, size: 64, offset: 576)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2635, file: !2636, line: 65, baseType: !82, size: 64, offset: 640)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2635, file: !2636, line: 66, baseType: !82, size: 64, offset: 704)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2635, file: !2636, line: 68, baseType: !2651, size: 64, offset: 768)
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2636, line: 36, flags: DIFlagFwdDecl)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2635, file: !2636, line: 70, baseType: !2654, size: 64, offset: 832)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2635, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2635, file: !2636, line: 72, baseType: !33, size: 32, offset: 896)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2635, file: !2636, line: 73, baseType: !33, size: 32, offset: 928)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2635, file: !2636, line: 74, baseType: !2658, size: 64, offset: 960)
!2658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2659, line: 150, baseType: !2660)
!2659 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2660 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2635, file: !2636, line: 77, baseType: !111, size: 16, offset: 1024)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2635, file: !2636, line: 78, baseType: !2663, size: 8, offset: 1040)
!2663 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2635, file: !2636, line: 79, baseType: !2665, size: 8, offset: 1048)
!2665 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 8, elements: !37)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2635, file: !2636, line: 81, baseType: !2667, size: 64, offset: 1088)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2636, line: 43, baseType: null)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2635, file: !2636, line: 89, baseType: !2670, size: 64, offset: 1152)
!2670 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2659, line: 151, baseType: !2660)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2635, file: !2636, line: 91, baseType: !2672, size: 64, offset: 1216)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2636, line: 37, flags: DIFlagFwdDecl)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2635, file: !2636, line: 92, baseType: !2675, size: 64, offset: 1280)
!2675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2676, size: 64)
!2676 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2636, line: 38, flags: DIFlagFwdDecl)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2635, file: !2636, line: 93, baseType: !2654, size: 64, offset: 1344)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2635, file: !2636, line: 94, baseType: !24, size: 64, offset: 1408)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2635, file: !2636, line: 95, baseType: !112, size: 64, offset: 1472)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2635, file: !2636, line: 96, baseType: !33, size: 32, offset: 1536)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2635, file: !2636, line: 98, baseType: !2682, size: 160, offset: 1568)
!2682 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 160, elements: !2683)
!2683 = !{!2684}
!2684 = !DISubrange(count: 20)
!2685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!2686 = !{!2687, !2688, !2689, !2690, !2691, !2692}
!2687 = !DILocalVariable(name: "stream", arg: 1, scope: !2629, file: !170, line: 62, type: !2632)
!2688 = !DILocalVariable(name: "command_name", arg: 2, scope: !2629, file: !170, line: 63, type: !21)
!2689 = !DILocalVariable(name: "package", arg: 3, scope: !2629, file: !170, line: 63, type: !21)
!2690 = !DILocalVariable(name: "version", arg: 4, scope: !2629, file: !170, line: 64, type: !21)
!2691 = !DILocalVariable(name: "authors", arg: 5, scope: !2629, file: !170, line: 65, type: !2685)
!2692 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2629, file: !170, line: 65, type: !112)
!2693 = !DILocation(line: 62, column: 24, scope: !2629)
!2694 = !DILocation(line: 63, column: 30, scope: !2629)
!2695 = !DILocation(line: 63, column: 56, scope: !2629)
!2696 = !DILocation(line: 64, column: 30, scope: !2629)
!2697 = !DILocation(line: 65, column: 39, scope: !2629)
!2698 = !DILocation(line: 65, column: 55, scope: !2629)
!2699 = !DILocation(line: 67, column: 7, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2629, file: !170, line: 67, column: 7)
!2701 = !DILocation(line: 67, column: 7, scope: !2629)
!2702 = !DILocation(line: 68, column: 5, scope: !2700)
!2703 = !DILocation(line: 70, column: 5, scope: !2700)
!2704 = !DILocation(line: 84, column: 3, scope: !2629)
!2705 = !DILocation(line: 86, column: 3, scope: !2629)
!2706 = !DILocation(line: 95, column: 3, scope: !2629)
!2707 = !DILocation(line: 99, column: 7, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2629, file: !170, line: 96, column: 5)
!2709 = !DILocation(line: 102, column: 7, scope: !2708)
!2710 = !DILocation(line: 103, column: 7, scope: !2708)
!2711 = !DILocation(line: 106, column: 7, scope: !2708)
!2712 = !DILocation(line: 107, column: 7, scope: !2708)
!2713 = !DILocation(line: 110, column: 7, scope: !2708)
!2714 = !DILocation(line: 112, column: 7, scope: !2708)
!2715 = !DILocation(line: 117, column: 7, scope: !2708)
!2716 = !DILocation(line: 119, column: 7, scope: !2708)
!2717 = !DILocation(line: 124, column: 7, scope: !2708)
!2718 = !DILocation(line: 126, column: 7, scope: !2708)
!2719 = !DILocation(line: 131, column: 7, scope: !2708)
!2720 = !DILocation(line: 134, column: 7, scope: !2708)
!2721 = !DILocation(line: 139, column: 7, scope: !2708)
!2722 = !DILocation(line: 142, column: 7, scope: !2708)
!2723 = !DILocation(line: 147, column: 7, scope: !2708)
!2724 = !DILocation(line: 151, column: 7, scope: !2708)
!2725 = !DILocation(line: 156, column: 7, scope: !2708)
!2726 = !DILocation(line: 160, column: 7, scope: !2708)
!2727 = !DILocation(line: 167, column: 7, scope: !2708)
!2728 = !DILocation(line: 171, column: 7, scope: !2708)
!2729 = !DILocation(line: 173, column: 1, scope: !2629)
!2730 = distinct !DISubprogram(name: "version_etc_ar", scope: !170, file: !170, line: 180, type: !2731, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2733)
!2731 = !DISubroutineType(types: !2732)
!2732 = !{null, !2632, !21, !21, !21, !2685}
!2733 = !{!2734, !2735, !2736, !2737, !2738, !2739}
!2734 = !DILocalVariable(name: "stream", arg: 1, scope: !2730, file: !170, line: 180, type: !2632)
!2735 = !DILocalVariable(name: "command_name", arg: 2, scope: !2730, file: !170, line: 181, type: !21)
!2736 = !DILocalVariable(name: "package", arg: 3, scope: !2730, file: !170, line: 181, type: !21)
!2737 = !DILocalVariable(name: "version", arg: 4, scope: !2730, file: !170, line: 182, type: !21)
!2738 = !DILocalVariable(name: "authors", arg: 5, scope: !2730, file: !170, line: 182, type: !2685)
!2739 = !DILocalVariable(name: "n_authors", scope: !2730, file: !170, line: 184, type: !112)
!2740 = !DILocation(line: 180, column: 23, scope: !2730)
!2741 = !DILocation(line: 181, column: 29, scope: !2730)
!2742 = !DILocation(line: 181, column: 55, scope: !2730)
!2743 = !DILocation(line: 182, column: 29, scope: !2730)
!2744 = !DILocation(line: 182, column: 59, scope: !2730)
!2745 = !DILocation(line: 184, column: 10, scope: !2730)
!2746 = !DILocation(line: 186, column: 8, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2730, file: !170, line: 186, column: 3)
!2748 = !DILocation(line: 0, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2747, file: !170, line: 186, column: 3)
!2750 = !DILocation(line: 186, column: 23, scope: !2749)
!2751 = !DILocation(line: 186, column: 3, scope: !2747)
!2752 = !DILocation(line: 186, column: 52, scope: !2749)
!2753 = distinct !{!2753, !2751, !2754}
!2754 = !DILocation(line: 187, column: 5, scope: !2747)
!2755 = !DILocation(line: 188, column: 3, scope: !2730)
!2756 = !DILocation(line: 189, column: 1, scope: !2730)
!2757 = distinct !DISubprogram(name: "version_etc_va", scope: !170, file: !170, line: 196, type: !2758, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2767)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null, !2632, !21, !21, !21, !2760}
!2760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2761, size: 64)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !167, line: 189, size: 192, elements: !2762)
!2762 = !{!2763, !2764, !2765, !2766}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2761, file: !167, line: 189, baseType: !7, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2761, file: !167, line: 189, baseType: !7, size: 32, offset: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2761, file: !167, line: 189, baseType: !24, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2761, file: !167, line: 189, baseType: !24, size: 64, offset: 128)
!2767 = !{!2768, !2769, !2770, !2771, !2772, !2773, !2774}
!2768 = !DILocalVariable(name: "stream", arg: 1, scope: !2757, file: !170, line: 196, type: !2632)
!2769 = !DILocalVariable(name: "command_name", arg: 2, scope: !2757, file: !170, line: 197, type: !21)
!2770 = !DILocalVariable(name: "package", arg: 3, scope: !2757, file: !170, line: 197, type: !21)
!2771 = !DILocalVariable(name: "version", arg: 4, scope: !2757, file: !170, line: 198, type: !21)
!2772 = !DILocalVariable(name: "authors", arg: 5, scope: !2757, file: !170, line: 198, type: !2760)
!2773 = !DILocalVariable(name: "n_authors", scope: !2757, file: !170, line: 200, type: !112)
!2774 = !DILocalVariable(name: "authtab", scope: !2757, file: !170, line: 201, type: !2775)
!2775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 640, elements: !121)
!2776 = !DILocation(line: 196, column: 23, scope: !2757)
!2777 = !DILocation(line: 197, column: 29, scope: !2757)
!2778 = !DILocation(line: 197, column: 55, scope: !2757)
!2779 = !DILocation(line: 198, column: 29, scope: !2757)
!2780 = !DILocation(line: 198, column: 46, scope: !2757)
!2781 = !DILocation(line: 201, column: 3, scope: !2757)
!2782 = !DILocation(line: 201, column: 15, scope: !2757)
!2783 = !DILocation(line: 200, column: 10, scope: !2757)
!2784 = !DILocation(line: 205, column: 35, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2786, file: !170, line: 203, column: 3)
!2786 = distinct !DILexicalBlock(scope: !2757, file: !170, line: 203, column: 3)
!2787 = !DILocation(line: 205, column: 14, scope: !2785)
!2788 = !DILocation(line: 205, column: 33, scope: !2785)
!2789 = !DILocation(line: 205, column: 67, scope: !2785)
!2790 = !DILocation(line: 203, column: 3, scope: !2786)
!2791 = !DILocation(line: 0, scope: !2785)
!2792 = !DILocation(line: 208, column: 3, scope: !2757)
!2793 = !DILocation(line: 210, column: 1, scope: !2757)
!2794 = distinct !DISubprogram(name: "version_etc", scope: !170, file: !170, line: 227, type: !2795, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !2797)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{null, !2632, !21, !21, !21, null}
!2797 = !{!2798, !2799, !2800, !2801, !2802}
!2798 = !DILocalVariable(name: "stream", arg: 1, scope: !2794, file: !170, line: 227, type: !2632)
!2799 = !DILocalVariable(name: "command_name", arg: 2, scope: !2794, file: !170, line: 228, type: !21)
!2800 = !DILocalVariable(name: "package", arg: 3, scope: !2794, file: !170, line: 228, type: !21)
!2801 = !DILocalVariable(name: "version", arg: 4, scope: !2794, file: !170, line: 229, type: !21)
!2802 = !DILocalVariable(name: "authors", scope: !2794, file: !170, line: 231, type: !2803)
!2803 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !811, line: 52, baseType: !2804)
!2804 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !813, line: 48, baseType: !2805)
!2805 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !167, line: 231, baseType: !2806)
!2806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2761, size: 192, elements: !37)
!2807 = !DILocation(line: 227, column: 20, scope: !2794)
!2808 = !DILocation(line: 228, column: 26, scope: !2794)
!2809 = !DILocation(line: 228, column: 52, scope: !2794)
!2810 = !DILocation(line: 229, column: 26, scope: !2794)
!2811 = !DILocation(line: 231, column: 3, scope: !2794)
!2812 = !DILocation(line: 231, column: 11, scope: !2794)
!2813 = !DILocation(line: 233, column: 3, scope: !2794)
!2814 = !DILocation(line: 234, column: 3, scope: !2794)
!2815 = !DILocation(line: 235, column: 3, scope: !2794)
!2816 = !DILocation(line: 236, column: 1, scope: !2794)
!2817 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !170, file: !170, line: 239, type: !757, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !166, retainedNodes: !43)
!2818 = !DILocation(line: 245, column: 3, scope: !2817)
!2819 = !DILocation(line: 251, column: 3, scope: !2817)
!2820 = !DILocation(line: 256, column: 3, scope: !2817)
!2821 = !DILocation(line: 258, column: 1, scope: !2817)
!2822 = distinct !DISubprogram(name: "xnmalloc", scope: !178, file: !178, line: 99, type: !2823, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !2825)
!2823 = !DISubroutineType(types: !2824)
!2824 = !{!24, !112, !112}
!2825 = !{!2826, !2827}
!2826 = !DILocalVariable(name: "n", arg: 1, scope: !2822, file: !178, line: 99, type: !112)
!2827 = !DILocalVariable(name: "s", arg: 2, scope: !2822, file: !178, line: 99, type: !112)
!2828 = !DILocation(line: 99, column: 18, scope: !2822)
!2829 = !DILocation(line: 99, column: 28, scope: !2822)
!2830 = !DILocation(line: 101, column: 7, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2822, file: !178, line: 101, column: 7)
!2832 = !DILocation(line: 101, column: 7, scope: !2822)
!2833 = !DILocation(line: 102, column: 5, scope: !2831)
!2834 = !DILocation(line: 103, column: 21, scope: !2822)
!2835 = !DILocalVariable(name: "n", arg: 1, scope: !2836, file: !2837, line: 39, type: !112)
!2836 = distinct !DISubprogram(name: "xmalloc", scope: !2837, file: !2837, line: 39, type: !2838, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !2840)
!2837 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!24, !112}
!2840 = !{!2835, !2841}
!2841 = !DILocalVariable(name: "p", scope: !2836, file: !2837, line: 41, type: !24)
!2842 = !DILocation(line: 39, column: 17, scope: !2836, inlinedAt: !2843)
!2843 = distinct !DILocation(line: 103, column: 10, scope: !2822)
!2844 = !DILocation(line: 41, column: 13, scope: !2836, inlinedAt: !2843)
!2845 = !DILocation(line: 41, column: 9, scope: !2836, inlinedAt: !2843)
!2846 = !DILocation(line: 42, column: 8, scope: !2847, inlinedAt: !2843)
!2847 = distinct !DILexicalBlock(scope: !2836, file: !2837, line: 42, column: 7)
!2848 = !DILocation(line: 42, column: 15, scope: !2847, inlinedAt: !2843)
!2849 = !DILocation(line: 42, column: 10, scope: !2847, inlinedAt: !2843)
!2850 = !DILocation(line: 43, column: 5, scope: !2847, inlinedAt: !2843)
!2851 = !DILocation(line: 103, column: 3, scope: !2822)
!2852 = !DILocation(line: 39, column: 17, scope: !2836)
!2853 = !DILocation(line: 41, column: 13, scope: !2836)
!2854 = !DILocation(line: 41, column: 9, scope: !2836)
!2855 = !DILocation(line: 42, column: 8, scope: !2847)
!2856 = !DILocation(line: 42, column: 15, scope: !2847)
!2857 = !DILocation(line: 42, column: 10, scope: !2847)
!2858 = !DILocation(line: 43, column: 5, scope: !2847)
!2859 = !DILocation(line: 44, column: 3, scope: !2836)
!2860 = distinct !DISubprogram(name: "xnrealloc", scope: !178, file: !178, line: 112, type: !2861, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !2863)
!2861 = !DISubroutineType(types: !2862)
!2862 = !{!24, !24, !112, !112}
!2863 = !{!2864, !2865, !2866}
!2864 = !DILocalVariable(name: "p", arg: 1, scope: !2860, file: !178, line: 112, type: !24)
!2865 = !DILocalVariable(name: "n", arg: 2, scope: !2860, file: !178, line: 112, type: !112)
!2866 = !DILocalVariable(name: "s", arg: 3, scope: !2860, file: !178, line: 112, type: !112)
!2867 = !DILocation(line: 112, column: 18, scope: !2860)
!2868 = !DILocation(line: 112, column: 28, scope: !2860)
!2869 = !DILocation(line: 112, column: 38, scope: !2860)
!2870 = !DILocation(line: 114, column: 7, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2860, file: !178, line: 114, column: 7)
!2872 = !DILocation(line: 114, column: 7, scope: !2860)
!2873 = !DILocation(line: 115, column: 5, scope: !2871)
!2874 = !DILocation(line: 116, column: 25, scope: !2860)
!2875 = !DILocalVariable(name: "p", arg: 1, scope: !2876, file: !2837, line: 51, type: !24)
!2876 = distinct !DISubprogram(name: "xrealloc", scope: !2837, file: !2837, line: 51, type: !2877, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !2879)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!24, !24, !112}
!2879 = !{!2875, !2880}
!2880 = !DILocalVariable(name: "n", arg: 2, scope: !2876, file: !2837, line: 51, type: !112)
!2881 = !DILocation(line: 51, column: 17, scope: !2876, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 116, column: 10, scope: !2860)
!2883 = !DILocation(line: 51, column: 27, scope: !2876, inlinedAt: !2882)
!2884 = !DILocation(line: 53, column: 8, scope: !2885, inlinedAt: !2882)
!2885 = distinct !DILexicalBlock(scope: !2876, file: !2837, line: 53, column: 7)
!2886 = !DILocation(line: 53, column: 13, scope: !2885, inlinedAt: !2882)
!2887 = !DILocation(line: 53, column: 10, scope: !2885, inlinedAt: !2882)
!2888 = !DILocation(line: 57, column: 7, scope: !2889, inlinedAt: !2882)
!2889 = distinct !DILexicalBlock(scope: !2885, file: !2837, line: 54, column: 5)
!2890 = !DILocation(line: 58, column: 7, scope: !2889, inlinedAt: !2882)
!2891 = !DILocation(line: 61, column: 7, scope: !2876, inlinedAt: !2882)
!2892 = !DILocation(line: 62, column: 8, scope: !2893, inlinedAt: !2882)
!2893 = distinct !DILexicalBlock(scope: !2876, file: !2837, line: 62, column: 7)
!2894 = !DILocation(line: 62, column: 13, scope: !2893, inlinedAt: !2882)
!2895 = !DILocation(line: 62, column: 10, scope: !2893, inlinedAt: !2882)
!2896 = !DILocation(line: 63, column: 5, scope: !2893, inlinedAt: !2882)
!2897 = !DILocation(line: 0, scope: !2876, inlinedAt: !2882)
!2898 = !DILocation(line: 116, column: 3, scope: !2860)
!2899 = !DILocation(line: 51, column: 17, scope: !2876)
!2900 = !DILocation(line: 51, column: 27, scope: !2876)
!2901 = !DILocation(line: 53, column: 8, scope: !2885)
!2902 = !DILocation(line: 53, column: 13, scope: !2885)
!2903 = !DILocation(line: 53, column: 10, scope: !2885)
!2904 = !DILocation(line: 57, column: 7, scope: !2889)
!2905 = !DILocation(line: 58, column: 7, scope: !2889)
!2906 = !DILocation(line: 61, column: 7, scope: !2876)
!2907 = !DILocation(line: 62, column: 8, scope: !2893)
!2908 = !DILocation(line: 62, column: 13, scope: !2893)
!2909 = !DILocation(line: 62, column: 10, scope: !2893)
!2910 = !DILocation(line: 63, column: 5, scope: !2893)
!2911 = !DILocation(line: 0, scope: !2876)
!2912 = !DILocation(line: 65, column: 1, scope: !2876)
!2913 = !DILocation(line: 174, column: 19, scope: !179)
!2914 = !DILocation(line: 174, column: 30, scope: !179)
!2915 = !DILocation(line: 174, column: 41, scope: !179)
!2916 = !DILocation(line: 176, column: 14, scope: !179)
!2917 = !DILocation(line: 176, column: 10, scope: !179)
!2918 = !DILocation(line: 178, column: 9, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !179, file: !178, line: 178, column: 7)
!2920 = !DILocation(line: 178, column: 7, scope: !179)
!2921 = !DILocation(line: 180, column: 13, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !178, line: 180, column: 11)
!2923 = distinct !DILexicalBlock(scope: !2919, file: !178, line: 179, column: 5)
!2924 = !DILocation(line: 180, column: 11, scope: !2923)
!2925 = !DILocation(line: 188, column: 30, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2922, file: !178, line: 181, column: 9)
!2927 = !DILocation(line: 189, column: 16, scope: !2926)
!2928 = !DILocation(line: 189, column: 13, scope: !2926)
!2929 = !DILocation(line: 190, column: 9, scope: !2926)
!2930 = !DILocation(line: 0, scope: !2926)
!2931 = !DILocation(line: 191, column: 11, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2923, file: !178, line: 191, column: 11)
!2933 = !DILocation(line: 191, column: 11, scope: !2923)
!2934 = !DILocation(line: 206, column: 7, scope: !179)
!2935 = !DILocation(line: 207, column: 25, scope: !179)
!2936 = !DILocation(line: 51, column: 17, scope: !2876, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 207, column: 10, scope: !179)
!2938 = !DILocation(line: 51, column: 27, scope: !2876, inlinedAt: !2937)
!2939 = !DILocation(line: 53, column: 10, scope: !2885, inlinedAt: !2937)
!2940 = !DILocation(line: 192, column: 9, scope: !2932)
!2941 = !DILocation(line: 200, column: 69, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2943, file: !178, line: 200, column: 11)
!2943 = distinct !DILexicalBlock(scope: !2919, file: !178, line: 195, column: 5)
!2944 = !DILocation(line: 201, column: 11, scope: !2942)
!2945 = !DILocation(line: 200, column: 11, scope: !2943)
!2946 = !DILocation(line: 202, column: 9, scope: !2942)
!2947 = !DILocation(line: 203, column: 14, scope: !2943)
!2948 = !DILocation(line: 203, column: 18, scope: !2943)
!2949 = !DILocation(line: 203, column: 9, scope: !2943)
!2950 = !DILocation(line: 53, column: 8, scope: !2885, inlinedAt: !2937)
!2951 = !DILocation(line: 57, column: 7, scope: !2889, inlinedAt: !2937)
!2952 = !DILocation(line: 58, column: 7, scope: !2889, inlinedAt: !2937)
!2953 = !DILocation(line: 61, column: 7, scope: !2876, inlinedAt: !2937)
!2954 = !DILocation(line: 62, column: 8, scope: !2893, inlinedAt: !2937)
!2955 = !DILocation(line: 62, column: 13, scope: !2893, inlinedAt: !2937)
!2956 = !DILocation(line: 62, column: 10, scope: !2893, inlinedAt: !2937)
!2957 = !DILocation(line: 63, column: 5, scope: !2893, inlinedAt: !2937)
!2958 = !DILocation(line: 0, scope: !2876, inlinedAt: !2937)
!2959 = !DILocation(line: 207, column: 3, scope: !179)
!2960 = distinct !DISubprogram(name: "xcharalloc", scope: !178, file: !178, line: 216, type: !1913, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !2961)
!2961 = !{!2962}
!2962 = !DILocalVariable(name: "n", arg: 1, scope: !2960, file: !178, line: 216, type: !112)
!2963 = !DILocation(line: 216, column: 20, scope: !2960)
!2964 = !DILocation(line: 39, column: 17, scope: !2836, inlinedAt: !2965)
!2965 = distinct !DILocation(line: 218, column: 10, scope: !2960)
!2966 = !DILocation(line: 41, column: 13, scope: !2836, inlinedAt: !2965)
!2967 = !DILocation(line: 41, column: 9, scope: !2836, inlinedAt: !2965)
!2968 = !DILocation(line: 42, column: 8, scope: !2847, inlinedAt: !2965)
!2969 = !DILocation(line: 42, column: 15, scope: !2847, inlinedAt: !2965)
!2970 = !DILocation(line: 42, column: 10, scope: !2847, inlinedAt: !2965)
!2971 = !DILocation(line: 43, column: 5, scope: !2847, inlinedAt: !2965)
!2972 = !DILocation(line: 218, column: 3, scope: !2960)
!2973 = distinct !DISubprogram(name: "x2realloc", scope: !2837, file: !2837, line: 74, type: !2974, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !2976)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!24, !24, !182}
!2976 = !{!2977, !2978}
!2977 = !DILocalVariable(name: "p", arg: 1, scope: !2973, file: !2837, line: 74, type: !24)
!2978 = !DILocalVariable(name: "pn", arg: 2, scope: !2973, file: !2837, line: 74, type: !182)
!2979 = !DILocation(line: 74, column: 18, scope: !2973)
!2980 = !DILocation(line: 74, column: 29, scope: !2973)
!2981 = !DILocation(line: 174, column: 19, scope: !179, inlinedAt: !2982)
!2982 = distinct !DILocation(line: 76, column: 10, scope: !2973)
!2983 = !DILocation(line: 174, column: 30, scope: !179, inlinedAt: !2982)
!2984 = !DILocation(line: 174, column: 41, scope: !179, inlinedAt: !2982)
!2985 = !DILocation(line: 176, column: 14, scope: !179, inlinedAt: !2982)
!2986 = !DILocation(line: 176, column: 10, scope: !179, inlinedAt: !2982)
!2987 = !DILocation(line: 178, column: 9, scope: !2919, inlinedAt: !2982)
!2988 = !DILocation(line: 178, column: 7, scope: !179, inlinedAt: !2982)
!2989 = !DILocation(line: 180, column: 13, scope: !2922, inlinedAt: !2982)
!2990 = !DILocation(line: 180, column: 11, scope: !2923, inlinedAt: !2982)
!2991 = !DILocation(line: 191, column: 11, scope: !2932, inlinedAt: !2982)
!2992 = !DILocation(line: 191, column: 11, scope: !2923, inlinedAt: !2982)
!2993 = !DILocation(line: 206, column: 7, scope: !179, inlinedAt: !2982)
!2994 = !DILocation(line: 51, column: 17, scope: !2876, inlinedAt: !2995)
!2995 = distinct !DILocation(line: 207, column: 10, scope: !179, inlinedAt: !2982)
!2996 = !DILocation(line: 51, column: 27, scope: !2876, inlinedAt: !2995)
!2997 = !DILocation(line: 53, column: 10, scope: !2885, inlinedAt: !2995)
!2998 = !DILocation(line: 192, column: 9, scope: !2932, inlinedAt: !2982)
!2999 = !DILocation(line: 201, column: 11, scope: !2942, inlinedAt: !2982)
!3000 = !DILocation(line: 200, column: 11, scope: !2943, inlinedAt: !2982)
!3001 = !DILocation(line: 202, column: 9, scope: !2942, inlinedAt: !2982)
!3002 = !DILocation(line: 203, column: 14, scope: !2943, inlinedAt: !2982)
!3003 = !DILocation(line: 203, column: 18, scope: !2943, inlinedAt: !2982)
!3004 = !DILocation(line: 203, column: 9, scope: !2943, inlinedAt: !2982)
!3005 = !DILocation(line: 53, column: 8, scope: !2885, inlinedAt: !2995)
!3006 = !DILocation(line: 57, column: 7, scope: !2889, inlinedAt: !2995)
!3007 = !DILocation(line: 58, column: 7, scope: !2889, inlinedAt: !2995)
!3008 = !DILocation(line: 61, column: 7, scope: !2876, inlinedAt: !2995)
!3009 = !DILocation(line: 62, column: 8, scope: !2893, inlinedAt: !2995)
!3010 = !DILocation(line: 62, column: 13, scope: !2893, inlinedAt: !2995)
!3011 = !DILocation(line: 62, column: 10, scope: !2893, inlinedAt: !2995)
!3012 = !DILocation(line: 63, column: 5, scope: !2893, inlinedAt: !2995)
!3013 = !DILocation(line: 0, scope: !2876, inlinedAt: !2995)
!3014 = !DILocation(line: 76, column: 3, scope: !2973)
!3015 = distinct !DISubprogram(name: "xzalloc", scope: !2837, file: !2837, line: 84, type: !2838, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !3016)
!3016 = !{!3017}
!3017 = !DILocalVariable(name: "s", arg: 1, scope: !3015, file: !2837, line: 84, type: !112)
!3018 = !DILocation(line: 84, column: 17, scope: !3015)
!3019 = !DILocation(line: 39, column: 17, scope: !2836, inlinedAt: !3020)
!3020 = distinct !DILocation(line: 86, column: 18, scope: !3015)
!3021 = !DILocation(line: 41, column: 13, scope: !2836, inlinedAt: !3020)
!3022 = !DILocation(line: 41, column: 9, scope: !2836, inlinedAt: !3020)
!3023 = !DILocation(line: 42, column: 8, scope: !2847, inlinedAt: !3020)
!3024 = !DILocation(line: 42, column: 15, scope: !2847, inlinedAt: !3020)
!3025 = !DILocation(line: 42, column: 10, scope: !2847, inlinedAt: !3020)
!3026 = !DILocation(line: 43, column: 5, scope: !2847, inlinedAt: !3020)
!3027 = !DILocation(line: 86, column: 10, scope: !3015)
!3028 = !DILocation(line: 86, column: 3, scope: !3015)
!3029 = distinct !DISubprogram(name: "xcalloc", scope: !2837, file: !2837, line: 93, type: !2823, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !3030)
!3030 = !{!3031, !3032, !3033}
!3031 = !DILocalVariable(name: "n", arg: 1, scope: !3029, file: !2837, line: 93, type: !112)
!3032 = !DILocalVariable(name: "s", arg: 2, scope: !3029, file: !2837, line: 93, type: !112)
!3033 = !DILocalVariable(name: "p", scope: !3029, file: !2837, line: 95, type: !24)
!3034 = !DILocation(line: 93, column: 17, scope: !3029)
!3035 = !DILocation(line: 93, column: 27, scope: !3029)
!3036 = !DILocation(line: 100, column: 7, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3029, file: !2837, line: 100, column: 7)
!3038 = !DILocation(line: 101, column: 7, scope: !3037)
!3039 = !DILocation(line: 101, column: 18, scope: !3037)
!3040 = !DILocation(line: 95, column: 9, scope: !3029)
!3041 = !DILocation(line: 101, column: 16, scope: !3037)
!3042 = !DILocation(line: 100, column: 7, scope: !3029)
!3043 = !DILocation(line: 102, column: 5, scope: !3037)
!3044 = !DILocation(line: 103, column: 3, scope: !3029)
!3045 = distinct !DISubprogram(name: "xmemdup", scope: !2837, file: !2837, line: 111, type: !3046, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !3050)
!3046 = !DISubroutineType(types: !3047)
!3047 = !{!24, !3048, !112}
!3048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3049, size: 64)
!3049 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3050 = !{!3051, !3052}
!3051 = !DILocalVariable(name: "p", arg: 1, scope: !3045, file: !2837, line: 111, type: !3048)
!3052 = !DILocalVariable(name: "s", arg: 2, scope: !3045, file: !2837, line: 111, type: !112)
!3053 = !DILocation(line: 111, column: 22, scope: !3045)
!3054 = !DILocation(line: 111, column: 32, scope: !3045)
!3055 = !DILocation(line: 39, column: 17, scope: !2836, inlinedAt: !3056)
!3056 = distinct !DILocation(line: 113, column: 18, scope: !3045)
!3057 = !DILocation(line: 41, column: 13, scope: !2836, inlinedAt: !3056)
!3058 = !DILocation(line: 41, column: 9, scope: !2836, inlinedAt: !3056)
!3059 = !DILocation(line: 42, column: 8, scope: !2847, inlinedAt: !3056)
!3060 = !DILocation(line: 42, column: 15, scope: !2847, inlinedAt: !3056)
!3061 = !DILocation(line: 42, column: 10, scope: !2847, inlinedAt: !3056)
!3062 = !DILocation(line: 43, column: 5, scope: !2847, inlinedAt: !3056)
!3063 = !DILocation(line: 113, column: 10, scope: !3045)
!3064 = !DILocation(line: 113, column: 3, scope: !3045)
!3065 = distinct !DISubprogram(name: "xstrdup", scope: !2837, file: !2837, line: 119, type: !2119, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !174, retainedNodes: !3066)
!3066 = !{!3067}
!3067 = !DILocalVariable(name: "string", arg: 1, scope: !3065, file: !2837, line: 119, type: !21)
!3068 = !DILocation(line: 119, column: 22, scope: !3065)
!3069 = !DILocation(line: 121, column: 27, scope: !3065)
!3070 = !DILocation(line: 121, column: 43, scope: !3065)
!3071 = !DILocation(line: 111, column: 22, scope: !3045, inlinedAt: !3072)
!3072 = distinct !DILocation(line: 121, column: 10, scope: !3065)
!3073 = !DILocation(line: 111, column: 32, scope: !3045, inlinedAt: !3072)
!3074 = !DILocation(line: 39, column: 17, scope: !2836, inlinedAt: !3075)
!3075 = distinct !DILocation(line: 113, column: 18, scope: !3045, inlinedAt: !3072)
!3076 = !DILocation(line: 41, column: 13, scope: !2836, inlinedAt: !3075)
!3077 = !DILocation(line: 41, column: 9, scope: !2836, inlinedAt: !3075)
!3078 = !DILocation(line: 42, column: 8, scope: !2847, inlinedAt: !3075)
!3079 = !DILocation(line: 42, column: 15, scope: !2847, inlinedAt: !3075)
!3080 = !DILocation(line: 42, column: 10, scope: !2847, inlinedAt: !3075)
!3081 = !DILocation(line: 43, column: 5, scope: !2847, inlinedAt: !3075)
!3082 = !DILocation(line: 113, column: 10, scope: !3045, inlinedAt: !3072)
!3083 = !DILocation(line: 121, column: 3, scope: !3065)
!3084 = distinct !DISubprogram(name: "xalloc_die", scope: !3085, file: !3085, line: 32, type: !757, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !191, retainedNodes: !43)
!3085 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3086 = !DILocation(line: 34, column: 10, scope: !3084)
!3087 = !DILocation(line: 34, column: 33, scope: !3084)
!3088 = !DILocation(line: 34, column: 3, scope: !3084)
!3089 = !DILocation(line: 40, column: 3, scope: !3084)
!3090 = distinct !DISubprogram(name: "rpl_calloc", scope: !3091, file: !3091, line: 42, type: !2823, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !193, retainedNodes: !3092)
!3091 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3092 = !{!3093, !3094, !3095, !3096}
!3093 = !DILocalVariable(name: "n", arg: 1, scope: !3090, file: !3091, line: 42, type: !112)
!3094 = !DILocalVariable(name: "s", arg: 2, scope: !3090, file: !3091, line: 42, type: !112)
!3095 = !DILocalVariable(name: "result", scope: !3090, file: !3091, line: 44, type: !24)
!3096 = !DILocalVariable(name: "bytes", scope: !3097, file: !3091, line: 56, type: !112)
!3097 = distinct !DILexicalBlock(scope: !3098, file: !3091, line: 53, column: 5)
!3098 = distinct !DILexicalBlock(scope: !3090, file: !3091, line: 47, column: 7)
!3099 = !DILocation(line: 42, column: 20, scope: !3090)
!3100 = !DILocation(line: 42, column: 30, scope: !3090)
!3101 = !DILocation(line: 47, column: 9, scope: !3098)
!3102 = !DILocation(line: 47, column: 19, scope: !3098)
!3103 = !DILocation(line: 47, column: 14, scope: !3098)
!3104 = !DILocation(line: 56, column: 24, scope: !3097)
!3105 = !DILocation(line: 56, column: 14, scope: !3097)
!3106 = !DILocation(line: 57, column: 17, scope: !3107)
!3107 = distinct !DILexicalBlock(scope: !3097, file: !3091, line: 57, column: 11)
!3108 = !DILocation(line: 57, column: 21, scope: !3107)
!3109 = !DILocation(line: 57, column: 11, scope: !3097)
!3110 = !DILocation(line: 59, column: 11, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3107, file: !3091, line: 58, column: 9)
!3112 = !DILocation(line: 59, column: 17, scope: !3111)
!3113 = !DILocation(line: 65, column: 12, scope: !3090)
!3114 = !DILocation(line: 44, column: 9, scope: !3090)
!3115 = !DILocation(line: 72, column: 3, scope: !3090)
!3116 = !DILocation(line: 0, scope: !3111)
!3117 = !DILocation(line: 73, column: 1, scope: !3090)
!3118 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3119, file: !3119, line: 385, type: !3120, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !195, retainedNodes: !3134)
!3119 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3120 = !DISubroutineType(types: !3121)
!3121 = !{!112, !3122, !21, !112, !3123}
!3122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!3123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3124, size: 64)
!3124 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1075, line: 6, baseType: !3125)
!3125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1077, line: 21, baseType: !3126)
!3126 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1077, line: 13, size: 64, elements: !3127)
!3127 = !{!3128, !3129}
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3126, file: !1077, line: 15, baseType: !33, size: 32)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3126, file: !1077, line: 20, baseType: !3130, size: 32, offset: 32)
!3130 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3126, file: !1077, line: 16, size: 32, elements: !3131)
!3131 = !{!3132, !3133}
!3132 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3130, file: !1077, line: 18, baseType: !7, size: 32)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3130, file: !1077, line: 19, baseType: !1086, size: 32)
!3134 = !{!3135, !3136, !3137, !3138, !3139, !3140, !3141}
!3135 = !DILocalVariable(name: "pwc", arg: 1, scope: !3118, file: !3119, line: 385, type: !3122)
!3136 = !DILocalVariable(name: "s", arg: 2, scope: !3118, file: !3119, line: 385, type: !21)
!3137 = !DILocalVariable(name: "n", arg: 3, scope: !3118, file: !3119, line: 385, type: !112)
!3138 = !DILocalVariable(name: "ps", arg: 4, scope: !3118, file: !3119, line: 385, type: !3123)
!3139 = !DILocalVariable(name: "ret", scope: !3118, file: !3119, line: 387, type: !112)
!3140 = !DILocalVariable(name: "wc", scope: !3118, file: !3119, line: 388, type: !1091)
!3141 = !DILocalVariable(name: "uc", scope: !3142, file: !3119, line: 449, type: !935)
!3142 = distinct !DILexicalBlock(scope: !3143, file: !3119, line: 448, column: 5)
!3143 = distinct !DILexicalBlock(scope: !3118, file: !3119, line: 447, column: 7)
!3144 = !DILocation(line: 385, column: 23, scope: !3118)
!3145 = !DILocation(line: 385, column: 40, scope: !3118)
!3146 = !DILocation(line: 385, column: 50, scope: !3118)
!3147 = !DILocation(line: 385, column: 64, scope: !3118)
!3148 = !DILocation(line: 388, column: 3, scope: !3118)
!3149 = !DILocation(line: 404, column: 9, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3118, file: !3119, line: 404, column: 7)
!3151 = !DILocation(line: 404, column: 7, scope: !3118)
!3152 = !DILocation(line: 439, column: 9, scope: !3118)
!3153 = !DILocation(line: 387, column: 10, scope: !3118)
!3154 = !DILocation(line: 447, column: 19, scope: !3143)
!3155 = !DILocation(line: 447, column: 31, scope: !3143)
!3156 = !DILocation(line: 447, column: 26, scope: !3143)
!3157 = !DILocation(line: 447, column: 41, scope: !3143)
!3158 = !DILocation(line: 447, column: 7, scope: !3118)
!3159 = !DILocation(line: 449, column: 26, scope: !3142)
!3160 = !DILocation(line: 449, column: 21, scope: !3142)
!3161 = !DILocation(line: 450, column: 14, scope: !3142)
!3162 = !DILocation(line: 450, column: 12, scope: !3142)
!3163 = !DILocation(line: 0, scope: !3142)
!3164 = !DILocation(line: 456, column: 1, scope: !3118)
!3165 = distinct !DISubprogram(name: "close_stream", scope: !3166, file: !3166, line: 56, type: !3167, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !198, retainedNodes: !3203)
!3166 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!33, !3169}
!3169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3170, size: 64)
!3170 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2634, line: 7, baseType: !3171)
!3171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2636, line: 49, size: 1728, elements: !3172)
!3172 = !{!3173, !3174, !3175, !3176, !3177, !3178, !3179, !3180, !3181, !3182, !3183, !3184, !3185, !3186, !3188, !3189, !3190, !3191, !3192, !3193, !3194, !3195, !3196, !3197, !3198, !3199, !3200, !3201, !3202}
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3171, file: !2636, line: 51, baseType: !33, size: 32)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3171, file: !2636, line: 54, baseType: !82, size: 64, offset: 64)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3171, file: !2636, line: 55, baseType: !82, size: 64, offset: 128)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3171, file: !2636, line: 56, baseType: !82, size: 64, offset: 192)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3171, file: !2636, line: 57, baseType: !82, size: 64, offset: 256)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3171, file: !2636, line: 58, baseType: !82, size: 64, offset: 320)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3171, file: !2636, line: 59, baseType: !82, size: 64, offset: 384)
!3180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3171, file: !2636, line: 60, baseType: !82, size: 64, offset: 448)
!3181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3171, file: !2636, line: 61, baseType: !82, size: 64, offset: 512)
!3182 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3171, file: !2636, line: 64, baseType: !82, size: 64, offset: 576)
!3183 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3171, file: !2636, line: 65, baseType: !82, size: 64, offset: 640)
!3184 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3171, file: !2636, line: 66, baseType: !82, size: 64, offset: 704)
!3185 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3171, file: !2636, line: 68, baseType: !2651, size: 64, offset: 768)
!3186 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3171, file: !2636, line: 70, baseType: !3187, size: 64, offset: 832)
!3187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3171, size: 64)
!3188 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3171, file: !2636, line: 72, baseType: !33, size: 32, offset: 896)
!3189 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3171, file: !2636, line: 73, baseType: !33, size: 32, offset: 928)
!3190 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3171, file: !2636, line: 74, baseType: !2658, size: 64, offset: 960)
!3191 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3171, file: !2636, line: 77, baseType: !111, size: 16, offset: 1024)
!3192 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3171, file: !2636, line: 78, baseType: !2663, size: 8, offset: 1040)
!3193 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3171, file: !2636, line: 79, baseType: !2665, size: 8, offset: 1048)
!3194 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3171, file: !2636, line: 81, baseType: !2667, size: 64, offset: 1088)
!3195 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3171, file: !2636, line: 89, baseType: !2670, size: 64, offset: 1152)
!3196 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3171, file: !2636, line: 91, baseType: !2672, size: 64, offset: 1216)
!3197 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3171, file: !2636, line: 92, baseType: !2675, size: 64, offset: 1280)
!3198 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3171, file: !2636, line: 93, baseType: !3187, size: 64, offset: 1344)
!3199 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3171, file: !2636, line: 94, baseType: !24, size: 64, offset: 1408)
!3200 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3171, file: !2636, line: 95, baseType: !112, size: 64, offset: 1472)
!3201 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3171, file: !2636, line: 96, baseType: !33, size: 32, offset: 1536)
!3202 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3171, file: !2636, line: 98, baseType: !2682, size: 160, offset: 1568)
!3203 = !{!3204, !3205, !3207, !3208}
!3204 = !DILocalVariable(name: "stream", arg: 1, scope: !3165, file: !3166, line: 56, type: !3169)
!3205 = !DILocalVariable(name: "some_pending", scope: !3165, file: !3166, line: 58, type: !3206)
!3206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!3207 = !DILocalVariable(name: "prev_fail", scope: !3165, file: !3166, line: 59, type: !3206)
!3208 = !DILocalVariable(name: "fclose_fail", scope: !3165, file: !3166, line: 60, type: !3206)
!3209 = !DILocation(line: 56, column: 21, scope: !3165)
!3210 = !DILocation(line: 58, column: 30, scope: !3165)
!3211 = !DILocalVariable(name: "__stream", arg: 1, scope: !3212, file: !3213, line: 135, type: !3169)
!3212 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3213, file: !3213, line: 135, type: !3167, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !198, retainedNodes: !3214)
!3213 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3214 = !{!3211}
!3215 = !DILocation(line: 135, column: 1, scope: !3212, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 59, column: 27, scope: !3165)
!3217 = !DILocation(line: 137, column: 10, scope: !3212, inlinedAt: !3216)
!3218 = !{!3219, !704, i64 0}
!3219 = !{!"_IO_FILE", !704, i64 0, !637, i64 8, !637, i64 16, !637, i64 24, !637, i64 32, !637, i64 40, !637, i64 48, !637, i64 56, !637, i64 64, !637, i64 72, !637, i64 80, !637, i64 88, !637, i64 96, !637, i64 104, !704, i64 112, !704, i64 116, !1958, i64 120, !1332, i64 128, !638, i64 130, !638, i64 131, !637, i64 136, !1958, i64 144, !637, i64 152, !637, i64 160, !637, i64 168, !637, i64 176, !1958, i64 184, !704, i64 192, !638, i64 196}
!3220 = !DILocation(line: 59, column: 43, scope: !3165)
!3221 = !DILocation(line: 60, column: 29, scope: !3165)
!3222 = !DILocation(line: 60, column: 45, scope: !3165)
!3223 = !DILocation(line: 70, column: 17, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3165, file: !3166, line: 70, column: 7)
!3225 = !DILocation(line: 58, column: 50, scope: !3165)
!3226 = !DILocation(line: 70, column: 33, scope: !3224)
!3227 = !DILocation(line: 70, column: 53, scope: !3224)
!3228 = !DILocation(line: 70, column: 59, scope: !3224)
!3229 = !DILocation(line: 70, column: 7, scope: !3165)
!3230 = !DILocation(line: 72, column: 11, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3224, file: !3166, line: 71, column: 5)
!3232 = !DILocation(line: 73, column: 9, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3231, file: !3166, line: 72, column: 11)
!3234 = !DILocation(line: 73, column: 15, scope: !3233)
!3235 = !DILocation(line: 0, scope: !3165)
!3236 = !DILocation(line: 78, column: 1, scope: !3165)
!3237 = distinct !DISubprogram(name: "hard_locale", scope: !3238, file: !3238, line: 38, type: !3239, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !200, retainedNodes: !3241)
!3238 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!53, !33}
!3241 = !{!3242, !3243, !3244}
!3242 = !DILocalVariable(name: "category", arg: 1, scope: !3237, file: !3238, line: 38, type: !33)
!3243 = !DILocalVariable(name: "hard", scope: !3237, file: !3238, line: 40, type: !53)
!3244 = !DILocalVariable(name: "p", scope: !3237, file: !3238, line: 41, type: !21)
!3245 = !DILocation(line: 38, column: 18, scope: !3237)
!3246 = !DILocation(line: 40, column: 8, scope: !3237)
!3247 = !DILocation(line: 41, column: 19, scope: !3237)
!3248 = !DILocation(line: 41, column: 15, scope: !3237)
!3249 = !DILocation(line: 43, column: 7, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3237, file: !3238, line: 43, column: 7)
!3251 = !DILocation(line: 43, column: 7, scope: !3237)
!3252 = !DILocation(line: 47, column: 15, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !3238, line: 47, column: 15)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !3238, line: 46, column: 9)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !3238, line: 45, column: 11)
!3256 = distinct !DILexicalBlock(scope: !3250, file: !3238, line: 44, column: 5)
!3257 = !DILocation(line: 47, column: 31, scope: !3253)
!3258 = !DILocation(line: 47, column: 36, scope: !3253)
!3259 = !DILocation(line: 47, column: 39, scope: !3253)
!3260 = !DILocation(line: 47, column: 59, scope: !3253)
!3261 = !DILocation(line: 47, column: 15, scope: !3254)
!3262 = !DILocation(line: 48, column: 13, scope: !3253)
!3263 = !DILocation(line: 71, column: 3, scope: !3237)
!3264 = distinct !DISubprogram(name: "locale_charset", scope: !3265, file: !3265, line: 687, type: !3266, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !202, retainedNodes: !3268)
!3265 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!21}
!3268 = !{!3269}
!3269 = !DILocalVariable(name: "codeset", scope: !3264, file: !3265, line: 689, type: !21)
!3270 = !DILocation(line: 696, column: 13, scope: !3264)
!3271 = !DILocation(line: 689, column: 15, scope: !3264)
!3272 = !DILocation(line: 754, column: 15, scope: !3273)
!3273 = distinct !DILexicalBlock(scope: !3264, file: !3265, line: 754, column: 7)
!3274 = !DILocation(line: 754, column: 7, scope: !3264)
!3275 = !DILocation(line: 907, column: 13, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3277, file: !3265, line: 907, column: 13)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !3265, line: 897, column: 7)
!3278 = distinct !DILexicalBlock(scope: !3264, file: !3265, line: 856, column: 3)
!3279 = !DILocation(line: 907, column: 24, scope: !3276)
!3280 = !DILocation(line: 907, column: 13, scope: !3277)
!3281 = !DILocation(line: 995, column: 3, scope: !3264)
!3282 = distinct !DISubprogram(name: "rpl_fclose", scope: !3283, file: !3283, line: 58, type: !3284, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !591, retainedNodes: !3320)
!3283 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3284 = !DISubroutineType(types: !3285)
!3285 = !{!33, !3286}
!3286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3287, size: 64)
!3287 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2634, line: 7, baseType: !3288)
!3288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2636, line: 49, size: 1728, elements: !3289)
!3289 = !{!3290, !3291, !3292, !3293, !3294, !3295, !3296, !3297, !3298, !3299, !3300, !3301, !3302, !3303, !3305, !3306, !3307, !3308, !3309, !3310, !3311, !3312, !3313, !3314, !3315, !3316, !3317, !3318, !3319}
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3288, file: !2636, line: 51, baseType: !33, size: 32)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3288, file: !2636, line: 54, baseType: !82, size: 64, offset: 64)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3288, file: !2636, line: 55, baseType: !82, size: 64, offset: 128)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3288, file: !2636, line: 56, baseType: !82, size: 64, offset: 192)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3288, file: !2636, line: 57, baseType: !82, size: 64, offset: 256)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3288, file: !2636, line: 58, baseType: !82, size: 64, offset: 320)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3288, file: !2636, line: 59, baseType: !82, size: 64, offset: 384)
!3297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3288, file: !2636, line: 60, baseType: !82, size: 64, offset: 448)
!3298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3288, file: !2636, line: 61, baseType: !82, size: 64, offset: 512)
!3299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3288, file: !2636, line: 64, baseType: !82, size: 64, offset: 576)
!3300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3288, file: !2636, line: 65, baseType: !82, size: 64, offset: 640)
!3301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3288, file: !2636, line: 66, baseType: !82, size: 64, offset: 704)
!3302 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3288, file: !2636, line: 68, baseType: !2651, size: 64, offset: 768)
!3303 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3288, file: !2636, line: 70, baseType: !3304, size: 64, offset: 832)
!3304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3288, size: 64)
!3305 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3288, file: !2636, line: 72, baseType: !33, size: 32, offset: 896)
!3306 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3288, file: !2636, line: 73, baseType: !33, size: 32, offset: 928)
!3307 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3288, file: !2636, line: 74, baseType: !2658, size: 64, offset: 960)
!3308 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3288, file: !2636, line: 77, baseType: !111, size: 16, offset: 1024)
!3309 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3288, file: !2636, line: 78, baseType: !2663, size: 8, offset: 1040)
!3310 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3288, file: !2636, line: 79, baseType: !2665, size: 8, offset: 1048)
!3311 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3288, file: !2636, line: 81, baseType: !2667, size: 64, offset: 1088)
!3312 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3288, file: !2636, line: 89, baseType: !2670, size: 64, offset: 1152)
!3313 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3288, file: !2636, line: 91, baseType: !2672, size: 64, offset: 1216)
!3314 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3288, file: !2636, line: 92, baseType: !2675, size: 64, offset: 1280)
!3315 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3288, file: !2636, line: 93, baseType: !3304, size: 64, offset: 1344)
!3316 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3288, file: !2636, line: 94, baseType: !24, size: 64, offset: 1408)
!3317 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3288, file: !2636, line: 95, baseType: !112, size: 64, offset: 1472)
!3318 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3288, file: !2636, line: 96, baseType: !33, size: 32, offset: 1536)
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3288, file: !2636, line: 98, baseType: !2682, size: 160, offset: 1568)
!3320 = !{!3321, !3322, !3323, !3324}
!3321 = !DILocalVariable(name: "fp", arg: 1, scope: !3282, file: !3283, line: 58, type: !3286)
!3322 = !DILocalVariable(name: "saved_errno", scope: !3282, file: !3283, line: 60, type: !33)
!3323 = !DILocalVariable(name: "fd", scope: !3282, file: !3283, line: 61, type: !33)
!3324 = !DILocalVariable(name: "result", scope: !3282, file: !3283, line: 62, type: !33)
!3325 = !DILocation(line: 58, column: 19, scope: !3282)
!3326 = !DILocation(line: 60, column: 7, scope: !3282)
!3327 = !DILocation(line: 62, column: 7, scope: !3282)
!3328 = !DILocation(line: 65, column: 8, scope: !3282)
!3329 = !DILocation(line: 61, column: 7, scope: !3282)
!3330 = !DILocation(line: 66, column: 10, scope: !3331)
!3331 = distinct !DILexicalBlock(scope: !3282, file: !3283, line: 66, column: 7)
!3332 = !DILocation(line: 66, column: 7, scope: !3282)
!3333 = !DILocation(line: 67, column: 12, scope: !3331)
!3334 = !DILocation(line: 67, column: 5, scope: !3331)
!3335 = !DILocation(line: 72, column: 9, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3282, file: !3283, line: 72, column: 7)
!3337 = !DILocation(line: 72, column: 23, scope: !3336)
!3338 = !DILocation(line: 72, column: 33, scope: !3336)
!3339 = !DILocation(line: 72, column: 26, scope: !3336)
!3340 = !DILocation(line: 72, column: 59, scope: !3336)
!3341 = !DILocation(line: 73, column: 7, scope: !3336)
!3342 = !DILocation(line: 73, column: 10, scope: !3336)
!3343 = !DILocation(line: 72, column: 7, scope: !3282)
!3344 = !DILocation(line: 100, column: 12, scope: !3282)
!3345 = !DILocation(line: 105, column: 7, scope: !3282)
!3346 = !DILocation(line: 74, column: 19, scope: !3336)
!3347 = !DILocation(line: 105, column: 19, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3282, file: !3283, line: 105, column: 7)
!3349 = !DILocation(line: 107, column: 13, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3348, file: !3283, line: 106, column: 5)
!3351 = !DILocation(line: 109, column: 5, scope: !3350)
!3352 = !DILocation(line: 0, scope: !3282)
!3353 = !DILocation(line: 112, column: 1, scope: !3282)
!3354 = distinct !DISubprogram(name: "rpl_fflush", scope: !3355, file: !3355, line: 129, type: !3356, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !593, retainedNodes: !3392)
!3355 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!33, !3358}
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3359, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2634, line: 7, baseType: !3360)
!3360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2636, line: 49, size: 1728, elements: !3361)
!3361 = !{!3362, !3363, !3364, !3365, !3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3374, !3375, !3377, !3378, !3379, !3380, !3381, !3382, !3383, !3384, !3385, !3386, !3387, !3388, !3389, !3390, !3391}
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3360, file: !2636, line: 51, baseType: !33, size: 32)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3360, file: !2636, line: 54, baseType: !82, size: 64, offset: 64)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3360, file: !2636, line: 55, baseType: !82, size: 64, offset: 128)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3360, file: !2636, line: 56, baseType: !82, size: 64, offset: 192)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3360, file: !2636, line: 57, baseType: !82, size: 64, offset: 256)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3360, file: !2636, line: 58, baseType: !82, size: 64, offset: 320)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3360, file: !2636, line: 59, baseType: !82, size: 64, offset: 384)
!3369 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3360, file: !2636, line: 60, baseType: !82, size: 64, offset: 448)
!3370 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3360, file: !2636, line: 61, baseType: !82, size: 64, offset: 512)
!3371 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3360, file: !2636, line: 64, baseType: !82, size: 64, offset: 576)
!3372 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3360, file: !2636, line: 65, baseType: !82, size: 64, offset: 640)
!3373 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3360, file: !2636, line: 66, baseType: !82, size: 64, offset: 704)
!3374 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3360, file: !2636, line: 68, baseType: !2651, size: 64, offset: 768)
!3375 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3360, file: !2636, line: 70, baseType: !3376, size: 64, offset: 832)
!3376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3360, size: 64)
!3377 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3360, file: !2636, line: 72, baseType: !33, size: 32, offset: 896)
!3378 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3360, file: !2636, line: 73, baseType: !33, size: 32, offset: 928)
!3379 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3360, file: !2636, line: 74, baseType: !2658, size: 64, offset: 960)
!3380 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3360, file: !2636, line: 77, baseType: !111, size: 16, offset: 1024)
!3381 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3360, file: !2636, line: 78, baseType: !2663, size: 8, offset: 1040)
!3382 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3360, file: !2636, line: 79, baseType: !2665, size: 8, offset: 1048)
!3383 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3360, file: !2636, line: 81, baseType: !2667, size: 64, offset: 1088)
!3384 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3360, file: !2636, line: 89, baseType: !2670, size: 64, offset: 1152)
!3385 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3360, file: !2636, line: 91, baseType: !2672, size: 64, offset: 1216)
!3386 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3360, file: !2636, line: 92, baseType: !2675, size: 64, offset: 1280)
!3387 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3360, file: !2636, line: 93, baseType: !3376, size: 64, offset: 1344)
!3388 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3360, file: !2636, line: 94, baseType: !24, size: 64, offset: 1408)
!3389 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3360, file: !2636, line: 95, baseType: !112, size: 64, offset: 1472)
!3390 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3360, file: !2636, line: 96, baseType: !33, size: 32, offset: 1536)
!3391 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3360, file: !2636, line: 98, baseType: !2682, size: 160, offset: 1568)
!3392 = !{!3393}
!3393 = !DILocalVariable(name: "stream", arg: 1, scope: !3354, file: !3355, line: 129, type: !3358)
!3394 = !DILocation(line: 129, column: 19, scope: !3354)
!3395 = !DILocation(line: 150, column: 14, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3354, file: !3355, line: 150, column: 7)
!3397 = !DILocation(line: 150, column: 22, scope: !3396)
!3398 = !DILocation(line: 150, column: 27, scope: !3396)
!3399 = !DILocation(line: 150, column: 7, scope: !3354)
!3400 = !DILocation(line: 151, column: 12, scope: !3396)
!3401 = !DILocation(line: 151, column: 5, scope: !3396)
!3402 = !DILocalVariable(name: "fp", arg: 1, scope: !3403, file: !3355, line: 41, type: !3358)
!3403 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3355, file: !3355, line: 41, type: !3404, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !593, retainedNodes: !3406)
!3404 = !DISubroutineType(types: !3405)
!3405 = !{null, !3358}
!3406 = !{!3402}
!3407 = !DILocation(line: 41, column: 48, scope: !3403, inlinedAt: !3408)
!3408 = distinct !DILocation(line: 156, column: 3, scope: !3354)
!3409 = !DILocation(line: 43, column: 11, scope: !3410, inlinedAt: !3408)
!3410 = distinct !DILexicalBlock(scope: !3403, file: !3355, line: 43, column: 7)
!3411 = !DILocation(line: 43, column: 18, scope: !3410, inlinedAt: !3408)
!3412 = !DILocation(line: 43, column: 7, scope: !3403, inlinedAt: !3408)
!3413 = !DILocation(line: 45, column: 5, scope: !3410, inlinedAt: !3408)
!3414 = !DILocation(line: 158, column: 10, scope: !3354)
!3415 = !DILocation(line: 158, column: 3, scope: !3354)
!3416 = !DILocation(line: 0, scope: !3354)
!3417 = !DILocation(line: 232, column: 1, scope: !3354)
!3418 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3419, file: !3419, line: 28, type: !3420, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !595, retainedNodes: !3457)
!3419 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3420 = !DISubroutineType(types: !3421)
!3421 = !{!33, !3422, !3456, !33}
!3422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3423, size: 64)
!3423 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2634, line: 7, baseType: !3424)
!3424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2636, line: 49, size: 1728, elements: !3425)
!3425 = !{!3426, !3427, !3428, !3429, !3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3441, !3442, !3443, !3444, !3445, !3446, !3447, !3448, !3449, !3450, !3451, !3452, !3453, !3454, !3455}
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3424, file: !2636, line: 51, baseType: !33, size: 32)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3424, file: !2636, line: 54, baseType: !82, size: 64, offset: 64)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3424, file: !2636, line: 55, baseType: !82, size: 64, offset: 128)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3424, file: !2636, line: 56, baseType: !82, size: 64, offset: 192)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3424, file: !2636, line: 57, baseType: !82, size: 64, offset: 256)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3424, file: !2636, line: 58, baseType: !82, size: 64, offset: 320)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3424, file: !2636, line: 59, baseType: !82, size: 64, offset: 384)
!3433 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3424, file: !2636, line: 60, baseType: !82, size: 64, offset: 448)
!3434 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3424, file: !2636, line: 61, baseType: !82, size: 64, offset: 512)
!3435 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3424, file: !2636, line: 64, baseType: !82, size: 64, offset: 576)
!3436 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3424, file: !2636, line: 65, baseType: !82, size: 64, offset: 640)
!3437 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3424, file: !2636, line: 66, baseType: !82, size: 64, offset: 704)
!3438 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3424, file: !2636, line: 68, baseType: !2651, size: 64, offset: 768)
!3439 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3424, file: !2636, line: 70, baseType: !3440, size: 64, offset: 832)
!3440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3424, size: 64)
!3441 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3424, file: !2636, line: 72, baseType: !33, size: 32, offset: 896)
!3442 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3424, file: !2636, line: 73, baseType: !33, size: 32, offset: 928)
!3443 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3424, file: !2636, line: 74, baseType: !2658, size: 64, offset: 960)
!3444 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3424, file: !2636, line: 77, baseType: !111, size: 16, offset: 1024)
!3445 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3424, file: !2636, line: 78, baseType: !2663, size: 8, offset: 1040)
!3446 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3424, file: !2636, line: 79, baseType: !2665, size: 8, offset: 1048)
!3447 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3424, file: !2636, line: 81, baseType: !2667, size: 64, offset: 1088)
!3448 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3424, file: !2636, line: 89, baseType: !2670, size: 64, offset: 1152)
!3449 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3424, file: !2636, line: 91, baseType: !2672, size: 64, offset: 1216)
!3450 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3424, file: !2636, line: 92, baseType: !2675, size: 64, offset: 1280)
!3451 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3424, file: !2636, line: 93, baseType: !3440, size: 64, offset: 1344)
!3452 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3424, file: !2636, line: 94, baseType: !24, size: 64, offset: 1408)
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3424, file: !2636, line: 95, baseType: !112, size: 64, offset: 1472)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3424, file: !2636, line: 96, baseType: !33, size: 32, offset: 1536)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3424, file: !2636, line: 98, baseType: !2682, size: 160, offset: 1568)
!3456 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !811, line: 63, baseType: !2658)
!3457 = !{!3458, !3459, !3460, !3461}
!3458 = !DILocalVariable(name: "fp", arg: 1, scope: !3418, file: !3419, line: 28, type: !3422)
!3459 = !DILocalVariable(name: "offset", arg: 2, scope: !3418, file: !3419, line: 28, type: !3456)
!3460 = !DILocalVariable(name: "whence", arg: 3, scope: !3418, file: !3419, line: 28, type: !33)
!3461 = !DILocalVariable(name: "pos", scope: !3462, file: !3419, line: 117, type: !3456)
!3462 = distinct !DILexicalBlock(scope: !3463, file: !3419, line: 113, column: 5)
!3463 = distinct !DILexicalBlock(scope: !3418, file: !3419, line: 52, column: 7)
!3464 = !DILocation(line: 28, column: 15, scope: !3418)
!3465 = !DILocation(line: 28, column: 25, scope: !3418)
!3466 = !DILocation(line: 28, column: 37, scope: !3418)
!3467 = !DILocation(line: 52, column: 11, scope: !3463)
!3468 = !{!3219, !637, i64 16}
!3469 = !DILocation(line: 52, column: 31, scope: !3463)
!3470 = !{!3219, !637, i64 8}
!3471 = !DILocation(line: 52, column: 24, scope: !3463)
!3472 = !DILocation(line: 53, column: 7, scope: !3463)
!3473 = !DILocation(line: 53, column: 14, scope: !3463)
!3474 = !{!3219, !637, i64 40}
!3475 = !DILocation(line: 53, column: 35, scope: !3463)
!3476 = !{!3219, !637, i64 32}
!3477 = !DILocation(line: 53, column: 28, scope: !3463)
!3478 = !DILocation(line: 54, column: 7, scope: !3463)
!3479 = !DILocation(line: 54, column: 14, scope: !3463)
!3480 = !{!3219, !637, i64 72}
!3481 = !DILocation(line: 54, column: 28, scope: !3463)
!3482 = !DILocation(line: 52, column: 7, scope: !3418)
!3483 = !DILocation(line: 117, column: 26, scope: !3462)
!3484 = !DILocation(line: 117, column: 19, scope: !3462)
!3485 = !DILocation(line: 117, column: 13, scope: !3462)
!3486 = !DILocation(line: 118, column: 15, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3462, file: !3419, line: 118, column: 11)
!3488 = !DILocation(line: 118, column: 11, scope: !3462)
!3489 = !DILocation(line: 129, column: 11, scope: !3462)
!3490 = !DILocation(line: 129, column: 18, scope: !3462)
!3491 = !DILocation(line: 130, column: 11, scope: !3462)
!3492 = !DILocation(line: 130, column: 19, scope: !3462)
!3493 = !{!3219, !1958, i64 144}
!3494 = !DILocation(line: 161, column: 7, scope: !3462)
!3495 = !DILocation(line: 163, column: 10, scope: !3418)
!3496 = !DILocation(line: 163, column: 3, scope: !3418)
!3497 = !DILocation(line: 0, scope: !3418)
!3498 = !DILocation(line: 164, column: 1, scope: !3418)
