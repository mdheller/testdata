; ModuleID = 'coreutils-8.30/src/hostid.bc'
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
@.str.1 = private unnamed_addr constant [89 x i8] c"Usage: %s [OPTION]\0APrint the numeric identifier (in hexadecimal) for the current host.\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.12 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"hostid\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.23 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.25 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@long_options = internal constant [1 x %struct.option] zeroinitializer, align 16, !dbg !0
@optind = external local_unnamed_addr global i32, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"extra operand %s\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%08x\0A\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.27, i64 0, i64 0), align 8, !dbg !24
@.str.27 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !29
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !34
@.str.30 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.31 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.32 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !38
@opterr = external local_unnamed_addr global i32, align 4
@.str.37 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@long_options.38 = internal constant [3 x %struct.option] [%struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1.39, i32 0, i32 0), i32 0, i32* null, i32 104 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.40, i32 0, i32 0), i32 0, i32* null, i32 118 }, %struct.option zeroinitializer], align 16, !dbg !45
@.str.1.39 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2.40 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !61
@.str.45 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.46 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.47 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.48, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.49, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.50, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.51, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.52, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.53, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.56, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.57, i32 0, i32 0), i8* null], align 16, !dbg !69
@.str.48 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.49 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.50 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.51 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.52 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.53 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.54 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.55 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.56 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.57 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !115
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !122
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !134
@.str.11.58 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.59 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.60 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.61 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.62 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.63 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.64 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !141
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !148
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !136
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !150
@.str.69 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.70 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.71 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.72 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.73 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.74 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.75 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.76 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.77 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.78 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.79 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.80 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.81 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.82 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.85 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.86 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.87 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.88 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.89 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.90 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !156
@.str.1.101 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.102 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.111 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.112 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.115 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.116 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) #0 !dbg !602 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !607, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i32 %0, metadata !606, metadata !DIExpression()), !dbg !630
  %3 = icmp eq i32 %0, 0, !dbg !631
  br i1 %3, label %9, label %4, !dbg !632

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !633, !tbaa !635
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !633
  %7 = load i8*, i8** @program_name, align 8, !dbg !633, !tbaa !635
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !633
  br label %54, !dbg !633

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !639
  %11 = load i8*, i8** @program_name, align 8, !dbg !639, !tbaa !635
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !639
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !640
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !640, !tbaa !635
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !640
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !641
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !641, !tbaa !635
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !641
  %19 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !642
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %19) #10, !dbg !642
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %19, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !626
  %20 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !643
  call void @llvm.dbg.value(metadata %struct.infomap* %20, metadata !615, metadata !DIExpression()) #10, !dbg !644
  br label %21, !dbg !645

; <label>:21:                                     ; preds = %26, %9
  %22 = phi i8* [ %29, %26 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12, i64 0, i64 0), %9 ]
  %23 = phi %struct.infomap* [ %27, %26 ], [ %20, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %23, metadata !615, metadata !DIExpression()) #10, !dbg !644
  %24 = tail call i32 @strcmp(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* nonnull %22) #14, !dbg !645
  %25 = icmp eq i32 %24, 0, !dbg !645
  br i1 %25, label %31, label %26, !dbg !646

; <label>:26:                                     ; preds = %21
  %27 = getelementptr inbounds %struct.infomap, %struct.infomap* %23, i64 1, !dbg !647
  call void @llvm.dbg.value(metadata %struct.infomap* %27, metadata !615, metadata !DIExpression()) #10, !dbg !644
  %28 = getelementptr inbounds %struct.infomap, %struct.infomap* %27, i64 0, i32 0, !dbg !648
  %29 = load i8*, i8** %28, align 8, !dbg !648, !tbaa !649
  %30 = icmp eq i8* %29, null, !dbg !651
  br i1 %30, label %31, label %21, !dbg !652, !llvm.loop !653

; <label>:31:                                     ; preds = %26, %21
  %32 = phi %struct.infomap* [ %27, %26 ], [ %23, %21 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !615, metadata !DIExpression()) #10, !dbg !644
  call void @llvm.dbg.value(metadata %struct.infomap* %32, metadata !615, metadata !DIExpression()) #10, !dbg !644
  %33 = getelementptr inbounds %struct.infomap, %struct.infomap* %32, i64 0, i32 1, !dbg !656
  %34 = load i8*, i8** %33, align 8, !dbg !656, !tbaa !658
  %35 = icmp eq i8* %34, null, !dbg !659
  %36 = select i1 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %34, !dbg !660
  call void @llvm.dbg.value(metadata i8* %36, metadata !614, metadata !DIExpression()) #10, !dbg !661
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !662
  %38 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !662
  %39 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !663
  call void @llvm.dbg.value(metadata i8* %39, metadata !622, metadata !DIExpression()) #10, !dbg !664
  %40 = icmp eq i8* %39, null, !dbg !665
  br i1 %40, label %47, label %41, !dbg !667

; <label>:41:                                     ; preds = %31
  %42 = tail call i32 @strncmp(i8* nonnull %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.22, i64 0, i64 0), i64 3) #14, !dbg !668
  %43 = icmp eq i32 %42, 0, !dbg !668
  br i1 %43, label %47, label %44, !dbg !669

; <label>:44:                                     ; preds = %41
  %45 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.23, i64 0, i64 0), i32 5) #10, !dbg !670
  %46 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !670
  br label %47, !dbg !672

; <label>:47:                                     ; preds = %31, %41, %44
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i32 5) #10, !dbg !673
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)) #10, !dbg !673
  %50 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.25, i64 0, i64 0), i32 5) #10, !dbg !674
  %51 = icmp eq i8* %36, getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), !dbg !674
  %52 = select i1 %51, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), !dbg !674
  %53 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %50, i8* %36, i8* %52) #10, !dbg !674
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %19) #10, !dbg !675
  br label %54

; <label>:54:                                     ; preds = %47, %4
  tail call void @exit(i32 %0) #15, !dbg !676
  unreachable, !dbg !676
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !677 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !682, metadata !DIExpression()), !dbg !685
  call void @llvm.dbg.value(metadata i8** %1, metadata !683, metadata !DIExpression()), !dbg !686
  %3 = load i8*, i8** %1, align 8, !dbg !687, !tbaa !635
  tail call void @set_program_name(i8* %3) #10, !dbg !688
  %4 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !689
  %5 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !690
  %6 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !691
  %7 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !692
  %8 = load i8*, i8** @Version, align 8, !dbg !693, !tbaa !635
  tail call void (i32, i8**, i8*, i8*, i8*, void (i32)*, ...) @parse_long_options(i32 %0, i8** %1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* %8, void (i32)* nonnull @usage, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8* null) #10, !dbg !694
  %9 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %struct.option* getelementptr inbounds ([1 x %struct.option], [1 x %struct.option]* @long_options, i64 0, i64 0), i32* null) #10, !dbg !695
  %10 = icmp eq i32 %9, -1, !dbg !697
  br i1 %10, label %12, label %11, !dbg !698

; <label>:11:                                     ; preds = %2
  tail call void @usage(i32 1) #16, !dbg !699
  unreachable, !dbg !699

; <label>:12:                                     ; preds = %2
  %13 = load i32, i32* @optind, align 4, !dbg !700, !tbaa !702
  %14 = icmp slt i32 %13, %0, !dbg !704
  br i1 %14, label %15, label %22, !dbg !705

; <label>:15:                                     ; preds = %12
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0), i32 5) #10, !dbg !706
  %17 = load i32, i32* @optind, align 4, !dbg !708, !tbaa !702
  %18 = sext i32 %17 to i64, !dbg !709
  %19 = getelementptr inbounds i8*, i8** %1, i64 %18, !dbg !709
  %20 = load i8*, i8** %19, align 8, !dbg !709, !tbaa !635
  %21 = tail call i8* @quote(i8* %20) #10, !dbg !710
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %16, i8* %21) #10, !dbg !711
  tail call void @usage(i32 1) #16, !dbg !712
  unreachable, !dbg !712

; <label>:22:                                     ; preds = %12
  %23 = tail call i64 @gethostid() #10, !dbg !713
  %24 = trunc i64 %23 to i32, !dbg !713
  call void @llvm.dbg.value(metadata i32 %24, metadata !684, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i32 %24, metadata !684, metadata !DIExpression()), !dbg !714
  %25 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %24) #10, !dbg !715
  ret i32 0, !dbg !716
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

declare i64 @gethostid() local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !717 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !719, metadata !DIExpression()), !dbg !720
  store i8* %0, i8** @file_name, align 8, !dbg !721, !tbaa !635
  ret void, !dbg !722
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !723 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !727, metadata !DIExpression()), !dbg !728
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !729, !tbaa !730
  ret void, !dbg !732
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !733 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !740, !tbaa !635
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !741
  %3 = icmp eq i32 %2, 0, !dbg !742
  br i1 %3, label %22, label %4, !dbg !743

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !744, !tbaa !730, !range !745
  %6 = icmp eq i8 %5, 0, !dbg !744
  br i1 %6, label %11, label %7, !dbg !746

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !747
  %9 = load i32, i32* %8, align 4, !dbg !747, !tbaa !702
  %10 = icmp eq i32 %9, 32, !dbg !748
  br i1 %10, label %22, label %11, !dbg !749

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.30, i64 0, i64 0), i32 5) #10, !dbg !750
  call void @llvm.dbg.value(metadata i8* %12, metadata !737, metadata !DIExpression()), !dbg !751
  %13 = load i8*, i8** @file_name, align 8, !dbg !752, !tbaa !635
  %14 = icmp eq i8* %13, null, !dbg !752
  %15 = tail call i32* @__errno_location() #17, !dbg !754
  %16 = load i32, i32* %15, align 4, !dbg !754, !tbaa !702
  br i1 %14, label %19, label %17, !dbg !755

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !756
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.31, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !757
  br label %20, !dbg !757

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.32, i64 0, i64 0), i8* %12) #10, !dbg !758
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !759, !tbaa !702
  tail call void @_exit(i32 %21) #15, !dbg !760
  unreachable, !dbg !760

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !761, !tbaa !635
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !763
  %25 = icmp eq i32 %24, 0, !dbg !764
  br i1 %25, label %28, label %26, !dbg !765

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !766, !tbaa !702
  tail call void @_exit(i32 %27) #15, !dbg !767
  unreachable, !dbg !767

; <label>:28:                                     ; preds = %22
  ret void, !dbg !768
}

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @parse_long_options(i32, i8**, i8*, i8*, i8*, void (i32)* nocapture, ...) local_unnamed_addr #7 !dbg !769 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !774, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.value(metadata i8** %1, metadata !775, metadata !DIExpression()), !dbg !800
  call void @llvm.dbg.value(metadata i8* %2, metadata !776, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.value(metadata i8* %3, metadata !777, metadata !DIExpression()), !dbg !802
  call void @llvm.dbg.value(metadata i8* %4, metadata !778, metadata !DIExpression()), !dbg !803
  call void @llvm.dbg.value(metadata void (i32)* %5, metadata !779, metadata !DIExpression()), !dbg !804
  %8 = load i32, i32* @opterr, align 4, !dbg !805, !tbaa !702
  call void @llvm.dbg.value(metadata i32 %8, metadata !781, metadata !DIExpression()), !dbg !806
  store i32 0, i32* @opterr, align 4, !dbg !807, !tbaa !702
  %9 = icmp eq i32 %0, 2, !dbg !808
  br i1 %9, label %10, label %17, !dbg !809

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 @getopt_long(i32 2, i8** %1, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.37, i64 0, i64 0), %struct.option* getelementptr inbounds ([3 x %struct.option], [3 x %struct.option]* @long_options.38, i64 0, i64 0), i32* null) #10, !dbg !810
  call void @llvm.dbg.value(metadata i32 %11, metadata !780, metadata !DIExpression()), !dbg !811
  switch i32 %11, label %17 [
    i32 118, label %13
    i32 104, label %12
  ], !dbg !812

; <label>:12:                                     ; preds = %10
  tail call void %5(i32 0) #10, !dbg !813
  br label %17, !dbg !814

; <label>:13:                                     ; preds = %10
  %14 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !815
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #10, !dbg !815
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %7, metadata !782, metadata !DIExpression()), !dbg !816
  %15 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, !dbg !817
  call void @llvm.va_start(i8* nonnull %14), !dbg !817
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !818, !tbaa !635
  call void @version_etc_va(%struct._IO_FILE* %16, i8* %2, i8* %3, i8* %4, %struct.__va_list_tag* nonnull %15) #10, !dbg !819
  call void @exit(i32 0) #15, !dbg !820
  unreachable, !dbg !820

; <label>:17:                                     ; preds = %10, %12, %6
  store i32 %8, i32* @opterr, align 4, !dbg !821, !tbaa !702
  store i32 0, i32* @optind, align 4, !dbg !822, !tbaa !702
  ret void, !dbg !823
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !824 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !826, metadata !DIExpression()), !dbg !829
  %2 = icmp eq i8* %0, null, !dbg !830
  br i1 %2, label %3, label %6, !dbg !832

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !833, !tbaa !635
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.45, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !835
  tail call void @abort() #15, !dbg !836
  unreachable, !dbg !836

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !837
  call void @llvm.dbg.value(metadata i8* %7, metadata !827, metadata !DIExpression()), !dbg !838
  %8 = icmp eq i8* %7, null, !dbg !839
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !840
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !841
  call void @llvm.dbg.value(metadata i8* %10, metadata !828, metadata !DIExpression()), !dbg !842
  %11 = ptrtoint i8* %10 to i64, !dbg !843
  %12 = ptrtoint i8* %0 to i64, !dbg !843
  %13 = sub i64 %11, %12, !dbg !843
  %14 = icmp sgt i64 %13, 6, !dbg !845
  br i1 %14, label %15, label %24, !dbg !846

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !847
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.46, i64 0, i64 0), i64 7) #14, !dbg !848
  %18 = icmp eq i32 %17, 0, !dbg !849
  br i1 %18, label %19, label %24, !dbg !850

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !826, metadata !DIExpression()), !dbg !829
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.47, i64 0, i64 0), i64 3) #14, !dbg !851
  %21 = icmp eq i32 %20, 0, !dbg !854
  br i1 %21, label %22, label %24, !dbg !855

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !856
  call void @llvm.dbg.value(metadata i8* %23, metadata !826, metadata !DIExpression()), !dbg !829
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !858, !tbaa !635
  br label %24, !dbg !859

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !826, metadata !DIExpression()), !dbg !829
  store i8* %25, i8** @program_name, align 8, !dbg !860, !tbaa !635
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !861, !tbaa !635
  ret void, !dbg !862
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !863 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !868, metadata !DIExpression()), !dbg !871
  %2 = tail call i32* @__errno_location() #17, !dbg !872
  %3 = load i32, i32* %2, align 4, !dbg !872, !tbaa !702
  call void @llvm.dbg.value(metadata i32 %3, metadata !869, metadata !DIExpression()), !dbg !873
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !874
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !874
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !874
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !875
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !875
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !870, metadata !DIExpression()), !dbg !876
  store i32 %3, i32* %2, align 4, !dbg !877, !tbaa !702
  ret %struct.quoting_options* %8, !dbg !878
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !879 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !885, metadata !DIExpression()), !dbg !886
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !887
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !887
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !888
  %5 = load i32, i32* %4, align 8, !dbg !888, !tbaa !889
  ret i32 %5, !dbg !891
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !892 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !896, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.value(metadata i32 %1, metadata !897, metadata !DIExpression()), !dbg !899
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !900
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !900
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !901
  store i32 %1, i32* %5, align 8, !dbg !902, !tbaa !889
  ret void, !dbg !903
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !904 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !908, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.value(metadata i8 %1, metadata !909, metadata !DIExpression()), !dbg !918
  call void @llvm.dbg.value(metadata i32 %2, metadata !910, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.value(metadata i8 %1, metadata !911, metadata !DIExpression()), !dbg !920
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !921
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !921
  %6 = lshr i8 %1, 5, !dbg !922
  %7 = zext i8 %6 to i64, !dbg !922
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !923
  call void @llvm.dbg.value(metadata i32* %8, metadata !913, metadata !DIExpression()), !dbg !924
  %9 = and i8 %1, 31, !dbg !925
  %10 = zext i8 %9 to i32, !dbg !925
  call void @llvm.dbg.value(metadata i32 %10, metadata !915, metadata !DIExpression()), !dbg !926
  %11 = load i32, i32* %8, align 4, !dbg !927, !tbaa !702
  %12 = lshr i32 %11, %10, !dbg !928
  %13 = and i32 %12, 1, !dbg !929
  call void @llvm.dbg.value(metadata i32 %13, metadata !916, metadata !DIExpression()), !dbg !930
  %14 = and i32 %2, 1, !dbg !931
  %15 = xor i32 %13, %14, !dbg !932
  %16 = shl i32 %15, %10, !dbg !933
  %17 = xor i32 %16, %11, !dbg !934
  store i32 %17, i32* %8, align 4, !dbg !934, !tbaa !702
  ret i32 %13, !dbg !935
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !936 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !940, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.value(metadata i32 %1, metadata !941, metadata !DIExpression()), !dbg !944
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !945
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !947
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !940, metadata !DIExpression()), !dbg !943
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !948
  %6 = load i32, i32* %5, align 4, !dbg !948, !tbaa !949
  call void @llvm.dbg.value(metadata i32 %6, metadata !942, metadata !DIExpression()), !dbg !950
  store i32 %1, i32* %5, align 4, !dbg !951, !tbaa !949
  ret i32 %6, !dbg !952
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !953 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !957, metadata !DIExpression()), !dbg !960
  call void @llvm.dbg.value(metadata i8* %1, metadata !958, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.value(metadata i8* %2, metadata !959, metadata !DIExpression()), !dbg !962
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !963
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !965
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !957, metadata !DIExpression()), !dbg !960
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !966
  store i32 10, i32* %6, align 8, !dbg !967, !tbaa !889
  %7 = icmp ne i8* %1, null, !dbg !968
  %8 = icmp ne i8* %2, null, !dbg !970
  %9 = and i1 %7, %8, !dbg !971
  br i1 %9, label %11, label %10, !dbg !971

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !972
  unreachable, !dbg !972

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !973
  store i8* %1, i8** %12, align 8, !dbg !974, !tbaa !975
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !976
  store i8* %2, i8** %13, align 8, !dbg !977, !tbaa !978
  ret void, !dbg !979
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !980 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !984, metadata !DIExpression()), !dbg !992
  call void @llvm.dbg.value(metadata i64 %1, metadata !985, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.value(metadata i8* %2, metadata !986, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.value(metadata i64 %3, metadata !987, metadata !DIExpression()), !dbg !995
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !988, metadata !DIExpression()), !dbg !996
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !997
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !997
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !989, metadata !DIExpression()), !dbg !998
  %8 = tail call i32* @__errno_location() #17, !dbg !999
  %9 = load i32, i32* %8, align 4, !dbg !999, !tbaa !702
  call void @llvm.dbg.value(metadata i32 %9, metadata !990, metadata !DIExpression()), !dbg !1000
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1001
  %11 = load i32, i32* %10, align 8, !dbg !1001, !tbaa !889
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1002
  %13 = load i32, i32* %12, align 4, !dbg !1002, !tbaa !949
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1003
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1004
  %16 = load i8*, i8** %15, align 8, !dbg !1004, !tbaa !975
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1005
  %18 = load i8*, i8** %17, align 8, !dbg !1005, !tbaa !978
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1006
  call void @llvm.dbg.value(metadata i64 %19, metadata !991, metadata !DIExpression()), !dbg !1007
  store i32 %9, i32* %8, align 4, !dbg !1008, !tbaa !702
  ret i64 %19, !dbg !1009
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1010 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1016, metadata !DIExpression()), !dbg !1080
  call void @llvm.dbg.value(metadata i64 %1, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8* %2, metadata !1018, metadata !DIExpression()), !dbg !1082
  call void @llvm.dbg.value(metadata i64 %3, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i32 %4, metadata !1020, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 %5, metadata !1021, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata i32* %6, metadata !1022, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i8* %7, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %8, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 0, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 0, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8* null, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 0, metadata !1029, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8 0, metadata !1030, metadata !DIExpression()), !dbg !1093
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1094
  %14 = icmp eq i64 %13, 1, !dbg !1095
  %15 = lshr i32 %5, 1, !dbg !1096
  %16 = trunc i32 %15 to i8, !dbg !1096
  %17 = and i8 %16, 1, !dbg !1096
  call void @llvm.dbg.value(metadata i8 %17, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 0, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 0, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 1, metadata !1035, metadata !DIExpression()), !dbg !1099
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1100

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1090
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1091
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1092
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1093
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1101
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1097
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1098
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1099
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8 %39, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 %38, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %37, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %36, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i64 %35, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8 %34, metadata !1030, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 %33, metadata !1029, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %32, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %31, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 0, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8* %30, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %29, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i32 %28, metadata !1020, metadata !DIExpression()), !dbg !1084
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
  ], !dbg !1103

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1020, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8 1, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %36, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 5, metadata !1020, metadata !DIExpression()), !dbg !1084
  br label %93, !dbg !1104

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i32 5, metadata !1020, metadata !DIExpression()), !dbg !1084
  %43 = and i8 %36, 1, !dbg !1105
  %44 = icmp eq i8 %43, 0, !dbg !1105
  br i1 %44, label %45, label %93, !dbg !1104

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1107
  br i1 %46, label %93, label %47, !dbg !1110

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1107, !tbaa !1111
  br label %93, !dbg !1107

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.58, i64 0, i64 0), i32 %28), !dbg !1112
  call void @llvm.dbg.value(metadata i8* %49, metadata !1023, metadata !DIExpression()), !dbg !1087
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), i32 %28), !dbg !1116
  call void @llvm.dbg.value(metadata i8* %50, metadata !1024, metadata !DIExpression()), !dbg !1088
  br label %51, !dbg !1117

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %52, metadata !1023, metadata !DIExpression()), !dbg !1087
  %54 = and i8 %36, 1, !dbg !1118
  %55 = icmp eq i8 %54, 0, !dbg !1118
  br i1 %55, label %56, label %71, !dbg !1120

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 0, metadata !1026, metadata !DIExpression()), !dbg !1089
  %57 = load i8, i8* %52, align 1, !dbg !1121, !tbaa !1111
  %58 = icmp eq i8 %57, 0, !dbg !1124
  br i1 %58, label %71, label %59, !dbg !1124

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %62, metadata !1026, metadata !DIExpression()), !dbg !1089
  %63 = icmp ult i64 %62, %40, !dbg !1125
  br i1 %63, label %64, label %66, !dbg !1128

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1125
  store i8 %60, i8* %65, align 1, !dbg !1125, !tbaa !1111
  br label %66, !dbg !1125

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1128
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1129
  call void @llvm.dbg.value(metadata i8* %68, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %67, metadata !1026, metadata !DIExpression()), !dbg !1089
  %69 = load i8, i8* %68, align 1, !dbg !1121, !tbaa !1111
  %70 = icmp eq i8 %69, 0, !dbg !1124
  br i1 %70, label %71, label %59, !dbg !1124, !llvm.loop !1130

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1089
  call void @llvm.dbg.value(metadata i64 %72, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8 1, metadata !1030, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8* %53, metadata !1028, metadata !DIExpression()), !dbg !1091
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1132
  call void @llvm.dbg.value(metadata i64 %73, metadata !1029, metadata !DIExpression()), !dbg !1092
  br label %93, !dbg !1133

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1030, metadata !DIExpression()), !dbg !1093
  br label %75, !dbg !1134

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1101
  call void @llvm.dbg.value(metadata i8 %76, metadata !1030, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8 1, metadata !1032, metadata !DIExpression()), !dbg !1096
  br label %77, !dbg !1135

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1093
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1101
  call void @llvm.dbg.value(metadata i8 %79, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %78, metadata !1030, metadata !DIExpression()), !dbg !1093
  %80 = and i8 %79, 1, !dbg !1136
  %81 = icmp eq i8 %80, 0, !dbg !1136
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1138
  br label %83, !dbg !1138

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1139
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1096
  call void @llvm.dbg.value(metadata i8 %85, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %84, metadata !1030, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i32 2, metadata !1020, metadata !DIExpression()), !dbg !1084
  %86 = and i8 %85, 1, !dbg !1140
  %87 = icmp eq i8 %86, 0, !dbg !1140
  br i1 %87, label %88, label %93, !dbg !1142

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1143
  br i1 %89, label %93, label %90, !dbg !1146

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1143, !tbaa !1111
  br label %93, !dbg !1143

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1032, metadata !DIExpression()), !dbg !1096
  br label %93, !dbg !1147

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1148
  unreachable, !dbg !1148

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1089
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), %41 ], !dbg !1101
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1101
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1101
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1149
  call void @llvm.dbg.value(metadata i8 %101, metadata !1032, metadata !DIExpression()), !dbg !1096
  call void @llvm.dbg.value(metadata i8 %100, metadata !1030, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 %99, metadata !1029, metadata !DIExpression()), !dbg !1092
  call void @llvm.dbg.value(metadata i8* %98, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %97, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i32 %94, metadata !1020, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i64 0, metadata !1025, metadata !DIExpression()), !dbg !1150
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
  br label %121, !dbg !1151

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1152
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1089
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1090
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1097
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1098
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1099
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8 %128, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 %127, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %126, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %125, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %122, metadata !1025, metadata !DIExpression()), !dbg !1150
  %130 = icmp eq i64 %125, -1, !dbg !1153
  br i1 %130, label %131, label %135, !dbg !1154

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1155
  %133 = load i8, i8* %132, align 1, !dbg !1155, !tbaa !1111
  %134 = icmp eq i8 %133, 0, !dbg !1156
  br i1 %134, label %617, label %137, !dbg !1157

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1158
  br i1 %136, label %617, label %137, !dbg !1157

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1041, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 0, metadata !1042, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i8 0, metadata !1043, metadata !DIExpression()), !dbg !1161
  br i1 %107, label %138, label %153, !dbg !1162

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1164
  %140 = and i1 %108, %130, !dbg !1165
  br i1 %140, label %141, label %143, !dbg !1165

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1166
  call void @llvm.dbg.value(metadata i64 %142, metadata !1019, metadata !DIExpression()), !dbg !1083
  br label %143, !dbg !1167

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1019, metadata !DIExpression()), !dbg !1083
  %145 = icmp ugt i64 %139, %144, !dbg !1168
  br i1 %145, label %153, label %146, !dbg !1169

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1170
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1171
  %149 = icmp ne i32 %148, 0, !dbg !1172
  %150 = or i1 %149, %110, !dbg !1173
  %151 = xor i1 %149, true, !dbg !1173
  %152 = zext i1 %151 to i8, !dbg !1173
  br i1 %150, label %153, label %661, !dbg !1173

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1174
  call void @llvm.dbg.value(metadata i8 %155, metadata !1041, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i64 %154, metadata !1019, metadata !DIExpression()), !dbg !1083
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1175
  %157 = load i8, i8* %156, align 1, !dbg !1175, !tbaa !1111
  call void @llvm.dbg.value(metadata i8 %157, metadata !1036, metadata !DIExpression()), !dbg !1176
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
  ], !dbg !1177

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1178

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1179

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1042, metadata !DIExpression()), !dbg !1160
  %161 = and i8 %126, 1, !dbg !1183
  %162 = icmp eq i8 %161, 0, !dbg !1183
  %163 = and i1 %114, %162, !dbg !1183
  br i1 %163, label %164, label %180, !dbg !1183

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1185
  br i1 %165, label %166, label %168, !dbg !1189

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1185
  store i8 39, i8* %167, align 1, !dbg !1185, !tbaa !1111
  br label %168, !dbg !1185

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1189
  call void @llvm.dbg.value(metadata i64 %169, metadata !1026, metadata !DIExpression()), !dbg !1089
  %170 = icmp ult i64 %169, %129, !dbg !1190
  br i1 %170, label %171, label %173, !dbg !1193

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1190
  store i8 36, i8* %172, align 1, !dbg !1190, !tbaa !1111
  br label %173, !dbg !1190

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1193
  call void @llvm.dbg.value(metadata i64 %174, metadata !1026, metadata !DIExpression()), !dbg !1089
  %175 = icmp ult i64 %174, %129, !dbg !1194
  br i1 %175, label %176, label %178, !dbg !1197

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1194
  store i8 39, i8* %177, align 1, !dbg !1194, !tbaa !1111
  br label %178, !dbg !1194

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1197
  call void @llvm.dbg.value(metadata i64 %179, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8 1, metadata !1033, metadata !DIExpression()), !dbg !1097
  br label %180, !dbg !1198

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1149
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1149
  call void @llvm.dbg.value(metadata i8 %182, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %181, metadata !1026, metadata !DIExpression()), !dbg !1089
  %183 = icmp ult i64 %181, %129, !dbg !1199
  br i1 %183, label %184, label %186, !dbg !1202

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1199
  store i8 92, i8* %185, align 1, !dbg !1199, !tbaa !1111
  br label %186, !dbg !1199

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1202
  call void @llvm.dbg.value(metadata i64 %187, metadata !1026, metadata !DIExpression()), !dbg !1089
  br i1 %104, label %188, label %478, !dbg !1203

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1205
  %190 = icmp ult i64 %189, %154, !dbg !1206
  br i1 %190, label %191, label %467, !dbg !1207

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1208
  %193 = load i8, i8* %192, align 1, !dbg !1208, !tbaa !1111
  %194 = add i8 %193, -48, !dbg !1209
  %195 = icmp ult i8 %194, 10, !dbg !1209
  br i1 %195, label %196, label %467, !dbg !1209

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1210
  br i1 %197, label %198, label %200, !dbg !1214

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1210
  store i8 48, i8* %199, align 1, !dbg !1210, !tbaa !1111
  br label %200, !dbg !1210

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1214
  call void @llvm.dbg.value(metadata i64 %201, metadata !1026, metadata !DIExpression()), !dbg !1089
  %202 = icmp ult i64 %201, %129, !dbg !1215
  br i1 %202, label %203, label %205, !dbg !1218

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1215
  store i8 48, i8* %204, align 1, !dbg !1215, !tbaa !1111
  br label %205, !dbg !1215

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1218
  call void @llvm.dbg.value(metadata i64 %206, metadata !1026, metadata !DIExpression()), !dbg !1089
  br label %467, !dbg !1219

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1220

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1221

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1222

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1224

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1226
  %213 = icmp ult i64 %212, %154, !dbg !1227
  br i1 %213, label %214, label %467, !dbg !1228

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1229
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1230
  %217 = load i8, i8* %216, align 1, !dbg !1230, !tbaa !1111
  %218 = icmp eq i8 %217, 63, !dbg !1231
  br i1 %218, label %219, label %467, !dbg !1232

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1233
  %221 = load i8, i8* %220, align 1, !dbg !1233, !tbaa !1111
  %222 = sext i8 %221 to i32, !dbg !1233
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
  ], !dbg !1234

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1235

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1036, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i64 %212, metadata !1025, metadata !DIExpression()), !dbg !1150
  %225 = icmp ult i64 %123, %129, !dbg !1237
  br i1 %225, label %226, label %228, !dbg !1240

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1237
  store i8 63, i8* %227, align 1, !dbg !1237, !tbaa !1111
  br label %228, !dbg !1237

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1240
  call void @llvm.dbg.value(metadata i64 %229, metadata !1026, metadata !DIExpression()), !dbg !1089
  %230 = icmp ult i64 %229, %129, !dbg !1241
  br i1 %230, label %231, label %233, !dbg !1244

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1241
  store i8 34, i8* %232, align 1, !dbg !1241, !tbaa !1111
  br label %233, !dbg !1241

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1244
  call void @llvm.dbg.value(metadata i64 %234, metadata !1026, metadata !DIExpression()), !dbg !1089
  %235 = icmp ult i64 %234, %129, !dbg !1245
  br i1 %235, label %236, label %238, !dbg !1248

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1245
  store i8 34, i8* %237, align 1, !dbg !1245, !tbaa !1111
  br label %238, !dbg !1245

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %239, metadata !1026, metadata !DIExpression()), !dbg !1089
  %240 = icmp ult i64 %239, %129, !dbg !1249
  br i1 %240, label %241, label %243, !dbg !1252

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1249
  store i8 63, i8* %242, align 1, !dbg !1249, !tbaa !1111
  br label %243, !dbg !1249

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1252
  call void @llvm.dbg.value(metadata i64 %244, metadata !1026, metadata !DIExpression()), !dbg !1089
  br label %467, !dbg !1253

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1040, metadata !DIExpression()), !dbg !1254
  br label %255, !dbg !1255

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1040, metadata !DIExpression()), !dbg !1254
  br label %255, !dbg !1256

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1040, metadata !DIExpression()), !dbg !1254
  br label %253, !dbg !1257

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1040, metadata !DIExpression()), !dbg !1254
  br label %253, !dbg !1258

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1040, metadata !DIExpression()), !dbg !1254
  br label %255, !dbg !1259

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1040, metadata !DIExpression()), !dbg !1254
  br i1 %114, label %251, label %252, !dbg !1260

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1261

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1264

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1266
  call void @llvm.dbg.value(metadata i8 %254, metadata !1040, metadata !DIExpression()), !dbg !1254
  br i1 %113, label %255, label %661, !dbg !1267

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1266
  call void @llvm.dbg.value(metadata i8 %256, metadata !1040, metadata !DIExpression()), !dbg !1254
  br i1 %103, label %524, label %478, !dbg !1269

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1270
  br i1 %258, label %259, label %264, !dbg !1272

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1273, !tbaa !1111
  %261 = icmp ne i8 %260, 0, !dbg !1274
  %262 = icmp ne i64 %122, 0, !dbg !1275
  %263 = or i1 %262, %261, !dbg !1277
  br i1 %263, label %467, label %270, !dbg !1277

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1278
  %266 = icmp ne i64 %122, 0, !dbg !1275
  %267 = or i1 %266, %265, !dbg !1272
  br i1 %267, label %467, label %270, !dbg !1272

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1275
  br i1 %269, label %270, label %467, !dbg !1279

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1043, metadata !DIExpression()), !dbg !1161
  br label %271, !dbg !1280

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1266
  call void @llvm.dbg.value(metadata i8 %272, metadata !1043, metadata !DIExpression()), !dbg !1161
  br i1 %113, label %467, label %661, !dbg !1281

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 1, metadata !1043, metadata !DIExpression()), !dbg !1161
  br i1 %114, label %274, label %467, !dbg !1283

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1284

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1287
  %277 = icmp ne i64 %124, 0, !dbg !1289
  %278 = or i1 %277, %276, !dbg !1290
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1290
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1290
  call void @llvm.dbg.value(metadata i64 %280, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %279, metadata !1027, metadata !DIExpression()), !dbg !1090
  %281 = icmp ult i64 %123, %280, !dbg !1291
  br i1 %281, label %282, label %284, !dbg !1294

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1291
  store i8 39, i8* %283, align 1, !dbg !1291, !tbaa !1111
  br label %284, !dbg !1291

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1294
  call void @llvm.dbg.value(metadata i64 %285, metadata !1026, metadata !DIExpression()), !dbg !1089
  %286 = icmp ult i64 %285, %280, !dbg !1295
  br i1 %286, label %287, label %289, !dbg !1298

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1295
  store i8 92, i8* %288, align 1, !dbg !1295, !tbaa !1111
  br label %289, !dbg !1295

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1298
  call void @llvm.dbg.value(metadata i64 %290, metadata !1026, metadata !DIExpression()), !dbg !1089
  %291 = icmp ult i64 %290, %280, !dbg !1299
  br i1 %291, label %292, label %294, !dbg !1302

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1299
  store i8 39, i8* %293, align 1, !dbg !1299, !tbaa !1111
  br label %294, !dbg !1299

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1302
  call void @llvm.dbg.value(metadata i64 %295, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8 0, metadata !1033, metadata !DIExpression()), !dbg !1097
  br label %467, !dbg !1303

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1304

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1044, metadata !DIExpression()), !dbg !1305
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1306
  %299 = load i16*, i16** %298, align 8, !dbg !1306, !tbaa !635
  %300 = zext i8 %157 to i64, !dbg !1306
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1306
  %302 = load i16, i16* %301, align 2, !dbg !1306, !tbaa !1308
  %303 = lshr i16 %302, 14, !dbg !1310
  %304 = trunc i16 %303 to i8, !dbg !1310
  %305 = and i8 %304, 1, !dbg !1310
  call void @llvm.dbg.value(metadata i8 %305, metadata !1047, metadata !DIExpression()), !dbg !1311
  br label %359, !dbg !1312

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1313
  store i64 0, i64* %10, align 8, !dbg !1314
  call void @llvm.dbg.value(metadata i64 0, metadata !1044, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i8 1, metadata !1047, metadata !DIExpression()), !dbg !1311
  %307 = icmp eq i64 %154, -1, !dbg !1315
  br i1 %307, label %308, label %310, !dbg !1317

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1318
  call void @llvm.dbg.value(metadata i64 %309, metadata !1019, metadata !DIExpression()), !dbg !1083
  br label %310, !dbg !1319

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1320
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  br label %312, !dbg !1321

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1322
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1323
  call void @llvm.dbg.value(metadata i8 %314, metadata !1047, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %313, metadata !1044, metadata !DIExpression()), !dbg !1305
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1324
  %315 = add i64 %313, %122, !dbg !1325
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1326
  %317 = sub i64 %311, %315, !dbg !1327
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1048, metadata !DIExpression(DW_OP_deref)), !dbg !1328
  call void @llvm.dbg.value(metadata i32* %12, metadata !1066, metadata !DIExpression(DW_OP_deref)), !dbg !1329
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1330
  call void @llvm.dbg.value(metadata i64 %318, metadata !1069, metadata !DIExpression()), !dbg !1331
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1332

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1044, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %313, metadata !1044, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %313, metadata !1044, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %313, metadata !1044, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %313, metadata !1044, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %313, metadata !1044, metadata !DIExpression()), !dbg !1305
  %320 = icmp ugt i64 %311, %315, !dbg !1333
  br i1 %320, label %321, label %344, !dbg !1335

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1044, metadata !DIExpression()), !dbg !1305
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1336
  %325 = load i8, i8* %324, align 1, !dbg !1336, !tbaa !1111
  %326 = icmp eq i8 %325, 0, !dbg !1335
  br i1 %326, label %344, label %327, !dbg !1337

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1338
  call void @llvm.dbg.value(metadata i64 %328, metadata !1044, metadata !DIExpression()), !dbg !1305
  %329 = add i64 %328, %122, !dbg !1339
  %330 = icmp ult i64 %329, %311, !dbg !1333
  br i1 %330, label %321, label %344, !dbg !1335, !llvm.loop !1340

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1341
  %333 = and i1 %116, %332, !dbg !1344
  call void @llvm.dbg.value(metadata i64 1, metadata !1070, metadata !DIExpression()), !dbg !1345
  br i1 %333, label %334, label %347, !dbg !1344

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1070, metadata !DIExpression()), !dbg !1345
  %336 = add i64 %335, %315, !dbg !1346
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1347
  %338 = load i8, i8* %337, align 1, !dbg !1347, !tbaa !1111
  %339 = sext i8 %338 to i32, !dbg !1347
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1348

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1349
  call void @llvm.dbg.value(metadata i64 %341, metadata !1070, metadata !DIExpression()), !dbg !1345
  %342 = icmp ult i64 %341, %318, !dbg !1341
  br i1 %342, label %334, label %347, !dbg !1350, !llvm.loop !1351

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1044, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i8 %314, metadata !1047, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %313, metadata !1044, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i8 %314, metadata !1047, metadata !DIExpression()), !dbg !1311
  br label %344, !dbg !1353

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1047, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %352, metadata !1044, metadata !DIExpression()), !dbg !1305
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1353
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1354, !tbaa !702
  call void @llvm.dbg.value(metadata i32 %348, metadata !1066, metadata !DIExpression()), !dbg !1329
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1356
  %350 = icmp eq i32 %349, 0, !dbg !1356
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1357
  call void @llvm.dbg.value(metadata i8 %351, metadata !1047, metadata !DIExpression()), !dbg !1311
  %352 = add i64 %318, %313, !dbg !1358
  call void @llvm.dbg.value(metadata i64 %352, metadata !1044, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i8 %351, metadata !1047, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %352, metadata !1044, metadata !DIExpression()), !dbg !1305
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1353
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1048, metadata !DIExpression(DW_OP_deref)), !dbg !1328
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1359
  %354 = icmp eq i32 %353, 0, !dbg !1360
  br i1 %354, label %312, label %355, !dbg !1361, !llvm.loop !1362

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1364
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i32 2, metadata !1020, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 2, metadata !1020, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 2, metadata !1020, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 2, metadata !1020, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 2, metadata !1020, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8 %100, metadata !1030, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8 %100, metadata !1030, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8 %100, metadata !1030, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8 %100, metadata !1030, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8 %100, metadata !1030, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i32 %94, metadata !1020, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 %94, metadata !1020, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 %94, metadata !1020, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 %94, metadata !1020, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i32 %94, metadata !1020, metadata !DIExpression()), !dbg !1084
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i8 %100, metadata !1030, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8 %100, metadata !1030, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8 %100, metadata !1030, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8 %100, metadata !1030, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i8 %100, metadata !1030, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %311, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8 %351, metadata !1047, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %352, metadata !1044, metadata !DIExpression()), !dbg !1305
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1353
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1364
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1365
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1366
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1366
  call void @llvm.dbg.value(metadata i8 %362, metadata !1047, metadata !DIExpression()), !dbg !1311
  call void @llvm.dbg.value(metadata i64 %361, metadata !1044, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.value(metadata i64 %360, metadata !1019, metadata !DIExpression()), !dbg !1083
  %363 = and i8 %362, 1, !dbg !1367
  %364 = icmp ne i8 %363, 0, !dbg !1367
  call void @llvm.dbg.value(metadata i8 %363, metadata !1043, metadata !DIExpression()), !dbg !1161
  %365 = icmp ult i64 %361, 2, !dbg !1368
  %366 = or i1 %364, %115, !dbg !1369
  %367 = and i1 %365, %366, !dbg !1370
  br i1 %367, label %467, label %368, !dbg !1370

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1371
  call void @llvm.dbg.value(metadata i64 %369, metadata !1077, metadata !DIExpression()), !dbg !1372
  br label %370, !dbg !1373

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1374
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1378
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1097
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1374
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1380
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1160
  call void @llvm.dbg.value(metadata i8 %376, metadata !1042, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i8 %375, metadata !1041, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %374, metadata !1036, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %373, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %372, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %371, metadata !1025, metadata !DIExpression()), !dbg !1150
  br i1 %366, label %423, label %377, !dbg !1384

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1385

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1042, metadata !DIExpression()), !dbg !1160
  %379 = and i8 %373, 1, !dbg !1388
  %380 = icmp eq i8 %379, 0, !dbg !1388
  %381 = and i1 %114, %380, !dbg !1388
  br i1 %381, label %382, label %398, !dbg !1388

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1390
  br i1 %383, label %384, label %386, !dbg !1394

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1390
  store i8 39, i8* %385, align 1, !dbg !1390, !tbaa !1111
  br label %386, !dbg !1390

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %387, metadata !1026, metadata !DIExpression()), !dbg !1089
  %388 = icmp ult i64 %387, %129, !dbg !1395
  br i1 %388, label %389, label %391, !dbg !1398

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1395
  store i8 36, i8* %390, align 1, !dbg !1395, !tbaa !1111
  br label %391, !dbg !1395

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1398
  call void @llvm.dbg.value(metadata i64 %392, metadata !1026, metadata !DIExpression()), !dbg !1089
  %393 = icmp ult i64 %392, %129, !dbg !1399
  br i1 %393, label %394, label %396, !dbg !1402

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1399
  store i8 39, i8* %395, align 1, !dbg !1399, !tbaa !1111
  br label %396, !dbg !1399

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1402
  call void @llvm.dbg.value(metadata i64 %397, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8 1, metadata !1033, metadata !DIExpression()), !dbg !1097
  br label %398, !dbg !1403

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1149
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1149
  call void @llvm.dbg.value(metadata i8 %400, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %399, metadata !1026, metadata !DIExpression()), !dbg !1089
  %401 = icmp ult i64 %399, %129, !dbg !1404
  br i1 %401, label %402, label %404, !dbg !1407

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1404
  store i8 92, i8* %403, align 1, !dbg !1404, !tbaa !1111
  br label %404, !dbg !1404

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1407
  call void @llvm.dbg.value(metadata i64 %405, metadata !1026, metadata !DIExpression()), !dbg !1089
  %406 = icmp ult i64 %405, %129, !dbg !1408
  br i1 %406, label %407, label %411, !dbg !1411

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1408
  %409 = or i8 %408, 48, !dbg !1408
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1408
  store i8 %409, i8* %410, align 1, !dbg !1408, !tbaa !1111
  br label %411, !dbg !1408

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1411
  call void @llvm.dbg.value(metadata i64 %412, metadata !1026, metadata !DIExpression()), !dbg !1089
  %413 = icmp ult i64 %412, %129, !dbg !1412
  br i1 %413, label %414, label %419, !dbg !1415

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1412
  %416 = and i8 %415, 7, !dbg !1412
  %417 = or i8 %416, 48, !dbg !1412
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1412
  store i8 %417, i8* %418, align 1, !dbg !1412, !tbaa !1111
  br label %419, !dbg !1412

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1415
  call void @llvm.dbg.value(metadata i64 %420, metadata !1026, metadata !DIExpression()), !dbg !1089
  %421 = and i8 %374, 7, !dbg !1416
  %422 = or i8 %421, 48, !dbg !1417
  call void @llvm.dbg.value(metadata i8 %422, metadata !1036, metadata !DIExpression()), !dbg !1176
  br label %432, !dbg !1418

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1419
  %425 = icmp eq i8 %424, 0, !dbg !1419
  br i1 %425, label %432, label %426, !dbg !1420

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1421
  br i1 %427, label %428, label %430, !dbg !1424

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1421
  store i8 92, i8* %429, align 1, !dbg !1421, !tbaa !1111
  br label %430, !dbg !1421

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1424
  call void @llvm.dbg.value(metadata i64 %431, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8 0, metadata !1041, metadata !DIExpression()), !dbg !1159
  br label %432, !dbg !1425

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1426
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1097
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1427
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1428
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1430
  call void @llvm.dbg.value(metadata i8 %437, metadata !1042, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i8 %436, metadata !1041, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %435, metadata !1036, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %434, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %433, metadata !1026, metadata !DIExpression()), !dbg !1089
  %438 = add i64 %371, 1, !dbg !1431
  %439 = icmp ugt i64 %369, %438, !dbg !1433
  br i1 %439, label %440, label %562, !dbg !1434

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1435
  %442 = icmp ne i8 %441, 0, !dbg !1435
  %443 = and i8 %437, 1, !dbg !1435
  %444 = icmp eq i8 %443, 0, !dbg !1435
  %445 = and i1 %442, %444, !dbg !1435
  br i1 %445, label %446, label %457, !dbg !1435

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1438
  br i1 %447, label %448, label %450, !dbg !1442

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1438
  store i8 39, i8* %449, align 1, !dbg !1438, !tbaa !1111
  br label %450, !dbg !1438

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i64 %451, metadata !1026, metadata !DIExpression()), !dbg !1089
  %452 = icmp ult i64 %451, %129, !dbg !1443
  br i1 %452, label %453, label %455, !dbg !1446

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1443
  store i8 39, i8* %454, align 1, !dbg !1443, !tbaa !1111
  br label %455, !dbg !1443

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1446
  call void @llvm.dbg.value(metadata i64 %456, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8 0, metadata !1033, metadata !DIExpression()), !dbg !1097
  br label %457, !dbg !1447

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1448
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1149
  call void @llvm.dbg.value(metadata i8 %459, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %458, metadata !1026, metadata !DIExpression()), !dbg !1089
  %460 = icmp ult i64 %458, %129, !dbg !1449
  br i1 %460, label %461, label %463, !dbg !1451

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1449
  store i8 %435, i8* %462, align 1, !dbg !1449, !tbaa !1111
  br label %463, !dbg !1449

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1451
  call void @llvm.dbg.value(metadata i64 %464, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %438, metadata !1025, metadata !DIExpression()), !dbg !1150
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1452
  %466 = load i8, i8* %465, align 1, !dbg !1452, !tbaa !1111
  call void @llvm.dbg.value(metadata i8 %466, metadata !1036, metadata !DIExpression()), !dbg !1176
  br label %370, !dbg !1453, !llvm.loop !1454

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1457
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1149
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1090
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1458
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1149
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1149
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1174
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1174
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1174
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8 %476, metadata !1043, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8 %475, metadata !1042, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i8 %155, metadata !1041, metadata !DIExpression()), !dbg !1159
  call void @llvm.dbg.value(metadata i8 %474, metadata !1036, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %473, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %472, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %471, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %470, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %469, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %468, metadata !1025, metadata !DIExpression()), !dbg !1150
  br i1 %105, label %489, label %478, !dbg !1459

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
  br i1 %112, label %490, label %512, !dbg !1461

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1462

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
  %501 = lshr i8 %494, 5, !dbg !1463
  %502 = zext i8 %501 to i64, !dbg !1463
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1464
  %504 = load i32, i32* %503, align 4, !dbg !1464, !tbaa !702
  %505 = and i8 %494, 31, !dbg !1465
  %506 = zext i8 %505 to i32, !dbg !1465
  %507 = shl i32 1, %506, !dbg !1466
  %508 = and i32 %504, %507, !dbg !1466
  %509 = icmp eq i32 %508, 0, !dbg !1466
  %510 = icmp eq i8 %155, 0, !dbg !1467
  %511 = and i1 %510, %509, !dbg !1468
  br i1 %511, label %562, label %524, !dbg !1468

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
  %523 = icmp eq i8 %155, 0, !dbg !1467
  br i1 %523, label %562, label %524, !dbg !1469

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1470
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1149
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1090
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1458
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1097
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1098
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1471
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1174
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8 %532, metadata !1043, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8 %531, metadata !1036, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %530, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %529, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %528, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %527, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %526, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %525, metadata !1025, metadata !DIExpression()), !dbg !1150
  br i1 %110, label %534, label %661, !dbg !1474

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1042, metadata !DIExpression()), !dbg !1160
  %535 = and i8 %529, 1, !dbg !1476
  %536 = icmp eq i8 %535, 0, !dbg !1476
  %537 = and i1 %114, %536, !dbg !1476
  br i1 %537, label %538, label %554, !dbg !1476

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1478
  br i1 %539, label %540, label %542, !dbg !1482

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1478
  store i8 39, i8* %541, align 1, !dbg !1478, !tbaa !1111
  br label %542, !dbg !1478

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1482
  call void @llvm.dbg.value(metadata i64 %543, metadata !1026, metadata !DIExpression()), !dbg !1089
  %544 = icmp ult i64 %543, %533, !dbg !1483
  br i1 %544, label %545, label %547, !dbg !1486

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1483
  store i8 36, i8* %546, align 1, !dbg !1483, !tbaa !1111
  br label %547, !dbg !1483

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1486
  call void @llvm.dbg.value(metadata i64 %548, metadata !1026, metadata !DIExpression()), !dbg !1089
  %549 = icmp ult i64 %548, %533, !dbg !1487
  br i1 %549, label %550, label %552, !dbg !1490

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1487
  store i8 39, i8* %551, align 1, !dbg !1487, !tbaa !1111
  br label %552, !dbg !1487

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1490
  call void @llvm.dbg.value(metadata i64 %553, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8 1, metadata !1033, metadata !DIExpression()), !dbg !1097
  br label %554, !dbg !1491

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1448
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1149
  call void @llvm.dbg.value(metadata i8 %556, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %555, metadata !1026, metadata !DIExpression()), !dbg !1089
  %557 = icmp ult i64 %555, %533, !dbg !1492
  br i1 %557, label %558, label %560, !dbg !1495

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1492
  store i8 92, i8* %559, align 1, !dbg !1492, !tbaa !1111
  br label %560, !dbg !1492

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %561, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %572, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8 %571, metadata !1043, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8 %570, metadata !1042, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i8 %569, metadata !1036, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %568, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %567, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %566, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %565, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %564, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %563, metadata !1025, metadata !DIExpression()), !dbg !1150
  br label %589, !dbg !1496

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1470
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1149
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1090
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1458
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1097
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1098
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1499
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1174
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1174
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8 %571, metadata !1043, metadata !DIExpression()), !dbg !1161
  call void @llvm.dbg.value(metadata i8 %570, metadata !1042, metadata !DIExpression()), !dbg !1160
  call void @llvm.dbg.value(metadata i8 %569, metadata !1036, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.value(metadata i8 %568, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %567, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %566, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %565, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %564, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %563, metadata !1025, metadata !DIExpression()), !dbg !1150
  %573 = and i8 %567, 1, !dbg !1496
  %574 = icmp ne i8 %573, 0, !dbg !1496
  %575 = and i8 %570, 1, !dbg !1496
  %576 = icmp eq i8 %575, 0, !dbg !1496
  %577 = and i1 %574, %576, !dbg !1496
  br i1 %577, label %578, label %589, !dbg !1496

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1500
  br i1 %579, label %580, label %582, !dbg !1504

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1500
  store i8 39, i8* %581, align 1, !dbg !1500, !tbaa !1111
  br label %582, !dbg !1500

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %583, metadata !1026, metadata !DIExpression()), !dbg !1089
  %584 = icmp ult i64 %583, %572, !dbg !1505
  br i1 %584, label %585, label %587, !dbg !1508

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1505
  store i8 39, i8* %586, align 1, !dbg !1505, !tbaa !1111
  br label %587, !dbg !1505

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1508
  call void @llvm.dbg.value(metadata i64 %588, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i8 0, metadata !1033, metadata !DIExpression()), !dbg !1097
  br label %589, !dbg !1509

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1448
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1149
  call void @llvm.dbg.value(metadata i8 %598, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %597, metadata !1026, metadata !DIExpression()), !dbg !1089
  %599 = icmp ult i64 %597, %590, !dbg !1510
  br i1 %599, label %600, label %602, !dbg !1513

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1510
  store i8 %592, i8* %601, align 1, !dbg !1510, !tbaa !1111
  br label %602, !dbg !1510

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1513
  call void @llvm.dbg.value(metadata i64 %603, metadata !1026, metadata !DIExpression()), !dbg !1089
  %604 = and i8 %591, 1, !dbg !1514
  %605 = icmp eq i8 %604, 0, !dbg !1514
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1516
  call void @llvm.dbg.value(metadata i8 %606, metadata !1035, metadata !DIExpression()), !dbg !1099
  br label %607, !dbg !1517

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1470
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1149
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1090
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1458
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1097
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1149
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1099
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8 %614, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 %613, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %612, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i64 %611, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %610, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %609, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %608, metadata !1025, metadata !DIExpression()), !dbg !1150
  %616 = add i64 %608, 1, !dbg !1518
  call void @llvm.dbg.value(metadata i64 %616, metadata !1025, metadata !DIExpression()), !dbg !1150
  br label %121, !dbg !1519, !llvm.loop !1520

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8 %126, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %126, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %127, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %127, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %128, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 %128, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8 %126, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %126, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %127, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %127, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %128, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 %128, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8 %126, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %126, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %127, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %127, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %128, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 %128, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8 %126, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %126, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %127, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %127, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %128, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 %128, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %618, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %618, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8 %126, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %126, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %127, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %127, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %128, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 %128, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %125, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i64 %125, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8 %126, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %126, metadata !1033, metadata !DIExpression()), !dbg !1097
  call void @llvm.dbg.value(metadata i8 %127, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %127, metadata !1034, metadata !DIExpression()), !dbg !1098
  call void @llvm.dbg.value(metadata i8 %128, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i8 %128, metadata !1035, metadata !DIExpression()), !dbg !1099
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  %619 = icmp eq i64 %123, 0, !dbg !1522
  %620 = and i1 %114, %619, !dbg !1524
  %621 = xor i1 %620, true, !dbg !1524
  %622 = or i1 %110, %621, !dbg !1524
  br i1 %622, label %623, label %661, !dbg !1524

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1525
  %625 = xor i1 %624, true, !dbg !1525
  %626 = and i8 %127, 1, !dbg !1527
  %627 = icmp eq i8 %626, 0, !dbg !1527
  %628 = or i1 %627, %625, !dbg !1525
  br i1 %628, label %638, label %629, !dbg !1525

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1528
  %631 = icmp eq i8 %630, 0, !dbg !1528
  br i1 %631, label %634, label %632, !dbg !1531

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %618, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %618, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %618, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %618, metadata !1019, metadata !DIExpression()), !dbg !1083
  call void @llvm.dbg.value(metadata i8* %95, metadata !1023, metadata !DIExpression()), !dbg !1087
  call void @llvm.dbg.value(metadata i8* %96, metadata !1024, metadata !DIExpression()), !dbg !1088
  call void @llvm.dbg.value(metadata i64 %124, metadata !1027, metadata !DIExpression()), !dbg !1090
  call void @llvm.dbg.value(metadata i64 %125, metadata !1019, metadata !DIExpression()), !dbg !1083
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1532
  br label %671, !dbg !1533

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1534
  %636 = icmp ne i64 %124, 0, !dbg !1536
  %637 = and i1 %636, %635, !dbg !1537
  br i1 %637, label %27, label %638, !dbg !1537

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i8* %98, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8* %98, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i8* %98, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8* %98, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i8* %98, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8* %98, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i8* %98, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8* %98, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i8* %98, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i8* %98, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i8* %98, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %129, metadata !1017, metadata !DIExpression()), !dbg !1081
  %639 = icmp ne i8* %98, null, !dbg !1538
  %640 = and i1 %639, %110, !dbg !1540
  br i1 %640, label %641, label %656, !dbg !1540

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %123, metadata !1026, metadata !DIExpression()), !dbg !1089
  %642 = load i8, i8* %98, align 1, !dbg !1541, !tbaa !1111
  %643 = icmp eq i8 %642, 0, !dbg !1544
  br i1 %643, label %656, label %644, !dbg !1544

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %647, metadata !1026, metadata !DIExpression()), !dbg !1089
  %648 = icmp ult i64 %647, %129, !dbg !1545
  br i1 %648, label %649, label %651, !dbg !1548

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1545
  store i8 %645, i8* %650, align 1, !dbg !1545, !tbaa !1111
  br label %651, !dbg !1545

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1548
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1549
  call void @llvm.dbg.value(metadata i8* %653, metadata !1028, metadata !DIExpression()), !dbg !1091
  call void @llvm.dbg.value(metadata i64 %652, metadata !1026, metadata !DIExpression()), !dbg !1089
  %654 = load i8, i8* %653, align 1, !dbg !1541, !tbaa !1111
  %655 = icmp eq i8 %654, 0, !dbg !1544
  br i1 %655, label %656, label %644, !dbg !1544, !llvm.loop !1550

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1089
  call void @llvm.dbg.value(metadata i64 %657, metadata !1026, metadata !DIExpression()), !dbg !1089
  %658 = icmp ult i64 %657, %129, !dbg !1552
  br i1 %658, label %659, label %671, !dbg !1554

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1555
  store i8 0, i8* %660, align 1, !dbg !1556, !tbaa !1111
  br label %671, !dbg !1555

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1017, metadata !DIExpression()), !dbg !1081
  call void @llvm.dbg.value(metadata i64 %663, metadata !1019, metadata !DIExpression()), !dbg !1083
  %665 = icmp ne i32 %662, 2, !dbg !1557
  %666 = icmp eq i8 %102, 0, !dbg !1559
  %667 = or i1 %665, %666, !dbg !1560
  call void @llvm.dbg.value(metadata i32 4, metadata !1020, metadata !DIExpression()), !dbg !1084
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1560
  call void @llvm.dbg.value(metadata i32 %668, metadata !1020, metadata !DIExpression()), !dbg !1084
  %669 = and i32 %5, -3, !dbg !1561
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1562
  br label %671, !dbg !1563

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1564
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1565 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1569, metadata !DIExpression()), !dbg !1573
  call void @llvm.dbg.value(metadata i32 %1, metadata !1570, metadata !DIExpression()), !dbg !1574
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1575
  call void @llvm.dbg.value(metadata i8* %3, metadata !1571, metadata !DIExpression()), !dbg !1576
  %4 = icmp eq i8* %3, %0, !dbg !1577
  br i1 %4, label %5, label %71, !dbg !1579

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1580
  call void @llvm.dbg.value(metadata i8* %6, metadata !1572, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata i8* %6, metadata !1582, metadata !DIExpression()), !dbg !1598
  call void @llvm.dbg.value(metadata i8* null, metadata !1588, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i8 85, metadata !1589, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8 84, metadata !1590, metadata !DIExpression()), !dbg !1603
  call void @llvm.dbg.value(metadata i8 70, metadata !1591, metadata !DIExpression()), !dbg !1604
  call void @llvm.dbg.value(metadata i8 45, metadata !1592, metadata !DIExpression()), !dbg !1605
  call void @llvm.dbg.value(metadata i8 56, metadata !1593, metadata !DIExpression()), !dbg !1606
  call void @llvm.dbg.value(metadata i8 0, metadata !1594, metadata !DIExpression()), !dbg !1607
  call void @llvm.dbg.value(metadata i8 0, metadata !1595, metadata !DIExpression()), !dbg !1608
  call void @llvm.dbg.value(metadata i8 0, metadata !1596, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata i8 0, metadata !1597, metadata !DIExpression()), !dbg !1610
  %7 = load i8, i8* %6, align 1, !dbg !1611, !tbaa !1111
  %8 = and i8 %7, -33, !dbg !1611
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1611

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1613, metadata !DIExpression()), !dbg !1627
  call void @llvm.dbg.value(metadata i8* null, metadata !1618, metadata !DIExpression()), !dbg !1631
  call void @llvm.dbg.value(metadata i8 84, metadata !1619, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.value(metadata i8 70, metadata !1620, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i8 45, metadata !1621, metadata !DIExpression()), !dbg !1634
  call void @llvm.dbg.value(metadata i8 56, metadata !1622, metadata !DIExpression()), !dbg !1635
  call void @llvm.dbg.value(metadata i8 0, metadata !1623, metadata !DIExpression()), !dbg !1636
  call void @llvm.dbg.value(metadata i8 0, metadata !1624, metadata !DIExpression()), !dbg !1637
  call void @llvm.dbg.value(metadata i8 0, metadata !1625, metadata !DIExpression()), !dbg !1638
  call void @llvm.dbg.value(metadata i8 0, metadata !1626, metadata !DIExpression()), !dbg !1639
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1640
  %11 = load i8, i8* %10, align 1, !dbg !1640, !tbaa !1111
  %12 = and i8 %11, -33, !dbg !1640
  %13 = icmp eq i8 %12, 84, !dbg !1640
  br i1 %13, label %14, label %68, !dbg !1640

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1642, metadata !DIExpression()), !dbg !1655
  call void @llvm.dbg.value(metadata i8* null, metadata !1647, metadata !DIExpression()), !dbg !1659
  call void @llvm.dbg.value(metadata i8 70, metadata !1648, metadata !DIExpression()), !dbg !1660
  call void @llvm.dbg.value(metadata i8 45, metadata !1649, metadata !DIExpression()), !dbg !1661
  call void @llvm.dbg.value(metadata i8 56, metadata !1650, metadata !DIExpression()), !dbg !1662
  call void @llvm.dbg.value(metadata i8 0, metadata !1651, metadata !DIExpression()), !dbg !1663
  call void @llvm.dbg.value(metadata i8 0, metadata !1652, metadata !DIExpression()), !dbg !1664
  call void @llvm.dbg.value(metadata i8 0, metadata !1653, metadata !DIExpression()), !dbg !1665
  call void @llvm.dbg.value(metadata i8 0, metadata !1654, metadata !DIExpression()), !dbg !1666
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1667
  %16 = load i8, i8* %15, align 1, !dbg !1667, !tbaa !1111
  %17 = and i8 %16, -33, !dbg !1667
  %18 = icmp eq i8 %17, 70, !dbg !1667
  br i1 %18, label %19, label %68, !dbg !1667

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1669, metadata !DIExpression()), !dbg !1681
  call void @llvm.dbg.value(metadata i8* null, metadata !1674, metadata !DIExpression()), !dbg !1685
  call void @llvm.dbg.value(metadata i8 45, metadata !1675, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata i8 56, metadata !1676, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.value(metadata i8 0, metadata !1677, metadata !DIExpression()), !dbg !1688
  call void @llvm.dbg.value(metadata i8 0, metadata !1678, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.value(metadata i8 0, metadata !1679, metadata !DIExpression()), !dbg !1690
  call void @llvm.dbg.value(metadata i8 0, metadata !1680, metadata !DIExpression()), !dbg !1691
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1692
  %21 = load i8, i8* %20, align 1, !dbg !1692, !tbaa !1111
  %22 = icmp eq i8 %21, 45, !dbg !1692
  br i1 %22, label %23, label %68, !dbg !1694

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1695, metadata !DIExpression()), !dbg !1706
  call void @llvm.dbg.value(metadata i8* null, metadata !1700, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.value(metadata i8 56, metadata !1701, metadata !DIExpression()), !dbg !1711
  call void @llvm.dbg.value(metadata i8 0, metadata !1702, metadata !DIExpression()), !dbg !1712
  call void @llvm.dbg.value(metadata i8 0, metadata !1703, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.value(metadata i8 0, metadata !1704, metadata !DIExpression()), !dbg !1714
  call void @llvm.dbg.value(metadata i8 0, metadata !1705, metadata !DIExpression()), !dbg !1715
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1716
  %25 = load i8, i8* %24, align 1, !dbg !1716, !tbaa !1111
  %26 = icmp eq i8 %25, 56, !dbg !1716
  br i1 %26, label %27, label %68, !dbg !1718

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1719, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.value(metadata i8* null, metadata !1724, metadata !DIExpression()), !dbg !1733
  call void @llvm.dbg.value(metadata i8 0, metadata !1725, metadata !DIExpression()), !dbg !1734
  call void @llvm.dbg.value(metadata i8 0, metadata !1726, metadata !DIExpression()), !dbg !1735
  call void @llvm.dbg.value(metadata i8 0, metadata !1727, metadata !DIExpression()), !dbg !1736
  call void @llvm.dbg.value(metadata i8 0, metadata !1728, metadata !DIExpression()), !dbg !1737
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1738
  %29 = load i8, i8* %28, align 1, !dbg !1738, !tbaa !1111
  %30 = icmp eq i8 %29, 0, !dbg !1738
  br i1 %30, label %31, label %68, !dbg !1740

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1741, !tbaa !1111
  %33 = icmp eq i8 %32, 96, !dbg !1742
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.61, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.62, i64 0, i64 0), !dbg !1741
  br label %71, !dbg !1743

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1613, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* null, metadata !1618, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 66, metadata !1619, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 49, metadata !1620, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 56, metadata !1621, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 48, metadata !1622, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 51, metadata !1623, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 48, metadata !1624, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 0, metadata !1625, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i8 0, metadata !1626, metadata !DIExpression()), !dbg !1756
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1757
  %37 = load i8, i8* %36, align 1, !dbg !1757, !tbaa !1111
  %38 = and i8 %37, -33, !dbg !1757
  %39 = icmp eq i8 %38, 66, !dbg !1757
  br i1 %39, label %40, label %68, !dbg !1757

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1642, metadata !DIExpression()), !dbg !1758
  call void @llvm.dbg.value(metadata i8* null, metadata !1647, metadata !DIExpression()), !dbg !1760
  call void @llvm.dbg.value(metadata i8 49, metadata !1648, metadata !DIExpression()), !dbg !1761
  call void @llvm.dbg.value(metadata i8 56, metadata !1649, metadata !DIExpression()), !dbg !1762
  call void @llvm.dbg.value(metadata i8 48, metadata !1650, metadata !DIExpression()), !dbg !1763
  call void @llvm.dbg.value(metadata i8 51, metadata !1651, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i8 48, metadata !1652, metadata !DIExpression()), !dbg !1765
  call void @llvm.dbg.value(metadata i8 0, metadata !1653, metadata !DIExpression()), !dbg !1766
  call void @llvm.dbg.value(metadata i8 0, metadata !1654, metadata !DIExpression()), !dbg !1767
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1768
  %42 = load i8, i8* %41, align 1, !dbg !1768, !tbaa !1111
  %43 = icmp eq i8 %42, 49, !dbg !1768
  br i1 %43, label %44, label %68, !dbg !1769

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1669, metadata !DIExpression()), !dbg !1770
  call void @llvm.dbg.value(metadata i8* null, metadata !1674, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.value(metadata i8 56, metadata !1675, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8 48, metadata !1676, metadata !DIExpression()), !dbg !1774
  call void @llvm.dbg.value(metadata i8 51, metadata !1677, metadata !DIExpression()), !dbg !1775
  call void @llvm.dbg.value(metadata i8 48, metadata !1678, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i8 0, metadata !1679, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 0, metadata !1680, metadata !DIExpression()), !dbg !1778
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1779
  %46 = load i8, i8* %45, align 1, !dbg !1779, !tbaa !1111
  %47 = icmp eq i8 %46, 56, !dbg !1779
  br i1 %47, label %48, label %68, !dbg !1780

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1695, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8* null, metadata !1700, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8 48, metadata !1701, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 51, metadata !1702, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.value(metadata i8 48, metadata !1703, metadata !DIExpression()), !dbg !1786
  call void @llvm.dbg.value(metadata i8 0, metadata !1704, metadata !DIExpression()), !dbg !1787
  call void @llvm.dbg.value(metadata i8 0, metadata !1705, metadata !DIExpression()), !dbg !1788
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1789
  %50 = load i8, i8* %49, align 1, !dbg !1789, !tbaa !1111
  %51 = icmp eq i8 %50, 48, !dbg !1789
  br i1 %51, label %52, label %68, !dbg !1790

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1719, metadata !DIExpression()), !dbg !1791
  call void @llvm.dbg.value(metadata i8* null, metadata !1724, metadata !DIExpression()), !dbg !1793
  call void @llvm.dbg.value(metadata i8 51, metadata !1725, metadata !DIExpression()), !dbg !1794
  call void @llvm.dbg.value(metadata i8 48, metadata !1726, metadata !DIExpression()), !dbg !1795
  call void @llvm.dbg.value(metadata i8 0, metadata !1727, metadata !DIExpression()), !dbg !1796
  call void @llvm.dbg.value(metadata i8 0, metadata !1728, metadata !DIExpression()), !dbg !1797
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1798
  %54 = load i8, i8* %53, align 1, !dbg !1798, !tbaa !1111
  %55 = icmp eq i8 %54, 51, !dbg !1798
  br i1 %55, label %56, label %68, !dbg !1799

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1800, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8* null, metadata !1805, metadata !DIExpression()), !dbg !1813
  call void @llvm.dbg.value(metadata i8 48, metadata !1806, metadata !DIExpression()), !dbg !1814
  call void @llvm.dbg.value(metadata i8 0, metadata !1807, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.value(metadata i8 0, metadata !1808, metadata !DIExpression()), !dbg !1816
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1817
  %58 = load i8, i8* %57, align 1, !dbg !1817, !tbaa !1111
  %59 = icmp eq i8 %58, 48, !dbg !1817
  br i1 %59, label %60, label %68, !dbg !1819

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1820, metadata !DIExpression()), !dbg !1828
  call void @llvm.dbg.value(metadata i8* null, metadata !1825, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i8 0, metadata !1826, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i8 0, metadata !1827, metadata !DIExpression()), !dbg !1834
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1835
  %62 = load i8, i8* %61, align 1, !dbg !1835, !tbaa !1111
  %63 = icmp eq i8 %62, 0, !dbg !1835
  br i1 %63, label %64, label %68, !dbg !1837

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1838, !tbaa !1111
  %66 = icmp eq i8 %65, 96, !dbg !1839
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.63, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.64, i64 0, i64 0), !dbg !1838
  br label %71, !dbg !1840

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1841
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.60, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.59, i64 0, i64 0), !dbg !1842
  br label %71, !dbg !1843

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1844
  ret i8* %72, !dbg !1845
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1846 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1850, metadata !DIExpression()), !dbg !1853
  call void @llvm.dbg.value(metadata i64 %1, metadata !1851, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1852, metadata !DIExpression()), !dbg !1855
  call void @llvm.dbg.value(metadata i8* %0, metadata !1856, metadata !DIExpression()) #10, !dbg !1869
  call void @llvm.dbg.value(metadata i64 %1, metadata !1861, metadata !DIExpression()) #10, !dbg !1871
  call void @llvm.dbg.value(metadata i64* null, metadata !1862, metadata !DIExpression()) #10, !dbg !1872
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1863, metadata !DIExpression()) #10, !dbg !1873
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !1874
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !1874
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1864, metadata !DIExpression()) #10, !dbg !1875
  %6 = tail call i32* @__errno_location() #17, !dbg !1876
  %7 = load i32, i32* %6, align 4, !dbg !1876, !tbaa !702
  call void @llvm.dbg.value(metadata i32 %7, metadata !1865, metadata !DIExpression()) #10, !dbg !1877
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !1878
  %9 = load i32, i32* %8, align 4, !dbg !1878, !tbaa !949
  %10 = or i32 %9, 1, !dbg !1879
  call void @llvm.dbg.value(metadata i32 %10, metadata !1866, metadata !DIExpression()) #10, !dbg !1880
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1881
  %12 = load i32, i32* %11, align 8, !dbg !1881, !tbaa !889
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !1882
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1883
  %15 = load i8*, i8** %14, align 8, !dbg !1883, !tbaa !975
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1884
  %17 = load i8*, i8** %16, align 8, !dbg !1884, !tbaa !978
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !1885
  %19 = add i64 %18, 1, !dbg !1886
  call void @llvm.dbg.value(metadata i64 %19, metadata !1867, metadata !DIExpression()) #10, !dbg !1887
  call void @llvm.dbg.value(metadata i64 %19, metadata !1888, metadata !DIExpression()) #10, !dbg !1893
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !1895
  call void @llvm.dbg.value(metadata i8* %20, metadata !1868, metadata !DIExpression()) #10, !dbg !1896
  %21 = load i32, i32* %11, align 8, !dbg !1897, !tbaa !889
  %22 = load i8*, i8** %14, align 8, !dbg !1898, !tbaa !975
  %23 = load i8*, i8** %16, align 8, !dbg !1899, !tbaa !978
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !1900
  store i32 %7, i32* %6, align 4, !dbg !1901, !tbaa !702
  ret i8* %20, !dbg !1902
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1857 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1856, metadata !DIExpression()), !dbg !1903
  call void @llvm.dbg.value(metadata i64 %1, metadata !1861, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i64* %2, metadata !1862, metadata !DIExpression()), !dbg !1905
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1863, metadata !DIExpression()), !dbg !1906
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !1907
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !1907
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1864, metadata !DIExpression()), !dbg !1908
  %7 = tail call i32* @__errno_location() #17, !dbg !1909
  %8 = load i32, i32* %7, align 4, !dbg !1909, !tbaa !702
  call void @llvm.dbg.value(metadata i32 %8, metadata !1865, metadata !DIExpression()), !dbg !1910
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !1911
  %10 = load i32, i32* %9, align 4, !dbg !1911, !tbaa !949
  %11 = icmp ne i64* %2, null, !dbg !1912
  %12 = xor i1 %11, true, !dbg !1912
  %13 = zext i1 %12 to i32, !dbg !1912
  %14 = or i32 %10, %13, !dbg !1913
  call void @llvm.dbg.value(metadata i32 %14, metadata !1866, metadata !DIExpression()), !dbg !1914
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !1915
  %16 = load i32, i32* %15, align 8, !dbg !1915, !tbaa !889
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !1916
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !1917
  %19 = load i8*, i8** %18, align 8, !dbg !1917, !tbaa !975
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !1918
  %21 = load i8*, i8** %20, align 8, !dbg !1918, !tbaa !978
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !1919
  %23 = add i64 %22, 1, !dbg !1920
  call void @llvm.dbg.value(metadata i64 %23, metadata !1867, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i64 %23, metadata !1888, metadata !DIExpression()) #10, !dbg !1922
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !1924
  call void @llvm.dbg.value(metadata i8* %24, metadata !1868, metadata !DIExpression()), !dbg !1925
  %25 = load i32, i32* %15, align 8, !dbg !1926, !tbaa !889
  %26 = load i8*, i8** %18, align 8, !dbg !1927, !tbaa !975
  %27 = load i8*, i8** %20, align 8, !dbg !1928, !tbaa !978
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !1929
  store i32 %8, i32* %7, align 4, !dbg !1930, !tbaa !702
  br i1 %11, label %29, label %30, !dbg !1931

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !1932, !tbaa !1934
  br label %30, !dbg !1936

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !1937
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !1938 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !1942, !tbaa !635
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !1940, metadata !DIExpression()), !dbg !1943
  call void @llvm.dbg.value(metadata i32 1, metadata !1941, metadata !DIExpression()), !dbg !1944
  %2 = load i32, i32* @nslots, align 4, !dbg !1945, !tbaa !702
  %3 = icmp sgt i32 %2, 1, !dbg !1948
  br i1 %3, label %4, label %12, !dbg !1949

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !1941, metadata !DIExpression()), !dbg !1944
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !1950
  %7 = load i8*, i8** %6, align 8, !dbg !1950, !tbaa !1951
  tail call void @free(i8* %7) #10, !dbg !1953
  %8 = add nuw nsw i64 %5, 1, !dbg !1954
  call void @llvm.dbg.value(metadata i32 undef, metadata !1941, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1944
  %9 = load i32, i32* @nslots, align 4, !dbg !1945, !tbaa !702
  %10 = sext i32 %9 to i64, !dbg !1948
  %11 = icmp slt i64 %8, %10, !dbg !1948
  br i1 %11, label %4, label %12, !dbg !1949, !llvm.loop !1955

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !1957
  %14 = load i8*, i8** %13, align 8, !dbg !1957, !tbaa !1951
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !1959
  br i1 %15, label %17, label %16, !dbg !1960

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !1961
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !1963, !tbaa !1964
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !1965, !tbaa !1951
  br label %17, !dbg !1966

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !1967
  br i1 %18, label %21, label %19, !dbg !1969

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !1970
  tail call void @free(i8* %20) #10, !dbg !1972
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !1973, !tbaa !635
  br label %21, !dbg !1974

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !1975, !tbaa !702
  ret void, !dbg !1976
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !1977 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1981, metadata !DIExpression()), !dbg !1983
  call void @llvm.dbg.value(metadata i8* %1, metadata !1982, metadata !DIExpression()), !dbg !1984
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !1985
  ret i8* %3, !dbg !1986
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !1987 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !1991, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i8* %1, metadata !1992, metadata !DIExpression()), !dbg !2007
  call void @llvm.dbg.value(metadata i64 %2, metadata !1993, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1994, metadata !DIExpression()), !dbg !2009
  %5 = tail call i32* @__errno_location() #17, !dbg !2010
  %6 = load i32, i32* %5, align 4, !dbg !2010, !tbaa !702
  call void @llvm.dbg.value(metadata i32 %6, metadata !1995, metadata !DIExpression()), !dbg !2011
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2012, !tbaa !635
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !1996, metadata !DIExpression()), !dbg !2013
  %8 = icmp slt i32 %0, 0, !dbg !2014
  br i1 %8, label %9, label %10, !dbg !2016

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2017
  unreachable, !dbg !2017

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2018, !tbaa !702
  %12 = icmp sgt i32 %11, %0, !dbg !2019
  br i1 %12, label %34, label %13, !dbg !2020

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2021
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2000, metadata !DIExpression()), !dbg !2022
  %15 = icmp eq i32 %0, 2147483647, !dbg !2023
  br i1 %15, label %16, label %17, !dbg !2025

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2026
  unreachable, !dbg !2026

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2027
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2027
  %20 = add nsw i32 %0, 1, !dbg !2028
  %21 = sext i32 %20 to i64, !dbg !2029
  %22 = shl nsw i64 %21, 4, !dbg !2030
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2031
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2031
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !1996, metadata !DIExpression()), !dbg !2013
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2032, !tbaa !635
  br i1 %14, label %25, label %26, !dbg !2033

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2034, !tbaa.struct !2036
  br label %26, !dbg !2037

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2038, !tbaa !702
  %28 = sext i32 %27 to i64, !dbg !2039
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2039
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2040
  %31 = sub nsw i32 %20, %27, !dbg !2041
  %32 = sext i32 %31 to i64, !dbg !2042
  %33 = shl nsw i64 %32, 4, !dbg !2043
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2040
  store i32 %20, i32* @nslots, align 4, !dbg !2044, !tbaa !702
  br label %34, !dbg !2045

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2046
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !1996, metadata !DIExpression()), !dbg !2013
  %36 = sext i32 %0 to i64, !dbg !2047
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2048
  %38 = load i64, i64* %37, align 8, !dbg !2048, !tbaa !1964
  call void @llvm.dbg.value(metadata i64 %38, metadata !2001, metadata !DIExpression()), !dbg !2049
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2050
  %40 = load i8*, i8** %39, align 8, !dbg !2050, !tbaa !1951
  call void @llvm.dbg.value(metadata i8* %40, metadata !2003, metadata !DIExpression()), !dbg !2051
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2052
  %42 = load i32, i32* %41, align 4, !dbg !2052, !tbaa !949
  %43 = or i32 %42, 1, !dbg !2053
  call void @llvm.dbg.value(metadata i32 %43, metadata !2004, metadata !DIExpression()), !dbg !2054
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2055
  %45 = load i32, i32* %44, align 8, !dbg !2055, !tbaa !889
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2056
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2057
  %48 = load i8*, i8** %47, align 8, !dbg !2057, !tbaa !975
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2058
  %50 = load i8*, i8** %49, align 8, !dbg !2058, !tbaa !978
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2059
  call void @llvm.dbg.value(metadata i64 %51, metadata !2005, metadata !DIExpression()), !dbg !2060
  %52 = icmp ugt i64 %38, %51, !dbg !2061
  br i1 %52, label %63, label %53, !dbg !2063

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2064
  call void @llvm.dbg.value(metadata i64 %54, metadata !2001, metadata !DIExpression()), !dbg !2049
  store i64 %54, i64* %37, align 8, !dbg !2066, !tbaa !1964
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2067
  br i1 %55, label %57, label %56, !dbg !2069

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2070
  br label %57, !dbg !2070

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !1888, metadata !DIExpression()) #10, !dbg !2071
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2073
  call void @llvm.dbg.value(metadata i8* %58, metadata !2003, metadata !DIExpression()), !dbg !2051
  store i8* %58, i8** %39, align 8, !dbg !2074, !tbaa !1951
  %59 = load i32, i32* %44, align 8, !dbg !2075, !tbaa !889
  %60 = load i8*, i8** %47, align 8, !dbg !2076, !tbaa !975
  %61 = load i8*, i8** %49, align 8, !dbg !2077, !tbaa !978
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2078
  br label %63, !dbg !2079

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2080
  call void @llvm.dbg.value(metadata i8* %64, metadata !2003, metadata !DIExpression()), !dbg !2051
  store i32 %6, i32* %5, align 4, !dbg !2081, !tbaa !702
  ret i8* %64, !dbg !2082
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2083 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2087, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8* %1, metadata !2088, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i64 %2, metadata !2089, metadata !DIExpression()), !dbg !2092
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2093
  ret i8* %4, !dbg !2094
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2095 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2099, metadata !DIExpression()), !dbg !2100
  call void @llvm.dbg.value(metadata i32 0, metadata !1981, metadata !DIExpression()) #10, !dbg !2101
  call void @llvm.dbg.value(metadata i8* %0, metadata !1982, metadata !DIExpression()) #10, !dbg !2103
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2104
  ret i8* %2, !dbg !2105
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2106 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2110, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i64 %1, metadata !2111, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i32 0, metadata !2087, metadata !DIExpression()) #10, !dbg !2114
  call void @llvm.dbg.value(metadata i8* %0, metadata !2088, metadata !DIExpression()) #10, !dbg !2116
  call void @llvm.dbg.value(metadata i64 %1, metadata !2089, metadata !DIExpression()) #10, !dbg !2117
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2118
  ret i8* %3, !dbg !2119
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2120 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2124, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.value(metadata i32 %1, metadata !2125, metadata !DIExpression()), !dbg !2129
  call void @llvm.dbg.value(metadata i8* %2, metadata !2126, metadata !DIExpression()), !dbg !2130
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2131
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2131
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2127, metadata !DIExpression(DW_OP_deref)), !dbg !2132
  call void @llvm.dbg.value(metadata i32 %1, metadata !2133, metadata !DIExpression()) #10, !dbg !2139
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2141, !alias.scope !2142
  %6 = icmp eq i32 %1, 10, !dbg !2145
  br i1 %6, label %7, label %8, !dbg !2147

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2148, !noalias !2142
  unreachable, !dbg !2148

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2149
  store i32 %1, i32* %9, align 8, !dbg !2150, !tbaa !889, !alias.scope !2142
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2127, metadata !DIExpression(DW_OP_deref)), !dbg !2132
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2138, metadata !DIExpression(DW_OP_deref)), !dbg !2141
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2151
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2152
  ret i8* %10, !dbg !2153
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2154 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2158, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i32 %1, metadata !2159, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8* %2, metadata !2160, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i64 %3, metadata !2161, metadata !DIExpression()), !dbg !2166
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2167
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2167
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2162, metadata !DIExpression(DW_OP_deref)), !dbg !2168
  call void @llvm.dbg.value(metadata i32 %1, metadata !2133, metadata !DIExpression()) #10, !dbg !2169
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2171, !alias.scope !2172
  %7 = icmp eq i32 %1, 10, !dbg !2175
  br i1 %7, label %8, label %9, !dbg !2176

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2177, !noalias !2172
  unreachable, !dbg !2177

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2178
  store i32 %1, i32* %10, align 8, !dbg !2179, !tbaa !889, !alias.scope !2172
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2162, metadata !DIExpression(DW_OP_deref)), !dbg !2168
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2138, metadata !DIExpression(DW_OP_deref)), !dbg !2171
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2180
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2181
  ret i8* %11, !dbg !2182
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2183 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2187, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i8* %1, metadata !2188, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.value(metadata i32 0, metadata !2124, metadata !DIExpression()) #10, !dbg !2191
  call void @llvm.dbg.value(metadata i32 %0, metadata !2125, metadata !DIExpression()) #10, !dbg !2193
  call void @llvm.dbg.value(metadata i8* %1, metadata !2126, metadata !DIExpression()) #10, !dbg !2194
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2195
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2195
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2127, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2196
  call void @llvm.dbg.value(metadata i32 %0, metadata !2133, metadata !DIExpression()) #10, !dbg !2197
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2199, !alias.scope !2200
  %5 = icmp eq i32 %0, 10, !dbg !2203
  br i1 %5, label %6, label %7, !dbg !2204

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2205, !noalias !2200
  unreachable, !dbg !2205

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2206
  store i32 %0, i32* %8, align 8, !dbg !2207, !tbaa !889, !alias.scope !2200
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2127, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2196
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2138, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2199
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2208
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2209
  ret i8* %9, !dbg !2210
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2211 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2215, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8* %1, metadata !2216, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i64 %2, metadata !2217, metadata !DIExpression()), !dbg !2220
  call void @llvm.dbg.value(metadata i32 0, metadata !2158, metadata !DIExpression()) #10, !dbg !2221
  call void @llvm.dbg.value(metadata i32 %0, metadata !2159, metadata !DIExpression()) #10, !dbg !2223
  call void @llvm.dbg.value(metadata i8* %1, metadata !2160, metadata !DIExpression()) #10, !dbg !2224
  call void @llvm.dbg.value(metadata i64 %2, metadata !2161, metadata !DIExpression()) #10, !dbg !2225
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2226
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2226
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2162, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2227
  call void @llvm.dbg.value(metadata i32 %0, metadata !2133, metadata !DIExpression()) #10, !dbg !2228
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2230, !alias.scope !2231
  %6 = icmp eq i32 %0, 10, !dbg !2234
  br i1 %6, label %7, label %8, !dbg !2235

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2236, !noalias !2231
  unreachable, !dbg !2236

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2237
  store i32 %0, i32* %9, align 8, !dbg !2238, !tbaa !889, !alias.scope !2231
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2162, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2227
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2138, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2230
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2239
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2240
  ret i8* %10, !dbg !2241
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2242 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2246, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.value(metadata i64 %1, metadata !2247, metadata !DIExpression()), !dbg !2251
  call void @llvm.dbg.value(metadata i8 %2, metadata !2248, metadata !DIExpression()), !dbg !2252
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2253
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2253
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2254, !tbaa.struct !2255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2249, metadata !DIExpression(DW_OP_deref)), !dbg !2256
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !908, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i8 %2, metadata !909, metadata !DIExpression()), !dbg !2259
  call void @llvm.dbg.value(metadata i32 1, metadata !910, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.value(metadata i8 %2, metadata !911, metadata !DIExpression()), !dbg !2261
  %6 = lshr i8 %2, 5, !dbg !2262
  %7 = zext i8 %6 to i64, !dbg !2262
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2263
  call void @llvm.dbg.value(metadata i32* %8, metadata !913, metadata !DIExpression()), !dbg !2264
  %9 = and i8 %2, 31, !dbg !2265
  %10 = zext i8 %9 to i32, !dbg !2265
  call void @llvm.dbg.value(metadata i32 %10, metadata !915, metadata !DIExpression()), !dbg !2266
  %11 = load i32, i32* %8, align 4, !dbg !2267, !tbaa !702
  %12 = lshr i32 %11, %10, !dbg !2268
  %13 = and i32 %12, 1, !dbg !2269
  call void @llvm.dbg.value(metadata i32 %13, metadata !916, metadata !DIExpression()), !dbg !2270
  %14 = xor i32 %13, 1, !dbg !2271
  %15 = shl i32 %14, %10, !dbg !2272
  %16 = xor i32 %15, %11, !dbg !2273
  store i32 %16, i32* %8, align 4, !dbg !2273, !tbaa !702
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2249, metadata !DIExpression(DW_OP_deref)), !dbg !2256
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2274
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2275
  ret i8* %17, !dbg !2276
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2277 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2281, metadata !DIExpression()), !dbg !2283
  call void @llvm.dbg.value(metadata i8 %1, metadata !2282, metadata !DIExpression()), !dbg !2284
  call void @llvm.dbg.value(metadata i8* %0, metadata !2246, metadata !DIExpression()) #10, !dbg !2285
  call void @llvm.dbg.value(metadata i64 -1, metadata !2247, metadata !DIExpression()) #10, !dbg !2287
  call void @llvm.dbg.value(metadata i8 %1, metadata !2248, metadata !DIExpression()) #10, !dbg !2288
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2289
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2289
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2290, !tbaa.struct !2255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2249, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2291
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !908, metadata !DIExpression()) #10, !dbg !2292
  call void @llvm.dbg.value(metadata i8 %1, metadata !909, metadata !DIExpression()) #10, !dbg !2294
  call void @llvm.dbg.value(metadata i32 1, metadata !910, metadata !DIExpression()) #10, !dbg !2295
  call void @llvm.dbg.value(metadata i8 %1, metadata !911, metadata !DIExpression()) #10, !dbg !2296
  %5 = lshr i8 %1, 5, !dbg !2297
  %6 = zext i8 %5 to i64, !dbg !2297
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2298
  call void @llvm.dbg.value(metadata i32* %7, metadata !913, metadata !DIExpression()) #10, !dbg !2299
  %8 = and i8 %1, 31, !dbg !2300
  %9 = zext i8 %8 to i32, !dbg !2300
  call void @llvm.dbg.value(metadata i32 %9, metadata !915, metadata !DIExpression()) #10, !dbg !2301
  %10 = load i32, i32* %7, align 4, !dbg !2302, !tbaa !702
  %11 = lshr i32 %10, %9, !dbg !2303
  %12 = and i32 %11, 1, !dbg !2304
  call void @llvm.dbg.value(metadata i32 %12, metadata !916, metadata !DIExpression()) #10, !dbg !2305
  %13 = xor i32 %12, 1, !dbg !2306
  %14 = shl i32 %13, %9, !dbg !2307
  %15 = xor i32 %14, %10, !dbg !2308
  store i32 %15, i32* %7, align 4, !dbg !2308, !tbaa !702
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2249, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2291
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2309
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2310
  ret i8* %16, !dbg !2311
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2312 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2314, metadata !DIExpression()), !dbg !2315
  call void @llvm.dbg.value(metadata i8* %0, metadata !2281, metadata !DIExpression()) #10, !dbg !2316
  call void @llvm.dbg.value(metadata i8 58, metadata !2282, metadata !DIExpression()) #10, !dbg !2318
  call void @llvm.dbg.value(metadata i8* %0, metadata !2246, metadata !DIExpression()) #10, !dbg !2319
  call void @llvm.dbg.value(metadata i64 -1, metadata !2247, metadata !DIExpression()) #10, !dbg !2321
  call void @llvm.dbg.value(metadata i8 58, metadata !2248, metadata !DIExpression()) #10, !dbg !2322
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2323
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2323
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2324, !tbaa.struct !2255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2249, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2325
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !908, metadata !DIExpression()) #10, !dbg !2326
  call void @llvm.dbg.value(metadata i8 58, metadata !909, metadata !DIExpression()) #10, !dbg !2328
  call void @llvm.dbg.value(metadata i32 1, metadata !910, metadata !DIExpression()) #10, !dbg !2329
  call void @llvm.dbg.value(metadata i8 58, metadata !911, metadata !DIExpression()) #10, !dbg !2330
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2331
  call void @llvm.dbg.value(metadata i32* %4, metadata !913, metadata !DIExpression()) #10, !dbg !2332
  call void @llvm.dbg.value(metadata i32 26, metadata !915, metadata !DIExpression()) #10, !dbg !2333
  %5 = load i32, i32* %4, align 4, !dbg !2334, !tbaa !702
  %6 = or i32 %5, 67108864, !dbg !2335
  store i32 %6, i32* %4, align 4, !dbg !2335, !tbaa !702
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2249, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2325
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2336
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2337
  ret i8* %7, !dbg !2338
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2339 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2341, metadata !DIExpression()), !dbg !2343
  call void @llvm.dbg.value(metadata i64 %1, metadata !2342, metadata !DIExpression()), !dbg !2344
  call void @llvm.dbg.value(metadata i8* %0, metadata !2246, metadata !DIExpression()) #10, !dbg !2345
  call void @llvm.dbg.value(metadata i64 %1, metadata !2247, metadata !DIExpression()) #10, !dbg !2347
  call void @llvm.dbg.value(metadata i8 58, metadata !2248, metadata !DIExpression()) #10, !dbg !2348
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2349
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2349
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2350, !tbaa.struct !2255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2249, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2351
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !908, metadata !DIExpression()) #10, !dbg !2352
  call void @llvm.dbg.value(metadata i8 58, metadata !909, metadata !DIExpression()) #10, !dbg !2354
  call void @llvm.dbg.value(metadata i32 1, metadata !910, metadata !DIExpression()) #10, !dbg !2355
  call void @llvm.dbg.value(metadata i8 58, metadata !911, metadata !DIExpression()) #10, !dbg !2356
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2357
  call void @llvm.dbg.value(metadata i32* %5, metadata !913, metadata !DIExpression()) #10, !dbg !2358
  call void @llvm.dbg.value(metadata i32 26, metadata !915, metadata !DIExpression()) #10, !dbg !2359
  %6 = load i32, i32* %5, align 4, !dbg !2360, !tbaa !702
  %7 = or i32 %6, 67108864, !dbg !2361
  store i32 %7, i32* %5, align 4, !dbg !2361, !tbaa !702
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2249, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2351
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2362
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2363
  ret i8* %8, !dbg !2364
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2365 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2138, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2371
  call void @llvm.dbg.value(metadata i32 %0, metadata !2367, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.value(metadata i32 %1, metadata !2368, metadata !DIExpression()), !dbg !2374
  call void @llvm.dbg.value(metadata i8* %2, metadata !2369, metadata !DIExpression()), !dbg !2375
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2376
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2376
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2377
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2377
  call void @llvm.dbg.value(metadata i32 %1, metadata !2133, metadata !DIExpression()) #10, !dbg !2378
  call void @llvm.dbg.value(metadata i32 0, metadata !2138, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2371
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2371, !alias.scope !2379
  %8 = icmp eq i32 %1, 10, !dbg !2382
  br i1 %8, label %9, label %10, !dbg !2383

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2384, !noalias !2379
  unreachable, !dbg !2384

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2138, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2371
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2377
  store i32 %1, i32* %11, align 8, !dbg !2377
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2377
  %13 = bitcast i32* %12 to i8*, !dbg !2377
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2377
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2377
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2370, metadata !DIExpression(DW_OP_deref)), !dbg !2385
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !908, metadata !DIExpression()), !dbg !2386
  call void @llvm.dbg.value(metadata i8 58, metadata !909, metadata !DIExpression()), !dbg !2388
  call void @llvm.dbg.value(metadata i32 1, metadata !910, metadata !DIExpression()), !dbg !2389
  call void @llvm.dbg.value(metadata i8 58, metadata !911, metadata !DIExpression()), !dbg !2390
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2391
  call void @llvm.dbg.value(metadata i32* %14, metadata !913, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i32 26, metadata !915, metadata !DIExpression()), !dbg !2393
  %15 = load i32, i32* %14, align 4, !dbg !2394, !tbaa !702
  %16 = or i32 %15, 67108864, !dbg !2395
  store i32 %16, i32* %14, align 4, !dbg !2395, !tbaa !702
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2370, metadata !DIExpression(DW_OP_deref)), !dbg !2385
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2396
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2397
  ret i8* %17, !dbg !2398
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2399 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2403, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.value(metadata i8* %1, metadata !2404, metadata !DIExpression()), !dbg !2408
  call void @llvm.dbg.value(metadata i8* %2, metadata !2405, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.value(metadata i8* %3, metadata !2406, metadata !DIExpression()), !dbg !2410
  call void @llvm.dbg.value(metadata i32 %0, metadata !2411, metadata !DIExpression()) #10, !dbg !2421
  call void @llvm.dbg.value(metadata i8* %1, metadata !2416, metadata !DIExpression()) #10, !dbg !2423
  call void @llvm.dbg.value(metadata i8* %2, metadata !2417, metadata !DIExpression()) #10, !dbg !2424
  call void @llvm.dbg.value(metadata i8* %3, metadata !2418, metadata !DIExpression()) #10, !dbg !2425
  call void @llvm.dbg.value(metadata i64 -1, metadata !2419, metadata !DIExpression()) #10, !dbg !2426
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2427
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2427
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2428, !tbaa.struct !2255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2420, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2429
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !957, metadata !DIExpression()) #10, !dbg !2430
  call void @llvm.dbg.value(metadata i8* %1, metadata !958, metadata !DIExpression()) #10, !dbg !2432
  call void @llvm.dbg.value(metadata i8* %2, metadata !959, metadata !DIExpression()) #10, !dbg !2433
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !957, metadata !DIExpression()) #10, !dbg !2430
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2434
  store i32 10, i32* %7, align 8, !dbg !2435, !tbaa !889
  %8 = icmp ne i8* %1, null, !dbg !2436
  %9 = icmp ne i8* %2, null, !dbg !2437
  %10 = and i1 %8, %9, !dbg !2438
  br i1 %10, label %12, label %11, !dbg !2438

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2439
  unreachable, !dbg !2439

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2440
  store i8* %1, i8** %13, align 8, !dbg !2441, !tbaa !975
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2442
  store i8* %2, i8** %14, align 8, !dbg !2443, !tbaa !978
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2420, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2429
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2444
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2445
  ret i8* %15, !dbg !2446
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2412 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2411, metadata !DIExpression()), !dbg !2447
  call void @llvm.dbg.value(metadata i8* %1, metadata !2416, metadata !DIExpression()), !dbg !2448
  call void @llvm.dbg.value(metadata i8* %2, metadata !2417, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i8* %3, metadata !2418, metadata !DIExpression()), !dbg !2450
  call void @llvm.dbg.value(metadata i64 %4, metadata !2419, metadata !DIExpression()), !dbg !2451
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2452
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2452
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2453, !tbaa.struct !2255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2420, metadata !DIExpression(DW_OP_deref)), !dbg !2454
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !957, metadata !DIExpression()) #10, !dbg !2455
  call void @llvm.dbg.value(metadata i8* %1, metadata !958, metadata !DIExpression()) #10, !dbg !2457
  call void @llvm.dbg.value(metadata i8* %2, metadata !959, metadata !DIExpression()) #10, !dbg !2458
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !957, metadata !DIExpression()) #10, !dbg !2455
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2459
  store i32 10, i32* %8, align 8, !dbg !2460, !tbaa !889
  %9 = icmp ne i8* %1, null, !dbg !2461
  %10 = icmp ne i8* %2, null, !dbg !2462
  %11 = and i1 %9, %10, !dbg !2463
  br i1 %11, label %13, label %12, !dbg !2463

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2464
  unreachable, !dbg !2464

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2465
  store i8* %1, i8** %14, align 8, !dbg !2466, !tbaa !975
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2467
  store i8* %2, i8** %15, align 8, !dbg !2468, !tbaa !978
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2420, metadata !DIExpression(DW_OP_deref)), !dbg !2454
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2469
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2470
  ret i8* %16, !dbg !2471
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2472 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2476, metadata !DIExpression()), !dbg !2479
  call void @llvm.dbg.value(metadata i8* %1, metadata !2477, metadata !DIExpression()), !dbg !2480
  call void @llvm.dbg.value(metadata i8* %2, metadata !2478, metadata !DIExpression()), !dbg !2481
  call void @llvm.dbg.value(metadata i32 0, metadata !2403, metadata !DIExpression()) #10, !dbg !2482
  call void @llvm.dbg.value(metadata i8* %0, metadata !2404, metadata !DIExpression()) #10, !dbg !2484
  call void @llvm.dbg.value(metadata i8* %1, metadata !2405, metadata !DIExpression()) #10, !dbg !2485
  call void @llvm.dbg.value(metadata i8* %2, metadata !2406, metadata !DIExpression()) #10, !dbg !2486
  call void @llvm.dbg.value(metadata i32 0, metadata !2411, metadata !DIExpression()) #10, !dbg !2487
  call void @llvm.dbg.value(metadata i8* %0, metadata !2416, metadata !DIExpression()) #10, !dbg !2489
  call void @llvm.dbg.value(metadata i8* %1, metadata !2417, metadata !DIExpression()) #10, !dbg !2490
  call void @llvm.dbg.value(metadata i8* %2, metadata !2418, metadata !DIExpression()) #10, !dbg !2491
  call void @llvm.dbg.value(metadata i64 -1, metadata !2419, metadata !DIExpression()) #10, !dbg !2492
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2493
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2493
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2494, !tbaa.struct !2255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2420, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2495
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !957, metadata !DIExpression()) #10, !dbg !2496
  call void @llvm.dbg.value(metadata i8* %0, metadata !958, metadata !DIExpression()) #10, !dbg !2498
  call void @llvm.dbg.value(metadata i8* %1, metadata !959, metadata !DIExpression()) #10, !dbg !2499
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !957, metadata !DIExpression()) #10, !dbg !2496
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2500
  store i32 10, i32* %6, align 8, !dbg !2501, !tbaa !889
  %7 = icmp ne i8* %0, null, !dbg !2502
  %8 = icmp ne i8* %1, null, !dbg !2503
  %9 = and i1 %7, %8, !dbg !2504
  br i1 %9, label %11, label %10, !dbg !2504

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2505
  unreachable, !dbg !2505

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2506
  store i8* %0, i8** %12, align 8, !dbg !2507, !tbaa !975
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2508
  store i8* %1, i8** %13, align 8, !dbg !2509, !tbaa !978
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2420, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2495
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2510
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2511
  ret i8* %14, !dbg !2512
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2513 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2517, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.value(metadata i8* %1, metadata !2518, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.value(metadata i8* %2, metadata !2519, metadata !DIExpression()), !dbg !2523
  call void @llvm.dbg.value(metadata i64 %3, metadata !2520, metadata !DIExpression()), !dbg !2524
  call void @llvm.dbg.value(metadata i32 0, metadata !2411, metadata !DIExpression()) #10, !dbg !2525
  call void @llvm.dbg.value(metadata i8* %0, metadata !2416, metadata !DIExpression()) #10, !dbg !2527
  call void @llvm.dbg.value(metadata i8* %1, metadata !2417, metadata !DIExpression()) #10, !dbg !2528
  call void @llvm.dbg.value(metadata i8* %2, metadata !2418, metadata !DIExpression()) #10, !dbg !2529
  call void @llvm.dbg.value(metadata i64 %3, metadata !2419, metadata !DIExpression()) #10, !dbg !2530
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2531
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2531
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2532, !tbaa.struct !2255
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2420, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2533
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !957, metadata !DIExpression()) #10, !dbg !2534
  call void @llvm.dbg.value(metadata i8* %0, metadata !958, metadata !DIExpression()) #10, !dbg !2536
  call void @llvm.dbg.value(metadata i8* %1, metadata !959, metadata !DIExpression()) #10, !dbg !2537
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !957, metadata !DIExpression()) #10, !dbg !2534
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2538
  store i32 10, i32* %7, align 8, !dbg !2539, !tbaa !889
  %8 = icmp ne i8* %0, null, !dbg !2540
  %9 = icmp ne i8* %1, null, !dbg !2541
  %10 = and i1 %8, %9, !dbg !2542
  br i1 %10, label %12, label %11, !dbg !2542

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2543
  unreachable, !dbg !2543

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2544
  store i8* %0, i8** %13, align 8, !dbg !2545, !tbaa !975
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2546
  store i8* %1, i8** %14, align 8, !dbg !2547, !tbaa !978
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2420, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2533
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2548
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2549
  ret i8* %15, !dbg !2550
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2551 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2555, metadata !DIExpression()), !dbg !2558
  call void @llvm.dbg.value(metadata i8* %1, metadata !2556, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.value(metadata i64 %2, metadata !2557, metadata !DIExpression()), !dbg !2560
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2561
  ret i8* %4, !dbg !2562
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2563 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2567, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.value(metadata i64 %1, metadata !2568, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i32 0, metadata !2555, metadata !DIExpression()) #10, !dbg !2571
  call void @llvm.dbg.value(metadata i8* %0, metadata !2556, metadata !DIExpression()) #10, !dbg !2573
  call void @llvm.dbg.value(metadata i64 %1, metadata !2557, metadata !DIExpression()) #10, !dbg !2574
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2575
  ret i8* %3, !dbg !2576
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2577 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2581, metadata !DIExpression()), !dbg !2583
  call void @llvm.dbg.value(metadata i8* %1, metadata !2582, metadata !DIExpression()), !dbg !2584
  call void @llvm.dbg.value(metadata i32 %0, metadata !2555, metadata !DIExpression()) #10, !dbg !2585
  call void @llvm.dbg.value(metadata i8* %1, metadata !2556, metadata !DIExpression()) #10, !dbg !2587
  call void @llvm.dbg.value(metadata i64 -1, metadata !2557, metadata !DIExpression()) #10, !dbg !2588
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2589
  ret i8* %3, !dbg !2590
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2591 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2595, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.value(metadata i32 0, metadata !2581, metadata !DIExpression()) #10, !dbg !2597
  call void @llvm.dbg.value(metadata i8* %0, metadata !2582, metadata !DIExpression()) #10, !dbg !2599
  call void @llvm.dbg.value(metadata i32 0, metadata !2555, metadata !DIExpression()) #10, !dbg !2600
  call void @llvm.dbg.value(metadata i8* %0, metadata !2556, metadata !DIExpression()) #10, !dbg !2602
  call void @llvm.dbg.value(metadata i64 -1, metadata !2557, metadata !DIExpression()) #10, !dbg !2603
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2604
  ret i8* %2, !dbg !2605
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2606 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2664, metadata !DIExpression()), !dbg !2670
  call void @llvm.dbg.value(metadata i8* %1, metadata !2665, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.value(metadata i8* %2, metadata !2666, metadata !DIExpression()), !dbg !2672
  call void @llvm.dbg.value(metadata i8* %3, metadata !2667, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.value(metadata i8** %4, metadata !2668, metadata !DIExpression()), !dbg !2674
  call void @llvm.dbg.value(metadata i64 %5, metadata !2669, metadata !DIExpression()), !dbg !2675
  %7 = icmp eq i8* %1, null, !dbg !2676
  br i1 %7, label %10, label %8, !dbg !2678

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.69, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2679
  br label %12, !dbg !2679

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.70, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2680
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.71, i64 0, i64 0), i32 5) #10, !dbg !2681
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !2681
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.72, i64 0, i64 0), i32 5) #10, !dbg !2682
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2682
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
  ], !dbg !2683

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2684
  unreachable, !dbg !2684

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.73, i64 0, i64 0), i32 5) #10, !dbg !2686
  %20 = load i8*, i8** %4, align 8, !dbg !2686, !tbaa !635
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2686
  br label %146, !dbg !2687

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.74, i64 0, i64 0), i32 5) #10, !dbg !2688
  %24 = load i8*, i8** %4, align 8, !dbg !2688, !tbaa !635
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2688
  %26 = load i8*, i8** %25, align 8, !dbg !2688, !tbaa !635
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2688
  br label %146, !dbg !2689

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.75, i64 0, i64 0), i32 5) #10, !dbg !2690
  %30 = load i8*, i8** %4, align 8, !dbg !2690, !tbaa !635
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2690
  %32 = load i8*, i8** %31, align 8, !dbg !2690, !tbaa !635
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2690
  %34 = load i8*, i8** %33, align 8, !dbg !2690, !tbaa !635
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2690
  br label %146, !dbg !2691

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.76, i64 0, i64 0), i32 5) #10, !dbg !2692
  %38 = load i8*, i8** %4, align 8, !dbg !2692, !tbaa !635
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2692
  %40 = load i8*, i8** %39, align 8, !dbg !2692, !tbaa !635
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2692
  %42 = load i8*, i8** %41, align 8, !dbg !2692, !tbaa !635
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2692
  %44 = load i8*, i8** %43, align 8, !dbg !2692, !tbaa !635
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2692
  br label %146, !dbg !2693

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.77, i64 0, i64 0), i32 5) #10, !dbg !2694
  %48 = load i8*, i8** %4, align 8, !dbg !2694, !tbaa !635
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2694
  %50 = load i8*, i8** %49, align 8, !dbg !2694, !tbaa !635
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2694
  %52 = load i8*, i8** %51, align 8, !dbg !2694, !tbaa !635
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2694
  %54 = load i8*, i8** %53, align 8, !dbg !2694, !tbaa !635
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2694
  %56 = load i8*, i8** %55, align 8, !dbg !2694, !tbaa !635
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2694
  br label %146, !dbg !2695

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.78, i64 0, i64 0), i32 5) #10, !dbg !2696
  %60 = load i8*, i8** %4, align 8, !dbg !2696, !tbaa !635
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2696
  %62 = load i8*, i8** %61, align 8, !dbg !2696, !tbaa !635
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2696
  %64 = load i8*, i8** %63, align 8, !dbg !2696, !tbaa !635
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2696
  %66 = load i8*, i8** %65, align 8, !dbg !2696, !tbaa !635
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2696
  %68 = load i8*, i8** %67, align 8, !dbg !2696, !tbaa !635
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2696
  %70 = load i8*, i8** %69, align 8, !dbg !2696, !tbaa !635
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2696
  br label %146, !dbg !2697

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.79, i64 0, i64 0), i32 5) #10, !dbg !2698
  %74 = load i8*, i8** %4, align 8, !dbg !2698, !tbaa !635
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2698
  %76 = load i8*, i8** %75, align 8, !dbg !2698, !tbaa !635
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2698
  %78 = load i8*, i8** %77, align 8, !dbg !2698, !tbaa !635
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2698
  %80 = load i8*, i8** %79, align 8, !dbg !2698, !tbaa !635
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2698
  %82 = load i8*, i8** %81, align 8, !dbg !2698, !tbaa !635
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2698
  %84 = load i8*, i8** %83, align 8, !dbg !2698, !tbaa !635
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2698
  %86 = load i8*, i8** %85, align 8, !dbg !2698, !tbaa !635
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2698
  br label %146, !dbg !2699

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.80, i64 0, i64 0), i32 5) #10, !dbg !2700
  %90 = load i8*, i8** %4, align 8, !dbg !2700, !tbaa !635
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2700
  %92 = load i8*, i8** %91, align 8, !dbg !2700, !tbaa !635
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2700
  %94 = load i8*, i8** %93, align 8, !dbg !2700, !tbaa !635
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2700
  %96 = load i8*, i8** %95, align 8, !dbg !2700, !tbaa !635
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2700
  %98 = load i8*, i8** %97, align 8, !dbg !2700, !tbaa !635
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2700
  %100 = load i8*, i8** %99, align 8, !dbg !2700, !tbaa !635
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2700
  %102 = load i8*, i8** %101, align 8, !dbg !2700, !tbaa !635
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2700
  %104 = load i8*, i8** %103, align 8, !dbg !2700, !tbaa !635
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2700
  br label %146, !dbg !2701

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.81, i64 0, i64 0), i32 5) #10, !dbg !2702
  %108 = load i8*, i8** %4, align 8, !dbg !2702, !tbaa !635
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2702
  %110 = load i8*, i8** %109, align 8, !dbg !2702, !tbaa !635
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2702
  %112 = load i8*, i8** %111, align 8, !dbg !2702, !tbaa !635
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2702
  %114 = load i8*, i8** %113, align 8, !dbg !2702, !tbaa !635
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2702
  %116 = load i8*, i8** %115, align 8, !dbg !2702, !tbaa !635
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2702
  %118 = load i8*, i8** %117, align 8, !dbg !2702, !tbaa !635
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2702
  %120 = load i8*, i8** %119, align 8, !dbg !2702, !tbaa !635
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2702
  %122 = load i8*, i8** %121, align 8, !dbg !2702, !tbaa !635
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2702
  %124 = load i8*, i8** %123, align 8, !dbg !2702, !tbaa !635
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2702
  br label %146, !dbg !2703

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.82, i64 0, i64 0), i32 5) #10, !dbg !2704
  %128 = load i8*, i8** %4, align 8, !dbg !2704, !tbaa !635
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2704
  %130 = load i8*, i8** %129, align 8, !dbg !2704, !tbaa !635
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2704
  %132 = load i8*, i8** %131, align 8, !dbg !2704, !tbaa !635
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2704
  %134 = load i8*, i8** %133, align 8, !dbg !2704, !tbaa !635
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2704
  %136 = load i8*, i8** %135, align 8, !dbg !2704, !tbaa !635
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2704
  %138 = load i8*, i8** %137, align 8, !dbg !2704, !tbaa !635
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2704
  %140 = load i8*, i8** %139, align 8, !dbg !2704, !tbaa !635
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2704
  %142 = load i8*, i8** %141, align 8, !dbg !2704, !tbaa !635
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2704
  %144 = load i8*, i8** %143, align 8, !dbg !2704, !tbaa !635
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2704
  br label %146, !dbg !2705

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2706
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2707 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2711, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.value(metadata i8* %1, metadata !2712, metadata !DIExpression()), !dbg !2718
  call void @llvm.dbg.value(metadata i8* %2, metadata !2713, metadata !DIExpression()), !dbg !2719
  call void @llvm.dbg.value(metadata i8* %3, metadata !2714, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata i8** %4, metadata !2715, metadata !DIExpression()), !dbg !2721
  call void @llvm.dbg.value(metadata i64 0, metadata !2716, metadata !DIExpression()), !dbg !2722
  br label %6, !dbg !2723

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2725
  call void @llvm.dbg.value(metadata i64 %7, metadata !2716, metadata !DIExpression()), !dbg !2722
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2727
  %9 = load i8*, i8** %8, align 8, !dbg !2727, !tbaa !635
  %10 = icmp eq i8* %9, null, !dbg !2728
  %11 = add i64 %7, 1, !dbg !2729
  call void @llvm.dbg.value(metadata i64 %11, metadata !2716, metadata !DIExpression()), !dbg !2722
  br i1 %10, label %12, label %6, !dbg !2728, !llvm.loop !2730

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2716, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i64 %7, metadata !2716, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i64 %7, metadata !2716, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i64 %7, metadata !2716, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i64 %7, metadata !2716, metadata !DIExpression()), !dbg !2722
  call void @llvm.dbg.value(metadata i64 %7, metadata !2716, metadata !DIExpression()), !dbg !2722
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2732
  ret void, !dbg !2733
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2734 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2745, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.value(metadata i8* %1, metadata !2746, metadata !DIExpression()), !dbg !2754
  call void @llvm.dbg.value(metadata i8* %2, metadata !2747, metadata !DIExpression()), !dbg !2755
  call void @llvm.dbg.value(metadata i8* %3, metadata !2748, metadata !DIExpression()), !dbg !2756
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2749, metadata !DIExpression()), !dbg !2757
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2758
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2758
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2751, metadata !DIExpression()), !dbg !2759
  call void @llvm.dbg.value(metadata i64 0, metadata !2750, metadata !DIExpression()), !dbg !2760
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2750, metadata !DIExpression()), !dbg !2760
  %11 = load i32, i32* %8, align 8, !dbg !2761
  %12 = icmp ult i32 %11, 41, !dbg !2761
  br i1 %12, label %13, label %18, !dbg !2761

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2761
  %15 = sext i32 %11 to i64, !dbg !2761
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2761
  %17 = add i32 %11, 8, !dbg !2761
  store i32 %17, i32* %8, align 8, !dbg !2761
  br label %21, !dbg !2761

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2761
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2761
  store i8* %20, i8** %10, align 8, !dbg !2761
  br label %21, !dbg !2761

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2761
  %25 = load i8*, i8** %24, align 8, !dbg !2761
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2764
  store i8* %25, i8** %26, align 16, !dbg !2765, !tbaa !635
  %27 = icmp eq i8* %25, null, !dbg !2766
  br i1 %27, label %30, label %28, !dbg !2767

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2750, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 1, metadata !2750, metadata !DIExpression()), !dbg !2760
  %29 = icmp ult i32 %22, 41, !dbg !2761
  br i1 %29, label %35, label %32, !dbg !2761

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2768
  call void @llvm.dbg.value(metadata i64 %31, metadata !2750, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 %31, metadata !2750, metadata !DIExpression()), !dbg !2760
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2769
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2770
  ret void, !dbg !2770

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2761
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2761
  store i8* %34, i8** %10, align 8, !dbg !2761
  br label %40, !dbg !2761

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2761
  %37 = sext i32 %22 to i64, !dbg !2761
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2761
  %39 = add i32 %22, 8, !dbg !2761
  store i32 %39, i32* %8, align 8, !dbg !2761
  br label %40, !dbg !2761

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2761
  %44 = load i8*, i8** %43, align 8, !dbg !2761
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2764
  store i8* %44, i8** %45, align 8, !dbg !2765, !tbaa !635
  %46 = icmp eq i8* %44, null, !dbg !2766
  br i1 %46, label %30, label %47, !dbg !2767

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2750, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 2, metadata !2750, metadata !DIExpression()), !dbg !2760
  %48 = icmp ult i32 %41, 41, !dbg !2761
  br i1 %48, label %52, label %49, !dbg !2761

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2761
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2761
  store i8* %51, i8** %10, align 8, !dbg !2761
  br label %57, !dbg !2761

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2761
  %54 = sext i32 %41 to i64, !dbg !2761
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2761
  %56 = add i32 %41, 8, !dbg !2761
  store i32 %56, i32* %8, align 8, !dbg !2761
  br label %57, !dbg !2761

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2761
  %61 = load i8*, i8** %60, align 8, !dbg !2761
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2764
  store i8* %61, i8** %62, align 16, !dbg !2765, !tbaa !635
  %63 = icmp eq i8* %61, null, !dbg !2766
  br i1 %63, label %30, label %64, !dbg !2767

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2750, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 3, metadata !2750, metadata !DIExpression()), !dbg !2760
  %65 = icmp ult i32 %58, 41, !dbg !2761
  br i1 %65, label %69, label %66, !dbg !2761

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2761
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2761
  store i8* %68, i8** %10, align 8, !dbg !2761
  br label %74, !dbg !2761

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2761
  %71 = sext i32 %58 to i64, !dbg !2761
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2761
  %73 = add i32 %58, 8, !dbg !2761
  store i32 %73, i32* %8, align 8, !dbg !2761
  br label %74, !dbg !2761

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2761
  %78 = load i8*, i8** %77, align 8, !dbg !2761
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2764
  store i8* %78, i8** %79, align 8, !dbg !2765, !tbaa !635
  %80 = icmp eq i8* %78, null, !dbg !2766
  br i1 %80, label %30, label %81, !dbg !2767

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2750, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 4, metadata !2750, metadata !DIExpression()), !dbg !2760
  %82 = icmp ult i32 %75, 41, !dbg !2761
  br i1 %82, label %86, label %83, !dbg !2761

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2761
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2761
  store i8* %85, i8** %10, align 8, !dbg !2761
  br label %91, !dbg !2761

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2761
  %88 = sext i32 %75 to i64, !dbg !2761
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2761
  %90 = add i32 %75, 8, !dbg !2761
  store i32 %90, i32* %8, align 8, !dbg !2761
  br label %91, !dbg !2761

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2761
  %95 = load i8*, i8** %94, align 8, !dbg !2761
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2764
  store i8* %95, i8** %96, align 16, !dbg !2765, !tbaa !635
  %97 = icmp eq i8* %95, null, !dbg !2766
  br i1 %97, label %30, label %98, !dbg !2767

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2750, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 5, metadata !2750, metadata !DIExpression()), !dbg !2760
  %99 = icmp ult i32 %92, 41, !dbg !2761
  br i1 %99, label %103, label %100, !dbg !2761

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2761
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2761
  store i8* %102, i8** %10, align 8, !dbg !2761
  br label %108, !dbg !2761

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2761
  %105 = sext i32 %92 to i64, !dbg !2761
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2761
  %107 = add i32 %92, 8, !dbg !2761
  store i32 %107, i32* %8, align 8, !dbg !2761
  br label %108, !dbg !2761

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2761
  %111 = load i8*, i8** %110, align 8, !dbg !2761
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2764
  store i8* %111, i8** %112, align 8, !dbg !2765, !tbaa !635
  %113 = icmp eq i8* %111, null, !dbg !2766
  br i1 %113, label %30, label %114, !dbg !2767

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2750, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 6, metadata !2750, metadata !DIExpression()), !dbg !2760
  %115 = load i8*, i8** %10, align 8, !dbg !2761
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2761
  store i8* %116, i8** %10, align 8, !dbg !2761
  %117 = bitcast i8* %115 to i8**, !dbg !2761
  %118 = load i8*, i8** %117, align 8, !dbg !2761
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2764
  store i8* %118, i8** %119, align 16, !dbg !2765, !tbaa !635
  %120 = icmp eq i8* %118, null, !dbg !2766
  br i1 %120, label %30, label %121, !dbg !2767

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2750, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 7, metadata !2750, metadata !DIExpression()), !dbg !2760
  %122 = load i8*, i8** %10, align 8, !dbg !2761
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2761
  store i8* %123, i8** %10, align 8, !dbg !2761
  %124 = bitcast i8* %122 to i8**, !dbg !2761
  %125 = load i8*, i8** %124, align 8, !dbg !2761
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2764
  store i8* %125, i8** %126, align 8, !dbg !2765, !tbaa !635
  %127 = icmp eq i8* %125, null, !dbg !2766
  br i1 %127, label %30, label %128, !dbg !2767

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2750, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 8, metadata !2750, metadata !DIExpression()), !dbg !2760
  %129 = load i8*, i8** %10, align 8, !dbg !2761
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2761
  store i8* %130, i8** %10, align 8, !dbg !2761
  %131 = bitcast i8* %129 to i8**, !dbg !2761
  %132 = load i8*, i8** %131, align 8, !dbg !2761
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2764
  store i8* %132, i8** %133, align 16, !dbg !2765, !tbaa !635
  %134 = icmp eq i8* %132, null, !dbg !2766
  br i1 %134, label %30, label %135, !dbg !2767

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2750, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.value(metadata i64 9, metadata !2750, metadata !DIExpression()), !dbg !2760
  %136 = load i8*, i8** %10, align 8, !dbg !2761
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2761
  store i8* %137, i8** %10, align 8, !dbg !2761
  %138 = bitcast i8* %136 to i8**, !dbg !2761
  %139 = load i8*, i8** %138, align 8, !dbg !2761
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2764
  store i8* %139, i8** %140, align 8, !dbg !2765, !tbaa !635
  %141 = icmp eq i8* %139, null, !dbg !2766
  %142 = select i1 %141, i64 9, i64 10, !dbg !2767
  br label %30, !dbg !2767
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2771 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2775, metadata !DIExpression()), !dbg !2784
  call void @llvm.dbg.value(metadata i8* %1, metadata !2776, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.value(metadata i8* %2, metadata !2777, metadata !DIExpression()), !dbg !2786
  call void @llvm.dbg.value(metadata i8* %3, metadata !2778, metadata !DIExpression()), !dbg !2787
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2788
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2788
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2779, metadata !DIExpression()), !dbg !2789
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2790
  call void @llvm.va_start(i8* nonnull %6), !dbg !2790
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2791
  call void @llvm.va_end(i8* nonnull %6), !dbg !2792
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2793
  ret void, !dbg !2793
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2794 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.85, i64 0, i64 0), i32 5) #10, !dbg !2795
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.86, i64 0, i64 0)) #10, !dbg !2795
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.87, i64 0, i64 0), i32 5) #10, !dbg !2796
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.88, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.89, i64 0, i64 0)) #10, !dbg !2796
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.90, i64 0, i64 0), i32 5) #10, !dbg !2797
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2797, !tbaa !635
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2797
  ret void, !dbg !2798
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2799 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2803, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata i64 %1, metadata !2804, metadata !DIExpression()), !dbg !2806
  %3 = udiv i64 9223372036854775807, %1, !dbg !2807
  %4 = icmp ult i64 %3, %0, !dbg !2807
  br i1 %4, label %5, label %6, !dbg !2809

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2810
  unreachable, !dbg !2810

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2811
  call void @llvm.dbg.value(metadata i64 %7, metadata !2812, metadata !DIExpression()) #10, !dbg !2819
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2821
  call void @llvm.dbg.value(metadata i8* %8, metadata !2818, metadata !DIExpression()) #10, !dbg !2822
  %9 = icmp eq i8* %8, null, !dbg !2823
  %10 = icmp ne i64 %7, 0, !dbg !2825
  %11 = and i1 %10, %9, !dbg !2826
  br i1 %11, label %12, label %13, !dbg !2826

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2827
  unreachable, !dbg !2827

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2828
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2813 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2812, metadata !DIExpression()), !dbg !2829
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2830
  call void @llvm.dbg.value(metadata i8* %2, metadata !2818, metadata !DIExpression()), !dbg !2831
  %3 = icmp eq i8* %2, null, !dbg !2832
  %4 = icmp ne i64 %0, 0, !dbg !2833
  %5 = and i1 %4, %3, !dbg !2834
  br i1 %5, label %6, label %7, !dbg !2834

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2835
  unreachable, !dbg !2835

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2836
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2837 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2841, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i64 %1, metadata !2842, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i64 %2, metadata !2843, metadata !DIExpression()), !dbg !2846
  %4 = udiv i64 9223372036854775807, %2, !dbg !2847
  %5 = icmp ult i64 %4, %1, !dbg !2847
  br i1 %5, label %6, label %7, !dbg !2849

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2850
  unreachable, !dbg !2850

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2851
  call void @llvm.dbg.value(metadata i8* %0, metadata !2852, metadata !DIExpression()) #10, !dbg !2858
  call void @llvm.dbg.value(metadata i64 %8, metadata !2857, metadata !DIExpression()) #10, !dbg !2860
  %9 = icmp eq i64 %8, 0, !dbg !2861
  %10 = icmp ne i8* %0, null, !dbg !2863
  %11 = and i1 %10, %9, !dbg !2864
  br i1 %11, label %12, label %13, !dbg !2864

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2865
  br label %19, !dbg !2867

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2868
  call void @llvm.dbg.value(metadata i8* %14, metadata !2852, metadata !DIExpression()) #10, !dbg !2858
  %15 = icmp eq i8* %14, null, !dbg !2869
  %16 = icmp ne i64 %8, 0, !dbg !2871
  %17 = and i1 %16, %15, !dbg !2872
  br i1 %17, label %18, label %19, !dbg !2872

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2873
  unreachable, !dbg !2873

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !2874
  ret i8* %20, !dbg !2875
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !2853 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2852, metadata !DIExpression()), !dbg !2876
  call void @llvm.dbg.value(metadata i64 %1, metadata !2857, metadata !DIExpression()), !dbg !2877
  %3 = icmp eq i64 %1, 0, !dbg !2878
  %4 = icmp ne i8* %0, null, !dbg !2879
  %5 = and i1 %4, %3, !dbg !2880
  br i1 %5, label %6, label %7, !dbg !2880

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !2881
  br label %13, !dbg !2882

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !2883
  call void @llvm.dbg.value(metadata i8* %8, metadata !2852, metadata !DIExpression()), !dbg !2876
  %9 = icmp eq i8* %8, null, !dbg !2884
  %10 = icmp ne i64 %1, 0, !dbg !2885
  %11 = and i1 %10, %9, !dbg !2886
  br i1 %11, label %12, label %13, !dbg !2886

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2887
  unreachable, !dbg !2887

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !2888
  ret i8* %14, !dbg !2889
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !178 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !183, metadata !DIExpression()), !dbg !2890
  call void @llvm.dbg.value(metadata i64* %1, metadata !184, metadata !DIExpression()), !dbg !2891
  call void @llvm.dbg.value(metadata i64 %2, metadata !185, metadata !DIExpression()), !dbg !2892
  %4 = load i64, i64* %1, align 8, !dbg !2893, !tbaa !1934
  call void @llvm.dbg.value(metadata i64 %4, metadata !186, metadata !DIExpression()), !dbg !2894
  %5 = icmp eq i8* %0, null, !dbg !2895
  br i1 %5, label %6, label %20, !dbg !2897

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !2898
  br i1 %7, label %8, label %13, !dbg !2901

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !2902
  call void @llvm.dbg.value(metadata i64 %9, metadata !186, metadata !DIExpression()), !dbg !2894
  %10 = icmp ugt i64 %2, 128, !dbg !2904
  %11 = zext i1 %10 to i64, !dbg !2904
  %12 = add nuw nsw i64 %9, %11, !dbg !2905
  call void @llvm.dbg.value(metadata i64 %12, metadata !186, metadata !DIExpression()), !dbg !2894
  br label %13, !dbg !2906

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !2907
  call void @llvm.dbg.value(metadata i64 %14, metadata !186, metadata !DIExpression()), !dbg !2894
  %15 = udiv i64 9223372036854775807, %2, !dbg !2908
  %16 = icmp ult i64 %15, %14, !dbg !2908
  br i1 %16, label %19, label %17, !dbg !2910

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !2894
  store i64 %14, i64* %1, align 8, !dbg !2911, !tbaa !1934
  %18 = mul i64 %14, %2, !dbg !2912
  call void @llvm.dbg.value(metadata i8* %0, metadata !2852, metadata !DIExpression()) #10, !dbg !2913
  call void @llvm.dbg.value(metadata i64 %28, metadata !2857, metadata !DIExpression()) #10, !dbg !2915
  br label %31, !dbg !2916

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2917
  unreachable, !dbg !2917

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !2918
  %22 = icmp ugt i64 %21, %4, !dbg !2921
  br i1 %22, label %24, label %23, !dbg !2922

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !2923
  unreachable, !dbg !2923

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !2924
  %26 = add i64 %4, 1, !dbg !2925
  %27 = add i64 %26, %25, !dbg !2926
  call void @llvm.dbg.value(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !2894
  call void @llvm.dbg.value(metadata i64 %27, metadata !186, metadata !DIExpression()), !dbg !2894
  store i64 %27, i64* %1, align 8, !dbg !2911, !tbaa !1934
  %28 = mul i64 %27, %2, !dbg !2912
  call void @llvm.dbg.value(metadata i8* %0, metadata !2852, metadata !DIExpression()) #10, !dbg !2913
  call void @llvm.dbg.value(metadata i64 %28, metadata !2857, metadata !DIExpression()) #10, !dbg !2915
  %29 = icmp eq i64 %28, 0, !dbg !2927
  br i1 %29, label %30, label %31, !dbg !2916

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !2928
  br label %38, !dbg !2929

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !2930
  call void @llvm.dbg.value(metadata i8* %33, metadata !2852, metadata !DIExpression()) #10, !dbg !2913
  %34 = icmp eq i8* %33, null, !dbg !2931
  %35 = icmp ne i64 %32, 0, !dbg !2932
  %36 = and i1 %35, %34, !dbg !2933
  br i1 %36, label %37, label %38, !dbg !2933

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !2934
  unreachable, !dbg !2934

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !2935
  ret i8* %39, !dbg !2936
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !2937 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2939, metadata !DIExpression()), !dbg !2940
  call void @llvm.dbg.value(metadata i64 %0, metadata !2812, metadata !DIExpression()) #10, !dbg !2941
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2943
  call void @llvm.dbg.value(metadata i8* %2, metadata !2818, metadata !DIExpression()) #10, !dbg !2944
  %3 = icmp eq i8* %2, null, !dbg !2945
  %4 = icmp ne i64 %0, 0, !dbg !2946
  %5 = and i1 %4, %3, !dbg !2947
  br i1 %5, label %6, label %7, !dbg !2947

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2948
  unreachable, !dbg !2948

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2949
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !2950 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2954, metadata !DIExpression()), !dbg !2956
  call void @llvm.dbg.value(metadata i64* %1, metadata !2955, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.value(metadata i8* %0, metadata !183, metadata !DIExpression()) #10, !dbg !2958
  call void @llvm.dbg.value(metadata i64* %1, metadata !184, metadata !DIExpression()) #10, !dbg !2960
  call void @llvm.dbg.value(metadata i64 1, metadata !185, metadata !DIExpression()) #10, !dbg !2961
  %3 = load i64, i64* %1, align 8, !dbg !2962, !tbaa !1934
  call void @llvm.dbg.value(metadata i64 %3, metadata !186, metadata !DIExpression()) #10, !dbg !2963
  %4 = icmp eq i8* %0, null, !dbg !2964
  br i1 %4, label %5, label %12, !dbg !2965

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !2966
  br i1 %6, label %9, label %7, !dbg !2967

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !186, metadata !DIExpression()) #10, !dbg !2963
  %8 = icmp slt i64 %3, 0, !dbg !2968
  br i1 %8, label %11, label %9, !dbg !2969

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !186, metadata !DIExpression()) #10, !dbg !2963
  store i64 %10, i64* %1, align 8, !dbg !2970, !tbaa !1934
  call void @llvm.dbg.value(metadata i8* %0, metadata !2852, metadata !DIExpression()) #10, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %18, metadata !2857, metadata !DIExpression()) #10, !dbg !2973
  br label %21, !dbg !2974

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !2975
  unreachable, !dbg !2975

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !2976
  br i1 %13, label %15, label %14, !dbg !2977

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !2978
  unreachable, !dbg !2978

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !2979
  %17 = add i64 %3, 1, !dbg !2980
  %18 = add i64 %17, %16, !dbg !2981
  call void @llvm.dbg.value(metadata i64 %18, metadata !186, metadata !DIExpression()) #10, !dbg !2963
  call void @llvm.dbg.value(metadata i64 %18, metadata !186, metadata !DIExpression()) #10, !dbg !2963
  store i64 %18, i64* %1, align 8, !dbg !2970, !tbaa !1934
  call void @llvm.dbg.value(metadata i8* %0, metadata !2852, metadata !DIExpression()) #10, !dbg !2971
  call void @llvm.dbg.value(metadata i64 %18, metadata !2857, metadata !DIExpression()) #10, !dbg !2973
  %19 = icmp eq i64 %18, 0, !dbg !2982
  br i1 %19, label %20, label %21, !dbg !2974

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !2983
  br label %28, !dbg !2984

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !2985
  call void @llvm.dbg.value(metadata i8* %23, metadata !2852, metadata !DIExpression()) #10, !dbg !2971
  %24 = icmp eq i8* %23, null, !dbg !2986
  %25 = icmp ne i64 %22, 0, !dbg !2987
  %26 = and i1 %25, %24, !dbg !2988
  br i1 %26, label %27, label %28, !dbg !2988

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !2989
  unreachable, !dbg !2989

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !2990
  ret i8* %29, !dbg !2991
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !2992 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2994, metadata !DIExpression()), !dbg !2995
  call void @llvm.dbg.value(metadata i64 %0, metadata !2812, metadata !DIExpression()) #10, !dbg !2996
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2998
  call void @llvm.dbg.value(metadata i8* %2, metadata !2818, metadata !DIExpression()) #10, !dbg !2999
  %3 = icmp eq i8* %2, null, !dbg !3000
  %4 = icmp ne i64 %0, 0, !dbg !3001
  %5 = and i1 %4, %3, !dbg !3002
  br i1 %5, label %6, label %7, !dbg !3002

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3003
  unreachable, !dbg !3003

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3004
  ret i8* %2, !dbg !3005
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3006 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3008, metadata !DIExpression()), !dbg !3011
  call void @llvm.dbg.value(metadata i64 %1, metadata !3009, metadata !DIExpression()), !dbg !3012
  %3 = udiv i64 9223372036854775807, %1, !dbg !3013
  %4 = icmp ult i64 %3, %0, !dbg !3013
  br i1 %4, label %8, label %5, !dbg !3015

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3016
  call void @llvm.dbg.value(metadata i8* %6, metadata !3010, metadata !DIExpression()), !dbg !3017
  %7 = icmp eq i8* %6, null, !dbg !3018
  br i1 %7, label %8, label %9, !dbg !3019

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3020
  unreachable, !dbg !3020

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3021
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3022 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()), !dbg !3030
  call void @llvm.dbg.value(metadata i64 %1, metadata !3029, metadata !DIExpression()), !dbg !3031
  call void @llvm.dbg.value(metadata i64 %1, metadata !2812, metadata !DIExpression()) #10, !dbg !3032
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3034
  call void @llvm.dbg.value(metadata i8* %3, metadata !2818, metadata !DIExpression()) #10, !dbg !3035
  %4 = icmp eq i8* %3, null, !dbg !3036
  %5 = icmp ne i64 %1, 0, !dbg !3037
  %6 = and i1 %5, %4, !dbg !3038
  br i1 %6, label %7, label %8, !dbg !3038

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3039
  unreachable, !dbg !3039

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3040
  ret i8* %3, !dbg !3041
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3042 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3044, metadata !DIExpression()), !dbg !3045
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3046
  %3 = add i64 %2, 1, !dbg !3047
  call void @llvm.dbg.value(metadata i8* %0, metadata !3028, metadata !DIExpression()) #10, !dbg !3048
  call void @llvm.dbg.value(metadata i64 %3, metadata !3029, metadata !DIExpression()) #10, !dbg !3050
  call void @llvm.dbg.value(metadata i64 %3, metadata !2812, metadata !DIExpression()) #10, !dbg !3051
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3053
  call void @llvm.dbg.value(metadata i8* %4, metadata !2818, metadata !DIExpression()) #10, !dbg !3054
  %5 = icmp eq i8* %4, null, !dbg !3055
  %6 = icmp ne i64 %3, 0, !dbg !3056
  %7 = and i1 %6, %5, !dbg !3057
  br i1 %7, label %8, label %9, !dbg !3057

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3058
  unreachable, !dbg !3058

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3059
  ret i8* %4, !dbg !3060
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3061 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3063, !tbaa !702
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.101, i64 0, i64 0), i32 5) #10, !dbg !3064
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.102, i64 0, i64 0), i8* %2) #10, !dbg !3065
  tail call void @abort() #15, !dbg !3066
  unreachable, !dbg !3066
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3067 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3070, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i64 %1, metadata !3071, metadata !DIExpression()), !dbg !3077
  %3 = icmp eq i64 %0, 0, !dbg !3078
  %4 = icmp eq i64 %1, 0, !dbg !3079
  %5 = or i1 %3, %4, !dbg !3080
  br i1 %5, label %12, label %6, !dbg !3080

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3081
  call void @llvm.dbg.value(metadata i64 %7, metadata !3073, metadata !DIExpression()), !dbg !3082
  %8 = udiv i64 %7, %1, !dbg !3083
  %9 = icmp eq i64 %8, %0, !dbg !3085
  br i1 %9, label %12, label %10, !dbg !3086

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3087
  store i32 12, i32* %11, align 4, !dbg !3089, !tbaa !702
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3070, metadata !DIExpression()), !dbg !3076
  call void @llvm.dbg.value(metadata i64 %13, metadata !3071, metadata !DIExpression()), !dbg !3077
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3090
  call void @llvm.dbg.value(metadata i8* %15, metadata !3072, metadata !DIExpression()), !dbg !3091
  br label %16, !dbg !3092

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3093
  ret i8* %17, !dbg !3094
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3095 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3112, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.value(metadata i8* %1, metadata !3113, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %2, metadata !3114, metadata !DIExpression()), !dbg !3123
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3115, metadata !DIExpression()), !dbg !3124
  %6 = bitcast i32* %5 to i8*, !dbg !3125
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3125
  %7 = icmp eq i32* %0, null, !dbg !3126
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3128
  call void @llvm.dbg.value(metadata i32* %8, metadata !3112, metadata !DIExpression()), !dbg !3121
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3129
  call void @llvm.dbg.value(metadata i64 %9, metadata !3116, metadata !DIExpression()), !dbg !3130
  %10 = icmp ugt i64 %9, -3, !dbg !3131
  %11 = icmp ne i64 %2, 0, !dbg !3132
  %12 = and i1 %11, %10, !dbg !3133
  br i1 %12, label %13, label %18, !dbg !3133

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3134
  br i1 %14, label %18, label %15, !dbg !3135

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3136, !tbaa !1111
  call void @llvm.dbg.value(metadata i8 %16, metadata !3118, metadata !DIExpression()), !dbg !3137
  %17 = zext i8 %16 to i32, !dbg !3138
  store i32 %17, i32* %8, align 4, !dbg !3139, !tbaa !702
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3141
  ret i64 %19, !dbg !3141
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3142 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3181, metadata !DIExpression()), !dbg !3186
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3187
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3188, metadata !DIExpression()), !dbg !3192
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3194
  %4 = load i32, i32* %3, align 8, !dbg !3194, !tbaa !3195
  %5 = and i32 %4, 32, !dbg !3194
  %6 = icmp eq i32 %5, 0, !dbg !3197
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3198
  %8 = icmp ne i32 %7, 0, !dbg !3199
  br i1 %6, label %9, label %19, !dbg !3200

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3202
  %11 = xor i1 %8, true, !dbg !3203
  %12 = or i1 %10, %11, !dbg !3203
  %13 = sext i1 %8 to i32, !dbg !3203
  br i1 %12, label %22, label %14, !dbg !3203

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3204
  %16 = load i32, i32* %15, align 4, !dbg !3204, !tbaa !702
  %17 = icmp ne i32 %16, 9, !dbg !3205
  %18 = sext i1 %17 to i32, !dbg !3206
  br label %22, !dbg !3206

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3207

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3209
  store i32 0, i32* %21, align 4, !dbg !3211, !tbaa !702
  br label %22, !dbg !3209

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3212
  ret i32 %23, !dbg !3213
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3214 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3219, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i8 1, metadata !3220, metadata !DIExpression()), !dbg !3223
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3224
  call void @llvm.dbg.value(metadata i8* %2, metadata !3221, metadata !DIExpression()), !dbg !3225
  %3 = icmp eq i8* %2, null, !dbg !3226
  br i1 %3, label %11, label %4, !dbg !3228

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.111, i64 0, i64 0)) #14, !dbg !3229
  %6 = icmp eq i32 %5, 0, !dbg !3234
  br i1 %6, label %10, label %7, !dbg !3235

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.112, i64 0, i64 0)) #14, !dbg !3236
  %9 = icmp eq i32 %8, 0, !dbg !3237
  br i1 %9, label %10, label %11, !dbg !3238

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3220, metadata !DIExpression()), !dbg !3223
  br label %11, !dbg !3239

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3240
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3241 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3247
  call void @llvm.dbg.value(metadata i8* %1, metadata !3246, metadata !DIExpression()), !dbg !3248
  %2 = icmp eq i8* %1, null, !dbg !3249
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.115, i64 0, i64 0), i8* %1, !dbg !3251
  call void @llvm.dbg.value(metadata i8* %3, metadata !3246, metadata !DIExpression()), !dbg !3248
  %4 = load i8, i8* %3, align 1, !dbg !3252, !tbaa !1111
  %5 = icmp eq i8 %4, 0, !dbg !3256
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.116, i64 0, i64 0), i8* %3, !dbg !3257
  call void @llvm.dbg.value(metadata i8* %6, metadata !3246, metadata !DIExpression()), !dbg !3248
  ret i8* %6, !dbg !3258
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3259 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3298, metadata !DIExpression()), !dbg !3302
  call void @llvm.dbg.value(metadata i32 0, metadata !3299, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i32 0, metadata !3301, metadata !DIExpression()), !dbg !3304
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3305
  call void @llvm.dbg.value(metadata i32 %2, metadata !3300, metadata !DIExpression()), !dbg !3306
  %3 = icmp slt i32 %2, 0, !dbg !3307
  br i1 %3, label %4, label %6, !dbg !3309

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3310
  br label %24, !dbg !3311

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3312
  %8 = icmp eq i32 %7, 0, !dbg !3312
  br i1 %8, label %13, label %9, !dbg !3314

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3315
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3316
  %12 = icmp eq i64 %11, -1, !dbg !3317
  br i1 %12, label %16, label %13, !dbg !3318

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3319
  %15 = icmp eq i32 %14, 0, !dbg !3319
  br i1 %15, label %16, label %18, !dbg !3320

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3299, metadata !DIExpression()), !dbg !3303
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3321
  call void @llvm.dbg.value(metadata i32 %21, metadata !3301, metadata !DIExpression()), !dbg !3304
  br label %24, !dbg !3322

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3323
  %20 = load i32, i32* %19, align 4, !dbg !3323, !tbaa !702
  call void @llvm.dbg.value(metadata i32 %20, metadata !3299, metadata !DIExpression()), !dbg !3303
  call void @llvm.dbg.value(metadata i32 %20, metadata !3299, metadata !DIExpression()), !dbg !3303
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3321
  call void @llvm.dbg.value(metadata i32 %21, metadata !3301, metadata !DIExpression()), !dbg !3304
  %22 = icmp eq i32 %20, 0, !dbg !3324
  br i1 %22, label %24, label %23, !dbg !3322

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3326, !tbaa !702
  call void @llvm.dbg.value(metadata i32 -1, metadata !3301, metadata !DIExpression()), !dbg !3304
  br label %24, !dbg !3328

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3329
  ret i32 %25, !dbg !3330
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3331 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3370, metadata !DIExpression()), !dbg !3371
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3372
  br i1 %2, label %6, label %3, !dbg !3374

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3375
  %5 = icmp eq i32 %4, 0, !dbg !3375
  br i1 %5, label %6, label %8, !dbg !3376

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3377
  br label %17, !dbg !3378

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3379, metadata !DIExpression()) #10, !dbg !3384
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3386
  %10 = load i32, i32* %9, align 8, !dbg !3386, !tbaa !3195
  %11 = and i32 %10, 256, !dbg !3388
  %12 = icmp eq i32 %11, 0, !dbg !3388
  br i1 %12, label %15, label %13, !dbg !3389

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3390
  br label %15, !dbg !3390

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3391
  br label %17, !dbg !3392

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3393
  ret i32 %18, !dbg !3394
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3395 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3435, metadata !DIExpression()), !dbg !3441
  call void @llvm.dbg.value(metadata i64 %1, metadata !3436, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i32 %2, metadata !3437, metadata !DIExpression()), !dbg !3443
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3444
  %5 = load i8*, i8** %4, align 8, !dbg !3444, !tbaa !3445
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3446
  %7 = load i8*, i8** %6, align 8, !dbg !3446, !tbaa !3447
  %8 = icmp eq i8* %5, %7, !dbg !3448
  br i1 %8, label %9, label %28, !dbg !3449

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3450
  %11 = load i8*, i8** %10, align 8, !dbg !3450, !tbaa !3451
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3452
  %13 = load i8*, i8** %12, align 8, !dbg !3452, !tbaa !3453
  %14 = icmp eq i8* %11, %13, !dbg !3454
  br i1 %14, label %15, label %28, !dbg !3455

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3456
  %17 = load i8*, i8** %16, align 8, !dbg !3456, !tbaa !3457
  %18 = icmp eq i8* %17, null, !dbg !3458
  br i1 %18, label %19, label %28, !dbg !3459

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3460
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3461
  call void @llvm.dbg.value(metadata i64 %21, metadata !3438, metadata !DIExpression()), !dbg !3462
  %22 = icmp eq i64 %21, -1, !dbg !3463
  br i1 %22, label %30, label %23, !dbg !3465

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3466
  %25 = load i32, i32* %24, align 8, !dbg !3467, !tbaa !3195
  %26 = and i32 %25, -17, !dbg !3467
  store i32 %26, i32* %24, align 8, !dbg !3467, !tbaa !3195
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3468
  store i64 %21, i64* %27, align 8, !dbg !3469, !tbaa !3470
  br label %30, !dbg !3471

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3472
  br label %30, !dbg !3473

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3474
  ret i32 %31, !dbg !3475
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

!llvm.dbg.cu = !{!2, !26, !31, !40, !47, !63, !71, !165, !158, !173, !190, !192, !194, !197, !199, !201, !590, !592, !594}
!llvm.ident = !{!596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596, !596}
!llvm.module.flags = !{!597, !598, !599, !600, !601}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "long_options", scope: !2, file: !3, line: 35, type: !11, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "src/hostid.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{}
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !{!0}
!11 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !22)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !14, line: 50, size: 256, elements: !15)
!14 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!15 = !{!16, !17, !19, !21}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !13, file: !14, line: 52, baseType: !6, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !13, file: !14, line: 55, baseType: !18, size: 32, offset: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !13, file: !14, line: 56, baseType: !20, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !13, file: !14, line: 57, baseType: !18, size: 32, offset: 192)
!22 = !{!23}
!23 = !DISubrange(count: 1)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "Version", scope: !26, file: !27, line: 2, type: !6, isLocal: false, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !28)
!27 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!28 = !{!24}
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "file_name", scope: !31, file: !36, line: 46, type: !6, isLocal: true, isDefinition: true)
!31 = distinct !DICompileUnit(language: DW_LANG_C99, file: !32, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !33)
!32 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!33 = !{!29, !34}
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !31, file: !36, line: 56, type: !37, isLocal: true, isDefinition: true)
!36 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!37 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(name: "exit_failure", scope: !40, file: !43, line: 24, type: !44, isLocal: false, isDefinition: true)
!40 = distinct !DICompileUnit(language: DW_LANG_C99, file: !41, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !42)
!41 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!42 = !{!38}
!43 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!44 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !18)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "long_options", scope: !47, file: !50, line: 33, type: !51, isLocal: true, isDefinition: true)
!47 = distinct !DICompileUnit(language: DW_LANG_C99, file: !48, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !49)
!48 = !DIFile(filename: "./lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!49 = !{!45}
!50 = !DIFile(filename: "lib/long-options.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 768, elements: !59)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !14, line: 50, size: 256, elements: !54)
!54 = !{!55, !56, !57, !58}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !53, file: !14, line: 52, baseType: !6, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !53, file: !14, line: 55, baseType: !18, size: 32, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !53, file: !14, line: 56, baseType: !20, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !53, file: !14, line: 57, baseType: !18, size: 32, offset: 192)
!59 = !{!60}
!60 = !DISubrange(count: 3)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(name: "program_name", scope: !63, file: !68, line: 33, type: !6, isLocal: false, isDefinition: true)
!63 = distinct !DICompileUnit(language: DW_LANG_C99, file: !64, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !65, globals: !67)
!64 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!65 = !{!9, !66}
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!67 = !{!61}
!68 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !71, file: !117, line: 85, type: !152, isLocal: false, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !73, retainedTypes: !109, globals: !114)
!72 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!73 = !{!74, !89, !94}
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !75, line: 32, baseType: !76, size: 32, elements: !77)
!75 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!76 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88}
!78 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!79 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!80 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!81 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!82 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!83 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!84 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!85 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!86 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!87 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!88 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !75, line: 242, baseType: !76, size: 32, elements: !90)
!90 = !{!91, !92, !93}
!91 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!92 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!93 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !95, line: 46, baseType: !76, size: 32, elements: !96)
!95 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!97 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!98 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!99 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!100 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!101 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!102 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!103 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!104 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!105 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!106 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!107 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!108 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!109 = !{!18, !110, !111, !66}
!110 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 62, baseType: !113)
!112 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!113 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!114 = !{!69, !115, !122, !134, !136, !141, !148, !150}
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !71, file: !117, line: 101, type: !118, isLocal: false, isDefinition: true)
!117 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !119, size: 320, elements: !120)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!120 = !{!121}
!121 = !DISubrange(count: 10)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !71, file: !117, line: 1052, type: !124, isLocal: false, isDefinition: true)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !117, line: 65, size: 448, elements: !125)
!125 = !{!126, !127, !128, !132, !133}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !124, file: !117, line: 68, baseType: !74, size: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !124, file: !117, line: 71, baseType: !18, size: 32, offset: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !124, file: !117, line: 75, baseType: !129, size: 256, offset: 64)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 256, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 8)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !124, file: !117, line: 78, baseType: !6, size: 64, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !124, file: !117, line: 81, baseType: !6, size: 64, offset: 384)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !71, file: !117, line: 116, type: !124, isLocal: true, isDefinition: true)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "slot0", scope: !71, file: !117, line: 842, type: !138, isLocal: true, isDefinition: true)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 256)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(name: "slotvec", scope: !71, file: !117, line: 845, type: !143, isLocal: true, isDefinition: true)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !117, line: 834, size: 128, elements: !145)
!145 = !{!146, !147}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !144, file: !117, line: 836, baseType: !111, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !144, file: !117, line: 837, baseType: !66, size: 64, offset: 64)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(name: "nslots", scope: !71, file: !117, line: 843, type: !18, isLocal: true, isDefinition: true)
!150 = !DIGlobalVariableExpression(var: !151, expr: !DIExpression())
!151 = distinct !DIGlobalVariable(name: "slotvec0", scope: !71, file: !117, line: 844, type: !144, isLocal: true, isDefinition: true)
!152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !153, size: 704, elements: !154)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!154 = !{!155}
!155 = !DISubrange(count: 11)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !158, file: !161, line: 26, type: !162, isLocal: false, isDefinition: true)
!158 = distinct !DICompileUnit(language: DW_LANG_C99, file: !159, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !160)
!159 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!160 = !{!156}
!161 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 376, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 47)
!165 = distinct !DICompileUnit(language: DW_LANG_C99, file: !166, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !167, retainedTypes: !172)
!166 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!167 = !{!168}
!168 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !169, line: 41, baseType: !76, size: 32, elements: !170)
!169 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!170 = !{!171}
!171 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!172 = !{!9}
!173 = distinct !DICompileUnit(language: DW_LANG_C99, file: !174, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !175, retainedTypes: !189)
!174 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!175 = !{!176}
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !178, file: !177, line: 186, baseType: !76, size: 32, elements: !187)
!177 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!178 = distinct !DISubprogram(name: "x2nrealloc", scope: !177, file: !177, line: 174, type: !179, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !182)
!179 = !DISubroutineType(types: !180)
!180 = !{!9, !9, !181, !111}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!182 = !{!183, !184, !185, !186}
!183 = !DILocalVariable(name: "p", arg: 1, scope: !178, file: !177, line: 174, type: !9)
!184 = !DILocalVariable(name: "pn", arg: 2, scope: !178, file: !177, line: 174, type: !181)
!185 = !DILocalVariable(name: "s", arg: 3, scope: !178, file: !177, line: 174, type: !111)
!186 = !DILocalVariable(name: "n", scope: !178, file: !177, line: 176, type: !111)
!187 = !{!188}
!188 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!189 = !{!111, !66, !9}
!190 = distinct !DICompileUnit(language: DW_LANG_C99, file: !191, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!191 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !172)
!193 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !196)
!195 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!196 = !{!111}
!197 = distinct !DICompileUnit(language: DW_LANG_C99, file: !198, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!198 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!199 = distinct !DICompileUnit(language: DW_LANG_C99, file: !200, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!200 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !203, retainedTypes: !172)
!202 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!203 = !{!204}
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !205, line: 41, baseType: !76, size: 32, elements: !206)
!205 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!206 = !{!207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589}
!207 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!208 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!209 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!210 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!211 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!212 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!213 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!214 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!215 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!216 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!217 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!218 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!219 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!220 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!221 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!222 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!223 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!224 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!225 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!226 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!227 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!228 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!229 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!230 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!231 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!232 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!233 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!234 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!235 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!236 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!237 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!238 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!239 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!240 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!241 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!242 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!243 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!244 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!245 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!246 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!247 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!248 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!249 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!250 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!251 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!252 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!253 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!254 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!255 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!256 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!315 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!318 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!319 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!320 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!321 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!322 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!323 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!324 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!325 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!326 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!327 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!328 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!329 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!402 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!475 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!476 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!477 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!478 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!479 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!480 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!481 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!482 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!483 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!484 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!485 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!486 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!487 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!488 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!489 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!491 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!492 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!493 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!494 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!495 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!496 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!515 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!516 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!517 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!518 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!519 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!522 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!523 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!524 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!525 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!526 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!527 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!531 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!532 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!533 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!534 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!590 = distinct !DICompileUnit(language: DW_LANG_C99, file: !591, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4)
!591 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!592 = distinct !DICompileUnit(language: DW_LANG_C99, file: !593, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !172)
!593 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!594 = distinct !DICompileUnit(language: DW_LANG_C99, file: !595, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !172)
!595 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!596 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!597 = !{i32 2, !"Dwarf Version", i32 4}
!598 = !{i32 2, !"Debug Info Version", i32 3}
!599 = !{i32 1, !"wchar_size", i32 4}
!600 = !{i32 7, !"PIC Level", i32 2}
!601 = !{i32 7, !"PIE Level", i32 2}
!602 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 41, type: !603, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !605)
!603 = !DISubroutineType(types: !604)
!604 = !{null, !18}
!605 = !{!606}
!606 = !DILocalVariable(name: "status", arg: 1, scope: !602, file: !3, line: 41, type: !18)
!607 = !DILocalVariable(name: "infomap", scope: !608, file: !609, line: 632, type: !623)
!608 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !609, file: !609, line: 630, type: !610, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !612)
!609 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!610 = !DISubroutineType(types: !611)
!611 = !{null, !6}
!612 = !{!613, !607, !614, !615, !622}
!613 = !DILocalVariable(name: "program", arg: 1, scope: !608, file: !609, line: 630, type: !6)
!614 = !DILocalVariable(name: "node", scope: !608, file: !609, line: 642, type: !6)
!615 = !DILocalVariable(name: "map_prog", scope: !608, file: !609, line: 643, type: !616)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !608, file: !609, line: 632, size: 128, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !618, file: !609, line: 632, baseType: !6, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !618, file: !609, line: 632, baseType: !6, size: 64, offset: 64)
!622 = !DILocalVariable(name: "lc_messages", scope: !608, file: !609, line: 655, type: !6)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !617, size: 896, elements: !624)
!624 = !{!625}
!625 = !DISubrange(count: 7)
!626 = !DILocation(line: 632, column: 67, scope: !608, inlinedAt: !627)
!627 = distinct !DILocation(line: 54, column: 7, scope: !628)
!628 = distinct !DILexicalBlock(scope: !629, file: !3, line: 46, column: 5)
!629 = distinct !DILexicalBlock(scope: !602, file: !3, line: 43, column: 7)
!630 = !DILocation(line: 41, column: 12, scope: !602)
!631 = !DILocation(line: 43, column: 14, scope: !629)
!632 = !DILocation(line: 43, column: 7, scope: !602)
!633 = !DILocation(line: 44, column: 5, scope: !634)
!634 = distinct !DILexicalBlock(scope: !629, file: !3, line: 44, column: 5)
!635 = !{!636, !636, i64 0}
!636 = !{!"any pointer", !637, i64 0}
!637 = !{!"omnipotent char", !638, i64 0}
!638 = !{!"Simple C/C++ TBAA"}
!639 = !DILocation(line: 47, column: 7, scope: !628)
!640 = !DILocation(line: 52, column: 7, scope: !628)
!641 = !DILocation(line: 53, column: 7, scope: !628)
!642 = !DILocation(line: 632, column: 3, scope: !608, inlinedAt: !627)
!643 = !DILocation(line: 643, column: 36, scope: !608, inlinedAt: !627)
!644 = !DILocation(line: 643, column: 25, scope: !608, inlinedAt: !627)
!645 = !DILocation(line: 645, column: 33, scope: !608, inlinedAt: !627)
!646 = !DILocation(line: 645, column: 3, scope: !608, inlinedAt: !627)
!647 = !DILocation(line: 646, column: 13, scope: !608, inlinedAt: !627)
!648 = !DILocation(line: 645, column: 20, scope: !608, inlinedAt: !627)
!649 = !{!650, !636, i64 0}
!650 = !{!"infomap", !636, i64 0, !636, i64 8}
!651 = !DILocation(line: 645, column: 10, scope: !608, inlinedAt: !627)
!652 = !DILocation(line: 645, column: 28, scope: !608, inlinedAt: !627)
!653 = distinct !{!653, !654, !655}
!654 = !DILocation(line: 645, column: 3, scope: !608)
!655 = !DILocation(line: 646, column: 13, scope: !608)
!656 = !DILocation(line: 648, column: 17, scope: !657, inlinedAt: !627)
!657 = distinct !DILexicalBlock(scope: !608, file: !609, line: 648, column: 7)
!658 = !{!650, !636, i64 8}
!659 = !DILocation(line: 648, column: 7, scope: !657, inlinedAt: !627)
!660 = !DILocation(line: 648, column: 7, scope: !608, inlinedAt: !627)
!661 = !DILocation(line: 642, column: 15, scope: !608, inlinedAt: !627)
!662 = !DILocation(line: 651, column: 3, scope: !608, inlinedAt: !627)
!663 = !DILocation(line: 655, column: 29, scope: !608, inlinedAt: !627)
!664 = !DILocation(line: 655, column: 15, scope: !608, inlinedAt: !627)
!665 = !DILocation(line: 656, column: 7, scope: !666, inlinedAt: !627)
!666 = distinct !DILexicalBlock(scope: !608, file: !609, line: 656, column: 7)
!667 = !DILocation(line: 656, column: 19, scope: !666, inlinedAt: !627)
!668 = !DILocation(line: 656, column: 22, scope: !666, inlinedAt: !627)
!669 = !DILocation(line: 656, column: 7, scope: !608, inlinedAt: !627)
!670 = !DILocation(line: 662, column: 7, scope: !671, inlinedAt: !627)
!671 = distinct !DILexicalBlock(scope: !666, file: !609, line: 657, column: 5)
!672 = !DILocation(line: 664, column: 5, scope: !671, inlinedAt: !627)
!673 = !DILocation(line: 665, column: 3, scope: !608, inlinedAt: !627)
!674 = !DILocation(line: 667, column: 3, scope: !608, inlinedAt: !627)
!675 = !DILocation(line: 669, column: 1, scope: !608, inlinedAt: !627)
!676 = !DILocation(line: 56, column: 3, scope: !602)
!677 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 60, type: !678, isLocal: false, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !681)
!678 = !DISubroutineType(types: !679)
!679 = !{!18, !18, !680}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!681 = !{!682, !683, !684}
!682 = !DILocalVariable(name: "argc", arg: 1, scope: !677, file: !3, line: 60, type: !18)
!683 = !DILocalVariable(name: "argv", arg: 2, scope: !677, file: !3, line: 60, type: !680)
!684 = !DILocalVariable(name: "id", scope: !677, file: !3, line: 62, type: !76)
!685 = !DILocation(line: 60, column: 11, scope: !677)
!686 = !DILocation(line: 60, column: 24, scope: !677)
!687 = !DILocation(line: 65, column: 21, scope: !677)
!688 = !DILocation(line: 65, column: 3, scope: !677)
!689 = !DILocation(line: 66, column: 3, scope: !677)
!690 = !DILocation(line: 67, column: 3, scope: !677)
!691 = !DILocation(line: 68, column: 3, scope: !677)
!692 = !DILocation(line: 70, column: 3, scope: !677)
!693 = !DILocation(line: 72, column: 63, scope: !677)
!694 = !DILocation(line: 72, column: 3, scope: !677)
!695 = !DILocation(line: 74, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !677, file: !3, line: 74, column: 7)
!697 = !DILocation(line: 74, column: 56, scope: !696)
!698 = !DILocation(line: 74, column: 7, scope: !677)
!699 = !DILocation(line: 75, column: 5, scope: !696)
!700 = !DILocation(line: 77, column: 7, scope: !701)
!701 = distinct !DILexicalBlock(scope: !677, file: !3, line: 77, column: 7)
!702 = !{!703, !703, i64 0}
!703 = !{!"int", !637, i64 0}
!704 = !DILocation(line: 77, column: 14, scope: !701)
!705 = !DILocation(line: 77, column: 7, scope: !677)
!706 = !DILocation(line: 79, column: 20, scope: !707)
!707 = distinct !DILexicalBlock(scope: !701, file: !3, line: 78, column: 5)
!708 = !DILocation(line: 79, column: 55, scope: !707)
!709 = !DILocation(line: 79, column: 50, scope: !707)
!710 = !DILocation(line: 79, column: 43, scope: !707)
!711 = !DILocation(line: 79, column: 7, scope: !707)
!712 = !DILocation(line: 80, column: 7, scope: !707)
!713 = !DILocation(line: 83, column: 8, scope: !677)
!714 = !DILocation(line: 62, column: 16, scope: !677)
!715 = !DILocation(line: 90, column: 3, scope: !677)
!716 = !DILocation(line: 92, column: 3, scope: !677)
!717 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !36, file: !36, line: 51, type: !610, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !31, retainedNodes: !718)
!718 = !{!719}
!719 = !DILocalVariable(name: "file", arg: 1, scope: !717, file: !36, line: 51, type: !6)
!720 = !DILocation(line: 51, column: 41, scope: !717)
!721 = !DILocation(line: 53, column: 13, scope: !717)
!722 = !DILocation(line: 54, column: 1, scope: !717)
!723 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !36, file: !36, line: 88, type: !724, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !31, retainedNodes: !726)
!724 = !DISubroutineType(types: !725)
!725 = !{null, !37}
!726 = !{!727}
!727 = !DILocalVariable(name: "ignore", arg: 1, scope: !723, file: !36, line: 88, type: !37)
!728 = !DILocation(line: 88, column: 37, scope: !723)
!729 = !DILocation(line: 90, column: 16, scope: !723)
!730 = !{!731, !731, i64 0}
!731 = !{!"_Bool", !637, i64 0}
!732 = !DILocation(line: 91, column: 1, scope: !723)
!733 = distinct !DISubprogram(name: "close_stdout", scope: !36, file: !36, line: 117, type: !734, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !31, retainedNodes: !736)
!734 = !DISubroutineType(types: !735)
!735 = !{null}
!736 = !{!737}
!737 = !DILocalVariable(name: "write_error", scope: !738, file: !36, line: 122, type: !6)
!738 = distinct !DILexicalBlock(scope: !739, file: !36, line: 121, column: 5)
!739 = distinct !DILexicalBlock(scope: !733, file: !36, line: 119, column: 7)
!740 = !DILocation(line: 119, column: 21, scope: !739)
!741 = !DILocation(line: 119, column: 7, scope: !739)
!742 = !DILocation(line: 119, column: 29, scope: !739)
!743 = !DILocation(line: 120, column: 7, scope: !739)
!744 = !DILocation(line: 120, column: 12, scope: !739)
!745 = !{i8 0, i8 2}
!746 = !DILocation(line: 120, column: 25, scope: !739)
!747 = !DILocation(line: 120, column: 28, scope: !739)
!748 = !DILocation(line: 120, column: 34, scope: !739)
!749 = !DILocation(line: 119, column: 7, scope: !733)
!750 = !DILocation(line: 122, column: 33, scope: !738)
!751 = !DILocation(line: 122, column: 19, scope: !738)
!752 = !DILocation(line: 123, column: 11, scope: !753)
!753 = distinct !DILexicalBlock(scope: !738, file: !36, line: 123, column: 11)
!754 = !DILocation(line: 0, scope: !753)
!755 = !DILocation(line: 123, column: 11, scope: !738)
!756 = !DILocation(line: 124, column: 36, scope: !753)
!757 = !DILocation(line: 124, column: 9, scope: !753)
!758 = !DILocation(line: 127, column: 9, scope: !753)
!759 = !DILocation(line: 129, column: 14, scope: !738)
!760 = !DILocation(line: 129, column: 7, scope: !738)
!761 = !DILocation(line: 134, column: 42, scope: !762)
!762 = distinct !DILexicalBlock(scope: !733, file: !36, line: 134, column: 7)
!763 = !DILocation(line: 134, column: 28, scope: !762)
!764 = !DILocation(line: 134, column: 50, scope: !762)
!765 = !DILocation(line: 134, column: 7, scope: !733)
!766 = !DILocation(line: 135, column: 12, scope: !762)
!767 = !DILocation(line: 135, column: 5, scope: !762)
!768 = !DILocation(line: 136, column: 1, scope: !733)
!769 = distinct !DISubprogram(name: "parse_long_options", scope: !50, file: !50, line: 44, type: !770, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !47, retainedNodes: !773)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !18, !680, !6, !6, !6, !772, null}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!773 = !{!774, !775, !776, !777, !778, !779, !780, !781, !782}
!774 = !DILocalVariable(name: "argc", arg: 1, scope: !769, file: !50, line: 44, type: !18)
!775 = !DILocalVariable(name: "argv", arg: 2, scope: !769, file: !50, line: 45, type: !680)
!776 = !DILocalVariable(name: "command_name", arg: 3, scope: !769, file: !50, line: 46, type: !6)
!777 = !DILocalVariable(name: "package", arg: 4, scope: !769, file: !50, line: 47, type: !6)
!778 = !DILocalVariable(name: "version", arg: 5, scope: !769, file: !50, line: 48, type: !6)
!779 = !DILocalVariable(name: "usage_func", arg: 6, scope: !769, file: !50, line: 49, type: !772)
!780 = !DILocalVariable(name: "c", scope: !769, file: !50, line: 52, type: !18)
!781 = !DILocalVariable(name: "saved_opterr", scope: !769, file: !50, line: 53, type: !18)
!782 = !DILocalVariable(name: "authors", scope: !783, file: !50, line: 71, type: !787)
!783 = distinct !DILexicalBlock(scope: !784, file: !50, line: 70, column: 11)
!784 = distinct !DILexicalBlock(scope: !785, file: !50, line: 64, column: 9)
!785 = distinct !DILexicalBlock(scope: !786, file: !50, line: 62, column: 5)
!786 = distinct !DILexicalBlock(scope: !769, file: !50, line: 60, column: 7)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !788, line: 52, baseType: !789)
!788 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !790, line: 48, baseType: !791)
!790 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !48, line: 71, baseType: !792)
!792 = !DICompositeType(tag: DW_TAG_array_type, baseType: !793, size: 192, elements: !22)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !48, line: 71, size: 192, elements: !794)
!794 = !{!795, !796, !797, !798}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !793, file: !48, line: 71, baseType: !76, size: 32)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !793, file: !48, line: 71, baseType: !76, size: 32, offset: 32)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !793, file: !48, line: 71, baseType: !9, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !793, file: !48, line: 71, baseType: !9, size: 64, offset: 128)
!799 = !DILocation(line: 44, column: 25, scope: !769)
!800 = !DILocation(line: 45, column: 28, scope: !769)
!801 = !DILocation(line: 46, column: 33, scope: !769)
!802 = !DILocation(line: 47, column: 33, scope: !769)
!803 = !DILocation(line: 48, column: 33, scope: !769)
!804 = !DILocation(line: 49, column: 28, scope: !769)
!805 = !DILocation(line: 55, column: 18, scope: !769)
!806 = !DILocation(line: 53, column: 7, scope: !769)
!807 = !DILocation(line: 58, column: 10, scope: !769)
!808 = !DILocation(line: 60, column: 12, scope: !786)
!809 = !DILocation(line: 61, column: 7, scope: !786)
!810 = !DILocation(line: 61, column: 15, scope: !786)
!811 = !DILocation(line: 52, column: 7, scope: !769)
!812 = !DILocation(line: 60, column: 7, scope: !769)
!813 = !DILocation(line: 66, column: 11, scope: !784)
!814 = !DILocation(line: 67, column: 11, scope: !784)
!815 = !DILocation(line: 71, column: 13, scope: !783)
!816 = !DILocation(line: 71, column: 21, scope: !783)
!817 = !DILocation(line: 72, column: 13, scope: !783)
!818 = !DILocation(line: 73, column: 29, scope: !783)
!819 = !DILocation(line: 73, column: 13, scope: !783)
!820 = !DILocation(line: 74, column: 13, scope: !783)
!821 = !DILocation(line: 84, column: 10, scope: !769)
!822 = !DILocation(line: 88, column: 10, scope: !769)
!823 = !DILocation(line: 89, column: 1, scope: !769)
!824 = distinct !DISubprogram(name: "set_program_name", scope: !68, file: !68, line: 39, type: !610, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !63, retainedNodes: !825)
!825 = !{!826, !827, !828}
!826 = !DILocalVariable(name: "argv0", arg: 1, scope: !824, file: !68, line: 39, type: !6)
!827 = !DILocalVariable(name: "slash", scope: !824, file: !68, line: 46, type: !6)
!828 = !DILocalVariable(name: "base", scope: !824, file: !68, line: 47, type: !6)
!829 = !DILocation(line: 39, column: 31, scope: !824)
!830 = !DILocation(line: 51, column: 13, scope: !831)
!831 = distinct !DILexicalBlock(scope: !824, file: !68, line: 51, column: 7)
!832 = !DILocation(line: 51, column: 7, scope: !824)
!833 = !DILocation(line: 55, column: 14, scope: !834)
!834 = distinct !DILexicalBlock(scope: !831, file: !68, line: 52, column: 5)
!835 = !DILocation(line: 54, column: 7, scope: !834)
!836 = !DILocation(line: 56, column: 7, scope: !834)
!837 = !DILocation(line: 59, column: 11, scope: !824)
!838 = !DILocation(line: 46, column: 15, scope: !824)
!839 = !DILocation(line: 60, column: 17, scope: !824)
!840 = !DILocation(line: 60, column: 33, scope: !824)
!841 = !DILocation(line: 60, column: 11, scope: !824)
!842 = !DILocation(line: 47, column: 15, scope: !824)
!843 = !DILocation(line: 61, column: 12, scope: !844)
!844 = distinct !DILexicalBlock(scope: !824, file: !68, line: 61, column: 7)
!845 = !DILocation(line: 61, column: 20, scope: !844)
!846 = !DILocation(line: 61, column: 25, scope: !844)
!847 = !DILocation(line: 61, column: 42, scope: !844)
!848 = !DILocation(line: 61, column: 28, scope: !844)
!849 = !DILocation(line: 61, column: 61, scope: !844)
!850 = !DILocation(line: 61, column: 7, scope: !824)
!851 = !DILocation(line: 64, column: 11, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !68, line: 64, column: 11)
!853 = distinct !DILexicalBlock(scope: !844, file: !68, line: 62, column: 5)
!854 = !DILocation(line: 64, column: 36, scope: !852)
!855 = !DILocation(line: 64, column: 11, scope: !853)
!856 = !DILocation(line: 66, column: 24, scope: !857)
!857 = distinct !DILexicalBlock(scope: !852, file: !68, line: 65, column: 9)
!858 = !DILocation(line: 70, column: 41, scope: !857)
!859 = !DILocation(line: 72, column: 9, scope: !857)
!860 = !DILocation(line: 84, column: 16, scope: !824)
!861 = !DILocation(line: 90, column: 27, scope: !824)
!862 = !DILocation(line: 92, column: 1, scope: !824)
!863 = distinct !DISubprogram(name: "clone_quoting_options", scope: !117, file: !117, line: 122, type: !864, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !867)
!864 = !DISubroutineType(types: !865)
!865 = !{!866, !866}
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!867 = !{!868, !869, !870}
!868 = !DILocalVariable(name: "o", arg: 1, scope: !863, file: !117, line: 122, type: !866)
!869 = !DILocalVariable(name: "e", scope: !863, file: !117, line: 124, type: !18)
!870 = !DILocalVariable(name: "p", scope: !863, file: !117, line: 125, type: !866)
!871 = !DILocation(line: 122, column: 48, scope: !863)
!872 = !DILocation(line: 124, column: 11, scope: !863)
!873 = !DILocation(line: 124, column: 7, scope: !863)
!874 = !DILocation(line: 125, column: 40, scope: !863)
!875 = !DILocation(line: 125, column: 31, scope: !863)
!876 = !DILocation(line: 125, column: 27, scope: !863)
!877 = !DILocation(line: 127, column: 9, scope: !863)
!878 = !DILocation(line: 128, column: 3, scope: !863)
!879 = distinct !DISubprogram(name: "get_quoting_style", scope: !117, file: !117, line: 133, type: !880, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !884)
!880 = !DISubroutineType(types: !881)
!881 = !{!74, !882}
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !124)
!884 = !{!885}
!885 = !DILocalVariable(name: "o", arg: 1, scope: !879, file: !117, line: 133, type: !882)
!886 = !DILocation(line: 133, column: 50, scope: !879)
!887 = !DILocation(line: 135, column: 11, scope: !879)
!888 = !DILocation(line: 135, column: 46, scope: !879)
!889 = !{!890, !637, i64 0}
!890 = !{!"quoting_options", !637, i64 0, !703, i64 4, !637, i64 8, !636, i64 40, !636, i64 48}
!891 = !DILocation(line: 135, column: 3, scope: !879)
!892 = distinct !DISubprogram(name: "set_quoting_style", scope: !117, file: !117, line: 141, type: !893, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !895)
!893 = !DISubroutineType(types: !894)
!894 = !{null, !866, !74}
!895 = !{!896, !897}
!896 = !DILocalVariable(name: "o", arg: 1, scope: !892, file: !117, line: 141, type: !866)
!897 = !DILocalVariable(name: "s", arg: 2, scope: !892, file: !117, line: 141, type: !74)
!898 = !DILocation(line: 141, column: 44, scope: !892)
!899 = !DILocation(line: 141, column: 66, scope: !892)
!900 = !DILocation(line: 143, column: 4, scope: !892)
!901 = !DILocation(line: 143, column: 39, scope: !892)
!902 = !DILocation(line: 143, column: 45, scope: !892)
!903 = !DILocation(line: 144, column: 1, scope: !892)
!904 = distinct !DISubprogram(name: "set_char_quoting", scope: !117, file: !117, line: 152, type: !905, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !907)
!905 = !DISubroutineType(types: !906)
!906 = !{!18, !866, !8, !18}
!907 = !{!908, !909, !910, !911, !913, !915, !916}
!908 = !DILocalVariable(name: "o", arg: 1, scope: !904, file: !117, line: 152, type: !866)
!909 = !DILocalVariable(name: "c", arg: 2, scope: !904, file: !117, line: 152, type: !8)
!910 = !DILocalVariable(name: "i", arg: 3, scope: !904, file: !117, line: 152, type: !18)
!911 = !DILocalVariable(name: "uc", scope: !904, file: !117, line: 154, type: !912)
!912 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!913 = !DILocalVariable(name: "p", scope: !904, file: !117, line: 155, type: !914)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!915 = !DILocalVariable(name: "shift", scope: !904, file: !117, line: 157, type: !18)
!916 = !DILocalVariable(name: "r", scope: !904, file: !117, line: 158, type: !18)
!917 = !DILocation(line: 152, column: 43, scope: !904)
!918 = !DILocation(line: 152, column: 51, scope: !904)
!919 = !DILocation(line: 152, column: 58, scope: !904)
!920 = !DILocation(line: 154, column: 17, scope: !904)
!921 = !DILocation(line: 156, column: 6, scope: !904)
!922 = !DILocation(line: 156, column: 62, scope: !904)
!923 = !DILocation(line: 156, column: 57, scope: !904)
!924 = !DILocation(line: 155, column: 17, scope: !904)
!925 = !DILocation(line: 157, column: 15, scope: !904)
!926 = !DILocation(line: 157, column: 7, scope: !904)
!927 = !DILocation(line: 158, column: 12, scope: !904)
!928 = !DILocation(line: 158, column: 15, scope: !904)
!929 = !DILocation(line: 158, column: 25, scope: !904)
!930 = !DILocation(line: 158, column: 7, scope: !904)
!931 = !DILocation(line: 159, column: 13, scope: !904)
!932 = !DILocation(line: 159, column: 18, scope: !904)
!933 = !DILocation(line: 159, column: 23, scope: !904)
!934 = !DILocation(line: 159, column: 6, scope: !904)
!935 = !DILocation(line: 160, column: 3, scope: !904)
!936 = distinct !DISubprogram(name: "set_quoting_flags", scope: !117, file: !117, line: 168, type: !937, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !939)
!937 = !DISubroutineType(types: !938)
!938 = !{!18, !866, !18}
!939 = !{!940, !941, !942}
!940 = !DILocalVariable(name: "o", arg: 1, scope: !936, file: !117, line: 168, type: !866)
!941 = !DILocalVariable(name: "i", arg: 2, scope: !936, file: !117, line: 168, type: !18)
!942 = !DILocalVariable(name: "r", scope: !936, file: !117, line: 170, type: !18)
!943 = !DILocation(line: 168, column: 44, scope: !936)
!944 = !DILocation(line: 168, column: 51, scope: !936)
!945 = !DILocation(line: 171, column: 8, scope: !946)
!946 = distinct !DILexicalBlock(scope: !936, file: !117, line: 171, column: 7)
!947 = !DILocation(line: 171, column: 7, scope: !936)
!948 = !DILocation(line: 173, column: 10, scope: !936)
!949 = !{!890, !703, i64 4}
!950 = !DILocation(line: 170, column: 7, scope: !936)
!951 = !DILocation(line: 174, column: 12, scope: !936)
!952 = !DILocation(line: 175, column: 3, scope: !936)
!953 = distinct !DISubprogram(name: "set_custom_quoting", scope: !117, file: !117, line: 179, type: !954, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !956)
!954 = !DISubroutineType(types: !955)
!955 = !{null, !866, !6, !6}
!956 = !{!957, !958, !959}
!957 = !DILocalVariable(name: "o", arg: 1, scope: !953, file: !117, line: 179, type: !866)
!958 = !DILocalVariable(name: "left_quote", arg: 2, scope: !953, file: !117, line: 180, type: !6)
!959 = !DILocalVariable(name: "right_quote", arg: 3, scope: !953, file: !117, line: 180, type: !6)
!960 = !DILocation(line: 179, column: 45, scope: !953)
!961 = !DILocation(line: 180, column: 33, scope: !953)
!962 = !DILocation(line: 180, column: 57, scope: !953)
!963 = !DILocation(line: 182, column: 8, scope: !964)
!964 = distinct !DILexicalBlock(scope: !953, file: !117, line: 182, column: 7)
!965 = !DILocation(line: 182, column: 7, scope: !953)
!966 = !DILocation(line: 184, column: 6, scope: !953)
!967 = !DILocation(line: 184, column: 12, scope: !953)
!968 = !DILocation(line: 185, column: 8, scope: !969)
!969 = distinct !DILexicalBlock(scope: !953, file: !117, line: 185, column: 7)
!970 = !DILocation(line: 185, column: 23, scope: !969)
!971 = !DILocation(line: 185, column: 19, scope: !969)
!972 = !DILocation(line: 186, column: 5, scope: !969)
!973 = !DILocation(line: 187, column: 6, scope: !953)
!974 = !DILocation(line: 187, column: 17, scope: !953)
!975 = !{!890, !636, i64 40}
!976 = !DILocation(line: 188, column: 6, scope: !953)
!977 = !DILocation(line: 188, column: 18, scope: !953)
!978 = !{!890, !636, i64 48}
!979 = !DILocation(line: 189, column: 1, scope: !953)
!980 = distinct !DISubprogram(name: "quotearg_buffer", scope: !117, file: !117, line: 784, type: !981, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !983)
!981 = !DISubroutineType(types: !982)
!982 = !{!111, !66, !111, !6, !111, !882}
!983 = !{!984, !985, !986, !987, !988, !989, !990, !991}
!984 = !DILocalVariable(name: "buffer", arg: 1, scope: !980, file: !117, line: 784, type: !66)
!985 = !DILocalVariable(name: "buffersize", arg: 2, scope: !980, file: !117, line: 784, type: !111)
!986 = !DILocalVariable(name: "arg", arg: 3, scope: !980, file: !117, line: 785, type: !6)
!987 = !DILocalVariable(name: "argsize", arg: 4, scope: !980, file: !117, line: 785, type: !111)
!988 = !DILocalVariable(name: "o", arg: 5, scope: !980, file: !117, line: 786, type: !882)
!989 = !DILocalVariable(name: "p", scope: !980, file: !117, line: 788, type: !882)
!990 = !DILocalVariable(name: "e", scope: !980, file: !117, line: 789, type: !18)
!991 = !DILocalVariable(name: "r", scope: !980, file: !117, line: 790, type: !111)
!992 = !DILocation(line: 784, column: 24, scope: !980)
!993 = !DILocation(line: 784, column: 39, scope: !980)
!994 = !DILocation(line: 785, column: 30, scope: !980)
!995 = !DILocation(line: 785, column: 42, scope: !980)
!996 = !DILocation(line: 786, column: 48, scope: !980)
!997 = !DILocation(line: 788, column: 37, scope: !980)
!998 = !DILocation(line: 788, column: 33, scope: !980)
!999 = !DILocation(line: 789, column: 11, scope: !980)
!1000 = !DILocation(line: 789, column: 7, scope: !980)
!1001 = !DILocation(line: 791, column: 43, scope: !980)
!1002 = !DILocation(line: 791, column: 53, scope: !980)
!1003 = !DILocation(line: 791, column: 60, scope: !980)
!1004 = !DILocation(line: 792, column: 43, scope: !980)
!1005 = !DILocation(line: 792, column: 58, scope: !980)
!1006 = !DILocation(line: 790, column: 14, scope: !980)
!1007 = !DILocation(line: 790, column: 10, scope: !980)
!1008 = !DILocation(line: 793, column: 9, scope: !980)
!1009 = !DILocation(line: 794, column: 3, scope: !980)
!1010 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !117, file: !117, line: 256, type: !1011, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1015)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!111, !66, !111, !6, !111, !74, !18, !1013, !6, !6}
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!1015 = !{!1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1040, !1041, !1042, !1043, !1044, !1047, !1048, !1066, !1069, !1070, !1077}
!1016 = !DILocalVariable(name: "buffer", arg: 1, scope: !1010, file: !117, line: 256, type: !66)
!1017 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1010, file: !117, line: 256, type: !111)
!1018 = !DILocalVariable(name: "arg", arg: 3, scope: !1010, file: !117, line: 257, type: !6)
!1019 = !DILocalVariable(name: "argsize", arg: 4, scope: !1010, file: !117, line: 257, type: !111)
!1020 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1010, file: !117, line: 258, type: !74)
!1021 = !DILocalVariable(name: "flags", arg: 6, scope: !1010, file: !117, line: 258, type: !18)
!1022 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1010, file: !117, line: 259, type: !1013)
!1023 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1010, file: !117, line: 260, type: !6)
!1024 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1010, file: !117, line: 261, type: !6)
!1025 = !DILocalVariable(name: "i", scope: !1010, file: !117, line: 263, type: !111)
!1026 = !DILocalVariable(name: "len", scope: !1010, file: !117, line: 264, type: !111)
!1027 = !DILocalVariable(name: "orig_buffersize", scope: !1010, file: !117, line: 265, type: !111)
!1028 = !DILocalVariable(name: "quote_string", scope: !1010, file: !117, line: 266, type: !6)
!1029 = !DILocalVariable(name: "quote_string_len", scope: !1010, file: !117, line: 267, type: !111)
!1030 = !DILocalVariable(name: "backslash_escapes", scope: !1010, file: !117, line: 268, type: !37)
!1031 = !DILocalVariable(name: "unibyte_locale", scope: !1010, file: !117, line: 269, type: !37)
!1032 = !DILocalVariable(name: "elide_outer_quotes", scope: !1010, file: !117, line: 270, type: !37)
!1033 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1010, file: !117, line: 271, type: !37)
!1034 = !DILocalVariable(name: "encountered_single_quote", scope: !1010, file: !117, line: 272, type: !37)
!1035 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1010, file: !117, line: 273, type: !37)
!1036 = !DILocalVariable(name: "c", scope: !1037, file: !117, line: 402, type: !912)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !117, line: 401, column: 5)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !117, line: 400, column: 3)
!1039 = distinct !DILexicalBlock(scope: !1010, file: !117, line: 400, column: 3)
!1040 = !DILocalVariable(name: "esc", scope: !1037, file: !117, line: 403, type: !912)
!1041 = !DILocalVariable(name: "is_right_quote", scope: !1037, file: !117, line: 404, type: !37)
!1042 = !DILocalVariable(name: "escaping", scope: !1037, file: !117, line: 405, type: !37)
!1043 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1037, file: !117, line: 406, type: !37)
!1044 = !DILocalVariable(name: "m", scope: !1045, file: !117, line: 610, type: !111)
!1045 = distinct !DILexicalBlock(scope: !1046, file: !117, line: 608, column: 11)
!1046 = distinct !DILexicalBlock(scope: !1037, file: !117, line: 426, column: 9)
!1047 = !DILocalVariable(name: "printable", scope: !1045, file: !117, line: 612, type: !37)
!1048 = !DILocalVariable(name: "mbstate", scope: !1049, file: !117, line: 621, type: !1051)
!1049 = distinct !DILexicalBlock(scope: !1050, file: !117, line: 620, column: 15)
!1050 = distinct !DILexicalBlock(scope: !1045, file: !117, line: 614, column: 17)
!1051 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1052, line: 6, baseType: !1053)
!1052 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1054, line: 21, baseType: !1055)
!1054 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1054, line: 13, size: 64, elements: !1056)
!1056 = !{!1057, !1058}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1055, file: !1054, line: 15, baseType: !18, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1055, file: !1054, line: 20, baseType: !1059, size: 32, offset: 32)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1055, file: !1054, line: 16, size: 32, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1059, file: !1054, line: 18, baseType: !76, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1059, file: !1054, line: 19, baseType: !1063, size: 32)
!1063 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 32, elements: !1064)
!1064 = !{!1065}
!1065 = !DISubrange(count: 4)
!1066 = !DILocalVariable(name: "w", scope: !1067, file: !117, line: 631, type: !1068)
!1067 = distinct !DILexicalBlock(scope: !1049, file: !117, line: 630, column: 19)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !112, line: 90, baseType: !18)
!1069 = !DILocalVariable(name: "bytes", scope: !1067, file: !117, line: 632, type: !111)
!1070 = !DILocalVariable(name: "j", scope: !1071, file: !117, line: 657, type: !111)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !117, line: 656, column: 27)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !117, line: 654, column: 29)
!1073 = distinct !DILexicalBlock(scope: !1074, file: !117, line: 649, column: 23)
!1074 = distinct !DILexicalBlock(scope: !1075, file: !117, line: 641, column: 30)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !117, line: 636, column: 30)
!1076 = distinct !DILexicalBlock(scope: !1067, file: !117, line: 634, column: 25)
!1077 = !DILocalVariable(name: "ilim", scope: !1078, file: !117, line: 684, type: !111)
!1078 = distinct !DILexicalBlock(scope: !1079, file: !117, line: 681, column: 15)
!1079 = distinct !DILexicalBlock(scope: !1045, file: !117, line: 680, column: 17)
!1080 = !DILocation(line: 256, column: 33, scope: !1010)
!1081 = !DILocation(line: 256, column: 48, scope: !1010)
!1082 = !DILocation(line: 257, column: 39, scope: !1010)
!1083 = !DILocation(line: 257, column: 51, scope: !1010)
!1084 = !DILocation(line: 258, column: 46, scope: !1010)
!1085 = !DILocation(line: 258, column: 65, scope: !1010)
!1086 = !DILocation(line: 259, column: 47, scope: !1010)
!1087 = !DILocation(line: 260, column: 39, scope: !1010)
!1088 = !DILocation(line: 261, column: 39, scope: !1010)
!1089 = !DILocation(line: 264, column: 10, scope: !1010)
!1090 = !DILocation(line: 265, column: 10, scope: !1010)
!1091 = !DILocation(line: 266, column: 15, scope: !1010)
!1092 = !DILocation(line: 267, column: 10, scope: !1010)
!1093 = !DILocation(line: 268, column: 8, scope: !1010)
!1094 = !DILocation(line: 269, column: 25, scope: !1010)
!1095 = !DILocation(line: 269, column: 36, scope: !1010)
!1096 = !DILocation(line: 270, column: 8, scope: !1010)
!1097 = !DILocation(line: 271, column: 8, scope: !1010)
!1098 = !DILocation(line: 272, column: 8, scope: !1010)
!1099 = !DILocation(line: 273, column: 8, scope: !1010)
!1100 = !DILocation(line: 273, column: 3, scope: !1010)
!1101 = !DILocation(line: 0, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1010, file: !117, line: 317, column: 5)
!1103 = !DILocation(line: 316, column: 3, scope: !1010)
!1104 = !DILocation(line: 323, column: 11, scope: !1102)
!1105 = !DILocation(line: 323, column: 12, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1102, file: !117, line: 323, column: 11)
!1107 = !DILocation(line: 324, column: 9, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !117, line: 324, column: 9)
!1109 = distinct !DILexicalBlock(scope: !1106, file: !117, line: 324, column: 9)
!1110 = !DILocation(line: 324, column: 9, scope: !1109)
!1111 = !{!637, !637, i64 0}
!1112 = !DILocation(line: 362, column: 26, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !117, line: 340, column: 11)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !117, line: 339, column: 13)
!1115 = distinct !DILexicalBlock(scope: !1102, file: !117, line: 338, column: 7)
!1116 = !DILocation(line: 363, column: 27, scope: !1113)
!1117 = !DILocation(line: 364, column: 11, scope: !1113)
!1118 = !DILocation(line: 365, column: 14, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !117, line: 365, column: 13)
!1120 = !DILocation(line: 365, column: 13, scope: !1115)
!1121 = !DILocation(line: 366, column: 43, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !117, line: 366, column: 11)
!1123 = distinct !DILexicalBlock(scope: !1119, file: !117, line: 366, column: 11)
!1124 = !DILocation(line: 366, column: 11, scope: !1123)
!1125 = !DILocation(line: 367, column: 13, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1127, file: !117, line: 367, column: 13)
!1127 = distinct !DILexicalBlock(scope: !1122, file: !117, line: 367, column: 13)
!1128 = !DILocation(line: 367, column: 13, scope: !1127)
!1129 = !DILocation(line: 366, column: 70, scope: !1122)
!1130 = distinct !{!1130, !1124, !1131}
!1131 = !DILocation(line: 367, column: 13, scope: !1123)
!1132 = !DILocation(line: 370, column: 28, scope: !1115)
!1133 = !DILocation(line: 372, column: 7, scope: !1102)
!1134 = !DILocation(line: 376, column: 7, scope: !1102)
!1135 = !DILocation(line: 379, column: 7, scope: !1102)
!1136 = !DILocation(line: 381, column: 12, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1102, file: !117, line: 381, column: 11)
!1138 = !DILocation(line: 381, column: 11, scope: !1102)
!1139 = !DILocation(line: 0, scope: !1137)
!1140 = !DILocation(line: 386, column: 12, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1102, file: !117, line: 386, column: 11)
!1142 = !DILocation(line: 386, column: 11, scope: !1102)
!1143 = !DILocation(line: 387, column: 9, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !117, line: 387, column: 9)
!1145 = distinct !DILexicalBlock(scope: !1141, file: !117, line: 387, column: 9)
!1146 = !DILocation(line: 387, column: 9, scope: !1145)
!1147 = !DILocation(line: 394, column: 7, scope: !1102)
!1148 = !DILocation(line: 397, column: 7, scope: !1102)
!1149 = !DILocation(line: 0, scope: !1010)
!1150 = !DILocation(line: 263, column: 10, scope: !1010)
!1151 = !DILocation(line: 400, column: 8, scope: !1039)
!1152 = !DILocation(line: 0, scope: !1038)
!1153 = !DILocation(line: 400, column: 27, scope: !1038)
!1154 = !DILocation(line: 400, column: 19, scope: !1038)
!1155 = !DILocation(line: 400, column: 41, scope: !1038)
!1156 = !DILocation(line: 400, column: 48, scope: !1038)
!1157 = !DILocation(line: 400, column: 3, scope: !1039)
!1158 = !DILocation(line: 400, column: 60, scope: !1038)
!1159 = !DILocation(line: 404, column: 12, scope: !1037)
!1160 = !DILocation(line: 405, column: 12, scope: !1037)
!1161 = !DILocation(line: 406, column: 12, scope: !1037)
!1162 = !DILocation(line: 409, column: 11, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1037, file: !117, line: 408, column: 11)
!1164 = !DILocation(line: 411, column: 17, scope: !1163)
!1165 = !DILocation(line: 412, column: 39, scope: !1163)
!1166 = !DILocation(line: 416, column: 32, scope: !1163)
!1167 = !DILocation(line: 412, column: 19, scope: !1163)
!1168 = !DILocation(line: 412, column: 15, scope: !1163)
!1169 = !DILocation(line: 417, column: 11, scope: !1163)
!1170 = !DILocation(line: 417, column: 26, scope: !1163)
!1171 = !DILocation(line: 417, column: 14, scope: !1163)
!1172 = !DILocation(line: 417, column: 63, scope: !1163)
!1173 = !DILocation(line: 408, column: 11, scope: !1037)
!1174 = !DILocation(line: 0, scope: !1037)
!1175 = !DILocation(line: 424, column: 11, scope: !1037)
!1176 = !DILocation(line: 402, column: 21, scope: !1037)
!1177 = !DILocation(line: 425, column: 7, scope: !1037)
!1178 = !DILocation(line: 428, column: 15, scope: !1046)
!1179 = !DILocation(line: 430, column: 15, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !117, line: 430, column: 15)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !117, line: 429, column: 13)
!1182 = distinct !DILexicalBlock(scope: !1046, file: !117, line: 428, column: 15)
!1183 = !DILocation(line: 430, column: 15, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1180, file: !117, line: 430, column: 15)
!1185 = !DILocation(line: 430, column: 15, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !117, line: 430, column: 15)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !117, line: 430, column: 15)
!1188 = distinct !DILexicalBlock(scope: !1184, file: !117, line: 430, column: 15)
!1189 = !DILocation(line: 430, column: 15, scope: !1187)
!1190 = !DILocation(line: 430, column: 15, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !117, line: 430, column: 15)
!1192 = distinct !DILexicalBlock(scope: !1188, file: !117, line: 430, column: 15)
!1193 = !DILocation(line: 430, column: 15, scope: !1192)
!1194 = !DILocation(line: 430, column: 15, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !117, line: 430, column: 15)
!1196 = distinct !DILexicalBlock(scope: !1188, file: !117, line: 430, column: 15)
!1197 = !DILocation(line: 430, column: 15, scope: !1196)
!1198 = !DILocation(line: 430, column: 15, scope: !1188)
!1199 = !DILocation(line: 430, column: 15, scope: !1200)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !117, line: 430, column: 15)
!1201 = distinct !DILexicalBlock(scope: !1180, file: !117, line: 430, column: 15)
!1202 = !DILocation(line: 430, column: 15, scope: !1201)
!1203 = !DILocation(line: 438, column: 19, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1181, file: !117, line: 437, column: 19)
!1205 = !DILocation(line: 438, column: 24, scope: !1204)
!1206 = !DILocation(line: 438, column: 28, scope: !1204)
!1207 = !DILocation(line: 438, column: 38, scope: !1204)
!1208 = !DILocation(line: 438, column: 48, scope: !1204)
!1209 = !DILocation(line: 438, column: 59, scope: !1204)
!1210 = !DILocation(line: 440, column: 19, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !117, line: 440, column: 19)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !117, line: 440, column: 19)
!1213 = distinct !DILexicalBlock(scope: !1204, file: !117, line: 439, column: 17)
!1214 = !DILocation(line: 440, column: 19, scope: !1212)
!1215 = !DILocation(line: 441, column: 19, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !117, line: 441, column: 19)
!1217 = distinct !DILexicalBlock(scope: !1213, file: !117, line: 441, column: 19)
!1218 = !DILocation(line: 441, column: 19, scope: !1217)
!1219 = !DILocation(line: 442, column: 17, scope: !1213)
!1220 = !DILocation(line: 449, column: 20, scope: !1182)
!1221 = !DILocation(line: 454, column: 11, scope: !1046)
!1222 = !DILocation(line: 457, column: 19, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1046, file: !117, line: 455, column: 13)
!1224 = !DILocation(line: 463, column: 19, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1223, file: !117, line: 462, column: 19)
!1226 = !DILocation(line: 463, column: 24, scope: !1225)
!1227 = !DILocation(line: 463, column: 28, scope: !1225)
!1228 = !DILocation(line: 463, column: 38, scope: !1225)
!1229 = !DILocation(line: 463, column: 47, scope: !1225)
!1230 = !DILocation(line: 463, column: 41, scope: !1225)
!1231 = !DILocation(line: 463, column: 52, scope: !1225)
!1232 = !DILocation(line: 462, column: 19, scope: !1223)
!1233 = !DILocation(line: 464, column: 25, scope: !1225)
!1234 = !DILocation(line: 464, column: 17, scope: !1225)
!1235 = !DILocation(line: 471, column: 25, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1225, file: !117, line: 465, column: 19)
!1237 = !DILocation(line: 475, column: 21, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !117, line: 475, column: 21)
!1239 = distinct !DILexicalBlock(scope: !1236, file: !117, line: 475, column: 21)
!1240 = !DILocation(line: 475, column: 21, scope: !1239)
!1241 = !DILocation(line: 476, column: 21, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !117, line: 476, column: 21)
!1243 = distinct !DILexicalBlock(scope: !1236, file: !117, line: 476, column: 21)
!1244 = !DILocation(line: 476, column: 21, scope: !1243)
!1245 = !DILocation(line: 477, column: 21, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !117, line: 477, column: 21)
!1247 = distinct !DILexicalBlock(scope: !1236, file: !117, line: 477, column: 21)
!1248 = !DILocation(line: 477, column: 21, scope: !1247)
!1249 = !DILocation(line: 478, column: 21, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !117, line: 478, column: 21)
!1251 = distinct !DILexicalBlock(scope: !1236, file: !117, line: 478, column: 21)
!1252 = !DILocation(line: 478, column: 21, scope: !1251)
!1253 = !DILocation(line: 479, column: 21, scope: !1236)
!1254 = !DILocation(line: 403, column: 21, scope: !1037)
!1255 = !DILocation(line: 492, column: 31, scope: !1046)
!1256 = !DILocation(line: 493, column: 31, scope: !1046)
!1257 = !DILocation(line: 495, column: 31, scope: !1046)
!1258 = !DILocation(line: 496, column: 31, scope: !1046)
!1259 = !DILocation(line: 497, column: 31, scope: !1046)
!1260 = !DILocation(line: 500, column: 15, scope: !1046)
!1261 = !DILocation(line: 502, column: 19, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !117, line: 501, column: 13)
!1263 = distinct !DILexicalBlock(scope: !1046, file: !117, line: 500, column: 15)
!1264 = !DILocation(line: 509, column: 33, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1046, file: !117, line: 509, column: 15)
!1266 = !DILocation(line: 0, scope: !1046)
!1267 = !DILocation(line: 514, column: 15, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1046, file: !117, line: 513, column: 15)
!1269 = !DILocation(line: 518, column: 15, scope: !1046)
!1270 = !DILocation(line: 526, column: 26, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1046, file: !117, line: 526, column: 15)
!1272 = !DILocation(line: 526, column: 15, scope: !1046)
!1273 = !DILocation(line: 526, column: 40, scope: !1271)
!1274 = !DILocation(line: 526, column: 47, scope: !1271)
!1275 = !DILocation(line: 530, column: 17, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1046, file: !117, line: 530, column: 15)
!1277 = !DILocation(line: 526, column: 18, scope: !1271)
!1278 = !DILocation(line: 526, column: 65, scope: !1271)
!1279 = !DILocation(line: 530, column: 15, scope: !1046)
!1280 = !DILocation(line: 535, column: 11, scope: !1046)
!1281 = !DILocation(line: 549, column: 15, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1046, file: !117, line: 548, column: 15)
!1283 = !DILocation(line: 556, column: 15, scope: !1046)
!1284 = !DILocation(line: 558, column: 19, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !117, line: 557, column: 13)
!1286 = distinct !DILexicalBlock(scope: !1046, file: !117, line: 556, column: 15)
!1287 = !DILocation(line: 561, column: 19, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1285, file: !117, line: 561, column: 19)
!1289 = !DILocation(line: 561, column: 35, scope: !1288)
!1290 = !DILocation(line: 561, column: 30, scope: !1288)
!1291 = !DILocation(line: 570, column: 15, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !117, line: 570, column: 15)
!1293 = distinct !DILexicalBlock(scope: !1285, file: !117, line: 570, column: 15)
!1294 = !DILocation(line: 570, column: 15, scope: !1293)
!1295 = !DILocation(line: 571, column: 15, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !117, line: 571, column: 15)
!1297 = distinct !DILexicalBlock(scope: !1285, file: !117, line: 571, column: 15)
!1298 = !DILocation(line: 571, column: 15, scope: !1297)
!1299 = !DILocation(line: 572, column: 15, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !117, line: 572, column: 15)
!1301 = distinct !DILexicalBlock(scope: !1285, file: !117, line: 572, column: 15)
!1302 = !DILocation(line: 572, column: 15, scope: !1301)
!1303 = !DILocation(line: 574, column: 13, scope: !1285)
!1304 = !DILocation(line: 614, column: 17, scope: !1045)
!1305 = !DILocation(line: 610, column: 20, scope: !1045)
!1306 = !DILocation(line: 617, column: 29, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1050, file: !117, line: 615, column: 15)
!1308 = !{!1309, !1309, i64 0}
!1309 = !{!"short", !637, i64 0}
!1310 = !DILocation(line: 617, column: 27, scope: !1307)
!1311 = !DILocation(line: 612, column: 18, scope: !1045)
!1312 = !DILocation(line: 618, column: 15, scope: !1307)
!1313 = !DILocation(line: 621, column: 17, scope: !1049)
!1314 = !DILocation(line: 622, column: 17, scope: !1049)
!1315 = !DILocation(line: 626, column: 29, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1049, file: !117, line: 626, column: 21)
!1317 = !DILocation(line: 626, column: 21, scope: !1049)
!1318 = !DILocation(line: 627, column: 29, scope: !1316)
!1319 = !DILocation(line: 627, column: 19, scope: !1316)
!1320 = !DILocation(line: 0, scope: !1163)
!1321 = !DILocation(line: 629, column: 17, scope: !1049)
!1322 = !DILocation(line: 624, column: 19, scope: !1049)
!1323 = !DILocation(line: 625, column: 27, scope: !1049)
!1324 = !DILocation(line: 631, column: 21, scope: !1067)
!1325 = !DILocation(line: 632, column: 56, scope: !1067)
!1326 = !DILocation(line: 632, column: 50, scope: !1067)
!1327 = !DILocation(line: 633, column: 53, scope: !1067)
!1328 = !DILocation(line: 621, column: 27, scope: !1049)
!1329 = !DILocation(line: 631, column: 29, scope: !1067)
!1330 = !DILocation(line: 632, column: 36, scope: !1067)
!1331 = !DILocation(line: 632, column: 28, scope: !1067)
!1332 = !DILocation(line: 634, column: 25, scope: !1067)
!1333 = !DILocation(line: 644, column: 38, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1074, file: !117, line: 642, column: 23)
!1335 = !DILocation(line: 644, column: 48, scope: !1334)
!1336 = !DILocation(line: 644, column: 51, scope: !1334)
!1337 = !DILocation(line: 644, column: 25, scope: !1334)
!1338 = !DILocation(line: 645, column: 28, scope: !1334)
!1339 = !DILocation(line: 644, column: 34, scope: !1334)
!1340 = distinct !{!1340, !1337, !1338}
!1341 = !DILocation(line: 658, column: 43, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !117, line: 658, column: 29)
!1343 = distinct !DILexicalBlock(scope: !1071, file: !117, line: 658, column: 29)
!1344 = !DILocation(line: 655, column: 29, scope: !1072)
!1345 = !DILocation(line: 657, column: 36, scope: !1071)
!1346 = !DILocation(line: 659, column: 49, scope: !1342)
!1347 = !DILocation(line: 659, column: 39, scope: !1342)
!1348 = !DILocation(line: 659, column: 31, scope: !1342)
!1349 = !DILocation(line: 658, column: 53, scope: !1342)
!1350 = !DILocation(line: 658, column: 29, scope: !1343)
!1351 = distinct !{!1351, !1350, !1352}
!1352 = !DILocation(line: 667, column: 33, scope: !1343)
!1353 = !DILocation(line: 674, column: 19, scope: !1049)
!1354 = !DILocation(line: 670, column: 41, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1073, file: !117, line: 670, column: 29)
!1356 = !DILocation(line: 670, column: 31, scope: !1355)
!1357 = !DILocation(line: 670, column: 29, scope: !1073)
!1358 = !DILocation(line: 672, column: 27, scope: !1073)
!1359 = !DILocation(line: 675, column: 26, scope: !1049)
!1360 = !DILocation(line: 675, column: 24, scope: !1049)
!1361 = !DILocation(line: 674, column: 19, scope: !1067)
!1362 = distinct !{!1362, !1321, !1363}
!1363 = !DILocation(line: 675, column: 44, scope: !1049)
!1364 = !DILocation(line: 676, column: 15, scope: !1050)
!1365 = !DILocation(line: 0, scope: !1316)
!1366 = !DILocation(line: 0, scope: !1049)
!1367 = !DILocation(line: 678, column: 40, scope: !1045)
!1368 = !DILocation(line: 680, column: 19, scope: !1079)
!1369 = !DILocation(line: 680, column: 45, scope: !1079)
!1370 = !DILocation(line: 680, column: 23, scope: !1079)
!1371 = !DILocation(line: 684, column: 33, scope: !1078)
!1372 = !DILocation(line: 684, column: 24, scope: !1078)
!1373 = !DILocation(line: 686, column: 17, scope: !1078)
!1374 = !DILocation(line: 0, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1376, file: !117, line: 687, column: 19)
!1376 = distinct !DILexicalBlock(scope: !1377, file: !117, line: 686, column: 17)
!1377 = distinct !DILexicalBlock(scope: !1078, file: !117, line: 686, column: 17)
!1378 = !DILocation(line: 0, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1375, file: !117, line: 703, column: 21)
!1380 = !DILocation(line: 0, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !117, line: 696, column: 23)
!1382 = distinct !DILexicalBlock(scope: !1383, file: !117, line: 695, column: 30)
!1383 = distinct !DILexicalBlock(scope: !1375, file: !117, line: 688, column: 25)
!1384 = !DILocation(line: 688, column: 43, scope: !1383)
!1385 = !DILocation(line: 690, column: 25, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1387, file: !117, line: 690, column: 25)
!1387 = distinct !DILexicalBlock(scope: !1383, file: !117, line: 689, column: 23)
!1388 = !DILocation(line: 690, column: 25, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1386, file: !117, line: 690, column: 25)
!1390 = !DILocation(line: 690, column: 25, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !117, line: 690, column: 25)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !117, line: 690, column: 25)
!1393 = distinct !DILexicalBlock(scope: !1389, file: !117, line: 690, column: 25)
!1394 = !DILocation(line: 690, column: 25, scope: !1392)
!1395 = !DILocation(line: 690, column: 25, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !117, line: 690, column: 25)
!1397 = distinct !DILexicalBlock(scope: !1393, file: !117, line: 690, column: 25)
!1398 = !DILocation(line: 690, column: 25, scope: !1397)
!1399 = !DILocation(line: 690, column: 25, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !117, line: 690, column: 25)
!1401 = distinct !DILexicalBlock(scope: !1393, file: !117, line: 690, column: 25)
!1402 = !DILocation(line: 690, column: 25, scope: !1401)
!1403 = !DILocation(line: 690, column: 25, scope: !1393)
!1404 = !DILocation(line: 690, column: 25, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !117, line: 690, column: 25)
!1406 = distinct !DILexicalBlock(scope: !1386, file: !117, line: 690, column: 25)
!1407 = !DILocation(line: 690, column: 25, scope: !1406)
!1408 = !DILocation(line: 691, column: 25, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !117, line: 691, column: 25)
!1410 = distinct !DILexicalBlock(scope: !1387, file: !117, line: 691, column: 25)
!1411 = !DILocation(line: 691, column: 25, scope: !1410)
!1412 = !DILocation(line: 692, column: 25, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1414, file: !117, line: 692, column: 25)
!1414 = distinct !DILexicalBlock(scope: !1387, file: !117, line: 692, column: 25)
!1415 = !DILocation(line: 692, column: 25, scope: !1414)
!1416 = !DILocation(line: 693, column: 38, scope: !1387)
!1417 = !DILocation(line: 693, column: 33, scope: !1387)
!1418 = !DILocation(line: 694, column: 23, scope: !1387)
!1419 = !DILocation(line: 695, column: 30, scope: !1382)
!1420 = !DILocation(line: 695, column: 30, scope: !1383)
!1421 = !DILocation(line: 697, column: 25, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !117, line: 697, column: 25)
!1423 = distinct !DILexicalBlock(scope: !1381, file: !117, line: 697, column: 25)
!1424 = !DILocation(line: 697, column: 25, scope: !1423)
!1425 = !DILocation(line: 699, column: 23, scope: !1381)
!1426 = !DILocation(line: 0, scope: !1414)
!1427 = !DILocation(line: 0, scope: !1387)
!1428 = !DILocation(line: 0, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1163, file: !117, line: 418, column: 9)
!1430 = !DILocation(line: 0, scope: !1386)
!1431 = !DILocation(line: 700, column: 35, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1375, file: !117, line: 700, column: 25)
!1433 = !DILocation(line: 700, column: 30, scope: !1432)
!1434 = !DILocation(line: 700, column: 25, scope: !1375)
!1435 = !DILocation(line: 702, column: 21, scope: !1436)
!1436 = distinct !DILexicalBlock(scope: !1437, file: !117, line: 702, column: 21)
!1437 = distinct !DILexicalBlock(scope: !1375, file: !117, line: 702, column: 21)
!1438 = !DILocation(line: 702, column: 21, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !117, line: 702, column: 21)
!1440 = distinct !DILexicalBlock(scope: !1441, file: !117, line: 702, column: 21)
!1441 = distinct !DILexicalBlock(scope: !1436, file: !117, line: 702, column: 21)
!1442 = !DILocation(line: 702, column: 21, scope: !1440)
!1443 = !DILocation(line: 702, column: 21, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !1445, file: !117, line: 702, column: 21)
!1445 = distinct !DILexicalBlock(scope: !1441, file: !117, line: 702, column: 21)
!1446 = !DILocation(line: 702, column: 21, scope: !1445)
!1447 = !DILocation(line: 702, column: 21, scope: !1441)
!1448 = !DILocation(line: 0, scope: !1423)
!1449 = !DILocation(line: 703, column: 21, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1379, file: !117, line: 703, column: 21)
!1451 = !DILocation(line: 703, column: 21, scope: !1379)
!1452 = !DILocation(line: 704, column: 25, scope: !1375)
!1453 = !DILocation(line: 686, column: 17, scope: !1376)
!1454 = distinct !{!1454, !1455, !1456}
!1455 = !DILocation(line: 686, column: 17, scope: !1377)
!1456 = !DILocation(line: 705, column: 19, scope: !1377)
!1457 = !DILocation(line: 0, scope: !1039)
!1458 = !DILocation(line: 416, column: 30, scope: !1163)
!1459 = !DILocation(line: 712, column: 34, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1037, file: !117, line: 712, column: 11)
!1461 = !DILocation(line: 714, column: 14, scope: !1460)
!1462 = !DILocation(line: 715, column: 14, scope: !1460)
!1463 = !DILocation(line: 715, column: 35, scope: !1460)
!1464 = !DILocation(line: 715, column: 17, scope: !1460)
!1465 = !DILocation(line: 715, column: 47, scope: !1460)
!1466 = !DILocation(line: 715, column: 65, scope: !1460)
!1467 = !DILocation(line: 716, column: 15, scope: !1460)
!1468 = !DILocation(line: 716, column: 11, scope: !1460)
!1469 = !DILocation(line: 712, column: 11, scope: !1037)
!1470 = !DILocation(line: 400, column: 10, scope: !1039)
!1471 = !DILocation(line: 0, scope: !1472)
!1472 = distinct !DILexicalBlock(scope: !1473, file: !117, line: 519, column: 13)
!1473 = distinct !DILexicalBlock(scope: !1046, file: !117, line: 518, column: 15)
!1474 = !DILocation(line: 720, column: 7, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1037, file: !117, line: 720, column: 7)
!1476 = !DILocation(line: 720, column: 7, scope: !1477)
!1477 = distinct !DILexicalBlock(scope: !1475, file: !117, line: 720, column: 7)
!1478 = !DILocation(line: 720, column: 7, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !117, line: 720, column: 7)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !117, line: 720, column: 7)
!1481 = distinct !DILexicalBlock(scope: !1477, file: !117, line: 720, column: 7)
!1482 = !DILocation(line: 720, column: 7, scope: !1480)
!1483 = !DILocation(line: 720, column: 7, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1485, file: !117, line: 720, column: 7)
!1485 = distinct !DILexicalBlock(scope: !1481, file: !117, line: 720, column: 7)
!1486 = !DILocation(line: 720, column: 7, scope: !1485)
!1487 = !DILocation(line: 720, column: 7, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !117, line: 720, column: 7)
!1489 = distinct !DILexicalBlock(scope: !1481, file: !117, line: 720, column: 7)
!1490 = !DILocation(line: 720, column: 7, scope: !1489)
!1491 = !DILocation(line: 720, column: 7, scope: !1481)
!1492 = !DILocation(line: 720, column: 7, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !117, line: 720, column: 7)
!1494 = distinct !DILexicalBlock(scope: !1475, file: !117, line: 720, column: 7)
!1495 = !DILocation(line: 720, column: 7, scope: !1494)
!1496 = !DILocation(line: 723, column: 7, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1498, file: !117, line: 723, column: 7)
!1498 = distinct !DILexicalBlock(scope: !1037, file: !117, line: 723, column: 7)
!1499 = !DILocation(line: 424, column: 9, scope: !1037)
!1500 = !DILocation(line: 723, column: 7, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !117, line: 723, column: 7)
!1502 = distinct !DILexicalBlock(scope: !1503, file: !117, line: 723, column: 7)
!1503 = distinct !DILexicalBlock(scope: !1497, file: !117, line: 723, column: 7)
!1504 = !DILocation(line: 723, column: 7, scope: !1502)
!1505 = !DILocation(line: 723, column: 7, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1507, file: !117, line: 723, column: 7)
!1507 = distinct !DILexicalBlock(scope: !1503, file: !117, line: 723, column: 7)
!1508 = !DILocation(line: 723, column: 7, scope: !1507)
!1509 = !DILocation(line: 723, column: 7, scope: !1503)
!1510 = !DILocation(line: 724, column: 7, scope: !1511)
!1511 = distinct !DILexicalBlock(scope: !1512, file: !117, line: 724, column: 7)
!1512 = distinct !DILexicalBlock(scope: !1037, file: !117, line: 724, column: 7)
!1513 = !DILocation(line: 724, column: 7, scope: !1512)
!1514 = !DILocation(line: 726, column: 13, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1037, file: !117, line: 726, column: 11)
!1516 = !DILocation(line: 726, column: 11, scope: !1037)
!1517 = !DILocation(line: 728, column: 5, scope: !1038)
!1518 = !DILocation(line: 400, column: 75, scope: !1038)
!1519 = !DILocation(line: 400, column: 3, scope: !1038)
!1520 = distinct !{!1520, !1157, !1521}
!1521 = !DILocation(line: 728, column: 5, scope: !1039)
!1522 = !DILocation(line: 730, column: 11, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1010, file: !117, line: 730, column: 7)
!1524 = !DILocation(line: 730, column: 16, scope: !1523)
!1525 = !DILocation(line: 738, column: 51, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1010, file: !117, line: 738, column: 7)
!1527 = !DILocation(line: 739, column: 10, scope: !1526)
!1528 = !DILocation(line: 741, column: 11, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !117, line: 741, column: 11)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !117, line: 740, column: 5)
!1531 = !DILocation(line: 741, column: 11, scope: !1530)
!1532 = !DILocation(line: 742, column: 16, scope: !1529)
!1533 = !DILocation(line: 742, column: 9, scope: !1529)
!1534 = !DILocation(line: 746, column: 18, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1529, file: !117, line: 746, column: 16)
!1536 = !DILocation(line: 746, column: 32, scope: !1535)
!1537 = !DILocation(line: 746, column: 29, scope: !1535)
!1538 = !DILocation(line: 755, column: 7, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1010, file: !117, line: 755, column: 7)
!1540 = !DILocation(line: 755, column: 20, scope: !1539)
!1541 = !DILocation(line: 756, column: 12, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !117, line: 756, column: 5)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !117, line: 756, column: 5)
!1544 = !DILocation(line: 756, column: 5, scope: !1543)
!1545 = !DILocation(line: 757, column: 7, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !117, line: 757, column: 7)
!1547 = distinct !DILexicalBlock(scope: !1542, file: !117, line: 757, column: 7)
!1548 = !DILocation(line: 757, column: 7, scope: !1547)
!1549 = !DILocation(line: 756, column: 39, scope: !1542)
!1550 = distinct !{!1550, !1544, !1551}
!1551 = !DILocation(line: 757, column: 7, scope: !1543)
!1552 = !DILocation(line: 759, column: 11, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1010, file: !117, line: 759, column: 7)
!1554 = !DILocation(line: 759, column: 7, scope: !1010)
!1555 = !DILocation(line: 760, column: 5, scope: !1553)
!1556 = !DILocation(line: 760, column: 17, scope: !1553)
!1557 = !DILocation(line: 766, column: 21, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1010, file: !117, line: 766, column: 7)
!1559 = !DILocation(line: 766, column: 54, scope: !1558)
!1560 = !DILocation(line: 766, column: 51, scope: !1558)
!1561 = !DILocation(line: 770, column: 42, scope: !1010)
!1562 = !DILocation(line: 768, column: 10, scope: !1010)
!1563 = !DILocation(line: 768, column: 3, scope: !1010)
!1564 = !DILocation(line: 772, column: 1, scope: !1010)
!1565 = distinct !DISubprogram(name: "gettext_quote", scope: !117, file: !117, line: 207, type: !1566, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1568)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{!6, !6, !74}
!1568 = !{!1569, !1570, !1571, !1572}
!1569 = !DILocalVariable(name: "msgid", arg: 1, scope: !1565, file: !117, line: 207, type: !6)
!1570 = !DILocalVariable(name: "s", arg: 2, scope: !1565, file: !117, line: 207, type: !74)
!1571 = !DILocalVariable(name: "translation", scope: !1565, file: !117, line: 209, type: !6)
!1572 = !DILocalVariable(name: "locale_code", scope: !1565, file: !117, line: 210, type: !6)
!1573 = !DILocation(line: 207, column: 28, scope: !1565)
!1574 = !DILocation(line: 207, column: 54, scope: !1565)
!1575 = !DILocation(line: 209, column: 29, scope: !1565)
!1576 = !DILocation(line: 209, column: 15, scope: !1565)
!1577 = !DILocation(line: 212, column: 19, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1565, file: !117, line: 212, column: 7)
!1579 = !DILocation(line: 212, column: 7, scope: !1565)
!1580 = !DILocation(line: 233, column: 17, scope: !1565)
!1581 = !DILocation(line: 210, column: 15, scope: !1565)
!1582 = !DILocalVariable(name: "s1", arg: 1, scope: !1583, file: !1584, line: 160, type: !6)
!1583 = distinct !DISubprogram(name: "strcaseeq0", scope: !1584, file: !1584, line: 160, type: !1585, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1587)
!1584 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1585 = !DISubroutineType(types: !1586)
!1586 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8, !8}
!1587 = !{!1582, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597}
!1588 = !DILocalVariable(name: "s2", arg: 2, scope: !1583, file: !1584, line: 160, type: !6)
!1589 = !DILocalVariable(name: "s20", arg: 3, scope: !1583, file: !1584, line: 160, type: !8)
!1590 = !DILocalVariable(name: "s21", arg: 4, scope: !1583, file: !1584, line: 160, type: !8)
!1591 = !DILocalVariable(name: "s22", arg: 5, scope: !1583, file: !1584, line: 160, type: !8)
!1592 = !DILocalVariable(name: "s23", arg: 6, scope: !1583, file: !1584, line: 160, type: !8)
!1593 = !DILocalVariable(name: "s24", arg: 7, scope: !1583, file: !1584, line: 160, type: !8)
!1594 = !DILocalVariable(name: "s25", arg: 8, scope: !1583, file: !1584, line: 160, type: !8)
!1595 = !DILocalVariable(name: "s26", arg: 9, scope: !1583, file: !1584, line: 160, type: !8)
!1596 = !DILocalVariable(name: "s27", arg: 10, scope: !1583, file: !1584, line: 160, type: !8)
!1597 = !DILocalVariable(name: "s28", arg: 11, scope: !1583, file: !1584, line: 160, type: !8)
!1598 = !DILocation(line: 160, column: 25, scope: !1583, inlinedAt: !1599)
!1599 = distinct !DILocation(line: 234, column: 7, scope: !1600)
!1600 = distinct !DILexicalBlock(scope: !1565, file: !117, line: 234, column: 7)
!1601 = !DILocation(line: 160, column: 41, scope: !1583, inlinedAt: !1599)
!1602 = !DILocation(line: 160, column: 50, scope: !1583, inlinedAt: !1599)
!1603 = !DILocation(line: 160, column: 60, scope: !1583, inlinedAt: !1599)
!1604 = !DILocation(line: 160, column: 70, scope: !1583, inlinedAt: !1599)
!1605 = !DILocation(line: 160, column: 80, scope: !1583, inlinedAt: !1599)
!1606 = !DILocation(line: 160, column: 90, scope: !1583, inlinedAt: !1599)
!1607 = !DILocation(line: 160, column: 100, scope: !1583, inlinedAt: !1599)
!1608 = !DILocation(line: 160, column: 110, scope: !1583, inlinedAt: !1599)
!1609 = !DILocation(line: 160, column: 120, scope: !1583, inlinedAt: !1599)
!1610 = !DILocation(line: 160, column: 130, scope: !1583, inlinedAt: !1599)
!1611 = !DILocation(line: 162, column: 7, scope: !1612, inlinedAt: !1599)
!1612 = distinct !DILexicalBlock(scope: !1583, file: !1584, line: 162, column: 7)
!1613 = !DILocalVariable(name: "s1", arg: 1, scope: !1614, file: !1584, line: 146, type: !6)
!1614 = distinct !DISubprogram(name: "strcaseeq1", scope: !1584, file: !1584, line: 146, type: !1615, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1617)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8, !8}
!1617 = !{!1613, !1618, !1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626}
!1618 = !DILocalVariable(name: "s2", arg: 2, scope: !1614, file: !1584, line: 146, type: !6)
!1619 = !DILocalVariable(name: "s21", arg: 3, scope: !1614, file: !1584, line: 146, type: !8)
!1620 = !DILocalVariable(name: "s22", arg: 4, scope: !1614, file: !1584, line: 146, type: !8)
!1621 = !DILocalVariable(name: "s23", arg: 5, scope: !1614, file: !1584, line: 146, type: !8)
!1622 = !DILocalVariable(name: "s24", arg: 6, scope: !1614, file: !1584, line: 146, type: !8)
!1623 = !DILocalVariable(name: "s25", arg: 7, scope: !1614, file: !1584, line: 146, type: !8)
!1624 = !DILocalVariable(name: "s26", arg: 8, scope: !1614, file: !1584, line: 146, type: !8)
!1625 = !DILocalVariable(name: "s27", arg: 9, scope: !1614, file: !1584, line: 146, type: !8)
!1626 = !DILocalVariable(name: "s28", arg: 10, scope: !1614, file: !1584, line: 146, type: !8)
!1627 = !DILocation(line: 146, column: 25, scope: !1614, inlinedAt: !1628)
!1628 = distinct !DILocation(line: 167, column: 16, scope: !1629, inlinedAt: !1599)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !1584, line: 164, column: 11)
!1630 = distinct !DILexicalBlock(scope: !1612, file: !1584, line: 163, column: 5)
!1631 = !DILocation(line: 146, column: 41, scope: !1614, inlinedAt: !1628)
!1632 = !DILocation(line: 146, column: 50, scope: !1614, inlinedAt: !1628)
!1633 = !DILocation(line: 146, column: 60, scope: !1614, inlinedAt: !1628)
!1634 = !DILocation(line: 146, column: 70, scope: !1614, inlinedAt: !1628)
!1635 = !DILocation(line: 146, column: 80, scope: !1614, inlinedAt: !1628)
!1636 = !DILocation(line: 146, column: 90, scope: !1614, inlinedAt: !1628)
!1637 = !DILocation(line: 146, column: 100, scope: !1614, inlinedAt: !1628)
!1638 = !DILocation(line: 146, column: 110, scope: !1614, inlinedAt: !1628)
!1639 = !DILocation(line: 146, column: 120, scope: !1614, inlinedAt: !1628)
!1640 = !DILocation(line: 148, column: 7, scope: !1641, inlinedAt: !1628)
!1641 = distinct !DILexicalBlock(scope: !1614, file: !1584, line: 148, column: 7)
!1642 = !DILocalVariable(name: "s1", arg: 1, scope: !1643, file: !1584, line: 132, type: !6)
!1643 = distinct !DISubprogram(name: "strcaseeq2", scope: !1584, file: !1584, line: 132, type: !1644, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1646)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8, !8}
!1646 = !{!1642, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654}
!1647 = !DILocalVariable(name: "s2", arg: 2, scope: !1643, file: !1584, line: 132, type: !6)
!1648 = !DILocalVariable(name: "s22", arg: 3, scope: !1643, file: !1584, line: 132, type: !8)
!1649 = !DILocalVariable(name: "s23", arg: 4, scope: !1643, file: !1584, line: 132, type: !8)
!1650 = !DILocalVariable(name: "s24", arg: 5, scope: !1643, file: !1584, line: 132, type: !8)
!1651 = !DILocalVariable(name: "s25", arg: 6, scope: !1643, file: !1584, line: 132, type: !8)
!1652 = !DILocalVariable(name: "s26", arg: 7, scope: !1643, file: !1584, line: 132, type: !8)
!1653 = !DILocalVariable(name: "s27", arg: 8, scope: !1643, file: !1584, line: 132, type: !8)
!1654 = !DILocalVariable(name: "s28", arg: 9, scope: !1643, file: !1584, line: 132, type: !8)
!1655 = !DILocation(line: 132, column: 25, scope: !1643, inlinedAt: !1656)
!1656 = distinct !DILocation(line: 153, column: 16, scope: !1657, inlinedAt: !1628)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !1584, line: 150, column: 11)
!1658 = distinct !DILexicalBlock(scope: !1641, file: !1584, line: 149, column: 5)
!1659 = !DILocation(line: 132, column: 41, scope: !1643, inlinedAt: !1656)
!1660 = !DILocation(line: 132, column: 50, scope: !1643, inlinedAt: !1656)
!1661 = !DILocation(line: 132, column: 60, scope: !1643, inlinedAt: !1656)
!1662 = !DILocation(line: 132, column: 70, scope: !1643, inlinedAt: !1656)
!1663 = !DILocation(line: 132, column: 80, scope: !1643, inlinedAt: !1656)
!1664 = !DILocation(line: 132, column: 90, scope: !1643, inlinedAt: !1656)
!1665 = !DILocation(line: 132, column: 100, scope: !1643, inlinedAt: !1656)
!1666 = !DILocation(line: 132, column: 110, scope: !1643, inlinedAt: !1656)
!1667 = !DILocation(line: 134, column: 7, scope: !1668, inlinedAt: !1656)
!1668 = distinct !DILexicalBlock(scope: !1643, file: !1584, line: 134, column: 7)
!1669 = !DILocalVariable(name: "s1", arg: 1, scope: !1670, file: !1584, line: 118, type: !6)
!1670 = distinct !DISubprogram(name: "strcaseeq3", scope: !1584, file: !1584, line: 118, type: !1671, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1673)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!18, !6, !6, !8, !8, !8, !8, !8, !8}
!1673 = !{!1669, !1674, !1675, !1676, !1677, !1678, !1679, !1680}
!1674 = !DILocalVariable(name: "s2", arg: 2, scope: !1670, file: !1584, line: 118, type: !6)
!1675 = !DILocalVariable(name: "s23", arg: 3, scope: !1670, file: !1584, line: 118, type: !8)
!1676 = !DILocalVariable(name: "s24", arg: 4, scope: !1670, file: !1584, line: 118, type: !8)
!1677 = !DILocalVariable(name: "s25", arg: 5, scope: !1670, file: !1584, line: 118, type: !8)
!1678 = !DILocalVariable(name: "s26", arg: 6, scope: !1670, file: !1584, line: 118, type: !8)
!1679 = !DILocalVariable(name: "s27", arg: 7, scope: !1670, file: !1584, line: 118, type: !8)
!1680 = !DILocalVariable(name: "s28", arg: 8, scope: !1670, file: !1584, line: 118, type: !8)
!1681 = !DILocation(line: 118, column: 25, scope: !1670, inlinedAt: !1682)
!1682 = distinct !DILocation(line: 139, column: 16, scope: !1683, inlinedAt: !1656)
!1683 = distinct !DILexicalBlock(scope: !1684, file: !1584, line: 136, column: 11)
!1684 = distinct !DILexicalBlock(scope: !1668, file: !1584, line: 135, column: 5)
!1685 = !DILocation(line: 118, column: 41, scope: !1670, inlinedAt: !1682)
!1686 = !DILocation(line: 118, column: 50, scope: !1670, inlinedAt: !1682)
!1687 = !DILocation(line: 118, column: 60, scope: !1670, inlinedAt: !1682)
!1688 = !DILocation(line: 118, column: 70, scope: !1670, inlinedAt: !1682)
!1689 = !DILocation(line: 118, column: 80, scope: !1670, inlinedAt: !1682)
!1690 = !DILocation(line: 118, column: 90, scope: !1670, inlinedAt: !1682)
!1691 = !DILocation(line: 118, column: 100, scope: !1670, inlinedAt: !1682)
!1692 = !DILocation(line: 120, column: 7, scope: !1693, inlinedAt: !1682)
!1693 = distinct !DILexicalBlock(scope: !1670, file: !1584, line: 120, column: 7)
!1694 = !DILocation(line: 120, column: 7, scope: !1670, inlinedAt: !1682)
!1695 = !DILocalVariable(name: "s1", arg: 1, scope: !1696, file: !1584, line: 104, type: !6)
!1696 = distinct !DISubprogram(name: "strcaseeq4", scope: !1584, file: !1584, line: 104, type: !1697, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1699)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!18, !6, !6, !8, !8, !8, !8, !8}
!1699 = !{!1695, !1700, !1701, !1702, !1703, !1704, !1705}
!1700 = !DILocalVariable(name: "s2", arg: 2, scope: !1696, file: !1584, line: 104, type: !6)
!1701 = !DILocalVariable(name: "s24", arg: 3, scope: !1696, file: !1584, line: 104, type: !8)
!1702 = !DILocalVariable(name: "s25", arg: 4, scope: !1696, file: !1584, line: 104, type: !8)
!1703 = !DILocalVariable(name: "s26", arg: 5, scope: !1696, file: !1584, line: 104, type: !8)
!1704 = !DILocalVariable(name: "s27", arg: 6, scope: !1696, file: !1584, line: 104, type: !8)
!1705 = !DILocalVariable(name: "s28", arg: 7, scope: !1696, file: !1584, line: 104, type: !8)
!1706 = !DILocation(line: 104, column: 25, scope: !1696, inlinedAt: !1707)
!1707 = distinct !DILocation(line: 125, column: 16, scope: !1708, inlinedAt: !1682)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !1584, line: 122, column: 11)
!1709 = distinct !DILexicalBlock(scope: !1693, file: !1584, line: 121, column: 5)
!1710 = !DILocation(line: 104, column: 41, scope: !1696, inlinedAt: !1707)
!1711 = !DILocation(line: 104, column: 50, scope: !1696, inlinedAt: !1707)
!1712 = !DILocation(line: 104, column: 60, scope: !1696, inlinedAt: !1707)
!1713 = !DILocation(line: 104, column: 70, scope: !1696, inlinedAt: !1707)
!1714 = !DILocation(line: 104, column: 80, scope: !1696, inlinedAt: !1707)
!1715 = !DILocation(line: 104, column: 90, scope: !1696, inlinedAt: !1707)
!1716 = !DILocation(line: 106, column: 7, scope: !1717, inlinedAt: !1707)
!1717 = distinct !DILexicalBlock(scope: !1696, file: !1584, line: 106, column: 7)
!1718 = !DILocation(line: 106, column: 7, scope: !1696, inlinedAt: !1707)
!1719 = !DILocalVariable(name: "s1", arg: 1, scope: !1720, file: !1584, line: 90, type: !6)
!1720 = distinct !DISubprogram(name: "strcaseeq5", scope: !1584, file: !1584, line: 90, type: !1721, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1723)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!18, !6, !6, !8, !8, !8, !8}
!1723 = !{!1719, !1724, !1725, !1726, !1727, !1728}
!1724 = !DILocalVariable(name: "s2", arg: 2, scope: !1720, file: !1584, line: 90, type: !6)
!1725 = !DILocalVariable(name: "s25", arg: 3, scope: !1720, file: !1584, line: 90, type: !8)
!1726 = !DILocalVariable(name: "s26", arg: 4, scope: !1720, file: !1584, line: 90, type: !8)
!1727 = !DILocalVariable(name: "s27", arg: 5, scope: !1720, file: !1584, line: 90, type: !8)
!1728 = !DILocalVariable(name: "s28", arg: 6, scope: !1720, file: !1584, line: 90, type: !8)
!1729 = !DILocation(line: 90, column: 25, scope: !1720, inlinedAt: !1730)
!1730 = distinct !DILocation(line: 111, column: 16, scope: !1731, inlinedAt: !1707)
!1731 = distinct !DILexicalBlock(scope: !1732, file: !1584, line: 108, column: 11)
!1732 = distinct !DILexicalBlock(scope: !1717, file: !1584, line: 107, column: 5)
!1733 = !DILocation(line: 90, column: 41, scope: !1720, inlinedAt: !1730)
!1734 = !DILocation(line: 90, column: 50, scope: !1720, inlinedAt: !1730)
!1735 = !DILocation(line: 90, column: 60, scope: !1720, inlinedAt: !1730)
!1736 = !DILocation(line: 90, column: 70, scope: !1720, inlinedAt: !1730)
!1737 = !DILocation(line: 90, column: 80, scope: !1720, inlinedAt: !1730)
!1738 = !DILocation(line: 92, column: 7, scope: !1739, inlinedAt: !1730)
!1739 = distinct !DILexicalBlock(scope: !1720, file: !1584, line: 92, column: 7)
!1740 = !DILocation(line: 92, column: 7, scope: !1720, inlinedAt: !1730)
!1741 = !DILocation(line: 235, column: 12, scope: !1600)
!1742 = !DILocation(line: 235, column: 21, scope: !1600)
!1743 = !DILocation(line: 235, column: 5, scope: !1600)
!1744 = !DILocation(line: 146, column: 25, scope: !1614, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 167, column: 16, scope: !1629, inlinedAt: !1746)
!1746 = distinct !DILocation(line: 236, column: 7, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1565, file: !117, line: 236, column: 7)
!1748 = !DILocation(line: 146, column: 41, scope: !1614, inlinedAt: !1745)
!1749 = !DILocation(line: 146, column: 50, scope: !1614, inlinedAt: !1745)
!1750 = !DILocation(line: 146, column: 60, scope: !1614, inlinedAt: !1745)
!1751 = !DILocation(line: 146, column: 70, scope: !1614, inlinedAt: !1745)
!1752 = !DILocation(line: 146, column: 80, scope: !1614, inlinedAt: !1745)
!1753 = !DILocation(line: 146, column: 90, scope: !1614, inlinedAt: !1745)
!1754 = !DILocation(line: 146, column: 100, scope: !1614, inlinedAt: !1745)
!1755 = !DILocation(line: 146, column: 110, scope: !1614, inlinedAt: !1745)
!1756 = !DILocation(line: 146, column: 120, scope: !1614, inlinedAt: !1745)
!1757 = !DILocation(line: 148, column: 7, scope: !1641, inlinedAt: !1745)
!1758 = !DILocation(line: 132, column: 25, scope: !1643, inlinedAt: !1759)
!1759 = distinct !DILocation(line: 153, column: 16, scope: !1657, inlinedAt: !1745)
!1760 = !DILocation(line: 132, column: 41, scope: !1643, inlinedAt: !1759)
!1761 = !DILocation(line: 132, column: 50, scope: !1643, inlinedAt: !1759)
!1762 = !DILocation(line: 132, column: 60, scope: !1643, inlinedAt: !1759)
!1763 = !DILocation(line: 132, column: 70, scope: !1643, inlinedAt: !1759)
!1764 = !DILocation(line: 132, column: 80, scope: !1643, inlinedAt: !1759)
!1765 = !DILocation(line: 132, column: 90, scope: !1643, inlinedAt: !1759)
!1766 = !DILocation(line: 132, column: 100, scope: !1643, inlinedAt: !1759)
!1767 = !DILocation(line: 132, column: 110, scope: !1643, inlinedAt: !1759)
!1768 = !DILocation(line: 134, column: 7, scope: !1668, inlinedAt: !1759)
!1769 = !DILocation(line: 134, column: 7, scope: !1643, inlinedAt: !1759)
!1770 = !DILocation(line: 118, column: 25, scope: !1670, inlinedAt: !1771)
!1771 = distinct !DILocation(line: 139, column: 16, scope: !1683, inlinedAt: !1759)
!1772 = !DILocation(line: 118, column: 41, scope: !1670, inlinedAt: !1771)
!1773 = !DILocation(line: 118, column: 50, scope: !1670, inlinedAt: !1771)
!1774 = !DILocation(line: 118, column: 60, scope: !1670, inlinedAt: !1771)
!1775 = !DILocation(line: 118, column: 70, scope: !1670, inlinedAt: !1771)
!1776 = !DILocation(line: 118, column: 80, scope: !1670, inlinedAt: !1771)
!1777 = !DILocation(line: 118, column: 90, scope: !1670, inlinedAt: !1771)
!1778 = !DILocation(line: 118, column: 100, scope: !1670, inlinedAt: !1771)
!1779 = !DILocation(line: 120, column: 7, scope: !1693, inlinedAt: !1771)
!1780 = !DILocation(line: 120, column: 7, scope: !1670, inlinedAt: !1771)
!1781 = !DILocation(line: 104, column: 25, scope: !1696, inlinedAt: !1782)
!1782 = distinct !DILocation(line: 125, column: 16, scope: !1708, inlinedAt: !1771)
!1783 = !DILocation(line: 104, column: 41, scope: !1696, inlinedAt: !1782)
!1784 = !DILocation(line: 104, column: 50, scope: !1696, inlinedAt: !1782)
!1785 = !DILocation(line: 104, column: 60, scope: !1696, inlinedAt: !1782)
!1786 = !DILocation(line: 104, column: 70, scope: !1696, inlinedAt: !1782)
!1787 = !DILocation(line: 104, column: 80, scope: !1696, inlinedAt: !1782)
!1788 = !DILocation(line: 104, column: 90, scope: !1696, inlinedAt: !1782)
!1789 = !DILocation(line: 106, column: 7, scope: !1717, inlinedAt: !1782)
!1790 = !DILocation(line: 106, column: 7, scope: !1696, inlinedAt: !1782)
!1791 = !DILocation(line: 90, column: 25, scope: !1720, inlinedAt: !1792)
!1792 = distinct !DILocation(line: 111, column: 16, scope: !1731, inlinedAt: !1782)
!1793 = !DILocation(line: 90, column: 41, scope: !1720, inlinedAt: !1792)
!1794 = !DILocation(line: 90, column: 50, scope: !1720, inlinedAt: !1792)
!1795 = !DILocation(line: 90, column: 60, scope: !1720, inlinedAt: !1792)
!1796 = !DILocation(line: 90, column: 70, scope: !1720, inlinedAt: !1792)
!1797 = !DILocation(line: 90, column: 80, scope: !1720, inlinedAt: !1792)
!1798 = !DILocation(line: 92, column: 7, scope: !1739, inlinedAt: !1792)
!1799 = !DILocation(line: 92, column: 7, scope: !1720, inlinedAt: !1792)
!1800 = !DILocalVariable(name: "s1", arg: 1, scope: !1801, file: !1584, line: 76, type: !6)
!1801 = distinct !DISubprogram(name: "strcaseeq6", scope: !1584, file: !1584, line: 76, type: !1802, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1804)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!18, !6, !6, !8, !8, !8}
!1804 = !{!1800, !1805, !1806, !1807, !1808}
!1805 = !DILocalVariable(name: "s2", arg: 2, scope: !1801, file: !1584, line: 76, type: !6)
!1806 = !DILocalVariable(name: "s26", arg: 3, scope: !1801, file: !1584, line: 76, type: !8)
!1807 = !DILocalVariable(name: "s27", arg: 4, scope: !1801, file: !1584, line: 76, type: !8)
!1808 = !DILocalVariable(name: "s28", arg: 5, scope: !1801, file: !1584, line: 76, type: !8)
!1809 = !DILocation(line: 76, column: 25, scope: !1801, inlinedAt: !1810)
!1810 = distinct !DILocation(line: 97, column: 16, scope: !1811, inlinedAt: !1792)
!1811 = distinct !DILexicalBlock(scope: !1812, file: !1584, line: 94, column: 11)
!1812 = distinct !DILexicalBlock(scope: !1739, file: !1584, line: 93, column: 5)
!1813 = !DILocation(line: 76, column: 41, scope: !1801, inlinedAt: !1810)
!1814 = !DILocation(line: 76, column: 50, scope: !1801, inlinedAt: !1810)
!1815 = !DILocation(line: 76, column: 60, scope: !1801, inlinedAt: !1810)
!1816 = !DILocation(line: 76, column: 70, scope: !1801, inlinedAt: !1810)
!1817 = !DILocation(line: 78, column: 7, scope: !1818, inlinedAt: !1810)
!1818 = distinct !DILexicalBlock(scope: !1801, file: !1584, line: 78, column: 7)
!1819 = !DILocation(line: 78, column: 7, scope: !1801, inlinedAt: !1810)
!1820 = !DILocalVariable(name: "s1", arg: 1, scope: !1821, file: !1584, line: 62, type: !6)
!1821 = distinct !DISubprogram(name: "strcaseeq7", scope: !1584, file: !1584, line: 62, type: !1822, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1824)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!18, !6, !6, !8, !8}
!1824 = !{!1820, !1825, !1826, !1827}
!1825 = !DILocalVariable(name: "s2", arg: 2, scope: !1821, file: !1584, line: 62, type: !6)
!1826 = !DILocalVariable(name: "s27", arg: 3, scope: !1821, file: !1584, line: 62, type: !8)
!1827 = !DILocalVariable(name: "s28", arg: 4, scope: !1821, file: !1584, line: 62, type: !8)
!1828 = !DILocation(line: 62, column: 25, scope: !1821, inlinedAt: !1829)
!1829 = distinct !DILocation(line: 83, column: 16, scope: !1830, inlinedAt: !1810)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !1584, line: 80, column: 11)
!1831 = distinct !DILexicalBlock(scope: !1818, file: !1584, line: 79, column: 5)
!1832 = !DILocation(line: 62, column: 41, scope: !1821, inlinedAt: !1829)
!1833 = !DILocation(line: 62, column: 50, scope: !1821, inlinedAt: !1829)
!1834 = !DILocation(line: 62, column: 60, scope: !1821, inlinedAt: !1829)
!1835 = !DILocation(line: 64, column: 7, scope: !1836, inlinedAt: !1829)
!1836 = distinct !DILexicalBlock(scope: !1821, file: !1584, line: 64, column: 7)
!1837 = !DILocation(line: 236, column: 7, scope: !1565)
!1838 = !DILocation(line: 237, column: 12, scope: !1747)
!1839 = !DILocation(line: 237, column: 21, scope: !1747)
!1840 = !DILocation(line: 237, column: 5, scope: !1747)
!1841 = !DILocation(line: 239, column: 13, scope: !1565)
!1842 = !DILocation(line: 239, column: 11, scope: !1565)
!1843 = !DILocation(line: 239, column: 3, scope: !1565)
!1844 = !DILocation(line: 0, scope: !1565)
!1845 = !DILocation(line: 240, column: 1, scope: !1565)
!1846 = distinct !DISubprogram(name: "quotearg_alloc", scope: !117, file: !117, line: 799, type: !1847, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1849)
!1847 = !DISubroutineType(types: !1848)
!1848 = !{!66, !6, !111, !882}
!1849 = !{!1850, !1851, !1852}
!1850 = !DILocalVariable(name: "arg", arg: 1, scope: !1846, file: !117, line: 799, type: !6)
!1851 = !DILocalVariable(name: "argsize", arg: 2, scope: !1846, file: !117, line: 799, type: !111)
!1852 = !DILocalVariable(name: "o", arg: 3, scope: !1846, file: !117, line: 800, type: !882)
!1853 = !DILocation(line: 799, column: 29, scope: !1846)
!1854 = !DILocation(line: 799, column: 41, scope: !1846)
!1855 = !DILocation(line: 800, column: 47, scope: !1846)
!1856 = !DILocalVariable(name: "arg", arg: 1, scope: !1857, file: !117, line: 812, type: !6)
!1857 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !117, file: !117, line: 812, type: !1858, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1860)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!66, !6, !111, !181, !882}
!1860 = !{!1856, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868}
!1861 = !DILocalVariable(name: "argsize", arg: 2, scope: !1857, file: !117, line: 812, type: !111)
!1862 = !DILocalVariable(name: "size", arg: 3, scope: !1857, file: !117, line: 812, type: !181)
!1863 = !DILocalVariable(name: "o", arg: 4, scope: !1857, file: !117, line: 813, type: !882)
!1864 = !DILocalVariable(name: "p", scope: !1857, file: !117, line: 815, type: !882)
!1865 = !DILocalVariable(name: "e", scope: !1857, file: !117, line: 816, type: !18)
!1866 = !DILocalVariable(name: "flags", scope: !1857, file: !117, line: 818, type: !18)
!1867 = !DILocalVariable(name: "bufsize", scope: !1857, file: !117, line: 819, type: !111)
!1868 = !DILocalVariable(name: "buf", scope: !1857, file: !117, line: 823, type: !66)
!1869 = !DILocation(line: 812, column: 33, scope: !1857, inlinedAt: !1870)
!1870 = distinct !DILocation(line: 802, column: 10, scope: !1846)
!1871 = !DILocation(line: 812, column: 45, scope: !1857, inlinedAt: !1870)
!1872 = !DILocation(line: 812, column: 62, scope: !1857, inlinedAt: !1870)
!1873 = !DILocation(line: 813, column: 51, scope: !1857, inlinedAt: !1870)
!1874 = !DILocation(line: 815, column: 37, scope: !1857, inlinedAt: !1870)
!1875 = !DILocation(line: 815, column: 33, scope: !1857, inlinedAt: !1870)
!1876 = !DILocation(line: 816, column: 11, scope: !1857, inlinedAt: !1870)
!1877 = !DILocation(line: 816, column: 7, scope: !1857, inlinedAt: !1870)
!1878 = !DILocation(line: 818, column: 18, scope: !1857, inlinedAt: !1870)
!1879 = !DILocation(line: 818, column: 24, scope: !1857, inlinedAt: !1870)
!1880 = !DILocation(line: 818, column: 7, scope: !1857, inlinedAt: !1870)
!1881 = !DILocation(line: 819, column: 69, scope: !1857, inlinedAt: !1870)
!1882 = !DILocation(line: 820, column: 53, scope: !1857, inlinedAt: !1870)
!1883 = !DILocation(line: 821, column: 49, scope: !1857, inlinedAt: !1870)
!1884 = !DILocation(line: 822, column: 49, scope: !1857, inlinedAt: !1870)
!1885 = !DILocation(line: 819, column: 20, scope: !1857, inlinedAt: !1870)
!1886 = !DILocation(line: 822, column: 62, scope: !1857, inlinedAt: !1870)
!1887 = !DILocation(line: 819, column: 10, scope: !1857, inlinedAt: !1870)
!1888 = !DILocalVariable(name: "n", arg: 1, scope: !1889, file: !177, line: 216, type: !111)
!1889 = distinct !DISubprogram(name: "xcharalloc", scope: !177, file: !177, line: 216, type: !1890, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1892)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!66, !111}
!1892 = !{!1888}
!1893 = !DILocation(line: 216, column: 20, scope: !1889, inlinedAt: !1894)
!1894 = distinct !DILocation(line: 823, column: 15, scope: !1857, inlinedAt: !1870)
!1895 = !DILocation(line: 218, column: 10, scope: !1889, inlinedAt: !1894)
!1896 = !DILocation(line: 823, column: 9, scope: !1857, inlinedAt: !1870)
!1897 = !DILocation(line: 824, column: 60, scope: !1857, inlinedAt: !1870)
!1898 = !DILocation(line: 826, column: 32, scope: !1857, inlinedAt: !1870)
!1899 = !DILocation(line: 826, column: 47, scope: !1857, inlinedAt: !1870)
!1900 = !DILocation(line: 824, column: 3, scope: !1857, inlinedAt: !1870)
!1901 = !DILocation(line: 827, column: 9, scope: !1857, inlinedAt: !1870)
!1902 = !DILocation(line: 802, column: 3, scope: !1846)
!1903 = !DILocation(line: 812, column: 33, scope: !1857)
!1904 = !DILocation(line: 812, column: 45, scope: !1857)
!1905 = !DILocation(line: 812, column: 62, scope: !1857)
!1906 = !DILocation(line: 813, column: 51, scope: !1857)
!1907 = !DILocation(line: 815, column: 37, scope: !1857)
!1908 = !DILocation(line: 815, column: 33, scope: !1857)
!1909 = !DILocation(line: 816, column: 11, scope: !1857)
!1910 = !DILocation(line: 816, column: 7, scope: !1857)
!1911 = !DILocation(line: 818, column: 18, scope: !1857)
!1912 = !DILocation(line: 818, column: 27, scope: !1857)
!1913 = !DILocation(line: 818, column: 24, scope: !1857)
!1914 = !DILocation(line: 818, column: 7, scope: !1857)
!1915 = !DILocation(line: 819, column: 69, scope: !1857)
!1916 = !DILocation(line: 820, column: 53, scope: !1857)
!1917 = !DILocation(line: 821, column: 49, scope: !1857)
!1918 = !DILocation(line: 822, column: 49, scope: !1857)
!1919 = !DILocation(line: 819, column: 20, scope: !1857)
!1920 = !DILocation(line: 822, column: 62, scope: !1857)
!1921 = !DILocation(line: 819, column: 10, scope: !1857)
!1922 = !DILocation(line: 216, column: 20, scope: !1889, inlinedAt: !1923)
!1923 = distinct !DILocation(line: 823, column: 15, scope: !1857)
!1924 = !DILocation(line: 218, column: 10, scope: !1889, inlinedAt: !1923)
!1925 = !DILocation(line: 823, column: 9, scope: !1857)
!1926 = !DILocation(line: 824, column: 60, scope: !1857)
!1927 = !DILocation(line: 826, column: 32, scope: !1857)
!1928 = !DILocation(line: 826, column: 47, scope: !1857)
!1929 = !DILocation(line: 824, column: 3, scope: !1857)
!1930 = !DILocation(line: 827, column: 9, scope: !1857)
!1931 = !DILocation(line: 828, column: 7, scope: !1857)
!1932 = !DILocation(line: 829, column: 11, scope: !1933)
!1933 = distinct !DILexicalBlock(scope: !1857, file: !117, line: 828, column: 7)
!1934 = !{!1935, !1935, i64 0}
!1935 = !{!"long", !637, i64 0}
!1936 = !DILocation(line: 829, column: 5, scope: !1933)
!1937 = !DILocation(line: 830, column: 3, scope: !1857)
!1938 = distinct !DISubprogram(name: "quotearg_free", scope: !117, file: !117, line: 848, type: !734, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1939)
!1939 = !{!1940, !1941}
!1940 = !DILocalVariable(name: "sv", scope: !1938, file: !117, line: 850, type: !143)
!1941 = !DILocalVariable(name: "i", scope: !1938, file: !117, line: 851, type: !18)
!1942 = !DILocation(line: 850, column: 24, scope: !1938)
!1943 = !DILocation(line: 850, column: 19, scope: !1938)
!1944 = !DILocation(line: 851, column: 7, scope: !1938)
!1945 = !DILocation(line: 852, column: 19, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !117, line: 852, column: 3)
!1947 = distinct !DILexicalBlock(scope: !1938, file: !117, line: 852, column: 3)
!1948 = !DILocation(line: 852, column: 17, scope: !1946)
!1949 = !DILocation(line: 852, column: 3, scope: !1947)
!1950 = !DILocation(line: 853, column: 17, scope: !1946)
!1951 = !{!1952, !636, i64 8}
!1952 = !{!"slotvec", !1935, i64 0, !636, i64 8}
!1953 = !DILocation(line: 853, column: 5, scope: !1946)
!1954 = !DILocation(line: 852, column: 28, scope: !1946)
!1955 = distinct !{!1955, !1949, !1956}
!1956 = !DILocation(line: 853, column: 20, scope: !1947)
!1957 = !DILocation(line: 854, column: 13, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1938, file: !117, line: 854, column: 7)
!1959 = !DILocation(line: 854, column: 17, scope: !1958)
!1960 = !DILocation(line: 854, column: 7, scope: !1938)
!1961 = !DILocation(line: 856, column: 7, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1958, file: !117, line: 855, column: 5)
!1963 = !DILocation(line: 857, column: 21, scope: !1962)
!1964 = !{!1952, !1935, i64 0}
!1965 = !DILocation(line: 858, column: 20, scope: !1962)
!1966 = !DILocation(line: 859, column: 5, scope: !1962)
!1967 = !DILocation(line: 860, column: 10, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1938, file: !117, line: 860, column: 7)
!1969 = !DILocation(line: 860, column: 7, scope: !1938)
!1970 = !DILocation(line: 862, column: 13, scope: !1971)
!1971 = distinct !DILexicalBlock(scope: !1968, file: !117, line: 861, column: 5)
!1972 = !DILocation(line: 862, column: 7, scope: !1971)
!1973 = !DILocation(line: 863, column: 15, scope: !1971)
!1974 = !DILocation(line: 864, column: 5, scope: !1971)
!1975 = !DILocation(line: 865, column: 10, scope: !1938)
!1976 = !DILocation(line: 866, column: 1, scope: !1938)
!1977 = distinct !DISubprogram(name: "quotearg_n", scope: !117, file: !117, line: 931, type: !1978, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1980)
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!66, !18, !6}
!1980 = !{!1981, !1982}
!1981 = !DILocalVariable(name: "n", arg: 1, scope: !1977, file: !117, line: 931, type: !18)
!1982 = !DILocalVariable(name: "arg", arg: 2, scope: !1977, file: !117, line: 931, type: !6)
!1983 = !DILocation(line: 931, column: 17, scope: !1977)
!1984 = !DILocation(line: 931, column: 32, scope: !1977)
!1985 = !DILocation(line: 933, column: 10, scope: !1977)
!1986 = !DILocation(line: 933, column: 3, scope: !1977)
!1987 = distinct !DISubprogram(name: "quotearg_n_options", scope: !117, file: !117, line: 877, type: !1988, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1990)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!66, !18, !6, !111, !882}
!1990 = !{!1991, !1992, !1993, !1994, !1995, !1996, !1997, !2000, !2001, !2003, !2004, !2005}
!1991 = !DILocalVariable(name: "n", arg: 1, scope: !1987, file: !117, line: 877, type: !18)
!1992 = !DILocalVariable(name: "arg", arg: 2, scope: !1987, file: !117, line: 877, type: !6)
!1993 = !DILocalVariable(name: "argsize", arg: 3, scope: !1987, file: !117, line: 877, type: !111)
!1994 = !DILocalVariable(name: "options", arg: 4, scope: !1987, file: !117, line: 878, type: !882)
!1995 = !DILocalVariable(name: "e", scope: !1987, file: !117, line: 880, type: !18)
!1996 = !DILocalVariable(name: "sv", scope: !1987, file: !117, line: 882, type: !143)
!1997 = !DILocalVariable(name: "preallocated", scope: !1998, file: !117, line: 889, type: !37)
!1998 = distinct !DILexicalBlock(scope: !1999, file: !117, line: 888, column: 5)
!1999 = distinct !DILexicalBlock(scope: !1987, file: !117, line: 887, column: 7)
!2000 = !DILocalVariable(name: "nmax", scope: !1998, file: !117, line: 890, type: !18)
!2001 = !DILocalVariable(name: "size", scope: !2002, file: !117, line: 903, type: !111)
!2002 = distinct !DILexicalBlock(scope: !1987, file: !117, line: 902, column: 3)
!2003 = !DILocalVariable(name: "val", scope: !2002, file: !117, line: 904, type: !66)
!2004 = !DILocalVariable(name: "flags", scope: !2002, file: !117, line: 906, type: !18)
!2005 = !DILocalVariable(name: "qsize", scope: !2002, file: !117, line: 907, type: !111)
!2006 = !DILocation(line: 877, column: 25, scope: !1987)
!2007 = !DILocation(line: 877, column: 40, scope: !1987)
!2008 = !DILocation(line: 877, column: 52, scope: !1987)
!2009 = !DILocation(line: 878, column: 51, scope: !1987)
!2010 = !DILocation(line: 880, column: 11, scope: !1987)
!2011 = !DILocation(line: 880, column: 7, scope: !1987)
!2012 = !DILocation(line: 882, column: 24, scope: !1987)
!2013 = !DILocation(line: 882, column: 19, scope: !1987)
!2014 = !DILocation(line: 884, column: 9, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1987, file: !117, line: 884, column: 7)
!2016 = !DILocation(line: 884, column: 7, scope: !1987)
!2017 = !DILocation(line: 885, column: 5, scope: !2015)
!2018 = !DILocation(line: 887, column: 7, scope: !1999)
!2019 = !DILocation(line: 887, column: 14, scope: !1999)
!2020 = !DILocation(line: 887, column: 7, scope: !1987)
!2021 = !DILocation(line: 889, column: 31, scope: !1998)
!2022 = !DILocation(line: 890, column: 11, scope: !1998)
!2023 = !DILocation(line: 892, column: 16, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !1998, file: !117, line: 892, column: 11)
!2025 = !DILocation(line: 892, column: 11, scope: !1998)
!2026 = !DILocation(line: 893, column: 9, scope: !2024)
!2027 = !DILocation(line: 895, column: 32, scope: !1998)
!2028 = !DILocation(line: 895, column: 61, scope: !1998)
!2029 = !DILocation(line: 895, column: 58, scope: !1998)
!2030 = !DILocation(line: 895, column: 66, scope: !1998)
!2031 = !DILocation(line: 895, column: 22, scope: !1998)
!2032 = !DILocation(line: 895, column: 15, scope: !1998)
!2033 = !DILocation(line: 896, column: 11, scope: !1998)
!2034 = !DILocation(line: 897, column: 15, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !1998, file: !117, line: 896, column: 11)
!2036 = !{i64 0, i64 8, !1934, i64 8, i64 8, !635}
!2037 = !DILocation(line: 897, column: 9, scope: !2035)
!2038 = !DILocation(line: 898, column: 20, scope: !1998)
!2039 = !DILocation(line: 898, column: 18, scope: !1998)
!2040 = !DILocation(line: 898, column: 7, scope: !1998)
!2041 = !DILocation(line: 898, column: 38, scope: !1998)
!2042 = !DILocation(line: 898, column: 31, scope: !1998)
!2043 = !DILocation(line: 898, column: 48, scope: !1998)
!2044 = !DILocation(line: 899, column: 14, scope: !1998)
!2045 = !DILocation(line: 900, column: 5, scope: !1998)
!2046 = !DILocation(line: 0, scope: !1987)
!2047 = !DILocation(line: 903, column: 19, scope: !2002)
!2048 = !DILocation(line: 903, column: 25, scope: !2002)
!2049 = !DILocation(line: 903, column: 12, scope: !2002)
!2050 = !DILocation(line: 904, column: 23, scope: !2002)
!2051 = !DILocation(line: 904, column: 11, scope: !2002)
!2052 = !DILocation(line: 906, column: 26, scope: !2002)
!2053 = !DILocation(line: 906, column: 32, scope: !2002)
!2054 = !DILocation(line: 906, column: 9, scope: !2002)
!2055 = !DILocation(line: 908, column: 55, scope: !2002)
!2056 = !DILocation(line: 909, column: 46, scope: !2002)
!2057 = !DILocation(line: 910, column: 55, scope: !2002)
!2058 = !DILocation(line: 911, column: 55, scope: !2002)
!2059 = !DILocation(line: 907, column: 20, scope: !2002)
!2060 = !DILocation(line: 907, column: 12, scope: !2002)
!2061 = !DILocation(line: 913, column: 14, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2002, file: !117, line: 913, column: 9)
!2063 = !DILocation(line: 913, column: 9, scope: !2002)
!2064 = !DILocation(line: 915, column: 35, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2062, file: !117, line: 914, column: 7)
!2066 = !DILocation(line: 915, column: 20, scope: !2065)
!2067 = !DILocation(line: 916, column: 17, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2065, file: !117, line: 916, column: 13)
!2069 = !DILocation(line: 916, column: 13, scope: !2065)
!2070 = !DILocation(line: 917, column: 11, scope: !2068)
!2071 = !DILocation(line: 216, column: 20, scope: !1889, inlinedAt: !2072)
!2072 = distinct !DILocation(line: 918, column: 27, scope: !2065)
!2073 = !DILocation(line: 218, column: 10, scope: !1889, inlinedAt: !2072)
!2074 = !DILocation(line: 918, column: 19, scope: !2065)
!2075 = !DILocation(line: 919, column: 69, scope: !2065)
!2076 = !DILocation(line: 921, column: 44, scope: !2065)
!2077 = !DILocation(line: 922, column: 44, scope: !2065)
!2078 = !DILocation(line: 919, column: 9, scope: !2065)
!2079 = !DILocation(line: 923, column: 7, scope: !2065)
!2080 = !DILocation(line: 0, scope: !2002)
!2081 = !DILocation(line: 925, column: 11, scope: !2002)
!2082 = !DILocation(line: 926, column: 5, scope: !2002)
!2083 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !117, file: !117, line: 937, type: !2084, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2086)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!66, !18, !6, !111}
!2086 = !{!2087, !2088, !2089}
!2087 = !DILocalVariable(name: "n", arg: 1, scope: !2083, file: !117, line: 937, type: !18)
!2088 = !DILocalVariable(name: "arg", arg: 2, scope: !2083, file: !117, line: 937, type: !6)
!2089 = !DILocalVariable(name: "argsize", arg: 3, scope: !2083, file: !117, line: 937, type: !111)
!2090 = !DILocation(line: 937, column: 21, scope: !2083)
!2091 = !DILocation(line: 937, column: 36, scope: !2083)
!2092 = !DILocation(line: 937, column: 48, scope: !2083)
!2093 = !DILocation(line: 939, column: 10, scope: !2083)
!2094 = !DILocation(line: 939, column: 3, scope: !2083)
!2095 = distinct !DISubprogram(name: "quotearg", scope: !117, file: !117, line: 943, type: !2096, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2098)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!66, !6}
!2098 = !{!2099}
!2099 = !DILocalVariable(name: "arg", arg: 1, scope: !2095, file: !117, line: 943, type: !6)
!2100 = !DILocation(line: 943, column: 23, scope: !2095)
!2101 = !DILocation(line: 931, column: 17, scope: !1977, inlinedAt: !2102)
!2102 = distinct !DILocation(line: 945, column: 10, scope: !2095)
!2103 = !DILocation(line: 931, column: 32, scope: !1977, inlinedAt: !2102)
!2104 = !DILocation(line: 933, column: 10, scope: !1977, inlinedAt: !2102)
!2105 = !DILocation(line: 945, column: 3, scope: !2095)
!2106 = distinct !DISubprogram(name: "quotearg_mem", scope: !117, file: !117, line: 949, type: !2107, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2109)
!2107 = !DISubroutineType(types: !2108)
!2108 = !{!66, !6, !111}
!2109 = !{!2110, !2111}
!2110 = !DILocalVariable(name: "arg", arg: 1, scope: !2106, file: !117, line: 949, type: !6)
!2111 = !DILocalVariable(name: "argsize", arg: 2, scope: !2106, file: !117, line: 949, type: !111)
!2112 = !DILocation(line: 949, column: 27, scope: !2106)
!2113 = !DILocation(line: 949, column: 39, scope: !2106)
!2114 = !DILocation(line: 937, column: 21, scope: !2083, inlinedAt: !2115)
!2115 = distinct !DILocation(line: 951, column: 10, scope: !2106)
!2116 = !DILocation(line: 937, column: 36, scope: !2083, inlinedAt: !2115)
!2117 = !DILocation(line: 937, column: 48, scope: !2083, inlinedAt: !2115)
!2118 = !DILocation(line: 939, column: 10, scope: !2083, inlinedAt: !2115)
!2119 = !DILocation(line: 951, column: 3, scope: !2106)
!2120 = distinct !DISubprogram(name: "quotearg_n_style", scope: !117, file: !117, line: 955, type: !2121, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2123)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!66, !18, !74, !6}
!2123 = !{!2124, !2125, !2126, !2127}
!2124 = !DILocalVariable(name: "n", arg: 1, scope: !2120, file: !117, line: 955, type: !18)
!2125 = !DILocalVariable(name: "s", arg: 2, scope: !2120, file: !117, line: 955, type: !74)
!2126 = !DILocalVariable(name: "arg", arg: 3, scope: !2120, file: !117, line: 955, type: !6)
!2127 = !DILocalVariable(name: "o", scope: !2120, file: !117, line: 957, type: !883)
!2128 = !DILocation(line: 955, column: 23, scope: !2120)
!2129 = !DILocation(line: 955, column: 45, scope: !2120)
!2130 = !DILocation(line: 955, column: 60, scope: !2120)
!2131 = !DILocation(line: 957, column: 3, scope: !2120)
!2132 = !DILocation(line: 957, column: 32, scope: !2120)
!2133 = !DILocalVariable(name: "style", arg: 1, scope: !2134, file: !117, line: 193, type: !74)
!2134 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !117, file: !117, line: 193, type: !2135, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2137)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!124, !74}
!2137 = !{!2133, !2138}
!2138 = !DILocalVariable(name: "o", scope: !2134, file: !117, line: 195, type: !124)
!2139 = !DILocation(line: 193, column: 48, scope: !2134, inlinedAt: !2140)
!2140 = distinct !DILocation(line: 957, column: 36, scope: !2120)
!2141 = !DILocation(line: 195, column: 26, scope: !2134, inlinedAt: !2140)
!2142 = !{!2143}
!2143 = distinct !{!2143, !2144, !"quoting_options_from_style: argument 0"}
!2144 = distinct !{!2144, !"quoting_options_from_style"}
!2145 = !DILocation(line: 196, column: 13, scope: !2146, inlinedAt: !2140)
!2146 = distinct !DILexicalBlock(scope: !2134, file: !117, line: 196, column: 7)
!2147 = !DILocation(line: 196, column: 7, scope: !2134, inlinedAt: !2140)
!2148 = !DILocation(line: 197, column: 5, scope: !2146, inlinedAt: !2140)
!2149 = !DILocation(line: 198, column: 5, scope: !2134, inlinedAt: !2140)
!2150 = !DILocation(line: 198, column: 11, scope: !2134, inlinedAt: !2140)
!2151 = !DILocation(line: 958, column: 10, scope: !2120)
!2152 = !DILocation(line: 959, column: 1, scope: !2120)
!2153 = !DILocation(line: 958, column: 3, scope: !2120)
!2154 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !117, file: !117, line: 962, type: !2155, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2157)
!2155 = !DISubroutineType(types: !2156)
!2156 = !{!66, !18, !74, !6, !111}
!2157 = !{!2158, !2159, !2160, !2161, !2162}
!2158 = !DILocalVariable(name: "n", arg: 1, scope: !2154, file: !117, line: 962, type: !18)
!2159 = !DILocalVariable(name: "s", arg: 2, scope: !2154, file: !117, line: 962, type: !74)
!2160 = !DILocalVariable(name: "arg", arg: 3, scope: !2154, file: !117, line: 963, type: !6)
!2161 = !DILocalVariable(name: "argsize", arg: 4, scope: !2154, file: !117, line: 963, type: !111)
!2162 = !DILocalVariable(name: "o", scope: !2154, file: !117, line: 965, type: !883)
!2163 = !DILocation(line: 962, column: 27, scope: !2154)
!2164 = !DILocation(line: 962, column: 49, scope: !2154)
!2165 = !DILocation(line: 963, column: 35, scope: !2154)
!2166 = !DILocation(line: 963, column: 47, scope: !2154)
!2167 = !DILocation(line: 965, column: 3, scope: !2154)
!2168 = !DILocation(line: 965, column: 32, scope: !2154)
!2169 = !DILocation(line: 193, column: 48, scope: !2134, inlinedAt: !2170)
!2170 = distinct !DILocation(line: 965, column: 36, scope: !2154)
!2171 = !DILocation(line: 195, column: 26, scope: !2134, inlinedAt: !2170)
!2172 = !{!2173}
!2173 = distinct !{!2173, !2174, !"quoting_options_from_style: argument 0"}
!2174 = distinct !{!2174, !"quoting_options_from_style"}
!2175 = !DILocation(line: 196, column: 13, scope: !2146, inlinedAt: !2170)
!2176 = !DILocation(line: 196, column: 7, scope: !2134, inlinedAt: !2170)
!2177 = !DILocation(line: 197, column: 5, scope: !2146, inlinedAt: !2170)
!2178 = !DILocation(line: 198, column: 5, scope: !2134, inlinedAt: !2170)
!2179 = !DILocation(line: 198, column: 11, scope: !2134, inlinedAt: !2170)
!2180 = !DILocation(line: 966, column: 10, scope: !2154)
!2181 = !DILocation(line: 967, column: 1, scope: !2154)
!2182 = !DILocation(line: 966, column: 3, scope: !2154)
!2183 = distinct !DISubprogram(name: "quotearg_style", scope: !117, file: !117, line: 970, type: !2184, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2186)
!2184 = !DISubroutineType(types: !2185)
!2185 = !{!66, !74, !6}
!2186 = !{!2187, !2188}
!2187 = !DILocalVariable(name: "s", arg: 1, scope: !2183, file: !117, line: 970, type: !74)
!2188 = !DILocalVariable(name: "arg", arg: 2, scope: !2183, file: !117, line: 970, type: !6)
!2189 = !DILocation(line: 970, column: 36, scope: !2183)
!2190 = !DILocation(line: 970, column: 51, scope: !2183)
!2191 = !DILocation(line: 955, column: 23, scope: !2120, inlinedAt: !2192)
!2192 = distinct !DILocation(line: 972, column: 10, scope: !2183)
!2193 = !DILocation(line: 955, column: 45, scope: !2120, inlinedAt: !2192)
!2194 = !DILocation(line: 955, column: 60, scope: !2120, inlinedAt: !2192)
!2195 = !DILocation(line: 957, column: 3, scope: !2120, inlinedAt: !2192)
!2196 = !DILocation(line: 957, column: 32, scope: !2120, inlinedAt: !2192)
!2197 = !DILocation(line: 193, column: 48, scope: !2134, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 957, column: 36, scope: !2120, inlinedAt: !2192)
!2199 = !DILocation(line: 195, column: 26, scope: !2134, inlinedAt: !2198)
!2200 = !{!2201}
!2201 = distinct !{!2201, !2202, !"quoting_options_from_style: argument 0"}
!2202 = distinct !{!2202, !"quoting_options_from_style"}
!2203 = !DILocation(line: 196, column: 13, scope: !2146, inlinedAt: !2198)
!2204 = !DILocation(line: 196, column: 7, scope: !2134, inlinedAt: !2198)
!2205 = !DILocation(line: 197, column: 5, scope: !2146, inlinedAt: !2198)
!2206 = !DILocation(line: 198, column: 5, scope: !2134, inlinedAt: !2198)
!2207 = !DILocation(line: 198, column: 11, scope: !2134, inlinedAt: !2198)
!2208 = !DILocation(line: 958, column: 10, scope: !2120, inlinedAt: !2192)
!2209 = !DILocation(line: 959, column: 1, scope: !2120, inlinedAt: !2192)
!2210 = !DILocation(line: 972, column: 3, scope: !2183)
!2211 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !117, file: !117, line: 976, type: !2212, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2214)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!66, !74, !6, !111}
!2214 = !{!2215, !2216, !2217}
!2215 = !DILocalVariable(name: "s", arg: 1, scope: !2211, file: !117, line: 976, type: !74)
!2216 = !DILocalVariable(name: "arg", arg: 2, scope: !2211, file: !117, line: 976, type: !6)
!2217 = !DILocalVariable(name: "argsize", arg: 3, scope: !2211, file: !117, line: 976, type: !111)
!2218 = !DILocation(line: 976, column: 40, scope: !2211)
!2219 = !DILocation(line: 976, column: 55, scope: !2211)
!2220 = !DILocation(line: 976, column: 67, scope: !2211)
!2221 = !DILocation(line: 962, column: 27, scope: !2154, inlinedAt: !2222)
!2222 = distinct !DILocation(line: 978, column: 10, scope: !2211)
!2223 = !DILocation(line: 962, column: 49, scope: !2154, inlinedAt: !2222)
!2224 = !DILocation(line: 963, column: 35, scope: !2154, inlinedAt: !2222)
!2225 = !DILocation(line: 963, column: 47, scope: !2154, inlinedAt: !2222)
!2226 = !DILocation(line: 965, column: 3, scope: !2154, inlinedAt: !2222)
!2227 = !DILocation(line: 965, column: 32, scope: !2154, inlinedAt: !2222)
!2228 = !DILocation(line: 193, column: 48, scope: !2134, inlinedAt: !2229)
!2229 = distinct !DILocation(line: 965, column: 36, scope: !2154, inlinedAt: !2222)
!2230 = !DILocation(line: 195, column: 26, scope: !2134, inlinedAt: !2229)
!2231 = !{!2232}
!2232 = distinct !{!2232, !2233, !"quoting_options_from_style: argument 0"}
!2233 = distinct !{!2233, !"quoting_options_from_style"}
!2234 = !DILocation(line: 196, column: 13, scope: !2146, inlinedAt: !2229)
!2235 = !DILocation(line: 196, column: 7, scope: !2134, inlinedAt: !2229)
!2236 = !DILocation(line: 197, column: 5, scope: !2146, inlinedAt: !2229)
!2237 = !DILocation(line: 198, column: 5, scope: !2134, inlinedAt: !2229)
!2238 = !DILocation(line: 198, column: 11, scope: !2134, inlinedAt: !2229)
!2239 = !DILocation(line: 966, column: 10, scope: !2154, inlinedAt: !2222)
!2240 = !DILocation(line: 967, column: 1, scope: !2154, inlinedAt: !2222)
!2241 = !DILocation(line: 978, column: 3, scope: !2211)
!2242 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !117, file: !117, line: 982, type: !2243, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2245)
!2243 = !DISubroutineType(types: !2244)
!2244 = !{!66, !6, !111, !8}
!2245 = !{!2246, !2247, !2248, !2249}
!2246 = !DILocalVariable(name: "arg", arg: 1, scope: !2242, file: !117, line: 982, type: !6)
!2247 = !DILocalVariable(name: "argsize", arg: 2, scope: !2242, file: !117, line: 982, type: !111)
!2248 = !DILocalVariable(name: "ch", arg: 3, scope: !2242, file: !117, line: 982, type: !8)
!2249 = !DILocalVariable(name: "options", scope: !2242, file: !117, line: 984, type: !124)
!2250 = !DILocation(line: 982, column: 32, scope: !2242)
!2251 = !DILocation(line: 982, column: 44, scope: !2242)
!2252 = !DILocation(line: 982, column: 58, scope: !2242)
!2253 = !DILocation(line: 984, column: 3, scope: !2242)
!2254 = !DILocation(line: 985, column: 13, scope: !2242)
!2255 = !{i64 0, i64 4, !1111, i64 4, i64 4, !702, i64 8, i64 32, !1111, i64 40, i64 8, !635, i64 48, i64 8, !635}
!2256 = !DILocation(line: 984, column: 26, scope: !2242)
!2257 = !DILocation(line: 152, column: 43, scope: !904, inlinedAt: !2258)
!2258 = distinct !DILocation(line: 986, column: 3, scope: !2242)
!2259 = !DILocation(line: 152, column: 51, scope: !904, inlinedAt: !2258)
!2260 = !DILocation(line: 152, column: 58, scope: !904, inlinedAt: !2258)
!2261 = !DILocation(line: 154, column: 17, scope: !904, inlinedAt: !2258)
!2262 = !DILocation(line: 156, column: 62, scope: !904, inlinedAt: !2258)
!2263 = !DILocation(line: 156, column: 57, scope: !904, inlinedAt: !2258)
!2264 = !DILocation(line: 155, column: 17, scope: !904, inlinedAt: !2258)
!2265 = !DILocation(line: 157, column: 15, scope: !904, inlinedAt: !2258)
!2266 = !DILocation(line: 157, column: 7, scope: !904, inlinedAt: !2258)
!2267 = !DILocation(line: 158, column: 12, scope: !904, inlinedAt: !2258)
!2268 = !DILocation(line: 158, column: 15, scope: !904, inlinedAt: !2258)
!2269 = !DILocation(line: 158, column: 25, scope: !904, inlinedAt: !2258)
!2270 = !DILocation(line: 158, column: 7, scope: !904, inlinedAt: !2258)
!2271 = !DILocation(line: 159, column: 18, scope: !904, inlinedAt: !2258)
!2272 = !DILocation(line: 159, column: 23, scope: !904, inlinedAt: !2258)
!2273 = !DILocation(line: 159, column: 6, scope: !904, inlinedAt: !2258)
!2274 = !DILocation(line: 987, column: 10, scope: !2242)
!2275 = !DILocation(line: 988, column: 1, scope: !2242)
!2276 = !DILocation(line: 987, column: 3, scope: !2242)
!2277 = distinct !DISubprogram(name: "quotearg_char", scope: !117, file: !117, line: 991, type: !2278, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2280)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{!66, !6, !8}
!2280 = !{!2281, !2282}
!2281 = !DILocalVariable(name: "arg", arg: 1, scope: !2277, file: !117, line: 991, type: !6)
!2282 = !DILocalVariable(name: "ch", arg: 2, scope: !2277, file: !117, line: 991, type: !8)
!2283 = !DILocation(line: 991, column: 28, scope: !2277)
!2284 = !DILocation(line: 991, column: 38, scope: !2277)
!2285 = !DILocation(line: 982, column: 32, scope: !2242, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 993, column: 10, scope: !2277)
!2287 = !DILocation(line: 982, column: 44, scope: !2242, inlinedAt: !2286)
!2288 = !DILocation(line: 982, column: 58, scope: !2242, inlinedAt: !2286)
!2289 = !DILocation(line: 984, column: 3, scope: !2242, inlinedAt: !2286)
!2290 = !DILocation(line: 985, column: 13, scope: !2242, inlinedAt: !2286)
!2291 = !DILocation(line: 984, column: 26, scope: !2242, inlinedAt: !2286)
!2292 = !DILocation(line: 152, column: 43, scope: !904, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 986, column: 3, scope: !2242, inlinedAt: !2286)
!2294 = !DILocation(line: 152, column: 51, scope: !904, inlinedAt: !2293)
!2295 = !DILocation(line: 152, column: 58, scope: !904, inlinedAt: !2293)
!2296 = !DILocation(line: 154, column: 17, scope: !904, inlinedAt: !2293)
!2297 = !DILocation(line: 156, column: 62, scope: !904, inlinedAt: !2293)
!2298 = !DILocation(line: 156, column: 57, scope: !904, inlinedAt: !2293)
!2299 = !DILocation(line: 155, column: 17, scope: !904, inlinedAt: !2293)
!2300 = !DILocation(line: 157, column: 15, scope: !904, inlinedAt: !2293)
!2301 = !DILocation(line: 157, column: 7, scope: !904, inlinedAt: !2293)
!2302 = !DILocation(line: 158, column: 12, scope: !904, inlinedAt: !2293)
!2303 = !DILocation(line: 158, column: 15, scope: !904, inlinedAt: !2293)
!2304 = !DILocation(line: 158, column: 25, scope: !904, inlinedAt: !2293)
!2305 = !DILocation(line: 158, column: 7, scope: !904, inlinedAt: !2293)
!2306 = !DILocation(line: 159, column: 18, scope: !904, inlinedAt: !2293)
!2307 = !DILocation(line: 159, column: 23, scope: !904, inlinedAt: !2293)
!2308 = !DILocation(line: 159, column: 6, scope: !904, inlinedAt: !2293)
!2309 = !DILocation(line: 987, column: 10, scope: !2242, inlinedAt: !2286)
!2310 = !DILocation(line: 988, column: 1, scope: !2242, inlinedAt: !2286)
!2311 = !DILocation(line: 993, column: 3, scope: !2277)
!2312 = distinct !DISubprogram(name: "quotearg_colon", scope: !117, file: !117, line: 997, type: !2096, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2313)
!2313 = !{!2314}
!2314 = !DILocalVariable(name: "arg", arg: 1, scope: !2312, file: !117, line: 997, type: !6)
!2315 = !DILocation(line: 997, column: 29, scope: !2312)
!2316 = !DILocation(line: 991, column: 28, scope: !2277, inlinedAt: !2317)
!2317 = distinct !DILocation(line: 999, column: 10, scope: !2312)
!2318 = !DILocation(line: 991, column: 38, scope: !2277, inlinedAt: !2317)
!2319 = !DILocation(line: 982, column: 32, scope: !2242, inlinedAt: !2320)
!2320 = distinct !DILocation(line: 993, column: 10, scope: !2277, inlinedAt: !2317)
!2321 = !DILocation(line: 982, column: 44, scope: !2242, inlinedAt: !2320)
!2322 = !DILocation(line: 982, column: 58, scope: !2242, inlinedAt: !2320)
!2323 = !DILocation(line: 984, column: 3, scope: !2242, inlinedAt: !2320)
!2324 = !DILocation(line: 985, column: 13, scope: !2242, inlinedAt: !2320)
!2325 = !DILocation(line: 984, column: 26, scope: !2242, inlinedAt: !2320)
!2326 = !DILocation(line: 152, column: 43, scope: !904, inlinedAt: !2327)
!2327 = distinct !DILocation(line: 986, column: 3, scope: !2242, inlinedAt: !2320)
!2328 = !DILocation(line: 152, column: 51, scope: !904, inlinedAt: !2327)
!2329 = !DILocation(line: 152, column: 58, scope: !904, inlinedAt: !2327)
!2330 = !DILocation(line: 154, column: 17, scope: !904, inlinedAt: !2327)
!2331 = !DILocation(line: 156, column: 57, scope: !904, inlinedAt: !2327)
!2332 = !DILocation(line: 155, column: 17, scope: !904, inlinedAt: !2327)
!2333 = !DILocation(line: 157, column: 7, scope: !904, inlinedAt: !2327)
!2334 = !DILocation(line: 158, column: 12, scope: !904, inlinedAt: !2327)
!2335 = !DILocation(line: 159, column: 6, scope: !904, inlinedAt: !2327)
!2336 = !DILocation(line: 987, column: 10, scope: !2242, inlinedAt: !2320)
!2337 = !DILocation(line: 988, column: 1, scope: !2242, inlinedAt: !2320)
!2338 = !DILocation(line: 999, column: 3, scope: !2312)
!2339 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !117, file: !117, line: 1003, type: !2107, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2340)
!2340 = !{!2341, !2342}
!2341 = !DILocalVariable(name: "arg", arg: 1, scope: !2339, file: !117, line: 1003, type: !6)
!2342 = !DILocalVariable(name: "argsize", arg: 2, scope: !2339, file: !117, line: 1003, type: !111)
!2343 = !DILocation(line: 1003, column: 33, scope: !2339)
!2344 = !DILocation(line: 1003, column: 45, scope: !2339)
!2345 = !DILocation(line: 982, column: 32, scope: !2242, inlinedAt: !2346)
!2346 = distinct !DILocation(line: 1005, column: 10, scope: !2339)
!2347 = !DILocation(line: 982, column: 44, scope: !2242, inlinedAt: !2346)
!2348 = !DILocation(line: 982, column: 58, scope: !2242, inlinedAt: !2346)
!2349 = !DILocation(line: 984, column: 3, scope: !2242, inlinedAt: !2346)
!2350 = !DILocation(line: 985, column: 13, scope: !2242, inlinedAt: !2346)
!2351 = !DILocation(line: 984, column: 26, scope: !2242, inlinedAt: !2346)
!2352 = !DILocation(line: 152, column: 43, scope: !904, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 986, column: 3, scope: !2242, inlinedAt: !2346)
!2354 = !DILocation(line: 152, column: 51, scope: !904, inlinedAt: !2353)
!2355 = !DILocation(line: 152, column: 58, scope: !904, inlinedAt: !2353)
!2356 = !DILocation(line: 154, column: 17, scope: !904, inlinedAt: !2353)
!2357 = !DILocation(line: 156, column: 57, scope: !904, inlinedAt: !2353)
!2358 = !DILocation(line: 155, column: 17, scope: !904, inlinedAt: !2353)
!2359 = !DILocation(line: 157, column: 7, scope: !904, inlinedAt: !2353)
!2360 = !DILocation(line: 158, column: 12, scope: !904, inlinedAt: !2353)
!2361 = !DILocation(line: 159, column: 6, scope: !904, inlinedAt: !2353)
!2362 = !DILocation(line: 987, column: 10, scope: !2242, inlinedAt: !2346)
!2363 = !DILocation(line: 988, column: 1, scope: !2242, inlinedAt: !2346)
!2364 = !DILocation(line: 1005, column: 3, scope: !2339)
!2365 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !117, file: !117, line: 1009, type: !2121, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2366)
!2366 = !{!2367, !2368, !2369, !2370}
!2367 = !DILocalVariable(name: "n", arg: 1, scope: !2365, file: !117, line: 1009, type: !18)
!2368 = !DILocalVariable(name: "s", arg: 2, scope: !2365, file: !117, line: 1009, type: !74)
!2369 = !DILocalVariable(name: "arg", arg: 3, scope: !2365, file: !117, line: 1009, type: !6)
!2370 = !DILocalVariable(name: "options", scope: !2365, file: !117, line: 1011, type: !124)
!2371 = !DILocation(line: 195, column: 26, scope: !2134, inlinedAt: !2372)
!2372 = distinct !DILocation(line: 1012, column: 13, scope: !2365)
!2373 = !DILocation(line: 1009, column: 29, scope: !2365)
!2374 = !DILocation(line: 1009, column: 51, scope: !2365)
!2375 = !DILocation(line: 1009, column: 66, scope: !2365)
!2376 = !DILocation(line: 1011, column: 3, scope: !2365)
!2377 = !DILocation(line: 1012, column: 13, scope: !2365)
!2378 = !DILocation(line: 193, column: 48, scope: !2134, inlinedAt: !2372)
!2379 = !{!2380}
!2380 = distinct !{!2380, !2381, !"quoting_options_from_style: argument 0"}
!2381 = distinct !{!2381, !"quoting_options_from_style"}
!2382 = !DILocation(line: 196, column: 13, scope: !2146, inlinedAt: !2372)
!2383 = !DILocation(line: 196, column: 7, scope: !2134, inlinedAt: !2372)
!2384 = !DILocation(line: 197, column: 5, scope: !2146, inlinedAt: !2372)
!2385 = !DILocation(line: 1011, column: 26, scope: !2365)
!2386 = !DILocation(line: 152, column: 43, scope: !904, inlinedAt: !2387)
!2387 = distinct !DILocation(line: 1013, column: 3, scope: !2365)
!2388 = !DILocation(line: 152, column: 51, scope: !904, inlinedAt: !2387)
!2389 = !DILocation(line: 152, column: 58, scope: !904, inlinedAt: !2387)
!2390 = !DILocation(line: 154, column: 17, scope: !904, inlinedAt: !2387)
!2391 = !DILocation(line: 156, column: 57, scope: !904, inlinedAt: !2387)
!2392 = !DILocation(line: 155, column: 17, scope: !904, inlinedAt: !2387)
!2393 = !DILocation(line: 157, column: 7, scope: !904, inlinedAt: !2387)
!2394 = !DILocation(line: 158, column: 12, scope: !904, inlinedAt: !2387)
!2395 = !DILocation(line: 159, column: 6, scope: !904, inlinedAt: !2387)
!2396 = !DILocation(line: 1014, column: 10, scope: !2365)
!2397 = !DILocation(line: 1015, column: 1, scope: !2365)
!2398 = !DILocation(line: 1014, column: 3, scope: !2365)
!2399 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !117, file: !117, line: 1018, type: !2400, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2402)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!66, !18, !6, !6, !6}
!2402 = !{!2403, !2404, !2405, !2406}
!2403 = !DILocalVariable(name: "n", arg: 1, scope: !2399, file: !117, line: 1018, type: !18)
!2404 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2399, file: !117, line: 1018, type: !6)
!2405 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2399, file: !117, line: 1019, type: !6)
!2406 = !DILocalVariable(name: "arg", arg: 4, scope: !2399, file: !117, line: 1019, type: !6)
!2407 = !DILocation(line: 1018, column: 24, scope: !2399)
!2408 = !DILocation(line: 1018, column: 39, scope: !2399)
!2409 = !DILocation(line: 1019, column: 32, scope: !2399)
!2410 = !DILocation(line: 1019, column: 57, scope: !2399)
!2411 = !DILocalVariable(name: "n", arg: 1, scope: !2412, file: !117, line: 1026, type: !18)
!2412 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !117, file: !117, line: 1026, type: !2413, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2415)
!2413 = !DISubroutineType(types: !2414)
!2414 = !{!66, !18, !6, !6, !6, !111}
!2415 = !{!2411, !2416, !2417, !2418, !2419, !2420}
!2416 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2412, file: !117, line: 1026, type: !6)
!2417 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2412, file: !117, line: 1027, type: !6)
!2418 = !DILocalVariable(name: "arg", arg: 4, scope: !2412, file: !117, line: 1028, type: !6)
!2419 = !DILocalVariable(name: "argsize", arg: 5, scope: !2412, file: !117, line: 1028, type: !111)
!2420 = !DILocalVariable(name: "o", scope: !2412, file: !117, line: 1030, type: !124)
!2421 = !DILocation(line: 1026, column: 28, scope: !2412, inlinedAt: !2422)
!2422 = distinct !DILocation(line: 1021, column: 10, scope: !2399)
!2423 = !DILocation(line: 1026, column: 43, scope: !2412, inlinedAt: !2422)
!2424 = !DILocation(line: 1027, column: 36, scope: !2412, inlinedAt: !2422)
!2425 = !DILocation(line: 1028, column: 36, scope: !2412, inlinedAt: !2422)
!2426 = !DILocation(line: 1028, column: 48, scope: !2412, inlinedAt: !2422)
!2427 = !DILocation(line: 1030, column: 3, scope: !2412, inlinedAt: !2422)
!2428 = !DILocation(line: 1030, column: 30, scope: !2412, inlinedAt: !2422)
!2429 = !DILocation(line: 1030, column: 26, scope: !2412, inlinedAt: !2422)
!2430 = !DILocation(line: 179, column: 45, scope: !953, inlinedAt: !2431)
!2431 = distinct !DILocation(line: 1031, column: 3, scope: !2412, inlinedAt: !2422)
!2432 = !DILocation(line: 180, column: 33, scope: !953, inlinedAt: !2431)
!2433 = !DILocation(line: 180, column: 57, scope: !953, inlinedAt: !2431)
!2434 = !DILocation(line: 184, column: 6, scope: !953, inlinedAt: !2431)
!2435 = !DILocation(line: 184, column: 12, scope: !953, inlinedAt: !2431)
!2436 = !DILocation(line: 185, column: 8, scope: !969, inlinedAt: !2431)
!2437 = !DILocation(line: 185, column: 23, scope: !969, inlinedAt: !2431)
!2438 = !DILocation(line: 185, column: 19, scope: !969, inlinedAt: !2431)
!2439 = !DILocation(line: 186, column: 5, scope: !969, inlinedAt: !2431)
!2440 = !DILocation(line: 187, column: 6, scope: !953, inlinedAt: !2431)
!2441 = !DILocation(line: 187, column: 17, scope: !953, inlinedAt: !2431)
!2442 = !DILocation(line: 188, column: 6, scope: !953, inlinedAt: !2431)
!2443 = !DILocation(line: 188, column: 18, scope: !953, inlinedAt: !2431)
!2444 = !DILocation(line: 1032, column: 10, scope: !2412, inlinedAt: !2422)
!2445 = !DILocation(line: 1033, column: 1, scope: !2412, inlinedAt: !2422)
!2446 = !DILocation(line: 1021, column: 3, scope: !2399)
!2447 = !DILocation(line: 1026, column: 28, scope: !2412)
!2448 = !DILocation(line: 1026, column: 43, scope: !2412)
!2449 = !DILocation(line: 1027, column: 36, scope: !2412)
!2450 = !DILocation(line: 1028, column: 36, scope: !2412)
!2451 = !DILocation(line: 1028, column: 48, scope: !2412)
!2452 = !DILocation(line: 1030, column: 3, scope: !2412)
!2453 = !DILocation(line: 1030, column: 30, scope: !2412)
!2454 = !DILocation(line: 1030, column: 26, scope: !2412)
!2455 = !DILocation(line: 179, column: 45, scope: !953, inlinedAt: !2456)
!2456 = distinct !DILocation(line: 1031, column: 3, scope: !2412)
!2457 = !DILocation(line: 180, column: 33, scope: !953, inlinedAt: !2456)
!2458 = !DILocation(line: 180, column: 57, scope: !953, inlinedAt: !2456)
!2459 = !DILocation(line: 184, column: 6, scope: !953, inlinedAt: !2456)
!2460 = !DILocation(line: 184, column: 12, scope: !953, inlinedAt: !2456)
!2461 = !DILocation(line: 185, column: 8, scope: !969, inlinedAt: !2456)
!2462 = !DILocation(line: 185, column: 23, scope: !969, inlinedAt: !2456)
!2463 = !DILocation(line: 185, column: 19, scope: !969, inlinedAt: !2456)
!2464 = !DILocation(line: 186, column: 5, scope: !969, inlinedAt: !2456)
!2465 = !DILocation(line: 187, column: 6, scope: !953, inlinedAt: !2456)
!2466 = !DILocation(line: 187, column: 17, scope: !953, inlinedAt: !2456)
!2467 = !DILocation(line: 188, column: 6, scope: !953, inlinedAt: !2456)
!2468 = !DILocation(line: 188, column: 18, scope: !953, inlinedAt: !2456)
!2469 = !DILocation(line: 1032, column: 10, scope: !2412)
!2470 = !DILocation(line: 1033, column: 1, scope: !2412)
!2471 = !DILocation(line: 1032, column: 3, scope: !2412)
!2472 = distinct !DISubprogram(name: "quotearg_custom", scope: !117, file: !117, line: 1036, type: !2473, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2475)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!66, !6, !6, !6}
!2475 = !{!2476, !2477, !2478}
!2476 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2472, file: !117, line: 1036, type: !6)
!2477 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2472, file: !117, line: 1036, type: !6)
!2478 = !DILocalVariable(name: "arg", arg: 3, scope: !2472, file: !117, line: 1037, type: !6)
!2479 = !DILocation(line: 1036, column: 30, scope: !2472)
!2480 = !DILocation(line: 1036, column: 54, scope: !2472)
!2481 = !DILocation(line: 1037, column: 30, scope: !2472)
!2482 = !DILocation(line: 1018, column: 24, scope: !2399, inlinedAt: !2483)
!2483 = distinct !DILocation(line: 1039, column: 10, scope: !2472)
!2484 = !DILocation(line: 1018, column: 39, scope: !2399, inlinedAt: !2483)
!2485 = !DILocation(line: 1019, column: 32, scope: !2399, inlinedAt: !2483)
!2486 = !DILocation(line: 1019, column: 57, scope: !2399, inlinedAt: !2483)
!2487 = !DILocation(line: 1026, column: 28, scope: !2412, inlinedAt: !2488)
!2488 = distinct !DILocation(line: 1021, column: 10, scope: !2399, inlinedAt: !2483)
!2489 = !DILocation(line: 1026, column: 43, scope: !2412, inlinedAt: !2488)
!2490 = !DILocation(line: 1027, column: 36, scope: !2412, inlinedAt: !2488)
!2491 = !DILocation(line: 1028, column: 36, scope: !2412, inlinedAt: !2488)
!2492 = !DILocation(line: 1028, column: 48, scope: !2412, inlinedAt: !2488)
!2493 = !DILocation(line: 1030, column: 3, scope: !2412, inlinedAt: !2488)
!2494 = !DILocation(line: 1030, column: 30, scope: !2412, inlinedAt: !2488)
!2495 = !DILocation(line: 1030, column: 26, scope: !2412, inlinedAt: !2488)
!2496 = !DILocation(line: 179, column: 45, scope: !953, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 1031, column: 3, scope: !2412, inlinedAt: !2488)
!2498 = !DILocation(line: 180, column: 33, scope: !953, inlinedAt: !2497)
!2499 = !DILocation(line: 180, column: 57, scope: !953, inlinedAt: !2497)
!2500 = !DILocation(line: 184, column: 6, scope: !953, inlinedAt: !2497)
!2501 = !DILocation(line: 184, column: 12, scope: !953, inlinedAt: !2497)
!2502 = !DILocation(line: 185, column: 8, scope: !969, inlinedAt: !2497)
!2503 = !DILocation(line: 185, column: 23, scope: !969, inlinedAt: !2497)
!2504 = !DILocation(line: 185, column: 19, scope: !969, inlinedAt: !2497)
!2505 = !DILocation(line: 186, column: 5, scope: !969, inlinedAt: !2497)
!2506 = !DILocation(line: 187, column: 6, scope: !953, inlinedAt: !2497)
!2507 = !DILocation(line: 187, column: 17, scope: !953, inlinedAt: !2497)
!2508 = !DILocation(line: 188, column: 6, scope: !953, inlinedAt: !2497)
!2509 = !DILocation(line: 188, column: 18, scope: !953, inlinedAt: !2497)
!2510 = !DILocation(line: 1032, column: 10, scope: !2412, inlinedAt: !2488)
!2511 = !DILocation(line: 1033, column: 1, scope: !2412, inlinedAt: !2488)
!2512 = !DILocation(line: 1039, column: 3, scope: !2472)
!2513 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !117, file: !117, line: 1043, type: !2514, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2516)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{!66, !6, !6, !6, !111}
!2516 = !{!2517, !2518, !2519, !2520}
!2517 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2513, file: !117, line: 1043, type: !6)
!2518 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2513, file: !117, line: 1043, type: !6)
!2519 = !DILocalVariable(name: "arg", arg: 3, scope: !2513, file: !117, line: 1044, type: !6)
!2520 = !DILocalVariable(name: "argsize", arg: 4, scope: !2513, file: !117, line: 1044, type: !111)
!2521 = !DILocation(line: 1043, column: 34, scope: !2513)
!2522 = !DILocation(line: 1043, column: 58, scope: !2513)
!2523 = !DILocation(line: 1044, column: 34, scope: !2513)
!2524 = !DILocation(line: 1044, column: 46, scope: !2513)
!2525 = !DILocation(line: 1026, column: 28, scope: !2412, inlinedAt: !2526)
!2526 = distinct !DILocation(line: 1046, column: 10, scope: !2513)
!2527 = !DILocation(line: 1026, column: 43, scope: !2412, inlinedAt: !2526)
!2528 = !DILocation(line: 1027, column: 36, scope: !2412, inlinedAt: !2526)
!2529 = !DILocation(line: 1028, column: 36, scope: !2412, inlinedAt: !2526)
!2530 = !DILocation(line: 1028, column: 48, scope: !2412, inlinedAt: !2526)
!2531 = !DILocation(line: 1030, column: 3, scope: !2412, inlinedAt: !2526)
!2532 = !DILocation(line: 1030, column: 30, scope: !2412, inlinedAt: !2526)
!2533 = !DILocation(line: 1030, column: 26, scope: !2412, inlinedAt: !2526)
!2534 = !DILocation(line: 179, column: 45, scope: !953, inlinedAt: !2535)
!2535 = distinct !DILocation(line: 1031, column: 3, scope: !2412, inlinedAt: !2526)
!2536 = !DILocation(line: 180, column: 33, scope: !953, inlinedAt: !2535)
!2537 = !DILocation(line: 180, column: 57, scope: !953, inlinedAt: !2535)
!2538 = !DILocation(line: 184, column: 6, scope: !953, inlinedAt: !2535)
!2539 = !DILocation(line: 184, column: 12, scope: !953, inlinedAt: !2535)
!2540 = !DILocation(line: 185, column: 8, scope: !969, inlinedAt: !2535)
!2541 = !DILocation(line: 185, column: 23, scope: !969, inlinedAt: !2535)
!2542 = !DILocation(line: 185, column: 19, scope: !969, inlinedAt: !2535)
!2543 = !DILocation(line: 186, column: 5, scope: !969, inlinedAt: !2535)
!2544 = !DILocation(line: 187, column: 6, scope: !953, inlinedAt: !2535)
!2545 = !DILocation(line: 187, column: 17, scope: !953, inlinedAt: !2535)
!2546 = !DILocation(line: 188, column: 6, scope: !953, inlinedAt: !2535)
!2547 = !DILocation(line: 188, column: 18, scope: !953, inlinedAt: !2535)
!2548 = !DILocation(line: 1032, column: 10, scope: !2412, inlinedAt: !2526)
!2549 = !DILocation(line: 1033, column: 1, scope: !2412, inlinedAt: !2526)
!2550 = !DILocation(line: 1046, column: 3, scope: !2513)
!2551 = distinct !DISubprogram(name: "quote_n_mem", scope: !117, file: !117, line: 1061, type: !2552, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2554)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!6, !18, !6, !111}
!2554 = !{!2555, !2556, !2557}
!2555 = !DILocalVariable(name: "n", arg: 1, scope: !2551, file: !117, line: 1061, type: !18)
!2556 = !DILocalVariable(name: "arg", arg: 2, scope: !2551, file: !117, line: 1061, type: !6)
!2557 = !DILocalVariable(name: "argsize", arg: 3, scope: !2551, file: !117, line: 1061, type: !111)
!2558 = !DILocation(line: 1061, column: 18, scope: !2551)
!2559 = !DILocation(line: 1061, column: 33, scope: !2551)
!2560 = !DILocation(line: 1061, column: 45, scope: !2551)
!2561 = !DILocation(line: 1063, column: 10, scope: !2551)
!2562 = !DILocation(line: 1063, column: 3, scope: !2551)
!2563 = distinct !DISubprogram(name: "quote_mem", scope: !117, file: !117, line: 1067, type: !2564, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2566)
!2564 = !DISubroutineType(types: !2565)
!2565 = !{!6, !6, !111}
!2566 = !{!2567, !2568}
!2567 = !DILocalVariable(name: "arg", arg: 1, scope: !2563, file: !117, line: 1067, type: !6)
!2568 = !DILocalVariable(name: "argsize", arg: 2, scope: !2563, file: !117, line: 1067, type: !111)
!2569 = !DILocation(line: 1067, column: 24, scope: !2563)
!2570 = !DILocation(line: 1067, column: 36, scope: !2563)
!2571 = !DILocation(line: 1061, column: 18, scope: !2551, inlinedAt: !2572)
!2572 = distinct !DILocation(line: 1069, column: 10, scope: !2563)
!2573 = !DILocation(line: 1061, column: 33, scope: !2551, inlinedAt: !2572)
!2574 = !DILocation(line: 1061, column: 45, scope: !2551, inlinedAt: !2572)
!2575 = !DILocation(line: 1063, column: 10, scope: !2551, inlinedAt: !2572)
!2576 = !DILocation(line: 1069, column: 3, scope: !2563)
!2577 = distinct !DISubprogram(name: "quote_n", scope: !117, file: !117, line: 1073, type: !2578, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2580)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!6, !18, !6}
!2580 = !{!2581, !2582}
!2581 = !DILocalVariable(name: "n", arg: 1, scope: !2577, file: !117, line: 1073, type: !18)
!2582 = !DILocalVariable(name: "arg", arg: 2, scope: !2577, file: !117, line: 1073, type: !6)
!2583 = !DILocation(line: 1073, column: 14, scope: !2577)
!2584 = !DILocation(line: 1073, column: 29, scope: !2577)
!2585 = !DILocation(line: 1061, column: 18, scope: !2551, inlinedAt: !2586)
!2586 = distinct !DILocation(line: 1075, column: 10, scope: !2577)
!2587 = !DILocation(line: 1061, column: 33, scope: !2551, inlinedAt: !2586)
!2588 = !DILocation(line: 1061, column: 45, scope: !2551, inlinedAt: !2586)
!2589 = !DILocation(line: 1063, column: 10, scope: !2551, inlinedAt: !2586)
!2590 = !DILocation(line: 1075, column: 3, scope: !2577)
!2591 = distinct !DISubprogram(name: "quote", scope: !117, file: !117, line: 1079, type: !2592, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !2594)
!2592 = !DISubroutineType(types: !2593)
!2593 = !{!6, !6}
!2594 = !{!2595}
!2595 = !DILocalVariable(name: "arg", arg: 1, scope: !2591, file: !117, line: 1079, type: !6)
!2596 = !DILocation(line: 1079, column: 20, scope: !2591)
!2597 = !DILocation(line: 1073, column: 14, scope: !2577, inlinedAt: !2598)
!2598 = distinct !DILocation(line: 1081, column: 10, scope: !2591)
!2599 = !DILocation(line: 1073, column: 29, scope: !2577, inlinedAt: !2598)
!2600 = !DILocation(line: 1061, column: 18, scope: !2551, inlinedAt: !2601)
!2601 = distinct !DILocation(line: 1075, column: 10, scope: !2577, inlinedAt: !2598)
!2602 = !DILocation(line: 1061, column: 33, scope: !2551, inlinedAt: !2601)
!2603 = !DILocation(line: 1061, column: 45, scope: !2551, inlinedAt: !2601)
!2604 = !DILocation(line: 1063, column: 10, scope: !2551, inlinedAt: !2601)
!2605 = !DILocation(line: 1081, column: 3, scope: !2591)
!2606 = distinct !DISubprogram(name: "version_etc_arn", scope: !169, file: !169, line: 62, type: !2607, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2663)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{null, !2609, !6, !6, !6, !2662, !111}
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2611, line: 7, baseType: !2612)
!2611 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2613, line: 49, size: 1728, elements: !2614)
!2613 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2614 = !{!2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2630, !2632, !2633, !2634, !2638, !2639, !2641, !2643, !2646, !2648, !2651, !2654, !2655, !2656, !2657, !2658}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2612, file: !2613, line: 51, baseType: !18, size: 32)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2612, file: !2613, line: 54, baseType: !66, size: 64, offset: 64)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2612, file: !2613, line: 55, baseType: !66, size: 64, offset: 128)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2612, file: !2613, line: 56, baseType: !66, size: 64, offset: 192)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2612, file: !2613, line: 57, baseType: !66, size: 64, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2612, file: !2613, line: 58, baseType: !66, size: 64, offset: 320)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2612, file: !2613, line: 59, baseType: !66, size: 64, offset: 384)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2612, file: !2613, line: 60, baseType: !66, size: 64, offset: 448)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2612, file: !2613, line: 61, baseType: !66, size: 64, offset: 512)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2612, file: !2613, line: 64, baseType: !66, size: 64, offset: 576)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2612, file: !2613, line: 65, baseType: !66, size: 64, offset: 640)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2612, file: !2613, line: 66, baseType: !66, size: 64, offset: 704)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2612, file: !2613, line: 68, baseType: !2628, size: 64, offset: 768)
!2628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2629, size: 64)
!2629 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !2613, line: 36, flags: DIFlagFwdDecl)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2612, file: !2613, line: 70, baseType: !2631, size: 64, offset: 832)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2612, file: !2613, line: 72, baseType: !18, size: 32, offset: 896)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2612, file: !2613, line: 73, baseType: !18, size: 32, offset: 928)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2612, file: !2613, line: 74, baseType: !2635, size: 64, offset: 960)
!2635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !2636, line: 150, baseType: !2637)
!2636 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2637 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2612, file: !2613, line: 77, baseType: !110, size: 16, offset: 1024)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2612, file: !2613, line: 78, baseType: !2640, size: 8, offset: 1040)
!2640 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2612, file: !2613, line: 79, baseType: !2642, size: 8, offset: 1048)
!2642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !22)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2612, file: !2613, line: 81, baseType: !2644, size: 64, offset: 1088)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !2613, line: 43, baseType: null)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2612, file: !2613, line: 89, baseType: !2647, size: 64, offset: 1152)
!2647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !2636, line: 151, baseType: !2637)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2612, file: !2613, line: 91, baseType: !2649, size: 64, offset: 1216)
!2649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2650 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !2613, line: 37, flags: DIFlagFwdDecl)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2612, file: !2613, line: 92, baseType: !2652, size: 64, offset: 1280)
!2652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2653, size: 64)
!2653 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !2613, line: 38, flags: DIFlagFwdDecl)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2612, file: !2613, line: 93, baseType: !2631, size: 64, offset: 1344)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2612, file: !2613, line: 94, baseType: !9, size: 64, offset: 1408)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2612, file: !2613, line: 95, baseType: !111, size: 64, offset: 1472)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2612, file: !2613, line: 96, baseType: !18, size: 32, offset: 1536)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2612, file: !2613, line: 98, baseType: !2659, size: 160, offset: 1568)
!2659 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !2660)
!2660 = !{!2661}
!2661 = !DISubrange(count: 20)
!2662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!2663 = !{!2664, !2665, !2666, !2667, !2668, !2669}
!2664 = !DILocalVariable(name: "stream", arg: 1, scope: !2606, file: !169, line: 62, type: !2609)
!2665 = !DILocalVariable(name: "command_name", arg: 2, scope: !2606, file: !169, line: 63, type: !6)
!2666 = !DILocalVariable(name: "package", arg: 3, scope: !2606, file: !169, line: 63, type: !6)
!2667 = !DILocalVariable(name: "version", arg: 4, scope: !2606, file: !169, line: 64, type: !6)
!2668 = !DILocalVariable(name: "authors", arg: 5, scope: !2606, file: !169, line: 65, type: !2662)
!2669 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2606, file: !169, line: 65, type: !111)
!2670 = !DILocation(line: 62, column: 24, scope: !2606)
!2671 = !DILocation(line: 63, column: 30, scope: !2606)
!2672 = !DILocation(line: 63, column: 56, scope: !2606)
!2673 = !DILocation(line: 64, column: 30, scope: !2606)
!2674 = !DILocation(line: 65, column: 39, scope: !2606)
!2675 = !DILocation(line: 65, column: 55, scope: !2606)
!2676 = !DILocation(line: 67, column: 7, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2606, file: !169, line: 67, column: 7)
!2678 = !DILocation(line: 67, column: 7, scope: !2606)
!2679 = !DILocation(line: 68, column: 5, scope: !2677)
!2680 = !DILocation(line: 70, column: 5, scope: !2677)
!2681 = !DILocation(line: 84, column: 3, scope: !2606)
!2682 = !DILocation(line: 86, column: 3, scope: !2606)
!2683 = !DILocation(line: 95, column: 3, scope: !2606)
!2684 = !DILocation(line: 99, column: 7, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2606, file: !169, line: 96, column: 5)
!2686 = !DILocation(line: 102, column: 7, scope: !2685)
!2687 = !DILocation(line: 103, column: 7, scope: !2685)
!2688 = !DILocation(line: 106, column: 7, scope: !2685)
!2689 = !DILocation(line: 107, column: 7, scope: !2685)
!2690 = !DILocation(line: 110, column: 7, scope: !2685)
!2691 = !DILocation(line: 112, column: 7, scope: !2685)
!2692 = !DILocation(line: 117, column: 7, scope: !2685)
!2693 = !DILocation(line: 119, column: 7, scope: !2685)
!2694 = !DILocation(line: 124, column: 7, scope: !2685)
!2695 = !DILocation(line: 126, column: 7, scope: !2685)
!2696 = !DILocation(line: 131, column: 7, scope: !2685)
!2697 = !DILocation(line: 134, column: 7, scope: !2685)
!2698 = !DILocation(line: 139, column: 7, scope: !2685)
!2699 = !DILocation(line: 142, column: 7, scope: !2685)
!2700 = !DILocation(line: 147, column: 7, scope: !2685)
!2701 = !DILocation(line: 151, column: 7, scope: !2685)
!2702 = !DILocation(line: 156, column: 7, scope: !2685)
!2703 = !DILocation(line: 160, column: 7, scope: !2685)
!2704 = !DILocation(line: 167, column: 7, scope: !2685)
!2705 = !DILocation(line: 171, column: 7, scope: !2685)
!2706 = !DILocation(line: 173, column: 1, scope: !2606)
!2707 = distinct !DISubprogram(name: "version_etc_ar", scope: !169, file: !169, line: 180, type: !2708, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{null, !2609, !6, !6, !6, !2662}
!2710 = !{!2711, !2712, !2713, !2714, !2715, !2716}
!2711 = !DILocalVariable(name: "stream", arg: 1, scope: !2707, file: !169, line: 180, type: !2609)
!2712 = !DILocalVariable(name: "command_name", arg: 2, scope: !2707, file: !169, line: 181, type: !6)
!2713 = !DILocalVariable(name: "package", arg: 3, scope: !2707, file: !169, line: 181, type: !6)
!2714 = !DILocalVariable(name: "version", arg: 4, scope: !2707, file: !169, line: 182, type: !6)
!2715 = !DILocalVariable(name: "authors", arg: 5, scope: !2707, file: !169, line: 182, type: !2662)
!2716 = !DILocalVariable(name: "n_authors", scope: !2707, file: !169, line: 184, type: !111)
!2717 = !DILocation(line: 180, column: 23, scope: !2707)
!2718 = !DILocation(line: 181, column: 29, scope: !2707)
!2719 = !DILocation(line: 181, column: 55, scope: !2707)
!2720 = !DILocation(line: 182, column: 29, scope: !2707)
!2721 = !DILocation(line: 182, column: 59, scope: !2707)
!2722 = !DILocation(line: 184, column: 10, scope: !2707)
!2723 = !DILocation(line: 186, column: 8, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2707, file: !169, line: 186, column: 3)
!2725 = !DILocation(line: 0, scope: !2726)
!2726 = distinct !DILexicalBlock(scope: !2724, file: !169, line: 186, column: 3)
!2727 = !DILocation(line: 186, column: 23, scope: !2726)
!2728 = !DILocation(line: 186, column: 3, scope: !2724)
!2729 = !DILocation(line: 186, column: 52, scope: !2726)
!2730 = distinct !{!2730, !2728, !2731}
!2731 = !DILocation(line: 187, column: 5, scope: !2724)
!2732 = !DILocation(line: 188, column: 3, scope: !2707)
!2733 = !DILocation(line: 189, column: 1, scope: !2707)
!2734 = distinct !DISubprogram(name: "version_etc_va", scope: !169, file: !169, line: 196, type: !2735, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2744)
!2735 = !DISubroutineType(types: !2736)
!2736 = !{null, !2609, !6, !6, !6, !2737}
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !166, line: 189, size: 192, elements: !2739)
!2739 = !{!2740, !2741, !2742, !2743}
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2738, file: !166, line: 189, baseType: !76, size: 32)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2738, file: !166, line: 189, baseType: !76, size: 32, offset: 32)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2738, file: !166, line: 189, baseType: !9, size: 64, offset: 64)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2738, file: !166, line: 189, baseType: !9, size: 64, offset: 128)
!2744 = !{!2745, !2746, !2747, !2748, !2749, !2750, !2751}
!2745 = !DILocalVariable(name: "stream", arg: 1, scope: !2734, file: !169, line: 196, type: !2609)
!2746 = !DILocalVariable(name: "command_name", arg: 2, scope: !2734, file: !169, line: 197, type: !6)
!2747 = !DILocalVariable(name: "package", arg: 3, scope: !2734, file: !169, line: 197, type: !6)
!2748 = !DILocalVariable(name: "version", arg: 4, scope: !2734, file: !169, line: 198, type: !6)
!2749 = !DILocalVariable(name: "authors", arg: 5, scope: !2734, file: !169, line: 198, type: !2737)
!2750 = !DILocalVariable(name: "n_authors", scope: !2734, file: !169, line: 200, type: !111)
!2751 = !DILocalVariable(name: "authtab", scope: !2734, file: !169, line: 201, type: !2752)
!2752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 640, elements: !120)
!2753 = !DILocation(line: 196, column: 23, scope: !2734)
!2754 = !DILocation(line: 197, column: 29, scope: !2734)
!2755 = !DILocation(line: 197, column: 55, scope: !2734)
!2756 = !DILocation(line: 198, column: 29, scope: !2734)
!2757 = !DILocation(line: 198, column: 46, scope: !2734)
!2758 = !DILocation(line: 201, column: 3, scope: !2734)
!2759 = !DILocation(line: 201, column: 15, scope: !2734)
!2760 = !DILocation(line: 200, column: 10, scope: !2734)
!2761 = !DILocation(line: 205, column: 35, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2763, file: !169, line: 203, column: 3)
!2763 = distinct !DILexicalBlock(scope: !2734, file: !169, line: 203, column: 3)
!2764 = !DILocation(line: 205, column: 14, scope: !2762)
!2765 = !DILocation(line: 205, column: 33, scope: !2762)
!2766 = !DILocation(line: 205, column: 67, scope: !2762)
!2767 = !DILocation(line: 203, column: 3, scope: !2763)
!2768 = !DILocation(line: 0, scope: !2762)
!2769 = !DILocation(line: 208, column: 3, scope: !2734)
!2770 = !DILocation(line: 210, column: 1, scope: !2734)
!2771 = distinct !DISubprogram(name: "version_etc", scope: !169, file: !169, line: 227, type: !2772, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !2774)
!2772 = !DISubroutineType(types: !2773)
!2773 = !{null, !2609, !6, !6, !6, null}
!2774 = !{!2775, !2776, !2777, !2778, !2779}
!2775 = !DILocalVariable(name: "stream", arg: 1, scope: !2771, file: !169, line: 227, type: !2609)
!2776 = !DILocalVariable(name: "command_name", arg: 2, scope: !2771, file: !169, line: 228, type: !6)
!2777 = !DILocalVariable(name: "package", arg: 3, scope: !2771, file: !169, line: 228, type: !6)
!2778 = !DILocalVariable(name: "version", arg: 4, scope: !2771, file: !169, line: 229, type: !6)
!2779 = !DILocalVariable(name: "authors", scope: !2771, file: !169, line: 231, type: !2780)
!2780 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !788, line: 52, baseType: !2781)
!2781 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !790, line: 48, baseType: !2782)
!2782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !166, line: 231, baseType: !2783)
!2783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2738, size: 192, elements: !22)
!2784 = !DILocation(line: 227, column: 20, scope: !2771)
!2785 = !DILocation(line: 228, column: 26, scope: !2771)
!2786 = !DILocation(line: 228, column: 52, scope: !2771)
!2787 = !DILocation(line: 229, column: 26, scope: !2771)
!2788 = !DILocation(line: 231, column: 3, scope: !2771)
!2789 = !DILocation(line: 231, column: 11, scope: !2771)
!2790 = !DILocation(line: 233, column: 3, scope: !2771)
!2791 = !DILocation(line: 234, column: 3, scope: !2771)
!2792 = !DILocation(line: 235, column: 3, scope: !2771)
!2793 = !DILocation(line: 236, column: 1, scope: !2771)
!2794 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !169, file: !169, line: 239, type: !734, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !165, retainedNodes: !4)
!2795 = !DILocation(line: 245, column: 3, scope: !2794)
!2796 = !DILocation(line: 251, column: 3, scope: !2794)
!2797 = !DILocation(line: 256, column: 3, scope: !2794)
!2798 = !DILocation(line: 258, column: 1, scope: !2794)
!2799 = distinct !DISubprogram(name: "xnmalloc", scope: !177, file: !177, line: 99, type: !2800, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2802)
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!9, !111, !111}
!2802 = !{!2803, !2804}
!2803 = !DILocalVariable(name: "n", arg: 1, scope: !2799, file: !177, line: 99, type: !111)
!2804 = !DILocalVariable(name: "s", arg: 2, scope: !2799, file: !177, line: 99, type: !111)
!2805 = !DILocation(line: 99, column: 18, scope: !2799)
!2806 = !DILocation(line: 99, column: 28, scope: !2799)
!2807 = !DILocation(line: 101, column: 7, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2799, file: !177, line: 101, column: 7)
!2809 = !DILocation(line: 101, column: 7, scope: !2799)
!2810 = !DILocation(line: 102, column: 5, scope: !2808)
!2811 = !DILocation(line: 103, column: 21, scope: !2799)
!2812 = !DILocalVariable(name: "n", arg: 1, scope: !2813, file: !2814, line: 39, type: !111)
!2813 = distinct !DISubprogram(name: "xmalloc", scope: !2814, file: !2814, line: 39, type: !2815, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2817)
!2814 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!9, !111}
!2817 = !{!2812, !2818}
!2818 = !DILocalVariable(name: "p", scope: !2813, file: !2814, line: 41, type: !9)
!2819 = !DILocation(line: 39, column: 17, scope: !2813, inlinedAt: !2820)
!2820 = distinct !DILocation(line: 103, column: 10, scope: !2799)
!2821 = !DILocation(line: 41, column: 13, scope: !2813, inlinedAt: !2820)
!2822 = !DILocation(line: 41, column: 9, scope: !2813, inlinedAt: !2820)
!2823 = !DILocation(line: 42, column: 8, scope: !2824, inlinedAt: !2820)
!2824 = distinct !DILexicalBlock(scope: !2813, file: !2814, line: 42, column: 7)
!2825 = !DILocation(line: 42, column: 15, scope: !2824, inlinedAt: !2820)
!2826 = !DILocation(line: 42, column: 10, scope: !2824, inlinedAt: !2820)
!2827 = !DILocation(line: 43, column: 5, scope: !2824, inlinedAt: !2820)
!2828 = !DILocation(line: 103, column: 3, scope: !2799)
!2829 = !DILocation(line: 39, column: 17, scope: !2813)
!2830 = !DILocation(line: 41, column: 13, scope: !2813)
!2831 = !DILocation(line: 41, column: 9, scope: !2813)
!2832 = !DILocation(line: 42, column: 8, scope: !2824)
!2833 = !DILocation(line: 42, column: 15, scope: !2824)
!2834 = !DILocation(line: 42, column: 10, scope: !2824)
!2835 = !DILocation(line: 43, column: 5, scope: !2824)
!2836 = !DILocation(line: 44, column: 3, scope: !2813)
!2837 = distinct !DISubprogram(name: "xnrealloc", scope: !177, file: !177, line: 112, type: !2838, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2840)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!9, !9, !111, !111}
!2840 = !{!2841, !2842, !2843}
!2841 = !DILocalVariable(name: "p", arg: 1, scope: !2837, file: !177, line: 112, type: !9)
!2842 = !DILocalVariable(name: "n", arg: 2, scope: !2837, file: !177, line: 112, type: !111)
!2843 = !DILocalVariable(name: "s", arg: 3, scope: !2837, file: !177, line: 112, type: !111)
!2844 = !DILocation(line: 112, column: 18, scope: !2837)
!2845 = !DILocation(line: 112, column: 28, scope: !2837)
!2846 = !DILocation(line: 112, column: 38, scope: !2837)
!2847 = !DILocation(line: 114, column: 7, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2837, file: !177, line: 114, column: 7)
!2849 = !DILocation(line: 114, column: 7, scope: !2837)
!2850 = !DILocation(line: 115, column: 5, scope: !2848)
!2851 = !DILocation(line: 116, column: 25, scope: !2837)
!2852 = !DILocalVariable(name: "p", arg: 1, scope: !2853, file: !2814, line: 51, type: !9)
!2853 = distinct !DISubprogram(name: "xrealloc", scope: !2814, file: !2814, line: 51, type: !2854, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2856)
!2854 = !DISubroutineType(types: !2855)
!2855 = !{!9, !9, !111}
!2856 = !{!2852, !2857}
!2857 = !DILocalVariable(name: "n", arg: 2, scope: !2853, file: !2814, line: 51, type: !111)
!2858 = !DILocation(line: 51, column: 17, scope: !2853, inlinedAt: !2859)
!2859 = distinct !DILocation(line: 116, column: 10, scope: !2837)
!2860 = !DILocation(line: 51, column: 27, scope: !2853, inlinedAt: !2859)
!2861 = !DILocation(line: 53, column: 8, scope: !2862, inlinedAt: !2859)
!2862 = distinct !DILexicalBlock(scope: !2853, file: !2814, line: 53, column: 7)
!2863 = !DILocation(line: 53, column: 13, scope: !2862, inlinedAt: !2859)
!2864 = !DILocation(line: 53, column: 10, scope: !2862, inlinedAt: !2859)
!2865 = !DILocation(line: 57, column: 7, scope: !2866, inlinedAt: !2859)
!2866 = distinct !DILexicalBlock(scope: !2862, file: !2814, line: 54, column: 5)
!2867 = !DILocation(line: 58, column: 7, scope: !2866, inlinedAt: !2859)
!2868 = !DILocation(line: 61, column: 7, scope: !2853, inlinedAt: !2859)
!2869 = !DILocation(line: 62, column: 8, scope: !2870, inlinedAt: !2859)
!2870 = distinct !DILexicalBlock(scope: !2853, file: !2814, line: 62, column: 7)
!2871 = !DILocation(line: 62, column: 13, scope: !2870, inlinedAt: !2859)
!2872 = !DILocation(line: 62, column: 10, scope: !2870, inlinedAt: !2859)
!2873 = !DILocation(line: 63, column: 5, scope: !2870, inlinedAt: !2859)
!2874 = !DILocation(line: 0, scope: !2853, inlinedAt: !2859)
!2875 = !DILocation(line: 116, column: 3, scope: !2837)
!2876 = !DILocation(line: 51, column: 17, scope: !2853)
!2877 = !DILocation(line: 51, column: 27, scope: !2853)
!2878 = !DILocation(line: 53, column: 8, scope: !2862)
!2879 = !DILocation(line: 53, column: 13, scope: !2862)
!2880 = !DILocation(line: 53, column: 10, scope: !2862)
!2881 = !DILocation(line: 57, column: 7, scope: !2866)
!2882 = !DILocation(line: 58, column: 7, scope: !2866)
!2883 = !DILocation(line: 61, column: 7, scope: !2853)
!2884 = !DILocation(line: 62, column: 8, scope: !2870)
!2885 = !DILocation(line: 62, column: 13, scope: !2870)
!2886 = !DILocation(line: 62, column: 10, scope: !2870)
!2887 = !DILocation(line: 63, column: 5, scope: !2870)
!2888 = !DILocation(line: 0, scope: !2853)
!2889 = !DILocation(line: 65, column: 1, scope: !2853)
!2890 = !DILocation(line: 174, column: 19, scope: !178)
!2891 = !DILocation(line: 174, column: 30, scope: !178)
!2892 = !DILocation(line: 174, column: 41, scope: !178)
!2893 = !DILocation(line: 176, column: 14, scope: !178)
!2894 = !DILocation(line: 176, column: 10, scope: !178)
!2895 = !DILocation(line: 178, column: 9, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !178, file: !177, line: 178, column: 7)
!2897 = !DILocation(line: 178, column: 7, scope: !178)
!2898 = !DILocation(line: 180, column: 13, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2900, file: !177, line: 180, column: 11)
!2900 = distinct !DILexicalBlock(scope: !2896, file: !177, line: 179, column: 5)
!2901 = !DILocation(line: 180, column: 11, scope: !2900)
!2902 = !DILocation(line: 188, column: 30, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2899, file: !177, line: 181, column: 9)
!2904 = !DILocation(line: 189, column: 16, scope: !2903)
!2905 = !DILocation(line: 189, column: 13, scope: !2903)
!2906 = !DILocation(line: 190, column: 9, scope: !2903)
!2907 = !DILocation(line: 0, scope: !2903)
!2908 = !DILocation(line: 191, column: 11, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2900, file: !177, line: 191, column: 11)
!2910 = !DILocation(line: 191, column: 11, scope: !2900)
!2911 = !DILocation(line: 206, column: 7, scope: !178)
!2912 = !DILocation(line: 207, column: 25, scope: !178)
!2913 = !DILocation(line: 51, column: 17, scope: !2853, inlinedAt: !2914)
!2914 = distinct !DILocation(line: 207, column: 10, scope: !178)
!2915 = !DILocation(line: 51, column: 27, scope: !2853, inlinedAt: !2914)
!2916 = !DILocation(line: 53, column: 10, scope: !2862, inlinedAt: !2914)
!2917 = !DILocation(line: 192, column: 9, scope: !2909)
!2918 = !DILocation(line: 200, column: 69, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !177, line: 200, column: 11)
!2920 = distinct !DILexicalBlock(scope: !2896, file: !177, line: 195, column: 5)
!2921 = !DILocation(line: 201, column: 11, scope: !2919)
!2922 = !DILocation(line: 200, column: 11, scope: !2920)
!2923 = !DILocation(line: 202, column: 9, scope: !2919)
!2924 = !DILocation(line: 203, column: 14, scope: !2920)
!2925 = !DILocation(line: 203, column: 18, scope: !2920)
!2926 = !DILocation(line: 203, column: 9, scope: !2920)
!2927 = !DILocation(line: 53, column: 8, scope: !2862, inlinedAt: !2914)
!2928 = !DILocation(line: 57, column: 7, scope: !2866, inlinedAt: !2914)
!2929 = !DILocation(line: 58, column: 7, scope: !2866, inlinedAt: !2914)
!2930 = !DILocation(line: 61, column: 7, scope: !2853, inlinedAt: !2914)
!2931 = !DILocation(line: 62, column: 8, scope: !2870, inlinedAt: !2914)
!2932 = !DILocation(line: 62, column: 13, scope: !2870, inlinedAt: !2914)
!2933 = !DILocation(line: 62, column: 10, scope: !2870, inlinedAt: !2914)
!2934 = !DILocation(line: 63, column: 5, scope: !2870, inlinedAt: !2914)
!2935 = !DILocation(line: 0, scope: !2853, inlinedAt: !2914)
!2936 = !DILocation(line: 207, column: 3, scope: !178)
!2937 = distinct !DISubprogram(name: "xcharalloc", scope: !177, file: !177, line: 216, type: !1890, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2938)
!2938 = !{!2939}
!2939 = !DILocalVariable(name: "n", arg: 1, scope: !2937, file: !177, line: 216, type: !111)
!2940 = !DILocation(line: 216, column: 20, scope: !2937)
!2941 = !DILocation(line: 39, column: 17, scope: !2813, inlinedAt: !2942)
!2942 = distinct !DILocation(line: 218, column: 10, scope: !2937)
!2943 = !DILocation(line: 41, column: 13, scope: !2813, inlinedAt: !2942)
!2944 = !DILocation(line: 41, column: 9, scope: !2813, inlinedAt: !2942)
!2945 = !DILocation(line: 42, column: 8, scope: !2824, inlinedAt: !2942)
!2946 = !DILocation(line: 42, column: 15, scope: !2824, inlinedAt: !2942)
!2947 = !DILocation(line: 42, column: 10, scope: !2824, inlinedAt: !2942)
!2948 = !DILocation(line: 43, column: 5, scope: !2824, inlinedAt: !2942)
!2949 = !DILocation(line: 218, column: 3, scope: !2937)
!2950 = distinct !DISubprogram(name: "x2realloc", scope: !2814, file: !2814, line: 74, type: !2951, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2953)
!2951 = !DISubroutineType(types: !2952)
!2952 = !{!9, !9, !181}
!2953 = !{!2954, !2955}
!2954 = !DILocalVariable(name: "p", arg: 1, scope: !2950, file: !2814, line: 74, type: !9)
!2955 = !DILocalVariable(name: "pn", arg: 2, scope: !2950, file: !2814, line: 74, type: !181)
!2956 = !DILocation(line: 74, column: 18, scope: !2950)
!2957 = !DILocation(line: 74, column: 29, scope: !2950)
!2958 = !DILocation(line: 174, column: 19, scope: !178, inlinedAt: !2959)
!2959 = distinct !DILocation(line: 76, column: 10, scope: !2950)
!2960 = !DILocation(line: 174, column: 30, scope: !178, inlinedAt: !2959)
!2961 = !DILocation(line: 174, column: 41, scope: !178, inlinedAt: !2959)
!2962 = !DILocation(line: 176, column: 14, scope: !178, inlinedAt: !2959)
!2963 = !DILocation(line: 176, column: 10, scope: !178, inlinedAt: !2959)
!2964 = !DILocation(line: 178, column: 9, scope: !2896, inlinedAt: !2959)
!2965 = !DILocation(line: 178, column: 7, scope: !178, inlinedAt: !2959)
!2966 = !DILocation(line: 180, column: 13, scope: !2899, inlinedAt: !2959)
!2967 = !DILocation(line: 180, column: 11, scope: !2900, inlinedAt: !2959)
!2968 = !DILocation(line: 191, column: 11, scope: !2909, inlinedAt: !2959)
!2969 = !DILocation(line: 191, column: 11, scope: !2900, inlinedAt: !2959)
!2970 = !DILocation(line: 206, column: 7, scope: !178, inlinedAt: !2959)
!2971 = !DILocation(line: 51, column: 17, scope: !2853, inlinedAt: !2972)
!2972 = distinct !DILocation(line: 207, column: 10, scope: !178, inlinedAt: !2959)
!2973 = !DILocation(line: 51, column: 27, scope: !2853, inlinedAt: !2972)
!2974 = !DILocation(line: 53, column: 10, scope: !2862, inlinedAt: !2972)
!2975 = !DILocation(line: 192, column: 9, scope: !2909, inlinedAt: !2959)
!2976 = !DILocation(line: 201, column: 11, scope: !2919, inlinedAt: !2959)
!2977 = !DILocation(line: 200, column: 11, scope: !2920, inlinedAt: !2959)
!2978 = !DILocation(line: 202, column: 9, scope: !2919, inlinedAt: !2959)
!2979 = !DILocation(line: 203, column: 14, scope: !2920, inlinedAt: !2959)
!2980 = !DILocation(line: 203, column: 18, scope: !2920, inlinedAt: !2959)
!2981 = !DILocation(line: 203, column: 9, scope: !2920, inlinedAt: !2959)
!2982 = !DILocation(line: 53, column: 8, scope: !2862, inlinedAt: !2972)
!2983 = !DILocation(line: 57, column: 7, scope: !2866, inlinedAt: !2972)
!2984 = !DILocation(line: 58, column: 7, scope: !2866, inlinedAt: !2972)
!2985 = !DILocation(line: 61, column: 7, scope: !2853, inlinedAt: !2972)
!2986 = !DILocation(line: 62, column: 8, scope: !2870, inlinedAt: !2972)
!2987 = !DILocation(line: 62, column: 13, scope: !2870, inlinedAt: !2972)
!2988 = !DILocation(line: 62, column: 10, scope: !2870, inlinedAt: !2972)
!2989 = !DILocation(line: 63, column: 5, scope: !2870, inlinedAt: !2972)
!2990 = !DILocation(line: 0, scope: !2853, inlinedAt: !2972)
!2991 = !DILocation(line: 76, column: 3, scope: !2950)
!2992 = distinct !DISubprogram(name: "xzalloc", scope: !2814, file: !2814, line: 84, type: !2815, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !2993)
!2993 = !{!2994}
!2994 = !DILocalVariable(name: "s", arg: 1, scope: !2992, file: !2814, line: 84, type: !111)
!2995 = !DILocation(line: 84, column: 17, scope: !2992)
!2996 = !DILocation(line: 39, column: 17, scope: !2813, inlinedAt: !2997)
!2997 = distinct !DILocation(line: 86, column: 18, scope: !2992)
!2998 = !DILocation(line: 41, column: 13, scope: !2813, inlinedAt: !2997)
!2999 = !DILocation(line: 41, column: 9, scope: !2813, inlinedAt: !2997)
!3000 = !DILocation(line: 42, column: 8, scope: !2824, inlinedAt: !2997)
!3001 = !DILocation(line: 42, column: 15, scope: !2824, inlinedAt: !2997)
!3002 = !DILocation(line: 42, column: 10, scope: !2824, inlinedAt: !2997)
!3003 = !DILocation(line: 43, column: 5, scope: !2824, inlinedAt: !2997)
!3004 = !DILocation(line: 86, column: 10, scope: !2992)
!3005 = !DILocation(line: 86, column: 3, scope: !2992)
!3006 = distinct !DISubprogram(name: "xcalloc", scope: !2814, file: !2814, line: 93, type: !2800, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3007)
!3007 = !{!3008, !3009, !3010}
!3008 = !DILocalVariable(name: "n", arg: 1, scope: !3006, file: !2814, line: 93, type: !111)
!3009 = !DILocalVariable(name: "s", arg: 2, scope: !3006, file: !2814, line: 93, type: !111)
!3010 = !DILocalVariable(name: "p", scope: !3006, file: !2814, line: 95, type: !9)
!3011 = !DILocation(line: 93, column: 17, scope: !3006)
!3012 = !DILocation(line: 93, column: 27, scope: !3006)
!3013 = !DILocation(line: 100, column: 7, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3006, file: !2814, line: 100, column: 7)
!3015 = !DILocation(line: 101, column: 7, scope: !3014)
!3016 = !DILocation(line: 101, column: 18, scope: !3014)
!3017 = !DILocation(line: 95, column: 9, scope: !3006)
!3018 = !DILocation(line: 101, column: 16, scope: !3014)
!3019 = !DILocation(line: 100, column: 7, scope: !3006)
!3020 = !DILocation(line: 102, column: 5, scope: !3014)
!3021 = !DILocation(line: 103, column: 3, scope: !3006)
!3022 = distinct !DISubprogram(name: "xmemdup", scope: !2814, file: !2814, line: 111, type: !3023, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3027)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!9, !3025, !111}
!3025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3026, size: 64)
!3026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3027 = !{!3028, !3029}
!3028 = !DILocalVariable(name: "p", arg: 1, scope: !3022, file: !2814, line: 111, type: !3025)
!3029 = !DILocalVariable(name: "s", arg: 2, scope: !3022, file: !2814, line: 111, type: !111)
!3030 = !DILocation(line: 111, column: 22, scope: !3022)
!3031 = !DILocation(line: 111, column: 32, scope: !3022)
!3032 = !DILocation(line: 39, column: 17, scope: !2813, inlinedAt: !3033)
!3033 = distinct !DILocation(line: 113, column: 18, scope: !3022)
!3034 = !DILocation(line: 41, column: 13, scope: !2813, inlinedAt: !3033)
!3035 = !DILocation(line: 41, column: 9, scope: !2813, inlinedAt: !3033)
!3036 = !DILocation(line: 42, column: 8, scope: !2824, inlinedAt: !3033)
!3037 = !DILocation(line: 42, column: 15, scope: !2824, inlinedAt: !3033)
!3038 = !DILocation(line: 42, column: 10, scope: !2824, inlinedAt: !3033)
!3039 = !DILocation(line: 43, column: 5, scope: !2824, inlinedAt: !3033)
!3040 = !DILocation(line: 113, column: 10, scope: !3022)
!3041 = !DILocation(line: 113, column: 3, scope: !3022)
!3042 = distinct !DISubprogram(name: "xstrdup", scope: !2814, file: !2814, line: 119, type: !2096, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !173, retainedNodes: !3043)
!3043 = !{!3044}
!3044 = !DILocalVariable(name: "string", arg: 1, scope: !3042, file: !2814, line: 119, type: !6)
!3045 = !DILocation(line: 119, column: 22, scope: !3042)
!3046 = !DILocation(line: 121, column: 27, scope: !3042)
!3047 = !DILocation(line: 121, column: 43, scope: !3042)
!3048 = !DILocation(line: 111, column: 22, scope: !3022, inlinedAt: !3049)
!3049 = distinct !DILocation(line: 121, column: 10, scope: !3042)
!3050 = !DILocation(line: 111, column: 32, scope: !3022, inlinedAt: !3049)
!3051 = !DILocation(line: 39, column: 17, scope: !2813, inlinedAt: !3052)
!3052 = distinct !DILocation(line: 113, column: 18, scope: !3022, inlinedAt: !3049)
!3053 = !DILocation(line: 41, column: 13, scope: !2813, inlinedAt: !3052)
!3054 = !DILocation(line: 41, column: 9, scope: !2813, inlinedAt: !3052)
!3055 = !DILocation(line: 42, column: 8, scope: !2824, inlinedAt: !3052)
!3056 = !DILocation(line: 42, column: 15, scope: !2824, inlinedAt: !3052)
!3057 = !DILocation(line: 42, column: 10, scope: !2824, inlinedAt: !3052)
!3058 = !DILocation(line: 43, column: 5, scope: !2824, inlinedAt: !3052)
!3059 = !DILocation(line: 113, column: 10, scope: !3022, inlinedAt: !3049)
!3060 = !DILocation(line: 121, column: 3, scope: !3042)
!3061 = distinct !DISubprogram(name: "xalloc_die", scope: !3062, file: !3062, line: 32, type: !734, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !190, retainedNodes: !4)
!3062 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3063 = !DILocation(line: 34, column: 10, scope: !3061)
!3064 = !DILocation(line: 34, column: 33, scope: !3061)
!3065 = !DILocation(line: 34, column: 3, scope: !3061)
!3066 = !DILocation(line: 40, column: 3, scope: !3061)
!3067 = distinct !DISubprogram(name: "rpl_calloc", scope: !3068, file: !3068, line: 42, type: !2800, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !3069)
!3068 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3069 = !{!3070, !3071, !3072, !3073}
!3070 = !DILocalVariable(name: "n", arg: 1, scope: !3067, file: !3068, line: 42, type: !111)
!3071 = !DILocalVariable(name: "s", arg: 2, scope: !3067, file: !3068, line: 42, type: !111)
!3072 = !DILocalVariable(name: "result", scope: !3067, file: !3068, line: 44, type: !9)
!3073 = !DILocalVariable(name: "bytes", scope: !3074, file: !3068, line: 56, type: !111)
!3074 = distinct !DILexicalBlock(scope: !3075, file: !3068, line: 53, column: 5)
!3075 = distinct !DILexicalBlock(scope: !3067, file: !3068, line: 47, column: 7)
!3076 = !DILocation(line: 42, column: 20, scope: !3067)
!3077 = !DILocation(line: 42, column: 30, scope: !3067)
!3078 = !DILocation(line: 47, column: 9, scope: !3075)
!3079 = !DILocation(line: 47, column: 19, scope: !3075)
!3080 = !DILocation(line: 47, column: 14, scope: !3075)
!3081 = !DILocation(line: 56, column: 24, scope: !3074)
!3082 = !DILocation(line: 56, column: 14, scope: !3074)
!3083 = !DILocation(line: 57, column: 17, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3074, file: !3068, line: 57, column: 11)
!3085 = !DILocation(line: 57, column: 21, scope: !3084)
!3086 = !DILocation(line: 57, column: 11, scope: !3074)
!3087 = !DILocation(line: 59, column: 11, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3084, file: !3068, line: 58, column: 9)
!3089 = !DILocation(line: 59, column: 17, scope: !3088)
!3090 = !DILocation(line: 65, column: 12, scope: !3067)
!3091 = !DILocation(line: 44, column: 9, scope: !3067)
!3092 = !DILocation(line: 72, column: 3, scope: !3067)
!3093 = !DILocation(line: 0, scope: !3088)
!3094 = !DILocation(line: 73, column: 1, scope: !3067)
!3095 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3096, file: !3096, line: 385, type: !3097, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !194, retainedNodes: !3111)
!3096 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3097 = !DISubroutineType(types: !3098)
!3098 = !{!111, !3099, !6, !111, !3100}
!3099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!3100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3101, size: 64)
!3101 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1052, line: 6, baseType: !3102)
!3102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1054, line: 21, baseType: !3103)
!3103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1054, line: 13, size: 64, elements: !3104)
!3104 = !{!3105, !3106}
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3103, file: !1054, line: 15, baseType: !18, size: 32)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3103, file: !1054, line: 20, baseType: !3107, size: 32, offset: 32)
!3107 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3103, file: !1054, line: 16, size: 32, elements: !3108)
!3108 = !{!3109, !3110}
!3109 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3107, file: !1054, line: 18, baseType: !76, size: 32)
!3110 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3107, file: !1054, line: 19, baseType: !1063, size: 32)
!3111 = !{!3112, !3113, !3114, !3115, !3116, !3117, !3118}
!3112 = !DILocalVariable(name: "pwc", arg: 1, scope: !3095, file: !3096, line: 385, type: !3099)
!3113 = !DILocalVariable(name: "s", arg: 2, scope: !3095, file: !3096, line: 385, type: !6)
!3114 = !DILocalVariable(name: "n", arg: 3, scope: !3095, file: !3096, line: 385, type: !111)
!3115 = !DILocalVariable(name: "ps", arg: 4, scope: !3095, file: !3096, line: 385, type: !3100)
!3116 = !DILocalVariable(name: "ret", scope: !3095, file: !3096, line: 387, type: !111)
!3117 = !DILocalVariable(name: "wc", scope: !3095, file: !3096, line: 388, type: !1068)
!3118 = !DILocalVariable(name: "uc", scope: !3119, file: !3096, line: 449, type: !912)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !3096, line: 448, column: 5)
!3120 = distinct !DILexicalBlock(scope: !3095, file: !3096, line: 447, column: 7)
!3121 = !DILocation(line: 385, column: 23, scope: !3095)
!3122 = !DILocation(line: 385, column: 40, scope: !3095)
!3123 = !DILocation(line: 385, column: 50, scope: !3095)
!3124 = !DILocation(line: 385, column: 64, scope: !3095)
!3125 = !DILocation(line: 388, column: 3, scope: !3095)
!3126 = !DILocation(line: 404, column: 9, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3095, file: !3096, line: 404, column: 7)
!3128 = !DILocation(line: 404, column: 7, scope: !3095)
!3129 = !DILocation(line: 439, column: 9, scope: !3095)
!3130 = !DILocation(line: 387, column: 10, scope: !3095)
!3131 = !DILocation(line: 447, column: 19, scope: !3120)
!3132 = !DILocation(line: 447, column: 31, scope: !3120)
!3133 = !DILocation(line: 447, column: 26, scope: !3120)
!3134 = !DILocation(line: 447, column: 41, scope: !3120)
!3135 = !DILocation(line: 447, column: 7, scope: !3095)
!3136 = !DILocation(line: 449, column: 26, scope: !3119)
!3137 = !DILocation(line: 449, column: 21, scope: !3119)
!3138 = !DILocation(line: 450, column: 14, scope: !3119)
!3139 = !DILocation(line: 450, column: 12, scope: !3119)
!3140 = !DILocation(line: 0, scope: !3119)
!3141 = !DILocation(line: 456, column: 1, scope: !3095)
!3142 = distinct !DISubprogram(name: "close_stream", scope: !3143, file: !3143, line: 56, type: !3144, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !197, retainedNodes: !3180)
!3143 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3144 = !DISubroutineType(types: !3145)
!3145 = !{!18, !3146}
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2611, line: 7, baseType: !3148)
!3148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2613, line: 49, size: 1728, elements: !3149)
!3149 = !{!3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159, !3160, !3161, !3162, !3163, !3165, !3166, !3167, !3168, !3169, !3170, !3171, !3172, !3173, !3174, !3175, !3176, !3177, !3178, !3179}
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3148, file: !2613, line: 51, baseType: !18, size: 32)
!3151 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3148, file: !2613, line: 54, baseType: !66, size: 64, offset: 64)
!3152 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3148, file: !2613, line: 55, baseType: !66, size: 64, offset: 128)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3148, file: !2613, line: 56, baseType: !66, size: 64, offset: 192)
!3154 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3148, file: !2613, line: 57, baseType: !66, size: 64, offset: 256)
!3155 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3148, file: !2613, line: 58, baseType: !66, size: 64, offset: 320)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3148, file: !2613, line: 59, baseType: !66, size: 64, offset: 384)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3148, file: !2613, line: 60, baseType: !66, size: 64, offset: 448)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3148, file: !2613, line: 61, baseType: !66, size: 64, offset: 512)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3148, file: !2613, line: 64, baseType: !66, size: 64, offset: 576)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3148, file: !2613, line: 65, baseType: !66, size: 64, offset: 640)
!3161 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3148, file: !2613, line: 66, baseType: !66, size: 64, offset: 704)
!3162 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3148, file: !2613, line: 68, baseType: !2628, size: 64, offset: 768)
!3163 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3148, file: !2613, line: 70, baseType: !3164, size: 64, offset: 832)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3148, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3148, file: !2613, line: 72, baseType: !18, size: 32, offset: 896)
!3166 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3148, file: !2613, line: 73, baseType: !18, size: 32, offset: 928)
!3167 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3148, file: !2613, line: 74, baseType: !2635, size: 64, offset: 960)
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3148, file: !2613, line: 77, baseType: !110, size: 16, offset: 1024)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3148, file: !2613, line: 78, baseType: !2640, size: 8, offset: 1040)
!3170 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3148, file: !2613, line: 79, baseType: !2642, size: 8, offset: 1048)
!3171 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3148, file: !2613, line: 81, baseType: !2644, size: 64, offset: 1088)
!3172 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3148, file: !2613, line: 89, baseType: !2647, size: 64, offset: 1152)
!3173 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3148, file: !2613, line: 91, baseType: !2649, size: 64, offset: 1216)
!3174 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3148, file: !2613, line: 92, baseType: !2652, size: 64, offset: 1280)
!3175 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3148, file: !2613, line: 93, baseType: !3164, size: 64, offset: 1344)
!3176 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3148, file: !2613, line: 94, baseType: !9, size: 64, offset: 1408)
!3177 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3148, file: !2613, line: 95, baseType: !111, size: 64, offset: 1472)
!3178 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3148, file: !2613, line: 96, baseType: !18, size: 32, offset: 1536)
!3179 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3148, file: !2613, line: 98, baseType: !2659, size: 160, offset: 1568)
!3180 = !{!3181, !3182, !3184, !3185}
!3181 = !DILocalVariable(name: "stream", arg: 1, scope: !3142, file: !3143, line: 56, type: !3146)
!3182 = !DILocalVariable(name: "some_pending", scope: !3142, file: !3143, line: 58, type: !3183)
!3183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!3184 = !DILocalVariable(name: "prev_fail", scope: !3142, file: !3143, line: 59, type: !3183)
!3185 = !DILocalVariable(name: "fclose_fail", scope: !3142, file: !3143, line: 60, type: !3183)
!3186 = !DILocation(line: 56, column: 21, scope: !3142)
!3187 = !DILocation(line: 58, column: 30, scope: !3142)
!3188 = !DILocalVariable(name: "__stream", arg: 1, scope: !3189, file: !3190, line: 135, type: !3146)
!3189 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3190, file: !3190, line: 135, type: !3144, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !197, retainedNodes: !3191)
!3190 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3191 = !{!3188}
!3192 = !DILocation(line: 135, column: 1, scope: !3189, inlinedAt: !3193)
!3193 = distinct !DILocation(line: 59, column: 27, scope: !3142)
!3194 = !DILocation(line: 137, column: 10, scope: !3189, inlinedAt: !3193)
!3195 = !{!3196, !703, i64 0}
!3196 = !{!"_IO_FILE", !703, i64 0, !636, i64 8, !636, i64 16, !636, i64 24, !636, i64 32, !636, i64 40, !636, i64 48, !636, i64 56, !636, i64 64, !636, i64 72, !636, i64 80, !636, i64 88, !636, i64 96, !636, i64 104, !703, i64 112, !703, i64 116, !1935, i64 120, !1309, i64 128, !637, i64 130, !637, i64 131, !636, i64 136, !1935, i64 144, !636, i64 152, !636, i64 160, !636, i64 168, !636, i64 176, !1935, i64 184, !703, i64 192, !637, i64 196}
!3197 = !DILocation(line: 59, column: 43, scope: !3142)
!3198 = !DILocation(line: 60, column: 29, scope: !3142)
!3199 = !DILocation(line: 60, column: 45, scope: !3142)
!3200 = !DILocation(line: 70, column: 17, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3142, file: !3143, line: 70, column: 7)
!3202 = !DILocation(line: 58, column: 50, scope: !3142)
!3203 = !DILocation(line: 70, column: 33, scope: !3201)
!3204 = !DILocation(line: 70, column: 53, scope: !3201)
!3205 = !DILocation(line: 70, column: 59, scope: !3201)
!3206 = !DILocation(line: 70, column: 7, scope: !3142)
!3207 = !DILocation(line: 72, column: 11, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3201, file: !3143, line: 71, column: 5)
!3209 = !DILocation(line: 73, column: 9, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3208, file: !3143, line: 72, column: 11)
!3211 = !DILocation(line: 73, column: 15, scope: !3210)
!3212 = !DILocation(line: 0, scope: !3142)
!3213 = !DILocation(line: 78, column: 1, scope: !3142)
!3214 = distinct !DISubprogram(name: "hard_locale", scope: !3215, file: !3215, line: 38, type: !3216, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !199, retainedNodes: !3218)
!3215 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!37, !18}
!3218 = !{!3219, !3220, !3221}
!3219 = !DILocalVariable(name: "category", arg: 1, scope: !3214, file: !3215, line: 38, type: !18)
!3220 = !DILocalVariable(name: "hard", scope: !3214, file: !3215, line: 40, type: !37)
!3221 = !DILocalVariable(name: "p", scope: !3214, file: !3215, line: 41, type: !6)
!3222 = !DILocation(line: 38, column: 18, scope: !3214)
!3223 = !DILocation(line: 40, column: 8, scope: !3214)
!3224 = !DILocation(line: 41, column: 19, scope: !3214)
!3225 = !DILocation(line: 41, column: 15, scope: !3214)
!3226 = !DILocation(line: 43, column: 7, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3214, file: !3215, line: 43, column: 7)
!3228 = !DILocation(line: 43, column: 7, scope: !3214)
!3229 = !DILocation(line: 47, column: 15, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3231, file: !3215, line: 47, column: 15)
!3231 = distinct !DILexicalBlock(scope: !3232, file: !3215, line: 46, column: 9)
!3232 = distinct !DILexicalBlock(scope: !3233, file: !3215, line: 45, column: 11)
!3233 = distinct !DILexicalBlock(scope: !3227, file: !3215, line: 44, column: 5)
!3234 = !DILocation(line: 47, column: 31, scope: !3230)
!3235 = !DILocation(line: 47, column: 36, scope: !3230)
!3236 = !DILocation(line: 47, column: 39, scope: !3230)
!3237 = !DILocation(line: 47, column: 59, scope: !3230)
!3238 = !DILocation(line: 47, column: 15, scope: !3231)
!3239 = !DILocation(line: 48, column: 13, scope: !3230)
!3240 = !DILocation(line: 71, column: 3, scope: !3214)
!3241 = distinct !DISubprogram(name: "locale_charset", scope: !3242, file: !3242, line: 687, type: !3243, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !3245)
!3242 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3243 = !DISubroutineType(types: !3244)
!3244 = !{!6}
!3245 = !{!3246}
!3246 = !DILocalVariable(name: "codeset", scope: !3241, file: !3242, line: 689, type: !6)
!3247 = !DILocation(line: 696, column: 13, scope: !3241)
!3248 = !DILocation(line: 689, column: 15, scope: !3241)
!3249 = !DILocation(line: 754, column: 15, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3241, file: !3242, line: 754, column: 7)
!3251 = !DILocation(line: 754, column: 7, scope: !3241)
!3252 = !DILocation(line: 907, column: 13, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3254, file: !3242, line: 907, column: 13)
!3254 = distinct !DILexicalBlock(scope: !3255, file: !3242, line: 897, column: 7)
!3255 = distinct !DILexicalBlock(scope: !3241, file: !3242, line: 856, column: 3)
!3256 = !DILocation(line: 907, column: 24, scope: !3253)
!3257 = !DILocation(line: 907, column: 13, scope: !3254)
!3258 = !DILocation(line: 995, column: 3, scope: !3241)
!3259 = distinct !DISubprogram(name: "rpl_fclose", scope: !3260, file: !3260, line: 58, type: !3261, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !590, retainedNodes: !3297)
!3260 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3261 = !DISubroutineType(types: !3262)
!3262 = !{!18, !3263}
!3263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3264, size: 64)
!3264 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2611, line: 7, baseType: !3265)
!3265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2613, line: 49, size: 1728, elements: !3266)
!3266 = !{!3267, !3268, !3269, !3270, !3271, !3272, !3273, !3274, !3275, !3276, !3277, !3278, !3279, !3280, !3282, !3283, !3284, !3285, !3286, !3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3295, !3296}
!3267 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3265, file: !2613, line: 51, baseType: !18, size: 32)
!3268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3265, file: !2613, line: 54, baseType: !66, size: 64, offset: 64)
!3269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3265, file: !2613, line: 55, baseType: !66, size: 64, offset: 128)
!3270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3265, file: !2613, line: 56, baseType: !66, size: 64, offset: 192)
!3271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3265, file: !2613, line: 57, baseType: !66, size: 64, offset: 256)
!3272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3265, file: !2613, line: 58, baseType: !66, size: 64, offset: 320)
!3273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3265, file: !2613, line: 59, baseType: !66, size: 64, offset: 384)
!3274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3265, file: !2613, line: 60, baseType: !66, size: 64, offset: 448)
!3275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3265, file: !2613, line: 61, baseType: !66, size: 64, offset: 512)
!3276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3265, file: !2613, line: 64, baseType: !66, size: 64, offset: 576)
!3277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3265, file: !2613, line: 65, baseType: !66, size: 64, offset: 640)
!3278 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3265, file: !2613, line: 66, baseType: !66, size: 64, offset: 704)
!3279 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3265, file: !2613, line: 68, baseType: !2628, size: 64, offset: 768)
!3280 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3265, file: !2613, line: 70, baseType: !3281, size: 64, offset: 832)
!3281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3265, size: 64)
!3282 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3265, file: !2613, line: 72, baseType: !18, size: 32, offset: 896)
!3283 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3265, file: !2613, line: 73, baseType: !18, size: 32, offset: 928)
!3284 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3265, file: !2613, line: 74, baseType: !2635, size: 64, offset: 960)
!3285 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3265, file: !2613, line: 77, baseType: !110, size: 16, offset: 1024)
!3286 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3265, file: !2613, line: 78, baseType: !2640, size: 8, offset: 1040)
!3287 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3265, file: !2613, line: 79, baseType: !2642, size: 8, offset: 1048)
!3288 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3265, file: !2613, line: 81, baseType: !2644, size: 64, offset: 1088)
!3289 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3265, file: !2613, line: 89, baseType: !2647, size: 64, offset: 1152)
!3290 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3265, file: !2613, line: 91, baseType: !2649, size: 64, offset: 1216)
!3291 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3265, file: !2613, line: 92, baseType: !2652, size: 64, offset: 1280)
!3292 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3265, file: !2613, line: 93, baseType: !3281, size: 64, offset: 1344)
!3293 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3265, file: !2613, line: 94, baseType: !9, size: 64, offset: 1408)
!3294 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3265, file: !2613, line: 95, baseType: !111, size: 64, offset: 1472)
!3295 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3265, file: !2613, line: 96, baseType: !18, size: 32, offset: 1536)
!3296 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3265, file: !2613, line: 98, baseType: !2659, size: 160, offset: 1568)
!3297 = !{!3298, !3299, !3300, !3301}
!3298 = !DILocalVariable(name: "fp", arg: 1, scope: !3259, file: !3260, line: 58, type: !3263)
!3299 = !DILocalVariable(name: "saved_errno", scope: !3259, file: !3260, line: 60, type: !18)
!3300 = !DILocalVariable(name: "fd", scope: !3259, file: !3260, line: 61, type: !18)
!3301 = !DILocalVariable(name: "result", scope: !3259, file: !3260, line: 62, type: !18)
!3302 = !DILocation(line: 58, column: 19, scope: !3259)
!3303 = !DILocation(line: 60, column: 7, scope: !3259)
!3304 = !DILocation(line: 62, column: 7, scope: !3259)
!3305 = !DILocation(line: 65, column: 8, scope: !3259)
!3306 = !DILocation(line: 61, column: 7, scope: !3259)
!3307 = !DILocation(line: 66, column: 10, scope: !3308)
!3308 = distinct !DILexicalBlock(scope: !3259, file: !3260, line: 66, column: 7)
!3309 = !DILocation(line: 66, column: 7, scope: !3259)
!3310 = !DILocation(line: 67, column: 12, scope: !3308)
!3311 = !DILocation(line: 67, column: 5, scope: !3308)
!3312 = !DILocation(line: 72, column: 9, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3259, file: !3260, line: 72, column: 7)
!3314 = !DILocation(line: 72, column: 23, scope: !3313)
!3315 = !DILocation(line: 72, column: 33, scope: !3313)
!3316 = !DILocation(line: 72, column: 26, scope: !3313)
!3317 = !DILocation(line: 72, column: 59, scope: !3313)
!3318 = !DILocation(line: 73, column: 7, scope: !3313)
!3319 = !DILocation(line: 73, column: 10, scope: !3313)
!3320 = !DILocation(line: 72, column: 7, scope: !3259)
!3321 = !DILocation(line: 100, column: 12, scope: !3259)
!3322 = !DILocation(line: 105, column: 7, scope: !3259)
!3323 = !DILocation(line: 74, column: 19, scope: !3313)
!3324 = !DILocation(line: 105, column: 19, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3259, file: !3260, line: 105, column: 7)
!3326 = !DILocation(line: 107, column: 13, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3325, file: !3260, line: 106, column: 5)
!3328 = !DILocation(line: 109, column: 5, scope: !3327)
!3329 = !DILocation(line: 0, scope: !3259)
!3330 = !DILocation(line: 112, column: 1, scope: !3259)
!3331 = distinct !DISubprogram(name: "rpl_fflush", scope: !3332, file: !3332, line: 129, type: !3333, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !592, retainedNodes: !3369)
!3332 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!18, !3335}
!3335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3336, size: 64)
!3336 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2611, line: 7, baseType: !3337)
!3337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2613, line: 49, size: 1728, elements: !3338)
!3338 = !{!3339, !3340, !3341, !3342, !3343, !3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352, !3354, !3355, !3356, !3357, !3358, !3359, !3360, !3361, !3362, !3363, !3364, !3365, !3366, !3367, !3368}
!3339 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3337, file: !2613, line: 51, baseType: !18, size: 32)
!3340 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3337, file: !2613, line: 54, baseType: !66, size: 64, offset: 64)
!3341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3337, file: !2613, line: 55, baseType: !66, size: 64, offset: 128)
!3342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3337, file: !2613, line: 56, baseType: !66, size: 64, offset: 192)
!3343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3337, file: !2613, line: 57, baseType: !66, size: 64, offset: 256)
!3344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3337, file: !2613, line: 58, baseType: !66, size: 64, offset: 320)
!3345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3337, file: !2613, line: 59, baseType: !66, size: 64, offset: 384)
!3346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3337, file: !2613, line: 60, baseType: !66, size: 64, offset: 448)
!3347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3337, file: !2613, line: 61, baseType: !66, size: 64, offset: 512)
!3348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3337, file: !2613, line: 64, baseType: !66, size: 64, offset: 576)
!3349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3337, file: !2613, line: 65, baseType: !66, size: 64, offset: 640)
!3350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3337, file: !2613, line: 66, baseType: !66, size: 64, offset: 704)
!3351 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3337, file: !2613, line: 68, baseType: !2628, size: 64, offset: 768)
!3352 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3337, file: !2613, line: 70, baseType: !3353, size: 64, offset: 832)
!3353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3337, size: 64)
!3354 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3337, file: !2613, line: 72, baseType: !18, size: 32, offset: 896)
!3355 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3337, file: !2613, line: 73, baseType: !18, size: 32, offset: 928)
!3356 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3337, file: !2613, line: 74, baseType: !2635, size: 64, offset: 960)
!3357 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3337, file: !2613, line: 77, baseType: !110, size: 16, offset: 1024)
!3358 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3337, file: !2613, line: 78, baseType: !2640, size: 8, offset: 1040)
!3359 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3337, file: !2613, line: 79, baseType: !2642, size: 8, offset: 1048)
!3360 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3337, file: !2613, line: 81, baseType: !2644, size: 64, offset: 1088)
!3361 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3337, file: !2613, line: 89, baseType: !2647, size: 64, offset: 1152)
!3362 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3337, file: !2613, line: 91, baseType: !2649, size: 64, offset: 1216)
!3363 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3337, file: !2613, line: 92, baseType: !2652, size: 64, offset: 1280)
!3364 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3337, file: !2613, line: 93, baseType: !3353, size: 64, offset: 1344)
!3365 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3337, file: !2613, line: 94, baseType: !9, size: 64, offset: 1408)
!3366 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3337, file: !2613, line: 95, baseType: !111, size: 64, offset: 1472)
!3367 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3337, file: !2613, line: 96, baseType: !18, size: 32, offset: 1536)
!3368 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3337, file: !2613, line: 98, baseType: !2659, size: 160, offset: 1568)
!3369 = !{!3370}
!3370 = !DILocalVariable(name: "stream", arg: 1, scope: !3331, file: !3332, line: 129, type: !3335)
!3371 = !DILocation(line: 129, column: 19, scope: !3331)
!3372 = !DILocation(line: 150, column: 14, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3331, file: !3332, line: 150, column: 7)
!3374 = !DILocation(line: 150, column: 22, scope: !3373)
!3375 = !DILocation(line: 150, column: 27, scope: !3373)
!3376 = !DILocation(line: 150, column: 7, scope: !3331)
!3377 = !DILocation(line: 151, column: 12, scope: !3373)
!3378 = !DILocation(line: 151, column: 5, scope: !3373)
!3379 = !DILocalVariable(name: "fp", arg: 1, scope: !3380, file: !3332, line: 41, type: !3335)
!3380 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3332, file: !3332, line: 41, type: !3381, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !592, retainedNodes: !3383)
!3381 = !DISubroutineType(types: !3382)
!3382 = !{null, !3335}
!3383 = !{!3379}
!3384 = !DILocation(line: 41, column: 48, scope: !3380, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 156, column: 3, scope: !3331)
!3386 = !DILocation(line: 43, column: 11, scope: !3387, inlinedAt: !3385)
!3387 = distinct !DILexicalBlock(scope: !3380, file: !3332, line: 43, column: 7)
!3388 = !DILocation(line: 43, column: 18, scope: !3387, inlinedAt: !3385)
!3389 = !DILocation(line: 43, column: 7, scope: !3380, inlinedAt: !3385)
!3390 = !DILocation(line: 45, column: 5, scope: !3387, inlinedAt: !3385)
!3391 = !DILocation(line: 158, column: 10, scope: !3331)
!3392 = !DILocation(line: 158, column: 3, scope: !3331)
!3393 = !DILocation(line: 0, scope: !3331)
!3394 = !DILocation(line: 232, column: 1, scope: !3331)
!3395 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3396, file: !3396, line: 28, type: !3397, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !594, retainedNodes: !3434)
!3396 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3397 = !DISubroutineType(types: !3398)
!3398 = !{!18, !3399, !3433, !18}
!3399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3400, size: 64)
!3400 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !2611, line: 7, baseType: !3401)
!3401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !2613, line: 49, size: 1728, elements: !3402)
!3402 = !{!3403, !3404, !3405, !3406, !3407, !3408, !3409, !3410, !3411, !3412, !3413, !3414, !3415, !3416, !3418, !3419, !3420, !3421, !3422, !3423, !3424, !3425, !3426, !3427, !3428, !3429, !3430, !3431, !3432}
!3403 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3401, file: !2613, line: 51, baseType: !18, size: 32)
!3404 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3401, file: !2613, line: 54, baseType: !66, size: 64, offset: 64)
!3405 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3401, file: !2613, line: 55, baseType: !66, size: 64, offset: 128)
!3406 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3401, file: !2613, line: 56, baseType: !66, size: 64, offset: 192)
!3407 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3401, file: !2613, line: 57, baseType: !66, size: 64, offset: 256)
!3408 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3401, file: !2613, line: 58, baseType: !66, size: 64, offset: 320)
!3409 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3401, file: !2613, line: 59, baseType: !66, size: 64, offset: 384)
!3410 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3401, file: !2613, line: 60, baseType: !66, size: 64, offset: 448)
!3411 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3401, file: !2613, line: 61, baseType: !66, size: 64, offset: 512)
!3412 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3401, file: !2613, line: 64, baseType: !66, size: 64, offset: 576)
!3413 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3401, file: !2613, line: 65, baseType: !66, size: 64, offset: 640)
!3414 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3401, file: !2613, line: 66, baseType: !66, size: 64, offset: 704)
!3415 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3401, file: !2613, line: 68, baseType: !2628, size: 64, offset: 768)
!3416 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3401, file: !2613, line: 70, baseType: !3417, size: 64, offset: 832)
!3417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3401, size: 64)
!3418 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3401, file: !2613, line: 72, baseType: !18, size: 32, offset: 896)
!3419 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3401, file: !2613, line: 73, baseType: !18, size: 32, offset: 928)
!3420 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3401, file: !2613, line: 74, baseType: !2635, size: 64, offset: 960)
!3421 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3401, file: !2613, line: 77, baseType: !110, size: 16, offset: 1024)
!3422 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3401, file: !2613, line: 78, baseType: !2640, size: 8, offset: 1040)
!3423 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3401, file: !2613, line: 79, baseType: !2642, size: 8, offset: 1048)
!3424 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3401, file: !2613, line: 81, baseType: !2644, size: 64, offset: 1088)
!3425 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3401, file: !2613, line: 89, baseType: !2647, size: 64, offset: 1152)
!3426 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3401, file: !2613, line: 91, baseType: !2649, size: 64, offset: 1216)
!3427 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3401, file: !2613, line: 92, baseType: !2652, size: 64, offset: 1280)
!3428 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3401, file: !2613, line: 93, baseType: !3417, size: 64, offset: 1344)
!3429 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3401, file: !2613, line: 94, baseType: !9, size: 64, offset: 1408)
!3430 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3401, file: !2613, line: 95, baseType: !111, size: 64, offset: 1472)
!3431 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3401, file: !2613, line: 96, baseType: !18, size: 32, offset: 1536)
!3432 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3401, file: !2613, line: 98, baseType: !2659, size: 160, offset: 1568)
!3433 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !788, line: 63, baseType: !2635)
!3434 = !{!3435, !3436, !3437, !3438}
!3435 = !DILocalVariable(name: "fp", arg: 1, scope: !3395, file: !3396, line: 28, type: !3399)
!3436 = !DILocalVariable(name: "offset", arg: 2, scope: !3395, file: !3396, line: 28, type: !3433)
!3437 = !DILocalVariable(name: "whence", arg: 3, scope: !3395, file: !3396, line: 28, type: !18)
!3438 = !DILocalVariable(name: "pos", scope: !3439, file: !3396, line: 117, type: !3433)
!3439 = distinct !DILexicalBlock(scope: !3440, file: !3396, line: 113, column: 5)
!3440 = distinct !DILexicalBlock(scope: !3395, file: !3396, line: 52, column: 7)
!3441 = !DILocation(line: 28, column: 15, scope: !3395)
!3442 = !DILocation(line: 28, column: 25, scope: !3395)
!3443 = !DILocation(line: 28, column: 37, scope: !3395)
!3444 = !DILocation(line: 52, column: 11, scope: !3440)
!3445 = !{!3196, !636, i64 16}
!3446 = !DILocation(line: 52, column: 31, scope: !3440)
!3447 = !{!3196, !636, i64 8}
!3448 = !DILocation(line: 52, column: 24, scope: !3440)
!3449 = !DILocation(line: 53, column: 7, scope: !3440)
!3450 = !DILocation(line: 53, column: 14, scope: !3440)
!3451 = !{!3196, !636, i64 40}
!3452 = !DILocation(line: 53, column: 35, scope: !3440)
!3453 = !{!3196, !636, i64 32}
!3454 = !DILocation(line: 53, column: 28, scope: !3440)
!3455 = !DILocation(line: 54, column: 7, scope: !3440)
!3456 = !DILocation(line: 54, column: 14, scope: !3440)
!3457 = !{!3196, !636, i64 72}
!3458 = !DILocation(line: 54, column: 28, scope: !3440)
!3459 = !DILocation(line: 52, column: 7, scope: !3395)
!3460 = !DILocation(line: 117, column: 26, scope: !3439)
!3461 = !DILocation(line: 117, column: 19, scope: !3439)
!3462 = !DILocation(line: 117, column: 13, scope: !3439)
!3463 = !DILocation(line: 118, column: 15, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3439, file: !3396, line: 118, column: 11)
!3465 = !DILocation(line: 118, column: 11, scope: !3439)
!3466 = !DILocation(line: 129, column: 11, scope: !3439)
!3467 = !DILocation(line: 129, column: 18, scope: !3439)
!3468 = !DILocation(line: 130, column: 11, scope: !3439)
!3469 = !DILocation(line: 130, column: 19, scope: !3439)
!3470 = !{!3196, !1935, i64 144}
!3471 = !DILocation(line: 161, column: 7, scope: !3439)
!3472 = !DILocation(line: 163, column: 10, scope: !3395)
!3473 = !DILocation(line: 163, column: 3, scope: !3395)
!3474 = !DILocation(line: 0, scope: !3395)
!3475 = !DILocation(line: 164, column: 1, scope: !3395)
