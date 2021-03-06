; ModuleID = 'coreutils-8.30/src/nice.bc'
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
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Usage: %s [OPTION] [COMMAND [ARG]...]\0A\00", align 1
@.str.2 = private unnamed_addr constant [222 x i8] c"Run COMMAND with an adjusted niceness, which affects process scheduling.\0AWith no COMMAND, print the current niceness.  Niceness values range from\0A%d (most favorable to the process) to %d (least favorable to the process).\0A\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"\0AMandatory arguments to long options are mandatory for short options too.\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [67 x i8] c"  -n, --adjustment=N   add integer N to the niceness (default 10)\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.22, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.26, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.25, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.21 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.29 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.30 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.32 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.27 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.10 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"+n:\00", align 1
@longopts = internal constant [4 x %struct.option] [%struct.option { i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.36, i32 0, i32 0), i32 1, i32* null, i32 110 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.37, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@optarg = external local_unnamed_addr global i8*, align 8
@.str.13 = private unnamed_addr constant [16 x i8] c"David MacKenzie\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"invalid adjustment %s\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"a command must be given with an adjustment\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"cannot get niceness\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"cannot set niceness\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.36 = private unnamed_addr constant [11 x i8] c"adjustment\00", align 1
@.str.37 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.39, i64 0, i64 0), align 8, !dbg !78
@.str.39 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !84
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !89
@.str.42 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.43 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.44 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !92
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !99
@.str.51 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.52 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.53 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.55, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.56, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.57, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.58, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.62, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.63, i32 0, i32 0), i8* null], align 16, !dbg !106
@.str.54 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.55 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.56 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.57 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.58 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.59 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.60 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.61 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.62 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.63 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !151
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !158
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !170
@.str.11.64 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.65 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.66 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.67 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.68 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.69 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.70 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !177
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !184
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !172
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !186
@.str.75 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.76 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.77 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.78 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.79 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.80 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.81 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.82 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.83 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.84 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.85 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.86 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.87 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.88 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.91 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.92 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.93 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.94 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.95 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.96 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !192
@.str.1.107 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.111 = private unnamed_addr constant [38 x i8] c"0 <= strtol_base && strtol_base <= 36\00", align 1
@.str.1.112 = private unnamed_addr constant [14 x i8] c"lib/xstrtol.c\00", align 1
@__PRETTY_FUNCTION__.xstrtol = private unnamed_addr constant [71 x i8] c"strtol_error xstrtol(const char *, char **, int, long *, const char *)\00", align 1
@.str.121 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.122 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.125 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.126 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !641 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !646, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.value(metadata i32 %0, metadata !645, metadata !DIExpression()), !dbg !668
  %3 = icmp eq i32 %0, 0, !dbg !669
  br i1 %3, label %9, label %4, !dbg !670

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !671, !tbaa !673
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #10, !dbg !671
  %7 = load i8*, i8** @program_name, align 8, !dbg !671, !tbaa !673
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #10, !dbg !671
  br label %64, !dbg !671

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 5) #10, !dbg !677
  %11 = load i8*, i8** @program_name, align 8, !dbg !677, !tbaa !673
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #10, !dbg !677
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([222 x i8], [222 x i8]* @.str.2, i64 0, i64 0), i32 5) #10, !dbg !678
  %14 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %13, i32 -20, i32 19) #10, !dbg !678
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.20, i64 0, i64 0), i32 5) #10, !dbg !679
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !679, !tbaa !673
  %17 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %16) #10, !dbg !679
  %18 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i32 5) #10, !dbg !684
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !684, !tbaa !673
  %20 = tail call i32 @fputs_unlocked(i8* %18, %struct._IO_FILE* %19), !dbg !684
  %21 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #10, !dbg !685
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !685, !tbaa !673
  %23 = tail call i32 @fputs_unlocked(i8* %21, %struct._IO_FILE* %22), !dbg !685
  %24 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #10, !dbg !686
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !686, !tbaa !673
  %26 = tail call i32 @fputs_unlocked(i8* %24, %struct._IO_FILE* %25), !dbg !686
  %27 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.6, i64 0, i64 0), i32 5) #10, !dbg !687
  %28 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !687
  %29 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !688
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %29) #10, !dbg !688
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %29, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #10, !dbg !664
  %30 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !689
  call void @llvm.dbg.value(metadata %struct.infomap* %30, metadata !653, metadata !DIExpression()) #10, !dbg !690
  br label %31, !dbg !691

; <label>:31:                                     ; preds = %36, %9
  %32 = phi i8* [ %39, %36 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), %9 ]
  %33 = phi %struct.infomap* [ %37, %36 ], [ %30, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %33, metadata !653, metadata !DIExpression()) #10, !dbg !690
  %34 = tail call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* nonnull %32) #14, !dbg !691
  %35 = icmp eq i32 %34, 0, !dbg !691
  br i1 %35, label %41, label %36, !dbg !692

; <label>:36:                                     ; preds = %31
  %37 = getelementptr inbounds %struct.infomap, %struct.infomap* %33, i64 1, !dbg !693
  call void @llvm.dbg.value(metadata %struct.infomap* %37, metadata !653, metadata !DIExpression()) #10, !dbg !690
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %37, i64 0, i32 0, !dbg !694
  %39 = load i8*, i8** %38, align 8, !dbg !694, !tbaa !695
  %40 = icmp eq i8* %39, null, !dbg !697
  br i1 %40, label %41, label %31, !dbg !698, !llvm.loop !699

; <label>:41:                                     ; preds = %36, %31
  %42 = phi %struct.infomap* [ %37, %36 ], [ %33, %31 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !653, metadata !DIExpression()) #10, !dbg !690
  call void @llvm.dbg.value(metadata %struct.infomap* %42, metadata !653, metadata !DIExpression()) #10, !dbg !690
  %43 = getelementptr inbounds %struct.infomap, %struct.infomap* %42, i64 0, i32 1, !dbg !702
  %44 = load i8*, i8** %43, align 8, !dbg !702, !tbaa !704
  %45 = icmp eq i8* %44, null, !dbg !705
  %46 = select i1 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* %44, !dbg !706
  call void @llvm.dbg.value(metadata i8* %46, metadata !652, metadata !DIExpression()) #10, !dbg !707
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.29, i64 0, i64 0), i32 5) #10, !dbg !708
  %48 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0)) #10, !dbg !708
  %49 = tail call i8* @setlocale(i32 5, i8* null) #10, !dbg !709
  call void @llvm.dbg.value(metadata i8* %49, metadata !660, metadata !DIExpression()) #10, !dbg !710
  %50 = icmp eq i8* %49, null, !dbg !711
  br i1 %50, label %57, label %51, !dbg !713

; <label>:51:                                     ; preds = %41
  %52 = tail call i32 @strncmp(i8* nonnull %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3) #14, !dbg !714
  %53 = icmp eq i32 %52, 0, !dbg !714
  br i1 %53, label %57, label %54, !dbg !715

; <label>:54:                                     ; preds = %51
  %55 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.32, i64 0, i64 0), i32 5) #10, !dbg !716
  %56 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !716
  br label %57, !dbg !718

; <label>:57:                                     ; preds = %41, %51, %54
  %58 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0), i32 5) #10, !dbg !719
  %59 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %58, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !719
  %60 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.34, i64 0, i64 0), i32 5) #10, !dbg !720
  %61 = icmp eq i8* %46, getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), !dbg !720
  %62 = select i1 %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0), !dbg !720
  %63 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %60, i8* %46, i8* %62) #10, !dbg !720
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %29) #10, !dbg !721
  br label %64

; <label>:64:                                     ; preds = %57, %4
  tail call void @exit(i32 %0) #15, !dbg !722
  unreachable, !dbg !722
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !22 {
  %3 = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !30, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i8** %1, metadata !31, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.value(metadata i32 10, metadata !33, metadata !DIExpression()), !dbg !725
  call void @llvm.dbg.value(metadata i8* null, metadata !34, metadata !DIExpression()), !dbg !726
  %4 = load i8*, i8** %1, align 8, !dbg !727, !tbaa !673
  tail call void @set_program_name(i8* %4) #10, !dbg !728
  %5 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !729
  %6 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !730
  %7 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !731
  call void @llvm.dbg.value(metadata i32 125, metadata !732, metadata !DIExpression()), !dbg !735
  store volatile i32 125, i32* @exit_failure, align 4, !dbg !737, !tbaa !739
  %8 = tail call i32 @atexit(void ()* nonnull @close_stdout) #10, !dbg !741
  call void @llvm.dbg.value(metadata i32 1, metadata !39, metadata !DIExpression()), !dbg !742
  call void @llvm.dbg.value(metadata i8* null, metadata !34, metadata !DIExpression()), !dbg !726
  %9 = icmp sgt i32 %0, 1, !dbg !743
  br i1 %9, label %10, label %73, !dbg !744

; <label>:10:                                     ; preds = %2
  %11 = bitcast i8** %1 to i64*
  br label %12, !dbg !744

; <label>:12:                                     ; preds = %10, %51
  %13 = phi i8* [ null, %10 ], [ %53, %51 ]
  %14 = phi i32 [ 1, %10 ], [ %52, %51 ]
  call void @llvm.dbg.value(metadata i8* %13, metadata !34, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i32 %14, metadata !39, metadata !DIExpression()), !dbg !742
  %15 = sext i32 %14 to i64, !dbg !745
  %16 = getelementptr inbounds i8*, i8** %1, i64 %15, !dbg !745
  %17 = load i8*, i8** %16, align 8, !dbg !745, !tbaa !673
  call void @llvm.dbg.value(metadata i8* %17, metadata !40, metadata !DIExpression()), !dbg !746
  %18 = load i8, i8* %17, align 1, !dbg !747, !tbaa !748
  %19 = icmp eq i8 %18, 45, !dbg !749
  br i1 %19, label %20, label %34, !dbg !750

; <label>:20:                                     ; preds = %12
  %21 = getelementptr inbounds i8, i8* %17, i64 1, !dbg !751
  %22 = load i8, i8* %21, align 1, !dbg !751, !tbaa !748
  %23 = icmp eq i8 %22, 45, !dbg !751
  %24 = icmp eq i8 %22, 43, !dbg !751
  %25 = or i1 %23, %24, !dbg !751
  %26 = select i1 %25, i64 2, i64 1, !dbg !751
  %27 = getelementptr inbounds i8, i8* %17, i64 %26, !dbg !751
  %28 = load i8, i8* %27, align 1, !dbg !751, !tbaa !748
  %29 = sext i8 %28 to i32, !dbg !751
  %30 = add nsw i32 %29, -48, !dbg !751
  %31 = icmp ult i32 %30, 10, !dbg !751
  br i1 %31, label %32, label %34, !dbg !752

; <label>:32:                                     ; preds = %20
  call void @llvm.dbg.value(metadata i8* %21, metadata !34, metadata !DIExpression()), !dbg !726
  %33 = add nsw i32 %14, 1, !dbg !753
  call void @llvm.dbg.value(metadata i32 %33, metadata !39, metadata !DIExpression()), !dbg !742
  br label %51, !dbg !755

; <label>:34:                                     ; preds = %20, %12
  %35 = add i32 %14, -1, !dbg !756
  %36 = sub nsw i32 %0, %35, !dbg !757
  call void @llvm.dbg.value(metadata i32 %36, metadata !47, metadata !DIExpression()), !dbg !758
  %37 = sext i32 %35 to i64, !dbg !759
  %38 = getelementptr inbounds i8*, i8** %1, i64 %37, !dbg !759
  call void @llvm.dbg.value(metadata i8** %38, metadata !48, metadata !DIExpression()), !dbg !760
  %39 = load i64, i64* %11, align 8, !dbg !761, !tbaa !673
  %40 = bitcast i8** %38 to i64*, !dbg !762
  store i64 %39, i64* %40, align 8, !dbg !762, !tbaa !673
  store i32 0, i32* @optind, align 4, !dbg !763, !tbaa !739
  %41 = tail call i32 @getopt_long(i32 %36, i8** %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), %struct.option* getelementptr inbounds ([4 x %struct.option], [4 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #10, !dbg !764
  call void @llvm.dbg.value(metadata i32 %41, metadata !44, metadata !DIExpression()), !dbg !765
  %42 = load i32, i32* @optind, align 4, !dbg !766, !tbaa !739
  %43 = add i32 %35, %42, !dbg !767
  call void @llvm.dbg.value(metadata i32 %43, metadata !39, metadata !DIExpression()), !dbg !742
  switch i32 %41, label %50 [
    i32 110, label %44
    i32 -1, label %55
    i32 -130, label %46
    i32 -131, label %47
  ], !dbg !768

; <label>:44:                                     ; preds = %34
  %45 = load i8*, i8** @optarg, align 8, !dbg !769, !tbaa !673
  call void @llvm.dbg.value(metadata i8* %45, metadata !34, metadata !DIExpression()), !dbg !726
  br label %51

; <label>:46:                                     ; preds = %34
  tail call void @usage(i32 0) #16, !dbg !771
  unreachable, !dbg !771

; <label>:47:                                     ; preds = %34
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !772, !tbaa !673
  %49 = load i8*, i8** @Version, align 8, !dbg !772, !tbaa !673
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i8* %49, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i8* null) #10, !dbg !772
  tail call void @exit(i32 0) #15, !dbg !772
  unreachable, !dbg !772

; <label>:50:                                     ; preds = %34
  tail call void @usage(i32 125) #16, !dbg !773
  unreachable, !dbg !773

; <label>:51:                                     ; preds = %32, %44
  %52 = phi i32 [ %33, %32 ], [ %43, %44 ], !dbg !774
  %53 = phi i8* [ %21, %32 ], [ %45, %44 ], !dbg !775
  call void @llvm.dbg.value(metadata i8* %53, metadata !34, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i32 %52, metadata !39, metadata !DIExpression()), !dbg !742
  %54 = icmp slt i32 %52, %0, !dbg !743
  br i1 %54, label %12, label %55, !dbg !744

; <label>:55:                                     ; preds = %51, %34
  %56 = phi i8* [ %53, %51 ], [ %13, %34 ], !dbg !776
  %57 = phi i32 [ %52, %51 ], [ %43, %34 ], !dbg !777
  call void @llvm.dbg.value(metadata i8* %56, metadata !34, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8* %56, metadata !34, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i8* undef, metadata !34, metadata !DIExpression()), !dbg !726
  call void @llvm.dbg.value(metadata i32 %57, metadata !39, metadata !DIExpression()), !dbg !742
  %58 = icmp eq i8* %56, null, !dbg !778
  br i1 %58, label %73, label %59, !dbg !779

; <label>:59:                                     ; preds = %55
  %60 = bitcast i64* %3 to i8*, !dbg !780
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %60) #10, !dbg !780
  call void @llvm.dbg.value(metadata i64* %3, metadata !49, metadata !DIExpression(DW_OP_deref)), !dbg !781
  %61 = call i32 @xstrtol(i8* nonnull %56, i8** null, i32 10, i64* nonnull %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !782
  %62 = icmp ugt i32 %61, 1, !dbg !784
  br i1 %62, label %63, label %66, !dbg !785

; <label>:63:                                     ; preds = %59
  %64 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i32 5) #10, !dbg !786
  %65 = call i8* @quote(i8* nonnull %56) #10, !dbg !786
  call void (i32, i32, i8*, ...) @error(i32 125, i32 0, i8* %64, i8* %65) #10, !dbg !786
  unreachable, !dbg !786

; <label>:66:                                     ; preds = %59
  %67 = load i64, i64* %3, align 8, !dbg !787, !tbaa !788
  call void @llvm.dbg.value(metadata i64 %67, metadata !49, metadata !DIExpression()), !dbg !781
  %68 = icmp slt i64 %67, 39, !dbg !787
  %69 = select i1 %68, i64 %67, i64 39, !dbg !787
  %70 = icmp sgt i64 %69, -39, !dbg !787
  %71 = select i1 %70, i64 %69, i64 -39, !dbg !787
  %72 = trunc i64 %71 to i32, !dbg !787
  call void @llvm.dbg.value(metadata i32 %72, metadata !33, metadata !DIExpression()), !dbg !725
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %60) #10, !dbg !790
  br label %73, !dbg !791

; <label>:73:                                     ; preds = %55, %2, %66
  %74 = phi i1 [ true, %66 ], [ false, %55 ], [ false, %2 ]
  %75 = phi i32 [ %57, %66 ], [ %57, %55 ], [ 1, %2 ]
  %76 = phi i32 [ %72, %66 ], [ 10, %55 ], [ 10, %2 ], !dbg !775
  call void @llvm.dbg.value(metadata i32 %76, metadata !33, metadata !DIExpression()), !dbg !725
  %77 = icmp eq i32 %75, %0, !dbg !792
  br i1 %77, label %78, label %92, !dbg !794

; <label>:78:                                     ; preds = %73
  br i1 %74, label %79, label %81, !dbg !795

; <label>:79:                                     ; preds = %78
  %80 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0), i32 5) #10, !dbg !797
  call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %80) #10, !dbg !800
  call void @usage(i32 125) #16, !dbg !801
  unreachable, !dbg !801

; <label>:81:                                     ; preds = %78
  %82 = tail call i32* @__errno_location() #17, !dbg !802
  store i32 0, i32* %82, align 4, !dbg !803, !tbaa !739
  %83 = call i32 @getpriority(i32 0, i32 0) #10, !dbg !804
  call void @llvm.dbg.value(metadata i32 %83, metadata !32, metadata !DIExpression()), !dbg !805
  %84 = icmp eq i32 %83, -1, !dbg !806
  br i1 %84, label %85, label %90, !dbg !808

; <label>:85:                                     ; preds = %81
  %86 = load i32, i32* %82, align 4, !dbg !809, !tbaa !739
  %87 = icmp eq i32 %86, 0, !dbg !810
  br i1 %87, label %90, label %88, !dbg !811

; <label>:88:                                     ; preds = %85
  %89 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !812
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %86, i8* %89) #10, !dbg !812
  unreachable, !dbg !812

; <label>:90:                                     ; preds = %85, %81
  %91 = call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i64 0, i64 0), i32 %83) #10, !dbg !813
  br label %127, !dbg !814

; <label>:92:                                     ; preds = %73
  %93 = tail call i32* @__errno_location() #17, !dbg !815
  store i32 0, i32* %93, align 4, !dbg !816, !tbaa !739
  %94 = call i32 @getpriority(i32 0, i32 0) #10, !dbg !817
  call void @llvm.dbg.value(metadata i32 %94, metadata !32, metadata !DIExpression()), !dbg !805
  %95 = icmp eq i32 %94, -1, !dbg !818
  br i1 %95, label %96, label %101, !dbg !820

; <label>:96:                                     ; preds = %92
  %97 = load i32, i32* %93, align 4, !dbg !821, !tbaa !739
  %98 = icmp eq i32 %97, 0, !dbg !822
  br i1 %98, label %101, label %99, !dbg !823

; <label>:99:                                     ; preds = %96
  %100 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i32 5) #10, !dbg !824
  call void (i32, i32, i8*, ...) @error(i32 125, i32 %97, i8* %100) #10, !dbg !824
  unreachable, !dbg !824

; <label>:101:                                    ; preds = %96, %92
  %102 = add nsw i32 %94, %76, !dbg !825
  %103 = call i32 @setpriority(i32 0, i32 0, i32 %102) #10, !dbg !826
  %104 = icmp eq i32 %103, 0, !dbg !827
  br i1 %104, label %117, label %105, !dbg !828

; <label>:105:                                    ; preds = %101
  %106 = load i32, i32* %93, align 4, !dbg !829, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %106, metadata !832, metadata !DIExpression()), !dbg !837
  %107 = icmp eq i32 %106, 13, !dbg !839
  %108 = icmp eq i32 %106, 1, !dbg !840
  %109 = or i1 %107, %108, !dbg !841
  %110 = select i1 %109, i32 0, i32 125, !dbg !842
  %111 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 5) #10, !dbg !843
  call void (i32, i32, i8*, ...) @error(i32 %110, i32 %106, i8* %111) #10, !dbg !844
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !845, !tbaa !673
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %112, metadata !847, metadata !DIExpression()), !dbg !907
  %113 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %112, i64 0, i32 0, !dbg !909
  %114 = load i32, i32* %113, align 8, !dbg !909, !tbaa !910
  %115 = and i32 %114, 32, !dbg !909
  %116 = icmp eq i32 %115, 0, !dbg !845
  br i1 %116, label %117, label %127, !dbg !913

; <label>:117:                                    ; preds = %105, %101
  %118 = sext i32 %75 to i64, !dbg !914
  %119 = getelementptr inbounds i8*, i8** %1, i64 %118, !dbg !914
  %120 = load i8*, i8** %119, align 8, !dbg !914, !tbaa !673
  %121 = call i32 @execvp(i8* %120, i8** %119) #10, !dbg !915
  %122 = load i32, i32* %93, align 4, !dbg !916, !tbaa !739
  %123 = icmp eq i32 %122, 2, !dbg !917
  %124 = select i1 %123, i32 127, i32 126, !dbg !916
  call void @llvm.dbg.value(metadata i32 %124, metadata !53, metadata !DIExpression()), !dbg !918
  %125 = load i8*, i8** %119, align 8, !dbg !919, !tbaa !673
  %126 = call i8* @quote(i8* %125) #10, !dbg !920
  call void (i32, i32, i8*, ...) @error(i32 0, i32 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i8* %126) #10, !dbg !921
  br label %127

; <label>:127:                                    ; preds = %105, %117, %90
  %128 = phi i32 [ 0, %90 ], [ %124, %117 ], [ 125, %105 ], !dbg !922
  ret i32 %128, !dbg !923
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

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @getpriority(i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setpriority(i32, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @execvp(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !924 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !926, metadata !DIExpression()), !dbg !927
  store i8* %0, i8** @file_name, align 8, !dbg !928, !tbaa !673
  ret void, !dbg !929
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !930 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !934, metadata !DIExpression()), !dbg !935
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !936, !tbaa !937
  ret void, !dbg !939
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !940 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !945, !tbaa !673
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #10, !dbg !946
  %3 = icmp eq i32 %2, 0, !dbg !947
  br i1 %3, label %22, label %4, !dbg !948

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !949, !tbaa !937, !range !950
  %6 = icmp eq i8 %5, 0, !dbg !949
  br i1 %6, label %11, label %7, !dbg !951

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !952
  %9 = load i32, i32* %8, align 4, !dbg !952, !tbaa !739
  %10 = icmp eq i32 %9, 32, !dbg !953
  br i1 %10, label %22, label %11, !dbg !954

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.42, i64 0, i64 0), i32 5) #10, !dbg !955
  call void @llvm.dbg.value(metadata i8* %12, metadata !942, metadata !DIExpression()), !dbg !956
  %13 = load i8*, i8** @file_name, align 8, !dbg !957, !tbaa !673
  %14 = icmp eq i8* %13, null, !dbg !957
  %15 = tail call i32* @__errno_location() #17, !dbg !959
  %16 = load i32, i32* %15, align 4, !dbg !959, !tbaa !739
  br i1 %14, label %19, label %17, !dbg !960

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #10, !dbg !961
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.43, i64 0, i64 0), i8* %18, i8* %12) #10, !dbg !962
  br label %20, !dbg !962

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.44, i64 0, i64 0), i8* %12) #10, !dbg !963
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !964, !tbaa !739
  tail call void @_exit(i32 %21) #15, !dbg !965
  unreachable, !dbg !965

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !966, !tbaa !673
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #10, !dbg !968
  %25 = icmp eq i32 %24, 0, !dbg !969
  br i1 %25, label %28, label %26, !dbg !970

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !971, !tbaa !739
  tail call void @_exit(i32 %27) #15, !dbg !972
  unreachable, !dbg !972

; <label>:28:                                     ; preds = %22
  ret void, !dbg !973
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !974 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !976, metadata !DIExpression()), !dbg !979
  %2 = icmp eq i8* %0, null, !dbg !980
  br i1 %2, label %3, label %6, !dbg !982

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !983, !tbaa !673
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.51, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !985
  tail call void @abort() #15, !dbg !986
  unreachable, !dbg !986

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !987
  call void @llvm.dbg.value(metadata i8* %7, metadata !977, metadata !DIExpression()), !dbg !988
  %8 = icmp eq i8* %7, null, !dbg !989
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !990
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !991
  call void @llvm.dbg.value(metadata i8* %10, metadata !978, metadata !DIExpression()), !dbg !992
  %11 = ptrtoint i8* %10 to i64, !dbg !993
  %12 = ptrtoint i8* %0 to i64, !dbg !993
  %13 = sub i64 %11, %12, !dbg !993
  %14 = icmp sgt i64 %13, 6, !dbg !995
  br i1 %14, label %15, label %24, !dbg !996

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !997
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.52, i64 0, i64 0), i64 7) #14, !dbg !998
  %18 = icmp eq i32 %17, 0, !dbg !999
  br i1 %18, label %19, label %24, !dbg !1000

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !976, metadata !DIExpression()), !dbg !979
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.53, i64 0, i64 0), i64 3) #14, !dbg !1001
  %21 = icmp eq i32 %20, 0, !dbg !1004
  br i1 %21, label %22, label %24, !dbg !1005

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1006
  call void @llvm.dbg.value(metadata i8* %23, metadata !976, metadata !DIExpression()), !dbg !979
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1008, !tbaa !673
  br label %24, !dbg !1009

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !976, metadata !DIExpression()), !dbg !979
  store i8* %25, i8** @program_name, align 8, !dbg !1010, !tbaa !673
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1011, !tbaa !673
  ret void, !dbg !1012
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #10

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1013 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1018, metadata !DIExpression()), !dbg !1021
  %2 = tail call i32* @__errno_location() #17, !dbg !1022
  %3 = load i32, i32* %2, align 4, !dbg !1022, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %3, metadata !1019, metadata !DIExpression()), !dbg !1023
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1024
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1024
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1024
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #10, !dbg !1025
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1025
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1020, metadata !DIExpression()), !dbg !1026
  store i32 %3, i32* %2, align 4, !dbg !1027, !tbaa !739
  ret %struct.quoting_options* %8, !dbg !1028
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #11 !dbg !1029 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1035, metadata !DIExpression()), !dbg !1036
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1037
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1037
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1038
  %5 = load i32, i32* %4, align 8, !dbg !1038, !tbaa !1039
  ret i32 %5, !dbg !1041
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1042 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1046, metadata !DIExpression()), !dbg !1048
  call void @llvm.dbg.value(metadata i32 %1, metadata !1047, metadata !DIExpression()), !dbg !1049
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1050
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1050
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1051
  store i32 %1, i32* %5, align 8, !dbg !1052, !tbaa !1039
  ret void, !dbg !1053
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1054 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1058, metadata !DIExpression()), !dbg !1067
  call void @llvm.dbg.value(metadata i8 %1, metadata !1059, metadata !DIExpression()), !dbg !1068
  call void @llvm.dbg.value(metadata i32 %2, metadata !1060, metadata !DIExpression()), !dbg !1069
  call void @llvm.dbg.value(metadata i8 %1, metadata !1061, metadata !DIExpression()), !dbg !1070
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1071
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1071
  %6 = lshr i8 %1, 5, !dbg !1072
  %7 = zext i8 %6 to i64, !dbg !1072
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1073
  call void @llvm.dbg.value(metadata i32* %8, metadata !1063, metadata !DIExpression()), !dbg !1074
  %9 = and i8 %1, 31, !dbg !1075
  %10 = zext i8 %9 to i32, !dbg !1075
  call void @llvm.dbg.value(metadata i32 %10, metadata !1065, metadata !DIExpression()), !dbg !1076
  %11 = load i32, i32* %8, align 4, !dbg !1077, !tbaa !739
  %12 = lshr i32 %11, %10, !dbg !1078
  %13 = and i32 %12, 1, !dbg !1079
  call void @llvm.dbg.value(metadata i32 %13, metadata !1066, metadata !DIExpression()), !dbg !1080
  %14 = and i32 %2, 1, !dbg !1081
  %15 = xor i32 %13, %14, !dbg !1082
  %16 = shl i32 %15, %10, !dbg !1083
  %17 = xor i32 %16, %11, !dbg !1084
  store i32 %17, i32* %8, align 4, !dbg !1084, !tbaa !739
  ret i32 %13, !dbg !1085
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1086 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1090, metadata !DIExpression()), !dbg !1093
  call void @llvm.dbg.value(metadata i32 %1, metadata !1091, metadata !DIExpression()), !dbg !1094
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1095
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1097
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1090, metadata !DIExpression()), !dbg !1093
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1098
  %6 = load i32, i32* %5, align 4, !dbg !1098, !tbaa !1099
  call void @llvm.dbg.value(metadata i32 %6, metadata !1092, metadata !DIExpression()), !dbg !1100
  store i32 %1, i32* %5, align 4, !dbg !1101, !tbaa !1099
  ret i32 %6, !dbg !1102
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1103 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1107, metadata !DIExpression()), !dbg !1110
  call void @llvm.dbg.value(metadata i8* %1, metadata !1108, metadata !DIExpression()), !dbg !1111
  call void @llvm.dbg.value(metadata i8* %2, metadata !1109, metadata !DIExpression()), !dbg !1112
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1113
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1115
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1107, metadata !DIExpression()), !dbg !1110
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1116
  store i32 10, i32* %6, align 8, !dbg !1117, !tbaa !1039
  %7 = icmp ne i8* %1, null, !dbg !1118
  %8 = icmp ne i8* %2, null, !dbg !1120
  %9 = and i1 %7, %8, !dbg !1121
  br i1 %9, label %11, label %10, !dbg !1121

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1122
  unreachable, !dbg !1122

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1123
  store i8* %1, i8** %12, align 8, !dbg !1124, !tbaa !1125
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1126
  store i8* %2, i8** %13, align 8, !dbg !1127, !tbaa !1128
  ret void, !dbg !1129
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1130 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1134, metadata !DIExpression()), !dbg !1142
  call void @llvm.dbg.value(metadata i64 %1, metadata !1135, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.value(metadata i8* %2, metadata !1136, metadata !DIExpression()), !dbg !1144
  call void @llvm.dbg.value(metadata i64 %3, metadata !1137, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1138, metadata !DIExpression()), !dbg !1146
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1147
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1147
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1139, metadata !DIExpression()), !dbg !1148
  %8 = tail call i32* @__errno_location() #17, !dbg !1149
  %9 = load i32, i32* %8, align 4, !dbg !1149, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %9, metadata !1140, metadata !DIExpression()), !dbg !1150
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1151
  %11 = load i32, i32* %10, align 8, !dbg !1151, !tbaa !1039
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1152
  %13 = load i32, i32* %12, align 4, !dbg !1152, !tbaa !1099
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1153
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1154
  %16 = load i8*, i8** %15, align 8, !dbg !1154, !tbaa !1125
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1155
  %18 = load i8*, i8** %17, align 8, !dbg !1155, !tbaa !1128
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1156
  call void @llvm.dbg.value(metadata i64 %19, metadata !1141, metadata !DIExpression()), !dbg !1157
  store i32 %9, i32* %8, align 4, !dbg !1158, !tbaa !739
  ret i64 %19, !dbg !1159
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1160 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1166, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.value(metadata i64 %1, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %2, metadata !1168, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.value(metadata i64 %3, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 %4, metadata !1170, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 %5, metadata !1171, metadata !DIExpression()), !dbg !1233
  call void @llvm.dbg.value(metadata i32* %6, metadata !1172, metadata !DIExpression()), !dbg !1234
  call void @llvm.dbg.value(metadata i8* %7, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %8, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 0, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 0, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8* null, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 0, metadata !1179, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8 0, metadata !1180, metadata !DIExpression()), !dbg !1241
  %13 = tail call i64 @__ctype_get_mb_cur_max() #10, !dbg !1242
  %14 = icmp eq i64 %13, 1, !dbg !1243
  %15 = lshr i32 %5, 1, !dbg !1244
  %16 = trunc i32 %15 to i8, !dbg !1244
  %17 = and i8 %16, 1, !dbg !1244
  call void @llvm.dbg.value(metadata i8 %17, metadata !1182, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 0, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 0, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 1, metadata !1185, metadata !DIExpression()), !dbg !1247
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1248

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1238
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1239
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1240
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1241
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1249
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1245
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1246
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1247
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 %39, metadata !1185, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %38, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %37, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %36, metadata !1182, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i64 %35, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %34, metadata !1180, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %33, metadata !1179, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %32, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %31, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 0, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %30, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %29, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i32 %28, metadata !1170, metadata !DIExpression()), !dbg !1232
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
  ], !dbg !1251

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1170, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8 1, metadata !1182, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %36, metadata !1182, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i32 5, metadata !1170, metadata !DIExpression()), !dbg !1232
  br label %93, !dbg !1252

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1182, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i32 5, metadata !1170, metadata !DIExpression()), !dbg !1232
  %43 = and i8 %36, 1, !dbg !1253
  %44 = icmp eq i8 %43, 0, !dbg !1253
  br i1 %44, label %45, label %93, !dbg !1252

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1255
  br i1 %46, label %93, label %47, !dbg !1258

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1255, !tbaa !748
  br label %93, !dbg !1255

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.64, i64 0, i64 0), i32 %28), !dbg !1259
  call void @llvm.dbg.value(metadata i8* %49, metadata !1173, metadata !DIExpression()), !dbg !1235
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.65, i64 0, i64 0), i32 %28), !dbg !1263
  call void @llvm.dbg.value(metadata i8* %50, metadata !1174, metadata !DIExpression()), !dbg !1236
  br label %51, !dbg !1264

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %52, metadata !1173, metadata !DIExpression()), !dbg !1235
  %54 = and i8 %36, 1, !dbg !1265
  %55 = icmp eq i8 %54, 0, !dbg !1265
  br i1 %55, label %56, label %71, !dbg !1267

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 0, metadata !1176, metadata !DIExpression()), !dbg !1237
  %57 = load i8, i8* %52, align 1, !dbg !1268, !tbaa !748
  %58 = icmp eq i8 %57, 0, !dbg !1271
  br i1 %58, label %71, label %59, !dbg !1271

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %62, metadata !1176, metadata !DIExpression()), !dbg !1237
  %63 = icmp ult i64 %62, %40, !dbg !1272
  br i1 %63, label %64, label %66, !dbg !1275

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1272
  store i8 %60, i8* %65, align 1, !dbg !1272, !tbaa !748
  br label %66, !dbg !1272

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1275
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1276
  call void @llvm.dbg.value(metadata i8* %68, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %67, metadata !1176, metadata !DIExpression()), !dbg !1237
  %69 = load i8, i8* %68, align 1, !dbg !1268, !tbaa !748
  %70 = icmp eq i8 %69, 0, !dbg !1271
  br i1 %70, label %71, label %59, !dbg !1271, !llvm.loop !1277

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1237
  call void @llvm.dbg.value(metadata i64 %72, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 1, metadata !1180, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8* %53, metadata !1178, metadata !DIExpression()), !dbg !1239
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1279
  call void @llvm.dbg.value(metadata i64 %73, metadata !1179, metadata !DIExpression()), !dbg !1240
  br label %93, !dbg !1280

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1180, metadata !DIExpression()), !dbg !1241
  br label %75, !dbg !1281

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1249
  call void @llvm.dbg.value(metadata i8 %76, metadata !1180, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 1, metadata !1182, metadata !DIExpression()), !dbg !1244
  br label %77, !dbg !1282

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1241
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1249
  call void @llvm.dbg.value(metadata i8 %79, metadata !1182, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %78, metadata !1180, metadata !DIExpression()), !dbg !1241
  %80 = and i8 %79, 1, !dbg !1283
  %81 = icmp eq i8 %80, 0, !dbg !1283
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1285
  br label %83, !dbg !1285

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1286
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1244
  call void @llvm.dbg.value(metadata i8 %85, metadata !1182, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %84, metadata !1180, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i32 2, metadata !1170, metadata !DIExpression()), !dbg !1232
  %86 = and i8 %85, 1, !dbg !1287
  %87 = icmp eq i8 %86, 0, !dbg !1287
  br i1 %87, label %88, label %93, !dbg !1289

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1290
  br i1 %89, label %93, label %90, !dbg !1293

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1290, !tbaa !748
  br label %93, !dbg !1290

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1182, metadata !DIExpression()), !dbg !1244
  br label %93, !dbg !1294

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1295
  unreachable, !dbg !1295

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1237
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.66, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.66, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.66, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.65, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.65, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.65, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.66, i64 0, i64 0), %41 ], !dbg !1249
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1249
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1249
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1296
  call void @llvm.dbg.value(metadata i8 %101, metadata !1182, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.value(metadata i8 %100, metadata !1180, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %99, metadata !1179, metadata !DIExpression()), !dbg !1240
  call void @llvm.dbg.value(metadata i8* %98, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %97, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i32 %94, metadata !1170, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i64 0, metadata !1175, metadata !DIExpression()), !dbg !1297
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
  br label %121, !dbg !1298

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1299
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1237
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1238
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1245
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1246
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1247
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 %128, metadata !1185, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %127, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %126, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %125, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %122, metadata !1175, metadata !DIExpression()), !dbg !1297
  %130 = icmp eq i64 %125, -1, !dbg !1300
  br i1 %130, label %131, label %135, !dbg !1301

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1302
  %133 = load i8, i8* %132, align 1, !dbg !1302, !tbaa !748
  %134 = icmp eq i8 %133, 0, !dbg !1303
  br i1 %134, label %617, label %137, !dbg !1304

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1305
  br i1 %136, label %617, label %137, !dbg !1304

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1191, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i8 0, metadata !1192, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8 0, metadata !1193, metadata !DIExpression()), !dbg !1308
  br i1 %107, label %138, label %153, !dbg !1309

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1311
  %140 = and i1 %108, %130, !dbg !1312
  br i1 %140, label %141, label %143, !dbg !1312

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1313
  call void @llvm.dbg.value(metadata i64 %142, metadata !1169, metadata !DIExpression()), !dbg !1231
  br label %143, !dbg !1314

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1169, metadata !DIExpression()), !dbg !1231
  %145 = icmp ugt i64 %139, %144, !dbg !1315
  br i1 %145, label %153, label %146, !dbg !1316

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1317
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1318
  %149 = icmp ne i32 %148, 0, !dbg !1319
  %150 = or i1 %149, %110, !dbg !1320
  %151 = xor i1 %149, true, !dbg !1320
  %152 = zext i1 %151 to i8, !dbg !1320
  br i1 %150, label %153, label %661, !dbg !1320

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1321
  call void @llvm.dbg.value(metadata i8 %155, metadata !1191, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i64 %154, metadata !1169, metadata !DIExpression()), !dbg !1231
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1322
  %157 = load i8, i8* %156, align 1, !dbg !1322, !tbaa !748
  call void @llvm.dbg.value(metadata i8 %157, metadata !1186, metadata !DIExpression()), !dbg !1323
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
  ], !dbg !1324

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1325

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1326

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1192, metadata !DIExpression()), !dbg !1307
  %161 = and i8 %126, 1, !dbg !1330
  %162 = icmp eq i8 %161, 0, !dbg !1330
  %163 = and i1 %114, %162, !dbg !1330
  br i1 %163, label %164, label %180, !dbg !1330

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1332
  br i1 %165, label %166, label %168, !dbg !1336

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1332
  store i8 39, i8* %167, align 1, !dbg !1332, !tbaa !748
  br label %168, !dbg !1332

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1336
  call void @llvm.dbg.value(metadata i64 %169, metadata !1176, metadata !DIExpression()), !dbg !1237
  %170 = icmp ult i64 %169, %129, !dbg !1337
  br i1 %170, label %171, label %173, !dbg !1340

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1337
  store i8 36, i8* %172, align 1, !dbg !1337, !tbaa !748
  br label %173, !dbg !1337

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1340
  call void @llvm.dbg.value(metadata i64 %174, metadata !1176, metadata !DIExpression()), !dbg !1237
  %175 = icmp ult i64 %174, %129, !dbg !1341
  br i1 %175, label %176, label %178, !dbg !1344

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1341
  store i8 39, i8* %177, align 1, !dbg !1341, !tbaa !748
  br label %178, !dbg !1341

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1344
  call void @llvm.dbg.value(metadata i64 %179, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 1, metadata !1183, metadata !DIExpression()), !dbg !1245
  br label %180, !dbg !1345

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1296
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1296
  call void @llvm.dbg.value(metadata i8 %182, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %181, metadata !1176, metadata !DIExpression()), !dbg !1237
  %183 = icmp ult i64 %181, %129, !dbg !1346
  br i1 %183, label %184, label %186, !dbg !1349

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1346
  store i8 92, i8* %185, align 1, !dbg !1346, !tbaa !748
  br label %186, !dbg !1346

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1349
  call void @llvm.dbg.value(metadata i64 %187, metadata !1176, metadata !DIExpression()), !dbg !1237
  br i1 %104, label %188, label %478, !dbg !1350

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1352
  %190 = icmp ult i64 %189, %154, !dbg !1353
  br i1 %190, label %191, label %467, !dbg !1354

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1355
  %193 = load i8, i8* %192, align 1, !dbg !1355, !tbaa !748
  %194 = add i8 %193, -48, !dbg !1356
  %195 = icmp ult i8 %194, 10, !dbg !1356
  br i1 %195, label %196, label %467, !dbg !1356

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1357
  br i1 %197, label %198, label %200, !dbg !1361

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1357
  store i8 48, i8* %199, align 1, !dbg !1357, !tbaa !748
  br label %200, !dbg !1357

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1361
  call void @llvm.dbg.value(metadata i64 %201, metadata !1176, metadata !DIExpression()), !dbg !1237
  %202 = icmp ult i64 %201, %129, !dbg !1362
  br i1 %202, label %203, label %205, !dbg !1365

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1362
  store i8 48, i8* %204, align 1, !dbg !1362, !tbaa !748
  br label %205, !dbg !1362

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1365
  call void @llvm.dbg.value(metadata i64 %206, metadata !1176, metadata !DIExpression()), !dbg !1237
  br label %467, !dbg !1366

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1367

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1368

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1369

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1371

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1373
  %213 = icmp ult i64 %212, %154, !dbg !1374
  br i1 %213, label %214, label %467, !dbg !1375

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1376
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1377
  %217 = load i8, i8* %216, align 1, !dbg !1377, !tbaa !748
  %218 = icmp eq i8 %217, 63, !dbg !1378
  br i1 %218, label %219, label %467, !dbg !1379

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1380
  %221 = load i8, i8* %220, align 1, !dbg !1380, !tbaa !748
  %222 = sext i8 %221 to i32, !dbg !1380
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
  ], !dbg !1381

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1382

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1186, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i64 %212, metadata !1175, metadata !DIExpression()), !dbg !1297
  %225 = icmp ult i64 %123, %129, !dbg !1384
  br i1 %225, label %226, label %228, !dbg !1387

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1384
  store i8 63, i8* %227, align 1, !dbg !1384, !tbaa !748
  br label %228, !dbg !1384

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1387
  call void @llvm.dbg.value(metadata i64 %229, metadata !1176, metadata !DIExpression()), !dbg !1237
  %230 = icmp ult i64 %229, %129, !dbg !1388
  br i1 %230, label %231, label %233, !dbg !1391

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1388
  store i8 34, i8* %232, align 1, !dbg !1388, !tbaa !748
  br label %233, !dbg !1388

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1391
  call void @llvm.dbg.value(metadata i64 %234, metadata !1176, metadata !DIExpression()), !dbg !1237
  %235 = icmp ult i64 %234, %129, !dbg !1392
  br i1 %235, label %236, label %238, !dbg !1395

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1392
  store i8 34, i8* %237, align 1, !dbg !1392, !tbaa !748
  br label %238, !dbg !1392

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1395
  call void @llvm.dbg.value(metadata i64 %239, metadata !1176, metadata !DIExpression()), !dbg !1237
  %240 = icmp ult i64 %239, %129, !dbg !1396
  br i1 %240, label %241, label %243, !dbg !1399

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1396
  store i8 63, i8* %242, align 1, !dbg !1396, !tbaa !748
  br label %243, !dbg !1396

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1399
  call void @llvm.dbg.value(metadata i64 %244, metadata !1176, metadata !DIExpression()), !dbg !1237
  br label %467, !dbg !1400

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1190, metadata !DIExpression()), !dbg !1401
  br label %255, !dbg !1402

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1190, metadata !DIExpression()), !dbg !1401
  br label %255, !dbg !1403

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1190, metadata !DIExpression()), !dbg !1401
  br label %253, !dbg !1404

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1190, metadata !DIExpression()), !dbg !1401
  br label %253, !dbg !1405

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1190, metadata !DIExpression()), !dbg !1401
  br label %255, !dbg !1406

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1190, metadata !DIExpression()), !dbg !1401
  br i1 %114, label %251, label %252, !dbg !1407

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1408

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1411

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1413
  call void @llvm.dbg.value(metadata i8 %254, metadata !1190, metadata !DIExpression()), !dbg !1401
  br i1 %113, label %255, label %661, !dbg !1414

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1413
  call void @llvm.dbg.value(metadata i8 %256, metadata !1190, metadata !DIExpression()), !dbg !1401
  br i1 %103, label %524, label %478, !dbg !1416

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1417
  br i1 %258, label %259, label %264, !dbg !1419

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1420, !tbaa !748
  %261 = icmp ne i8 %260, 0, !dbg !1421
  %262 = icmp ne i64 %122, 0, !dbg !1422
  %263 = or i1 %262, %261, !dbg !1424
  br i1 %263, label %467, label %270, !dbg !1424

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1425
  %266 = icmp ne i64 %122, 0, !dbg !1422
  %267 = or i1 %266, %265, !dbg !1419
  br i1 %267, label %467, label %270, !dbg !1419

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1422
  br i1 %269, label %270, label %467, !dbg !1426

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1193, metadata !DIExpression()), !dbg !1308
  br label %271, !dbg !1427

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1413
  call void @llvm.dbg.value(metadata i8 %272, metadata !1193, metadata !DIExpression()), !dbg !1308
  br i1 %113, label %467, label %661, !dbg !1428

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 1, metadata !1193, metadata !DIExpression()), !dbg !1308
  br i1 %114, label %274, label %467, !dbg !1430

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1431

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1434
  %277 = icmp ne i64 %124, 0, !dbg !1436
  %278 = or i1 %277, %276, !dbg !1437
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1437
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1437
  call void @llvm.dbg.value(metadata i64 %280, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %279, metadata !1177, metadata !DIExpression()), !dbg !1238
  %281 = icmp ult i64 %123, %280, !dbg !1438
  br i1 %281, label %282, label %284, !dbg !1441

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1438
  store i8 39, i8* %283, align 1, !dbg !1438, !tbaa !748
  br label %284, !dbg !1438

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1441
  call void @llvm.dbg.value(metadata i64 %285, metadata !1176, metadata !DIExpression()), !dbg !1237
  %286 = icmp ult i64 %285, %280, !dbg !1442
  br i1 %286, label %287, label %289, !dbg !1445

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1442
  store i8 92, i8* %288, align 1, !dbg !1442, !tbaa !748
  br label %289, !dbg !1442

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1445
  call void @llvm.dbg.value(metadata i64 %290, metadata !1176, metadata !DIExpression()), !dbg !1237
  %291 = icmp ult i64 %290, %280, !dbg !1446
  br i1 %291, label %292, label %294, !dbg !1449

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1446
  store i8 39, i8* %293, align 1, !dbg !1446, !tbaa !748
  br label %294, !dbg !1446

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1449
  call void @llvm.dbg.value(metadata i64 %295, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 0, metadata !1183, metadata !DIExpression()), !dbg !1245
  br label %467, !dbg !1450

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1451

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1194, metadata !DIExpression()), !dbg !1452
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1453
  %299 = load i16*, i16** %298, align 8, !dbg !1453, !tbaa !673
  %300 = zext i8 %157 to i64, !dbg !1453
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1453
  %302 = load i16, i16* %301, align 2, !dbg !1453, !tbaa !1455
  %303 = lshr i16 %302, 14, !dbg !1456
  %304 = trunc i16 %303 to i8, !dbg !1456
  %305 = and i8 %304, 1, !dbg !1456
  call void @llvm.dbg.value(metadata i8 %305, metadata !1197, metadata !DIExpression()), !dbg !1457
  br label %359, !dbg !1458

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1459
  store i64 0, i64* %10, align 8, !dbg !1460
  call void @llvm.dbg.value(metadata i64 0, metadata !1194, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i8 1, metadata !1197, metadata !DIExpression()), !dbg !1457
  %307 = icmp eq i64 %154, -1, !dbg !1461
  br i1 %307, label %308, label %310, !dbg !1463

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1464
  call void @llvm.dbg.value(metadata i64 %309, metadata !1169, metadata !DIExpression()), !dbg !1231
  br label %310, !dbg !1465

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1466
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  br label %312, !dbg !1467

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1468
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1469
  call void @llvm.dbg.value(metadata i8 %314, metadata !1197, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %313, metadata !1194, metadata !DIExpression()), !dbg !1452
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1470
  %315 = add i64 %313, %122, !dbg !1471
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1472
  %317 = sub i64 %311, %315, !dbg !1473
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1198, metadata !DIExpression(DW_OP_deref)), !dbg !1474
  call void @llvm.dbg.value(metadata i32* %12, metadata !1214, metadata !DIExpression(DW_OP_deref)), !dbg !1475
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #10, !dbg !1476
  call void @llvm.dbg.value(metadata i64 %318, metadata !1217, metadata !DIExpression()), !dbg !1477
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1478

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1194, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %313, metadata !1194, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %313, metadata !1194, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %313, metadata !1194, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %313, metadata !1194, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %313, metadata !1194, metadata !DIExpression()), !dbg !1452
  %320 = icmp ugt i64 %311, %315, !dbg !1479
  br i1 %320, label %321, label %344, !dbg !1481

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1194, metadata !DIExpression()), !dbg !1452
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1482
  %325 = load i8, i8* %324, align 1, !dbg !1482, !tbaa !748
  %326 = icmp eq i8 %325, 0, !dbg !1481
  br i1 %326, label %344, label %327, !dbg !1483

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1484
  call void @llvm.dbg.value(metadata i64 %328, metadata !1194, metadata !DIExpression()), !dbg !1452
  %329 = add i64 %328, %122, !dbg !1485
  %330 = icmp ult i64 %329, %311, !dbg !1479
  br i1 %330, label %321, label %344, !dbg !1481, !llvm.loop !1486

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1487
  %333 = and i1 %116, %332, !dbg !1490
  call void @llvm.dbg.value(metadata i64 1, metadata !1218, metadata !DIExpression()), !dbg !1491
  br i1 %333, label %334, label %347, !dbg !1490

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1218, metadata !DIExpression()), !dbg !1491
  %336 = add i64 %335, %315, !dbg !1492
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1493
  %338 = load i8, i8* %337, align 1, !dbg !1493, !tbaa !748
  %339 = sext i8 %338 to i32, !dbg !1493
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1494

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1495
  call void @llvm.dbg.value(metadata i64 %341, metadata !1218, metadata !DIExpression()), !dbg !1491
  %342 = icmp ult i64 %341, %318, !dbg !1487
  br i1 %342, label %334, label %347, !dbg !1496, !llvm.loop !1497

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1194, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i8 %314, metadata !1197, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %313, metadata !1194, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i8 %314, metadata !1197, metadata !DIExpression()), !dbg !1457
  br label %344, !dbg !1499

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1197, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %352, metadata !1194, metadata !DIExpression()), !dbg !1452
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1499
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1500, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %348, metadata !1214, metadata !DIExpression()), !dbg !1475
  %349 = call i32 @iswprint(i32 %348) #10, !dbg !1502
  %350 = icmp eq i32 %349, 0, !dbg !1502
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1503
  call void @llvm.dbg.value(metadata i8 %351, metadata !1197, metadata !DIExpression()), !dbg !1457
  %352 = add i64 %318, %313, !dbg !1504
  call void @llvm.dbg.value(metadata i64 %352, metadata !1194, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i8 %351, metadata !1197, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %352, metadata !1194, metadata !DIExpression()), !dbg !1452
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1499
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1198, metadata !DIExpression(DW_OP_deref)), !dbg !1474
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1505
  %354 = icmp eq i32 %353, 0, !dbg !1506
  br i1 %354, label %312, label %355, !dbg !1507, !llvm.loop !1508

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1510
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 2, metadata !1170, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 2, metadata !1170, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 2, metadata !1170, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 2, metadata !1170, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 2, metadata !1170, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8 %100, metadata !1180, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %100, metadata !1180, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %100, metadata !1180, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %100, metadata !1180, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %100, metadata !1180, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i32 %94, metadata !1170, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 %94, metadata !1170, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 %94, metadata !1170, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 %94, metadata !1170, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i32 %94, metadata !1170, metadata !DIExpression()), !dbg !1232
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i8 %100, metadata !1180, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %100, metadata !1180, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %100, metadata !1180, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %100, metadata !1180, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i8 %100, metadata !1180, metadata !DIExpression()), !dbg !1241
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %311, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %351, metadata !1197, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %352, metadata !1194, metadata !DIExpression()), !dbg !1452
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #10, !dbg !1499
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #10, !dbg !1510
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1511
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1512
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1512
  call void @llvm.dbg.value(metadata i8 %362, metadata !1197, metadata !DIExpression()), !dbg !1457
  call void @llvm.dbg.value(metadata i64 %361, metadata !1194, metadata !DIExpression()), !dbg !1452
  call void @llvm.dbg.value(metadata i64 %360, metadata !1169, metadata !DIExpression()), !dbg !1231
  %363 = and i8 %362, 1, !dbg !1513
  %364 = icmp ne i8 %363, 0, !dbg !1513
  call void @llvm.dbg.value(metadata i8 %363, metadata !1193, metadata !DIExpression()), !dbg !1308
  %365 = icmp ult i64 %361, 2, !dbg !1514
  %366 = or i1 %364, %115, !dbg !1515
  %367 = and i1 %365, %366, !dbg !1516
  br i1 %367, label %467, label %368, !dbg !1516

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1517
  call void @llvm.dbg.value(metadata i64 %369, metadata !1225, metadata !DIExpression()), !dbg !1518
  br label %370, !dbg !1519

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1520
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1524
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1245
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1520
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1526
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1307
  call void @llvm.dbg.value(metadata i8 %376, metadata !1192, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8 %375, metadata !1191, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i8 %374, metadata !1186, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i8 %373, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %372, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %371, metadata !1175, metadata !DIExpression()), !dbg !1297
  br i1 %366, label %423, label %377, !dbg !1530

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1531

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1192, metadata !DIExpression()), !dbg !1307
  %379 = and i8 %373, 1, !dbg !1534
  %380 = icmp eq i8 %379, 0, !dbg !1534
  %381 = and i1 %114, %380, !dbg !1534
  br i1 %381, label %382, label %398, !dbg !1534

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1536
  br i1 %383, label %384, label %386, !dbg !1540

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1536
  store i8 39, i8* %385, align 1, !dbg !1536, !tbaa !748
  br label %386, !dbg !1536

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1540
  call void @llvm.dbg.value(metadata i64 %387, metadata !1176, metadata !DIExpression()), !dbg !1237
  %388 = icmp ult i64 %387, %129, !dbg !1541
  br i1 %388, label %389, label %391, !dbg !1544

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1541
  store i8 36, i8* %390, align 1, !dbg !1541, !tbaa !748
  br label %391, !dbg !1541

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1544
  call void @llvm.dbg.value(metadata i64 %392, metadata !1176, metadata !DIExpression()), !dbg !1237
  %393 = icmp ult i64 %392, %129, !dbg !1545
  br i1 %393, label %394, label %396, !dbg !1548

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1545
  store i8 39, i8* %395, align 1, !dbg !1545, !tbaa !748
  br label %396, !dbg !1545

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1548
  call void @llvm.dbg.value(metadata i64 %397, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 1, metadata !1183, metadata !DIExpression()), !dbg !1245
  br label %398, !dbg !1549

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1296
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1296
  call void @llvm.dbg.value(metadata i8 %400, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %399, metadata !1176, metadata !DIExpression()), !dbg !1237
  %401 = icmp ult i64 %399, %129, !dbg !1550
  br i1 %401, label %402, label %404, !dbg !1553

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1550
  store i8 92, i8* %403, align 1, !dbg !1550, !tbaa !748
  br label %404, !dbg !1550

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1553
  call void @llvm.dbg.value(metadata i64 %405, metadata !1176, metadata !DIExpression()), !dbg !1237
  %406 = icmp ult i64 %405, %129, !dbg !1554
  br i1 %406, label %407, label %411, !dbg !1557

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1554
  %409 = or i8 %408, 48, !dbg !1554
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1554
  store i8 %409, i8* %410, align 1, !dbg !1554, !tbaa !748
  br label %411, !dbg !1554

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1557
  call void @llvm.dbg.value(metadata i64 %412, metadata !1176, metadata !DIExpression()), !dbg !1237
  %413 = icmp ult i64 %412, %129, !dbg !1558
  br i1 %413, label %414, label %419, !dbg !1561

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1558
  %416 = and i8 %415, 7, !dbg !1558
  %417 = or i8 %416, 48, !dbg !1558
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1558
  store i8 %417, i8* %418, align 1, !dbg !1558, !tbaa !748
  br label %419, !dbg !1558

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1561
  call void @llvm.dbg.value(metadata i64 %420, metadata !1176, metadata !DIExpression()), !dbg !1237
  %421 = and i8 %374, 7, !dbg !1562
  %422 = or i8 %421, 48, !dbg !1563
  call void @llvm.dbg.value(metadata i8 %422, metadata !1186, metadata !DIExpression()), !dbg !1323
  br label %432, !dbg !1564

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1565
  %425 = icmp eq i8 %424, 0, !dbg !1565
  br i1 %425, label %432, label %426, !dbg !1566

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1567
  br i1 %427, label %428, label %430, !dbg !1570

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1567
  store i8 92, i8* %429, align 1, !dbg !1567, !tbaa !748
  br label %430, !dbg !1567

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1570
  call void @llvm.dbg.value(metadata i64 %431, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 0, metadata !1191, metadata !DIExpression()), !dbg !1306
  br label %432, !dbg !1571

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1572
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1245
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1573
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1574
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1576
  call void @llvm.dbg.value(metadata i8 %437, metadata !1192, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8 %436, metadata !1191, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i8 %435, metadata !1186, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i8 %434, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %433, metadata !1176, metadata !DIExpression()), !dbg !1237
  %438 = add i64 %371, 1, !dbg !1577
  %439 = icmp ugt i64 %369, %438, !dbg !1579
  br i1 %439, label %440, label %562, !dbg !1580

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1581
  %442 = icmp ne i8 %441, 0, !dbg !1581
  %443 = and i8 %437, 1, !dbg !1581
  %444 = icmp eq i8 %443, 0, !dbg !1581
  %445 = and i1 %442, %444, !dbg !1581
  br i1 %445, label %446, label %457, !dbg !1581

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1584
  br i1 %447, label %448, label %450, !dbg !1588

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1584
  store i8 39, i8* %449, align 1, !dbg !1584, !tbaa !748
  br label %450, !dbg !1584

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1588
  call void @llvm.dbg.value(metadata i64 %451, metadata !1176, metadata !DIExpression()), !dbg !1237
  %452 = icmp ult i64 %451, %129, !dbg !1589
  br i1 %452, label %453, label %455, !dbg !1592

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1589
  store i8 39, i8* %454, align 1, !dbg !1589, !tbaa !748
  br label %455, !dbg !1589

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1592
  call void @llvm.dbg.value(metadata i64 %456, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 0, metadata !1183, metadata !DIExpression()), !dbg !1245
  br label %457, !dbg !1593

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1594
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1296
  call void @llvm.dbg.value(metadata i8 %459, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %458, metadata !1176, metadata !DIExpression()), !dbg !1237
  %460 = icmp ult i64 %458, %129, !dbg !1595
  br i1 %460, label %461, label %463, !dbg !1597

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1595
  store i8 %435, i8* %462, align 1, !dbg !1595, !tbaa !748
  br label %463, !dbg !1595

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1597
  call void @llvm.dbg.value(metadata i64 %464, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %438, metadata !1175, metadata !DIExpression()), !dbg !1297
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1598
  %466 = load i8, i8* %465, align 1, !dbg !1598, !tbaa !748
  call void @llvm.dbg.value(metadata i8 %466, metadata !1186, metadata !DIExpression()), !dbg !1323
  br label %370, !dbg !1599, !llvm.loop !1600

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1603
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1296
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1238
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1604
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1296
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1296
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1321
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1321
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1321
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 %476, metadata !1193, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata i8 %475, metadata !1192, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8 %155, metadata !1191, metadata !DIExpression()), !dbg !1306
  call void @llvm.dbg.value(metadata i8 %474, metadata !1186, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i8 %473, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %472, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %471, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %470, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %469, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %468, metadata !1175, metadata !DIExpression()), !dbg !1297
  br i1 %105, label %489, label %478, !dbg !1605

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
  br i1 %112, label %490, label %512, !dbg !1607

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1608

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
  %501 = lshr i8 %494, 5, !dbg !1609
  %502 = zext i8 %501 to i64, !dbg !1609
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1610
  %504 = load i32, i32* %503, align 4, !dbg !1610, !tbaa !739
  %505 = and i8 %494, 31, !dbg !1611
  %506 = zext i8 %505 to i32, !dbg !1611
  %507 = shl i32 1, %506, !dbg !1612
  %508 = and i32 %504, %507, !dbg !1612
  %509 = icmp eq i32 %508, 0, !dbg !1612
  %510 = icmp eq i8 %155, 0, !dbg !1613
  %511 = and i1 %510, %509, !dbg !1614
  br i1 %511, label %562, label %524, !dbg !1614

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
  %523 = icmp eq i8 %155, 0, !dbg !1613
  br i1 %523, label %562, label %524, !dbg !1615

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1616
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1296
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1238
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1604
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1245
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1246
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1617
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1321
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 %532, metadata !1193, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata i8 %531, metadata !1186, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i8 %530, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %529, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %528, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %527, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %526, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %525, metadata !1175, metadata !DIExpression()), !dbg !1297
  br i1 %110, label %534, label %661, !dbg !1620

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1192, metadata !DIExpression()), !dbg !1307
  %535 = and i8 %529, 1, !dbg !1622
  %536 = icmp eq i8 %535, 0, !dbg !1622
  %537 = and i1 %114, %536, !dbg !1622
  br i1 %537, label %538, label %554, !dbg !1622

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1624
  br i1 %539, label %540, label %542, !dbg !1628

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1624
  store i8 39, i8* %541, align 1, !dbg !1624, !tbaa !748
  br label %542, !dbg !1624

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1628
  call void @llvm.dbg.value(metadata i64 %543, metadata !1176, metadata !DIExpression()), !dbg !1237
  %544 = icmp ult i64 %543, %533, !dbg !1629
  br i1 %544, label %545, label %547, !dbg !1632

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1629
  store i8 36, i8* %546, align 1, !dbg !1629, !tbaa !748
  br label %547, !dbg !1629

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1632
  call void @llvm.dbg.value(metadata i64 %548, metadata !1176, metadata !DIExpression()), !dbg !1237
  %549 = icmp ult i64 %548, %533, !dbg !1633
  br i1 %549, label %550, label %552, !dbg !1636

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1633
  store i8 39, i8* %551, align 1, !dbg !1633, !tbaa !748
  br label %552, !dbg !1633

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1636
  call void @llvm.dbg.value(metadata i64 %553, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 1, metadata !1183, metadata !DIExpression()), !dbg !1245
  br label %554, !dbg !1637

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1594
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1296
  call void @llvm.dbg.value(metadata i8 %556, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %555, metadata !1176, metadata !DIExpression()), !dbg !1237
  %557 = icmp ult i64 %555, %533, !dbg !1638
  br i1 %557, label %558, label %560, !dbg !1641

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1638
  store i8 92, i8* %559, align 1, !dbg !1638, !tbaa !748
  br label %560, !dbg !1638

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1641
  call void @llvm.dbg.value(metadata i64 %561, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %572, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 %571, metadata !1193, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata i8 %570, metadata !1192, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8 %569, metadata !1186, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i8 %568, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %567, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %566, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %565, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %564, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %563, metadata !1175, metadata !DIExpression()), !dbg !1297
  br label %589, !dbg !1642

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1616
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1296
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1238
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1604
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1245
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1246
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1645
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1321
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1321
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 %571, metadata !1193, metadata !DIExpression()), !dbg !1308
  call void @llvm.dbg.value(metadata i8 %570, metadata !1192, metadata !DIExpression()), !dbg !1307
  call void @llvm.dbg.value(metadata i8 %569, metadata !1186, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.value(metadata i8 %568, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %567, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %566, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %565, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %564, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %563, metadata !1175, metadata !DIExpression()), !dbg !1297
  %573 = and i8 %567, 1, !dbg !1642
  %574 = icmp ne i8 %573, 0, !dbg !1642
  %575 = and i8 %570, 1, !dbg !1642
  %576 = icmp eq i8 %575, 0, !dbg !1642
  %577 = and i1 %574, %576, !dbg !1642
  br i1 %577, label %578, label %589, !dbg !1642

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1646
  br i1 %579, label %580, label %582, !dbg !1650

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1646
  store i8 39, i8* %581, align 1, !dbg !1646, !tbaa !748
  br label %582, !dbg !1646

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1650
  call void @llvm.dbg.value(metadata i64 %583, metadata !1176, metadata !DIExpression()), !dbg !1237
  %584 = icmp ult i64 %583, %572, !dbg !1651
  br i1 %584, label %585, label %587, !dbg !1654

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1651
  store i8 39, i8* %586, align 1, !dbg !1651, !tbaa !748
  br label %587, !dbg !1651

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1654
  call void @llvm.dbg.value(metadata i64 %588, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i8 0, metadata !1183, metadata !DIExpression()), !dbg !1245
  br label %589, !dbg !1655

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1594
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1296
  call void @llvm.dbg.value(metadata i8 %598, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %597, metadata !1176, metadata !DIExpression()), !dbg !1237
  %599 = icmp ult i64 %597, %590, !dbg !1656
  br i1 %599, label %600, label %602, !dbg !1659

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1656
  store i8 %592, i8* %601, align 1, !dbg !1656, !tbaa !748
  br label %602, !dbg !1656

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1659
  call void @llvm.dbg.value(metadata i64 %603, metadata !1176, metadata !DIExpression()), !dbg !1237
  %604 = and i8 %591, 1, !dbg !1660
  %605 = icmp eq i8 %604, 0, !dbg !1660
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1662
  call void @llvm.dbg.value(metadata i8 %606, metadata !1185, metadata !DIExpression()), !dbg !1247
  br label %607, !dbg !1663

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1616
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1296
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1238
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1604
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1245
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1296
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1247
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8 %614, metadata !1185, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %613, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %612, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i64 %611, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %610, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %609, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %608, metadata !1175, metadata !DIExpression()), !dbg !1297
  %616 = add i64 %608, 1, !dbg !1664
  call void @llvm.dbg.value(metadata i64 %616, metadata !1175, metadata !DIExpression()), !dbg !1297
  br label %121, !dbg !1665, !llvm.loop !1666

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8 %126, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %126, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %127, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %127, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %128, metadata !1185, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %128, metadata !1185, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8 %126, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %126, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %127, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %127, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %128, metadata !1185, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %128, metadata !1185, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8 %126, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %126, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %127, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %127, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %128, metadata !1185, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %128, metadata !1185, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8 %126, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %126, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %127, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %127, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %128, metadata !1185, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %128, metadata !1185, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %618, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %618, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %126, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %126, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %127, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %127, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %128, metadata !1185, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %128, metadata !1185, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %125, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i64 %125, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8 %126, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %126, metadata !1183, metadata !DIExpression()), !dbg !1245
  call void @llvm.dbg.value(metadata i8 %127, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %127, metadata !1184, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.value(metadata i8 %128, metadata !1185, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i8 %128, metadata !1185, metadata !DIExpression()), !dbg !1247
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  %619 = icmp eq i64 %123, 0, !dbg !1668
  %620 = and i1 %114, %619, !dbg !1670
  %621 = xor i1 %620, true, !dbg !1670
  %622 = or i1 %110, %621, !dbg !1670
  br i1 %622, label %623, label %661, !dbg !1670

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1671
  %625 = xor i1 %624, true, !dbg !1671
  %626 = and i8 %127, 1, !dbg !1673
  %627 = icmp eq i8 %626, 0, !dbg !1673
  %628 = or i1 %627, %625, !dbg !1671
  br i1 %628, label %638, label %629, !dbg !1671

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1674
  %631 = icmp eq i8 %630, 0, !dbg !1674
  br i1 %631, label %634, label %632, !dbg !1677

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %618, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %618, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %618, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %618, metadata !1169, metadata !DIExpression()), !dbg !1231
  call void @llvm.dbg.value(metadata i8* %95, metadata !1173, metadata !DIExpression()), !dbg !1235
  call void @llvm.dbg.value(metadata i8* %96, metadata !1174, metadata !DIExpression()), !dbg !1236
  call void @llvm.dbg.value(metadata i64 %124, metadata !1177, metadata !DIExpression()), !dbg !1238
  call void @llvm.dbg.value(metadata i64 %125, metadata !1169, metadata !DIExpression()), !dbg !1231
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1678
  br label %671, !dbg !1679

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1680
  %636 = icmp ne i64 %124, 0, !dbg !1682
  %637 = and i1 %636, %635, !dbg !1683
  br i1 %637, label %27, label %638, !dbg !1683

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i8* %98, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %98, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i8* %98, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %98, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i8* %98, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %98, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i8* %98, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %98, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i8* %98, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i8* %98, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i8* %98, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %129, metadata !1167, metadata !DIExpression()), !dbg !1229
  %639 = icmp ne i8* %98, null, !dbg !1684
  %640 = and i1 %639, %110, !dbg !1686
  br i1 %640, label %641, label %656, !dbg !1686

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %123, metadata !1176, metadata !DIExpression()), !dbg !1237
  %642 = load i8, i8* %98, align 1, !dbg !1687, !tbaa !748
  %643 = icmp eq i8 %642, 0, !dbg !1690
  br i1 %643, label %656, label %644, !dbg !1690

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %647, metadata !1176, metadata !DIExpression()), !dbg !1237
  %648 = icmp ult i64 %647, %129, !dbg !1691
  br i1 %648, label %649, label %651, !dbg !1694

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1691
  store i8 %645, i8* %650, align 1, !dbg !1691, !tbaa !748
  br label %651, !dbg !1691

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !1694
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !1695
  call void @llvm.dbg.value(metadata i8* %653, metadata !1178, metadata !DIExpression()), !dbg !1239
  call void @llvm.dbg.value(metadata i64 %652, metadata !1176, metadata !DIExpression()), !dbg !1237
  %654 = load i8, i8* %653, align 1, !dbg !1687, !tbaa !748
  %655 = icmp eq i8 %654, 0, !dbg !1690
  br i1 %655, label %656, label %644, !dbg !1690, !llvm.loop !1696

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1237
  call void @llvm.dbg.value(metadata i64 %657, metadata !1176, metadata !DIExpression()), !dbg !1237
  %658 = icmp ult i64 %657, %129, !dbg !1698
  br i1 %658, label %659, label %671, !dbg !1700

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !1701
  store i8 0, i8* %660, align 1, !dbg !1702, !tbaa !748
  br label %671, !dbg !1701

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1167, metadata !DIExpression()), !dbg !1229
  call void @llvm.dbg.value(metadata i64 %663, metadata !1169, metadata !DIExpression()), !dbg !1231
  %665 = icmp ne i32 %662, 2, !dbg !1703
  %666 = icmp eq i8 %102, 0, !dbg !1705
  %667 = or i1 %665, %666, !dbg !1706
  call void @llvm.dbg.value(metadata i32 4, metadata !1170, metadata !DIExpression()), !dbg !1232
  %668 = select i1 %667, i32 %662, i32 4, !dbg !1706
  call void @llvm.dbg.value(metadata i32 %668, metadata !1170, metadata !DIExpression()), !dbg !1232
  %669 = and i32 %5, -3, !dbg !1707
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !1708
  br label %671, !dbg !1709

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !1710
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !1711 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1715, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.value(metadata i32 %1, metadata !1716, metadata !DIExpression()), !dbg !1720
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #10, !dbg !1721
  call void @llvm.dbg.value(metadata i8* %3, metadata !1717, metadata !DIExpression()), !dbg !1722
  %4 = icmp eq i8* %3, %0, !dbg !1723
  br i1 %4, label %5, label %71, !dbg !1725

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #10, !dbg !1726
  call void @llvm.dbg.value(metadata i8* %6, metadata !1718, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.value(metadata i8* %6, metadata !1728, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* null, metadata !1734, metadata !DIExpression()), !dbg !1747
  call void @llvm.dbg.value(metadata i8 85, metadata !1735, metadata !DIExpression()), !dbg !1748
  call void @llvm.dbg.value(metadata i8 84, metadata !1736, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.value(metadata i8 70, metadata !1737, metadata !DIExpression()), !dbg !1750
  call void @llvm.dbg.value(metadata i8 45, metadata !1738, metadata !DIExpression()), !dbg !1751
  call void @llvm.dbg.value(metadata i8 56, metadata !1739, metadata !DIExpression()), !dbg !1752
  call void @llvm.dbg.value(metadata i8 0, metadata !1740, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.value(metadata i8 0, metadata !1741, metadata !DIExpression()), !dbg !1754
  call void @llvm.dbg.value(metadata i8 0, metadata !1742, metadata !DIExpression()), !dbg !1755
  call void @llvm.dbg.value(metadata i8 0, metadata !1743, metadata !DIExpression()), !dbg !1756
  %7 = load i8, i8* %6, align 1, !dbg !1757, !tbaa !748
  %8 = and i8 %7, -33, !dbg !1757
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !1757

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1759, metadata !DIExpression()), !dbg !1773
  call void @llvm.dbg.value(metadata i8* null, metadata !1764, metadata !DIExpression()), !dbg !1777
  call void @llvm.dbg.value(metadata i8 84, metadata !1765, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.value(metadata i8 70, metadata !1766, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.value(metadata i8 45, metadata !1767, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.value(metadata i8 56, metadata !1768, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.value(metadata i8 0, metadata !1769, metadata !DIExpression()), !dbg !1782
  call void @llvm.dbg.value(metadata i8 0, metadata !1770, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8 0, metadata !1771, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1785
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1786
  %11 = load i8, i8* %10, align 1, !dbg !1786, !tbaa !748
  %12 = and i8 %11, -33, !dbg !1786
  %13 = icmp eq i8 %12, 84, !dbg !1786
  br i1 %13, label %14, label %68, !dbg !1786

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !1788, metadata !DIExpression()), !dbg !1801
  call void @llvm.dbg.value(metadata i8* null, metadata !1793, metadata !DIExpression()), !dbg !1805
  call void @llvm.dbg.value(metadata i8 70, metadata !1794, metadata !DIExpression()), !dbg !1806
  call void @llvm.dbg.value(metadata i8 45, metadata !1795, metadata !DIExpression()), !dbg !1807
  call void @llvm.dbg.value(metadata i8 56, metadata !1796, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.value(metadata i8 0, metadata !1797, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.value(metadata i8 0, metadata !1798, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.value(metadata i8 0, metadata !1799, metadata !DIExpression()), !dbg !1811
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1812
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1813
  %16 = load i8, i8* %15, align 1, !dbg !1813, !tbaa !748
  %17 = and i8 %16, -33, !dbg !1813
  %18 = icmp eq i8 %17, 70, !dbg !1813
  br i1 %18, label %19, label %68, !dbg !1813

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !1815, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.value(metadata i8* null, metadata !1820, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.value(metadata i8 45, metadata !1821, metadata !DIExpression()), !dbg !1832
  call void @llvm.dbg.value(metadata i8 56, metadata !1822, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.value(metadata i8 0, metadata !1823, metadata !DIExpression()), !dbg !1834
  call void @llvm.dbg.value(metadata i8 0, metadata !1824, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.value(metadata i8 0, metadata !1825, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i8 0, metadata !1826, metadata !DIExpression()), !dbg !1837
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1838
  %21 = load i8, i8* %20, align 1, !dbg !1838, !tbaa !748
  %22 = icmp eq i8 %21, 45, !dbg !1838
  br i1 %22, label %23, label %68, !dbg !1840

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !1841, metadata !DIExpression()), !dbg !1852
  call void @llvm.dbg.value(metadata i8* null, metadata !1846, metadata !DIExpression()), !dbg !1856
  call void @llvm.dbg.value(metadata i8 56, metadata !1847, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i8 0, metadata !1848, metadata !DIExpression()), !dbg !1858
  call void @llvm.dbg.value(metadata i8 0, metadata !1849, metadata !DIExpression()), !dbg !1859
  call void @llvm.dbg.value(metadata i8 0, metadata !1850, metadata !DIExpression()), !dbg !1860
  call void @llvm.dbg.value(metadata i8 0, metadata !1851, metadata !DIExpression()), !dbg !1861
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1862
  %25 = load i8, i8* %24, align 1, !dbg !1862, !tbaa !748
  %26 = icmp eq i8 %25, 56, !dbg !1862
  br i1 %26, label %27, label %68, !dbg !1864

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !1865, metadata !DIExpression()), !dbg !1875
  call void @llvm.dbg.value(metadata i8* null, metadata !1870, metadata !DIExpression()), !dbg !1879
  call void @llvm.dbg.value(metadata i8 0, metadata !1871, metadata !DIExpression()), !dbg !1880
  call void @llvm.dbg.value(metadata i8 0, metadata !1872, metadata !DIExpression()), !dbg !1881
  call void @llvm.dbg.value(metadata i8 0, metadata !1873, metadata !DIExpression()), !dbg !1882
  call void @llvm.dbg.value(metadata i8 0, metadata !1874, metadata !DIExpression()), !dbg !1883
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1884
  %29 = load i8, i8* %28, align 1, !dbg !1884, !tbaa !748
  %30 = icmp eq i8 %29, 0, !dbg !1884
  br i1 %30, label %31, label %68, !dbg !1886

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !1887, !tbaa !748
  %33 = icmp eq i8 %32, 96, !dbg !1888
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.67, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.68, i64 0, i64 0), !dbg !1887
  br label %71, !dbg !1889

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !1759, metadata !DIExpression()), !dbg !1890
  call void @llvm.dbg.value(metadata i8* null, metadata !1764, metadata !DIExpression()), !dbg !1894
  call void @llvm.dbg.value(metadata i8 66, metadata !1765, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata i8 49, metadata !1766, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.value(metadata i8 56, metadata !1767, metadata !DIExpression()), !dbg !1897
  call void @llvm.dbg.value(metadata i8 48, metadata !1768, metadata !DIExpression()), !dbg !1898
  call void @llvm.dbg.value(metadata i8 51, metadata !1769, metadata !DIExpression()), !dbg !1899
  call void @llvm.dbg.value(metadata i8 48, metadata !1770, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.value(metadata i8 0, metadata !1771, metadata !DIExpression()), !dbg !1901
  call void @llvm.dbg.value(metadata i8 0, metadata !1772, metadata !DIExpression()), !dbg !1902
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !1903
  %37 = load i8, i8* %36, align 1, !dbg !1903, !tbaa !748
  %38 = and i8 %37, -33, !dbg !1903
  %39 = icmp eq i8 %38, 66, !dbg !1903
  br i1 %39, label %40, label %68, !dbg !1903

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !1788, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata i8* null, metadata !1793, metadata !DIExpression()), !dbg !1906
  call void @llvm.dbg.value(metadata i8 49, metadata !1794, metadata !DIExpression()), !dbg !1907
  call void @llvm.dbg.value(metadata i8 56, metadata !1795, metadata !DIExpression()), !dbg !1908
  call void @llvm.dbg.value(metadata i8 48, metadata !1796, metadata !DIExpression()), !dbg !1909
  call void @llvm.dbg.value(metadata i8 51, metadata !1797, metadata !DIExpression()), !dbg !1910
  call void @llvm.dbg.value(metadata i8 48, metadata !1798, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata i8 0, metadata !1799, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.value(metadata i8 0, metadata !1800, metadata !DIExpression()), !dbg !1913
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !1914
  %42 = load i8, i8* %41, align 1, !dbg !1914, !tbaa !748
  %43 = icmp eq i8 %42, 49, !dbg !1914
  br i1 %43, label %44, label %68, !dbg !1915

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !1815, metadata !DIExpression()), !dbg !1916
  call void @llvm.dbg.value(metadata i8* null, metadata !1820, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata i8 56, metadata !1821, metadata !DIExpression()), !dbg !1919
  call void @llvm.dbg.value(metadata i8 48, metadata !1822, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata i8 51, metadata !1823, metadata !DIExpression()), !dbg !1921
  call void @llvm.dbg.value(metadata i8 48, metadata !1824, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.value(metadata i8 0, metadata !1825, metadata !DIExpression()), !dbg !1923
  call void @llvm.dbg.value(metadata i8 0, metadata !1826, metadata !DIExpression()), !dbg !1924
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !1925
  %46 = load i8, i8* %45, align 1, !dbg !1925, !tbaa !748
  %47 = icmp eq i8 %46, 56, !dbg !1925
  br i1 %47, label %48, label %68, !dbg !1926

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !1841, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata i8* null, metadata !1846, metadata !DIExpression()), !dbg !1929
  call void @llvm.dbg.value(metadata i8 48, metadata !1847, metadata !DIExpression()), !dbg !1930
  call void @llvm.dbg.value(metadata i8 51, metadata !1848, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8 48, metadata !1849, metadata !DIExpression()), !dbg !1932
  call void @llvm.dbg.value(metadata i8 0, metadata !1850, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8 0, metadata !1851, metadata !DIExpression()), !dbg !1934
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !1935
  %50 = load i8, i8* %49, align 1, !dbg !1935, !tbaa !748
  %51 = icmp eq i8 %50, 48, !dbg !1935
  br i1 %51, label %52, label %68, !dbg !1936

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !1865, metadata !DIExpression()), !dbg !1937
  call void @llvm.dbg.value(metadata i8* null, metadata !1870, metadata !DIExpression()), !dbg !1939
  call void @llvm.dbg.value(metadata i8 51, metadata !1871, metadata !DIExpression()), !dbg !1940
  call void @llvm.dbg.value(metadata i8 48, metadata !1872, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i8 0, metadata !1873, metadata !DIExpression()), !dbg !1942
  call void @llvm.dbg.value(metadata i8 0, metadata !1874, metadata !DIExpression()), !dbg !1943
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !1944
  %54 = load i8, i8* %53, align 1, !dbg !1944, !tbaa !748
  %55 = icmp eq i8 %54, 51, !dbg !1944
  br i1 %55, label %56, label %68, !dbg !1945

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !1946, metadata !DIExpression()), !dbg !1955
  call void @llvm.dbg.value(metadata i8* null, metadata !1951, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i8 48, metadata !1952, metadata !DIExpression()), !dbg !1960
  call void @llvm.dbg.value(metadata i8 0, metadata !1953, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i8 0, metadata !1954, metadata !DIExpression()), !dbg !1962
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !1963
  %58 = load i8, i8* %57, align 1, !dbg !1963, !tbaa !748
  %59 = icmp eq i8 %58, 48, !dbg !1963
  br i1 %59, label %60, label %68, !dbg !1965

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !1966, metadata !DIExpression()), !dbg !1974
  call void @llvm.dbg.value(metadata i8* null, metadata !1971, metadata !DIExpression()), !dbg !1978
  call void @llvm.dbg.value(metadata i8 0, metadata !1972, metadata !DIExpression()), !dbg !1979
  call void @llvm.dbg.value(metadata i8 0, metadata !1973, metadata !DIExpression()), !dbg !1980
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !1981
  %62 = load i8, i8* %61, align 1, !dbg !1981, !tbaa !748
  %63 = icmp eq i8 %62, 0, !dbg !1981
  br i1 %63, label %64, label %68, !dbg !1983

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !1984, !tbaa !748
  %66 = icmp eq i8 %65, 96, !dbg !1985
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.69, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.70, i64 0, i64 0), !dbg !1984
  br label %71, !dbg !1986

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !1987
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.66, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.65, i64 0, i64 0), !dbg !1988
  br label %71, !dbg !1989

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !1990
  ret i8* %72, !dbg !1991
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
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !1992 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1996, metadata !DIExpression()), !dbg !1999
  call void @llvm.dbg.value(metadata i64 %1, metadata !1997, metadata !DIExpression()), !dbg !2000
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1998, metadata !DIExpression()), !dbg !2001
  call void @llvm.dbg.value(metadata i8* %0, metadata !2002, metadata !DIExpression()) #10, !dbg !2015
  call void @llvm.dbg.value(metadata i64 %1, metadata !2007, metadata !DIExpression()) #10, !dbg !2017
  call void @llvm.dbg.value(metadata i64* null, metadata !2008, metadata !DIExpression()) #10, !dbg !2018
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2009, metadata !DIExpression()) #10, !dbg !2019
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2020
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2020
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2010, metadata !DIExpression()) #10, !dbg !2021
  %6 = tail call i32* @__errno_location() #17, !dbg !2022
  %7 = load i32, i32* %6, align 4, !dbg !2022, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %7, metadata !2011, metadata !DIExpression()) #10, !dbg !2023
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2024
  %9 = load i32, i32* %8, align 4, !dbg !2024, !tbaa !1099
  %10 = or i32 %9, 1, !dbg !2025
  call void @llvm.dbg.value(metadata i32 %10, metadata !2012, metadata !DIExpression()) #10, !dbg !2026
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2027
  %12 = load i32, i32* %11, align 8, !dbg !2027, !tbaa !1039
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2028
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2029
  %15 = load i8*, i8** %14, align 8, !dbg !2029, !tbaa !1125
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2030
  %17 = load i8*, i8** %16, align 8, !dbg !2030, !tbaa !1128
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #10, !dbg !2031
  %19 = add i64 %18, 1, !dbg !2032
  call void @llvm.dbg.value(metadata i64 %19, metadata !2013, metadata !DIExpression()) #10, !dbg !2033
  call void @llvm.dbg.value(metadata i64 %19, metadata !2034, metadata !DIExpression()) #10, !dbg !2039
  %20 = tail call noalias i8* @xmalloc(i64 %19) #10, !dbg !2041
  call void @llvm.dbg.value(metadata i8* %20, metadata !2014, metadata !DIExpression()) #10, !dbg !2042
  %21 = load i32, i32* %11, align 8, !dbg !2043, !tbaa !1039
  %22 = load i8*, i8** %14, align 8, !dbg !2044, !tbaa !1125
  %23 = load i8*, i8** %16, align 8, !dbg !2045, !tbaa !1128
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #10, !dbg !2046
  store i32 %7, i32* %6, align 4, !dbg !2047, !tbaa !739
  ret i8* %20, !dbg !2048
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2003 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2002, metadata !DIExpression()), !dbg !2049
  call void @llvm.dbg.value(metadata i64 %1, metadata !2007, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64* %2, metadata !2008, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2009, metadata !DIExpression()), !dbg !2052
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2053
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2053
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2010, metadata !DIExpression()), !dbg !2054
  %7 = tail call i32* @__errno_location() #17, !dbg !2055
  %8 = load i32, i32* %7, align 4, !dbg !2055, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %8, metadata !2011, metadata !DIExpression()), !dbg !2056
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2057
  %10 = load i32, i32* %9, align 4, !dbg !2057, !tbaa !1099
  %11 = icmp ne i64* %2, null, !dbg !2058
  %12 = xor i1 %11, true, !dbg !2058
  %13 = zext i1 %12 to i32, !dbg !2058
  %14 = or i32 %10, %13, !dbg !2059
  call void @llvm.dbg.value(metadata i32 %14, metadata !2012, metadata !DIExpression()), !dbg !2060
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2061
  %16 = load i32, i32* %15, align 8, !dbg !2061, !tbaa !1039
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2062
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2063
  %19 = load i8*, i8** %18, align 8, !dbg !2063, !tbaa !1125
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2064
  %21 = load i8*, i8** %20, align 8, !dbg !2064, !tbaa !1128
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2065
  %23 = add i64 %22, 1, !dbg !2066
  call void @llvm.dbg.value(metadata i64 %23, metadata !2013, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.value(metadata i64 %23, metadata !2034, metadata !DIExpression()) #10, !dbg !2068
  %24 = tail call noalias i8* @xmalloc(i64 %23) #10, !dbg !2070
  call void @llvm.dbg.value(metadata i8* %24, metadata !2014, metadata !DIExpression()), !dbg !2071
  %25 = load i32, i32* %15, align 8, !dbg !2072, !tbaa !1039
  %26 = load i8*, i8** %18, align 8, !dbg !2073, !tbaa !1125
  %27 = load i8*, i8** %20, align 8, !dbg !2074, !tbaa !1128
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2075
  store i32 %8, i32* %7, align 4, !dbg !2076, !tbaa !739
  br i1 %11, label %29, label %30, !dbg !2077

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2078, !tbaa !788
  br label %30, !dbg !2080

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2081
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2082 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2086, !tbaa !673
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2084, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i32 1, metadata !2085, metadata !DIExpression()), !dbg !2088
  %2 = load i32, i32* @nslots, align 4, !dbg !2089, !tbaa !739
  %3 = icmp sgt i32 %2, 1, !dbg !2092
  br i1 %3, label %4, label %12, !dbg !2093

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2085, metadata !DIExpression()), !dbg !2088
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2094
  %7 = load i8*, i8** %6, align 8, !dbg !2094, !tbaa !2095
  tail call void @free(i8* %7) #10, !dbg !2097
  %8 = add nuw nsw i64 %5, 1, !dbg !2098
  call void @llvm.dbg.value(metadata i32 undef, metadata !2085, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2088
  %9 = load i32, i32* @nslots, align 4, !dbg !2089, !tbaa !739
  %10 = sext i32 %9 to i64, !dbg !2092
  %11 = icmp slt i64 %8, %10, !dbg !2092
  br i1 %11, label %4, label %12, !dbg !2093, !llvm.loop !2099

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2101
  %14 = load i8*, i8** %13, align 8, !dbg !2101, !tbaa !2095
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2103
  br i1 %15, label %17, label %16, !dbg !2104

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #10, !dbg !2105
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2107, !tbaa !2108
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2109, !tbaa !2095
  br label %17, !dbg !2110

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2111
  br i1 %18, label %21, label %19, !dbg !2113

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2114
  tail call void @free(i8* %20) #10, !dbg !2116
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2117, !tbaa !673
  br label %21, !dbg !2118

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2119, !tbaa !739
  ret void, !dbg !2120
}

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2121 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2125, metadata !DIExpression()), !dbg !2127
  call void @llvm.dbg.value(metadata i8* %1, metadata !2126, metadata !DIExpression()), !dbg !2128
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2129
  ret i8* %3, !dbg !2130
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2131 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2135, metadata !DIExpression()), !dbg !2150
  call void @llvm.dbg.value(metadata i8* %1, metadata !2136, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.value(metadata i64 %2, metadata !2137, metadata !DIExpression()), !dbg !2152
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2138, metadata !DIExpression()), !dbg !2153
  %5 = tail call i32* @__errno_location() #17, !dbg !2154
  %6 = load i32, i32* %5, align 4, !dbg !2154, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %6, metadata !2139, metadata !DIExpression()), !dbg !2155
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2156, !tbaa !673
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2140, metadata !DIExpression()), !dbg !2157
  %8 = icmp slt i32 %0, 0, !dbg !2158
  br i1 %8, label %9, label %10, !dbg !2160

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2161
  unreachable, !dbg !2161

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2162, !tbaa !739
  %12 = icmp sgt i32 %11, %0, !dbg !2163
  br i1 %12, label %34, label %13, !dbg !2164

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2165
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2144, metadata !DIExpression()), !dbg !2166
  %15 = icmp eq i32 %0, 2147483647, !dbg !2167
  br i1 %15, label %16, label %17, !dbg !2169

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2170
  unreachable, !dbg !2170

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2171
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2171
  %20 = add nsw i32 %0, 1, !dbg !2172
  %21 = sext i32 %20 to i64, !dbg !2173
  %22 = shl nsw i64 %21, 4, !dbg !2174
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #10, !dbg !2175
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2175
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2140, metadata !DIExpression()), !dbg !2157
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2176, !tbaa !673
  br i1 %14, label %25, label %26, !dbg !2177

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2178, !tbaa.struct !2180
  br label %26, !dbg !2181

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2182, !tbaa !739
  %28 = sext i32 %27 to i64, !dbg !2183
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2183
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2184
  %31 = sub nsw i32 %20, %27, !dbg !2185
  %32 = sext i32 %31 to i64, !dbg !2186
  %33 = shl nsw i64 %32, 4, !dbg !2187
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2184
  store i32 %20, i32* @nslots, align 4, !dbg !2188, !tbaa !739
  br label %34, !dbg !2189

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2190
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2140, metadata !DIExpression()), !dbg !2157
  %36 = sext i32 %0 to i64, !dbg !2191
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2192
  %38 = load i64, i64* %37, align 8, !dbg !2192, !tbaa !2108
  call void @llvm.dbg.value(metadata i64 %38, metadata !2145, metadata !DIExpression()), !dbg !2193
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2194
  %40 = load i8*, i8** %39, align 8, !dbg !2194, !tbaa !2095
  call void @llvm.dbg.value(metadata i8* %40, metadata !2147, metadata !DIExpression()), !dbg !2195
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2196
  %42 = load i32, i32* %41, align 4, !dbg !2196, !tbaa !1099
  %43 = or i32 %42, 1, !dbg !2197
  call void @llvm.dbg.value(metadata i32 %43, metadata !2148, metadata !DIExpression()), !dbg !2198
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2199
  %45 = load i32, i32* %44, align 8, !dbg !2199, !tbaa !1039
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2200
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2201
  %48 = load i8*, i8** %47, align 8, !dbg !2201, !tbaa !1125
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2202
  %50 = load i8*, i8** %49, align 8, !dbg !2202, !tbaa !1128
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2203
  call void @llvm.dbg.value(metadata i64 %51, metadata !2149, metadata !DIExpression()), !dbg !2204
  %52 = icmp ugt i64 %38, %51, !dbg !2205
  br i1 %52, label %63, label %53, !dbg !2207

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2208
  call void @llvm.dbg.value(metadata i64 %54, metadata !2145, metadata !DIExpression()), !dbg !2193
  store i64 %54, i64* %37, align 8, !dbg !2210, !tbaa !2108
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2211
  br i1 %55, label %57, label %56, !dbg !2213

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #10, !dbg !2214
  br label %57, !dbg !2214

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2034, metadata !DIExpression()) #10, !dbg !2215
  %58 = tail call noalias i8* @xmalloc(i64 %54) #10, !dbg !2217
  call void @llvm.dbg.value(metadata i8* %58, metadata !2147, metadata !DIExpression()), !dbg !2195
  store i8* %58, i8** %39, align 8, !dbg !2218, !tbaa !2095
  %59 = load i32, i32* %44, align 8, !dbg !2219, !tbaa !1039
  %60 = load i8*, i8** %47, align 8, !dbg !2220, !tbaa !1125
  %61 = load i8*, i8** %49, align 8, !dbg !2221, !tbaa !1128
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2222
  br label %63, !dbg !2223

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2224
  call void @llvm.dbg.value(metadata i8* %64, metadata !2147, metadata !DIExpression()), !dbg !2195
  store i32 %6, i32* %5, align 4, !dbg !2225, !tbaa !739
  ret i8* %64, !dbg !2226
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2227 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2231, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* %1, metadata !2232, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i64 %2, metadata !2233, metadata !DIExpression()), !dbg !2236
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2237
  ret i8* %4, !dbg !2238
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2239 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2243, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i32 0, metadata !2125, metadata !DIExpression()) #10, !dbg !2245
  call void @llvm.dbg.value(metadata i8* %0, metadata !2126, metadata !DIExpression()) #10, !dbg !2247
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2248
  ret i8* %2, !dbg !2249
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2250 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2254, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i64 %1, metadata !2255, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i32 0, metadata !2231, metadata !DIExpression()) #10, !dbg !2258
  call void @llvm.dbg.value(metadata i8* %0, metadata !2232, metadata !DIExpression()) #10, !dbg !2260
  call void @llvm.dbg.value(metadata i64 %1, metadata !2233, metadata !DIExpression()) #10, !dbg !2261
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #10, !dbg !2262
  ret i8* %3, !dbg !2263
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2264 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2268, metadata !DIExpression()), !dbg !2272
  call void @llvm.dbg.value(metadata i32 %1, metadata !2269, metadata !DIExpression()), !dbg !2273
  call void @llvm.dbg.value(metadata i8* %2, metadata !2270, metadata !DIExpression()), !dbg !2274
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2275
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2275
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2271, metadata !DIExpression(DW_OP_deref)), !dbg !2276
  call void @llvm.dbg.value(metadata i32 %1, metadata !2277, metadata !DIExpression()) #10, !dbg !2283
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2285, !alias.scope !2286
  %6 = icmp eq i32 %1, 10, !dbg !2289
  br i1 %6, label %7, label %8, !dbg !2291

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2292, !noalias !2286
  unreachable, !dbg !2292

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2293
  store i32 %1, i32* %9, align 8, !dbg !2294, !tbaa !1039, !alias.scope !2286
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2271, metadata !DIExpression(DW_OP_deref)), !dbg !2276
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2282, metadata !DIExpression(DW_OP_deref)), !dbg !2285
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2295
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2296
  ret i8* %10, !dbg !2297
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2298 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2302, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata i32 %1, metadata !2303, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8* %2, metadata !2304, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %3, metadata !2305, metadata !DIExpression()), !dbg !2310
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2311
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2311
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2306, metadata !DIExpression(DW_OP_deref)), !dbg !2312
  call void @llvm.dbg.value(metadata i32 %1, metadata !2277, metadata !DIExpression()) #10, !dbg !2313
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #10, !dbg !2315, !alias.scope !2316
  %7 = icmp eq i32 %1, 10, !dbg !2319
  br i1 %7, label %8, label %9, !dbg !2320

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2321, !noalias !2316
  unreachable, !dbg !2321

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2322
  store i32 %1, i32* %10, align 8, !dbg !2323, !tbaa !1039, !alias.scope !2316
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2306, metadata !DIExpression(DW_OP_deref)), !dbg !2312
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2282, metadata !DIExpression(DW_OP_deref)), !dbg !2315
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2324
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2325
  ret i8* %11, !dbg !2326
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2327 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2331, metadata !DIExpression()), !dbg !2333
  call void @llvm.dbg.value(metadata i8* %1, metadata !2332, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i32 0, metadata !2268, metadata !DIExpression()) #10, !dbg !2335
  call void @llvm.dbg.value(metadata i32 %0, metadata !2269, metadata !DIExpression()) #10, !dbg !2337
  call void @llvm.dbg.value(metadata i8* %1, metadata !2270, metadata !DIExpression()) #10, !dbg !2338
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2339
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2339
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2271, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2340
  call void @llvm.dbg.value(metadata i32 %0, metadata !2277, metadata !DIExpression()) #10, !dbg !2341
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #10, !dbg !2343, !alias.scope !2344
  %5 = icmp eq i32 %0, 10, !dbg !2347
  br i1 %5, label %6, label %7, !dbg !2348

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2349, !noalias !2344
  unreachable, !dbg !2349

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2350
  store i32 %0, i32* %8, align 8, !dbg !2351, !tbaa !1039, !alias.scope !2344
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2271, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2340
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2282, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2343
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2352
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2353
  ret i8* %9, !dbg !2354
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2355 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2359, metadata !DIExpression()), !dbg !2362
  call void @llvm.dbg.value(metadata i8* %1, metadata !2360, metadata !DIExpression()), !dbg !2363
  call void @llvm.dbg.value(metadata i64 %2, metadata !2361, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.value(metadata i32 0, metadata !2302, metadata !DIExpression()) #10, !dbg !2365
  call void @llvm.dbg.value(metadata i32 %0, metadata !2303, metadata !DIExpression()) #10, !dbg !2367
  call void @llvm.dbg.value(metadata i8* %1, metadata !2304, metadata !DIExpression()) #10, !dbg !2368
  call void @llvm.dbg.value(metadata i64 %2, metadata !2305, metadata !DIExpression()) #10, !dbg !2369
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2370
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2370
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2306, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2371
  call void @llvm.dbg.value(metadata i32 %0, metadata !2277, metadata !DIExpression()) #10, !dbg !2372
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #10, !dbg !2374, !alias.scope !2375
  %6 = icmp eq i32 %0, 10, !dbg !2378
  br i1 %6, label %7, label %8, !dbg !2379

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2380, !noalias !2375
  unreachable, !dbg !2380

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2381
  store i32 %0, i32* %9, align 8, !dbg !2382, !tbaa !1039, !alias.scope !2375
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2306, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2371
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2282, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2374
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #10, !dbg !2383
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2384
  ret i8* %10, !dbg !2385
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2386 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2390, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i64 %1, metadata !2391, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.value(metadata i8 %2, metadata !2392, metadata !DIExpression()), !dbg !2396
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2397
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2397
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2398, !tbaa.struct !2399
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2393, metadata !DIExpression(DW_OP_deref)), !dbg !2400
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1058, metadata !DIExpression()), !dbg !2401
  call void @llvm.dbg.value(metadata i8 %2, metadata !1059, metadata !DIExpression()), !dbg !2403
  call void @llvm.dbg.value(metadata i32 1, metadata !1060, metadata !DIExpression()), !dbg !2404
  call void @llvm.dbg.value(metadata i8 %2, metadata !1061, metadata !DIExpression()), !dbg !2405
  %6 = lshr i8 %2, 5, !dbg !2406
  %7 = zext i8 %6 to i64, !dbg !2406
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2407
  call void @llvm.dbg.value(metadata i32* %8, metadata !1063, metadata !DIExpression()), !dbg !2408
  %9 = and i8 %2, 31, !dbg !2409
  %10 = zext i8 %9 to i32, !dbg !2409
  call void @llvm.dbg.value(metadata i32 %10, metadata !1065, metadata !DIExpression()), !dbg !2410
  %11 = load i32, i32* %8, align 4, !dbg !2411, !tbaa !739
  %12 = lshr i32 %11, %10, !dbg !2412
  %13 = and i32 %12, 1, !dbg !2413
  call void @llvm.dbg.value(metadata i32 %13, metadata !1066, metadata !DIExpression()), !dbg !2414
  %14 = xor i32 %13, 1, !dbg !2415
  %15 = shl i32 %14, %10, !dbg !2416
  %16 = xor i32 %15, %11, !dbg !2417
  store i32 %16, i32* %8, align 4, !dbg !2417, !tbaa !739
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2393, metadata !DIExpression(DW_OP_deref)), !dbg !2400
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2418
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2419
  ret i8* %17, !dbg !2420
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2421 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2425, metadata !DIExpression()), !dbg !2427
  call void @llvm.dbg.value(metadata i8 %1, metadata !2426, metadata !DIExpression()), !dbg !2428
  call void @llvm.dbg.value(metadata i8* %0, metadata !2390, metadata !DIExpression()) #10, !dbg !2429
  call void @llvm.dbg.value(metadata i64 -1, metadata !2391, metadata !DIExpression()) #10, !dbg !2431
  call void @llvm.dbg.value(metadata i8 %1, metadata !2392, metadata !DIExpression()) #10, !dbg !2432
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2433
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2433
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2434, !tbaa.struct !2399
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2393, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2435
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1058, metadata !DIExpression()) #10, !dbg !2436
  call void @llvm.dbg.value(metadata i8 %1, metadata !1059, metadata !DIExpression()) #10, !dbg !2438
  call void @llvm.dbg.value(metadata i32 1, metadata !1060, metadata !DIExpression()) #10, !dbg !2439
  call void @llvm.dbg.value(metadata i8 %1, metadata !1061, metadata !DIExpression()) #10, !dbg !2440
  %5 = lshr i8 %1, 5, !dbg !2441
  %6 = zext i8 %5 to i64, !dbg !2441
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2442
  call void @llvm.dbg.value(metadata i32* %7, metadata !1063, metadata !DIExpression()) #10, !dbg !2443
  %8 = and i8 %1, 31, !dbg !2444
  %9 = zext i8 %8 to i32, !dbg !2444
  call void @llvm.dbg.value(metadata i32 %9, metadata !1065, metadata !DIExpression()) #10, !dbg !2445
  %10 = load i32, i32* %7, align 4, !dbg !2446, !tbaa !739
  %11 = lshr i32 %10, %9, !dbg !2447
  %12 = and i32 %11, 1, !dbg !2448
  call void @llvm.dbg.value(metadata i32 %12, metadata !1066, metadata !DIExpression()) #10, !dbg !2449
  %13 = xor i32 %12, 1, !dbg !2450
  %14 = shl i32 %13, %9, !dbg !2451
  %15 = xor i32 %14, %10, !dbg !2452
  store i32 %15, i32* %7, align 4, !dbg !2452, !tbaa !739
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2393, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2435
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #10, !dbg !2453
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2454
  ret i8* %16, !dbg !2455
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2456 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2458, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.value(metadata i8* %0, metadata !2425, metadata !DIExpression()) #10, !dbg !2460
  call void @llvm.dbg.value(metadata i8 58, metadata !2426, metadata !DIExpression()) #10, !dbg !2462
  call void @llvm.dbg.value(metadata i8* %0, metadata !2390, metadata !DIExpression()) #10, !dbg !2463
  call void @llvm.dbg.value(metadata i64 -1, metadata !2391, metadata !DIExpression()) #10, !dbg !2465
  call void @llvm.dbg.value(metadata i8 58, metadata !2392, metadata !DIExpression()) #10, !dbg !2466
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2467
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2467
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2468, !tbaa.struct !2399
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2393, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2469
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1058, metadata !DIExpression()) #10, !dbg !2470
  call void @llvm.dbg.value(metadata i8 58, metadata !1059, metadata !DIExpression()) #10, !dbg !2472
  call void @llvm.dbg.value(metadata i32 1, metadata !1060, metadata !DIExpression()) #10, !dbg !2473
  call void @llvm.dbg.value(metadata i8 58, metadata !1061, metadata !DIExpression()) #10, !dbg !2474
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2475
  call void @llvm.dbg.value(metadata i32* %4, metadata !1063, metadata !DIExpression()) #10, !dbg !2476
  call void @llvm.dbg.value(metadata i32 26, metadata !1065, metadata !DIExpression()) #10, !dbg !2477
  %5 = load i32, i32* %4, align 4, !dbg !2478, !tbaa !739
  %6 = or i32 %5, 67108864, !dbg !2479
  store i32 %6, i32* %4, align 4, !dbg !2479, !tbaa !739
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2393, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2469
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #10, !dbg !2480
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #10, !dbg !2481
  ret i8* %7, !dbg !2482
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2483 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2485, metadata !DIExpression()), !dbg !2487
  call void @llvm.dbg.value(metadata i64 %1, metadata !2486, metadata !DIExpression()), !dbg !2488
  call void @llvm.dbg.value(metadata i8* %0, metadata !2390, metadata !DIExpression()) #10, !dbg !2489
  call void @llvm.dbg.value(metadata i64 %1, metadata !2391, metadata !DIExpression()) #10, !dbg !2491
  call void @llvm.dbg.value(metadata i8 58, metadata !2392, metadata !DIExpression()) #10, !dbg !2492
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2493
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2493
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2494, !tbaa.struct !2399
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2393, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2495
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1058, metadata !DIExpression()) #10, !dbg !2496
  call void @llvm.dbg.value(metadata i8 58, metadata !1059, metadata !DIExpression()) #10, !dbg !2498
  call void @llvm.dbg.value(metadata i32 1, metadata !1060, metadata !DIExpression()) #10, !dbg !2499
  call void @llvm.dbg.value(metadata i8 58, metadata !1061, metadata !DIExpression()) #10, !dbg !2500
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2501
  call void @llvm.dbg.value(metadata i32* %5, metadata !1063, metadata !DIExpression()) #10, !dbg !2502
  call void @llvm.dbg.value(metadata i32 26, metadata !1065, metadata !DIExpression()) #10, !dbg !2503
  %6 = load i32, i32* %5, align 4, !dbg !2504, !tbaa !739
  %7 = or i32 %6, 67108864, !dbg !2505
  store i32 %7, i32* %5, align 4, !dbg !2505, !tbaa !739
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2393, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2495
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #10, !dbg !2506
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #10, !dbg !2507
  ret i8* %8, !dbg !2508
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2509 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2282, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2515
  call void @llvm.dbg.value(metadata i32 %0, metadata !2511, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.value(metadata i32 %1, metadata !2512, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i8* %2, metadata !2513, metadata !DIExpression()), !dbg !2519
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2520
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2520
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2521
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2521
  call void @llvm.dbg.value(metadata i32 %1, metadata !2277, metadata !DIExpression()) #10, !dbg !2522
  call void @llvm.dbg.value(metadata i32 0, metadata !2282, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2515
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2515, !alias.scope !2523
  %8 = icmp eq i32 %1, 10, !dbg !2526
  br i1 %8, label %9, label %10, !dbg !2527

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2528, !noalias !2523
  unreachable, !dbg !2528

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2282, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2515
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2521
  store i32 %1, i32* %11, align 8, !dbg !2521
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2521
  %13 = bitcast i32* %12 to i8*, !dbg !2521
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2521
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2521
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2514, metadata !DIExpression(DW_OP_deref)), !dbg !2529
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1058, metadata !DIExpression()), !dbg !2530
  call void @llvm.dbg.value(metadata i8 58, metadata !1059, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i32 1, metadata !1060, metadata !DIExpression()), !dbg !2533
  call void @llvm.dbg.value(metadata i8 58, metadata !1061, metadata !DIExpression()), !dbg !2534
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2535
  call void @llvm.dbg.value(metadata i32* %14, metadata !1063, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.value(metadata i32 26, metadata !1065, metadata !DIExpression()), !dbg !2537
  %15 = load i32, i32* %14, align 4, !dbg !2538, !tbaa !739
  %16 = or i32 %15, 67108864, !dbg !2539
  store i32 %16, i32* %14, align 4, !dbg !2539, !tbaa !739
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2514, metadata !DIExpression(DW_OP_deref)), !dbg !2529
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2540
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2541
  ret i8* %17, !dbg !2542
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2543 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2547, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.value(metadata i8* %1, metadata !2548, metadata !DIExpression()), !dbg !2552
  call void @llvm.dbg.value(metadata i8* %2, metadata !2549, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.value(metadata i8* %3, metadata !2550, metadata !DIExpression()), !dbg !2554
  call void @llvm.dbg.value(metadata i32 %0, metadata !2555, metadata !DIExpression()) #10, !dbg !2565
  call void @llvm.dbg.value(metadata i8* %1, metadata !2560, metadata !DIExpression()) #10, !dbg !2567
  call void @llvm.dbg.value(metadata i8* %2, metadata !2561, metadata !DIExpression()) #10, !dbg !2568
  call void @llvm.dbg.value(metadata i8* %3, metadata !2562, metadata !DIExpression()) #10, !dbg !2569
  call void @llvm.dbg.value(metadata i64 -1, metadata !2563, metadata !DIExpression()) #10, !dbg !2570
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2571
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2571
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2572, !tbaa.struct !2399
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2564, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2573
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1107, metadata !DIExpression()) #10, !dbg !2574
  call void @llvm.dbg.value(metadata i8* %1, metadata !1108, metadata !DIExpression()) #10, !dbg !2576
  call void @llvm.dbg.value(metadata i8* %2, metadata !1109, metadata !DIExpression()) #10, !dbg !2577
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1107, metadata !DIExpression()) #10, !dbg !2574
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2578
  store i32 10, i32* %7, align 8, !dbg !2579, !tbaa !1039
  %8 = icmp ne i8* %1, null, !dbg !2580
  %9 = icmp ne i8* %2, null, !dbg !2581
  %10 = and i1 %8, %9, !dbg !2582
  br i1 %10, label %12, label %11, !dbg !2582

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2583
  unreachable, !dbg !2583

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2584
  store i8* %1, i8** %13, align 8, !dbg !2585, !tbaa !1125
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2586
  store i8* %2, i8** %14, align 8, !dbg !2587, !tbaa !1128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2564, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2573
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #10, !dbg !2588
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2589
  ret i8* %15, !dbg !2590
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2556 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2555, metadata !DIExpression()), !dbg !2591
  call void @llvm.dbg.value(metadata i8* %1, metadata !2560, metadata !DIExpression()), !dbg !2592
  call void @llvm.dbg.value(metadata i8* %2, metadata !2561, metadata !DIExpression()), !dbg !2593
  call void @llvm.dbg.value(metadata i8* %3, metadata !2562, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.value(metadata i64 %4, metadata !2563, metadata !DIExpression()), !dbg !2595
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2596
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2596
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2597, !tbaa.struct !2399
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2564, metadata !DIExpression(DW_OP_deref)), !dbg !2598
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1107, metadata !DIExpression()) #10, !dbg !2599
  call void @llvm.dbg.value(metadata i8* %1, metadata !1108, metadata !DIExpression()) #10, !dbg !2601
  call void @llvm.dbg.value(metadata i8* %2, metadata !1109, metadata !DIExpression()) #10, !dbg !2602
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1107, metadata !DIExpression()) #10, !dbg !2599
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2603
  store i32 10, i32* %8, align 8, !dbg !2604, !tbaa !1039
  %9 = icmp ne i8* %1, null, !dbg !2605
  %10 = icmp ne i8* %2, null, !dbg !2606
  %11 = and i1 %9, %10, !dbg !2607
  br i1 %11, label %13, label %12, !dbg !2607

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2608
  unreachable, !dbg !2608

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2609
  store i8* %1, i8** %14, align 8, !dbg !2610, !tbaa !1125
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2611
  store i8* %2, i8** %15, align 8, !dbg !2612, !tbaa !1128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2564, metadata !DIExpression(DW_OP_deref)), !dbg !2598
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2613
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #10, !dbg !2614
  ret i8* %16, !dbg !2615
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2616 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2620, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.value(metadata i8* %1, metadata !2621, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.value(metadata i8* %2, metadata !2622, metadata !DIExpression()), !dbg !2625
  call void @llvm.dbg.value(metadata i32 0, metadata !2547, metadata !DIExpression()) #10, !dbg !2626
  call void @llvm.dbg.value(metadata i8* %0, metadata !2548, metadata !DIExpression()) #10, !dbg !2628
  call void @llvm.dbg.value(metadata i8* %1, metadata !2549, metadata !DIExpression()) #10, !dbg !2629
  call void @llvm.dbg.value(metadata i8* %2, metadata !2550, metadata !DIExpression()) #10, !dbg !2630
  call void @llvm.dbg.value(metadata i32 0, metadata !2555, metadata !DIExpression()) #10, !dbg !2631
  call void @llvm.dbg.value(metadata i8* %0, metadata !2560, metadata !DIExpression()) #10, !dbg !2633
  call void @llvm.dbg.value(metadata i8* %1, metadata !2561, metadata !DIExpression()) #10, !dbg !2634
  call void @llvm.dbg.value(metadata i8* %2, metadata !2562, metadata !DIExpression()) #10, !dbg !2635
  call void @llvm.dbg.value(metadata i64 -1, metadata !2563, metadata !DIExpression()) #10, !dbg !2636
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2637
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2637
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2638, !tbaa.struct !2399
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2564, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2639
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1107, metadata !DIExpression()) #10, !dbg !2640
  call void @llvm.dbg.value(metadata i8* %0, metadata !1108, metadata !DIExpression()) #10, !dbg !2642
  call void @llvm.dbg.value(metadata i8* %1, metadata !1109, metadata !DIExpression()) #10, !dbg !2643
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1107, metadata !DIExpression()) #10, !dbg !2640
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2644
  store i32 10, i32* %6, align 8, !dbg !2645, !tbaa !1039
  %7 = icmp ne i8* %0, null, !dbg !2646
  %8 = icmp ne i8* %1, null, !dbg !2647
  %9 = and i1 %7, %8, !dbg !2648
  br i1 %9, label %11, label %10, !dbg !2648

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2649
  unreachable, !dbg !2649

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2650
  store i8* %0, i8** %12, align 8, !dbg !2651, !tbaa !1125
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2652
  store i8* %1, i8** %13, align 8, !dbg !2653, !tbaa !1128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2564, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2639
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #10, !dbg !2654
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #10, !dbg !2655
  ret i8* %14, !dbg !2656
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2657 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2661, metadata !DIExpression()), !dbg !2665
  call void @llvm.dbg.value(metadata i8* %1, metadata !2662, metadata !DIExpression()), !dbg !2666
  call void @llvm.dbg.value(metadata i8* %2, metadata !2663, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i64 %3, metadata !2664, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i32 0, metadata !2555, metadata !DIExpression()) #10, !dbg !2669
  call void @llvm.dbg.value(metadata i8* %0, metadata !2560, metadata !DIExpression()) #10, !dbg !2671
  call void @llvm.dbg.value(metadata i8* %1, metadata !2561, metadata !DIExpression()) #10, !dbg !2672
  call void @llvm.dbg.value(metadata i8* %2, metadata !2562, metadata !DIExpression()) #10, !dbg !2673
  call void @llvm.dbg.value(metadata i64 %3, metadata !2563, metadata !DIExpression()) #10, !dbg !2674
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2675
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2675
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #10, !dbg !2676, !tbaa.struct !2399
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2564, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2677
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1107, metadata !DIExpression()) #10, !dbg !2678
  call void @llvm.dbg.value(metadata i8* %0, metadata !1108, metadata !DIExpression()) #10, !dbg !2680
  call void @llvm.dbg.value(metadata i8* %1, metadata !1109, metadata !DIExpression()) #10, !dbg !2681
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1107, metadata !DIExpression()) #10, !dbg !2678
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2682
  store i32 10, i32* %7, align 8, !dbg !2683, !tbaa !1039
  %8 = icmp ne i8* %0, null, !dbg !2684
  %9 = icmp ne i8* %1, null, !dbg !2685
  %10 = and i1 %8, %9, !dbg !2686
  br i1 %10, label %12, label %11, !dbg !2686

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2687
  unreachable, !dbg !2687

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2688
  store i8* %0, i8** %13, align 8, !dbg !2689, !tbaa !1125
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2690
  store i8* %1, i8** %14, align 8, !dbg !2691, !tbaa !1128
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2564, metadata !DIExpression(DW_OP_deref)) #10, !dbg !2677
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #10, !dbg !2692
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #10, !dbg !2693
  ret i8* %15, !dbg !2694
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2695 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2699, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.value(metadata i8* %1, metadata !2700, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.value(metadata i64 %2, metadata !2701, metadata !DIExpression()), !dbg !2704
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !2705
  ret i8* %4, !dbg !2706
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !2707 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2711, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.value(metadata i64 %1, metadata !2712, metadata !DIExpression()), !dbg !2714
  call void @llvm.dbg.value(metadata i32 0, metadata !2699, metadata !DIExpression()) #10, !dbg !2715
  call void @llvm.dbg.value(metadata i8* %0, metadata !2700, metadata !DIExpression()) #10, !dbg !2717
  call void @llvm.dbg.value(metadata i64 %1, metadata !2701, metadata !DIExpression()) #10, !dbg !2718
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2719
  ret i8* %3, !dbg !2720
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !2721 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2725, metadata !DIExpression()), !dbg !2727
  call void @llvm.dbg.value(metadata i8* %1, metadata !2726, metadata !DIExpression()), !dbg !2728
  call void @llvm.dbg.value(metadata i32 %0, metadata !2699, metadata !DIExpression()) #10, !dbg !2729
  call void @llvm.dbg.value(metadata i8* %1, metadata !2700, metadata !DIExpression()) #10, !dbg !2731
  call void @llvm.dbg.value(metadata i64 -1, metadata !2701, metadata !DIExpression()) #10, !dbg !2732
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2733
  ret i8* %3, !dbg !2734
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !2735 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2739, metadata !DIExpression()), !dbg !2740
  call void @llvm.dbg.value(metadata i32 0, metadata !2725, metadata !DIExpression()) #10, !dbg !2741
  call void @llvm.dbg.value(metadata i8* %0, metadata !2726, metadata !DIExpression()) #10, !dbg !2743
  call void @llvm.dbg.value(metadata i32 0, metadata !2699, metadata !DIExpression()) #10, !dbg !2744
  call void @llvm.dbg.value(metadata i8* %0, metadata !2700, metadata !DIExpression()) #10, !dbg !2746
  call void @llvm.dbg.value(metadata i64 -1, metadata !2701, metadata !DIExpression()) #10, !dbg !2747
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #10, !dbg !2748
  ret i8* %2, !dbg !2749
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !2750 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2789, metadata !DIExpression()), !dbg !2795
  call void @llvm.dbg.value(metadata i8* %1, metadata !2790, metadata !DIExpression()), !dbg !2796
  call void @llvm.dbg.value(metadata i8* %2, metadata !2791, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata i8* %3, metadata !2792, metadata !DIExpression()), !dbg !2798
  call void @llvm.dbg.value(metadata i8** %4, metadata !2793, metadata !DIExpression()), !dbg !2799
  call void @llvm.dbg.value(metadata i64 %5, metadata !2794, metadata !DIExpression()), !dbg !2800
  %7 = icmp eq i8* %1, null, !dbg !2801
  br i1 %7, label %10, label %8, !dbg !2803

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.75, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #10, !dbg !2804
  br label %12, !dbg !2804

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.76, i64 0, i64 0), i8* %2, i8* %3) #10, !dbg !2805
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.77, i64 0, i64 0), i32 5) #10, !dbg !2806
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #10, !dbg !2806
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.78, i64 0, i64 0), i32 5) #10, !dbg !2807
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !2807
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
  ], !dbg !2808

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !2809
  unreachable, !dbg !2809

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.79, i64 0, i64 0), i32 5) #10, !dbg !2811
  %20 = load i8*, i8** %4, align 8, !dbg !2811, !tbaa !673
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #10, !dbg !2811
  br label %146, !dbg !2812

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.80, i64 0, i64 0), i32 5) #10, !dbg !2813
  %24 = load i8*, i8** %4, align 8, !dbg !2813, !tbaa !673
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2813
  %26 = load i8*, i8** %25, align 8, !dbg !2813, !tbaa !673
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #10, !dbg !2813
  br label %146, !dbg !2814

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.81, i64 0, i64 0), i32 5) #10, !dbg !2815
  %30 = load i8*, i8** %4, align 8, !dbg !2815, !tbaa !673
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2815
  %32 = load i8*, i8** %31, align 8, !dbg !2815, !tbaa !673
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2815
  %34 = load i8*, i8** %33, align 8, !dbg !2815, !tbaa !673
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #10, !dbg !2815
  br label %146, !dbg !2816

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.82, i64 0, i64 0), i32 5) #10, !dbg !2817
  %38 = load i8*, i8** %4, align 8, !dbg !2817, !tbaa !673
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2817
  %40 = load i8*, i8** %39, align 8, !dbg !2817, !tbaa !673
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2817
  %42 = load i8*, i8** %41, align 8, !dbg !2817, !tbaa !673
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2817
  %44 = load i8*, i8** %43, align 8, !dbg !2817, !tbaa !673
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #10, !dbg !2817
  br label %146, !dbg !2818

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.83, i64 0, i64 0), i32 5) #10, !dbg !2819
  %48 = load i8*, i8** %4, align 8, !dbg !2819, !tbaa !673
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2819
  %50 = load i8*, i8** %49, align 8, !dbg !2819, !tbaa !673
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2819
  %52 = load i8*, i8** %51, align 8, !dbg !2819, !tbaa !673
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2819
  %54 = load i8*, i8** %53, align 8, !dbg !2819, !tbaa !673
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2819
  %56 = load i8*, i8** %55, align 8, !dbg !2819, !tbaa !673
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #10, !dbg !2819
  br label %146, !dbg !2820

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.84, i64 0, i64 0), i32 5) #10, !dbg !2821
  %60 = load i8*, i8** %4, align 8, !dbg !2821, !tbaa !673
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2821
  %62 = load i8*, i8** %61, align 8, !dbg !2821, !tbaa !673
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2821
  %64 = load i8*, i8** %63, align 8, !dbg !2821, !tbaa !673
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2821
  %66 = load i8*, i8** %65, align 8, !dbg !2821, !tbaa !673
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2821
  %68 = load i8*, i8** %67, align 8, !dbg !2821, !tbaa !673
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2821
  %70 = load i8*, i8** %69, align 8, !dbg !2821, !tbaa !673
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #10, !dbg !2821
  br label %146, !dbg !2822

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.85, i64 0, i64 0), i32 5) #10, !dbg !2823
  %74 = load i8*, i8** %4, align 8, !dbg !2823, !tbaa !673
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2823
  %76 = load i8*, i8** %75, align 8, !dbg !2823, !tbaa !673
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2823
  %78 = load i8*, i8** %77, align 8, !dbg !2823, !tbaa !673
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2823
  %80 = load i8*, i8** %79, align 8, !dbg !2823, !tbaa !673
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2823
  %82 = load i8*, i8** %81, align 8, !dbg !2823, !tbaa !673
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2823
  %84 = load i8*, i8** %83, align 8, !dbg !2823, !tbaa !673
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2823
  %86 = load i8*, i8** %85, align 8, !dbg !2823, !tbaa !673
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #10, !dbg !2823
  br label %146, !dbg !2824

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.86, i64 0, i64 0), i32 5) #10, !dbg !2825
  %90 = load i8*, i8** %4, align 8, !dbg !2825, !tbaa !673
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2825
  %92 = load i8*, i8** %91, align 8, !dbg !2825, !tbaa !673
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2825
  %94 = load i8*, i8** %93, align 8, !dbg !2825, !tbaa !673
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2825
  %96 = load i8*, i8** %95, align 8, !dbg !2825, !tbaa !673
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2825
  %98 = load i8*, i8** %97, align 8, !dbg !2825, !tbaa !673
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2825
  %100 = load i8*, i8** %99, align 8, !dbg !2825, !tbaa !673
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2825
  %102 = load i8*, i8** %101, align 8, !dbg !2825, !tbaa !673
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2825
  %104 = load i8*, i8** %103, align 8, !dbg !2825, !tbaa !673
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #10, !dbg !2825
  br label %146, !dbg !2826

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.87, i64 0, i64 0), i32 5) #10, !dbg !2827
  %108 = load i8*, i8** %4, align 8, !dbg !2827, !tbaa !673
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2827
  %110 = load i8*, i8** %109, align 8, !dbg !2827, !tbaa !673
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2827
  %112 = load i8*, i8** %111, align 8, !dbg !2827, !tbaa !673
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2827
  %114 = load i8*, i8** %113, align 8, !dbg !2827, !tbaa !673
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2827
  %116 = load i8*, i8** %115, align 8, !dbg !2827, !tbaa !673
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2827
  %118 = load i8*, i8** %117, align 8, !dbg !2827, !tbaa !673
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2827
  %120 = load i8*, i8** %119, align 8, !dbg !2827, !tbaa !673
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2827
  %122 = load i8*, i8** %121, align 8, !dbg !2827, !tbaa !673
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2827
  %124 = load i8*, i8** %123, align 8, !dbg !2827, !tbaa !673
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #10, !dbg !2827
  br label %146, !dbg !2828

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.88, i64 0, i64 0), i32 5) #10, !dbg !2829
  %128 = load i8*, i8** %4, align 8, !dbg !2829, !tbaa !673
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !2829
  %130 = load i8*, i8** %129, align 8, !dbg !2829, !tbaa !673
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !2829
  %132 = load i8*, i8** %131, align 8, !dbg !2829, !tbaa !673
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !2829
  %134 = load i8*, i8** %133, align 8, !dbg !2829, !tbaa !673
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !2829
  %136 = load i8*, i8** %135, align 8, !dbg !2829, !tbaa !673
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !2829
  %138 = load i8*, i8** %137, align 8, !dbg !2829, !tbaa !673
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !2829
  %140 = load i8*, i8** %139, align 8, !dbg !2829, !tbaa !673
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !2829
  %142 = load i8*, i8** %141, align 8, !dbg !2829, !tbaa !673
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !2829
  %144 = load i8*, i8** %143, align 8, !dbg !2829, !tbaa !673
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #10, !dbg !2829
  br label %146, !dbg !2830

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !2831
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !2832 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2836, metadata !DIExpression()), !dbg !2842
  call void @llvm.dbg.value(metadata i8* %1, metadata !2837, metadata !DIExpression()), !dbg !2843
  call void @llvm.dbg.value(metadata i8* %2, metadata !2838, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.value(metadata i8* %3, metadata !2839, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.value(metadata i8** %4, metadata !2840, metadata !DIExpression()), !dbg !2846
  call void @llvm.dbg.value(metadata i64 0, metadata !2841, metadata !DIExpression()), !dbg !2847
  br label %6, !dbg !2848

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !2850
  call void @llvm.dbg.value(metadata i64 %7, metadata !2841, metadata !DIExpression()), !dbg !2847
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !2852
  %9 = load i8*, i8** %8, align 8, !dbg !2852, !tbaa !673
  %10 = icmp eq i8* %9, null, !dbg !2853
  %11 = add i64 %7, 1, !dbg !2854
  call void @llvm.dbg.value(metadata i64 %11, metadata !2841, metadata !DIExpression()), !dbg !2847
  br i1 %10, label %12, label %6, !dbg !2853, !llvm.loop !2855

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !2841, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %7, metadata !2841, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %7, metadata !2841, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %7, metadata !2841, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %7, metadata !2841, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.value(metadata i64 %7, metadata !2841, metadata !DIExpression()), !dbg !2847
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !2857
  ret void, !dbg !2858
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !2859 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2870, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.value(metadata i8* %1, metadata !2871, metadata !DIExpression()), !dbg !2879
  call void @llvm.dbg.value(metadata i8* %2, metadata !2872, metadata !DIExpression()), !dbg !2880
  call void @llvm.dbg.value(metadata i8* %3, metadata !2873, metadata !DIExpression()), !dbg !2881
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !2874, metadata !DIExpression()), !dbg !2882
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !2883
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2883
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !2876, metadata !DIExpression()), !dbg !2884
  call void @llvm.dbg.value(metadata i64 0, metadata !2875, metadata !DIExpression()), !dbg !2885
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !2875, metadata !DIExpression()), !dbg !2885
  %11 = load i32, i32* %8, align 8, !dbg !2886
  %12 = icmp ult i32 %11, 41, !dbg !2886
  br i1 %12, label %13, label %18, !dbg !2886

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !2886
  %15 = sext i32 %11 to i64, !dbg !2886
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !2886
  %17 = add i32 %11, 8, !dbg !2886
  store i32 %17, i32* %8, align 8, !dbg !2886
  br label %21, !dbg !2886

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !2886
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !2886
  store i8* %20, i8** %10, align 8, !dbg !2886
  br label %21, !dbg !2886

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !2886
  %25 = load i8*, i8** %24, align 8, !dbg !2886
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !2889
  store i8* %25, i8** %26, align 16, !dbg !2890, !tbaa !673
  %27 = icmp eq i8* %25, null, !dbg !2891
  br i1 %27, label %30, label %28, !dbg !2892

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !2875, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 1, metadata !2875, metadata !DIExpression()), !dbg !2885
  %29 = icmp ult i32 %22, 41, !dbg !2886
  br i1 %29, label %35, label %32, !dbg !2886

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !2893
  call void @llvm.dbg.value(metadata i64 %31, metadata !2875, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 %31, metadata !2875, metadata !DIExpression()), !dbg !2885
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !2894
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #10, !dbg !2895
  ret void, !dbg !2895

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !2886
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !2886
  store i8* %34, i8** %10, align 8, !dbg !2886
  br label %40, !dbg !2886

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !2886
  %37 = sext i32 %22 to i64, !dbg !2886
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !2886
  %39 = add i32 %22, 8, !dbg !2886
  store i32 %39, i32* %8, align 8, !dbg !2886
  br label %40, !dbg !2886

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !2886
  %44 = load i8*, i8** %43, align 8, !dbg !2886
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !2889
  store i8* %44, i8** %45, align 8, !dbg !2890, !tbaa !673
  %46 = icmp eq i8* %44, null, !dbg !2891
  br i1 %46, label %30, label %47, !dbg !2892

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !2875, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 2, metadata !2875, metadata !DIExpression()), !dbg !2885
  %48 = icmp ult i32 %41, 41, !dbg !2886
  br i1 %48, label %52, label %49, !dbg !2886

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !2886
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !2886
  store i8* %51, i8** %10, align 8, !dbg !2886
  br label %57, !dbg !2886

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !2886
  %54 = sext i32 %41 to i64, !dbg !2886
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !2886
  %56 = add i32 %41, 8, !dbg !2886
  store i32 %56, i32* %8, align 8, !dbg !2886
  br label %57, !dbg !2886

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !2886
  %61 = load i8*, i8** %60, align 8, !dbg !2886
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !2889
  store i8* %61, i8** %62, align 16, !dbg !2890, !tbaa !673
  %63 = icmp eq i8* %61, null, !dbg !2891
  br i1 %63, label %30, label %64, !dbg !2892

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !2875, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 3, metadata !2875, metadata !DIExpression()), !dbg !2885
  %65 = icmp ult i32 %58, 41, !dbg !2886
  br i1 %65, label %69, label %66, !dbg !2886

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !2886
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !2886
  store i8* %68, i8** %10, align 8, !dbg !2886
  br label %74, !dbg !2886

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !2886
  %71 = sext i32 %58 to i64, !dbg !2886
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !2886
  %73 = add i32 %58, 8, !dbg !2886
  store i32 %73, i32* %8, align 8, !dbg !2886
  br label %74, !dbg !2886

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !2886
  %78 = load i8*, i8** %77, align 8, !dbg !2886
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !2889
  store i8* %78, i8** %79, align 8, !dbg !2890, !tbaa !673
  %80 = icmp eq i8* %78, null, !dbg !2891
  br i1 %80, label %30, label %81, !dbg !2892

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !2875, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 4, metadata !2875, metadata !DIExpression()), !dbg !2885
  %82 = icmp ult i32 %75, 41, !dbg !2886
  br i1 %82, label %86, label %83, !dbg !2886

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !2886
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !2886
  store i8* %85, i8** %10, align 8, !dbg !2886
  br label %91, !dbg !2886

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !2886
  %88 = sext i32 %75 to i64, !dbg !2886
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !2886
  %90 = add i32 %75, 8, !dbg !2886
  store i32 %90, i32* %8, align 8, !dbg !2886
  br label %91, !dbg !2886

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !2886
  %95 = load i8*, i8** %94, align 8, !dbg !2886
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !2889
  store i8* %95, i8** %96, align 16, !dbg !2890, !tbaa !673
  %97 = icmp eq i8* %95, null, !dbg !2891
  br i1 %97, label %30, label %98, !dbg !2892

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !2875, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 5, metadata !2875, metadata !DIExpression()), !dbg !2885
  %99 = icmp ult i32 %92, 41, !dbg !2886
  br i1 %99, label %103, label %100, !dbg !2886

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !2886
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !2886
  store i8* %102, i8** %10, align 8, !dbg !2886
  br label %108, !dbg !2886

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !2886
  %105 = sext i32 %92 to i64, !dbg !2886
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !2886
  %107 = add i32 %92, 8, !dbg !2886
  store i32 %107, i32* %8, align 8, !dbg !2886
  br label %108, !dbg !2886

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !2886
  %111 = load i8*, i8** %110, align 8, !dbg !2886
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !2889
  store i8* %111, i8** %112, align 8, !dbg !2890, !tbaa !673
  %113 = icmp eq i8* %111, null, !dbg !2891
  br i1 %113, label %30, label %114, !dbg !2892

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !2875, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 6, metadata !2875, metadata !DIExpression()), !dbg !2885
  %115 = load i8*, i8** %10, align 8, !dbg !2886
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !2886
  store i8* %116, i8** %10, align 8, !dbg !2886
  %117 = bitcast i8* %115 to i8**, !dbg !2886
  %118 = load i8*, i8** %117, align 8, !dbg !2886
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !2889
  store i8* %118, i8** %119, align 16, !dbg !2890, !tbaa !673
  %120 = icmp eq i8* %118, null, !dbg !2891
  br i1 %120, label %30, label %121, !dbg !2892

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !2875, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 7, metadata !2875, metadata !DIExpression()), !dbg !2885
  %122 = load i8*, i8** %10, align 8, !dbg !2886
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !2886
  store i8* %123, i8** %10, align 8, !dbg !2886
  %124 = bitcast i8* %122 to i8**, !dbg !2886
  %125 = load i8*, i8** %124, align 8, !dbg !2886
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !2889
  store i8* %125, i8** %126, align 8, !dbg !2890, !tbaa !673
  %127 = icmp eq i8* %125, null, !dbg !2891
  br i1 %127, label %30, label %128, !dbg !2892

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !2875, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 8, metadata !2875, metadata !DIExpression()), !dbg !2885
  %129 = load i8*, i8** %10, align 8, !dbg !2886
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !2886
  store i8* %130, i8** %10, align 8, !dbg !2886
  %131 = bitcast i8* %129 to i8**, !dbg !2886
  %132 = load i8*, i8** %131, align 8, !dbg !2886
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !2889
  store i8* %132, i8** %133, align 16, !dbg !2890, !tbaa !673
  %134 = icmp eq i8* %132, null, !dbg !2891
  br i1 %134, label %30, label %135, !dbg !2892

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !2875, metadata !DIExpression()), !dbg !2885
  call void @llvm.dbg.value(metadata i64 9, metadata !2875, metadata !DIExpression()), !dbg !2885
  %136 = load i8*, i8** %10, align 8, !dbg !2886
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !2886
  store i8* %137, i8** %10, align 8, !dbg !2886
  %138 = bitcast i8* %136 to i8**, !dbg !2886
  %139 = load i8*, i8** %138, align 8, !dbg !2886
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !2889
  store i8* %139, i8** %140, align 8, !dbg !2890, !tbaa !673
  %141 = icmp eq i8* %139, null, !dbg !2891
  %142 = select i1 %141, i64 9, i64 10, !dbg !2892
  br label %30, !dbg !2892
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !2896 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !2900, metadata !DIExpression()), !dbg !2911
  call void @llvm.dbg.value(metadata i8* %1, metadata !2901, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.value(metadata i8* %2, metadata !2902, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.value(metadata i8* %3, metadata !2903, metadata !DIExpression()), !dbg !2914
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !2915
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2915
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !2904, metadata !DIExpression()), !dbg !2916
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !2917
  call void @llvm.va_start(i8* nonnull %6), !dbg !2917
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !2918
  call void @llvm.va_end(i8* nonnull %6), !dbg !2919
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #10, !dbg !2920
  ret void, !dbg !2920
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #10

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !2921 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.91, i64 0, i64 0), i32 5) #10, !dbg !2922
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.92, i64 0, i64 0)) #10, !dbg !2922
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.93, i64 0, i64 0), i32 5) #10, !dbg !2923
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.94, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.95, i64 0, i64 0)) #10, !dbg !2923
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.96, i64 0, i64 0), i32 5) #10, !dbg !2924
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2924, !tbaa !673
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !2924
  ret void, !dbg !2925
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !2926 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2930, metadata !DIExpression()), !dbg !2932
  call void @llvm.dbg.value(metadata i64 %1, metadata !2931, metadata !DIExpression()), !dbg !2933
  %3 = udiv i64 9223372036854775807, %1, !dbg !2934
  %4 = icmp ult i64 %3, %0, !dbg !2934
  br i1 %4, label %5, label %6, !dbg !2936

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !2937
  unreachable, !dbg !2937

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !2938
  call void @llvm.dbg.value(metadata i64 %7, metadata !2939, metadata !DIExpression()) #10, !dbg !2946
  %8 = tail call noalias i8* @malloc(i64 %7) #10, !dbg !2948
  call void @llvm.dbg.value(metadata i8* %8, metadata !2945, metadata !DIExpression()) #10, !dbg !2949
  %9 = icmp eq i8* %8, null, !dbg !2950
  %10 = icmp ne i64 %7, 0, !dbg !2952
  %11 = and i1 %10, %9, !dbg !2953
  br i1 %11, label %12, label %13, !dbg !2953

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !2954
  unreachable, !dbg !2954

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !2955
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !2940 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !2939, metadata !DIExpression()), !dbg !2956
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !2957
  call void @llvm.dbg.value(metadata i8* %2, metadata !2945, metadata !DIExpression()), !dbg !2958
  %3 = icmp eq i8* %2, null, !dbg !2959
  %4 = icmp ne i64 %0, 0, !dbg !2960
  %5 = and i1 %4, %3, !dbg !2961
  br i1 %5, label %6, label %7, !dbg !2961

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !2962
  unreachable, !dbg !2962

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !2963
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !2964 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2968, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i64 %1, metadata !2969, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i64 %2, metadata !2970, metadata !DIExpression()), !dbg !2973
  %4 = udiv i64 9223372036854775807, %2, !dbg !2974
  %5 = icmp ult i64 %4, %1, !dbg !2974
  br i1 %5, label %6, label %7, !dbg !2976

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !2977
  unreachable, !dbg !2977

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !2978
  call void @llvm.dbg.value(metadata i8* %0, metadata !2979, metadata !DIExpression()) #10, !dbg !2985
  call void @llvm.dbg.value(metadata i64 %8, metadata !2984, metadata !DIExpression()) #10, !dbg !2987
  %9 = icmp eq i64 %8, 0, !dbg !2988
  %10 = icmp ne i8* %0, null, !dbg !2990
  %11 = and i1 %10, %9, !dbg !2991
  br i1 %11, label %12, label %13, !dbg !2991

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #10, !dbg !2992
  br label %19, !dbg !2994

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #10, !dbg !2995
  call void @llvm.dbg.value(metadata i8* %14, metadata !2979, metadata !DIExpression()) #10, !dbg !2985
  %15 = icmp eq i8* %14, null, !dbg !2996
  %16 = icmp ne i64 %8, 0, !dbg !2998
  %17 = and i1 %16, %15, !dbg !2999
  br i1 %17, label %18, label %19, !dbg !2999

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3000
  unreachable, !dbg !3000

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3001
  ret i8* %20, !dbg !3002
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !2980 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2979, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.value(metadata i64 %1, metadata !2984, metadata !DIExpression()), !dbg !3004
  %3 = icmp eq i64 %1, 0, !dbg !3005
  %4 = icmp ne i8* %0, null, !dbg !3006
  %5 = and i1 %4, %3, !dbg !3007
  br i1 %5, label %6, label %7, !dbg !3007

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #10, !dbg !3008
  br label %13, !dbg !3009

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #10, !dbg !3010
  call void @llvm.dbg.value(metadata i8* %8, metadata !2979, metadata !DIExpression()), !dbg !3003
  %9 = icmp eq i8* %8, null, !dbg !3011
  %10 = icmp ne i64 %1, 0, !dbg !3012
  %11 = and i1 %10, %9, !dbg !3013
  br i1 %11, label %12, label %13, !dbg !3013

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3014
  unreachable, !dbg !3014

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3015
  ret i8* %14, !dbg !3016
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !214 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !219, metadata !DIExpression()), !dbg !3017
  call void @llvm.dbg.value(metadata i64* %1, metadata !220, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i64 %2, metadata !221, metadata !DIExpression()), !dbg !3019
  %4 = load i64, i64* %1, align 8, !dbg !3020, !tbaa !788
  call void @llvm.dbg.value(metadata i64 %4, metadata !222, metadata !DIExpression()), !dbg !3021
  %5 = icmp eq i8* %0, null, !dbg !3022
  br i1 %5, label %6, label %20, !dbg !3024

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3025
  br i1 %7, label %8, label %13, !dbg !3028

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3029
  call void @llvm.dbg.value(metadata i64 %9, metadata !222, metadata !DIExpression()), !dbg !3021
  %10 = icmp ugt i64 %2, 128, !dbg !3031
  %11 = zext i1 %10 to i64, !dbg !3031
  %12 = add nuw nsw i64 %9, %11, !dbg !3032
  call void @llvm.dbg.value(metadata i64 %12, metadata !222, metadata !DIExpression()), !dbg !3021
  br label %13, !dbg !3033

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3034
  call void @llvm.dbg.value(metadata i64 %14, metadata !222, metadata !DIExpression()), !dbg !3021
  %15 = udiv i64 9223372036854775807, %2, !dbg !3035
  %16 = icmp ult i64 %15, %14, !dbg !3035
  br i1 %16, label %19, label %17, !dbg !3037

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !222, metadata !DIExpression()), !dbg !3021
  store i64 %14, i64* %1, align 8, !dbg !3038, !tbaa !788
  %18 = mul i64 %14, %2, !dbg !3039
  call void @llvm.dbg.value(metadata i8* %0, metadata !2979, metadata !DIExpression()) #10, !dbg !3040
  call void @llvm.dbg.value(metadata i64 %28, metadata !2984, metadata !DIExpression()) #10, !dbg !3042
  br label %31, !dbg !3043

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3044
  unreachable, !dbg !3044

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3045
  %22 = icmp ugt i64 %21, %4, !dbg !3048
  br i1 %22, label %24, label %23, !dbg !3049

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3050
  unreachable, !dbg !3050

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3051
  %26 = add i64 %4, 1, !dbg !3052
  %27 = add i64 %26, %25, !dbg !3053
  call void @llvm.dbg.value(metadata i64 %27, metadata !222, metadata !DIExpression()), !dbg !3021
  call void @llvm.dbg.value(metadata i64 %27, metadata !222, metadata !DIExpression()), !dbg !3021
  store i64 %27, i64* %1, align 8, !dbg !3038, !tbaa !788
  %28 = mul i64 %27, %2, !dbg !3039
  call void @llvm.dbg.value(metadata i8* %0, metadata !2979, metadata !DIExpression()) #10, !dbg !3040
  call void @llvm.dbg.value(metadata i64 %28, metadata !2984, metadata !DIExpression()) #10, !dbg !3042
  %29 = icmp eq i64 %28, 0, !dbg !3054
  br i1 %29, label %30, label %31, !dbg !3043

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #10, !dbg !3055
  br label %38, !dbg !3056

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #10, !dbg !3057
  call void @llvm.dbg.value(metadata i8* %33, metadata !2979, metadata !DIExpression()) #10, !dbg !3040
  %34 = icmp eq i8* %33, null, !dbg !3058
  %35 = icmp ne i64 %32, 0, !dbg !3059
  %36 = and i1 %35, %34, !dbg !3060
  br i1 %36, label %37, label %38, !dbg !3060

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3061
  unreachable, !dbg !3061

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3062
  ret i8* %39, !dbg !3063
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3064 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3066, metadata !DIExpression()), !dbg !3067
  call void @llvm.dbg.value(metadata i64 %0, metadata !2939, metadata !DIExpression()) #10, !dbg !3068
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3070
  call void @llvm.dbg.value(metadata i8* %2, metadata !2945, metadata !DIExpression()) #10, !dbg !3071
  %3 = icmp eq i8* %2, null, !dbg !3072
  %4 = icmp ne i64 %0, 0, !dbg !3073
  %5 = and i1 %4, %3, !dbg !3074
  br i1 %5, label %6, label %7, !dbg !3074

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3075
  unreachable, !dbg !3075

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3076
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3077 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3081, metadata !DIExpression()), !dbg !3083
  call void @llvm.dbg.value(metadata i64* %1, metadata !3082, metadata !DIExpression()), !dbg !3084
  call void @llvm.dbg.value(metadata i8* %0, metadata !219, metadata !DIExpression()) #10, !dbg !3085
  call void @llvm.dbg.value(metadata i64* %1, metadata !220, metadata !DIExpression()) #10, !dbg !3087
  call void @llvm.dbg.value(metadata i64 1, metadata !221, metadata !DIExpression()) #10, !dbg !3088
  %3 = load i64, i64* %1, align 8, !dbg !3089, !tbaa !788
  call void @llvm.dbg.value(metadata i64 %3, metadata !222, metadata !DIExpression()) #10, !dbg !3090
  %4 = icmp eq i8* %0, null, !dbg !3091
  br i1 %4, label %5, label %12, !dbg !3092

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3093
  br i1 %6, label %9, label %7, !dbg !3094

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !222, metadata !DIExpression()) #10, !dbg !3090
  %8 = icmp slt i64 %3, 0, !dbg !3095
  br i1 %8, label %11, label %9, !dbg !3096

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !222, metadata !DIExpression()) #10, !dbg !3090
  store i64 %10, i64* %1, align 8, !dbg !3097, !tbaa !788
  call void @llvm.dbg.value(metadata i8* %0, metadata !2979, metadata !DIExpression()) #10, !dbg !3098
  call void @llvm.dbg.value(metadata i64 %18, metadata !2984, metadata !DIExpression()) #10, !dbg !3100
  br label %21, !dbg !3101

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3102
  unreachable, !dbg !3102

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3103
  br i1 %13, label %15, label %14, !dbg !3104

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3105
  unreachable, !dbg !3105

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3106
  %17 = add i64 %3, 1, !dbg !3107
  %18 = add i64 %17, %16, !dbg !3108
  call void @llvm.dbg.value(metadata i64 %18, metadata !222, metadata !DIExpression()) #10, !dbg !3090
  call void @llvm.dbg.value(metadata i64 %18, metadata !222, metadata !DIExpression()) #10, !dbg !3090
  store i64 %18, i64* %1, align 8, !dbg !3097, !tbaa !788
  call void @llvm.dbg.value(metadata i8* %0, metadata !2979, metadata !DIExpression()) #10, !dbg !3098
  call void @llvm.dbg.value(metadata i64 %18, metadata !2984, metadata !DIExpression()) #10, !dbg !3100
  %19 = icmp eq i64 %18, 0, !dbg !3109
  br i1 %19, label %20, label %21, !dbg !3101

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #10, !dbg !3110
  br label %28, !dbg !3111

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #10, !dbg !3112
  call void @llvm.dbg.value(metadata i8* %23, metadata !2979, metadata !DIExpression()) #10, !dbg !3098
  %24 = icmp eq i8* %23, null, !dbg !3113
  %25 = icmp ne i64 %22, 0, !dbg !3114
  %26 = and i1 %25, %24, !dbg !3115
  br i1 %26, label %27, label %28, !dbg !3115

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3116
  unreachable, !dbg !3116

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3117
  ret i8* %29, !dbg !3118
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3119 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3121, metadata !DIExpression()), !dbg !3122
  call void @llvm.dbg.value(metadata i64 %0, metadata !2939, metadata !DIExpression()) #10, !dbg !3123
  %2 = tail call noalias i8* @malloc(i64 %0) #10, !dbg !3125
  call void @llvm.dbg.value(metadata i8* %2, metadata !2945, metadata !DIExpression()) #10, !dbg !3126
  %3 = icmp eq i8* %2, null, !dbg !3127
  %4 = icmp ne i64 %0, 0, !dbg !3128
  %5 = and i1 %4, %3, !dbg !3129
  br i1 %5, label %6, label %7, !dbg !3129

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3130
  unreachable, !dbg !3130

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3131
  ret i8* %2, !dbg !3132
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3133 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3135, metadata !DIExpression()), !dbg !3138
  call void @llvm.dbg.value(metadata i64 %1, metadata !3136, metadata !DIExpression()), !dbg !3139
  %3 = udiv i64 9223372036854775807, %1, !dbg !3140
  %4 = icmp ult i64 %3, %0, !dbg !3140
  br i1 %4, label %8, label %5, !dbg !3142

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #10, !dbg !3143
  call void @llvm.dbg.value(metadata i8* %6, metadata !3137, metadata !DIExpression()), !dbg !3144
  %7 = icmp eq i8* %6, null, !dbg !3145
  br i1 %7, label %8, label %9, !dbg !3146

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3147
  unreachable, !dbg !3147

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3148
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3149 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3155, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.value(metadata i64 %1, metadata !3156, metadata !DIExpression()), !dbg !3158
  call void @llvm.dbg.value(metadata i64 %1, metadata !2939, metadata !DIExpression()) #10, !dbg !3159
  %3 = tail call noalias i8* @malloc(i64 %1) #10, !dbg !3161
  call void @llvm.dbg.value(metadata i8* %3, metadata !2945, metadata !DIExpression()) #10, !dbg !3162
  %4 = icmp eq i8* %3, null, !dbg !3163
  %5 = icmp ne i64 %1, 0, !dbg !3164
  %6 = and i1 %5, %4, !dbg !3165
  br i1 %6, label %7, label %8, !dbg !3165

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3166
  unreachable, !dbg !3166

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3167
  ret i8* %3, !dbg !3168
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3169 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3171, metadata !DIExpression()), !dbg !3172
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3173
  %3 = add i64 %2, 1, !dbg !3174
  call void @llvm.dbg.value(metadata i8* %0, metadata !3155, metadata !DIExpression()) #10, !dbg !3175
  call void @llvm.dbg.value(metadata i64 %3, metadata !3156, metadata !DIExpression()) #10, !dbg !3177
  call void @llvm.dbg.value(metadata i64 %3, metadata !2939, metadata !DIExpression()) #10, !dbg !3178
  %4 = tail call noalias i8* @malloc(i64 %3) #10, !dbg !3180
  call void @llvm.dbg.value(metadata i8* %4, metadata !2945, metadata !DIExpression()) #10, !dbg !3181
  %5 = icmp eq i8* %4, null, !dbg !3182
  %6 = icmp ne i64 %3, 0, !dbg !3183
  %7 = and i1 %6, %5, !dbg !3184
  br i1 %7, label %8, label %9, !dbg !3184

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3185
  unreachable, !dbg !3185

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #10, !dbg !3186
  ret i8* %4, !dbg !3187
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3188 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3190, !tbaa !739
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.107, i64 0, i64 0), i32 5) #10, !dbg !3191
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.108, i64 0, i64 0), i8* %2) #10, !dbg !3192
  tail call void @abort() #15, !dbg !3193
  unreachable, !dbg !3193
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @xstrtol(i8*, i8**, i32, i64* nocapture, i8* readonly) local_unnamed_addr #7 !dbg !3194 {
  %6 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !3201, metadata !DIExpression()), !dbg !3215
  call void @llvm.dbg.value(metadata i8** %1, metadata !3202, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.value(metadata i32 %2, metadata !3203, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i64* %3, metadata !3204, metadata !DIExpression()), !dbg !3218
  call void @llvm.dbg.value(metadata i8* %4, metadata !3205, metadata !DIExpression()), !dbg !3219
  %7 = bitcast i8** %6 to i8*, !dbg !3220
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3220
  call void @llvm.dbg.value(metadata i32 0, metadata !3209, metadata !DIExpression()), !dbg !3221
  %8 = icmp ult i32 %2, 37, !dbg !3222
  br i1 %8, label %10, label %9, !dbg !3222

; <label>:9:                                      ; preds = %5
  tail call void @__assert_fail(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.111, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1.112, i64 0, i64 0), i32 96, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.xstrtol, i64 0, i64 0)) #15, !dbg !3222
  unreachable, !dbg !3222

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8** %1, null, !dbg !3225
  %12 = select i1 %11, i8** %6, i8** %1, !dbg !3225
  call void @llvm.dbg.value(metadata i8** %12, metadata !3207, metadata !DIExpression()), !dbg !3226
  %13 = tail call i32* @__errno_location() #17, !dbg !3227
  store i32 0, i32* %13, align 4, !dbg !3228, !tbaa !739
  %14 = call i64 @strtol(i8* %0, i8** %12, i32 %2) #10, !dbg !3229
  call void @llvm.dbg.value(metadata i64 %14, metadata !3208, metadata !DIExpression()), !dbg !3230
  %15 = load i8*, i8** %12, align 8, !dbg !3231, !tbaa !673
  %16 = icmp eq i8* %15, %0, !dbg !3233
  br i1 %16, label %17, label %26, !dbg !3234

; <label>:17:                                     ; preds = %10
  %18 = icmp eq i8* %4, null, !dbg !3235
  br i1 %18, label %196, label %19, !dbg !3238

; <label>:19:                                     ; preds = %17
  %20 = load i8, i8* %0, align 1, !dbg !3239, !tbaa !748
  %21 = icmp eq i8 %20, 0, !dbg !3239
  br i1 %21, label %196, label %22, !dbg !3240

; <label>:22:                                     ; preds = %19
  %23 = sext i8 %20 to i32, !dbg !3239
  %24 = tail call i8* @strchr(i8* nonnull %4, i32 %23) #14, !dbg !3241
  %25 = icmp eq i8* %24, null, !dbg !3241
  br i1 %25, label %196, label %33, !dbg !3242

; <label>:26:                                     ; preds = %10
  %27 = load i32, i32* %13, align 4, !dbg !3243, !tbaa !739
  switch i32 %27, label %196 [
    i32 0, label %29
    i32 34, label %28
  ], !dbg !3245

; <label>:28:                                     ; preds = %26
  call void @llvm.dbg.value(metadata i32 1, metadata !3209, metadata !DIExpression()), !dbg !3221
  br label %29, !dbg !3246

; <label>:29:                                     ; preds = %26, %28
  %30 = phi i32 [ 1, %28 ], [ %27, %26 ], !dbg !3248
  call void @llvm.dbg.value(metadata i32 %30, metadata !3209, metadata !DIExpression()), !dbg !3221
  %31 = icmp eq i8* %4, null, !dbg !3249
  br i1 %31, label %32, label %33, !dbg !3251

; <label>:32:                                     ; preds = %29
  call void @llvm.dbg.value(metadata i64 %14, metadata !3208, metadata !DIExpression()), !dbg !3230
  store i64 %14, i64* %3, align 8, !dbg !3252, !tbaa !788
  br label %196, !dbg !3254

; <label>:33:                                     ; preds = %22, %29
  %34 = phi i32 [ %30, %29 ], [ 0, %22 ]
  %35 = phi i64 [ %14, %29 ], [ 1, %22 ]
  %36 = load i8, i8* %15, align 1, !dbg !3255, !tbaa !748
  %37 = sext i8 %36 to i32, !dbg !3255
  %38 = icmp eq i8 %36, 0, !dbg !3256
  br i1 %38, label %193, label %39, !dbg !3257

; <label>:39:                                     ; preds = %33
  call void @llvm.dbg.value(metadata i32 1024, metadata !3210, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 1, metadata !3213, metadata !DIExpression()), !dbg !3259
  %40 = tail call i8* @strchr(i8* nonnull %4, i32 %37) #14, !dbg !3260
  %41 = icmp eq i8* %40, null, !dbg !3260
  br i1 %41, label %42, label %44, !dbg !3262

; <label>:42:                                     ; preds = %39
  call void @llvm.dbg.value(metadata i64 %14, metadata !3208, metadata !DIExpression()), !dbg !3230
  store i64 %35, i64* %3, align 8, !dbg !3263, !tbaa !788
  %43 = or i32 %34, 2, !dbg !3265
  br label %196, !dbg !3266

; <label>:44:                                     ; preds = %39
  switch i32 %37, label %58 [
    i32 69, label %45
    i32 71, label %45
    i32 103, label %45
    i32 107, label %45
    i32 75, label %45
    i32 77, label %45
    i32 109, label %45
    i32 80, label %45
    i32 84, label %45
    i32 116, label %45
    i32 89, label %45
    i32 90, label %45
  ], !dbg !3267

; <label>:45:                                     ; preds = %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44, %44
  %46 = tail call i8* @strchr(i8* nonnull %4, i32 48) #14, !dbg !3268
  %47 = icmp eq i8* %46, null, !dbg !3268
  br i1 %47, label %58, label %48, !dbg !3271

; <label>:48:                                     ; preds = %45
  %49 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !3272
  %50 = load i8, i8* %49, align 1, !dbg !3272, !tbaa !748
  %51 = sext i8 %50 to i32, !dbg !3272
  switch i32 %51, label %58 [
    i32 105, label %52
    i32 66, label %57
    i32 68, label %57
  ], !dbg !3273

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds i8, i8* %15, i64 2, !dbg !3274
  %54 = load i8, i8* %53, align 1, !dbg !3274, !tbaa !748
  %55 = icmp eq i8 %54, 66, !dbg !3277
  %56 = select i1 %55, i64 3, i64 1, !dbg !3278
  br label %58, !dbg !3278

; <label>:57:                                     ; preds = %48, %48
  call void @llvm.dbg.value(metadata i32 1000, metadata !3210, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata i32 2, metadata !3213, metadata !DIExpression()), !dbg !3259
  br label %58, !dbg !3279

; <label>:58:                                     ; preds = %52, %45, %48, %57, %44
  %59 = phi i64 [ 1024, %44 ], [ 1024, %48 ], [ 1000, %57 ], [ 1024, %45 ], [ 1024, %52 ]
  %60 = phi i64 [ 1, %44 ], [ 1, %48 ], [ 2, %57 ], [ 1, %45 ], [ %56, %52 ]
  switch i32 %37, label %182 [
    i32 98, label %61
    i32 66, label %68
    i32 99, label %184
    i32 69, label %75
    i32 71, label %88
    i32 103, label %88
    i32 107, label %101
    i32 75, label %101
    i32 77, label %110
    i32 109, label %110
    i32 80, label %123
    i32 84, label %136
    i32 116, label %136
    i32 119, label %149
    i32 89, label %156
    i32 90, label %169
  ], !dbg !3280

; <label>:61:                                     ; preds = %58
  call void @llvm.dbg.value(metadata i32 512, metadata !3281, metadata !DIExpression()), !dbg !3287
  %62 = icmp slt i64 %35, -18014398509481984, !dbg !3290
  br i1 %62, label %184, label %63, !dbg !3292

; <label>:63:                                     ; preds = %61
  %64 = icmp sgt i64 %35, 18014398509481983, !dbg !3293
  %65 = shl nsw i64 %35, 9, !dbg !3295
  %66 = select i1 %64, i64 9223372036854775807, i64 %65, !dbg !3296
  %67 = zext i1 %64 to i32, !dbg !3296
  br label %184, !dbg !3296

; <label>:68:                                     ; preds = %58
  call void @llvm.dbg.value(metadata i32 1024, metadata !3281, metadata !DIExpression()), !dbg !3297
  %69 = icmp slt i64 %35, -9007199254740992, !dbg !3299
  br i1 %69, label %184, label %70, !dbg !3300

; <label>:70:                                     ; preds = %68
  %71 = icmp sgt i64 %35, 9007199254740991, !dbg !3301
  %72 = shl nsw i64 %35, 10, !dbg !3302
  %73 = select i1 %71, i64 9223372036854775807, i64 %72, !dbg !3303
  %74 = zext i1 %71 to i32, !dbg !3303
  br label %184, !dbg !3303

; <label>:75:                                     ; preds = %58
  call void @llvm.dbg.value(metadata i32 6, metadata !3304, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3314
  %76 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 6, metadata !3304, metadata !DIExpression()), !dbg !3312
  %77 = icmp slt i64 %35, %76, !dbg !3315
  br i1 %77, label %84, label %78, !dbg !3317

; <label>:78:                                     ; preds = %75
  %79 = udiv i64 9223372036854775807, %59, !dbg !3318
  %80 = icmp slt i64 %79, %35, !dbg !3319
  %81 = mul nsw i64 %35, %59, !dbg !3320
  %82 = select i1 %80, i64 9223372036854775807, i64 %81, !dbg !3321
  %83 = zext i1 %80 to i32, !dbg !3321
  br label %84, !dbg !3321

; <label>:84:                                     ; preds = %78, %75
  %85 = phi i64 [ -9223372036854775808, %75 ], [ %82, %78 ]
  %86 = phi i32 [ 1, %75 ], [ %83, %78 ], !dbg !3322
  call void @llvm.dbg.value(metadata i32 %86, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 %86, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression()), !dbg !3312
  %87 = icmp slt i64 %85, %76, !dbg !3315
  br i1 %87, label %204, label %198, !dbg !3317

; <label>:88:                                     ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3325
  %89 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()), !dbg !3323
  %90 = icmp slt i64 %35, %89, !dbg !3326
  br i1 %90, label %97, label %91, !dbg !3328

; <label>:91:                                     ; preds = %88
  %92 = udiv i64 9223372036854775807, %59, !dbg !3329
  %93 = icmp slt i64 %92, %35, !dbg !3330
  %94 = mul nsw i64 %35, %59, !dbg !3331
  %95 = select i1 %93, i64 9223372036854775807, i64 %94, !dbg !3332
  %96 = zext i1 %93 to i32, !dbg !3332
  br label %97, !dbg !3332

; <label>:97:                                     ; preds = %91, %88
  %98 = phi i64 [ -9223372036854775808, %88 ], [ %95, %91 ]
  %99 = phi i32 [ 1, %88 ], [ %96, %91 ], !dbg !3333
  call void @llvm.dbg.value(metadata i32 %99, metadata !3311, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i32 %99, metadata !3311, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()), !dbg !3323
  %100 = icmp slt i64 %98, %89, !dbg !3326
  br i1 %100, label %258, label %252, !dbg !3328

; <label>:101:                                    ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()), !dbg !3334
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3336
  %102 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3336
  call void @llvm.dbg.value(metadata i32 undef, metadata !3304, metadata !DIExpression()), !dbg !3334
  %103 = icmp slt i64 %35, %102, !dbg !3337
  br i1 %103, label %184, label %104, !dbg !3339

; <label>:104:                                    ; preds = %101
  %105 = udiv i64 9223372036854775807, %59, !dbg !3340
  %106 = icmp slt i64 %105, %35, !dbg !3341
  %107 = mul nsw i64 %35, %59, !dbg !3342
  %108 = select i1 %106, i64 9223372036854775807, i64 %107, !dbg !3343
  %109 = zext i1 %106 to i32, !dbg !3343
  br label %184, !dbg !3343

; <label>:110:                                    ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3346
  %111 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()), !dbg !3344
  %112 = icmp slt i64 %35, %111, !dbg !3347
  br i1 %112, label %119, label %113, !dbg !3349

; <label>:113:                                    ; preds = %110
  %114 = udiv i64 9223372036854775807, %59, !dbg !3350
  %115 = icmp slt i64 %114, %35, !dbg !3351
  %116 = mul nsw i64 %35, %59, !dbg !3352
  %117 = select i1 %115, i64 9223372036854775807, i64 %116, !dbg !3353
  %118 = zext i1 %115 to i32, !dbg !3353
  br label %119, !dbg !3353

; <label>:119:                                    ; preds = %113, %110
  %120 = phi i64 [ -9223372036854775808, %110 ], [ %117, %113 ]
  %121 = phi i32 [ 1, %110 ], [ %118, %113 ], !dbg !3354
  call void @llvm.dbg.value(metadata i32 %121, metadata !3311, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()), !dbg !3344
  call void @llvm.dbg.value(metadata i32 %121, metadata !3311, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()), !dbg !3344
  %122 = icmp slt i64 %120, %111, !dbg !3347
  br i1 %122, label %279, label %273, !dbg !3349

; <label>:123:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3357
  %124 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression()), !dbg !3355
  %125 = icmp slt i64 %35, %124, !dbg !3358
  br i1 %125, label %132, label %126, !dbg !3360

; <label>:126:                                    ; preds = %123
  %127 = udiv i64 9223372036854775807, %59, !dbg !3361
  %128 = icmp slt i64 %127, %35, !dbg !3362
  %129 = mul nsw i64 %35, %59, !dbg !3363
  %130 = select i1 %128, i64 9223372036854775807, i64 %129, !dbg !3364
  %131 = zext i1 %128 to i32, !dbg !3364
  br label %132, !dbg !3364

; <label>:132:                                    ; preds = %126, %123
  %133 = phi i64 [ -9223372036854775808, %123 ], [ %130, %126 ]
  %134 = phi i32 [ 1, %123 ], [ %131, %126 ], !dbg !3365
  call void @llvm.dbg.value(metadata i32 %134, metadata !3311, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i32 %134, metadata !3311, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()), !dbg !3355
  %135 = icmp slt i64 %133, %124, !dbg !3358
  br i1 %135, label %289, label %283, !dbg !3360

; <label>:136:                                    ; preds = %58, %58
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3368
  %137 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()), !dbg !3366
  %138 = icmp slt i64 %35, %137, !dbg !3369
  br i1 %138, label %145, label %139, !dbg !3371

; <label>:139:                                    ; preds = %136
  %140 = udiv i64 9223372036854775807, %59, !dbg !3372
  %141 = icmp slt i64 %140, %35, !dbg !3373
  %142 = mul nsw i64 %35, %59, !dbg !3374
  %143 = select i1 %141, i64 9223372036854775807, i64 %142, !dbg !3375
  %144 = zext i1 %141 to i32, !dbg !3375
  br label %145, !dbg !3375

; <label>:145:                                    ; preds = %139, %136
  %146 = phi i64 [ -9223372036854775808, %136 ], [ %143, %139 ]
  %147 = phi i32 [ 1, %136 ], [ %144, %139 ], !dbg !3376
  call void @llvm.dbg.value(metadata i32 %147, metadata !3311, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 %147, metadata !3311, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()), !dbg !3366
  %148 = icmp slt i64 %146, %137, !dbg !3369
  br i1 %148, label %332, label %326, !dbg !3371

; <label>:149:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i32 2, metadata !3281, metadata !DIExpression()), !dbg !3377
  %150 = icmp slt i64 %35, -4611686018427387904, !dbg !3379
  br i1 %150, label %184, label %151, !dbg !3380

; <label>:151:                                    ; preds = %149
  %152 = icmp sgt i64 %35, 4611686018427387903, !dbg !3381
  %153 = shl nsw i64 %35, 1, !dbg !3382
  %154 = select i1 %152, i64 9223372036854775807, i64 %153, !dbg !3383
  %155 = zext i1 %152 to i32, !dbg !3383
  br label %184, !dbg !3383

; <label>:156:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i32 8, metadata !3304, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3386
  %157 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 8, metadata !3304, metadata !DIExpression()), !dbg !3384
  %158 = icmp slt i64 %35, %157, !dbg !3387
  br i1 %158, label %165, label %159, !dbg !3389

; <label>:159:                                    ; preds = %156
  %160 = udiv i64 9223372036854775807, %59, !dbg !3390
  %161 = icmp slt i64 %160, %35, !dbg !3391
  %162 = mul nsw i64 %35, %59, !dbg !3392
  %163 = select i1 %161, i64 9223372036854775807, i64 %162, !dbg !3393
  %164 = zext i1 %161 to i32, !dbg !3393
  br label %165, !dbg !3393

; <label>:165:                                    ; preds = %159, %156
  %166 = phi i64 [ -9223372036854775808, %156 ], [ %163, %159 ]
  %167 = phi i32 [ 1, %156 ], [ %164, %159 ], !dbg !3394
  call void @llvm.dbg.value(metadata i32 %167, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 7, metadata !3304, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %167, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 7, metadata !3304, metadata !DIExpression()), !dbg !3384
  %168 = icmp slt i64 %166, %157, !dbg !3387
  br i1 %168, label %364, label %358, !dbg !3389

; <label>:169:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i32 7, metadata !3304, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3397
  %170 = sdiv i64 -9223372036854775808, %59
  call void @llvm.dbg.value(metadata i32 0, metadata !3311, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 7, metadata !3304, metadata !DIExpression()), !dbg !3395
  %171 = icmp slt i64 %35, %170, !dbg !3398
  br i1 %171, label %178, label %172, !dbg !3400

; <label>:172:                                    ; preds = %169
  %173 = udiv i64 9223372036854775807, %59, !dbg !3401
  %174 = icmp slt i64 %173, %35, !dbg !3402
  %175 = mul nsw i64 %35, %59, !dbg !3403
  %176 = select i1 %174, i64 9223372036854775807, i64 %175, !dbg !3404
  %177 = zext i1 %174 to i32, !dbg !3404
  br label %178, !dbg !3404

; <label>:178:                                    ; preds = %172, %169
  %179 = phi i64 [ -9223372036854775808, %169 ], [ %176, %172 ]
  %180 = phi i32 [ 1, %169 ], [ %177, %172 ], !dbg !3405
  call void @llvm.dbg.value(metadata i32 %180, metadata !3311, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 6, metadata !3304, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i32 %180, metadata !3311, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 6, metadata !3304, metadata !DIExpression()), !dbg !3395
  %181 = icmp slt i64 %179, %170, !dbg !3398
  br i1 %181, label %440, label %434, !dbg !3400

; <label>:182:                                    ; preds = %58
  call void @llvm.dbg.value(metadata i64 %14, metadata !3208, metadata !DIExpression()), !dbg !3230
  store i64 %35, i64* %3, align 8, !dbg !3406, !tbaa !788
  %183 = or i32 %34, 2, !dbg !3407
  br label %196, !dbg !3408

; <label>:184:                                    ; preds = %101, %104, %495, %430, %354, %322, %279, %269, %248, %151, %70, %63, %58, %61, %68, %149
  %185 = phi i64 [ %35, %58 ], [ -9223372036854775808, %61 ], [ -9223372036854775808, %68 ], [ -9223372036854775808, %149 ], [ %66, %63 ], [ %73, %70 ], [ %154, %151 ], [ %249, %248 ], [ %270, %269 ], [ %280, %279 ], [ %323, %322 ], [ %355, %354 ], [ %431, %430 ], [ %496, %495 ], [ -9223372036854775808, %101 ], [ %108, %104 ], !dbg !3409
  %186 = phi i32 [ 0, %58 ], [ 1, %61 ], [ 1, %68 ], [ 1, %149 ], [ %67, %63 ], [ %74, %70 ], [ %155, %151 ], [ %251, %248 ], [ %272, %269 ], [ %282, %279 ], [ %325, %322 ], [ %357, %354 ], [ %433, %430 ], [ %498, %495 ], [ 1, %101 ], [ %109, %104 ], !dbg !3409
  call void @llvm.dbg.value(metadata i32 %186, metadata !3214, metadata !DIExpression()), !dbg !3410
  %187 = or i32 %186, %34, !dbg !3411
  call void @llvm.dbg.value(metadata i32 %187, metadata !3209, metadata !DIExpression()), !dbg !3221
  %188 = getelementptr inbounds i8, i8* %15, i64 %60, !dbg !3412
  store i8* %188, i8** %12, align 8, !dbg !3412, !tbaa !673
  %189 = load i8, i8* %188, align 1, !dbg !3413, !tbaa !748
  %190 = icmp eq i8 %189, 0, !dbg !3413
  %191 = or i32 %187, 2, !dbg !3415
  %192 = select i1 %190, i32 %187, i32 %191, !dbg !3416
  call void @llvm.dbg.value(metadata i32 %192, metadata !3209, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i32 %192, metadata !3209, metadata !DIExpression()), !dbg !3221
  br label %193

; <label>:193:                                    ; preds = %184, %33
  %194 = phi i64 [ %35, %33 ], [ %185, %184 ], !dbg !3417
  %195 = phi i32 [ %34, %33 ], [ %192, %184 ], !dbg !3221
  call void @llvm.dbg.value(metadata i32 %195, metadata !3209, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i64 %194, metadata !3208, metadata !DIExpression()), !dbg !3230
  store i64 %194, i64* %3, align 8, !dbg !3418, !tbaa !788
  br label %196, !dbg !3419

; <label>:196:                                    ; preds = %42, %182, %26, %17, %19, %22, %193, %32
  %197 = phi i32 [ %195, %193 ], [ %30, %32 ], [ 4, %22 ], [ 4, %19 ], [ 4, %17 ], [ 4, %26 ], [ %43, %42 ], [ %183, %182 ], !dbg !3420
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #10, !dbg !3422
  ret i32 %197, !dbg !3422

; <label>:198:                                    ; preds = %84
  %199 = udiv i64 9223372036854775807, %59, !dbg !3318
  %200 = icmp slt i64 %199, %85, !dbg !3319
  %201 = mul nsw i64 %85, %59, !dbg !3320
  %202 = select i1 %200, i64 9223372036854775807, i64 %201, !dbg !3321
  %203 = zext i1 %200 to i32, !dbg !3321
  br label %204, !dbg !3321

; <label>:204:                                    ; preds = %198, %84
  %205 = phi i64 [ -9223372036854775808, %84 ], [ %202, %198 ]
  %206 = phi i32 [ 1, %84 ], [ %203, %198 ], !dbg !3322
  %207 = or i32 %206, %86, !dbg !3423
  call void @llvm.dbg.value(metadata i32 %207, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 %207, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()), !dbg !3312
  %208 = icmp slt i64 %205, %76, !dbg !3315
  br i1 %208, label %215, label %209, !dbg !3317

; <label>:209:                                    ; preds = %204
  %210 = udiv i64 9223372036854775807, %59, !dbg !3318
  %211 = icmp slt i64 %210, %205, !dbg !3319
  %212 = mul nsw i64 %205, %59, !dbg !3320
  %213 = select i1 %211, i64 9223372036854775807, i64 %212, !dbg !3321
  %214 = zext i1 %211 to i32, !dbg !3321
  br label %215, !dbg !3321

; <label>:215:                                    ; preds = %209, %204
  %216 = phi i64 [ -9223372036854775808, %204 ], [ %213, %209 ]
  %217 = phi i32 [ 1, %204 ], [ %214, %209 ], !dbg !3322
  %218 = or i32 %217, %207, !dbg !3423
  call void @llvm.dbg.value(metadata i32 %218, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 %218, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()), !dbg !3312
  %219 = icmp slt i64 %216, %76, !dbg !3315
  br i1 %219, label %226, label %220, !dbg !3317

; <label>:220:                                    ; preds = %215
  %221 = udiv i64 9223372036854775807, %59, !dbg !3318
  %222 = icmp slt i64 %221, %216, !dbg !3319
  %223 = mul nsw i64 %216, %59, !dbg !3320
  %224 = select i1 %222, i64 9223372036854775807, i64 %223, !dbg !3321
  %225 = zext i1 %222 to i32, !dbg !3321
  br label %226, !dbg !3321

; <label>:226:                                    ; preds = %220, %215
  %227 = phi i64 [ -9223372036854775808, %215 ], [ %224, %220 ]
  %228 = phi i32 [ 1, %215 ], [ %225, %220 ], !dbg !3322
  %229 = or i32 %228, %218, !dbg !3423
  call void @llvm.dbg.value(metadata i32 %229, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 %229, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()), !dbg !3312
  %230 = icmp slt i64 %227, %76, !dbg !3315
  br i1 %230, label %237, label %231, !dbg !3317

; <label>:231:                                    ; preds = %226
  %232 = udiv i64 9223372036854775807, %59, !dbg !3318
  %233 = icmp slt i64 %232, %227, !dbg !3319
  %234 = mul nsw i64 %227, %59, !dbg !3320
  %235 = select i1 %233, i64 9223372036854775807, i64 %234, !dbg !3321
  %236 = zext i1 %233 to i32, !dbg !3321
  br label %237, !dbg !3321

; <label>:237:                                    ; preds = %231, %226
  %238 = phi i64 [ -9223372036854775808, %226 ], [ %235, %231 ]
  %239 = phi i32 [ 1, %226 ], [ %236, %231 ], !dbg !3322
  %240 = or i32 %239, %229, !dbg !3423
  call void @llvm.dbg.value(metadata i32 %240, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()), !dbg !3312
  call void @llvm.dbg.value(metadata i32 %240, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()), !dbg !3312
  %241 = icmp slt i64 %238, %76, !dbg !3315
  br i1 %241, label %248, label %242, !dbg !3317

; <label>:242:                                    ; preds = %237
  %243 = udiv i64 9223372036854775807, %59, !dbg !3318
  %244 = icmp slt i64 %243, %238, !dbg !3319
  %245 = mul nsw i64 %238, %59, !dbg !3320
  %246 = select i1 %244, i64 9223372036854775807, i64 %245, !dbg !3321
  %247 = zext i1 %244 to i32, !dbg !3321
  br label %248, !dbg !3321

; <label>:248:                                    ; preds = %242, %237
  %249 = phi i64 [ -9223372036854775808, %237 ], [ %246, %242 ], !dbg !3409
  %250 = phi i32 [ 1, %237 ], [ %247, %242 ], !dbg !3322
  %251 = or i32 %250, %240, !dbg !3423
  call void @llvm.dbg.value(metadata i32 %251, metadata !3311, metadata !DIExpression()), !dbg !3314
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()), !dbg !3312
  br label %184, !dbg !3411

; <label>:252:                                    ; preds = %97
  %253 = udiv i64 9223372036854775807, %59, !dbg !3329
  %254 = icmp slt i64 %253, %98, !dbg !3330
  %255 = mul nsw i64 %98, %59, !dbg !3331
  %256 = select i1 %254, i64 9223372036854775807, i64 %255, !dbg !3332
  %257 = zext i1 %254 to i32, !dbg !3332
  br label %258, !dbg !3332

; <label>:258:                                    ; preds = %252, %97
  %259 = phi i64 [ -9223372036854775808, %97 ], [ %256, %252 ]
  %260 = phi i32 [ 1, %97 ], [ %257, %252 ], !dbg !3333
  %261 = or i32 %260, %99, !dbg !3424
  call void @llvm.dbg.value(metadata i32 %261, metadata !3311, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()), !dbg !3323
  call void @llvm.dbg.value(metadata i32 %261, metadata !3311, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()), !dbg !3323
  %262 = icmp slt i64 %259, %89, !dbg !3326
  br i1 %262, label %269, label %263, !dbg !3328

; <label>:263:                                    ; preds = %258
  %264 = udiv i64 9223372036854775807, %59, !dbg !3329
  %265 = icmp slt i64 %264, %259, !dbg !3330
  %266 = mul nsw i64 %259, %59, !dbg !3331
  %267 = select i1 %265, i64 9223372036854775807, i64 %266, !dbg !3332
  %268 = zext i1 %265 to i32, !dbg !3332
  br label %269, !dbg !3332

; <label>:269:                                    ; preds = %263, %258
  %270 = phi i64 [ -9223372036854775808, %258 ], [ %267, %263 ], !dbg !3409
  %271 = phi i32 [ 1, %258 ], [ %268, %263 ], !dbg !3333
  %272 = or i32 %271, %261, !dbg !3424
  call void @llvm.dbg.value(metadata i32 %272, metadata !3311, metadata !DIExpression()), !dbg !3325
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()), !dbg !3323
  br label %184, !dbg !3411

; <label>:273:                                    ; preds = %119
  %274 = udiv i64 9223372036854775807, %59, !dbg !3350
  %275 = icmp slt i64 %274, %120, !dbg !3351
  %276 = mul nsw i64 %120, %59, !dbg !3352
  %277 = select i1 %275, i64 9223372036854775807, i64 %276, !dbg !3353
  %278 = zext i1 %275 to i32, !dbg !3353
  br label %279, !dbg !3353

; <label>:279:                                    ; preds = %273, %119
  %280 = phi i64 [ -9223372036854775808, %119 ], [ %277, %273 ], !dbg !3409
  %281 = phi i32 [ 1, %119 ], [ %278, %273 ], !dbg !3354
  %282 = or i32 %281, %121, !dbg !3425
  call void @llvm.dbg.value(metadata i32 %282, metadata !3311, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()), !dbg !3344
  br label %184, !dbg !3411

; <label>:283:                                    ; preds = %132
  %284 = udiv i64 9223372036854775807, %59, !dbg !3361
  %285 = icmp slt i64 %284, %133, !dbg !3362
  %286 = mul nsw i64 %133, %59, !dbg !3363
  %287 = select i1 %285, i64 9223372036854775807, i64 %286, !dbg !3364
  %288 = zext i1 %285 to i32, !dbg !3364
  br label %289, !dbg !3364

; <label>:289:                                    ; preds = %283, %132
  %290 = phi i64 [ -9223372036854775808, %132 ], [ %287, %283 ]
  %291 = phi i32 [ 1, %132 ], [ %288, %283 ], !dbg !3365
  %292 = or i32 %291, %134, !dbg !3426
  call void @llvm.dbg.value(metadata i32 %292, metadata !3311, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i32 %292, metadata !3311, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()), !dbg !3355
  %293 = icmp slt i64 %290, %124, !dbg !3358
  br i1 %293, label %300, label %294, !dbg !3360

; <label>:294:                                    ; preds = %289
  %295 = udiv i64 9223372036854775807, %59, !dbg !3361
  %296 = icmp slt i64 %295, %290, !dbg !3362
  %297 = mul nsw i64 %290, %59, !dbg !3363
  %298 = select i1 %296, i64 9223372036854775807, i64 %297, !dbg !3364
  %299 = zext i1 %296 to i32, !dbg !3364
  br label %300, !dbg !3364

; <label>:300:                                    ; preds = %294, %289
  %301 = phi i64 [ -9223372036854775808, %289 ], [ %298, %294 ]
  %302 = phi i32 [ 1, %289 ], [ %299, %294 ], !dbg !3365
  %303 = or i32 %302, %292, !dbg !3426
  call void @llvm.dbg.value(metadata i32 %303, metadata !3311, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i32 %303, metadata !3311, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()), !dbg !3355
  %304 = icmp slt i64 %301, %124, !dbg !3358
  br i1 %304, label %311, label %305, !dbg !3360

; <label>:305:                                    ; preds = %300
  %306 = udiv i64 9223372036854775807, %59, !dbg !3361
  %307 = icmp slt i64 %306, %301, !dbg !3362
  %308 = mul nsw i64 %301, %59, !dbg !3363
  %309 = select i1 %307, i64 9223372036854775807, i64 %308, !dbg !3364
  %310 = zext i1 %307 to i32, !dbg !3364
  br label %311, !dbg !3364

; <label>:311:                                    ; preds = %305, %300
  %312 = phi i64 [ -9223372036854775808, %300 ], [ %309, %305 ]
  %313 = phi i32 [ 1, %300 ], [ %310, %305 ], !dbg !3365
  %314 = or i32 %313, %303, !dbg !3426
  call void @llvm.dbg.value(metadata i32 %314, metadata !3311, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()), !dbg !3355
  call void @llvm.dbg.value(metadata i32 %314, metadata !3311, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()), !dbg !3355
  %315 = icmp slt i64 %312, %124, !dbg !3358
  br i1 %315, label %322, label %316, !dbg !3360

; <label>:316:                                    ; preds = %311
  %317 = udiv i64 9223372036854775807, %59, !dbg !3361
  %318 = icmp slt i64 %317, %312, !dbg !3362
  %319 = mul nsw i64 %312, %59, !dbg !3363
  %320 = select i1 %318, i64 9223372036854775807, i64 %319, !dbg !3364
  %321 = zext i1 %318 to i32, !dbg !3364
  br label %322, !dbg !3364

; <label>:322:                                    ; preds = %316, %311
  %323 = phi i64 [ -9223372036854775808, %311 ], [ %320, %316 ], !dbg !3409
  %324 = phi i32 [ 1, %311 ], [ %321, %316 ], !dbg !3365
  %325 = or i32 %324, %314, !dbg !3426
  call void @llvm.dbg.value(metadata i32 %325, metadata !3311, metadata !DIExpression()), !dbg !3357
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()), !dbg !3355
  br label %184, !dbg !3411

; <label>:326:                                    ; preds = %145
  %327 = udiv i64 9223372036854775807, %59, !dbg !3372
  %328 = icmp slt i64 %327, %146, !dbg !3373
  %329 = mul nsw i64 %146, %59, !dbg !3374
  %330 = select i1 %328, i64 9223372036854775807, i64 %329, !dbg !3375
  %331 = zext i1 %328 to i32, !dbg !3375
  br label %332, !dbg !3375

; <label>:332:                                    ; preds = %326, %145
  %333 = phi i64 [ -9223372036854775808, %145 ], [ %330, %326 ]
  %334 = phi i32 [ 1, %145 ], [ %331, %326 ], !dbg !3376
  %335 = or i32 %334, %147, !dbg !3427
  call void @llvm.dbg.value(metadata i32 %335, metadata !3311, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 %335, metadata !3311, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()), !dbg !3366
  %336 = icmp slt i64 %333, %137, !dbg !3369
  br i1 %336, label %343, label %337, !dbg !3371

; <label>:337:                                    ; preds = %332
  %338 = udiv i64 9223372036854775807, %59, !dbg !3372
  %339 = icmp slt i64 %338, %333, !dbg !3373
  %340 = mul nsw i64 %333, %59, !dbg !3374
  %341 = select i1 %339, i64 9223372036854775807, i64 %340, !dbg !3375
  %342 = zext i1 %339 to i32, !dbg !3375
  br label %343, !dbg !3375

; <label>:343:                                    ; preds = %337, %332
  %344 = phi i64 [ -9223372036854775808, %332 ], [ %341, %337 ]
  %345 = phi i32 [ 1, %332 ], [ %342, %337 ], !dbg !3376
  %346 = or i32 %345, %335, !dbg !3427
  call void @llvm.dbg.value(metadata i32 %346, metadata !3311, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()), !dbg !3366
  call void @llvm.dbg.value(metadata i32 %346, metadata !3311, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()), !dbg !3366
  %347 = icmp slt i64 %344, %137, !dbg !3369
  br i1 %347, label %354, label %348, !dbg !3371

; <label>:348:                                    ; preds = %343
  %349 = udiv i64 9223372036854775807, %59, !dbg !3372
  %350 = icmp slt i64 %349, %344, !dbg !3373
  %351 = mul nsw i64 %344, %59, !dbg !3374
  %352 = select i1 %350, i64 9223372036854775807, i64 %351, !dbg !3375
  %353 = zext i1 %350 to i32, !dbg !3375
  br label %354, !dbg !3375

; <label>:354:                                    ; preds = %348, %343
  %355 = phi i64 [ -9223372036854775808, %343 ], [ %352, %348 ], !dbg !3409
  %356 = phi i32 [ 1, %343 ], [ %353, %348 ], !dbg !3376
  %357 = or i32 %356, %346, !dbg !3427
  call void @llvm.dbg.value(metadata i32 %357, metadata !3311, metadata !DIExpression()), !dbg !3368
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()), !dbg !3366
  br label %184, !dbg !3411

; <label>:358:                                    ; preds = %165
  %359 = udiv i64 9223372036854775807, %59, !dbg !3390
  %360 = icmp slt i64 %359, %166, !dbg !3391
  %361 = mul nsw i64 %166, %59, !dbg !3392
  %362 = select i1 %360, i64 9223372036854775807, i64 %361, !dbg !3393
  %363 = zext i1 %360 to i32, !dbg !3393
  br label %364, !dbg !3393

; <label>:364:                                    ; preds = %358, %165
  %365 = phi i64 [ -9223372036854775808, %165 ], [ %362, %358 ]
  %366 = phi i32 [ 1, %165 ], [ %363, %358 ], !dbg !3394
  %367 = or i32 %366, %167, !dbg !3428
  call void @llvm.dbg.value(metadata i32 %367, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 6, metadata !3304, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %367, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 6, metadata !3304, metadata !DIExpression()), !dbg !3384
  %368 = icmp slt i64 %365, %157, !dbg !3387
  br i1 %368, label %375, label %369, !dbg !3389

; <label>:369:                                    ; preds = %364
  %370 = udiv i64 9223372036854775807, %59, !dbg !3390
  %371 = icmp slt i64 %370, %365, !dbg !3391
  %372 = mul nsw i64 %365, %59, !dbg !3392
  %373 = select i1 %371, i64 9223372036854775807, i64 %372, !dbg !3393
  %374 = zext i1 %371 to i32, !dbg !3393
  br label %375, !dbg !3393

; <label>:375:                                    ; preds = %369, %364
  %376 = phi i64 [ -9223372036854775808, %364 ], [ %373, %369 ]
  %377 = phi i32 [ 1, %364 ], [ %374, %369 ], !dbg !3394
  %378 = or i32 %377, %367, !dbg !3428
  call void @llvm.dbg.value(metadata i32 %378, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %378, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression()), !dbg !3384
  %379 = icmp slt i64 %376, %157, !dbg !3387
  br i1 %379, label %386, label %380, !dbg !3389

; <label>:380:                                    ; preds = %375
  %381 = udiv i64 9223372036854775807, %59, !dbg !3390
  %382 = icmp slt i64 %381, %376, !dbg !3391
  %383 = mul nsw i64 %376, %59, !dbg !3392
  %384 = select i1 %382, i64 9223372036854775807, i64 %383, !dbg !3393
  %385 = zext i1 %382 to i32, !dbg !3393
  br label %386, !dbg !3393

; <label>:386:                                    ; preds = %380, %375
  %387 = phi i64 [ -9223372036854775808, %375 ], [ %384, %380 ]
  %388 = phi i32 [ 1, %375 ], [ %385, %380 ], !dbg !3394
  %389 = or i32 %388, %378, !dbg !3428
  call void @llvm.dbg.value(metadata i32 %389, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %389, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()), !dbg !3384
  %390 = icmp slt i64 %387, %157, !dbg !3387
  br i1 %390, label %397, label %391, !dbg !3389

; <label>:391:                                    ; preds = %386
  %392 = udiv i64 9223372036854775807, %59, !dbg !3390
  %393 = icmp slt i64 %392, %387, !dbg !3391
  %394 = mul nsw i64 %387, %59, !dbg !3392
  %395 = select i1 %393, i64 9223372036854775807, i64 %394, !dbg !3393
  %396 = zext i1 %393 to i32, !dbg !3393
  br label %397, !dbg !3393

; <label>:397:                                    ; preds = %391, %386
  %398 = phi i64 [ -9223372036854775808, %386 ], [ %395, %391 ]
  %399 = phi i32 [ 1, %386 ], [ %396, %391 ], !dbg !3394
  %400 = or i32 %399, %389, !dbg !3428
  call void @llvm.dbg.value(metadata i32 %400, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %400, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()), !dbg !3384
  %401 = icmp slt i64 %398, %157, !dbg !3387
  br i1 %401, label %408, label %402, !dbg !3389

; <label>:402:                                    ; preds = %397
  %403 = udiv i64 9223372036854775807, %59, !dbg !3390
  %404 = icmp slt i64 %403, %398, !dbg !3391
  %405 = mul nsw i64 %398, %59, !dbg !3392
  %406 = select i1 %404, i64 9223372036854775807, i64 %405, !dbg !3393
  %407 = zext i1 %404 to i32, !dbg !3393
  br label %408, !dbg !3393

; <label>:408:                                    ; preds = %402, %397
  %409 = phi i64 [ -9223372036854775808, %397 ], [ %406, %402 ]
  %410 = phi i32 [ 1, %397 ], [ %407, %402 ], !dbg !3394
  %411 = or i32 %410, %400, !dbg !3428
  call void @llvm.dbg.value(metadata i32 %411, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %411, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()), !dbg !3384
  %412 = icmp slt i64 %409, %157, !dbg !3387
  br i1 %412, label %419, label %413, !dbg !3389

; <label>:413:                                    ; preds = %408
  %414 = udiv i64 9223372036854775807, %59, !dbg !3390
  %415 = icmp slt i64 %414, %409, !dbg !3391
  %416 = mul nsw i64 %409, %59, !dbg !3392
  %417 = select i1 %415, i64 9223372036854775807, i64 %416, !dbg !3393
  %418 = zext i1 %415 to i32, !dbg !3393
  br label %419, !dbg !3393

; <label>:419:                                    ; preds = %413, %408
  %420 = phi i64 [ -9223372036854775808, %408 ], [ %417, %413 ]
  %421 = phi i32 [ 1, %408 ], [ %418, %413 ], !dbg !3394
  %422 = or i32 %421, %411, !dbg !3428
  call void @llvm.dbg.value(metadata i32 %422, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()), !dbg !3384
  call void @llvm.dbg.value(metadata i32 %422, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()), !dbg !3384
  %423 = icmp slt i64 %420, %157, !dbg !3387
  br i1 %423, label %430, label %424, !dbg !3389

; <label>:424:                                    ; preds = %419
  %425 = udiv i64 9223372036854775807, %59, !dbg !3390
  %426 = icmp slt i64 %425, %420, !dbg !3391
  %427 = mul nsw i64 %420, %59, !dbg !3392
  %428 = select i1 %426, i64 9223372036854775807, i64 %427, !dbg !3393
  %429 = zext i1 %426 to i32, !dbg !3393
  br label %430, !dbg !3393

; <label>:430:                                    ; preds = %424, %419
  %431 = phi i64 [ -9223372036854775808, %419 ], [ %428, %424 ], !dbg !3409
  %432 = phi i32 [ 1, %419 ], [ %429, %424 ], !dbg !3394
  %433 = or i32 %432, %422, !dbg !3428
  call void @llvm.dbg.value(metadata i32 %433, metadata !3311, metadata !DIExpression()), !dbg !3386
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()), !dbg !3384
  br label %184, !dbg !3411

; <label>:434:                                    ; preds = %178
  %435 = udiv i64 9223372036854775807, %59, !dbg !3401
  %436 = icmp slt i64 %435, %179, !dbg !3402
  %437 = mul nsw i64 %179, %59, !dbg !3403
  %438 = select i1 %436, i64 9223372036854775807, i64 %437, !dbg !3404
  %439 = zext i1 %436 to i32, !dbg !3404
  br label %440, !dbg !3404

; <label>:440:                                    ; preds = %434, %178
  %441 = phi i64 [ -9223372036854775808, %178 ], [ %438, %434 ]
  %442 = phi i32 [ 1, %178 ], [ %439, %434 ], !dbg !3405
  %443 = or i32 %442, %180, !dbg !3429
  call void @llvm.dbg.value(metadata i32 %443, metadata !3311, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i32 %443, metadata !3311, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 5, metadata !3304, metadata !DIExpression()), !dbg !3395
  %444 = icmp slt i64 %441, %170, !dbg !3398
  br i1 %444, label %451, label %445, !dbg !3400

; <label>:445:                                    ; preds = %440
  %446 = udiv i64 9223372036854775807, %59, !dbg !3401
  %447 = icmp slt i64 %446, %441, !dbg !3402
  %448 = mul nsw i64 %441, %59, !dbg !3403
  %449 = select i1 %447, i64 9223372036854775807, i64 %448, !dbg !3404
  %450 = zext i1 %447 to i32, !dbg !3404
  br label %451, !dbg !3404

; <label>:451:                                    ; preds = %445, %440
  %452 = phi i64 [ -9223372036854775808, %440 ], [ %449, %445 ]
  %453 = phi i32 [ 1, %440 ], [ %450, %445 ], !dbg !3405
  %454 = or i32 %453, %443, !dbg !3429
  call void @llvm.dbg.value(metadata i32 %454, metadata !3311, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i32 %454, metadata !3311, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 4, metadata !3304, metadata !DIExpression()), !dbg !3395
  %455 = icmp slt i64 %452, %170, !dbg !3398
  br i1 %455, label %462, label %456, !dbg !3400

; <label>:456:                                    ; preds = %451
  %457 = udiv i64 9223372036854775807, %59, !dbg !3401
  %458 = icmp slt i64 %457, %452, !dbg !3402
  %459 = mul nsw i64 %452, %59, !dbg !3403
  %460 = select i1 %458, i64 9223372036854775807, i64 %459, !dbg !3404
  %461 = zext i1 %458 to i32, !dbg !3404
  br label %462, !dbg !3404

; <label>:462:                                    ; preds = %456, %451
  %463 = phi i64 [ -9223372036854775808, %451 ], [ %460, %456 ]
  %464 = phi i32 [ 1, %451 ], [ %461, %456 ], !dbg !3405
  %465 = or i32 %464, %454, !dbg !3429
  call void @llvm.dbg.value(metadata i32 %465, metadata !3311, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i32 %465, metadata !3311, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 3, metadata !3304, metadata !DIExpression()), !dbg !3395
  %466 = icmp slt i64 %463, %170, !dbg !3398
  br i1 %466, label %473, label %467, !dbg !3400

; <label>:467:                                    ; preds = %462
  %468 = udiv i64 9223372036854775807, %59, !dbg !3401
  %469 = icmp slt i64 %468, %463, !dbg !3402
  %470 = mul nsw i64 %463, %59, !dbg !3403
  %471 = select i1 %469, i64 9223372036854775807, i64 %470, !dbg !3404
  %472 = zext i1 %469 to i32, !dbg !3404
  br label %473, !dbg !3404

; <label>:473:                                    ; preds = %467, %462
  %474 = phi i64 [ -9223372036854775808, %462 ], [ %471, %467 ]
  %475 = phi i32 [ 1, %462 ], [ %472, %467 ], !dbg !3405
  %476 = or i32 %475, %465, !dbg !3429
  call void @llvm.dbg.value(metadata i32 %476, metadata !3311, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i32 %476, metadata !3311, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 2, metadata !3304, metadata !DIExpression()), !dbg !3395
  %477 = icmp slt i64 %474, %170, !dbg !3398
  br i1 %477, label %484, label %478, !dbg !3400

; <label>:478:                                    ; preds = %473
  %479 = udiv i64 9223372036854775807, %59, !dbg !3401
  %480 = icmp slt i64 %479, %474, !dbg !3402
  %481 = mul nsw i64 %474, %59, !dbg !3403
  %482 = select i1 %480, i64 9223372036854775807, i64 %481, !dbg !3404
  %483 = zext i1 %480 to i32, !dbg !3404
  br label %484, !dbg !3404

; <label>:484:                                    ; preds = %478, %473
  %485 = phi i64 [ -9223372036854775808, %473 ], [ %482, %478 ]
  %486 = phi i32 [ 1, %473 ], [ %483, %478 ], !dbg !3405
  %487 = or i32 %486, %476, !dbg !3429
  call void @llvm.dbg.value(metadata i32 %487, metadata !3311, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()), !dbg !3395
  call void @llvm.dbg.value(metadata i32 %487, metadata !3311, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 1, metadata !3304, metadata !DIExpression()), !dbg !3395
  %488 = icmp slt i64 %485, %170, !dbg !3398
  br i1 %488, label %495, label %489, !dbg !3400

; <label>:489:                                    ; preds = %484
  %490 = udiv i64 9223372036854775807, %59, !dbg !3401
  %491 = icmp slt i64 %490, %485, !dbg !3402
  %492 = mul nsw i64 %485, %59, !dbg !3403
  %493 = select i1 %491, i64 9223372036854775807, i64 %492, !dbg !3404
  %494 = zext i1 %491 to i32, !dbg !3404
  br label %495, !dbg !3404

; <label>:495:                                    ; preds = %489, %484
  %496 = phi i64 [ -9223372036854775808, %484 ], [ %493, %489 ], !dbg !3409
  %497 = phi i32 [ 1, %484 ], [ %494, %489 ], !dbg !3405
  %498 = or i32 %497, %487, !dbg !3429
  call void @llvm.dbg.value(metadata i32 %498, metadata !3311, metadata !DIExpression()), !dbg !3397
  call void @llvm.dbg.value(metadata i32 0, metadata !3304, metadata !DIExpression()), !dbg !3395
  br label %184, !dbg !3411
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i8* @strchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3430 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3433, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 %1, metadata !3434, metadata !DIExpression()), !dbg !3440
  %3 = icmp eq i64 %0, 0, !dbg !3441
  %4 = icmp eq i64 %1, 0, !dbg !3442
  %5 = or i1 %3, %4, !dbg !3443
  br i1 %5, label %12, label %6, !dbg !3443

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3444
  call void @llvm.dbg.value(metadata i64 %7, metadata !3436, metadata !DIExpression()), !dbg !3445
  %8 = udiv i64 %7, %1, !dbg !3446
  %9 = icmp eq i64 %8, %0, !dbg !3448
  br i1 %9, label %12, label %10, !dbg !3449

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3450
  store i32 12, i32* %11, align 4, !dbg !3452, !tbaa !739
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3433, metadata !DIExpression()), !dbg !3439
  call void @llvm.dbg.value(metadata i64 %13, metadata !3434, metadata !DIExpression()), !dbg !3440
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #10, !dbg !3453
  call void @llvm.dbg.value(metadata i8* %15, metadata !3435, metadata !DIExpression()), !dbg !3454
  br label %16, !dbg !3455

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3456
  ret i8* %17, !dbg !3457
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3458 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3475, metadata !DIExpression()), !dbg !3484
  call void @llvm.dbg.value(metadata i8* %1, metadata !3476, metadata !DIExpression()), !dbg !3485
  call void @llvm.dbg.value(metadata i64 %2, metadata !3477, metadata !DIExpression()), !dbg !3486
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3478, metadata !DIExpression()), !dbg !3487
  %6 = bitcast i32* %5 to i8*, !dbg !3488
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3488
  %7 = icmp eq i32* %0, null, !dbg !3489
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3491
  call void @llvm.dbg.value(metadata i32* %8, metadata !3475, metadata !DIExpression()), !dbg !3484
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #10, !dbg !3492
  call void @llvm.dbg.value(metadata i64 %9, metadata !3479, metadata !DIExpression()), !dbg !3493
  %10 = icmp ugt i64 %9, -3, !dbg !3494
  %11 = icmp ne i64 %2, 0, !dbg !3495
  %12 = and i1 %11, %10, !dbg !3496
  br i1 %12, label %13, label %18, !dbg !3496

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #10, !dbg !3497
  br i1 %14, label %18, label %15, !dbg !3498

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3499, !tbaa !748
  call void @llvm.dbg.value(metadata i8 %16, metadata !3481, metadata !DIExpression()), !dbg !3500
  %17 = zext i8 %16 to i32, !dbg !3501
  store i32 %17, i32* %8, align 4, !dbg !3502, !tbaa !739
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3503
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #10, !dbg !3504
  ret i64 %19, !dbg !3504
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3505 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3544, metadata !DIExpression()), !dbg !3549
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #10, !dbg !3550
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3551, metadata !DIExpression()), !dbg !3554
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3556
  %4 = load i32, i32* %3, align 8, !dbg !3556, !tbaa !910
  %5 = and i32 %4, 32, !dbg !3556
  %6 = icmp eq i32 %5, 0, !dbg !3557
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #10, !dbg !3558
  %8 = icmp ne i32 %7, 0, !dbg !3559
  br i1 %6, label %9, label %19, !dbg !3560

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3562
  %11 = xor i1 %8, true, !dbg !3563
  %12 = or i1 %10, %11, !dbg !3563
  %13 = sext i1 %8 to i32, !dbg !3563
  br i1 %12, label %22, label %14, !dbg !3563

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3564
  %16 = load i32, i32* %15, align 4, !dbg !3564, !tbaa !739
  %17 = icmp ne i32 %16, 9, !dbg !3565
  %18 = sext i1 %17 to i32, !dbg !3566
  br label %22, !dbg !3566

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3567

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3569
  store i32 0, i32* %21, align 4, !dbg !3571, !tbaa !739
  br label %22, !dbg !3569

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3572
  ret i32 %23, !dbg !3573
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3574 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3577, metadata !DIExpression()), !dbg !3580
  call void @llvm.dbg.value(metadata i8 1, metadata !3578, metadata !DIExpression()), !dbg !3581
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #10, !dbg !3582
  call void @llvm.dbg.value(metadata i8* %2, metadata !3579, metadata !DIExpression()), !dbg !3583
  %3 = icmp eq i8* %2, null, !dbg !3584
  br i1 %3, label %11, label %4, !dbg !3586

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.121, i64 0, i64 0)) #14, !dbg !3587
  %6 = icmp eq i32 %5, 0, !dbg !3592
  br i1 %6, label %10, label %7, !dbg !3593

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.122, i64 0, i64 0)) #14, !dbg !3594
  %9 = icmp eq i32 %8, 0, !dbg !3595
  br i1 %9, label %10, label %11, !dbg !3596

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3578, metadata !DIExpression()), !dbg !3581
  br label %11, !dbg !3597

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3598
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3599 {
  %1 = tail call i8* @nl_langinfo(i32 14) #10, !dbg !3605
  call void @llvm.dbg.value(metadata i8* %1, metadata !3604, metadata !DIExpression()), !dbg !3606
  %2 = icmp eq i8* %1, null, !dbg !3607
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.125, i64 0, i64 0), i8* %1, !dbg !3609
  call void @llvm.dbg.value(metadata i8* %3, metadata !3604, metadata !DIExpression()), !dbg !3606
  %4 = load i8, i8* %3, align 1, !dbg !3610, !tbaa !748
  %5 = icmp eq i8 %4, 0, !dbg !3614
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.126, i64 0, i64 0), i8* %3, !dbg !3615
  call void @llvm.dbg.value(metadata i8* %6, metadata !3604, metadata !DIExpression()), !dbg !3606
  ret i8* %6, !dbg !3616
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3617 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3656, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.value(metadata i32 0, metadata !3657, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i32 0, metadata !3659, metadata !DIExpression()), !dbg !3662
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3663
  call void @llvm.dbg.value(metadata i32 %2, metadata !3658, metadata !DIExpression()), !dbg !3664
  %3 = icmp slt i32 %2, 0, !dbg !3665
  br i1 %3, label %4, label %6, !dbg !3667

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3668
  br label %24, !dbg !3669

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3670
  %8 = icmp eq i32 %7, 0, !dbg !3670
  br i1 %8, label %13, label %9, !dbg !3672

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3673
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #10, !dbg !3674
  %12 = icmp eq i64 %11, -1, !dbg !3675
  br i1 %12, label %16, label %13, !dbg !3676

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #10, !dbg !3677
  %15 = icmp eq i32 %14, 0, !dbg !3677
  br i1 %15, label %16, label %18, !dbg !3678

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3657, metadata !DIExpression()), !dbg !3661
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3679
  call void @llvm.dbg.value(metadata i32 %21, metadata !3659, metadata !DIExpression()), !dbg !3662
  br label %24, !dbg !3680

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3681
  %20 = load i32, i32* %19, align 4, !dbg !3681, !tbaa !739
  call void @llvm.dbg.value(metadata i32 %20, metadata !3657, metadata !DIExpression()), !dbg !3661
  call void @llvm.dbg.value(metadata i32 %20, metadata !3657, metadata !DIExpression()), !dbg !3661
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3679
  call void @llvm.dbg.value(metadata i32 %21, metadata !3659, metadata !DIExpression()), !dbg !3662
  %22 = icmp eq i32 %20, 0, !dbg !3682
  br i1 %22, label %24, label %23, !dbg !3680

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3684, !tbaa !739
  call void @llvm.dbg.value(metadata i32 -1, metadata !3659, metadata !DIExpression()), !dbg !3662
  br label %24, !dbg !3686

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3687
  ret i32 %25, !dbg !3688
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3689 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3728, metadata !DIExpression()), !dbg !3729
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3730
  br i1 %2, label %6, label %3, !dbg !3732

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #10, !dbg !3733
  %5 = icmp eq i32 %4, 0, !dbg !3733
  br i1 %5, label %6, label %8, !dbg !3734

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3735
  br label %17, !dbg !3736

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3737, metadata !DIExpression()) #10, !dbg !3742
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3744
  %10 = load i32, i32* %9, align 8, !dbg !3744, !tbaa !910
  %11 = and i32 %10, 256, !dbg !3746
  %12 = icmp eq i32 %11, 0, !dbg !3746
  br i1 %12, label %15, label %13, !dbg !3747

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #10, !dbg !3748
  br label %15, !dbg !3748

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3749
  br label %17, !dbg !3750

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3751
  ret i32 %18, !dbg !3752
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3753 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3793, metadata !DIExpression()), !dbg !3799
  call void @llvm.dbg.value(metadata i64 %1, metadata !3794, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata i32 %2, metadata !3795, metadata !DIExpression()), !dbg !3801
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3802
  %5 = load i8*, i8** %4, align 8, !dbg !3802, !tbaa !3803
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3804
  %7 = load i8*, i8** %6, align 8, !dbg !3804, !tbaa !3805
  %8 = icmp eq i8* %5, %7, !dbg !3806
  br i1 %8, label %9, label %28, !dbg !3807

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3808
  %11 = load i8*, i8** %10, align 8, !dbg !3808, !tbaa !3809
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3810
  %13 = load i8*, i8** %12, align 8, !dbg !3810, !tbaa !3811
  %14 = icmp eq i8* %11, %13, !dbg !3812
  br i1 %14, label %15, label %28, !dbg !3813

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3814
  %17 = load i8*, i8** %16, align 8, !dbg !3814, !tbaa !3815
  %18 = icmp eq i8* %17, null, !dbg !3816
  br i1 %18, label %19, label %28, !dbg !3817

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #10, !dbg !3818
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #10, !dbg !3819
  call void @llvm.dbg.value(metadata i64 %21, metadata !3796, metadata !DIExpression()), !dbg !3820
  %22 = icmp eq i64 %21, -1, !dbg !3821
  br i1 %22, label %30, label %23, !dbg !3823

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3824
  %25 = load i32, i32* %24, align 8, !dbg !3825, !tbaa !910
  %26 = and i32 %25, -17, !dbg !3825
  store i32 %26, i32* %24, align 8, !dbg !3825, !tbaa !910
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3826
  store i64 %21, i64* %27, align 8, !dbg !3827, !tbaa !3828
  br label %30, !dbg !3829

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3830
  br label %30, !dbg !3831

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3832
  ret i32 %31, !dbg !3833
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

!llvm.dbg.cu = !{!2, !80, !86, !94, !101, !108, !201, !194, !209, !226, !228, !231, !233, !236, !238, !240, !629, !631, !633}
!llvm.ident = !{!635, !635, !635, !635, !635, !635, !635, !635, !635, !635, !635, !635, !635, !635, !635, !635, !635, !635, !635}
!llvm.module.flags = !{!636, !637, !638, !639, !640}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 58, type: !66, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !63, globals: !65)
!3 = !DIFile(filename: "src/nice.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !13, !21, !57}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 87, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "EXIT_TIMEDOUT", value: 124, isUnsigned: true)
!10 = !DIEnumerator(name: "EXIT_CANCELED", value: 125, isUnsigned: true)
!11 = !DIEnumerator(name: "EXIT_CANNOT_INVOKE", value: 126, isUnsigned: true)
!12 = !DIEnumerator(name: "EXIT_ENOENT", value: 127, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "strtol_error", file: !14, line: 26, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./lib/xstrtol.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!15 = !{!16, !17, !18, !19, !20}
!16 = !DIEnumerator(name: "LONGINT_OK", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "LONGINT_OVERFLOW", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "LONGINT_INVALID_SUFFIX_CHAR_WITH_OVERFLOW", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "LONGINT_INVALID", value: 4, isUnsigned: true)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !22, file: !3, line: 170, baseType: !25, size: 32, elements: !54)
!22 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 101, type: !23, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !29)
!23 = !DISubroutineType(types: !24)
!24 = !{!25, !25, !26}
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{!30, !31, !32, !33, !34, !37, !39, !40, !44, !47, !48, !49, !53}
!30 = !DILocalVariable(name: "argc", arg: 1, scope: !22, file: !3, line: 101, type: !25)
!31 = !DILocalVariable(name: "argv", arg: 2, scope: !22, file: !3, line: 101, type: !26)
!32 = !DILocalVariable(name: "current_niceness", scope: !22, file: !3, line: 103, type: !25)
!33 = !DILocalVariable(name: "adjustment", scope: !22, file: !3, line: 104, type: !25)
!34 = !DILocalVariable(name: "adjustment_given", scope: !22, file: !3, line: 105, type: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!37 = !DILocalVariable(name: "ok", scope: !22, file: !3, line: 106, type: !38)
!38 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!39 = !DILocalVariable(name: "i", scope: !22, file: !3, line: 107, type: !25)
!40 = !DILocalVariable(name: "s", scope: !41, file: !3, line: 120, type: !35)
!41 = distinct !DILexicalBlock(scope: !42, file: !3, line: 119, column: 5)
!42 = distinct !DILexicalBlock(scope: !43, file: !3, line: 118, column: 3)
!43 = distinct !DILexicalBlock(scope: !22, file: !3, line: 118, column: 3)
!44 = !DILocalVariable(name: "c", scope: !45, file: !3, line: 129, type: !25)
!45 = distinct !DILexicalBlock(scope: !46, file: !3, line: 128, column: 9)
!46 = distinct !DILexicalBlock(scope: !41, file: !3, line: 122, column: 11)
!47 = !DILocalVariable(name: "fake_argc", scope: !45, file: !3, line: 130, type: !25)
!48 = !DILocalVariable(name: "fake_argv", scope: !45, file: !3, line: 131, type: !26)
!49 = !DILocalVariable(name: "tmp", scope: !50, file: !3, line: 171, type: !52)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 166, column: 5)
!51 = distinct !DILexicalBlock(scope: !22, file: !3, line: 165, column: 7)
!52 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!53 = !DILocalVariable(name: "exit_status", scope: !22, file: !3, line: 218, type: !25)
!54 = !{!55, !56}
!55 = !DIEnumerator(name: "MIN_ADJUSTMENT", value: -39)
!56 = !DIEnumerator(name: "MAX_ADJUSTMENT", value: 39)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__priority_which", file: !58, line: 187, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "/usr/include/bits/resource.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!59 = !{!60, !61, !62}
!60 = !DIEnumerator(name: "PRIO_PROCESS", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "PRIO_PGRP", value: 1, isUnsigned: true)
!62 = !DIEnumerator(name: "PRIO_USER", value: 2, isUnsigned: true)
!63 = !{!7, !27, !64}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !{!0}
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 1024, elements: !76)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !69, line: 50, size: 256, elements: !70)
!69 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!70 = !{!71, !72, !73, !75}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !68, file: !69, line: 52, baseType: !35, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !68, file: !69, line: 55, baseType: !25, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !68, file: !69, line: 56, baseType: !74, size: 64, offset: 128)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !68, file: !69, line: 57, baseType: !25, size: 32, offset: 192)
!76 = !{!77}
!77 = !DISubrange(count: 4)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "Version", scope: !80, file: !81, line: 2, type: !35, isLocal: false, isDefinition: true)
!80 = distinct !DICompileUnit(language: DW_LANG_C99, file: !81, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, globals: !83)
!81 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!82 = !{}
!83 = !{!78}
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(name: "file_name", scope: !86, file: !91, line: 46, type: !35, isLocal: true, isDefinition: true)
!86 = distinct !DICompileUnit(language: DW_LANG_C99, file: !87, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, globals: !88)
!87 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!88 = !{!84, !89}
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !86, file: !91, line: 56, type: !38, isLocal: true, isDefinition: true)
!91 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(name: "exit_failure", scope: !94, file: !97, line: 24, type: !98, isLocal: false, isDefinition: true)
!94 = distinct !DICompileUnit(language: DW_LANG_C99, file: !95, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, globals: !96)
!95 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!96 = !{!92}
!97 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!98 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !25)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "program_name", scope: !101, file: !105, line: 33, type: !35, isLocal: false, isDefinition: true)
!101 = distinct !DICompileUnit(language: DW_LANG_C99, file: !102, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !103, globals: !104)
!102 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!103 = !{!64, !27}
!104 = !{!99}
!105 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !108, file: !153, line: 85, type: !188, isLocal: false, isDefinition: true)
!108 = distinct !DICompileUnit(language: DW_LANG_C99, file: !109, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !110, retainedTypes: !145, globals: !150)
!109 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!110 = !{!111, !125, !130}
!111 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_style", file: !112, line: 32, baseType: !7, size: 32, elements: !113)
!112 = !DIFile(filename: "./lib/quotearg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124}
!114 = !DIEnumerator(name: "literal_quoting_style", value: 0, isUnsigned: true)
!115 = !DIEnumerator(name: "shell_quoting_style", value: 1, isUnsigned: true)
!116 = !DIEnumerator(name: "shell_always_quoting_style", value: 2, isUnsigned: true)
!117 = !DIEnumerator(name: "shell_escape_quoting_style", value: 3, isUnsigned: true)
!118 = !DIEnumerator(name: "shell_escape_always_quoting_style", value: 4, isUnsigned: true)
!119 = !DIEnumerator(name: "c_quoting_style", value: 5, isUnsigned: true)
!120 = !DIEnumerator(name: "c_maybe_quoting_style", value: 6, isUnsigned: true)
!121 = !DIEnumerator(name: "escape_quoting_style", value: 7, isUnsigned: true)
!122 = !DIEnumerator(name: "locale_quoting_style", value: 8, isUnsigned: true)
!123 = !DIEnumerator(name: "clocale_quoting_style", value: 9, isUnsigned: true)
!124 = !DIEnumerator(name: "custom_quoting_style", value: 10, isUnsigned: true)
!125 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !112, line: 242, baseType: !7, size: 32, elements: !126)
!126 = !{!127, !128, !129}
!127 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!128 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!129 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!130 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !131, line: 46, baseType: !7, size: 32, elements: !132)
!131 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!132 = !{!133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!133 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!134 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!135 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!136 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!137 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!138 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!139 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!140 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!141 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!142 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!143 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!144 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!145 = !{!25, !146, !147, !27}
!146 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !148, line: 62, baseType: !149)
!148 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!149 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!150 = !{!106, !151, !158, !170, !172, !177, !184, !186}
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !108, file: !153, line: 101, type: !154, isLocal: false, isDefinition: true)
!153 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 320, elements: !156)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!156 = !{!157}
!157 = !DISubrange(count: 10)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !108, file: !153, line: 1052, type: !160, isLocal: false, isDefinition: true)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !153, line: 65, size: 448, elements: !161)
!161 = !{!162, !163, !164, !168, !169}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !160, file: !153, line: 68, baseType: !111, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !160, file: !153, line: 71, baseType: !25, size: 32, offset: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !160, file: !153, line: 75, baseType: !165, size: 256, offset: 64)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 8)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !160, file: !153, line: 78, baseType: !35, size: 64, offset: 320)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !160, file: !153, line: 81, baseType: !35, size: 64, offset: 384)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !108, file: !153, line: 116, type: !160, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(name: "slot0", scope: !108, file: !153, line: 842, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 2048, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 256)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(name: "slotvec", scope: !108, file: !153, line: 845, type: !179, isLocal: true, isDefinition: true)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !153, line: 834, size: 128, elements: !181)
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !180, file: !153, line: 836, baseType: !147, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !180, file: !153, line: 837, baseType: !27, size: 64, offset: 64)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(name: "nslots", scope: !108, file: !153, line: 843, type: !25, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(name: "slotvec0", scope: !108, file: !153, line: 844, type: !180, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !189, size: 704, elements: !190)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!190 = !{!191}
!191 = !DISubrange(count: 11)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !194, file: !197, line: 26, type: !198, isLocal: false, isDefinition: true)
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, globals: !196)
!195 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!196 = !{!192}
!197 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 376, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 47)
!201 = distinct !DICompileUnit(language: DW_LANG_C99, file: !202, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !203, retainedTypes: !208)
!202 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!203 = !{!204}
!204 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !205, line: 41, baseType: !7, size: 32, elements: !206)
!205 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!206 = !{!207}
!207 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!208 = !{!64}
!209 = distinct !DICompileUnit(language: DW_LANG_C99, file: !210, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !211, retainedTypes: !225)
!210 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!211 = !{!212}
!212 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !214, file: !213, line: 186, baseType: !7, size: 32, elements: !223)
!213 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!214 = distinct !DISubprogram(name: "x2nrealloc", scope: !213, file: !213, line: 174, type: !215, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !218)
!215 = !DISubroutineType(types: !216)
!216 = !{!64, !64, !217, !147}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!218 = !{!219, !220, !221, !222}
!219 = !DILocalVariable(name: "p", arg: 1, scope: !214, file: !213, line: 174, type: !64)
!220 = !DILocalVariable(name: "pn", arg: 2, scope: !214, file: !213, line: 174, type: !217)
!221 = !DILocalVariable(name: "s", arg: 3, scope: !214, file: !213, line: 174, type: !147)
!222 = !DILocalVariable(name: "n", scope: !214, file: !213, line: 176, type: !147)
!223 = !{!224}
!224 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!225 = !{!147, !27, !64}
!226 = distinct !DICompileUnit(language: DW_LANG_C99, file: !227, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82)
!227 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!228 = distinct !DICompileUnit(language: DW_LANG_C99, file: !229, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !230)
!229 = !DIFile(filename: "./lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!230 = !{!13}
!231 = distinct !DICompileUnit(language: DW_LANG_C99, file: !232, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !208)
!232 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!233 = distinct !DICompileUnit(language: DW_LANG_C99, file: !234, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !235)
!234 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!235 = !{!147}
!236 = distinct !DICompileUnit(language: DW_LANG_C99, file: !237, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82)
!237 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!238 = distinct !DICompileUnit(language: DW_LANG_C99, file: !239, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82)
!239 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!240 = distinct !DICompileUnit(language: DW_LANG_C99, file: !241, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !242, retainedTypes: !208)
!241 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!242 = !{!243}
!243 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !244, line: 41, baseType: !7, size: 32, elements: !245)
!244 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!245 = !{!246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!246 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!247 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!248 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!249 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!250 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!251 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!252 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!253 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!254 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!255 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!256 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!257 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!258 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!259 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!260 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!261 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!262 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!263 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!264 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!265 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!266 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!267 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!268 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!269 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!270 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!271 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!272 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!273 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!274 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!275 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!276 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!277 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!278 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!279 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!280 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!281 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!282 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!283 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!284 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!285 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!286 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!287 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!288 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!289 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!290 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!291 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!292 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!293 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!294 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!295 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!308 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!311 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!312 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!313 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!314 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!315 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!316 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!317 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!318 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!319 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!320 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!321 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!322 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!354 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!357 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!358 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!359 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!360 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!361 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!362 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!363 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!364 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!365 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!366 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!367 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!368 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!395 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!441 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!468 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!469 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!470 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!471 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!472 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!473 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!474 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!475 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!476 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!477 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!478 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!479 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!480 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!481 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!482 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!484 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!485 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!486 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!487 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!488 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!489 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!514 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!515 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!516 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!517 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!518 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!519 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!520 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!521 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!522 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!523 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!524 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!525 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!526 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!527 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!528 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!530 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!531 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!532 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!533 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!534 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!535 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!561 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!562 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!563 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!564 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!565 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!570 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!571 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!572 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!573 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!583 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!584 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!585 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!586 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!587 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!588 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!589 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!590 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!591 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!592 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!593 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!594 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!595 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!596 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!597 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!598 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!599 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!600 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!601 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!602 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!603 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!604 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!605 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!606 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!607 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!608 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!609 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!610 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!611 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!612 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!613 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!614 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!615 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!616 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!617 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!618 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!619 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!620 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!621 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!622 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!623 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!624 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!625 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!626 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!627 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!628 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!629 = distinct !DICompileUnit(language: DW_LANG_C99, file: !630, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82)
!630 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!631 = distinct !DICompileUnit(language: DW_LANG_C99, file: !632, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !208)
!632 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!633 = distinct !DICompileUnit(language: DW_LANG_C99, file: !634, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !82, retainedTypes: !208)
!634 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!635 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!636 = !{i32 2, !"Dwarf Version", i32 4}
!637 = !{i32 2, !"Debug Info Version", i32 3}
!638 = !{i32 1, !"wchar_size", i32 4}
!639 = !{i32 7, !"PIC Level", i32 2}
!640 = !{i32 7, !"PIE Level", i32 2}
!641 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 67, type: !642, isLocal: false, isDefinition: true, scopeLine: 68, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !644)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !25}
!644 = !{!645}
!645 = !DILocalVariable(name: "status", arg: 1, scope: !641, file: !3, line: 67, type: !25)
!646 = !DILocalVariable(name: "infomap", scope: !647, file: !6, line: 632, type: !661)
!647 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !6, file: !6, line: 630, type: !648, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !650)
!648 = !DISubroutineType(types: !649)
!649 = !{null, !35}
!650 = !{!651, !646, !652, !653, !660}
!651 = !DILocalVariable(name: "program", arg: 1, scope: !647, file: !6, line: 630, type: !35)
!652 = !DILocalVariable(name: "node", scope: !647, file: !6, line: 642, type: !35)
!653 = !DILocalVariable(name: "map_prog", scope: !647, file: !6, line: 643, type: !654)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !647, file: !6, line: 632, size: 128, elements: !657)
!657 = !{!658, !659}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !656, file: !6, line: 632, baseType: !35, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !656, file: !6, line: 632, baseType: !35, size: 64, offset: 64)
!660 = !DILocalVariable(name: "lc_messages", scope: !647, file: !6, line: 655, type: !35)
!661 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 896, elements: !662)
!662 = !{!663}
!663 = !DISubrange(count: 7)
!664 = !DILocation(line: 632, column: 67, scope: !647, inlinedAt: !665)
!665 = distinct !DILocation(line: 89, column: 7, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !3, line: 72, column: 5)
!667 = distinct !DILexicalBlock(scope: !641, file: !3, line: 69, column: 7)
!668 = !DILocation(line: 67, column: 12, scope: !641)
!669 = !DILocation(line: 69, column: 14, scope: !667)
!670 = !DILocation(line: 69, column: 7, scope: !641)
!671 = !DILocation(line: 70, column: 5, scope: !672)
!672 = distinct !DILexicalBlock(scope: !667, file: !3, line: 70, column: 5)
!673 = !{!674, !674, i64 0}
!674 = !{!"any pointer", !675, i64 0}
!675 = !{!"omnipotent char", !676, i64 0}
!676 = !{!"Simple C/C++ TBAA"}
!677 = !DILocation(line: 73, column: 7, scope: !666)
!678 = !DILocation(line: 74, column: 7, scope: !666)
!679 = !DILocation(line: 587, column: 3, scope: !680, inlinedAt: !683)
!680 = distinct !DISubprogram(name: "emit_mandatory_arg_note", scope: !6, file: !6, line: 585, type: !681, isLocal: true, isDefinition: true, scopeLine: 586, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !82)
!681 = !DISubroutineType(types: !682)
!682 = !{null}
!683 = distinct !DILocation(line: 81, column: 7, scope: !666)
!684 = !DILocation(line: 83, column: 7, scope: !666)
!685 = !DILocation(line: 86, column: 7, scope: !666)
!686 = !DILocation(line: 87, column: 7, scope: !666)
!687 = !DILocation(line: 88, column: 7, scope: !666)
!688 = !DILocation(line: 632, column: 3, scope: !647, inlinedAt: !665)
!689 = !DILocation(line: 643, column: 36, scope: !647, inlinedAt: !665)
!690 = !DILocation(line: 643, column: 25, scope: !647, inlinedAt: !665)
!691 = !DILocation(line: 645, column: 33, scope: !647, inlinedAt: !665)
!692 = !DILocation(line: 645, column: 3, scope: !647, inlinedAt: !665)
!693 = !DILocation(line: 646, column: 13, scope: !647, inlinedAt: !665)
!694 = !DILocation(line: 645, column: 20, scope: !647, inlinedAt: !665)
!695 = !{!696, !674, i64 0}
!696 = !{!"infomap", !674, i64 0, !674, i64 8}
!697 = !DILocation(line: 645, column: 10, scope: !647, inlinedAt: !665)
!698 = !DILocation(line: 645, column: 28, scope: !647, inlinedAt: !665)
!699 = distinct !{!699, !700, !701}
!700 = !DILocation(line: 645, column: 3, scope: !647)
!701 = !DILocation(line: 646, column: 13, scope: !647)
!702 = !DILocation(line: 648, column: 17, scope: !703, inlinedAt: !665)
!703 = distinct !DILexicalBlock(scope: !647, file: !6, line: 648, column: 7)
!704 = !{!696, !674, i64 8}
!705 = !DILocation(line: 648, column: 7, scope: !703, inlinedAt: !665)
!706 = !DILocation(line: 648, column: 7, scope: !647, inlinedAt: !665)
!707 = !DILocation(line: 642, column: 15, scope: !647, inlinedAt: !665)
!708 = !DILocation(line: 651, column: 3, scope: !647, inlinedAt: !665)
!709 = !DILocation(line: 655, column: 29, scope: !647, inlinedAt: !665)
!710 = !DILocation(line: 655, column: 15, scope: !647, inlinedAt: !665)
!711 = !DILocation(line: 656, column: 7, scope: !712, inlinedAt: !665)
!712 = distinct !DILexicalBlock(scope: !647, file: !6, line: 656, column: 7)
!713 = !DILocation(line: 656, column: 19, scope: !712, inlinedAt: !665)
!714 = !DILocation(line: 656, column: 22, scope: !712, inlinedAt: !665)
!715 = !DILocation(line: 656, column: 7, scope: !647, inlinedAt: !665)
!716 = !DILocation(line: 662, column: 7, scope: !717, inlinedAt: !665)
!717 = distinct !DILexicalBlock(scope: !712, file: !6, line: 657, column: 5)
!718 = !DILocation(line: 664, column: 5, scope: !717, inlinedAt: !665)
!719 = !DILocation(line: 665, column: 3, scope: !647, inlinedAt: !665)
!720 = !DILocation(line: 667, column: 3, scope: !647, inlinedAt: !665)
!721 = !DILocation(line: 669, column: 1, scope: !647, inlinedAt: !665)
!722 = !DILocation(line: 91, column: 3, scope: !641)
!723 = !DILocation(line: 101, column: 11, scope: !22)
!724 = !DILocation(line: 101, column: 24, scope: !22)
!725 = !DILocation(line: 104, column: 7, scope: !22)
!726 = !DILocation(line: 105, column: 15, scope: !22)
!727 = !DILocation(line: 110, column: 21, scope: !22)
!728 = !DILocation(line: 110, column: 3, scope: !22)
!729 = !DILocation(line: 111, column: 3, scope: !22)
!730 = !DILocation(line: 112, column: 3, scope: !22)
!731 = !DILocation(line: 113, column: 3, scope: !22)
!732 = !DILocalVariable(name: "status", arg: 1, scope: !733, file: !6, line: 99, type: !25)
!733 = distinct !DISubprogram(name: "initialize_exit_failure", scope: !6, file: !6, line: 99, type: !642, isLocal: true, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !734)
!734 = !{!732}
!735 = !DILocation(line: 99, column: 30, scope: !733, inlinedAt: !736)
!736 = distinct !DILocation(line: 115, column: 3, scope: !22)
!737 = !DILocation(line: 102, column: 18, scope: !738, inlinedAt: !736)
!738 = distinct !DILexicalBlock(scope: !733, file: !6, line: 101, column: 7)
!739 = !{!740, !740, i64 0}
!740 = !{!"int", !675, i64 0}
!741 = !DILocation(line: 116, column: 3, scope: !22)
!742 = !DILocation(line: 107, column: 7, scope: !22)
!743 = !DILocation(line: 118, column: 17, scope: !42)
!744 = !DILocation(line: 118, column: 3, scope: !43)
!745 = !DILocation(line: 120, column: 23, scope: !41)
!746 = !DILocation(line: 120, column: 19, scope: !41)
!747 = !DILocation(line: 122, column: 11, scope: !46)
!748 = !{!675, !675, i64 0}
!749 = !DILocation(line: 122, column: 16, scope: !46)
!750 = !DILocation(line: 122, column: 23, scope: !46)
!751 = !DILocation(line: 122, column: 26, scope: !46)
!752 = !DILocation(line: 122, column: 11, scope: !41)
!753 = !DILocation(line: 125, column: 11, scope: !754)
!754 = distinct !DILexicalBlock(scope: !46, file: !3, line: 123, column: 9)
!755 = !DILocation(line: 126, column: 9, scope: !754)
!756 = !DILocation(line: 130, column: 37, scope: !45)
!757 = !DILocation(line: 130, column: 32, scope: !45)
!758 = !DILocation(line: 130, column: 15, scope: !45)
!759 = !DILocation(line: 131, column: 35, scope: !45)
!760 = !DILocation(line: 131, column: 18, scope: !45)
!761 = !DILocation(line: 134, column: 26, scope: !45)
!762 = !DILocation(line: 134, column: 24, scope: !45)
!763 = !DILocation(line: 137, column: 18, scope: !45)
!764 = !DILocation(line: 139, column: 15, scope: !45)
!765 = !DILocation(line: 129, column: 15, scope: !45)
!766 = !DILocation(line: 140, column: 16, scope: !45)
!767 = !DILocation(line: 140, column: 13, scope: !45)
!768 = !DILocation(line: 142, column: 11, scope: !45)
!769 = !DILocation(line: 145, column: 34, scope: !770)
!770 = distinct !DILexicalBlock(scope: !45, file: !3, line: 143, column: 13)
!771 = !DILocation(line: 151, column: 13, scope: !770)
!772 = !DILocation(line: 153, column: 13, scope: !770)
!773 = !DILocation(line: 156, column: 15, scope: !770)
!774 = !DILocation(line: 0, scope: !45)
!775 = !DILocation(line: 0, scope: !22)
!776 = !DILocation(line: 0, scope: !754)
!777 = !DILocation(line: 0, scope: !43)
!778 = !DILocation(line: 165, column: 7, scope: !51)
!779 = !DILocation(line: 165, column: 7, scope: !22)
!780 = !DILocation(line: 171, column: 7, scope: !50)
!781 = !DILocation(line: 171, column: 16, scope: !50)
!782 = !DILocation(line: 172, column: 30, scope: !783)
!783 = distinct !DILexicalBlock(scope: !50, file: !3, line: 172, column: 11)
!784 = !DILocation(line: 172, column: 28, scope: !783)
!785 = !DILocation(line: 172, column: 11, scope: !50)
!786 = !DILocation(line: 173, column: 9, scope: !783)
!787 = !DILocation(line: 175, column: 20, scope: !50)
!788 = !{!789, !789, i64 0}
!789 = !{!"long", !675, i64 0}
!790 = !DILocation(line: 176, column: 5, scope: !51)
!791 = !DILocation(line: 176, column: 5, scope: !50)
!792 = !DILocation(line: 178, column: 9, scope: !793)
!793 = distinct !DILexicalBlock(scope: !22, file: !3, line: 178, column: 7)
!794 = !DILocation(line: 178, column: 7, scope: !22)
!795 = !DILocation(line: 180, column: 11, scope: !796)
!796 = distinct !DILexicalBlock(scope: !793, file: !3, line: 179, column: 5)
!797 = !DILocation(line: 182, column: 24, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 181, column: 9)
!799 = distinct !DILexicalBlock(scope: !796, file: !3, line: 180, column: 11)
!800 = !DILocation(line: 182, column: 11, scope: !798)
!801 = !DILocation(line: 183, column: 11, scope: !798)
!802 = !DILocation(line: 186, column: 7, scope: !796)
!803 = !DILocation(line: 186, column: 13, scope: !796)
!804 = !DILocation(line: 187, column: 26, scope: !796)
!805 = !DILocation(line: 103, column: 7, scope: !22)
!806 = !DILocation(line: 188, column: 28, scope: !807)
!807 = distinct !DILexicalBlock(scope: !796, file: !3, line: 188, column: 11)
!808 = !DILocation(line: 188, column: 34, scope: !807)
!809 = !DILocation(line: 188, column: 37, scope: !807)
!810 = !DILocation(line: 188, column: 43, scope: !807)
!811 = !DILocation(line: 188, column: 11, scope: !796)
!812 = !DILocation(line: 189, column: 9, scope: !807)
!813 = !DILocation(line: 190, column: 7, scope: !796)
!814 = !DILocation(line: 191, column: 7, scope: !796)
!815 = !DILocation(line: 194, column: 3, scope: !22)
!816 = !DILocation(line: 194, column: 9, scope: !22)
!817 = !DILocation(line: 198, column: 22, scope: !22)
!818 = !DILocation(line: 199, column: 24, scope: !819)
!819 = distinct !DILexicalBlock(scope: !22, file: !3, line: 199, column: 7)
!820 = !DILocation(line: 199, column: 30, scope: !819)
!821 = !DILocation(line: 199, column: 33, scope: !819)
!822 = !DILocation(line: 199, column: 39, scope: !819)
!823 = !DILocation(line: 199, column: 7, scope: !22)
!824 = !DILocation(line: 200, column: 5, scope: !819)
!825 = !DILocation(line: 201, column: 56, scope: !22)
!826 = !DILocation(line: 201, column: 9, scope: !22)
!827 = !DILocation(line: 201, column: 70, scope: !22)
!828 = !DILocation(line: 203, column: 7, scope: !22)
!829 = !DILocation(line: 205, column: 34, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 204, column: 5)
!831 = distinct !DILexicalBlock(scope: !22, file: !3, line: 203, column: 7)
!832 = !DILocalVariable(name: "err", arg: 1, scope: !833, file: !3, line: 95, type: !25)
!833 = distinct !DISubprogram(name: "perm_related_errno", scope: !3, file: !3, line: 95, type: !834, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !836)
!834 = !DISubroutineType(types: !835)
!835 = !{!38, !25}
!836 = !{!832}
!837 = !DILocation(line: 95, column: 25, scope: !833, inlinedAt: !838)
!838 = distinct !DILocation(line: 205, column: 14, scope: !830)
!839 = !DILocation(line: 97, column: 14, scope: !833, inlinedAt: !838)
!840 = !DILocation(line: 97, column: 31, scope: !833, inlinedAt: !838)
!841 = !DILocation(line: 97, column: 24, scope: !833, inlinedAt: !838)
!842 = !DILocation(line: 205, column: 14, scope: !830)
!843 = !DILocation(line: 206, column: 38, scope: !830)
!844 = !DILocation(line: 205, column: 7, scope: !830)
!845 = !DILocation(line: 212, column: 11, scope: !846)
!846 = distinct !DILexicalBlock(scope: !830, file: !3, line: 212, column: 11)
!847 = !DILocalVariable(name: "__stream", arg: 1, scope: !848, file: !849, line: 135, type: !852)
!848 = distinct !DISubprogram(name: "ferror_unlocked", scope: !849, file: !849, line: 135, type: !850, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !906)
!849 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!850 = !DISubroutineType(types: !851)
!851 = !{!25, !852}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !854, line: 7, baseType: !855)
!854 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !856, line: 49, size: 1728, elements: !857)
!856 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!857 = !{!858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !873, !875, !876, !877, !880, !881, !883, !887, !890, !892, !895, !898, !899, !900, !901, !902}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !855, file: !856, line: 51, baseType: !25, size: 32)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !855, file: !856, line: 54, baseType: !27, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !855, file: !856, line: 55, baseType: !27, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !855, file: !856, line: 56, baseType: !27, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !855, file: !856, line: 57, baseType: !27, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !855, file: !856, line: 58, baseType: !27, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !855, file: !856, line: 59, baseType: !27, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !855, file: !856, line: 60, baseType: !27, size: 64, offset: 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !855, file: !856, line: 61, baseType: !27, size: 64, offset: 512)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !855, file: !856, line: 64, baseType: !27, size: 64, offset: 576)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !855, file: !856, line: 65, baseType: !27, size: 64, offset: 640)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !855, file: !856, line: 66, baseType: !27, size: 64, offset: 704)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !855, file: !856, line: 68, baseType: !871, size: 64, offset: 768)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !856, line: 36, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !855, file: !856, line: 70, baseType: !874, size: 64, offset: 832)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !855, file: !856, line: 72, baseType: !25, size: 32, offset: 896)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !855, file: !856, line: 73, baseType: !25, size: 32, offset: 928)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !855, file: !856, line: 74, baseType: !878, size: 64, offset: 960)
!878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !879, line: 150, baseType: !52)
!879 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!880 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !855, file: !856, line: 77, baseType: !146, size: 16, offset: 1024)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !855, file: !856, line: 78, baseType: !882, size: 8, offset: 1040)
!882 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !855, file: !856, line: 79, baseType: !884, size: 8, offset: 1048)
!884 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 8, elements: !885)
!885 = !{!886}
!886 = !DISubrange(count: 1)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !855, file: !856, line: 81, baseType: !888, size: 64, offset: 1088)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !856, line: 43, baseType: null)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !855, file: !856, line: 89, baseType: !891, size: 64, offset: 1152)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !879, line: 151, baseType: !52)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !855, file: !856, line: 91, baseType: !893, size: 64, offset: 1216)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !856, line: 37, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !855, file: !856, line: 92, baseType: !896, size: 64, offset: 1280)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !856, line: 38, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !855, file: !856, line: 93, baseType: !874, size: 64, offset: 1344)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !855, file: !856, line: 94, baseType: !64, size: 64, offset: 1408)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !855, file: !856, line: 95, baseType: !147, size: 64, offset: 1472)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !855, file: !856, line: 96, baseType: !25, size: 32, offset: 1536)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !855, file: !856, line: 98, baseType: !903, size: 160, offset: 1568)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 160, elements: !904)
!904 = !{!905}
!905 = !DISubrange(count: 20)
!906 = !{!847}
!907 = !DILocation(line: 135, column: 1, scope: !848, inlinedAt: !908)
!908 = distinct !DILocation(line: 212, column: 11, scope: !846)
!909 = !DILocation(line: 137, column: 10, scope: !848, inlinedAt: !908)
!910 = !{!911, !740, i64 0}
!911 = !{!"_IO_FILE", !740, i64 0, !674, i64 8, !674, i64 16, !674, i64 24, !674, i64 32, !674, i64 40, !674, i64 48, !674, i64 56, !674, i64 64, !674, i64 72, !674, i64 80, !674, i64 88, !674, i64 96, !674, i64 104, !740, i64 112, !740, i64 116, !789, i64 120, !912, i64 128, !675, i64 130, !675, i64 131, !674, i64 136, !789, i64 144, !674, i64 152, !674, i64 160, !674, i64 168, !674, i64 176, !789, i64 184, !740, i64 192, !675, i64 196}
!912 = !{!"short", !675, i64 0}
!913 = !DILocation(line: 212, column: 11, scope: !830)
!914 = !DILocation(line: 216, column: 11, scope: !22)
!915 = !DILocation(line: 216, column: 3, scope: !22)
!916 = !DILocation(line: 218, column: 21, scope: !22)
!917 = !DILocation(line: 218, column: 27, scope: !22)
!918 = !DILocation(line: 218, column: 7, scope: !22)
!919 = !DILocation(line: 219, column: 33, scope: !22)
!920 = !DILocation(line: 219, column: 26, scope: !22)
!921 = !DILocation(line: 219, column: 3, scope: !22)
!922 = !DILocation(line: 0, scope: !846)
!923 = !DILocation(line: 221, column: 1, scope: !22)
!924 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !91, file: !91, line: 51, type: !648, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !86, retainedNodes: !925)
!925 = !{!926}
!926 = !DILocalVariable(name: "file", arg: 1, scope: !924, file: !91, line: 51, type: !35)
!927 = !DILocation(line: 51, column: 41, scope: !924)
!928 = !DILocation(line: 53, column: 13, scope: !924)
!929 = !DILocation(line: 54, column: 1, scope: !924)
!930 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !91, file: !91, line: 88, type: !931, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !86, retainedNodes: !933)
!931 = !DISubroutineType(types: !932)
!932 = !{null, !38}
!933 = !{!934}
!934 = !DILocalVariable(name: "ignore", arg: 1, scope: !930, file: !91, line: 88, type: !38)
!935 = !DILocation(line: 88, column: 37, scope: !930)
!936 = !DILocation(line: 90, column: 16, scope: !930)
!937 = !{!938, !938, i64 0}
!938 = !{!"_Bool", !675, i64 0}
!939 = !DILocation(line: 91, column: 1, scope: !930)
!940 = distinct !DISubprogram(name: "close_stdout", scope: !91, file: !91, line: 117, type: !681, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !86, retainedNodes: !941)
!941 = !{!942}
!942 = !DILocalVariable(name: "write_error", scope: !943, file: !91, line: 122, type: !35)
!943 = distinct !DILexicalBlock(scope: !944, file: !91, line: 121, column: 5)
!944 = distinct !DILexicalBlock(scope: !940, file: !91, line: 119, column: 7)
!945 = !DILocation(line: 119, column: 21, scope: !944)
!946 = !DILocation(line: 119, column: 7, scope: !944)
!947 = !DILocation(line: 119, column: 29, scope: !944)
!948 = !DILocation(line: 120, column: 7, scope: !944)
!949 = !DILocation(line: 120, column: 12, scope: !944)
!950 = !{i8 0, i8 2}
!951 = !DILocation(line: 120, column: 25, scope: !944)
!952 = !DILocation(line: 120, column: 28, scope: !944)
!953 = !DILocation(line: 120, column: 34, scope: !944)
!954 = !DILocation(line: 119, column: 7, scope: !940)
!955 = !DILocation(line: 122, column: 33, scope: !943)
!956 = !DILocation(line: 122, column: 19, scope: !943)
!957 = !DILocation(line: 123, column: 11, scope: !958)
!958 = distinct !DILexicalBlock(scope: !943, file: !91, line: 123, column: 11)
!959 = !DILocation(line: 0, scope: !958)
!960 = !DILocation(line: 123, column: 11, scope: !943)
!961 = !DILocation(line: 124, column: 36, scope: !958)
!962 = !DILocation(line: 124, column: 9, scope: !958)
!963 = !DILocation(line: 127, column: 9, scope: !958)
!964 = !DILocation(line: 129, column: 14, scope: !943)
!965 = !DILocation(line: 129, column: 7, scope: !943)
!966 = !DILocation(line: 134, column: 42, scope: !967)
!967 = distinct !DILexicalBlock(scope: !940, file: !91, line: 134, column: 7)
!968 = !DILocation(line: 134, column: 28, scope: !967)
!969 = !DILocation(line: 134, column: 50, scope: !967)
!970 = !DILocation(line: 134, column: 7, scope: !940)
!971 = !DILocation(line: 135, column: 12, scope: !967)
!972 = !DILocation(line: 135, column: 5, scope: !967)
!973 = !DILocation(line: 136, column: 1, scope: !940)
!974 = distinct !DISubprogram(name: "set_program_name", scope: !105, file: !105, line: 39, type: !648, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !101, retainedNodes: !975)
!975 = !{!976, !977, !978}
!976 = !DILocalVariable(name: "argv0", arg: 1, scope: !974, file: !105, line: 39, type: !35)
!977 = !DILocalVariable(name: "slash", scope: !974, file: !105, line: 46, type: !35)
!978 = !DILocalVariable(name: "base", scope: !974, file: !105, line: 47, type: !35)
!979 = !DILocation(line: 39, column: 31, scope: !974)
!980 = !DILocation(line: 51, column: 13, scope: !981)
!981 = distinct !DILexicalBlock(scope: !974, file: !105, line: 51, column: 7)
!982 = !DILocation(line: 51, column: 7, scope: !974)
!983 = !DILocation(line: 55, column: 14, scope: !984)
!984 = distinct !DILexicalBlock(scope: !981, file: !105, line: 52, column: 5)
!985 = !DILocation(line: 54, column: 7, scope: !984)
!986 = !DILocation(line: 56, column: 7, scope: !984)
!987 = !DILocation(line: 59, column: 11, scope: !974)
!988 = !DILocation(line: 46, column: 15, scope: !974)
!989 = !DILocation(line: 60, column: 17, scope: !974)
!990 = !DILocation(line: 60, column: 33, scope: !974)
!991 = !DILocation(line: 60, column: 11, scope: !974)
!992 = !DILocation(line: 47, column: 15, scope: !974)
!993 = !DILocation(line: 61, column: 12, scope: !994)
!994 = distinct !DILexicalBlock(scope: !974, file: !105, line: 61, column: 7)
!995 = !DILocation(line: 61, column: 20, scope: !994)
!996 = !DILocation(line: 61, column: 25, scope: !994)
!997 = !DILocation(line: 61, column: 42, scope: !994)
!998 = !DILocation(line: 61, column: 28, scope: !994)
!999 = !DILocation(line: 61, column: 61, scope: !994)
!1000 = !DILocation(line: 61, column: 7, scope: !974)
!1001 = !DILocation(line: 64, column: 11, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !1003, file: !105, line: 64, column: 11)
!1003 = distinct !DILexicalBlock(scope: !994, file: !105, line: 62, column: 5)
!1004 = !DILocation(line: 64, column: 36, scope: !1002)
!1005 = !DILocation(line: 64, column: 11, scope: !1003)
!1006 = !DILocation(line: 66, column: 24, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1002, file: !105, line: 65, column: 9)
!1008 = !DILocation(line: 70, column: 41, scope: !1007)
!1009 = !DILocation(line: 72, column: 9, scope: !1007)
!1010 = !DILocation(line: 84, column: 16, scope: !974)
!1011 = !DILocation(line: 90, column: 27, scope: !974)
!1012 = !DILocation(line: 92, column: 1, scope: !974)
!1013 = distinct !DISubprogram(name: "clone_quoting_options", scope: !153, file: !153, line: 122, type: !1014, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1017)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!1016, !1016}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!1017 = !{!1018, !1019, !1020}
!1018 = !DILocalVariable(name: "o", arg: 1, scope: !1013, file: !153, line: 122, type: !1016)
!1019 = !DILocalVariable(name: "e", scope: !1013, file: !153, line: 124, type: !25)
!1020 = !DILocalVariable(name: "p", scope: !1013, file: !153, line: 125, type: !1016)
!1021 = !DILocation(line: 122, column: 48, scope: !1013)
!1022 = !DILocation(line: 124, column: 11, scope: !1013)
!1023 = !DILocation(line: 124, column: 7, scope: !1013)
!1024 = !DILocation(line: 125, column: 40, scope: !1013)
!1025 = !DILocation(line: 125, column: 31, scope: !1013)
!1026 = !DILocation(line: 125, column: 27, scope: !1013)
!1027 = !DILocation(line: 127, column: 9, scope: !1013)
!1028 = !DILocation(line: 128, column: 3, scope: !1013)
!1029 = distinct !DISubprogram(name: "get_quoting_style", scope: !153, file: !153, line: 133, type: !1030, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1034)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!111, !1032}
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!1034 = !{!1035}
!1035 = !DILocalVariable(name: "o", arg: 1, scope: !1029, file: !153, line: 133, type: !1032)
!1036 = !DILocation(line: 133, column: 50, scope: !1029)
!1037 = !DILocation(line: 135, column: 11, scope: !1029)
!1038 = !DILocation(line: 135, column: 46, scope: !1029)
!1039 = !{!1040, !675, i64 0}
!1040 = !{!"quoting_options", !675, i64 0, !740, i64 4, !675, i64 8, !674, i64 40, !674, i64 48}
!1041 = !DILocation(line: 135, column: 3, scope: !1029)
!1042 = distinct !DISubprogram(name: "set_quoting_style", scope: !153, file: !153, line: 141, type: !1043, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1045)
!1043 = !DISubroutineType(types: !1044)
!1044 = !{null, !1016, !111}
!1045 = !{!1046, !1047}
!1046 = !DILocalVariable(name: "o", arg: 1, scope: !1042, file: !153, line: 141, type: !1016)
!1047 = !DILocalVariable(name: "s", arg: 2, scope: !1042, file: !153, line: 141, type: !111)
!1048 = !DILocation(line: 141, column: 44, scope: !1042)
!1049 = !DILocation(line: 141, column: 66, scope: !1042)
!1050 = !DILocation(line: 143, column: 4, scope: !1042)
!1051 = !DILocation(line: 143, column: 39, scope: !1042)
!1052 = !DILocation(line: 143, column: 45, scope: !1042)
!1053 = !DILocation(line: 144, column: 1, scope: !1042)
!1054 = distinct !DISubprogram(name: "set_char_quoting", scope: !153, file: !153, line: 152, type: !1055, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1057)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!25, !1016, !28, !25}
!1057 = !{!1058, !1059, !1060, !1061, !1063, !1065, !1066}
!1058 = !DILocalVariable(name: "o", arg: 1, scope: !1054, file: !153, line: 152, type: !1016)
!1059 = !DILocalVariable(name: "c", arg: 2, scope: !1054, file: !153, line: 152, type: !28)
!1060 = !DILocalVariable(name: "i", arg: 3, scope: !1054, file: !153, line: 152, type: !25)
!1061 = !DILocalVariable(name: "uc", scope: !1054, file: !153, line: 154, type: !1062)
!1062 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!1063 = !DILocalVariable(name: "p", scope: !1054, file: !153, line: 155, type: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1065 = !DILocalVariable(name: "shift", scope: !1054, file: !153, line: 157, type: !25)
!1066 = !DILocalVariable(name: "r", scope: !1054, file: !153, line: 158, type: !25)
!1067 = !DILocation(line: 152, column: 43, scope: !1054)
!1068 = !DILocation(line: 152, column: 51, scope: !1054)
!1069 = !DILocation(line: 152, column: 58, scope: !1054)
!1070 = !DILocation(line: 154, column: 17, scope: !1054)
!1071 = !DILocation(line: 156, column: 6, scope: !1054)
!1072 = !DILocation(line: 156, column: 62, scope: !1054)
!1073 = !DILocation(line: 156, column: 57, scope: !1054)
!1074 = !DILocation(line: 155, column: 17, scope: !1054)
!1075 = !DILocation(line: 157, column: 15, scope: !1054)
!1076 = !DILocation(line: 157, column: 7, scope: !1054)
!1077 = !DILocation(line: 158, column: 12, scope: !1054)
!1078 = !DILocation(line: 158, column: 15, scope: !1054)
!1079 = !DILocation(line: 158, column: 25, scope: !1054)
!1080 = !DILocation(line: 158, column: 7, scope: !1054)
!1081 = !DILocation(line: 159, column: 13, scope: !1054)
!1082 = !DILocation(line: 159, column: 18, scope: !1054)
!1083 = !DILocation(line: 159, column: 23, scope: !1054)
!1084 = !DILocation(line: 159, column: 6, scope: !1054)
!1085 = !DILocation(line: 160, column: 3, scope: !1054)
!1086 = distinct !DISubprogram(name: "set_quoting_flags", scope: !153, file: !153, line: 168, type: !1087, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1089)
!1087 = !DISubroutineType(types: !1088)
!1088 = !{!25, !1016, !25}
!1089 = !{!1090, !1091, !1092}
!1090 = !DILocalVariable(name: "o", arg: 1, scope: !1086, file: !153, line: 168, type: !1016)
!1091 = !DILocalVariable(name: "i", arg: 2, scope: !1086, file: !153, line: 168, type: !25)
!1092 = !DILocalVariable(name: "r", scope: !1086, file: !153, line: 170, type: !25)
!1093 = !DILocation(line: 168, column: 44, scope: !1086)
!1094 = !DILocation(line: 168, column: 51, scope: !1086)
!1095 = !DILocation(line: 171, column: 8, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1086, file: !153, line: 171, column: 7)
!1097 = !DILocation(line: 171, column: 7, scope: !1086)
!1098 = !DILocation(line: 173, column: 10, scope: !1086)
!1099 = !{!1040, !740, i64 4}
!1100 = !DILocation(line: 170, column: 7, scope: !1086)
!1101 = !DILocation(line: 174, column: 12, scope: !1086)
!1102 = !DILocation(line: 175, column: 3, scope: !1086)
!1103 = distinct !DISubprogram(name: "set_custom_quoting", scope: !153, file: !153, line: 179, type: !1104, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1106)
!1104 = !DISubroutineType(types: !1105)
!1105 = !{null, !1016, !35, !35}
!1106 = !{!1107, !1108, !1109}
!1107 = !DILocalVariable(name: "o", arg: 1, scope: !1103, file: !153, line: 179, type: !1016)
!1108 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1103, file: !153, line: 180, type: !35)
!1109 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1103, file: !153, line: 180, type: !35)
!1110 = !DILocation(line: 179, column: 45, scope: !1103)
!1111 = !DILocation(line: 180, column: 33, scope: !1103)
!1112 = !DILocation(line: 180, column: 57, scope: !1103)
!1113 = !DILocation(line: 182, column: 8, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1103, file: !153, line: 182, column: 7)
!1115 = !DILocation(line: 182, column: 7, scope: !1103)
!1116 = !DILocation(line: 184, column: 6, scope: !1103)
!1117 = !DILocation(line: 184, column: 12, scope: !1103)
!1118 = !DILocation(line: 185, column: 8, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1103, file: !153, line: 185, column: 7)
!1120 = !DILocation(line: 185, column: 23, scope: !1119)
!1121 = !DILocation(line: 185, column: 19, scope: !1119)
!1122 = !DILocation(line: 186, column: 5, scope: !1119)
!1123 = !DILocation(line: 187, column: 6, scope: !1103)
!1124 = !DILocation(line: 187, column: 17, scope: !1103)
!1125 = !{!1040, !674, i64 40}
!1126 = !DILocation(line: 188, column: 6, scope: !1103)
!1127 = !DILocation(line: 188, column: 18, scope: !1103)
!1128 = !{!1040, !674, i64 48}
!1129 = !DILocation(line: 189, column: 1, scope: !1103)
!1130 = distinct !DISubprogram(name: "quotearg_buffer", scope: !153, file: !153, line: 784, type: !1131, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1133)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{!147, !27, !147, !35, !147, !1032}
!1133 = !{!1134, !1135, !1136, !1137, !1138, !1139, !1140, !1141}
!1134 = !DILocalVariable(name: "buffer", arg: 1, scope: !1130, file: !153, line: 784, type: !27)
!1135 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1130, file: !153, line: 784, type: !147)
!1136 = !DILocalVariable(name: "arg", arg: 3, scope: !1130, file: !153, line: 785, type: !35)
!1137 = !DILocalVariable(name: "argsize", arg: 4, scope: !1130, file: !153, line: 785, type: !147)
!1138 = !DILocalVariable(name: "o", arg: 5, scope: !1130, file: !153, line: 786, type: !1032)
!1139 = !DILocalVariable(name: "p", scope: !1130, file: !153, line: 788, type: !1032)
!1140 = !DILocalVariable(name: "e", scope: !1130, file: !153, line: 789, type: !25)
!1141 = !DILocalVariable(name: "r", scope: !1130, file: !153, line: 790, type: !147)
!1142 = !DILocation(line: 784, column: 24, scope: !1130)
!1143 = !DILocation(line: 784, column: 39, scope: !1130)
!1144 = !DILocation(line: 785, column: 30, scope: !1130)
!1145 = !DILocation(line: 785, column: 42, scope: !1130)
!1146 = !DILocation(line: 786, column: 48, scope: !1130)
!1147 = !DILocation(line: 788, column: 37, scope: !1130)
!1148 = !DILocation(line: 788, column: 33, scope: !1130)
!1149 = !DILocation(line: 789, column: 11, scope: !1130)
!1150 = !DILocation(line: 789, column: 7, scope: !1130)
!1151 = !DILocation(line: 791, column: 43, scope: !1130)
!1152 = !DILocation(line: 791, column: 53, scope: !1130)
!1153 = !DILocation(line: 791, column: 60, scope: !1130)
!1154 = !DILocation(line: 792, column: 43, scope: !1130)
!1155 = !DILocation(line: 792, column: 58, scope: !1130)
!1156 = !DILocation(line: 790, column: 14, scope: !1130)
!1157 = !DILocation(line: 790, column: 10, scope: !1130)
!1158 = !DILocation(line: 793, column: 9, scope: !1130)
!1159 = !DILocation(line: 794, column: 3, scope: !1130)
!1160 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !153, file: !153, line: 256, type: !1161, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1165)
!1161 = !DISubroutineType(types: !1162)
!1162 = !{!147, !27, !147, !35, !147, !111, !25, !1163, !35, !35}
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1165 = !{!1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1190, !1191, !1192, !1193, !1194, !1197, !1198, !1214, !1217, !1218, !1225}
!1166 = !DILocalVariable(name: "buffer", arg: 1, scope: !1160, file: !153, line: 256, type: !27)
!1167 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1160, file: !153, line: 256, type: !147)
!1168 = !DILocalVariable(name: "arg", arg: 3, scope: !1160, file: !153, line: 257, type: !35)
!1169 = !DILocalVariable(name: "argsize", arg: 4, scope: !1160, file: !153, line: 257, type: !147)
!1170 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1160, file: !153, line: 258, type: !111)
!1171 = !DILocalVariable(name: "flags", arg: 6, scope: !1160, file: !153, line: 258, type: !25)
!1172 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1160, file: !153, line: 259, type: !1163)
!1173 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1160, file: !153, line: 260, type: !35)
!1174 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1160, file: !153, line: 261, type: !35)
!1175 = !DILocalVariable(name: "i", scope: !1160, file: !153, line: 263, type: !147)
!1176 = !DILocalVariable(name: "len", scope: !1160, file: !153, line: 264, type: !147)
!1177 = !DILocalVariable(name: "orig_buffersize", scope: !1160, file: !153, line: 265, type: !147)
!1178 = !DILocalVariable(name: "quote_string", scope: !1160, file: !153, line: 266, type: !35)
!1179 = !DILocalVariable(name: "quote_string_len", scope: !1160, file: !153, line: 267, type: !147)
!1180 = !DILocalVariable(name: "backslash_escapes", scope: !1160, file: !153, line: 268, type: !38)
!1181 = !DILocalVariable(name: "unibyte_locale", scope: !1160, file: !153, line: 269, type: !38)
!1182 = !DILocalVariable(name: "elide_outer_quotes", scope: !1160, file: !153, line: 270, type: !38)
!1183 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1160, file: !153, line: 271, type: !38)
!1184 = !DILocalVariable(name: "encountered_single_quote", scope: !1160, file: !153, line: 272, type: !38)
!1185 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1160, file: !153, line: 273, type: !38)
!1186 = !DILocalVariable(name: "c", scope: !1187, file: !153, line: 402, type: !1062)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !153, line: 401, column: 5)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !153, line: 400, column: 3)
!1189 = distinct !DILexicalBlock(scope: !1160, file: !153, line: 400, column: 3)
!1190 = !DILocalVariable(name: "esc", scope: !1187, file: !153, line: 403, type: !1062)
!1191 = !DILocalVariable(name: "is_right_quote", scope: !1187, file: !153, line: 404, type: !38)
!1192 = !DILocalVariable(name: "escaping", scope: !1187, file: !153, line: 405, type: !38)
!1193 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1187, file: !153, line: 406, type: !38)
!1194 = !DILocalVariable(name: "m", scope: !1195, file: !153, line: 610, type: !147)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !153, line: 608, column: 11)
!1196 = distinct !DILexicalBlock(scope: !1187, file: !153, line: 426, column: 9)
!1197 = !DILocalVariable(name: "printable", scope: !1195, file: !153, line: 612, type: !38)
!1198 = !DILocalVariable(name: "mbstate", scope: !1199, file: !153, line: 621, type: !1201)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !153, line: 620, column: 15)
!1200 = distinct !DILexicalBlock(scope: !1195, file: !153, line: 614, column: 17)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1202, line: 6, baseType: !1203)
!1202 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1204, line: 21, baseType: !1205)
!1204 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1204, line: 13, size: 64, elements: !1206)
!1206 = !{!1207, !1208}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1205, file: !1204, line: 15, baseType: !25, size: 32)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1205, file: !1204, line: 20, baseType: !1209, size: 32, offset: 32)
!1209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1205, file: !1204, line: 16, size: 32, elements: !1210)
!1210 = !{!1211, !1212}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1209, file: !1204, line: 18, baseType: !7, size: 32)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1209, file: !1204, line: 19, baseType: !1213, size: 32)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 32, elements: !76)
!1214 = !DILocalVariable(name: "w", scope: !1215, file: !153, line: 631, type: !1216)
!1215 = distinct !DILexicalBlock(scope: !1199, file: !153, line: 630, column: 19)
!1216 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !148, line: 90, baseType: !25)
!1217 = !DILocalVariable(name: "bytes", scope: !1215, file: !153, line: 632, type: !147)
!1218 = !DILocalVariable(name: "j", scope: !1219, file: !153, line: 657, type: !147)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !153, line: 656, column: 27)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !153, line: 654, column: 29)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !153, line: 649, column: 23)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !153, line: 641, column: 30)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !153, line: 636, column: 30)
!1224 = distinct !DILexicalBlock(scope: !1215, file: !153, line: 634, column: 25)
!1225 = !DILocalVariable(name: "ilim", scope: !1226, file: !153, line: 684, type: !147)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !153, line: 681, column: 15)
!1227 = distinct !DILexicalBlock(scope: !1195, file: !153, line: 680, column: 17)
!1228 = !DILocation(line: 256, column: 33, scope: !1160)
!1229 = !DILocation(line: 256, column: 48, scope: !1160)
!1230 = !DILocation(line: 257, column: 39, scope: !1160)
!1231 = !DILocation(line: 257, column: 51, scope: !1160)
!1232 = !DILocation(line: 258, column: 46, scope: !1160)
!1233 = !DILocation(line: 258, column: 65, scope: !1160)
!1234 = !DILocation(line: 259, column: 47, scope: !1160)
!1235 = !DILocation(line: 260, column: 39, scope: !1160)
!1236 = !DILocation(line: 261, column: 39, scope: !1160)
!1237 = !DILocation(line: 264, column: 10, scope: !1160)
!1238 = !DILocation(line: 265, column: 10, scope: !1160)
!1239 = !DILocation(line: 266, column: 15, scope: !1160)
!1240 = !DILocation(line: 267, column: 10, scope: !1160)
!1241 = !DILocation(line: 268, column: 8, scope: !1160)
!1242 = !DILocation(line: 269, column: 25, scope: !1160)
!1243 = !DILocation(line: 269, column: 36, scope: !1160)
!1244 = !DILocation(line: 270, column: 8, scope: !1160)
!1245 = !DILocation(line: 271, column: 8, scope: !1160)
!1246 = !DILocation(line: 272, column: 8, scope: !1160)
!1247 = !DILocation(line: 273, column: 8, scope: !1160)
!1248 = !DILocation(line: 273, column: 3, scope: !1160)
!1249 = !DILocation(line: 0, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1160, file: !153, line: 317, column: 5)
!1251 = !DILocation(line: 316, column: 3, scope: !1160)
!1252 = !DILocation(line: 323, column: 11, scope: !1250)
!1253 = !DILocation(line: 323, column: 12, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1250, file: !153, line: 323, column: 11)
!1255 = !DILocation(line: 324, column: 9, scope: !1256)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !153, line: 324, column: 9)
!1257 = distinct !DILexicalBlock(scope: !1254, file: !153, line: 324, column: 9)
!1258 = !DILocation(line: 324, column: 9, scope: !1257)
!1259 = !DILocation(line: 362, column: 26, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1261, file: !153, line: 340, column: 11)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !153, line: 339, column: 13)
!1262 = distinct !DILexicalBlock(scope: !1250, file: !153, line: 338, column: 7)
!1263 = !DILocation(line: 363, column: 27, scope: !1260)
!1264 = !DILocation(line: 364, column: 11, scope: !1260)
!1265 = !DILocation(line: 365, column: 14, scope: !1266)
!1266 = distinct !DILexicalBlock(scope: !1262, file: !153, line: 365, column: 13)
!1267 = !DILocation(line: 365, column: 13, scope: !1262)
!1268 = !DILocation(line: 366, column: 43, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !153, line: 366, column: 11)
!1270 = distinct !DILexicalBlock(scope: !1266, file: !153, line: 366, column: 11)
!1271 = !DILocation(line: 366, column: 11, scope: !1270)
!1272 = !DILocation(line: 367, column: 13, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !153, line: 367, column: 13)
!1274 = distinct !DILexicalBlock(scope: !1269, file: !153, line: 367, column: 13)
!1275 = !DILocation(line: 367, column: 13, scope: !1274)
!1276 = !DILocation(line: 366, column: 70, scope: !1269)
!1277 = distinct !{!1277, !1271, !1278}
!1278 = !DILocation(line: 367, column: 13, scope: !1270)
!1279 = !DILocation(line: 370, column: 28, scope: !1262)
!1280 = !DILocation(line: 372, column: 7, scope: !1250)
!1281 = !DILocation(line: 376, column: 7, scope: !1250)
!1282 = !DILocation(line: 379, column: 7, scope: !1250)
!1283 = !DILocation(line: 381, column: 12, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1250, file: !153, line: 381, column: 11)
!1285 = !DILocation(line: 381, column: 11, scope: !1250)
!1286 = !DILocation(line: 0, scope: !1284)
!1287 = !DILocation(line: 386, column: 12, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1250, file: !153, line: 386, column: 11)
!1289 = !DILocation(line: 386, column: 11, scope: !1250)
!1290 = !DILocation(line: 387, column: 9, scope: !1291)
!1291 = distinct !DILexicalBlock(scope: !1292, file: !153, line: 387, column: 9)
!1292 = distinct !DILexicalBlock(scope: !1288, file: !153, line: 387, column: 9)
!1293 = !DILocation(line: 387, column: 9, scope: !1292)
!1294 = !DILocation(line: 394, column: 7, scope: !1250)
!1295 = !DILocation(line: 397, column: 7, scope: !1250)
!1296 = !DILocation(line: 0, scope: !1160)
!1297 = !DILocation(line: 263, column: 10, scope: !1160)
!1298 = !DILocation(line: 400, column: 8, scope: !1189)
!1299 = !DILocation(line: 0, scope: !1188)
!1300 = !DILocation(line: 400, column: 27, scope: !1188)
!1301 = !DILocation(line: 400, column: 19, scope: !1188)
!1302 = !DILocation(line: 400, column: 41, scope: !1188)
!1303 = !DILocation(line: 400, column: 48, scope: !1188)
!1304 = !DILocation(line: 400, column: 3, scope: !1189)
!1305 = !DILocation(line: 400, column: 60, scope: !1188)
!1306 = !DILocation(line: 404, column: 12, scope: !1187)
!1307 = !DILocation(line: 405, column: 12, scope: !1187)
!1308 = !DILocation(line: 406, column: 12, scope: !1187)
!1309 = !DILocation(line: 409, column: 11, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1187, file: !153, line: 408, column: 11)
!1311 = !DILocation(line: 411, column: 17, scope: !1310)
!1312 = !DILocation(line: 412, column: 39, scope: !1310)
!1313 = !DILocation(line: 416, column: 32, scope: !1310)
!1314 = !DILocation(line: 412, column: 19, scope: !1310)
!1315 = !DILocation(line: 412, column: 15, scope: !1310)
!1316 = !DILocation(line: 417, column: 11, scope: !1310)
!1317 = !DILocation(line: 417, column: 26, scope: !1310)
!1318 = !DILocation(line: 417, column: 14, scope: !1310)
!1319 = !DILocation(line: 417, column: 63, scope: !1310)
!1320 = !DILocation(line: 408, column: 11, scope: !1187)
!1321 = !DILocation(line: 0, scope: !1187)
!1322 = !DILocation(line: 424, column: 11, scope: !1187)
!1323 = !DILocation(line: 402, column: 21, scope: !1187)
!1324 = !DILocation(line: 425, column: 7, scope: !1187)
!1325 = !DILocation(line: 428, column: 15, scope: !1196)
!1326 = !DILocation(line: 430, column: 15, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !153, line: 430, column: 15)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !153, line: 429, column: 13)
!1329 = distinct !DILexicalBlock(scope: !1196, file: !153, line: 428, column: 15)
!1330 = !DILocation(line: 430, column: 15, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1327, file: !153, line: 430, column: 15)
!1332 = !DILocation(line: 430, column: 15, scope: !1333)
!1333 = distinct !DILexicalBlock(scope: !1334, file: !153, line: 430, column: 15)
!1334 = distinct !DILexicalBlock(scope: !1335, file: !153, line: 430, column: 15)
!1335 = distinct !DILexicalBlock(scope: !1331, file: !153, line: 430, column: 15)
!1336 = !DILocation(line: 430, column: 15, scope: !1334)
!1337 = !DILocation(line: 430, column: 15, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1339, file: !153, line: 430, column: 15)
!1339 = distinct !DILexicalBlock(scope: !1335, file: !153, line: 430, column: 15)
!1340 = !DILocation(line: 430, column: 15, scope: !1339)
!1341 = !DILocation(line: 430, column: 15, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !153, line: 430, column: 15)
!1343 = distinct !DILexicalBlock(scope: !1335, file: !153, line: 430, column: 15)
!1344 = !DILocation(line: 430, column: 15, scope: !1343)
!1345 = !DILocation(line: 430, column: 15, scope: !1335)
!1346 = !DILocation(line: 430, column: 15, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !153, line: 430, column: 15)
!1348 = distinct !DILexicalBlock(scope: !1327, file: !153, line: 430, column: 15)
!1349 = !DILocation(line: 430, column: 15, scope: !1348)
!1350 = !DILocation(line: 438, column: 19, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1328, file: !153, line: 437, column: 19)
!1352 = !DILocation(line: 438, column: 24, scope: !1351)
!1353 = !DILocation(line: 438, column: 28, scope: !1351)
!1354 = !DILocation(line: 438, column: 38, scope: !1351)
!1355 = !DILocation(line: 438, column: 48, scope: !1351)
!1356 = !DILocation(line: 438, column: 59, scope: !1351)
!1357 = !DILocation(line: 440, column: 19, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1359, file: !153, line: 440, column: 19)
!1359 = distinct !DILexicalBlock(scope: !1360, file: !153, line: 440, column: 19)
!1360 = distinct !DILexicalBlock(scope: !1351, file: !153, line: 439, column: 17)
!1361 = !DILocation(line: 440, column: 19, scope: !1359)
!1362 = !DILocation(line: 441, column: 19, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !153, line: 441, column: 19)
!1364 = distinct !DILexicalBlock(scope: !1360, file: !153, line: 441, column: 19)
!1365 = !DILocation(line: 441, column: 19, scope: !1364)
!1366 = !DILocation(line: 442, column: 17, scope: !1360)
!1367 = !DILocation(line: 449, column: 20, scope: !1329)
!1368 = !DILocation(line: 454, column: 11, scope: !1196)
!1369 = !DILocation(line: 457, column: 19, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1196, file: !153, line: 455, column: 13)
!1371 = !DILocation(line: 463, column: 19, scope: !1372)
!1372 = distinct !DILexicalBlock(scope: !1370, file: !153, line: 462, column: 19)
!1373 = !DILocation(line: 463, column: 24, scope: !1372)
!1374 = !DILocation(line: 463, column: 28, scope: !1372)
!1375 = !DILocation(line: 463, column: 38, scope: !1372)
!1376 = !DILocation(line: 463, column: 47, scope: !1372)
!1377 = !DILocation(line: 463, column: 41, scope: !1372)
!1378 = !DILocation(line: 463, column: 52, scope: !1372)
!1379 = !DILocation(line: 462, column: 19, scope: !1370)
!1380 = !DILocation(line: 464, column: 25, scope: !1372)
!1381 = !DILocation(line: 464, column: 17, scope: !1372)
!1382 = !DILocation(line: 471, column: 25, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1372, file: !153, line: 465, column: 19)
!1384 = !DILocation(line: 475, column: 21, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1386, file: !153, line: 475, column: 21)
!1386 = distinct !DILexicalBlock(scope: !1383, file: !153, line: 475, column: 21)
!1387 = !DILocation(line: 475, column: 21, scope: !1386)
!1388 = !DILocation(line: 476, column: 21, scope: !1389)
!1389 = distinct !DILexicalBlock(scope: !1390, file: !153, line: 476, column: 21)
!1390 = distinct !DILexicalBlock(scope: !1383, file: !153, line: 476, column: 21)
!1391 = !DILocation(line: 476, column: 21, scope: !1390)
!1392 = !DILocation(line: 477, column: 21, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1394, file: !153, line: 477, column: 21)
!1394 = distinct !DILexicalBlock(scope: !1383, file: !153, line: 477, column: 21)
!1395 = !DILocation(line: 477, column: 21, scope: !1394)
!1396 = !DILocation(line: 478, column: 21, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !153, line: 478, column: 21)
!1398 = distinct !DILexicalBlock(scope: !1383, file: !153, line: 478, column: 21)
!1399 = !DILocation(line: 478, column: 21, scope: !1398)
!1400 = !DILocation(line: 479, column: 21, scope: !1383)
!1401 = !DILocation(line: 403, column: 21, scope: !1187)
!1402 = !DILocation(line: 492, column: 31, scope: !1196)
!1403 = !DILocation(line: 493, column: 31, scope: !1196)
!1404 = !DILocation(line: 495, column: 31, scope: !1196)
!1405 = !DILocation(line: 496, column: 31, scope: !1196)
!1406 = !DILocation(line: 497, column: 31, scope: !1196)
!1407 = !DILocation(line: 500, column: 15, scope: !1196)
!1408 = !DILocation(line: 502, column: 19, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1410, file: !153, line: 501, column: 13)
!1410 = distinct !DILexicalBlock(scope: !1196, file: !153, line: 500, column: 15)
!1411 = !DILocation(line: 509, column: 33, scope: !1412)
!1412 = distinct !DILexicalBlock(scope: !1196, file: !153, line: 509, column: 15)
!1413 = !DILocation(line: 0, scope: !1196)
!1414 = !DILocation(line: 514, column: 15, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1196, file: !153, line: 513, column: 15)
!1416 = !DILocation(line: 518, column: 15, scope: !1196)
!1417 = !DILocation(line: 526, column: 26, scope: !1418)
!1418 = distinct !DILexicalBlock(scope: !1196, file: !153, line: 526, column: 15)
!1419 = !DILocation(line: 526, column: 15, scope: !1196)
!1420 = !DILocation(line: 526, column: 40, scope: !1418)
!1421 = !DILocation(line: 526, column: 47, scope: !1418)
!1422 = !DILocation(line: 530, column: 17, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1196, file: !153, line: 530, column: 15)
!1424 = !DILocation(line: 526, column: 18, scope: !1418)
!1425 = !DILocation(line: 526, column: 65, scope: !1418)
!1426 = !DILocation(line: 530, column: 15, scope: !1196)
!1427 = !DILocation(line: 535, column: 11, scope: !1196)
!1428 = !DILocation(line: 549, column: 15, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1196, file: !153, line: 548, column: 15)
!1430 = !DILocation(line: 556, column: 15, scope: !1196)
!1431 = !DILocation(line: 558, column: 19, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !153, line: 557, column: 13)
!1433 = distinct !DILexicalBlock(scope: !1196, file: !153, line: 556, column: 15)
!1434 = !DILocation(line: 561, column: 19, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1432, file: !153, line: 561, column: 19)
!1436 = !DILocation(line: 561, column: 35, scope: !1435)
!1437 = !DILocation(line: 561, column: 30, scope: !1435)
!1438 = !DILocation(line: 570, column: 15, scope: !1439)
!1439 = distinct !DILexicalBlock(scope: !1440, file: !153, line: 570, column: 15)
!1440 = distinct !DILexicalBlock(scope: !1432, file: !153, line: 570, column: 15)
!1441 = !DILocation(line: 570, column: 15, scope: !1440)
!1442 = !DILocation(line: 571, column: 15, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1444, file: !153, line: 571, column: 15)
!1444 = distinct !DILexicalBlock(scope: !1432, file: !153, line: 571, column: 15)
!1445 = !DILocation(line: 571, column: 15, scope: !1444)
!1446 = !DILocation(line: 572, column: 15, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1448, file: !153, line: 572, column: 15)
!1448 = distinct !DILexicalBlock(scope: !1432, file: !153, line: 572, column: 15)
!1449 = !DILocation(line: 572, column: 15, scope: !1448)
!1450 = !DILocation(line: 574, column: 13, scope: !1432)
!1451 = !DILocation(line: 614, column: 17, scope: !1195)
!1452 = !DILocation(line: 610, column: 20, scope: !1195)
!1453 = !DILocation(line: 617, column: 29, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1200, file: !153, line: 615, column: 15)
!1455 = !{!912, !912, i64 0}
!1456 = !DILocation(line: 617, column: 27, scope: !1454)
!1457 = !DILocation(line: 612, column: 18, scope: !1195)
!1458 = !DILocation(line: 618, column: 15, scope: !1454)
!1459 = !DILocation(line: 621, column: 17, scope: !1199)
!1460 = !DILocation(line: 622, column: 17, scope: !1199)
!1461 = !DILocation(line: 626, column: 29, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1199, file: !153, line: 626, column: 21)
!1463 = !DILocation(line: 626, column: 21, scope: !1199)
!1464 = !DILocation(line: 627, column: 29, scope: !1462)
!1465 = !DILocation(line: 627, column: 19, scope: !1462)
!1466 = !DILocation(line: 0, scope: !1310)
!1467 = !DILocation(line: 629, column: 17, scope: !1199)
!1468 = !DILocation(line: 624, column: 19, scope: !1199)
!1469 = !DILocation(line: 625, column: 27, scope: !1199)
!1470 = !DILocation(line: 631, column: 21, scope: !1215)
!1471 = !DILocation(line: 632, column: 56, scope: !1215)
!1472 = !DILocation(line: 632, column: 50, scope: !1215)
!1473 = !DILocation(line: 633, column: 53, scope: !1215)
!1474 = !DILocation(line: 621, column: 27, scope: !1199)
!1475 = !DILocation(line: 631, column: 29, scope: !1215)
!1476 = !DILocation(line: 632, column: 36, scope: !1215)
!1477 = !DILocation(line: 632, column: 28, scope: !1215)
!1478 = !DILocation(line: 634, column: 25, scope: !1215)
!1479 = !DILocation(line: 644, column: 38, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1222, file: !153, line: 642, column: 23)
!1481 = !DILocation(line: 644, column: 48, scope: !1480)
!1482 = !DILocation(line: 644, column: 51, scope: !1480)
!1483 = !DILocation(line: 644, column: 25, scope: !1480)
!1484 = !DILocation(line: 645, column: 28, scope: !1480)
!1485 = !DILocation(line: 644, column: 34, scope: !1480)
!1486 = distinct !{!1486, !1483, !1484}
!1487 = !DILocation(line: 658, column: 43, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1489, file: !153, line: 658, column: 29)
!1489 = distinct !DILexicalBlock(scope: !1219, file: !153, line: 658, column: 29)
!1490 = !DILocation(line: 655, column: 29, scope: !1220)
!1491 = !DILocation(line: 657, column: 36, scope: !1219)
!1492 = !DILocation(line: 659, column: 49, scope: !1488)
!1493 = !DILocation(line: 659, column: 39, scope: !1488)
!1494 = !DILocation(line: 659, column: 31, scope: !1488)
!1495 = !DILocation(line: 658, column: 53, scope: !1488)
!1496 = !DILocation(line: 658, column: 29, scope: !1489)
!1497 = distinct !{!1497, !1496, !1498}
!1498 = !DILocation(line: 667, column: 33, scope: !1489)
!1499 = !DILocation(line: 674, column: 19, scope: !1199)
!1500 = !DILocation(line: 670, column: 41, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1221, file: !153, line: 670, column: 29)
!1502 = !DILocation(line: 670, column: 31, scope: !1501)
!1503 = !DILocation(line: 670, column: 29, scope: !1221)
!1504 = !DILocation(line: 672, column: 27, scope: !1221)
!1505 = !DILocation(line: 675, column: 26, scope: !1199)
!1506 = !DILocation(line: 675, column: 24, scope: !1199)
!1507 = !DILocation(line: 674, column: 19, scope: !1215)
!1508 = distinct !{!1508, !1467, !1509}
!1509 = !DILocation(line: 675, column: 44, scope: !1199)
!1510 = !DILocation(line: 676, column: 15, scope: !1200)
!1511 = !DILocation(line: 0, scope: !1462)
!1512 = !DILocation(line: 0, scope: !1199)
!1513 = !DILocation(line: 678, column: 40, scope: !1195)
!1514 = !DILocation(line: 680, column: 19, scope: !1227)
!1515 = !DILocation(line: 680, column: 45, scope: !1227)
!1516 = !DILocation(line: 680, column: 23, scope: !1227)
!1517 = !DILocation(line: 684, column: 33, scope: !1226)
!1518 = !DILocation(line: 684, column: 24, scope: !1226)
!1519 = !DILocation(line: 686, column: 17, scope: !1226)
!1520 = !DILocation(line: 0, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1522, file: !153, line: 687, column: 19)
!1522 = distinct !DILexicalBlock(scope: !1523, file: !153, line: 686, column: 17)
!1523 = distinct !DILexicalBlock(scope: !1226, file: !153, line: 686, column: 17)
!1524 = !DILocation(line: 0, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1521, file: !153, line: 703, column: 21)
!1526 = !DILocation(line: 0, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !153, line: 696, column: 23)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !153, line: 695, column: 30)
!1529 = distinct !DILexicalBlock(scope: !1521, file: !153, line: 688, column: 25)
!1530 = !DILocation(line: 688, column: 43, scope: !1529)
!1531 = !DILocation(line: 690, column: 25, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1533, file: !153, line: 690, column: 25)
!1533 = distinct !DILexicalBlock(scope: !1529, file: !153, line: 689, column: 23)
!1534 = !DILocation(line: 690, column: 25, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1532, file: !153, line: 690, column: 25)
!1536 = !DILocation(line: 690, column: 25, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !153, line: 690, column: 25)
!1538 = distinct !DILexicalBlock(scope: !1539, file: !153, line: 690, column: 25)
!1539 = distinct !DILexicalBlock(scope: !1535, file: !153, line: 690, column: 25)
!1540 = !DILocation(line: 690, column: 25, scope: !1538)
!1541 = !DILocation(line: 690, column: 25, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !153, line: 690, column: 25)
!1543 = distinct !DILexicalBlock(scope: !1539, file: !153, line: 690, column: 25)
!1544 = !DILocation(line: 690, column: 25, scope: !1543)
!1545 = !DILocation(line: 690, column: 25, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1547, file: !153, line: 690, column: 25)
!1547 = distinct !DILexicalBlock(scope: !1539, file: !153, line: 690, column: 25)
!1548 = !DILocation(line: 690, column: 25, scope: !1547)
!1549 = !DILocation(line: 690, column: 25, scope: !1539)
!1550 = !DILocation(line: 690, column: 25, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !153, line: 690, column: 25)
!1552 = distinct !DILexicalBlock(scope: !1532, file: !153, line: 690, column: 25)
!1553 = !DILocation(line: 690, column: 25, scope: !1552)
!1554 = !DILocation(line: 691, column: 25, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !153, line: 691, column: 25)
!1556 = distinct !DILexicalBlock(scope: !1533, file: !153, line: 691, column: 25)
!1557 = !DILocation(line: 691, column: 25, scope: !1556)
!1558 = !DILocation(line: 692, column: 25, scope: !1559)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !153, line: 692, column: 25)
!1560 = distinct !DILexicalBlock(scope: !1533, file: !153, line: 692, column: 25)
!1561 = !DILocation(line: 692, column: 25, scope: !1560)
!1562 = !DILocation(line: 693, column: 38, scope: !1533)
!1563 = !DILocation(line: 693, column: 33, scope: !1533)
!1564 = !DILocation(line: 694, column: 23, scope: !1533)
!1565 = !DILocation(line: 695, column: 30, scope: !1528)
!1566 = !DILocation(line: 695, column: 30, scope: !1529)
!1567 = !DILocation(line: 697, column: 25, scope: !1568)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !153, line: 697, column: 25)
!1569 = distinct !DILexicalBlock(scope: !1527, file: !153, line: 697, column: 25)
!1570 = !DILocation(line: 697, column: 25, scope: !1569)
!1571 = !DILocation(line: 699, column: 23, scope: !1527)
!1572 = !DILocation(line: 0, scope: !1560)
!1573 = !DILocation(line: 0, scope: !1533)
!1574 = !DILocation(line: 0, scope: !1575)
!1575 = distinct !DILexicalBlock(scope: !1310, file: !153, line: 418, column: 9)
!1576 = !DILocation(line: 0, scope: !1532)
!1577 = !DILocation(line: 700, column: 35, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1521, file: !153, line: 700, column: 25)
!1579 = !DILocation(line: 700, column: 30, scope: !1578)
!1580 = !DILocation(line: 700, column: 25, scope: !1521)
!1581 = !DILocation(line: 702, column: 21, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1583, file: !153, line: 702, column: 21)
!1583 = distinct !DILexicalBlock(scope: !1521, file: !153, line: 702, column: 21)
!1584 = !DILocation(line: 702, column: 21, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !153, line: 702, column: 21)
!1586 = distinct !DILexicalBlock(scope: !1587, file: !153, line: 702, column: 21)
!1587 = distinct !DILexicalBlock(scope: !1582, file: !153, line: 702, column: 21)
!1588 = !DILocation(line: 702, column: 21, scope: !1586)
!1589 = !DILocation(line: 702, column: 21, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !153, line: 702, column: 21)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !153, line: 702, column: 21)
!1592 = !DILocation(line: 702, column: 21, scope: !1591)
!1593 = !DILocation(line: 702, column: 21, scope: !1587)
!1594 = !DILocation(line: 0, scope: !1569)
!1595 = !DILocation(line: 703, column: 21, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1525, file: !153, line: 703, column: 21)
!1597 = !DILocation(line: 703, column: 21, scope: !1525)
!1598 = !DILocation(line: 704, column: 25, scope: !1521)
!1599 = !DILocation(line: 686, column: 17, scope: !1522)
!1600 = distinct !{!1600, !1601, !1602}
!1601 = !DILocation(line: 686, column: 17, scope: !1523)
!1602 = !DILocation(line: 705, column: 19, scope: !1523)
!1603 = !DILocation(line: 0, scope: !1189)
!1604 = !DILocation(line: 416, column: 30, scope: !1310)
!1605 = !DILocation(line: 712, column: 34, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1187, file: !153, line: 712, column: 11)
!1607 = !DILocation(line: 714, column: 14, scope: !1606)
!1608 = !DILocation(line: 715, column: 14, scope: !1606)
!1609 = !DILocation(line: 715, column: 35, scope: !1606)
!1610 = !DILocation(line: 715, column: 17, scope: !1606)
!1611 = !DILocation(line: 715, column: 47, scope: !1606)
!1612 = !DILocation(line: 715, column: 65, scope: !1606)
!1613 = !DILocation(line: 716, column: 15, scope: !1606)
!1614 = !DILocation(line: 716, column: 11, scope: !1606)
!1615 = !DILocation(line: 712, column: 11, scope: !1187)
!1616 = !DILocation(line: 400, column: 10, scope: !1189)
!1617 = !DILocation(line: 0, scope: !1618)
!1618 = distinct !DILexicalBlock(scope: !1619, file: !153, line: 519, column: 13)
!1619 = distinct !DILexicalBlock(scope: !1196, file: !153, line: 518, column: 15)
!1620 = !DILocation(line: 720, column: 7, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1187, file: !153, line: 720, column: 7)
!1622 = !DILocation(line: 720, column: 7, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1621, file: !153, line: 720, column: 7)
!1624 = !DILocation(line: 720, column: 7, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !153, line: 720, column: 7)
!1626 = distinct !DILexicalBlock(scope: !1627, file: !153, line: 720, column: 7)
!1627 = distinct !DILexicalBlock(scope: !1623, file: !153, line: 720, column: 7)
!1628 = !DILocation(line: 720, column: 7, scope: !1626)
!1629 = !DILocation(line: 720, column: 7, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !153, line: 720, column: 7)
!1631 = distinct !DILexicalBlock(scope: !1627, file: !153, line: 720, column: 7)
!1632 = !DILocation(line: 720, column: 7, scope: !1631)
!1633 = !DILocation(line: 720, column: 7, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !153, line: 720, column: 7)
!1635 = distinct !DILexicalBlock(scope: !1627, file: !153, line: 720, column: 7)
!1636 = !DILocation(line: 720, column: 7, scope: !1635)
!1637 = !DILocation(line: 720, column: 7, scope: !1627)
!1638 = !DILocation(line: 720, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !153, line: 720, column: 7)
!1640 = distinct !DILexicalBlock(scope: !1621, file: !153, line: 720, column: 7)
!1641 = !DILocation(line: 720, column: 7, scope: !1640)
!1642 = !DILocation(line: 723, column: 7, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !153, line: 723, column: 7)
!1644 = distinct !DILexicalBlock(scope: !1187, file: !153, line: 723, column: 7)
!1645 = !DILocation(line: 424, column: 9, scope: !1187)
!1646 = !DILocation(line: 723, column: 7, scope: !1647)
!1647 = distinct !DILexicalBlock(scope: !1648, file: !153, line: 723, column: 7)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !153, line: 723, column: 7)
!1649 = distinct !DILexicalBlock(scope: !1643, file: !153, line: 723, column: 7)
!1650 = !DILocation(line: 723, column: 7, scope: !1648)
!1651 = !DILocation(line: 723, column: 7, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !153, line: 723, column: 7)
!1653 = distinct !DILexicalBlock(scope: !1649, file: !153, line: 723, column: 7)
!1654 = !DILocation(line: 723, column: 7, scope: !1653)
!1655 = !DILocation(line: 723, column: 7, scope: !1649)
!1656 = !DILocation(line: 724, column: 7, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !1658, file: !153, line: 724, column: 7)
!1658 = distinct !DILexicalBlock(scope: !1187, file: !153, line: 724, column: 7)
!1659 = !DILocation(line: 724, column: 7, scope: !1658)
!1660 = !DILocation(line: 726, column: 13, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1187, file: !153, line: 726, column: 11)
!1662 = !DILocation(line: 726, column: 11, scope: !1187)
!1663 = !DILocation(line: 728, column: 5, scope: !1188)
!1664 = !DILocation(line: 400, column: 75, scope: !1188)
!1665 = !DILocation(line: 400, column: 3, scope: !1188)
!1666 = distinct !{!1666, !1304, !1667}
!1667 = !DILocation(line: 728, column: 5, scope: !1189)
!1668 = !DILocation(line: 730, column: 11, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1160, file: !153, line: 730, column: 7)
!1670 = !DILocation(line: 730, column: 16, scope: !1669)
!1671 = !DILocation(line: 738, column: 51, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1160, file: !153, line: 738, column: 7)
!1673 = !DILocation(line: 739, column: 10, scope: !1672)
!1674 = !DILocation(line: 741, column: 11, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1676, file: !153, line: 741, column: 11)
!1676 = distinct !DILexicalBlock(scope: !1672, file: !153, line: 740, column: 5)
!1677 = !DILocation(line: 741, column: 11, scope: !1676)
!1678 = !DILocation(line: 742, column: 16, scope: !1675)
!1679 = !DILocation(line: 742, column: 9, scope: !1675)
!1680 = !DILocation(line: 746, column: 18, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1675, file: !153, line: 746, column: 16)
!1682 = !DILocation(line: 746, column: 32, scope: !1681)
!1683 = !DILocation(line: 746, column: 29, scope: !1681)
!1684 = !DILocation(line: 755, column: 7, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1160, file: !153, line: 755, column: 7)
!1686 = !DILocation(line: 755, column: 20, scope: !1685)
!1687 = !DILocation(line: 756, column: 12, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !153, line: 756, column: 5)
!1689 = distinct !DILexicalBlock(scope: !1685, file: !153, line: 756, column: 5)
!1690 = !DILocation(line: 756, column: 5, scope: !1689)
!1691 = !DILocation(line: 757, column: 7, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !153, line: 757, column: 7)
!1693 = distinct !DILexicalBlock(scope: !1688, file: !153, line: 757, column: 7)
!1694 = !DILocation(line: 757, column: 7, scope: !1693)
!1695 = !DILocation(line: 756, column: 39, scope: !1688)
!1696 = distinct !{!1696, !1690, !1697}
!1697 = !DILocation(line: 757, column: 7, scope: !1689)
!1698 = !DILocation(line: 759, column: 11, scope: !1699)
!1699 = distinct !DILexicalBlock(scope: !1160, file: !153, line: 759, column: 7)
!1700 = !DILocation(line: 759, column: 7, scope: !1160)
!1701 = !DILocation(line: 760, column: 5, scope: !1699)
!1702 = !DILocation(line: 760, column: 17, scope: !1699)
!1703 = !DILocation(line: 766, column: 21, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1160, file: !153, line: 766, column: 7)
!1705 = !DILocation(line: 766, column: 54, scope: !1704)
!1706 = !DILocation(line: 766, column: 51, scope: !1704)
!1707 = !DILocation(line: 770, column: 42, scope: !1160)
!1708 = !DILocation(line: 768, column: 10, scope: !1160)
!1709 = !DILocation(line: 768, column: 3, scope: !1160)
!1710 = !DILocation(line: 772, column: 1, scope: !1160)
!1711 = distinct !DISubprogram(name: "gettext_quote", scope: !153, file: !153, line: 207, type: !1712, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1714)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!35, !35, !111}
!1714 = !{!1715, !1716, !1717, !1718}
!1715 = !DILocalVariable(name: "msgid", arg: 1, scope: !1711, file: !153, line: 207, type: !35)
!1716 = !DILocalVariable(name: "s", arg: 2, scope: !1711, file: !153, line: 207, type: !111)
!1717 = !DILocalVariable(name: "translation", scope: !1711, file: !153, line: 209, type: !35)
!1718 = !DILocalVariable(name: "locale_code", scope: !1711, file: !153, line: 210, type: !35)
!1719 = !DILocation(line: 207, column: 28, scope: !1711)
!1720 = !DILocation(line: 207, column: 54, scope: !1711)
!1721 = !DILocation(line: 209, column: 29, scope: !1711)
!1722 = !DILocation(line: 209, column: 15, scope: !1711)
!1723 = !DILocation(line: 212, column: 19, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1711, file: !153, line: 212, column: 7)
!1725 = !DILocation(line: 212, column: 7, scope: !1711)
!1726 = !DILocation(line: 233, column: 17, scope: !1711)
!1727 = !DILocation(line: 210, column: 15, scope: !1711)
!1728 = !DILocalVariable(name: "s1", arg: 1, scope: !1729, file: !1730, line: 160, type: !35)
!1729 = distinct !DISubprogram(name: "strcaseeq0", scope: !1730, file: !1730, line: 160, type: !1731, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1733)
!1730 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!25, !35, !35, !28, !28, !28, !28, !28, !28, !28, !28, !28}
!1733 = !{!1728, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743}
!1734 = !DILocalVariable(name: "s2", arg: 2, scope: !1729, file: !1730, line: 160, type: !35)
!1735 = !DILocalVariable(name: "s20", arg: 3, scope: !1729, file: !1730, line: 160, type: !28)
!1736 = !DILocalVariable(name: "s21", arg: 4, scope: !1729, file: !1730, line: 160, type: !28)
!1737 = !DILocalVariable(name: "s22", arg: 5, scope: !1729, file: !1730, line: 160, type: !28)
!1738 = !DILocalVariable(name: "s23", arg: 6, scope: !1729, file: !1730, line: 160, type: !28)
!1739 = !DILocalVariable(name: "s24", arg: 7, scope: !1729, file: !1730, line: 160, type: !28)
!1740 = !DILocalVariable(name: "s25", arg: 8, scope: !1729, file: !1730, line: 160, type: !28)
!1741 = !DILocalVariable(name: "s26", arg: 9, scope: !1729, file: !1730, line: 160, type: !28)
!1742 = !DILocalVariable(name: "s27", arg: 10, scope: !1729, file: !1730, line: 160, type: !28)
!1743 = !DILocalVariable(name: "s28", arg: 11, scope: !1729, file: !1730, line: 160, type: !28)
!1744 = !DILocation(line: 160, column: 25, scope: !1729, inlinedAt: !1745)
!1745 = distinct !DILocation(line: 234, column: 7, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1711, file: !153, line: 234, column: 7)
!1747 = !DILocation(line: 160, column: 41, scope: !1729, inlinedAt: !1745)
!1748 = !DILocation(line: 160, column: 50, scope: !1729, inlinedAt: !1745)
!1749 = !DILocation(line: 160, column: 60, scope: !1729, inlinedAt: !1745)
!1750 = !DILocation(line: 160, column: 70, scope: !1729, inlinedAt: !1745)
!1751 = !DILocation(line: 160, column: 80, scope: !1729, inlinedAt: !1745)
!1752 = !DILocation(line: 160, column: 90, scope: !1729, inlinedAt: !1745)
!1753 = !DILocation(line: 160, column: 100, scope: !1729, inlinedAt: !1745)
!1754 = !DILocation(line: 160, column: 110, scope: !1729, inlinedAt: !1745)
!1755 = !DILocation(line: 160, column: 120, scope: !1729, inlinedAt: !1745)
!1756 = !DILocation(line: 160, column: 130, scope: !1729, inlinedAt: !1745)
!1757 = !DILocation(line: 162, column: 7, scope: !1758, inlinedAt: !1745)
!1758 = distinct !DILexicalBlock(scope: !1729, file: !1730, line: 162, column: 7)
!1759 = !DILocalVariable(name: "s1", arg: 1, scope: !1760, file: !1730, line: 146, type: !35)
!1760 = distinct !DISubprogram(name: "strcaseeq1", scope: !1730, file: !1730, line: 146, type: !1761, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!25, !35, !35, !28, !28, !28, !28, !28, !28, !28, !28}
!1763 = !{!1759, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772}
!1764 = !DILocalVariable(name: "s2", arg: 2, scope: !1760, file: !1730, line: 146, type: !35)
!1765 = !DILocalVariable(name: "s21", arg: 3, scope: !1760, file: !1730, line: 146, type: !28)
!1766 = !DILocalVariable(name: "s22", arg: 4, scope: !1760, file: !1730, line: 146, type: !28)
!1767 = !DILocalVariable(name: "s23", arg: 5, scope: !1760, file: !1730, line: 146, type: !28)
!1768 = !DILocalVariable(name: "s24", arg: 6, scope: !1760, file: !1730, line: 146, type: !28)
!1769 = !DILocalVariable(name: "s25", arg: 7, scope: !1760, file: !1730, line: 146, type: !28)
!1770 = !DILocalVariable(name: "s26", arg: 8, scope: !1760, file: !1730, line: 146, type: !28)
!1771 = !DILocalVariable(name: "s27", arg: 9, scope: !1760, file: !1730, line: 146, type: !28)
!1772 = !DILocalVariable(name: "s28", arg: 10, scope: !1760, file: !1730, line: 146, type: !28)
!1773 = !DILocation(line: 146, column: 25, scope: !1760, inlinedAt: !1774)
!1774 = distinct !DILocation(line: 167, column: 16, scope: !1775, inlinedAt: !1745)
!1775 = distinct !DILexicalBlock(scope: !1776, file: !1730, line: 164, column: 11)
!1776 = distinct !DILexicalBlock(scope: !1758, file: !1730, line: 163, column: 5)
!1777 = !DILocation(line: 146, column: 41, scope: !1760, inlinedAt: !1774)
!1778 = !DILocation(line: 146, column: 50, scope: !1760, inlinedAt: !1774)
!1779 = !DILocation(line: 146, column: 60, scope: !1760, inlinedAt: !1774)
!1780 = !DILocation(line: 146, column: 70, scope: !1760, inlinedAt: !1774)
!1781 = !DILocation(line: 146, column: 80, scope: !1760, inlinedAt: !1774)
!1782 = !DILocation(line: 146, column: 90, scope: !1760, inlinedAt: !1774)
!1783 = !DILocation(line: 146, column: 100, scope: !1760, inlinedAt: !1774)
!1784 = !DILocation(line: 146, column: 110, scope: !1760, inlinedAt: !1774)
!1785 = !DILocation(line: 146, column: 120, scope: !1760, inlinedAt: !1774)
!1786 = !DILocation(line: 148, column: 7, scope: !1787, inlinedAt: !1774)
!1787 = distinct !DILexicalBlock(scope: !1760, file: !1730, line: 148, column: 7)
!1788 = !DILocalVariable(name: "s1", arg: 1, scope: !1789, file: !1730, line: 132, type: !35)
!1789 = distinct !DISubprogram(name: "strcaseeq2", scope: !1730, file: !1730, line: 132, type: !1790, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1792)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!25, !35, !35, !28, !28, !28, !28, !28, !28, !28}
!1792 = !{!1788, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800}
!1793 = !DILocalVariable(name: "s2", arg: 2, scope: !1789, file: !1730, line: 132, type: !35)
!1794 = !DILocalVariable(name: "s22", arg: 3, scope: !1789, file: !1730, line: 132, type: !28)
!1795 = !DILocalVariable(name: "s23", arg: 4, scope: !1789, file: !1730, line: 132, type: !28)
!1796 = !DILocalVariable(name: "s24", arg: 5, scope: !1789, file: !1730, line: 132, type: !28)
!1797 = !DILocalVariable(name: "s25", arg: 6, scope: !1789, file: !1730, line: 132, type: !28)
!1798 = !DILocalVariable(name: "s26", arg: 7, scope: !1789, file: !1730, line: 132, type: !28)
!1799 = !DILocalVariable(name: "s27", arg: 8, scope: !1789, file: !1730, line: 132, type: !28)
!1800 = !DILocalVariable(name: "s28", arg: 9, scope: !1789, file: !1730, line: 132, type: !28)
!1801 = !DILocation(line: 132, column: 25, scope: !1789, inlinedAt: !1802)
!1802 = distinct !DILocation(line: 153, column: 16, scope: !1803, inlinedAt: !1774)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !1730, line: 150, column: 11)
!1804 = distinct !DILexicalBlock(scope: !1787, file: !1730, line: 149, column: 5)
!1805 = !DILocation(line: 132, column: 41, scope: !1789, inlinedAt: !1802)
!1806 = !DILocation(line: 132, column: 50, scope: !1789, inlinedAt: !1802)
!1807 = !DILocation(line: 132, column: 60, scope: !1789, inlinedAt: !1802)
!1808 = !DILocation(line: 132, column: 70, scope: !1789, inlinedAt: !1802)
!1809 = !DILocation(line: 132, column: 80, scope: !1789, inlinedAt: !1802)
!1810 = !DILocation(line: 132, column: 90, scope: !1789, inlinedAt: !1802)
!1811 = !DILocation(line: 132, column: 100, scope: !1789, inlinedAt: !1802)
!1812 = !DILocation(line: 132, column: 110, scope: !1789, inlinedAt: !1802)
!1813 = !DILocation(line: 134, column: 7, scope: !1814, inlinedAt: !1802)
!1814 = distinct !DILexicalBlock(scope: !1789, file: !1730, line: 134, column: 7)
!1815 = !DILocalVariable(name: "s1", arg: 1, scope: !1816, file: !1730, line: 118, type: !35)
!1816 = distinct !DISubprogram(name: "strcaseeq3", scope: !1730, file: !1730, line: 118, type: !1817, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1819)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!25, !35, !35, !28, !28, !28, !28, !28, !28}
!1819 = !{!1815, !1820, !1821, !1822, !1823, !1824, !1825, !1826}
!1820 = !DILocalVariable(name: "s2", arg: 2, scope: !1816, file: !1730, line: 118, type: !35)
!1821 = !DILocalVariable(name: "s23", arg: 3, scope: !1816, file: !1730, line: 118, type: !28)
!1822 = !DILocalVariable(name: "s24", arg: 4, scope: !1816, file: !1730, line: 118, type: !28)
!1823 = !DILocalVariable(name: "s25", arg: 5, scope: !1816, file: !1730, line: 118, type: !28)
!1824 = !DILocalVariable(name: "s26", arg: 6, scope: !1816, file: !1730, line: 118, type: !28)
!1825 = !DILocalVariable(name: "s27", arg: 7, scope: !1816, file: !1730, line: 118, type: !28)
!1826 = !DILocalVariable(name: "s28", arg: 8, scope: !1816, file: !1730, line: 118, type: !28)
!1827 = !DILocation(line: 118, column: 25, scope: !1816, inlinedAt: !1828)
!1828 = distinct !DILocation(line: 139, column: 16, scope: !1829, inlinedAt: !1802)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !1730, line: 136, column: 11)
!1830 = distinct !DILexicalBlock(scope: !1814, file: !1730, line: 135, column: 5)
!1831 = !DILocation(line: 118, column: 41, scope: !1816, inlinedAt: !1828)
!1832 = !DILocation(line: 118, column: 50, scope: !1816, inlinedAt: !1828)
!1833 = !DILocation(line: 118, column: 60, scope: !1816, inlinedAt: !1828)
!1834 = !DILocation(line: 118, column: 70, scope: !1816, inlinedAt: !1828)
!1835 = !DILocation(line: 118, column: 80, scope: !1816, inlinedAt: !1828)
!1836 = !DILocation(line: 118, column: 90, scope: !1816, inlinedAt: !1828)
!1837 = !DILocation(line: 118, column: 100, scope: !1816, inlinedAt: !1828)
!1838 = !DILocation(line: 120, column: 7, scope: !1839, inlinedAt: !1828)
!1839 = distinct !DILexicalBlock(scope: !1816, file: !1730, line: 120, column: 7)
!1840 = !DILocation(line: 120, column: 7, scope: !1816, inlinedAt: !1828)
!1841 = !DILocalVariable(name: "s1", arg: 1, scope: !1842, file: !1730, line: 104, type: !35)
!1842 = distinct !DISubprogram(name: "strcaseeq4", scope: !1730, file: !1730, line: 104, type: !1843, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1845)
!1843 = !DISubroutineType(types: !1844)
!1844 = !{!25, !35, !35, !28, !28, !28, !28, !28}
!1845 = !{!1841, !1846, !1847, !1848, !1849, !1850, !1851}
!1846 = !DILocalVariable(name: "s2", arg: 2, scope: !1842, file: !1730, line: 104, type: !35)
!1847 = !DILocalVariable(name: "s24", arg: 3, scope: !1842, file: !1730, line: 104, type: !28)
!1848 = !DILocalVariable(name: "s25", arg: 4, scope: !1842, file: !1730, line: 104, type: !28)
!1849 = !DILocalVariable(name: "s26", arg: 5, scope: !1842, file: !1730, line: 104, type: !28)
!1850 = !DILocalVariable(name: "s27", arg: 6, scope: !1842, file: !1730, line: 104, type: !28)
!1851 = !DILocalVariable(name: "s28", arg: 7, scope: !1842, file: !1730, line: 104, type: !28)
!1852 = !DILocation(line: 104, column: 25, scope: !1842, inlinedAt: !1853)
!1853 = distinct !DILocation(line: 125, column: 16, scope: !1854, inlinedAt: !1828)
!1854 = distinct !DILexicalBlock(scope: !1855, file: !1730, line: 122, column: 11)
!1855 = distinct !DILexicalBlock(scope: !1839, file: !1730, line: 121, column: 5)
!1856 = !DILocation(line: 104, column: 41, scope: !1842, inlinedAt: !1853)
!1857 = !DILocation(line: 104, column: 50, scope: !1842, inlinedAt: !1853)
!1858 = !DILocation(line: 104, column: 60, scope: !1842, inlinedAt: !1853)
!1859 = !DILocation(line: 104, column: 70, scope: !1842, inlinedAt: !1853)
!1860 = !DILocation(line: 104, column: 80, scope: !1842, inlinedAt: !1853)
!1861 = !DILocation(line: 104, column: 90, scope: !1842, inlinedAt: !1853)
!1862 = !DILocation(line: 106, column: 7, scope: !1863, inlinedAt: !1853)
!1863 = distinct !DILexicalBlock(scope: !1842, file: !1730, line: 106, column: 7)
!1864 = !DILocation(line: 106, column: 7, scope: !1842, inlinedAt: !1853)
!1865 = !DILocalVariable(name: "s1", arg: 1, scope: !1866, file: !1730, line: 90, type: !35)
!1866 = distinct !DISubprogram(name: "strcaseeq5", scope: !1730, file: !1730, line: 90, type: !1867, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1869)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!25, !35, !35, !28, !28, !28, !28}
!1869 = !{!1865, !1870, !1871, !1872, !1873, !1874}
!1870 = !DILocalVariable(name: "s2", arg: 2, scope: !1866, file: !1730, line: 90, type: !35)
!1871 = !DILocalVariable(name: "s25", arg: 3, scope: !1866, file: !1730, line: 90, type: !28)
!1872 = !DILocalVariable(name: "s26", arg: 4, scope: !1866, file: !1730, line: 90, type: !28)
!1873 = !DILocalVariable(name: "s27", arg: 5, scope: !1866, file: !1730, line: 90, type: !28)
!1874 = !DILocalVariable(name: "s28", arg: 6, scope: !1866, file: !1730, line: 90, type: !28)
!1875 = !DILocation(line: 90, column: 25, scope: !1866, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 111, column: 16, scope: !1877, inlinedAt: !1853)
!1877 = distinct !DILexicalBlock(scope: !1878, file: !1730, line: 108, column: 11)
!1878 = distinct !DILexicalBlock(scope: !1863, file: !1730, line: 107, column: 5)
!1879 = !DILocation(line: 90, column: 41, scope: !1866, inlinedAt: !1876)
!1880 = !DILocation(line: 90, column: 50, scope: !1866, inlinedAt: !1876)
!1881 = !DILocation(line: 90, column: 60, scope: !1866, inlinedAt: !1876)
!1882 = !DILocation(line: 90, column: 70, scope: !1866, inlinedAt: !1876)
!1883 = !DILocation(line: 90, column: 80, scope: !1866, inlinedAt: !1876)
!1884 = !DILocation(line: 92, column: 7, scope: !1885, inlinedAt: !1876)
!1885 = distinct !DILexicalBlock(scope: !1866, file: !1730, line: 92, column: 7)
!1886 = !DILocation(line: 92, column: 7, scope: !1866, inlinedAt: !1876)
!1887 = !DILocation(line: 235, column: 12, scope: !1746)
!1888 = !DILocation(line: 235, column: 21, scope: !1746)
!1889 = !DILocation(line: 235, column: 5, scope: !1746)
!1890 = !DILocation(line: 146, column: 25, scope: !1760, inlinedAt: !1891)
!1891 = distinct !DILocation(line: 167, column: 16, scope: !1775, inlinedAt: !1892)
!1892 = distinct !DILocation(line: 236, column: 7, scope: !1893)
!1893 = distinct !DILexicalBlock(scope: !1711, file: !153, line: 236, column: 7)
!1894 = !DILocation(line: 146, column: 41, scope: !1760, inlinedAt: !1891)
!1895 = !DILocation(line: 146, column: 50, scope: !1760, inlinedAt: !1891)
!1896 = !DILocation(line: 146, column: 60, scope: !1760, inlinedAt: !1891)
!1897 = !DILocation(line: 146, column: 70, scope: !1760, inlinedAt: !1891)
!1898 = !DILocation(line: 146, column: 80, scope: !1760, inlinedAt: !1891)
!1899 = !DILocation(line: 146, column: 90, scope: !1760, inlinedAt: !1891)
!1900 = !DILocation(line: 146, column: 100, scope: !1760, inlinedAt: !1891)
!1901 = !DILocation(line: 146, column: 110, scope: !1760, inlinedAt: !1891)
!1902 = !DILocation(line: 146, column: 120, scope: !1760, inlinedAt: !1891)
!1903 = !DILocation(line: 148, column: 7, scope: !1787, inlinedAt: !1891)
!1904 = !DILocation(line: 132, column: 25, scope: !1789, inlinedAt: !1905)
!1905 = distinct !DILocation(line: 153, column: 16, scope: !1803, inlinedAt: !1891)
!1906 = !DILocation(line: 132, column: 41, scope: !1789, inlinedAt: !1905)
!1907 = !DILocation(line: 132, column: 50, scope: !1789, inlinedAt: !1905)
!1908 = !DILocation(line: 132, column: 60, scope: !1789, inlinedAt: !1905)
!1909 = !DILocation(line: 132, column: 70, scope: !1789, inlinedAt: !1905)
!1910 = !DILocation(line: 132, column: 80, scope: !1789, inlinedAt: !1905)
!1911 = !DILocation(line: 132, column: 90, scope: !1789, inlinedAt: !1905)
!1912 = !DILocation(line: 132, column: 100, scope: !1789, inlinedAt: !1905)
!1913 = !DILocation(line: 132, column: 110, scope: !1789, inlinedAt: !1905)
!1914 = !DILocation(line: 134, column: 7, scope: !1814, inlinedAt: !1905)
!1915 = !DILocation(line: 134, column: 7, scope: !1789, inlinedAt: !1905)
!1916 = !DILocation(line: 118, column: 25, scope: !1816, inlinedAt: !1917)
!1917 = distinct !DILocation(line: 139, column: 16, scope: !1829, inlinedAt: !1905)
!1918 = !DILocation(line: 118, column: 41, scope: !1816, inlinedAt: !1917)
!1919 = !DILocation(line: 118, column: 50, scope: !1816, inlinedAt: !1917)
!1920 = !DILocation(line: 118, column: 60, scope: !1816, inlinedAt: !1917)
!1921 = !DILocation(line: 118, column: 70, scope: !1816, inlinedAt: !1917)
!1922 = !DILocation(line: 118, column: 80, scope: !1816, inlinedAt: !1917)
!1923 = !DILocation(line: 118, column: 90, scope: !1816, inlinedAt: !1917)
!1924 = !DILocation(line: 118, column: 100, scope: !1816, inlinedAt: !1917)
!1925 = !DILocation(line: 120, column: 7, scope: !1839, inlinedAt: !1917)
!1926 = !DILocation(line: 120, column: 7, scope: !1816, inlinedAt: !1917)
!1927 = !DILocation(line: 104, column: 25, scope: !1842, inlinedAt: !1928)
!1928 = distinct !DILocation(line: 125, column: 16, scope: !1854, inlinedAt: !1917)
!1929 = !DILocation(line: 104, column: 41, scope: !1842, inlinedAt: !1928)
!1930 = !DILocation(line: 104, column: 50, scope: !1842, inlinedAt: !1928)
!1931 = !DILocation(line: 104, column: 60, scope: !1842, inlinedAt: !1928)
!1932 = !DILocation(line: 104, column: 70, scope: !1842, inlinedAt: !1928)
!1933 = !DILocation(line: 104, column: 80, scope: !1842, inlinedAt: !1928)
!1934 = !DILocation(line: 104, column: 90, scope: !1842, inlinedAt: !1928)
!1935 = !DILocation(line: 106, column: 7, scope: !1863, inlinedAt: !1928)
!1936 = !DILocation(line: 106, column: 7, scope: !1842, inlinedAt: !1928)
!1937 = !DILocation(line: 90, column: 25, scope: !1866, inlinedAt: !1938)
!1938 = distinct !DILocation(line: 111, column: 16, scope: !1877, inlinedAt: !1928)
!1939 = !DILocation(line: 90, column: 41, scope: !1866, inlinedAt: !1938)
!1940 = !DILocation(line: 90, column: 50, scope: !1866, inlinedAt: !1938)
!1941 = !DILocation(line: 90, column: 60, scope: !1866, inlinedAt: !1938)
!1942 = !DILocation(line: 90, column: 70, scope: !1866, inlinedAt: !1938)
!1943 = !DILocation(line: 90, column: 80, scope: !1866, inlinedAt: !1938)
!1944 = !DILocation(line: 92, column: 7, scope: !1885, inlinedAt: !1938)
!1945 = !DILocation(line: 92, column: 7, scope: !1866, inlinedAt: !1938)
!1946 = !DILocalVariable(name: "s1", arg: 1, scope: !1947, file: !1730, line: 76, type: !35)
!1947 = distinct !DISubprogram(name: "strcaseeq6", scope: !1730, file: !1730, line: 76, type: !1948, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1950)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!25, !35, !35, !28, !28, !28}
!1950 = !{!1946, !1951, !1952, !1953, !1954}
!1951 = !DILocalVariable(name: "s2", arg: 2, scope: !1947, file: !1730, line: 76, type: !35)
!1952 = !DILocalVariable(name: "s26", arg: 3, scope: !1947, file: !1730, line: 76, type: !28)
!1953 = !DILocalVariable(name: "s27", arg: 4, scope: !1947, file: !1730, line: 76, type: !28)
!1954 = !DILocalVariable(name: "s28", arg: 5, scope: !1947, file: !1730, line: 76, type: !28)
!1955 = !DILocation(line: 76, column: 25, scope: !1947, inlinedAt: !1956)
!1956 = distinct !DILocation(line: 97, column: 16, scope: !1957, inlinedAt: !1938)
!1957 = distinct !DILexicalBlock(scope: !1958, file: !1730, line: 94, column: 11)
!1958 = distinct !DILexicalBlock(scope: !1885, file: !1730, line: 93, column: 5)
!1959 = !DILocation(line: 76, column: 41, scope: !1947, inlinedAt: !1956)
!1960 = !DILocation(line: 76, column: 50, scope: !1947, inlinedAt: !1956)
!1961 = !DILocation(line: 76, column: 60, scope: !1947, inlinedAt: !1956)
!1962 = !DILocation(line: 76, column: 70, scope: !1947, inlinedAt: !1956)
!1963 = !DILocation(line: 78, column: 7, scope: !1964, inlinedAt: !1956)
!1964 = distinct !DILexicalBlock(scope: !1947, file: !1730, line: 78, column: 7)
!1965 = !DILocation(line: 78, column: 7, scope: !1947, inlinedAt: !1956)
!1966 = !DILocalVariable(name: "s1", arg: 1, scope: !1967, file: !1730, line: 62, type: !35)
!1967 = distinct !DISubprogram(name: "strcaseeq7", scope: !1730, file: !1730, line: 62, type: !1968, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1970)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!25, !35, !35, !28, !28}
!1970 = !{!1966, !1971, !1972, !1973}
!1971 = !DILocalVariable(name: "s2", arg: 2, scope: !1967, file: !1730, line: 62, type: !35)
!1972 = !DILocalVariable(name: "s27", arg: 3, scope: !1967, file: !1730, line: 62, type: !28)
!1973 = !DILocalVariable(name: "s28", arg: 4, scope: !1967, file: !1730, line: 62, type: !28)
!1974 = !DILocation(line: 62, column: 25, scope: !1967, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 83, column: 16, scope: !1976, inlinedAt: !1956)
!1976 = distinct !DILexicalBlock(scope: !1977, file: !1730, line: 80, column: 11)
!1977 = distinct !DILexicalBlock(scope: !1964, file: !1730, line: 79, column: 5)
!1978 = !DILocation(line: 62, column: 41, scope: !1967, inlinedAt: !1975)
!1979 = !DILocation(line: 62, column: 50, scope: !1967, inlinedAt: !1975)
!1980 = !DILocation(line: 62, column: 60, scope: !1967, inlinedAt: !1975)
!1981 = !DILocation(line: 64, column: 7, scope: !1982, inlinedAt: !1975)
!1982 = distinct !DILexicalBlock(scope: !1967, file: !1730, line: 64, column: 7)
!1983 = !DILocation(line: 236, column: 7, scope: !1711)
!1984 = !DILocation(line: 237, column: 12, scope: !1893)
!1985 = !DILocation(line: 237, column: 21, scope: !1893)
!1986 = !DILocation(line: 237, column: 5, scope: !1893)
!1987 = !DILocation(line: 239, column: 13, scope: !1711)
!1988 = !DILocation(line: 239, column: 11, scope: !1711)
!1989 = !DILocation(line: 239, column: 3, scope: !1711)
!1990 = !DILocation(line: 0, scope: !1711)
!1991 = !DILocation(line: 240, column: 1, scope: !1711)
!1992 = distinct !DISubprogram(name: "quotearg_alloc", scope: !153, file: !153, line: 799, type: !1993, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !1995)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!27, !35, !147, !1032}
!1995 = !{!1996, !1997, !1998}
!1996 = !DILocalVariable(name: "arg", arg: 1, scope: !1992, file: !153, line: 799, type: !35)
!1997 = !DILocalVariable(name: "argsize", arg: 2, scope: !1992, file: !153, line: 799, type: !147)
!1998 = !DILocalVariable(name: "o", arg: 3, scope: !1992, file: !153, line: 800, type: !1032)
!1999 = !DILocation(line: 799, column: 29, scope: !1992)
!2000 = !DILocation(line: 799, column: 41, scope: !1992)
!2001 = !DILocation(line: 800, column: 47, scope: !1992)
!2002 = !DILocalVariable(name: "arg", arg: 1, scope: !2003, file: !153, line: 812, type: !35)
!2003 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !153, file: !153, line: 812, type: !2004, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2006)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!27, !35, !147, !217, !1032}
!2006 = !{!2002, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014}
!2007 = !DILocalVariable(name: "argsize", arg: 2, scope: !2003, file: !153, line: 812, type: !147)
!2008 = !DILocalVariable(name: "size", arg: 3, scope: !2003, file: !153, line: 812, type: !217)
!2009 = !DILocalVariable(name: "o", arg: 4, scope: !2003, file: !153, line: 813, type: !1032)
!2010 = !DILocalVariable(name: "p", scope: !2003, file: !153, line: 815, type: !1032)
!2011 = !DILocalVariable(name: "e", scope: !2003, file: !153, line: 816, type: !25)
!2012 = !DILocalVariable(name: "flags", scope: !2003, file: !153, line: 818, type: !25)
!2013 = !DILocalVariable(name: "bufsize", scope: !2003, file: !153, line: 819, type: !147)
!2014 = !DILocalVariable(name: "buf", scope: !2003, file: !153, line: 823, type: !27)
!2015 = !DILocation(line: 812, column: 33, scope: !2003, inlinedAt: !2016)
!2016 = distinct !DILocation(line: 802, column: 10, scope: !1992)
!2017 = !DILocation(line: 812, column: 45, scope: !2003, inlinedAt: !2016)
!2018 = !DILocation(line: 812, column: 62, scope: !2003, inlinedAt: !2016)
!2019 = !DILocation(line: 813, column: 51, scope: !2003, inlinedAt: !2016)
!2020 = !DILocation(line: 815, column: 37, scope: !2003, inlinedAt: !2016)
!2021 = !DILocation(line: 815, column: 33, scope: !2003, inlinedAt: !2016)
!2022 = !DILocation(line: 816, column: 11, scope: !2003, inlinedAt: !2016)
!2023 = !DILocation(line: 816, column: 7, scope: !2003, inlinedAt: !2016)
!2024 = !DILocation(line: 818, column: 18, scope: !2003, inlinedAt: !2016)
!2025 = !DILocation(line: 818, column: 24, scope: !2003, inlinedAt: !2016)
!2026 = !DILocation(line: 818, column: 7, scope: !2003, inlinedAt: !2016)
!2027 = !DILocation(line: 819, column: 69, scope: !2003, inlinedAt: !2016)
!2028 = !DILocation(line: 820, column: 53, scope: !2003, inlinedAt: !2016)
!2029 = !DILocation(line: 821, column: 49, scope: !2003, inlinedAt: !2016)
!2030 = !DILocation(line: 822, column: 49, scope: !2003, inlinedAt: !2016)
!2031 = !DILocation(line: 819, column: 20, scope: !2003, inlinedAt: !2016)
!2032 = !DILocation(line: 822, column: 62, scope: !2003, inlinedAt: !2016)
!2033 = !DILocation(line: 819, column: 10, scope: !2003, inlinedAt: !2016)
!2034 = !DILocalVariable(name: "n", arg: 1, scope: !2035, file: !213, line: 216, type: !147)
!2035 = distinct !DISubprogram(name: "xcharalloc", scope: !213, file: !213, line: 216, type: !2036, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2038)
!2036 = !DISubroutineType(types: !2037)
!2037 = !{!27, !147}
!2038 = !{!2034}
!2039 = !DILocation(line: 216, column: 20, scope: !2035, inlinedAt: !2040)
!2040 = distinct !DILocation(line: 823, column: 15, scope: !2003, inlinedAt: !2016)
!2041 = !DILocation(line: 218, column: 10, scope: !2035, inlinedAt: !2040)
!2042 = !DILocation(line: 823, column: 9, scope: !2003, inlinedAt: !2016)
!2043 = !DILocation(line: 824, column: 60, scope: !2003, inlinedAt: !2016)
!2044 = !DILocation(line: 826, column: 32, scope: !2003, inlinedAt: !2016)
!2045 = !DILocation(line: 826, column: 47, scope: !2003, inlinedAt: !2016)
!2046 = !DILocation(line: 824, column: 3, scope: !2003, inlinedAt: !2016)
!2047 = !DILocation(line: 827, column: 9, scope: !2003, inlinedAt: !2016)
!2048 = !DILocation(line: 802, column: 3, scope: !1992)
!2049 = !DILocation(line: 812, column: 33, scope: !2003)
!2050 = !DILocation(line: 812, column: 45, scope: !2003)
!2051 = !DILocation(line: 812, column: 62, scope: !2003)
!2052 = !DILocation(line: 813, column: 51, scope: !2003)
!2053 = !DILocation(line: 815, column: 37, scope: !2003)
!2054 = !DILocation(line: 815, column: 33, scope: !2003)
!2055 = !DILocation(line: 816, column: 11, scope: !2003)
!2056 = !DILocation(line: 816, column: 7, scope: !2003)
!2057 = !DILocation(line: 818, column: 18, scope: !2003)
!2058 = !DILocation(line: 818, column: 27, scope: !2003)
!2059 = !DILocation(line: 818, column: 24, scope: !2003)
!2060 = !DILocation(line: 818, column: 7, scope: !2003)
!2061 = !DILocation(line: 819, column: 69, scope: !2003)
!2062 = !DILocation(line: 820, column: 53, scope: !2003)
!2063 = !DILocation(line: 821, column: 49, scope: !2003)
!2064 = !DILocation(line: 822, column: 49, scope: !2003)
!2065 = !DILocation(line: 819, column: 20, scope: !2003)
!2066 = !DILocation(line: 822, column: 62, scope: !2003)
!2067 = !DILocation(line: 819, column: 10, scope: !2003)
!2068 = !DILocation(line: 216, column: 20, scope: !2035, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 823, column: 15, scope: !2003)
!2070 = !DILocation(line: 218, column: 10, scope: !2035, inlinedAt: !2069)
!2071 = !DILocation(line: 823, column: 9, scope: !2003)
!2072 = !DILocation(line: 824, column: 60, scope: !2003)
!2073 = !DILocation(line: 826, column: 32, scope: !2003)
!2074 = !DILocation(line: 826, column: 47, scope: !2003)
!2075 = !DILocation(line: 824, column: 3, scope: !2003)
!2076 = !DILocation(line: 827, column: 9, scope: !2003)
!2077 = !DILocation(line: 828, column: 7, scope: !2003)
!2078 = !DILocation(line: 829, column: 11, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2003, file: !153, line: 828, column: 7)
!2080 = !DILocation(line: 829, column: 5, scope: !2079)
!2081 = !DILocation(line: 830, column: 3, scope: !2003)
!2082 = distinct !DISubprogram(name: "quotearg_free", scope: !153, file: !153, line: 848, type: !681, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2083)
!2083 = !{!2084, !2085}
!2084 = !DILocalVariable(name: "sv", scope: !2082, file: !153, line: 850, type: !179)
!2085 = !DILocalVariable(name: "i", scope: !2082, file: !153, line: 851, type: !25)
!2086 = !DILocation(line: 850, column: 24, scope: !2082)
!2087 = !DILocation(line: 850, column: 19, scope: !2082)
!2088 = !DILocation(line: 851, column: 7, scope: !2082)
!2089 = !DILocation(line: 852, column: 19, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2091, file: !153, line: 852, column: 3)
!2091 = distinct !DILexicalBlock(scope: !2082, file: !153, line: 852, column: 3)
!2092 = !DILocation(line: 852, column: 17, scope: !2090)
!2093 = !DILocation(line: 852, column: 3, scope: !2091)
!2094 = !DILocation(line: 853, column: 17, scope: !2090)
!2095 = !{!2096, !674, i64 8}
!2096 = !{!"slotvec", !789, i64 0, !674, i64 8}
!2097 = !DILocation(line: 853, column: 5, scope: !2090)
!2098 = !DILocation(line: 852, column: 28, scope: !2090)
!2099 = distinct !{!2099, !2093, !2100}
!2100 = !DILocation(line: 853, column: 20, scope: !2091)
!2101 = !DILocation(line: 854, column: 13, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2082, file: !153, line: 854, column: 7)
!2103 = !DILocation(line: 854, column: 17, scope: !2102)
!2104 = !DILocation(line: 854, column: 7, scope: !2082)
!2105 = !DILocation(line: 856, column: 7, scope: !2106)
!2106 = distinct !DILexicalBlock(scope: !2102, file: !153, line: 855, column: 5)
!2107 = !DILocation(line: 857, column: 21, scope: !2106)
!2108 = !{!2096, !789, i64 0}
!2109 = !DILocation(line: 858, column: 20, scope: !2106)
!2110 = !DILocation(line: 859, column: 5, scope: !2106)
!2111 = !DILocation(line: 860, column: 10, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2082, file: !153, line: 860, column: 7)
!2113 = !DILocation(line: 860, column: 7, scope: !2082)
!2114 = !DILocation(line: 862, column: 13, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2112, file: !153, line: 861, column: 5)
!2116 = !DILocation(line: 862, column: 7, scope: !2115)
!2117 = !DILocation(line: 863, column: 15, scope: !2115)
!2118 = !DILocation(line: 864, column: 5, scope: !2115)
!2119 = !DILocation(line: 865, column: 10, scope: !2082)
!2120 = !DILocation(line: 866, column: 1, scope: !2082)
!2121 = distinct !DISubprogram(name: "quotearg_n", scope: !153, file: !153, line: 931, type: !2122, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2124)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!27, !25, !35}
!2124 = !{!2125, !2126}
!2125 = !DILocalVariable(name: "n", arg: 1, scope: !2121, file: !153, line: 931, type: !25)
!2126 = !DILocalVariable(name: "arg", arg: 2, scope: !2121, file: !153, line: 931, type: !35)
!2127 = !DILocation(line: 931, column: 17, scope: !2121)
!2128 = !DILocation(line: 931, column: 32, scope: !2121)
!2129 = !DILocation(line: 933, column: 10, scope: !2121)
!2130 = !DILocation(line: 933, column: 3, scope: !2121)
!2131 = distinct !DISubprogram(name: "quotearg_n_options", scope: !153, file: !153, line: 877, type: !2132, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{!27, !25, !35, !147, !1032}
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140, !2141, !2144, !2145, !2147, !2148, !2149}
!2135 = !DILocalVariable(name: "n", arg: 1, scope: !2131, file: !153, line: 877, type: !25)
!2136 = !DILocalVariable(name: "arg", arg: 2, scope: !2131, file: !153, line: 877, type: !35)
!2137 = !DILocalVariable(name: "argsize", arg: 3, scope: !2131, file: !153, line: 877, type: !147)
!2138 = !DILocalVariable(name: "options", arg: 4, scope: !2131, file: !153, line: 878, type: !1032)
!2139 = !DILocalVariable(name: "e", scope: !2131, file: !153, line: 880, type: !25)
!2140 = !DILocalVariable(name: "sv", scope: !2131, file: !153, line: 882, type: !179)
!2141 = !DILocalVariable(name: "preallocated", scope: !2142, file: !153, line: 889, type: !38)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !153, line: 888, column: 5)
!2143 = distinct !DILexicalBlock(scope: !2131, file: !153, line: 887, column: 7)
!2144 = !DILocalVariable(name: "nmax", scope: !2142, file: !153, line: 890, type: !25)
!2145 = !DILocalVariable(name: "size", scope: !2146, file: !153, line: 903, type: !147)
!2146 = distinct !DILexicalBlock(scope: !2131, file: !153, line: 902, column: 3)
!2147 = !DILocalVariable(name: "val", scope: !2146, file: !153, line: 904, type: !27)
!2148 = !DILocalVariable(name: "flags", scope: !2146, file: !153, line: 906, type: !25)
!2149 = !DILocalVariable(name: "qsize", scope: !2146, file: !153, line: 907, type: !147)
!2150 = !DILocation(line: 877, column: 25, scope: !2131)
!2151 = !DILocation(line: 877, column: 40, scope: !2131)
!2152 = !DILocation(line: 877, column: 52, scope: !2131)
!2153 = !DILocation(line: 878, column: 51, scope: !2131)
!2154 = !DILocation(line: 880, column: 11, scope: !2131)
!2155 = !DILocation(line: 880, column: 7, scope: !2131)
!2156 = !DILocation(line: 882, column: 24, scope: !2131)
!2157 = !DILocation(line: 882, column: 19, scope: !2131)
!2158 = !DILocation(line: 884, column: 9, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2131, file: !153, line: 884, column: 7)
!2160 = !DILocation(line: 884, column: 7, scope: !2131)
!2161 = !DILocation(line: 885, column: 5, scope: !2159)
!2162 = !DILocation(line: 887, column: 7, scope: !2143)
!2163 = !DILocation(line: 887, column: 14, scope: !2143)
!2164 = !DILocation(line: 887, column: 7, scope: !2131)
!2165 = !DILocation(line: 889, column: 31, scope: !2142)
!2166 = !DILocation(line: 890, column: 11, scope: !2142)
!2167 = !DILocation(line: 892, column: 16, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2142, file: !153, line: 892, column: 11)
!2169 = !DILocation(line: 892, column: 11, scope: !2142)
!2170 = !DILocation(line: 893, column: 9, scope: !2168)
!2171 = !DILocation(line: 895, column: 32, scope: !2142)
!2172 = !DILocation(line: 895, column: 61, scope: !2142)
!2173 = !DILocation(line: 895, column: 58, scope: !2142)
!2174 = !DILocation(line: 895, column: 66, scope: !2142)
!2175 = !DILocation(line: 895, column: 22, scope: !2142)
!2176 = !DILocation(line: 895, column: 15, scope: !2142)
!2177 = !DILocation(line: 896, column: 11, scope: !2142)
!2178 = !DILocation(line: 897, column: 15, scope: !2179)
!2179 = distinct !DILexicalBlock(scope: !2142, file: !153, line: 896, column: 11)
!2180 = !{i64 0, i64 8, !788, i64 8, i64 8, !673}
!2181 = !DILocation(line: 897, column: 9, scope: !2179)
!2182 = !DILocation(line: 898, column: 20, scope: !2142)
!2183 = !DILocation(line: 898, column: 18, scope: !2142)
!2184 = !DILocation(line: 898, column: 7, scope: !2142)
!2185 = !DILocation(line: 898, column: 38, scope: !2142)
!2186 = !DILocation(line: 898, column: 31, scope: !2142)
!2187 = !DILocation(line: 898, column: 48, scope: !2142)
!2188 = !DILocation(line: 899, column: 14, scope: !2142)
!2189 = !DILocation(line: 900, column: 5, scope: !2142)
!2190 = !DILocation(line: 0, scope: !2131)
!2191 = !DILocation(line: 903, column: 19, scope: !2146)
!2192 = !DILocation(line: 903, column: 25, scope: !2146)
!2193 = !DILocation(line: 903, column: 12, scope: !2146)
!2194 = !DILocation(line: 904, column: 23, scope: !2146)
!2195 = !DILocation(line: 904, column: 11, scope: !2146)
!2196 = !DILocation(line: 906, column: 26, scope: !2146)
!2197 = !DILocation(line: 906, column: 32, scope: !2146)
!2198 = !DILocation(line: 906, column: 9, scope: !2146)
!2199 = !DILocation(line: 908, column: 55, scope: !2146)
!2200 = !DILocation(line: 909, column: 46, scope: !2146)
!2201 = !DILocation(line: 910, column: 55, scope: !2146)
!2202 = !DILocation(line: 911, column: 55, scope: !2146)
!2203 = !DILocation(line: 907, column: 20, scope: !2146)
!2204 = !DILocation(line: 907, column: 12, scope: !2146)
!2205 = !DILocation(line: 913, column: 14, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2146, file: !153, line: 913, column: 9)
!2207 = !DILocation(line: 913, column: 9, scope: !2146)
!2208 = !DILocation(line: 915, column: 35, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2206, file: !153, line: 914, column: 7)
!2210 = !DILocation(line: 915, column: 20, scope: !2209)
!2211 = !DILocation(line: 916, column: 17, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2209, file: !153, line: 916, column: 13)
!2213 = !DILocation(line: 916, column: 13, scope: !2209)
!2214 = !DILocation(line: 917, column: 11, scope: !2212)
!2215 = !DILocation(line: 216, column: 20, scope: !2035, inlinedAt: !2216)
!2216 = distinct !DILocation(line: 918, column: 27, scope: !2209)
!2217 = !DILocation(line: 218, column: 10, scope: !2035, inlinedAt: !2216)
!2218 = !DILocation(line: 918, column: 19, scope: !2209)
!2219 = !DILocation(line: 919, column: 69, scope: !2209)
!2220 = !DILocation(line: 921, column: 44, scope: !2209)
!2221 = !DILocation(line: 922, column: 44, scope: !2209)
!2222 = !DILocation(line: 919, column: 9, scope: !2209)
!2223 = !DILocation(line: 923, column: 7, scope: !2209)
!2224 = !DILocation(line: 0, scope: !2146)
!2225 = !DILocation(line: 925, column: 11, scope: !2146)
!2226 = !DILocation(line: 926, column: 5, scope: !2146)
!2227 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !153, file: !153, line: 937, type: !2228, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2230)
!2228 = !DISubroutineType(types: !2229)
!2229 = !{!27, !25, !35, !147}
!2230 = !{!2231, !2232, !2233}
!2231 = !DILocalVariable(name: "n", arg: 1, scope: !2227, file: !153, line: 937, type: !25)
!2232 = !DILocalVariable(name: "arg", arg: 2, scope: !2227, file: !153, line: 937, type: !35)
!2233 = !DILocalVariable(name: "argsize", arg: 3, scope: !2227, file: !153, line: 937, type: !147)
!2234 = !DILocation(line: 937, column: 21, scope: !2227)
!2235 = !DILocation(line: 937, column: 36, scope: !2227)
!2236 = !DILocation(line: 937, column: 48, scope: !2227)
!2237 = !DILocation(line: 939, column: 10, scope: !2227)
!2238 = !DILocation(line: 939, column: 3, scope: !2227)
!2239 = distinct !DISubprogram(name: "quotearg", scope: !153, file: !153, line: 943, type: !2240, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2242)
!2240 = !DISubroutineType(types: !2241)
!2241 = !{!27, !35}
!2242 = !{!2243}
!2243 = !DILocalVariable(name: "arg", arg: 1, scope: !2239, file: !153, line: 943, type: !35)
!2244 = !DILocation(line: 943, column: 23, scope: !2239)
!2245 = !DILocation(line: 931, column: 17, scope: !2121, inlinedAt: !2246)
!2246 = distinct !DILocation(line: 945, column: 10, scope: !2239)
!2247 = !DILocation(line: 931, column: 32, scope: !2121, inlinedAt: !2246)
!2248 = !DILocation(line: 933, column: 10, scope: !2121, inlinedAt: !2246)
!2249 = !DILocation(line: 945, column: 3, scope: !2239)
!2250 = distinct !DISubprogram(name: "quotearg_mem", scope: !153, file: !153, line: 949, type: !2251, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2253)
!2251 = !DISubroutineType(types: !2252)
!2252 = !{!27, !35, !147}
!2253 = !{!2254, !2255}
!2254 = !DILocalVariable(name: "arg", arg: 1, scope: !2250, file: !153, line: 949, type: !35)
!2255 = !DILocalVariable(name: "argsize", arg: 2, scope: !2250, file: !153, line: 949, type: !147)
!2256 = !DILocation(line: 949, column: 27, scope: !2250)
!2257 = !DILocation(line: 949, column: 39, scope: !2250)
!2258 = !DILocation(line: 937, column: 21, scope: !2227, inlinedAt: !2259)
!2259 = distinct !DILocation(line: 951, column: 10, scope: !2250)
!2260 = !DILocation(line: 937, column: 36, scope: !2227, inlinedAt: !2259)
!2261 = !DILocation(line: 937, column: 48, scope: !2227, inlinedAt: !2259)
!2262 = !DILocation(line: 939, column: 10, scope: !2227, inlinedAt: !2259)
!2263 = !DILocation(line: 951, column: 3, scope: !2250)
!2264 = distinct !DISubprogram(name: "quotearg_n_style", scope: !153, file: !153, line: 955, type: !2265, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!27, !25, !111, !35}
!2267 = !{!2268, !2269, !2270, !2271}
!2268 = !DILocalVariable(name: "n", arg: 1, scope: !2264, file: !153, line: 955, type: !25)
!2269 = !DILocalVariable(name: "s", arg: 2, scope: !2264, file: !153, line: 955, type: !111)
!2270 = !DILocalVariable(name: "arg", arg: 3, scope: !2264, file: !153, line: 955, type: !35)
!2271 = !DILocalVariable(name: "o", scope: !2264, file: !153, line: 957, type: !1033)
!2272 = !DILocation(line: 955, column: 23, scope: !2264)
!2273 = !DILocation(line: 955, column: 45, scope: !2264)
!2274 = !DILocation(line: 955, column: 60, scope: !2264)
!2275 = !DILocation(line: 957, column: 3, scope: !2264)
!2276 = !DILocation(line: 957, column: 32, scope: !2264)
!2277 = !DILocalVariable(name: "style", arg: 1, scope: !2278, file: !153, line: 193, type: !111)
!2278 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !153, file: !153, line: 193, type: !2279, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2281)
!2279 = !DISubroutineType(types: !2280)
!2280 = !{!160, !111}
!2281 = !{!2277, !2282}
!2282 = !DILocalVariable(name: "o", scope: !2278, file: !153, line: 195, type: !160)
!2283 = !DILocation(line: 193, column: 48, scope: !2278, inlinedAt: !2284)
!2284 = distinct !DILocation(line: 957, column: 36, scope: !2264)
!2285 = !DILocation(line: 195, column: 26, scope: !2278, inlinedAt: !2284)
!2286 = !{!2287}
!2287 = distinct !{!2287, !2288, !"quoting_options_from_style: argument 0"}
!2288 = distinct !{!2288, !"quoting_options_from_style"}
!2289 = !DILocation(line: 196, column: 13, scope: !2290, inlinedAt: !2284)
!2290 = distinct !DILexicalBlock(scope: !2278, file: !153, line: 196, column: 7)
!2291 = !DILocation(line: 196, column: 7, scope: !2278, inlinedAt: !2284)
!2292 = !DILocation(line: 197, column: 5, scope: !2290, inlinedAt: !2284)
!2293 = !DILocation(line: 198, column: 5, scope: !2278, inlinedAt: !2284)
!2294 = !DILocation(line: 198, column: 11, scope: !2278, inlinedAt: !2284)
!2295 = !DILocation(line: 958, column: 10, scope: !2264)
!2296 = !DILocation(line: 959, column: 1, scope: !2264)
!2297 = !DILocation(line: 958, column: 3, scope: !2264)
!2298 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !153, file: !153, line: 962, type: !2299, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!27, !25, !111, !35, !147}
!2301 = !{!2302, !2303, !2304, !2305, !2306}
!2302 = !DILocalVariable(name: "n", arg: 1, scope: !2298, file: !153, line: 962, type: !25)
!2303 = !DILocalVariable(name: "s", arg: 2, scope: !2298, file: !153, line: 962, type: !111)
!2304 = !DILocalVariable(name: "arg", arg: 3, scope: !2298, file: !153, line: 963, type: !35)
!2305 = !DILocalVariable(name: "argsize", arg: 4, scope: !2298, file: !153, line: 963, type: !147)
!2306 = !DILocalVariable(name: "o", scope: !2298, file: !153, line: 965, type: !1033)
!2307 = !DILocation(line: 962, column: 27, scope: !2298)
!2308 = !DILocation(line: 962, column: 49, scope: !2298)
!2309 = !DILocation(line: 963, column: 35, scope: !2298)
!2310 = !DILocation(line: 963, column: 47, scope: !2298)
!2311 = !DILocation(line: 965, column: 3, scope: !2298)
!2312 = !DILocation(line: 965, column: 32, scope: !2298)
!2313 = !DILocation(line: 193, column: 48, scope: !2278, inlinedAt: !2314)
!2314 = distinct !DILocation(line: 965, column: 36, scope: !2298)
!2315 = !DILocation(line: 195, column: 26, scope: !2278, inlinedAt: !2314)
!2316 = !{!2317}
!2317 = distinct !{!2317, !2318, !"quoting_options_from_style: argument 0"}
!2318 = distinct !{!2318, !"quoting_options_from_style"}
!2319 = !DILocation(line: 196, column: 13, scope: !2290, inlinedAt: !2314)
!2320 = !DILocation(line: 196, column: 7, scope: !2278, inlinedAt: !2314)
!2321 = !DILocation(line: 197, column: 5, scope: !2290, inlinedAt: !2314)
!2322 = !DILocation(line: 198, column: 5, scope: !2278, inlinedAt: !2314)
!2323 = !DILocation(line: 198, column: 11, scope: !2278, inlinedAt: !2314)
!2324 = !DILocation(line: 966, column: 10, scope: !2298)
!2325 = !DILocation(line: 967, column: 1, scope: !2298)
!2326 = !DILocation(line: 966, column: 3, scope: !2298)
!2327 = distinct !DISubprogram(name: "quotearg_style", scope: !153, file: !153, line: 970, type: !2328, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2330)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{!27, !111, !35}
!2330 = !{!2331, !2332}
!2331 = !DILocalVariable(name: "s", arg: 1, scope: !2327, file: !153, line: 970, type: !111)
!2332 = !DILocalVariable(name: "arg", arg: 2, scope: !2327, file: !153, line: 970, type: !35)
!2333 = !DILocation(line: 970, column: 36, scope: !2327)
!2334 = !DILocation(line: 970, column: 51, scope: !2327)
!2335 = !DILocation(line: 955, column: 23, scope: !2264, inlinedAt: !2336)
!2336 = distinct !DILocation(line: 972, column: 10, scope: !2327)
!2337 = !DILocation(line: 955, column: 45, scope: !2264, inlinedAt: !2336)
!2338 = !DILocation(line: 955, column: 60, scope: !2264, inlinedAt: !2336)
!2339 = !DILocation(line: 957, column: 3, scope: !2264, inlinedAt: !2336)
!2340 = !DILocation(line: 957, column: 32, scope: !2264, inlinedAt: !2336)
!2341 = !DILocation(line: 193, column: 48, scope: !2278, inlinedAt: !2342)
!2342 = distinct !DILocation(line: 957, column: 36, scope: !2264, inlinedAt: !2336)
!2343 = !DILocation(line: 195, column: 26, scope: !2278, inlinedAt: !2342)
!2344 = !{!2345}
!2345 = distinct !{!2345, !2346, !"quoting_options_from_style: argument 0"}
!2346 = distinct !{!2346, !"quoting_options_from_style"}
!2347 = !DILocation(line: 196, column: 13, scope: !2290, inlinedAt: !2342)
!2348 = !DILocation(line: 196, column: 7, scope: !2278, inlinedAt: !2342)
!2349 = !DILocation(line: 197, column: 5, scope: !2290, inlinedAt: !2342)
!2350 = !DILocation(line: 198, column: 5, scope: !2278, inlinedAt: !2342)
!2351 = !DILocation(line: 198, column: 11, scope: !2278, inlinedAt: !2342)
!2352 = !DILocation(line: 958, column: 10, scope: !2264, inlinedAt: !2336)
!2353 = !DILocation(line: 959, column: 1, scope: !2264, inlinedAt: !2336)
!2354 = !DILocation(line: 972, column: 3, scope: !2327)
!2355 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !153, file: !153, line: 976, type: !2356, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2358)
!2356 = !DISubroutineType(types: !2357)
!2357 = !{!27, !111, !35, !147}
!2358 = !{!2359, !2360, !2361}
!2359 = !DILocalVariable(name: "s", arg: 1, scope: !2355, file: !153, line: 976, type: !111)
!2360 = !DILocalVariable(name: "arg", arg: 2, scope: !2355, file: !153, line: 976, type: !35)
!2361 = !DILocalVariable(name: "argsize", arg: 3, scope: !2355, file: !153, line: 976, type: !147)
!2362 = !DILocation(line: 976, column: 40, scope: !2355)
!2363 = !DILocation(line: 976, column: 55, scope: !2355)
!2364 = !DILocation(line: 976, column: 67, scope: !2355)
!2365 = !DILocation(line: 962, column: 27, scope: !2298, inlinedAt: !2366)
!2366 = distinct !DILocation(line: 978, column: 10, scope: !2355)
!2367 = !DILocation(line: 962, column: 49, scope: !2298, inlinedAt: !2366)
!2368 = !DILocation(line: 963, column: 35, scope: !2298, inlinedAt: !2366)
!2369 = !DILocation(line: 963, column: 47, scope: !2298, inlinedAt: !2366)
!2370 = !DILocation(line: 965, column: 3, scope: !2298, inlinedAt: !2366)
!2371 = !DILocation(line: 965, column: 32, scope: !2298, inlinedAt: !2366)
!2372 = !DILocation(line: 193, column: 48, scope: !2278, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 965, column: 36, scope: !2298, inlinedAt: !2366)
!2374 = !DILocation(line: 195, column: 26, scope: !2278, inlinedAt: !2373)
!2375 = !{!2376}
!2376 = distinct !{!2376, !2377, !"quoting_options_from_style: argument 0"}
!2377 = distinct !{!2377, !"quoting_options_from_style"}
!2378 = !DILocation(line: 196, column: 13, scope: !2290, inlinedAt: !2373)
!2379 = !DILocation(line: 196, column: 7, scope: !2278, inlinedAt: !2373)
!2380 = !DILocation(line: 197, column: 5, scope: !2290, inlinedAt: !2373)
!2381 = !DILocation(line: 198, column: 5, scope: !2278, inlinedAt: !2373)
!2382 = !DILocation(line: 198, column: 11, scope: !2278, inlinedAt: !2373)
!2383 = !DILocation(line: 966, column: 10, scope: !2298, inlinedAt: !2366)
!2384 = !DILocation(line: 967, column: 1, scope: !2298, inlinedAt: !2366)
!2385 = !DILocation(line: 978, column: 3, scope: !2355)
!2386 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !153, file: !153, line: 982, type: !2387, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2389)
!2387 = !DISubroutineType(types: !2388)
!2388 = !{!27, !35, !147, !28}
!2389 = !{!2390, !2391, !2392, !2393}
!2390 = !DILocalVariable(name: "arg", arg: 1, scope: !2386, file: !153, line: 982, type: !35)
!2391 = !DILocalVariable(name: "argsize", arg: 2, scope: !2386, file: !153, line: 982, type: !147)
!2392 = !DILocalVariable(name: "ch", arg: 3, scope: !2386, file: !153, line: 982, type: !28)
!2393 = !DILocalVariable(name: "options", scope: !2386, file: !153, line: 984, type: !160)
!2394 = !DILocation(line: 982, column: 32, scope: !2386)
!2395 = !DILocation(line: 982, column: 44, scope: !2386)
!2396 = !DILocation(line: 982, column: 58, scope: !2386)
!2397 = !DILocation(line: 984, column: 3, scope: !2386)
!2398 = !DILocation(line: 985, column: 13, scope: !2386)
!2399 = !{i64 0, i64 4, !748, i64 4, i64 4, !739, i64 8, i64 32, !748, i64 40, i64 8, !673, i64 48, i64 8, !673}
!2400 = !DILocation(line: 984, column: 26, scope: !2386)
!2401 = !DILocation(line: 152, column: 43, scope: !1054, inlinedAt: !2402)
!2402 = distinct !DILocation(line: 986, column: 3, scope: !2386)
!2403 = !DILocation(line: 152, column: 51, scope: !1054, inlinedAt: !2402)
!2404 = !DILocation(line: 152, column: 58, scope: !1054, inlinedAt: !2402)
!2405 = !DILocation(line: 154, column: 17, scope: !1054, inlinedAt: !2402)
!2406 = !DILocation(line: 156, column: 62, scope: !1054, inlinedAt: !2402)
!2407 = !DILocation(line: 156, column: 57, scope: !1054, inlinedAt: !2402)
!2408 = !DILocation(line: 155, column: 17, scope: !1054, inlinedAt: !2402)
!2409 = !DILocation(line: 157, column: 15, scope: !1054, inlinedAt: !2402)
!2410 = !DILocation(line: 157, column: 7, scope: !1054, inlinedAt: !2402)
!2411 = !DILocation(line: 158, column: 12, scope: !1054, inlinedAt: !2402)
!2412 = !DILocation(line: 158, column: 15, scope: !1054, inlinedAt: !2402)
!2413 = !DILocation(line: 158, column: 25, scope: !1054, inlinedAt: !2402)
!2414 = !DILocation(line: 158, column: 7, scope: !1054, inlinedAt: !2402)
!2415 = !DILocation(line: 159, column: 18, scope: !1054, inlinedAt: !2402)
!2416 = !DILocation(line: 159, column: 23, scope: !1054, inlinedAt: !2402)
!2417 = !DILocation(line: 159, column: 6, scope: !1054, inlinedAt: !2402)
!2418 = !DILocation(line: 987, column: 10, scope: !2386)
!2419 = !DILocation(line: 988, column: 1, scope: !2386)
!2420 = !DILocation(line: 987, column: 3, scope: !2386)
!2421 = distinct !DISubprogram(name: "quotearg_char", scope: !153, file: !153, line: 991, type: !2422, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2424)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!27, !35, !28}
!2424 = !{!2425, !2426}
!2425 = !DILocalVariable(name: "arg", arg: 1, scope: !2421, file: !153, line: 991, type: !35)
!2426 = !DILocalVariable(name: "ch", arg: 2, scope: !2421, file: !153, line: 991, type: !28)
!2427 = !DILocation(line: 991, column: 28, scope: !2421)
!2428 = !DILocation(line: 991, column: 38, scope: !2421)
!2429 = !DILocation(line: 982, column: 32, scope: !2386, inlinedAt: !2430)
!2430 = distinct !DILocation(line: 993, column: 10, scope: !2421)
!2431 = !DILocation(line: 982, column: 44, scope: !2386, inlinedAt: !2430)
!2432 = !DILocation(line: 982, column: 58, scope: !2386, inlinedAt: !2430)
!2433 = !DILocation(line: 984, column: 3, scope: !2386, inlinedAt: !2430)
!2434 = !DILocation(line: 985, column: 13, scope: !2386, inlinedAt: !2430)
!2435 = !DILocation(line: 984, column: 26, scope: !2386, inlinedAt: !2430)
!2436 = !DILocation(line: 152, column: 43, scope: !1054, inlinedAt: !2437)
!2437 = distinct !DILocation(line: 986, column: 3, scope: !2386, inlinedAt: !2430)
!2438 = !DILocation(line: 152, column: 51, scope: !1054, inlinedAt: !2437)
!2439 = !DILocation(line: 152, column: 58, scope: !1054, inlinedAt: !2437)
!2440 = !DILocation(line: 154, column: 17, scope: !1054, inlinedAt: !2437)
!2441 = !DILocation(line: 156, column: 62, scope: !1054, inlinedAt: !2437)
!2442 = !DILocation(line: 156, column: 57, scope: !1054, inlinedAt: !2437)
!2443 = !DILocation(line: 155, column: 17, scope: !1054, inlinedAt: !2437)
!2444 = !DILocation(line: 157, column: 15, scope: !1054, inlinedAt: !2437)
!2445 = !DILocation(line: 157, column: 7, scope: !1054, inlinedAt: !2437)
!2446 = !DILocation(line: 158, column: 12, scope: !1054, inlinedAt: !2437)
!2447 = !DILocation(line: 158, column: 15, scope: !1054, inlinedAt: !2437)
!2448 = !DILocation(line: 158, column: 25, scope: !1054, inlinedAt: !2437)
!2449 = !DILocation(line: 158, column: 7, scope: !1054, inlinedAt: !2437)
!2450 = !DILocation(line: 159, column: 18, scope: !1054, inlinedAt: !2437)
!2451 = !DILocation(line: 159, column: 23, scope: !1054, inlinedAt: !2437)
!2452 = !DILocation(line: 159, column: 6, scope: !1054, inlinedAt: !2437)
!2453 = !DILocation(line: 987, column: 10, scope: !2386, inlinedAt: !2430)
!2454 = !DILocation(line: 988, column: 1, scope: !2386, inlinedAt: !2430)
!2455 = !DILocation(line: 993, column: 3, scope: !2421)
!2456 = distinct !DISubprogram(name: "quotearg_colon", scope: !153, file: !153, line: 997, type: !2240, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2457)
!2457 = !{!2458}
!2458 = !DILocalVariable(name: "arg", arg: 1, scope: !2456, file: !153, line: 997, type: !35)
!2459 = !DILocation(line: 997, column: 29, scope: !2456)
!2460 = !DILocation(line: 991, column: 28, scope: !2421, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 999, column: 10, scope: !2456)
!2462 = !DILocation(line: 991, column: 38, scope: !2421, inlinedAt: !2461)
!2463 = !DILocation(line: 982, column: 32, scope: !2386, inlinedAt: !2464)
!2464 = distinct !DILocation(line: 993, column: 10, scope: !2421, inlinedAt: !2461)
!2465 = !DILocation(line: 982, column: 44, scope: !2386, inlinedAt: !2464)
!2466 = !DILocation(line: 982, column: 58, scope: !2386, inlinedAt: !2464)
!2467 = !DILocation(line: 984, column: 3, scope: !2386, inlinedAt: !2464)
!2468 = !DILocation(line: 985, column: 13, scope: !2386, inlinedAt: !2464)
!2469 = !DILocation(line: 984, column: 26, scope: !2386, inlinedAt: !2464)
!2470 = !DILocation(line: 152, column: 43, scope: !1054, inlinedAt: !2471)
!2471 = distinct !DILocation(line: 986, column: 3, scope: !2386, inlinedAt: !2464)
!2472 = !DILocation(line: 152, column: 51, scope: !1054, inlinedAt: !2471)
!2473 = !DILocation(line: 152, column: 58, scope: !1054, inlinedAt: !2471)
!2474 = !DILocation(line: 154, column: 17, scope: !1054, inlinedAt: !2471)
!2475 = !DILocation(line: 156, column: 57, scope: !1054, inlinedAt: !2471)
!2476 = !DILocation(line: 155, column: 17, scope: !1054, inlinedAt: !2471)
!2477 = !DILocation(line: 157, column: 7, scope: !1054, inlinedAt: !2471)
!2478 = !DILocation(line: 158, column: 12, scope: !1054, inlinedAt: !2471)
!2479 = !DILocation(line: 159, column: 6, scope: !1054, inlinedAt: !2471)
!2480 = !DILocation(line: 987, column: 10, scope: !2386, inlinedAt: !2464)
!2481 = !DILocation(line: 988, column: 1, scope: !2386, inlinedAt: !2464)
!2482 = !DILocation(line: 999, column: 3, scope: !2456)
!2483 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !153, file: !153, line: 1003, type: !2251, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2484)
!2484 = !{!2485, !2486}
!2485 = !DILocalVariable(name: "arg", arg: 1, scope: !2483, file: !153, line: 1003, type: !35)
!2486 = !DILocalVariable(name: "argsize", arg: 2, scope: !2483, file: !153, line: 1003, type: !147)
!2487 = !DILocation(line: 1003, column: 33, scope: !2483)
!2488 = !DILocation(line: 1003, column: 45, scope: !2483)
!2489 = !DILocation(line: 982, column: 32, scope: !2386, inlinedAt: !2490)
!2490 = distinct !DILocation(line: 1005, column: 10, scope: !2483)
!2491 = !DILocation(line: 982, column: 44, scope: !2386, inlinedAt: !2490)
!2492 = !DILocation(line: 982, column: 58, scope: !2386, inlinedAt: !2490)
!2493 = !DILocation(line: 984, column: 3, scope: !2386, inlinedAt: !2490)
!2494 = !DILocation(line: 985, column: 13, scope: !2386, inlinedAt: !2490)
!2495 = !DILocation(line: 984, column: 26, scope: !2386, inlinedAt: !2490)
!2496 = !DILocation(line: 152, column: 43, scope: !1054, inlinedAt: !2497)
!2497 = distinct !DILocation(line: 986, column: 3, scope: !2386, inlinedAt: !2490)
!2498 = !DILocation(line: 152, column: 51, scope: !1054, inlinedAt: !2497)
!2499 = !DILocation(line: 152, column: 58, scope: !1054, inlinedAt: !2497)
!2500 = !DILocation(line: 154, column: 17, scope: !1054, inlinedAt: !2497)
!2501 = !DILocation(line: 156, column: 57, scope: !1054, inlinedAt: !2497)
!2502 = !DILocation(line: 155, column: 17, scope: !1054, inlinedAt: !2497)
!2503 = !DILocation(line: 157, column: 7, scope: !1054, inlinedAt: !2497)
!2504 = !DILocation(line: 158, column: 12, scope: !1054, inlinedAt: !2497)
!2505 = !DILocation(line: 159, column: 6, scope: !1054, inlinedAt: !2497)
!2506 = !DILocation(line: 987, column: 10, scope: !2386, inlinedAt: !2490)
!2507 = !DILocation(line: 988, column: 1, scope: !2386, inlinedAt: !2490)
!2508 = !DILocation(line: 1005, column: 3, scope: !2483)
!2509 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !153, file: !153, line: 1009, type: !2265, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2510)
!2510 = !{!2511, !2512, !2513, !2514}
!2511 = !DILocalVariable(name: "n", arg: 1, scope: !2509, file: !153, line: 1009, type: !25)
!2512 = !DILocalVariable(name: "s", arg: 2, scope: !2509, file: !153, line: 1009, type: !111)
!2513 = !DILocalVariable(name: "arg", arg: 3, scope: !2509, file: !153, line: 1009, type: !35)
!2514 = !DILocalVariable(name: "options", scope: !2509, file: !153, line: 1011, type: !160)
!2515 = !DILocation(line: 195, column: 26, scope: !2278, inlinedAt: !2516)
!2516 = distinct !DILocation(line: 1012, column: 13, scope: !2509)
!2517 = !DILocation(line: 1009, column: 29, scope: !2509)
!2518 = !DILocation(line: 1009, column: 51, scope: !2509)
!2519 = !DILocation(line: 1009, column: 66, scope: !2509)
!2520 = !DILocation(line: 1011, column: 3, scope: !2509)
!2521 = !DILocation(line: 1012, column: 13, scope: !2509)
!2522 = !DILocation(line: 193, column: 48, scope: !2278, inlinedAt: !2516)
!2523 = !{!2524}
!2524 = distinct !{!2524, !2525, !"quoting_options_from_style: argument 0"}
!2525 = distinct !{!2525, !"quoting_options_from_style"}
!2526 = !DILocation(line: 196, column: 13, scope: !2290, inlinedAt: !2516)
!2527 = !DILocation(line: 196, column: 7, scope: !2278, inlinedAt: !2516)
!2528 = !DILocation(line: 197, column: 5, scope: !2290, inlinedAt: !2516)
!2529 = !DILocation(line: 1011, column: 26, scope: !2509)
!2530 = !DILocation(line: 152, column: 43, scope: !1054, inlinedAt: !2531)
!2531 = distinct !DILocation(line: 1013, column: 3, scope: !2509)
!2532 = !DILocation(line: 152, column: 51, scope: !1054, inlinedAt: !2531)
!2533 = !DILocation(line: 152, column: 58, scope: !1054, inlinedAt: !2531)
!2534 = !DILocation(line: 154, column: 17, scope: !1054, inlinedAt: !2531)
!2535 = !DILocation(line: 156, column: 57, scope: !1054, inlinedAt: !2531)
!2536 = !DILocation(line: 155, column: 17, scope: !1054, inlinedAt: !2531)
!2537 = !DILocation(line: 157, column: 7, scope: !1054, inlinedAt: !2531)
!2538 = !DILocation(line: 158, column: 12, scope: !1054, inlinedAt: !2531)
!2539 = !DILocation(line: 159, column: 6, scope: !1054, inlinedAt: !2531)
!2540 = !DILocation(line: 1014, column: 10, scope: !2509)
!2541 = !DILocation(line: 1015, column: 1, scope: !2509)
!2542 = !DILocation(line: 1014, column: 3, scope: !2509)
!2543 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !153, file: !153, line: 1018, type: !2544, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2546)
!2544 = !DISubroutineType(types: !2545)
!2545 = !{!27, !25, !35, !35, !35}
!2546 = !{!2547, !2548, !2549, !2550}
!2547 = !DILocalVariable(name: "n", arg: 1, scope: !2543, file: !153, line: 1018, type: !25)
!2548 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2543, file: !153, line: 1018, type: !35)
!2549 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2543, file: !153, line: 1019, type: !35)
!2550 = !DILocalVariable(name: "arg", arg: 4, scope: !2543, file: !153, line: 1019, type: !35)
!2551 = !DILocation(line: 1018, column: 24, scope: !2543)
!2552 = !DILocation(line: 1018, column: 39, scope: !2543)
!2553 = !DILocation(line: 1019, column: 32, scope: !2543)
!2554 = !DILocation(line: 1019, column: 57, scope: !2543)
!2555 = !DILocalVariable(name: "n", arg: 1, scope: !2556, file: !153, line: 1026, type: !25)
!2556 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !153, file: !153, line: 1026, type: !2557, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2559)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!27, !25, !35, !35, !35, !147}
!2559 = !{!2555, !2560, !2561, !2562, !2563, !2564}
!2560 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2556, file: !153, line: 1026, type: !35)
!2561 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2556, file: !153, line: 1027, type: !35)
!2562 = !DILocalVariable(name: "arg", arg: 4, scope: !2556, file: !153, line: 1028, type: !35)
!2563 = !DILocalVariable(name: "argsize", arg: 5, scope: !2556, file: !153, line: 1028, type: !147)
!2564 = !DILocalVariable(name: "o", scope: !2556, file: !153, line: 1030, type: !160)
!2565 = !DILocation(line: 1026, column: 28, scope: !2556, inlinedAt: !2566)
!2566 = distinct !DILocation(line: 1021, column: 10, scope: !2543)
!2567 = !DILocation(line: 1026, column: 43, scope: !2556, inlinedAt: !2566)
!2568 = !DILocation(line: 1027, column: 36, scope: !2556, inlinedAt: !2566)
!2569 = !DILocation(line: 1028, column: 36, scope: !2556, inlinedAt: !2566)
!2570 = !DILocation(line: 1028, column: 48, scope: !2556, inlinedAt: !2566)
!2571 = !DILocation(line: 1030, column: 3, scope: !2556, inlinedAt: !2566)
!2572 = !DILocation(line: 1030, column: 30, scope: !2556, inlinedAt: !2566)
!2573 = !DILocation(line: 1030, column: 26, scope: !2556, inlinedAt: !2566)
!2574 = !DILocation(line: 179, column: 45, scope: !1103, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 1031, column: 3, scope: !2556, inlinedAt: !2566)
!2576 = !DILocation(line: 180, column: 33, scope: !1103, inlinedAt: !2575)
!2577 = !DILocation(line: 180, column: 57, scope: !1103, inlinedAt: !2575)
!2578 = !DILocation(line: 184, column: 6, scope: !1103, inlinedAt: !2575)
!2579 = !DILocation(line: 184, column: 12, scope: !1103, inlinedAt: !2575)
!2580 = !DILocation(line: 185, column: 8, scope: !1119, inlinedAt: !2575)
!2581 = !DILocation(line: 185, column: 23, scope: !1119, inlinedAt: !2575)
!2582 = !DILocation(line: 185, column: 19, scope: !1119, inlinedAt: !2575)
!2583 = !DILocation(line: 186, column: 5, scope: !1119, inlinedAt: !2575)
!2584 = !DILocation(line: 187, column: 6, scope: !1103, inlinedAt: !2575)
!2585 = !DILocation(line: 187, column: 17, scope: !1103, inlinedAt: !2575)
!2586 = !DILocation(line: 188, column: 6, scope: !1103, inlinedAt: !2575)
!2587 = !DILocation(line: 188, column: 18, scope: !1103, inlinedAt: !2575)
!2588 = !DILocation(line: 1032, column: 10, scope: !2556, inlinedAt: !2566)
!2589 = !DILocation(line: 1033, column: 1, scope: !2556, inlinedAt: !2566)
!2590 = !DILocation(line: 1021, column: 3, scope: !2543)
!2591 = !DILocation(line: 1026, column: 28, scope: !2556)
!2592 = !DILocation(line: 1026, column: 43, scope: !2556)
!2593 = !DILocation(line: 1027, column: 36, scope: !2556)
!2594 = !DILocation(line: 1028, column: 36, scope: !2556)
!2595 = !DILocation(line: 1028, column: 48, scope: !2556)
!2596 = !DILocation(line: 1030, column: 3, scope: !2556)
!2597 = !DILocation(line: 1030, column: 30, scope: !2556)
!2598 = !DILocation(line: 1030, column: 26, scope: !2556)
!2599 = !DILocation(line: 179, column: 45, scope: !1103, inlinedAt: !2600)
!2600 = distinct !DILocation(line: 1031, column: 3, scope: !2556)
!2601 = !DILocation(line: 180, column: 33, scope: !1103, inlinedAt: !2600)
!2602 = !DILocation(line: 180, column: 57, scope: !1103, inlinedAt: !2600)
!2603 = !DILocation(line: 184, column: 6, scope: !1103, inlinedAt: !2600)
!2604 = !DILocation(line: 184, column: 12, scope: !1103, inlinedAt: !2600)
!2605 = !DILocation(line: 185, column: 8, scope: !1119, inlinedAt: !2600)
!2606 = !DILocation(line: 185, column: 23, scope: !1119, inlinedAt: !2600)
!2607 = !DILocation(line: 185, column: 19, scope: !1119, inlinedAt: !2600)
!2608 = !DILocation(line: 186, column: 5, scope: !1119, inlinedAt: !2600)
!2609 = !DILocation(line: 187, column: 6, scope: !1103, inlinedAt: !2600)
!2610 = !DILocation(line: 187, column: 17, scope: !1103, inlinedAt: !2600)
!2611 = !DILocation(line: 188, column: 6, scope: !1103, inlinedAt: !2600)
!2612 = !DILocation(line: 188, column: 18, scope: !1103, inlinedAt: !2600)
!2613 = !DILocation(line: 1032, column: 10, scope: !2556)
!2614 = !DILocation(line: 1033, column: 1, scope: !2556)
!2615 = !DILocation(line: 1032, column: 3, scope: !2556)
!2616 = distinct !DISubprogram(name: "quotearg_custom", scope: !153, file: !153, line: 1036, type: !2617, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2619)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!27, !35, !35, !35}
!2619 = !{!2620, !2621, !2622}
!2620 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2616, file: !153, line: 1036, type: !35)
!2621 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2616, file: !153, line: 1036, type: !35)
!2622 = !DILocalVariable(name: "arg", arg: 3, scope: !2616, file: !153, line: 1037, type: !35)
!2623 = !DILocation(line: 1036, column: 30, scope: !2616)
!2624 = !DILocation(line: 1036, column: 54, scope: !2616)
!2625 = !DILocation(line: 1037, column: 30, scope: !2616)
!2626 = !DILocation(line: 1018, column: 24, scope: !2543, inlinedAt: !2627)
!2627 = distinct !DILocation(line: 1039, column: 10, scope: !2616)
!2628 = !DILocation(line: 1018, column: 39, scope: !2543, inlinedAt: !2627)
!2629 = !DILocation(line: 1019, column: 32, scope: !2543, inlinedAt: !2627)
!2630 = !DILocation(line: 1019, column: 57, scope: !2543, inlinedAt: !2627)
!2631 = !DILocation(line: 1026, column: 28, scope: !2556, inlinedAt: !2632)
!2632 = distinct !DILocation(line: 1021, column: 10, scope: !2543, inlinedAt: !2627)
!2633 = !DILocation(line: 1026, column: 43, scope: !2556, inlinedAt: !2632)
!2634 = !DILocation(line: 1027, column: 36, scope: !2556, inlinedAt: !2632)
!2635 = !DILocation(line: 1028, column: 36, scope: !2556, inlinedAt: !2632)
!2636 = !DILocation(line: 1028, column: 48, scope: !2556, inlinedAt: !2632)
!2637 = !DILocation(line: 1030, column: 3, scope: !2556, inlinedAt: !2632)
!2638 = !DILocation(line: 1030, column: 30, scope: !2556, inlinedAt: !2632)
!2639 = !DILocation(line: 1030, column: 26, scope: !2556, inlinedAt: !2632)
!2640 = !DILocation(line: 179, column: 45, scope: !1103, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 1031, column: 3, scope: !2556, inlinedAt: !2632)
!2642 = !DILocation(line: 180, column: 33, scope: !1103, inlinedAt: !2641)
!2643 = !DILocation(line: 180, column: 57, scope: !1103, inlinedAt: !2641)
!2644 = !DILocation(line: 184, column: 6, scope: !1103, inlinedAt: !2641)
!2645 = !DILocation(line: 184, column: 12, scope: !1103, inlinedAt: !2641)
!2646 = !DILocation(line: 185, column: 8, scope: !1119, inlinedAt: !2641)
!2647 = !DILocation(line: 185, column: 23, scope: !1119, inlinedAt: !2641)
!2648 = !DILocation(line: 185, column: 19, scope: !1119, inlinedAt: !2641)
!2649 = !DILocation(line: 186, column: 5, scope: !1119, inlinedAt: !2641)
!2650 = !DILocation(line: 187, column: 6, scope: !1103, inlinedAt: !2641)
!2651 = !DILocation(line: 187, column: 17, scope: !1103, inlinedAt: !2641)
!2652 = !DILocation(line: 188, column: 6, scope: !1103, inlinedAt: !2641)
!2653 = !DILocation(line: 188, column: 18, scope: !1103, inlinedAt: !2641)
!2654 = !DILocation(line: 1032, column: 10, scope: !2556, inlinedAt: !2632)
!2655 = !DILocation(line: 1033, column: 1, scope: !2556, inlinedAt: !2632)
!2656 = !DILocation(line: 1039, column: 3, scope: !2616)
!2657 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !153, file: !153, line: 1043, type: !2658, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2660)
!2658 = !DISubroutineType(types: !2659)
!2659 = !{!27, !35, !35, !35, !147}
!2660 = !{!2661, !2662, !2663, !2664}
!2661 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2657, file: !153, line: 1043, type: !35)
!2662 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2657, file: !153, line: 1043, type: !35)
!2663 = !DILocalVariable(name: "arg", arg: 3, scope: !2657, file: !153, line: 1044, type: !35)
!2664 = !DILocalVariable(name: "argsize", arg: 4, scope: !2657, file: !153, line: 1044, type: !147)
!2665 = !DILocation(line: 1043, column: 34, scope: !2657)
!2666 = !DILocation(line: 1043, column: 58, scope: !2657)
!2667 = !DILocation(line: 1044, column: 34, scope: !2657)
!2668 = !DILocation(line: 1044, column: 46, scope: !2657)
!2669 = !DILocation(line: 1026, column: 28, scope: !2556, inlinedAt: !2670)
!2670 = distinct !DILocation(line: 1046, column: 10, scope: !2657)
!2671 = !DILocation(line: 1026, column: 43, scope: !2556, inlinedAt: !2670)
!2672 = !DILocation(line: 1027, column: 36, scope: !2556, inlinedAt: !2670)
!2673 = !DILocation(line: 1028, column: 36, scope: !2556, inlinedAt: !2670)
!2674 = !DILocation(line: 1028, column: 48, scope: !2556, inlinedAt: !2670)
!2675 = !DILocation(line: 1030, column: 3, scope: !2556, inlinedAt: !2670)
!2676 = !DILocation(line: 1030, column: 30, scope: !2556, inlinedAt: !2670)
!2677 = !DILocation(line: 1030, column: 26, scope: !2556, inlinedAt: !2670)
!2678 = !DILocation(line: 179, column: 45, scope: !1103, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 1031, column: 3, scope: !2556, inlinedAt: !2670)
!2680 = !DILocation(line: 180, column: 33, scope: !1103, inlinedAt: !2679)
!2681 = !DILocation(line: 180, column: 57, scope: !1103, inlinedAt: !2679)
!2682 = !DILocation(line: 184, column: 6, scope: !1103, inlinedAt: !2679)
!2683 = !DILocation(line: 184, column: 12, scope: !1103, inlinedAt: !2679)
!2684 = !DILocation(line: 185, column: 8, scope: !1119, inlinedAt: !2679)
!2685 = !DILocation(line: 185, column: 23, scope: !1119, inlinedAt: !2679)
!2686 = !DILocation(line: 185, column: 19, scope: !1119, inlinedAt: !2679)
!2687 = !DILocation(line: 186, column: 5, scope: !1119, inlinedAt: !2679)
!2688 = !DILocation(line: 187, column: 6, scope: !1103, inlinedAt: !2679)
!2689 = !DILocation(line: 187, column: 17, scope: !1103, inlinedAt: !2679)
!2690 = !DILocation(line: 188, column: 6, scope: !1103, inlinedAt: !2679)
!2691 = !DILocation(line: 188, column: 18, scope: !1103, inlinedAt: !2679)
!2692 = !DILocation(line: 1032, column: 10, scope: !2556, inlinedAt: !2670)
!2693 = !DILocation(line: 1033, column: 1, scope: !2556, inlinedAt: !2670)
!2694 = !DILocation(line: 1046, column: 3, scope: !2657)
!2695 = distinct !DISubprogram(name: "quote_n_mem", scope: !153, file: !153, line: 1061, type: !2696, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2698)
!2696 = !DISubroutineType(types: !2697)
!2697 = !{!35, !25, !35, !147}
!2698 = !{!2699, !2700, !2701}
!2699 = !DILocalVariable(name: "n", arg: 1, scope: !2695, file: !153, line: 1061, type: !25)
!2700 = !DILocalVariable(name: "arg", arg: 2, scope: !2695, file: !153, line: 1061, type: !35)
!2701 = !DILocalVariable(name: "argsize", arg: 3, scope: !2695, file: !153, line: 1061, type: !147)
!2702 = !DILocation(line: 1061, column: 18, scope: !2695)
!2703 = !DILocation(line: 1061, column: 33, scope: !2695)
!2704 = !DILocation(line: 1061, column: 45, scope: !2695)
!2705 = !DILocation(line: 1063, column: 10, scope: !2695)
!2706 = !DILocation(line: 1063, column: 3, scope: !2695)
!2707 = distinct !DISubprogram(name: "quote_mem", scope: !153, file: !153, line: 1067, type: !2708, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2710)
!2708 = !DISubroutineType(types: !2709)
!2709 = !{!35, !35, !147}
!2710 = !{!2711, !2712}
!2711 = !DILocalVariable(name: "arg", arg: 1, scope: !2707, file: !153, line: 1067, type: !35)
!2712 = !DILocalVariable(name: "argsize", arg: 2, scope: !2707, file: !153, line: 1067, type: !147)
!2713 = !DILocation(line: 1067, column: 24, scope: !2707)
!2714 = !DILocation(line: 1067, column: 36, scope: !2707)
!2715 = !DILocation(line: 1061, column: 18, scope: !2695, inlinedAt: !2716)
!2716 = distinct !DILocation(line: 1069, column: 10, scope: !2707)
!2717 = !DILocation(line: 1061, column: 33, scope: !2695, inlinedAt: !2716)
!2718 = !DILocation(line: 1061, column: 45, scope: !2695, inlinedAt: !2716)
!2719 = !DILocation(line: 1063, column: 10, scope: !2695, inlinedAt: !2716)
!2720 = !DILocation(line: 1069, column: 3, scope: !2707)
!2721 = distinct !DISubprogram(name: "quote_n", scope: !153, file: !153, line: 1073, type: !2722, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2724)
!2722 = !DISubroutineType(types: !2723)
!2723 = !{!35, !25, !35}
!2724 = !{!2725, !2726}
!2725 = !DILocalVariable(name: "n", arg: 1, scope: !2721, file: !153, line: 1073, type: !25)
!2726 = !DILocalVariable(name: "arg", arg: 2, scope: !2721, file: !153, line: 1073, type: !35)
!2727 = !DILocation(line: 1073, column: 14, scope: !2721)
!2728 = !DILocation(line: 1073, column: 29, scope: !2721)
!2729 = !DILocation(line: 1061, column: 18, scope: !2695, inlinedAt: !2730)
!2730 = distinct !DILocation(line: 1075, column: 10, scope: !2721)
!2731 = !DILocation(line: 1061, column: 33, scope: !2695, inlinedAt: !2730)
!2732 = !DILocation(line: 1061, column: 45, scope: !2695, inlinedAt: !2730)
!2733 = !DILocation(line: 1063, column: 10, scope: !2695, inlinedAt: !2730)
!2734 = !DILocation(line: 1075, column: 3, scope: !2721)
!2735 = distinct !DISubprogram(name: "quote", scope: !153, file: !153, line: 1079, type: !2736, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !108, retainedNodes: !2738)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!35, !35}
!2738 = !{!2739}
!2739 = !DILocalVariable(name: "arg", arg: 1, scope: !2735, file: !153, line: 1079, type: !35)
!2740 = !DILocation(line: 1079, column: 20, scope: !2735)
!2741 = !DILocation(line: 1073, column: 14, scope: !2721, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 1081, column: 10, scope: !2735)
!2743 = !DILocation(line: 1073, column: 29, scope: !2721, inlinedAt: !2742)
!2744 = !DILocation(line: 1061, column: 18, scope: !2695, inlinedAt: !2745)
!2745 = distinct !DILocation(line: 1075, column: 10, scope: !2721, inlinedAt: !2742)
!2746 = !DILocation(line: 1061, column: 33, scope: !2695, inlinedAt: !2745)
!2747 = !DILocation(line: 1061, column: 45, scope: !2695, inlinedAt: !2745)
!2748 = !DILocation(line: 1063, column: 10, scope: !2695, inlinedAt: !2745)
!2749 = !DILocation(line: 1081, column: 3, scope: !2735)
!2750 = distinct !DISubprogram(name: "version_etc_arn", scope: !205, file: !205, line: 62, type: !2751, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !2788)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{null, !2753, !35, !35, !35, !2787, !147}
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2754, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !854, line: 7, baseType: !2755)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !856, line: 49, size: 1728, elements: !2756)
!2756 = !{!2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2755, file: !856, line: 51, baseType: !25, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !2755, file: !856, line: 54, baseType: !27, size: 64, offset: 64)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !2755, file: !856, line: 55, baseType: !27, size: 64, offset: 128)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !2755, file: !856, line: 56, baseType: !27, size: 64, offset: 192)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !2755, file: !856, line: 57, baseType: !27, size: 64, offset: 256)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !2755, file: !856, line: 58, baseType: !27, size: 64, offset: 320)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !2755, file: !856, line: 59, baseType: !27, size: 64, offset: 384)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !2755, file: !856, line: 60, baseType: !27, size: 64, offset: 448)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !2755, file: !856, line: 61, baseType: !27, size: 64, offset: 512)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !2755, file: !856, line: 64, baseType: !27, size: 64, offset: 576)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !2755, file: !856, line: 65, baseType: !27, size: 64, offset: 640)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !2755, file: !856, line: 66, baseType: !27, size: 64, offset: 704)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !2755, file: !856, line: 68, baseType: !871, size: 64, offset: 768)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !2755, file: !856, line: 70, baseType: !2771, size: 64, offset: 832)
!2771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2755, size: 64)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !2755, file: !856, line: 72, baseType: !25, size: 32, offset: 896)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !2755, file: !856, line: 73, baseType: !25, size: 32, offset: 928)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !2755, file: !856, line: 74, baseType: !878, size: 64, offset: 960)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !2755, file: !856, line: 77, baseType: !146, size: 16, offset: 1024)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !2755, file: !856, line: 78, baseType: !882, size: 8, offset: 1040)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !2755, file: !856, line: 79, baseType: !884, size: 8, offset: 1048)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2755, file: !856, line: 81, baseType: !888, size: 64, offset: 1088)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !2755, file: !856, line: 89, baseType: !891, size: 64, offset: 1152)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !2755, file: !856, line: 91, baseType: !893, size: 64, offset: 1216)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !2755, file: !856, line: 92, baseType: !896, size: 64, offset: 1280)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !2755, file: !856, line: 93, baseType: !2771, size: 64, offset: 1344)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !2755, file: !856, line: 94, baseType: !64, size: 64, offset: 1408)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !2755, file: !856, line: 95, baseType: !147, size: 64, offset: 1472)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !2755, file: !856, line: 96, baseType: !25, size: 32, offset: 1536)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !2755, file: !856, line: 98, baseType: !903, size: 160, offset: 1568)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!2788 = !{!2789, !2790, !2791, !2792, !2793, !2794}
!2789 = !DILocalVariable(name: "stream", arg: 1, scope: !2750, file: !205, line: 62, type: !2753)
!2790 = !DILocalVariable(name: "command_name", arg: 2, scope: !2750, file: !205, line: 63, type: !35)
!2791 = !DILocalVariable(name: "package", arg: 3, scope: !2750, file: !205, line: 63, type: !35)
!2792 = !DILocalVariable(name: "version", arg: 4, scope: !2750, file: !205, line: 64, type: !35)
!2793 = !DILocalVariable(name: "authors", arg: 5, scope: !2750, file: !205, line: 65, type: !2787)
!2794 = !DILocalVariable(name: "n_authors", arg: 6, scope: !2750, file: !205, line: 65, type: !147)
!2795 = !DILocation(line: 62, column: 24, scope: !2750)
!2796 = !DILocation(line: 63, column: 30, scope: !2750)
!2797 = !DILocation(line: 63, column: 56, scope: !2750)
!2798 = !DILocation(line: 64, column: 30, scope: !2750)
!2799 = !DILocation(line: 65, column: 39, scope: !2750)
!2800 = !DILocation(line: 65, column: 55, scope: !2750)
!2801 = !DILocation(line: 67, column: 7, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2750, file: !205, line: 67, column: 7)
!2803 = !DILocation(line: 67, column: 7, scope: !2750)
!2804 = !DILocation(line: 68, column: 5, scope: !2802)
!2805 = !DILocation(line: 70, column: 5, scope: !2802)
!2806 = !DILocation(line: 84, column: 3, scope: !2750)
!2807 = !DILocation(line: 86, column: 3, scope: !2750)
!2808 = !DILocation(line: 95, column: 3, scope: !2750)
!2809 = !DILocation(line: 99, column: 7, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2750, file: !205, line: 96, column: 5)
!2811 = !DILocation(line: 102, column: 7, scope: !2810)
!2812 = !DILocation(line: 103, column: 7, scope: !2810)
!2813 = !DILocation(line: 106, column: 7, scope: !2810)
!2814 = !DILocation(line: 107, column: 7, scope: !2810)
!2815 = !DILocation(line: 110, column: 7, scope: !2810)
!2816 = !DILocation(line: 112, column: 7, scope: !2810)
!2817 = !DILocation(line: 117, column: 7, scope: !2810)
!2818 = !DILocation(line: 119, column: 7, scope: !2810)
!2819 = !DILocation(line: 124, column: 7, scope: !2810)
!2820 = !DILocation(line: 126, column: 7, scope: !2810)
!2821 = !DILocation(line: 131, column: 7, scope: !2810)
!2822 = !DILocation(line: 134, column: 7, scope: !2810)
!2823 = !DILocation(line: 139, column: 7, scope: !2810)
!2824 = !DILocation(line: 142, column: 7, scope: !2810)
!2825 = !DILocation(line: 147, column: 7, scope: !2810)
!2826 = !DILocation(line: 151, column: 7, scope: !2810)
!2827 = !DILocation(line: 156, column: 7, scope: !2810)
!2828 = !DILocation(line: 160, column: 7, scope: !2810)
!2829 = !DILocation(line: 167, column: 7, scope: !2810)
!2830 = !DILocation(line: 171, column: 7, scope: !2810)
!2831 = !DILocation(line: 173, column: 1, scope: !2750)
!2832 = distinct !DISubprogram(name: "version_etc_ar", scope: !205, file: !205, line: 180, type: !2833, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !2835)
!2833 = !DISubroutineType(types: !2834)
!2834 = !{null, !2753, !35, !35, !35, !2787}
!2835 = !{!2836, !2837, !2838, !2839, !2840, !2841}
!2836 = !DILocalVariable(name: "stream", arg: 1, scope: !2832, file: !205, line: 180, type: !2753)
!2837 = !DILocalVariable(name: "command_name", arg: 2, scope: !2832, file: !205, line: 181, type: !35)
!2838 = !DILocalVariable(name: "package", arg: 3, scope: !2832, file: !205, line: 181, type: !35)
!2839 = !DILocalVariable(name: "version", arg: 4, scope: !2832, file: !205, line: 182, type: !35)
!2840 = !DILocalVariable(name: "authors", arg: 5, scope: !2832, file: !205, line: 182, type: !2787)
!2841 = !DILocalVariable(name: "n_authors", scope: !2832, file: !205, line: 184, type: !147)
!2842 = !DILocation(line: 180, column: 23, scope: !2832)
!2843 = !DILocation(line: 181, column: 29, scope: !2832)
!2844 = !DILocation(line: 181, column: 55, scope: !2832)
!2845 = !DILocation(line: 182, column: 29, scope: !2832)
!2846 = !DILocation(line: 182, column: 59, scope: !2832)
!2847 = !DILocation(line: 184, column: 10, scope: !2832)
!2848 = !DILocation(line: 186, column: 8, scope: !2849)
!2849 = distinct !DILexicalBlock(scope: !2832, file: !205, line: 186, column: 3)
!2850 = !DILocation(line: 0, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2849, file: !205, line: 186, column: 3)
!2852 = !DILocation(line: 186, column: 23, scope: !2851)
!2853 = !DILocation(line: 186, column: 3, scope: !2849)
!2854 = !DILocation(line: 186, column: 52, scope: !2851)
!2855 = distinct !{!2855, !2853, !2856}
!2856 = !DILocation(line: 187, column: 5, scope: !2849)
!2857 = !DILocation(line: 188, column: 3, scope: !2832)
!2858 = !DILocation(line: 189, column: 1, scope: !2832)
!2859 = distinct !DISubprogram(name: "version_etc_va", scope: !205, file: !205, line: 196, type: !2860, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !2869)
!2860 = !DISubroutineType(types: !2861)
!2861 = !{null, !2753, !35, !35, !35, !2862}
!2862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2863, size: 64)
!2863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !202, line: 189, size: 192, elements: !2864)
!2864 = !{!2865, !2866, !2867, !2868}
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2863, file: !202, line: 189, baseType: !7, size: 32)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2863, file: !202, line: 189, baseType: !7, size: 32, offset: 32)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2863, file: !202, line: 189, baseType: !64, size: 64, offset: 64)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2863, file: !202, line: 189, baseType: !64, size: 64, offset: 128)
!2869 = !{!2870, !2871, !2872, !2873, !2874, !2875, !2876}
!2870 = !DILocalVariable(name: "stream", arg: 1, scope: !2859, file: !205, line: 196, type: !2753)
!2871 = !DILocalVariable(name: "command_name", arg: 2, scope: !2859, file: !205, line: 197, type: !35)
!2872 = !DILocalVariable(name: "package", arg: 3, scope: !2859, file: !205, line: 197, type: !35)
!2873 = !DILocalVariable(name: "version", arg: 4, scope: !2859, file: !205, line: 198, type: !35)
!2874 = !DILocalVariable(name: "authors", arg: 5, scope: !2859, file: !205, line: 198, type: !2862)
!2875 = !DILocalVariable(name: "n_authors", scope: !2859, file: !205, line: 200, type: !147)
!2876 = !DILocalVariable(name: "authtab", scope: !2859, file: !205, line: 201, type: !2877)
!2877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 640, elements: !156)
!2878 = !DILocation(line: 196, column: 23, scope: !2859)
!2879 = !DILocation(line: 197, column: 29, scope: !2859)
!2880 = !DILocation(line: 197, column: 55, scope: !2859)
!2881 = !DILocation(line: 198, column: 29, scope: !2859)
!2882 = !DILocation(line: 198, column: 46, scope: !2859)
!2883 = !DILocation(line: 201, column: 3, scope: !2859)
!2884 = !DILocation(line: 201, column: 15, scope: !2859)
!2885 = !DILocation(line: 200, column: 10, scope: !2859)
!2886 = !DILocation(line: 205, column: 35, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !205, line: 203, column: 3)
!2888 = distinct !DILexicalBlock(scope: !2859, file: !205, line: 203, column: 3)
!2889 = !DILocation(line: 205, column: 14, scope: !2887)
!2890 = !DILocation(line: 205, column: 33, scope: !2887)
!2891 = !DILocation(line: 205, column: 67, scope: !2887)
!2892 = !DILocation(line: 203, column: 3, scope: !2888)
!2893 = !DILocation(line: 0, scope: !2887)
!2894 = !DILocation(line: 208, column: 3, scope: !2859)
!2895 = !DILocation(line: 210, column: 1, scope: !2859)
!2896 = distinct !DISubprogram(name: "version_etc", scope: !205, file: !205, line: 227, type: !2897, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !2899)
!2897 = !DISubroutineType(types: !2898)
!2898 = !{null, !2753, !35, !35, !35, null}
!2899 = !{!2900, !2901, !2902, !2903, !2904}
!2900 = !DILocalVariable(name: "stream", arg: 1, scope: !2896, file: !205, line: 227, type: !2753)
!2901 = !DILocalVariable(name: "command_name", arg: 2, scope: !2896, file: !205, line: 228, type: !35)
!2902 = !DILocalVariable(name: "package", arg: 3, scope: !2896, file: !205, line: 228, type: !35)
!2903 = !DILocalVariable(name: "version", arg: 4, scope: !2896, file: !205, line: 229, type: !35)
!2904 = !DILocalVariable(name: "authors", scope: !2896, file: !205, line: 231, type: !2905)
!2905 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2906, line: 52, baseType: !2907)
!2906 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2908, line: 48, baseType: !2909)
!2908 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2909 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !202, line: 231, baseType: !2910)
!2910 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2863, size: 192, elements: !885)
!2911 = !DILocation(line: 227, column: 20, scope: !2896)
!2912 = !DILocation(line: 228, column: 26, scope: !2896)
!2913 = !DILocation(line: 228, column: 52, scope: !2896)
!2914 = !DILocation(line: 229, column: 26, scope: !2896)
!2915 = !DILocation(line: 231, column: 3, scope: !2896)
!2916 = !DILocation(line: 231, column: 11, scope: !2896)
!2917 = !DILocation(line: 233, column: 3, scope: !2896)
!2918 = !DILocation(line: 234, column: 3, scope: !2896)
!2919 = !DILocation(line: 235, column: 3, scope: !2896)
!2920 = !DILocation(line: 236, column: 1, scope: !2896)
!2921 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !205, file: !205, line: 239, type: !681, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !201, retainedNodes: !82)
!2922 = !DILocation(line: 245, column: 3, scope: !2921)
!2923 = !DILocation(line: 251, column: 3, scope: !2921)
!2924 = !DILocation(line: 256, column: 3, scope: !2921)
!2925 = !DILocation(line: 258, column: 1, scope: !2921)
!2926 = distinct !DISubprogram(name: "xnmalloc", scope: !213, file: !213, line: 99, type: !2927, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2929)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{!64, !147, !147}
!2929 = !{!2930, !2931}
!2930 = !DILocalVariable(name: "n", arg: 1, scope: !2926, file: !213, line: 99, type: !147)
!2931 = !DILocalVariable(name: "s", arg: 2, scope: !2926, file: !213, line: 99, type: !147)
!2932 = !DILocation(line: 99, column: 18, scope: !2926)
!2933 = !DILocation(line: 99, column: 28, scope: !2926)
!2934 = !DILocation(line: 101, column: 7, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2926, file: !213, line: 101, column: 7)
!2936 = !DILocation(line: 101, column: 7, scope: !2926)
!2937 = !DILocation(line: 102, column: 5, scope: !2935)
!2938 = !DILocation(line: 103, column: 21, scope: !2926)
!2939 = !DILocalVariable(name: "n", arg: 1, scope: !2940, file: !2941, line: 39, type: !147)
!2940 = distinct !DISubprogram(name: "xmalloc", scope: !2941, file: !2941, line: 39, type: !2942, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2944)
!2941 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2942 = !DISubroutineType(types: !2943)
!2943 = !{!64, !147}
!2944 = !{!2939, !2945}
!2945 = !DILocalVariable(name: "p", scope: !2940, file: !2941, line: 41, type: !64)
!2946 = !DILocation(line: 39, column: 17, scope: !2940, inlinedAt: !2947)
!2947 = distinct !DILocation(line: 103, column: 10, scope: !2926)
!2948 = !DILocation(line: 41, column: 13, scope: !2940, inlinedAt: !2947)
!2949 = !DILocation(line: 41, column: 9, scope: !2940, inlinedAt: !2947)
!2950 = !DILocation(line: 42, column: 8, scope: !2951, inlinedAt: !2947)
!2951 = distinct !DILexicalBlock(scope: !2940, file: !2941, line: 42, column: 7)
!2952 = !DILocation(line: 42, column: 15, scope: !2951, inlinedAt: !2947)
!2953 = !DILocation(line: 42, column: 10, scope: !2951, inlinedAt: !2947)
!2954 = !DILocation(line: 43, column: 5, scope: !2951, inlinedAt: !2947)
!2955 = !DILocation(line: 103, column: 3, scope: !2926)
!2956 = !DILocation(line: 39, column: 17, scope: !2940)
!2957 = !DILocation(line: 41, column: 13, scope: !2940)
!2958 = !DILocation(line: 41, column: 9, scope: !2940)
!2959 = !DILocation(line: 42, column: 8, scope: !2951)
!2960 = !DILocation(line: 42, column: 15, scope: !2951)
!2961 = !DILocation(line: 42, column: 10, scope: !2951)
!2962 = !DILocation(line: 43, column: 5, scope: !2951)
!2963 = !DILocation(line: 44, column: 3, scope: !2940)
!2964 = distinct !DISubprogram(name: "xnrealloc", scope: !213, file: !213, line: 112, type: !2965, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!64, !64, !147, !147}
!2967 = !{!2968, !2969, !2970}
!2968 = !DILocalVariable(name: "p", arg: 1, scope: !2964, file: !213, line: 112, type: !64)
!2969 = !DILocalVariable(name: "n", arg: 2, scope: !2964, file: !213, line: 112, type: !147)
!2970 = !DILocalVariable(name: "s", arg: 3, scope: !2964, file: !213, line: 112, type: !147)
!2971 = !DILocation(line: 112, column: 18, scope: !2964)
!2972 = !DILocation(line: 112, column: 28, scope: !2964)
!2973 = !DILocation(line: 112, column: 38, scope: !2964)
!2974 = !DILocation(line: 114, column: 7, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2964, file: !213, line: 114, column: 7)
!2976 = !DILocation(line: 114, column: 7, scope: !2964)
!2977 = !DILocation(line: 115, column: 5, scope: !2975)
!2978 = !DILocation(line: 116, column: 25, scope: !2964)
!2979 = !DILocalVariable(name: "p", arg: 1, scope: !2980, file: !2941, line: 51, type: !64)
!2980 = distinct !DISubprogram(name: "xrealloc", scope: !2941, file: !2941, line: 51, type: !2981, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !2983)
!2981 = !DISubroutineType(types: !2982)
!2982 = !{!64, !64, !147}
!2983 = !{!2979, !2984}
!2984 = !DILocalVariable(name: "n", arg: 2, scope: !2980, file: !2941, line: 51, type: !147)
!2985 = !DILocation(line: 51, column: 17, scope: !2980, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 116, column: 10, scope: !2964)
!2987 = !DILocation(line: 51, column: 27, scope: !2980, inlinedAt: !2986)
!2988 = !DILocation(line: 53, column: 8, scope: !2989, inlinedAt: !2986)
!2989 = distinct !DILexicalBlock(scope: !2980, file: !2941, line: 53, column: 7)
!2990 = !DILocation(line: 53, column: 13, scope: !2989, inlinedAt: !2986)
!2991 = !DILocation(line: 53, column: 10, scope: !2989, inlinedAt: !2986)
!2992 = !DILocation(line: 57, column: 7, scope: !2993, inlinedAt: !2986)
!2993 = distinct !DILexicalBlock(scope: !2989, file: !2941, line: 54, column: 5)
!2994 = !DILocation(line: 58, column: 7, scope: !2993, inlinedAt: !2986)
!2995 = !DILocation(line: 61, column: 7, scope: !2980, inlinedAt: !2986)
!2996 = !DILocation(line: 62, column: 8, scope: !2997, inlinedAt: !2986)
!2997 = distinct !DILexicalBlock(scope: !2980, file: !2941, line: 62, column: 7)
!2998 = !DILocation(line: 62, column: 13, scope: !2997, inlinedAt: !2986)
!2999 = !DILocation(line: 62, column: 10, scope: !2997, inlinedAt: !2986)
!3000 = !DILocation(line: 63, column: 5, scope: !2997, inlinedAt: !2986)
!3001 = !DILocation(line: 0, scope: !2980, inlinedAt: !2986)
!3002 = !DILocation(line: 116, column: 3, scope: !2964)
!3003 = !DILocation(line: 51, column: 17, scope: !2980)
!3004 = !DILocation(line: 51, column: 27, scope: !2980)
!3005 = !DILocation(line: 53, column: 8, scope: !2989)
!3006 = !DILocation(line: 53, column: 13, scope: !2989)
!3007 = !DILocation(line: 53, column: 10, scope: !2989)
!3008 = !DILocation(line: 57, column: 7, scope: !2993)
!3009 = !DILocation(line: 58, column: 7, scope: !2993)
!3010 = !DILocation(line: 61, column: 7, scope: !2980)
!3011 = !DILocation(line: 62, column: 8, scope: !2997)
!3012 = !DILocation(line: 62, column: 13, scope: !2997)
!3013 = !DILocation(line: 62, column: 10, scope: !2997)
!3014 = !DILocation(line: 63, column: 5, scope: !2997)
!3015 = !DILocation(line: 0, scope: !2980)
!3016 = !DILocation(line: 65, column: 1, scope: !2980)
!3017 = !DILocation(line: 174, column: 19, scope: !214)
!3018 = !DILocation(line: 174, column: 30, scope: !214)
!3019 = !DILocation(line: 174, column: 41, scope: !214)
!3020 = !DILocation(line: 176, column: 14, scope: !214)
!3021 = !DILocation(line: 176, column: 10, scope: !214)
!3022 = !DILocation(line: 178, column: 9, scope: !3023)
!3023 = distinct !DILexicalBlock(scope: !214, file: !213, line: 178, column: 7)
!3024 = !DILocation(line: 178, column: 7, scope: !214)
!3025 = !DILocation(line: 180, column: 13, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3027, file: !213, line: 180, column: 11)
!3027 = distinct !DILexicalBlock(scope: !3023, file: !213, line: 179, column: 5)
!3028 = !DILocation(line: 180, column: 11, scope: !3027)
!3029 = !DILocation(line: 188, column: 30, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3026, file: !213, line: 181, column: 9)
!3031 = !DILocation(line: 189, column: 16, scope: !3030)
!3032 = !DILocation(line: 189, column: 13, scope: !3030)
!3033 = !DILocation(line: 190, column: 9, scope: !3030)
!3034 = !DILocation(line: 0, scope: !3030)
!3035 = !DILocation(line: 191, column: 11, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3027, file: !213, line: 191, column: 11)
!3037 = !DILocation(line: 191, column: 11, scope: !3027)
!3038 = !DILocation(line: 206, column: 7, scope: !214)
!3039 = !DILocation(line: 207, column: 25, scope: !214)
!3040 = !DILocation(line: 51, column: 17, scope: !2980, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 207, column: 10, scope: !214)
!3042 = !DILocation(line: 51, column: 27, scope: !2980, inlinedAt: !3041)
!3043 = !DILocation(line: 53, column: 10, scope: !2989, inlinedAt: !3041)
!3044 = !DILocation(line: 192, column: 9, scope: !3036)
!3045 = !DILocation(line: 200, column: 69, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3047, file: !213, line: 200, column: 11)
!3047 = distinct !DILexicalBlock(scope: !3023, file: !213, line: 195, column: 5)
!3048 = !DILocation(line: 201, column: 11, scope: !3046)
!3049 = !DILocation(line: 200, column: 11, scope: !3047)
!3050 = !DILocation(line: 202, column: 9, scope: !3046)
!3051 = !DILocation(line: 203, column: 14, scope: !3047)
!3052 = !DILocation(line: 203, column: 18, scope: !3047)
!3053 = !DILocation(line: 203, column: 9, scope: !3047)
!3054 = !DILocation(line: 53, column: 8, scope: !2989, inlinedAt: !3041)
!3055 = !DILocation(line: 57, column: 7, scope: !2993, inlinedAt: !3041)
!3056 = !DILocation(line: 58, column: 7, scope: !2993, inlinedAt: !3041)
!3057 = !DILocation(line: 61, column: 7, scope: !2980, inlinedAt: !3041)
!3058 = !DILocation(line: 62, column: 8, scope: !2997, inlinedAt: !3041)
!3059 = !DILocation(line: 62, column: 13, scope: !2997, inlinedAt: !3041)
!3060 = !DILocation(line: 62, column: 10, scope: !2997, inlinedAt: !3041)
!3061 = !DILocation(line: 63, column: 5, scope: !2997, inlinedAt: !3041)
!3062 = !DILocation(line: 0, scope: !2980, inlinedAt: !3041)
!3063 = !DILocation(line: 207, column: 3, scope: !214)
!3064 = distinct !DISubprogram(name: "xcharalloc", scope: !213, file: !213, line: 216, type: !2036, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3065)
!3065 = !{!3066}
!3066 = !DILocalVariable(name: "n", arg: 1, scope: !3064, file: !213, line: 216, type: !147)
!3067 = !DILocation(line: 216, column: 20, scope: !3064)
!3068 = !DILocation(line: 39, column: 17, scope: !2940, inlinedAt: !3069)
!3069 = distinct !DILocation(line: 218, column: 10, scope: !3064)
!3070 = !DILocation(line: 41, column: 13, scope: !2940, inlinedAt: !3069)
!3071 = !DILocation(line: 41, column: 9, scope: !2940, inlinedAt: !3069)
!3072 = !DILocation(line: 42, column: 8, scope: !2951, inlinedAt: !3069)
!3073 = !DILocation(line: 42, column: 15, scope: !2951, inlinedAt: !3069)
!3074 = !DILocation(line: 42, column: 10, scope: !2951, inlinedAt: !3069)
!3075 = !DILocation(line: 43, column: 5, scope: !2951, inlinedAt: !3069)
!3076 = !DILocation(line: 218, column: 3, scope: !3064)
!3077 = distinct !DISubprogram(name: "x2realloc", scope: !2941, file: !2941, line: 74, type: !3078, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3080)
!3078 = !DISubroutineType(types: !3079)
!3079 = !{!64, !64, !217}
!3080 = !{!3081, !3082}
!3081 = !DILocalVariable(name: "p", arg: 1, scope: !3077, file: !2941, line: 74, type: !64)
!3082 = !DILocalVariable(name: "pn", arg: 2, scope: !3077, file: !2941, line: 74, type: !217)
!3083 = !DILocation(line: 74, column: 18, scope: !3077)
!3084 = !DILocation(line: 74, column: 29, scope: !3077)
!3085 = !DILocation(line: 174, column: 19, scope: !214, inlinedAt: !3086)
!3086 = distinct !DILocation(line: 76, column: 10, scope: !3077)
!3087 = !DILocation(line: 174, column: 30, scope: !214, inlinedAt: !3086)
!3088 = !DILocation(line: 174, column: 41, scope: !214, inlinedAt: !3086)
!3089 = !DILocation(line: 176, column: 14, scope: !214, inlinedAt: !3086)
!3090 = !DILocation(line: 176, column: 10, scope: !214, inlinedAt: !3086)
!3091 = !DILocation(line: 178, column: 9, scope: !3023, inlinedAt: !3086)
!3092 = !DILocation(line: 178, column: 7, scope: !214, inlinedAt: !3086)
!3093 = !DILocation(line: 180, column: 13, scope: !3026, inlinedAt: !3086)
!3094 = !DILocation(line: 180, column: 11, scope: !3027, inlinedAt: !3086)
!3095 = !DILocation(line: 191, column: 11, scope: !3036, inlinedAt: !3086)
!3096 = !DILocation(line: 191, column: 11, scope: !3027, inlinedAt: !3086)
!3097 = !DILocation(line: 206, column: 7, scope: !214, inlinedAt: !3086)
!3098 = !DILocation(line: 51, column: 17, scope: !2980, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 207, column: 10, scope: !214, inlinedAt: !3086)
!3100 = !DILocation(line: 51, column: 27, scope: !2980, inlinedAt: !3099)
!3101 = !DILocation(line: 53, column: 10, scope: !2989, inlinedAt: !3099)
!3102 = !DILocation(line: 192, column: 9, scope: !3036, inlinedAt: !3086)
!3103 = !DILocation(line: 201, column: 11, scope: !3046, inlinedAt: !3086)
!3104 = !DILocation(line: 200, column: 11, scope: !3047, inlinedAt: !3086)
!3105 = !DILocation(line: 202, column: 9, scope: !3046, inlinedAt: !3086)
!3106 = !DILocation(line: 203, column: 14, scope: !3047, inlinedAt: !3086)
!3107 = !DILocation(line: 203, column: 18, scope: !3047, inlinedAt: !3086)
!3108 = !DILocation(line: 203, column: 9, scope: !3047, inlinedAt: !3086)
!3109 = !DILocation(line: 53, column: 8, scope: !2989, inlinedAt: !3099)
!3110 = !DILocation(line: 57, column: 7, scope: !2993, inlinedAt: !3099)
!3111 = !DILocation(line: 58, column: 7, scope: !2993, inlinedAt: !3099)
!3112 = !DILocation(line: 61, column: 7, scope: !2980, inlinedAt: !3099)
!3113 = !DILocation(line: 62, column: 8, scope: !2997, inlinedAt: !3099)
!3114 = !DILocation(line: 62, column: 13, scope: !2997, inlinedAt: !3099)
!3115 = !DILocation(line: 62, column: 10, scope: !2997, inlinedAt: !3099)
!3116 = !DILocation(line: 63, column: 5, scope: !2997, inlinedAt: !3099)
!3117 = !DILocation(line: 0, scope: !2980, inlinedAt: !3099)
!3118 = !DILocation(line: 76, column: 3, scope: !3077)
!3119 = distinct !DISubprogram(name: "xzalloc", scope: !2941, file: !2941, line: 84, type: !2942, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3120)
!3120 = !{!3121}
!3121 = !DILocalVariable(name: "s", arg: 1, scope: !3119, file: !2941, line: 84, type: !147)
!3122 = !DILocation(line: 84, column: 17, scope: !3119)
!3123 = !DILocation(line: 39, column: 17, scope: !2940, inlinedAt: !3124)
!3124 = distinct !DILocation(line: 86, column: 18, scope: !3119)
!3125 = !DILocation(line: 41, column: 13, scope: !2940, inlinedAt: !3124)
!3126 = !DILocation(line: 41, column: 9, scope: !2940, inlinedAt: !3124)
!3127 = !DILocation(line: 42, column: 8, scope: !2951, inlinedAt: !3124)
!3128 = !DILocation(line: 42, column: 15, scope: !2951, inlinedAt: !3124)
!3129 = !DILocation(line: 42, column: 10, scope: !2951, inlinedAt: !3124)
!3130 = !DILocation(line: 43, column: 5, scope: !2951, inlinedAt: !3124)
!3131 = !DILocation(line: 86, column: 10, scope: !3119)
!3132 = !DILocation(line: 86, column: 3, scope: !3119)
!3133 = distinct !DISubprogram(name: "xcalloc", scope: !2941, file: !2941, line: 93, type: !2927, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3134)
!3134 = !{!3135, !3136, !3137}
!3135 = !DILocalVariable(name: "n", arg: 1, scope: !3133, file: !2941, line: 93, type: !147)
!3136 = !DILocalVariable(name: "s", arg: 2, scope: !3133, file: !2941, line: 93, type: !147)
!3137 = !DILocalVariable(name: "p", scope: !3133, file: !2941, line: 95, type: !64)
!3138 = !DILocation(line: 93, column: 17, scope: !3133)
!3139 = !DILocation(line: 93, column: 27, scope: !3133)
!3140 = !DILocation(line: 100, column: 7, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3133, file: !2941, line: 100, column: 7)
!3142 = !DILocation(line: 101, column: 7, scope: !3141)
!3143 = !DILocation(line: 101, column: 18, scope: !3141)
!3144 = !DILocation(line: 95, column: 9, scope: !3133)
!3145 = !DILocation(line: 101, column: 16, scope: !3141)
!3146 = !DILocation(line: 100, column: 7, scope: !3133)
!3147 = !DILocation(line: 102, column: 5, scope: !3141)
!3148 = !DILocation(line: 103, column: 3, scope: !3133)
!3149 = distinct !DISubprogram(name: "xmemdup", scope: !2941, file: !2941, line: 111, type: !3150, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3154)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!64, !3152, !147}
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3153, size: 64)
!3153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3154 = !{!3155, !3156}
!3155 = !DILocalVariable(name: "p", arg: 1, scope: !3149, file: !2941, line: 111, type: !3152)
!3156 = !DILocalVariable(name: "s", arg: 2, scope: !3149, file: !2941, line: 111, type: !147)
!3157 = !DILocation(line: 111, column: 22, scope: !3149)
!3158 = !DILocation(line: 111, column: 32, scope: !3149)
!3159 = !DILocation(line: 39, column: 17, scope: !2940, inlinedAt: !3160)
!3160 = distinct !DILocation(line: 113, column: 18, scope: !3149)
!3161 = !DILocation(line: 41, column: 13, scope: !2940, inlinedAt: !3160)
!3162 = !DILocation(line: 41, column: 9, scope: !2940, inlinedAt: !3160)
!3163 = !DILocation(line: 42, column: 8, scope: !2951, inlinedAt: !3160)
!3164 = !DILocation(line: 42, column: 15, scope: !2951, inlinedAt: !3160)
!3165 = !DILocation(line: 42, column: 10, scope: !2951, inlinedAt: !3160)
!3166 = !DILocation(line: 43, column: 5, scope: !2951, inlinedAt: !3160)
!3167 = !DILocation(line: 113, column: 10, scope: !3149)
!3168 = !DILocation(line: 113, column: 3, scope: !3149)
!3169 = distinct !DISubprogram(name: "xstrdup", scope: !2941, file: !2941, line: 119, type: !2240, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !209, retainedNodes: !3170)
!3170 = !{!3171}
!3171 = !DILocalVariable(name: "string", arg: 1, scope: !3169, file: !2941, line: 119, type: !35)
!3172 = !DILocation(line: 119, column: 22, scope: !3169)
!3173 = !DILocation(line: 121, column: 27, scope: !3169)
!3174 = !DILocation(line: 121, column: 43, scope: !3169)
!3175 = !DILocation(line: 111, column: 22, scope: !3149, inlinedAt: !3176)
!3176 = distinct !DILocation(line: 121, column: 10, scope: !3169)
!3177 = !DILocation(line: 111, column: 32, scope: !3149, inlinedAt: !3176)
!3178 = !DILocation(line: 39, column: 17, scope: !2940, inlinedAt: !3179)
!3179 = distinct !DILocation(line: 113, column: 18, scope: !3149, inlinedAt: !3176)
!3180 = !DILocation(line: 41, column: 13, scope: !2940, inlinedAt: !3179)
!3181 = !DILocation(line: 41, column: 9, scope: !2940, inlinedAt: !3179)
!3182 = !DILocation(line: 42, column: 8, scope: !2951, inlinedAt: !3179)
!3183 = !DILocation(line: 42, column: 15, scope: !2951, inlinedAt: !3179)
!3184 = !DILocation(line: 42, column: 10, scope: !2951, inlinedAt: !3179)
!3185 = !DILocation(line: 43, column: 5, scope: !2951, inlinedAt: !3179)
!3186 = !DILocation(line: 113, column: 10, scope: !3149, inlinedAt: !3176)
!3187 = !DILocation(line: 121, column: 3, scope: !3169)
!3188 = distinct !DISubprogram(name: "xalloc_die", scope: !3189, file: !3189, line: 32, type: !681, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !226, retainedNodes: !82)
!3189 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3190 = !DILocation(line: 34, column: 10, scope: !3188)
!3191 = !DILocation(line: 34, column: 33, scope: !3188)
!3192 = !DILocation(line: 34, column: 3, scope: !3188)
!3193 = !DILocation(line: 40, column: 3, scope: !3188)
!3194 = distinct !DISubprogram(name: "xstrtol", scope: !3195, file: !3195, line: 88, type: !3196, isLocal: false, isDefinition: true, scopeLine: 90, flags: DIFlagPrototyped, isOptimized: true, unit: !228, retainedNodes: !3200)
!3195 = !DIFile(filename: "lib/xstrtol.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3196 = !DISubroutineType(types: !3197)
!3197 = !{!3198, !35, !26, !25, !3199, !35}
!3198 = !DIDerivedType(tag: DW_TAG_typedef, name: "strtol_error", file: !14, line: 39, baseType: !13)
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!3200 = !{!3201, !3202, !3203, !3204, !3205, !3206, !3207, !3208, !3209, !3210, !3213, !3214}
!3201 = !DILocalVariable(name: "s", arg: 1, scope: !3194, file: !3195, line: 88, type: !35)
!3202 = !DILocalVariable(name: "ptr", arg: 2, scope: !3194, file: !3195, line: 88, type: !26)
!3203 = !DILocalVariable(name: "strtol_base", arg: 3, scope: !3194, file: !3195, line: 88, type: !25)
!3204 = !DILocalVariable(name: "val", arg: 4, scope: !3194, file: !3195, line: 89, type: !3199)
!3205 = !DILocalVariable(name: "valid_suffixes", arg: 5, scope: !3194, file: !3195, line: 89, type: !35)
!3206 = !DILocalVariable(name: "t_ptr", scope: !3194, file: !3195, line: 91, type: !27)
!3207 = !DILocalVariable(name: "p", scope: !3194, file: !3195, line: 92, type: !26)
!3208 = !DILocalVariable(name: "tmp", scope: !3194, file: !3195, line: 93, type: !52)
!3209 = !DILocalVariable(name: "err", scope: !3194, file: !3195, line: 94, type: !3198)
!3210 = !DILocalVariable(name: "base", scope: !3211, file: !3195, line: 141, type: !25)
!3211 = distinct !DILexicalBlock(scope: !3212, file: !3195, line: 140, column: 5)
!3212 = distinct !DILexicalBlock(scope: !3194, file: !3195, line: 139, column: 7)
!3213 = !DILocalVariable(name: "suffixes", scope: !3211, file: !3195, line: 142, type: !25)
!3214 = !DILocalVariable(name: "overflow", scope: !3211, file: !3195, line: 143, type: !3198)
!3215 = !DILocation(line: 88, column: 24, scope: !3194)
!3216 = !DILocation(line: 88, column: 34, scope: !3194)
!3217 = !DILocation(line: 88, column: 43, scope: !3194)
!3218 = !DILocation(line: 89, column: 24, scope: !3194)
!3219 = !DILocation(line: 89, column: 41, scope: !3194)
!3220 = !DILocation(line: 91, column: 3, scope: !3194)
!3221 = !DILocation(line: 94, column: 16, scope: !3194)
!3222 = !DILocation(line: 96, column: 3, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !3195, line: 96, column: 3)
!3224 = distinct !DILexicalBlock(scope: !3194, file: !3195, line: 96, column: 3)
!3225 = !DILocation(line: 98, column: 8, scope: !3194)
!3226 = !DILocation(line: 92, column: 10, scope: !3194)
!3227 = !DILocation(line: 100, column: 3, scope: !3194)
!3228 = !DILocation(line: 100, column: 9, scope: !3194)
!3229 = !DILocation(line: 112, column: 9, scope: !3194)
!3230 = !DILocation(line: 93, column: 14, scope: !3194)
!3231 = !DILocation(line: 114, column: 7, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3194, file: !3195, line: 114, column: 7)
!3233 = !DILocation(line: 114, column: 10, scope: !3232)
!3234 = !DILocation(line: 114, column: 7, scope: !3194)
!3235 = !DILocation(line: 118, column: 11, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !3195, line: 118, column: 11)
!3237 = distinct !DILexicalBlock(scope: !3232, file: !3195, line: 115, column: 5)
!3238 = !DILocation(line: 118, column: 26, scope: !3236)
!3239 = !DILocation(line: 118, column: 29, scope: !3236)
!3240 = !DILocation(line: 118, column: 33, scope: !3236)
!3241 = !DILocation(line: 118, column: 36, scope: !3236)
!3242 = !DILocation(line: 118, column: 11, scope: !3237)
!3243 = !DILocation(line: 123, column: 12, scope: !3244)
!3244 = distinct !DILexicalBlock(scope: !3232, file: !3195, line: 123, column: 12)
!3245 = !DILocation(line: 123, column: 12, scope: !3232)
!3246 = !DILocation(line: 128, column: 5, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3244, file: !3195, line: 124, column: 5)
!3248 = !DILocation(line: 0, scope: !3194)
!3249 = !DILocation(line: 133, column: 8, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3194, file: !3195, line: 133, column: 7)
!3251 = !DILocation(line: 133, column: 7, scope: !3194)
!3252 = !DILocation(line: 135, column: 12, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3250, file: !3195, line: 134, column: 5)
!3254 = !DILocation(line: 136, column: 7, scope: !3253)
!3255 = !DILocation(line: 139, column: 7, scope: !3212)
!3256 = !DILocation(line: 139, column: 11, scope: !3212)
!3257 = !DILocation(line: 139, column: 7, scope: !3194)
!3258 = !DILocation(line: 141, column: 11, scope: !3211)
!3259 = !DILocation(line: 142, column: 11, scope: !3211)
!3260 = !DILocation(line: 145, column: 12, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3211, file: !3195, line: 145, column: 11)
!3262 = !DILocation(line: 145, column: 11, scope: !3211)
!3263 = !DILocation(line: 147, column: 16, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3261, file: !3195, line: 146, column: 9)
!3265 = !DILocation(line: 148, column: 22, scope: !3264)
!3266 = !DILocation(line: 148, column: 11, scope: !3264)
!3267 = !DILocation(line: 151, column: 7, scope: !3211)
!3268 = !DILocation(line: 163, column: 15, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !3195, line: 163, column: 15)
!3270 = distinct !DILexicalBlock(scope: !3211, file: !3195, line: 152, column: 9)
!3271 = !DILocation(line: 163, column: 15, scope: !3270)
!3272 = !DILocation(line: 164, column: 21, scope: !3269)
!3273 = !DILocation(line: 164, column: 13, scope: !3269)
!3274 = !DILocation(line: 167, column: 21, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3276, file: !3195, line: 167, column: 21)
!3276 = distinct !DILexicalBlock(scope: !3269, file: !3195, line: 165, column: 15)
!3277 = !DILocation(line: 167, column: 29, scope: !3275)
!3278 = !DILocation(line: 167, column: 21, scope: !3276)
!3279 = !DILocation(line: 175, column: 17, scope: !3276)
!3280 = !DILocation(line: 179, column: 7, scope: !3211)
!3281 = !DILocalVariable(name: "scale_factor", arg: 2, scope: !3282, file: !3195, line: 60, type: !25)
!3282 = distinct !DISubprogram(name: "bkm_scale", scope: !3195, file: !3195, line: 60, type: !3283, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !228, retainedNodes: !3285)
!3283 = !DISubroutineType(types: !3284)
!3284 = !{!3198, !3199, !25}
!3285 = !{!3286, !3281}
!3286 = !DILocalVariable(name: "x", arg: 1, scope: !3282, file: !3195, line: 60, type: !3199)
!3287 = !DILocation(line: 60, column: 31, scope: !3282, inlinedAt: !3288)
!3288 = distinct !DILocation(line: 182, column: 22, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3211, file: !3195, line: 180, column: 9)
!3290 = !DILocation(line: 62, column: 38, scope: !3291, inlinedAt: !3288)
!3291 = distinct !DILexicalBlock(scope: !3282, file: !3195, line: 62, column: 7)
!3292 = !DILocation(line: 62, column: 7, scope: !3282, inlinedAt: !3288)
!3293 = !DILocation(line: 67, column: 39, scope: !3294, inlinedAt: !3288)
!3294 = distinct !DILexicalBlock(scope: !3282, file: !3195, line: 67, column: 7)
!3295 = !DILocation(line: 72, column: 6, scope: !3282, inlinedAt: !3288)
!3296 = !DILocation(line: 67, column: 7, scope: !3282, inlinedAt: !3288)
!3297 = !DILocation(line: 60, column: 31, scope: !3282, inlinedAt: !3298)
!3298 = distinct !DILocation(line: 189, column: 22, scope: !3289)
!3299 = !DILocation(line: 62, column: 38, scope: !3291, inlinedAt: !3298)
!3300 = !DILocation(line: 62, column: 7, scope: !3282, inlinedAt: !3298)
!3301 = !DILocation(line: 67, column: 39, scope: !3294, inlinedAt: !3298)
!3302 = !DILocation(line: 72, column: 6, scope: !3282, inlinedAt: !3298)
!3303 = !DILocation(line: 67, column: 7, scope: !3282, inlinedAt: !3298)
!3304 = !DILocalVariable(name: "power", arg: 3, scope: !3305, file: !3195, line: 77, type: !25)
!3305 = distinct !DISubprogram(name: "bkm_scale_by_power", scope: !3195, file: !3195, line: 77, type: !3306, isLocal: true, isDefinition: true, scopeLine: 78, flags: DIFlagPrototyped, isOptimized: true, unit: !228, retainedNodes: !3308)
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!3198, !3199, !25, !25}
!3308 = !{!3309, !3310, !3304, !3311}
!3309 = !DILocalVariable(name: "x", arg: 1, scope: !3305, file: !3195, line: 77, type: !3199)
!3310 = !DILocalVariable(name: "base", arg: 2, scope: !3305, file: !3195, line: 77, type: !25)
!3311 = !DILocalVariable(name: "err", scope: !3305, file: !3195, line: 79, type: !3198)
!3312 = !DILocation(line: 77, column: 50, scope: !3305, inlinedAt: !3313)
!3313 = distinct !DILocation(line: 197, column: 22, scope: !3289)
!3314 = !DILocation(line: 79, column: 16, scope: !3305, inlinedAt: !3313)
!3315 = !DILocation(line: 62, column: 38, scope: !3291, inlinedAt: !3316)
!3316 = distinct !DILocation(line: 81, column: 12, scope: !3305, inlinedAt: !3313)
!3317 = !DILocation(line: 62, column: 7, scope: !3282, inlinedAt: !3316)
!3318 = !DILocation(line: 67, column: 24, scope: !3294, inlinedAt: !3316)
!3319 = !DILocation(line: 67, column: 39, scope: !3294, inlinedAt: !3316)
!3320 = !DILocation(line: 72, column: 6, scope: !3282, inlinedAt: !3316)
!3321 = !DILocation(line: 67, column: 7, scope: !3282, inlinedAt: !3316)
!3322 = !DILocation(line: 0, scope: !3282, inlinedAt: !3316)
!3323 = !DILocation(line: 77, column: 50, scope: !3305, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 202, column: 22, scope: !3289)
!3325 = !DILocation(line: 79, column: 16, scope: !3305, inlinedAt: !3324)
!3326 = !DILocation(line: 62, column: 38, scope: !3291, inlinedAt: !3327)
!3327 = distinct !DILocation(line: 81, column: 12, scope: !3305, inlinedAt: !3324)
!3328 = !DILocation(line: 62, column: 7, scope: !3282, inlinedAt: !3327)
!3329 = !DILocation(line: 67, column: 24, scope: !3294, inlinedAt: !3327)
!3330 = !DILocation(line: 67, column: 39, scope: !3294, inlinedAt: !3327)
!3331 = !DILocation(line: 72, column: 6, scope: !3282, inlinedAt: !3327)
!3332 = !DILocation(line: 67, column: 7, scope: !3282, inlinedAt: !3327)
!3333 = !DILocation(line: 0, scope: !3282, inlinedAt: !3327)
!3334 = !DILocation(line: 77, column: 50, scope: !3305, inlinedAt: !3335)
!3335 = distinct !DILocation(line: 207, column: 22, scope: !3289)
!3336 = !DILocation(line: 79, column: 16, scope: !3305, inlinedAt: !3335)
!3337 = !DILocation(line: 62, column: 38, scope: !3291, inlinedAt: !3338)
!3338 = distinct !DILocation(line: 81, column: 12, scope: !3305, inlinedAt: !3335)
!3339 = !DILocation(line: 62, column: 7, scope: !3282, inlinedAt: !3338)
!3340 = !DILocation(line: 67, column: 24, scope: !3294, inlinedAt: !3338)
!3341 = !DILocation(line: 67, column: 39, scope: !3294, inlinedAt: !3338)
!3342 = !DILocation(line: 72, column: 6, scope: !3282, inlinedAt: !3338)
!3343 = !DILocation(line: 67, column: 7, scope: !3282, inlinedAt: !3338)
!3344 = !DILocation(line: 77, column: 50, scope: !3305, inlinedAt: !3345)
!3345 = distinct !DILocation(line: 212, column: 22, scope: !3289)
!3346 = !DILocation(line: 79, column: 16, scope: !3305, inlinedAt: !3345)
!3347 = !DILocation(line: 62, column: 38, scope: !3291, inlinedAt: !3348)
!3348 = distinct !DILocation(line: 81, column: 12, scope: !3305, inlinedAt: !3345)
!3349 = !DILocation(line: 62, column: 7, scope: !3282, inlinedAt: !3348)
!3350 = !DILocation(line: 67, column: 24, scope: !3294, inlinedAt: !3348)
!3351 = !DILocation(line: 67, column: 39, scope: !3294, inlinedAt: !3348)
!3352 = !DILocation(line: 72, column: 6, scope: !3282, inlinedAt: !3348)
!3353 = !DILocation(line: 67, column: 7, scope: !3282, inlinedAt: !3348)
!3354 = !DILocation(line: 0, scope: !3282, inlinedAt: !3348)
!3355 = !DILocation(line: 77, column: 50, scope: !3305, inlinedAt: !3356)
!3356 = distinct !DILocation(line: 216, column: 22, scope: !3289)
!3357 = !DILocation(line: 79, column: 16, scope: !3305, inlinedAt: !3356)
!3358 = !DILocation(line: 62, column: 38, scope: !3291, inlinedAt: !3359)
!3359 = distinct !DILocation(line: 81, column: 12, scope: !3305, inlinedAt: !3356)
!3360 = !DILocation(line: 62, column: 7, scope: !3282, inlinedAt: !3359)
!3361 = !DILocation(line: 67, column: 24, scope: !3294, inlinedAt: !3359)
!3362 = !DILocation(line: 67, column: 39, scope: !3294, inlinedAt: !3359)
!3363 = !DILocation(line: 72, column: 6, scope: !3282, inlinedAt: !3359)
!3364 = !DILocation(line: 67, column: 7, scope: !3282, inlinedAt: !3359)
!3365 = !DILocation(line: 0, scope: !3282, inlinedAt: !3359)
!3366 = !DILocation(line: 77, column: 50, scope: !3305, inlinedAt: !3367)
!3367 = distinct !DILocation(line: 221, column: 22, scope: !3289)
!3368 = !DILocation(line: 79, column: 16, scope: !3305, inlinedAt: !3367)
!3369 = !DILocation(line: 62, column: 38, scope: !3291, inlinedAt: !3370)
!3370 = distinct !DILocation(line: 81, column: 12, scope: !3305, inlinedAt: !3367)
!3371 = !DILocation(line: 62, column: 7, scope: !3282, inlinedAt: !3370)
!3372 = !DILocation(line: 67, column: 24, scope: !3294, inlinedAt: !3370)
!3373 = !DILocation(line: 67, column: 39, scope: !3294, inlinedAt: !3370)
!3374 = !DILocation(line: 72, column: 6, scope: !3282, inlinedAt: !3370)
!3375 = !DILocation(line: 67, column: 7, scope: !3282, inlinedAt: !3370)
!3376 = !DILocation(line: 0, scope: !3282, inlinedAt: !3370)
!3377 = !DILocation(line: 60, column: 31, scope: !3282, inlinedAt: !3378)
!3378 = distinct !DILocation(line: 225, column: 22, scope: !3289)
!3379 = !DILocation(line: 62, column: 38, scope: !3291, inlinedAt: !3378)
!3380 = !DILocation(line: 62, column: 7, scope: !3282, inlinedAt: !3378)
!3381 = !DILocation(line: 67, column: 39, scope: !3294, inlinedAt: !3378)
!3382 = !DILocation(line: 72, column: 6, scope: !3282, inlinedAt: !3378)
!3383 = !DILocation(line: 67, column: 7, scope: !3282, inlinedAt: !3378)
!3384 = !DILocation(line: 77, column: 50, scope: !3305, inlinedAt: !3385)
!3385 = distinct !DILocation(line: 229, column: 22, scope: !3289)
!3386 = !DILocation(line: 79, column: 16, scope: !3305, inlinedAt: !3385)
!3387 = !DILocation(line: 62, column: 38, scope: !3291, inlinedAt: !3388)
!3388 = distinct !DILocation(line: 81, column: 12, scope: !3305, inlinedAt: !3385)
!3389 = !DILocation(line: 62, column: 7, scope: !3282, inlinedAt: !3388)
!3390 = !DILocation(line: 67, column: 24, scope: !3294, inlinedAt: !3388)
!3391 = !DILocation(line: 67, column: 39, scope: !3294, inlinedAt: !3388)
!3392 = !DILocation(line: 72, column: 6, scope: !3282, inlinedAt: !3388)
!3393 = !DILocation(line: 67, column: 7, scope: !3282, inlinedAt: !3388)
!3394 = !DILocation(line: 0, scope: !3282, inlinedAt: !3388)
!3395 = !DILocation(line: 77, column: 50, scope: !3305, inlinedAt: !3396)
!3396 = distinct !DILocation(line: 233, column: 22, scope: !3289)
!3397 = !DILocation(line: 79, column: 16, scope: !3305, inlinedAt: !3396)
!3398 = !DILocation(line: 62, column: 38, scope: !3291, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 81, column: 12, scope: !3305, inlinedAt: !3396)
!3400 = !DILocation(line: 62, column: 7, scope: !3282, inlinedAt: !3399)
!3401 = !DILocation(line: 67, column: 24, scope: !3294, inlinedAt: !3399)
!3402 = !DILocation(line: 67, column: 39, scope: !3294, inlinedAt: !3399)
!3403 = !DILocation(line: 72, column: 6, scope: !3282, inlinedAt: !3399)
!3404 = !DILocation(line: 67, column: 7, scope: !3282, inlinedAt: !3399)
!3405 = !DILocation(line: 0, scope: !3282, inlinedAt: !3399)
!3406 = !DILocation(line: 237, column: 16, scope: !3289)
!3407 = !DILocation(line: 238, column: 22, scope: !3289)
!3408 = !DILocation(line: 238, column: 11, scope: !3289)
!3409 = !DILocation(line: 0, scope: !3289)
!3410 = !DILocation(line: 143, column: 20, scope: !3211)
!3411 = !DILocation(line: 241, column: 11, scope: !3211)
!3412 = !DILocation(line: 242, column: 10, scope: !3211)
!3413 = !DILocation(line: 243, column: 11, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3211, file: !3195, line: 243, column: 11)
!3415 = !DILocation(line: 244, column: 13, scope: !3414)
!3416 = !DILocation(line: 243, column: 11, scope: !3211)
!3417 = !DILocation(line: 119, column: 13, scope: !3236)
!3418 = !DILocation(line: 247, column: 8, scope: !3194)
!3419 = !DILocation(line: 248, column: 3, scope: !3194)
!3420 = !DILocation(line: 0, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3247, file: !3195, line: 125, column: 11)
!3422 = !DILocation(line: 249, column: 1, scope: !3194)
!3423 = !DILocation(line: 81, column: 9, scope: !3305, inlinedAt: !3313)
!3424 = !DILocation(line: 81, column: 9, scope: !3305, inlinedAt: !3324)
!3425 = !DILocation(line: 81, column: 9, scope: !3305, inlinedAt: !3345)
!3426 = !DILocation(line: 81, column: 9, scope: !3305, inlinedAt: !3356)
!3427 = !DILocation(line: 81, column: 9, scope: !3305, inlinedAt: !3367)
!3428 = !DILocation(line: 81, column: 9, scope: !3305, inlinedAt: !3385)
!3429 = !DILocation(line: 81, column: 9, scope: !3305, inlinedAt: !3396)
!3430 = distinct !DISubprogram(name: "rpl_calloc", scope: !3431, file: !3431, line: 42, type: !2927, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !231, retainedNodes: !3432)
!3431 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3432 = !{!3433, !3434, !3435, !3436}
!3433 = !DILocalVariable(name: "n", arg: 1, scope: !3430, file: !3431, line: 42, type: !147)
!3434 = !DILocalVariable(name: "s", arg: 2, scope: !3430, file: !3431, line: 42, type: !147)
!3435 = !DILocalVariable(name: "result", scope: !3430, file: !3431, line: 44, type: !64)
!3436 = !DILocalVariable(name: "bytes", scope: !3437, file: !3431, line: 56, type: !147)
!3437 = distinct !DILexicalBlock(scope: !3438, file: !3431, line: 53, column: 5)
!3438 = distinct !DILexicalBlock(scope: !3430, file: !3431, line: 47, column: 7)
!3439 = !DILocation(line: 42, column: 20, scope: !3430)
!3440 = !DILocation(line: 42, column: 30, scope: !3430)
!3441 = !DILocation(line: 47, column: 9, scope: !3438)
!3442 = !DILocation(line: 47, column: 19, scope: !3438)
!3443 = !DILocation(line: 47, column: 14, scope: !3438)
!3444 = !DILocation(line: 56, column: 24, scope: !3437)
!3445 = !DILocation(line: 56, column: 14, scope: !3437)
!3446 = !DILocation(line: 57, column: 17, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3437, file: !3431, line: 57, column: 11)
!3448 = !DILocation(line: 57, column: 21, scope: !3447)
!3449 = !DILocation(line: 57, column: 11, scope: !3437)
!3450 = !DILocation(line: 59, column: 11, scope: !3451)
!3451 = distinct !DILexicalBlock(scope: !3447, file: !3431, line: 58, column: 9)
!3452 = !DILocation(line: 59, column: 17, scope: !3451)
!3453 = !DILocation(line: 65, column: 12, scope: !3430)
!3454 = !DILocation(line: 44, column: 9, scope: !3430)
!3455 = !DILocation(line: 72, column: 3, scope: !3430)
!3456 = !DILocation(line: 0, scope: !3451)
!3457 = !DILocation(line: 73, column: 1, scope: !3430)
!3458 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3459, file: !3459, line: 385, type: !3460, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !233, retainedNodes: !3474)
!3459 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!147, !3462, !35, !147, !3463}
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3464, size: 64)
!3464 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1202, line: 6, baseType: !3465)
!3465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1204, line: 21, baseType: !3466)
!3466 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1204, line: 13, size: 64, elements: !3467)
!3467 = !{!3468, !3469}
!3468 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3466, file: !1204, line: 15, baseType: !25, size: 32)
!3469 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3466, file: !1204, line: 20, baseType: !3470, size: 32, offset: 32)
!3470 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3466, file: !1204, line: 16, size: 32, elements: !3471)
!3471 = !{!3472, !3473}
!3472 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3470, file: !1204, line: 18, baseType: !7, size: 32)
!3473 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3470, file: !1204, line: 19, baseType: !1213, size: 32)
!3474 = !{!3475, !3476, !3477, !3478, !3479, !3480, !3481}
!3475 = !DILocalVariable(name: "pwc", arg: 1, scope: !3458, file: !3459, line: 385, type: !3462)
!3476 = !DILocalVariable(name: "s", arg: 2, scope: !3458, file: !3459, line: 385, type: !35)
!3477 = !DILocalVariable(name: "n", arg: 3, scope: !3458, file: !3459, line: 385, type: !147)
!3478 = !DILocalVariable(name: "ps", arg: 4, scope: !3458, file: !3459, line: 385, type: !3463)
!3479 = !DILocalVariable(name: "ret", scope: !3458, file: !3459, line: 387, type: !147)
!3480 = !DILocalVariable(name: "wc", scope: !3458, file: !3459, line: 388, type: !1216)
!3481 = !DILocalVariable(name: "uc", scope: !3482, file: !3459, line: 449, type: !1062)
!3482 = distinct !DILexicalBlock(scope: !3483, file: !3459, line: 448, column: 5)
!3483 = distinct !DILexicalBlock(scope: !3458, file: !3459, line: 447, column: 7)
!3484 = !DILocation(line: 385, column: 23, scope: !3458)
!3485 = !DILocation(line: 385, column: 40, scope: !3458)
!3486 = !DILocation(line: 385, column: 50, scope: !3458)
!3487 = !DILocation(line: 385, column: 64, scope: !3458)
!3488 = !DILocation(line: 388, column: 3, scope: !3458)
!3489 = !DILocation(line: 404, column: 9, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3458, file: !3459, line: 404, column: 7)
!3491 = !DILocation(line: 404, column: 7, scope: !3458)
!3492 = !DILocation(line: 439, column: 9, scope: !3458)
!3493 = !DILocation(line: 387, column: 10, scope: !3458)
!3494 = !DILocation(line: 447, column: 19, scope: !3483)
!3495 = !DILocation(line: 447, column: 31, scope: !3483)
!3496 = !DILocation(line: 447, column: 26, scope: !3483)
!3497 = !DILocation(line: 447, column: 41, scope: !3483)
!3498 = !DILocation(line: 447, column: 7, scope: !3458)
!3499 = !DILocation(line: 449, column: 26, scope: !3482)
!3500 = !DILocation(line: 449, column: 21, scope: !3482)
!3501 = !DILocation(line: 450, column: 14, scope: !3482)
!3502 = !DILocation(line: 450, column: 12, scope: !3482)
!3503 = !DILocation(line: 0, scope: !3482)
!3504 = !DILocation(line: 456, column: 1, scope: !3458)
!3505 = distinct !DISubprogram(name: "close_stream", scope: !3506, file: !3506, line: 56, type: !3507, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !236, retainedNodes: !3543)
!3506 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!25, !3509}
!3509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3510, size: 64)
!3510 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !854, line: 7, baseType: !3511)
!3511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !856, line: 49, size: 1728, elements: !3512)
!3512 = !{!3513, !3514, !3515, !3516, !3517, !3518, !3519, !3520, !3521, !3522, !3523, !3524, !3525, !3526, !3528, !3529, !3530, !3531, !3532, !3533, !3534, !3535, !3536, !3537, !3538, !3539, !3540, !3541, !3542}
!3513 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3511, file: !856, line: 51, baseType: !25, size: 32)
!3514 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3511, file: !856, line: 54, baseType: !27, size: 64, offset: 64)
!3515 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3511, file: !856, line: 55, baseType: !27, size: 64, offset: 128)
!3516 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3511, file: !856, line: 56, baseType: !27, size: 64, offset: 192)
!3517 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3511, file: !856, line: 57, baseType: !27, size: 64, offset: 256)
!3518 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3511, file: !856, line: 58, baseType: !27, size: 64, offset: 320)
!3519 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3511, file: !856, line: 59, baseType: !27, size: 64, offset: 384)
!3520 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3511, file: !856, line: 60, baseType: !27, size: 64, offset: 448)
!3521 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3511, file: !856, line: 61, baseType: !27, size: 64, offset: 512)
!3522 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3511, file: !856, line: 64, baseType: !27, size: 64, offset: 576)
!3523 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3511, file: !856, line: 65, baseType: !27, size: 64, offset: 640)
!3524 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3511, file: !856, line: 66, baseType: !27, size: 64, offset: 704)
!3525 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3511, file: !856, line: 68, baseType: !871, size: 64, offset: 768)
!3526 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3511, file: !856, line: 70, baseType: !3527, size: 64, offset: 832)
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3511, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3511, file: !856, line: 72, baseType: !25, size: 32, offset: 896)
!3529 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3511, file: !856, line: 73, baseType: !25, size: 32, offset: 928)
!3530 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3511, file: !856, line: 74, baseType: !878, size: 64, offset: 960)
!3531 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3511, file: !856, line: 77, baseType: !146, size: 16, offset: 1024)
!3532 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3511, file: !856, line: 78, baseType: !882, size: 8, offset: 1040)
!3533 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3511, file: !856, line: 79, baseType: !884, size: 8, offset: 1048)
!3534 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3511, file: !856, line: 81, baseType: !888, size: 64, offset: 1088)
!3535 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3511, file: !856, line: 89, baseType: !891, size: 64, offset: 1152)
!3536 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3511, file: !856, line: 91, baseType: !893, size: 64, offset: 1216)
!3537 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3511, file: !856, line: 92, baseType: !896, size: 64, offset: 1280)
!3538 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3511, file: !856, line: 93, baseType: !3527, size: 64, offset: 1344)
!3539 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3511, file: !856, line: 94, baseType: !64, size: 64, offset: 1408)
!3540 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3511, file: !856, line: 95, baseType: !147, size: 64, offset: 1472)
!3541 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3511, file: !856, line: 96, baseType: !25, size: 32, offset: 1536)
!3542 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3511, file: !856, line: 98, baseType: !903, size: 160, offset: 1568)
!3543 = !{!3544, !3545, !3547, !3548}
!3544 = !DILocalVariable(name: "stream", arg: 1, scope: !3505, file: !3506, line: 56, type: !3509)
!3545 = !DILocalVariable(name: "some_pending", scope: !3505, file: !3506, line: 58, type: !3546)
!3546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!3547 = !DILocalVariable(name: "prev_fail", scope: !3505, file: !3506, line: 59, type: !3546)
!3548 = !DILocalVariable(name: "fclose_fail", scope: !3505, file: !3506, line: 60, type: !3546)
!3549 = !DILocation(line: 56, column: 21, scope: !3505)
!3550 = !DILocation(line: 58, column: 30, scope: !3505)
!3551 = !DILocalVariable(name: "__stream", arg: 1, scope: !3552, file: !849, line: 135, type: !3509)
!3552 = distinct !DISubprogram(name: "ferror_unlocked", scope: !849, file: !849, line: 135, type: !3507, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !236, retainedNodes: !3553)
!3553 = !{!3551}
!3554 = !DILocation(line: 135, column: 1, scope: !3552, inlinedAt: !3555)
!3555 = distinct !DILocation(line: 59, column: 27, scope: !3505)
!3556 = !DILocation(line: 137, column: 10, scope: !3552, inlinedAt: !3555)
!3557 = !DILocation(line: 59, column: 43, scope: !3505)
!3558 = !DILocation(line: 60, column: 29, scope: !3505)
!3559 = !DILocation(line: 60, column: 45, scope: !3505)
!3560 = !DILocation(line: 70, column: 17, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3505, file: !3506, line: 70, column: 7)
!3562 = !DILocation(line: 58, column: 50, scope: !3505)
!3563 = !DILocation(line: 70, column: 33, scope: !3561)
!3564 = !DILocation(line: 70, column: 53, scope: !3561)
!3565 = !DILocation(line: 70, column: 59, scope: !3561)
!3566 = !DILocation(line: 70, column: 7, scope: !3505)
!3567 = !DILocation(line: 72, column: 11, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3561, file: !3506, line: 71, column: 5)
!3569 = !DILocation(line: 73, column: 9, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3568, file: !3506, line: 72, column: 11)
!3571 = !DILocation(line: 73, column: 15, scope: !3570)
!3572 = !DILocation(line: 0, scope: !3505)
!3573 = !DILocation(line: 78, column: 1, scope: !3505)
!3574 = distinct !DISubprogram(name: "hard_locale", scope: !3575, file: !3575, line: 38, type: !834, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !238, retainedNodes: !3576)
!3575 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3576 = !{!3577, !3578, !3579}
!3577 = !DILocalVariable(name: "category", arg: 1, scope: !3574, file: !3575, line: 38, type: !25)
!3578 = !DILocalVariable(name: "hard", scope: !3574, file: !3575, line: 40, type: !38)
!3579 = !DILocalVariable(name: "p", scope: !3574, file: !3575, line: 41, type: !35)
!3580 = !DILocation(line: 38, column: 18, scope: !3574)
!3581 = !DILocation(line: 40, column: 8, scope: !3574)
!3582 = !DILocation(line: 41, column: 19, scope: !3574)
!3583 = !DILocation(line: 41, column: 15, scope: !3574)
!3584 = !DILocation(line: 43, column: 7, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3574, file: !3575, line: 43, column: 7)
!3586 = !DILocation(line: 43, column: 7, scope: !3574)
!3587 = !DILocation(line: 47, column: 15, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3589, file: !3575, line: 47, column: 15)
!3589 = distinct !DILexicalBlock(scope: !3590, file: !3575, line: 46, column: 9)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !3575, line: 45, column: 11)
!3591 = distinct !DILexicalBlock(scope: !3585, file: !3575, line: 44, column: 5)
!3592 = !DILocation(line: 47, column: 31, scope: !3588)
!3593 = !DILocation(line: 47, column: 36, scope: !3588)
!3594 = !DILocation(line: 47, column: 39, scope: !3588)
!3595 = !DILocation(line: 47, column: 59, scope: !3588)
!3596 = !DILocation(line: 47, column: 15, scope: !3589)
!3597 = !DILocation(line: 48, column: 13, scope: !3588)
!3598 = !DILocation(line: 71, column: 3, scope: !3574)
!3599 = distinct !DISubprogram(name: "locale_charset", scope: !3600, file: !3600, line: 687, type: !3601, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !240, retainedNodes: !3603)
!3600 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!35}
!3603 = !{!3604}
!3604 = !DILocalVariable(name: "codeset", scope: !3599, file: !3600, line: 689, type: !35)
!3605 = !DILocation(line: 696, column: 13, scope: !3599)
!3606 = !DILocation(line: 689, column: 15, scope: !3599)
!3607 = !DILocation(line: 754, column: 15, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3599, file: !3600, line: 754, column: 7)
!3609 = !DILocation(line: 754, column: 7, scope: !3599)
!3610 = !DILocation(line: 907, column: 13, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3612, file: !3600, line: 907, column: 13)
!3612 = distinct !DILexicalBlock(scope: !3613, file: !3600, line: 897, column: 7)
!3613 = distinct !DILexicalBlock(scope: !3599, file: !3600, line: 856, column: 3)
!3614 = !DILocation(line: 907, column: 24, scope: !3611)
!3615 = !DILocation(line: 907, column: 13, scope: !3612)
!3616 = !DILocation(line: 995, column: 3, scope: !3599)
!3617 = distinct !DISubprogram(name: "rpl_fclose", scope: !3618, file: !3618, line: 58, type: !3619, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !629, retainedNodes: !3655)
!3618 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3619 = !DISubroutineType(types: !3620)
!3620 = !{!25, !3621}
!3621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3622, size: 64)
!3622 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !854, line: 7, baseType: !3623)
!3623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !856, line: 49, size: 1728, elements: !3624)
!3624 = !{!3625, !3626, !3627, !3628, !3629, !3630, !3631, !3632, !3633, !3634, !3635, !3636, !3637, !3638, !3640, !3641, !3642, !3643, !3644, !3645, !3646, !3647, !3648, !3649, !3650, !3651, !3652, !3653, !3654}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3623, file: !856, line: 51, baseType: !25, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3623, file: !856, line: 54, baseType: !27, size: 64, offset: 64)
!3627 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3623, file: !856, line: 55, baseType: !27, size: 64, offset: 128)
!3628 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3623, file: !856, line: 56, baseType: !27, size: 64, offset: 192)
!3629 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3623, file: !856, line: 57, baseType: !27, size: 64, offset: 256)
!3630 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3623, file: !856, line: 58, baseType: !27, size: 64, offset: 320)
!3631 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3623, file: !856, line: 59, baseType: !27, size: 64, offset: 384)
!3632 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3623, file: !856, line: 60, baseType: !27, size: 64, offset: 448)
!3633 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3623, file: !856, line: 61, baseType: !27, size: 64, offset: 512)
!3634 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3623, file: !856, line: 64, baseType: !27, size: 64, offset: 576)
!3635 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3623, file: !856, line: 65, baseType: !27, size: 64, offset: 640)
!3636 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3623, file: !856, line: 66, baseType: !27, size: 64, offset: 704)
!3637 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3623, file: !856, line: 68, baseType: !871, size: 64, offset: 768)
!3638 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3623, file: !856, line: 70, baseType: !3639, size: 64, offset: 832)
!3639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3623, size: 64)
!3640 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3623, file: !856, line: 72, baseType: !25, size: 32, offset: 896)
!3641 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3623, file: !856, line: 73, baseType: !25, size: 32, offset: 928)
!3642 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3623, file: !856, line: 74, baseType: !878, size: 64, offset: 960)
!3643 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3623, file: !856, line: 77, baseType: !146, size: 16, offset: 1024)
!3644 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3623, file: !856, line: 78, baseType: !882, size: 8, offset: 1040)
!3645 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3623, file: !856, line: 79, baseType: !884, size: 8, offset: 1048)
!3646 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3623, file: !856, line: 81, baseType: !888, size: 64, offset: 1088)
!3647 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3623, file: !856, line: 89, baseType: !891, size: 64, offset: 1152)
!3648 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3623, file: !856, line: 91, baseType: !893, size: 64, offset: 1216)
!3649 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3623, file: !856, line: 92, baseType: !896, size: 64, offset: 1280)
!3650 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3623, file: !856, line: 93, baseType: !3639, size: 64, offset: 1344)
!3651 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3623, file: !856, line: 94, baseType: !64, size: 64, offset: 1408)
!3652 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3623, file: !856, line: 95, baseType: !147, size: 64, offset: 1472)
!3653 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3623, file: !856, line: 96, baseType: !25, size: 32, offset: 1536)
!3654 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3623, file: !856, line: 98, baseType: !903, size: 160, offset: 1568)
!3655 = !{!3656, !3657, !3658, !3659}
!3656 = !DILocalVariable(name: "fp", arg: 1, scope: !3617, file: !3618, line: 58, type: !3621)
!3657 = !DILocalVariable(name: "saved_errno", scope: !3617, file: !3618, line: 60, type: !25)
!3658 = !DILocalVariable(name: "fd", scope: !3617, file: !3618, line: 61, type: !25)
!3659 = !DILocalVariable(name: "result", scope: !3617, file: !3618, line: 62, type: !25)
!3660 = !DILocation(line: 58, column: 19, scope: !3617)
!3661 = !DILocation(line: 60, column: 7, scope: !3617)
!3662 = !DILocation(line: 62, column: 7, scope: !3617)
!3663 = !DILocation(line: 65, column: 8, scope: !3617)
!3664 = !DILocation(line: 61, column: 7, scope: !3617)
!3665 = !DILocation(line: 66, column: 10, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3617, file: !3618, line: 66, column: 7)
!3667 = !DILocation(line: 66, column: 7, scope: !3617)
!3668 = !DILocation(line: 67, column: 12, scope: !3666)
!3669 = !DILocation(line: 67, column: 5, scope: !3666)
!3670 = !DILocation(line: 72, column: 9, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3617, file: !3618, line: 72, column: 7)
!3672 = !DILocation(line: 72, column: 23, scope: !3671)
!3673 = !DILocation(line: 72, column: 33, scope: !3671)
!3674 = !DILocation(line: 72, column: 26, scope: !3671)
!3675 = !DILocation(line: 72, column: 59, scope: !3671)
!3676 = !DILocation(line: 73, column: 7, scope: !3671)
!3677 = !DILocation(line: 73, column: 10, scope: !3671)
!3678 = !DILocation(line: 72, column: 7, scope: !3617)
!3679 = !DILocation(line: 100, column: 12, scope: !3617)
!3680 = !DILocation(line: 105, column: 7, scope: !3617)
!3681 = !DILocation(line: 74, column: 19, scope: !3671)
!3682 = !DILocation(line: 105, column: 19, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3617, file: !3618, line: 105, column: 7)
!3684 = !DILocation(line: 107, column: 13, scope: !3685)
!3685 = distinct !DILexicalBlock(scope: !3683, file: !3618, line: 106, column: 5)
!3686 = !DILocation(line: 109, column: 5, scope: !3685)
!3687 = !DILocation(line: 0, scope: !3617)
!3688 = !DILocation(line: 112, column: 1, scope: !3617)
!3689 = distinct !DISubprogram(name: "rpl_fflush", scope: !3690, file: !3690, line: 129, type: !3691, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !631, retainedNodes: !3727)
!3690 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3691 = !DISubroutineType(types: !3692)
!3692 = !{!25, !3693}
!3693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3694, size: 64)
!3694 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !854, line: 7, baseType: !3695)
!3695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !856, line: 49, size: 1728, elements: !3696)
!3696 = !{!3697, !3698, !3699, !3700, !3701, !3702, !3703, !3704, !3705, !3706, !3707, !3708, !3709, !3710, !3712, !3713, !3714, !3715, !3716, !3717, !3718, !3719, !3720, !3721, !3722, !3723, !3724, !3725, !3726}
!3697 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3695, file: !856, line: 51, baseType: !25, size: 32)
!3698 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3695, file: !856, line: 54, baseType: !27, size: 64, offset: 64)
!3699 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3695, file: !856, line: 55, baseType: !27, size: 64, offset: 128)
!3700 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3695, file: !856, line: 56, baseType: !27, size: 64, offset: 192)
!3701 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3695, file: !856, line: 57, baseType: !27, size: 64, offset: 256)
!3702 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3695, file: !856, line: 58, baseType: !27, size: 64, offset: 320)
!3703 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3695, file: !856, line: 59, baseType: !27, size: 64, offset: 384)
!3704 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3695, file: !856, line: 60, baseType: !27, size: 64, offset: 448)
!3705 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3695, file: !856, line: 61, baseType: !27, size: 64, offset: 512)
!3706 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3695, file: !856, line: 64, baseType: !27, size: 64, offset: 576)
!3707 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3695, file: !856, line: 65, baseType: !27, size: 64, offset: 640)
!3708 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3695, file: !856, line: 66, baseType: !27, size: 64, offset: 704)
!3709 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3695, file: !856, line: 68, baseType: !871, size: 64, offset: 768)
!3710 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3695, file: !856, line: 70, baseType: !3711, size: 64, offset: 832)
!3711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3695, size: 64)
!3712 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3695, file: !856, line: 72, baseType: !25, size: 32, offset: 896)
!3713 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3695, file: !856, line: 73, baseType: !25, size: 32, offset: 928)
!3714 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3695, file: !856, line: 74, baseType: !878, size: 64, offset: 960)
!3715 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3695, file: !856, line: 77, baseType: !146, size: 16, offset: 1024)
!3716 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3695, file: !856, line: 78, baseType: !882, size: 8, offset: 1040)
!3717 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3695, file: !856, line: 79, baseType: !884, size: 8, offset: 1048)
!3718 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3695, file: !856, line: 81, baseType: !888, size: 64, offset: 1088)
!3719 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3695, file: !856, line: 89, baseType: !891, size: 64, offset: 1152)
!3720 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3695, file: !856, line: 91, baseType: !893, size: 64, offset: 1216)
!3721 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3695, file: !856, line: 92, baseType: !896, size: 64, offset: 1280)
!3722 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3695, file: !856, line: 93, baseType: !3711, size: 64, offset: 1344)
!3723 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3695, file: !856, line: 94, baseType: !64, size: 64, offset: 1408)
!3724 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3695, file: !856, line: 95, baseType: !147, size: 64, offset: 1472)
!3725 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3695, file: !856, line: 96, baseType: !25, size: 32, offset: 1536)
!3726 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3695, file: !856, line: 98, baseType: !903, size: 160, offset: 1568)
!3727 = !{!3728}
!3728 = !DILocalVariable(name: "stream", arg: 1, scope: !3689, file: !3690, line: 129, type: !3693)
!3729 = !DILocation(line: 129, column: 19, scope: !3689)
!3730 = !DILocation(line: 150, column: 14, scope: !3731)
!3731 = distinct !DILexicalBlock(scope: !3689, file: !3690, line: 150, column: 7)
!3732 = !DILocation(line: 150, column: 22, scope: !3731)
!3733 = !DILocation(line: 150, column: 27, scope: !3731)
!3734 = !DILocation(line: 150, column: 7, scope: !3689)
!3735 = !DILocation(line: 151, column: 12, scope: !3731)
!3736 = !DILocation(line: 151, column: 5, scope: !3731)
!3737 = !DILocalVariable(name: "fp", arg: 1, scope: !3738, file: !3690, line: 41, type: !3693)
!3738 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3690, file: !3690, line: 41, type: !3739, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !631, retainedNodes: !3741)
!3739 = !DISubroutineType(types: !3740)
!3740 = !{null, !3693}
!3741 = !{!3737}
!3742 = !DILocation(line: 41, column: 48, scope: !3738, inlinedAt: !3743)
!3743 = distinct !DILocation(line: 156, column: 3, scope: !3689)
!3744 = !DILocation(line: 43, column: 11, scope: !3745, inlinedAt: !3743)
!3745 = distinct !DILexicalBlock(scope: !3738, file: !3690, line: 43, column: 7)
!3746 = !DILocation(line: 43, column: 18, scope: !3745, inlinedAt: !3743)
!3747 = !DILocation(line: 43, column: 7, scope: !3738, inlinedAt: !3743)
!3748 = !DILocation(line: 45, column: 5, scope: !3745, inlinedAt: !3743)
!3749 = !DILocation(line: 158, column: 10, scope: !3689)
!3750 = !DILocation(line: 158, column: 3, scope: !3689)
!3751 = !DILocation(line: 0, scope: !3689)
!3752 = !DILocation(line: 232, column: 1, scope: !3689)
!3753 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3754, file: !3754, line: 28, type: !3755, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !633, retainedNodes: !3792)
!3754 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3755 = !DISubroutineType(types: !3756)
!3756 = !{!25, !3757, !3791, !25}
!3757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3758, size: 64)
!3758 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !854, line: 7, baseType: !3759)
!3759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !856, line: 49, size: 1728, elements: !3760)
!3760 = !{!3761, !3762, !3763, !3764, !3765, !3766, !3767, !3768, !3769, !3770, !3771, !3772, !3773, !3774, !3776, !3777, !3778, !3779, !3780, !3781, !3782, !3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790}
!3761 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3759, file: !856, line: 51, baseType: !25, size: 32)
!3762 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3759, file: !856, line: 54, baseType: !27, size: 64, offset: 64)
!3763 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3759, file: !856, line: 55, baseType: !27, size: 64, offset: 128)
!3764 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3759, file: !856, line: 56, baseType: !27, size: 64, offset: 192)
!3765 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3759, file: !856, line: 57, baseType: !27, size: 64, offset: 256)
!3766 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3759, file: !856, line: 58, baseType: !27, size: 64, offset: 320)
!3767 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3759, file: !856, line: 59, baseType: !27, size: 64, offset: 384)
!3768 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3759, file: !856, line: 60, baseType: !27, size: 64, offset: 448)
!3769 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3759, file: !856, line: 61, baseType: !27, size: 64, offset: 512)
!3770 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3759, file: !856, line: 64, baseType: !27, size: 64, offset: 576)
!3771 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3759, file: !856, line: 65, baseType: !27, size: 64, offset: 640)
!3772 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3759, file: !856, line: 66, baseType: !27, size: 64, offset: 704)
!3773 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3759, file: !856, line: 68, baseType: !871, size: 64, offset: 768)
!3774 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3759, file: !856, line: 70, baseType: !3775, size: 64, offset: 832)
!3775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3759, size: 64)
!3776 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3759, file: !856, line: 72, baseType: !25, size: 32, offset: 896)
!3777 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3759, file: !856, line: 73, baseType: !25, size: 32, offset: 928)
!3778 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3759, file: !856, line: 74, baseType: !878, size: 64, offset: 960)
!3779 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3759, file: !856, line: 77, baseType: !146, size: 16, offset: 1024)
!3780 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3759, file: !856, line: 78, baseType: !882, size: 8, offset: 1040)
!3781 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3759, file: !856, line: 79, baseType: !884, size: 8, offset: 1048)
!3782 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3759, file: !856, line: 81, baseType: !888, size: 64, offset: 1088)
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3759, file: !856, line: 89, baseType: !891, size: 64, offset: 1152)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3759, file: !856, line: 91, baseType: !893, size: 64, offset: 1216)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3759, file: !856, line: 92, baseType: !896, size: 64, offset: 1280)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3759, file: !856, line: 93, baseType: !3775, size: 64, offset: 1344)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3759, file: !856, line: 94, baseType: !64, size: 64, offset: 1408)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3759, file: !856, line: 95, baseType: !147, size: 64, offset: 1472)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3759, file: !856, line: 96, baseType: !25, size: 32, offset: 1536)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3759, file: !856, line: 98, baseType: !903, size: 160, offset: 1568)
!3791 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !2906, line: 63, baseType: !878)
!3792 = !{!3793, !3794, !3795, !3796}
!3793 = !DILocalVariable(name: "fp", arg: 1, scope: !3753, file: !3754, line: 28, type: !3757)
!3794 = !DILocalVariable(name: "offset", arg: 2, scope: !3753, file: !3754, line: 28, type: !3791)
!3795 = !DILocalVariable(name: "whence", arg: 3, scope: !3753, file: !3754, line: 28, type: !25)
!3796 = !DILocalVariable(name: "pos", scope: !3797, file: !3754, line: 117, type: !3791)
!3797 = distinct !DILexicalBlock(scope: !3798, file: !3754, line: 113, column: 5)
!3798 = distinct !DILexicalBlock(scope: !3753, file: !3754, line: 52, column: 7)
!3799 = !DILocation(line: 28, column: 15, scope: !3753)
!3800 = !DILocation(line: 28, column: 25, scope: !3753)
!3801 = !DILocation(line: 28, column: 37, scope: !3753)
!3802 = !DILocation(line: 52, column: 11, scope: !3798)
!3803 = !{!911, !674, i64 16}
!3804 = !DILocation(line: 52, column: 31, scope: !3798)
!3805 = !{!911, !674, i64 8}
!3806 = !DILocation(line: 52, column: 24, scope: !3798)
!3807 = !DILocation(line: 53, column: 7, scope: !3798)
!3808 = !DILocation(line: 53, column: 14, scope: !3798)
!3809 = !{!911, !674, i64 40}
!3810 = !DILocation(line: 53, column: 35, scope: !3798)
!3811 = !{!911, !674, i64 32}
!3812 = !DILocation(line: 53, column: 28, scope: !3798)
!3813 = !DILocation(line: 54, column: 7, scope: !3798)
!3814 = !DILocation(line: 54, column: 14, scope: !3798)
!3815 = !{!911, !674, i64 72}
!3816 = !DILocation(line: 54, column: 28, scope: !3798)
!3817 = !DILocation(line: 52, column: 7, scope: !3753)
!3818 = !DILocation(line: 117, column: 26, scope: !3797)
!3819 = !DILocation(line: 117, column: 19, scope: !3797)
!3820 = !DILocation(line: 117, column: 13, scope: !3797)
!3821 = !DILocation(line: 118, column: 15, scope: !3822)
!3822 = distinct !DILexicalBlock(scope: !3797, file: !3754, line: 118, column: 11)
!3823 = !DILocation(line: 118, column: 11, scope: !3797)
!3824 = !DILocation(line: 129, column: 11, scope: !3797)
!3825 = !DILocation(line: 129, column: 18, scope: !3797)
!3826 = !DILocation(line: 130, column: 11, scope: !3797)
!3827 = !DILocation(line: 130, column: 19, scope: !3797)
!3828 = !{!911, !789, i64 144}
!3829 = !DILocation(line: 161, column: 7, scope: !3797)
!3830 = !DILocation(line: 163, column: 10, scope: !3753)
!3831 = !DILocation(line: 163, column: 3, scope: !3753)
!3832 = !DILocation(line: 0, scope: !3753)
!3833 = !DILocation(line: 164, column: 1, scope: !3753)
