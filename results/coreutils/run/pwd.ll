; ModuleID = 'coreutils-8.30/src/pwd.bc'
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
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__dirstream = type opaque
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.__mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stderr = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [39 x i8] c"Try '%s --help' for more information.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Usage: %s [OPTION]...\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Print the full filename of the current working directory.\0A\0A\00", align 1
@stdout = external local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.3 = private unnamed_addr constant [111 x i8] c"  -L, --logical   use PWD from environment, even if it contains symlinks\0A  -P, --physical  avoid all symlinks\0A\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"      --help     display this help and exit\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"      --version  output version information and exit\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"\0AIf no option is specified, -P is assumed.\0A\00", align 1
@.str.7 = private unnamed_addr constant [191 x i8] c"\0ANOTE: your shell may have its own version of %s, which usually supersedes\0Athe version described here.  Please refer to your shell's documentation\0Afor details about the options it supports.\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1
@emit_ancillary_info.infomap = private unnamed_addr constant [7 x %struct.infomap] [%struct.infomap { i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.18, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap { i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i32 0, i32 0) }, %struct.infomap zeroinitializer], align 16
@.str.17 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.25 = private unnamed_addr constant [23 x i8] c"\0A%s online help: <%s>\0A\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.26 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"en_\00", align 1
@.str.28 = private unnamed_addr constant [70 x i8] c"Report %s translation bugs to <https://translationproject.org/team/>\0A\00", align 1
@.str.29 = private unnamed_addr constant [31 x i8] c"Full documentation at: <%s%s>\0A\00", align 1
@.str.30 = private unnamed_addr constant [51 x i8] c"or available locally via: info '(coreutils) %s%s'\0A\00", align 1
@.str.31 = private unnamed_addr constant [12 x i8] c" invocation\00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"test invocation\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"coreutils\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"Multi-call invocation\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"sha224sum\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"sha2 utilities\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"sha256sum\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"sha384sum\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"sha512sum\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"POSIXLY_CORRECT\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"/usr/local/share/locale\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"LP\00", align 1
@longopts = internal constant [5 x %struct.option] [%struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.32, i32 0, i32 0), i32 0, i32* null, i32 76 }, %struct.option { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.33, i32 0, i32 0), i32 0, i32* null, i32 80 }, %struct.option { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0), i32 0, i32* null, i32 -130 }, %struct.option { i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.35, i32 0, i32 0), i32 0, i32* null, i32 -131 }, %struct.option zeroinitializer], align 16, !dbg !0
@.str.15 = private unnamed_addr constant [13 x i8] c"Jim Meyering\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.16 = private unnamed_addr constant [30 x i8] c"ignoring non-option arguments\00", align 1
@.str.36 = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"failed to get attributes of %s\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c"failed to stat %s\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.43 = private unnamed_addr constant [25 x i8] c"cannot open directory %s\00", align 1
@.str.44 = private unnamed_addr constant [22 x i8] c"failed to chdir to %s\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"reading directory %s\00", align 1
@.str.46 = private unnamed_addr constant [57 x i8] c"couldn't find directory entry in %s with matching i-node\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"../\00", align 1
@.str.32 = private unnamed_addr constant [8 x i8] c"logical\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"physical\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.35 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@Version = dso_local local_unnamed_addr global i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.48, i64 0, i64 0), align 8, !dbg !47
@.str.48 = private unnamed_addr constant [5 x i8] c"8.30\00", align 1
@file_name = internal unnamed_addr global i8* null, align 8, !dbg !53
@ignore_EPIPE = internal unnamed_addr global i8 0, align 1, !dbg !58
@.str.51 = private unnamed_addr constant [12 x i8] c"write error\00", align 1
@.str.1.52 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2.53 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@exit_failure = dso_local global i32 1, align 4, !dbg !62
@program_name = dso_local local_unnamed_addr global i8* null, align 8, !dbg !69
@.str.60 = private unnamed_addr constant [56 x i8] c"A NULL argv[0] was passed through an exec system call.\0A\00", align 1
@.str.1.61 = private unnamed_addr constant [8 x i8] c"/.libs/\00", align 1
@.str.2.62 = private unnamed_addr constant [4 x i8] c"lt-\00", align 1
@program_invocation_short_name = external local_unnamed_addr global i8*, align 8
@program_invocation_name = external local_unnamed_addr global i8*, align 8
@quoting_style_args = dso_local local_unnamed_addr constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.64, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2.65, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3.66, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4.67, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5.68, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6.69, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7.70, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8.71, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9.72, i32 0, i32 0), i8* null], align 16, !dbg !76
@.str.63 = private unnamed_addr constant [8 x i8] c"literal\00", align 1
@.str.1.64 = private unnamed_addr constant [6 x i8] c"shell\00", align 1
@.str.2.65 = private unnamed_addr constant [13 x i8] c"shell-always\00", align 1
@.str.3.66 = private unnamed_addr constant [13 x i8] c"shell-escape\00", align 1
@.str.4.67 = private unnamed_addr constant [20 x i8] c"shell-escape-always\00", align 1
@.str.5.68 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.6.69 = private unnamed_addr constant [8 x i8] c"c-maybe\00", align 1
@.str.7.70 = private unnamed_addr constant [7 x i8] c"escape\00", align 1
@.str.8.71 = private unnamed_addr constant [7 x i8] c"locale\00", align 1
@.str.9.72 = private unnamed_addr constant [8 x i8] c"clocale\00", align 1
@quoting_style_vals = dso_local local_unnamed_addr constant [10 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9], align 16, !dbg !104
@quote_quoting_options = dso_local global %struct.quoting_options { i32 8, i32 0, [8 x i32] zeroinitializer, i8* null, i8* null }, align 8, !dbg !111
@default_quoting_options = internal global %struct.quoting_options zeroinitializer, align 8, !dbg !123
@.str.11.73 = private unnamed_addr constant [2 x i8] c"`\00", align 1
@.str.12.74 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.75 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.14.76 = private unnamed_addr constant [4 x i8] c"\E2\80\98\00", align 1
@.str.15.77 = private unnamed_addr constant [4 x i8] c"\E2\80\99\00", align 1
@.str.17.78 = private unnamed_addr constant [4 x i8] c"\A1\07e\00", align 1
@.str.18.79 = private unnamed_addr constant [3 x i8] c"\A1\AF\00", align 1
@slotvec = internal unnamed_addr global %struct.slotvec* @slotvec0, align 8, !dbg !130
@nslots = internal unnamed_addr global i32 1, align 4, !dbg !137
@slot0 = internal global [256 x i8] zeroinitializer, align 16, !dbg !125
@slotvec0 = internal global %struct.slotvec { i64 256, i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i32 0, i32 0) }, align 8, !dbg !139
@.str.88 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"%s (%s) %s\0A\00", align 1
@.str.1.90 = private unnamed_addr constant [7 x i8] c"%s %s\0A\00", align 1
@.str.2.91 = private unnamed_addr constant [4 x i8] c"(C)\00", align 1
@.str.3.92 = private unnamed_addr constant [204 x i8] c"\0ALicense GPLv3+: GNU GPL version 3 or later <https://gnu.org/licenses/gpl.html>.\0AThis is free software: you are free to change and redistribute it.\0AThere is NO WARRANTY, to the extent permitted by law.\0A\0A\00", align 1
@.str.4.93 = private unnamed_addr constant [16 x i8] c"Written by %s.\0A\00", align 1
@.str.5.94 = private unnamed_addr constant [23 x i8] c"Written by %s and %s.\0A\00", align 1
@.str.6.95 = private unnamed_addr constant [28 x i8] c"Written by %s, %s, and %s.\0A\00", align 1
@.str.7.96 = private unnamed_addr constant [32 x i8] c"Written by %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.8.97 = private unnamed_addr constant [36 x i8] c"Written by %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.9.98 = private unnamed_addr constant [40 x i8] c"Written by %s, %s, %s,\0A%s, %s, and %s.\0A\00", align 1
@.str.10.99 = private unnamed_addr constant [44 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, and %s.\0A\00", align 1
@.str.11.100 = private unnamed_addr constant [48 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0Aand %s.\0A\00", align 1
@.str.12.101 = private unnamed_addr constant [52 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, and %s.\0A\00", align 1
@.str.13.102 = private unnamed_addr constant [60 x i8] c"Written by %s, %s, %s,\0A%s, %s, %s, %s,\0A%s, %s, and others.\0A\00", align 1
@.str.14.105 = private unnamed_addr constant [21 x i8] c"\0AReport bugs to: %s\0A\00", align 1
@.str.15.106 = private unnamed_addr constant [22 x i8] c"bug-coreutils@gnu.org\00", align 1
@.str.16.107 = private unnamed_addr constant [20 x i8] c"%s home page: <%s>\0A\00", align 1
@.str.17.108 = private unnamed_addr constant [14 x i8] c"GNU coreutils\00", align 1
@.str.18.109 = private unnamed_addr constant [40 x i8] c"https://www.gnu.org/software/coreutils/\00", align 1
@.str.19.110 = private unnamed_addr constant [65 x i8] c"General help using GNU software: <https://www.gnu.org/gethelp/>\0A\00", align 1
@version_etc_copyright = dso_local constant [47 x i8] c"Copyright %s %d Free Software Foundation, Inc.\00", align 16, !dbg !145
@.str.1.121 = private unnamed_addr constant [17 x i8] c"memory exhausted\00", align 1
@.str.122 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.133 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.1.134 = private unnamed_addr constant [6 x i8] c"POSIX\00", align 1
@.str.137 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.138 = private unnamed_addr constant [6 x i8] c"ASCII\00", align 1

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @usage(i32) local_unnamed_addr #0 !dbg !595 {
  %2 = alloca [7 x %struct.infomap], align 16
  call void @llvm.dbg.declare(metadata [7 x %struct.infomap]* %2, metadata !600, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i32 %0, metadata !599, metadata !DIExpression()), !dbg !622
  %3 = icmp eq i32 %0, 0, !dbg !623
  br i1 %3, label %9, label %4, !dbg !624

; <label>:4:                                      ; preds = %1
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !625, !tbaa !627
  %6 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 5) #11, !dbg !625
  %7 = load i8*, i8** @program_name, align 8, !dbg !625, !tbaa !627
  %8 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %5, i32 1, i8* %6, i8* %7) #11, !dbg !625
  br label %65, !dbg !625

; <label>:9:                                      ; preds = %1
  %10 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 5) #11, !dbg !631
  %11 = load i8*, i8** @program_name, align 8, !dbg !631, !tbaa !627
  %12 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %10, i8* %11) #11, !dbg !631
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 5) #11, !dbg !632
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !632, !tbaa !627
  %15 = tail call i32 @fputs_unlocked(i8* %13, %struct._IO_FILE* %14), !dbg !632
  %16 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.3, i64 0, i64 0), i32 5) #11, !dbg !633
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !633, !tbaa !627
  %18 = tail call i32 @fputs_unlocked(i8* %16, %struct._IO_FILE* %17), !dbg !633
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 5) #11, !dbg !634
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !634, !tbaa !627
  %21 = tail call i32 @fputs_unlocked(i8* %19, %struct._IO_FILE* %20), !dbg !634
  %22 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i64 0, i64 0), i32 5) #11, !dbg !635
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !635, !tbaa !627
  %24 = tail call i32 @fputs_unlocked(i8* %22, %struct._IO_FILE* %23), !dbg !635
  %25 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i32 5) #11, !dbg !636
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !636, !tbaa !627
  %27 = tail call i32 @fputs_unlocked(i8* %25, %struct._IO_FILE* %26), !dbg !636
  %28 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([191 x i8], [191 x i8]* @.str.7, i64 0, i64 0), i32 5) #11, !dbg !637
  %29 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !637
  %30 = bitcast [7 x %struct.infomap]* %2 to i8*, !dbg !638
  call void @llvm.lifetime.start.p0i8(i64 112, i8* nonnull %30) #11, !dbg !638
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 %30, i8* align 16 bitcast ([7 x %struct.infomap]* @emit_ancillary_info.infomap to i8*), i64 112, i1 false) #11, !dbg !618
  %31 = getelementptr inbounds [7 x %struct.infomap], [7 x %struct.infomap]* %2, i64 0, i64 0, !dbg !639
  call void @llvm.dbg.value(metadata %struct.infomap* %31, metadata !607, metadata !DIExpression()) #11, !dbg !640
  br label %32, !dbg !641

; <label>:32:                                     ; preds = %37, %9
  %33 = phi i8* [ %40, %37 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0), %9 ]
  %34 = phi %struct.infomap* [ %38, %37 ], [ %31, %9 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %34, metadata !607, metadata !DIExpression()) #11, !dbg !640
  %35 = tail call i32 @strcmp(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* nonnull %33) #14, !dbg !641
  %36 = icmp eq i32 %35, 0, !dbg !641
  br i1 %36, label %42, label %37, !dbg !642

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds %struct.infomap, %struct.infomap* %34, i64 1, !dbg !643
  call void @llvm.dbg.value(metadata %struct.infomap* %38, metadata !607, metadata !DIExpression()) #11, !dbg !640
  %39 = getelementptr inbounds %struct.infomap, %struct.infomap* %38, i64 0, i32 0, !dbg !644
  %40 = load i8*, i8** %39, align 8, !dbg !644, !tbaa !645
  %41 = icmp eq i8* %40, null, !dbg !647
  br i1 %41, label %42, label %32, !dbg !648, !llvm.loop !649

; <label>:42:                                     ; preds = %37, %32
  %43 = phi %struct.infomap* [ %38, %37 ], [ %34, %32 ]
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !607, metadata !DIExpression()) #11, !dbg !640
  call void @llvm.dbg.value(metadata %struct.infomap* %43, metadata !607, metadata !DIExpression()) #11, !dbg !640
  %44 = getelementptr inbounds %struct.infomap, %struct.infomap* %43, i64 0, i32 1, !dbg !652
  %45 = load i8*, i8** %44, align 8, !dbg !652, !tbaa !654
  %46 = icmp eq i8* %45, null, !dbg !655
  %47 = select i1 %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %45, !dbg !656
  call void @llvm.dbg.value(metadata i8* %47, metadata !606, metadata !DIExpression()) #11, !dbg !657
  %48 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.25, i64 0, i64 0), i32 5) #11, !dbg !658
  %49 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0)) #11, !dbg !658
  %50 = tail call i8* @setlocale(i32 5, i8* null) #11, !dbg !659
  call void @llvm.dbg.value(metadata i8* %50, metadata !614, metadata !DIExpression()) #11, !dbg !660
  %51 = icmp eq i8* %50, null, !dbg !661
  br i1 %51, label %58, label %52, !dbg !663

; <label>:52:                                     ; preds = %42
  %53 = tail call i32 @strncmp(i8* nonnull %50, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i64 0, i64 0), i64 3) #14, !dbg !664
  %54 = icmp eq i32 %53, 0, !dbg !664
  br i1 %54, label %58, label %55, !dbg !665

; <label>:55:                                     ; preds = %52
  %56 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.28, i64 0, i64 0), i32 5) #11, !dbg !666
  %57 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %56, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !666
  br label %58, !dbg !668

; <label>:58:                                     ; preds = %42, %52, %55
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.29, i64 0, i64 0), i32 5) #11, !dbg !669
  %60 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)) #11, !dbg !669
  %61 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.30, i64 0, i64 0), i32 5) #11, !dbg !670
  %62 = icmp eq i8* %47, getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), !dbg !670
  %63 = select i1 %62, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), !dbg !670
  %64 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %61, i8* %47, i8* %63) #11, !dbg !670
  call void @llvm.lifetime.end.p0i8(i64 112, i8* nonnull %30) #11, !dbg !671
  br label %65

; <label>:65:                                     ; preds = %58, %4
  tail call void @exit(i32 %0) #15, !dbg !672
  unreachable, !dbg !672
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
define dso_local i32 @main(i32, i8**) local_unnamed_addr #7 !dbg !673 {
  %3 = alloca %struct.stat, align 8
  %4 = alloca %struct.stat, align 8
  %5 = alloca %struct.timespec, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !678, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.value(metadata i8** %1, metadata !679, metadata !DIExpression()), !dbg !694
  %9 = tail call i8* @getenv(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0)) #11, !dbg !695
  %10 = icmp ne i8* %9, null, !dbg !696
  %11 = zext i1 %10 to i8, !dbg !697
  call void @llvm.dbg.value(metadata i8 %11, metadata !681, metadata !DIExpression()), !dbg !697
  %12 = load i8*, i8** %1, align 8, !dbg !698, !tbaa !627
  tail call void @set_program_name(i8* %12) #11, !dbg !699
  %13 = tail call i8* @setlocale(i32 6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)) #11, !dbg !700
  %14 = tail call i8* @bindtextdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i64 0, i64 0)) #11, !dbg !701
  %15 = tail call i8* @textdomain(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0)) #11, !dbg !702
  %16 = tail call i32 @atexit(void ()* nonnull @close_stdout) #11, !dbg !703
  br label %17, !dbg !704

; <label>:17:                                     ; preds = %21, %2
  %18 = phi i8 [ %11, %2 ], [ %22, %21 ], !dbg !697
  call void @llvm.dbg.value(metadata i8 %18, metadata !681, metadata !DIExpression()), !dbg !697
  %19 = tail call i32 @getopt_long(i32 %0, i8** %1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), %struct.option* getelementptr inbounds ([5 x %struct.option], [5 x %struct.option]* @longopts, i64 0, i64 0), i32* null) #11, !dbg !705
  call void @llvm.dbg.value(metadata i32 %19, metadata !682, metadata !DIExpression()), !dbg !706
  switch i32 %19, label %27 [
    i32 -1, label %28
    i32 76, label %21
    i32 80, label %20
    i32 -130, label %23
    i32 -131, label %24
  ], !dbg !707

; <label>:20:                                     ; preds = %17
  call void @llvm.dbg.value(metadata i8 0, metadata !681, metadata !DIExpression()), !dbg !697
  br label %21, !dbg !708

; <label>:21:                                     ; preds = %20, %17
  %22 = phi i8 [ 0, %20 ], [ 1, %17 ]
  br label %17, !dbg !697

; <label>:23:                                     ; preds = %17
  tail call void @usage(i32 0) #16, !dbg !710
  unreachable, !dbg !710

; <label>:24:                                     ; preds = %17
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !711, !tbaa !627
  %26 = load i8*, i8** @Version, align 8, !dbg !711, !tbaa !627
  tail call void (%struct._IO_FILE*, i8*, i8*, i8*, ...) @version_etc(%struct._IO_FILE* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i64 0, i64 0), i8* %26, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i8* null) #11, !dbg !711
  tail call void @exit(i32 0) #15, !dbg !711
  unreachable, !dbg !711

; <label>:27:                                     ; preds = %17
  tail call void @usage(i32 1) #16, !dbg !712
  unreachable, !dbg !712

; <label>:28:                                     ; preds = %17
  call void @llvm.dbg.value(metadata i8 %18, metadata !681, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i8 %18, metadata !681, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i8 %18, metadata !681, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i8 %18, metadata !681, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i8 %18, metadata !681, metadata !DIExpression()), !dbg !697
  call void @llvm.dbg.value(metadata i8 %18, metadata !681, metadata !DIExpression()), !dbg !697
  %29 = load i32, i32* @optind, align 4, !dbg !713, !tbaa !715
  %30 = icmp slt i32 %29, %0, !dbg !717
  br i1 %30, label %31, label %33, !dbg !718

; <label>:31:                                     ; preds = %28
  %32 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i64 0, i64 0), i32 5) #11, !dbg !719
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* %32) #11, !dbg !720
  br label %33, !dbg !720

; <label>:33:                                     ; preds = %31, %28
  %34 = icmp eq i8 %18, 0, !dbg !721
  br i1 %34, label %78, label %35, !dbg !723

; <label>:35:                                     ; preds = %33
  %36 = bitcast %struct.stat* %7 to i8*, !dbg !724
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %36) #11, !dbg !724
  %37 = bitcast %struct.stat* %8 to i8*, !dbg !774
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %37) #11, !dbg !774
  %38 = tail call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.36, i64 0, i64 0)) #11, !dbg !775
  call void @llvm.dbg.value(metadata i8* %38, metadata !770, metadata !DIExpression()) #11, !dbg !776
  %39 = icmp eq i8* %38, null, !dbg !777
  br i1 %39, label %75, label %40, !dbg !779

; <label>:40:                                     ; preds = %35
  %41 = load i8, i8* %38, align 1, !dbg !780, !tbaa !781
  %42 = icmp eq i8 %41, 47, !dbg !782
  br i1 %42, label %43, label %75, !dbg !783

; <label>:43:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %38, metadata !771, metadata !DIExpression()) #11, !dbg !784
  %44 = tail call i8* @strstr(i8* nonnull %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #14, !dbg !785
  call void @llvm.dbg.value(metadata i8* %44, metadata !771, metadata !DIExpression()) #11, !dbg !784
  %45 = icmp eq i8* %44, null, !dbg !786
  br i1 %45, label %57, label %46, !dbg !786

; <label>:46:                                     ; preds = %43, %53
  %47 = phi i8* [ %55, %53 ], [ %44, %43 ]
  %48 = getelementptr inbounds i8, i8* %47, i64 2, !dbg !787
  %49 = load i8, i8* %48, align 1, !dbg !787, !tbaa !781
  switch i8 %49, label %53 [
    i8 0, label %75
    i8 47, label %75
    i8 46, label %50
  ], !dbg !790

; <label>:50:                                     ; preds = %46
  %51 = getelementptr inbounds i8, i8* %47, i64 3, !dbg !791
  %52 = load i8, i8* %51, align 1, !dbg !791, !tbaa !781
  switch i8 %52, label %53 [
    i8 0, label %75
    i8 47, label %75
  ], !dbg !792

; <label>:53:                                     ; preds = %50, %46
  %54 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !793
  call void @llvm.dbg.value(metadata i8* %54, metadata !771, metadata !DIExpression()) #11, !dbg !784
  %55 = tail call i8* @strstr(i8* nonnull %54, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.37, i64 0, i64 0)) #14, !dbg !785
  call void @llvm.dbg.value(metadata i8* %55, metadata !771, metadata !DIExpression()) #11, !dbg !784
  %56 = icmp eq i8* %55, null, !dbg !786
  br i1 %56, label %57, label %46, !dbg !786, !llvm.loop !794

; <label>:57:                                     ; preds = %53, %43
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !729, metadata !DIExpression(DW_OP_deref)) #11, !dbg !797
  call void @llvm.dbg.value(metadata i8* %38, metadata !798, metadata !DIExpression()) #11, !dbg !806
  call void @llvm.dbg.value(metadata %struct.stat* %7, metadata !805, metadata !DIExpression()) #11, !dbg !806
  %58 = call i32 @__xstat(i32 1, i8* nonnull %38, %struct.stat* nonnull %7) #11, !dbg !809
  %59 = icmp eq i32 %58, 0, !dbg !810
  br i1 %59, label %60, label %75, !dbg !811

; <label>:60:                                     ; preds = %57
  call void @llvm.dbg.value(metadata %struct.stat* %8, metadata !769, metadata !DIExpression(DW_OP_deref)) #11, !dbg !812
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), metadata !798, metadata !DIExpression()) #11, !dbg !813
  call void @llvm.dbg.value(metadata %struct.stat* %8, metadata !805, metadata !DIExpression()) #11, !dbg !813
  %61 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.stat* nonnull %8) #11, !dbg !815
  %62 = icmp eq i32 %61, 0, !dbg !816
  br i1 %62, label %63, label %75, !dbg !817

; <label>:63:                                     ; preds = %60
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 1, !dbg !818
  %65 = load i64, i64* %64, align 8, !dbg !818, !tbaa !819
  %66 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 1, !dbg !818
  %67 = load i64, i64* %66, align 8, !dbg !818, !tbaa !819
  %68 = icmp eq i64 %65, %67, !dbg !818
  br i1 %68, label %69, label %75, !dbg !818

; <label>:69:                                     ; preds = %63
  %70 = getelementptr inbounds %struct.stat, %struct.stat* %7, i64 0, i32 0, !dbg !818
  %71 = load i64, i64* %70, align 8, !dbg !818, !tbaa !823
  %72 = getelementptr inbounds %struct.stat, %struct.stat* %8, i64 0, i32 0, !dbg !818
  %73 = load i64, i64* %72, align 8, !dbg !818, !tbaa !823
  %74 = icmp eq i64 %71, %73, !dbg !818
  br i1 %74, label %76, label %75, !dbg !824

; <label>:75:                                     ; preds = %50, %50, %46, %46, %40, %35, %69, %63, %60, %57
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %37) #11, !dbg !825
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %36) #11, !dbg !825
  call void @llvm.dbg.value(metadata i8* %38, metadata !680, metadata !DIExpression()), !dbg !826
  br label %78, !dbg !827

; <label>:76:                                     ; preds = %69
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %37) #11, !dbg !825
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %36) #11, !dbg !825
  call void @llvm.dbg.value(metadata i8* %38, metadata !680, metadata !DIExpression()), !dbg !826
  %77 = call i32 @puts(i8* nonnull %38), !dbg !828
  br label %296, !dbg !831

; <label>:78:                                     ; preds = %75, %33
  %79 = call i8* @xgetcwd() #11, !dbg !832
  call void @llvm.dbg.value(metadata i8* %79, metadata !680, metadata !DIExpression()), !dbg !826
  %80 = icmp eq i8* %79, null, !dbg !833
  br i1 %80, label %83, label %81, !dbg !834

; <label>:81:                                     ; preds = %78
  %82 = call i32 @puts(i8* nonnull %79), !dbg !835
  call void @free(i8* nonnull %79) #11, !dbg !837
  br label %296, !dbg !838

; <label>:83:                                     ; preds = %78
  %84 = call noalias i8* @xmalloc(i64 24) #11, !dbg !839
  call void @llvm.dbg.value(metadata i8* %84, metadata !844, metadata !DIExpression()) #11, !dbg !846
  %85 = getelementptr inbounds i8, i8* %84, i64 8, !dbg !847
  %86 = bitcast i8* %85 to i64*, !dbg !847
  store i64 8192, i64* %86, align 8, !dbg !848, !tbaa !849
  %87 = call noalias i8* @xmalloc(i64 8192) #11, !dbg !851
  %88 = bitcast i8* %84 to i8**, !dbg !852
  store i8* %87, i8** %88, align 8, !dbg !853, !tbaa !854
  %89 = getelementptr inbounds i8, i8* %87, i64 8191, !dbg !855
  %90 = getelementptr inbounds i8, i8* %84, i64 16, !dbg !856
  %91 = bitcast i8* %90 to i8**, !dbg !856
  store i8* %89, i8** %91, align 8, !dbg !857, !tbaa !858
  store i8 0, i8* %89, align 1, !dbg !859, !tbaa !781
  call void @llvm.dbg.value(metadata i8* %84, metadata !684, metadata !DIExpression()), !dbg !860
  call void @llvm.dbg.value(metadata i8* %84, metadata !861, metadata !DIExpression()) #11, !dbg !879
  call void @llvm.dbg.value(metadata i64 1, metadata !866, metadata !DIExpression()) #11, !dbg !881
  %92 = bitcast %struct.timespec* %5 to i8*, !dbg !882
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %92) #11, !dbg !882
  call void @llvm.dbg.value(metadata %struct.timespec* %5, metadata !867, metadata !DIExpression(DW_OP_deref)) #11, !dbg !883
  %93 = call %struct.timespec* @get_root_dev_ino(%struct.timespec* nonnull %5) #11, !dbg !884
  call void @llvm.dbg.value(metadata %struct.timespec* %93, metadata !876, metadata !DIExpression()) #11, !dbg !885
  %94 = bitcast %struct.stat* %6 to i8*, !dbg !886
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %94) #11, !dbg !886
  %95 = icmp eq %struct.timespec* %93, null, !dbg !887
  %96 = ptrtoint i8* %89 to i64, !dbg !889
  br i1 %95, label %97, label %102, !dbg !889

; <label>:97:                                     ; preds = %83
  %98 = tail call i32* @__errno_location() #17, !dbg !890
  %99 = load i32, i32* %98, align 4, !dbg !890, !tbaa !715
  %100 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0), i32 5) #11, !dbg !890
  %101 = call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.40, i64 0, i64 0)) #11, !dbg !890
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %99, i8* %100, i8* %101) #11, !dbg !890
  unreachable, !dbg !890

; <label>:102:                                    ; preds = %83
  call void @llvm.dbg.value(metadata %struct.stat* %6, metadata !878, metadata !DIExpression(DW_OP_deref)) #11, !dbg !891
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), metadata !798, metadata !DIExpression()) #11, !dbg !892
  call void @llvm.dbg.value(metadata %struct.stat* %6, metadata !805, metadata !DIExpression()) #11, !dbg !892
  %103 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.stat* nonnull %6) #11, !dbg !895
  %104 = icmp slt i32 %103, 0, !dbg !896
  br i1 %104, label %116, label %105, !dbg !897

; <label>:105:                                    ; preds = %102
  %106 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 1
  %107 = getelementptr inbounds %struct.timespec, %struct.timespec* %93, i64 0, i32 0
  %108 = getelementptr inbounds %struct.stat, %struct.stat* %6, i64 0, i32 0
  %109 = getelementptr inbounds %struct.timespec, %struct.timespec* %93, i64 0, i32 1
  %110 = bitcast %struct.stat* %3 to i8*
  %111 = getelementptr inbounds %struct.stat, %struct.stat* %3, i64 0, i32 0
  %112 = bitcast %struct.stat* %4 to i8*
  %113 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 1
  %114 = getelementptr inbounds %struct.stat, %struct.stat* %4, i64 0, i32 0
  %115 = bitcast i8* %84 to i64*
  br label %121, !dbg !898

; <label>:116:                                    ; preds = %102
  %117 = tail call i32* @__errno_location() #17, !dbg !901
  %118 = load i32, i32* %117, align 4, !dbg !901, !tbaa !715
  %119 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !901
  %120 = call i8* @quotearg_style(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0)) #11, !dbg !901
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %118, i8* %119, i8* %120) #11, !dbg !901
  unreachable, !dbg !901

; <label>:121:                                    ; preds = %269, %105
  %122 = phi i8* [ %253, %269 ], [ %89, %105 ]
  %123 = phi i64 [ %254, %269 ], [ %96, %105 ]
  %124 = phi i64 [ %133, %269 ], [ 1, %105 ], !dbg !902
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  %125 = load i64, i64* %106, align 8, !dbg !898, !tbaa !819
  %126 = load i64, i64* %107, align 8, !dbg !898, !tbaa !903
  %127 = icmp eq i64 %125, %126, !dbg !898
  br i1 %127, label %128, label %132, !dbg !898

; <label>:128:                                    ; preds = %121
  %129 = load i64, i64* %108, align 8, !dbg !898, !tbaa !823
  %130 = load i64, i64* %109, align 8, !dbg !898, !tbaa !905
  %131 = icmp eq i64 %129, %130, !dbg !898
  br i1 %131, label %270, label %132, !dbg !906

; <label>:132:                                    ; preds = %128, %121
  %133 = add i64 %124, 1, !dbg !907
  call void @llvm.dbg.value(metadata i64 %133, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata %struct.stat* %6, metadata !878, metadata !DIExpression(DW_OP_deref)) #11, !dbg !891
  call void @llvm.dbg.value(metadata %struct.stat* %6, metadata !908, metadata !DIExpression()) #11, !dbg !944
  call void @llvm.dbg.value(metadata i8* %84, metadata !913, metadata !DIExpression()) #11, !dbg !946
  call void @llvm.dbg.value(metadata i64 %124, metadata !914, metadata !DIExpression()) #11, !dbg !947
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %110) #11, !dbg !948
  %134 = call %struct.__dirstream* @opendir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #11, !dbg !949
  call void @llvm.dbg.value(metadata %struct.__dirstream* %134, metadata !915, metadata !DIExpression()) #11, !dbg !950
  %135 = icmp eq %struct.__dirstream* %134, null, !dbg !951
  br i1 %135, label %136, label %142, !dbg !953

; <label>:136:                                    ; preds = %132
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  %137 = tail call i32* @__errno_location() #17, !dbg !954
  %138 = load i32, i32* %137, align 4, !dbg !954, !tbaa !715
  %139 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.43, i64 0, i64 0), i32 5) #11, !dbg !954
  %140 = call fastcc i8* @nth_parent(i64 %124) #11, !dbg !954
  %141 = call i8* @quote(i8* %140) #11, !dbg !954
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %138, i8* %139, i8* %141) #11, !dbg !954
  unreachable, !dbg !954

; <label>:142:                                    ; preds = %132
  %143 = call i32 @dirfd(%struct.__dirstream* nonnull %134) #11, !dbg !955
  call void @llvm.dbg.value(metadata i32 %143, metadata !920, metadata !DIExpression()) #11, !dbg !956
  %144 = icmp sgt i32 %143, -1, !dbg !957
  br i1 %144, label %145, label %147, !dbg !959

; <label>:145:                                    ; preds = %142
  %146 = call i32 @fchdir(i32 %143) #11, !dbg !960
  br label %149, !dbg !959

; <label>:147:                                    ; preds = %142
  %148 = call i32 @chdir(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i64 0, i64 0)) #11, !dbg !961
  br label %149, !dbg !959

; <label>:149:                                    ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ], !dbg !959
  %151 = icmp slt i32 %150, 0, !dbg !962
  br i1 %151, label %152, label %158, !dbg !963

; <label>:152:                                    ; preds = %149
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  %153 = tail call i32* @__errno_location() #17, !dbg !964
  %154 = load i32, i32* %153, align 4, !dbg !964, !tbaa !715
  %155 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.44, i64 0, i64 0), i32 5) #11, !dbg !964
  %156 = call fastcc i8* @nth_parent(i64 %124) #11, !dbg !964
  %157 = call i8* @quote(i8* %156) #11, !dbg !964
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %154, i8* %155, i8* %157) #11, !dbg !964
  unreachable, !dbg !964

; <label>:158:                                    ; preds = %149
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !921, metadata !DIExpression(DW_OP_deref)) #11, !dbg !965
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !921, metadata !DIExpression(DW_OP_deref)) #11, !dbg !965
  br i1 %144, label %159, label %161, !dbg !966

; <label>:159:                                    ; preds = %158
  call void @llvm.dbg.value(metadata i32 %143, metadata !968, metadata !DIExpression()) #11, !dbg !974
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !973, metadata !DIExpression()) #11, !dbg !974
  %160 = call i32 @__fxstat(i32 1, i32 %143, %struct.stat* nonnull %3) #11, !dbg !976
  br label %163, !dbg !966

; <label>:161:                                    ; preds = %158
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), metadata !798, metadata !DIExpression()) #11, !dbg !977
  call void @llvm.dbg.value(metadata %struct.stat* %3, metadata !805, metadata !DIExpression()) #11, !dbg !977
  %162 = call i32 @__xstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i64 0, i64 0), %struct.stat* nonnull %3) #11, !dbg !979
  br label %163, !dbg !966

; <label>:163:                                    ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ], !dbg !966
  %165 = icmp slt i32 %164, 0, !dbg !980
  br i1 %165, label %166, label %172, !dbg !981

; <label>:166:                                    ; preds = %163
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  %167 = tail call i32* @__errno_location() #17, !dbg !982
  %168 = load i32, i32* %167, align 4, !dbg !982, !tbaa !715
  %169 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0), i32 5) #11, !dbg !982
  %170 = call fastcc i8* @nth_parent(i64 %124) #11, !dbg !982
  %171 = call i8* @quote(i8* %170) #11, !dbg !982
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %168, i8* %169, i8* %171) #11, !dbg !982
  unreachable, !dbg !982

; <label>:172:                                    ; preds = %163
  %173 = load i64, i64* %111, align 8, !dbg !983, !tbaa !823
  %174 = load i64, i64* %108, align 8, !dbg !984, !tbaa !823
  %175 = icmp ne i64 %173, %174, !dbg !985
  call void @llvm.dbg.value(metadata i8 0, metadata !923, metadata !DIExpression()) #11, !dbg !986
  call void @llvm.dbg.value(metadata %struct.__dirstream* %134, metadata !915, metadata !DIExpression()) #11, !dbg !950
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %112) #11, !dbg !987
  %176 = tail call i32* @__errno_location() #17, !dbg !988
  store i32 0, i32* %176, align 4, !dbg !989, !tbaa !715
  call void @llvm.dbg.value(metadata %struct.__dirstream* %134, metadata !990, metadata !DIExpression()) #11, !dbg !997
  %177 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %134) #11, !dbg !999
  call void @llvm.dbg.value(metadata %struct.dirent* %177, metadata !995, metadata !DIExpression()) #11, !dbg !1000
  %178 = icmp eq %struct.dirent* %177, null, !dbg !1001
  br i1 %178, label %196, label %179, !dbg !1003

; <label>:179:                                    ; preds = %172, %194
  %180 = phi %struct.dirent* [ %195, %194 ], [ %177, %172 ]
  %181 = getelementptr inbounds %struct.dirent, %struct.dirent* %180, i64 0, i32 4, i64 0, !dbg !1004
  call void @llvm.dbg.value(metadata i8* %181, metadata !1005, metadata !DIExpression()) #11, !dbg !1013
  %182 = load i8, i8* %181, align 1, !dbg !1015, !tbaa !781
  %183 = icmp eq i8 %182, 46, !dbg !1016
  br i1 %183, label %184, label %201, !dbg !1017

; <label>:184:                                    ; preds = %179
  %185 = getelementptr inbounds %struct.dirent, %struct.dirent* %180, i64 0, i32 4, i64 1, !dbg !1018
  %186 = load i8, i8* %185, align 1, !dbg !1018, !tbaa !781
  %187 = icmp eq i8 %186, 46, !dbg !1019
  %188 = select i1 %187, i64 2, i64 1, !dbg !1020
  %189 = getelementptr inbounds %struct.dirent, %struct.dirent* %180, i64 0, i32 4, i64 %188, !dbg !1020
  %190 = load i8, i8* %189, align 1, !dbg !1020, !tbaa !781
  call void @llvm.dbg.value(metadata i8 %190, metadata !1010, metadata !DIExpression()) #11, !dbg !1021
  switch i8 %190, label %201 [
    i8 47, label %191
    i8 0, label %191
  ], !dbg !1022

; <label>:191:                                    ; preds = %184, %184
  %192 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %134) #11, !dbg !999
  call void @llvm.dbg.value(metadata %struct.dirent* %192, metadata !995, metadata !DIExpression()) #11, !dbg !1000
  %193 = icmp eq %struct.dirent* %192, null, !dbg !1001
  br i1 %193, label %196, label %194, !dbg !1003

; <label>:194:                                    ; preds = %191, %249
  %195 = phi %struct.dirent* [ %192, %191 ], [ %250, %249 ]
  br label %179, !dbg !1004

; <label>:196:                                    ; preds = %249, %191, %172
  call void @llvm.dbg.value(metadata %struct.dirent* %180, metadata !924, metadata !DIExpression()) #11, !dbg !1023
  %197 = load i32, i32* %176, align 4, !dbg !1024, !tbaa !715
  %198 = icmp eq i32 %197, 0, !dbg !1024
  br i1 %198, label %252, label %199, !dbg !1025

; <label>:199:                                    ; preds = %196
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i32 %197, metadata !939, metadata !DIExpression()) #11, !dbg !1026
  %200 = call i32 @closedir(%struct.__dirstream* nonnull %134) #11, !dbg !1027
  store i32 %197, i32* %176, align 4, !dbg !1028, !tbaa !715
  call void @llvm.dbg.value(metadata %struct.__dirstream* null, metadata !915, metadata !DIExpression()) #11, !dbg !950
  call void @llvm.dbg.value(metadata %struct.__dirstream* %134, metadata !915, metadata !DIExpression()) #11, !dbg !950
  call void @llvm.dbg.value(metadata i8 0, metadata !923, metadata !DIExpression()) #11, !dbg !986
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %112) #11, !dbg !1029
  br label %258, !dbg !1030

; <label>:201:                                    ; preds = %184, %179
  %202 = getelementptr inbounds %struct.dirent, %struct.dirent* %180, i64 0, i32 4, i64 0, !dbg !1004
  call void @llvm.dbg.value(metadata %struct.dirent* %180, metadata !924, metadata !DIExpression()) #11, !dbg !1023
  %203 = getelementptr inbounds %struct.dirent, %struct.dirent* %180, i64 0, i32 0, !dbg !1032
  %204 = load i64, i64* %203, align 8, !dbg !1032, !tbaa !1033
  call void @llvm.dbg.value(metadata i64 %204, metadata !938, metadata !DIExpression()) #11, !dbg !1036
  %205 = icmp eq i64 %204, 0, !dbg !1037
  %206 = or i1 %175, %205, !dbg !1039
  br i1 %206, label %207, label %212, !dbg !1039

; <label>:207:                                    ; preds = %201
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !937, metadata !DIExpression(DW_OP_deref)) #11, !dbg !1040
  call void @llvm.dbg.value(metadata i8* %181, metadata !1041, metadata !DIExpression()) #11, !dbg !1045
  call void @llvm.dbg.value(metadata %struct.stat* %4, metadata !1044, metadata !DIExpression()) #11, !dbg !1045
  %208 = call i32 @__lxstat(i32 1, i8* nonnull %202, %struct.stat* nonnull %4) #11, !dbg !1049
  %209 = icmp slt i32 %208, 0, !dbg !1050
  br i1 %209, label %249, label %210, !dbg !1051, !llvm.loop !1052

; <label>:210:                                    ; preds = %207
  %211 = load i64, i64* %113, align 8, !dbg !1055, !tbaa !819
  call void @llvm.dbg.value(metadata i64 %211, metadata !938, metadata !DIExpression()) #11, !dbg !1036
  br label %212, !dbg !1056

; <label>:212:                                    ; preds = %210, %201
  %213 = phi i64 [ %211, %210 ], [ %204, %201 ], !dbg !1057
  call void @llvm.dbg.value(metadata i64 %213, metadata !938, metadata !DIExpression()) #11, !dbg !1036
  %214 = load i64, i64* %106, align 8, !dbg !1058, !tbaa !819
  %215 = icmp eq i64 %213, %214, !dbg !1060
  br i1 %215, label %216, label %249, !dbg !1061, !llvm.loop !1052

; <label>:216:                                    ; preds = %212
  br i1 %175, label %217, label %221, !dbg !1062

; <label>:217:                                    ; preds = %216
  %218 = load i64, i64* %114, align 8, !dbg !1064, !tbaa !823
  %219 = load i64, i64* %108, align 8, !dbg !1065, !tbaa !823
  %220 = icmp eq i64 %218, %219, !dbg !1066
  br i1 %220, label %221, label %249, !dbg !1067

; <label>:221:                                    ; preds = %217, %216
  %222 = call i64 @strlen(i8* nonnull %202) #14, !dbg !1068
  call void @llvm.dbg.value(metadata i8* %84, metadata !1070, metadata !DIExpression()) #11, !dbg !1083
  call void @llvm.dbg.value(metadata i8* %181, metadata !1075, metadata !DIExpression()) #11, !dbg !1085
  call void @llvm.dbg.value(metadata i64 %222, metadata !1076, metadata !DIExpression()) #11, !dbg !1086
  %223 = load i64, i64* %115, align 8, !dbg !1087, !tbaa !854
  %224 = sub i64 %123, %223, !dbg !1088
  call void @llvm.dbg.value(metadata i64 %224, metadata !1077, metadata !DIExpression()) #11, !dbg !1089
  %225 = add i64 %222, 1, !dbg !1090
  %226 = icmp ult i64 %224, %225, !dbg !1091
  %227 = inttoptr i64 %123 to i8*, !dbg !1092
  %228 = inttoptr i64 %223 to i8*, !dbg !1092
  br i1 %226, label %229, label %242, !dbg !1092

; <label>:229:                                    ; preds = %221
  %230 = load i64, i64* %86, align 8, !dbg !1093, !tbaa !849
  %231 = add i64 %230, %225, !dbg !1094
  call void @llvm.dbg.value(metadata i64 %231, metadata !1078, metadata !DIExpression()) #11, !dbg !1095
  call void @llvm.dbg.value(metadata i64 2, metadata !1096, metadata !DIExpression()) #11, !dbg !1102
  call void @llvm.dbg.value(metadata i64 %231, metadata !1101, metadata !DIExpression()) #11, !dbg !1104
  %232 = icmp ugt i64 %231, 4611686018427387903, !dbg !1105
  br i1 %232, label %233, label %234, !dbg !1107

; <label>:233:                                    ; preds = %229
  call void @xalloc_die() #15, !dbg !1108
  unreachable, !dbg !1108

; <label>:234:                                    ; preds = %229
  %235 = shl i64 %231, 1, !dbg !1109
  %236 = call noalias i8* @xmalloc(i64 %235) #11, !dbg !1110
  call void @llvm.dbg.value(metadata i8* %236, metadata !1081, metadata !DIExpression()) #11, !dbg !1111
  %237 = sub i64 %230, %224, !dbg !1112
  call void @llvm.dbg.value(metadata i64 %237, metadata !1082, metadata !DIExpression()) #11, !dbg !1113
  %238 = getelementptr inbounds i8, i8* %236, i64 %235, !dbg !1114
  %239 = sub i64 0, %237, !dbg !1115
  %240 = getelementptr inbounds i8, i8* %238, i64 %239, !dbg !1115
  store i8* %240, i8** %91, align 8, !dbg !1116, !tbaa !858
  %241 = getelementptr inbounds i8, i8* %228, i64 %224, !dbg !1117
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %240, i8* align 1 %241, i64 %237, i1 false) #11, !dbg !1118
  call void @free(i8* %228) #11, !dbg !1119
  store i8* %236, i8** %88, align 8, !dbg !1120, !tbaa !854
  store i64 %235, i64* %86, align 8, !dbg !1121, !tbaa !849
  br label %242, !dbg !1122

; <label>:242:                                    ; preds = %234, %221
  %243 = phi i8* [ %240, %234 ], [ %227, %221 ], !dbg !1123
  %244 = xor i64 %222, -1, !dbg !1123
  %245 = getelementptr inbounds i8, i8* %243, i64 %244, !dbg !1123
  store i8* %245, i8** %91, align 8, !dbg !1123, !tbaa !858
  store i8 47, i8* %245, align 1, !dbg !1124, !tbaa !781
  %246 = load i8*, i8** %91, align 8, !dbg !1125, !tbaa !858
  %247 = getelementptr inbounds i8, i8* %246, i64 1, !dbg !1126
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %247, i8* nonnull align 1 %202, i64 %222, i1 false) #11, !dbg !1127
  call void @llvm.dbg.value(metadata i8 1, metadata !923, metadata !DIExpression()) #11, !dbg !986
  %248 = ptrtoint i8* %246 to i64, !dbg !1128
  br label %252, !dbg !1128

; <label>:249:                                    ; preds = %217, %212, %207
  call void @llvm.dbg.value(metadata %struct.__dirstream* %134, metadata !915, metadata !DIExpression()) #11, !dbg !950
  call void @llvm.dbg.value(metadata i8 0, metadata !923, metadata !DIExpression()) #11, !dbg !986
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %112) #11, !dbg !1029
  call void @llvm.dbg.value(metadata %struct.__dirstream* %134, metadata !915, metadata !DIExpression()) #11, !dbg !950
  call void @llvm.dbg.value(metadata i8 0, metadata !923, metadata !DIExpression()) #11, !dbg !986
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %112) #11, !dbg !987
  store i32 0, i32* %176, align 4, !dbg !989, !tbaa !715
  call void @llvm.dbg.value(metadata %struct.__dirstream* %134, metadata !990, metadata !DIExpression()) #11, !dbg !997
  %250 = call %struct.dirent* @readdir(%struct.__dirstream* nonnull %134) #11, !dbg !999
  call void @llvm.dbg.value(metadata %struct.dirent* %250, metadata !995, metadata !DIExpression()) #11, !dbg !1000
  %251 = icmp eq %struct.dirent* %250, null, !dbg !1001
  br i1 %251, label %196, label %194, !dbg !1003

; <label>:252:                                    ; preds = %242, %196
  %253 = phi i8* [ %122, %196 ], [ %246, %242 ]
  %254 = phi i64 [ %123, %196 ], [ %248, %242 ]
  %255 = phi i8 [ 0, %196 ], [ 1, %242 ]
  call void @llvm.dbg.value(metadata %struct.__dirstream* %134, metadata !915, metadata !DIExpression()) #11, !dbg !950
  call void @llvm.dbg.value(metadata i8 0, metadata !923, metadata !DIExpression()) #11, !dbg !986
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %112) #11, !dbg !1029
  %256 = call i32 @closedir(%struct.__dirstream* nonnull %134) #11, !dbg !1129
  %257 = icmp eq i32 %256, 0, !dbg !1130
  br i1 %257, label %263, label %258, !dbg !1131

; <label>:258:                                    ; preds = %252, %199
  %259 = load i32, i32* %176, align 4, !dbg !1132, !tbaa !715
  %260 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.45, i64 0, i64 0), i32 5) #11, !dbg !1132
  %261 = call fastcc i8* @nth_parent(i64 %124) #11, !dbg !1132
  %262 = call i8* @quote(i8* %261) #11, !dbg !1132
  call void (i32, i32, i8*, ...) @error(i32 1, i32 %259, i8* %260, i8* %262) #11, !dbg !1132
  unreachable, !dbg !1132

; <label>:263:                                    ; preds = %252
  %264 = icmp eq i8 %255, 0, !dbg !1134
  br i1 %264, label %265, label %269, !dbg !1136

; <label>:265:                                    ; preds = %263
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  call void @llvm.dbg.value(metadata i64 %124, metadata !866, metadata !DIExpression()) #11, !dbg !881
  %266 = call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.46, i64 0, i64 0), i32 5) #11, !dbg !1137
  %267 = call fastcc i8* @nth_parent(i64 %124) #11, !dbg !1137
  %268 = call i8* @quote(i8* %267) #11, !dbg !1137
  call void (i32, i32, i8*, ...) @error(i32 1, i32 0, i8* %266, i8* %268) #11, !dbg !1137
  unreachable, !dbg !1137

; <label>:269:                                    ; preds = %263
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %94, i8* nonnull align 8 %110, i64 144, i1 false) #11, !dbg !1138, !tbaa.struct !1139
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %110) #11, !dbg !1141
  br label %121, !dbg !1142, !llvm.loop !1143

; <label>:270:                                    ; preds = %128
  %271 = load i8, i8* %122, align 1, !dbg !1146, !tbaa !781
  %272 = icmp eq i8 %271, 0, !dbg !1148
  br i1 %272, label %273, label %292, !dbg !1149

; <label>:273:                                    ; preds = %270
  %274 = ptrtoint i8* %122 to i64, !dbg !1149
  call void @llvm.dbg.value(metadata i8* %84, metadata !1070, metadata !DIExpression()) #11, !dbg !1150
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0), metadata !1075, metadata !DIExpression()) #11, !dbg !1152
  call void @llvm.dbg.value(metadata i64 0, metadata !1076, metadata !DIExpression()) #11, !dbg !1153
  %275 = load i64, i64* %115, align 8, !dbg !1154, !tbaa !854
  %276 = icmp eq i64 %275, %274, !dbg !1155
  %277 = inttoptr i64 %275 to i8*, !dbg !1156
  br i1 %276, label %278, label %289, !dbg !1156

; <label>:278:                                    ; preds = %273
  %279 = load i64, i64* %86, align 8, !dbg !1157, !tbaa !849
  %280 = add i64 %279, 1, !dbg !1158
  call void @llvm.dbg.value(metadata i64 %280, metadata !1078, metadata !DIExpression()) #11, !dbg !1159
  call void @llvm.dbg.value(metadata i64 2, metadata !1096, metadata !DIExpression()) #11, !dbg !1160
  call void @llvm.dbg.value(metadata i64 %280, metadata !1101, metadata !DIExpression()) #11, !dbg !1162
  %281 = icmp ugt i64 %280, 4611686018427387903, !dbg !1163
  br i1 %281, label %282, label %283, !dbg !1164

; <label>:282:                                    ; preds = %278
  call void @xalloc_die() #15, !dbg !1165
  unreachable, !dbg !1165

; <label>:283:                                    ; preds = %278
  %284 = shl i64 %280, 1, !dbg !1166
  %285 = call noalias i8* @xmalloc(i64 %284) #11, !dbg !1167
  call void @llvm.dbg.value(metadata i8* %285, metadata !1081, metadata !DIExpression()) #11, !dbg !1168
  call void @llvm.dbg.value(metadata i64 %279, metadata !1082, metadata !DIExpression()) #11, !dbg !1169
  %286 = getelementptr inbounds i8, i8* %285, i64 %284, !dbg !1170
  %287 = sub i64 0, %279, !dbg !1171
  %288 = getelementptr inbounds i8, i8* %286, i64 %287, !dbg !1171
  store i8* %288, i8** %91, align 8, !dbg !1172, !tbaa !858
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %288, i8* align 1 %277, i64 %279, i1 false) #11, !dbg !1173
  call void @free(i8* %277) #11, !dbg !1174
  store i8* %285, i8** %88, align 8, !dbg !1175, !tbaa !854
  store i64 %284, i64* %86, align 8, !dbg !1176, !tbaa !849
  br label %289, !dbg !1177

; <label>:289:                                    ; preds = %283, %273
  %290 = phi i8* [ %288, %283 ], [ %122, %273 ], !dbg !1178
  %291 = getelementptr inbounds i8, i8* %290, i64 -1, !dbg !1178
  store i8* %291, i8** %91, align 8, !dbg !1178, !tbaa !858
  store i8 47, i8* %291, align 1, !dbg !1179, !tbaa !781
  br label %292, !dbg !1180

; <label>:292:                                    ; preds = %270, %289
  %293 = phi i8* [ %122, %270 ], [ %291, %289 ], !dbg !1181
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %94) #11, !dbg !1182
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %92) #11, !dbg !1182
  %294 = call i32 @puts(i8* nonnull %293), !dbg !1183
  call void @llvm.dbg.value(metadata i8* %84, metadata !1184, metadata !DIExpression()) #11, !dbg !1187
  %295 = load i8*, i8** %88, align 8, !dbg !1189, !tbaa !854
  call void @free(i8* %295) #11, !dbg !1190
  call void @free(i8* nonnull %84) #11, !dbg !1191
  br label %296

; <label>:296:                                    ; preds = %81, %292, %76
  ret i32 0, !dbg !1192
}

; Function Attrs: nounwind readonly
declare i8* @getenv(i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i8* @bindtextdomain(i8*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i8* @textdomain(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @atexit(void ()*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt_long(i32, i8**, i8*, %struct.option*, i32*) local_unnamed_addr #2

declare void @error(i32, i32, i8*, ...) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i8* @strstr(i8*, i8* nocapture) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @puts(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @free(i8* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind readnone
declare i32* @__errno_location() local_unnamed_addr #8

; Function Attrs: nounwind
declare noalias %struct.__dirstream* @opendir(i8* nocapture readonly) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias i8* @nth_parent(i64) unnamed_addr #7 !dbg !1193 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !1197, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.value(metadata i64 3, metadata !1096, metadata !DIExpression()) #11, !dbg !1203
  call void @llvm.dbg.value(metadata i64 %0, metadata !1101, metadata !DIExpression()) #11, !dbg !1205
  %2 = icmp ugt i64 %0, 3074457345618258602, !dbg !1206
  br i1 %2, label %3, label %4, !dbg !1207

; <label>:3:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !1208
  unreachable, !dbg !1208

; <label>:4:                                      ; preds = %1
  %5 = mul i64 %0, 3, !dbg !1209
  %6 = tail call noalias i8* @xmalloc(i64 %5) #11, !dbg !1210
  call void @llvm.dbg.value(metadata i8* %6, metadata !1198, metadata !DIExpression()), !dbg !1211
  call void @llvm.dbg.value(metadata i8* %6, metadata !1199, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i64 0, metadata !1200, metadata !DIExpression()), !dbg !1213
  %7 = icmp eq i64 %0, 0, !dbg !1214
  br i1 %7, label %25, label %8, !dbg !1216

; <label>:8:                                      ; preds = %4
  %9 = add i64 %0, -1, !dbg !1217
  %10 = and i64 %0, 7, !dbg !1217
  %11 = icmp ult i64 %9, 7, !dbg !1217
  br i1 %11, label %14, label %12, !dbg !1217

; <label>:12:                                     ; preds = %8
  %13 = sub i64 %0, %10, !dbg !1217
  br label %28, !dbg !1217

; <label>:14:                                     ; preds = %28, %8
  %15 = phi i8* [ %6, %8 ], [ %38, %28 ]
  %16 = icmp eq i64 %10, 0, !dbg !1216
  br i1 %16, label %23, label %17, !dbg !1216

; <label>:17:                                     ; preds = %14, %17
  %18 = phi i8* [ %20, %17 ], [ %15, %14 ]
  %19 = phi i64 [ %21, %17 ], [ %10, %14 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %18, metadata !1199, metadata !DIExpression()), !dbg !1212
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false), !dbg !1217
  %20 = getelementptr inbounds i8, i8* %18, i64 3, !dbg !1219
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %20, metadata !1199, metadata !DIExpression()), !dbg !1212
  %21 = add i64 %19, -1, !dbg !1216
  %22 = icmp eq i64 %21, 0, !dbg !1216
  br i1 %22, label %23, label %17, !dbg !1216, !llvm.loop !1220

; <label>:23:                                     ; preds = %17, %14
  %24 = getelementptr i8, i8* %6, i64 %5, !dbg !1217
  br label %25, !dbg !1222

; <label>:25:                                     ; preds = %23, %4
  %26 = phi i8* [ %6, %4 ], [ %24, %23 ], !dbg !1223
  call void @llvm.dbg.value(metadata i8* %26, metadata !1199, metadata !DIExpression()), !dbg !1212
  %27 = getelementptr inbounds i8, i8* %26, i64 -1, !dbg !1222
  store i8 0, i8* %27, align 1, !dbg !1224, !tbaa !781
  ret i8* %6, !dbg !1225

; <label>:28:                                     ; preds = %28, %12
  %29 = phi i8* [ %6, %12 ], [ %38, %28 ]
  %30 = phi i64 [ %13, %12 ], [ %39, %28 ]
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression()), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %29, metadata !1199, metadata !DIExpression()), !dbg !1212
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %29, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false), !dbg !1217
  %31 = getelementptr inbounds i8, i8* %29, i64 3, !dbg !1219
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %31, metadata !1199, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %31, metadata !1199, metadata !DIExpression()), !dbg !1212
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %31, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false), !dbg !1217
  %32 = getelementptr inbounds i8, i8* %29, i64 6, !dbg !1219
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %32, metadata !1199, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %32, metadata !1199, metadata !DIExpression()), !dbg !1212
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %32, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false), !dbg !1217
  %33 = getelementptr inbounds i8, i8* %29, i64 9, !dbg !1219
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %33, metadata !1199, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression(DW_OP_plus_uconst, 3, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %33, metadata !1199, metadata !DIExpression()), !dbg !1212
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %33, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false), !dbg !1217
  %34 = getelementptr inbounds i8, i8* %29, i64 12, !dbg !1219
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %34, metadata !1199, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression(DW_OP_plus_uconst, 4, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %34, metadata !1199, metadata !DIExpression()), !dbg !1212
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %34, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false), !dbg !1217
  %35 = getelementptr inbounds i8, i8* %29, i64 15, !dbg !1219
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %35, metadata !1199, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression(DW_OP_plus_uconst, 5, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %35, metadata !1199, metadata !DIExpression()), !dbg !1212
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %35, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false), !dbg !1217
  %36 = getelementptr inbounds i8, i8* %29, i64 18, !dbg !1219
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %36, metadata !1199, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression(DW_OP_plus_uconst, 6, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %36, metadata !1199, metadata !DIExpression()), !dbg !1212
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %36, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false), !dbg !1217
  %37 = getelementptr inbounds i8, i8* %29, i64 21, !dbg !1219
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %37, metadata !1199, metadata !DIExpression()), !dbg !1212
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression(DW_OP_plus_uconst, 7, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %37, metadata !1199, metadata !DIExpression()), !dbg !1212
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 %37, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @.str.47, i64 0, i64 0), i64 3, i1 false), !dbg !1217
  %38 = getelementptr inbounds i8, i8* %29, i64 24, !dbg !1219
  call void @llvm.dbg.value(metadata i64 undef, metadata !1200, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1213
  call void @llvm.dbg.value(metadata i8* %38, metadata !1199, metadata !DIExpression()), !dbg !1212
  %39 = add i64 %30, -8, !dbg !1216
  %40 = icmp eq i64 %39, 0, !dbg !1216
  br i1 %40, label %14, label %28, !dbg !1216, !llvm.loop !1226
}

; Function Attrs: nounwind
declare i32 @dirfd(%struct.__dirstream*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchdir(i32) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @chdir(i8*) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

declare %struct.dirent* @readdir(%struct.__dirstream*) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @closedir(%struct.__dirstream* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind readonly
declare i64 @strlen(i8* nocapture) local_unnamed_addr #9

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_file_name(i8*) local_unnamed_addr #7 !dbg !1228 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1230, metadata !DIExpression()), !dbg !1231
  store i8* %0, i8** @file_name, align 8, !dbg !1232, !tbaa !627
  ret void, !dbg !1233
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout_set_ignore_EPIPE(i1 zeroext) local_unnamed_addr #7 !dbg !1234 {
  %2 = zext i1 %0 to i8
  call void @llvm.dbg.value(metadata i1 %0, metadata !1238, metadata !DIExpression()), !dbg !1239
  store i8 %2, i8* @ignore_EPIPE, align 1, !dbg !1240, !tbaa !1241
  ret void, !dbg !1243
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @close_stdout() #7 !dbg !1244 {
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1251, !tbaa !627
  %2 = tail call i32 @close_stream(%struct._IO_FILE* %1) #11, !dbg !1252
  %3 = icmp eq i32 %2, 0, !dbg !1253
  br i1 %3, label %22, label %4, !dbg !1254

; <label>:4:                                      ; preds = %0
  %5 = load i8, i8* @ignore_EPIPE, align 1, !dbg !1255, !tbaa !1241, !range !1256
  %6 = icmp eq i8 %5, 0, !dbg !1255
  br i1 %6, label %11, label %7, !dbg !1257

; <label>:7:                                      ; preds = %4
  %8 = tail call i32* @__errno_location() #17, !dbg !1258
  %9 = load i32, i32* %8, align 4, !dbg !1258, !tbaa !715
  %10 = icmp eq i32 %9, 32, !dbg !1259
  br i1 %10, label %22, label %11, !dbg !1260

; <label>:11:                                     ; preds = %4, %7
  %12 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.51, i64 0, i64 0), i32 5) #11, !dbg !1261
  call void @llvm.dbg.value(metadata i8* %12, metadata !1248, metadata !DIExpression()), !dbg !1262
  %13 = load i8*, i8** @file_name, align 8, !dbg !1263, !tbaa !627
  %14 = icmp eq i8* %13, null, !dbg !1263
  %15 = tail call i32* @__errno_location() #17, !dbg !1265
  %16 = load i32, i32* %15, align 4, !dbg !1265, !tbaa !715
  br i1 %14, label %19, label %17, !dbg !1266

; <label>:17:                                     ; preds = %11
  %18 = tail call i8* @quotearg_colon(i8* nonnull %13) #11, !dbg !1267
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.52, i64 0, i64 0), i8* %18, i8* %12) #11, !dbg !1268
  br label %20, !dbg !1268

; <label>:19:                                     ; preds = %11
  tail call void (i32, i32, i8*, ...) @error(i32 0, i32 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2.53, i64 0, i64 0), i8* %12) #11, !dbg !1269
  br label %20

; <label>:20:                                     ; preds = %19, %17
  %21 = load volatile i32, i32* @exit_failure, align 4, !dbg !1270, !tbaa !715
  tail call void @_exit(i32 %21) #15, !dbg !1271
  unreachable, !dbg !1271

; <label>:22:                                     ; preds = %0, %7
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1272, !tbaa !627
  %24 = tail call i32 @close_stream(%struct._IO_FILE* %23) #11, !dbg !1274
  %25 = icmp eq i32 %24, 0, !dbg !1275
  br i1 %25, label %28, label %26, !dbg !1276

; <label>:26:                                     ; preds = %22
  %27 = load volatile i32, i32* @exit_failure, align 4, !dbg !1277, !tbaa !715
  tail call void @_exit(i32 %27) #15, !dbg !1278
  unreachable, !dbg !1278

; <label>:28:                                     ; preds = %22
  ret void, !dbg !1279
}

; Function Attrs: noreturn
declare void @_exit(i32) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_program_name(i8*) local_unnamed_addr #7 !dbg !1280 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1282, metadata !DIExpression()), !dbg !1285
  %2 = icmp eq i8* %0, null, !dbg !1286
  br i1 %2, label %3, label %6, !dbg !1288

; <label>:3:                                      ; preds = %1
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !1289, !tbaa !627
  %5 = tail call i64 @fwrite(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.60, i64 0, i64 0), i64 55, i64 1, %struct._IO_FILE* %4) #18, !dbg !1291
  tail call void @abort() #15, !dbg !1292
  unreachable, !dbg !1292

; <label>:6:                                      ; preds = %1
  %7 = tail call i8* @strrchr(i8* nonnull %0, i32 47) #14, !dbg !1293
  call void @llvm.dbg.value(metadata i8* %7, metadata !1283, metadata !DIExpression()), !dbg !1294
  %8 = icmp eq i8* %7, null, !dbg !1295
  %9 = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1296
  %10 = select i1 %8, i8* %0, i8* %9, !dbg !1297
  call void @llvm.dbg.value(metadata i8* %10, metadata !1284, metadata !DIExpression()), !dbg !1298
  %11 = ptrtoint i8* %10 to i64, !dbg !1299
  %12 = ptrtoint i8* %0 to i64, !dbg !1299
  %13 = sub i64 %11, %12, !dbg !1299
  %14 = icmp sgt i64 %13, 6, !dbg !1301
  br i1 %14, label %15, label %24, !dbg !1302

; <label>:15:                                     ; preds = %6
  %16 = getelementptr inbounds i8, i8* %10, i64 -7, !dbg !1303
  %17 = tail call i32 @strncmp(i8* nonnull %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1.61, i64 0, i64 0), i64 7) #14, !dbg !1304
  %18 = icmp eq i32 %17, 0, !dbg !1305
  br i1 %18, label %19, label %24, !dbg !1306

; <label>:19:                                     ; preds = %15
  call void @llvm.dbg.value(metadata i8* %10, metadata !1282, metadata !DIExpression()), !dbg !1285
  %20 = tail call i32 @strncmp(i8* nonnull %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.62, i64 0, i64 0), i64 3) #14, !dbg !1307
  %21 = icmp eq i32 %20, 0, !dbg !1310
  br i1 %21, label %22, label %24, !dbg !1311

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds i8, i8* %10, i64 3, !dbg !1312
  call void @llvm.dbg.value(metadata i8* %23, metadata !1282, metadata !DIExpression()), !dbg !1285
  store i8* %23, i8** @program_invocation_short_name, align 8, !dbg !1314, !tbaa !627
  br label %24, !dbg !1315

; <label>:24:                                     ; preds = %19, %22, %15, %6
  %25 = phi i8* [ %23, %22 ], [ %10, %19 ], [ %0, %15 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i8* %25, metadata !1282, metadata !DIExpression()), !dbg !1285
  store i8* %25, i8** @program_name, align 8, !dbg !1316, !tbaa !627
  store i8* %25, i8** @program_invocation_name, align 8, !dbg !1317, !tbaa !627
  ret void, !dbg !1318
}

; Function Attrs: nounwind
declare i64 @fwrite(i8* nocapture, i64, i64, %struct._IO_FILE* nocapture) local_unnamed_addr #11

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nounwind readonly
declare i8* @strrchr(i8*, i32) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.quoting_options* @clone_quoting_options(%struct.quoting_options*) local_unnamed_addr #7 !dbg !1319 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1324, metadata !DIExpression()), !dbg !1327
  %2 = tail call i32* @__errno_location() #17, !dbg !1328
  %3 = load i32, i32* %2, align 4, !dbg !1328, !tbaa !715
  call void @llvm.dbg.value(metadata i32 %3, metadata !1325, metadata !DIExpression()), !dbg !1329
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1330
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1330
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !1330
  %7 = tail call i8* @xmemdup(i8* %6, i64 56) #11, !dbg !1331
  %8 = bitcast i8* %7 to %struct.quoting_options*, !dbg !1331
  call void @llvm.dbg.value(metadata %struct.quoting_options* %8, metadata !1326, metadata !DIExpression()), !dbg !1332
  store i32 %3, i32* %2, align 4, !dbg !1333, !tbaa !715
  ret %struct.quoting_options* %8, !dbg !1334
}

; Function Attrs: nounwind readonly sspstrong uwtable
define dso_local i32 @get_quoting_style(%struct.quoting_options* readonly) local_unnamed_addr #12 !dbg !1335 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1341, metadata !DIExpression()), !dbg !1342
  %2 = icmp eq %struct.quoting_options* %0, null, !dbg !1343
  %3 = select i1 %2, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1343
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !1344
  %5 = load i32, i32* %4, align 8, !dbg !1344, !tbaa !1345
  ret i32 %5, !dbg !1347
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_quoting_style(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1348 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1352, metadata !DIExpression()), !dbg !1354
  call void @llvm.dbg.value(metadata i32 %1, metadata !1353, metadata !DIExpression()), !dbg !1355
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1356
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1356
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !1357
  store i32 %1, i32* %5, align 8, !dbg !1358, !tbaa !1345
  ret void, !dbg !1359
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_char_quoting(%struct.quoting_options*, i8 signext, i32) local_unnamed_addr #7 !dbg !1360 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1364, metadata !DIExpression()), !dbg !1372
  call void @llvm.dbg.value(metadata i8 %1, metadata !1365, metadata !DIExpression()), !dbg !1373
  call void @llvm.dbg.value(metadata i32 %2, metadata !1366, metadata !DIExpression()), !dbg !1374
  call void @llvm.dbg.value(metadata i8 %1, metadata !1367, metadata !DIExpression()), !dbg !1375
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1376
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1376
  %6 = lshr i8 %1, 5, !dbg !1377
  %7 = zext i8 %6 to i64, !dbg !1377
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 %7, !dbg !1378
  call void @llvm.dbg.value(metadata i32* %8, metadata !1368, metadata !DIExpression()), !dbg !1379
  %9 = and i8 %1, 31, !dbg !1380
  %10 = zext i8 %9 to i32, !dbg !1380
  call void @llvm.dbg.value(metadata i32 %10, metadata !1370, metadata !DIExpression()), !dbg !1381
  %11 = load i32, i32* %8, align 4, !dbg !1382, !tbaa !715
  %12 = lshr i32 %11, %10, !dbg !1383
  %13 = and i32 %12, 1, !dbg !1384
  call void @llvm.dbg.value(metadata i32 %13, metadata !1371, metadata !DIExpression()), !dbg !1385
  %14 = and i32 %2, 1, !dbg !1386
  %15 = xor i32 %13, %14, !dbg !1387
  %16 = shl i32 %15, %10, !dbg !1388
  %17 = xor i32 %16, %11, !dbg !1389
  store i32 %17, i32* %8, align 4, !dbg !1389, !tbaa !715
  ret i32 %13, !dbg !1390
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @set_quoting_flags(%struct.quoting_options*, i32) local_unnamed_addr #7 !dbg !1391 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1395, metadata !DIExpression()), !dbg !1398
  call void @llvm.dbg.value(metadata i32 %1, metadata !1396, metadata !DIExpression()), !dbg !1399
  %3 = icmp eq %struct.quoting_options* %0, null, !dbg !1400
  %4 = select i1 %3, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1402
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1395, metadata !DIExpression()), !dbg !1398
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !1403
  %6 = load i32, i32* %5, align 4, !dbg !1403, !tbaa !1404
  call void @llvm.dbg.value(metadata i32 %6, metadata !1397, metadata !DIExpression()), !dbg !1405
  store i32 %1, i32* %5, align 4, !dbg !1406, !tbaa !1404
  ret i32 %6, !dbg !1407
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @set_custom_quoting(%struct.quoting_options*, i8*, i8*) local_unnamed_addr #7 !dbg !1408 {
  call void @llvm.dbg.value(metadata %struct.quoting_options* %0, metadata !1412, metadata !DIExpression()), !dbg !1415
  call void @llvm.dbg.value(metadata i8* %1, metadata !1413, metadata !DIExpression()), !dbg !1416
  call void @llvm.dbg.value(metadata i8* %2, metadata !1414, metadata !DIExpression()), !dbg !1417
  %4 = icmp eq %struct.quoting_options* %0, null, !dbg !1418
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %0, !dbg !1420
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1412, metadata !DIExpression()), !dbg !1415
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !1421
  store i32 10, i32* %6, align 8, !dbg !1422, !tbaa !1345
  %7 = icmp ne i8* %1, null, !dbg !1423
  %8 = icmp ne i8* %2, null, !dbg !1425
  %9 = and i1 %7, %8, !dbg !1426
  br i1 %9, label %11, label %10, !dbg !1426

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !1427
  unreachable, !dbg !1427

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !1428
  store i8* %1, i8** %12, align 8, !dbg !1429, !tbaa !1430
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !1431
  store i8* %2, i8** %13, align 8, !dbg !1432, !tbaa !1433
  ret void, !dbg !1434
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @quotearg_buffer(i8*, i64, i8*, i64, %struct.quoting_options* readonly) local_unnamed_addr #7 !dbg !1435 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !1439, metadata !DIExpression()), !dbg !1447
  call void @llvm.dbg.value(metadata i64 %1, metadata !1440, metadata !DIExpression()), !dbg !1448
  call void @llvm.dbg.value(metadata i8* %2, metadata !1441, metadata !DIExpression()), !dbg !1449
  call void @llvm.dbg.value(metadata i64 %3, metadata !1442, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1443, metadata !DIExpression()), !dbg !1451
  %6 = icmp eq %struct.quoting_options* %4, null, !dbg !1452
  %7 = select i1 %6, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %4, !dbg !1452
  call void @llvm.dbg.value(metadata %struct.quoting_options* %7, metadata !1444, metadata !DIExpression()), !dbg !1453
  %8 = tail call i32* @__errno_location() #17, !dbg !1454
  %9 = load i32, i32* %8, align 4, !dbg !1454, !tbaa !715
  call void @llvm.dbg.value(metadata i32 %9, metadata !1445, metadata !DIExpression()), !dbg !1455
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 0, !dbg !1456
  %11 = load i32, i32* %10, align 8, !dbg !1456, !tbaa !1345
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 1, !dbg !1457
  %13 = load i32, i32* %12, align 4, !dbg !1457, !tbaa !1404
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 2, i64 0, !dbg !1458
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 3, !dbg !1459
  %16 = load i8*, i8** %15, align 8, !dbg !1459, !tbaa !1430
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %7, i64 0, i32 4, !dbg !1460
  %18 = load i8*, i8** %17, align 8, !dbg !1460, !tbaa !1433
  %19 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %1, i8* %2, i64 %3, i32 %11, i32 %13, i32* nonnull %14, i8* %16, i8* %18), !dbg !1461
  call void @llvm.dbg.value(metadata i64 %19, metadata !1446, metadata !DIExpression()), !dbg !1462
  store i32 %9, i32* %8, align 4, !dbg !1463, !tbaa !715
  ret i64 %19, !dbg !1464
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @quotearg_buffer_restyled(i8*, i64, i8*, i64, i32, i32, i32* readonly, i8* readonly, i8* readonly) unnamed_addr #7 !dbg !1465 {
  %10 = alloca i64, align 8
  %11 = bitcast i64* %10 to %struct.__mbstate_t*
  %12 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %0, metadata !1471, metadata !DIExpression()), !dbg !1535
  call void @llvm.dbg.value(metadata i64 %1, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8* %2, metadata !1473, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.value(metadata i64 %3, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i32 %4, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 %5, metadata !1476, metadata !DIExpression()), !dbg !1540
  call void @llvm.dbg.value(metadata i32* %6, metadata !1477, metadata !DIExpression()), !dbg !1541
  call void @llvm.dbg.value(metadata i8* %7, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %8, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i64 0, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 0, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i8* null, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 0, metadata !1484, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8 0, metadata !1485, metadata !DIExpression()), !dbg !1548
  %13 = tail call i64 @__ctype_get_mb_cur_max() #11, !dbg !1549
  %14 = icmp eq i64 %13, 1, !dbg !1550
  %15 = lshr i32 %5, 1, !dbg !1551
  %16 = trunc i32 %15 to i8, !dbg !1551
  %17 = and i8 %16, 1, !dbg !1551
  call void @llvm.dbg.value(metadata i8 %17, metadata !1487, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i8 0, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 0, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 1, metadata !1490, metadata !DIExpression()), !dbg !1554
  %18 = icmp ne i32* %6, null
  %19 = bitcast i64* %10 to i8*
  %20 = icmp eq i32* %6, null
  %21 = and i32 %5, 1
  %22 = icmp eq i32 %21, 0
  %23 = and i32 %5, 4
  %24 = icmp eq i32 %23, 0
  %25 = getelementptr inbounds i8, i8* %2, i64 1
  %26 = bitcast i32* %12 to i8*
  br label %27, !dbg !1555

; <label>:27:                                     ; preds = %634, %9
  %28 = phi i32 [ %4, %9 ], [ %94, %634 ]
  %29 = phi i8* [ %7, %9 ], [ %95, %634 ]
  %30 = phi i8* [ %8, %9 ], [ %96, %634 ]
  %31 = phi i64 [ 0, %9 ], [ %124, %634 ], !dbg !1545
  %32 = phi i8* [ null, %9 ], [ %98, %634 ], !dbg !1546
  %33 = phi i64 [ 0, %9 ], [ %99, %634 ], !dbg !1547
  %34 = phi i8 [ 0, %9 ], [ %100, %634 ], !dbg !1548
  %35 = phi i64 [ %3, %9 ], [ %618, %634 ]
  %36 = phi i8 [ %17, %9 ], [ %101, %634 ], !dbg !1556
  %37 = phi i8 [ 0, %9 ], [ %126, %634 ], !dbg !1552
  %38 = phi i8 [ 0, %9 ], [ %127, %634 ], !dbg !1553
  %39 = phi i8 [ 1, %9 ], [ %128, %634 ], !dbg !1554
  %40 = phi i64 [ %1, %9 ], [ %124, %634 ]
  call void @llvm.dbg.value(metadata i64 %40, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 %39, metadata !1490, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %38, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %37, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %36, metadata !1487, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i64 %35, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8 %34, metadata !1485, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %33, metadata !1484, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %32, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %31, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 0, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %30, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %29, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 %28, metadata !1475, metadata !DIExpression()), !dbg !1539
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
  ], !dbg !1558

; <label>:41:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i32 5, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8 1, metadata !1487, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i8 %36, metadata !1487, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i32 5, metadata !1475, metadata !DIExpression()), !dbg !1539
  br label %93, !dbg !1559

; <label>:42:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 %36, metadata !1487, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i32 5, metadata !1475, metadata !DIExpression()), !dbg !1539
  %43 = and i8 %36, 1, !dbg !1560
  %44 = icmp eq i8 %43, 0, !dbg !1560
  br i1 %44, label %45, label %93, !dbg !1559

; <label>:45:                                     ; preds = %42
  %46 = icmp eq i64 %40, 0, !dbg !1562
  br i1 %46, label %93, label %47, !dbg !1565

; <label>:47:                                     ; preds = %45
  store i8 34, i8* %0, align 1, !dbg !1562, !tbaa !781
  br label %93, !dbg !1562

; <label>:48:                                     ; preds = %27, %27
  %49 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11.73, i64 0, i64 0), i32 %28), !dbg !1566
  call void @llvm.dbg.value(metadata i8* %49, metadata !1478, metadata !DIExpression()), !dbg !1542
  %50 = call fastcc i8* @gettext_quote(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), i32 %28), !dbg !1570
  call void @llvm.dbg.value(metadata i8* %50, metadata !1479, metadata !DIExpression()), !dbg !1543
  br label %51, !dbg !1571

; <label>:51:                                     ; preds = %27, %48
  %52 = phi i8* [ %49, %48 ], [ %29, %27 ]
  %53 = phi i8* [ %50, %48 ], [ %30, %27 ]
  call void @llvm.dbg.value(metadata i8* %53, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %52, metadata !1478, metadata !DIExpression()), !dbg !1542
  %54 = and i8 %36, 1, !dbg !1572
  %55 = icmp eq i8 %54, 0, !dbg !1572
  br i1 %55, label %56, label %71, !dbg !1574

; <label>:56:                                     ; preds = %51
  call void @llvm.dbg.value(metadata i8* %52, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 0, metadata !1481, metadata !DIExpression()), !dbg !1544
  %57 = load i8, i8* %52, align 1, !dbg !1575, !tbaa !781
  %58 = icmp eq i8 %57, 0, !dbg !1578
  br i1 %58, label %71, label %59, !dbg !1578

; <label>:59:                                     ; preds = %56, %66
  %60 = phi i8 [ %69, %66 ], [ %57, %56 ]
  %61 = phi i8* [ %68, %66 ], [ %52, %56 ]
  %62 = phi i64 [ %67, %66 ], [ 0, %56 ]
  call void @llvm.dbg.value(metadata i8* %61, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %62, metadata !1481, metadata !DIExpression()), !dbg !1544
  %63 = icmp ult i64 %62, %40, !dbg !1579
  br i1 %63, label %64, label %66, !dbg !1582

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds i8, i8* %0, i64 %62, !dbg !1579
  store i8 %60, i8* %65, align 1, !dbg !1579, !tbaa !781
  br label %66, !dbg !1579

; <label>:66:                                     ; preds = %64, %59
  %67 = add i64 %62, 1, !dbg !1582
  %68 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !1583
  call void @llvm.dbg.value(metadata i8* %68, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %67, metadata !1481, metadata !DIExpression()), !dbg !1544
  %69 = load i8, i8* %68, align 1, !dbg !1575, !tbaa !781
  %70 = icmp eq i8 %69, 0, !dbg !1578
  br i1 %70, label %71, label %59, !dbg !1578, !llvm.loop !1584

; <label>:71:                                     ; preds = %66, %56, %51
  %72 = phi i64 [ 0, %51 ], [ 0, %56 ], [ %67, %66 ], !dbg !1544
  call void @llvm.dbg.value(metadata i64 %72, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 1, metadata !1485, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8* %53, metadata !1483, metadata !DIExpression()), !dbg !1546
  %73 = call i64 @strlen(i8* %53) #14, !dbg !1586
  call void @llvm.dbg.value(metadata i64 %73, metadata !1484, metadata !DIExpression()), !dbg !1547
  br label %93, !dbg !1587

; <label>:74:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 1, metadata !1485, metadata !DIExpression()), !dbg !1548
  br label %75, !dbg !1588

; <label>:75:                                     ; preds = %27, %74
  %76 = phi i8 [ %34, %27 ], [ 1, %74 ], !dbg !1556
  call void @llvm.dbg.value(metadata i8 %76, metadata !1485, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 1, metadata !1487, metadata !DIExpression()), !dbg !1551
  br label %77, !dbg !1589

; <label>:77:                                     ; preds = %27, %75
  %78 = phi i8 [ %34, %27 ], [ %76, %75 ], !dbg !1548
  %79 = phi i8 [ %36, %27 ], [ 1, %75 ], !dbg !1556
  call void @llvm.dbg.value(metadata i8 %79, metadata !1487, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i8 %78, metadata !1485, metadata !DIExpression()), !dbg !1548
  %80 = and i8 %79, 1, !dbg !1590
  %81 = icmp eq i8 %80, 0, !dbg !1590
  %82 = select i1 %81, i8 1, i8 %78, !dbg !1592
  br label %83, !dbg !1592

; <label>:83:                                     ; preds = %77, %27
  %84 = phi i8 [ %34, %27 ], [ %82, %77 ], !dbg !1593
  %85 = phi i8 [ %36, %27 ], [ %79, %77 ], !dbg !1551
  call void @llvm.dbg.value(metadata i8 %85, metadata !1487, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i8 %84, metadata !1485, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i32 2, metadata !1475, metadata !DIExpression()), !dbg !1539
  %86 = and i8 %85, 1, !dbg !1594
  %87 = icmp eq i8 %86, 0, !dbg !1594
  br i1 %87, label %88, label %93, !dbg !1596

; <label>:88:                                     ; preds = %83
  %89 = icmp eq i64 %40, 0, !dbg !1597
  br i1 %89, label %93, label %90, !dbg !1600

; <label>:90:                                     ; preds = %88
  store i8 39, i8* %0, align 1, !dbg !1597, !tbaa !781
  br label %93, !dbg !1597

; <label>:91:                                     ; preds = %27
  call void @llvm.dbg.value(metadata i8 0, metadata !1487, metadata !DIExpression()), !dbg !1551
  br label %93, !dbg !1601

; <label>:92:                                     ; preds = %27
  call void @abort() #15, !dbg !1602
  unreachable, !dbg !1602

; <label>:93:                                     ; preds = %41, %83, %88, %90, %27, %42, %45, %47, %91, %71
  %94 = phi i32 [ 0, %91 ], [ %28, %71 ], [ 5, %47 ], [ 5, %45 ], [ 5, %42 ], [ %28, %27 ], [ 2, %90 ], [ 2, %88 ], [ 2, %83 ], [ 5, %41 ]
  %95 = phi i8* [ %29, %91 ], [ %52, %71 ], [ %29, %47 ], [ %29, %45 ], [ %29, %42 ], [ %29, %27 ], [ %29, %90 ], [ %29, %88 ], [ %29, %83 ], [ %29, %41 ]
  %96 = phi i8* [ %30, %91 ], [ %53, %71 ], [ %30, %47 ], [ %30, %45 ], [ %30, %42 ], [ %30, %27 ], [ %30, %90 ], [ %30, %88 ], [ %30, %83 ], [ %30, %41 ]
  %97 = phi i64 [ 0, %91 ], [ %72, %71 ], [ 1, %47 ], [ 1, %45 ], [ 0, %42 ], [ 0, %27 ], [ 1, %90 ], [ 1, %88 ], [ 0, %83 ], [ 0, %41 ], !dbg !1544
  %98 = phi i8* [ %32, %91 ], [ %53, %71 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %47 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %45 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %42 ], [ %32, %27 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %90 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %88 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), %83 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), %41 ], !dbg !1556
  %99 = phi i64 [ %33, %91 ], [ %73, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ %33, %27 ], [ 1, %90 ], [ 1, %88 ], [ 1, %83 ], [ 1, %41 ], !dbg !1556
  %100 = phi i8 [ %34, %91 ], [ 1, %71 ], [ 1, %47 ], [ 1, %45 ], [ 1, %42 ], [ 1, %27 ], [ %84, %90 ], [ %84, %88 ], [ %84, %83 ], [ 1, %41 ], !dbg !1556
  %101 = phi i8 [ 0, %91 ], [ %36, %71 ], [ %36, %47 ], [ %36, %45 ], [ %36, %42 ], [ 0, %27 ], [ %85, %90 ], [ %85, %88 ], [ %85, %83 ], [ 1, %41 ], !dbg !1603
  call void @llvm.dbg.value(metadata i8 %101, metadata !1487, metadata !DIExpression()), !dbg !1551
  call void @llvm.dbg.value(metadata i8 %100, metadata !1485, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %99, metadata !1484, metadata !DIExpression()), !dbg !1547
  call void @llvm.dbg.value(metadata i8* %98, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %97, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i32 %94, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i64 0, metadata !1480, metadata !DIExpression()), !dbg !1604
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
  br label %121, !dbg !1605

; <label>:121:                                    ; preds = %607, %93
  %122 = phi i64 [ 0, %93 ], [ %616, %607 ], !dbg !1606
  %123 = phi i64 [ %97, %93 ], [ %609, %607 ], !dbg !1544
  %124 = phi i64 [ %31, %93 ], [ %610, %607 ], !dbg !1545
  %125 = phi i64 [ %35, %93 ], [ %611, %607 ]
  %126 = phi i8 [ %37, %93 ], [ %612, %607 ], !dbg !1552
  %127 = phi i8 [ %38, %93 ], [ %613, %607 ], !dbg !1553
  %128 = phi i8 [ %39, %93 ], [ %614, %607 ], !dbg !1554
  %129 = phi i64 [ %40, %93 ], [ %615, %607 ]
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 %128, metadata !1490, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %127, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %126, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %125, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %122, metadata !1480, metadata !DIExpression()), !dbg !1604
  %130 = icmp eq i64 %125, -1, !dbg !1607
  br i1 %130, label %131, label %135, !dbg !1608

; <label>:131:                                    ; preds = %121
  %132 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1609
  %133 = load i8, i8* %132, align 1, !dbg !1609, !tbaa !781
  %134 = icmp eq i8 %133, 0, !dbg !1610
  br i1 %134, label %617, label %137, !dbg !1611

; <label>:135:                                    ; preds = %121
  %136 = icmp eq i64 %122, %125, !dbg !1612
  br i1 %136, label %617, label %137, !dbg !1611

; <label>:137:                                    ; preds = %131, %135
  call void @llvm.dbg.value(metadata i8 0, metadata !1496, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i8 0, metadata !1497, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8 0, metadata !1498, metadata !DIExpression()), !dbg !1615
  br i1 %107, label %138, label %153, !dbg !1616

; <label>:138:                                    ; preds = %137
  %139 = add i64 %122, %99, !dbg !1618
  %140 = and i1 %108, %130, !dbg !1619
  br i1 %140, label %141, label %143, !dbg !1619

; <label>:141:                                    ; preds = %138
  %142 = call i64 @strlen(i8* %2) #14, !dbg !1620
  call void @llvm.dbg.value(metadata i64 %142, metadata !1474, metadata !DIExpression()), !dbg !1538
  br label %143, !dbg !1621

; <label>:143:                                    ; preds = %138, %141
  %144 = phi i64 [ %142, %141 ], [ %125, %138 ]
  call void @llvm.dbg.value(metadata i64 %144, metadata !1474, metadata !DIExpression()), !dbg !1538
  %145 = icmp ugt i64 %139, %144, !dbg !1622
  br i1 %145, label %153, label %146, !dbg !1623

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1624
  %148 = call i32 @memcmp(i8* %147, i8* %98, i64 %99) #14, !dbg !1625
  %149 = icmp ne i32 %148, 0, !dbg !1626
  %150 = or i1 %149, %110, !dbg !1627
  %151 = xor i1 %149, true, !dbg !1627
  %152 = zext i1 %151 to i8, !dbg !1627
  br i1 %150, label %153, label %661, !dbg !1627

; <label>:153:                                    ; preds = %146, %143, %137
  %154 = phi i64 [ %144, %146 ], [ %144, %143 ], [ %125, %137 ]
  %155 = phi i8 [ %152, %146 ], [ 0, %143 ], [ 0, %137 ], !dbg !1628
  call void @llvm.dbg.value(metadata i8 %155, metadata !1496, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i64 %154, metadata !1474, metadata !DIExpression()), !dbg !1538
  %156 = getelementptr inbounds i8, i8* %2, i64 %122, !dbg !1629
  %157 = load i8, i8* %156, align 1, !dbg !1629, !tbaa !781
  call void @llvm.dbg.value(metadata i8 %157, metadata !1491, metadata !DIExpression()), !dbg !1630
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
  ], !dbg !1631

; <label>:158:                                    ; preds = %153
  br i1 %103, label %159, label %207, !dbg !1632

; <label>:159:                                    ; preds = %158
  br i1 %110, label %160, label %661, !dbg !1633

; <label>:160:                                    ; preds = %159
  call void @llvm.dbg.value(metadata i8 1, metadata !1497, metadata !DIExpression()), !dbg !1614
  %161 = and i8 %126, 1, !dbg !1637
  %162 = icmp eq i8 %161, 0, !dbg !1637
  %163 = and i1 %114, %162, !dbg !1637
  br i1 %163, label %164, label %180, !dbg !1637

; <label>:164:                                    ; preds = %160
  %165 = icmp ult i64 %123, %129, !dbg !1639
  br i1 %165, label %166, label %168, !dbg !1643

; <label>:166:                                    ; preds = %164
  %167 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1639
  store i8 39, i8* %167, align 1, !dbg !1639, !tbaa !781
  br label %168, !dbg !1639

; <label>:168:                                    ; preds = %166, %164
  %169 = add i64 %123, 1, !dbg !1643
  call void @llvm.dbg.value(metadata i64 %169, metadata !1481, metadata !DIExpression()), !dbg !1544
  %170 = icmp ult i64 %169, %129, !dbg !1644
  br i1 %170, label %171, label %173, !dbg !1647

; <label>:171:                                    ; preds = %168
  %172 = getelementptr inbounds i8, i8* %0, i64 %169, !dbg !1644
  store i8 36, i8* %172, align 1, !dbg !1644, !tbaa !781
  br label %173, !dbg !1644

; <label>:173:                                    ; preds = %171, %168
  %174 = add i64 %123, 2, !dbg !1647
  call void @llvm.dbg.value(metadata i64 %174, metadata !1481, metadata !DIExpression()), !dbg !1544
  %175 = icmp ult i64 %174, %129, !dbg !1648
  br i1 %175, label %176, label %178, !dbg !1651

; <label>:176:                                    ; preds = %173
  %177 = getelementptr inbounds i8, i8* %0, i64 %174, !dbg !1648
  store i8 39, i8* %177, align 1, !dbg !1648, !tbaa !781
  br label %178, !dbg !1648

; <label>:178:                                    ; preds = %176, %173
  %179 = add i64 %123, 3, !dbg !1651
  call void @llvm.dbg.value(metadata i64 %179, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1552
  br label %180, !dbg !1652

; <label>:180:                                    ; preds = %160, %178
  %181 = phi i64 [ %179, %178 ], [ %123, %160 ], !dbg !1603
  %182 = phi i8 [ 1, %178 ], [ %126, %160 ], !dbg !1603
  call void @llvm.dbg.value(metadata i8 %182, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %181, metadata !1481, metadata !DIExpression()), !dbg !1544
  %183 = icmp ult i64 %181, %129, !dbg !1653
  br i1 %183, label %184, label %186, !dbg !1656

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds i8, i8* %0, i64 %181, !dbg !1653
  store i8 92, i8* %185, align 1, !dbg !1653, !tbaa !781
  br label %186, !dbg !1653

; <label>:186:                                    ; preds = %184, %180
  %187 = add i64 %181, 1, !dbg !1656
  call void @llvm.dbg.value(metadata i64 %187, metadata !1481, metadata !DIExpression()), !dbg !1544
  br i1 %104, label %188, label %478, !dbg !1657

; <label>:188:                                    ; preds = %186
  %189 = add i64 %122, 1, !dbg !1659
  %190 = icmp ult i64 %189, %154, !dbg !1660
  br i1 %190, label %191, label %467, !dbg !1661

; <label>:191:                                    ; preds = %188
  %192 = getelementptr inbounds i8, i8* %2, i64 %189, !dbg !1662
  %193 = load i8, i8* %192, align 1, !dbg !1662, !tbaa !781
  %194 = add i8 %193, -48, !dbg !1663
  %195 = icmp ult i8 %194, 10, !dbg !1663
  br i1 %195, label %196, label %467, !dbg !1663

; <label>:196:                                    ; preds = %191
  %197 = icmp ult i64 %187, %129, !dbg !1664
  br i1 %197, label %198, label %200, !dbg !1668

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !1664
  store i8 48, i8* %199, align 1, !dbg !1664, !tbaa !781
  br label %200, !dbg !1664

; <label>:200:                                    ; preds = %198, %196
  %201 = add i64 %181, 2, !dbg !1668
  call void @llvm.dbg.value(metadata i64 %201, metadata !1481, metadata !DIExpression()), !dbg !1544
  %202 = icmp ult i64 %201, %129, !dbg !1669
  br i1 %202, label %203, label %205, !dbg !1672

; <label>:203:                                    ; preds = %200
  %204 = getelementptr inbounds i8, i8* %0, i64 %201, !dbg !1669
  store i8 48, i8* %204, align 1, !dbg !1669, !tbaa !781
  br label %205, !dbg !1669

; <label>:205:                                    ; preds = %203, %200
  %206 = add i64 %181, 3, !dbg !1672
  call void @llvm.dbg.value(metadata i64 %206, metadata !1481, metadata !DIExpression()), !dbg !1544
  br label %467, !dbg !1673

; <label>:207:                                    ; preds = %158
  br i1 %22, label %478, label %607, !dbg !1674

; <label>:208:                                    ; preds = %153
  switch i32 %94, label %467 [
    i32 2, label %209
    i32 5, label %210
  ], !dbg !1675

; <label>:209:                                    ; preds = %208
  br i1 %110, label %467, label %661, !dbg !1676

; <label>:210:                                    ; preds = %208
  br i1 %24, label %467, label %211, !dbg !1678

; <label>:211:                                    ; preds = %210
  %212 = add i64 %122, 2, !dbg !1680
  %213 = icmp ult i64 %212, %154, !dbg !1681
  br i1 %213, label %214, label %467, !dbg !1682

; <label>:214:                                    ; preds = %211
  %215 = add i64 %122, 1, !dbg !1683
  %216 = getelementptr inbounds i8, i8* %2, i64 %215, !dbg !1684
  %217 = load i8, i8* %216, align 1, !dbg !1684, !tbaa !781
  %218 = icmp eq i8 %217, 63, !dbg !1685
  br i1 %218, label %219, label %467, !dbg !1686

; <label>:219:                                    ; preds = %214
  %220 = getelementptr inbounds i8, i8* %2, i64 %212, !dbg !1687
  %221 = load i8, i8* %220, align 1, !dbg !1687, !tbaa !781
  %222 = sext i8 %221 to i32, !dbg !1687
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
  ], !dbg !1688

; <label>:223:                                    ; preds = %219, %219, %219, %219, %219, %219, %219, %219, %219
  br i1 %110, label %224, label %661, !dbg !1689

; <label>:224:                                    ; preds = %223
  call void @llvm.dbg.value(metadata i8 %221, metadata !1491, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i64 %212, metadata !1480, metadata !DIExpression()), !dbg !1604
  %225 = icmp ult i64 %123, %129, !dbg !1691
  br i1 %225, label %226, label %228, !dbg !1694

; <label>:226:                                    ; preds = %224
  %227 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1691
  store i8 63, i8* %227, align 1, !dbg !1691, !tbaa !781
  br label %228, !dbg !1691

; <label>:228:                                    ; preds = %226, %224
  %229 = add i64 %123, 1, !dbg !1694
  call void @llvm.dbg.value(metadata i64 %229, metadata !1481, metadata !DIExpression()), !dbg !1544
  %230 = icmp ult i64 %229, %129, !dbg !1695
  br i1 %230, label %231, label %233, !dbg !1698

; <label>:231:                                    ; preds = %228
  %232 = getelementptr inbounds i8, i8* %0, i64 %229, !dbg !1695
  store i8 34, i8* %232, align 1, !dbg !1695, !tbaa !781
  br label %233, !dbg !1695

; <label>:233:                                    ; preds = %231, %228
  %234 = add i64 %123, 2, !dbg !1698
  call void @llvm.dbg.value(metadata i64 %234, metadata !1481, metadata !DIExpression()), !dbg !1544
  %235 = icmp ult i64 %234, %129, !dbg !1699
  br i1 %235, label %236, label %238, !dbg !1702

; <label>:236:                                    ; preds = %233
  %237 = getelementptr inbounds i8, i8* %0, i64 %234, !dbg !1699
  store i8 34, i8* %237, align 1, !dbg !1699, !tbaa !781
  br label %238, !dbg !1699

; <label>:238:                                    ; preds = %236, %233
  %239 = add i64 %123, 3, !dbg !1702
  call void @llvm.dbg.value(metadata i64 %239, metadata !1481, metadata !DIExpression()), !dbg !1544
  %240 = icmp ult i64 %239, %129, !dbg !1703
  br i1 %240, label %241, label %243, !dbg !1706

; <label>:241:                                    ; preds = %238
  %242 = getelementptr inbounds i8, i8* %0, i64 %239, !dbg !1703
  store i8 63, i8* %242, align 1, !dbg !1703, !tbaa !781
  br label %243, !dbg !1703

; <label>:243:                                    ; preds = %241, %238
  %244 = add i64 %123, 4, !dbg !1706
  call void @llvm.dbg.value(metadata i64 %244, metadata !1481, metadata !DIExpression()), !dbg !1544
  br label %467, !dbg !1707

; <label>:245:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 98, metadata !1495, metadata !DIExpression()), !dbg !1708
  br label %255, !dbg !1709

; <label>:246:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 102, metadata !1495, metadata !DIExpression()), !dbg !1708
  br label %255, !dbg !1710

; <label>:247:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 114, metadata !1495, metadata !DIExpression()), !dbg !1708
  br label %253, !dbg !1711

; <label>:248:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 116, metadata !1495, metadata !DIExpression()), !dbg !1708
  br label %253, !dbg !1712

; <label>:249:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 118, metadata !1495, metadata !DIExpression()), !dbg !1708
  br label %255, !dbg !1713

; <label>:250:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 %157, metadata !1495, metadata !DIExpression()), !dbg !1708
  br i1 %114, label %251, label %252, !dbg !1714

; <label>:251:                                    ; preds = %250
  br i1 %110, label %562, label %661, !dbg !1715

; <label>:252:                                    ; preds = %250
  br i1 %120, label %562, label %253, !dbg !1718

; <label>:253:                                    ; preds = %252, %153, %248, %247
  %254 = phi i8 [ 92, %252 ], [ 116, %248 ], [ 114, %247 ], [ 110, %153 ], !dbg !1720
  call void @llvm.dbg.value(metadata i8 %254, metadata !1495, metadata !DIExpression()), !dbg !1708
  br i1 %113, label %255, label %661, !dbg !1721

; <label>:255:                                    ; preds = %253, %153, %249, %246, %245
  %256 = phi i8 [ %254, %253 ], [ 118, %249 ], [ 102, %246 ], [ 98, %245 ], [ 97, %153 ], !dbg !1720
  call void @llvm.dbg.value(metadata i8 %256, metadata !1495, metadata !DIExpression()), !dbg !1708
  br i1 %103, label %524, label %478, !dbg !1723

; <label>:257:                                    ; preds = %153, %153
  %258 = icmp eq i64 %154, -1, !dbg !1724
  br i1 %258, label %259, label %264, !dbg !1726

; <label>:259:                                    ; preds = %257
  %260 = load i8, i8* %25, align 1, !dbg !1727, !tbaa !781
  %261 = icmp ne i8 %260, 0, !dbg !1728
  %262 = icmp ne i64 %122, 0, !dbg !1729
  %263 = or i1 %262, %261, !dbg !1731
  br i1 %263, label %467, label %270, !dbg !1731

; <label>:264:                                    ; preds = %257
  %265 = icmp ne i64 %154, 1, !dbg !1732
  %266 = icmp ne i64 %122, 0, !dbg !1729
  %267 = or i1 %266, %265, !dbg !1726
  br i1 %267, label %467, label %270, !dbg !1726

; <label>:268:                                    ; preds = %153, %153
  %269 = icmp eq i64 %122, 0, !dbg !1729
  br i1 %269, label %270, label %467, !dbg !1733

; <label>:270:                                    ; preds = %268, %264, %259, %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1498, metadata !DIExpression()), !dbg !1615
  br label %271, !dbg !1734

; <label>:271:                                    ; preds = %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %270
  %272 = phi i8 [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 1, %270 ], !dbg !1720
  call void @llvm.dbg.value(metadata i8 %272, metadata !1498, metadata !DIExpression()), !dbg !1615
  br i1 %113, label %467, label %661, !dbg !1735

; <label>:273:                                    ; preds = %153
  call void @llvm.dbg.value(metadata i8 1, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 1, metadata !1498, metadata !DIExpression()), !dbg !1615
  br i1 %114, label %274, label %467, !dbg !1737

; <label>:274:                                    ; preds = %273
  br i1 %110, label %275, label %661, !dbg !1738

; <label>:275:                                    ; preds = %274
  %276 = icmp eq i64 %129, 0, !dbg !1741
  %277 = icmp ne i64 %124, 0, !dbg !1743
  %278 = or i1 %277, %276, !dbg !1744
  %279 = select i1 %278, i64 %124, i64 %129, !dbg !1744
  %280 = select i1 %278, i64 %129, i64 0, !dbg !1744
  call void @llvm.dbg.value(metadata i64 %280, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %279, metadata !1482, metadata !DIExpression()), !dbg !1545
  %281 = icmp ult i64 %123, %280, !dbg !1745
  br i1 %281, label %282, label %284, !dbg !1748

; <label>:282:                                    ; preds = %275
  %283 = getelementptr inbounds i8, i8* %0, i64 %123, !dbg !1745
  store i8 39, i8* %283, align 1, !dbg !1745, !tbaa !781
  br label %284, !dbg !1745

; <label>:284:                                    ; preds = %282, %275
  %285 = add i64 %123, 1, !dbg !1748
  call void @llvm.dbg.value(metadata i64 %285, metadata !1481, metadata !DIExpression()), !dbg !1544
  %286 = icmp ult i64 %285, %280, !dbg !1749
  br i1 %286, label %287, label %289, !dbg !1752

; <label>:287:                                    ; preds = %284
  %288 = getelementptr inbounds i8, i8* %0, i64 %285, !dbg !1749
  store i8 92, i8* %288, align 1, !dbg !1749, !tbaa !781
  br label %289, !dbg !1749

; <label>:289:                                    ; preds = %287, %284
  %290 = add i64 %123, 2, !dbg !1752
  call void @llvm.dbg.value(metadata i64 %290, metadata !1481, metadata !DIExpression()), !dbg !1544
  %291 = icmp ult i64 %290, %280, !dbg !1753
  br i1 %291, label %292, label %294, !dbg !1756

; <label>:292:                                    ; preds = %289
  %293 = getelementptr inbounds i8, i8* %0, i64 %290, !dbg !1753
  store i8 39, i8* %293, align 1, !dbg !1753, !tbaa !781
  br label %294, !dbg !1753

; <label>:294:                                    ; preds = %292, %289
  %295 = add i64 %123, 3, !dbg !1756
  call void @llvm.dbg.value(metadata i64 %295, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 0, metadata !1488, metadata !DIExpression()), !dbg !1552
  br label %467, !dbg !1757

; <label>:296:                                    ; preds = %153
  br i1 %14, label %297, label %306, !dbg !1758

; <label>:297:                                    ; preds = %296
  call void @llvm.dbg.value(metadata i64 1, metadata !1499, metadata !DIExpression()), !dbg !1759
  %298 = tail call i16** @__ctype_b_loc() #17, !dbg !1760
  %299 = load i16*, i16** %298, align 8, !dbg !1760, !tbaa !627
  %300 = zext i8 %157 to i64, !dbg !1760
  %301 = getelementptr inbounds i16, i16* %299, i64 %300, !dbg !1760
  %302 = load i16, i16* %301, align 2, !dbg !1760, !tbaa !1762
  %303 = lshr i16 %302, 14, !dbg !1763
  %304 = trunc i16 %303 to i8, !dbg !1763
  %305 = and i8 %304, 1, !dbg !1763
  call void @llvm.dbg.value(metadata i8 %305, metadata !1502, metadata !DIExpression()), !dbg !1764
  br label %359, !dbg !1765

; <label>:306:                                    ; preds = %296
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1766
  store i64 0, i64* %10, align 8, !dbg !1767
  call void @llvm.dbg.value(metadata i64 0, metadata !1499, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 1, metadata !1502, metadata !DIExpression()), !dbg !1764
  %307 = icmp eq i64 %154, -1, !dbg !1768
  br i1 %307, label %308, label %310, !dbg !1770

; <label>:308:                                    ; preds = %306
  %309 = call i64 @strlen(i8* nonnull %2) #14, !dbg !1771
  call void @llvm.dbg.value(metadata i64 %309, metadata !1474, metadata !DIExpression()), !dbg !1538
  br label %310, !dbg !1772

; <label>:310:                                    ; preds = %308, %306
  %311 = phi i64 [ %309, %308 ], [ %154, %306 ], !dbg !1773
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  br label %312, !dbg !1774

; <label>:312:                                    ; preds = %347, %310
  %313 = phi i64 [ 0, %310 ], [ %352, %347 ], !dbg !1775
  %314 = phi i8 [ 1, %310 ], [ %351, %347 ], !dbg !1776
  call void @llvm.dbg.value(metadata i8 %314, metadata !1502, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i64 %313, metadata !1499, metadata !DIExpression()), !dbg !1759
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1777
  %315 = add i64 %313, %122, !dbg !1778
  %316 = getelementptr inbounds i8, i8* %2, i64 %315, !dbg !1779
  %317 = sub i64 %311, %315, !dbg !1780
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1503, metadata !DIExpression(DW_OP_deref)), !dbg !1781
  call void @llvm.dbg.value(metadata i32* %12, metadata !1521, metadata !DIExpression(DW_OP_deref)), !dbg !1782
  %318 = call i64 @rpl_mbrtowc(i32* nonnull %12, i8* %316, i64 %317, %struct.__mbstate_t* nonnull %11) #11, !dbg !1783
  call void @llvm.dbg.value(metadata i64 %318, metadata !1524, metadata !DIExpression()), !dbg !1784
  switch i64 %318, label %331 [
    i64 0, label %343
    i64 -1, label %344
    i64 -2, label %319
  ], !dbg !1785

; <label>:319:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1499, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %313, metadata !1499, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %313, metadata !1499, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %313, metadata !1499, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %313, metadata !1499, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %313, metadata !1499, metadata !DIExpression()), !dbg !1759
  %320 = icmp ugt i64 %311, %315, !dbg !1786
  br i1 %320, label %321, label %344, !dbg !1788

; <label>:321:                                    ; preds = %319, %327
  %322 = phi i64 [ %329, %327 ], [ %315, %319 ]
  %323 = phi i64 [ %328, %327 ], [ %313, %319 ]
  call void @llvm.dbg.value(metadata i64 %323, metadata !1499, metadata !DIExpression()), !dbg !1759
  %324 = getelementptr inbounds i8, i8* %2, i64 %322, !dbg !1789
  %325 = load i8, i8* %324, align 1, !dbg !1789, !tbaa !781
  %326 = icmp eq i8 %325, 0, !dbg !1788
  br i1 %326, label %344, label %327, !dbg !1790

; <label>:327:                                    ; preds = %321
  %328 = add i64 %323, 1, !dbg !1791
  call void @llvm.dbg.value(metadata i64 %328, metadata !1499, metadata !DIExpression()), !dbg !1759
  %329 = add i64 %328, %122, !dbg !1792
  %330 = icmp ult i64 %329, %311, !dbg !1786
  br i1 %330, label %321, label %344, !dbg !1788, !llvm.loop !1793

; <label>:331:                                    ; preds = %312
  %332 = icmp ugt i64 %318, 1, !dbg !1794
  %333 = and i1 %116, %332, !dbg !1797
  call void @llvm.dbg.value(metadata i64 1, metadata !1525, metadata !DIExpression()), !dbg !1798
  br i1 %333, label %334, label %347, !dbg !1797

; <label>:334:                                    ; preds = %331, %340
  %335 = phi i64 [ %341, %340 ], [ 1, %331 ]
  call void @llvm.dbg.value(metadata i64 %335, metadata !1525, metadata !DIExpression()), !dbg !1798
  %336 = add i64 %335, %315, !dbg !1799
  %337 = getelementptr inbounds i8, i8* %2, i64 %336, !dbg !1800
  %338 = load i8, i8* %337, align 1, !dbg !1800, !tbaa !781
  %339 = sext i8 %338 to i32, !dbg !1800
  switch i32 %339, label %340 [
    i32 91, label %358
    i32 92, label %358
    i32 94, label %358
    i32 96, label %358
    i32 124, label %358
  ], !dbg !1801

; <label>:340:                                    ; preds = %334
  %341 = add nuw i64 %335, 1, !dbg !1802
  call void @llvm.dbg.value(metadata i64 %341, metadata !1525, metadata !DIExpression()), !dbg !1798
  %342 = icmp ult i64 %341, %318, !dbg !1794
  br i1 %342, label %334, label %347, !dbg !1803, !llvm.loop !1804

; <label>:343:                                    ; preds = %312
  call void @llvm.dbg.value(metadata i64 %313, metadata !1499, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 %314, metadata !1502, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i64 %313, metadata !1499, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 %314, metadata !1502, metadata !DIExpression()), !dbg !1764
  br label %344, !dbg !1806

; <label>:344:                                    ; preds = %327, %321, %312, %343, %319
  %345 = phi i64 [ %313, %319 ], [ %313, %343 ], [ %313, %312 ], [ %323, %321 ], [ %328, %327 ]
  %346 = phi i8 [ 0, %319 ], [ %314, %343 ], [ 0, %312 ], [ 0, %321 ], [ 0, %327 ]
  call void @llvm.dbg.value(metadata i8 %351, metadata !1502, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i64 %352, metadata !1499, metadata !DIExpression()), !dbg !1759
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1806
  br label %355

; <label>:347:                                    ; preds = %340, %331
  %348 = load i32, i32* %12, align 4, !dbg !1807, !tbaa !715
  call void @llvm.dbg.value(metadata i32 %348, metadata !1521, metadata !DIExpression()), !dbg !1782
  %349 = call i32 @iswprint(i32 %348) #11, !dbg !1809
  %350 = icmp eq i32 %349, 0, !dbg !1809
  %351 = select i1 %350, i8 0, i8 %314, !dbg !1810
  call void @llvm.dbg.value(metadata i8 %351, metadata !1502, metadata !DIExpression()), !dbg !1764
  %352 = add i64 %318, %313, !dbg !1811
  call void @llvm.dbg.value(metadata i64 %352, metadata !1499, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i8 %351, metadata !1502, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i64 %352, metadata !1499, metadata !DIExpression()), !dbg !1759
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1806
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %11, metadata !1503, metadata !DIExpression(DW_OP_deref)), !dbg !1781
  %353 = call i32 @mbsinit(%struct.__mbstate_t* nonnull %11) #14, !dbg !1812
  %354 = icmp eq i32 %353, 0, !dbg !1813
  br i1 %354, label %312, label %355, !dbg !1814, !llvm.loop !1815

; <label>:355:                                    ; preds = %347, %344
  %356 = phi i8 [ %346, %344 ], [ %351, %347 ]
  %357 = phi i64 [ %345, %344 ], [ %352, %347 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1817
  br label %359

; <label>:358:                                    ; preds = %334, %334, %334, %334, %334
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i32 2, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 2, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 2, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 2, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 2, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8 %100, metadata !1485, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %100, metadata !1485, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %100, metadata !1485, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %100, metadata !1485, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %100, metadata !1485, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i32 %94, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 %94, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 %94, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 %94, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i32 %94, metadata !1475, metadata !DIExpression()), !dbg !1539
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i8 %100, metadata !1485, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %100, metadata !1485, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %100, metadata !1485, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %100, metadata !1485, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i8 %100, metadata !1485, metadata !DIExpression()), !dbg !1548
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %311, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8 %351, metadata !1502, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i64 %352, metadata !1499, metadata !DIExpression()), !dbg !1759
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #11, !dbg !1806
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #11, !dbg !1817
  br label %661

; <label>:359:                                    ; preds = %355, %297
  %360 = phi i64 [ %154, %297 ], [ %311, %355 ], !dbg !1818
  %361 = phi i64 [ 1, %297 ], [ %357, %355 ], !dbg !1819
  %362 = phi i8 [ %305, %297 ], [ %356, %355 ], !dbg !1819
  call void @llvm.dbg.value(metadata i8 %362, metadata !1502, metadata !DIExpression()), !dbg !1764
  call void @llvm.dbg.value(metadata i64 %361, metadata !1499, metadata !DIExpression()), !dbg !1759
  call void @llvm.dbg.value(metadata i64 %360, metadata !1474, metadata !DIExpression()), !dbg !1538
  %363 = and i8 %362, 1, !dbg !1820
  %364 = icmp ne i8 %363, 0, !dbg !1820
  call void @llvm.dbg.value(metadata i8 %363, metadata !1498, metadata !DIExpression()), !dbg !1615
  %365 = icmp ult i64 %361, 2, !dbg !1821
  %366 = or i1 %364, %115, !dbg !1822
  %367 = and i1 %365, %366, !dbg !1823
  br i1 %367, label %467, label %368, !dbg !1823

; <label>:368:                                    ; preds = %359
  %369 = add i64 %361, %122, !dbg !1824
  call void @llvm.dbg.value(metadata i64 %369, metadata !1532, metadata !DIExpression()), !dbg !1825
  br label %370, !dbg !1826

; <label>:370:                                    ; preds = %463, %368
  %371 = phi i64 [ %122, %368 ], [ %438, %463 ], !dbg !1827
  %372 = phi i64 [ %123, %368 ], [ %464, %463 ], !dbg !1831
  %373 = phi i8 [ %126, %368 ], [ %459, %463 ], !dbg !1552
  %374 = phi i8 [ %157, %368 ], [ %466, %463 ], !dbg !1827
  %375 = phi i8 [ %155, %368 ], [ %436, %463 ], !dbg !1833
  %376 = phi i8 [ 0, %368 ], [ %437, %463 ], !dbg !1614
  call void @llvm.dbg.value(metadata i8 %376, metadata !1497, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8 %375, metadata !1496, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i8 %374, metadata !1491, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %373, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %372, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %371, metadata !1480, metadata !DIExpression()), !dbg !1604
  br i1 %366, label %423, label %377, !dbg !1837

; <label>:377:                                    ; preds = %370
  br i1 %110, label %378, label %661, !dbg !1838

; <label>:378:                                    ; preds = %377
  call void @llvm.dbg.value(metadata i8 1, metadata !1497, metadata !DIExpression()), !dbg !1614
  %379 = and i8 %373, 1, !dbg !1841
  %380 = icmp eq i8 %379, 0, !dbg !1841
  %381 = and i1 %114, %380, !dbg !1841
  br i1 %381, label %382, label %398, !dbg !1841

; <label>:382:                                    ; preds = %378
  %383 = icmp ult i64 %372, %129, !dbg !1843
  br i1 %383, label %384, label %386, !dbg !1847

; <label>:384:                                    ; preds = %382
  %385 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1843
  store i8 39, i8* %385, align 1, !dbg !1843, !tbaa !781
  br label %386, !dbg !1843

; <label>:386:                                    ; preds = %384, %382
  %387 = add i64 %372, 1, !dbg !1847
  call void @llvm.dbg.value(metadata i64 %387, metadata !1481, metadata !DIExpression()), !dbg !1544
  %388 = icmp ult i64 %387, %129, !dbg !1848
  br i1 %388, label %389, label %391, !dbg !1851

; <label>:389:                                    ; preds = %386
  %390 = getelementptr inbounds i8, i8* %0, i64 %387, !dbg !1848
  store i8 36, i8* %390, align 1, !dbg !1848, !tbaa !781
  br label %391, !dbg !1848

; <label>:391:                                    ; preds = %389, %386
  %392 = add i64 %372, 2, !dbg !1851
  call void @llvm.dbg.value(metadata i64 %392, metadata !1481, metadata !DIExpression()), !dbg !1544
  %393 = icmp ult i64 %392, %129, !dbg !1852
  br i1 %393, label %394, label %396, !dbg !1855

; <label>:394:                                    ; preds = %391
  %395 = getelementptr inbounds i8, i8* %0, i64 %392, !dbg !1852
  store i8 39, i8* %395, align 1, !dbg !1852, !tbaa !781
  br label %396, !dbg !1852

; <label>:396:                                    ; preds = %394, %391
  %397 = add i64 %372, 3, !dbg !1855
  call void @llvm.dbg.value(metadata i64 %397, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1552
  br label %398, !dbg !1856

; <label>:398:                                    ; preds = %378, %396
  %399 = phi i64 [ %397, %396 ], [ %372, %378 ], !dbg !1603
  %400 = phi i8 [ 1, %396 ], [ %373, %378 ], !dbg !1603
  call void @llvm.dbg.value(metadata i8 %400, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %399, metadata !1481, metadata !DIExpression()), !dbg !1544
  %401 = icmp ult i64 %399, %129, !dbg !1857
  br i1 %401, label %402, label %404, !dbg !1860

; <label>:402:                                    ; preds = %398
  %403 = getelementptr inbounds i8, i8* %0, i64 %399, !dbg !1857
  store i8 92, i8* %403, align 1, !dbg !1857, !tbaa !781
  br label %404, !dbg !1857

; <label>:404:                                    ; preds = %402, %398
  %405 = add i64 %399, 1, !dbg !1860
  call void @llvm.dbg.value(metadata i64 %405, metadata !1481, metadata !DIExpression()), !dbg !1544
  %406 = icmp ult i64 %405, %129, !dbg !1861
  br i1 %406, label %407, label %411, !dbg !1864

; <label>:407:                                    ; preds = %404
  %408 = lshr i8 %374, 6, !dbg !1861
  %409 = or i8 %408, 48, !dbg !1861
  %410 = getelementptr inbounds i8, i8* %0, i64 %405, !dbg !1861
  store i8 %409, i8* %410, align 1, !dbg !1861, !tbaa !781
  br label %411, !dbg !1861

; <label>:411:                                    ; preds = %407, %404
  %412 = add i64 %399, 2, !dbg !1864
  call void @llvm.dbg.value(metadata i64 %412, metadata !1481, metadata !DIExpression()), !dbg !1544
  %413 = icmp ult i64 %412, %129, !dbg !1865
  br i1 %413, label %414, label %419, !dbg !1868

; <label>:414:                                    ; preds = %411
  %415 = lshr i8 %374, 3, !dbg !1865
  %416 = and i8 %415, 7, !dbg !1865
  %417 = or i8 %416, 48, !dbg !1865
  %418 = getelementptr inbounds i8, i8* %0, i64 %412, !dbg !1865
  store i8 %417, i8* %418, align 1, !dbg !1865, !tbaa !781
  br label %419, !dbg !1865

; <label>:419:                                    ; preds = %414, %411
  %420 = add i64 %399, 3, !dbg !1868
  call void @llvm.dbg.value(metadata i64 %420, metadata !1481, metadata !DIExpression()), !dbg !1544
  %421 = and i8 %374, 7, !dbg !1869
  %422 = or i8 %421, 48, !dbg !1870
  call void @llvm.dbg.value(metadata i8 %422, metadata !1491, metadata !DIExpression()), !dbg !1630
  br label %432, !dbg !1871

; <label>:423:                                    ; preds = %370
  %424 = and i8 %375, 1, !dbg !1872
  %425 = icmp eq i8 %424, 0, !dbg !1872
  br i1 %425, label %432, label %426, !dbg !1873

; <label>:426:                                    ; preds = %423
  %427 = icmp ult i64 %372, %129, !dbg !1874
  br i1 %427, label %428, label %430, !dbg !1877

; <label>:428:                                    ; preds = %426
  %429 = getelementptr inbounds i8, i8* %0, i64 %372, !dbg !1874
  store i8 92, i8* %429, align 1, !dbg !1874, !tbaa !781
  br label %430, !dbg !1874

; <label>:430:                                    ; preds = %428, %426
  %431 = add i64 %372, 1, !dbg !1877
  call void @llvm.dbg.value(metadata i64 %431, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 0, metadata !1496, metadata !DIExpression()), !dbg !1613
  br label %432, !dbg !1878

; <label>:432:                                    ; preds = %423, %430, %419
  %433 = phi i64 [ %431, %430 ], [ %372, %423 ], [ %420, %419 ], !dbg !1879
  %434 = phi i8 [ %373, %430 ], [ %373, %423 ], [ %400, %419 ], !dbg !1552
  %435 = phi i8 [ %374, %430 ], [ %374, %423 ], [ %422, %419 ], !dbg !1880
  %436 = phi i8 [ 0, %430 ], [ %375, %423 ], [ %375, %419 ], !dbg !1881
  %437 = phi i8 [ %376, %430 ], [ %376, %423 ], [ 1, %419 ], !dbg !1883
  call void @llvm.dbg.value(metadata i8 %437, metadata !1497, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8 %436, metadata !1496, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i8 %435, metadata !1491, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %434, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %433, metadata !1481, metadata !DIExpression()), !dbg !1544
  %438 = add i64 %371, 1, !dbg !1884
  %439 = icmp ugt i64 %369, %438, !dbg !1886
  br i1 %439, label %440, label %562, !dbg !1887

; <label>:440:                                    ; preds = %432
  %441 = and i8 %434, 1, !dbg !1888
  %442 = icmp ne i8 %441, 0, !dbg !1888
  %443 = and i8 %437, 1, !dbg !1888
  %444 = icmp eq i8 %443, 0, !dbg !1888
  %445 = and i1 %442, %444, !dbg !1888
  br i1 %445, label %446, label %457, !dbg !1888

; <label>:446:                                    ; preds = %440
  %447 = icmp ult i64 %433, %129, !dbg !1891
  br i1 %447, label %448, label %450, !dbg !1895

; <label>:448:                                    ; preds = %446
  %449 = getelementptr inbounds i8, i8* %0, i64 %433, !dbg !1891
  store i8 39, i8* %449, align 1, !dbg !1891, !tbaa !781
  br label %450, !dbg !1891

; <label>:450:                                    ; preds = %448, %446
  %451 = add i64 %433, 1, !dbg !1895
  call void @llvm.dbg.value(metadata i64 %451, metadata !1481, metadata !DIExpression()), !dbg !1544
  %452 = icmp ult i64 %451, %129, !dbg !1896
  br i1 %452, label %453, label %455, !dbg !1899

; <label>:453:                                    ; preds = %450
  %454 = getelementptr inbounds i8, i8* %0, i64 %451, !dbg !1896
  store i8 39, i8* %454, align 1, !dbg !1896, !tbaa !781
  br label %455, !dbg !1896

; <label>:455:                                    ; preds = %453, %450
  %456 = add i64 %433, 2, !dbg !1899
  call void @llvm.dbg.value(metadata i64 %456, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 0, metadata !1488, metadata !DIExpression()), !dbg !1552
  br label %457, !dbg !1900

; <label>:457:                                    ; preds = %440, %455
  %458 = phi i64 [ %456, %455 ], [ %433, %440 ], !dbg !1901
  %459 = phi i8 [ 0, %455 ], [ %434, %440 ], !dbg !1603
  call void @llvm.dbg.value(metadata i8 %459, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %458, metadata !1481, metadata !DIExpression()), !dbg !1544
  %460 = icmp ult i64 %458, %129, !dbg !1902
  br i1 %460, label %461, label %463, !dbg !1904

; <label>:461:                                    ; preds = %457
  %462 = getelementptr inbounds i8, i8* %0, i64 %458, !dbg !1902
  store i8 %435, i8* %462, align 1, !dbg !1902, !tbaa !781
  br label %463, !dbg !1902

; <label>:463:                                    ; preds = %461, %457
  %464 = add i64 %458, 1, !dbg !1904
  call void @llvm.dbg.value(metadata i64 %464, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %438, metadata !1480, metadata !DIExpression()), !dbg !1604
  %465 = getelementptr inbounds i8, i8* %2, i64 %438, !dbg !1905
  %466 = load i8, i8* %465, align 1, !dbg !1905, !tbaa !781
  call void @llvm.dbg.value(metadata i8 %466, metadata !1491, metadata !DIExpression()), !dbg !1630
  br label %370, !dbg !1906, !llvm.loop !1907

; <label>:467:                                    ; preds = %359, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %153, %271, %188, %191, %205, %209, %210, %268, %264, %259, %273, %294, %243, %219, %214, %211, %208
  %468 = phi i64 [ %122, %294 ], [ %122, %273 ], [ %122, %271 ], [ %122, %268 ], [ %122, %259 ], [ %122, %264 ], [ %122, %208 ], [ %122, %219 ], [ %212, %243 ], [ %122, %214 ], [ %122, %211 ], [ %122, %210 ], [ %122, %209 ], [ %122, %205 ], [ %122, %191 ], [ %122, %188 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %153 ], [ %122, %359 ], !dbg !1910
  %469 = phi i64 [ %295, %294 ], [ %123, %273 ], [ %123, %271 ], [ %123, %268 ], [ %123, %259 ], [ %123, %264 ], [ %123, %208 ], [ %123, %219 ], [ %244, %243 ], [ %123, %214 ], [ %123, %211 ], [ %123, %210 ], [ %123, %209 ], [ %206, %205 ], [ %187, %191 ], [ %187, %188 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %153 ], [ %123, %359 ], !dbg !1603
  %470 = phi i64 [ %279, %294 ], [ %124, %273 ], [ %124, %271 ], [ %124, %268 ], [ %124, %259 ], [ %124, %264 ], [ %124, %208 ], [ %124, %219 ], [ %124, %243 ], [ %124, %214 ], [ %124, %211 ], [ %124, %210 ], [ %124, %209 ], [ %124, %205 ], [ %124, %191 ], [ %124, %188 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %153 ], [ %124, %359 ], !dbg !1545
  %471 = phi i64 [ %154, %294 ], [ %154, %273 ], [ %154, %271 ], [ %154, %268 ], [ -1, %259 ], [ %154, %264 ], [ %154, %208 ], [ %154, %219 ], [ %154, %243 ], [ %154, %214 ], [ %154, %211 ], [ %154, %210 ], [ %154, %209 ], [ %154, %205 ], [ %154, %191 ], [ %154, %188 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %154, %153 ], [ %360, %359 ], !dbg !1911
  %472 = phi i8 [ 0, %294 ], [ %126, %273 ], [ %126, %271 ], [ %126, %268 ], [ %126, %259 ], [ %126, %264 ], [ %126, %208 ], [ %126, %219 ], [ %126, %243 ], [ %126, %214 ], [ %126, %211 ], [ %126, %210 ], [ %126, %209 ], [ %182, %205 ], [ %182, %191 ], [ %182, %188 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %153 ], [ %126, %359 ], !dbg !1603
  %473 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %127, %271 ], [ %127, %268 ], [ %127, %259 ], [ %127, %264 ], [ %127, %208 ], [ %127, %219 ], [ %127, %243 ], [ %127, %214 ], [ %127, %211 ], [ %127, %210 ], [ %127, %209 ], [ %127, %205 ], [ %127, %191 ], [ %127, %188 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %153 ], [ %127, %359 ], !dbg !1603
  %474 = phi i8 [ 39, %294 ], [ 39, %273 ], [ %157, %271 ], [ %157, %268 ], [ %157, %259 ], [ %157, %264 ], [ 63, %208 ], [ 63, %219 ], [ %221, %243 ], [ 63, %214 ], [ 63, %211 ], [ 63, %210 ], [ 63, %209 ], [ 48, %205 ], [ 48, %191 ], [ 48, %188 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %153 ], [ %157, %359 ], !dbg !1628
  %475 = phi i8 [ 0, %294 ], [ 0, %273 ], [ 0, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 1, %205 ], [ 1, %191 ], [ 1, %188 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %153 ], [ 0, %359 ], !dbg !1628
  %476 = phi i8 [ 1, %294 ], [ 1, %273 ], [ %272, %271 ], [ 0, %268 ], [ 0, %259 ], [ 0, %264 ], [ 0, %208 ], [ 0, %219 ], [ 0, %243 ], [ 0, %214 ], [ 0, %211 ], [ 0, %210 ], [ 0, %209 ], [ 0, %205 ], [ 0, %191 ], [ 0, %188 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ 1, %153 ], [ %363, %359 ], !dbg !1628
  %477 = phi i64 [ %280, %294 ], [ %129, %273 ], [ %129, %271 ], [ %129, %268 ], [ %129, %259 ], [ %129, %264 ], [ %129, %208 ], [ %129, %219 ], [ %129, %243 ], [ %129, %214 ], [ %129, %211 ], [ %129, %210 ], [ %129, %209 ], [ %129, %205 ], [ %129, %191 ], [ %129, %188 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %153 ], [ %129, %359 ]
  call void @llvm.dbg.value(metadata i64 %477, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 %476, metadata !1498, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 %475, metadata !1497, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8 %155, metadata !1496, metadata !DIExpression()), !dbg !1613
  call void @llvm.dbg.value(metadata i8 %474, metadata !1491, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %473, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %472, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %471, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %470, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %469, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %468, metadata !1480, metadata !DIExpression()), !dbg !1604
  br i1 %105, label %489, label %478, !dbg !1912

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
  br i1 %112, label %490, label %512, !dbg !1914

; <label>:489:                                    ; preds = %467
  br i1 %20, label %512, label %490, !dbg !1915

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
  %501 = lshr i8 %494, 5, !dbg !1916
  %502 = zext i8 %501 to i64, !dbg !1916
  %503 = getelementptr inbounds i32, i32* %6, i64 %502, !dbg !1917
  %504 = load i32, i32* %503, align 4, !dbg !1917, !tbaa !715
  %505 = and i8 %494, 31, !dbg !1918
  %506 = zext i8 %505 to i32, !dbg !1918
  %507 = shl i32 1, %506, !dbg !1919
  %508 = and i32 %504, %507, !dbg !1919
  %509 = icmp eq i32 %508, 0, !dbg !1919
  %510 = icmp eq i8 %155, 0, !dbg !1920
  %511 = and i1 %510, %509, !dbg !1921
  br i1 %511, label %562, label %524, !dbg !1921

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
  %523 = icmp eq i8 %155, 0, !dbg !1920
  br i1 %523, label %562, label %524, !dbg !1922

; <label>:524:                                    ; preds = %255, %490, %512
  %525 = phi i64 [ %500, %490 ], [ %522, %512 ], [ %122, %255 ], !dbg !1923
  %526 = phi i64 [ %499, %490 ], [ %521, %512 ], [ %123, %255 ], !dbg !1603
  %527 = phi i64 [ %498, %490 ], [ %520, %512 ], [ %124, %255 ], !dbg !1545
  %528 = phi i64 [ %497, %490 ], [ %519, %512 ], [ %154, %255 ], !dbg !1911
  %529 = phi i8 [ %496, %490 ], [ %518, %512 ], [ %126, %255 ], !dbg !1552
  %530 = phi i8 [ %495, %490 ], [ %517, %512 ], [ %127, %255 ], !dbg !1553
  %531 = phi i8 [ %494, %490 ], [ %516, %512 ], [ %256, %255 ], !dbg !1924
  %532 = phi i8 [ %492, %490 ], [ %514, %512 ], [ 0, %255 ], !dbg !1628
  %533 = phi i64 [ %491, %490 ], [ %513, %512 ], [ %129, %255 ]
  call void @llvm.dbg.value(metadata i64 %533, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 %532, metadata !1498, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 %531, metadata !1491, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %530, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %529, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %528, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %527, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %526, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %525, metadata !1480, metadata !DIExpression()), !dbg !1604
  br i1 %110, label %534, label %661, !dbg !1927

; <label>:534:                                    ; preds = %524
  call void @llvm.dbg.value(metadata i8 1, metadata !1497, metadata !DIExpression()), !dbg !1614
  %535 = and i8 %529, 1, !dbg !1929
  %536 = icmp eq i8 %535, 0, !dbg !1929
  %537 = and i1 %114, %536, !dbg !1929
  br i1 %537, label %538, label %554, !dbg !1929

; <label>:538:                                    ; preds = %534
  %539 = icmp ult i64 %526, %533, !dbg !1931
  br i1 %539, label %540, label %542, !dbg !1935

; <label>:540:                                    ; preds = %538
  %541 = getelementptr inbounds i8, i8* %0, i64 %526, !dbg !1931
  store i8 39, i8* %541, align 1, !dbg !1931, !tbaa !781
  br label %542, !dbg !1931

; <label>:542:                                    ; preds = %540, %538
  %543 = add i64 %526, 1, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %543, metadata !1481, metadata !DIExpression()), !dbg !1544
  %544 = icmp ult i64 %543, %533, !dbg !1936
  br i1 %544, label %545, label %547, !dbg !1939

; <label>:545:                                    ; preds = %542
  %546 = getelementptr inbounds i8, i8* %0, i64 %543, !dbg !1936
  store i8 36, i8* %546, align 1, !dbg !1936, !tbaa !781
  br label %547, !dbg !1936

; <label>:547:                                    ; preds = %545, %542
  %548 = add i64 %526, 2, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %548, metadata !1481, metadata !DIExpression()), !dbg !1544
  %549 = icmp ult i64 %548, %533, !dbg !1940
  br i1 %549, label %550, label %552, !dbg !1943

; <label>:550:                                    ; preds = %547
  %551 = getelementptr inbounds i8, i8* %0, i64 %548, !dbg !1940
  store i8 39, i8* %551, align 1, !dbg !1940, !tbaa !781
  br label %552, !dbg !1940

; <label>:552:                                    ; preds = %550, %547
  %553 = add i64 %526, 3, !dbg !1943
  call void @llvm.dbg.value(metadata i64 %553, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 1, metadata !1488, metadata !DIExpression()), !dbg !1552
  br label %554, !dbg !1944

; <label>:554:                                    ; preds = %534, %552
  %555 = phi i64 [ %553, %552 ], [ %526, %534 ], !dbg !1901
  %556 = phi i8 [ 1, %552 ], [ %529, %534 ], !dbg !1603
  call void @llvm.dbg.value(metadata i8 %556, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %555, metadata !1481, metadata !DIExpression()), !dbg !1544
  %557 = icmp ult i64 %555, %533, !dbg !1945
  br i1 %557, label %558, label %560, !dbg !1948

; <label>:558:                                    ; preds = %554
  %559 = getelementptr inbounds i8, i8* %0, i64 %555, !dbg !1945
  store i8 92, i8* %559, align 1, !dbg !1945, !tbaa !781
  br label %560, !dbg !1945

; <label>:560:                                    ; preds = %554, %558
  %561 = add i64 %555, 1, !dbg !1948
  call void @llvm.dbg.value(metadata i64 %561, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %572, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 %571, metadata !1498, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 %570, metadata !1497, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8 %569, metadata !1491, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %568, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %567, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %566, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %565, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %564, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %563, metadata !1480, metadata !DIExpression()), !dbg !1604
  br label %589, !dbg !1949

; <label>:562:                                    ; preds = %432, %252, %490, %251, %512
  %563 = phi i64 [ %522, %512 ], [ %122, %251 ], [ %500, %490 ], [ %122, %252 ], [ %371, %432 ], !dbg !1923
  %564 = phi i64 [ %521, %512 ], [ %123, %251 ], [ %499, %490 ], [ %123, %252 ], [ %433, %432 ], !dbg !1603
  %565 = phi i64 [ %520, %512 ], [ %124, %251 ], [ %498, %490 ], [ %124, %252 ], [ %124, %432 ], !dbg !1545
  %566 = phi i64 [ %519, %512 ], [ %154, %251 ], [ %497, %490 ], [ %154, %252 ], [ %360, %432 ], !dbg !1911
  %567 = phi i8 [ %518, %512 ], [ %126, %251 ], [ %496, %490 ], [ %126, %252 ], [ %434, %432 ], !dbg !1552
  %568 = phi i8 [ %517, %512 ], [ %127, %251 ], [ %495, %490 ], [ %127, %252 ], [ %127, %432 ], !dbg !1553
  %569 = phi i8 [ %516, %512 ], [ 92, %251 ], [ %494, %490 ], [ 92, %252 ], [ %435, %432 ], !dbg !1952
  %570 = phi i8 [ %515, %512 ], [ 0, %251 ], [ %493, %490 ], [ 0, %252 ], [ %437, %432 ], !dbg !1628
  %571 = phi i8 [ %514, %512 ], [ 0, %251 ], [ %492, %490 ], [ 0, %252 ], [ %363, %432 ], !dbg !1628
  %572 = phi i64 [ %513, %512 ], [ %129, %251 ], [ %491, %490 ], [ %129, %252 ], [ %129, %432 ]
  call void @llvm.dbg.value(metadata i64 %572, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 %571, metadata !1498, metadata !DIExpression()), !dbg !1615
  call void @llvm.dbg.value(metadata i8 %570, metadata !1497, metadata !DIExpression()), !dbg !1614
  call void @llvm.dbg.value(metadata i8 %569, metadata !1491, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.value(metadata i8 %568, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %567, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %566, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %565, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %564, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %563, metadata !1480, metadata !DIExpression()), !dbg !1604
  %573 = and i8 %567, 1, !dbg !1949
  %574 = icmp ne i8 %573, 0, !dbg !1949
  %575 = and i8 %570, 1, !dbg !1949
  %576 = icmp eq i8 %575, 0, !dbg !1949
  %577 = and i1 %574, %576, !dbg !1949
  br i1 %577, label %578, label %589, !dbg !1949

; <label>:578:                                    ; preds = %562
  %579 = icmp ult i64 %564, %572, !dbg !1953
  br i1 %579, label %580, label %582, !dbg !1957

; <label>:580:                                    ; preds = %578
  %581 = getelementptr inbounds i8, i8* %0, i64 %564, !dbg !1953
  store i8 39, i8* %581, align 1, !dbg !1953, !tbaa !781
  br label %582, !dbg !1953

; <label>:582:                                    ; preds = %580, %578
  %583 = add i64 %564, 1, !dbg !1957
  call void @llvm.dbg.value(metadata i64 %583, metadata !1481, metadata !DIExpression()), !dbg !1544
  %584 = icmp ult i64 %583, %572, !dbg !1958
  br i1 %584, label %585, label %587, !dbg !1961

; <label>:585:                                    ; preds = %582
  %586 = getelementptr inbounds i8, i8* %0, i64 %583, !dbg !1958
  store i8 39, i8* %586, align 1, !dbg !1958, !tbaa !781
  br label %587, !dbg !1958

; <label>:587:                                    ; preds = %585, %582
  %588 = add i64 %564, 2, !dbg !1961
  call void @llvm.dbg.value(metadata i64 %588, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i8 0, metadata !1488, metadata !DIExpression()), !dbg !1552
  br label %589, !dbg !1962

; <label>:589:                                    ; preds = %560, %562, %587
  %590 = phi i64 [ %572, %587 ], [ %572, %562 ], [ %533, %560 ]
  %591 = phi i8 [ %571, %587 ], [ %571, %562 ], [ %532, %560 ]
  %592 = phi i8 [ %569, %587 ], [ %569, %562 ], [ %531, %560 ]
  %593 = phi i8 [ %568, %587 ], [ %568, %562 ], [ %530, %560 ]
  %594 = phi i64 [ %566, %587 ], [ %566, %562 ], [ %528, %560 ]
  %595 = phi i64 [ %565, %587 ], [ %565, %562 ], [ %527, %560 ]
  %596 = phi i64 [ %563, %587 ], [ %563, %562 ], [ %525, %560 ]
  %597 = phi i64 [ %588, %587 ], [ %564, %562 ], [ %561, %560 ], !dbg !1901
  %598 = phi i8 [ 0, %587 ], [ %567, %562 ], [ %556, %560 ], !dbg !1603
  call void @llvm.dbg.value(metadata i8 %598, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %597, metadata !1481, metadata !DIExpression()), !dbg !1544
  %599 = icmp ult i64 %597, %590, !dbg !1963
  br i1 %599, label %600, label %602, !dbg !1966

; <label>:600:                                    ; preds = %589
  %601 = getelementptr inbounds i8, i8* %0, i64 %597, !dbg !1963
  store i8 %592, i8* %601, align 1, !dbg !1963, !tbaa !781
  br label %602, !dbg !1963

; <label>:602:                                    ; preds = %600, %589
  %603 = add i64 %597, 1, !dbg !1966
  call void @llvm.dbg.value(metadata i64 %603, metadata !1481, metadata !DIExpression()), !dbg !1544
  %604 = and i8 %591, 1, !dbg !1967
  %605 = icmp eq i8 %604, 0, !dbg !1967
  %606 = select i1 %605, i8 0, i8 %128, !dbg !1969
  call void @llvm.dbg.value(metadata i8 %606, metadata !1490, metadata !DIExpression()), !dbg !1554
  br label %607, !dbg !1970

; <label>:607:                                    ; preds = %602, %207
  %608 = phi i64 [ %596, %602 ], [ %122, %207 ], !dbg !1923
  %609 = phi i64 [ %603, %602 ], [ %123, %207 ], !dbg !1603
  %610 = phi i64 [ %595, %602 ], [ %124, %207 ], !dbg !1545
  %611 = phi i64 [ %594, %602 ], [ %154, %207 ], !dbg !1911
  %612 = phi i8 [ %598, %602 ], [ %126, %207 ], !dbg !1552
  %613 = phi i8 [ %593, %602 ], [ %127, %207 ], !dbg !1603
  %614 = phi i8 [ %606, %602 ], [ %128, %207 ], !dbg !1554
  %615 = phi i64 [ %590, %602 ], [ %129, %207 ]
  call void @llvm.dbg.value(metadata i64 %615, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8 %614, metadata !1490, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %613, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %612, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i64 %611, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %610, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %609, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %608, metadata !1480, metadata !DIExpression()), !dbg !1604
  %616 = add i64 %608, 1, !dbg !1971
  call void @llvm.dbg.value(metadata i64 %616, metadata !1480, metadata !DIExpression()), !dbg !1604
  br label %121, !dbg !1972, !llvm.loop !1973

; <label>:617:                                    ; preds = %131, %135
  %618 = phi i64 [ -1, %131 ], [ %122, %135 ]
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i8 %126, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %126, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %127, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %127, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %128, metadata !1490, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %128, metadata !1490, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i8 %126, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %126, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %127, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %127, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %128, metadata !1490, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %128, metadata !1490, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i8 %126, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %126, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %127, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %127, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %128, metadata !1490, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %128, metadata !1490, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i8 %126, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %126, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %127, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %127, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %128, metadata !1490, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %128, metadata !1490, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %618, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %618, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8 %126, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %126, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %127, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %127, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %128, metadata !1490, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %128, metadata !1490, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %125, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i64 %125, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8 %126, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %126, metadata !1488, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.value(metadata i8 %127, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %127, metadata !1489, metadata !DIExpression()), !dbg !1553
  call void @llvm.dbg.value(metadata i8 %128, metadata !1490, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i8 %128, metadata !1490, metadata !DIExpression()), !dbg !1554
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  %619 = icmp eq i64 %123, 0, !dbg !1975
  %620 = and i1 %114, %619, !dbg !1977
  %621 = xor i1 %620, true, !dbg !1977
  %622 = or i1 %110, %621, !dbg !1977
  br i1 %622, label %623, label %661, !dbg !1977

; <label>:623:                                    ; preds = %617
  %624 = and i1 %114, %110, !dbg !1978
  %625 = xor i1 %624, true, !dbg !1978
  %626 = and i8 %127, 1, !dbg !1980
  %627 = icmp eq i8 %626, 0, !dbg !1980
  %628 = or i1 %627, %625, !dbg !1978
  br i1 %628, label %638, label %629, !dbg !1978

; <label>:629:                                    ; preds = %623
  %630 = and i8 %128, 1, !dbg !1981
  %631 = icmp eq i8 %630, 0, !dbg !1981
  br i1 %631, label %634, label %632, !dbg !1984

; <label>:632:                                    ; preds = %629
  call void @llvm.dbg.value(metadata i64 %618, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %618, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %618, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %618, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %618, metadata !1474, metadata !DIExpression()), !dbg !1538
  call void @llvm.dbg.value(metadata i8* %95, metadata !1478, metadata !DIExpression()), !dbg !1542
  call void @llvm.dbg.value(metadata i8* %96, metadata !1479, metadata !DIExpression()), !dbg !1543
  call void @llvm.dbg.value(metadata i64 %124, metadata !1482, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata i64 %125, metadata !1474, metadata !DIExpression()), !dbg !1538
  %633 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %124, i8* %2, i64 %618, i32 5, i32 %5, i32* %6, i8* %95, i8* %96), !dbg !1985
  br label %671, !dbg !1986

; <label>:634:                                    ; preds = %629
  %635 = icmp eq i64 %129, 0, !dbg !1987
  %636 = icmp ne i64 %124, 0, !dbg !1989
  %637 = and i1 %636, %635, !dbg !1990
  br i1 %637, label %27, label %638, !dbg !1990

; <label>:638:                                    ; preds = %623, %634
  call void @llvm.dbg.value(metadata i8* %98, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8* %98, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8* %98, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8* %98, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8* %98, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8* %98, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8* %98, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8* %98, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8* %98, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8* %98, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i8* %98, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i8* %98, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %129, metadata !1472, metadata !DIExpression()), !dbg !1536
  %639 = icmp ne i8* %98, null, !dbg !1991
  %640 = and i1 %639, %110, !dbg !1993
  br i1 %640, label %641, label %656, !dbg !1993

; <label>:641:                                    ; preds = %638
  call void @llvm.dbg.value(metadata i8* %98, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %123, metadata !1481, metadata !DIExpression()), !dbg !1544
  %642 = load i8, i8* %98, align 1, !dbg !1994, !tbaa !781
  %643 = icmp eq i8 %642, 0, !dbg !1997
  br i1 %643, label %656, label %644, !dbg !1997

; <label>:644:                                    ; preds = %641, %651
  %645 = phi i8 [ %654, %651 ], [ %642, %641 ]
  %646 = phi i8* [ %653, %651 ], [ %98, %641 ]
  %647 = phi i64 [ %652, %651 ], [ %123, %641 ]
  call void @llvm.dbg.value(metadata i8* %646, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %647, metadata !1481, metadata !DIExpression()), !dbg !1544
  %648 = icmp ult i64 %647, %129, !dbg !1998
  br i1 %648, label %649, label %651, !dbg !2001

; <label>:649:                                    ; preds = %644
  %650 = getelementptr inbounds i8, i8* %0, i64 %647, !dbg !1998
  store i8 %645, i8* %650, align 1, !dbg !1998, !tbaa !781
  br label %651, !dbg !1998

; <label>:651:                                    ; preds = %649, %644
  %652 = add i64 %647, 1, !dbg !2001
  %653 = getelementptr inbounds i8, i8* %646, i64 1, !dbg !2002
  call void @llvm.dbg.value(metadata i8* %653, metadata !1483, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.value(metadata i64 %652, metadata !1481, metadata !DIExpression()), !dbg !1544
  %654 = load i8, i8* %653, align 1, !dbg !1994, !tbaa !781
  %655 = icmp eq i8 %654, 0, !dbg !1997
  br i1 %655, label %656, label %644, !dbg !1997, !llvm.loop !2003

; <label>:656:                                    ; preds = %651, %641, %638
  %657 = phi i64 [ %123, %638 ], [ %123, %641 ], [ %652, %651 ], !dbg !1544
  call void @llvm.dbg.value(metadata i64 %657, metadata !1481, metadata !DIExpression()), !dbg !1544
  %658 = icmp ult i64 %657, %129, !dbg !2005
  br i1 %658, label %659, label %671, !dbg !2007

; <label>:659:                                    ; preds = %656
  %660 = getelementptr inbounds i8, i8* %0, i64 %657, !dbg !2008
  store i8 0, i8* %660, align 1, !dbg !2009, !tbaa !781
  br label %671, !dbg !2008

; <label>:661:                                    ; preds = %617, %524, %274, %271, %253, %251, %223, %209, %159, %146, %377, %358
  %662 = phi i32 [ 2, %358 ], [ %94, %377 ], [ %94, %146 ], [ %94, %159 ], [ 2, %209 ], [ 5, %223 ], [ 2, %251 ], [ 2, %253 ], [ 2, %271 ], [ 2, %274 ], [ %94, %524 ], [ %94, %617 ]
  %663 = phi i64 [ %311, %358 ], [ %360, %377 ], [ %144, %146 ], [ %154, %159 ], [ %154, %209 ], [ %154, %223 ], [ %154, %251 ], [ %154, %253 ], [ %154, %271 ], [ %154, %274 ], [ %528, %524 ], [ %618, %617 ]
  %664 = phi i64 [ %129, %358 ], [ %129, %377 ], [ %129, %146 ], [ %129, %159 ], [ %129, %209 ], [ %129, %223 ], [ %129, %251 ], [ %129, %253 ], [ %129, %271 ], [ %129, %274 ], [ %533, %524 ], [ %129, %617 ]
  call void @llvm.dbg.value(metadata i64 %664, metadata !1472, metadata !DIExpression()), !dbg !1536
  call void @llvm.dbg.value(metadata i64 %663, metadata !1474, metadata !DIExpression()), !dbg !1538
  %665 = icmp ne i32 %662, 2, !dbg !2010
  %666 = icmp eq i8 %102, 0, !dbg !2012
  %667 = or i1 %665, %666, !dbg !2013
  call void @llvm.dbg.value(metadata i32 4, metadata !1475, metadata !DIExpression()), !dbg !1539
  %668 = select i1 %667, i32 %662, i32 4, !dbg !2013
  call void @llvm.dbg.value(metadata i32 %668, metadata !1475, metadata !DIExpression()), !dbg !1539
  %669 = and i32 %5, -3, !dbg !2014
  %670 = call fastcc i64 @quotearg_buffer_restyled(i8* %0, i64 %664, i8* %2, i64 %663, i32 %668, i32 %669, i32* null, i8* %95, i8* %96), !dbg !2015
  br label %671, !dbg !2016

; <label>:671:                                    ; preds = %656, %659, %661, %632
  %672 = phi i64 [ %670, %661 ], [ %633, %632 ], [ %657, %659 ], [ %657, %656 ]
  ret i64 %672, !dbg !2017
}

; Function Attrs: nounwind
declare i64 @__ctype_get_mb_cur_max() local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @gettext_quote(i8*, i32) unnamed_addr #7 !dbg !2018 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2022, metadata !DIExpression()), !dbg !2026
  call void @llvm.dbg.value(metadata i32 %1, metadata !2023, metadata !DIExpression()), !dbg !2027
  %3 = tail call i8* @dcgettext(i8* null, i8* %0, i32 5) #11, !dbg !2028
  call void @llvm.dbg.value(metadata i8* %3, metadata !2024, metadata !DIExpression()), !dbg !2029
  %4 = icmp eq i8* %3, %0, !dbg !2030
  br i1 %4, label %5, label %71, !dbg !2032

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @locale_charset() #11, !dbg !2033
  call void @llvm.dbg.value(metadata i8* %6, metadata !2025, metadata !DIExpression()), !dbg !2034
  call void @llvm.dbg.value(metadata i8* %6, metadata !2035, metadata !DIExpression()), !dbg !2051
  call void @llvm.dbg.value(metadata i8* null, metadata !2041, metadata !DIExpression()), !dbg !2054
  call void @llvm.dbg.value(metadata i8 85, metadata !2042, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.value(metadata i8 84, metadata !2043, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i8 70, metadata !2044, metadata !DIExpression()), !dbg !2057
  call void @llvm.dbg.value(metadata i8 45, metadata !2045, metadata !DIExpression()), !dbg !2058
  call void @llvm.dbg.value(metadata i8 56, metadata !2046, metadata !DIExpression()), !dbg !2059
  call void @llvm.dbg.value(metadata i8 0, metadata !2047, metadata !DIExpression()), !dbg !2060
  call void @llvm.dbg.value(metadata i8 0, metadata !2048, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.value(metadata i8 0, metadata !2049, metadata !DIExpression()), !dbg !2062
  call void @llvm.dbg.value(metadata i8 0, metadata !2050, metadata !DIExpression()), !dbg !2063
  %7 = load i8, i8* %6, align 1, !dbg !2064, !tbaa !781
  %8 = and i8 %7, -33, !dbg !2064
  switch i8 %8, label %68 [
    i8 85, label %9
    i8 71, label %35
  ], !dbg !2064

; <label>:9:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2066, metadata !DIExpression()), !dbg !2080
  call void @llvm.dbg.value(metadata i8* null, metadata !2071, metadata !DIExpression()), !dbg !2084
  call void @llvm.dbg.value(metadata i8 84, metadata !2072, metadata !DIExpression()), !dbg !2085
  call void @llvm.dbg.value(metadata i8 70, metadata !2073, metadata !DIExpression()), !dbg !2086
  call void @llvm.dbg.value(metadata i8 45, metadata !2074, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.value(metadata i8 56, metadata !2075, metadata !DIExpression()), !dbg !2088
  call void @llvm.dbg.value(metadata i8 0, metadata !2076, metadata !DIExpression()), !dbg !2089
  call void @llvm.dbg.value(metadata i8 0, metadata !2077, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.value(metadata i8 0, metadata !2078, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.value(metadata i8 0, metadata !2079, metadata !DIExpression()), !dbg !2092
  %10 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2093
  %11 = load i8, i8* %10, align 1, !dbg !2093, !tbaa !781
  %12 = and i8 %11, -33, !dbg !2093
  %13 = icmp eq i8 %12, 84, !dbg !2093
  br i1 %13, label %14, label %68, !dbg !2093

; <label>:14:                                     ; preds = %9
  call void @llvm.dbg.value(metadata i8* %6, metadata !2095, metadata !DIExpression()), !dbg !2108
  call void @llvm.dbg.value(metadata i8* null, metadata !2100, metadata !DIExpression()), !dbg !2112
  call void @llvm.dbg.value(metadata i8 70, metadata !2101, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.value(metadata i8 45, metadata !2102, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.value(metadata i8 56, metadata !2103, metadata !DIExpression()), !dbg !2115
  call void @llvm.dbg.value(metadata i8 0, metadata !2104, metadata !DIExpression()), !dbg !2116
  call void @llvm.dbg.value(metadata i8 0, metadata !2105, metadata !DIExpression()), !dbg !2117
  call void @llvm.dbg.value(metadata i8 0, metadata !2106, metadata !DIExpression()), !dbg !2118
  call void @llvm.dbg.value(metadata i8 0, metadata !2107, metadata !DIExpression()), !dbg !2119
  %15 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2120
  %16 = load i8, i8* %15, align 1, !dbg !2120, !tbaa !781
  %17 = and i8 %16, -33, !dbg !2120
  %18 = icmp eq i8 %17, 70, !dbg !2120
  br i1 %18, label %19, label %68, !dbg !2120

; <label>:19:                                     ; preds = %14
  call void @llvm.dbg.value(metadata i8* %6, metadata !2122, metadata !DIExpression()), !dbg !2134
  call void @llvm.dbg.value(metadata i8* null, metadata !2127, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8 45, metadata !2128, metadata !DIExpression()), !dbg !2139
  call void @llvm.dbg.value(metadata i8 56, metadata !2129, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata i8 0, metadata !2130, metadata !DIExpression()), !dbg !2141
  call void @llvm.dbg.value(metadata i8 0, metadata !2131, metadata !DIExpression()), !dbg !2142
  call void @llvm.dbg.value(metadata i8 0, metadata !2132, metadata !DIExpression()), !dbg !2143
  call void @llvm.dbg.value(metadata i8 0, metadata !2133, metadata !DIExpression()), !dbg !2144
  %20 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2145
  %21 = load i8, i8* %20, align 1, !dbg !2145, !tbaa !781
  %22 = icmp eq i8 %21, 45, !dbg !2145
  br i1 %22, label %23, label %68, !dbg !2147

; <label>:23:                                     ; preds = %19
  call void @llvm.dbg.value(metadata i8* %6, metadata !2148, metadata !DIExpression()), !dbg !2159
  call void @llvm.dbg.value(metadata i8* null, metadata !2153, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.value(metadata i8 56, metadata !2154, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i8 0, metadata !2155, metadata !DIExpression()), !dbg !2165
  call void @llvm.dbg.value(metadata i8 0, metadata !2156, metadata !DIExpression()), !dbg !2166
  call void @llvm.dbg.value(metadata i8 0, metadata !2157, metadata !DIExpression()), !dbg !2167
  call void @llvm.dbg.value(metadata i8 0, metadata !2158, metadata !DIExpression()), !dbg !2168
  %24 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2169
  %25 = load i8, i8* %24, align 1, !dbg !2169, !tbaa !781
  %26 = icmp eq i8 %25, 56, !dbg !2169
  br i1 %26, label %27, label %68, !dbg !2171

; <label>:27:                                     ; preds = %23
  call void @llvm.dbg.value(metadata i8* %6, metadata !2172, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.value(metadata i8* null, metadata !2177, metadata !DIExpression()), !dbg !2186
  call void @llvm.dbg.value(metadata i8 0, metadata !2178, metadata !DIExpression()), !dbg !2187
  call void @llvm.dbg.value(metadata i8 0, metadata !2179, metadata !DIExpression()), !dbg !2188
  call void @llvm.dbg.value(metadata i8 0, metadata !2180, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i8 0, metadata !2181, metadata !DIExpression()), !dbg !2190
  %28 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2191
  %29 = load i8, i8* %28, align 1, !dbg !2191, !tbaa !781
  %30 = icmp eq i8 %29, 0, !dbg !2191
  br i1 %30, label %31, label %68, !dbg !2193

; <label>:31:                                     ; preds = %27
  %32 = load i8, i8* %0, align 1, !dbg !2194, !tbaa !781
  %33 = icmp eq i8 %32, 96, !dbg !2195
  %34 = select i1 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14.76, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15.77, i64 0, i64 0), !dbg !2194
  br label %71, !dbg !2196

; <label>:35:                                     ; preds = %5
  call void @llvm.dbg.value(metadata i8* %6, metadata !2066, metadata !DIExpression()), !dbg !2197
  call void @llvm.dbg.value(metadata i8* null, metadata !2071, metadata !DIExpression()), !dbg !2201
  call void @llvm.dbg.value(metadata i8 66, metadata !2072, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.value(metadata i8 49, metadata !2073, metadata !DIExpression()), !dbg !2203
  call void @llvm.dbg.value(metadata i8 56, metadata !2074, metadata !DIExpression()), !dbg !2204
  call void @llvm.dbg.value(metadata i8 48, metadata !2075, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i8 51, metadata !2076, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i8 48, metadata !2077, metadata !DIExpression()), !dbg !2207
  call void @llvm.dbg.value(metadata i8 0, metadata !2078, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.value(metadata i8 0, metadata !2079, metadata !DIExpression()), !dbg !2209
  %36 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !2210
  %37 = load i8, i8* %36, align 1, !dbg !2210, !tbaa !781
  %38 = and i8 %37, -33, !dbg !2210
  %39 = icmp eq i8 %38, 66, !dbg !2210
  br i1 %39, label %40, label %68, !dbg !2210

; <label>:40:                                     ; preds = %35
  call void @llvm.dbg.value(metadata i8* %6, metadata !2095, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* null, metadata !2100, metadata !DIExpression()), !dbg !2213
  call void @llvm.dbg.value(metadata i8 49, metadata !2101, metadata !DIExpression()), !dbg !2214
  call void @llvm.dbg.value(metadata i8 56, metadata !2102, metadata !DIExpression()), !dbg !2215
  call void @llvm.dbg.value(metadata i8 48, metadata !2103, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i8 51, metadata !2104, metadata !DIExpression()), !dbg !2217
  call void @llvm.dbg.value(metadata i8 48, metadata !2105, metadata !DIExpression()), !dbg !2218
  call void @llvm.dbg.value(metadata i8 0, metadata !2106, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata i8 0, metadata !2107, metadata !DIExpression()), !dbg !2220
  %41 = getelementptr inbounds i8, i8* %6, i64 2, !dbg !2221
  %42 = load i8, i8* %41, align 1, !dbg !2221, !tbaa !781
  %43 = icmp eq i8 %42, 49, !dbg !2221
  br i1 %43, label %44, label %68, !dbg !2222

; <label>:44:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i8* %6, metadata !2122, metadata !DIExpression()), !dbg !2223
  call void @llvm.dbg.value(metadata i8* null, metadata !2127, metadata !DIExpression()), !dbg !2225
  call void @llvm.dbg.value(metadata i8 56, metadata !2128, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata i8 48, metadata !2129, metadata !DIExpression()), !dbg !2227
  call void @llvm.dbg.value(metadata i8 51, metadata !2130, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata i8 48, metadata !2131, metadata !DIExpression()), !dbg !2229
  call void @llvm.dbg.value(metadata i8 0, metadata !2132, metadata !DIExpression()), !dbg !2230
  call void @llvm.dbg.value(metadata i8 0, metadata !2133, metadata !DIExpression()), !dbg !2231
  %45 = getelementptr inbounds i8, i8* %6, i64 3, !dbg !2232
  %46 = load i8, i8* %45, align 1, !dbg !2232, !tbaa !781
  %47 = icmp eq i8 %46, 56, !dbg !2232
  br i1 %47, label %48, label %68, !dbg !2233

; <label>:48:                                     ; preds = %44
  call void @llvm.dbg.value(metadata i8* %6, metadata !2148, metadata !DIExpression()), !dbg !2234
  call void @llvm.dbg.value(metadata i8* null, metadata !2153, metadata !DIExpression()), !dbg !2236
  call void @llvm.dbg.value(metadata i8 48, metadata !2154, metadata !DIExpression()), !dbg !2237
  call void @llvm.dbg.value(metadata i8 51, metadata !2155, metadata !DIExpression()), !dbg !2238
  call void @llvm.dbg.value(metadata i8 48, metadata !2156, metadata !DIExpression()), !dbg !2239
  call void @llvm.dbg.value(metadata i8 0, metadata !2157, metadata !DIExpression()), !dbg !2240
  call void @llvm.dbg.value(metadata i8 0, metadata !2158, metadata !DIExpression()), !dbg !2241
  %49 = getelementptr inbounds i8, i8* %6, i64 4, !dbg !2242
  %50 = load i8, i8* %49, align 1, !dbg !2242, !tbaa !781
  %51 = icmp eq i8 %50, 48, !dbg !2242
  br i1 %51, label %52, label %68, !dbg !2243

; <label>:52:                                     ; preds = %48
  call void @llvm.dbg.value(metadata i8* %6, metadata !2172, metadata !DIExpression()), !dbg !2244
  call void @llvm.dbg.value(metadata i8* null, metadata !2177, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8 51, metadata !2178, metadata !DIExpression()), !dbg !2247
  call void @llvm.dbg.value(metadata i8 48, metadata !2179, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.value(metadata i8 0, metadata !2180, metadata !DIExpression()), !dbg !2249
  call void @llvm.dbg.value(metadata i8 0, metadata !2181, metadata !DIExpression()), !dbg !2250
  %53 = getelementptr inbounds i8, i8* %6, i64 5, !dbg !2251
  %54 = load i8, i8* %53, align 1, !dbg !2251, !tbaa !781
  %55 = icmp eq i8 %54, 51, !dbg !2251
  br i1 %55, label %56, label %68, !dbg !2252

; <label>:56:                                     ; preds = %52
  call void @llvm.dbg.value(metadata i8* %6, metadata !2253, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.value(metadata i8* null, metadata !2258, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8 48, metadata !2259, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8 0, metadata !2260, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata i8 0, metadata !2261, metadata !DIExpression()), !dbg !2269
  %57 = getelementptr inbounds i8, i8* %6, i64 6, !dbg !2270
  %58 = load i8, i8* %57, align 1, !dbg !2270, !tbaa !781
  %59 = icmp eq i8 %58, 48, !dbg !2270
  br i1 %59, label %60, label %68, !dbg !2272

; <label>:60:                                     ; preds = %56
  call void @llvm.dbg.value(metadata i8* %6, metadata !2273, metadata !DIExpression()), !dbg !2281
  call void @llvm.dbg.value(metadata i8* null, metadata !2278, metadata !DIExpression()), !dbg !2285
  call void @llvm.dbg.value(metadata i8 0, metadata !2279, metadata !DIExpression()), !dbg !2286
  call void @llvm.dbg.value(metadata i8 0, metadata !2280, metadata !DIExpression()), !dbg !2287
  %61 = getelementptr inbounds i8, i8* %6, i64 7, !dbg !2288
  %62 = load i8, i8* %61, align 1, !dbg !2288, !tbaa !781
  %63 = icmp eq i8 %62, 0, !dbg !2288
  br i1 %63, label %64, label %68, !dbg !2290

; <label>:64:                                     ; preds = %60
  %65 = load i8, i8* %0, align 1, !dbg !2291, !tbaa !781
  %66 = icmp eq i8 %65, 96, !dbg !2292
  %67 = select i1 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17.78, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18.79, i64 0, i64 0), !dbg !2291
  br label %71, !dbg !2293

; <label>:68:                                     ; preds = %60, %5, %27, %23, %19, %14, %9, %56, %52, %48, %44, %40, %35
  %69 = icmp eq i32 %1, 9, !dbg !2294
  %70 = select i1 %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10.75, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.12.74, i64 0, i64 0), !dbg !2295
  br label %71, !dbg !2296

; <label>:71:                                     ; preds = %2, %68, %64, %31
  %72 = phi i8* [ %34, %31 ], [ %67, %64 ], [ %70, %68 ], [ %3, %2 ], !dbg !2297
  ret i8* %72, !dbg !2298
}

; Function Attrs: nounwind readonly
declare i32 @memcmp(i8* nocapture, i8* nocapture, i64) local_unnamed_addr #5

; Function Attrs: nounwind readnone
declare i16** @__ctype_b_loc() local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @iswprint(i32) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @mbsinit(%struct.__mbstate_t*) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc(i8*, i64, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2299 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2303, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.value(metadata i64 %1, metadata !2304, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2305, metadata !DIExpression()), !dbg !2308
  call void @llvm.dbg.value(metadata i8* %0, metadata !2309, metadata !DIExpression()) #11, !dbg !2322
  call void @llvm.dbg.value(metadata i64 %1, metadata !2314, metadata !DIExpression()) #11, !dbg !2324
  call void @llvm.dbg.value(metadata i64* null, metadata !2315, metadata !DIExpression()) #11, !dbg !2325
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2316, metadata !DIExpression()) #11, !dbg !2326
  %4 = icmp eq %struct.quoting_options* %2, null, !dbg !2327
  %5 = select i1 %4, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %2, !dbg !2327
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2317, metadata !DIExpression()) #11, !dbg !2328
  %6 = tail call i32* @__errno_location() #17, !dbg !2329
  %7 = load i32, i32* %6, align 4, !dbg !2329, !tbaa !715
  call void @llvm.dbg.value(metadata i32 %7, metadata !2318, metadata !DIExpression()) #11, !dbg !2330
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 1, !dbg !2331
  %9 = load i32, i32* %8, align 4, !dbg !2331, !tbaa !1404
  %10 = or i32 %9, 1, !dbg !2332
  call void @llvm.dbg.value(metadata i32 %10, metadata !2319, metadata !DIExpression()) #11, !dbg !2333
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2334
  %12 = load i32, i32* %11, align 8, !dbg !2334, !tbaa !1345
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 2, i64 0, !dbg !2335
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2336
  %15 = load i8*, i8** %14, align 8, !dbg !2336, !tbaa !1430
  %16 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2337
  %17 = load i8*, i8** %16, align 8, !dbg !2337, !tbaa !1433
  %18 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %12, i32 %10, i32* nonnull %13, i8* %15, i8* %17) #11, !dbg !2338
  %19 = add i64 %18, 1, !dbg !2339
  call void @llvm.dbg.value(metadata i64 %19, metadata !2320, metadata !DIExpression()) #11, !dbg !2340
  call void @llvm.dbg.value(metadata i64 %19, metadata !2341, metadata !DIExpression()) #11, !dbg !2344
  %20 = tail call noalias i8* @xmalloc(i64 %19) #11, !dbg !2346
  call void @llvm.dbg.value(metadata i8* %20, metadata !2321, metadata !DIExpression()) #11, !dbg !2347
  %21 = load i32, i32* %11, align 8, !dbg !2348, !tbaa !1345
  %22 = load i8*, i8** %14, align 8, !dbg !2349, !tbaa !1430
  %23 = load i8*, i8** %16, align 8, !dbg !2350, !tbaa !1433
  %24 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %20, i64 %19, i8* %0, i64 %1, i32 %21, i32 %10, i32* nonnull %13, i8* %22, i8* %23) #11, !dbg !2351
  store i32 %7, i32* %6, align 4, !dbg !2352, !tbaa !715
  ret i8* %20, !dbg !2353
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_alloc_mem(i8*, i64, i64*, %struct.quoting_options*) local_unnamed_addr #7 !dbg !2310 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2309, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata i64 %1, metadata !2314, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.value(metadata i64* %2, metadata !2315, metadata !DIExpression()), !dbg !2356
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2316, metadata !DIExpression()), !dbg !2357
  %5 = icmp eq %struct.quoting_options* %3, null, !dbg !2358
  %6 = select i1 %5, %struct.quoting_options* @default_quoting_options, %struct.quoting_options* %3, !dbg !2358
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2317, metadata !DIExpression()), !dbg !2359
  %7 = tail call i32* @__errno_location() #17, !dbg !2360
  %8 = load i32, i32* %7, align 4, !dbg !2360, !tbaa !715
  call void @llvm.dbg.value(metadata i32 %8, metadata !2318, metadata !DIExpression()), !dbg !2361
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 1, !dbg !2362
  %10 = load i32, i32* %9, align 4, !dbg !2362, !tbaa !1404
  %11 = icmp ne i64* %2, null, !dbg !2363
  %12 = xor i1 %11, true, !dbg !2363
  %13 = zext i1 %12 to i32, !dbg !2363
  %14 = or i32 %10, %13, !dbg !2364
  call void @llvm.dbg.value(metadata i32 %14, metadata !2319, metadata !DIExpression()), !dbg !2365
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2366
  %16 = load i32, i32* %15, align 8, !dbg !2366, !tbaa !1345
  %17 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 2, i64 0, !dbg !2367
  %18 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2368
  %19 = load i8*, i8** %18, align 8, !dbg !2368, !tbaa !1430
  %20 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2369
  %21 = load i8*, i8** %20, align 8, !dbg !2369, !tbaa !1433
  %22 = tail call fastcc i64 @quotearg_buffer_restyled(i8* null, i64 0, i8* %0, i64 %1, i32 %16, i32 %14, i32* nonnull %17, i8* %19, i8* %21), !dbg !2370
  %23 = add i64 %22, 1, !dbg !2371
  call void @llvm.dbg.value(metadata i64 %23, metadata !2320, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.value(metadata i64 %23, metadata !2341, metadata !DIExpression()) #11, !dbg !2373
  %24 = tail call noalias i8* @xmalloc(i64 %23) #11, !dbg !2375
  call void @llvm.dbg.value(metadata i8* %24, metadata !2321, metadata !DIExpression()), !dbg !2376
  %25 = load i32, i32* %15, align 8, !dbg !2377, !tbaa !1345
  %26 = load i8*, i8** %18, align 8, !dbg !2378, !tbaa !1430
  %27 = load i8*, i8** %20, align 8, !dbg !2379, !tbaa !1433
  %28 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %24, i64 %23, i8* %0, i64 %1, i32 %25, i32 %14, i32* nonnull %17, i8* %26, i8* %27), !dbg !2380
  store i32 %8, i32* %7, align 4, !dbg !2381, !tbaa !715
  br i1 %11, label %29, label %30, !dbg !2382

; <label>:29:                                     ; preds = %4
  store i64 %22, i64* %2, align 8, !dbg !2383, !tbaa !1140
  br label %30, !dbg !2385

; <label>:30:                                     ; preds = %29, %4
  ret i8* %24, !dbg !2386
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @quotearg_free() local_unnamed_addr #7 !dbg !2387 {
  %1 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2391, !tbaa !627
  call void @llvm.dbg.value(metadata %struct.slotvec* %1, metadata !2389, metadata !DIExpression()), !dbg !2392
  call void @llvm.dbg.value(metadata i32 1, metadata !2390, metadata !DIExpression()), !dbg !2393
  %2 = load i32, i32* @nslots, align 4, !dbg !2394, !tbaa !715
  %3 = icmp sgt i32 %2, 1, !dbg !2397
  br i1 %3, label %4, label %12, !dbg !2398

; <label>:4:                                      ; preds = %0, %4
  %5 = phi i64 [ %8, %4 ], [ 1, %0 ]
  call void @llvm.dbg.value(metadata i64 %5, metadata !2390, metadata !DIExpression()), !dbg !2393
  %6 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 %5, i32 1, !dbg !2399
  %7 = load i8*, i8** %6, align 8, !dbg !2399, !tbaa !2400
  tail call void @free(i8* %7) #11, !dbg !2402
  %8 = add nuw nsw i64 %5, 1, !dbg !2403
  call void @llvm.dbg.value(metadata i32 undef, metadata !2390, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2393
  %9 = load i32, i32* @nslots, align 4, !dbg !2394, !tbaa !715
  %10 = sext i32 %9 to i64, !dbg !2397
  %11 = icmp slt i64 %8, %10, !dbg !2397
  br i1 %11, label %4, label %12, !dbg !2398, !llvm.loop !2404

; <label>:12:                                     ; preds = %4, %0
  %13 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %1, i64 0, i32 1, !dbg !2406
  %14 = load i8*, i8** %13, align 8, !dbg !2406, !tbaa !2400
  %15 = icmp eq i8* %14, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2408
  br i1 %15, label %17, label %16, !dbg !2409

; <label>:16:                                     ; preds = %12
  tail call void @free(i8* %14) #11, !dbg !2410
  store i64 256, i64* getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 0), align 8, !dbg !2412, !tbaa !2413
  store i8* getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), i8** getelementptr inbounds (%struct.slotvec, %struct.slotvec* @slotvec0, i64 0, i32 1), align 8, !dbg !2414, !tbaa !2400
  br label %17, !dbg !2415

; <label>:17:                                     ; preds = %12, %16
  %18 = icmp eq %struct.slotvec* %1, @slotvec0, !dbg !2416
  br i1 %18, label %21, label %19, !dbg !2418

; <label>:19:                                     ; preds = %17
  %20 = bitcast %struct.slotvec* %1 to i8*, !dbg !2419
  tail call void @free(i8* %20) #11, !dbg !2421
  store %struct.slotvec* @slotvec0, %struct.slotvec** @slotvec, align 8, !dbg !2422, !tbaa !627
  br label %21, !dbg !2423

; <label>:21:                                     ; preds = %17, %19
  store i32 1, i32* @nslots, align 4, !dbg !2424, !tbaa !715
  ret void, !dbg !2425
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n(i32, i8*) local_unnamed_addr #7 !dbg !2426 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2430, metadata !DIExpression()), !dbg !2432
  call void @llvm.dbg.value(metadata i8* %1, metadata !2431, metadata !DIExpression()), !dbg !2433
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2434
  ret i8* %3, !dbg !2435
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i8* @quotearg_n_options(i32, i8*, i64, %struct.quoting_options*) unnamed_addr #7 !dbg !2436 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2440, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.value(metadata i8* %1, metadata !2441, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.value(metadata i64 %2, metadata !2442, metadata !DIExpression()), !dbg !2457
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2443, metadata !DIExpression()), !dbg !2458
  %5 = tail call i32* @__errno_location() #17, !dbg !2459
  %6 = load i32, i32* %5, align 4, !dbg !2459, !tbaa !715
  call void @llvm.dbg.value(metadata i32 %6, metadata !2444, metadata !DIExpression()), !dbg !2460
  %7 = load %struct.slotvec*, %struct.slotvec** @slotvec, align 8, !dbg !2461, !tbaa !627
  call void @llvm.dbg.value(metadata %struct.slotvec* %7, metadata !2445, metadata !DIExpression()), !dbg !2462
  %8 = icmp slt i32 %0, 0, !dbg !2463
  br i1 %8, label %9, label %10, !dbg !2465

; <label>:9:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2466
  unreachable, !dbg !2466

; <label>:10:                                     ; preds = %4
  %11 = load i32, i32* @nslots, align 4, !dbg !2467, !tbaa !715
  %12 = icmp sgt i32 %11, %0, !dbg !2468
  br i1 %12, label %34, label %13, !dbg !2469

; <label>:13:                                     ; preds = %10
  %14 = icmp eq %struct.slotvec* %7, @slotvec0, !dbg !2470
  call void @llvm.dbg.value(metadata i32 2147483646, metadata !2449, metadata !DIExpression()), !dbg !2471
  %15 = icmp eq i32 %0, 2147483647, !dbg !2472
  br i1 %15, label %16, label %17, !dbg !2474

; <label>:16:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !2475
  unreachable, !dbg !2475

; <label>:17:                                     ; preds = %13
  %18 = select i1 %14, %struct.slotvec* null, %struct.slotvec* %7, !dbg !2476
  %19 = bitcast %struct.slotvec* %18 to i8*, !dbg !2476
  %20 = add nsw i32 %0, 1, !dbg !2477
  %21 = sext i32 %20 to i64, !dbg !2478
  %22 = shl nsw i64 %21, 4, !dbg !2479
  %23 = tail call i8* @xrealloc(i8* %19, i64 %22) #11, !dbg !2480
  %24 = bitcast i8* %23 to %struct.slotvec*, !dbg !2480
  call void @llvm.dbg.value(metadata %struct.slotvec* %24, metadata !2445, metadata !DIExpression()), !dbg !2462
  store i8* %23, i8** bitcast (%struct.slotvec** @slotvec to i8**), align 8, !dbg !2481, !tbaa !627
  br i1 %14, label %25, label %26, !dbg !2482

; <label>:25:                                     ; preds = %17
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.slotvec* @slotvec0 to i8*), i64 16, i1 false), !dbg !2483, !tbaa.struct !2485
  br label %26, !dbg !2486

; <label>:26:                                     ; preds = %25, %17
  %27 = load i32, i32* @nslots, align 4, !dbg !2487, !tbaa !715
  %28 = sext i32 %27 to i64, !dbg !2488
  %29 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %24, i64 %28, !dbg !2488
  %30 = bitcast %struct.slotvec* %29 to i8*, !dbg !2489
  %31 = sub nsw i32 %20, %27, !dbg !2490
  %32 = sext i32 %31 to i64, !dbg !2491
  %33 = shl nsw i64 %32, 4, !dbg !2492
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %30, i8 0, i64 %33, i1 false), !dbg !2489
  store i32 %20, i32* @nslots, align 4, !dbg !2493, !tbaa !715
  br label %34, !dbg !2494

; <label>:34:                                     ; preds = %10, %26
  %35 = phi %struct.slotvec* [ %24, %26 ], [ %7, %10 ], !dbg !2495
  call void @llvm.dbg.value(metadata %struct.slotvec* %35, metadata !2445, metadata !DIExpression()), !dbg !2462
  %36 = sext i32 %0 to i64, !dbg !2496
  %37 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 0, !dbg !2497
  %38 = load i64, i64* %37, align 8, !dbg !2497, !tbaa !2413
  call void @llvm.dbg.value(metadata i64 %38, metadata !2450, metadata !DIExpression()), !dbg !2498
  %39 = getelementptr inbounds %struct.slotvec, %struct.slotvec* %35, i64 %36, i32 1, !dbg !2499
  %40 = load i8*, i8** %39, align 8, !dbg !2499, !tbaa !2400
  call void @llvm.dbg.value(metadata i8* %40, metadata !2452, metadata !DIExpression()), !dbg !2500
  %41 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 1, !dbg !2501
  %42 = load i32, i32* %41, align 4, !dbg !2501, !tbaa !1404
  %43 = or i32 %42, 1, !dbg !2502
  call void @llvm.dbg.value(metadata i32 %43, metadata !2453, metadata !DIExpression()), !dbg !2503
  %44 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2504
  %45 = load i32, i32* %44, align 8, !dbg !2504, !tbaa !1345
  %46 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 0, !dbg !2505
  %47 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 3, !dbg !2506
  %48 = load i8*, i8** %47, align 8, !dbg !2506, !tbaa !1430
  %49 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 4, !dbg !2507
  %50 = load i8*, i8** %49, align 8, !dbg !2507, !tbaa !1433
  %51 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %40, i64 %38, i8* %1, i64 %2, i32 %45, i32 %43, i32* nonnull %46, i8* %48, i8* %50), !dbg !2508
  call void @llvm.dbg.value(metadata i64 %51, metadata !2454, metadata !DIExpression()), !dbg !2509
  %52 = icmp ugt i64 %38, %51, !dbg !2510
  br i1 %52, label %63, label %53, !dbg !2512

; <label>:53:                                     ; preds = %34
  %54 = add i64 %51, 1, !dbg !2513
  call void @llvm.dbg.value(metadata i64 %54, metadata !2450, metadata !DIExpression()), !dbg !2498
  store i64 %54, i64* %37, align 8, !dbg !2515, !tbaa !2413
  %55 = icmp eq i8* %40, getelementptr inbounds ([256 x i8], [256 x i8]* @slot0, i64 0, i64 0), !dbg !2516
  br i1 %55, label %57, label %56, !dbg !2518

; <label>:56:                                     ; preds = %53
  tail call void @free(i8* %40) #11, !dbg !2519
  br label %57, !dbg !2519

; <label>:57:                                     ; preds = %53, %56
  call void @llvm.dbg.value(metadata i64 %54, metadata !2341, metadata !DIExpression()) #11, !dbg !2520
  %58 = tail call noalias i8* @xmalloc(i64 %54) #11, !dbg !2522
  call void @llvm.dbg.value(metadata i8* %58, metadata !2452, metadata !DIExpression()), !dbg !2500
  store i8* %58, i8** %39, align 8, !dbg !2523, !tbaa !2400
  %59 = load i32, i32* %44, align 8, !dbg !2524, !tbaa !1345
  %60 = load i8*, i8** %47, align 8, !dbg !2525, !tbaa !1430
  %61 = load i8*, i8** %49, align 8, !dbg !2526, !tbaa !1433
  %62 = tail call fastcc i64 @quotearg_buffer_restyled(i8* %58, i64 %54, i8* %1, i64 %2, i32 %59, i32 %43, i32* nonnull %46, i8* %60, i8* %61), !dbg !2527
  br label %63, !dbg !2528

; <label>:63:                                     ; preds = %34, %57
  %64 = phi i8* [ %58, %57 ], [ %40, %34 ], !dbg !2529
  call void @llvm.dbg.value(metadata i8* %64, metadata !2452, metadata !DIExpression()), !dbg !2500
  store i32 %6, i32* %5, align 4, !dbg !2530, !tbaa !715
  ret i8* %64, !dbg !2531
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1) #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2532 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !2536, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8* %1, metadata !2537, metadata !DIExpression()), !dbg !2540
  call void @llvm.dbg.value(metadata i64 %2, metadata !2538, metadata !DIExpression()), !dbg !2541
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @default_quoting_options), !dbg !2542
  ret i8* %4, !dbg !2543
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg(i8*) local_unnamed_addr #7 !dbg !2544 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2548, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.value(metadata i32 0, metadata !2430, metadata !DIExpression()) #11, !dbg !2550
  call void @llvm.dbg.value(metadata i8* %0, metadata !2431, metadata !DIExpression()) #11, !dbg !2552
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2553
  ret i8* %2, !dbg !2554
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_mem(i8*, i64) local_unnamed_addr #7 !dbg !2555 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !2559, metadata !DIExpression()), !dbg !2561
  call void @llvm.dbg.value(metadata i64 %1, metadata !2560, metadata !DIExpression()), !dbg !2562
  call void @llvm.dbg.value(metadata i32 0, metadata !2536, metadata !DIExpression()) #11, !dbg !2563
  call void @llvm.dbg.value(metadata i8* %0, metadata !2537, metadata !DIExpression()) #11, !dbg !2565
  call void @llvm.dbg.value(metadata i64 %1, metadata !2538, metadata !DIExpression()) #11, !dbg !2566
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @default_quoting_options) #11, !dbg !2567
  ret i8* %3, !dbg !2568
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style(i32, i32, i8*) local_unnamed_addr #7 !dbg !2569 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2573, metadata !DIExpression()), !dbg !2577
  call void @llvm.dbg.value(metadata i32 %1, metadata !2574, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata i8* %2, metadata !2575, metadata !DIExpression()), !dbg !2579
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2580
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2580
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2576, metadata !DIExpression(DW_OP_deref)), !dbg !2581
  call void @llvm.dbg.value(metadata i32 %1, metadata !2582, metadata !DIExpression()) #11, !dbg !2588
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2590, !alias.scope !2591
  %6 = icmp eq i32 %1, 10, !dbg !2594
  br i1 %6, label %7, label %8, !dbg !2596

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2597, !noalias !2591
  unreachable, !dbg !2597

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2598
  store i32 %1, i32* %9, align 8, !dbg !2599, !tbaa !1345, !alias.scope !2591
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2576, metadata !DIExpression(DW_OP_deref)), !dbg !2581
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2587, metadata !DIExpression(DW_OP_deref)), !dbg !2590
  %10 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2600
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2601
  ret i8* %10, !dbg !2602
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_mem(i32, i32, i8*, i64) local_unnamed_addr #7 !dbg !2603 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2607, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.value(metadata i32 %1, metadata !2608, metadata !DIExpression()), !dbg !2613
  call void @llvm.dbg.value(metadata i8* %2, metadata !2609, metadata !DIExpression()), !dbg !2614
  call void @llvm.dbg.value(metadata i64 %3, metadata !2610, metadata !DIExpression()), !dbg !2615
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2616
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2616
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2611, metadata !DIExpression(DW_OP_deref)), !dbg !2617
  call void @llvm.dbg.value(metadata i32 %1, metadata !2582, metadata !DIExpression()) #11, !dbg !2618
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %6, i8 0, i64 56, i1 false) #11, !dbg !2620, !alias.scope !2621
  %7 = icmp eq i32 %1, 10, !dbg !2624
  br i1 %7, label %8, label %9, !dbg !2625

; <label>:8:                                      ; preds = %4
  tail call void @abort() #15, !dbg !2626, !noalias !2621
  unreachable, !dbg !2626

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2627
  store i32 %1, i32* %10, align 8, !dbg !2628, !tbaa !1345, !alias.scope !2621
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2611, metadata !DIExpression(DW_OP_deref)), !dbg !2617
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2587, metadata !DIExpression(DW_OP_deref)), !dbg !2620
  %11 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5), !dbg !2629
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2630
  ret i8* %11, !dbg !2631
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style(i32, i8*) local_unnamed_addr #7 !dbg !2632 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2636, metadata !DIExpression()), !dbg !2638
  call void @llvm.dbg.value(metadata i8* %1, metadata !2637, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.value(metadata i32 0, metadata !2573, metadata !DIExpression()) #11, !dbg !2640
  call void @llvm.dbg.value(metadata i32 %0, metadata !2574, metadata !DIExpression()) #11, !dbg !2642
  call void @llvm.dbg.value(metadata i8* %1, metadata !2575, metadata !DIExpression()) #11, !dbg !2643
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2644
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2644
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2576, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2645
  call void @llvm.dbg.value(metadata i32 %0, metadata !2582, metadata !DIExpression()) #11, !dbg !2646
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %4, i8 0, i64 56, i1 false) #11, !dbg !2648, !alias.scope !2649
  %5 = icmp eq i32 %0, 10, !dbg !2652
  br i1 %5, label %6, label %7, !dbg !2653

; <label>:6:                                      ; preds = %2
  tail call void @abort() #15, !dbg !2654, !noalias !2649
  unreachable, !dbg !2654

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 0, !dbg !2655
  store i32 %0, i32* %8, align 8, !dbg !2656, !tbaa !1345, !alias.scope !2649
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2576, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2645
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2587, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2648
  %9 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2657
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2658
  ret i8* %9, !dbg !2659
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_style_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !2660 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2664, metadata !DIExpression()), !dbg !2667
  call void @llvm.dbg.value(metadata i8* %1, metadata !2665, metadata !DIExpression()), !dbg !2668
  call void @llvm.dbg.value(metadata i64 %2, metadata !2666, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.value(metadata i32 0, metadata !2607, metadata !DIExpression()) #11, !dbg !2670
  call void @llvm.dbg.value(metadata i32 %0, metadata !2608, metadata !DIExpression()) #11, !dbg !2672
  call void @llvm.dbg.value(metadata i8* %1, metadata !2609, metadata !DIExpression()) #11, !dbg !2673
  call void @llvm.dbg.value(metadata i64 %2, metadata !2610, metadata !DIExpression()) #11, !dbg !2674
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2675
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2675
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2611, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2676
  call void @llvm.dbg.value(metadata i32 %0, metadata !2582, metadata !DIExpression()) #11, !dbg !2677
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %5, i8 0, i64 56, i1 false) #11, !dbg !2679, !alias.scope !2680
  %6 = icmp eq i32 %0, 10, !dbg !2683
  br i1 %6, label %7, label %8, !dbg !2684

; <label>:7:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2685, !noalias !2680
  unreachable, !dbg !2685

; <label>:8:                                      ; preds = %3
  %9 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2686
  store i32 %0, i32* %9, align 8, !dbg !2687, !tbaa !1345, !alias.scope !2680
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2611, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2676
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2587, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2679
  %10 = call fastcc i8* @quotearg_n_options(i32 0, i8* %1, i64 %2, %struct.quoting_options* nonnull %4) #11, !dbg !2688
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2689
  ret i8* %10, !dbg !2690
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char_mem(i8*, i64, i8 signext) local_unnamed_addr #7 !dbg !2691 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2695, metadata !DIExpression()), !dbg !2699
  call void @llvm.dbg.value(metadata i64 %1, metadata !2696, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata i8 %2, metadata !2697, metadata !DIExpression()), !dbg !2701
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2702
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2702
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2703, !tbaa.struct !2704
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2698, metadata !DIExpression(DW_OP_deref)), !dbg !2705
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1364, metadata !DIExpression()), !dbg !2706
  call void @llvm.dbg.value(metadata i8 %2, metadata !1365, metadata !DIExpression()), !dbg !2708
  call void @llvm.dbg.value(metadata i32 1, metadata !1366, metadata !DIExpression()), !dbg !2709
  call void @llvm.dbg.value(metadata i8 %2, metadata !1367, metadata !DIExpression()), !dbg !2710
  %6 = lshr i8 %2, 5, !dbg !2711
  %7 = zext i8 %6 to i64, !dbg !2711
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 %7, !dbg !2712
  call void @llvm.dbg.value(metadata i32* %8, metadata !1368, metadata !DIExpression()), !dbg !2713
  %9 = and i8 %2, 31, !dbg !2714
  %10 = zext i8 %9 to i32, !dbg !2714
  call void @llvm.dbg.value(metadata i32 %10, metadata !1370, metadata !DIExpression()), !dbg !2715
  %11 = load i32, i32* %8, align 4, !dbg !2716, !tbaa !715
  %12 = lshr i32 %11, %10, !dbg !2717
  %13 = and i32 %12, 1, !dbg !2718
  call void @llvm.dbg.value(metadata i32 %13, metadata !1371, metadata !DIExpression()), !dbg !2719
  %14 = xor i32 %13, 1, !dbg !2720
  %15 = shl i32 %14, %10, !dbg !2721
  %16 = xor i32 %15, %11, !dbg !2722
  store i32 %16, i32* %8, align 4, !dbg !2722, !tbaa !715
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2698, metadata !DIExpression(DW_OP_deref)), !dbg !2705
  %17 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %4), !dbg !2723
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2724
  ret i8* %17, !dbg !2725
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_char(i8*, i8 signext) local_unnamed_addr #7 !dbg !2726 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2730, metadata !DIExpression()), !dbg !2732
  call void @llvm.dbg.value(metadata i8 %1, metadata !2731, metadata !DIExpression()), !dbg !2733
  call void @llvm.dbg.value(metadata i8* %0, metadata !2695, metadata !DIExpression()) #11, !dbg !2734
  call void @llvm.dbg.value(metadata i64 -1, metadata !2696, metadata !DIExpression()) #11, !dbg !2736
  call void @llvm.dbg.value(metadata i8 %1, metadata !2697, metadata !DIExpression()) #11, !dbg !2737
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2738
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2738
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2739, !tbaa.struct !2704
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2698, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2740
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1364, metadata !DIExpression()) #11, !dbg !2741
  call void @llvm.dbg.value(metadata i8 %1, metadata !1365, metadata !DIExpression()) #11, !dbg !2743
  call void @llvm.dbg.value(metadata i32 1, metadata !1366, metadata !DIExpression()) #11, !dbg !2744
  call void @llvm.dbg.value(metadata i8 %1, metadata !1367, metadata !DIExpression()) #11, !dbg !2745
  %5 = lshr i8 %1, 5, !dbg !2746
  %6 = zext i8 %5 to i64, !dbg !2746
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 %6, !dbg !2747
  call void @llvm.dbg.value(metadata i32* %7, metadata !1368, metadata !DIExpression()) #11, !dbg !2748
  %8 = and i8 %1, 31, !dbg !2749
  %9 = zext i8 %8 to i32, !dbg !2749
  call void @llvm.dbg.value(metadata i32 %9, metadata !1370, metadata !DIExpression()) #11, !dbg !2750
  %10 = load i32, i32* %7, align 4, !dbg !2751, !tbaa !715
  %11 = lshr i32 %10, %9, !dbg !2752
  %12 = and i32 %11, 1, !dbg !2753
  call void @llvm.dbg.value(metadata i32 %12, metadata !1371, metadata !DIExpression()) #11, !dbg !2754
  %13 = xor i32 %12, 1, !dbg !2755
  %14 = shl i32 %13, %9, !dbg !2756
  %15 = xor i32 %14, %10, !dbg !2757
  store i32 %15, i32* %7, align 4, !dbg !2757, !tbaa !715
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2698, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2740
  %16 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %3) #11, !dbg !2758
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2759
  ret i8* %16, !dbg !2760
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon(i8*) local_unnamed_addr #7 !dbg !2761 {
  %2 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2763, metadata !DIExpression()), !dbg !2764
  call void @llvm.dbg.value(metadata i8* %0, metadata !2730, metadata !DIExpression()) #11, !dbg !2765
  call void @llvm.dbg.value(metadata i8 58, metadata !2731, metadata !DIExpression()) #11, !dbg !2767
  call void @llvm.dbg.value(metadata i8* %0, metadata !2695, metadata !DIExpression()) #11, !dbg !2768
  call void @llvm.dbg.value(metadata i64 -1, metadata !2696, metadata !DIExpression()) #11, !dbg !2770
  call void @llvm.dbg.value(metadata i8 58, metadata !2697, metadata !DIExpression()) #11, !dbg !2771
  %3 = bitcast %struct.quoting_options* %2 to i8*, !dbg !2772
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2772
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %3, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2773, !tbaa.struct !2704
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2698, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2774
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !1364, metadata !DIExpression()) #11, !dbg !2775
  call void @llvm.dbg.value(metadata i8 58, metadata !1365, metadata !DIExpression()) #11, !dbg !2777
  call void @llvm.dbg.value(metadata i32 1, metadata !1366, metadata !DIExpression()) #11, !dbg !2778
  call void @llvm.dbg.value(metadata i8 58, metadata !1367, metadata !DIExpression()) #11, !dbg !2779
  %4 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %2, i64 0, i32 2, i64 1, !dbg !2780
  call void @llvm.dbg.value(metadata i32* %4, metadata !1368, metadata !DIExpression()) #11, !dbg !2781
  call void @llvm.dbg.value(metadata i32 26, metadata !1370, metadata !DIExpression()) #11, !dbg !2782
  %5 = load i32, i32* %4, align 4, !dbg !2783, !tbaa !715
  %6 = or i32 %5, 67108864, !dbg !2784
  store i32 %6, i32* %4, align 4, !dbg !2784, !tbaa !715
  call void @llvm.dbg.value(metadata %struct.quoting_options* %2, metadata !2698, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2774
  %7 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull %2) #11, !dbg !2785
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %3) #11, !dbg !2786
  ret i8* %7, !dbg !2787
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_colon_mem(i8*, i64) local_unnamed_addr #7 !dbg !2788 {
  %3 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2790, metadata !DIExpression()), !dbg !2792
  call void @llvm.dbg.value(metadata i64 %1, metadata !2791, metadata !DIExpression()), !dbg !2793
  call void @llvm.dbg.value(metadata i8* %0, metadata !2695, metadata !DIExpression()) #11, !dbg !2794
  call void @llvm.dbg.value(metadata i64 %1, metadata !2696, metadata !DIExpression()) #11, !dbg !2796
  call void @llvm.dbg.value(metadata i8 58, metadata !2697, metadata !DIExpression()) #11, !dbg !2797
  %4 = bitcast %struct.quoting_options* %3 to i8*, !dbg !2798
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2798
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %4, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2799, !tbaa.struct !2704
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2698, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2800
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !1364, metadata !DIExpression()) #11, !dbg !2801
  call void @llvm.dbg.value(metadata i8 58, metadata !1365, metadata !DIExpression()) #11, !dbg !2803
  call void @llvm.dbg.value(metadata i32 1, metadata !1366, metadata !DIExpression()) #11, !dbg !2804
  call void @llvm.dbg.value(metadata i8 58, metadata !1367, metadata !DIExpression()) #11, !dbg !2805
  %5 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %3, i64 0, i32 2, i64 1, !dbg !2806
  call void @llvm.dbg.value(metadata i32* %5, metadata !1368, metadata !DIExpression()) #11, !dbg !2807
  call void @llvm.dbg.value(metadata i32 26, metadata !1370, metadata !DIExpression()) #11, !dbg !2808
  %6 = load i32, i32* %5, align 4, !dbg !2809, !tbaa !715
  %7 = or i32 %6, 67108864, !dbg !2810
  store i32 %7, i32* %5, align 4, !dbg !2810, !tbaa !715
  call void @llvm.dbg.value(metadata %struct.quoting_options* %3, metadata !2698, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2800
  %8 = call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull %3) #11, !dbg !2811
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %4) #11, !dbg !2812
  ret i8* %8, !dbg !2813
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_style_colon(i32, i32, i8*) local_unnamed_addr #7 !dbg !2814 {
  %4 = alloca %struct.quoting_options, align 8
  %5 = alloca [52 x i8], align 4
  call void @llvm.dbg.declare(metadata [52 x i8]* %5, metadata !2587, metadata !DIExpression(DW_OP_LLVM_fragment, 32, 416)), !dbg !2820
  call void @llvm.dbg.value(metadata i32 %0, metadata !2816, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.value(metadata i32 %1, metadata !2817, metadata !DIExpression()), !dbg !2823
  call void @llvm.dbg.value(metadata i8* %2, metadata !2818, metadata !DIExpression()), !dbg !2824
  %6 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2825
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2825
  %7 = getelementptr inbounds [52 x i8], [52 x i8]* %5, i64 0, i64 0, !dbg !2826
  call void @llvm.lifetime.start.p0i8(i64 52, i8* nonnull %7), !dbg !2826
  call void @llvm.dbg.value(metadata i32 %1, metadata !2582, metadata !DIExpression()) #11, !dbg !2827
  call void @llvm.dbg.value(metadata i32 0, metadata !2587, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2820
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %7, i8 0, i64 52, i1 false), !dbg !2820, !alias.scope !2828
  %8 = icmp eq i32 %1, 10, !dbg !2831
  br i1 %8, label %9, label %10, !dbg !2832

; <label>:9:                                      ; preds = %3
  tail call void @abort() #15, !dbg !2833, !noalias !2828
  unreachable, !dbg !2833

; <label>:10:                                     ; preds = %3
  call void @llvm.dbg.value(metadata i32 %1, metadata !2587, metadata !DIExpression(DW_OP_LLVM_fragment, 0, 32)), !dbg !2820
  %11 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2826
  store i32 %1, i32* %11, align 8, !dbg !2826
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 1, !dbg !2826
  %13 = bitcast i32* %12 to i8*, !dbg !2826
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %13, i8* nonnull align 4 %7, i64 52, i1 false), !dbg !2826
  call void @llvm.lifetime.end.p0i8(i64 52, i8* nonnull %7), !dbg !2826
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2819, metadata !DIExpression(DW_OP_deref)), !dbg !2834
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1364, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.value(metadata i8 58, metadata !1365, metadata !DIExpression()), !dbg !2837
  call void @llvm.dbg.value(metadata i32 1, metadata !1366, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.value(metadata i8 58, metadata !1367, metadata !DIExpression()), !dbg !2839
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 2, i64 1, !dbg !2840
  call void @llvm.dbg.value(metadata i32* %14, metadata !1368, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.value(metadata i32 26, metadata !1370, metadata !DIExpression()), !dbg !2842
  %15 = load i32, i32* %14, align 4, !dbg !2843, !tbaa !715
  %16 = or i32 %15, 67108864, !dbg !2844
  store i32 %16, i32* %14, align 4, !dbg !2844, !tbaa !715
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2819, metadata !DIExpression(DW_OP_deref)), !dbg !2834
  %17 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4), !dbg !2845
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2846
  ret i8* %17, !dbg !2847
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom(i32, i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2848 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2852, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata i8* %1, metadata !2853, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.value(metadata i8* %2, metadata !2854, metadata !DIExpression()), !dbg !2858
  call void @llvm.dbg.value(metadata i8* %3, metadata !2855, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.value(metadata i32 %0, metadata !2860, metadata !DIExpression()) #11, !dbg !2870
  call void @llvm.dbg.value(metadata i8* %1, metadata !2865, metadata !DIExpression()) #11, !dbg !2872
  call void @llvm.dbg.value(metadata i8* %2, metadata !2866, metadata !DIExpression()) #11, !dbg !2873
  call void @llvm.dbg.value(metadata i8* %3, metadata !2867, metadata !DIExpression()) #11, !dbg !2874
  call void @llvm.dbg.value(metadata i64 -1, metadata !2868, metadata !DIExpression()) #11, !dbg !2875
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2876
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2876
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2877, !tbaa.struct !2704
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2869, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2878
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1412, metadata !DIExpression()) #11, !dbg !2879
  call void @llvm.dbg.value(metadata i8* %1, metadata !1413, metadata !DIExpression()) #11, !dbg !2881
  call void @llvm.dbg.value(metadata i8* %2, metadata !1414, metadata !DIExpression()) #11, !dbg !2882
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1412, metadata !DIExpression()) #11, !dbg !2879
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2883
  store i32 10, i32* %7, align 8, !dbg !2884, !tbaa !1345
  %8 = icmp ne i8* %1, null, !dbg !2885
  %9 = icmp ne i8* %2, null, !dbg !2886
  %10 = and i1 %8, %9, !dbg !2887
  br i1 %10, label %12, label %11, !dbg !2887

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2888
  unreachable, !dbg !2888

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2889
  store i8* %1, i8** %13, align 8, !dbg !2890, !tbaa !1430
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2891
  store i8* %2, i8** %14, align 8, !dbg !2892, !tbaa !1433
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2869, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2878
  %15 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 -1, %struct.quoting_options* nonnull %5) #11, !dbg !2893
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2894
  ret i8* %15, !dbg !2895
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_n_custom_mem(i32, i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2861 {
  %6 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i32 %0, metadata !2860, metadata !DIExpression()), !dbg !2896
  call void @llvm.dbg.value(metadata i8* %1, metadata !2865, metadata !DIExpression()), !dbg !2897
  call void @llvm.dbg.value(metadata i8* %2, metadata !2866, metadata !DIExpression()), !dbg !2898
  call void @llvm.dbg.value(metadata i8* %3, metadata !2867, metadata !DIExpression()), !dbg !2899
  call void @llvm.dbg.value(metadata i64 %4, metadata !2868, metadata !DIExpression()), !dbg !2900
  %7 = bitcast %struct.quoting_options* %6 to i8*, !dbg !2901
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2901
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %7, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false), !dbg !2902, !tbaa.struct !2704
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2869, metadata !DIExpression(DW_OP_deref)), !dbg !2903
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1412, metadata !DIExpression()) #11, !dbg !2904
  call void @llvm.dbg.value(metadata i8* %1, metadata !1413, metadata !DIExpression()) #11, !dbg !2906
  call void @llvm.dbg.value(metadata i8* %2, metadata !1414, metadata !DIExpression()) #11, !dbg !2907
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !1412, metadata !DIExpression()) #11, !dbg !2904
  %8 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 0, !dbg !2908
  store i32 10, i32* %8, align 8, !dbg !2909, !tbaa !1345
  %9 = icmp ne i8* %1, null, !dbg !2910
  %10 = icmp ne i8* %2, null, !dbg !2911
  %11 = and i1 %9, %10, !dbg !2912
  br i1 %11, label %13, label %12, !dbg !2912

; <label>:12:                                     ; preds = %5
  tail call void @abort() #15, !dbg !2913
  unreachable, !dbg !2913

; <label>:13:                                     ; preds = %5
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 3, !dbg !2914
  store i8* %1, i8** %14, align 8, !dbg !2915, !tbaa !1430
  %15 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %6, i64 0, i32 4, !dbg !2916
  store i8* %2, i8** %15, align 8, !dbg !2917, !tbaa !1433
  call void @llvm.dbg.value(metadata %struct.quoting_options* %6, metadata !2869, metadata !DIExpression(DW_OP_deref)), !dbg !2903
  %16 = call fastcc i8* @quotearg_n_options(i32 %0, i8* %3, i64 %4, %struct.quoting_options* nonnull %6), !dbg !2918
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %7) #11, !dbg !2919
  ret i8* %16, !dbg !2920
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom(i8*, i8*, i8*) local_unnamed_addr #7 !dbg !2921 {
  %4 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2925, metadata !DIExpression()), !dbg !2928
  call void @llvm.dbg.value(metadata i8* %1, metadata !2926, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.value(metadata i8* %2, metadata !2927, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.value(metadata i32 0, metadata !2852, metadata !DIExpression()) #11, !dbg !2931
  call void @llvm.dbg.value(metadata i8* %0, metadata !2853, metadata !DIExpression()) #11, !dbg !2933
  call void @llvm.dbg.value(metadata i8* %1, metadata !2854, metadata !DIExpression()) #11, !dbg !2934
  call void @llvm.dbg.value(metadata i8* %2, metadata !2855, metadata !DIExpression()) #11, !dbg !2935
  call void @llvm.dbg.value(metadata i32 0, metadata !2860, metadata !DIExpression()) #11, !dbg !2936
  call void @llvm.dbg.value(metadata i8* %0, metadata !2865, metadata !DIExpression()) #11, !dbg !2938
  call void @llvm.dbg.value(metadata i8* %1, metadata !2866, metadata !DIExpression()) #11, !dbg !2939
  call void @llvm.dbg.value(metadata i8* %2, metadata !2867, metadata !DIExpression()) #11, !dbg !2940
  call void @llvm.dbg.value(metadata i64 -1, metadata !2868, metadata !DIExpression()) #11, !dbg !2941
  %5 = bitcast %struct.quoting_options* %4 to i8*, !dbg !2942
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2942
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2943, !tbaa.struct !2704
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2869, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2944
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1412, metadata !DIExpression()) #11, !dbg !2945
  call void @llvm.dbg.value(metadata i8* %0, metadata !1413, metadata !DIExpression()) #11, !dbg !2947
  call void @llvm.dbg.value(metadata i8* %1, metadata !1414, metadata !DIExpression()) #11, !dbg !2948
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !1412, metadata !DIExpression()) #11, !dbg !2945
  %6 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 0, !dbg !2949
  store i32 10, i32* %6, align 8, !dbg !2950, !tbaa !1345
  %7 = icmp ne i8* %0, null, !dbg !2951
  %8 = icmp ne i8* %1, null, !dbg !2952
  %9 = and i1 %7, %8, !dbg !2953
  br i1 %9, label %11, label %10, !dbg !2953

; <label>:10:                                     ; preds = %3
  tail call void @abort() #15, !dbg !2954
  unreachable, !dbg !2954

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 3, !dbg !2955
  store i8* %0, i8** %12, align 8, !dbg !2956, !tbaa !1430
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %4, i64 0, i32 4, !dbg !2957
  store i8* %1, i8** %13, align 8, !dbg !2958, !tbaa !1433
  call void @llvm.dbg.value(metadata %struct.quoting_options* %4, metadata !2869, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2944
  %14 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 -1, %struct.quoting_options* nonnull %4) #11, !dbg !2959
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %5) #11, !dbg !2960
  ret i8* %14, !dbg !2961
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quotearg_custom_mem(i8*, i8*, i8*, i64) local_unnamed_addr #7 !dbg !2962 {
  %5 = alloca %struct.quoting_options, align 8
  call void @llvm.dbg.value(metadata i8* %0, metadata !2966, metadata !DIExpression()), !dbg !2970
  call void @llvm.dbg.value(metadata i8* %1, metadata !2967, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.value(metadata i8* %2, metadata !2968, metadata !DIExpression()), !dbg !2972
  call void @llvm.dbg.value(metadata i64 %3, metadata !2969, metadata !DIExpression()), !dbg !2973
  call void @llvm.dbg.value(metadata i32 0, metadata !2860, metadata !DIExpression()) #11, !dbg !2974
  call void @llvm.dbg.value(metadata i8* %0, metadata !2865, metadata !DIExpression()) #11, !dbg !2976
  call void @llvm.dbg.value(metadata i8* %1, metadata !2866, metadata !DIExpression()) #11, !dbg !2977
  call void @llvm.dbg.value(metadata i8* %2, metadata !2867, metadata !DIExpression()) #11, !dbg !2978
  call void @llvm.dbg.value(metadata i64 %3, metadata !2868, metadata !DIExpression()) #11, !dbg !2979
  %6 = bitcast %struct.quoting_options* %5 to i8*, !dbg !2980
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2980
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* align 8 bitcast (%struct.quoting_options* @default_quoting_options to i8*), i64 56, i1 false) #11, !dbg !2981, !tbaa.struct !2704
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2869, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2982
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1412, metadata !DIExpression()) #11, !dbg !2983
  call void @llvm.dbg.value(metadata i8* %0, metadata !1413, metadata !DIExpression()) #11, !dbg !2985
  call void @llvm.dbg.value(metadata i8* %1, metadata !1414, metadata !DIExpression()) #11, !dbg !2986
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !1412, metadata !DIExpression()) #11, !dbg !2983
  %7 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 0, !dbg !2987
  store i32 10, i32* %7, align 8, !dbg !2988, !tbaa !1345
  %8 = icmp ne i8* %0, null, !dbg !2989
  %9 = icmp ne i8* %1, null, !dbg !2990
  %10 = and i1 %8, %9, !dbg !2991
  br i1 %10, label %12, label %11, !dbg !2991

; <label>:11:                                     ; preds = %4
  tail call void @abort() #15, !dbg !2992
  unreachable, !dbg !2992

; <label>:12:                                     ; preds = %4
  %13 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 3, !dbg !2993
  store i8* %0, i8** %13, align 8, !dbg !2994, !tbaa !1430
  %14 = getelementptr inbounds %struct.quoting_options, %struct.quoting_options* %5, i64 0, i32 4, !dbg !2995
  store i8* %1, i8** %14, align 8, !dbg !2996, !tbaa !1433
  call void @llvm.dbg.value(metadata %struct.quoting_options* %5, metadata !2869, metadata !DIExpression(DW_OP_deref)) #11, !dbg !2982
  %15 = call fastcc i8* @quotearg_n_options(i32 0, i8* %2, i64 %3, %struct.quoting_options* nonnull %5) #11, !dbg !2997
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %6) #11, !dbg !2998
  ret i8* %15, !dbg !2999
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n_mem(i32, i8*, i64) local_unnamed_addr #7 !dbg !3000 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3004, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.value(metadata i8* %1, metadata !3005, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.value(metadata i64 %2, metadata !3006, metadata !DIExpression()), !dbg !3009
  %4 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 %2, %struct.quoting_options* nonnull @quote_quoting_options), !dbg !3010
  ret i8* %4, !dbg !3011
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_mem(i8*, i64) local_unnamed_addr #7 !dbg !3012 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3016, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.value(metadata i64 %1, metadata !3017, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression()) #11, !dbg !3020
  call void @llvm.dbg.value(metadata i8* %0, metadata !3005, metadata !DIExpression()) #11, !dbg !3022
  call void @llvm.dbg.value(metadata i64 %1, metadata !3006, metadata !DIExpression()) #11, !dbg !3023
  %3 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 %1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3024
  ret i8* %3, !dbg !3025
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote_n(i32, i8*) local_unnamed_addr #7 !dbg !3026 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3030, metadata !DIExpression()), !dbg !3032
  call void @llvm.dbg.value(metadata i8* %1, metadata !3031, metadata !DIExpression()), !dbg !3033
  call void @llvm.dbg.value(metadata i32 %0, metadata !3004, metadata !DIExpression()) #11, !dbg !3034
  call void @llvm.dbg.value(metadata i8* %1, metadata !3005, metadata !DIExpression()) #11, !dbg !3036
  call void @llvm.dbg.value(metadata i64 -1, metadata !3006, metadata !DIExpression()) #11, !dbg !3037
  %3 = tail call fastcc i8* @quotearg_n_options(i32 %0, i8* %1, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3038
  ret i8* %3, !dbg !3039
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @quote(i8*) local_unnamed_addr #7 !dbg !3040 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3044, metadata !DIExpression()), !dbg !3045
  call void @llvm.dbg.value(metadata i32 0, metadata !3030, metadata !DIExpression()) #11, !dbg !3046
  call void @llvm.dbg.value(metadata i8* %0, metadata !3031, metadata !DIExpression()) #11, !dbg !3048
  call void @llvm.dbg.value(metadata i32 0, metadata !3004, metadata !DIExpression()) #11, !dbg !3049
  call void @llvm.dbg.value(metadata i8* %0, metadata !3005, metadata !DIExpression()) #11, !dbg !3051
  call void @llvm.dbg.value(metadata i64 -1, metadata !3006, metadata !DIExpression()) #11, !dbg !3052
  %2 = tail call fastcc i8* @quotearg_n_options(i32 0, i8* %0, i64 -1, %struct.quoting_options* nonnull @quote_quoting_options) #11, !dbg !3053
  ret i8* %2, !dbg !3054
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local %struct.timespec* @get_root_dev_ino(%struct.timespec*) local_unnamed_addr #7 !dbg !3055 {
  %2 = alloca %struct.stat, align 16
  call void @llvm.dbg.value(metadata %struct.timespec* %0, metadata !3065, metadata !DIExpression()), !dbg !3088
  %3 = bitcast %struct.stat* %2 to i8*, !dbg !3089
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %3) #11, !dbg !3089
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !3066, metadata !DIExpression(DW_OP_deref)), !dbg !3090
  call void @llvm.dbg.value(metadata i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0), metadata !3091, metadata !DIExpression()) #11, !dbg !3098
  call void @llvm.dbg.value(metadata %struct.stat* %2, metadata !3097, metadata !DIExpression()) #11, !dbg !3098
  %4 = call i32 @__lxstat(i32 1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.88, i64 0, i64 0), %struct.stat* nonnull %2) #11, !dbg !3101
  %5 = icmp eq i32 %4, 0, !dbg !3102
  br i1 %5, label %6, label %11, !dbg !3103

; <label>:6:                                      ; preds = %1
  %7 = bitcast %struct.stat* %2 to <2 x i64>*, !dbg !3104
  %8 = load <2 x i64>, <2 x i64>* %7, align 16, !dbg !3104, !tbaa !1140
  %9 = shufflevector <2 x i64> %8, <2 x i64> undef, <2 x i32> <i32 1, i32 0>, !dbg !3104
  %10 = bitcast %struct.timespec* %0 to <2 x i64>*, !dbg !3105
  store <2 x i64> %9, <2 x i64>* %10, align 8, !dbg !3105, !tbaa !1140
  br label %11, !dbg !3106

; <label>:11:                                     ; preds = %1, %6
  %12 = phi %struct.timespec* [ %0, %6 ], [ null, %1 ], !dbg !3107
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %3) #11, !dbg !3108
  ret %struct.timespec* %12, !dbg !3108
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_arn(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly, i64) local_unnamed_addr #7 !dbg !3109 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3166, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.value(metadata i8* %1, metadata !3167, metadata !DIExpression()), !dbg !3173
  call void @llvm.dbg.value(metadata i8* %2, metadata !3168, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.value(metadata i8* %3, metadata !3169, metadata !DIExpression()), !dbg !3175
  call void @llvm.dbg.value(metadata i8** %4, metadata !3170, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.value(metadata i64 %5, metadata !3171, metadata !DIExpression()), !dbg !3177
  %7 = icmp eq i8* %1, null, !dbg !3178
  br i1 %7, label %10, label %8, !dbg !3180

; <label>:8:                                      ; preds = %6
  %9 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.89, i64 0, i64 0), i8* nonnull %1, i8* %2, i8* %3) #11, !dbg !3181
  br label %12, !dbg !3181

; <label>:10:                                     ; preds = %6
  %11 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1.90, i64 0, i64 0), i8* %2, i8* %3) #11, !dbg !3182
  br label %12

; <label>:12:                                     ; preds = %10, %8
  %13 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2.91, i64 0, i64 0), i32 5) #11, !dbg !3183
  %14 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @version_etc_copyright, i64 0, i64 0), i8* %13, i32 2018) #11, !dbg !3183
  %15 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([204 x i8], [204 x i8]* @.str.3.92, i64 0, i64 0), i32 5) #11, !dbg !3184
  %16 = tail call i32 @fputs_unlocked(i8* %15, %struct._IO_FILE* %0), !dbg !3184
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
  ], !dbg !3185

; <label>:17:                                     ; preds = %12
  tail call void @abort() #15, !dbg !3186
  unreachable, !dbg !3186

; <label>:18:                                     ; preds = %12
  %19 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4.93, i64 0, i64 0), i32 5) #11, !dbg !3188
  %20 = load i8*, i8** %4, align 8, !dbg !3188, !tbaa !627
  %21 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %19, i8* %20) #11, !dbg !3188
  br label %146, !dbg !3189

; <label>:22:                                     ; preds = %12
  %23 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5.94, i64 0, i64 0), i32 5) #11, !dbg !3190
  %24 = load i8*, i8** %4, align 8, !dbg !3190, !tbaa !627
  %25 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3190
  %26 = load i8*, i8** %25, align 8, !dbg !3190, !tbaa !627
  %27 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %23, i8* %24, i8* %26) #11, !dbg !3190
  br label %146, !dbg !3191

; <label>:28:                                     ; preds = %12
  %29 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6.95, i64 0, i64 0), i32 5) #11, !dbg !3192
  %30 = load i8*, i8** %4, align 8, !dbg !3192, !tbaa !627
  %31 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3192
  %32 = load i8*, i8** %31, align 8, !dbg !3192, !tbaa !627
  %33 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3192
  %34 = load i8*, i8** %33, align 8, !dbg !3192, !tbaa !627
  %35 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %29, i8* %30, i8* %32, i8* %34) #11, !dbg !3192
  br label %146, !dbg !3193

; <label>:36:                                     ; preds = %12
  %37 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7.96, i64 0, i64 0), i32 5) #11, !dbg !3194
  %38 = load i8*, i8** %4, align 8, !dbg !3194, !tbaa !627
  %39 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3194
  %40 = load i8*, i8** %39, align 8, !dbg !3194, !tbaa !627
  %41 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3194
  %42 = load i8*, i8** %41, align 8, !dbg !3194, !tbaa !627
  %43 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3194
  %44 = load i8*, i8** %43, align 8, !dbg !3194, !tbaa !627
  %45 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %37, i8* %38, i8* %40, i8* %42, i8* %44) #11, !dbg !3194
  br label %146, !dbg !3195

; <label>:46:                                     ; preds = %12
  %47 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8.97, i64 0, i64 0), i32 5) #11, !dbg !3196
  %48 = load i8*, i8** %4, align 8, !dbg !3196, !tbaa !627
  %49 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3196
  %50 = load i8*, i8** %49, align 8, !dbg !3196, !tbaa !627
  %51 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3196
  %52 = load i8*, i8** %51, align 8, !dbg !3196, !tbaa !627
  %53 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3196
  %54 = load i8*, i8** %53, align 8, !dbg !3196, !tbaa !627
  %55 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3196
  %56 = load i8*, i8** %55, align 8, !dbg !3196, !tbaa !627
  %57 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %47, i8* %48, i8* %50, i8* %52, i8* %54, i8* %56) #11, !dbg !3196
  br label %146, !dbg !3197

; <label>:58:                                     ; preds = %12
  %59 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9.98, i64 0, i64 0), i32 5) #11, !dbg !3198
  %60 = load i8*, i8** %4, align 8, !dbg !3198, !tbaa !627
  %61 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3198
  %62 = load i8*, i8** %61, align 8, !dbg !3198, !tbaa !627
  %63 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3198
  %64 = load i8*, i8** %63, align 8, !dbg !3198, !tbaa !627
  %65 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3198
  %66 = load i8*, i8** %65, align 8, !dbg !3198, !tbaa !627
  %67 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3198
  %68 = load i8*, i8** %67, align 8, !dbg !3198, !tbaa !627
  %69 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3198
  %70 = load i8*, i8** %69, align 8, !dbg !3198, !tbaa !627
  %71 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %59, i8* %60, i8* %62, i8* %64, i8* %66, i8* %68, i8* %70) #11, !dbg !3198
  br label %146, !dbg !3199

; <label>:72:                                     ; preds = %12
  %73 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.10.99, i64 0, i64 0), i32 5) #11, !dbg !3200
  %74 = load i8*, i8** %4, align 8, !dbg !3200, !tbaa !627
  %75 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3200
  %76 = load i8*, i8** %75, align 8, !dbg !3200, !tbaa !627
  %77 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3200
  %78 = load i8*, i8** %77, align 8, !dbg !3200, !tbaa !627
  %79 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3200
  %80 = load i8*, i8** %79, align 8, !dbg !3200, !tbaa !627
  %81 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3200
  %82 = load i8*, i8** %81, align 8, !dbg !3200, !tbaa !627
  %83 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3200
  %84 = load i8*, i8** %83, align 8, !dbg !3200, !tbaa !627
  %85 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3200
  %86 = load i8*, i8** %85, align 8, !dbg !3200, !tbaa !627
  %87 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %73, i8* %74, i8* %76, i8* %78, i8* %80, i8* %82, i8* %84, i8* %86) #11, !dbg !3200
  br label %146, !dbg !3201

; <label>:88:                                     ; preds = %12
  %89 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.11.100, i64 0, i64 0), i32 5) #11, !dbg !3202
  %90 = load i8*, i8** %4, align 8, !dbg !3202, !tbaa !627
  %91 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3202
  %92 = load i8*, i8** %91, align 8, !dbg !3202, !tbaa !627
  %93 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3202
  %94 = load i8*, i8** %93, align 8, !dbg !3202, !tbaa !627
  %95 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3202
  %96 = load i8*, i8** %95, align 8, !dbg !3202, !tbaa !627
  %97 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3202
  %98 = load i8*, i8** %97, align 8, !dbg !3202, !tbaa !627
  %99 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3202
  %100 = load i8*, i8** %99, align 8, !dbg !3202, !tbaa !627
  %101 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3202
  %102 = load i8*, i8** %101, align 8, !dbg !3202, !tbaa !627
  %103 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3202
  %104 = load i8*, i8** %103, align 8, !dbg !3202, !tbaa !627
  %105 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %89, i8* %90, i8* %92, i8* %94, i8* %96, i8* %98, i8* %100, i8* %102, i8* %104) #11, !dbg !3202
  br label %146, !dbg !3203

; <label>:106:                                    ; preds = %12
  %107 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12.101, i64 0, i64 0), i32 5) #11, !dbg !3204
  %108 = load i8*, i8** %4, align 8, !dbg !3204, !tbaa !627
  %109 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3204
  %110 = load i8*, i8** %109, align 8, !dbg !3204, !tbaa !627
  %111 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3204
  %112 = load i8*, i8** %111, align 8, !dbg !3204, !tbaa !627
  %113 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3204
  %114 = load i8*, i8** %113, align 8, !dbg !3204, !tbaa !627
  %115 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3204
  %116 = load i8*, i8** %115, align 8, !dbg !3204, !tbaa !627
  %117 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3204
  %118 = load i8*, i8** %117, align 8, !dbg !3204, !tbaa !627
  %119 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3204
  %120 = load i8*, i8** %119, align 8, !dbg !3204, !tbaa !627
  %121 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3204
  %122 = load i8*, i8** %121, align 8, !dbg !3204, !tbaa !627
  %123 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3204
  %124 = load i8*, i8** %123, align 8, !dbg !3204, !tbaa !627
  %125 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %107, i8* %108, i8* %110, i8* %112, i8* %114, i8* %116, i8* %118, i8* %120, i8* %122, i8* %124) #11, !dbg !3204
  br label %146, !dbg !3205

; <label>:126:                                    ; preds = %12
  %127 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.13.102, i64 0, i64 0), i32 5) #11, !dbg !3206
  %128 = load i8*, i8** %4, align 8, !dbg !3206, !tbaa !627
  %129 = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !3206
  %130 = load i8*, i8** %129, align 8, !dbg !3206, !tbaa !627
  %131 = getelementptr inbounds i8*, i8** %4, i64 2, !dbg !3206
  %132 = load i8*, i8** %131, align 8, !dbg !3206, !tbaa !627
  %133 = getelementptr inbounds i8*, i8** %4, i64 3, !dbg !3206
  %134 = load i8*, i8** %133, align 8, !dbg !3206, !tbaa !627
  %135 = getelementptr inbounds i8*, i8** %4, i64 4, !dbg !3206
  %136 = load i8*, i8** %135, align 8, !dbg !3206, !tbaa !627
  %137 = getelementptr inbounds i8*, i8** %4, i64 5, !dbg !3206
  %138 = load i8*, i8** %137, align 8, !dbg !3206, !tbaa !627
  %139 = getelementptr inbounds i8*, i8** %4, i64 6, !dbg !3206
  %140 = load i8*, i8** %139, align 8, !dbg !3206, !tbaa !627
  %141 = getelementptr inbounds i8*, i8** %4, i64 7, !dbg !3206
  %142 = load i8*, i8** %141, align 8, !dbg !3206, !tbaa !627
  %143 = getelementptr inbounds i8*, i8** %4, i64 8, !dbg !3206
  %144 = load i8*, i8** %143, align 8, !dbg !3206, !tbaa !627
  %145 = tail call i32 (%struct._IO_FILE*, i32, i8*, ...) @__fprintf_chk(%struct._IO_FILE* %0, i32 1, i8* %127, i8* %128, i8* %130, i8* %132, i8* %134, i8* %136, i8* %138, i8* %140, i8* %142, i8* %144) #11, !dbg !3206
  br label %146, !dbg !3207

; <label>:146:                                    ; preds = %126, %106, %88, %72, %58, %46, %36, %28, %22, %18
  ret void, !dbg !3208
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_ar(%struct._IO_FILE*, i8*, i8*, i8*, i8** readonly) local_unnamed_addr #7 !dbg !3209 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3213, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8* %1, metadata !3214, metadata !DIExpression()), !dbg !3220
  call void @llvm.dbg.value(metadata i8* %2, metadata !3215, metadata !DIExpression()), !dbg !3221
  call void @llvm.dbg.value(metadata i8* %3, metadata !3216, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.value(metadata i8** %4, metadata !3217, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i64 0, metadata !3218, metadata !DIExpression()), !dbg !3224
  br label %6, !dbg !3225

; <label>:6:                                      ; preds = %6, %5
  %7 = phi i64 [ 0, %5 ], [ %11, %6 ], !dbg !3227
  call void @llvm.dbg.value(metadata i64 %7, metadata !3218, metadata !DIExpression()), !dbg !3224
  %8 = getelementptr inbounds i8*, i8** %4, i64 %7, !dbg !3229
  %9 = load i8*, i8** %8, align 8, !dbg !3229, !tbaa !627
  %10 = icmp eq i8* %9, null, !dbg !3230
  %11 = add i64 %7, 1, !dbg !3231
  call void @llvm.dbg.value(metadata i64 %11, metadata !3218, metadata !DIExpression()), !dbg !3224
  br i1 %10, label %12, label %6, !dbg !3230, !llvm.loop !3232

; <label>:12:                                     ; preds = %6
  call void @llvm.dbg.value(metadata i64 %7, metadata !3218, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 %7, metadata !3218, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 %7, metadata !3218, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 %7, metadata !3218, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 %7, metadata !3218, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.value(metadata i64 %7, metadata !3218, metadata !DIExpression()), !dbg !3224
  tail call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %4, i64 %7), !dbg !3234
  ret void, !dbg !3235
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc_va(%struct._IO_FILE*, i8*, i8*, i8*, %struct.__va_list_tag* nocapture) local_unnamed_addr #7 !dbg !3236 {
  %6 = alloca [10 x i8*], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3247, metadata !DIExpression()), !dbg !3255
  call void @llvm.dbg.value(metadata i8* %1, metadata !3248, metadata !DIExpression()), !dbg !3256
  call void @llvm.dbg.value(metadata i8* %2, metadata !3249, metadata !DIExpression()), !dbg !3257
  call void @llvm.dbg.value(metadata i8* %3, metadata !3250, metadata !DIExpression()), !dbg !3258
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %4, metadata !3251, metadata !DIExpression()), !dbg !3259
  %7 = bitcast [10 x i8*]* %6 to i8*, !dbg !3260
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3260
  call void @llvm.dbg.declare(metadata [10 x i8*]* %6, metadata !3253, metadata !DIExpression()), !dbg !3261
  call void @llvm.dbg.value(metadata i64 0, metadata !3252, metadata !DIExpression()), !dbg !3262
  %8 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 0
  %9 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 3
  %10 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %4, i64 0, i32 2
  call void @llvm.dbg.value(metadata i64 0, metadata !3252, metadata !DIExpression()), !dbg !3262
  %11 = load i32, i32* %8, align 8, !dbg !3263
  %12 = icmp ult i32 %11, 41, !dbg !3263
  br i1 %12, label %13, label %18, !dbg !3263

; <label>:13:                                     ; preds = %5
  %14 = load i8*, i8** %9, align 8, !dbg !3263
  %15 = sext i32 %11 to i64, !dbg !3263
  %16 = getelementptr i8, i8* %14, i64 %15, !dbg !3263
  %17 = add i32 %11, 8, !dbg !3263
  store i32 %17, i32* %8, align 8, !dbg !3263
  br label %21, !dbg !3263

; <label>:18:                                     ; preds = %5
  %19 = load i8*, i8** %10, align 8, !dbg !3263
  %20 = getelementptr i8, i8* %19, i64 8, !dbg !3263
  store i8* %20, i8** %10, align 8, !dbg !3263
  br label %21, !dbg !3263

; <label>:21:                                     ; preds = %18, %13
  %22 = phi i32 [ %17, %13 ], [ %11, %18 ]
  %23 = phi i8* [ %16, %13 ], [ %19, %18 ]
  %24 = bitcast i8* %23 to i8**, !dbg !3263
  %25 = load i8*, i8** %24, align 8, !dbg !3263
  %26 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 0, !dbg !3266
  store i8* %25, i8** %26, align 16, !dbg !3267, !tbaa !627
  %27 = icmp eq i8* %25, null, !dbg !3268
  br i1 %27, label %30, label %28, !dbg !3269

; <label>:28:                                     ; preds = %21
  call void @llvm.dbg.value(metadata i64 1, metadata !3252, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 1, metadata !3252, metadata !DIExpression()), !dbg !3262
  %29 = icmp ult i32 %22, 41, !dbg !3263
  br i1 %29, label %35, label %32, !dbg !3263

; <label>:30:                                     ; preds = %135, %128, %121, %114, %108, %91, %74, %57, %40, %21
  %31 = phi i64 [ 0, %21 ], [ 1, %40 ], [ 2, %57 ], [ 3, %74 ], [ 4, %91 ], [ 5, %108 ], [ 6, %114 ], [ 7, %121 ], [ 8, %128 ], [ %142, %135 ], !dbg !3270
  call void @llvm.dbg.value(metadata i64 %31, metadata !3252, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 %31, metadata !3252, metadata !DIExpression()), !dbg !3262
  call void @version_etc_arn(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, i8** nonnull %26, i64 %31), !dbg !3271
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %7) #11, !dbg !3272
  ret void, !dbg !3272

; <label>:32:                                     ; preds = %28
  %33 = load i8*, i8** %10, align 8, !dbg !3263
  %34 = getelementptr i8, i8* %33, i64 8, !dbg !3263
  store i8* %34, i8** %10, align 8, !dbg !3263
  br label %40, !dbg !3263

; <label>:35:                                     ; preds = %28
  %36 = load i8*, i8** %9, align 8, !dbg !3263
  %37 = sext i32 %22 to i64, !dbg !3263
  %38 = getelementptr i8, i8* %36, i64 %37, !dbg !3263
  %39 = add i32 %22, 8, !dbg !3263
  store i32 %39, i32* %8, align 8, !dbg !3263
  br label %40, !dbg !3263

; <label>:40:                                     ; preds = %35, %32
  %41 = phi i32 [ %39, %35 ], [ %22, %32 ]
  %42 = phi i8* [ %38, %35 ], [ %33, %32 ]
  %43 = bitcast i8* %42 to i8**, !dbg !3263
  %44 = load i8*, i8** %43, align 8, !dbg !3263
  %45 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 1, !dbg !3266
  store i8* %44, i8** %45, align 8, !dbg !3267, !tbaa !627
  %46 = icmp eq i8* %44, null, !dbg !3268
  br i1 %46, label %30, label %47, !dbg !3269

; <label>:47:                                     ; preds = %40
  call void @llvm.dbg.value(metadata i64 2, metadata !3252, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 2, metadata !3252, metadata !DIExpression()), !dbg !3262
  %48 = icmp ult i32 %41, 41, !dbg !3263
  br i1 %48, label %52, label %49, !dbg !3263

; <label>:49:                                     ; preds = %47
  %50 = load i8*, i8** %10, align 8, !dbg !3263
  %51 = getelementptr i8, i8* %50, i64 8, !dbg !3263
  store i8* %51, i8** %10, align 8, !dbg !3263
  br label %57, !dbg !3263

; <label>:52:                                     ; preds = %47
  %53 = load i8*, i8** %9, align 8, !dbg !3263
  %54 = sext i32 %41 to i64, !dbg !3263
  %55 = getelementptr i8, i8* %53, i64 %54, !dbg !3263
  %56 = add i32 %41, 8, !dbg !3263
  store i32 %56, i32* %8, align 8, !dbg !3263
  br label %57, !dbg !3263

; <label>:57:                                     ; preds = %52, %49
  %58 = phi i32 [ %56, %52 ], [ %41, %49 ]
  %59 = phi i8* [ %55, %52 ], [ %50, %49 ]
  %60 = bitcast i8* %59 to i8**, !dbg !3263
  %61 = load i8*, i8** %60, align 8, !dbg !3263
  %62 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 2, !dbg !3266
  store i8* %61, i8** %62, align 16, !dbg !3267, !tbaa !627
  %63 = icmp eq i8* %61, null, !dbg !3268
  br i1 %63, label %30, label %64, !dbg !3269

; <label>:64:                                     ; preds = %57
  call void @llvm.dbg.value(metadata i64 3, metadata !3252, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 3, metadata !3252, metadata !DIExpression()), !dbg !3262
  %65 = icmp ult i32 %58, 41, !dbg !3263
  br i1 %65, label %69, label %66, !dbg !3263

; <label>:66:                                     ; preds = %64
  %67 = load i8*, i8** %10, align 8, !dbg !3263
  %68 = getelementptr i8, i8* %67, i64 8, !dbg !3263
  store i8* %68, i8** %10, align 8, !dbg !3263
  br label %74, !dbg !3263

; <label>:69:                                     ; preds = %64
  %70 = load i8*, i8** %9, align 8, !dbg !3263
  %71 = sext i32 %58 to i64, !dbg !3263
  %72 = getelementptr i8, i8* %70, i64 %71, !dbg !3263
  %73 = add i32 %58, 8, !dbg !3263
  store i32 %73, i32* %8, align 8, !dbg !3263
  br label %74, !dbg !3263

; <label>:74:                                     ; preds = %69, %66
  %75 = phi i32 [ %73, %69 ], [ %58, %66 ]
  %76 = phi i8* [ %72, %69 ], [ %67, %66 ]
  %77 = bitcast i8* %76 to i8**, !dbg !3263
  %78 = load i8*, i8** %77, align 8, !dbg !3263
  %79 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 3, !dbg !3266
  store i8* %78, i8** %79, align 8, !dbg !3267, !tbaa !627
  %80 = icmp eq i8* %78, null, !dbg !3268
  br i1 %80, label %30, label %81, !dbg !3269

; <label>:81:                                     ; preds = %74
  call void @llvm.dbg.value(metadata i64 4, metadata !3252, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 4, metadata !3252, metadata !DIExpression()), !dbg !3262
  %82 = icmp ult i32 %75, 41, !dbg !3263
  br i1 %82, label %86, label %83, !dbg !3263

; <label>:83:                                     ; preds = %81
  %84 = load i8*, i8** %10, align 8, !dbg !3263
  %85 = getelementptr i8, i8* %84, i64 8, !dbg !3263
  store i8* %85, i8** %10, align 8, !dbg !3263
  br label %91, !dbg !3263

; <label>:86:                                     ; preds = %81
  %87 = load i8*, i8** %9, align 8, !dbg !3263
  %88 = sext i32 %75 to i64, !dbg !3263
  %89 = getelementptr i8, i8* %87, i64 %88, !dbg !3263
  %90 = add i32 %75, 8, !dbg !3263
  store i32 %90, i32* %8, align 8, !dbg !3263
  br label %91, !dbg !3263

; <label>:91:                                     ; preds = %86, %83
  %92 = phi i32 [ %90, %86 ], [ %75, %83 ]
  %93 = phi i8* [ %89, %86 ], [ %84, %83 ]
  %94 = bitcast i8* %93 to i8**, !dbg !3263
  %95 = load i8*, i8** %94, align 8, !dbg !3263
  %96 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 4, !dbg !3266
  store i8* %95, i8** %96, align 16, !dbg !3267, !tbaa !627
  %97 = icmp eq i8* %95, null, !dbg !3268
  br i1 %97, label %30, label %98, !dbg !3269

; <label>:98:                                     ; preds = %91
  call void @llvm.dbg.value(metadata i64 5, metadata !3252, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 5, metadata !3252, metadata !DIExpression()), !dbg !3262
  %99 = icmp ult i32 %92, 41, !dbg !3263
  br i1 %99, label %103, label %100, !dbg !3263

; <label>:100:                                    ; preds = %98
  %101 = load i8*, i8** %10, align 8, !dbg !3263
  %102 = getelementptr i8, i8* %101, i64 8, !dbg !3263
  store i8* %102, i8** %10, align 8, !dbg !3263
  br label %108, !dbg !3263

; <label>:103:                                    ; preds = %98
  %104 = load i8*, i8** %9, align 8, !dbg !3263
  %105 = sext i32 %92 to i64, !dbg !3263
  %106 = getelementptr i8, i8* %104, i64 %105, !dbg !3263
  %107 = add i32 %92, 8, !dbg !3263
  store i32 %107, i32* %8, align 8, !dbg !3263
  br label %108, !dbg !3263

; <label>:108:                                    ; preds = %103, %100
  %109 = phi i8* [ %106, %103 ], [ %101, %100 ]
  %110 = bitcast i8* %109 to i8**, !dbg !3263
  %111 = load i8*, i8** %110, align 8, !dbg !3263
  %112 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 5, !dbg !3266
  store i8* %111, i8** %112, align 8, !dbg !3267, !tbaa !627
  %113 = icmp eq i8* %111, null, !dbg !3268
  br i1 %113, label %30, label %114, !dbg !3269

; <label>:114:                                    ; preds = %108
  call void @llvm.dbg.value(metadata i64 6, metadata !3252, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 6, metadata !3252, metadata !DIExpression()), !dbg !3262
  %115 = load i8*, i8** %10, align 8, !dbg !3263
  %116 = getelementptr i8, i8* %115, i64 8, !dbg !3263
  store i8* %116, i8** %10, align 8, !dbg !3263
  %117 = bitcast i8* %115 to i8**, !dbg !3263
  %118 = load i8*, i8** %117, align 8, !dbg !3263
  %119 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 6, !dbg !3266
  store i8* %118, i8** %119, align 16, !dbg !3267, !tbaa !627
  %120 = icmp eq i8* %118, null, !dbg !3268
  br i1 %120, label %30, label %121, !dbg !3269

; <label>:121:                                    ; preds = %114
  call void @llvm.dbg.value(metadata i64 7, metadata !3252, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 7, metadata !3252, metadata !DIExpression()), !dbg !3262
  %122 = load i8*, i8** %10, align 8, !dbg !3263
  %123 = getelementptr i8, i8* %122, i64 8, !dbg !3263
  store i8* %123, i8** %10, align 8, !dbg !3263
  %124 = bitcast i8* %122 to i8**, !dbg !3263
  %125 = load i8*, i8** %124, align 8, !dbg !3263
  %126 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 7, !dbg !3266
  store i8* %125, i8** %126, align 8, !dbg !3267, !tbaa !627
  %127 = icmp eq i8* %125, null, !dbg !3268
  br i1 %127, label %30, label %128, !dbg !3269

; <label>:128:                                    ; preds = %121
  call void @llvm.dbg.value(metadata i64 8, metadata !3252, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 8, metadata !3252, metadata !DIExpression()), !dbg !3262
  %129 = load i8*, i8** %10, align 8, !dbg !3263
  %130 = getelementptr i8, i8* %129, i64 8, !dbg !3263
  store i8* %130, i8** %10, align 8, !dbg !3263
  %131 = bitcast i8* %129 to i8**, !dbg !3263
  %132 = load i8*, i8** %131, align 8, !dbg !3263
  %133 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 8, !dbg !3266
  store i8* %132, i8** %133, align 16, !dbg !3267, !tbaa !627
  %134 = icmp eq i8* %132, null, !dbg !3268
  br i1 %134, label %30, label %135, !dbg !3269

; <label>:135:                                    ; preds = %128
  call void @llvm.dbg.value(metadata i64 9, metadata !3252, metadata !DIExpression()), !dbg !3262
  call void @llvm.dbg.value(metadata i64 9, metadata !3252, metadata !DIExpression()), !dbg !3262
  %136 = load i8*, i8** %10, align 8, !dbg !3263
  %137 = getelementptr i8, i8* %136, i64 8, !dbg !3263
  store i8* %137, i8** %10, align 8, !dbg !3263
  %138 = bitcast i8* %136 to i8**, !dbg !3263
  %139 = load i8*, i8** %138, align 8, !dbg !3263
  %140 = getelementptr inbounds [10 x i8*], [10 x i8*]* %6, i64 0, i64 9, !dbg !3266
  store i8* %139, i8** %140, align 8, !dbg !3267, !tbaa !627
  %141 = icmp eq i8* %139, null, !dbg !3268
  %142 = select i1 %141, i64 9, i64 10, !dbg !3269
  br label %30, !dbg !3269
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @version_etc(%struct._IO_FILE*, i8*, i8*, i8*, ...) local_unnamed_addr #7 !dbg !3273 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3277, metadata !DIExpression()), !dbg !3288
  call void @llvm.dbg.value(metadata i8* %1, metadata !3278, metadata !DIExpression()), !dbg !3289
  call void @llvm.dbg.value(metadata i8* %2, metadata !3279, metadata !DIExpression()), !dbg !3290
  call void @llvm.dbg.value(metadata i8* %3, metadata !3280, metadata !DIExpression()), !dbg !3291
  %6 = bitcast [1 x %struct.__va_list_tag]* %5 to i8*, !dbg !3292
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3292
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %5, metadata !3281, metadata !DIExpression()), !dbg !3293
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %5, i64 0, i64 0, !dbg !3294
  call void @llvm.va_start(i8* nonnull %6), !dbg !3294
  call void @version_etc_va(%struct._IO_FILE* %0, i8* %1, i8* %2, i8* %3, %struct.__va_list_tag* nonnull %7), !dbg !3295
  call void @llvm.va_end(i8* nonnull %6), !dbg !3296
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #11, !dbg !3297
  ret void, !dbg !3297
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #11

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #11

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @emit_bug_reporting_address() local_unnamed_addr #7 !dbg !3298 {
  %1 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14.105, i64 0, i64 0), i32 5) #11, !dbg !3299
  %2 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15.106, i64 0, i64 0)) #11, !dbg !3299
  %3 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16.107, i64 0, i64 0), i32 5) #11, !dbg !3300
  %4 = tail call i32 (i32, i8*, ...) @__printf_chk(i32 1, i8* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17.108, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18.109, i64 0, i64 0)) #11, !dbg !3300
  %5 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.19.110, i64 0, i64 0), i32 5) #11, !dbg !3301
  %6 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !3301, !tbaa !627
  %7 = tail call i32 @fputs_unlocked(i8* %5, %struct._IO_FILE* %6), !dbg !3301
  ret void, !dbg !3302
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnmalloc(i64, i64) local_unnamed_addr #13 !dbg !3303 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3305, metadata !DIExpression()), !dbg !3307
  call void @llvm.dbg.value(metadata i64 %1, metadata !3306, metadata !DIExpression()), !dbg !3308
  %3 = udiv i64 9223372036854775807, %1, !dbg !3309
  %4 = icmp ult i64 %3, %0, !dbg !3309
  br i1 %4, label %5, label %6, !dbg !3311

; <label>:5:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3312
  unreachable, !dbg !3312

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3313
  call void @llvm.dbg.value(metadata i64 %7, metadata !3314, metadata !DIExpression()) #11, !dbg !3321
  %8 = tail call noalias i8* @malloc(i64 %7) #11, !dbg !3323
  call void @llvm.dbg.value(metadata i8* %8, metadata !3320, metadata !DIExpression()) #11, !dbg !3324
  %9 = icmp eq i8* %8, null, !dbg !3325
  %10 = icmp ne i64 %7, 0, !dbg !3327
  %11 = and i1 %10, %9, !dbg !3328
  br i1 %11, label %12, label %13, !dbg !3328

; <label>:12:                                     ; preds = %6
  tail call void @xalloc_die() #15, !dbg !3329
  unreachable, !dbg !3329

; <label>:13:                                     ; preds = %6
  ret i8* %8, !dbg !3330
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmalloc(i64) local_unnamed_addr #7 !dbg !3315 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3314, metadata !DIExpression()), !dbg !3331
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3332
  call void @llvm.dbg.value(metadata i8* %2, metadata !3320, metadata !DIExpression()), !dbg !3333
  %3 = icmp eq i8* %2, null, !dbg !3334
  %4 = icmp ne i64 %0, 0, !dbg !3335
  %5 = and i1 %4, %3, !dbg !3336
  br i1 %5, label %6, label %7, !dbg !3336

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3337
  unreachable, !dbg !3337

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3338
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xnrealloc(i8*, i64, i64) local_unnamed_addr #13 !dbg !3339 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3343, metadata !DIExpression()), !dbg !3346
  call void @llvm.dbg.value(metadata i64 %1, metadata !3344, metadata !DIExpression()), !dbg !3347
  call void @llvm.dbg.value(metadata i64 %2, metadata !3345, metadata !DIExpression()), !dbg !3348
  %4 = udiv i64 9223372036854775807, %2, !dbg !3349
  %5 = icmp ult i64 %4, %1, !dbg !3349
  br i1 %5, label %6, label %7, !dbg !3351

; <label>:6:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3352
  unreachable, !dbg !3352

; <label>:7:                                      ; preds = %3
  %8 = mul i64 %2, %1, !dbg !3353
  call void @llvm.dbg.value(metadata i8* %0, metadata !3354, metadata !DIExpression()) #11, !dbg !3360
  call void @llvm.dbg.value(metadata i64 %8, metadata !3359, metadata !DIExpression()) #11, !dbg !3362
  %9 = icmp eq i64 %8, 0, !dbg !3363
  %10 = icmp ne i8* %0, null, !dbg !3365
  %11 = and i1 %10, %9, !dbg !3366
  br i1 %11, label %12, label %13, !dbg !3366

; <label>:12:                                     ; preds = %7
  tail call void @free(i8* nonnull %0) #11, !dbg !3367
  br label %19, !dbg !3369

; <label>:13:                                     ; preds = %7
  %14 = tail call i8* @realloc(i8* %0, i64 %8) #11, !dbg !3370
  call void @llvm.dbg.value(metadata i8* %14, metadata !3354, metadata !DIExpression()) #11, !dbg !3360
  %15 = icmp eq i8* %14, null, !dbg !3371
  %16 = icmp ne i64 %8, 0, !dbg !3373
  %17 = and i1 %16, %15, !dbg !3374
  br i1 %17, label %18, label %19, !dbg !3374

; <label>:18:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3375
  unreachable, !dbg !3375

; <label>:19:                                     ; preds = %12, %13
  %20 = phi i8* [ null, %12 ], [ %14, %13 ], !dbg !3376
  ret i8* %20, !dbg !3377
}

; Function Attrs: nounwind
declare noalias i8* @realloc(i8* nocapture, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xrealloc(i8*, i64) local_unnamed_addr #7 !dbg !3355 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3354, metadata !DIExpression()), !dbg !3378
  call void @llvm.dbg.value(metadata i64 %1, metadata !3359, metadata !DIExpression()), !dbg !3379
  %3 = icmp eq i64 %1, 0, !dbg !3380
  %4 = icmp ne i8* %0, null, !dbg !3381
  %5 = and i1 %4, %3, !dbg !3382
  br i1 %5, label %6, label %7, !dbg !3382

; <label>:6:                                      ; preds = %2
  tail call void @free(i8* nonnull %0) #11, !dbg !3383
  br label %13, !dbg !3384

; <label>:7:                                      ; preds = %2
  %8 = tail call i8* @realloc(i8* %0, i64 %1) #11, !dbg !3385
  call void @llvm.dbg.value(metadata i8* %8, metadata !3354, metadata !DIExpression()), !dbg !3378
  %9 = icmp eq i8* %8, null, !dbg !3386
  %10 = icmp ne i64 %1, 0, !dbg !3387
  %11 = and i1 %10, %9, !dbg !3388
  br i1 %11, label %12, label %13, !dbg !3388

; <label>:12:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3389
  unreachable, !dbg !3389

; <label>:13:                                     ; preds = %7, %6
  %14 = phi i8* [ null, %6 ], [ %8, %7 ], !dbg !3390
  ret i8* %14, !dbg !3391
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @x2nrealloc(i8*, i64* nocapture, i64) local_unnamed_addr #13 !dbg !169 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !174, metadata !DIExpression()), !dbg !3392
  call void @llvm.dbg.value(metadata i64* %1, metadata !175, metadata !DIExpression()), !dbg !3393
  call void @llvm.dbg.value(metadata i64 %2, metadata !176, metadata !DIExpression()), !dbg !3394
  %4 = load i64, i64* %1, align 8, !dbg !3395, !tbaa !1140
  call void @llvm.dbg.value(metadata i64 %4, metadata !177, metadata !DIExpression()), !dbg !3396
  %5 = icmp eq i8* %0, null, !dbg !3397
  br i1 %5, label %6, label %20, !dbg !3399

; <label>:6:                                      ; preds = %3
  %7 = icmp eq i64 %4, 0, !dbg !3400
  br i1 %7, label %8, label %13, !dbg !3403

; <label>:8:                                      ; preds = %6
  %9 = udiv i64 128, %2, !dbg !3404
  call void @llvm.dbg.value(metadata i64 %9, metadata !177, metadata !DIExpression()), !dbg !3396
  %10 = icmp ugt i64 %2, 128, !dbg !3406
  %11 = zext i1 %10 to i64, !dbg !3406
  %12 = add nuw nsw i64 %9, %11, !dbg !3407
  call void @llvm.dbg.value(metadata i64 %12, metadata !177, metadata !DIExpression()), !dbg !3396
  br label %13, !dbg !3408

; <label>:13:                                     ; preds = %6, %8
  %14 = phi i64 [ %4, %6 ], [ %12, %8 ], !dbg !3409
  call void @llvm.dbg.value(metadata i64 %14, metadata !177, metadata !DIExpression()), !dbg !3396
  %15 = udiv i64 9223372036854775807, %2, !dbg !3410
  %16 = icmp ult i64 %15, %14, !dbg !3410
  br i1 %16, label %19, label %17, !dbg !3412

; <label>:17:                                     ; preds = %13
  call void @llvm.dbg.value(metadata i64 %27, metadata !177, metadata !DIExpression()), !dbg !3396
  store i64 %14, i64* %1, align 8, !dbg !3413, !tbaa !1140
  %18 = mul i64 %14, %2, !dbg !3414
  call void @llvm.dbg.value(metadata i8* %0, metadata !3354, metadata !DIExpression()) #11, !dbg !3415
  call void @llvm.dbg.value(metadata i64 %28, metadata !3359, metadata !DIExpression()) #11, !dbg !3417
  br label %31, !dbg !3418

; <label>:19:                                     ; preds = %13
  tail call void @xalloc_die() #15, !dbg !3419
  unreachable, !dbg !3419

; <label>:20:                                     ; preds = %3
  %21 = udiv i64 6148914691236517204, %2, !dbg !3420
  %22 = icmp ugt i64 %21, %4, !dbg !3423
  br i1 %22, label %24, label %23, !dbg !3424

; <label>:23:                                     ; preds = %20
  tail call void @xalloc_die() #15, !dbg !3425
  unreachable, !dbg !3425

; <label>:24:                                     ; preds = %20
  %25 = lshr i64 %4, 1, !dbg !3426
  %26 = add i64 %4, 1, !dbg !3427
  %27 = add i64 %26, %25, !dbg !3428
  call void @llvm.dbg.value(metadata i64 %27, metadata !177, metadata !DIExpression()), !dbg !3396
  call void @llvm.dbg.value(metadata i64 %27, metadata !177, metadata !DIExpression()), !dbg !3396
  store i64 %27, i64* %1, align 8, !dbg !3413, !tbaa !1140
  %28 = mul i64 %27, %2, !dbg !3414
  call void @llvm.dbg.value(metadata i8* %0, metadata !3354, metadata !DIExpression()) #11, !dbg !3415
  call void @llvm.dbg.value(metadata i64 %28, metadata !3359, metadata !DIExpression()) #11, !dbg !3417
  %29 = icmp eq i64 %28, 0, !dbg !3429
  br i1 %29, label %30, label %31, !dbg !3418

; <label>:30:                                     ; preds = %24
  tail call void @free(i8* nonnull %0) #11, !dbg !3430
  br label %38, !dbg !3431

; <label>:31:                                     ; preds = %17, %24
  %32 = phi i64 [ %18, %17 ], [ %28, %24 ]
  %33 = tail call i8* @realloc(i8* %0, i64 %32) #11, !dbg !3432
  call void @llvm.dbg.value(metadata i8* %33, metadata !3354, metadata !DIExpression()) #11, !dbg !3415
  %34 = icmp eq i8* %33, null, !dbg !3433
  %35 = icmp ne i64 %32, 0, !dbg !3434
  %36 = and i1 %35, %34, !dbg !3435
  br i1 %36, label %37, label %38, !dbg !3435

; <label>:37:                                     ; preds = %31
  tail call void @xalloc_die() #15, !dbg !3436
  unreachable, !dbg !3436

; <label>:38:                                     ; preds = %30, %31
  %39 = phi i8* [ null, %30 ], [ %33, %31 ], !dbg !3437
  ret i8* %39, !dbg !3438
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define dso_local noalias i8* @xcharalloc(i64) local_unnamed_addr #13 !dbg !3439 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3441, metadata !DIExpression()), !dbg !3442
  call void @llvm.dbg.value(metadata i64 %0, metadata !3314, metadata !DIExpression()) #11, !dbg !3443
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3445
  call void @llvm.dbg.value(metadata i8* %2, metadata !3320, metadata !DIExpression()) #11, !dbg !3446
  %3 = icmp eq i8* %2, null, !dbg !3447
  %4 = icmp ne i64 %0, 0, !dbg !3448
  %5 = and i1 %4, %3, !dbg !3449
  br i1 %5, label %6, label %7, !dbg !3449

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3450
  unreachable, !dbg !3450

; <label>:7:                                      ; preds = %1
  ret i8* %2, !dbg !3451
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @x2realloc(i8*, i64* nocapture) local_unnamed_addr #7 !dbg !3452 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3456, metadata !DIExpression()), !dbg !3458
  call void @llvm.dbg.value(metadata i64* %1, metadata !3457, metadata !DIExpression()), !dbg !3459
  call void @llvm.dbg.value(metadata i8* %0, metadata !174, metadata !DIExpression()) #11, !dbg !3460
  call void @llvm.dbg.value(metadata i64* %1, metadata !175, metadata !DIExpression()) #11, !dbg !3462
  call void @llvm.dbg.value(metadata i64 1, metadata !176, metadata !DIExpression()) #11, !dbg !3463
  %3 = load i64, i64* %1, align 8, !dbg !3464, !tbaa !1140
  call void @llvm.dbg.value(metadata i64 %3, metadata !177, metadata !DIExpression()) #11, !dbg !3465
  %4 = icmp eq i8* %0, null, !dbg !3466
  br i1 %4, label %5, label %12, !dbg !3467

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i64 %3, 0, !dbg !3468
  br i1 %6, label %9, label %7, !dbg !3469

; <label>:7:                                      ; preds = %5
  call void @llvm.dbg.value(metadata i64 %3, metadata !177, metadata !DIExpression()) #11, !dbg !3465
  %8 = icmp slt i64 %3, 0, !dbg !3470
  br i1 %8, label %11, label %9, !dbg !3471

; <label>:9:                                      ; preds = %5, %7
  %10 = phi i64 [ %3, %7 ], [ 128, %5 ]
  call void @llvm.dbg.value(metadata i64 %18, metadata !177, metadata !DIExpression()) #11, !dbg !3465
  store i64 %10, i64* %1, align 8, !dbg !3472, !tbaa !1140
  call void @llvm.dbg.value(metadata i8* %0, metadata !3354, metadata !DIExpression()) #11, !dbg !3473
  call void @llvm.dbg.value(metadata i64 %18, metadata !3359, metadata !DIExpression()) #11, !dbg !3475
  br label %21, !dbg !3476

; <label>:11:                                     ; preds = %7
  tail call void @xalloc_die() #15, !dbg !3477
  unreachable, !dbg !3477

; <label>:12:                                     ; preds = %2
  %13 = icmp ult i64 %3, 6148914691236517204, !dbg !3478
  br i1 %13, label %15, label %14, !dbg !3479

; <label>:14:                                     ; preds = %12
  tail call void @xalloc_die() #15, !dbg !3480
  unreachable, !dbg !3480

; <label>:15:                                     ; preds = %12
  %16 = lshr i64 %3, 1, !dbg !3481
  %17 = add i64 %3, 1, !dbg !3482
  %18 = add i64 %17, %16, !dbg !3483
  call void @llvm.dbg.value(metadata i64 %18, metadata !177, metadata !DIExpression()) #11, !dbg !3465
  call void @llvm.dbg.value(metadata i64 %18, metadata !177, metadata !DIExpression()) #11, !dbg !3465
  store i64 %18, i64* %1, align 8, !dbg !3472, !tbaa !1140
  call void @llvm.dbg.value(metadata i8* %0, metadata !3354, metadata !DIExpression()) #11, !dbg !3473
  call void @llvm.dbg.value(metadata i64 %18, metadata !3359, metadata !DIExpression()) #11, !dbg !3475
  %19 = icmp eq i64 %18, 0, !dbg !3484
  br i1 %19, label %20, label %21, !dbg !3476

; <label>:20:                                     ; preds = %15
  tail call void @free(i8* nonnull %0) #11, !dbg !3485
  br label %28, !dbg !3486

; <label>:21:                                     ; preds = %15, %9
  %22 = phi i64 [ %10, %9 ], [ %18, %15 ]
  %23 = tail call i8* @realloc(i8* %0, i64 %22) #11, !dbg !3487
  call void @llvm.dbg.value(metadata i8* %23, metadata !3354, metadata !DIExpression()) #11, !dbg !3473
  %24 = icmp eq i8* %23, null, !dbg !3488
  %25 = icmp ne i64 %22, 0, !dbg !3489
  %26 = and i1 %25, %24, !dbg !3490
  br i1 %26, label %27, label %28, !dbg !3490

; <label>:27:                                     ; preds = %21
  tail call void @xalloc_die() #15, !dbg !3491
  unreachable, !dbg !3491

; <label>:28:                                     ; preds = %20, %21
  %29 = phi i8* [ null, %20 ], [ %23, %21 ], !dbg !3492
  ret i8* %29, !dbg !3493
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xzalloc(i64) local_unnamed_addr #7 !dbg !3494 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3496, metadata !DIExpression()), !dbg !3497
  call void @llvm.dbg.value(metadata i64 %0, metadata !3314, metadata !DIExpression()) #11, !dbg !3498
  %2 = tail call noalias i8* @malloc(i64 %0) #11, !dbg !3500
  call void @llvm.dbg.value(metadata i8* %2, metadata !3320, metadata !DIExpression()) #11, !dbg !3501
  %3 = icmp eq i8* %2, null, !dbg !3502
  %4 = icmp ne i64 %0, 0, !dbg !3503
  %5 = and i1 %4, %3, !dbg !3504
  br i1 %5, label %6, label %7, !dbg !3504

; <label>:6:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3505
  unreachable, !dbg !3505

; <label>:7:                                      ; preds = %1
  tail call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 %0, i1 false), !dbg !3506
  ret i8* %2, !dbg !3507
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xcalloc(i64, i64) local_unnamed_addr #7 !dbg !3508 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3510, metadata !DIExpression()), !dbg !3513
  call void @llvm.dbg.value(metadata i64 %1, metadata !3511, metadata !DIExpression()), !dbg !3514
  %3 = udiv i64 9223372036854775807, %1, !dbg !3515
  %4 = icmp ult i64 %3, %0, !dbg !3515
  br i1 %4, label %8, label %5, !dbg !3517

; <label>:5:                                      ; preds = %2
  %6 = tail call i8* @rpl_calloc(i64 %0, i64 %1) #11, !dbg !3518
  call void @llvm.dbg.value(metadata i8* %6, metadata !3512, metadata !DIExpression()), !dbg !3519
  %7 = icmp eq i8* %6, null, !dbg !3520
  br i1 %7, label %8, label %9, !dbg !3521

; <label>:8:                                      ; preds = %5, %2
  tail call void @xalloc_die() #15, !dbg !3522
  unreachable, !dbg !3522

; <label>:9:                                      ; preds = %5
  ret i8* %6, !dbg !3523
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xmemdup(i8* nocapture readonly, i64) local_unnamed_addr #7 !dbg !3524 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3530, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.value(metadata i64 %1, metadata !3531, metadata !DIExpression()), !dbg !3533
  call void @llvm.dbg.value(metadata i64 %1, metadata !3314, metadata !DIExpression()) #11, !dbg !3534
  %3 = tail call noalias i8* @malloc(i64 %1) #11, !dbg !3536
  call void @llvm.dbg.value(metadata i8* %3, metadata !3320, metadata !DIExpression()) #11, !dbg !3537
  %4 = icmp eq i8* %3, null, !dbg !3538
  %5 = icmp ne i64 %1, 0, !dbg !3539
  %6 = and i1 %5, %4, !dbg !3540
  br i1 %6, label %7, label %8, !dbg !3540

; <label>:7:                                      ; preds = %2
  tail call void @xalloc_die() #15, !dbg !3541
  unreachable, !dbg !3541

; <label>:8:                                      ; preds = %2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 %0, i64 %1, i1 false), !dbg !3542
  ret i8* %3, !dbg !3543
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @xstrdup(i8* nocapture readonly) local_unnamed_addr #7 !dbg !3544 {
  call void @llvm.dbg.value(metadata i8* %0, metadata !3546, metadata !DIExpression()), !dbg !3547
  %2 = tail call i64 @strlen(i8* %0) #14, !dbg !3548
  %3 = add i64 %2, 1, !dbg !3549
  call void @llvm.dbg.value(metadata i8* %0, metadata !3530, metadata !DIExpression()) #11, !dbg !3550
  call void @llvm.dbg.value(metadata i64 %3, metadata !3531, metadata !DIExpression()) #11, !dbg !3552
  call void @llvm.dbg.value(metadata i64 %3, metadata !3314, metadata !DIExpression()) #11, !dbg !3553
  %4 = tail call noalias i8* @malloc(i64 %3) #11, !dbg !3555
  call void @llvm.dbg.value(metadata i8* %4, metadata !3320, metadata !DIExpression()) #11, !dbg !3556
  %5 = icmp eq i8* %4, null, !dbg !3557
  %6 = icmp ne i64 %3, 0, !dbg !3558
  %7 = and i1 %6, %5, !dbg !3559
  br i1 %7, label %8, label %9, !dbg !3559

; <label>:8:                                      ; preds = %1
  tail call void @xalloc_die() #15, !dbg !3560
  unreachable, !dbg !3560

; <label>:9:                                      ; preds = %1
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %4, i8* align 1 %0, i64 %3, i1 false) #11, !dbg !3561
  ret i8* %4, !dbg !3562
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define dso_local void @xalloc_die() local_unnamed_addr #0 !dbg !3563 {
  %1 = load volatile i32, i32* @exit_failure, align 4, !dbg !3565, !tbaa !715
  %2 = tail call i8* @dcgettext(i8* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1.121, i64 0, i64 0), i32 5) #11, !dbg !3566
  tail call void (i32, i32, i8*, ...) @error(i32 %1, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.122, i64 0, i64 0), i8* %2) #11, !dbg !3567
  tail call void @abort() #15, !dbg !3568
  unreachable, !dbg !3568
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @xgetcwd() local_unnamed_addr #7 !dbg !3569 {
  %1 = tail call i8* @getcwd(i8* null, i64 0) #11, !dbg !3573
  call void @llvm.dbg.value(metadata i8* %1, metadata !3572, metadata !DIExpression()), !dbg !3574
  %2 = icmp eq i8* %1, null, !dbg !3575
  br i1 %2, label %3, label %8, !dbg !3577

; <label>:3:                                      ; preds = %0
  %4 = tail call i32* @__errno_location() #17, !dbg !3578
  %5 = load i32, i32* %4, align 4, !dbg !3578, !tbaa !715
  %6 = icmp eq i32 %5, 12, !dbg !3579
  br i1 %6, label %7, label %8, !dbg !3580

; <label>:7:                                      ; preds = %3
  tail call void @xalloc_die() #15, !dbg !3581
  unreachable, !dbg !3581

; <label>:8:                                      ; preds = %0, %3
  ret i8* %1, !dbg !3582
}

; Function Attrs: nounwind
declare i8* @getcwd(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local noalias i8* @rpl_calloc(i64, i64) local_unnamed_addr #7 !dbg !3583 {
  call void @llvm.dbg.value(metadata i64 %0, metadata !3586, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i64 %1, metadata !3587, metadata !DIExpression()), !dbg !3593
  %3 = icmp eq i64 %0, 0, !dbg !3594
  %4 = icmp eq i64 %1, 0, !dbg !3595
  %5 = or i1 %3, %4, !dbg !3596
  br i1 %5, label %12, label %6, !dbg !3596

; <label>:6:                                      ; preds = %2
  %7 = mul i64 %1, %0, !dbg !3597
  call void @llvm.dbg.value(metadata i64 %7, metadata !3589, metadata !DIExpression()), !dbg !3598
  %8 = udiv i64 %7, %1, !dbg !3599
  %9 = icmp eq i64 %8, %0, !dbg !3601
  br i1 %9, label %12, label %10, !dbg !3602

; <label>:10:                                     ; preds = %6
  %11 = tail call i32* @__errno_location() #17, !dbg !3603
  store i32 12, i32* %11, align 4, !dbg !3605, !tbaa !715
  br label %16

; <label>:12:                                     ; preds = %6, %2
  %13 = phi i64 [ 1, %2 ], [ %1, %6 ]
  %14 = phi i64 [ 1, %2 ], [ %0, %6 ]
  call void @llvm.dbg.value(metadata i64 %14, metadata !3586, metadata !DIExpression()), !dbg !3592
  call void @llvm.dbg.value(metadata i64 %13, metadata !3587, metadata !DIExpression()), !dbg !3593
  %15 = tail call noalias i8* @calloc(i64 %14, i64 %13) #11, !dbg !3606
  call void @llvm.dbg.value(metadata i8* %15, metadata !3588, metadata !DIExpression()), !dbg !3607
  br label %16, !dbg !3608

; <label>:16:                                     ; preds = %10, %12
  %17 = phi i8* [ %15, %12 ], [ null, %10 ], !dbg !3609
  ret i8* %17, !dbg !3610
}

; Function Attrs: nounwind
declare noalias i8* @calloc(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rpl_mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #7 !dbg !3611 {
  %5 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i32* %0, metadata !3628, metadata !DIExpression()), !dbg !3637
  call void @llvm.dbg.value(metadata i8* %1, metadata !3629, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.value(metadata i64 %2, metadata !3630, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.value(metadata %struct.__mbstate_t* %3, metadata !3631, metadata !DIExpression()), !dbg !3640
  %6 = bitcast i32* %5 to i8*, !dbg !3641
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3641
  %7 = icmp eq i32* %0, null, !dbg !3642
  %8 = select i1 %7, i32* %5, i32* %0, !dbg !3644
  call void @llvm.dbg.value(metadata i32* %8, metadata !3628, metadata !DIExpression()), !dbg !3637
  %9 = call i64 @mbrtowc(i32* %8, i8* %1, i64 %2, %struct.__mbstate_t* %3) #11, !dbg !3645
  call void @llvm.dbg.value(metadata i64 %9, metadata !3632, metadata !DIExpression()), !dbg !3646
  %10 = icmp ugt i64 %9, -3, !dbg !3647
  %11 = icmp ne i64 %2, 0, !dbg !3648
  %12 = and i1 %11, %10, !dbg !3649
  br i1 %12, label %13, label %18, !dbg !3649

; <label>:13:                                     ; preds = %4
  %14 = call zeroext i1 @hard_locale(i32 0) #11, !dbg !3650
  br i1 %14, label %18, label %15, !dbg !3651

; <label>:15:                                     ; preds = %13
  %16 = load i8, i8* %1, align 1, !dbg !3652, !tbaa !781
  call void @llvm.dbg.value(metadata i8 %16, metadata !3634, metadata !DIExpression()), !dbg !3653
  %17 = zext i8 %16 to i32, !dbg !3654
  store i32 %17, i32* %8, align 4, !dbg !3655, !tbaa !715
  br label %18

; <label>:18:                                     ; preds = %4, %13, %15
  %19 = phi i64 [ 1, %15 ], [ %9, %13 ], [ %9, %4 ], !dbg !3656
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %6) #11, !dbg !3657
  ret i64 %19, !dbg !3657
}

; Function Attrs: nounwind
declare i64 @mbrtowc(i32*, i8*, i64, %struct.__mbstate_t*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @close_stream(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3658 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3697, metadata !DIExpression()), !dbg !3702
  %2 = tail call i64 @__fpending(%struct._IO_FILE* %0) #11, !dbg !3703
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3704, metadata !DIExpression()), !dbg !3708
  %3 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3710
  %4 = load i32, i32* %3, align 8, !dbg !3710, !tbaa !3711
  %5 = and i32 %4, 32, !dbg !3710
  %6 = icmp eq i32 %5, 0, !dbg !3713
  %7 = tail call i32 @rpl_fclose(%struct._IO_FILE* %0) #11, !dbg !3714
  %8 = icmp ne i32 %7, 0, !dbg !3715
  br i1 %6, label %9, label %19, !dbg !3716

; <label>:9:                                      ; preds = %1
  %10 = icmp ne i64 %2, 0, !dbg !3718
  %11 = xor i1 %8, true, !dbg !3719
  %12 = or i1 %10, %11, !dbg !3719
  %13 = sext i1 %8 to i32, !dbg !3719
  br i1 %12, label %22, label %14, !dbg !3719

; <label>:14:                                     ; preds = %9
  %15 = tail call i32* @__errno_location() #17, !dbg !3720
  %16 = load i32, i32* %15, align 4, !dbg !3720, !tbaa !715
  %17 = icmp ne i32 %16, 9, !dbg !3721
  %18 = sext i1 %17 to i32, !dbg !3722
  br label %22, !dbg !3722

; <label>:19:                                     ; preds = %1
  br i1 %8, label %22, label %20, !dbg !3723

; <label>:20:                                     ; preds = %19
  %21 = tail call i32* @__errno_location() #17, !dbg !3725
  store i32 0, i32* %21, align 4, !dbg !3727, !tbaa !715
  br label %22, !dbg !3725

; <label>:22:                                     ; preds = %9, %14, %19, %20
  %23 = phi i32 [ -1, %20 ], [ -1, %19 ], [ %18, %14 ], [ %13, %9 ], !dbg !3728
  ret i32 %23, !dbg !3729
}

; Function Attrs: nounwind
declare i64 @__fpending(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @hard_locale(i32) local_unnamed_addr #7 !dbg !3730 {
  call void @llvm.dbg.value(metadata i32 %0, metadata !3735, metadata !DIExpression()), !dbg !3738
  call void @llvm.dbg.value(metadata i8 1, metadata !3736, metadata !DIExpression()), !dbg !3739
  %2 = tail call i8* @setlocale(i32 %0, i8* null) #11, !dbg !3740
  call void @llvm.dbg.value(metadata i8* %2, metadata !3737, metadata !DIExpression()), !dbg !3741
  %3 = icmp eq i8* %2, null, !dbg !3742
  br i1 %3, label %11, label %4, !dbg !3744

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.133, i64 0, i64 0)) #14, !dbg !3745
  %6 = icmp eq i32 %5, 0, !dbg !3750
  br i1 %6, label %10, label %7, !dbg !3751

; <label>:7:                                      ; preds = %4
  %8 = tail call i32 @strcmp(i8* nonnull %2, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.134, i64 0, i64 0)) #14, !dbg !3752
  %9 = icmp eq i32 %8, 0, !dbg !3753
  br i1 %9, label %10, label %11, !dbg !3754

; <label>:10:                                     ; preds = %7, %4
  call void @llvm.dbg.value(metadata i8 0, metadata !3736, metadata !DIExpression()), !dbg !3739
  br label %11, !dbg !3755

; <label>:11:                                     ; preds = %1, %7, %10
  %12 = phi i1 [ false, %10 ], [ true, %7 ], [ true, %1 ]
  ret i1 %12, !dbg !3756
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i8* @locale_charset() local_unnamed_addr #7 !dbg !3757 {
  %1 = tail call i8* @nl_langinfo(i32 14) #11, !dbg !3763
  call void @llvm.dbg.value(metadata i8* %1, metadata !3762, metadata !DIExpression()), !dbg !3764
  %2 = icmp eq i8* %1, null, !dbg !3765
  %3 = select i1 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.137, i64 0, i64 0), i8* %1, !dbg !3767
  call void @llvm.dbg.value(metadata i8* %3, metadata !3762, metadata !DIExpression()), !dbg !3764
  %4 = load i8, i8* %3, align 1, !dbg !3768, !tbaa !781
  %5 = icmp eq i8 %4, 0, !dbg !3772
  %6 = select i1 %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1.138, i64 0, i64 0), i8* %3, !dbg !3773
  call void @llvm.dbg.value(metadata i8* %6, metadata !3762, metadata !DIExpression()), !dbg !3764
  ret i8* %6, !dbg !3774
}

; Function Attrs: nounwind
declare i8* @nl_langinfo(i32) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fclose(%struct._IO_FILE* nonnull) local_unnamed_addr #7 !dbg !3775 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3814, metadata !DIExpression()), !dbg !3818
  call void @llvm.dbg.value(metadata i32 0, metadata !3815, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i32 0, metadata !3817, metadata !DIExpression()), !dbg !3820
  %2 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3821
  call void @llvm.dbg.value(metadata i32 %2, metadata !3816, metadata !DIExpression()), !dbg !3822
  %3 = icmp slt i32 %2, 0, !dbg !3823
  br i1 %3, label %4, label %6, !dbg !3825

; <label>:4:                                      ; preds = %1
  %5 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3826
  br label %24, !dbg !3827

; <label>:6:                                      ; preds = %1
  %7 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3828
  %8 = icmp eq i32 %7, 0, !dbg !3828
  br i1 %8, label %13, label %9, !dbg !3830

; <label>:9:                                      ; preds = %6
  %10 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3831
  %11 = tail call i64 @lseek(i32 %10, i64 0, i32 1) #11, !dbg !3832
  %12 = icmp eq i64 %11, -1, !dbg !3833
  br i1 %12, label %16, label %13, !dbg !3834

; <label>:13:                                     ; preds = %9, %6
  %14 = tail call i32 @rpl_fflush(%struct._IO_FILE* nonnull %0) #11, !dbg !3835
  %15 = icmp eq i32 %14, 0, !dbg !3835
  br i1 %15, label %16, label %18, !dbg !3836

; <label>:16:                                     ; preds = %13, %9
  call void @llvm.dbg.value(metadata i32 %20, metadata !3815, metadata !DIExpression()), !dbg !3819
  %17 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3837
  call void @llvm.dbg.value(metadata i32 %21, metadata !3817, metadata !DIExpression()), !dbg !3820
  br label %24, !dbg !3838

; <label>:18:                                     ; preds = %13
  %19 = tail call i32* @__errno_location() #17, !dbg !3839
  %20 = load i32, i32* %19, align 4, !dbg !3839, !tbaa !715
  call void @llvm.dbg.value(metadata i32 %20, metadata !3815, metadata !DIExpression()), !dbg !3819
  call void @llvm.dbg.value(metadata i32 %20, metadata !3815, metadata !DIExpression()), !dbg !3819
  %21 = tail call i32 @fclose(%struct._IO_FILE* nonnull %0), !dbg !3837
  call void @llvm.dbg.value(metadata i32 %21, metadata !3817, metadata !DIExpression()), !dbg !3820
  %22 = icmp eq i32 %20, 0, !dbg !3840
  br i1 %22, label %24, label %23, !dbg !3838

; <label>:23:                                     ; preds = %18
  store i32 %20, i32* %19, align 4, !dbg !3842, !tbaa !715
  call void @llvm.dbg.value(metadata i32 -1, metadata !3817, metadata !DIExpression()), !dbg !3820
  br label %24, !dbg !3844

; <label>:24:                                     ; preds = %16, %23, %18, %4
  %25 = phi i32 [ %5, %4 ], [ -1, %23 ], [ %21, %18 ], [ %17, %16 ], !dbg !3845
  ret i32 %25, !dbg !3846
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
define dso_local i32 @rpl_fflush(%struct._IO_FILE*) local_unnamed_addr #7 !dbg !3847 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3886, metadata !DIExpression()), !dbg !3887
  %2 = icmp eq %struct._IO_FILE* %0, null, !dbg !3888
  br i1 %2, label %6, label %3, !dbg !3890

; <label>:3:                                      ; preds = %1
  %4 = tail call i32 @__freading(%struct._IO_FILE* nonnull %0) #11, !dbg !3891
  %5 = icmp eq i32 %4, 0, !dbg !3891
  br i1 %5, label %6, label %8, !dbg !3892

; <label>:6:                                      ; preds = %3, %1
  %7 = tail call i32 @fflush(%struct._IO_FILE* %0), !dbg !3893
  br label %17, !dbg !3894

; <label>:8:                                      ; preds = %3
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3895, metadata !DIExpression()) #11, !dbg !3900
  %9 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3902
  %10 = load i32, i32* %9, align 8, !dbg !3902, !tbaa !3711
  %11 = and i32 %10, 256, !dbg !3904
  %12 = icmp eq i32 %11, 0, !dbg !3904
  br i1 %12, label %15, label %13, !dbg !3905

; <label>:13:                                     ; preds = %8
  %14 = tail call i32 @rpl_fseeko(%struct._IO_FILE* nonnull %0, i64 0, i32 1) #11, !dbg !3906
  br label %15, !dbg !3906

; <label>:15:                                     ; preds = %8, %13
  %16 = tail call i32 @fflush(%struct._IO_FILE* nonnull %0), !dbg !3907
  br label %17, !dbg !3908

; <label>:17:                                     ; preds = %15, %6
  %18 = phi i32 [ %7, %6 ], [ %16, %15 ], !dbg !3909
  ret i32 %18, !dbg !3910
}

; Function Attrs: nounwind
declare i32 @fflush(%struct._IO_FILE* nocapture) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @rpl_fseeko(%struct._IO_FILE* nocapture nonnull, i64, i32) local_unnamed_addr #7 !dbg !3911 {
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %0, metadata !3951, metadata !DIExpression()), !dbg !3957
  call void @llvm.dbg.value(metadata i64 %1, metadata !3952, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.value(metadata i32 %2, metadata !3953, metadata !DIExpression()), !dbg !3959
  %4 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !3960
  %5 = load i8*, i8** %4, align 8, !dbg !3960, !tbaa !3961
  %6 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !3962
  %7 = load i8*, i8** %6, align 8, !dbg !3962, !tbaa !3963
  %8 = icmp eq i8* %5, %7, !dbg !3964
  br i1 %8, label %9, label %28, !dbg !3965

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !3966
  %11 = load i8*, i8** %10, align 8, !dbg !3966, !tbaa !3967
  %12 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 4, !dbg !3968
  %13 = load i8*, i8** %12, align 8, !dbg !3968, !tbaa !3969
  %14 = icmp eq i8* %11, %13, !dbg !3970
  br i1 %14, label %15, label %28, !dbg !3971

; <label>:15:                                     ; preds = %9
  %16 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 9, !dbg !3972
  %17 = load i8*, i8** %16, align 8, !dbg !3972, !tbaa !3973
  %18 = icmp eq i8* %17, null, !dbg !3974
  br i1 %18, label %19, label %28, !dbg !3975

; <label>:19:                                     ; preds = %15
  %20 = tail call i32 @fileno(%struct._IO_FILE* nonnull %0) #11, !dbg !3976
  %21 = tail call i64 @lseek(i32 %20, i64 %1, i32 %2) #11, !dbg !3977
  call void @llvm.dbg.value(metadata i64 %21, metadata !3954, metadata !DIExpression()), !dbg !3978
  %22 = icmp eq i64 %21, -1, !dbg !3979
  br i1 %22, label %30, label %23, !dbg !3981

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 0, !dbg !3982
  %25 = load i32, i32* %24, align 8, !dbg !3983, !tbaa !3711
  %26 = and i32 %25, -17, !dbg !3983
  store i32 %26, i32* %24, align 8, !dbg !3983, !tbaa !3711
  %27 = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 21, !dbg !3984
  store i64 %21, i64* %27, align 8, !dbg !3985, !tbaa !3986
  br label %30, !dbg !3987

; <label>:28:                                     ; preds = %15, %9, %3
  %29 = tail call i32 @fseeko(%struct._IO_FILE* nonnull %0, i64 %1, i32 %2), !dbg !3988
  br label %30, !dbg !3989

; <label>:30:                                     ; preds = %23, %19, %28
  %31 = phi i32 [ %29, %28 ], [ 0, %23 ], [ -1, %19 ], !dbg !3990
  ret i32 %31, !dbg !3991
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
attributes #9 = { argmemonly nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #10 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #13 = { inlinehint nounwind sspstrong uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #14 = { nounwind readonly }
attributes #15 = { noreturn nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind readnone }
attributes #18 = { cold }

!llvm.dbg.cu = !{!2, !49, !55, !64, !71, !78, !154, !156, !147, !164, !181, !183, !185, !187, !190, !192, !194, !583, !585, !587}
!llvm.ident = !{!589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589, !589}
!llvm.module.flags = !{!590, !591, !592, !593, !594}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "longopts", scope: !2, file: !3, line: 41, type: !32, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !24, globals: !31)
!3 = !DIFile(filename: "src/pwd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!4 = !{!5, !20}
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
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 112, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "src/system.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!22 = !{!23}
!23 = !DIEnumerator(name: "NOT_AN_INODE_NUMBER", value: 0, isUnsigned: true)
!24 = !{!25, !26, !28}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 62, baseType: !30)
!29 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stddef.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !{!0}
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1280, elements: !45)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !35, line: 50, size: 256, elements: !36)
!35 = !DIFile(filename: "/usr/include/bits/getopt_ext.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!36 = !{!37, !40, !42, !44}
!37 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !34, file: !35, line: 52, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !34, file: !35, line: 55, baseType: !41, size: 32, offset: 64)
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !34, file: !35, line: 56, baseType: !43, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !34, file: !35, line: 57, baseType: !41, size: 32, offset: 192)
!45 = !{!46}
!46 = !DISubrange(count: 5)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(name: "Version", scope: !49, file: !50, line: 2, type: !38, isLocal: false, isDefinition: true)
!49 = distinct !DICompileUnit(language: DW_LANG_C99, file: !50, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, globals: !52)
!50 = !DIFile(filename: "src/version.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!51 = !{}
!52 = !{!47}
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "file_name", scope: !55, file: !60, line: 46, type: !38, isLocal: true, isDefinition: true)
!55 = distinct !DICompileUnit(language: DW_LANG_C99, file: !56, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, globals: !57)
!56 = !DIFile(filename: "./lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!57 = !{!53, !58}
!58 = !DIGlobalVariableExpression(var: !59, expr: !DIExpression())
!59 = distinct !DIGlobalVariable(name: "ignore_EPIPE", scope: !55, file: !60, line: 56, type: !61, isLocal: true, isDefinition: true)
!60 = !DIFile(filename: "lib/closeout.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!61 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "exit_failure", scope: !64, file: !67, line: 24, type: !68, isLocal: false, isDefinition: true)
!64 = distinct !DICompileUnit(language: DW_LANG_C99, file: !65, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, globals: !66)
!65 = !DIFile(filename: "./lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!66 = !{!62}
!67 = !DIFile(filename: "lib/exitfail.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!68 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !41)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(name: "program_name", scope: !71, file: !75, line: 33, type: !38, isLocal: false, isDefinition: true)
!71 = distinct !DICompileUnit(language: DW_LANG_C99, file: !72, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, retainedTypes: !73, globals: !74)
!72 = !DIFile(filename: "./lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!73 = !{!25, !26}
!74 = !{!69}
!75 = !DIFile(filename: "lib/progname.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "quoting_style_args", scope: !78, file: !106, line: 85, type: !141, isLocal: false, isDefinition: true)
!78 = distinct !DICompileUnit(language: DW_LANG_C99, file: !79, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !80, retainedTypes: !101, globals: !103)
!79 = !DIFile(filename: "./lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!80 = !{!5, !81, !86}
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "quoting_flags", file: !6, line: 242, baseType: !7, size: 32, elements: !82)
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "QA_ELIDE_NULL_BYTES", value: 1, isUnsigned: true)
!84 = !DIEnumerator(name: "QA_ELIDE_OUTER_QUOTES", value: 2, isUnsigned: true)
!85 = !DIEnumerator(name: "QA_SPLIT_TRIGRAPHS", value: 4, isUnsigned: true)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !87, line: 46, baseType: !7, size: 32, elements: !88)
!87 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100}
!89 = !DIEnumerator(name: "_ISupper", value: 256, isUnsigned: true)
!90 = !DIEnumerator(name: "_ISlower", value: 512, isUnsigned: true)
!91 = !DIEnumerator(name: "_ISalpha", value: 1024, isUnsigned: true)
!92 = !DIEnumerator(name: "_ISdigit", value: 2048, isUnsigned: true)
!93 = !DIEnumerator(name: "_ISxdigit", value: 4096, isUnsigned: true)
!94 = !DIEnumerator(name: "_ISspace", value: 8192, isUnsigned: true)
!95 = !DIEnumerator(name: "_ISprint", value: 16384, isUnsigned: true)
!96 = !DIEnumerator(name: "_ISgraph", value: 32768, isUnsigned: true)
!97 = !DIEnumerator(name: "_ISblank", value: 1, isUnsigned: true)
!98 = !DIEnumerator(name: "_IScntrl", value: 2, isUnsigned: true)
!99 = !DIEnumerator(name: "_ISpunct", value: 4, isUnsigned: true)
!100 = !DIEnumerator(name: "_ISalnum", value: 8, isUnsigned: true)
!101 = !{!41, !102, !28, !26}
!102 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!103 = !{!76, !104, !111, !123, !125, !130, !137, !139}
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "quoting_style_vals", scope: !78, file: !106, line: 101, type: !107, isLocal: false, isDefinition: true)
!106 = !DIFile(filename: "lib/quotearg.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 320, elements: !109)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!109 = !{!110}
!110 = !DISubrange(count: 10)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "quote_quoting_options", scope: !78, file: !106, line: 1052, type: !113, isLocal: false, isDefinition: true)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "quoting_options", file: !106, line: 65, size: 448, elements: !114)
!114 = !{!115, !116, !117, !121, !122}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "style", scope: !113, file: !106, line: 68, baseType: !5, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !113, file: !106, line: 71, baseType: !41, size: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "quote_these_too", scope: !113, file: !106, line: 75, baseType: !118, size: 256, offset: 64)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 8)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "left_quote", scope: !113, file: !106, line: 78, baseType: !38, size: 64, offset: 320)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "right_quote", scope: !113, file: !106, line: 81, baseType: !38, size: 64, offset: 384)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(name: "default_quoting_options", scope: !78, file: !106, line: 116, type: !113, isLocal: true, isDefinition: true)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(name: "slot0", scope: !78, file: !106, line: 842, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 2048, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 256)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "slotvec", scope: !78, file: !106, line: 845, type: !132, isLocal: true, isDefinition: true)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "slotvec", file: !106, line: 834, size: 128, elements: !134)
!134 = !{!135, !136}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !133, file: !106, line: 836, baseType: !28, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !133, file: !106, line: 837, baseType: !26, size: 64, offset: 64)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "nslots", scope: !78, file: !106, line: 843, type: !41, isLocal: true, isDefinition: true)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(name: "slotvec0", scope: !78, file: !106, line: 844, type: !133, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !142, size: 704, elements: !143)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!143 = !{!144}
!144 = !DISubrange(count: 11)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(name: "version_etc_copyright", scope: !147, file: !150, line: 26, type: !151, isLocal: false, isDefinition: true)
!147 = distinct !DICompileUnit(language: DW_LANG_C99, file: !148, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, globals: !149)
!148 = !DIFile(filename: "./lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!149 = !{!145}
!150 = !DIFile(filename: "lib/version-etc-fsf.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !39, size: 376, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 47)
!154 = distinct !DICompileUnit(language: DW_LANG_C99, file: !155, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51)
!155 = !DIFile(filename: "./lib/root-dev-ino.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!156 = distinct !DICompileUnit(language: DW_LANG_C99, file: !157, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !158, retainedTypes: !163)
!157 = !DIFile(filename: "./lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!158 = !{!159}
!159 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !160, line: 41, baseType: !7, size: 32, elements: !161)
!160 = !DIFile(filename: "lib/version-etc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!161 = !{!162}
!162 = !DIEnumerator(name: "COPYRIGHT_YEAR", value: 2018, isUnsigned: true)
!163 = !{!25}
!164 = distinct !DICompileUnit(language: DW_LANG_C99, file: !165, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !166, retainedTypes: !180)
!165 = !DIFile(filename: "./lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!166 = !{!167}
!167 = !DICompositeType(tag: DW_TAG_enumeration_type, scope: !169, file: !168, line: 186, baseType: !7, size: 32, elements: !178)
!168 = !DIFile(filename: "./lib/xalloc.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!169 = distinct !DISubprogram(name: "x2nrealloc", scope: !168, file: !168, line: 174, type: !170, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !173)
!170 = !DISubroutineType(types: !171)
!171 = !{!25, !25, !172, !28}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!173 = !{!174, !175, !176, !177}
!174 = !DILocalVariable(name: "p", arg: 1, scope: !169, file: !168, line: 174, type: !25)
!175 = !DILocalVariable(name: "pn", arg: 2, scope: !169, file: !168, line: 174, type: !172)
!176 = !DILocalVariable(name: "s", arg: 3, scope: !169, file: !168, line: 174, type: !28)
!177 = !DILocalVariable(name: "n", scope: !169, file: !168, line: 176, type: !28)
!178 = !{!179}
!179 = !DIEnumerator(name: "DEFAULT_MXFAST", value: 128, isUnsigned: true)
!180 = !{!28, !26, !25}
!181 = distinct !DICompileUnit(language: DW_LANG_C99, file: !182, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51)
!182 = !DIFile(filename: "./lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!183 = distinct !DICompileUnit(language: DW_LANG_C99, file: !184, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51)
!184 = !DIFile(filename: "./lib/xgetcwd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!185 = distinct !DICompileUnit(language: DW_LANG_C99, file: !186, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, retainedTypes: !163)
!186 = !DIFile(filename: "./lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!187 = distinct !DICompileUnit(language: DW_LANG_C99, file: !188, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, retainedTypes: !189)
!188 = !DIFile(filename: "./lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!189 = !{!28}
!190 = distinct !DICompileUnit(language: DW_LANG_C99, file: !191, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51)
!191 = !DIFile(filename: "./lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!192 = distinct !DICompileUnit(language: DW_LANG_C99, file: !193, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51)
!193 = !DIFile(filename: "./lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!194 = distinct !DICompileUnit(language: DW_LANG_C99, file: !195, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !196, retainedTypes: !163)
!195 = !DIFile(filename: "./lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!196 = !{!197}
!197 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !198, line: 41, baseType: !7, size: 32, elements: !199)
!198 = !DIFile(filename: "/usr/include/langinfo.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!199 = !{!200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582}
!200 = !DIEnumerator(name: "ABDAY_1", value: 131072, isUnsigned: true)
!201 = !DIEnumerator(name: "ABDAY_2", value: 131073, isUnsigned: true)
!202 = !DIEnumerator(name: "ABDAY_3", value: 131074, isUnsigned: true)
!203 = !DIEnumerator(name: "ABDAY_4", value: 131075, isUnsigned: true)
!204 = !DIEnumerator(name: "ABDAY_5", value: 131076, isUnsigned: true)
!205 = !DIEnumerator(name: "ABDAY_6", value: 131077, isUnsigned: true)
!206 = !DIEnumerator(name: "ABDAY_7", value: 131078, isUnsigned: true)
!207 = !DIEnumerator(name: "DAY_1", value: 131079, isUnsigned: true)
!208 = !DIEnumerator(name: "DAY_2", value: 131080, isUnsigned: true)
!209 = !DIEnumerator(name: "DAY_3", value: 131081, isUnsigned: true)
!210 = !DIEnumerator(name: "DAY_4", value: 131082, isUnsigned: true)
!211 = !DIEnumerator(name: "DAY_5", value: 131083, isUnsigned: true)
!212 = !DIEnumerator(name: "DAY_6", value: 131084, isUnsigned: true)
!213 = !DIEnumerator(name: "DAY_7", value: 131085, isUnsigned: true)
!214 = !DIEnumerator(name: "ABMON_1", value: 131086, isUnsigned: true)
!215 = !DIEnumerator(name: "ABMON_2", value: 131087, isUnsigned: true)
!216 = !DIEnumerator(name: "ABMON_3", value: 131088, isUnsigned: true)
!217 = !DIEnumerator(name: "ABMON_4", value: 131089, isUnsigned: true)
!218 = !DIEnumerator(name: "ABMON_5", value: 131090, isUnsigned: true)
!219 = !DIEnumerator(name: "ABMON_6", value: 131091, isUnsigned: true)
!220 = !DIEnumerator(name: "ABMON_7", value: 131092, isUnsigned: true)
!221 = !DIEnumerator(name: "ABMON_8", value: 131093, isUnsigned: true)
!222 = !DIEnumerator(name: "ABMON_9", value: 131094, isUnsigned: true)
!223 = !DIEnumerator(name: "ABMON_10", value: 131095, isUnsigned: true)
!224 = !DIEnumerator(name: "ABMON_11", value: 131096, isUnsigned: true)
!225 = !DIEnumerator(name: "ABMON_12", value: 131097, isUnsigned: true)
!226 = !DIEnumerator(name: "MON_1", value: 131098, isUnsigned: true)
!227 = !DIEnumerator(name: "MON_2", value: 131099, isUnsigned: true)
!228 = !DIEnumerator(name: "MON_3", value: 131100, isUnsigned: true)
!229 = !DIEnumerator(name: "MON_4", value: 131101, isUnsigned: true)
!230 = !DIEnumerator(name: "MON_5", value: 131102, isUnsigned: true)
!231 = !DIEnumerator(name: "MON_6", value: 131103, isUnsigned: true)
!232 = !DIEnumerator(name: "MON_7", value: 131104, isUnsigned: true)
!233 = !DIEnumerator(name: "MON_8", value: 131105, isUnsigned: true)
!234 = !DIEnumerator(name: "MON_9", value: 131106, isUnsigned: true)
!235 = !DIEnumerator(name: "MON_10", value: 131107, isUnsigned: true)
!236 = !DIEnumerator(name: "MON_11", value: 131108, isUnsigned: true)
!237 = !DIEnumerator(name: "MON_12", value: 131109, isUnsigned: true)
!238 = !DIEnumerator(name: "AM_STR", value: 131110, isUnsigned: true)
!239 = !DIEnumerator(name: "PM_STR", value: 131111, isUnsigned: true)
!240 = !DIEnumerator(name: "D_T_FMT", value: 131112, isUnsigned: true)
!241 = !DIEnumerator(name: "D_FMT", value: 131113, isUnsigned: true)
!242 = !DIEnumerator(name: "T_FMT", value: 131114, isUnsigned: true)
!243 = !DIEnumerator(name: "T_FMT_AMPM", value: 131115, isUnsigned: true)
!244 = !DIEnumerator(name: "ERA", value: 131116, isUnsigned: true)
!245 = !DIEnumerator(name: "__ERA_YEAR", value: 131117, isUnsigned: true)
!246 = !DIEnumerator(name: "ERA_D_FMT", value: 131118, isUnsigned: true)
!247 = !DIEnumerator(name: "ALT_DIGITS", value: 131119, isUnsigned: true)
!248 = !DIEnumerator(name: "ERA_D_T_FMT", value: 131120, isUnsigned: true)
!249 = !DIEnumerator(name: "ERA_T_FMT", value: 131121, isUnsigned: true)
!250 = !DIEnumerator(name: "_NL_TIME_ERA_NUM_ENTRIES", value: 131122, isUnsigned: true)
!251 = !DIEnumerator(name: "_NL_TIME_ERA_ENTRIES", value: 131123, isUnsigned: true)
!252 = !DIEnumerator(name: "_NL_WABDAY_1", value: 131124, isUnsigned: true)
!253 = !DIEnumerator(name: "_NL_WABDAY_2", value: 131125, isUnsigned: true)
!254 = !DIEnumerator(name: "_NL_WABDAY_3", value: 131126, isUnsigned: true)
!255 = !DIEnumerator(name: "_NL_WABDAY_4", value: 131127, isUnsigned: true)
!256 = !DIEnumerator(name: "_NL_WABDAY_5", value: 131128, isUnsigned: true)
!257 = !DIEnumerator(name: "_NL_WABDAY_6", value: 131129, isUnsigned: true)
!258 = !DIEnumerator(name: "_NL_WABDAY_7", value: 131130, isUnsigned: true)
!259 = !DIEnumerator(name: "_NL_WDAY_1", value: 131131, isUnsigned: true)
!260 = !DIEnumerator(name: "_NL_WDAY_2", value: 131132, isUnsigned: true)
!261 = !DIEnumerator(name: "_NL_WDAY_3", value: 131133, isUnsigned: true)
!262 = !DIEnumerator(name: "_NL_WDAY_4", value: 131134, isUnsigned: true)
!263 = !DIEnumerator(name: "_NL_WDAY_5", value: 131135, isUnsigned: true)
!264 = !DIEnumerator(name: "_NL_WDAY_6", value: 131136, isUnsigned: true)
!265 = !DIEnumerator(name: "_NL_WDAY_7", value: 131137, isUnsigned: true)
!266 = !DIEnumerator(name: "_NL_WABMON_1", value: 131138, isUnsigned: true)
!267 = !DIEnumerator(name: "_NL_WABMON_2", value: 131139, isUnsigned: true)
!268 = !DIEnumerator(name: "_NL_WABMON_3", value: 131140, isUnsigned: true)
!269 = !DIEnumerator(name: "_NL_WABMON_4", value: 131141, isUnsigned: true)
!270 = !DIEnumerator(name: "_NL_WABMON_5", value: 131142, isUnsigned: true)
!271 = !DIEnumerator(name: "_NL_WABMON_6", value: 131143, isUnsigned: true)
!272 = !DIEnumerator(name: "_NL_WABMON_7", value: 131144, isUnsigned: true)
!273 = !DIEnumerator(name: "_NL_WABMON_8", value: 131145, isUnsigned: true)
!274 = !DIEnumerator(name: "_NL_WABMON_9", value: 131146, isUnsigned: true)
!275 = !DIEnumerator(name: "_NL_WABMON_10", value: 131147, isUnsigned: true)
!276 = !DIEnumerator(name: "_NL_WABMON_11", value: 131148, isUnsigned: true)
!277 = !DIEnumerator(name: "_NL_WABMON_12", value: 131149, isUnsigned: true)
!278 = !DIEnumerator(name: "_NL_WMON_1", value: 131150, isUnsigned: true)
!279 = !DIEnumerator(name: "_NL_WMON_2", value: 131151, isUnsigned: true)
!280 = !DIEnumerator(name: "_NL_WMON_3", value: 131152, isUnsigned: true)
!281 = !DIEnumerator(name: "_NL_WMON_4", value: 131153, isUnsigned: true)
!282 = !DIEnumerator(name: "_NL_WMON_5", value: 131154, isUnsigned: true)
!283 = !DIEnumerator(name: "_NL_WMON_6", value: 131155, isUnsigned: true)
!284 = !DIEnumerator(name: "_NL_WMON_7", value: 131156, isUnsigned: true)
!285 = !DIEnumerator(name: "_NL_WMON_8", value: 131157, isUnsigned: true)
!286 = !DIEnumerator(name: "_NL_WMON_9", value: 131158, isUnsigned: true)
!287 = !DIEnumerator(name: "_NL_WMON_10", value: 131159, isUnsigned: true)
!288 = !DIEnumerator(name: "_NL_WMON_11", value: 131160, isUnsigned: true)
!289 = !DIEnumerator(name: "_NL_WMON_12", value: 131161, isUnsigned: true)
!290 = !DIEnumerator(name: "_NL_WAM_STR", value: 131162, isUnsigned: true)
!291 = !DIEnumerator(name: "_NL_WPM_STR", value: 131163, isUnsigned: true)
!292 = !DIEnumerator(name: "_NL_WD_T_FMT", value: 131164, isUnsigned: true)
!293 = !DIEnumerator(name: "_NL_WD_FMT", value: 131165, isUnsigned: true)
!294 = !DIEnumerator(name: "_NL_WT_FMT", value: 131166, isUnsigned: true)
!295 = !DIEnumerator(name: "_NL_WT_FMT_AMPM", value: 131167, isUnsigned: true)
!296 = !DIEnumerator(name: "_NL_WERA_YEAR", value: 131168, isUnsigned: true)
!297 = !DIEnumerator(name: "_NL_WERA_D_FMT", value: 131169, isUnsigned: true)
!298 = !DIEnumerator(name: "_NL_WALT_DIGITS", value: 131170, isUnsigned: true)
!299 = !DIEnumerator(name: "_NL_WERA_D_T_FMT", value: 131171, isUnsigned: true)
!300 = !DIEnumerator(name: "_NL_WERA_T_FMT", value: 131172, isUnsigned: true)
!301 = !DIEnumerator(name: "_NL_TIME_WEEK_NDAYS", value: 131173, isUnsigned: true)
!302 = !DIEnumerator(name: "_NL_TIME_WEEK_1STDAY", value: 131174, isUnsigned: true)
!303 = !DIEnumerator(name: "_NL_TIME_WEEK_1STWEEK", value: 131175, isUnsigned: true)
!304 = !DIEnumerator(name: "_NL_TIME_FIRST_WEEKDAY", value: 131176, isUnsigned: true)
!305 = !DIEnumerator(name: "_NL_TIME_FIRST_WORKDAY", value: 131177, isUnsigned: true)
!306 = !DIEnumerator(name: "_NL_TIME_CAL_DIRECTION", value: 131178, isUnsigned: true)
!307 = !DIEnumerator(name: "_NL_TIME_TIMEZONE", value: 131179, isUnsigned: true)
!308 = !DIEnumerator(name: "_DATE_FMT", value: 131180, isUnsigned: true)
!309 = !DIEnumerator(name: "_NL_W_DATE_FMT", value: 131181, isUnsigned: true)
!310 = !DIEnumerator(name: "_NL_TIME_CODESET", value: 131182, isUnsigned: true)
!311 = !DIEnumerator(name: "__ALTMON_1", value: 131183, isUnsigned: true)
!312 = !DIEnumerator(name: "__ALTMON_2", value: 131184, isUnsigned: true)
!313 = !DIEnumerator(name: "__ALTMON_3", value: 131185, isUnsigned: true)
!314 = !DIEnumerator(name: "__ALTMON_4", value: 131186, isUnsigned: true)
!315 = !DIEnumerator(name: "__ALTMON_5", value: 131187, isUnsigned: true)
!316 = !DIEnumerator(name: "__ALTMON_6", value: 131188, isUnsigned: true)
!317 = !DIEnumerator(name: "__ALTMON_7", value: 131189, isUnsigned: true)
!318 = !DIEnumerator(name: "__ALTMON_8", value: 131190, isUnsigned: true)
!319 = !DIEnumerator(name: "__ALTMON_9", value: 131191, isUnsigned: true)
!320 = !DIEnumerator(name: "__ALTMON_10", value: 131192, isUnsigned: true)
!321 = !DIEnumerator(name: "__ALTMON_11", value: 131193, isUnsigned: true)
!322 = !DIEnumerator(name: "__ALTMON_12", value: 131194, isUnsigned: true)
!323 = !DIEnumerator(name: "_NL_WALTMON_1", value: 131195, isUnsigned: true)
!324 = !DIEnumerator(name: "_NL_WALTMON_2", value: 131196, isUnsigned: true)
!325 = !DIEnumerator(name: "_NL_WALTMON_3", value: 131197, isUnsigned: true)
!326 = !DIEnumerator(name: "_NL_WALTMON_4", value: 131198, isUnsigned: true)
!327 = !DIEnumerator(name: "_NL_WALTMON_5", value: 131199, isUnsigned: true)
!328 = !DIEnumerator(name: "_NL_WALTMON_6", value: 131200, isUnsigned: true)
!329 = !DIEnumerator(name: "_NL_WALTMON_7", value: 131201, isUnsigned: true)
!330 = !DIEnumerator(name: "_NL_WALTMON_8", value: 131202, isUnsigned: true)
!331 = !DIEnumerator(name: "_NL_WALTMON_9", value: 131203, isUnsigned: true)
!332 = !DIEnumerator(name: "_NL_WALTMON_10", value: 131204, isUnsigned: true)
!333 = !DIEnumerator(name: "_NL_WALTMON_11", value: 131205, isUnsigned: true)
!334 = !DIEnumerator(name: "_NL_WALTMON_12", value: 131206, isUnsigned: true)
!335 = !DIEnumerator(name: "_NL_ABALTMON_1", value: 131207, isUnsigned: true)
!336 = !DIEnumerator(name: "_NL_ABALTMON_2", value: 131208, isUnsigned: true)
!337 = !DIEnumerator(name: "_NL_ABALTMON_3", value: 131209, isUnsigned: true)
!338 = !DIEnumerator(name: "_NL_ABALTMON_4", value: 131210, isUnsigned: true)
!339 = !DIEnumerator(name: "_NL_ABALTMON_5", value: 131211, isUnsigned: true)
!340 = !DIEnumerator(name: "_NL_ABALTMON_6", value: 131212, isUnsigned: true)
!341 = !DIEnumerator(name: "_NL_ABALTMON_7", value: 131213, isUnsigned: true)
!342 = !DIEnumerator(name: "_NL_ABALTMON_8", value: 131214, isUnsigned: true)
!343 = !DIEnumerator(name: "_NL_ABALTMON_9", value: 131215, isUnsigned: true)
!344 = !DIEnumerator(name: "_NL_ABALTMON_10", value: 131216, isUnsigned: true)
!345 = !DIEnumerator(name: "_NL_ABALTMON_11", value: 131217, isUnsigned: true)
!346 = !DIEnumerator(name: "_NL_ABALTMON_12", value: 131218, isUnsigned: true)
!347 = !DIEnumerator(name: "_NL_WABALTMON_1", value: 131219, isUnsigned: true)
!348 = !DIEnumerator(name: "_NL_WABALTMON_2", value: 131220, isUnsigned: true)
!349 = !DIEnumerator(name: "_NL_WABALTMON_3", value: 131221, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_WABALTMON_4", value: 131222, isUnsigned: true)
!351 = !DIEnumerator(name: "_NL_WABALTMON_5", value: 131223, isUnsigned: true)
!352 = !DIEnumerator(name: "_NL_WABALTMON_6", value: 131224, isUnsigned: true)
!353 = !DIEnumerator(name: "_NL_WABALTMON_7", value: 131225, isUnsigned: true)
!354 = !DIEnumerator(name: "_NL_WABALTMON_8", value: 131226, isUnsigned: true)
!355 = !DIEnumerator(name: "_NL_WABALTMON_9", value: 131227, isUnsigned: true)
!356 = !DIEnumerator(name: "_NL_WABALTMON_10", value: 131228, isUnsigned: true)
!357 = !DIEnumerator(name: "_NL_WABALTMON_11", value: 131229, isUnsigned: true)
!358 = !DIEnumerator(name: "_NL_WABALTMON_12", value: 131230, isUnsigned: true)
!359 = !DIEnumerator(name: "_NL_NUM_LC_TIME", value: 131231, isUnsigned: true)
!360 = !DIEnumerator(name: "_NL_COLLATE_NRULES", value: 196608, isUnsigned: true)
!361 = !DIEnumerator(name: "_NL_COLLATE_RULESETS", value: 196609, isUnsigned: true)
!362 = !DIEnumerator(name: "_NL_COLLATE_TABLEMB", value: 196610, isUnsigned: true)
!363 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTMB", value: 196611, isUnsigned: true)
!364 = !DIEnumerator(name: "_NL_COLLATE_EXTRAMB", value: 196612, isUnsigned: true)
!365 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTMB", value: 196613, isUnsigned: true)
!366 = !DIEnumerator(name: "_NL_COLLATE_GAP1", value: 196614, isUnsigned: true)
!367 = !DIEnumerator(name: "_NL_COLLATE_GAP2", value: 196615, isUnsigned: true)
!368 = !DIEnumerator(name: "_NL_COLLATE_GAP3", value: 196616, isUnsigned: true)
!369 = !DIEnumerator(name: "_NL_COLLATE_TABLEWC", value: 196617, isUnsigned: true)
!370 = !DIEnumerator(name: "_NL_COLLATE_WEIGHTWC", value: 196618, isUnsigned: true)
!371 = !DIEnumerator(name: "_NL_COLLATE_EXTRAWC", value: 196619, isUnsigned: true)
!372 = !DIEnumerator(name: "_NL_COLLATE_INDIRECTWC", value: 196620, isUnsigned: true)
!373 = !DIEnumerator(name: "_NL_COLLATE_SYMB_HASH_SIZEMB", value: 196621, isUnsigned: true)
!374 = !DIEnumerator(name: "_NL_COLLATE_SYMB_TABLEMB", value: 196622, isUnsigned: true)
!375 = !DIEnumerator(name: "_NL_COLLATE_SYMB_EXTRAMB", value: 196623, isUnsigned: true)
!376 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQMB", value: 196624, isUnsigned: true)
!377 = !DIEnumerator(name: "_NL_COLLATE_COLLSEQWC", value: 196625, isUnsigned: true)
!378 = !DIEnumerator(name: "_NL_COLLATE_CODESET", value: 196626, isUnsigned: true)
!379 = !DIEnumerator(name: "_NL_NUM_LC_COLLATE", value: 196627, isUnsigned: true)
!380 = !DIEnumerator(name: "_NL_CTYPE_CLASS", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "_NL_CTYPE_GAP1", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER", value: 3, isUnsigned: true)
!384 = !DIEnumerator(name: "_NL_CTYPE_GAP2", value: 4, isUnsigned: true)
!385 = !DIEnumerator(name: "_NL_CTYPE_CLASS32", value: 5, isUnsigned: true)
!386 = !DIEnumerator(name: "_NL_CTYPE_GAP3", value: 6, isUnsigned: true)
!387 = !DIEnumerator(name: "_NL_CTYPE_GAP4", value: 7, isUnsigned: true)
!388 = !DIEnumerator(name: "_NL_CTYPE_GAP5", value: 8, isUnsigned: true)
!389 = !DIEnumerator(name: "_NL_CTYPE_GAP6", value: 9, isUnsigned: true)
!390 = !DIEnumerator(name: "_NL_CTYPE_CLASS_NAMES", value: 10, isUnsigned: true)
!391 = !DIEnumerator(name: "_NL_CTYPE_MAP_NAMES", value: 11, isUnsigned: true)
!392 = !DIEnumerator(name: "_NL_CTYPE_WIDTH", value: 12, isUnsigned: true)
!393 = !DIEnumerator(name: "_NL_CTYPE_MB_CUR_MAX", value: 13, isUnsigned: true)
!394 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 14, isUnsigned: true)
!395 = !DIEnumerator(name: "CODESET", value: 14, isUnsigned: true)
!396 = !DIEnumerator(name: "_NL_CTYPE_TOUPPER32", value: 15, isUnsigned: true)
!397 = !DIEnumerator(name: "_NL_CTYPE_TOLOWER32", value: 16, isUnsigned: true)
!398 = !DIEnumerator(name: "_NL_CTYPE_CLASS_OFFSET", value: 17, isUnsigned: true)
!399 = !DIEnumerator(name: "_NL_CTYPE_MAP_OFFSET", value: 18, isUnsigned: true)
!400 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_MB_LEN", value: 19, isUnsigned: true)
!401 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_MB", value: 20, isUnsigned: true)
!402 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_MB", value: 21, isUnsigned: true)
!403 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_MB", value: 22, isUnsigned: true)
!404 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_MB", value: 23, isUnsigned: true)
!405 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_MB", value: 24, isUnsigned: true)
!406 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_MB", value: 25, isUnsigned: true)
!407 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_MB", value: 26, isUnsigned: true)
!408 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_MB", value: 27, isUnsigned: true)
!409 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_MB", value: 28, isUnsigned: true)
!410 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_MB", value: 29, isUnsigned: true)
!411 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS_WC_LEN", value: 30, isUnsigned: true)
!412 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS0_WC", value: 31, isUnsigned: true)
!413 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS1_WC", value: 32, isUnsigned: true)
!414 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS2_WC", value: 33, isUnsigned: true)
!415 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS3_WC", value: 34, isUnsigned: true)
!416 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS4_WC", value: 35, isUnsigned: true)
!417 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS5_WC", value: 36, isUnsigned: true)
!418 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS6_WC", value: 37, isUnsigned: true)
!419 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS7_WC", value: 38, isUnsigned: true)
!420 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS8_WC", value: 39, isUnsigned: true)
!421 = !DIEnumerator(name: "_NL_CTYPE_INDIGITS9_WC", value: 40, isUnsigned: true)
!422 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_MB", value: 41, isUnsigned: true)
!423 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_MB", value: 42, isUnsigned: true)
!424 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_MB", value: 43, isUnsigned: true)
!425 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_MB", value: 44, isUnsigned: true)
!426 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_MB", value: 45, isUnsigned: true)
!427 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_MB", value: 46, isUnsigned: true)
!428 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_MB", value: 47, isUnsigned: true)
!429 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_MB", value: 48, isUnsigned: true)
!430 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_MB", value: 49, isUnsigned: true)
!431 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_MB", value: 50, isUnsigned: true)
!432 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT0_WC", value: 51, isUnsigned: true)
!433 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT1_WC", value: 52, isUnsigned: true)
!434 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT2_WC", value: 53, isUnsigned: true)
!435 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT3_WC", value: 54, isUnsigned: true)
!436 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT4_WC", value: 55, isUnsigned: true)
!437 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT5_WC", value: 56, isUnsigned: true)
!438 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT6_WC", value: 57, isUnsigned: true)
!439 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT7_WC", value: 58, isUnsigned: true)
!440 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT8_WC", value: 59, isUnsigned: true)
!441 = !DIEnumerator(name: "_NL_CTYPE_OUTDIGIT9_WC", value: 60, isUnsigned: true)
!442 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TAB_SIZE", value: 61, isUnsigned: true)
!443 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_IDX", value: 62, isUnsigned: true)
!444 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_FROM_TBL", value: 63, isUnsigned: true)
!445 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_IDX", value: 64, isUnsigned: true)
!446 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_TO_TBL", value: 65, isUnsigned: true)
!447 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING_LEN", value: 66, isUnsigned: true)
!448 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_DEFAULT_MISSING", value: 67, isUnsigned: true)
!449 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE_LEN", value: 68, isUnsigned: true)
!450 = !DIEnumerator(name: "_NL_CTYPE_TRANSLIT_IGNORE", value: 69, isUnsigned: true)
!451 = !DIEnumerator(name: "_NL_CTYPE_MAP_TO_NONASCII", value: 70, isUnsigned: true)
!452 = !DIEnumerator(name: "_NL_CTYPE_NONASCII_CASE", value: 71, isUnsigned: true)
!453 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_1", value: 72, isUnsigned: true)
!454 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_2", value: 73, isUnsigned: true)
!455 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_3", value: 74, isUnsigned: true)
!456 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_4", value: 75, isUnsigned: true)
!457 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_5", value: 76, isUnsigned: true)
!458 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_6", value: 77, isUnsigned: true)
!459 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_7", value: 78, isUnsigned: true)
!460 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_8", value: 79, isUnsigned: true)
!461 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_9", value: 80, isUnsigned: true)
!462 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_10", value: 81, isUnsigned: true)
!463 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_11", value: 82, isUnsigned: true)
!464 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_12", value: 83, isUnsigned: true)
!465 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_13", value: 84, isUnsigned: true)
!466 = !DIEnumerator(name: "_NL_CTYPE_EXTRA_MAP_14", value: 85, isUnsigned: true)
!467 = !DIEnumerator(name: "_NL_NUM_LC_CTYPE", value: 86, isUnsigned: true)
!468 = !DIEnumerator(name: "__INT_CURR_SYMBOL", value: 262144, isUnsigned: true)
!469 = !DIEnumerator(name: "__CURRENCY_SYMBOL", value: 262145, isUnsigned: true)
!470 = !DIEnumerator(name: "__MON_DECIMAL_POINT", value: 262146, isUnsigned: true)
!471 = !DIEnumerator(name: "__MON_THOUSANDS_SEP", value: 262147, isUnsigned: true)
!472 = !DIEnumerator(name: "__MON_GROUPING", value: 262148, isUnsigned: true)
!473 = !DIEnumerator(name: "__POSITIVE_SIGN", value: 262149, isUnsigned: true)
!474 = !DIEnumerator(name: "__NEGATIVE_SIGN", value: 262150, isUnsigned: true)
!475 = !DIEnumerator(name: "__INT_FRAC_DIGITS", value: 262151, isUnsigned: true)
!476 = !DIEnumerator(name: "__FRAC_DIGITS", value: 262152, isUnsigned: true)
!477 = !DIEnumerator(name: "__P_CS_PRECEDES", value: 262153, isUnsigned: true)
!478 = !DIEnumerator(name: "__P_SEP_BY_SPACE", value: 262154, isUnsigned: true)
!479 = !DIEnumerator(name: "__N_CS_PRECEDES", value: 262155, isUnsigned: true)
!480 = !DIEnumerator(name: "__N_SEP_BY_SPACE", value: 262156, isUnsigned: true)
!481 = !DIEnumerator(name: "__P_SIGN_POSN", value: 262157, isUnsigned: true)
!482 = !DIEnumerator(name: "__N_SIGN_POSN", value: 262158, isUnsigned: true)
!483 = !DIEnumerator(name: "_NL_MONETARY_CRNCYSTR", value: 262159, isUnsigned: true)
!484 = !DIEnumerator(name: "__INT_P_CS_PRECEDES", value: 262160, isUnsigned: true)
!485 = !DIEnumerator(name: "__INT_P_SEP_BY_SPACE", value: 262161, isUnsigned: true)
!486 = !DIEnumerator(name: "__INT_N_CS_PRECEDES", value: 262162, isUnsigned: true)
!487 = !DIEnumerator(name: "__INT_N_SEP_BY_SPACE", value: 262163, isUnsigned: true)
!488 = !DIEnumerator(name: "__INT_P_SIGN_POSN", value: 262164, isUnsigned: true)
!489 = !DIEnumerator(name: "__INT_N_SIGN_POSN", value: 262165, isUnsigned: true)
!490 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_CURR_SYMBOL", value: 262166, isUnsigned: true)
!491 = !DIEnumerator(name: "_NL_MONETARY_DUO_CURRENCY_SYMBOL", value: 262167, isUnsigned: true)
!492 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_FRAC_DIGITS", value: 262168, isUnsigned: true)
!493 = !DIEnumerator(name: "_NL_MONETARY_DUO_FRAC_DIGITS", value: 262169, isUnsigned: true)
!494 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_CS_PRECEDES", value: 262170, isUnsigned: true)
!495 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SEP_BY_SPACE", value: 262171, isUnsigned: true)
!496 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_CS_PRECEDES", value: 262172, isUnsigned: true)
!497 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SEP_BY_SPACE", value: 262173, isUnsigned: true)
!498 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_CS_PRECEDES", value: 262174, isUnsigned: true)
!499 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SEP_BY_SPACE", value: 262175, isUnsigned: true)
!500 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_CS_PRECEDES", value: 262176, isUnsigned: true)
!501 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SEP_BY_SPACE", value: 262177, isUnsigned: true)
!502 = !DIEnumerator(name: "_NL_MONETARY_DUO_P_SIGN_POSN", value: 262178, isUnsigned: true)
!503 = !DIEnumerator(name: "_NL_MONETARY_DUO_N_SIGN_POSN", value: 262179, isUnsigned: true)
!504 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_P_SIGN_POSN", value: 262180, isUnsigned: true)
!505 = !DIEnumerator(name: "_NL_MONETARY_DUO_INT_N_SIGN_POSN", value: 262181, isUnsigned: true)
!506 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_FROM", value: 262182, isUnsigned: true)
!507 = !DIEnumerator(name: "_NL_MONETARY_UNO_VALID_TO", value: 262183, isUnsigned: true)
!508 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_FROM", value: 262184, isUnsigned: true)
!509 = !DIEnumerator(name: "_NL_MONETARY_DUO_VALID_TO", value: 262185, isUnsigned: true)
!510 = !DIEnumerator(name: "_NL_MONETARY_CONVERSION_RATE", value: 262186, isUnsigned: true)
!511 = !DIEnumerator(name: "_NL_MONETARY_DECIMAL_POINT_WC", value: 262187, isUnsigned: true)
!512 = !DIEnumerator(name: "_NL_MONETARY_THOUSANDS_SEP_WC", value: 262188, isUnsigned: true)
!513 = !DIEnumerator(name: "_NL_MONETARY_CODESET", value: 262189, isUnsigned: true)
!514 = !DIEnumerator(name: "_NL_NUM_LC_MONETARY", value: 262190, isUnsigned: true)
!515 = !DIEnumerator(name: "__DECIMAL_POINT", value: 65536, isUnsigned: true)
!516 = !DIEnumerator(name: "RADIXCHAR", value: 65536, isUnsigned: true)
!517 = !DIEnumerator(name: "__THOUSANDS_SEP", value: 65537, isUnsigned: true)
!518 = !DIEnumerator(name: "THOUSEP", value: 65537, isUnsigned: true)
!519 = !DIEnumerator(name: "__GROUPING", value: 65538, isUnsigned: true)
!520 = !DIEnumerator(name: "_NL_NUMERIC_DECIMAL_POINT_WC", value: 65539, isUnsigned: true)
!521 = !DIEnumerator(name: "_NL_NUMERIC_THOUSANDS_SEP_WC", value: 65540, isUnsigned: true)
!522 = !DIEnumerator(name: "_NL_NUMERIC_CODESET", value: 65541, isUnsigned: true)
!523 = !DIEnumerator(name: "_NL_NUM_LC_NUMERIC", value: 65542, isUnsigned: true)
!524 = !DIEnumerator(name: "__YESEXPR", value: 327680, isUnsigned: true)
!525 = !DIEnumerator(name: "__NOEXPR", value: 327681, isUnsigned: true)
!526 = !DIEnumerator(name: "__YESSTR", value: 327682, isUnsigned: true)
!527 = !DIEnumerator(name: "__NOSTR", value: 327683, isUnsigned: true)
!528 = !DIEnumerator(name: "_NL_MESSAGES_CODESET", value: 327684, isUnsigned: true)
!529 = !DIEnumerator(name: "_NL_NUM_LC_MESSAGES", value: 327685, isUnsigned: true)
!530 = !DIEnumerator(name: "_NL_PAPER_HEIGHT", value: 458752, isUnsigned: true)
!531 = !DIEnumerator(name: "_NL_PAPER_WIDTH", value: 458753, isUnsigned: true)
!532 = !DIEnumerator(name: "_NL_PAPER_CODESET", value: 458754, isUnsigned: true)
!533 = !DIEnumerator(name: "_NL_NUM_LC_PAPER", value: 458755, isUnsigned: true)
!534 = !DIEnumerator(name: "_NL_NAME_NAME_FMT", value: 524288, isUnsigned: true)
!535 = !DIEnumerator(name: "_NL_NAME_NAME_GEN", value: 524289, isUnsigned: true)
!536 = !DIEnumerator(name: "_NL_NAME_NAME_MR", value: 524290, isUnsigned: true)
!537 = !DIEnumerator(name: "_NL_NAME_NAME_MRS", value: 524291, isUnsigned: true)
!538 = !DIEnumerator(name: "_NL_NAME_NAME_MISS", value: 524292, isUnsigned: true)
!539 = !DIEnumerator(name: "_NL_NAME_NAME_MS", value: 524293, isUnsigned: true)
!540 = !DIEnumerator(name: "_NL_NAME_CODESET", value: 524294, isUnsigned: true)
!541 = !DIEnumerator(name: "_NL_NUM_LC_NAME", value: 524295, isUnsigned: true)
!542 = !DIEnumerator(name: "_NL_ADDRESS_POSTAL_FMT", value: 589824, isUnsigned: true)
!543 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NAME", value: 589825, isUnsigned: true)
!544 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_POST", value: 589826, isUnsigned: true)
!545 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB2", value: 589827, isUnsigned: true)
!546 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_AB3", value: 589828, isUnsigned: true)
!547 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_CAR", value: 589829, isUnsigned: true)
!548 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_NUM", value: 589830, isUnsigned: true)
!549 = !DIEnumerator(name: "_NL_ADDRESS_COUNTRY_ISBN", value: 589831, isUnsigned: true)
!550 = !DIEnumerator(name: "_NL_ADDRESS_LANG_NAME", value: 589832, isUnsigned: true)
!551 = !DIEnumerator(name: "_NL_ADDRESS_LANG_AB", value: 589833, isUnsigned: true)
!552 = !DIEnumerator(name: "_NL_ADDRESS_LANG_TERM", value: 589834, isUnsigned: true)
!553 = !DIEnumerator(name: "_NL_ADDRESS_LANG_LIB", value: 589835, isUnsigned: true)
!554 = !DIEnumerator(name: "_NL_ADDRESS_CODESET", value: 589836, isUnsigned: true)
!555 = !DIEnumerator(name: "_NL_NUM_LC_ADDRESS", value: 589837, isUnsigned: true)
!556 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_INT_FMT", value: 655360, isUnsigned: true)
!557 = !DIEnumerator(name: "_NL_TELEPHONE_TEL_DOM_FMT", value: 655361, isUnsigned: true)
!558 = !DIEnumerator(name: "_NL_TELEPHONE_INT_SELECT", value: 655362, isUnsigned: true)
!559 = !DIEnumerator(name: "_NL_TELEPHONE_INT_PREFIX", value: 655363, isUnsigned: true)
!560 = !DIEnumerator(name: "_NL_TELEPHONE_CODESET", value: 655364, isUnsigned: true)
!561 = !DIEnumerator(name: "_NL_NUM_LC_TELEPHONE", value: 655365, isUnsigned: true)
!562 = !DIEnumerator(name: "_NL_MEASUREMENT_MEASUREMENT", value: 720896, isUnsigned: true)
!563 = !DIEnumerator(name: "_NL_MEASUREMENT_CODESET", value: 720897, isUnsigned: true)
!564 = !DIEnumerator(name: "_NL_NUM_LC_MEASUREMENT", value: 720898, isUnsigned: true)
!565 = !DIEnumerator(name: "_NL_IDENTIFICATION_TITLE", value: 786432, isUnsigned: true)
!566 = !DIEnumerator(name: "_NL_IDENTIFICATION_SOURCE", value: 786433, isUnsigned: true)
!567 = !DIEnumerator(name: "_NL_IDENTIFICATION_ADDRESS", value: 786434, isUnsigned: true)
!568 = !DIEnumerator(name: "_NL_IDENTIFICATION_CONTACT", value: 786435, isUnsigned: true)
!569 = !DIEnumerator(name: "_NL_IDENTIFICATION_EMAIL", value: 786436, isUnsigned: true)
!570 = !DIEnumerator(name: "_NL_IDENTIFICATION_TEL", value: 786437, isUnsigned: true)
!571 = !DIEnumerator(name: "_NL_IDENTIFICATION_FAX", value: 786438, isUnsigned: true)
!572 = !DIEnumerator(name: "_NL_IDENTIFICATION_LANGUAGE", value: 786439, isUnsigned: true)
!573 = !DIEnumerator(name: "_NL_IDENTIFICATION_TERRITORY", value: 786440, isUnsigned: true)
!574 = !DIEnumerator(name: "_NL_IDENTIFICATION_AUDIENCE", value: 786441, isUnsigned: true)
!575 = !DIEnumerator(name: "_NL_IDENTIFICATION_APPLICATION", value: 786442, isUnsigned: true)
!576 = !DIEnumerator(name: "_NL_IDENTIFICATION_ABBREVIATION", value: 786443, isUnsigned: true)
!577 = !DIEnumerator(name: "_NL_IDENTIFICATION_REVISION", value: 786444, isUnsigned: true)
!578 = !DIEnumerator(name: "_NL_IDENTIFICATION_DATE", value: 786445, isUnsigned: true)
!579 = !DIEnumerator(name: "_NL_IDENTIFICATION_CATEGORY", value: 786446, isUnsigned: true)
!580 = !DIEnumerator(name: "_NL_IDENTIFICATION_CODESET", value: 786447, isUnsigned: true)
!581 = !DIEnumerator(name: "_NL_NUM_LC_IDENTIFICATION", value: 786448, isUnsigned: true)
!582 = !DIEnumerator(name: "_NL_NUM", value: 786449, isUnsigned: true)
!583 = distinct !DICompileUnit(language: DW_LANG_C99, file: !584, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51)
!584 = !DIFile(filename: "./lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!585 = distinct !DICompileUnit(language: DW_LANG_C99, file: !586, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, retainedTypes: !163)
!586 = !DIFile(filename: "./lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!587 = distinct !DICompileUnit(language: DW_LANG_C99, file: !588, producer: "clang version 7.0.0 (tags/RELEASE_700/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !51, retainedTypes: !163)
!588 = !DIFile(filename: "./lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!589 = !{!"clang version 7.0.0 (tags/RELEASE_700/final)"}
!590 = !{i32 2, !"Dwarf Version", i32 4}
!591 = !{i32 2, !"Debug Info Version", i32 3}
!592 = !{i32 1, !"wchar_size", i32 4}
!593 = !{i32 7, !"PIC Level", i32 2}
!594 = !{i32 7, !"PIE Level", i32 2}
!595 = distinct !DISubprogram(name: "usage", scope: !3, file: !3, line: 51, type: !596, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !2, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !41}
!598 = !{!599}
!599 = !DILocalVariable(name: "status", arg: 1, scope: !595, file: !3, line: 51, type: !41)
!600 = !DILocalVariable(name: "infomap", scope: !601, file: !21, line: 632, type: !615)
!601 = distinct !DISubprogram(name: "emit_ancillary_info", scope: !21, file: !21, line: 630, type: !602, isLocal: true, isDefinition: true, scopeLine: 631, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !604)
!602 = !DISubroutineType(types: !603)
!603 = !{null, !38}
!604 = !{!605, !600, !606, !607, !614}
!605 = !DILocalVariable(name: "program", arg: 1, scope: !601, file: !21, line: 630, type: !38)
!606 = !DILocalVariable(name: "node", scope: !601, file: !21, line: 642, type: !38)
!607 = !DILocalVariable(name: "map_prog", scope: !601, file: !21, line: 643, type: !608)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "infomap", scope: !601, file: !21, line: 632, size: 128, elements: !611)
!611 = !{!612, !613}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "program", scope: !610, file: !21, line: 632, baseType: !38, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !610, file: !21, line: 632, baseType: !38, size: 64, offset: 64)
!614 = !DILocalVariable(name: "lc_messages", scope: !601, file: !21, line: 655, type: !38)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 896, elements: !616)
!616 = !{!617}
!617 = !DISubrange(count: 7)
!618 = !DILocation(line: 632, column: 67, scope: !601, inlinedAt: !619)
!619 = distinct !DILocation(line: 72, column: 7, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !3, line: 56, column: 5)
!621 = distinct !DILexicalBlock(scope: !595, file: !3, line: 53, column: 7)
!622 = !DILocation(line: 51, column: 12, scope: !595)
!623 = !DILocation(line: 53, column: 14, scope: !621)
!624 = !DILocation(line: 53, column: 7, scope: !595)
!625 = !DILocation(line: 54, column: 5, scope: !626)
!626 = distinct !DILexicalBlock(scope: !621, file: !3, line: 54, column: 5)
!627 = !{!628, !628, i64 0}
!628 = !{!"any pointer", !629, i64 0}
!629 = !{!"omnipotent char", !630, i64 0}
!630 = !{!"Simple C/C++ TBAA"}
!631 = !DILocation(line: 57, column: 7, scope: !620)
!632 = !DILocation(line: 58, column: 7, scope: !620)
!633 = !DILocation(line: 62, column: 7, scope: !620)
!634 = !DILocation(line: 66, column: 7, scope: !620)
!635 = !DILocation(line: 67, column: 7, scope: !620)
!636 = !DILocation(line: 68, column: 7, scope: !620)
!637 = !DILocation(line: 71, column: 7, scope: !620)
!638 = !DILocation(line: 632, column: 3, scope: !601, inlinedAt: !619)
!639 = !DILocation(line: 643, column: 36, scope: !601, inlinedAt: !619)
!640 = !DILocation(line: 643, column: 25, scope: !601, inlinedAt: !619)
!641 = !DILocation(line: 645, column: 33, scope: !601, inlinedAt: !619)
!642 = !DILocation(line: 645, column: 3, scope: !601, inlinedAt: !619)
!643 = !DILocation(line: 646, column: 13, scope: !601, inlinedAt: !619)
!644 = !DILocation(line: 645, column: 20, scope: !601, inlinedAt: !619)
!645 = !{!646, !628, i64 0}
!646 = !{!"infomap", !628, i64 0, !628, i64 8}
!647 = !DILocation(line: 645, column: 10, scope: !601, inlinedAt: !619)
!648 = !DILocation(line: 645, column: 28, scope: !601, inlinedAt: !619)
!649 = distinct !{!649, !650, !651}
!650 = !DILocation(line: 645, column: 3, scope: !601)
!651 = !DILocation(line: 646, column: 13, scope: !601)
!652 = !DILocation(line: 648, column: 17, scope: !653, inlinedAt: !619)
!653 = distinct !DILexicalBlock(scope: !601, file: !21, line: 648, column: 7)
!654 = !{!646, !628, i64 8}
!655 = !DILocation(line: 648, column: 7, scope: !653, inlinedAt: !619)
!656 = !DILocation(line: 648, column: 7, scope: !601, inlinedAt: !619)
!657 = !DILocation(line: 642, column: 15, scope: !601, inlinedAt: !619)
!658 = !DILocation(line: 651, column: 3, scope: !601, inlinedAt: !619)
!659 = !DILocation(line: 655, column: 29, scope: !601, inlinedAt: !619)
!660 = !DILocation(line: 655, column: 15, scope: !601, inlinedAt: !619)
!661 = !DILocation(line: 656, column: 7, scope: !662, inlinedAt: !619)
!662 = distinct !DILexicalBlock(scope: !601, file: !21, line: 656, column: 7)
!663 = !DILocation(line: 656, column: 19, scope: !662, inlinedAt: !619)
!664 = !DILocation(line: 656, column: 22, scope: !662, inlinedAt: !619)
!665 = !DILocation(line: 656, column: 7, scope: !601, inlinedAt: !619)
!666 = !DILocation(line: 662, column: 7, scope: !667, inlinedAt: !619)
!667 = distinct !DILexicalBlock(scope: !662, file: !21, line: 657, column: 5)
!668 = !DILocation(line: 664, column: 5, scope: !667, inlinedAt: !619)
!669 = !DILocation(line: 665, column: 3, scope: !601, inlinedAt: !619)
!670 = !DILocation(line: 667, column: 3, scope: !601, inlinedAt: !619)
!671 = !DILocation(line: 669, column: 1, scope: !601, inlinedAt: !619)
!672 = !DILocation(line: 74, column: 3, scope: !595)
!673 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 327, type: !674, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !677)
!674 = !DISubroutineType(types: !675)
!675 = !{!41, !41, !676}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!677 = !{!678, !679, !680, !681, !682, !684}
!678 = !DILocalVariable(name: "argc", arg: 1, scope: !673, file: !3, line: 327, type: !41)
!679 = !DILocalVariable(name: "argv", arg: 2, scope: !673, file: !3, line: 327, type: !676)
!680 = !DILocalVariable(name: "wd", scope: !673, file: !3, line: 329, type: !26)
!681 = !DILocalVariable(name: "logical", scope: !673, file: !3, line: 333, type: !61)
!682 = !DILocalVariable(name: "c", scope: !683, file: !3, line: 345, type: !41)
!683 = distinct !DILexicalBlock(scope: !673, file: !3, line: 344, column: 5)
!684 = !DILocalVariable(name: "file_name", scope: !685, file: !3, line: 387, type: !687)
!685 = distinct !DILexicalBlock(scope: !686, file: !3, line: 386, column: 5)
!686 = distinct !DILexicalBlock(scope: !673, file: !3, line: 380, column: 7)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_name", file: !3, line: 34, size: 192, elements: !689)
!689 = !{!690, !691, !692}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !688, file: !3, line: 36, baseType: !26, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "n_alloc", scope: !688, file: !3, line: 37, baseType: !28, size: 64, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !688, file: !3, line: 38, baseType: !26, size: 64, offset: 128)
!693 = !DILocation(line: 327, column: 11, scope: !673)
!694 = !DILocation(line: 327, column: 24, scope: !673)
!695 = !DILocation(line: 333, column: 19, scope: !673)
!696 = !DILocation(line: 333, column: 46, scope: !673)
!697 = !DILocation(line: 333, column: 8, scope: !673)
!698 = !DILocation(line: 336, column: 21, scope: !673)
!699 = !DILocation(line: 336, column: 3, scope: !673)
!700 = !DILocation(line: 337, column: 3, scope: !673)
!701 = !DILocation(line: 338, column: 3, scope: !673)
!702 = !DILocation(line: 339, column: 3, scope: !673)
!703 = !DILocation(line: 341, column: 3, scope: !673)
!704 = !DILocation(line: 343, column: 3, scope: !673)
!705 = !DILocation(line: 345, column: 15, scope: !683)
!706 = !DILocation(line: 345, column: 11, scope: !683)
!707 = !DILocation(line: 346, column: 11, scope: !683)
!708 = !DILocation(line: 355, column: 11, scope: !709)
!709 = distinct !DILexicalBlock(scope: !683, file: !3, line: 349, column: 9)
!710 = !DILocation(line: 357, column: 9, scope: !709)
!711 = !DILocation(line: 359, column: 9, scope: !709)
!712 = !DILocation(line: 362, column: 11, scope: !709)
!713 = !DILocation(line: 366, column: 7, scope: !714)
!714 = distinct !DILexicalBlock(scope: !673, file: !3, line: 366, column: 7)
!715 = !{!716, !716, i64 0}
!716 = !{!"int", !629, i64 0}
!717 = !DILocation(line: 366, column: 14, scope: !714)
!718 = !DILocation(line: 366, column: 7, scope: !673)
!719 = !DILocation(line: 367, column: 18, scope: !714)
!720 = !DILocation(line: 367, column: 5, scope: !714)
!721 = !DILocation(line: 369, column: 7, scope: !722)
!722 = distinct !DILexicalBlock(scope: !673, file: !3, line: 369, column: 7)
!723 = !DILocation(line: 369, column: 7, scope: !673)
!724 = !DILocation(line: 302, column: 3, scope: !725, inlinedAt: !772)
!725 = distinct !DISubprogram(name: "logical_getcwd", scope: !3, file: !3, line: 300, type: !726, isLocal: true, isDefinition: true, scopeLine: 301, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !728)
!726 = !DISubroutineType(types: !727)
!727 = !{!26}
!728 = !{!729, !769, !770, !771}
!729 = !DILocalVariable(name: "st1", scope: !725, file: !3, line: 302, type: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !731, line: 46, size: 1152, elements: !732)
!731 = !DIFile(filename: "/usr/include/bits/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!732 = !{!733, !736, !738, !740, !742, !744, !746, !747, !748, !751, !753, !755, !763, !764, !765}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !730, file: !731, line: 48, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !735, line: 143, baseType: !30)
!735 = !DIFile(filename: "/usr/include/bits/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!736 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !730, file: !731, line: 53, baseType: !737, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !735, line: 146, baseType: !30)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !730, file: !731, line: 61, baseType: !739, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !735, line: 149, baseType: !30)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !730, file: !731, line: 62, baseType: !741, size: 32, offset: 192)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !735, line: 148, baseType: !7)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !730, file: !731, line: 64, baseType: !743, size: 32, offset: 224)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !735, line: 144, baseType: !7)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !730, file: !731, line: 65, baseType: !745, size: 32, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !735, line: 145, baseType: !7)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !730, file: !731, line: 67, baseType: !41, size: 32, offset: 288)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !730, file: !731, line: 69, baseType: !734, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !730, file: !731, line: 74, baseType: !749, size: 64, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !735, line: 150, baseType: !750)
!750 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !730, file: !731, line: 78, baseType: !752, size: 64, offset: 448)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !735, line: 172, baseType: !750)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !730, file: !731, line: 80, baseType: !754, size: 64, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !735, line: 177, baseType: !750)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !730, file: !731, line: 91, baseType: !756, size: 128, offset: 576)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !757, line: 9, size: 128, elements: !758)
!757 = !DIFile(filename: "/usr/include/bits/types/struct_timespec.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!758 = !{!759, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !756, file: !757, line: 11, baseType: !760, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !735, line: 158, baseType: !750)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !756, file: !757, line: 12, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !735, line: 194, baseType: !750)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !730, file: !731, line: 92, baseType: !756, size: 128, offset: 704)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !730, file: !731, line: 93, baseType: !756, size: 128, offset: 832)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !730, file: !731, line: 106, baseType: !766, size: 192, offset: 960)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !762, size: 192, elements: !767)
!767 = !{!768}
!768 = !DISubrange(count: 3)
!769 = !DILocalVariable(name: "st2", scope: !725, file: !3, line: 303, type: !730)
!770 = !DILocalVariable(name: "wd", scope: !725, file: !3, line: 304, type: !26)
!771 = !DILocalVariable(name: "p", scope: !725, file: !3, line: 305, type: !26)
!772 = distinct !DILocation(line: 371, column: 12, scope: !773)
!773 = distinct !DILexicalBlock(scope: !722, file: !3, line: 370, column: 5)
!774 = !DILocation(line: 303, column: 3, scope: !725, inlinedAt: !772)
!775 = !DILocation(line: 304, column: 14, scope: !725, inlinedAt: !772)
!776 = !DILocation(line: 304, column: 9, scope: !725, inlinedAt: !772)
!777 = !DILocation(line: 308, column: 8, scope: !778, inlinedAt: !772)
!778 = distinct !DILexicalBlock(scope: !725, file: !3, line: 308, column: 7)
!779 = !DILocation(line: 308, column: 11, scope: !778, inlinedAt: !772)
!780 = !DILocation(line: 308, column: 14, scope: !778, inlinedAt: !772)
!781 = !{!629, !629, i64 0}
!782 = !DILocation(line: 308, column: 20, scope: !778, inlinedAt: !772)
!783 = !DILocation(line: 308, column: 7, scope: !725, inlinedAt: !772)
!784 = !DILocation(line: 305, column: 9, scope: !725, inlinedAt: !772)
!785 = !DILocation(line: 311, column: 15, scope: !725, inlinedAt: !772)
!786 = !DILocation(line: 311, column: 3, scope: !725, inlinedAt: !772)
!787 = !DILocation(line: 313, column: 12, scope: !788, inlinedAt: !772)
!788 = distinct !DILexicalBlock(scope: !789, file: !3, line: 313, column: 11)
!789 = distinct !DILexicalBlock(scope: !725, file: !3, line: 312, column: 5)
!790 = !DILocation(line: 313, column: 17, scope: !788, inlinedAt: !772)
!791 = !DILocation(line: 314, column: 32, scope: !788, inlinedAt: !772)
!792 = !DILocation(line: 314, column: 37, scope: !788, inlinedAt: !772)
!793 = !DILocation(line: 316, column: 8, scope: !789, inlinedAt: !772)
!794 = distinct !{!794, !795, !796}
!795 = !DILocation(line: 311, column: 3, scope: !725)
!796 = !DILocation(line: 317, column: 5, scope: !725)
!797 = !DILocation(line: 302, column: 15, scope: !725, inlinedAt: !772)
!798 = !DILocalVariable(name: "__path", arg: 1, scope: !799, file: !800, line: 453, type: !38)
!799 = distinct !DISubprogram(name: "stat", scope: !800, file: !800, line: 453, type: !801, isLocal: false, isDefinition: true, scopeLine: 454, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !804)
!800 = !DIFile(filename: "/usr/include/sys/stat.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!801 = !DISubroutineType(types: !802)
!802 = !{!41, !38, !803}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!804 = !{!798, !805}
!805 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !799, file: !800, line: 453, type: !803)
!806 = !DILocation(line: 453, column: 1, scope: !799, inlinedAt: !807)
!807 = distinct !DILocation(line: 320, column: 7, scope: !808, inlinedAt: !772)
!808 = distinct !DILexicalBlock(scope: !725, file: !3, line: 320, column: 7)
!809 = !DILocation(line: 455, column: 10, scope: !799, inlinedAt: !807)
!810 = !DILocation(line: 320, column: 23, scope: !808, inlinedAt: !772)
!811 = !DILocation(line: 320, column: 28, scope: !808, inlinedAt: !772)
!812 = !DILocation(line: 303, column: 15, scope: !725, inlinedAt: !772)
!813 = !DILocation(line: 453, column: 1, scope: !799, inlinedAt: !814)
!814 = distinct !DILocation(line: 320, column: 31, scope: !808, inlinedAt: !772)
!815 = !DILocation(line: 455, column: 10, scope: !799, inlinedAt: !814)
!816 = !DILocation(line: 320, column: 48, scope: !808, inlinedAt: !772)
!817 = !DILocation(line: 320, column: 53, scope: !808, inlinedAt: !772)
!818 = !DILocation(line: 320, column: 56, scope: !808, inlinedAt: !772)
!819 = !{!820, !821, i64 8}
!820 = !{!"stat", !821, i64 0, !821, i64 8, !821, i64 16, !716, i64 24, !716, i64 28, !716, i64 32, !716, i64 36, !821, i64 40, !821, i64 48, !821, i64 56, !821, i64 64, !822, i64 72, !822, i64 88, !822, i64 104, !629, i64 120}
!821 = !{!"long", !629, i64 0}
!822 = !{!"timespec", !821, i64 0, !821, i64 8}
!823 = !{!820, !821, i64 0}
!824 = !DILocation(line: 320, column: 7, scope: !725, inlinedAt: !772)
!825 = !DILocation(line: 323, column: 1, scope: !725, inlinedAt: !772)
!826 = !DILocation(line: 329, column: 9, scope: !673)
!827 = !DILocation(line: 372, column: 11, scope: !773)
!828 = !DILocation(line: 374, column: 11, scope: !829)
!829 = distinct !DILexicalBlock(scope: !830, file: !3, line: 373, column: 9)
!830 = distinct !DILexicalBlock(scope: !773, file: !3, line: 372, column: 11)
!831 = !DILocation(line: 375, column: 11, scope: !829)
!832 = !DILocation(line: 379, column: 8, scope: !673)
!833 = !DILocation(line: 380, column: 10, scope: !686)
!834 = !DILocation(line: 380, column: 7, scope: !673)
!835 = !DILocation(line: 382, column: 7, scope: !836)
!836 = distinct !DILexicalBlock(scope: !686, file: !3, line: 381, column: 5)
!837 = !DILocation(line: 383, column: 7, scope: !836)
!838 = !DILocation(line: 384, column: 5, scope: !836)
!839 = !DILocation(line: 87, column: 25, scope: !840, inlinedAt: !845)
!840 = distinct !DISubprogram(name: "file_name_init", scope: !3, file: !3, line: 85, type: !841, isLocal: true, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !843)
!841 = !DISubroutineType(types: !842)
!842 = !{!687}
!843 = !{!844}
!844 = !DILocalVariable(name: "p", scope: !840, file: !3, line: 87, type: !687)
!845 = distinct !DILocation(line: 387, column: 37, scope: !685)
!846 = !DILocation(line: 87, column: 21, scope: !840, inlinedAt: !845)
!847 = !DILocation(line: 91, column: 6, scope: !840, inlinedAt: !845)
!848 = !DILocation(line: 91, column: 14, scope: !840, inlinedAt: !845)
!849 = !{!850, !821, i64 8}
!850 = !{!"file_name", !628, i64 0, !821, i64 8, !628, i64 16}
!851 = !DILocation(line: 93, column: 12, scope: !840, inlinedAt: !845)
!852 = !DILocation(line: 93, column: 6, scope: !840, inlinedAt: !845)
!853 = !DILocation(line: 93, column: 10, scope: !840, inlinedAt: !845)
!854 = !{!850, !628, i64 0}
!855 = !DILocation(line: 94, column: 21, scope: !840, inlinedAt: !845)
!856 = !DILocation(line: 94, column: 6, scope: !840, inlinedAt: !845)
!857 = !DILocation(line: 94, column: 12, scope: !840, inlinedAt: !845)
!858 = !{!850, !628, i64 16}
!859 = !DILocation(line: 95, column: 15, scope: !840, inlinedAt: !845)
!860 = !DILocation(line: 387, column: 25, scope: !685)
!861 = !DILocalVariable(name: "file_name", arg: 1, scope: !862, file: !3, line: 268, type: !687)
!862 = distinct !DISubprogram(name: "robust_getcwd", scope: !3, file: !3, line: 268, type: !863, isLocal: true, isDefinition: true, scopeLine: 269, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !865)
!863 = !DISubroutineType(types: !864)
!864 = !{null, !687}
!865 = !{!861, !866, !867, !876, !878}
!866 = !DILocalVariable(name: "height", scope: !862, file: !3, line: 270, type: !28)
!867 = !DILocalVariable(name: "dev_ino_buf", scope: !862, file: !3, line: 271, type: !868)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !869, line: 7, size: 128, elements: !870)
!869 = !DIFile(filename: "./lib/dev-ino.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!870 = !{!871, !874}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !868, file: !869, line: 9, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "ino_t", file: !873, line: 47, baseType: !737)
!873 = !DIFile(filename: "/usr/include/sys/types.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!874 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !868, file: !869, line: 10, baseType: !875, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !873, line: 59, baseType: !734)
!876 = !DILocalVariable(name: "root_dev_ino", scope: !862, file: !3, line: 272, type: !877)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!878 = !DILocalVariable(name: "dot_sb", scope: !862, file: !3, line: 273, type: !730)
!879 = !DILocation(line: 268, column: 34, scope: !862, inlinedAt: !880)
!880 = distinct !DILocation(line: 388, column: 7, scope: !685)
!881 = !DILocation(line: 270, column: 10, scope: !862, inlinedAt: !880)
!882 = !DILocation(line: 271, column: 3, scope: !862, inlinedAt: !880)
!883 = !DILocation(line: 271, column: 18, scope: !862, inlinedAt: !880)
!884 = !DILocation(line: 272, column: 34, scope: !862, inlinedAt: !880)
!885 = !DILocation(line: 272, column: 19, scope: !862, inlinedAt: !880)
!886 = !DILocation(line: 273, column: 3, scope: !862, inlinedAt: !880)
!887 = !DILocation(line: 275, column: 20, scope: !888, inlinedAt: !880)
!888 = distinct !DILexicalBlock(scope: !862, file: !3, line: 275, column: 7)
!889 = !DILocation(line: 275, column: 7, scope: !862, inlinedAt: !880)
!890 = !DILocation(line: 276, column: 5, scope: !888, inlinedAt: !880)
!891 = !DILocation(line: 273, column: 15, scope: !862, inlinedAt: !880)
!892 = !DILocation(line: 453, column: 1, scope: !799, inlinedAt: !893)
!893 = distinct !DILocation(line: 279, column: 7, scope: !894, inlinedAt: !880)
!894 = distinct !DILexicalBlock(scope: !862, file: !3, line: 279, column: 7)
!895 = !DILocation(line: 455, column: 10, scope: !799, inlinedAt: !893)
!896 = !DILocation(line: 279, column: 27, scope: !894, inlinedAt: !880)
!897 = !DILocation(line: 279, column: 7, scope: !862, inlinedAt: !880)
!898 = !DILocation(line: 285, column: 11, scope: !899, inlinedAt: !880)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 285, column: 11)
!900 = distinct !DILexicalBlock(scope: !862, file: !3, line: 283, column: 5)
!901 = !DILocation(line: 280, column: 5, scope: !894, inlinedAt: !880)
!902 = !DILocation(line: 0, scope: !900, inlinedAt: !880)
!903 = !{!904, !821, i64 0}
!904 = !{!"dev_ino", !821, i64 0, !821, i64 8}
!905 = !{!904, !821, i64 8}
!906 = !DILocation(line: 285, column: 11, scope: !900, inlinedAt: !880)
!907 = !DILocation(line: 288, column: 49, scope: !900, inlinedAt: !880)
!908 = !DILocalVariable(name: "dot_sb", arg: 1, scope: !909, file: !3, line: 153, type: !803)
!909 = distinct !DISubprogram(name: "find_dir_entry", scope: !3, file: !3, line: 153, type: !910, isLocal: true, isDefinition: true, scopeLine: 155, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !912)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !803, !687, !28}
!912 = !{!908, !913, !914, !915, !920, !921, !922, !923, !924, !937, !938, !939}
!913 = !DILocalVariable(name: "file_name", arg: 2, scope: !909, file: !3, line: 153, type: !687)
!914 = !DILocalVariable(name: "parent_height", arg: 3, scope: !909, file: !3, line: 154, type: !28)
!915 = !DILocalVariable(name: "dirp", scope: !909, file: !3, line: 156, type: !916)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !918, line: 127, baseType: !919)
!918 = !DIFile(filename: "/usr/include/dirent.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !918, line: 127, flags: DIFlagFwdDecl)
!920 = !DILocalVariable(name: "fd", scope: !909, file: !3, line: 157, type: !41)
!921 = !DILocalVariable(name: "parent_sb", scope: !909, file: !3, line: 158, type: !730)
!922 = !DILocalVariable(name: "use_lstat", scope: !909, file: !3, line: 159, type: !61)
!923 = !DILocalVariable(name: "found", scope: !909, file: !3, line: 160, type: !61)
!924 = !DILocalVariable(name: "dp", scope: !925, file: !3, line: 183, type: !926)
!925 = distinct !DILexicalBlock(scope: !909, file: !3, line: 182, column: 5)
!926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !927, size: 64)
!927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !928)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !929, line: 22, size: 2240, elements: !930)
!929 = !DIFile(filename: "/usr/include/bits/dirent.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!930 = !{!931, !932, !933, !934, !936}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !928, file: !929, line: 25, baseType: !737, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !928, file: !929, line: 26, baseType: !749, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !928, file: !929, line: 31, baseType: !102, size: 16, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !928, file: !929, line: 32, baseType: !935, size: 8, offset: 144)
!935 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !928, file: !929, line: 33, baseType: !127, size: 2048, offset: 152)
!937 = !DILocalVariable(name: "ent_sb", scope: !925, file: !3, line: 184, type: !730)
!938 = !DILocalVariable(name: "ino", scope: !925, file: !3, line: 185, type: !872)
!939 = !DILocalVariable(name: "e", scope: !940, file: !3, line: 193, type: !41)
!940 = distinct !DILexicalBlock(scope: !941, file: !3, line: 191, column: 13)
!941 = distinct !DILexicalBlock(scope: !942, file: !3, line: 190, column: 15)
!942 = distinct !DILexicalBlock(scope: !943, file: !3, line: 189, column: 9)
!943 = distinct !DILexicalBlock(scope: !925, file: !3, line: 188, column: 11)
!944 = !DILocation(line: 153, column: 30, scope: !909, inlinedAt: !945)
!945 = distinct !DILocation(line: 288, column: 7, scope: !900, inlinedAt: !880)
!946 = !DILocation(line: 153, column: 56, scope: !909, inlinedAt: !945)
!947 = !DILocation(line: 154, column: 24, scope: !909, inlinedAt: !945)
!948 = !DILocation(line: 158, column: 3, scope: !909, inlinedAt: !945)
!949 = !DILocation(line: 162, column: 10, scope: !909, inlinedAt: !945)
!950 = !DILocation(line: 156, column: 8, scope: !909, inlinedAt: !945)
!951 = !DILocation(line: 163, column: 12, scope: !952, inlinedAt: !945)
!952 = distinct !DILexicalBlock(scope: !909, file: !3, line: 163, column: 7)
!953 = !DILocation(line: 163, column: 7, scope: !909, inlinedAt: !945)
!954 = !DILocation(line: 164, column: 5, scope: !952, inlinedAt: !945)
!955 = !DILocation(line: 167, column: 8, scope: !909, inlinedAt: !945)
!956 = !DILocation(line: 157, column: 7, scope: !909, inlinedAt: !945)
!957 = !DILocation(line: 168, column: 10, scope: !958, inlinedAt: !945)
!958 = distinct !DILexicalBlock(scope: !909, file: !3, line: 168, column: 7)
!959 = !DILocation(line: 168, column: 8, scope: !958, inlinedAt: !945)
!960 = !DILocation(line: 168, column: 18, scope: !958, inlinedAt: !945)
!961 = !DILocation(line: 168, column: 32, scope: !958, inlinedAt: !945)
!962 = !DILocation(line: 168, column: 46, scope: !958, inlinedAt: !945)
!963 = !DILocation(line: 168, column: 7, scope: !909, inlinedAt: !945)
!964 = !DILocation(line: 169, column: 5, scope: !958, inlinedAt: !945)
!965 = !DILocation(line: 158, column: 15, scope: !909, inlinedAt: !945)
!966 = !DILocation(line: 172, column: 8, scope: !967, inlinedAt: !945)
!967 = distinct !DILexicalBlock(scope: !909, file: !3, line: 172, column: 7)
!968 = !DILocalVariable(name: "__fd", arg: 1, scope: !969, file: !800, line: 467, type: !41)
!969 = distinct !DISubprogram(name: "fstat", scope: !800, file: !800, line: 467, type: !970, isLocal: false, isDefinition: true, scopeLine: 468, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !972)
!970 = !DISubroutineType(types: !971)
!971 = !{!41, !41, !803}
!972 = !{!968, !973}
!973 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !969, file: !800, line: 467, type: !803)
!974 = !DILocation(line: 467, column: 1, scope: !969, inlinedAt: !975)
!975 = distinct !DILocation(line: 172, column: 18, scope: !967, inlinedAt: !945)
!976 = !DILocation(line: 469, column: 10, scope: !969, inlinedAt: !975)
!977 = !DILocation(line: 453, column: 1, scope: !799, inlinedAt: !978)
!978 = distinct !DILocation(line: 172, column: 43, scope: !967, inlinedAt: !945)
!979 = !DILocation(line: 455, column: 10, scope: !799, inlinedAt: !978)
!980 = !DILocation(line: 172, column: 67, scope: !967, inlinedAt: !945)
!981 = !DILocation(line: 172, column: 7, scope: !909, inlinedAt: !945)
!982 = !DILocation(line: 173, column: 5, scope: !967, inlinedAt: !945)
!983 = !DILocation(line: 178, column: 26, scope: !909, inlinedAt: !945)
!984 = !DILocation(line: 178, column: 44, scope: !909, inlinedAt: !945)
!985 = !DILocation(line: 178, column: 33, scope: !909, inlinedAt: !945)
!986 = !DILocation(line: 160, column: 8, scope: !909, inlinedAt: !945)
!987 = !DILocation(line: 184, column: 7, scope: !925, inlinedAt: !945)
!988 = !DILocation(line: 187, column: 7, scope: !925, inlinedAt: !945)
!989 = !DILocation(line: 187, column: 13, scope: !925, inlinedAt: !945)
!990 = !DILocalVariable(name: "dirp", arg: 1, scope: !991, file: !21, line: 278, type: !916)
!991 = distinct !DISubprogram(name: "readdir_ignoring_dot_and_dotdot", scope: !21, file: !21, line: 278, type: !992, isLocal: true, isDefinition: true, scopeLine: 279, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !994)
!992 = !DISubroutineType(types: !993)
!993 = !{!926, !916}
!994 = !{!990, !995}
!995 = !DILocalVariable(name: "dp", scope: !996, file: !21, line: 282, type: !926)
!996 = distinct !DILexicalBlock(scope: !991, file: !21, line: 281, column: 5)
!997 = !DILocation(line: 278, column: 39, scope: !991, inlinedAt: !998)
!998 = distinct !DILocation(line: 188, column: 17, scope: !943, inlinedAt: !945)
!999 = !DILocation(line: 282, column: 33, scope: !996, inlinedAt: !998)
!1000 = !DILocation(line: 282, column: 28, scope: !996, inlinedAt: !998)
!1001 = !DILocation(line: 283, column: 14, scope: !1002, inlinedAt: !998)
!1002 = distinct !DILexicalBlock(scope: !996, file: !21, line: 283, column: 11)
!1003 = !DILocation(line: 283, column: 22, scope: !1002, inlinedAt: !998)
!1004 = !DILocation(line: 283, column: 42, scope: !1002, inlinedAt: !998)
!1005 = !DILocalVariable(name: "file_name", arg: 1, scope: !1006, file: !21, line: 265, type: !38)
!1006 = distinct !DISubprogram(name: "dot_or_dotdot", scope: !21, file: !21, line: 265, type: !1007, isLocal: true, isDefinition: true, scopeLine: 266, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1009)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{!61, !38}
!1009 = !{!1005, !1010}
!1010 = !DILocalVariable(name: "sep", scope: !1011, file: !21, line: 269, type: !27)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !21, line: 268, column: 5)
!1012 = distinct !DILexicalBlock(scope: !1006, file: !21, line: 267, column: 7)
!1013 = !DILocation(line: 265, column: 28, scope: !1006, inlinedAt: !1014)
!1014 = distinct !DILocation(line: 283, column: 27, scope: !1002, inlinedAt: !998)
!1015 = !DILocation(line: 267, column: 7, scope: !1012, inlinedAt: !1014)
!1016 = !DILocation(line: 267, column: 20, scope: !1012, inlinedAt: !1014)
!1017 = !DILocation(line: 267, column: 7, scope: !1006, inlinedAt: !1014)
!1018 = !DILocation(line: 269, column: 29, scope: !1011, inlinedAt: !1014)
!1019 = !DILocation(line: 269, column: 42, scope: !1011, inlinedAt: !1014)
!1020 = !DILocation(line: 269, column: 18, scope: !1011, inlinedAt: !1014)
!1021 = !DILocation(line: 269, column: 12, scope: !1011, inlinedAt: !1014)
!1022 = !DILocation(line: 283, column: 11, scope: !996, inlinedAt: !998)
!1023 = !DILocation(line: 183, column: 28, scope: !925, inlinedAt: !945)
!1024 = !DILocation(line: 190, column: 15, scope: !941, inlinedAt: !945)
!1025 = !DILocation(line: 190, column: 15, scope: !942, inlinedAt: !945)
!1026 = !DILocation(line: 193, column: 19, scope: !940, inlinedAt: !945)
!1027 = !DILocation(line: 194, column: 15, scope: !940, inlinedAt: !945)
!1028 = !DILocation(line: 195, column: 21, scope: !940, inlinedAt: !945)
!1029 = !DILocation(line: 226, column: 5, scope: !909, inlinedAt: !945)
!1030 = !DILocation(line: 228, column: 20, scope: !1031, inlinedAt: !945)
!1031 = distinct !DILexicalBlock(scope: !909, file: !3, line: 228, column: 7)
!1032 = !DILocation(line: 203, column: 13, scope: !925, inlinedAt: !945)
!1033 = !{!1034, !821, i64 0}
!1034 = !{!"dirent", !821, i64 0, !821, i64 8, !1035, i64 16, !629, i64 18, !629, i64 19}
!1035 = !{!"short", !629, i64 0}
!1036 = !DILocation(line: 185, column: 13, scope: !925, inlinedAt: !945)
!1037 = !DILocation(line: 205, column: 15, scope: !1038, inlinedAt: !945)
!1038 = distinct !DILexicalBlock(scope: !925, file: !3, line: 205, column: 11)
!1039 = !DILocation(line: 205, column: 38, scope: !1038, inlinedAt: !945)
!1040 = !DILocation(line: 184, column: 19, scope: !925, inlinedAt: !945)
!1041 = !DILocalVariable(name: "__path", arg: 1, scope: !1042, file: !800, line: 460, type: !38)
!1042 = distinct !DISubprogram(name: "lstat", scope: !800, file: !800, line: 460, type: !801, isLocal: false, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1043)
!1043 = !{!1041, !1044}
!1044 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1042, file: !800, line: 460, type: !803)
!1045 = !DILocation(line: 460, column: 1, scope: !1042, inlinedAt: !1046)
!1046 = distinct !DILocation(line: 207, column: 15, scope: !1047, inlinedAt: !945)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 207, column: 15)
!1048 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 206, column: 9)
!1049 = !DILocation(line: 462, column: 10, scope: !1042, inlinedAt: !1046)
!1050 = !DILocation(line: 207, column: 43, scope: !1047, inlinedAt: !945)
!1051 = !DILocation(line: 207, column: 15, scope: !1048, inlinedAt: !945)
!1052 = distinct !{!1052, !1053, !1054}
!1053 = !DILocation(line: 181, column: 3, scope: !909)
!1054 = !DILocation(line: 226, column: 5, scope: !909)
!1055 = !DILocation(line: 212, column: 24, scope: !1048, inlinedAt: !945)
!1056 = !DILocation(line: 213, column: 9, scope: !1048, inlinedAt: !945)
!1057 = !DILocation(line: 0, scope: !925, inlinedAt: !945)
!1058 = !DILocation(line: 215, column: 26, scope: !1059, inlinedAt: !945)
!1059 = distinct !DILexicalBlock(scope: !925, file: !3, line: 215, column: 11)
!1060 = !DILocation(line: 215, column: 15, scope: !1059, inlinedAt: !945)
!1061 = !DILocation(line: 215, column: 11, scope: !925, inlinedAt: !945)
!1062 = !DILocation(line: 220, column: 24, scope: !1063, inlinedAt: !945)
!1063 = distinct !DILexicalBlock(scope: !925, file: !3, line: 220, column: 12)
!1064 = !DILocation(line: 220, column: 34, scope: !1063, inlinedAt: !945)
!1065 = !DILocation(line: 220, column: 52, scope: !1063, inlinedAt: !945)
!1066 = !DILocation(line: 220, column: 41, scope: !1063, inlinedAt: !945)
!1067 = !DILocation(line: 220, column: 12, scope: !925, inlinedAt: !945)
!1068 = !DILocation(line: 222, column: 53, scope: !1069, inlinedAt: !945)
!1069 = distinct !DILexicalBlock(scope: !1063, file: !3, line: 221, column: 9)
!1070 = !DILocalVariable(name: "p", arg: 1, scope: !1071, file: !3, line: 101, type: !687)
!1071 = distinct !DISubprogram(name: "file_name_prepend", scope: !3, file: !3, line: 101, type: !1072, isLocal: true, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1074)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{null, !687, !38, !28}
!1074 = !{!1070, !1075, !1076, !1077, !1078, !1081, !1082}
!1075 = !DILocalVariable(name: "s", arg: 2, scope: !1071, file: !3, line: 101, type: !38)
!1076 = !DILocalVariable(name: "s_len", arg: 3, scope: !1071, file: !3, line: 101, type: !28)
!1077 = !DILocalVariable(name: "n_free", scope: !1071, file: !3, line: 103, type: !28)
!1078 = !DILocalVariable(name: "half", scope: !1079, file: !3, line: 106, type: !28)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 105, column: 5)
!1080 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 104, column: 7)
!1081 = !DILocalVariable(name: "q", scope: !1079, file: !3, line: 111, type: !26)
!1082 = !DILocalVariable(name: "n_used", scope: !1079, file: !3, line: 112, type: !28)
!1083 = !DILocation(line: 101, column: 38, scope: !1071, inlinedAt: !1084)
!1084 = distinct !DILocation(line: 222, column: 11, scope: !1069, inlinedAt: !945)
!1085 = !DILocation(line: 101, column: 53, scope: !1071, inlinedAt: !1084)
!1086 = !DILocation(line: 101, column: 63, scope: !1071, inlinedAt: !1084)
!1087 = !DILocation(line: 103, column: 33, scope: !1071, inlinedAt: !1084)
!1088 = !DILocation(line: 103, column: 28, scope: !1071, inlinedAt: !1084)
!1089 = !DILocation(line: 103, column: 10, scope: !1071, inlinedAt: !1084)
!1090 = !DILocation(line: 104, column: 18, scope: !1080, inlinedAt: !1084)
!1091 = !DILocation(line: 104, column: 14, scope: !1080, inlinedAt: !1084)
!1092 = !DILocation(line: 104, column: 7, scope: !1071, inlinedAt: !1084)
!1093 = !DILocation(line: 106, column: 24, scope: !1079, inlinedAt: !1084)
!1094 = !DILocation(line: 106, column: 36, scope: !1079, inlinedAt: !1084)
!1095 = !DILocation(line: 106, column: 14, scope: !1079, inlinedAt: !1084)
!1096 = !DILocalVariable(name: "n", arg: 1, scope: !1097, file: !168, line: 99, type: !28)
!1097 = distinct !DISubprogram(name: "xnmalloc", scope: !168, file: !168, line: 99, type: !1098, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1100)
!1098 = !DISubroutineType(types: !1099)
!1099 = !{!25, !28, !28}
!1100 = !{!1096, !1101}
!1101 = !DILocalVariable(name: "s", arg: 2, scope: !1097, file: !168, line: 99, type: !28)
!1102 = !DILocation(line: 99, column: 18, scope: !1097, inlinedAt: !1103)
!1103 = distinct !DILocation(line: 111, column: 17, scope: !1079, inlinedAt: !1084)
!1104 = !DILocation(line: 99, column: 28, scope: !1097, inlinedAt: !1103)
!1105 = !DILocation(line: 101, column: 7, scope: !1106, inlinedAt: !1103)
!1106 = distinct !DILexicalBlock(scope: !1097, file: !168, line: 101, column: 7)
!1107 = !DILocation(line: 101, column: 7, scope: !1097, inlinedAt: !1103)
!1108 = !DILocation(line: 102, column: 5, scope: !1106, inlinedAt: !1103)
!1109 = !DILocation(line: 103, column: 21, scope: !1097, inlinedAt: !1103)
!1110 = !DILocation(line: 103, column: 10, scope: !1097, inlinedAt: !1103)
!1111 = !DILocation(line: 111, column: 13, scope: !1079, inlinedAt: !1084)
!1112 = !DILocation(line: 112, column: 34, scope: !1079, inlinedAt: !1084)
!1113 = !DILocation(line: 112, column: 14, scope: !1079, inlinedAt: !1084)
!1114 = !DILocation(line: 113, column: 20, scope: !1079, inlinedAt: !1084)
!1115 = !DILocation(line: 113, column: 31, scope: !1079, inlinedAt: !1084)
!1116 = !DILocation(line: 113, column: 16, scope: !1079, inlinedAt: !1084)
!1117 = !DILocation(line: 114, column: 32, scope: !1079, inlinedAt: !1084)
!1118 = !DILocation(line: 114, column: 7, scope: !1079, inlinedAt: !1084)
!1119 = !DILocation(line: 115, column: 7, scope: !1079, inlinedAt: !1084)
!1120 = !DILocation(line: 116, column: 14, scope: !1079, inlinedAt: !1084)
!1121 = !DILocation(line: 117, column: 18, scope: !1079, inlinedAt: !1084)
!1122 = !DILocation(line: 118, column: 5, scope: !1079, inlinedAt: !1084)
!1123 = !DILocation(line: 120, column: 12, scope: !1071, inlinedAt: !1084)
!1124 = !DILocation(line: 121, column: 15, scope: !1071, inlinedAt: !1084)
!1125 = !DILocation(line: 122, column: 14, scope: !1071, inlinedAt: !1084)
!1126 = !DILocation(line: 122, column: 20, scope: !1071, inlinedAt: !1084)
!1127 = !DILocation(line: 122, column: 3, scope: !1071, inlinedAt: !1084)
!1128 = !DILocation(line: 224, column: 11, scope: !1069, inlinedAt: !945)
!1129 = !DILocation(line: 228, column: 23, scope: !1031, inlinedAt: !945)
!1130 = !DILocation(line: 228, column: 39, scope: !1031, inlinedAt: !945)
!1131 = !DILocation(line: 228, column: 7, scope: !909, inlinedAt: !945)
!1132 = !DILocation(line: 232, column: 7, scope: !1133, inlinedAt: !945)
!1133 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 229, column: 5)
!1134 = !DILocation(line: 236, column: 10, scope: !1135, inlinedAt: !945)
!1135 = distinct !DILexicalBlock(scope: !909, file: !3, line: 236, column: 8)
!1136 = !DILocation(line: 236, column: 8, scope: !909, inlinedAt: !945)
!1137 = !DILocation(line: 237, column: 5, scope: !1135, inlinedAt: !945)
!1138 = !DILocation(line: 241, column: 13, scope: !909, inlinedAt: !945)
!1139 = !{i64 0, i64 8, !1140, i64 8, i64 8, !1140, i64 16, i64 8, !1140, i64 24, i64 4, !715, i64 28, i64 4, !715, i64 32, i64 4, !715, i64 36, i64 4, !715, i64 40, i64 8, !1140, i64 48, i64 8, !1140, i64 56, i64 8, !1140, i64 64, i64 8, !1140, i64 72, i64 8, !1140, i64 80, i64 8, !1140, i64 88, i64 8, !1140, i64 96, i64 8, !1140, i64 104, i64 8, !1140, i64 112, i64 8, !1140, i64 120, i64 24, !781}
!1140 = !{!821, !821, i64 0}
!1141 = !DILocation(line: 242, column: 1, scope: !909, inlinedAt: !945)
!1142 = !DILocation(line: 282, column: 3, scope: !862, inlinedAt: !880)
!1143 = distinct !{!1143, !1144, !1145}
!1144 = !DILocation(line: 282, column: 3, scope: !862)
!1145 = !DILocation(line: 289, column: 5, scope: !862)
!1146 = !DILocation(line: 292, column: 7, scope: !1147, inlinedAt: !880)
!1147 = distinct !DILexicalBlock(scope: !862, file: !3, line: 292, column: 7)
!1148 = !DILocation(line: 292, column: 27, scope: !1147, inlinedAt: !880)
!1149 = !DILocation(line: 292, column: 7, scope: !862, inlinedAt: !880)
!1150 = !DILocation(line: 101, column: 38, scope: !1071, inlinedAt: !1151)
!1151 = distinct !DILocation(line: 293, column: 5, scope: !1147, inlinedAt: !880)
!1152 = !DILocation(line: 101, column: 53, scope: !1071, inlinedAt: !1151)
!1153 = !DILocation(line: 101, column: 63, scope: !1071, inlinedAt: !1151)
!1154 = !DILocation(line: 103, column: 33, scope: !1071, inlinedAt: !1151)
!1155 = !DILocation(line: 104, column: 14, scope: !1080, inlinedAt: !1151)
!1156 = !DILocation(line: 104, column: 7, scope: !1071, inlinedAt: !1151)
!1157 = !DILocation(line: 106, column: 24, scope: !1079, inlinedAt: !1151)
!1158 = !DILocation(line: 106, column: 36, scope: !1079, inlinedAt: !1151)
!1159 = !DILocation(line: 106, column: 14, scope: !1079, inlinedAt: !1151)
!1160 = !DILocation(line: 99, column: 18, scope: !1097, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 111, column: 17, scope: !1079, inlinedAt: !1151)
!1162 = !DILocation(line: 99, column: 28, scope: !1097, inlinedAt: !1161)
!1163 = !DILocation(line: 101, column: 7, scope: !1106, inlinedAt: !1161)
!1164 = !DILocation(line: 101, column: 7, scope: !1097, inlinedAt: !1161)
!1165 = !DILocation(line: 102, column: 5, scope: !1106, inlinedAt: !1161)
!1166 = !DILocation(line: 103, column: 21, scope: !1097, inlinedAt: !1161)
!1167 = !DILocation(line: 103, column: 10, scope: !1097, inlinedAt: !1161)
!1168 = !DILocation(line: 111, column: 13, scope: !1079, inlinedAt: !1151)
!1169 = !DILocation(line: 112, column: 14, scope: !1079, inlinedAt: !1151)
!1170 = !DILocation(line: 113, column: 20, scope: !1079, inlinedAt: !1151)
!1171 = !DILocation(line: 113, column: 31, scope: !1079, inlinedAt: !1151)
!1172 = !DILocation(line: 113, column: 16, scope: !1079, inlinedAt: !1151)
!1173 = !DILocation(line: 114, column: 7, scope: !1079, inlinedAt: !1151)
!1174 = !DILocation(line: 115, column: 7, scope: !1079, inlinedAt: !1151)
!1175 = !DILocation(line: 116, column: 14, scope: !1079, inlinedAt: !1151)
!1176 = !DILocation(line: 117, column: 18, scope: !1079, inlinedAt: !1151)
!1177 = !DILocation(line: 118, column: 5, scope: !1079, inlinedAt: !1151)
!1178 = !DILocation(line: 120, column: 12, scope: !1071, inlinedAt: !1151)
!1179 = !DILocation(line: 121, column: 15, scope: !1071, inlinedAt: !1151)
!1180 = !DILocation(line: 293, column: 5, scope: !1147, inlinedAt: !880)
!1181 = !DILocation(line: 389, column: 24, scope: !685)
!1182 = !DILocation(line: 294, column: 1, scope: !862, inlinedAt: !880)
!1183 = !DILocation(line: 389, column: 7, scope: !685)
!1184 = !DILocalVariable(name: "p", arg: 1, scope: !1185, file: !3, line: 78, type: !687)
!1185 = distinct !DISubprogram(name: "file_name_free", scope: !3, file: !3, line: 78, type: !863, isLocal: true, isDefinition: true, scopeLine: 79, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1186)
!1186 = !{!1184}
!1187 = !DILocation(line: 78, column: 35, scope: !1185, inlinedAt: !1188)
!1188 = distinct !DILocation(line: 390, column: 7, scope: !685)
!1189 = !DILocation(line: 80, column: 12, scope: !1185, inlinedAt: !1188)
!1190 = !DILocation(line: 80, column: 3, scope: !1185, inlinedAt: !1188)
!1191 = !DILocation(line: 81, column: 3, scope: !1185, inlinedAt: !1188)
!1192 = !DILocation(line: 394, column: 1, scope: !673)
!1193 = distinct !DISubprogram(name: "nth_parent", scope: !3, file: !3, line: 127, type: !1194, isLocal: true, isDefinition: true, scopeLine: 128, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1196)
!1194 = !DISubroutineType(types: !1195)
!1195 = !{!26, !28}
!1196 = !{!1197, !1198, !1199, !1200}
!1197 = !DILocalVariable(name: "n", arg: 1, scope: !1193, file: !3, line: 127, type: !28)
!1198 = !DILocalVariable(name: "buf", scope: !1193, file: !3, line: 129, type: !26)
!1199 = !DILocalVariable(name: "p", scope: !1193, file: !3, line: 130, type: !26)
!1200 = !DILocalVariable(name: "i", scope: !1201, file: !3, line: 132, type: !28)
!1201 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 132, column: 3)
!1202 = !DILocation(line: 127, column: 20, scope: !1193)
!1203 = !DILocation(line: 99, column: 18, scope: !1097, inlinedAt: !1204)
!1204 = distinct !DILocation(line: 129, column: 15, scope: !1193)
!1205 = !DILocation(line: 99, column: 28, scope: !1097, inlinedAt: !1204)
!1206 = !DILocation(line: 101, column: 7, scope: !1106, inlinedAt: !1204)
!1207 = !DILocation(line: 101, column: 7, scope: !1097, inlinedAt: !1204)
!1208 = !DILocation(line: 102, column: 5, scope: !1106, inlinedAt: !1204)
!1209 = !DILocation(line: 103, column: 21, scope: !1097, inlinedAt: !1204)
!1210 = !DILocation(line: 103, column: 10, scope: !1097, inlinedAt: !1204)
!1211 = !DILocation(line: 129, column: 9, scope: !1193)
!1212 = !DILocation(line: 130, column: 9, scope: !1193)
!1213 = !DILocation(line: 132, column: 15, scope: !1201)
!1214 = !DILocation(line: 132, column: 24, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 132, column: 3)
!1216 = !DILocation(line: 132, column: 3, scope: !1201)
!1217 = !DILocation(line: 134, column: 7, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 133, column: 5)
!1219 = !DILocation(line: 135, column: 9, scope: !1218)
!1220 = distinct !{!1220, !1221}
!1221 = !{!"llvm.loop.unroll.disable"}
!1222 = !DILocation(line: 137, column: 3, scope: !1193)
!1223 = !DILocation(line: 0, scope: !1218)
!1224 = !DILocation(line: 137, column: 9, scope: !1193)
!1225 = !DILocation(line: 138, column: 3, scope: !1193)
!1226 = distinct !{!1226, !1216, !1227}
!1227 = !DILocation(line: 136, column: 5, scope: !1201)
!1228 = distinct !DISubprogram(name: "close_stdout_set_file_name", scope: !60, file: !60, line: 51, type: !602, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !55, retainedNodes: !1229)
!1229 = !{!1230}
!1230 = !DILocalVariable(name: "file", arg: 1, scope: !1228, file: !60, line: 51, type: !38)
!1231 = !DILocation(line: 51, column: 41, scope: !1228)
!1232 = !DILocation(line: 53, column: 13, scope: !1228)
!1233 = !DILocation(line: 54, column: 1, scope: !1228)
!1234 = distinct !DISubprogram(name: "close_stdout_set_ignore_EPIPE", scope: !60, file: !60, line: 88, type: !1235, isLocal: false, isDefinition: true, scopeLine: 89, flags: DIFlagPrototyped, isOptimized: true, unit: !55, retainedNodes: !1237)
!1235 = !DISubroutineType(types: !1236)
!1236 = !{null, !61}
!1237 = !{!1238}
!1238 = !DILocalVariable(name: "ignore", arg: 1, scope: !1234, file: !60, line: 88, type: !61)
!1239 = !DILocation(line: 88, column: 37, scope: !1234)
!1240 = !DILocation(line: 90, column: 16, scope: !1234)
!1241 = !{!1242, !1242, i64 0}
!1242 = !{!"_Bool", !629, i64 0}
!1243 = !DILocation(line: 91, column: 1, scope: !1234)
!1244 = distinct !DISubprogram(name: "close_stdout", scope: !60, file: !60, line: 117, type: !1245, isLocal: false, isDefinition: true, scopeLine: 118, flags: DIFlagPrototyped, isOptimized: true, unit: !55, retainedNodes: !1247)
!1245 = !DISubroutineType(types: !1246)
!1246 = !{null}
!1247 = !{!1248}
!1248 = !DILocalVariable(name: "write_error", scope: !1249, file: !60, line: 122, type: !38)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !60, line: 121, column: 5)
!1250 = distinct !DILexicalBlock(scope: !1244, file: !60, line: 119, column: 7)
!1251 = !DILocation(line: 119, column: 21, scope: !1250)
!1252 = !DILocation(line: 119, column: 7, scope: !1250)
!1253 = !DILocation(line: 119, column: 29, scope: !1250)
!1254 = !DILocation(line: 120, column: 7, scope: !1250)
!1255 = !DILocation(line: 120, column: 12, scope: !1250)
!1256 = !{i8 0, i8 2}
!1257 = !DILocation(line: 120, column: 25, scope: !1250)
!1258 = !DILocation(line: 120, column: 28, scope: !1250)
!1259 = !DILocation(line: 120, column: 34, scope: !1250)
!1260 = !DILocation(line: 119, column: 7, scope: !1244)
!1261 = !DILocation(line: 122, column: 33, scope: !1249)
!1262 = !DILocation(line: 122, column: 19, scope: !1249)
!1263 = !DILocation(line: 123, column: 11, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1249, file: !60, line: 123, column: 11)
!1265 = !DILocation(line: 0, scope: !1264)
!1266 = !DILocation(line: 123, column: 11, scope: !1249)
!1267 = !DILocation(line: 124, column: 36, scope: !1264)
!1268 = !DILocation(line: 124, column: 9, scope: !1264)
!1269 = !DILocation(line: 127, column: 9, scope: !1264)
!1270 = !DILocation(line: 129, column: 14, scope: !1249)
!1271 = !DILocation(line: 129, column: 7, scope: !1249)
!1272 = !DILocation(line: 134, column: 42, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1244, file: !60, line: 134, column: 7)
!1274 = !DILocation(line: 134, column: 28, scope: !1273)
!1275 = !DILocation(line: 134, column: 50, scope: !1273)
!1276 = !DILocation(line: 134, column: 7, scope: !1244)
!1277 = !DILocation(line: 135, column: 12, scope: !1273)
!1278 = !DILocation(line: 135, column: 5, scope: !1273)
!1279 = !DILocation(line: 136, column: 1, scope: !1244)
!1280 = distinct !DISubprogram(name: "set_program_name", scope: !75, file: !75, line: 39, type: !602, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !71, retainedNodes: !1281)
!1281 = !{!1282, !1283, !1284}
!1282 = !DILocalVariable(name: "argv0", arg: 1, scope: !1280, file: !75, line: 39, type: !38)
!1283 = !DILocalVariable(name: "slash", scope: !1280, file: !75, line: 46, type: !38)
!1284 = !DILocalVariable(name: "base", scope: !1280, file: !75, line: 47, type: !38)
!1285 = !DILocation(line: 39, column: 31, scope: !1280)
!1286 = !DILocation(line: 51, column: 13, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1280, file: !75, line: 51, column: 7)
!1288 = !DILocation(line: 51, column: 7, scope: !1280)
!1289 = !DILocation(line: 55, column: 14, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !75, line: 52, column: 5)
!1291 = !DILocation(line: 54, column: 7, scope: !1290)
!1292 = !DILocation(line: 56, column: 7, scope: !1290)
!1293 = !DILocation(line: 59, column: 11, scope: !1280)
!1294 = !DILocation(line: 46, column: 15, scope: !1280)
!1295 = !DILocation(line: 60, column: 17, scope: !1280)
!1296 = !DILocation(line: 60, column: 33, scope: !1280)
!1297 = !DILocation(line: 60, column: 11, scope: !1280)
!1298 = !DILocation(line: 47, column: 15, scope: !1280)
!1299 = !DILocation(line: 61, column: 12, scope: !1300)
!1300 = distinct !DILexicalBlock(scope: !1280, file: !75, line: 61, column: 7)
!1301 = !DILocation(line: 61, column: 20, scope: !1300)
!1302 = !DILocation(line: 61, column: 25, scope: !1300)
!1303 = !DILocation(line: 61, column: 42, scope: !1300)
!1304 = !DILocation(line: 61, column: 28, scope: !1300)
!1305 = !DILocation(line: 61, column: 61, scope: !1300)
!1306 = !DILocation(line: 61, column: 7, scope: !1280)
!1307 = !DILocation(line: 64, column: 11, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !75, line: 64, column: 11)
!1309 = distinct !DILexicalBlock(scope: !1300, file: !75, line: 62, column: 5)
!1310 = !DILocation(line: 64, column: 36, scope: !1308)
!1311 = !DILocation(line: 64, column: 11, scope: !1309)
!1312 = !DILocation(line: 66, column: 24, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1308, file: !75, line: 65, column: 9)
!1314 = !DILocation(line: 70, column: 41, scope: !1313)
!1315 = !DILocation(line: 72, column: 9, scope: !1313)
!1316 = !DILocation(line: 84, column: 16, scope: !1280)
!1317 = !DILocation(line: 90, column: 27, scope: !1280)
!1318 = !DILocation(line: 92, column: 1, scope: !1280)
!1319 = distinct !DISubprogram(name: "clone_quoting_options", scope: !106, file: !106, line: 122, type: !1320, isLocal: false, isDefinition: true, scopeLine: 123, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1323)
!1320 = !DISubroutineType(types: !1321)
!1321 = !{!1322, !1322}
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1323 = !{!1324, !1325, !1326}
!1324 = !DILocalVariable(name: "o", arg: 1, scope: !1319, file: !106, line: 122, type: !1322)
!1325 = !DILocalVariable(name: "e", scope: !1319, file: !106, line: 124, type: !41)
!1326 = !DILocalVariable(name: "p", scope: !1319, file: !106, line: 125, type: !1322)
!1327 = !DILocation(line: 122, column: 48, scope: !1319)
!1328 = !DILocation(line: 124, column: 11, scope: !1319)
!1329 = !DILocation(line: 124, column: 7, scope: !1319)
!1330 = !DILocation(line: 125, column: 40, scope: !1319)
!1331 = !DILocation(line: 125, column: 31, scope: !1319)
!1332 = !DILocation(line: 125, column: 27, scope: !1319)
!1333 = !DILocation(line: 127, column: 9, scope: !1319)
!1334 = !DILocation(line: 128, column: 3, scope: !1319)
!1335 = distinct !DISubprogram(name: "get_quoting_style", scope: !106, file: !106, line: 133, type: !1336, isLocal: false, isDefinition: true, scopeLine: 134, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1340)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!5, !1338}
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!1340 = !{!1341}
!1341 = !DILocalVariable(name: "o", arg: 1, scope: !1335, file: !106, line: 133, type: !1338)
!1342 = !DILocation(line: 133, column: 50, scope: !1335)
!1343 = !DILocation(line: 135, column: 11, scope: !1335)
!1344 = !DILocation(line: 135, column: 46, scope: !1335)
!1345 = !{!1346, !629, i64 0}
!1346 = !{!"quoting_options", !629, i64 0, !716, i64 4, !629, i64 8, !628, i64 40, !628, i64 48}
!1347 = !DILocation(line: 135, column: 3, scope: !1335)
!1348 = distinct !DISubprogram(name: "set_quoting_style", scope: !106, file: !106, line: 141, type: !1349, isLocal: false, isDefinition: true, scopeLine: 142, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1351)
!1349 = !DISubroutineType(types: !1350)
!1350 = !{null, !1322, !5}
!1351 = !{!1352, !1353}
!1352 = !DILocalVariable(name: "o", arg: 1, scope: !1348, file: !106, line: 141, type: !1322)
!1353 = !DILocalVariable(name: "s", arg: 2, scope: !1348, file: !106, line: 141, type: !5)
!1354 = !DILocation(line: 141, column: 44, scope: !1348)
!1355 = !DILocation(line: 141, column: 66, scope: !1348)
!1356 = !DILocation(line: 143, column: 4, scope: !1348)
!1357 = !DILocation(line: 143, column: 39, scope: !1348)
!1358 = !DILocation(line: 143, column: 45, scope: !1348)
!1359 = !DILocation(line: 144, column: 1, scope: !1348)
!1360 = distinct !DISubprogram(name: "set_char_quoting", scope: !106, file: !106, line: 152, type: !1361, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1363)
!1361 = !DISubroutineType(types: !1362)
!1362 = !{!41, !1322, !27, !41}
!1363 = !{!1364, !1365, !1366, !1367, !1368, !1370, !1371}
!1364 = !DILocalVariable(name: "o", arg: 1, scope: !1360, file: !106, line: 152, type: !1322)
!1365 = !DILocalVariable(name: "c", arg: 2, scope: !1360, file: !106, line: 152, type: !27)
!1366 = !DILocalVariable(name: "i", arg: 3, scope: !1360, file: !106, line: 152, type: !41)
!1367 = !DILocalVariable(name: "uc", scope: !1360, file: !106, line: 154, type: !935)
!1368 = !DILocalVariable(name: "p", scope: !1360, file: !106, line: 155, type: !1369)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1370 = !DILocalVariable(name: "shift", scope: !1360, file: !106, line: 157, type: !41)
!1371 = !DILocalVariable(name: "r", scope: !1360, file: !106, line: 158, type: !41)
!1372 = !DILocation(line: 152, column: 43, scope: !1360)
!1373 = !DILocation(line: 152, column: 51, scope: !1360)
!1374 = !DILocation(line: 152, column: 58, scope: !1360)
!1375 = !DILocation(line: 154, column: 17, scope: !1360)
!1376 = !DILocation(line: 156, column: 6, scope: !1360)
!1377 = !DILocation(line: 156, column: 62, scope: !1360)
!1378 = !DILocation(line: 156, column: 57, scope: !1360)
!1379 = !DILocation(line: 155, column: 17, scope: !1360)
!1380 = !DILocation(line: 157, column: 15, scope: !1360)
!1381 = !DILocation(line: 157, column: 7, scope: !1360)
!1382 = !DILocation(line: 158, column: 12, scope: !1360)
!1383 = !DILocation(line: 158, column: 15, scope: !1360)
!1384 = !DILocation(line: 158, column: 25, scope: !1360)
!1385 = !DILocation(line: 158, column: 7, scope: !1360)
!1386 = !DILocation(line: 159, column: 13, scope: !1360)
!1387 = !DILocation(line: 159, column: 18, scope: !1360)
!1388 = !DILocation(line: 159, column: 23, scope: !1360)
!1389 = !DILocation(line: 159, column: 6, scope: !1360)
!1390 = !DILocation(line: 160, column: 3, scope: !1360)
!1391 = distinct !DISubprogram(name: "set_quoting_flags", scope: !106, file: !106, line: 168, type: !1392, isLocal: false, isDefinition: true, scopeLine: 169, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1394)
!1392 = !DISubroutineType(types: !1393)
!1393 = !{!41, !1322, !41}
!1394 = !{!1395, !1396, !1397}
!1395 = !DILocalVariable(name: "o", arg: 1, scope: !1391, file: !106, line: 168, type: !1322)
!1396 = !DILocalVariable(name: "i", arg: 2, scope: !1391, file: !106, line: 168, type: !41)
!1397 = !DILocalVariable(name: "r", scope: !1391, file: !106, line: 170, type: !41)
!1398 = !DILocation(line: 168, column: 44, scope: !1391)
!1399 = !DILocation(line: 168, column: 51, scope: !1391)
!1400 = !DILocation(line: 171, column: 8, scope: !1401)
!1401 = distinct !DILexicalBlock(scope: !1391, file: !106, line: 171, column: 7)
!1402 = !DILocation(line: 171, column: 7, scope: !1391)
!1403 = !DILocation(line: 173, column: 10, scope: !1391)
!1404 = !{!1346, !716, i64 4}
!1405 = !DILocation(line: 170, column: 7, scope: !1391)
!1406 = !DILocation(line: 174, column: 12, scope: !1391)
!1407 = !DILocation(line: 175, column: 3, scope: !1391)
!1408 = distinct !DISubprogram(name: "set_custom_quoting", scope: !106, file: !106, line: 179, type: !1409, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1411)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{null, !1322, !38, !38}
!1411 = !{!1412, !1413, !1414}
!1412 = !DILocalVariable(name: "o", arg: 1, scope: !1408, file: !106, line: 179, type: !1322)
!1413 = !DILocalVariable(name: "left_quote", arg: 2, scope: !1408, file: !106, line: 180, type: !38)
!1414 = !DILocalVariable(name: "right_quote", arg: 3, scope: !1408, file: !106, line: 180, type: !38)
!1415 = !DILocation(line: 179, column: 45, scope: !1408)
!1416 = !DILocation(line: 180, column: 33, scope: !1408)
!1417 = !DILocation(line: 180, column: 57, scope: !1408)
!1418 = !DILocation(line: 182, column: 8, scope: !1419)
!1419 = distinct !DILexicalBlock(scope: !1408, file: !106, line: 182, column: 7)
!1420 = !DILocation(line: 182, column: 7, scope: !1408)
!1421 = !DILocation(line: 184, column: 6, scope: !1408)
!1422 = !DILocation(line: 184, column: 12, scope: !1408)
!1423 = !DILocation(line: 185, column: 8, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1408, file: !106, line: 185, column: 7)
!1425 = !DILocation(line: 185, column: 23, scope: !1424)
!1426 = !DILocation(line: 185, column: 19, scope: !1424)
!1427 = !DILocation(line: 186, column: 5, scope: !1424)
!1428 = !DILocation(line: 187, column: 6, scope: !1408)
!1429 = !DILocation(line: 187, column: 17, scope: !1408)
!1430 = !{!1346, !628, i64 40}
!1431 = !DILocation(line: 188, column: 6, scope: !1408)
!1432 = !DILocation(line: 188, column: 18, scope: !1408)
!1433 = !{!1346, !628, i64 48}
!1434 = !DILocation(line: 189, column: 1, scope: !1408)
!1435 = distinct !DISubprogram(name: "quotearg_buffer", scope: !106, file: !106, line: 784, type: !1436, isLocal: false, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1438)
!1436 = !DISubroutineType(types: !1437)
!1437 = !{!28, !26, !28, !38, !28, !1338}
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446}
!1439 = !DILocalVariable(name: "buffer", arg: 1, scope: !1435, file: !106, line: 784, type: !26)
!1440 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1435, file: !106, line: 784, type: !28)
!1441 = !DILocalVariable(name: "arg", arg: 3, scope: !1435, file: !106, line: 785, type: !38)
!1442 = !DILocalVariable(name: "argsize", arg: 4, scope: !1435, file: !106, line: 785, type: !28)
!1443 = !DILocalVariable(name: "o", arg: 5, scope: !1435, file: !106, line: 786, type: !1338)
!1444 = !DILocalVariable(name: "p", scope: !1435, file: !106, line: 788, type: !1338)
!1445 = !DILocalVariable(name: "e", scope: !1435, file: !106, line: 789, type: !41)
!1446 = !DILocalVariable(name: "r", scope: !1435, file: !106, line: 790, type: !28)
!1447 = !DILocation(line: 784, column: 24, scope: !1435)
!1448 = !DILocation(line: 784, column: 39, scope: !1435)
!1449 = !DILocation(line: 785, column: 30, scope: !1435)
!1450 = !DILocation(line: 785, column: 42, scope: !1435)
!1451 = !DILocation(line: 786, column: 48, scope: !1435)
!1452 = !DILocation(line: 788, column: 37, scope: !1435)
!1453 = !DILocation(line: 788, column: 33, scope: !1435)
!1454 = !DILocation(line: 789, column: 11, scope: !1435)
!1455 = !DILocation(line: 789, column: 7, scope: !1435)
!1456 = !DILocation(line: 791, column: 43, scope: !1435)
!1457 = !DILocation(line: 791, column: 53, scope: !1435)
!1458 = !DILocation(line: 791, column: 60, scope: !1435)
!1459 = !DILocation(line: 792, column: 43, scope: !1435)
!1460 = !DILocation(line: 792, column: 58, scope: !1435)
!1461 = !DILocation(line: 790, column: 14, scope: !1435)
!1462 = !DILocation(line: 790, column: 10, scope: !1435)
!1463 = !DILocation(line: 793, column: 9, scope: !1435)
!1464 = !DILocation(line: 794, column: 3, scope: !1435)
!1465 = distinct !DISubprogram(name: "quotearg_buffer_restyled", scope: !106, file: !106, line: 256, type: !1466, isLocal: true, isDefinition: true, scopeLine: 262, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !1470)
!1466 = !DISubroutineType(types: !1467)
!1467 = !{!28, !26, !28, !38, !28, !5, !41, !1468, !38, !38}
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!1470 = !{!1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1495, !1496, !1497, !1498, !1499, !1502, !1503, !1521, !1524, !1525, !1532}
!1471 = !DILocalVariable(name: "buffer", arg: 1, scope: !1465, file: !106, line: 256, type: !26)
!1472 = !DILocalVariable(name: "buffersize", arg: 2, scope: !1465, file: !106, line: 256, type: !28)
!1473 = !DILocalVariable(name: "arg", arg: 3, scope: !1465, file: !106, line: 257, type: !38)
!1474 = !DILocalVariable(name: "argsize", arg: 4, scope: !1465, file: !106, line: 257, type: !28)
!1475 = !DILocalVariable(name: "quoting_style", arg: 5, scope: !1465, file: !106, line: 258, type: !5)
!1476 = !DILocalVariable(name: "flags", arg: 6, scope: !1465, file: !106, line: 258, type: !41)
!1477 = !DILocalVariable(name: "quote_these_too", arg: 7, scope: !1465, file: !106, line: 259, type: !1468)
!1478 = !DILocalVariable(name: "left_quote", arg: 8, scope: !1465, file: !106, line: 260, type: !38)
!1479 = !DILocalVariable(name: "right_quote", arg: 9, scope: !1465, file: !106, line: 261, type: !38)
!1480 = !DILocalVariable(name: "i", scope: !1465, file: !106, line: 263, type: !28)
!1481 = !DILocalVariable(name: "len", scope: !1465, file: !106, line: 264, type: !28)
!1482 = !DILocalVariable(name: "orig_buffersize", scope: !1465, file: !106, line: 265, type: !28)
!1483 = !DILocalVariable(name: "quote_string", scope: !1465, file: !106, line: 266, type: !38)
!1484 = !DILocalVariable(name: "quote_string_len", scope: !1465, file: !106, line: 267, type: !28)
!1485 = !DILocalVariable(name: "backslash_escapes", scope: !1465, file: !106, line: 268, type: !61)
!1486 = !DILocalVariable(name: "unibyte_locale", scope: !1465, file: !106, line: 269, type: !61)
!1487 = !DILocalVariable(name: "elide_outer_quotes", scope: !1465, file: !106, line: 270, type: !61)
!1488 = !DILocalVariable(name: "pending_shell_escape_end", scope: !1465, file: !106, line: 271, type: !61)
!1489 = !DILocalVariable(name: "encountered_single_quote", scope: !1465, file: !106, line: 272, type: !61)
!1490 = !DILocalVariable(name: "all_c_and_shell_quote_compat", scope: !1465, file: !106, line: 273, type: !61)
!1491 = !DILocalVariable(name: "c", scope: !1492, file: !106, line: 402, type: !935)
!1492 = distinct !DILexicalBlock(scope: !1493, file: !106, line: 401, column: 5)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !106, line: 400, column: 3)
!1494 = distinct !DILexicalBlock(scope: !1465, file: !106, line: 400, column: 3)
!1495 = !DILocalVariable(name: "esc", scope: !1492, file: !106, line: 403, type: !935)
!1496 = !DILocalVariable(name: "is_right_quote", scope: !1492, file: !106, line: 404, type: !61)
!1497 = !DILocalVariable(name: "escaping", scope: !1492, file: !106, line: 405, type: !61)
!1498 = !DILocalVariable(name: "c_and_shell_quote_compat", scope: !1492, file: !106, line: 406, type: !61)
!1499 = !DILocalVariable(name: "m", scope: !1500, file: !106, line: 610, type: !28)
!1500 = distinct !DILexicalBlock(scope: !1501, file: !106, line: 608, column: 11)
!1501 = distinct !DILexicalBlock(scope: !1492, file: !106, line: 426, column: 9)
!1502 = !DILocalVariable(name: "printable", scope: !1500, file: !106, line: 612, type: !61)
!1503 = !DILocalVariable(name: "mbstate", scope: !1504, file: !106, line: 621, type: !1506)
!1504 = distinct !DILexicalBlock(scope: !1505, file: !106, line: 620, column: 15)
!1505 = distinct !DILexicalBlock(scope: !1500, file: !106, line: 614, column: 17)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1507, line: 6, baseType: !1508)
!1507 = !DIFile(filename: "/usr/include/bits/types/mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1508 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1509, line: 21, baseType: !1510)
!1509 = !DIFile(filename: "/usr/include/bits/types/__mbstate_t.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1509, line: 13, size: 64, elements: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !1510, file: !1509, line: 15, baseType: !41, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !1510, file: !1509, line: 20, baseType: !1514, size: 32, offset: 32)
!1514 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1510, file: !1509, line: 16, size: 32, elements: !1515)
!1515 = !{!1516, !1517}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !1514, file: !1509, line: 18, baseType: !7, size: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !1514, file: !1509, line: 19, baseType: !1518, size: 32)
!1518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 32, elements: !1519)
!1519 = !{!1520}
!1520 = !DISubrange(count: 4)
!1521 = !DILocalVariable(name: "w", scope: !1522, file: !106, line: 631, type: !1523)
!1522 = distinct !DILexicalBlock(scope: !1504, file: !106, line: 630, column: 19)
!1523 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !29, line: 90, baseType: !41)
!1524 = !DILocalVariable(name: "bytes", scope: !1522, file: !106, line: 632, type: !28)
!1525 = !DILocalVariable(name: "j", scope: !1526, file: !106, line: 657, type: !28)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !106, line: 656, column: 27)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !106, line: 654, column: 29)
!1528 = distinct !DILexicalBlock(scope: !1529, file: !106, line: 649, column: 23)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !106, line: 641, column: 30)
!1530 = distinct !DILexicalBlock(scope: !1531, file: !106, line: 636, column: 30)
!1531 = distinct !DILexicalBlock(scope: !1522, file: !106, line: 634, column: 25)
!1532 = !DILocalVariable(name: "ilim", scope: !1533, file: !106, line: 684, type: !28)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !106, line: 681, column: 15)
!1534 = distinct !DILexicalBlock(scope: !1500, file: !106, line: 680, column: 17)
!1535 = !DILocation(line: 256, column: 33, scope: !1465)
!1536 = !DILocation(line: 256, column: 48, scope: !1465)
!1537 = !DILocation(line: 257, column: 39, scope: !1465)
!1538 = !DILocation(line: 257, column: 51, scope: !1465)
!1539 = !DILocation(line: 258, column: 46, scope: !1465)
!1540 = !DILocation(line: 258, column: 65, scope: !1465)
!1541 = !DILocation(line: 259, column: 47, scope: !1465)
!1542 = !DILocation(line: 260, column: 39, scope: !1465)
!1543 = !DILocation(line: 261, column: 39, scope: !1465)
!1544 = !DILocation(line: 264, column: 10, scope: !1465)
!1545 = !DILocation(line: 265, column: 10, scope: !1465)
!1546 = !DILocation(line: 266, column: 15, scope: !1465)
!1547 = !DILocation(line: 267, column: 10, scope: !1465)
!1548 = !DILocation(line: 268, column: 8, scope: !1465)
!1549 = !DILocation(line: 269, column: 25, scope: !1465)
!1550 = !DILocation(line: 269, column: 36, scope: !1465)
!1551 = !DILocation(line: 270, column: 8, scope: !1465)
!1552 = !DILocation(line: 271, column: 8, scope: !1465)
!1553 = !DILocation(line: 272, column: 8, scope: !1465)
!1554 = !DILocation(line: 273, column: 8, scope: !1465)
!1555 = !DILocation(line: 273, column: 3, scope: !1465)
!1556 = !DILocation(line: 0, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1465, file: !106, line: 317, column: 5)
!1558 = !DILocation(line: 316, column: 3, scope: !1465)
!1559 = !DILocation(line: 323, column: 11, scope: !1557)
!1560 = !DILocation(line: 323, column: 12, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1557, file: !106, line: 323, column: 11)
!1562 = !DILocation(line: 324, column: 9, scope: !1563)
!1563 = distinct !DILexicalBlock(scope: !1564, file: !106, line: 324, column: 9)
!1564 = distinct !DILexicalBlock(scope: !1561, file: !106, line: 324, column: 9)
!1565 = !DILocation(line: 324, column: 9, scope: !1564)
!1566 = !DILocation(line: 362, column: 26, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !106, line: 340, column: 11)
!1568 = distinct !DILexicalBlock(scope: !1569, file: !106, line: 339, column: 13)
!1569 = distinct !DILexicalBlock(scope: !1557, file: !106, line: 338, column: 7)
!1570 = !DILocation(line: 363, column: 27, scope: !1567)
!1571 = !DILocation(line: 364, column: 11, scope: !1567)
!1572 = !DILocation(line: 365, column: 14, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1569, file: !106, line: 365, column: 13)
!1574 = !DILocation(line: 365, column: 13, scope: !1569)
!1575 = !DILocation(line: 366, column: 43, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !106, line: 366, column: 11)
!1577 = distinct !DILexicalBlock(scope: !1573, file: !106, line: 366, column: 11)
!1578 = !DILocation(line: 366, column: 11, scope: !1577)
!1579 = !DILocation(line: 367, column: 13, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1581, file: !106, line: 367, column: 13)
!1581 = distinct !DILexicalBlock(scope: !1576, file: !106, line: 367, column: 13)
!1582 = !DILocation(line: 367, column: 13, scope: !1581)
!1583 = !DILocation(line: 366, column: 70, scope: !1576)
!1584 = distinct !{!1584, !1578, !1585}
!1585 = !DILocation(line: 367, column: 13, scope: !1577)
!1586 = !DILocation(line: 370, column: 28, scope: !1569)
!1587 = !DILocation(line: 372, column: 7, scope: !1557)
!1588 = !DILocation(line: 376, column: 7, scope: !1557)
!1589 = !DILocation(line: 379, column: 7, scope: !1557)
!1590 = !DILocation(line: 381, column: 12, scope: !1591)
!1591 = distinct !DILexicalBlock(scope: !1557, file: !106, line: 381, column: 11)
!1592 = !DILocation(line: 381, column: 11, scope: !1557)
!1593 = !DILocation(line: 0, scope: !1591)
!1594 = !DILocation(line: 386, column: 12, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1557, file: !106, line: 386, column: 11)
!1596 = !DILocation(line: 386, column: 11, scope: !1557)
!1597 = !DILocation(line: 387, column: 9, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1599, file: !106, line: 387, column: 9)
!1599 = distinct !DILexicalBlock(scope: !1595, file: !106, line: 387, column: 9)
!1600 = !DILocation(line: 387, column: 9, scope: !1599)
!1601 = !DILocation(line: 394, column: 7, scope: !1557)
!1602 = !DILocation(line: 397, column: 7, scope: !1557)
!1603 = !DILocation(line: 0, scope: !1465)
!1604 = !DILocation(line: 263, column: 10, scope: !1465)
!1605 = !DILocation(line: 400, column: 8, scope: !1494)
!1606 = !DILocation(line: 0, scope: !1493)
!1607 = !DILocation(line: 400, column: 27, scope: !1493)
!1608 = !DILocation(line: 400, column: 19, scope: !1493)
!1609 = !DILocation(line: 400, column: 41, scope: !1493)
!1610 = !DILocation(line: 400, column: 48, scope: !1493)
!1611 = !DILocation(line: 400, column: 3, scope: !1494)
!1612 = !DILocation(line: 400, column: 60, scope: !1493)
!1613 = !DILocation(line: 404, column: 12, scope: !1492)
!1614 = !DILocation(line: 405, column: 12, scope: !1492)
!1615 = !DILocation(line: 406, column: 12, scope: !1492)
!1616 = !DILocation(line: 409, column: 11, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1492, file: !106, line: 408, column: 11)
!1618 = !DILocation(line: 411, column: 17, scope: !1617)
!1619 = !DILocation(line: 412, column: 39, scope: !1617)
!1620 = !DILocation(line: 416, column: 32, scope: !1617)
!1621 = !DILocation(line: 412, column: 19, scope: !1617)
!1622 = !DILocation(line: 412, column: 15, scope: !1617)
!1623 = !DILocation(line: 417, column: 11, scope: !1617)
!1624 = !DILocation(line: 417, column: 26, scope: !1617)
!1625 = !DILocation(line: 417, column: 14, scope: !1617)
!1626 = !DILocation(line: 417, column: 63, scope: !1617)
!1627 = !DILocation(line: 408, column: 11, scope: !1492)
!1628 = !DILocation(line: 0, scope: !1492)
!1629 = !DILocation(line: 424, column: 11, scope: !1492)
!1630 = !DILocation(line: 402, column: 21, scope: !1492)
!1631 = !DILocation(line: 425, column: 7, scope: !1492)
!1632 = !DILocation(line: 428, column: 15, scope: !1501)
!1633 = !DILocation(line: 430, column: 15, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !106, line: 430, column: 15)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !106, line: 429, column: 13)
!1636 = distinct !DILexicalBlock(scope: !1501, file: !106, line: 428, column: 15)
!1637 = !DILocation(line: 430, column: 15, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1634, file: !106, line: 430, column: 15)
!1639 = !DILocation(line: 430, column: 15, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !106, line: 430, column: 15)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !106, line: 430, column: 15)
!1642 = distinct !DILexicalBlock(scope: !1638, file: !106, line: 430, column: 15)
!1643 = !DILocation(line: 430, column: 15, scope: !1641)
!1644 = !DILocation(line: 430, column: 15, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !106, line: 430, column: 15)
!1646 = distinct !DILexicalBlock(scope: !1642, file: !106, line: 430, column: 15)
!1647 = !DILocation(line: 430, column: 15, scope: !1646)
!1648 = !DILocation(line: 430, column: 15, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !106, line: 430, column: 15)
!1650 = distinct !DILexicalBlock(scope: !1642, file: !106, line: 430, column: 15)
!1651 = !DILocation(line: 430, column: 15, scope: !1650)
!1652 = !DILocation(line: 430, column: 15, scope: !1642)
!1653 = !DILocation(line: 430, column: 15, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !106, line: 430, column: 15)
!1655 = distinct !DILexicalBlock(scope: !1634, file: !106, line: 430, column: 15)
!1656 = !DILocation(line: 430, column: 15, scope: !1655)
!1657 = !DILocation(line: 438, column: 19, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1635, file: !106, line: 437, column: 19)
!1659 = !DILocation(line: 438, column: 24, scope: !1658)
!1660 = !DILocation(line: 438, column: 28, scope: !1658)
!1661 = !DILocation(line: 438, column: 38, scope: !1658)
!1662 = !DILocation(line: 438, column: 48, scope: !1658)
!1663 = !DILocation(line: 438, column: 59, scope: !1658)
!1664 = !DILocation(line: 440, column: 19, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !106, line: 440, column: 19)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !106, line: 440, column: 19)
!1667 = distinct !DILexicalBlock(scope: !1658, file: !106, line: 439, column: 17)
!1668 = !DILocation(line: 440, column: 19, scope: !1666)
!1669 = !DILocation(line: 441, column: 19, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1671, file: !106, line: 441, column: 19)
!1671 = distinct !DILexicalBlock(scope: !1667, file: !106, line: 441, column: 19)
!1672 = !DILocation(line: 441, column: 19, scope: !1671)
!1673 = !DILocation(line: 442, column: 17, scope: !1667)
!1674 = !DILocation(line: 449, column: 20, scope: !1636)
!1675 = !DILocation(line: 454, column: 11, scope: !1501)
!1676 = !DILocation(line: 457, column: 19, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1501, file: !106, line: 455, column: 13)
!1678 = !DILocation(line: 463, column: 19, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !1677, file: !106, line: 462, column: 19)
!1680 = !DILocation(line: 463, column: 24, scope: !1679)
!1681 = !DILocation(line: 463, column: 28, scope: !1679)
!1682 = !DILocation(line: 463, column: 38, scope: !1679)
!1683 = !DILocation(line: 463, column: 47, scope: !1679)
!1684 = !DILocation(line: 463, column: 41, scope: !1679)
!1685 = !DILocation(line: 463, column: 52, scope: !1679)
!1686 = !DILocation(line: 462, column: 19, scope: !1677)
!1687 = !DILocation(line: 464, column: 25, scope: !1679)
!1688 = !DILocation(line: 464, column: 17, scope: !1679)
!1689 = !DILocation(line: 471, column: 25, scope: !1690)
!1690 = distinct !DILexicalBlock(scope: !1679, file: !106, line: 465, column: 19)
!1691 = !DILocation(line: 475, column: 21, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !106, line: 475, column: 21)
!1693 = distinct !DILexicalBlock(scope: !1690, file: !106, line: 475, column: 21)
!1694 = !DILocation(line: 475, column: 21, scope: !1693)
!1695 = !DILocation(line: 476, column: 21, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1697, file: !106, line: 476, column: 21)
!1697 = distinct !DILexicalBlock(scope: !1690, file: !106, line: 476, column: 21)
!1698 = !DILocation(line: 476, column: 21, scope: !1697)
!1699 = !DILocation(line: 477, column: 21, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1701, file: !106, line: 477, column: 21)
!1701 = distinct !DILexicalBlock(scope: !1690, file: !106, line: 477, column: 21)
!1702 = !DILocation(line: 477, column: 21, scope: !1701)
!1703 = !DILocation(line: 478, column: 21, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1705, file: !106, line: 478, column: 21)
!1705 = distinct !DILexicalBlock(scope: !1690, file: !106, line: 478, column: 21)
!1706 = !DILocation(line: 478, column: 21, scope: !1705)
!1707 = !DILocation(line: 479, column: 21, scope: !1690)
!1708 = !DILocation(line: 403, column: 21, scope: !1492)
!1709 = !DILocation(line: 492, column: 31, scope: !1501)
!1710 = !DILocation(line: 493, column: 31, scope: !1501)
!1711 = !DILocation(line: 495, column: 31, scope: !1501)
!1712 = !DILocation(line: 496, column: 31, scope: !1501)
!1713 = !DILocation(line: 497, column: 31, scope: !1501)
!1714 = !DILocation(line: 500, column: 15, scope: !1501)
!1715 = !DILocation(line: 502, column: 19, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1717, file: !106, line: 501, column: 13)
!1717 = distinct !DILexicalBlock(scope: !1501, file: !106, line: 500, column: 15)
!1718 = !DILocation(line: 509, column: 33, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1501, file: !106, line: 509, column: 15)
!1720 = !DILocation(line: 0, scope: !1501)
!1721 = !DILocation(line: 514, column: 15, scope: !1722)
!1722 = distinct !DILexicalBlock(scope: !1501, file: !106, line: 513, column: 15)
!1723 = !DILocation(line: 518, column: 15, scope: !1501)
!1724 = !DILocation(line: 526, column: 26, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1501, file: !106, line: 526, column: 15)
!1726 = !DILocation(line: 526, column: 15, scope: !1501)
!1727 = !DILocation(line: 526, column: 40, scope: !1725)
!1728 = !DILocation(line: 526, column: 47, scope: !1725)
!1729 = !DILocation(line: 530, column: 17, scope: !1730)
!1730 = distinct !DILexicalBlock(scope: !1501, file: !106, line: 530, column: 15)
!1731 = !DILocation(line: 526, column: 18, scope: !1725)
!1732 = !DILocation(line: 526, column: 65, scope: !1725)
!1733 = !DILocation(line: 530, column: 15, scope: !1501)
!1734 = !DILocation(line: 535, column: 11, scope: !1501)
!1735 = !DILocation(line: 549, column: 15, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1501, file: !106, line: 548, column: 15)
!1737 = !DILocation(line: 556, column: 15, scope: !1501)
!1738 = !DILocation(line: 558, column: 19, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !106, line: 557, column: 13)
!1740 = distinct !DILexicalBlock(scope: !1501, file: !106, line: 556, column: 15)
!1741 = !DILocation(line: 561, column: 19, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1739, file: !106, line: 561, column: 19)
!1743 = !DILocation(line: 561, column: 35, scope: !1742)
!1744 = !DILocation(line: 561, column: 30, scope: !1742)
!1745 = !DILocation(line: 570, column: 15, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1747, file: !106, line: 570, column: 15)
!1747 = distinct !DILexicalBlock(scope: !1739, file: !106, line: 570, column: 15)
!1748 = !DILocation(line: 570, column: 15, scope: !1747)
!1749 = !DILocation(line: 571, column: 15, scope: !1750)
!1750 = distinct !DILexicalBlock(scope: !1751, file: !106, line: 571, column: 15)
!1751 = distinct !DILexicalBlock(scope: !1739, file: !106, line: 571, column: 15)
!1752 = !DILocation(line: 571, column: 15, scope: !1751)
!1753 = !DILocation(line: 572, column: 15, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !106, line: 572, column: 15)
!1755 = distinct !DILexicalBlock(scope: !1739, file: !106, line: 572, column: 15)
!1756 = !DILocation(line: 572, column: 15, scope: !1755)
!1757 = !DILocation(line: 574, column: 13, scope: !1739)
!1758 = !DILocation(line: 614, column: 17, scope: !1500)
!1759 = !DILocation(line: 610, column: 20, scope: !1500)
!1760 = !DILocation(line: 617, column: 29, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1505, file: !106, line: 615, column: 15)
!1762 = !{!1035, !1035, i64 0}
!1763 = !DILocation(line: 617, column: 27, scope: !1761)
!1764 = !DILocation(line: 612, column: 18, scope: !1500)
!1765 = !DILocation(line: 618, column: 15, scope: !1761)
!1766 = !DILocation(line: 621, column: 17, scope: !1504)
!1767 = !DILocation(line: 622, column: 17, scope: !1504)
!1768 = !DILocation(line: 626, column: 29, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1504, file: !106, line: 626, column: 21)
!1770 = !DILocation(line: 626, column: 21, scope: !1504)
!1771 = !DILocation(line: 627, column: 29, scope: !1769)
!1772 = !DILocation(line: 627, column: 19, scope: !1769)
!1773 = !DILocation(line: 0, scope: !1617)
!1774 = !DILocation(line: 629, column: 17, scope: !1504)
!1775 = !DILocation(line: 624, column: 19, scope: !1504)
!1776 = !DILocation(line: 625, column: 27, scope: !1504)
!1777 = !DILocation(line: 631, column: 21, scope: !1522)
!1778 = !DILocation(line: 632, column: 56, scope: !1522)
!1779 = !DILocation(line: 632, column: 50, scope: !1522)
!1780 = !DILocation(line: 633, column: 53, scope: !1522)
!1781 = !DILocation(line: 621, column: 27, scope: !1504)
!1782 = !DILocation(line: 631, column: 29, scope: !1522)
!1783 = !DILocation(line: 632, column: 36, scope: !1522)
!1784 = !DILocation(line: 632, column: 28, scope: !1522)
!1785 = !DILocation(line: 634, column: 25, scope: !1522)
!1786 = !DILocation(line: 644, column: 38, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1529, file: !106, line: 642, column: 23)
!1788 = !DILocation(line: 644, column: 48, scope: !1787)
!1789 = !DILocation(line: 644, column: 51, scope: !1787)
!1790 = !DILocation(line: 644, column: 25, scope: !1787)
!1791 = !DILocation(line: 645, column: 28, scope: !1787)
!1792 = !DILocation(line: 644, column: 34, scope: !1787)
!1793 = distinct !{!1793, !1790, !1791}
!1794 = !DILocation(line: 658, column: 43, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1796, file: !106, line: 658, column: 29)
!1796 = distinct !DILexicalBlock(scope: !1526, file: !106, line: 658, column: 29)
!1797 = !DILocation(line: 655, column: 29, scope: !1527)
!1798 = !DILocation(line: 657, column: 36, scope: !1526)
!1799 = !DILocation(line: 659, column: 49, scope: !1795)
!1800 = !DILocation(line: 659, column: 39, scope: !1795)
!1801 = !DILocation(line: 659, column: 31, scope: !1795)
!1802 = !DILocation(line: 658, column: 53, scope: !1795)
!1803 = !DILocation(line: 658, column: 29, scope: !1796)
!1804 = distinct !{!1804, !1803, !1805}
!1805 = !DILocation(line: 667, column: 33, scope: !1796)
!1806 = !DILocation(line: 674, column: 19, scope: !1504)
!1807 = !DILocation(line: 670, column: 41, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1528, file: !106, line: 670, column: 29)
!1809 = !DILocation(line: 670, column: 31, scope: !1808)
!1810 = !DILocation(line: 670, column: 29, scope: !1528)
!1811 = !DILocation(line: 672, column: 27, scope: !1528)
!1812 = !DILocation(line: 675, column: 26, scope: !1504)
!1813 = !DILocation(line: 675, column: 24, scope: !1504)
!1814 = !DILocation(line: 674, column: 19, scope: !1522)
!1815 = distinct !{!1815, !1774, !1816}
!1816 = !DILocation(line: 675, column: 44, scope: !1504)
!1817 = !DILocation(line: 676, column: 15, scope: !1505)
!1818 = !DILocation(line: 0, scope: !1769)
!1819 = !DILocation(line: 0, scope: !1504)
!1820 = !DILocation(line: 678, column: 40, scope: !1500)
!1821 = !DILocation(line: 680, column: 19, scope: !1534)
!1822 = !DILocation(line: 680, column: 45, scope: !1534)
!1823 = !DILocation(line: 680, column: 23, scope: !1534)
!1824 = !DILocation(line: 684, column: 33, scope: !1533)
!1825 = !DILocation(line: 684, column: 24, scope: !1533)
!1826 = !DILocation(line: 686, column: 17, scope: !1533)
!1827 = !DILocation(line: 0, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1829, file: !106, line: 687, column: 19)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !106, line: 686, column: 17)
!1830 = distinct !DILexicalBlock(scope: !1533, file: !106, line: 686, column: 17)
!1831 = !DILocation(line: 0, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1828, file: !106, line: 703, column: 21)
!1833 = !DILocation(line: 0, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !106, line: 696, column: 23)
!1835 = distinct !DILexicalBlock(scope: !1836, file: !106, line: 695, column: 30)
!1836 = distinct !DILexicalBlock(scope: !1828, file: !106, line: 688, column: 25)
!1837 = !DILocation(line: 688, column: 43, scope: !1836)
!1838 = !DILocation(line: 690, column: 25, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1840, file: !106, line: 690, column: 25)
!1840 = distinct !DILexicalBlock(scope: !1836, file: !106, line: 689, column: 23)
!1841 = !DILocation(line: 690, column: 25, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1839, file: !106, line: 690, column: 25)
!1843 = !DILocation(line: 690, column: 25, scope: !1844)
!1844 = distinct !DILexicalBlock(scope: !1845, file: !106, line: 690, column: 25)
!1845 = distinct !DILexicalBlock(scope: !1846, file: !106, line: 690, column: 25)
!1846 = distinct !DILexicalBlock(scope: !1842, file: !106, line: 690, column: 25)
!1847 = !DILocation(line: 690, column: 25, scope: !1845)
!1848 = !DILocation(line: 690, column: 25, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1850, file: !106, line: 690, column: 25)
!1850 = distinct !DILexicalBlock(scope: !1846, file: !106, line: 690, column: 25)
!1851 = !DILocation(line: 690, column: 25, scope: !1850)
!1852 = !DILocation(line: 690, column: 25, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1854, file: !106, line: 690, column: 25)
!1854 = distinct !DILexicalBlock(scope: !1846, file: !106, line: 690, column: 25)
!1855 = !DILocation(line: 690, column: 25, scope: !1854)
!1856 = !DILocation(line: 690, column: 25, scope: !1846)
!1857 = !DILocation(line: 690, column: 25, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1859, file: !106, line: 690, column: 25)
!1859 = distinct !DILexicalBlock(scope: !1839, file: !106, line: 690, column: 25)
!1860 = !DILocation(line: 690, column: 25, scope: !1859)
!1861 = !DILocation(line: 691, column: 25, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1863, file: !106, line: 691, column: 25)
!1863 = distinct !DILexicalBlock(scope: !1840, file: !106, line: 691, column: 25)
!1864 = !DILocation(line: 691, column: 25, scope: !1863)
!1865 = !DILocation(line: 692, column: 25, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !106, line: 692, column: 25)
!1867 = distinct !DILexicalBlock(scope: !1840, file: !106, line: 692, column: 25)
!1868 = !DILocation(line: 692, column: 25, scope: !1867)
!1869 = !DILocation(line: 693, column: 38, scope: !1840)
!1870 = !DILocation(line: 693, column: 33, scope: !1840)
!1871 = !DILocation(line: 694, column: 23, scope: !1840)
!1872 = !DILocation(line: 695, column: 30, scope: !1835)
!1873 = !DILocation(line: 695, column: 30, scope: !1836)
!1874 = !DILocation(line: 697, column: 25, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1876, file: !106, line: 697, column: 25)
!1876 = distinct !DILexicalBlock(scope: !1834, file: !106, line: 697, column: 25)
!1877 = !DILocation(line: 697, column: 25, scope: !1876)
!1878 = !DILocation(line: 699, column: 23, scope: !1834)
!1879 = !DILocation(line: 0, scope: !1867)
!1880 = !DILocation(line: 0, scope: !1840)
!1881 = !DILocation(line: 0, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1617, file: !106, line: 418, column: 9)
!1883 = !DILocation(line: 0, scope: !1839)
!1884 = !DILocation(line: 700, column: 35, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1828, file: !106, line: 700, column: 25)
!1886 = !DILocation(line: 700, column: 30, scope: !1885)
!1887 = !DILocation(line: 700, column: 25, scope: !1828)
!1888 = !DILocation(line: 702, column: 21, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1890, file: !106, line: 702, column: 21)
!1890 = distinct !DILexicalBlock(scope: !1828, file: !106, line: 702, column: 21)
!1891 = !DILocation(line: 702, column: 21, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1893, file: !106, line: 702, column: 21)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !106, line: 702, column: 21)
!1894 = distinct !DILexicalBlock(scope: !1889, file: !106, line: 702, column: 21)
!1895 = !DILocation(line: 702, column: 21, scope: !1893)
!1896 = !DILocation(line: 702, column: 21, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !106, line: 702, column: 21)
!1898 = distinct !DILexicalBlock(scope: !1894, file: !106, line: 702, column: 21)
!1899 = !DILocation(line: 702, column: 21, scope: !1898)
!1900 = !DILocation(line: 702, column: 21, scope: !1894)
!1901 = !DILocation(line: 0, scope: !1876)
!1902 = !DILocation(line: 703, column: 21, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1832, file: !106, line: 703, column: 21)
!1904 = !DILocation(line: 703, column: 21, scope: !1832)
!1905 = !DILocation(line: 704, column: 25, scope: !1828)
!1906 = !DILocation(line: 686, column: 17, scope: !1829)
!1907 = distinct !{!1907, !1908, !1909}
!1908 = !DILocation(line: 686, column: 17, scope: !1830)
!1909 = !DILocation(line: 705, column: 19, scope: !1830)
!1910 = !DILocation(line: 0, scope: !1494)
!1911 = !DILocation(line: 416, column: 30, scope: !1617)
!1912 = !DILocation(line: 712, column: 34, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1492, file: !106, line: 712, column: 11)
!1914 = !DILocation(line: 714, column: 14, scope: !1913)
!1915 = !DILocation(line: 715, column: 14, scope: !1913)
!1916 = !DILocation(line: 715, column: 35, scope: !1913)
!1917 = !DILocation(line: 715, column: 17, scope: !1913)
!1918 = !DILocation(line: 715, column: 47, scope: !1913)
!1919 = !DILocation(line: 715, column: 65, scope: !1913)
!1920 = !DILocation(line: 716, column: 15, scope: !1913)
!1921 = !DILocation(line: 716, column: 11, scope: !1913)
!1922 = !DILocation(line: 712, column: 11, scope: !1492)
!1923 = !DILocation(line: 400, column: 10, scope: !1494)
!1924 = !DILocation(line: 0, scope: !1925)
!1925 = distinct !DILexicalBlock(scope: !1926, file: !106, line: 519, column: 13)
!1926 = distinct !DILexicalBlock(scope: !1501, file: !106, line: 518, column: 15)
!1927 = !DILocation(line: 720, column: 7, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1492, file: !106, line: 720, column: 7)
!1929 = !DILocation(line: 720, column: 7, scope: !1930)
!1930 = distinct !DILexicalBlock(scope: !1928, file: !106, line: 720, column: 7)
!1931 = !DILocation(line: 720, column: 7, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1933, file: !106, line: 720, column: 7)
!1933 = distinct !DILexicalBlock(scope: !1934, file: !106, line: 720, column: 7)
!1934 = distinct !DILexicalBlock(scope: !1930, file: !106, line: 720, column: 7)
!1935 = !DILocation(line: 720, column: 7, scope: !1933)
!1936 = !DILocation(line: 720, column: 7, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !106, line: 720, column: 7)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !106, line: 720, column: 7)
!1939 = !DILocation(line: 720, column: 7, scope: !1938)
!1940 = !DILocation(line: 720, column: 7, scope: !1941)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !106, line: 720, column: 7)
!1942 = distinct !DILexicalBlock(scope: !1934, file: !106, line: 720, column: 7)
!1943 = !DILocation(line: 720, column: 7, scope: !1942)
!1944 = !DILocation(line: 720, column: 7, scope: !1934)
!1945 = !DILocation(line: 720, column: 7, scope: !1946)
!1946 = distinct !DILexicalBlock(scope: !1947, file: !106, line: 720, column: 7)
!1947 = distinct !DILexicalBlock(scope: !1928, file: !106, line: 720, column: 7)
!1948 = !DILocation(line: 720, column: 7, scope: !1947)
!1949 = !DILocation(line: 723, column: 7, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1951, file: !106, line: 723, column: 7)
!1951 = distinct !DILexicalBlock(scope: !1492, file: !106, line: 723, column: 7)
!1952 = !DILocation(line: 424, column: 9, scope: !1492)
!1953 = !DILocation(line: 723, column: 7, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1955, file: !106, line: 723, column: 7)
!1955 = distinct !DILexicalBlock(scope: !1956, file: !106, line: 723, column: 7)
!1956 = distinct !DILexicalBlock(scope: !1950, file: !106, line: 723, column: 7)
!1957 = !DILocation(line: 723, column: 7, scope: !1955)
!1958 = !DILocation(line: 723, column: 7, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1960, file: !106, line: 723, column: 7)
!1960 = distinct !DILexicalBlock(scope: !1956, file: !106, line: 723, column: 7)
!1961 = !DILocation(line: 723, column: 7, scope: !1960)
!1962 = !DILocation(line: 723, column: 7, scope: !1956)
!1963 = !DILocation(line: 724, column: 7, scope: !1964)
!1964 = distinct !DILexicalBlock(scope: !1965, file: !106, line: 724, column: 7)
!1965 = distinct !DILexicalBlock(scope: !1492, file: !106, line: 724, column: 7)
!1966 = !DILocation(line: 724, column: 7, scope: !1965)
!1967 = !DILocation(line: 726, column: 13, scope: !1968)
!1968 = distinct !DILexicalBlock(scope: !1492, file: !106, line: 726, column: 11)
!1969 = !DILocation(line: 726, column: 11, scope: !1492)
!1970 = !DILocation(line: 728, column: 5, scope: !1493)
!1971 = !DILocation(line: 400, column: 75, scope: !1493)
!1972 = !DILocation(line: 400, column: 3, scope: !1493)
!1973 = distinct !{!1973, !1611, !1974}
!1974 = !DILocation(line: 728, column: 5, scope: !1494)
!1975 = !DILocation(line: 730, column: 11, scope: !1976)
!1976 = distinct !DILexicalBlock(scope: !1465, file: !106, line: 730, column: 7)
!1977 = !DILocation(line: 730, column: 16, scope: !1976)
!1978 = !DILocation(line: 738, column: 51, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1465, file: !106, line: 738, column: 7)
!1980 = !DILocation(line: 739, column: 10, scope: !1979)
!1981 = !DILocation(line: 741, column: 11, scope: !1982)
!1982 = distinct !DILexicalBlock(scope: !1983, file: !106, line: 741, column: 11)
!1983 = distinct !DILexicalBlock(scope: !1979, file: !106, line: 740, column: 5)
!1984 = !DILocation(line: 741, column: 11, scope: !1983)
!1985 = !DILocation(line: 742, column: 16, scope: !1982)
!1986 = !DILocation(line: 742, column: 9, scope: !1982)
!1987 = !DILocation(line: 746, column: 18, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1982, file: !106, line: 746, column: 16)
!1989 = !DILocation(line: 746, column: 32, scope: !1988)
!1990 = !DILocation(line: 746, column: 29, scope: !1988)
!1991 = !DILocation(line: 755, column: 7, scope: !1992)
!1992 = distinct !DILexicalBlock(scope: !1465, file: !106, line: 755, column: 7)
!1993 = !DILocation(line: 755, column: 20, scope: !1992)
!1994 = !DILocation(line: 756, column: 12, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1996, file: !106, line: 756, column: 5)
!1996 = distinct !DILexicalBlock(scope: !1992, file: !106, line: 756, column: 5)
!1997 = !DILocation(line: 756, column: 5, scope: !1996)
!1998 = !DILocation(line: 757, column: 7, scope: !1999)
!1999 = distinct !DILexicalBlock(scope: !2000, file: !106, line: 757, column: 7)
!2000 = distinct !DILexicalBlock(scope: !1995, file: !106, line: 757, column: 7)
!2001 = !DILocation(line: 757, column: 7, scope: !2000)
!2002 = !DILocation(line: 756, column: 39, scope: !1995)
!2003 = distinct !{!2003, !1997, !2004}
!2004 = !DILocation(line: 757, column: 7, scope: !1996)
!2005 = !DILocation(line: 759, column: 11, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !1465, file: !106, line: 759, column: 7)
!2007 = !DILocation(line: 759, column: 7, scope: !1465)
!2008 = !DILocation(line: 760, column: 5, scope: !2006)
!2009 = !DILocation(line: 760, column: 17, scope: !2006)
!2010 = !DILocation(line: 766, column: 21, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !1465, file: !106, line: 766, column: 7)
!2012 = !DILocation(line: 766, column: 54, scope: !2011)
!2013 = !DILocation(line: 766, column: 51, scope: !2011)
!2014 = !DILocation(line: 770, column: 42, scope: !1465)
!2015 = !DILocation(line: 768, column: 10, scope: !1465)
!2016 = !DILocation(line: 768, column: 3, scope: !1465)
!2017 = !DILocation(line: 772, column: 1, scope: !1465)
!2018 = distinct !DISubprogram(name: "gettext_quote", scope: !106, file: !106, line: 207, type: !2019, isLocal: true, isDefinition: true, scopeLine: 208, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2021)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!38, !38, !5}
!2021 = !{!2022, !2023, !2024, !2025}
!2022 = !DILocalVariable(name: "msgid", arg: 1, scope: !2018, file: !106, line: 207, type: !38)
!2023 = !DILocalVariable(name: "s", arg: 2, scope: !2018, file: !106, line: 207, type: !5)
!2024 = !DILocalVariable(name: "translation", scope: !2018, file: !106, line: 209, type: !38)
!2025 = !DILocalVariable(name: "locale_code", scope: !2018, file: !106, line: 210, type: !38)
!2026 = !DILocation(line: 207, column: 28, scope: !2018)
!2027 = !DILocation(line: 207, column: 54, scope: !2018)
!2028 = !DILocation(line: 209, column: 29, scope: !2018)
!2029 = !DILocation(line: 209, column: 15, scope: !2018)
!2030 = !DILocation(line: 212, column: 19, scope: !2031)
!2031 = distinct !DILexicalBlock(scope: !2018, file: !106, line: 212, column: 7)
!2032 = !DILocation(line: 212, column: 7, scope: !2018)
!2033 = !DILocation(line: 233, column: 17, scope: !2018)
!2034 = !DILocation(line: 210, column: 15, scope: !2018)
!2035 = !DILocalVariable(name: "s1", arg: 1, scope: !2036, file: !2037, line: 160, type: !38)
!2036 = distinct !DISubprogram(name: "strcaseeq0", scope: !2037, file: !2037, line: 160, type: !2038, isLocal: true, isDefinition: true, scopeLine: 161, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2040)
!2037 = !DIFile(filename: "./lib/c-strcaseeq.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!2038 = !DISubroutineType(types: !2039)
!2039 = !{!41, !38, !38, !27, !27, !27, !27, !27, !27, !27, !27, !27}
!2040 = !{!2035, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050}
!2041 = !DILocalVariable(name: "s2", arg: 2, scope: !2036, file: !2037, line: 160, type: !38)
!2042 = !DILocalVariable(name: "s20", arg: 3, scope: !2036, file: !2037, line: 160, type: !27)
!2043 = !DILocalVariable(name: "s21", arg: 4, scope: !2036, file: !2037, line: 160, type: !27)
!2044 = !DILocalVariable(name: "s22", arg: 5, scope: !2036, file: !2037, line: 160, type: !27)
!2045 = !DILocalVariable(name: "s23", arg: 6, scope: !2036, file: !2037, line: 160, type: !27)
!2046 = !DILocalVariable(name: "s24", arg: 7, scope: !2036, file: !2037, line: 160, type: !27)
!2047 = !DILocalVariable(name: "s25", arg: 8, scope: !2036, file: !2037, line: 160, type: !27)
!2048 = !DILocalVariable(name: "s26", arg: 9, scope: !2036, file: !2037, line: 160, type: !27)
!2049 = !DILocalVariable(name: "s27", arg: 10, scope: !2036, file: !2037, line: 160, type: !27)
!2050 = !DILocalVariable(name: "s28", arg: 11, scope: !2036, file: !2037, line: 160, type: !27)
!2051 = !DILocation(line: 160, column: 25, scope: !2036, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 234, column: 7, scope: !2053)
!2053 = distinct !DILexicalBlock(scope: !2018, file: !106, line: 234, column: 7)
!2054 = !DILocation(line: 160, column: 41, scope: !2036, inlinedAt: !2052)
!2055 = !DILocation(line: 160, column: 50, scope: !2036, inlinedAt: !2052)
!2056 = !DILocation(line: 160, column: 60, scope: !2036, inlinedAt: !2052)
!2057 = !DILocation(line: 160, column: 70, scope: !2036, inlinedAt: !2052)
!2058 = !DILocation(line: 160, column: 80, scope: !2036, inlinedAt: !2052)
!2059 = !DILocation(line: 160, column: 90, scope: !2036, inlinedAt: !2052)
!2060 = !DILocation(line: 160, column: 100, scope: !2036, inlinedAt: !2052)
!2061 = !DILocation(line: 160, column: 110, scope: !2036, inlinedAt: !2052)
!2062 = !DILocation(line: 160, column: 120, scope: !2036, inlinedAt: !2052)
!2063 = !DILocation(line: 160, column: 130, scope: !2036, inlinedAt: !2052)
!2064 = !DILocation(line: 162, column: 7, scope: !2065, inlinedAt: !2052)
!2065 = distinct !DILexicalBlock(scope: !2036, file: !2037, line: 162, column: 7)
!2066 = !DILocalVariable(name: "s1", arg: 1, scope: !2067, file: !2037, line: 146, type: !38)
!2067 = distinct !DISubprogram(name: "strcaseeq1", scope: !2037, file: !2037, line: 146, type: !2068, isLocal: true, isDefinition: true, scopeLine: 147, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2070)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!41, !38, !38, !27, !27, !27, !27, !27, !27, !27, !27}
!2070 = !{!2066, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079}
!2071 = !DILocalVariable(name: "s2", arg: 2, scope: !2067, file: !2037, line: 146, type: !38)
!2072 = !DILocalVariable(name: "s21", arg: 3, scope: !2067, file: !2037, line: 146, type: !27)
!2073 = !DILocalVariable(name: "s22", arg: 4, scope: !2067, file: !2037, line: 146, type: !27)
!2074 = !DILocalVariable(name: "s23", arg: 5, scope: !2067, file: !2037, line: 146, type: !27)
!2075 = !DILocalVariable(name: "s24", arg: 6, scope: !2067, file: !2037, line: 146, type: !27)
!2076 = !DILocalVariable(name: "s25", arg: 7, scope: !2067, file: !2037, line: 146, type: !27)
!2077 = !DILocalVariable(name: "s26", arg: 8, scope: !2067, file: !2037, line: 146, type: !27)
!2078 = !DILocalVariable(name: "s27", arg: 9, scope: !2067, file: !2037, line: 146, type: !27)
!2079 = !DILocalVariable(name: "s28", arg: 10, scope: !2067, file: !2037, line: 146, type: !27)
!2080 = !DILocation(line: 146, column: 25, scope: !2067, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 167, column: 16, scope: !2082, inlinedAt: !2052)
!2082 = distinct !DILexicalBlock(scope: !2083, file: !2037, line: 164, column: 11)
!2083 = distinct !DILexicalBlock(scope: !2065, file: !2037, line: 163, column: 5)
!2084 = !DILocation(line: 146, column: 41, scope: !2067, inlinedAt: !2081)
!2085 = !DILocation(line: 146, column: 50, scope: !2067, inlinedAt: !2081)
!2086 = !DILocation(line: 146, column: 60, scope: !2067, inlinedAt: !2081)
!2087 = !DILocation(line: 146, column: 70, scope: !2067, inlinedAt: !2081)
!2088 = !DILocation(line: 146, column: 80, scope: !2067, inlinedAt: !2081)
!2089 = !DILocation(line: 146, column: 90, scope: !2067, inlinedAt: !2081)
!2090 = !DILocation(line: 146, column: 100, scope: !2067, inlinedAt: !2081)
!2091 = !DILocation(line: 146, column: 110, scope: !2067, inlinedAt: !2081)
!2092 = !DILocation(line: 146, column: 120, scope: !2067, inlinedAt: !2081)
!2093 = !DILocation(line: 148, column: 7, scope: !2094, inlinedAt: !2081)
!2094 = distinct !DILexicalBlock(scope: !2067, file: !2037, line: 148, column: 7)
!2095 = !DILocalVariable(name: "s1", arg: 1, scope: !2096, file: !2037, line: 132, type: !38)
!2096 = distinct !DISubprogram(name: "strcaseeq2", scope: !2037, file: !2037, line: 132, type: !2097, isLocal: true, isDefinition: true, scopeLine: 133, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!41, !38, !38, !27, !27, !27, !27, !27, !27, !27}
!2099 = !{!2095, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107}
!2100 = !DILocalVariable(name: "s2", arg: 2, scope: !2096, file: !2037, line: 132, type: !38)
!2101 = !DILocalVariable(name: "s22", arg: 3, scope: !2096, file: !2037, line: 132, type: !27)
!2102 = !DILocalVariable(name: "s23", arg: 4, scope: !2096, file: !2037, line: 132, type: !27)
!2103 = !DILocalVariable(name: "s24", arg: 5, scope: !2096, file: !2037, line: 132, type: !27)
!2104 = !DILocalVariable(name: "s25", arg: 6, scope: !2096, file: !2037, line: 132, type: !27)
!2105 = !DILocalVariable(name: "s26", arg: 7, scope: !2096, file: !2037, line: 132, type: !27)
!2106 = !DILocalVariable(name: "s27", arg: 8, scope: !2096, file: !2037, line: 132, type: !27)
!2107 = !DILocalVariable(name: "s28", arg: 9, scope: !2096, file: !2037, line: 132, type: !27)
!2108 = !DILocation(line: 132, column: 25, scope: !2096, inlinedAt: !2109)
!2109 = distinct !DILocation(line: 153, column: 16, scope: !2110, inlinedAt: !2081)
!2110 = distinct !DILexicalBlock(scope: !2111, file: !2037, line: 150, column: 11)
!2111 = distinct !DILexicalBlock(scope: !2094, file: !2037, line: 149, column: 5)
!2112 = !DILocation(line: 132, column: 41, scope: !2096, inlinedAt: !2109)
!2113 = !DILocation(line: 132, column: 50, scope: !2096, inlinedAt: !2109)
!2114 = !DILocation(line: 132, column: 60, scope: !2096, inlinedAt: !2109)
!2115 = !DILocation(line: 132, column: 70, scope: !2096, inlinedAt: !2109)
!2116 = !DILocation(line: 132, column: 80, scope: !2096, inlinedAt: !2109)
!2117 = !DILocation(line: 132, column: 90, scope: !2096, inlinedAt: !2109)
!2118 = !DILocation(line: 132, column: 100, scope: !2096, inlinedAt: !2109)
!2119 = !DILocation(line: 132, column: 110, scope: !2096, inlinedAt: !2109)
!2120 = !DILocation(line: 134, column: 7, scope: !2121, inlinedAt: !2109)
!2121 = distinct !DILexicalBlock(scope: !2096, file: !2037, line: 134, column: 7)
!2122 = !DILocalVariable(name: "s1", arg: 1, scope: !2123, file: !2037, line: 118, type: !38)
!2123 = distinct !DISubprogram(name: "strcaseeq3", scope: !2037, file: !2037, line: 118, type: !2124, isLocal: true, isDefinition: true, scopeLine: 119, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2126)
!2124 = !DISubroutineType(types: !2125)
!2125 = !{!41, !38, !38, !27, !27, !27, !27, !27, !27}
!2126 = !{!2122, !2127, !2128, !2129, !2130, !2131, !2132, !2133}
!2127 = !DILocalVariable(name: "s2", arg: 2, scope: !2123, file: !2037, line: 118, type: !38)
!2128 = !DILocalVariable(name: "s23", arg: 3, scope: !2123, file: !2037, line: 118, type: !27)
!2129 = !DILocalVariable(name: "s24", arg: 4, scope: !2123, file: !2037, line: 118, type: !27)
!2130 = !DILocalVariable(name: "s25", arg: 5, scope: !2123, file: !2037, line: 118, type: !27)
!2131 = !DILocalVariable(name: "s26", arg: 6, scope: !2123, file: !2037, line: 118, type: !27)
!2132 = !DILocalVariable(name: "s27", arg: 7, scope: !2123, file: !2037, line: 118, type: !27)
!2133 = !DILocalVariable(name: "s28", arg: 8, scope: !2123, file: !2037, line: 118, type: !27)
!2134 = !DILocation(line: 118, column: 25, scope: !2123, inlinedAt: !2135)
!2135 = distinct !DILocation(line: 139, column: 16, scope: !2136, inlinedAt: !2109)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !2037, line: 136, column: 11)
!2137 = distinct !DILexicalBlock(scope: !2121, file: !2037, line: 135, column: 5)
!2138 = !DILocation(line: 118, column: 41, scope: !2123, inlinedAt: !2135)
!2139 = !DILocation(line: 118, column: 50, scope: !2123, inlinedAt: !2135)
!2140 = !DILocation(line: 118, column: 60, scope: !2123, inlinedAt: !2135)
!2141 = !DILocation(line: 118, column: 70, scope: !2123, inlinedAt: !2135)
!2142 = !DILocation(line: 118, column: 80, scope: !2123, inlinedAt: !2135)
!2143 = !DILocation(line: 118, column: 90, scope: !2123, inlinedAt: !2135)
!2144 = !DILocation(line: 118, column: 100, scope: !2123, inlinedAt: !2135)
!2145 = !DILocation(line: 120, column: 7, scope: !2146, inlinedAt: !2135)
!2146 = distinct !DILexicalBlock(scope: !2123, file: !2037, line: 120, column: 7)
!2147 = !DILocation(line: 120, column: 7, scope: !2123, inlinedAt: !2135)
!2148 = !DILocalVariable(name: "s1", arg: 1, scope: !2149, file: !2037, line: 104, type: !38)
!2149 = distinct !DISubprogram(name: "strcaseeq4", scope: !2037, file: !2037, line: 104, type: !2150, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2152)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!41, !38, !38, !27, !27, !27, !27, !27}
!2152 = !{!2148, !2153, !2154, !2155, !2156, !2157, !2158}
!2153 = !DILocalVariable(name: "s2", arg: 2, scope: !2149, file: !2037, line: 104, type: !38)
!2154 = !DILocalVariable(name: "s24", arg: 3, scope: !2149, file: !2037, line: 104, type: !27)
!2155 = !DILocalVariable(name: "s25", arg: 4, scope: !2149, file: !2037, line: 104, type: !27)
!2156 = !DILocalVariable(name: "s26", arg: 5, scope: !2149, file: !2037, line: 104, type: !27)
!2157 = !DILocalVariable(name: "s27", arg: 6, scope: !2149, file: !2037, line: 104, type: !27)
!2158 = !DILocalVariable(name: "s28", arg: 7, scope: !2149, file: !2037, line: 104, type: !27)
!2159 = !DILocation(line: 104, column: 25, scope: !2149, inlinedAt: !2160)
!2160 = distinct !DILocation(line: 125, column: 16, scope: !2161, inlinedAt: !2135)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !2037, line: 122, column: 11)
!2162 = distinct !DILexicalBlock(scope: !2146, file: !2037, line: 121, column: 5)
!2163 = !DILocation(line: 104, column: 41, scope: !2149, inlinedAt: !2160)
!2164 = !DILocation(line: 104, column: 50, scope: !2149, inlinedAt: !2160)
!2165 = !DILocation(line: 104, column: 60, scope: !2149, inlinedAt: !2160)
!2166 = !DILocation(line: 104, column: 70, scope: !2149, inlinedAt: !2160)
!2167 = !DILocation(line: 104, column: 80, scope: !2149, inlinedAt: !2160)
!2168 = !DILocation(line: 104, column: 90, scope: !2149, inlinedAt: !2160)
!2169 = !DILocation(line: 106, column: 7, scope: !2170, inlinedAt: !2160)
!2170 = distinct !DILexicalBlock(scope: !2149, file: !2037, line: 106, column: 7)
!2171 = !DILocation(line: 106, column: 7, scope: !2149, inlinedAt: !2160)
!2172 = !DILocalVariable(name: "s1", arg: 1, scope: !2173, file: !2037, line: 90, type: !38)
!2173 = distinct !DISubprogram(name: "strcaseeq5", scope: !2037, file: !2037, line: 90, type: !2174, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2176)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!41, !38, !38, !27, !27, !27, !27}
!2176 = !{!2172, !2177, !2178, !2179, !2180, !2181}
!2177 = !DILocalVariable(name: "s2", arg: 2, scope: !2173, file: !2037, line: 90, type: !38)
!2178 = !DILocalVariable(name: "s25", arg: 3, scope: !2173, file: !2037, line: 90, type: !27)
!2179 = !DILocalVariable(name: "s26", arg: 4, scope: !2173, file: !2037, line: 90, type: !27)
!2180 = !DILocalVariable(name: "s27", arg: 5, scope: !2173, file: !2037, line: 90, type: !27)
!2181 = !DILocalVariable(name: "s28", arg: 6, scope: !2173, file: !2037, line: 90, type: !27)
!2182 = !DILocation(line: 90, column: 25, scope: !2173, inlinedAt: !2183)
!2183 = distinct !DILocation(line: 111, column: 16, scope: !2184, inlinedAt: !2160)
!2184 = distinct !DILexicalBlock(scope: !2185, file: !2037, line: 108, column: 11)
!2185 = distinct !DILexicalBlock(scope: !2170, file: !2037, line: 107, column: 5)
!2186 = !DILocation(line: 90, column: 41, scope: !2173, inlinedAt: !2183)
!2187 = !DILocation(line: 90, column: 50, scope: !2173, inlinedAt: !2183)
!2188 = !DILocation(line: 90, column: 60, scope: !2173, inlinedAt: !2183)
!2189 = !DILocation(line: 90, column: 70, scope: !2173, inlinedAt: !2183)
!2190 = !DILocation(line: 90, column: 80, scope: !2173, inlinedAt: !2183)
!2191 = !DILocation(line: 92, column: 7, scope: !2192, inlinedAt: !2183)
!2192 = distinct !DILexicalBlock(scope: !2173, file: !2037, line: 92, column: 7)
!2193 = !DILocation(line: 92, column: 7, scope: !2173, inlinedAt: !2183)
!2194 = !DILocation(line: 235, column: 12, scope: !2053)
!2195 = !DILocation(line: 235, column: 21, scope: !2053)
!2196 = !DILocation(line: 235, column: 5, scope: !2053)
!2197 = !DILocation(line: 146, column: 25, scope: !2067, inlinedAt: !2198)
!2198 = distinct !DILocation(line: 167, column: 16, scope: !2082, inlinedAt: !2199)
!2199 = distinct !DILocation(line: 236, column: 7, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2018, file: !106, line: 236, column: 7)
!2201 = !DILocation(line: 146, column: 41, scope: !2067, inlinedAt: !2198)
!2202 = !DILocation(line: 146, column: 50, scope: !2067, inlinedAt: !2198)
!2203 = !DILocation(line: 146, column: 60, scope: !2067, inlinedAt: !2198)
!2204 = !DILocation(line: 146, column: 70, scope: !2067, inlinedAt: !2198)
!2205 = !DILocation(line: 146, column: 80, scope: !2067, inlinedAt: !2198)
!2206 = !DILocation(line: 146, column: 90, scope: !2067, inlinedAt: !2198)
!2207 = !DILocation(line: 146, column: 100, scope: !2067, inlinedAt: !2198)
!2208 = !DILocation(line: 146, column: 110, scope: !2067, inlinedAt: !2198)
!2209 = !DILocation(line: 146, column: 120, scope: !2067, inlinedAt: !2198)
!2210 = !DILocation(line: 148, column: 7, scope: !2094, inlinedAt: !2198)
!2211 = !DILocation(line: 132, column: 25, scope: !2096, inlinedAt: !2212)
!2212 = distinct !DILocation(line: 153, column: 16, scope: !2110, inlinedAt: !2198)
!2213 = !DILocation(line: 132, column: 41, scope: !2096, inlinedAt: !2212)
!2214 = !DILocation(line: 132, column: 50, scope: !2096, inlinedAt: !2212)
!2215 = !DILocation(line: 132, column: 60, scope: !2096, inlinedAt: !2212)
!2216 = !DILocation(line: 132, column: 70, scope: !2096, inlinedAt: !2212)
!2217 = !DILocation(line: 132, column: 80, scope: !2096, inlinedAt: !2212)
!2218 = !DILocation(line: 132, column: 90, scope: !2096, inlinedAt: !2212)
!2219 = !DILocation(line: 132, column: 100, scope: !2096, inlinedAt: !2212)
!2220 = !DILocation(line: 132, column: 110, scope: !2096, inlinedAt: !2212)
!2221 = !DILocation(line: 134, column: 7, scope: !2121, inlinedAt: !2212)
!2222 = !DILocation(line: 134, column: 7, scope: !2096, inlinedAt: !2212)
!2223 = !DILocation(line: 118, column: 25, scope: !2123, inlinedAt: !2224)
!2224 = distinct !DILocation(line: 139, column: 16, scope: !2136, inlinedAt: !2212)
!2225 = !DILocation(line: 118, column: 41, scope: !2123, inlinedAt: !2224)
!2226 = !DILocation(line: 118, column: 50, scope: !2123, inlinedAt: !2224)
!2227 = !DILocation(line: 118, column: 60, scope: !2123, inlinedAt: !2224)
!2228 = !DILocation(line: 118, column: 70, scope: !2123, inlinedAt: !2224)
!2229 = !DILocation(line: 118, column: 80, scope: !2123, inlinedAt: !2224)
!2230 = !DILocation(line: 118, column: 90, scope: !2123, inlinedAt: !2224)
!2231 = !DILocation(line: 118, column: 100, scope: !2123, inlinedAt: !2224)
!2232 = !DILocation(line: 120, column: 7, scope: !2146, inlinedAt: !2224)
!2233 = !DILocation(line: 120, column: 7, scope: !2123, inlinedAt: !2224)
!2234 = !DILocation(line: 104, column: 25, scope: !2149, inlinedAt: !2235)
!2235 = distinct !DILocation(line: 125, column: 16, scope: !2161, inlinedAt: !2224)
!2236 = !DILocation(line: 104, column: 41, scope: !2149, inlinedAt: !2235)
!2237 = !DILocation(line: 104, column: 50, scope: !2149, inlinedAt: !2235)
!2238 = !DILocation(line: 104, column: 60, scope: !2149, inlinedAt: !2235)
!2239 = !DILocation(line: 104, column: 70, scope: !2149, inlinedAt: !2235)
!2240 = !DILocation(line: 104, column: 80, scope: !2149, inlinedAt: !2235)
!2241 = !DILocation(line: 104, column: 90, scope: !2149, inlinedAt: !2235)
!2242 = !DILocation(line: 106, column: 7, scope: !2170, inlinedAt: !2235)
!2243 = !DILocation(line: 106, column: 7, scope: !2149, inlinedAt: !2235)
!2244 = !DILocation(line: 90, column: 25, scope: !2173, inlinedAt: !2245)
!2245 = distinct !DILocation(line: 111, column: 16, scope: !2184, inlinedAt: !2235)
!2246 = !DILocation(line: 90, column: 41, scope: !2173, inlinedAt: !2245)
!2247 = !DILocation(line: 90, column: 50, scope: !2173, inlinedAt: !2245)
!2248 = !DILocation(line: 90, column: 60, scope: !2173, inlinedAt: !2245)
!2249 = !DILocation(line: 90, column: 70, scope: !2173, inlinedAt: !2245)
!2250 = !DILocation(line: 90, column: 80, scope: !2173, inlinedAt: !2245)
!2251 = !DILocation(line: 92, column: 7, scope: !2192, inlinedAt: !2245)
!2252 = !DILocation(line: 92, column: 7, scope: !2173, inlinedAt: !2245)
!2253 = !DILocalVariable(name: "s1", arg: 1, scope: !2254, file: !2037, line: 76, type: !38)
!2254 = distinct !DISubprogram(name: "strcaseeq6", scope: !2037, file: !2037, line: 76, type: !2255, isLocal: true, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2257)
!2255 = !DISubroutineType(types: !2256)
!2256 = !{!41, !38, !38, !27, !27, !27}
!2257 = !{!2253, !2258, !2259, !2260, !2261}
!2258 = !DILocalVariable(name: "s2", arg: 2, scope: !2254, file: !2037, line: 76, type: !38)
!2259 = !DILocalVariable(name: "s26", arg: 3, scope: !2254, file: !2037, line: 76, type: !27)
!2260 = !DILocalVariable(name: "s27", arg: 4, scope: !2254, file: !2037, line: 76, type: !27)
!2261 = !DILocalVariable(name: "s28", arg: 5, scope: !2254, file: !2037, line: 76, type: !27)
!2262 = !DILocation(line: 76, column: 25, scope: !2254, inlinedAt: !2263)
!2263 = distinct !DILocation(line: 97, column: 16, scope: !2264, inlinedAt: !2245)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !2037, line: 94, column: 11)
!2265 = distinct !DILexicalBlock(scope: !2192, file: !2037, line: 93, column: 5)
!2266 = !DILocation(line: 76, column: 41, scope: !2254, inlinedAt: !2263)
!2267 = !DILocation(line: 76, column: 50, scope: !2254, inlinedAt: !2263)
!2268 = !DILocation(line: 76, column: 60, scope: !2254, inlinedAt: !2263)
!2269 = !DILocation(line: 76, column: 70, scope: !2254, inlinedAt: !2263)
!2270 = !DILocation(line: 78, column: 7, scope: !2271, inlinedAt: !2263)
!2271 = distinct !DILexicalBlock(scope: !2254, file: !2037, line: 78, column: 7)
!2272 = !DILocation(line: 78, column: 7, scope: !2254, inlinedAt: !2263)
!2273 = !DILocalVariable(name: "s1", arg: 1, scope: !2274, file: !2037, line: 62, type: !38)
!2274 = distinct !DISubprogram(name: "strcaseeq7", scope: !2037, file: !2037, line: 62, type: !2275, isLocal: true, isDefinition: true, scopeLine: 63, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2277)
!2275 = !DISubroutineType(types: !2276)
!2276 = !{!41, !38, !38, !27, !27}
!2277 = !{!2273, !2278, !2279, !2280}
!2278 = !DILocalVariable(name: "s2", arg: 2, scope: !2274, file: !2037, line: 62, type: !38)
!2279 = !DILocalVariable(name: "s27", arg: 3, scope: !2274, file: !2037, line: 62, type: !27)
!2280 = !DILocalVariable(name: "s28", arg: 4, scope: !2274, file: !2037, line: 62, type: !27)
!2281 = !DILocation(line: 62, column: 25, scope: !2274, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 83, column: 16, scope: !2283, inlinedAt: !2263)
!2283 = distinct !DILexicalBlock(scope: !2284, file: !2037, line: 80, column: 11)
!2284 = distinct !DILexicalBlock(scope: !2271, file: !2037, line: 79, column: 5)
!2285 = !DILocation(line: 62, column: 41, scope: !2274, inlinedAt: !2282)
!2286 = !DILocation(line: 62, column: 50, scope: !2274, inlinedAt: !2282)
!2287 = !DILocation(line: 62, column: 60, scope: !2274, inlinedAt: !2282)
!2288 = !DILocation(line: 64, column: 7, scope: !2289, inlinedAt: !2282)
!2289 = distinct !DILexicalBlock(scope: !2274, file: !2037, line: 64, column: 7)
!2290 = !DILocation(line: 236, column: 7, scope: !2018)
!2291 = !DILocation(line: 237, column: 12, scope: !2200)
!2292 = !DILocation(line: 237, column: 21, scope: !2200)
!2293 = !DILocation(line: 237, column: 5, scope: !2200)
!2294 = !DILocation(line: 239, column: 13, scope: !2018)
!2295 = !DILocation(line: 239, column: 11, scope: !2018)
!2296 = !DILocation(line: 239, column: 3, scope: !2018)
!2297 = !DILocation(line: 0, scope: !2018)
!2298 = !DILocation(line: 240, column: 1, scope: !2018)
!2299 = distinct !DISubprogram(name: "quotearg_alloc", scope: !106, file: !106, line: 799, type: !2300, isLocal: false, isDefinition: true, scopeLine: 801, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!26, !38, !28, !1338}
!2302 = !{!2303, !2304, !2305}
!2303 = !DILocalVariable(name: "arg", arg: 1, scope: !2299, file: !106, line: 799, type: !38)
!2304 = !DILocalVariable(name: "argsize", arg: 2, scope: !2299, file: !106, line: 799, type: !28)
!2305 = !DILocalVariable(name: "o", arg: 3, scope: !2299, file: !106, line: 800, type: !1338)
!2306 = !DILocation(line: 799, column: 29, scope: !2299)
!2307 = !DILocation(line: 799, column: 41, scope: !2299)
!2308 = !DILocation(line: 800, column: 47, scope: !2299)
!2309 = !DILocalVariable(name: "arg", arg: 1, scope: !2310, file: !106, line: 812, type: !38)
!2310 = distinct !DISubprogram(name: "quotearg_alloc_mem", scope: !106, file: !106, line: 812, type: !2311, isLocal: false, isDefinition: true, scopeLine: 814, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2313)
!2311 = !DISubroutineType(types: !2312)
!2312 = !{!26, !38, !28, !172, !1338}
!2313 = !{!2309, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321}
!2314 = !DILocalVariable(name: "argsize", arg: 2, scope: !2310, file: !106, line: 812, type: !28)
!2315 = !DILocalVariable(name: "size", arg: 3, scope: !2310, file: !106, line: 812, type: !172)
!2316 = !DILocalVariable(name: "o", arg: 4, scope: !2310, file: !106, line: 813, type: !1338)
!2317 = !DILocalVariable(name: "p", scope: !2310, file: !106, line: 815, type: !1338)
!2318 = !DILocalVariable(name: "e", scope: !2310, file: !106, line: 816, type: !41)
!2319 = !DILocalVariable(name: "flags", scope: !2310, file: !106, line: 818, type: !41)
!2320 = !DILocalVariable(name: "bufsize", scope: !2310, file: !106, line: 819, type: !28)
!2321 = !DILocalVariable(name: "buf", scope: !2310, file: !106, line: 823, type: !26)
!2322 = !DILocation(line: 812, column: 33, scope: !2310, inlinedAt: !2323)
!2323 = distinct !DILocation(line: 802, column: 10, scope: !2299)
!2324 = !DILocation(line: 812, column: 45, scope: !2310, inlinedAt: !2323)
!2325 = !DILocation(line: 812, column: 62, scope: !2310, inlinedAt: !2323)
!2326 = !DILocation(line: 813, column: 51, scope: !2310, inlinedAt: !2323)
!2327 = !DILocation(line: 815, column: 37, scope: !2310, inlinedAt: !2323)
!2328 = !DILocation(line: 815, column: 33, scope: !2310, inlinedAt: !2323)
!2329 = !DILocation(line: 816, column: 11, scope: !2310, inlinedAt: !2323)
!2330 = !DILocation(line: 816, column: 7, scope: !2310, inlinedAt: !2323)
!2331 = !DILocation(line: 818, column: 18, scope: !2310, inlinedAt: !2323)
!2332 = !DILocation(line: 818, column: 24, scope: !2310, inlinedAt: !2323)
!2333 = !DILocation(line: 818, column: 7, scope: !2310, inlinedAt: !2323)
!2334 = !DILocation(line: 819, column: 69, scope: !2310, inlinedAt: !2323)
!2335 = !DILocation(line: 820, column: 53, scope: !2310, inlinedAt: !2323)
!2336 = !DILocation(line: 821, column: 49, scope: !2310, inlinedAt: !2323)
!2337 = !DILocation(line: 822, column: 49, scope: !2310, inlinedAt: !2323)
!2338 = !DILocation(line: 819, column: 20, scope: !2310, inlinedAt: !2323)
!2339 = !DILocation(line: 822, column: 62, scope: !2310, inlinedAt: !2323)
!2340 = !DILocation(line: 819, column: 10, scope: !2310, inlinedAt: !2323)
!2341 = !DILocalVariable(name: "n", arg: 1, scope: !2342, file: !168, line: 216, type: !28)
!2342 = distinct !DISubprogram(name: "xcharalloc", scope: !168, file: !168, line: 216, type: !1194, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2343)
!2343 = !{!2341}
!2344 = !DILocation(line: 216, column: 20, scope: !2342, inlinedAt: !2345)
!2345 = distinct !DILocation(line: 823, column: 15, scope: !2310, inlinedAt: !2323)
!2346 = !DILocation(line: 218, column: 10, scope: !2342, inlinedAt: !2345)
!2347 = !DILocation(line: 823, column: 9, scope: !2310, inlinedAt: !2323)
!2348 = !DILocation(line: 824, column: 60, scope: !2310, inlinedAt: !2323)
!2349 = !DILocation(line: 826, column: 32, scope: !2310, inlinedAt: !2323)
!2350 = !DILocation(line: 826, column: 47, scope: !2310, inlinedAt: !2323)
!2351 = !DILocation(line: 824, column: 3, scope: !2310, inlinedAt: !2323)
!2352 = !DILocation(line: 827, column: 9, scope: !2310, inlinedAt: !2323)
!2353 = !DILocation(line: 802, column: 3, scope: !2299)
!2354 = !DILocation(line: 812, column: 33, scope: !2310)
!2355 = !DILocation(line: 812, column: 45, scope: !2310)
!2356 = !DILocation(line: 812, column: 62, scope: !2310)
!2357 = !DILocation(line: 813, column: 51, scope: !2310)
!2358 = !DILocation(line: 815, column: 37, scope: !2310)
!2359 = !DILocation(line: 815, column: 33, scope: !2310)
!2360 = !DILocation(line: 816, column: 11, scope: !2310)
!2361 = !DILocation(line: 816, column: 7, scope: !2310)
!2362 = !DILocation(line: 818, column: 18, scope: !2310)
!2363 = !DILocation(line: 818, column: 27, scope: !2310)
!2364 = !DILocation(line: 818, column: 24, scope: !2310)
!2365 = !DILocation(line: 818, column: 7, scope: !2310)
!2366 = !DILocation(line: 819, column: 69, scope: !2310)
!2367 = !DILocation(line: 820, column: 53, scope: !2310)
!2368 = !DILocation(line: 821, column: 49, scope: !2310)
!2369 = !DILocation(line: 822, column: 49, scope: !2310)
!2370 = !DILocation(line: 819, column: 20, scope: !2310)
!2371 = !DILocation(line: 822, column: 62, scope: !2310)
!2372 = !DILocation(line: 819, column: 10, scope: !2310)
!2373 = !DILocation(line: 216, column: 20, scope: !2342, inlinedAt: !2374)
!2374 = distinct !DILocation(line: 823, column: 15, scope: !2310)
!2375 = !DILocation(line: 218, column: 10, scope: !2342, inlinedAt: !2374)
!2376 = !DILocation(line: 823, column: 9, scope: !2310)
!2377 = !DILocation(line: 824, column: 60, scope: !2310)
!2378 = !DILocation(line: 826, column: 32, scope: !2310)
!2379 = !DILocation(line: 826, column: 47, scope: !2310)
!2380 = !DILocation(line: 824, column: 3, scope: !2310)
!2381 = !DILocation(line: 827, column: 9, scope: !2310)
!2382 = !DILocation(line: 828, column: 7, scope: !2310)
!2383 = !DILocation(line: 829, column: 11, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2310, file: !106, line: 828, column: 7)
!2385 = !DILocation(line: 829, column: 5, scope: !2384)
!2386 = !DILocation(line: 830, column: 3, scope: !2310)
!2387 = distinct !DISubprogram(name: "quotearg_free", scope: !106, file: !106, line: 848, type: !1245, isLocal: false, isDefinition: true, scopeLine: 849, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2388)
!2388 = !{!2389, !2390}
!2389 = !DILocalVariable(name: "sv", scope: !2387, file: !106, line: 850, type: !132)
!2390 = !DILocalVariable(name: "i", scope: !2387, file: !106, line: 851, type: !41)
!2391 = !DILocation(line: 850, column: 24, scope: !2387)
!2392 = !DILocation(line: 850, column: 19, scope: !2387)
!2393 = !DILocation(line: 851, column: 7, scope: !2387)
!2394 = !DILocation(line: 852, column: 19, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2396, file: !106, line: 852, column: 3)
!2396 = distinct !DILexicalBlock(scope: !2387, file: !106, line: 852, column: 3)
!2397 = !DILocation(line: 852, column: 17, scope: !2395)
!2398 = !DILocation(line: 852, column: 3, scope: !2396)
!2399 = !DILocation(line: 853, column: 17, scope: !2395)
!2400 = !{!2401, !628, i64 8}
!2401 = !{!"slotvec", !821, i64 0, !628, i64 8}
!2402 = !DILocation(line: 853, column: 5, scope: !2395)
!2403 = !DILocation(line: 852, column: 28, scope: !2395)
!2404 = distinct !{!2404, !2398, !2405}
!2405 = !DILocation(line: 853, column: 20, scope: !2396)
!2406 = !DILocation(line: 854, column: 13, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2387, file: !106, line: 854, column: 7)
!2408 = !DILocation(line: 854, column: 17, scope: !2407)
!2409 = !DILocation(line: 854, column: 7, scope: !2387)
!2410 = !DILocation(line: 856, column: 7, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2407, file: !106, line: 855, column: 5)
!2412 = !DILocation(line: 857, column: 21, scope: !2411)
!2413 = !{!2401, !821, i64 0}
!2414 = !DILocation(line: 858, column: 20, scope: !2411)
!2415 = !DILocation(line: 859, column: 5, scope: !2411)
!2416 = !DILocation(line: 860, column: 10, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2387, file: !106, line: 860, column: 7)
!2418 = !DILocation(line: 860, column: 7, scope: !2387)
!2419 = !DILocation(line: 862, column: 13, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2417, file: !106, line: 861, column: 5)
!2421 = !DILocation(line: 862, column: 7, scope: !2420)
!2422 = !DILocation(line: 863, column: 15, scope: !2420)
!2423 = !DILocation(line: 864, column: 5, scope: !2420)
!2424 = !DILocation(line: 865, column: 10, scope: !2387)
!2425 = !DILocation(line: 866, column: 1, scope: !2387)
!2426 = distinct !DISubprogram(name: "quotearg_n", scope: !106, file: !106, line: 931, type: !2427, isLocal: false, isDefinition: true, scopeLine: 932, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2429)
!2427 = !DISubroutineType(types: !2428)
!2428 = !{!26, !41, !38}
!2429 = !{!2430, !2431}
!2430 = !DILocalVariable(name: "n", arg: 1, scope: !2426, file: !106, line: 931, type: !41)
!2431 = !DILocalVariable(name: "arg", arg: 2, scope: !2426, file: !106, line: 931, type: !38)
!2432 = !DILocation(line: 931, column: 17, scope: !2426)
!2433 = !DILocation(line: 931, column: 32, scope: !2426)
!2434 = !DILocation(line: 933, column: 10, scope: !2426)
!2435 = !DILocation(line: 933, column: 3, scope: !2426)
!2436 = distinct !DISubprogram(name: "quotearg_n_options", scope: !106, file: !106, line: 877, type: !2437, isLocal: true, isDefinition: true, scopeLine: 879, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2439)
!2437 = !DISubroutineType(types: !2438)
!2438 = !{!26, !41, !38, !28, !1338}
!2439 = !{!2440, !2441, !2442, !2443, !2444, !2445, !2446, !2449, !2450, !2452, !2453, !2454}
!2440 = !DILocalVariable(name: "n", arg: 1, scope: !2436, file: !106, line: 877, type: !41)
!2441 = !DILocalVariable(name: "arg", arg: 2, scope: !2436, file: !106, line: 877, type: !38)
!2442 = !DILocalVariable(name: "argsize", arg: 3, scope: !2436, file: !106, line: 877, type: !28)
!2443 = !DILocalVariable(name: "options", arg: 4, scope: !2436, file: !106, line: 878, type: !1338)
!2444 = !DILocalVariable(name: "e", scope: !2436, file: !106, line: 880, type: !41)
!2445 = !DILocalVariable(name: "sv", scope: !2436, file: !106, line: 882, type: !132)
!2446 = !DILocalVariable(name: "preallocated", scope: !2447, file: !106, line: 889, type: !61)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !106, line: 888, column: 5)
!2448 = distinct !DILexicalBlock(scope: !2436, file: !106, line: 887, column: 7)
!2449 = !DILocalVariable(name: "nmax", scope: !2447, file: !106, line: 890, type: !41)
!2450 = !DILocalVariable(name: "size", scope: !2451, file: !106, line: 903, type: !28)
!2451 = distinct !DILexicalBlock(scope: !2436, file: !106, line: 902, column: 3)
!2452 = !DILocalVariable(name: "val", scope: !2451, file: !106, line: 904, type: !26)
!2453 = !DILocalVariable(name: "flags", scope: !2451, file: !106, line: 906, type: !41)
!2454 = !DILocalVariable(name: "qsize", scope: !2451, file: !106, line: 907, type: !28)
!2455 = !DILocation(line: 877, column: 25, scope: !2436)
!2456 = !DILocation(line: 877, column: 40, scope: !2436)
!2457 = !DILocation(line: 877, column: 52, scope: !2436)
!2458 = !DILocation(line: 878, column: 51, scope: !2436)
!2459 = !DILocation(line: 880, column: 11, scope: !2436)
!2460 = !DILocation(line: 880, column: 7, scope: !2436)
!2461 = !DILocation(line: 882, column: 24, scope: !2436)
!2462 = !DILocation(line: 882, column: 19, scope: !2436)
!2463 = !DILocation(line: 884, column: 9, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2436, file: !106, line: 884, column: 7)
!2465 = !DILocation(line: 884, column: 7, scope: !2436)
!2466 = !DILocation(line: 885, column: 5, scope: !2464)
!2467 = !DILocation(line: 887, column: 7, scope: !2448)
!2468 = !DILocation(line: 887, column: 14, scope: !2448)
!2469 = !DILocation(line: 887, column: 7, scope: !2436)
!2470 = !DILocation(line: 889, column: 31, scope: !2447)
!2471 = !DILocation(line: 890, column: 11, scope: !2447)
!2472 = !DILocation(line: 892, column: 16, scope: !2473)
!2473 = distinct !DILexicalBlock(scope: !2447, file: !106, line: 892, column: 11)
!2474 = !DILocation(line: 892, column: 11, scope: !2447)
!2475 = !DILocation(line: 893, column: 9, scope: !2473)
!2476 = !DILocation(line: 895, column: 32, scope: !2447)
!2477 = !DILocation(line: 895, column: 61, scope: !2447)
!2478 = !DILocation(line: 895, column: 58, scope: !2447)
!2479 = !DILocation(line: 895, column: 66, scope: !2447)
!2480 = !DILocation(line: 895, column: 22, scope: !2447)
!2481 = !DILocation(line: 895, column: 15, scope: !2447)
!2482 = !DILocation(line: 896, column: 11, scope: !2447)
!2483 = !DILocation(line: 897, column: 15, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2447, file: !106, line: 896, column: 11)
!2485 = !{i64 0, i64 8, !1140, i64 8, i64 8, !627}
!2486 = !DILocation(line: 897, column: 9, scope: !2484)
!2487 = !DILocation(line: 898, column: 20, scope: !2447)
!2488 = !DILocation(line: 898, column: 18, scope: !2447)
!2489 = !DILocation(line: 898, column: 7, scope: !2447)
!2490 = !DILocation(line: 898, column: 38, scope: !2447)
!2491 = !DILocation(line: 898, column: 31, scope: !2447)
!2492 = !DILocation(line: 898, column: 48, scope: !2447)
!2493 = !DILocation(line: 899, column: 14, scope: !2447)
!2494 = !DILocation(line: 900, column: 5, scope: !2447)
!2495 = !DILocation(line: 0, scope: !2436)
!2496 = !DILocation(line: 903, column: 19, scope: !2451)
!2497 = !DILocation(line: 903, column: 25, scope: !2451)
!2498 = !DILocation(line: 903, column: 12, scope: !2451)
!2499 = !DILocation(line: 904, column: 23, scope: !2451)
!2500 = !DILocation(line: 904, column: 11, scope: !2451)
!2501 = !DILocation(line: 906, column: 26, scope: !2451)
!2502 = !DILocation(line: 906, column: 32, scope: !2451)
!2503 = !DILocation(line: 906, column: 9, scope: !2451)
!2504 = !DILocation(line: 908, column: 55, scope: !2451)
!2505 = !DILocation(line: 909, column: 46, scope: !2451)
!2506 = !DILocation(line: 910, column: 55, scope: !2451)
!2507 = !DILocation(line: 911, column: 55, scope: !2451)
!2508 = !DILocation(line: 907, column: 20, scope: !2451)
!2509 = !DILocation(line: 907, column: 12, scope: !2451)
!2510 = !DILocation(line: 913, column: 14, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2451, file: !106, line: 913, column: 9)
!2512 = !DILocation(line: 913, column: 9, scope: !2451)
!2513 = !DILocation(line: 915, column: 35, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2511, file: !106, line: 914, column: 7)
!2515 = !DILocation(line: 915, column: 20, scope: !2514)
!2516 = !DILocation(line: 916, column: 17, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2514, file: !106, line: 916, column: 13)
!2518 = !DILocation(line: 916, column: 13, scope: !2514)
!2519 = !DILocation(line: 917, column: 11, scope: !2517)
!2520 = !DILocation(line: 216, column: 20, scope: !2342, inlinedAt: !2521)
!2521 = distinct !DILocation(line: 918, column: 27, scope: !2514)
!2522 = !DILocation(line: 218, column: 10, scope: !2342, inlinedAt: !2521)
!2523 = !DILocation(line: 918, column: 19, scope: !2514)
!2524 = !DILocation(line: 919, column: 69, scope: !2514)
!2525 = !DILocation(line: 921, column: 44, scope: !2514)
!2526 = !DILocation(line: 922, column: 44, scope: !2514)
!2527 = !DILocation(line: 919, column: 9, scope: !2514)
!2528 = !DILocation(line: 923, column: 7, scope: !2514)
!2529 = !DILocation(line: 0, scope: !2451)
!2530 = !DILocation(line: 925, column: 11, scope: !2451)
!2531 = !DILocation(line: 926, column: 5, scope: !2451)
!2532 = distinct !DISubprogram(name: "quotearg_n_mem", scope: !106, file: !106, line: 937, type: !2533, isLocal: false, isDefinition: true, scopeLine: 938, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2535)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{!26, !41, !38, !28}
!2535 = !{!2536, !2537, !2538}
!2536 = !DILocalVariable(name: "n", arg: 1, scope: !2532, file: !106, line: 937, type: !41)
!2537 = !DILocalVariable(name: "arg", arg: 2, scope: !2532, file: !106, line: 937, type: !38)
!2538 = !DILocalVariable(name: "argsize", arg: 3, scope: !2532, file: !106, line: 937, type: !28)
!2539 = !DILocation(line: 937, column: 21, scope: !2532)
!2540 = !DILocation(line: 937, column: 36, scope: !2532)
!2541 = !DILocation(line: 937, column: 48, scope: !2532)
!2542 = !DILocation(line: 939, column: 10, scope: !2532)
!2543 = !DILocation(line: 939, column: 3, scope: !2532)
!2544 = distinct !DISubprogram(name: "quotearg", scope: !106, file: !106, line: 943, type: !2545, isLocal: false, isDefinition: true, scopeLine: 944, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2547)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!26, !38}
!2547 = !{!2548}
!2548 = !DILocalVariable(name: "arg", arg: 1, scope: !2544, file: !106, line: 943, type: !38)
!2549 = !DILocation(line: 943, column: 23, scope: !2544)
!2550 = !DILocation(line: 931, column: 17, scope: !2426, inlinedAt: !2551)
!2551 = distinct !DILocation(line: 945, column: 10, scope: !2544)
!2552 = !DILocation(line: 931, column: 32, scope: !2426, inlinedAt: !2551)
!2553 = !DILocation(line: 933, column: 10, scope: !2426, inlinedAt: !2551)
!2554 = !DILocation(line: 945, column: 3, scope: !2544)
!2555 = distinct !DISubprogram(name: "quotearg_mem", scope: !106, file: !106, line: 949, type: !2556, isLocal: false, isDefinition: true, scopeLine: 950, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2558)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{!26, !38, !28}
!2558 = !{!2559, !2560}
!2559 = !DILocalVariable(name: "arg", arg: 1, scope: !2555, file: !106, line: 949, type: !38)
!2560 = !DILocalVariable(name: "argsize", arg: 2, scope: !2555, file: !106, line: 949, type: !28)
!2561 = !DILocation(line: 949, column: 27, scope: !2555)
!2562 = !DILocation(line: 949, column: 39, scope: !2555)
!2563 = !DILocation(line: 937, column: 21, scope: !2532, inlinedAt: !2564)
!2564 = distinct !DILocation(line: 951, column: 10, scope: !2555)
!2565 = !DILocation(line: 937, column: 36, scope: !2532, inlinedAt: !2564)
!2566 = !DILocation(line: 937, column: 48, scope: !2532, inlinedAt: !2564)
!2567 = !DILocation(line: 939, column: 10, scope: !2532, inlinedAt: !2564)
!2568 = !DILocation(line: 951, column: 3, scope: !2555)
!2569 = distinct !DISubprogram(name: "quotearg_n_style", scope: !106, file: !106, line: 955, type: !2570, isLocal: false, isDefinition: true, scopeLine: 956, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2572)
!2570 = !DISubroutineType(types: !2571)
!2571 = !{!26, !41, !5, !38}
!2572 = !{!2573, !2574, !2575, !2576}
!2573 = !DILocalVariable(name: "n", arg: 1, scope: !2569, file: !106, line: 955, type: !41)
!2574 = !DILocalVariable(name: "s", arg: 2, scope: !2569, file: !106, line: 955, type: !5)
!2575 = !DILocalVariable(name: "arg", arg: 3, scope: !2569, file: !106, line: 955, type: !38)
!2576 = !DILocalVariable(name: "o", scope: !2569, file: !106, line: 957, type: !1339)
!2577 = !DILocation(line: 955, column: 23, scope: !2569)
!2578 = !DILocation(line: 955, column: 45, scope: !2569)
!2579 = !DILocation(line: 955, column: 60, scope: !2569)
!2580 = !DILocation(line: 957, column: 3, scope: !2569)
!2581 = !DILocation(line: 957, column: 32, scope: !2569)
!2582 = !DILocalVariable(name: "style", arg: 1, scope: !2583, file: !106, line: 193, type: !5)
!2583 = distinct !DISubprogram(name: "quoting_options_from_style", scope: !106, file: !106, line: 193, type: !2584, isLocal: true, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2586)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!113, !5}
!2586 = !{!2582, !2587}
!2587 = !DILocalVariable(name: "o", scope: !2583, file: !106, line: 195, type: !113)
!2588 = !DILocation(line: 193, column: 48, scope: !2583, inlinedAt: !2589)
!2589 = distinct !DILocation(line: 957, column: 36, scope: !2569)
!2590 = !DILocation(line: 195, column: 26, scope: !2583, inlinedAt: !2589)
!2591 = !{!2592}
!2592 = distinct !{!2592, !2593, !"quoting_options_from_style: argument 0"}
!2593 = distinct !{!2593, !"quoting_options_from_style"}
!2594 = !DILocation(line: 196, column: 13, scope: !2595, inlinedAt: !2589)
!2595 = distinct !DILexicalBlock(scope: !2583, file: !106, line: 196, column: 7)
!2596 = !DILocation(line: 196, column: 7, scope: !2583, inlinedAt: !2589)
!2597 = !DILocation(line: 197, column: 5, scope: !2595, inlinedAt: !2589)
!2598 = !DILocation(line: 198, column: 5, scope: !2583, inlinedAt: !2589)
!2599 = !DILocation(line: 198, column: 11, scope: !2583, inlinedAt: !2589)
!2600 = !DILocation(line: 958, column: 10, scope: !2569)
!2601 = !DILocation(line: 959, column: 1, scope: !2569)
!2602 = !DILocation(line: 958, column: 3, scope: !2569)
!2603 = distinct !DISubprogram(name: "quotearg_n_style_mem", scope: !106, file: !106, line: 962, type: !2604, isLocal: false, isDefinition: true, scopeLine: 964, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2606)
!2604 = !DISubroutineType(types: !2605)
!2605 = !{!26, !41, !5, !38, !28}
!2606 = !{!2607, !2608, !2609, !2610, !2611}
!2607 = !DILocalVariable(name: "n", arg: 1, scope: !2603, file: !106, line: 962, type: !41)
!2608 = !DILocalVariable(name: "s", arg: 2, scope: !2603, file: !106, line: 962, type: !5)
!2609 = !DILocalVariable(name: "arg", arg: 3, scope: !2603, file: !106, line: 963, type: !38)
!2610 = !DILocalVariable(name: "argsize", arg: 4, scope: !2603, file: !106, line: 963, type: !28)
!2611 = !DILocalVariable(name: "o", scope: !2603, file: !106, line: 965, type: !1339)
!2612 = !DILocation(line: 962, column: 27, scope: !2603)
!2613 = !DILocation(line: 962, column: 49, scope: !2603)
!2614 = !DILocation(line: 963, column: 35, scope: !2603)
!2615 = !DILocation(line: 963, column: 47, scope: !2603)
!2616 = !DILocation(line: 965, column: 3, scope: !2603)
!2617 = !DILocation(line: 965, column: 32, scope: !2603)
!2618 = !DILocation(line: 193, column: 48, scope: !2583, inlinedAt: !2619)
!2619 = distinct !DILocation(line: 965, column: 36, scope: !2603)
!2620 = !DILocation(line: 195, column: 26, scope: !2583, inlinedAt: !2619)
!2621 = !{!2622}
!2622 = distinct !{!2622, !2623, !"quoting_options_from_style: argument 0"}
!2623 = distinct !{!2623, !"quoting_options_from_style"}
!2624 = !DILocation(line: 196, column: 13, scope: !2595, inlinedAt: !2619)
!2625 = !DILocation(line: 196, column: 7, scope: !2583, inlinedAt: !2619)
!2626 = !DILocation(line: 197, column: 5, scope: !2595, inlinedAt: !2619)
!2627 = !DILocation(line: 198, column: 5, scope: !2583, inlinedAt: !2619)
!2628 = !DILocation(line: 198, column: 11, scope: !2583, inlinedAt: !2619)
!2629 = !DILocation(line: 966, column: 10, scope: !2603)
!2630 = !DILocation(line: 967, column: 1, scope: !2603)
!2631 = !DILocation(line: 966, column: 3, scope: !2603)
!2632 = distinct !DISubprogram(name: "quotearg_style", scope: !106, file: !106, line: 970, type: !2633, isLocal: false, isDefinition: true, scopeLine: 971, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2635)
!2633 = !DISubroutineType(types: !2634)
!2634 = !{!26, !5, !38}
!2635 = !{!2636, !2637}
!2636 = !DILocalVariable(name: "s", arg: 1, scope: !2632, file: !106, line: 970, type: !5)
!2637 = !DILocalVariable(name: "arg", arg: 2, scope: !2632, file: !106, line: 970, type: !38)
!2638 = !DILocation(line: 970, column: 36, scope: !2632)
!2639 = !DILocation(line: 970, column: 51, scope: !2632)
!2640 = !DILocation(line: 955, column: 23, scope: !2569, inlinedAt: !2641)
!2641 = distinct !DILocation(line: 972, column: 10, scope: !2632)
!2642 = !DILocation(line: 955, column: 45, scope: !2569, inlinedAt: !2641)
!2643 = !DILocation(line: 955, column: 60, scope: !2569, inlinedAt: !2641)
!2644 = !DILocation(line: 957, column: 3, scope: !2569, inlinedAt: !2641)
!2645 = !DILocation(line: 957, column: 32, scope: !2569, inlinedAt: !2641)
!2646 = !DILocation(line: 193, column: 48, scope: !2583, inlinedAt: !2647)
!2647 = distinct !DILocation(line: 957, column: 36, scope: !2569, inlinedAt: !2641)
!2648 = !DILocation(line: 195, column: 26, scope: !2583, inlinedAt: !2647)
!2649 = !{!2650}
!2650 = distinct !{!2650, !2651, !"quoting_options_from_style: argument 0"}
!2651 = distinct !{!2651, !"quoting_options_from_style"}
!2652 = !DILocation(line: 196, column: 13, scope: !2595, inlinedAt: !2647)
!2653 = !DILocation(line: 196, column: 7, scope: !2583, inlinedAt: !2647)
!2654 = !DILocation(line: 197, column: 5, scope: !2595, inlinedAt: !2647)
!2655 = !DILocation(line: 198, column: 5, scope: !2583, inlinedAt: !2647)
!2656 = !DILocation(line: 198, column: 11, scope: !2583, inlinedAt: !2647)
!2657 = !DILocation(line: 958, column: 10, scope: !2569, inlinedAt: !2641)
!2658 = !DILocation(line: 959, column: 1, scope: !2569, inlinedAt: !2641)
!2659 = !DILocation(line: 972, column: 3, scope: !2632)
!2660 = distinct !DISubprogram(name: "quotearg_style_mem", scope: !106, file: !106, line: 976, type: !2661, isLocal: false, isDefinition: true, scopeLine: 977, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2663)
!2661 = !DISubroutineType(types: !2662)
!2662 = !{!26, !5, !38, !28}
!2663 = !{!2664, !2665, !2666}
!2664 = !DILocalVariable(name: "s", arg: 1, scope: !2660, file: !106, line: 976, type: !5)
!2665 = !DILocalVariable(name: "arg", arg: 2, scope: !2660, file: !106, line: 976, type: !38)
!2666 = !DILocalVariable(name: "argsize", arg: 3, scope: !2660, file: !106, line: 976, type: !28)
!2667 = !DILocation(line: 976, column: 40, scope: !2660)
!2668 = !DILocation(line: 976, column: 55, scope: !2660)
!2669 = !DILocation(line: 976, column: 67, scope: !2660)
!2670 = !DILocation(line: 962, column: 27, scope: !2603, inlinedAt: !2671)
!2671 = distinct !DILocation(line: 978, column: 10, scope: !2660)
!2672 = !DILocation(line: 962, column: 49, scope: !2603, inlinedAt: !2671)
!2673 = !DILocation(line: 963, column: 35, scope: !2603, inlinedAt: !2671)
!2674 = !DILocation(line: 963, column: 47, scope: !2603, inlinedAt: !2671)
!2675 = !DILocation(line: 965, column: 3, scope: !2603, inlinedAt: !2671)
!2676 = !DILocation(line: 965, column: 32, scope: !2603, inlinedAt: !2671)
!2677 = !DILocation(line: 193, column: 48, scope: !2583, inlinedAt: !2678)
!2678 = distinct !DILocation(line: 965, column: 36, scope: !2603, inlinedAt: !2671)
!2679 = !DILocation(line: 195, column: 26, scope: !2583, inlinedAt: !2678)
!2680 = !{!2681}
!2681 = distinct !{!2681, !2682, !"quoting_options_from_style: argument 0"}
!2682 = distinct !{!2682, !"quoting_options_from_style"}
!2683 = !DILocation(line: 196, column: 13, scope: !2595, inlinedAt: !2678)
!2684 = !DILocation(line: 196, column: 7, scope: !2583, inlinedAt: !2678)
!2685 = !DILocation(line: 197, column: 5, scope: !2595, inlinedAt: !2678)
!2686 = !DILocation(line: 198, column: 5, scope: !2583, inlinedAt: !2678)
!2687 = !DILocation(line: 198, column: 11, scope: !2583, inlinedAt: !2678)
!2688 = !DILocation(line: 966, column: 10, scope: !2603, inlinedAt: !2671)
!2689 = !DILocation(line: 967, column: 1, scope: !2603, inlinedAt: !2671)
!2690 = !DILocation(line: 978, column: 3, scope: !2660)
!2691 = distinct !DISubprogram(name: "quotearg_char_mem", scope: !106, file: !106, line: 982, type: !2692, isLocal: false, isDefinition: true, scopeLine: 983, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2694)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!26, !38, !28, !27}
!2694 = !{!2695, !2696, !2697, !2698}
!2695 = !DILocalVariable(name: "arg", arg: 1, scope: !2691, file: !106, line: 982, type: !38)
!2696 = !DILocalVariable(name: "argsize", arg: 2, scope: !2691, file: !106, line: 982, type: !28)
!2697 = !DILocalVariable(name: "ch", arg: 3, scope: !2691, file: !106, line: 982, type: !27)
!2698 = !DILocalVariable(name: "options", scope: !2691, file: !106, line: 984, type: !113)
!2699 = !DILocation(line: 982, column: 32, scope: !2691)
!2700 = !DILocation(line: 982, column: 44, scope: !2691)
!2701 = !DILocation(line: 982, column: 58, scope: !2691)
!2702 = !DILocation(line: 984, column: 3, scope: !2691)
!2703 = !DILocation(line: 985, column: 13, scope: !2691)
!2704 = !{i64 0, i64 4, !781, i64 4, i64 4, !715, i64 8, i64 32, !781, i64 40, i64 8, !627, i64 48, i64 8, !627}
!2705 = !DILocation(line: 984, column: 26, scope: !2691)
!2706 = !DILocation(line: 152, column: 43, scope: !1360, inlinedAt: !2707)
!2707 = distinct !DILocation(line: 986, column: 3, scope: !2691)
!2708 = !DILocation(line: 152, column: 51, scope: !1360, inlinedAt: !2707)
!2709 = !DILocation(line: 152, column: 58, scope: !1360, inlinedAt: !2707)
!2710 = !DILocation(line: 154, column: 17, scope: !1360, inlinedAt: !2707)
!2711 = !DILocation(line: 156, column: 62, scope: !1360, inlinedAt: !2707)
!2712 = !DILocation(line: 156, column: 57, scope: !1360, inlinedAt: !2707)
!2713 = !DILocation(line: 155, column: 17, scope: !1360, inlinedAt: !2707)
!2714 = !DILocation(line: 157, column: 15, scope: !1360, inlinedAt: !2707)
!2715 = !DILocation(line: 157, column: 7, scope: !1360, inlinedAt: !2707)
!2716 = !DILocation(line: 158, column: 12, scope: !1360, inlinedAt: !2707)
!2717 = !DILocation(line: 158, column: 15, scope: !1360, inlinedAt: !2707)
!2718 = !DILocation(line: 158, column: 25, scope: !1360, inlinedAt: !2707)
!2719 = !DILocation(line: 158, column: 7, scope: !1360, inlinedAt: !2707)
!2720 = !DILocation(line: 159, column: 18, scope: !1360, inlinedAt: !2707)
!2721 = !DILocation(line: 159, column: 23, scope: !1360, inlinedAt: !2707)
!2722 = !DILocation(line: 159, column: 6, scope: !1360, inlinedAt: !2707)
!2723 = !DILocation(line: 987, column: 10, scope: !2691)
!2724 = !DILocation(line: 988, column: 1, scope: !2691)
!2725 = !DILocation(line: 987, column: 3, scope: !2691)
!2726 = distinct !DISubprogram(name: "quotearg_char", scope: !106, file: !106, line: 991, type: !2727, isLocal: false, isDefinition: true, scopeLine: 992, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2729)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{!26, !38, !27}
!2729 = !{!2730, !2731}
!2730 = !DILocalVariable(name: "arg", arg: 1, scope: !2726, file: !106, line: 991, type: !38)
!2731 = !DILocalVariable(name: "ch", arg: 2, scope: !2726, file: !106, line: 991, type: !27)
!2732 = !DILocation(line: 991, column: 28, scope: !2726)
!2733 = !DILocation(line: 991, column: 38, scope: !2726)
!2734 = !DILocation(line: 982, column: 32, scope: !2691, inlinedAt: !2735)
!2735 = distinct !DILocation(line: 993, column: 10, scope: !2726)
!2736 = !DILocation(line: 982, column: 44, scope: !2691, inlinedAt: !2735)
!2737 = !DILocation(line: 982, column: 58, scope: !2691, inlinedAt: !2735)
!2738 = !DILocation(line: 984, column: 3, scope: !2691, inlinedAt: !2735)
!2739 = !DILocation(line: 985, column: 13, scope: !2691, inlinedAt: !2735)
!2740 = !DILocation(line: 984, column: 26, scope: !2691, inlinedAt: !2735)
!2741 = !DILocation(line: 152, column: 43, scope: !1360, inlinedAt: !2742)
!2742 = distinct !DILocation(line: 986, column: 3, scope: !2691, inlinedAt: !2735)
!2743 = !DILocation(line: 152, column: 51, scope: !1360, inlinedAt: !2742)
!2744 = !DILocation(line: 152, column: 58, scope: !1360, inlinedAt: !2742)
!2745 = !DILocation(line: 154, column: 17, scope: !1360, inlinedAt: !2742)
!2746 = !DILocation(line: 156, column: 62, scope: !1360, inlinedAt: !2742)
!2747 = !DILocation(line: 156, column: 57, scope: !1360, inlinedAt: !2742)
!2748 = !DILocation(line: 155, column: 17, scope: !1360, inlinedAt: !2742)
!2749 = !DILocation(line: 157, column: 15, scope: !1360, inlinedAt: !2742)
!2750 = !DILocation(line: 157, column: 7, scope: !1360, inlinedAt: !2742)
!2751 = !DILocation(line: 158, column: 12, scope: !1360, inlinedAt: !2742)
!2752 = !DILocation(line: 158, column: 15, scope: !1360, inlinedAt: !2742)
!2753 = !DILocation(line: 158, column: 25, scope: !1360, inlinedAt: !2742)
!2754 = !DILocation(line: 158, column: 7, scope: !1360, inlinedAt: !2742)
!2755 = !DILocation(line: 159, column: 18, scope: !1360, inlinedAt: !2742)
!2756 = !DILocation(line: 159, column: 23, scope: !1360, inlinedAt: !2742)
!2757 = !DILocation(line: 159, column: 6, scope: !1360, inlinedAt: !2742)
!2758 = !DILocation(line: 987, column: 10, scope: !2691, inlinedAt: !2735)
!2759 = !DILocation(line: 988, column: 1, scope: !2691, inlinedAt: !2735)
!2760 = !DILocation(line: 993, column: 3, scope: !2726)
!2761 = distinct !DISubprogram(name: "quotearg_colon", scope: !106, file: !106, line: 997, type: !2545, isLocal: false, isDefinition: true, scopeLine: 998, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2762)
!2762 = !{!2763}
!2763 = !DILocalVariable(name: "arg", arg: 1, scope: !2761, file: !106, line: 997, type: !38)
!2764 = !DILocation(line: 997, column: 29, scope: !2761)
!2765 = !DILocation(line: 991, column: 28, scope: !2726, inlinedAt: !2766)
!2766 = distinct !DILocation(line: 999, column: 10, scope: !2761)
!2767 = !DILocation(line: 991, column: 38, scope: !2726, inlinedAt: !2766)
!2768 = !DILocation(line: 982, column: 32, scope: !2691, inlinedAt: !2769)
!2769 = distinct !DILocation(line: 993, column: 10, scope: !2726, inlinedAt: !2766)
!2770 = !DILocation(line: 982, column: 44, scope: !2691, inlinedAt: !2769)
!2771 = !DILocation(line: 982, column: 58, scope: !2691, inlinedAt: !2769)
!2772 = !DILocation(line: 984, column: 3, scope: !2691, inlinedAt: !2769)
!2773 = !DILocation(line: 985, column: 13, scope: !2691, inlinedAt: !2769)
!2774 = !DILocation(line: 984, column: 26, scope: !2691, inlinedAt: !2769)
!2775 = !DILocation(line: 152, column: 43, scope: !1360, inlinedAt: !2776)
!2776 = distinct !DILocation(line: 986, column: 3, scope: !2691, inlinedAt: !2769)
!2777 = !DILocation(line: 152, column: 51, scope: !1360, inlinedAt: !2776)
!2778 = !DILocation(line: 152, column: 58, scope: !1360, inlinedAt: !2776)
!2779 = !DILocation(line: 154, column: 17, scope: !1360, inlinedAt: !2776)
!2780 = !DILocation(line: 156, column: 57, scope: !1360, inlinedAt: !2776)
!2781 = !DILocation(line: 155, column: 17, scope: !1360, inlinedAt: !2776)
!2782 = !DILocation(line: 157, column: 7, scope: !1360, inlinedAt: !2776)
!2783 = !DILocation(line: 158, column: 12, scope: !1360, inlinedAt: !2776)
!2784 = !DILocation(line: 159, column: 6, scope: !1360, inlinedAt: !2776)
!2785 = !DILocation(line: 987, column: 10, scope: !2691, inlinedAt: !2769)
!2786 = !DILocation(line: 988, column: 1, scope: !2691, inlinedAt: !2769)
!2787 = !DILocation(line: 999, column: 3, scope: !2761)
!2788 = distinct !DISubprogram(name: "quotearg_colon_mem", scope: !106, file: !106, line: 1003, type: !2556, isLocal: false, isDefinition: true, scopeLine: 1004, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2789)
!2789 = !{!2790, !2791}
!2790 = !DILocalVariable(name: "arg", arg: 1, scope: !2788, file: !106, line: 1003, type: !38)
!2791 = !DILocalVariable(name: "argsize", arg: 2, scope: !2788, file: !106, line: 1003, type: !28)
!2792 = !DILocation(line: 1003, column: 33, scope: !2788)
!2793 = !DILocation(line: 1003, column: 45, scope: !2788)
!2794 = !DILocation(line: 982, column: 32, scope: !2691, inlinedAt: !2795)
!2795 = distinct !DILocation(line: 1005, column: 10, scope: !2788)
!2796 = !DILocation(line: 982, column: 44, scope: !2691, inlinedAt: !2795)
!2797 = !DILocation(line: 982, column: 58, scope: !2691, inlinedAt: !2795)
!2798 = !DILocation(line: 984, column: 3, scope: !2691, inlinedAt: !2795)
!2799 = !DILocation(line: 985, column: 13, scope: !2691, inlinedAt: !2795)
!2800 = !DILocation(line: 984, column: 26, scope: !2691, inlinedAt: !2795)
!2801 = !DILocation(line: 152, column: 43, scope: !1360, inlinedAt: !2802)
!2802 = distinct !DILocation(line: 986, column: 3, scope: !2691, inlinedAt: !2795)
!2803 = !DILocation(line: 152, column: 51, scope: !1360, inlinedAt: !2802)
!2804 = !DILocation(line: 152, column: 58, scope: !1360, inlinedAt: !2802)
!2805 = !DILocation(line: 154, column: 17, scope: !1360, inlinedAt: !2802)
!2806 = !DILocation(line: 156, column: 57, scope: !1360, inlinedAt: !2802)
!2807 = !DILocation(line: 155, column: 17, scope: !1360, inlinedAt: !2802)
!2808 = !DILocation(line: 157, column: 7, scope: !1360, inlinedAt: !2802)
!2809 = !DILocation(line: 158, column: 12, scope: !1360, inlinedAt: !2802)
!2810 = !DILocation(line: 159, column: 6, scope: !1360, inlinedAt: !2802)
!2811 = !DILocation(line: 987, column: 10, scope: !2691, inlinedAt: !2795)
!2812 = !DILocation(line: 988, column: 1, scope: !2691, inlinedAt: !2795)
!2813 = !DILocation(line: 1005, column: 3, scope: !2788)
!2814 = distinct !DISubprogram(name: "quotearg_n_style_colon", scope: !106, file: !106, line: 1009, type: !2570, isLocal: false, isDefinition: true, scopeLine: 1010, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2815)
!2815 = !{!2816, !2817, !2818, !2819}
!2816 = !DILocalVariable(name: "n", arg: 1, scope: !2814, file: !106, line: 1009, type: !41)
!2817 = !DILocalVariable(name: "s", arg: 2, scope: !2814, file: !106, line: 1009, type: !5)
!2818 = !DILocalVariable(name: "arg", arg: 3, scope: !2814, file: !106, line: 1009, type: !38)
!2819 = !DILocalVariable(name: "options", scope: !2814, file: !106, line: 1011, type: !113)
!2820 = !DILocation(line: 195, column: 26, scope: !2583, inlinedAt: !2821)
!2821 = distinct !DILocation(line: 1012, column: 13, scope: !2814)
!2822 = !DILocation(line: 1009, column: 29, scope: !2814)
!2823 = !DILocation(line: 1009, column: 51, scope: !2814)
!2824 = !DILocation(line: 1009, column: 66, scope: !2814)
!2825 = !DILocation(line: 1011, column: 3, scope: !2814)
!2826 = !DILocation(line: 1012, column: 13, scope: !2814)
!2827 = !DILocation(line: 193, column: 48, scope: !2583, inlinedAt: !2821)
!2828 = !{!2829}
!2829 = distinct !{!2829, !2830, !"quoting_options_from_style: argument 0"}
!2830 = distinct !{!2830, !"quoting_options_from_style"}
!2831 = !DILocation(line: 196, column: 13, scope: !2595, inlinedAt: !2821)
!2832 = !DILocation(line: 196, column: 7, scope: !2583, inlinedAt: !2821)
!2833 = !DILocation(line: 197, column: 5, scope: !2595, inlinedAt: !2821)
!2834 = !DILocation(line: 1011, column: 26, scope: !2814)
!2835 = !DILocation(line: 152, column: 43, scope: !1360, inlinedAt: !2836)
!2836 = distinct !DILocation(line: 1013, column: 3, scope: !2814)
!2837 = !DILocation(line: 152, column: 51, scope: !1360, inlinedAt: !2836)
!2838 = !DILocation(line: 152, column: 58, scope: !1360, inlinedAt: !2836)
!2839 = !DILocation(line: 154, column: 17, scope: !1360, inlinedAt: !2836)
!2840 = !DILocation(line: 156, column: 57, scope: !1360, inlinedAt: !2836)
!2841 = !DILocation(line: 155, column: 17, scope: !1360, inlinedAt: !2836)
!2842 = !DILocation(line: 157, column: 7, scope: !1360, inlinedAt: !2836)
!2843 = !DILocation(line: 158, column: 12, scope: !1360, inlinedAt: !2836)
!2844 = !DILocation(line: 159, column: 6, scope: !1360, inlinedAt: !2836)
!2845 = !DILocation(line: 1014, column: 10, scope: !2814)
!2846 = !DILocation(line: 1015, column: 1, scope: !2814)
!2847 = !DILocation(line: 1014, column: 3, scope: !2814)
!2848 = distinct !DISubprogram(name: "quotearg_n_custom", scope: !106, file: !106, line: 1018, type: !2849, isLocal: false, isDefinition: true, scopeLine: 1020, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2851)
!2849 = !DISubroutineType(types: !2850)
!2850 = !{!26, !41, !38, !38, !38}
!2851 = !{!2852, !2853, !2854, !2855}
!2852 = !DILocalVariable(name: "n", arg: 1, scope: !2848, file: !106, line: 1018, type: !41)
!2853 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2848, file: !106, line: 1018, type: !38)
!2854 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2848, file: !106, line: 1019, type: !38)
!2855 = !DILocalVariable(name: "arg", arg: 4, scope: !2848, file: !106, line: 1019, type: !38)
!2856 = !DILocation(line: 1018, column: 24, scope: !2848)
!2857 = !DILocation(line: 1018, column: 39, scope: !2848)
!2858 = !DILocation(line: 1019, column: 32, scope: !2848)
!2859 = !DILocation(line: 1019, column: 57, scope: !2848)
!2860 = !DILocalVariable(name: "n", arg: 1, scope: !2861, file: !106, line: 1026, type: !41)
!2861 = distinct !DISubprogram(name: "quotearg_n_custom_mem", scope: !106, file: !106, line: 1026, type: !2862, isLocal: false, isDefinition: true, scopeLine: 1029, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2864)
!2862 = !DISubroutineType(types: !2863)
!2863 = !{!26, !41, !38, !38, !38, !28}
!2864 = !{!2860, !2865, !2866, !2867, !2868, !2869}
!2865 = !DILocalVariable(name: "left_quote", arg: 2, scope: !2861, file: !106, line: 1026, type: !38)
!2866 = !DILocalVariable(name: "right_quote", arg: 3, scope: !2861, file: !106, line: 1027, type: !38)
!2867 = !DILocalVariable(name: "arg", arg: 4, scope: !2861, file: !106, line: 1028, type: !38)
!2868 = !DILocalVariable(name: "argsize", arg: 5, scope: !2861, file: !106, line: 1028, type: !28)
!2869 = !DILocalVariable(name: "o", scope: !2861, file: !106, line: 1030, type: !113)
!2870 = !DILocation(line: 1026, column: 28, scope: !2861, inlinedAt: !2871)
!2871 = distinct !DILocation(line: 1021, column: 10, scope: !2848)
!2872 = !DILocation(line: 1026, column: 43, scope: !2861, inlinedAt: !2871)
!2873 = !DILocation(line: 1027, column: 36, scope: !2861, inlinedAt: !2871)
!2874 = !DILocation(line: 1028, column: 36, scope: !2861, inlinedAt: !2871)
!2875 = !DILocation(line: 1028, column: 48, scope: !2861, inlinedAt: !2871)
!2876 = !DILocation(line: 1030, column: 3, scope: !2861, inlinedAt: !2871)
!2877 = !DILocation(line: 1030, column: 30, scope: !2861, inlinedAt: !2871)
!2878 = !DILocation(line: 1030, column: 26, scope: !2861, inlinedAt: !2871)
!2879 = !DILocation(line: 179, column: 45, scope: !1408, inlinedAt: !2880)
!2880 = distinct !DILocation(line: 1031, column: 3, scope: !2861, inlinedAt: !2871)
!2881 = !DILocation(line: 180, column: 33, scope: !1408, inlinedAt: !2880)
!2882 = !DILocation(line: 180, column: 57, scope: !1408, inlinedAt: !2880)
!2883 = !DILocation(line: 184, column: 6, scope: !1408, inlinedAt: !2880)
!2884 = !DILocation(line: 184, column: 12, scope: !1408, inlinedAt: !2880)
!2885 = !DILocation(line: 185, column: 8, scope: !1424, inlinedAt: !2880)
!2886 = !DILocation(line: 185, column: 23, scope: !1424, inlinedAt: !2880)
!2887 = !DILocation(line: 185, column: 19, scope: !1424, inlinedAt: !2880)
!2888 = !DILocation(line: 186, column: 5, scope: !1424, inlinedAt: !2880)
!2889 = !DILocation(line: 187, column: 6, scope: !1408, inlinedAt: !2880)
!2890 = !DILocation(line: 187, column: 17, scope: !1408, inlinedAt: !2880)
!2891 = !DILocation(line: 188, column: 6, scope: !1408, inlinedAt: !2880)
!2892 = !DILocation(line: 188, column: 18, scope: !1408, inlinedAt: !2880)
!2893 = !DILocation(line: 1032, column: 10, scope: !2861, inlinedAt: !2871)
!2894 = !DILocation(line: 1033, column: 1, scope: !2861, inlinedAt: !2871)
!2895 = !DILocation(line: 1021, column: 3, scope: !2848)
!2896 = !DILocation(line: 1026, column: 28, scope: !2861)
!2897 = !DILocation(line: 1026, column: 43, scope: !2861)
!2898 = !DILocation(line: 1027, column: 36, scope: !2861)
!2899 = !DILocation(line: 1028, column: 36, scope: !2861)
!2900 = !DILocation(line: 1028, column: 48, scope: !2861)
!2901 = !DILocation(line: 1030, column: 3, scope: !2861)
!2902 = !DILocation(line: 1030, column: 30, scope: !2861)
!2903 = !DILocation(line: 1030, column: 26, scope: !2861)
!2904 = !DILocation(line: 179, column: 45, scope: !1408, inlinedAt: !2905)
!2905 = distinct !DILocation(line: 1031, column: 3, scope: !2861)
!2906 = !DILocation(line: 180, column: 33, scope: !1408, inlinedAt: !2905)
!2907 = !DILocation(line: 180, column: 57, scope: !1408, inlinedAt: !2905)
!2908 = !DILocation(line: 184, column: 6, scope: !1408, inlinedAt: !2905)
!2909 = !DILocation(line: 184, column: 12, scope: !1408, inlinedAt: !2905)
!2910 = !DILocation(line: 185, column: 8, scope: !1424, inlinedAt: !2905)
!2911 = !DILocation(line: 185, column: 23, scope: !1424, inlinedAt: !2905)
!2912 = !DILocation(line: 185, column: 19, scope: !1424, inlinedAt: !2905)
!2913 = !DILocation(line: 186, column: 5, scope: !1424, inlinedAt: !2905)
!2914 = !DILocation(line: 187, column: 6, scope: !1408, inlinedAt: !2905)
!2915 = !DILocation(line: 187, column: 17, scope: !1408, inlinedAt: !2905)
!2916 = !DILocation(line: 188, column: 6, scope: !1408, inlinedAt: !2905)
!2917 = !DILocation(line: 188, column: 18, scope: !1408, inlinedAt: !2905)
!2918 = !DILocation(line: 1032, column: 10, scope: !2861)
!2919 = !DILocation(line: 1033, column: 1, scope: !2861)
!2920 = !DILocation(line: 1032, column: 3, scope: !2861)
!2921 = distinct !DISubprogram(name: "quotearg_custom", scope: !106, file: !106, line: 1036, type: !2922, isLocal: false, isDefinition: true, scopeLine: 1038, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2924)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!26, !38, !38, !38}
!2924 = !{!2925, !2926, !2927}
!2925 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2921, file: !106, line: 1036, type: !38)
!2926 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2921, file: !106, line: 1036, type: !38)
!2927 = !DILocalVariable(name: "arg", arg: 3, scope: !2921, file: !106, line: 1037, type: !38)
!2928 = !DILocation(line: 1036, column: 30, scope: !2921)
!2929 = !DILocation(line: 1036, column: 54, scope: !2921)
!2930 = !DILocation(line: 1037, column: 30, scope: !2921)
!2931 = !DILocation(line: 1018, column: 24, scope: !2848, inlinedAt: !2932)
!2932 = distinct !DILocation(line: 1039, column: 10, scope: !2921)
!2933 = !DILocation(line: 1018, column: 39, scope: !2848, inlinedAt: !2932)
!2934 = !DILocation(line: 1019, column: 32, scope: !2848, inlinedAt: !2932)
!2935 = !DILocation(line: 1019, column: 57, scope: !2848, inlinedAt: !2932)
!2936 = !DILocation(line: 1026, column: 28, scope: !2861, inlinedAt: !2937)
!2937 = distinct !DILocation(line: 1021, column: 10, scope: !2848, inlinedAt: !2932)
!2938 = !DILocation(line: 1026, column: 43, scope: !2861, inlinedAt: !2937)
!2939 = !DILocation(line: 1027, column: 36, scope: !2861, inlinedAt: !2937)
!2940 = !DILocation(line: 1028, column: 36, scope: !2861, inlinedAt: !2937)
!2941 = !DILocation(line: 1028, column: 48, scope: !2861, inlinedAt: !2937)
!2942 = !DILocation(line: 1030, column: 3, scope: !2861, inlinedAt: !2937)
!2943 = !DILocation(line: 1030, column: 30, scope: !2861, inlinedAt: !2937)
!2944 = !DILocation(line: 1030, column: 26, scope: !2861, inlinedAt: !2937)
!2945 = !DILocation(line: 179, column: 45, scope: !1408, inlinedAt: !2946)
!2946 = distinct !DILocation(line: 1031, column: 3, scope: !2861, inlinedAt: !2937)
!2947 = !DILocation(line: 180, column: 33, scope: !1408, inlinedAt: !2946)
!2948 = !DILocation(line: 180, column: 57, scope: !1408, inlinedAt: !2946)
!2949 = !DILocation(line: 184, column: 6, scope: !1408, inlinedAt: !2946)
!2950 = !DILocation(line: 184, column: 12, scope: !1408, inlinedAt: !2946)
!2951 = !DILocation(line: 185, column: 8, scope: !1424, inlinedAt: !2946)
!2952 = !DILocation(line: 185, column: 23, scope: !1424, inlinedAt: !2946)
!2953 = !DILocation(line: 185, column: 19, scope: !1424, inlinedAt: !2946)
!2954 = !DILocation(line: 186, column: 5, scope: !1424, inlinedAt: !2946)
!2955 = !DILocation(line: 187, column: 6, scope: !1408, inlinedAt: !2946)
!2956 = !DILocation(line: 187, column: 17, scope: !1408, inlinedAt: !2946)
!2957 = !DILocation(line: 188, column: 6, scope: !1408, inlinedAt: !2946)
!2958 = !DILocation(line: 188, column: 18, scope: !1408, inlinedAt: !2946)
!2959 = !DILocation(line: 1032, column: 10, scope: !2861, inlinedAt: !2937)
!2960 = !DILocation(line: 1033, column: 1, scope: !2861, inlinedAt: !2937)
!2961 = !DILocation(line: 1039, column: 3, scope: !2921)
!2962 = distinct !DISubprogram(name: "quotearg_custom_mem", scope: !106, file: !106, line: 1043, type: !2963, isLocal: false, isDefinition: true, scopeLine: 1045, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !2965)
!2963 = !DISubroutineType(types: !2964)
!2964 = !{!26, !38, !38, !38, !28}
!2965 = !{!2966, !2967, !2968, !2969}
!2966 = !DILocalVariable(name: "left_quote", arg: 1, scope: !2962, file: !106, line: 1043, type: !38)
!2967 = !DILocalVariable(name: "right_quote", arg: 2, scope: !2962, file: !106, line: 1043, type: !38)
!2968 = !DILocalVariable(name: "arg", arg: 3, scope: !2962, file: !106, line: 1044, type: !38)
!2969 = !DILocalVariable(name: "argsize", arg: 4, scope: !2962, file: !106, line: 1044, type: !28)
!2970 = !DILocation(line: 1043, column: 34, scope: !2962)
!2971 = !DILocation(line: 1043, column: 58, scope: !2962)
!2972 = !DILocation(line: 1044, column: 34, scope: !2962)
!2973 = !DILocation(line: 1044, column: 46, scope: !2962)
!2974 = !DILocation(line: 1026, column: 28, scope: !2861, inlinedAt: !2975)
!2975 = distinct !DILocation(line: 1046, column: 10, scope: !2962)
!2976 = !DILocation(line: 1026, column: 43, scope: !2861, inlinedAt: !2975)
!2977 = !DILocation(line: 1027, column: 36, scope: !2861, inlinedAt: !2975)
!2978 = !DILocation(line: 1028, column: 36, scope: !2861, inlinedAt: !2975)
!2979 = !DILocation(line: 1028, column: 48, scope: !2861, inlinedAt: !2975)
!2980 = !DILocation(line: 1030, column: 3, scope: !2861, inlinedAt: !2975)
!2981 = !DILocation(line: 1030, column: 30, scope: !2861, inlinedAt: !2975)
!2982 = !DILocation(line: 1030, column: 26, scope: !2861, inlinedAt: !2975)
!2983 = !DILocation(line: 179, column: 45, scope: !1408, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 1031, column: 3, scope: !2861, inlinedAt: !2975)
!2985 = !DILocation(line: 180, column: 33, scope: !1408, inlinedAt: !2984)
!2986 = !DILocation(line: 180, column: 57, scope: !1408, inlinedAt: !2984)
!2987 = !DILocation(line: 184, column: 6, scope: !1408, inlinedAt: !2984)
!2988 = !DILocation(line: 184, column: 12, scope: !1408, inlinedAt: !2984)
!2989 = !DILocation(line: 185, column: 8, scope: !1424, inlinedAt: !2984)
!2990 = !DILocation(line: 185, column: 23, scope: !1424, inlinedAt: !2984)
!2991 = !DILocation(line: 185, column: 19, scope: !1424, inlinedAt: !2984)
!2992 = !DILocation(line: 186, column: 5, scope: !1424, inlinedAt: !2984)
!2993 = !DILocation(line: 187, column: 6, scope: !1408, inlinedAt: !2984)
!2994 = !DILocation(line: 187, column: 17, scope: !1408, inlinedAt: !2984)
!2995 = !DILocation(line: 188, column: 6, scope: !1408, inlinedAt: !2984)
!2996 = !DILocation(line: 188, column: 18, scope: !1408, inlinedAt: !2984)
!2997 = !DILocation(line: 1032, column: 10, scope: !2861, inlinedAt: !2975)
!2998 = !DILocation(line: 1033, column: 1, scope: !2861, inlinedAt: !2975)
!2999 = !DILocation(line: 1046, column: 3, scope: !2962)
!3000 = distinct !DISubprogram(name: "quote_n_mem", scope: !106, file: !106, line: 1061, type: !3001, isLocal: false, isDefinition: true, scopeLine: 1062, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !3003)
!3001 = !DISubroutineType(types: !3002)
!3002 = !{!38, !41, !38, !28}
!3003 = !{!3004, !3005, !3006}
!3004 = !DILocalVariable(name: "n", arg: 1, scope: !3000, file: !106, line: 1061, type: !41)
!3005 = !DILocalVariable(name: "arg", arg: 2, scope: !3000, file: !106, line: 1061, type: !38)
!3006 = !DILocalVariable(name: "argsize", arg: 3, scope: !3000, file: !106, line: 1061, type: !28)
!3007 = !DILocation(line: 1061, column: 18, scope: !3000)
!3008 = !DILocation(line: 1061, column: 33, scope: !3000)
!3009 = !DILocation(line: 1061, column: 45, scope: !3000)
!3010 = !DILocation(line: 1063, column: 10, scope: !3000)
!3011 = !DILocation(line: 1063, column: 3, scope: !3000)
!3012 = distinct !DISubprogram(name: "quote_mem", scope: !106, file: !106, line: 1067, type: !3013, isLocal: false, isDefinition: true, scopeLine: 1068, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{!38, !38, !28}
!3015 = !{!3016, !3017}
!3016 = !DILocalVariable(name: "arg", arg: 1, scope: !3012, file: !106, line: 1067, type: !38)
!3017 = !DILocalVariable(name: "argsize", arg: 2, scope: !3012, file: !106, line: 1067, type: !28)
!3018 = !DILocation(line: 1067, column: 24, scope: !3012)
!3019 = !DILocation(line: 1067, column: 36, scope: !3012)
!3020 = !DILocation(line: 1061, column: 18, scope: !3000, inlinedAt: !3021)
!3021 = distinct !DILocation(line: 1069, column: 10, scope: !3012)
!3022 = !DILocation(line: 1061, column: 33, scope: !3000, inlinedAt: !3021)
!3023 = !DILocation(line: 1061, column: 45, scope: !3000, inlinedAt: !3021)
!3024 = !DILocation(line: 1063, column: 10, scope: !3000, inlinedAt: !3021)
!3025 = !DILocation(line: 1069, column: 3, scope: !3012)
!3026 = distinct !DISubprogram(name: "quote_n", scope: !106, file: !106, line: 1073, type: !3027, isLocal: false, isDefinition: true, scopeLine: 1074, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !3029)
!3027 = !DISubroutineType(types: !3028)
!3028 = !{!38, !41, !38}
!3029 = !{!3030, !3031}
!3030 = !DILocalVariable(name: "n", arg: 1, scope: !3026, file: !106, line: 1073, type: !41)
!3031 = !DILocalVariable(name: "arg", arg: 2, scope: !3026, file: !106, line: 1073, type: !38)
!3032 = !DILocation(line: 1073, column: 14, scope: !3026)
!3033 = !DILocation(line: 1073, column: 29, scope: !3026)
!3034 = !DILocation(line: 1061, column: 18, scope: !3000, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 1075, column: 10, scope: !3026)
!3036 = !DILocation(line: 1061, column: 33, scope: !3000, inlinedAt: !3035)
!3037 = !DILocation(line: 1061, column: 45, scope: !3000, inlinedAt: !3035)
!3038 = !DILocation(line: 1063, column: 10, scope: !3000, inlinedAt: !3035)
!3039 = !DILocation(line: 1075, column: 3, scope: !3026)
!3040 = distinct !DISubprogram(name: "quote", scope: !106, file: !106, line: 1079, type: !3041, isLocal: false, isDefinition: true, scopeLine: 1080, flags: DIFlagPrototyped, isOptimized: true, unit: !78, retainedNodes: !3043)
!3041 = !DISubroutineType(types: !3042)
!3042 = !{!38, !38}
!3043 = !{!3044}
!3044 = !DILocalVariable(name: "arg", arg: 1, scope: !3040, file: !106, line: 1079, type: !38)
!3045 = !DILocation(line: 1079, column: 20, scope: !3040)
!3046 = !DILocation(line: 1073, column: 14, scope: !3026, inlinedAt: !3047)
!3047 = distinct !DILocation(line: 1081, column: 10, scope: !3040)
!3048 = !DILocation(line: 1073, column: 29, scope: !3026, inlinedAt: !3047)
!3049 = !DILocation(line: 1061, column: 18, scope: !3000, inlinedAt: !3050)
!3050 = distinct !DILocation(line: 1075, column: 10, scope: !3026, inlinedAt: !3047)
!3051 = !DILocation(line: 1061, column: 33, scope: !3000, inlinedAt: !3050)
!3052 = !DILocation(line: 1061, column: 45, scope: !3000, inlinedAt: !3050)
!3053 = !DILocation(line: 1063, column: 10, scope: !3000, inlinedAt: !3050)
!3054 = !DILocation(line: 1081, column: 3, scope: !3040)
!3055 = distinct !DISubprogram(name: "get_root_dev_ino", scope: !3056, file: !3056, line: 29, type: !3057, isLocal: false, isDefinition: true, scopeLine: 30, flags: DIFlagPrototyped, isOptimized: true, unit: !154, retainedNodes: !3064)
!3056 = !DIFile(filename: "lib/root-dev-ino.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3057 = !DISubroutineType(types: !3058)
!3058 = !{!3059, !3059}
!3059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3060, size: 64)
!3060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_ino", file: !869, line: 7, size: 128, elements: !3061)
!3061 = !{!3062, !3063}
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3060, file: !869, line: 9, baseType: !872, size: 64)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3060, file: !869, line: 10, baseType: !875, size: 64, offset: 64)
!3064 = !{!3065, !3066}
!3065 = !DILocalVariable(name: "root_d_i", arg: 1, scope: !3055, file: !3056, line: 29, type: !3059)
!3066 = !DILocalVariable(name: "statbuf", scope: !3055, file: !3056, line: 31, type: !3067)
!3067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !731, line: 46, size: 1152, elements: !3068)
!3068 = !{!3069, !3070, !3071, !3072, !3073, !3074, !3075, !3076, !3077, !3078, !3079, !3080, !3085, !3086, !3087}
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !3067, file: !731, line: 48, baseType: !734, size: 64)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !3067, file: !731, line: 53, baseType: !737, size: 64, offset: 64)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !3067, file: !731, line: 61, baseType: !739, size: 64, offset: 128)
!3072 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !3067, file: !731, line: 62, baseType: !741, size: 32, offset: 192)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !3067, file: !731, line: 64, baseType: !743, size: 32, offset: 224)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !3067, file: !731, line: 65, baseType: !745, size: 32, offset: 256)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !3067, file: !731, line: 67, baseType: !41, size: 32, offset: 288)
!3076 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !3067, file: !731, line: 69, baseType: !734, size: 64, offset: 320)
!3077 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !3067, file: !731, line: 74, baseType: !749, size: 64, offset: 384)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !3067, file: !731, line: 78, baseType: !752, size: 64, offset: 448)
!3079 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !3067, file: !731, line: 80, baseType: !754, size: 64, offset: 512)
!3080 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !3067, file: !731, line: 91, baseType: !3081, size: 128, offset: 576)
!3081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !757, line: 9, size: 128, elements: !3082)
!3082 = !{!3083, !3084}
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !3081, file: !757, line: 11, baseType: !760, size: 64)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !3081, file: !757, line: 12, baseType: !762, size: 64, offset: 64)
!3085 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !3067, file: !731, line: 92, baseType: !3081, size: 128, offset: 704)
!3086 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !3067, file: !731, line: 93, baseType: !3081, size: 128, offset: 832)
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !3067, file: !731, line: 106, baseType: !766, size: 192, offset: 960)
!3088 = !DILocation(line: 29, column: 35, scope: !3055)
!3089 = !DILocation(line: 31, column: 3, scope: !3055)
!3090 = !DILocation(line: 31, column: 15, scope: !3055)
!3091 = !DILocalVariable(name: "__path", arg: 1, scope: !3092, file: !800, line: 460, type: !38)
!3092 = distinct !DISubprogram(name: "lstat", scope: !800, file: !800, line: 460, type: !3093, isLocal: false, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: true, unit: !154, retainedNodes: !3096)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{!41, !38, !3095}
!3095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3067, size: 64)
!3096 = !{!3091, !3097}
!3097 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !3092, file: !800, line: 460, type: !3095)
!3098 = !DILocation(line: 460, column: 1, scope: !3092, inlinedAt: !3099)
!3099 = distinct !DILocation(line: 32, column: 7, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3055, file: !3056, line: 32, column: 7)
!3101 = !DILocation(line: 462, column: 10, scope: !3092, inlinedAt: !3099)
!3102 = !DILocation(line: 32, column: 7, scope: !3100)
!3103 = !DILocation(line: 32, column: 7, scope: !3055)
!3104 = !DILocation(line: 35, column: 30, scope: !3055)
!3105 = !DILocation(line: 34, column: 20, scope: !3055)
!3106 = !DILocation(line: 36, column: 3, scope: !3055)
!3107 = !DILocation(line: 0, scope: !3055)
!3108 = !DILocation(line: 37, column: 1, scope: !3055)
!3109 = distinct !DISubprogram(name: "version_etc_arn", scope: !160, file: !160, line: 62, type: !3110, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !3165)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{null, !3112, !38, !38, !38, !3164, !28}
!3112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3113, size: 64)
!3113 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3114, line: 7, baseType: !3115)
!3114 = !DIFile(filename: "/usr/include/bits/types/FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3116, line: 49, size: 1728, elements: !3117)
!3116 = !DIFile(filename: "/usr/include/bits/types/struct_FILE.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3117 = !{!3118, !3119, !3120, !3121, !3122, !3123, !3124, !3125, !3126, !3127, !3128, !3129, !3130, !3133, !3135, !3136, !3137, !3138, !3139, !3141, !3145, !3148, !3150, !3153, !3156, !3157, !3158, !3159, !3160}
!3118 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3115, file: !3116, line: 51, baseType: !41, size: 32)
!3119 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3115, file: !3116, line: 54, baseType: !26, size: 64, offset: 64)
!3120 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3115, file: !3116, line: 55, baseType: !26, size: 64, offset: 128)
!3121 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3115, file: !3116, line: 56, baseType: !26, size: 64, offset: 192)
!3122 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3115, file: !3116, line: 57, baseType: !26, size: 64, offset: 256)
!3123 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3115, file: !3116, line: 58, baseType: !26, size: 64, offset: 320)
!3124 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3115, file: !3116, line: 59, baseType: !26, size: 64, offset: 384)
!3125 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3115, file: !3116, line: 60, baseType: !26, size: 64, offset: 448)
!3126 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3115, file: !3116, line: 61, baseType: !26, size: 64, offset: 512)
!3127 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3115, file: !3116, line: 64, baseType: !26, size: 64, offset: 576)
!3128 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3115, file: !3116, line: 65, baseType: !26, size: 64, offset: 640)
!3129 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3115, file: !3116, line: 66, baseType: !26, size: 64, offset: 704)
!3130 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3115, file: !3116, line: 68, baseType: !3131, size: 64, offset: 768)
!3131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3132, size: 64)
!3132 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !3116, line: 36, flags: DIFlagFwdDecl)
!3133 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3115, file: !3116, line: 70, baseType: !3134, size: 64, offset: 832)
!3134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3115, size: 64)
!3135 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3115, file: !3116, line: 72, baseType: !41, size: 32, offset: 896)
!3136 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3115, file: !3116, line: 73, baseType: !41, size: 32, offset: 928)
!3137 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3115, file: !3116, line: 74, baseType: !749, size: 64, offset: 960)
!3138 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3115, file: !3116, line: 77, baseType: !102, size: 16, offset: 1024)
!3139 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3115, file: !3116, line: 78, baseType: !3140, size: 8, offset: 1040)
!3140 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!3141 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3115, file: !3116, line: 79, baseType: !3142, size: 8, offset: 1048)
!3142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 8, elements: !3143)
!3143 = !{!3144}
!3144 = !DISubrange(count: 1)
!3145 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3115, file: !3116, line: 81, baseType: !3146, size: 64, offset: 1088)
!3146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3147, size: 64)
!3147 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !3116, line: 43, baseType: null)
!3148 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3115, file: !3116, line: 89, baseType: !3149, size: 64, offset: 1152)
!3149 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !735, line: 151, baseType: !750)
!3150 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3115, file: !3116, line: 91, baseType: !3151, size: 64, offset: 1216)
!3151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3152, size: 64)
!3152 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !3116, line: 37, flags: DIFlagFwdDecl)
!3153 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3115, file: !3116, line: 92, baseType: !3154, size: 64, offset: 1280)
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3155, size: 64)
!3155 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !3116, line: 38, flags: DIFlagFwdDecl)
!3156 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3115, file: !3116, line: 93, baseType: !3134, size: 64, offset: 1344)
!3157 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3115, file: !3116, line: 94, baseType: !25, size: 64, offset: 1408)
!3158 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3115, file: !3116, line: 95, baseType: !28, size: 64, offset: 1472)
!3159 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3115, file: !3116, line: 96, baseType: !41, size: 32, offset: 1536)
!3160 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3115, file: !3116, line: 98, baseType: !3161, size: 160, offset: 1568)
!3161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 160, elements: !3162)
!3162 = !{!3163}
!3163 = !DISubrange(count: 20)
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!3165 = !{!3166, !3167, !3168, !3169, !3170, !3171}
!3166 = !DILocalVariable(name: "stream", arg: 1, scope: !3109, file: !160, line: 62, type: !3112)
!3167 = !DILocalVariable(name: "command_name", arg: 2, scope: !3109, file: !160, line: 63, type: !38)
!3168 = !DILocalVariable(name: "package", arg: 3, scope: !3109, file: !160, line: 63, type: !38)
!3169 = !DILocalVariable(name: "version", arg: 4, scope: !3109, file: !160, line: 64, type: !38)
!3170 = !DILocalVariable(name: "authors", arg: 5, scope: !3109, file: !160, line: 65, type: !3164)
!3171 = !DILocalVariable(name: "n_authors", arg: 6, scope: !3109, file: !160, line: 65, type: !28)
!3172 = !DILocation(line: 62, column: 24, scope: !3109)
!3173 = !DILocation(line: 63, column: 30, scope: !3109)
!3174 = !DILocation(line: 63, column: 56, scope: !3109)
!3175 = !DILocation(line: 64, column: 30, scope: !3109)
!3176 = !DILocation(line: 65, column: 39, scope: !3109)
!3177 = !DILocation(line: 65, column: 55, scope: !3109)
!3178 = !DILocation(line: 67, column: 7, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3109, file: !160, line: 67, column: 7)
!3180 = !DILocation(line: 67, column: 7, scope: !3109)
!3181 = !DILocation(line: 68, column: 5, scope: !3179)
!3182 = !DILocation(line: 70, column: 5, scope: !3179)
!3183 = !DILocation(line: 84, column: 3, scope: !3109)
!3184 = !DILocation(line: 86, column: 3, scope: !3109)
!3185 = !DILocation(line: 95, column: 3, scope: !3109)
!3186 = !DILocation(line: 99, column: 7, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3109, file: !160, line: 96, column: 5)
!3188 = !DILocation(line: 102, column: 7, scope: !3187)
!3189 = !DILocation(line: 103, column: 7, scope: !3187)
!3190 = !DILocation(line: 106, column: 7, scope: !3187)
!3191 = !DILocation(line: 107, column: 7, scope: !3187)
!3192 = !DILocation(line: 110, column: 7, scope: !3187)
!3193 = !DILocation(line: 112, column: 7, scope: !3187)
!3194 = !DILocation(line: 117, column: 7, scope: !3187)
!3195 = !DILocation(line: 119, column: 7, scope: !3187)
!3196 = !DILocation(line: 124, column: 7, scope: !3187)
!3197 = !DILocation(line: 126, column: 7, scope: !3187)
!3198 = !DILocation(line: 131, column: 7, scope: !3187)
!3199 = !DILocation(line: 134, column: 7, scope: !3187)
!3200 = !DILocation(line: 139, column: 7, scope: !3187)
!3201 = !DILocation(line: 142, column: 7, scope: !3187)
!3202 = !DILocation(line: 147, column: 7, scope: !3187)
!3203 = !DILocation(line: 151, column: 7, scope: !3187)
!3204 = !DILocation(line: 156, column: 7, scope: !3187)
!3205 = !DILocation(line: 160, column: 7, scope: !3187)
!3206 = !DILocation(line: 167, column: 7, scope: !3187)
!3207 = !DILocation(line: 171, column: 7, scope: !3187)
!3208 = !DILocation(line: 173, column: 1, scope: !3109)
!3209 = distinct !DISubprogram(name: "version_etc_ar", scope: !160, file: !160, line: 180, type: !3210, isLocal: false, isDefinition: true, scopeLine: 183, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !3212)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{null, !3112, !38, !38, !38, !3164}
!3212 = !{!3213, !3214, !3215, !3216, !3217, !3218}
!3213 = !DILocalVariable(name: "stream", arg: 1, scope: !3209, file: !160, line: 180, type: !3112)
!3214 = !DILocalVariable(name: "command_name", arg: 2, scope: !3209, file: !160, line: 181, type: !38)
!3215 = !DILocalVariable(name: "package", arg: 3, scope: !3209, file: !160, line: 181, type: !38)
!3216 = !DILocalVariable(name: "version", arg: 4, scope: !3209, file: !160, line: 182, type: !38)
!3217 = !DILocalVariable(name: "authors", arg: 5, scope: !3209, file: !160, line: 182, type: !3164)
!3218 = !DILocalVariable(name: "n_authors", scope: !3209, file: !160, line: 184, type: !28)
!3219 = !DILocation(line: 180, column: 23, scope: !3209)
!3220 = !DILocation(line: 181, column: 29, scope: !3209)
!3221 = !DILocation(line: 181, column: 55, scope: !3209)
!3222 = !DILocation(line: 182, column: 29, scope: !3209)
!3223 = !DILocation(line: 182, column: 59, scope: !3209)
!3224 = !DILocation(line: 184, column: 10, scope: !3209)
!3225 = !DILocation(line: 186, column: 8, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3209, file: !160, line: 186, column: 3)
!3227 = !DILocation(line: 0, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3226, file: !160, line: 186, column: 3)
!3229 = !DILocation(line: 186, column: 23, scope: !3228)
!3230 = !DILocation(line: 186, column: 3, scope: !3226)
!3231 = !DILocation(line: 186, column: 52, scope: !3228)
!3232 = distinct !{!3232, !3230, !3233}
!3233 = !DILocation(line: 187, column: 5, scope: !3226)
!3234 = !DILocation(line: 188, column: 3, scope: !3209)
!3235 = !DILocation(line: 189, column: 1, scope: !3209)
!3236 = distinct !DISubprogram(name: "version_etc_va", scope: !160, file: !160, line: 196, type: !3237, isLocal: false, isDefinition: true, scopeLine: 199, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !3246)
!3237 = !DISubroutineType(types: !3238)
!3238 = !{null, !3112, !38, !38, !38, !3239}
!3239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3240, size: 64)
!3240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !157, line: 189, size: 192, elements: !3241)
!3241 = !{!3242, !3243, !3244, !3245}
!3242 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !3240, file: !157, line: 189, baseType: !7, size: 32)
!3243 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !3240, file: !157, line: 189, baseType: !7, size: 32, offset: 32)
!3244 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !3240, file: !157, line: 189, baseType: !25, size: 64, offset: 64)
!3245 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !3240, file: !157, line: 189, baseType: !25, size: 64, offset: 128)
!3246 = !{!3247, !3248, !3249, !3250, !3251, !3252, !3253}
!3247 = !DILocalVariable(name: "stream", arg: 1, scope: !3236, file: !160, line: 196, type: !3112)
!3248 = !DILocalVariable(name: "command_name", arg: 2, scope: !3236, file: !160, line: 197, type: !38)
!3249 = !DILocalVariable(name: "package", arg: 3, scope: !3236, file: !160, line: 197, type: !38)
!3250 = !DILocalVariable(name: "version", arg: 4, scope: !3236, file: !160, line: 198, type: !38)
!3251 = !DILocalVariable(name: "authors", arg: 5, scope: !3236, file: !160, line: 198, type: !3239)
!3252 = !DILocalVariable(name: "n_authors", scope: !3236, file: !160, line: 200, type: !28)
!3253 = !DILocalVariable(name: "authtab", scope: !3236, file: !160, line: 201, type: !3254)
!3254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !38, size: 640, elements: !109)
!3255 = !DILocation(line: 196, column: 23, scope: !3236)
!3256 = !DILocation(line: 197, column: 29, scope: !3236)
!3257 = !DILocation(line: 197, column: 55, scope: !3236)
!3258 = !DILocation(line: 198, column: 29, scope: !3236)
!3259 = !DILocation(line: 198, column: 46, scope: !3236)
!3260 = !DILocation(line: 201, column: 3, scope: !3236)
!3261 = !DILocation(line: 201, column: 15, scope: !3236)
!3262 = !DILocation(line: 200, column: 10, scope: !3236)
!3263 = !DILocation(line: 205, column: 35, scope: !3264)
!3264 = distinct !DILexicalBlock(scope: !3265, file: !160, line: 203, column: 3)
!3265 = distinct !DILexicalBlock(scope: !3236, file: !160, line: 203, column: 3)
!3266 = !DILocation(line: 205, column: 14, scope: !3264)
!3267 = !DILocation(line: 205, column: 33, scope: !3264)
!3268 = !DILocation(line: 205, column: 67, scope: !3264)
!3269 = !DILocation(line: 203, column: 3, scope: !3265)
!3270 = !DILocation(line: 0, scope: !3264)
!3271 = !DILocation(line: 208, column: 3, scope: !3236)
!3272 = !DILocation(line: 210, column: 1, scope: !3236)
!3273 = distinct !DISubprogram(name: "version_etc", scope: !160, file: !160, line: 227, type: !3274, isLocal: false, isDefinition: true, scopeLine: 230, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !3276)
!3274 = !DISubroutineType(types: !3275)
!3275 = !{null, !3112, !38, !38, !38, null}
!3276 = !{!3277, !3278, !3279, !3280, !3281}
!3277 = !DILocalVariable(name: "stream", arg: 1, scope: !3273, file: !160, line: 227, type: !3112)
!3278 = !DILocalVariable(name: "command_name", arg: 2, scope: !3273, file: !160, line: 228, type: !38)
!3279 = !DILocalVariable(name: "package", arg: 3, scope: !3273, file: !160, line: 228, type: !38)
!3280 = !DILocalVariable(name: "version", arg: 4, scope: !3273, file: !160, line: 229, type: !38)
!3281 = !DILocalVariable(name: "authors", scope: !3273, file: !160, line: 231, type: !3282)
!3282 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !3283, line: 52, baseType: !3284)
!3283 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !3285, line: 48, baseType: !3286)
!3285 = !DIFile(filename: "/usr/lib/clang/7.0.0/include/stdarg.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !157, line: 231, baseType: !3287)
!3287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3240, size: 192, elements: !3143)
!3288 = !DILocation(line: 227, column: 20, scope: !3273)
!3289 = !DILocation(line: 228, column: 26, scope: !3273)
!3290 = !DILocation(line: 228, column: 52, scope: !3273)
!3291 = !DILocation(line: 229, column: 26, scope: !3273)
!3292 = !DILocation(line: 231, column: 3, scope: !3273)
!3293 = !DILocation(line: 231, column: 11, scope: !3273)
!3294 = !DILocation(line: 233, column: 3, scope: !3273)
!3295 = !DILocation(line: 234, column: 3, scope: !3273)
!3296 = !DILocation(line: 235, column: 3, scope: !3273)
!3297 = !DILocation(line: 236, column: 1, scope: !3273)
!3298 = distinct !DISubprogram(name: "emit_bug_reporting_address", scope: !160, file: !160, line: 239, type: !1245, isLocal: false, isDefinition: true, scopeLine: 240, flags: DIFlagPrototyped, isOptimized: true, unit: !156, retainedNodes: !51)
!3299 = !DILocation(line: 245, column: 3, scope: !3298)
!3300 = !DILocation(line: 251, column: 3, scope: !3298)
!3301 = !DILocation(line: 256, column: 3, scope: !3298)
!3302 = !DILocation(line: 258, column: 1, scope: !3298)
!3303 = distinct !DISubprogram(name: "xnmalloc", scope: !168, file: !168, line: 99, type: !1098, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !3304)
!3304 = !{!3305, !3306}
!3305 = !DILocalVariable(name: "n", arg: 1, scope: !3303, file: !168, line: 99, type: !28)
!3306 = !DILocalVariable(name: "s", arg: 2, scope: !3303, file: !168, line: 99, type: !28)
!3307 = !DILocation(line: 99, column: 18, scope: !3303)
!3308 = !DILocation(line: 99, column: 28, scope: !3303)
!3309 = !DILocation(line: 101, column: 7, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3303, file: !168, line: 101, column: 7)
!3311 = !DILocation(line: 101, column: 7, scope: !3303)
!3312 = !DILocation(line: 102, column: 5, scope: !3310)
!3313 = !DILocation(line: 103, column: 21, scope: !3303)
!3314 = !DILocalVariable(name: "n", arg: 1, scope: !3315, file: !3316, line: 39, type: !28)
!3315 = distinct !DISubprogram(name: "xmalloc", scope: !3316, file: !3316, line: 39, type: !3317, isLocal: false, isDefinition: true, scopeLine: 40, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !3319)
!3316 = !DIFile(filename: "lib/xmalloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3317 = !DISubroutineType(types: !3318)
!3318 = !{!25, !28}
!3319 = !{!3314, !3320}
!3320 = !DILocalVariable(name: "p", scope: !3315, file: !3316, line: 41, type: !25)
!3321 = !DILocation(line: 39, column: 17, scope: !3315, inlinedAt: !3322)
!3322 = distinct !DILocation(line: 103, column: 10, scope: !3303)
!3323 = !DILocation(line: 41, column: 13, scope: !3315, inlinedAt: !3322)
!3324 = !DILocation(line: 41, column: 9, scope: !3315, inlinedAt: !3322)
!3325 = !DILocation(line: 42, column: 8, scope: !3326, inlinedAt: !3322)
!3326 = distinct !DILexicalBlock(scope: !3315, file: !3316, line: 42, column: 7)
!3327 = !DILocation(line: 42, column: 15, scope: !3326, inlinedAt: !3322)
!3328 = !DILocation(line: 42, column: 10, scope: !3326, inlinedAt: !3322)
!3329 = !DILocation(line: 43, column: 5, scope: !3326, inlinedAt: !3322)
!3330 = !DILocation(line: 103, column: 3, scope: !3303)
!3331 = !DILocation(line: 39, column: 17, scope: !3315)
!3332 = !DILocation(line: 41, column: 13, scope: !3315)
!3333 = !DILocation(line: 41, column: 9, scope: !3315)
!3334 = !DILocation(line: 42, column: 8, scope: !3326)
!3335 = !DILocation(line: 42, column: 15, scope: !3326)
!3336 = !DILocation(line: 42, column: 10, scope: !3326)
!3337 = !DILocation(line: 43, column: 5, scope: !3326)
!3338 = !DILocation(line: 44, column: 3, scope: !3315)
!3339 = distinct !DISubprogram(name: "xnrealloc", scope: !168, file: !168, line: 112, type: !3340, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !3342)
!3340 = !DISubroutineType(types: !3341)
!3341 = !{!25, !25, !28, !28}
!3342 = !{!3343, !3344, !3345}
!3343 = !DILocalVariable(name: "p", arg: 1, scope: !3339, file: !168, line: 112, type: !25)
!3344 = !DILocalVariable(name: "n", arg: 2, scope: !3339, file: !168, line: 112, type: !28)
!3345 = !DILocalVariable(name: "s", arg: 3, scope: !3339, file: !168, line: 112, type: !28)
!3346 = !DILocation(line: 112, column: 18, scope: !3339)
!3347 = !DILocation(line: 112, column: 28, scope: !3339)
!3348 = !DILocation(line: 112, column: 38, scope: !3339)
!3349 = !DILocation(line: 114, column: 7, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3339, file: !168, line: 114, column: 7)
!3351 = !DILocation(line: 114, column: 7, scope: !3339)
!3352 = !DILocation(line: 115, column: 5, scope: !3350)
!3353 = !DILocation(line: 116, column: 25, scope: !3339)
!3354 = !DILocalVariable(name: "p", arg: 1, scope: !3355, file: !3316, line: 51, type: !25)
!3355 = distinct !DISubprogram(name: "xrealloc", scope: !3316, file: !3316, line: 51, type: !3356, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !3358)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!25, !25, !28}
!3358 = !{!3354, !3359}
!3359 = !DILocalVariable(name: "n", arg: 2, scope: !3355, file: !3316, line: 51, type: !28)
!3360 = !DILocation(line: 51, column: 17, scope: !3355, inlinedAt: !3361)
!3361 = distinct !DILocation(line: 116, column: 10, scope: !3339)
!3362 = !DILocation(line: 51, column: 27, scope: !3355, inlinedAt: !3361)
!3363 = !DILocation(line: 53, column: 8, scope: !3364, inlinedAt: !3361)
!3364 = distinct !DILexicalBlock(scope: !3355, file: !3316, line: 53, column: 7)
!3365 = !DILocation(line: 53, column: 13, scope: !3364, inlinedAt: !3361)
!3366 = !DILocation(line: 53, column: 10, scope: !3364, inlinedAt: !3361)
!3367 = !DILocation(line: 57, column: 7, scope: !3368, inlinedAt: !3361)
!3368 = distinct !DILexicalBlock(scope: !3364, file: !3316, line: 54, column: 5)
!3369 = !DILocation(line: 58, column: 7, scope: !3368, inlinedAt: !3361)
!3370 = !DILocation(line: 61, column: 7, scope: !3355, inlinedAt: !3361)
!3371 = !DILocation(line: 62, column: 8, scope: !3372, inlinedAt: !3361)
!3372 = distinct !DILexicalBlock(scope: !3355, file: !3316, line: 62, column: 7)
!3373 = !DILocation(line: 62, column: 13, scope: !3372, inlinedAt: !3361)
!3374 = !DILocation(line: 62, column: 10, scope: !3372, inlinedAt: !3361)
!3375 = !DILocation(line: 63, column: 5, scope: !3372, inlinedAt: !3361)
!3376 = !DILocation(line: 0, scope: !3355, inlinedAt: !3361)
!3377 = !DILocation(line: 116, column: 3, scope: !3339)
!3378 = !DILocation(line: 51, column: 17, scope: !3355)
!3379 = !DILocation(line: 51, column: 27, scope: !3355)
!3380 = !DILocation(line: 53, column: 8, scope: !3364)
!3381 = !DILocation(line: 53, column: 13, scope: !3364)
!3382 = !DILocation(line: 53, column: 10, scope: !3364)
!3383 = !DILocation(line: 57, column: 7, scope: !3368)
!3384 = !DILocation(line: 58, column: 7, scope: !3368)
!3385 = !DILocation(line: 61, column: 7, scope: !3355)
!3386 = !DILocation(line: 62, column: 8, scope: !3372)
!3387 = !DILocation(line: 62, column: 13, scope: !3372)
!3388 = !DILocation(line: 62, column: 10, scope: !3372)
!3389 = !DILocation(line: 63, column: 5, scope: !3372)
!3390 = !DILocation(line: 0, scope: !3355)
!3391 = !DILocation(line: 65, column: 1, scope: !3355)
!3392 = !DILocation(line: 174, column: 19, scope: !169)
!3393 = !DILocation(line: 174, column: 30, scope: !169)
!3394 = !DILocation(line: 174, column: 41, scope: !169)
!3395 = !DILocation(line: 176, column: 14, scope: !169)
!3396 = !DILocation(line: 176, column: 10, scope: !169)
!3397 = !DILocation(line: 178, column: 9, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !169, file: !168, line: 178, column: 7)
!3399 = !DILocation(line: 178, column: 7, scope: !169)
!3400 = !DILocation(line: 180, column: 13, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3402, file: !168, line: 180, column: 11)
!3402 = distinct !DILexicalBlock(scope: !3398, file: !168, line: 179, column: 5)
!3403 = !DILocation(line: 180, column: 11, scope: !3402)
!3404 = !DILocation(line: 188, column: 30, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3401, file: !168, line: 181, column: 9)
!3406 = !DILocation(line: 189, column: 16, scope: !3405)
!3407 = !DILocation(line: 189, column: 13, scope: !3405)
!3408 = !DILocation(line: 190, column: 9, scope: !3405)
!3409 = !DILocation(line: 0, scope: !3405)
!3410 = !DILocation(line: 191, column: 11, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3402, file: !168, line: 191, column: 11)
!3412 = !DILocation(line: 191, column: 11, scope: !3402)
!3413 = !DILocation(line: 206, column: 7, scope: !169)
!3414 = !DILocation(line: 207, column: 25, scope: !169)
!3415 = !DILocation(line: 51, column: 17, scope: !3355, inlinedAt: !3416)
!3416 = distinct !DILocation(line: 207, column: 10, scope: !169)
!3417 = !DILocation(line: 51, column: 27, scope: !3355, inlinedAt: !3416)
!3418 = !DILocation(line: 53, column: 10, scope: !3364, inlinedAt: !3416)
!3419 = !DILocation(line: 192, column: 9, scope: !3411)
!3420 = !DILocation(line: 200, column: 69, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3422, file: !168, line: 200, column: 11)
!3422 = distinct !DILexicalBlock(scope: !3398, file: !168, line: 195, column: 5)
!3423 = !DILocation(line: 201, column: 11, scope: !3421)
!3424 = !DILocation(line: 200, column: 11, scope: !3422)
!3425 = !DILocation(line: 202, column: 9, scope: !3421)
!3426 = !DILocation(line: 203, column: 14, scope: !3422)
!3427 = !DILocation(line: 203, column: 18, scope: !3422)
!3428 = !DILocation(line: 203, column: 9, scope: !3422)
!3429 = !DILocation(line: 53, column: 8, scope: !3364, inlinedAt: !3416)
!3430 = !DILocation(line: 57, column: 7, scope: !3368, inlinedAt: !3416)
!3431 = !DILocation(line: 58, column: 7, scope: !3368, inlinedAt: !3416)
!3432 = !DILocation(line: 61, column: 7, scope: !3355, inlinedAt: !3416)
!3433 = !DILocation(line: 62, column: 8, scope: !3372, inlinedAt: !3416)
!3434 = !DILocation(line: 62, column: 13, scope: !3372, inlinedAt: !3416)
!3435 = !DILocation(line: 62, column: 10, scope: !3372, inlinedAt: !3416)
!3436 = !DILocation(line: 63, column: 5, scope: !3372, inlinedAt: !3416)
!3437 = !DILocation(line: 0, scope: !3355, inlinedAt: !3416)
!3438 = !DILocation(line: 207, column: 3, scope: !169)
!3439 = distinct !DISubprogram(name: "xcharalloc", scope: !168, file: !168, line: 216, type: !1194, isLocal: false, isDefinition: true, scopeLine: 217, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !3440)
!3440 = !{!3441}
!3441 = !DILocalVariable(name: "n", arg: 1, scope: !3439, file: !168, line: 216, type: !28)
!3442 = !DILocation(line: 216, column: 20, scope: !3439)
!3443 = !DILocation(line: 39, column: 17, scope: !3315, inlinedAt: !3444)
!3444 = distinct !DILocation(line: 218, column: 10, scope: !3439)
!3445 = !DILocation(line: 41, column: 13, scope: !3315, inlinedAt: !3444)
!3446 = !DILocation(line: 41, column: 9, scope: !3315, inlinedAt: !3444)
!3447 = !DILocation(line: 42, column: 8, scope: !3326, inlinedAt: !3444)
!3448 = !DILocation(line: 42, column: 15, scope: !3326, inlinedAt: !3444)
!3449 = !DILocation(line: 42, column: 10, scope: !3326, inlinedAt: !3444)
!3450 = !DILocation(line: 43, column: 5, scope: !3326, inlinedAt: !3444)
!3451 = !DILocation(line: 218, column: 3, scope: !3439)
!3452 = distinct !DISubprogram(name: "x2realloc", scope: !3316, file: !3316, line: 74, type: !3453, isLocal: false, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !3455)
!3453 = !DISubroutineType(types: !3454)
!3454 = !{!25, !25, !172}
!3455 = !{!3456, !3457}
!3456 = !DILocalVariable(name: "p", arg: 1, scope: !3452, file: !3316, line: 74, type: !25)
!3457 = !DILocalVariable(name: "pn", arg: 2, scope: !3452, file: !3316, line: 74, type: !172)
!3458 = !DILocation(line: 74, column: 18, scope: !3452)
!3459 = !DILocation(line: 74, column: 29, scope: !3452)
!3460 = !DILocation(line: 174, column: 19, scope: !169, inlinedAt: !3461)
!3461 = distinct !DILocation(line: 76, column: 10, scope: !3452)
!3462 = !DILocation(line: 174, column: 30, scope: !169, inlinedAt: !3461)
!3463 = !DILocation(line: 174, column: 41, scope: !169, inlinedAt: !3461)
!3464 = !DILocation(line: 176, column: 14, scope: !169, inlinedAt: !3461)
!3465 = !DILocation(line: 176, column: 10, scope: !169, inlinedAt: !3461)
!3466 = !DILocation(line: 178, column: 9, scope: !3398, inlinedAt: !3461)
!3467 = !DILocation(line: 178, column: 7, scope: !169, inlinedAt: !3461)
!3468 = !DILocation(line: 180, column: 13, scope: !3401, inlinedAt: !3461)
!3469 = !DILocation(line: 180, column: 11, scope: !3402, inlinedAt: !3461)
!3470 = !DILocation(line: 191, column: 11, scope: !3411, inlinedAt: !3461)
!3471 = !DILocation(line: 191, column: 11, scope: !3402, inlinedAt: !3461)
!3472 = !DILocation(line: 206, column: 7, scope: !169, inlinedAt: !3461)
!3473 = !DILocation(line: 51, column: 17, scope: !3355, inlinedAt: !3474)
!3474 = distinct !DILocation(line: 207, column: 10, scope: !169, inlinedAt: !3461)
!3475 = !DILocation(line: 51, column: 27, scope: !3355, inlinedAt: !3474)
!3476 = !DILocation(line: 53, column: 10, scope: !3364, inlinedAt: !3474)
!3477 = !DILocation(line: 192, column: 9, scope: !3411, inlinedAt: !3461)
!3478 = !DILocation(line: 201, column: 11, scope: !3421, inlinedAt: !3461)
!3479 = !DILocation(line: 200, column: 11, scope: !3422, inlinedAt: !3461)
!3480 = !DILocation(line: 202, column: 9, scope: !3421, inlinedAt: !3461)
!3481 = !DILocation(line: 203, column: 14, scope: !3422, inlinedAt: !3461)
!3482 = !DILocation(line: 203, column: 18, scope: !3422, inlinedAt: !3461)
!3483 = !DILocation(line: 203, column: 9, scope: !3422, inlinedAt: !3461)
!3484 = !DILocation(line: 53, column: 8, scope: !3364, inlinedAt: !3474)
!3485 = !DILocation(line: 57, column: 7, scope: !3368, inlinedAt: !3474)
!3486 = !DILocation(line: 58, column: 7, scope: !3368, inlinedAt: !3474)
!3487 = !DILocation(line: 61, column: 7, scope: !3355, inlinedAt: !3474)
!3488 = !DILocation(line: 62, column: 8, scope: !3372, inlinedAt: !3474)
!3489 = !DILocation(line: 62, column: 13, scope: !3372, inlinedAt: !3474)
!3490 = !DILocation(line: 62, column: 10, scope: !3372, inlinedAt: !3474)
!3491 = !DILocation(line: 63, column: 5, scope: !3372, inlinedAt: !3474)
!3492 = !DILocation(line: 0, scope: !3355, inlinedAt: !3474)
!3493 = !DILocation(line: 76, column: 3, scope: !3452)
!3494 = distinct !DISubprogram(name: "xzalloc", scope: !3316, file: !3316, line: 84, type: !3317, isLocal: false, isDefinition: true, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !3495)
!3495 = !{!3496}
!3496 = !DILocalVariable(name: "s", arg: 1, scope: !3494, file: !3316, line: 84, type: !28)
!3497 = !DILocation(line: 84, column: 17, scope: !3494)
!3498 = !DILocation(line: 39, column: 17, scope: !3315, inlinedAt: !3499)
!3499 = distinct !DILocation(line: 86, column: 18, scope: !3494)
!3500 = !DILocation(line: 41, column: 13, scope: !3315, inlinedAt: !3499)
!3501 = !DILocation(line: 41, column: 9, scope: !3315, inlinedAt: !3499)
!3502 = !DILocation(line: 42, column: 8, scope: !3326, inlinedAt: !3499)
!3503 = !DILocation(line: 42, column: 15, scope: !3326, inlinedAt: !3499)
!3504 = !DILocation(line: 42, column: 10, scope: !3326, inlinedAt: !3499)
!3505 = !DILocation(line: 43, column: 5, scope: !3326, inlinedAt: !3499)
!3506 = !DILocation(line: 86, column: 10, scope: !3494)
!3507 = !DILocation(line: 86, column: 3, scope: !3494)
!3508 = distinct !DISubprogram(name: "xcalloc", scope: !3316, file: !3316, line: 93, type: !1098, isLocal: false, isDefinition: true, scopeLine: 94, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !3509)
!3509 = !{!3510, !3511, !3512}
!3510 = !DILocalVariable(name: "n", arg: 1, scope: !3508, file: !3316, line: 93, type: !28)
!3511 = !DILocalVariable(name: "s", arg: 2, scope: !3508, file: !3316, line: 93, type: !28)
!3512 = !DILocalVariable(name: "p", scope: !3508, file: !3316, line: 95, type: !25)
!3513 = !DILocation(line: 93, column: 17, scope: !3508)
!3514 = !DILocation(line: 93, column: 27, scope: !3508)
!3515 = !DILocation(line: 100, column: 7, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3508, file: !3316, line: 100, column: 7)
!3517 = !DILocation(line: 101, column: 7, scope: !3516)
!3518 = !DILocation(line: 101, column: 18, scope: !3516)
!3519 = !DILocation(line: 95, column: 9, scope: !3508)
!3520 = !DILocation(line: 101, column: 16, scope: !3516)
!3521 = !DILocation(line: 100, column: 7, scope: !3508)
!3522 = !DILocation(line: 102, column: 5, scope: !3516)
!3523 = !DILocation(line: 103, column: 3, scope: !3508)
!3524 = distinct !DISubprogram(name: "xmemdup", scope: !3316, file: !3316, line: 111, type: !3525, isLocal: false, isDefinition: true, scopeLine: 112, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !3529)
!3525 = !DISubroutineType(types: !3526)
!3526 = !{!25, !3527, !28}
!3527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3528, size: 64)
!3528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!3529 = !{!3530, !3531}
!3530 = !DILocalVariable(name: "p", arg: 1, scope: !3524, file: !3316, line: 111, type: !3527)
!3531 = !DILocalVariable(name: "s", arg: 2, scope: !3524, file: !3316, line: 111, type: !28)
!3532 = !DILocation(line: 111, column: 22, scope: !3524)
!3533 = !DILocation(line: 111, column: 32, scope: !3524)
!3534 = !DILocation(line: 39, column: 17, scope: !3315, inlinedAt: !3535)
!3535 = distinct !DILocation(line: 113, column: 18, scope: !3524)
!3536 = !DILocation(line: 41, column: 13, scope: !3315, inlinedAt: !3535)
!3537 = !DILocation(line: 41, column: 9, scope: !3315, inlinedAt: !3535)
!3538 = !DILocation(line: 42, column: 8, scope: !3326, inlinedAt: !3535)
!3539 = !DILocation(line: 42, column: 15, scope: !3326, inlinedAt: !3535)
!3540 = !DILocation(line: 42, column: 10, scope: !3326, inlinedAt: !3535)
!3541 = !DILocation(line: 43, column: 5, scope: !3326, inlinedAt: !3535)
!3542 = !DILocation(line: 113, column: 10, scope: !3524)
!3543 = !DILocation(line: 113, column: 3, scope: !3524)
!3544 = distinct !DISubprogram(name: "xstrdup", scope: !3316, file: !3316, line: 119, type: !2545, isLocal: false, isDefinition: true, scopeLine: 120, flags: DIFlagPrototyped, isOptimized: true, unit: !164, retainedNodes: !3545)
!3545 = !{!3546}
!3546 = !DILocalVariable(name: "string", arg: 1, scope: !3544, file: !3316, line: 119, type: !38)
!3547 = !DILocation(line: 119, column: 22, scope: !3544)
!3548 = !DILocation(line: 121, column: 27, scope: !3544)
!3549 = !DILocation(line: 121, column: 43, scope: !3544)
!3550 = !DILocation(line: 111, column: 22, scope: !3524, inlinedAt: !3551)
!3551 = distinct !DILocation(line: 121, column: 10, scope: !3544)
!3552 = !DILocation(line: 111, column: 32, scope: !3524, inlinedAt: !3551)
!3553 = !DILocation(line: 39, column: 17, scope: !3315, inlinedAt: !3554)
!3554 = distinct !DILocation(line: 113, column: 18, scope: !3524, inlinedAt: !3551)
!3555 = !DILocation(line: 41, column: 13, scope: !3315, inlinedAt: !3554)
!3556 = !DILocation(line: 41, column: 9, scope: !3315, inlinedAt: !3554)
!3557 = !DILocation(line: 42, column: 8, scope: !3326, inlinedAt: !3554)
!3558 = !DILocation(line: 42, column: 15, scope: !3326, inlinedAt: !3554)
!3559 = !DILocation(line: 42, column: 10, scope: !3326, inlinedAt: !3554)
!3560 = !DILocation(line: 43, column: 5, scope: !3326, inlinedAt: !3554)
!3561 = !DILocation(line: 113, column: 10, scope: !3524, inlinedAt: !3551)
!3562 = !DILocation(line: 121, column: 3, scope: !3544)
!3563 = distinct !DISubprogram(name: "xalloc_die", scope: !3564, file: !3564, line: 32, type: !1245, isLocal: false, isDefinition: true, scopeLine: 33, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: true, unit: !181, retainedNodes: !51)
!3564 = !DIFile(filename: "lib/xalloc-die.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3565 = !DILocation(line: 34, column: 10, scope: !3563)
!3566 = !DILocation(line: 34, column: 33, scope: !3563)
!3567 = !DILocation(line: 34, column: 3, scope: !3563)
!3568 = !DILocation(line: 40, column: 3, scope: !3563)
!3569 = distinct !DISubprogram(name: "xgetcwd", scope: !3570, file: !3570, line: 35, type: !726, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: true, unit: !183, retainedNodes: !3571)
!3570 = !DIFile(filename: "lib/xgetcwd.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3571 = !{!3572}
!3572 = !DILocalVariable(name: "cwd", scope: !3569, file: !3570, line: 37, type: !26)
!3573 = !DILocation(line: 37, column: 15, scope: !3569)
!3574 = !DILocation(line: 37, column: 9, scope: !3569)
!3575 = !DILocation(line: 38, column: 9, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3569, file: !3570, line: 38, column: 7)
!3577 = !DILocation(line: 38, column: 13, scope: !3576)
!3578 = !DILocation(line: 38, column: 16, scope: !3576)
!3579 = !DILocation(line: 38, column: 22, scope: !3576)
!3580 = !DILocation(line: 38, column: 7, scope: !3569)
!3581 = !DILocation(line: 39, column: 5, scope: !3576)
!3582 = !DILocation(line: 40, column: 3, scope: !3569)
!3583 = distinct !DISubprogram(name: "rpl_calloc", scope: !3584, file: !3584, line: 42, type: !1098, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !185, retainedNodes: !3585)
!3584 = !DIFile(filename: "lib/calloc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3585 = !{!3586, !3587, !3588, !3589}
!3586 = !DILocalVariable(name: "n", arg: 1, scope: !3583, file: !3584, line: 42, type: !28)
!3587 = !DILocalVariable(name: "s", arg: 2, scope: !3583, file: !3584, line: 42, type: !28)
!3588 = !DILocalVariable(name: "result", scope: !3583, file: !3584, line: 44, type: !25)
!3589 = !DILocalVariable(name: "bytes", scope: !3590, file: !3584, line: 56, type: !28)
!3590 = distinct !DILexicalBlock(scope: !3591, file: !3584, line: 53, column: 5)
!3591 = distinct !DILexicalBlock(scope: !3583, file: !3584, line: 47, column: 7)
!3592 = !DILocation(line: 42, column: 20, scope: !3583)
!3593 = !DILocation(line: 42, column: 30, scope: !3583)
!3594 = !DILocation(line: 47, column: 9, scope: !3591)
!3595 = !DILocation(line: 47, column: 19, scope: !3591)
!3596 = !DILocation(line: 47, column: 14, scope: !3591)
!3597 = !DILocation(line: 56, column: 24, scope: !3590)
!3598 = !DILocation(line: 56, column: 14, scope: !3590)
!3599 = !DILocation(line: 57, column: 17, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3590, file: !3584, line: 57, column: 11)
!3601 = !DILocation(line: 57, column: 21, scope: !3600)
!3602 = !DILocation(line: 57, column: 11, scope: !3590)
!3603 = !DILocation(line: 59, column: 11, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3600, file: !3584, line: 58, column: 9)
!3605 = !DILocation(line: 59, column: 17, scope: !3604)
!3606 = !DILocation(line: 65, column: 12, scope: !3583)
!3607 = !DILocation(line: 44, column: 9, scope: !3583)
!3608 = !DILocation(line: 72, column: 3, scope: !3583)
!3609 = !DILocation(line: 0, scope: !3604)
!3610 = !DILocation(line: 73, column: 1, scope: !3583)
!3611 = distinct !DISubprogram(name: "rpl_mbrtowc", scope: !3612, file: !3612, line: 385, type: !3613, isLocal: false, isDefinition: true, scopeLine: 386, flags: DIFlagPrototyped, isOptimized: true, unit: !187, retainedNodes: !3627)
!3612 = !DIFile(filename: "lib/mbrtowc.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3613 = !DISubroutineType(types: !3614)
!3614 = !{!28, !3615, !38, !28, !3616}
!3615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!3616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3617, size: 64)
!3617 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !1507, line: 6, baseType: !3618)
!3618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !1509, line: 21, baseType: !3619)
!3619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1509, line: 13, size: 64, elements: !3620)
!3620 = !{!3621, !3622}
!3621 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !3619, file: !1509, line: 15, baseType: !41, size: 32)
!3622 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !3619, file: !1509, line: 20, baseType: !3623, size: 32, offset: 32)
!3623 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !3619, file: !1509, line: 16, size: 32, elements: !3624)
!3624 = !{!3625, !3626}
!3625 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !3623, file: !1509, line: 18, baseType: !7, size: 32)
!3626 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !3623, file: !1509, line: 19, baseType: !1518, size: 32)
!3627 = !{!3628, !3629, !3630, !3631, !3632, !3633, !3634}
!3628 = !DILocalVariable(name: "pwc", arg: 1, scope: !3611, file: !3612, line: 385, type: !3615)
!3629 = !DILocalVariable(name: "s", arg: 2, scope: !3611, file: !3612, line: 385, type: !38)
!3630 = !DILocalVariable(name: "n", arg: 3, scope: !3611, file: !3612, line: 385, type: !28)
!3631 = !DILocalVariable(name: "ps", arg: 4, scope: !3611, file: !3612, line: 385, type: !3616)
!3632 = !DILocalVariable(name: "ret", scope: !3611, file: !3612, line: 387, type: !28)
!3633 = !DILocalVariable(name: "wc", scope: !3611, file: !3612, line: 388, type: !1523)
!3634 = !DILocalVariable(name: "uc", scope: !3635, file: !3612, line: 449, type: !935)
!3635 = distinct !DILexicalBlock(scope: !3636, file: !3612, line: 448, column: 5)
!3636 = distinct !DILexicalBlock(scope: !3611, file: !3612, line: 447, column: 7)
!3637 = !DILocation(line: 385, column: 23, scope: !3611)
!3638 = !DILocation(line: 385, column: 40, scope: !3611)
!3639 = !DILocation(line: 385, column: 50, scope: !3611)
!3640 = !DILocation(line: 385, column: 64, scope: !3611)
!3641 = !DILocation(line: 388, column: 3, scope: !3611)
!3642 = !DILocation(line: 404, column: 9, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3611, file: !3612, line: 404, column: 7)
!3644 = !DILocation(line: 404, column: 7, scope: !3611)
!3645 = !DILocation(line: 439, column: 9, scope: !3611)
!3646 = !DILocation(line: 387, column: 10, scope: !3611)
!3647 = !DILocation(line: 447, column: 19, scope: !3636)
!3648 = !DILocation(line: 447, column: 31, scope: !3636)
!3649 = !DILocation(line: 447, column: 26, scope: !3636)
!3650 = !DILocation(line: 447, column: 41, scope: !3636)
!3651 = !DILocation(line: 447, column: 7, scope: !3611)
!3652 = !DILocation(line: 449, column: 26, scope: !3635)
!3653 = !DILocation(line: 449, column: 21, scope: !3635)
!3654 = !DILocation(line: 450, column: 14, scope: !3635)
!3655 = !DILocation(line: 450, column: 12, scope: !3635)
!3656 = !DILocation(line: 0, scope: !3635)
!3657 = !DILocation(line: 456, column: 1, scope: !3611)
!3658 = distinct !DISubprogram(name: "close_stream", scope: !3659, file: !3659, line: 56, type: !3660, isLocal: false, isDefinition: true, scopeLine: 57, flags: DIFlagPrototyped, isOptimized: true, unit: !190, retainedNodes: !3696)
!3659 = !DIFile(filename: "lib/close-stream.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3660 = !DISubroutineType(types: !3661)
!3661 = !{!41, !3662}
!3662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3663, size: 64)
!3663 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3114, line: 7, baseType: !3664)
!3664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3116, line: 49, size: 1728, elements: !3665)
!3665 = !{!3666, !3667, !3668, !3669, !3670, !3671, !3672, !3673, !3674, !3675, !3676, !3677, !3678, !3679, !3681, !3682, !3683, !3684, !3685, !3686, !3687, !3688, !3689, !3690, !3691, !3692, !3693, !3694, !3695}
!3666 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3664, file: !3116, line: 51, baseType: !41, size: 32)
!3667 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3664, file: !3116, line: 54, baseType: !26, size: 64, offset: 64)
!3668 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3664, file: !3116, line: 55, baseType: !26, size: 64, offset: 128)
!3669 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3664, file: !3116, line: 56, baseType: !26, size: 64, offset: 192)
!3670 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3664, file: !3116, line: 57, baseType: !26, size: 64, offset: 256)
!3671 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3664, file: !3116, line: 58, baseType: !26, size: 64, offset: 320)
!3672 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3664, file: !3116, line: 59, baseType: !26, size: 64, offset: 384)
!3673 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3664, file: !3116, line: 60, baseType: !26, size: 64, offset: 448)
!3674 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3664, file: !3116, line: 61, baseType: !26, size: 64, offset: 512)
!3675 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3664, file: !3116, line: 64, baseType: !26, size: 64, offset: 576)
!3676 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3664, file: !3116, line: 65, baseType: !26, size: 64, offset: 640)
!3677 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3664, file: !3116, line: 66, baseType: !26, size: 64, offset: 704)
!3678 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3664, file: !3116, line: 68, baseType: !3131, size: 64, offset: 768)
!3679 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3664, file: !3116, line: 70, baseType: !3680, size: 64, offset: 832)
!3680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3664, size: 64)
!3681 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3664, file: !3116, line: 72, baseType: !41, size: 32, offset: 896)
!3682 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3664, file: !3116, line: 73, baseType: !41, size: 32, offset: 928)
!3683 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3664, file: !3116, line: 74, baseType: !749, size: 64, offset: 960)
!3684 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3664, file: !3116, line: 77, baseType: !102, size: 16, offset: 1024)
!3685 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3664, file: !3116, line: 78, baseType: !3140, size: 8, offset: 1040)
!3686 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3664, file: !3116, line: 79, baseType: !3142, size: 8, offset: 1048)
!3687 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3664, file: !3116, line: 81, baseType: !3146, size: 64, offset: 1088)
!3688 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3664, file: !3116, line: 89, baseType: !3149, size: 64, offset: 1152)
!3689 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3664, file: !3116, line: 91, baseType: !3151, size: 64, offset: 1216)
!3690 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3664, file: !3116, line: 92, baseType: !3154, size: 64, offset: 1280)
!3691 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3664, file: !3116, line: 93, baseType: !3680, size: 64, offset: 1344)
!3692 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3664, file: !3116, line: 94, baseType: !25, size: 64, offset: 1408)
!3693 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3664, file: !3116, line: 95, baseType: !28, size: 64, offset: 1472)
!3694 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3664, file: !3116, line: 96, baseType: !41, size: 32, offset: 1536)
!3695 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3664, file: !3116, line: 98, baseType: !3161, size: 160, offset: 1568)
!3696 = !{!3697, !3698, !3700, !3701}
!3697 = !DILocalVariable(name: "stream", arg: 1, scope: !3658, file: !3659, line: 56, type: !3662)
!3698 = !DILocalVariable(name: "some_pending", scope: !3658, file: !3659, line: 58, type: !3699)
!3699 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!3700 = !DILocalVariable(name: "prev_fail", scope: !3658, file: !3659, line: 59, type: !3699)
!3701 = !DILocalVariable(name: "fclose_fail", scope: !3658, file: !3659, line: 60, type: !3699)
!3702 = !DILocation(line: 56, column: 21, scope: !3658)
!3703 = !DILocation(line: 58, column: 30, scope: !3658)
!3704 = !DILocalVariable(name: "__stream", arg: 1, scope: !3705, file: !3706, line: 135, type: !3662)
!3705 = distinct !DISubprogram(name: "ferror_unlocked", scope: !3706, file: !3706, line: 135, type: !3660, isLocal: false, isDefinition: true, scopeLine: 136, flags: DIFlagPrototyped, isOptimized: true, unit: !190, retainedNodes: !3707)
!3706 = !DIFile(filename: "/usr/include/bits/stdio.h", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3707 = !{!3704}
!3708 = !DILocation(line: 135, column: 1, scope: !3705, inlinedAt: !3709)
!3709 = distinct !DILocation(line: 59, column: 27, scope: !3658)
!3710 = !DILocation(line: 137, column: 10, scope: !3705, inlinedAt: !3709)
!3711 = !{!3712, !716, i64 0}
!3712 = !{!"_IO_FILE", !716, i64 0, !628, i64 8, !628, i64 16, !628, i64 24, !628, i64 32, !628, i64 40, !628, i64 48, !628, i64 56, !628, i64 64, !628, i64 72, !628, i64 80, !628, i64 88, !628, i64 96, !628, i64 104, !716, i64 112, !716, i64 116, !821, i64 120, !1035, i64 128, !629, i64 130, !629, i64 131, !628, i64 136, !821, i64 144, !628, i64 152, !628, i64 160, !628, i64 168, !628, i64 176, !821, i64 184, !716, i64 192, !629, i64 196}
!3713 = !DILocation(line: 59, column: 43, scope: !3658)
!3714 = !DILocation(line: 60, column: 29, scope: !3658)
!3715 = !DILocation(line: 60, column: 45, scope: !3658)
!3716 = !DILocation(line: 70, column: 17, scope: !3717)
!3717 = distinct !DILexicalBlock(scope: !3658, file: !3659, line: 70, column: 7)
!3718 = !DILocation(line: 58, column: 50, scope: !3658)
!3719 = !DILocation(line: 70, column: 33, scope: !3717)
!3720 = !DILocation(line: 70, column: 53, scope: !3717)
!3721 = !DILocation(line: 70, column: 59, scope: !3717)
!3722 = !DILocation(line: 70, column: 7, scope: !3658)
!3723 = !DILocation(line: 72, column: 11, scope: !3724)
!3724 = distinct !DILexicalBlock(scope: !3717, file: !3659, line: 71, column: 5)
!3725 = !DILocation(line: 73, column: 9, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3724, file: !3659, line: 72, column: 11)
!3727 = !DILocation(line: 73, column: 15, scope: !3726)
!3728 = !DILocation(line: 0, scope: !3658)
!3729 = !DILocation(line: 78, column: 1, scope: !3658)
!3730 = distinct !DISubprogram(name: "hard_locale", scope: !3731, file: !3731, line: 38, type: !3732, isLocal: false, isDefinition: true, scopeLine: 39, flags: DIFlagPrototyped, isOptimized: true, unit: !192, retainedNodes: !3734)
!3731 = !DIFile(filename: "lib/hard-locale.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3732 = !DISubroutineType(types: !3733)
!3733 = !{!61, !41}
!3734 = !{!3735, !3736, !3737}
!3735 = !DILocalVariable(name: "category", arg: 1, scope: !3730, file: !3731, line: 38, type: !41)
!3736 = !DILocalVariable(name: "hard", scope: !3730, file: !3731, line: 40, type: !61)
!3737 = !DILocalVariable(name: "p", scope: !3730, file: !3731, line: 41, type: !38)
!3738 = !DILocation(line: 38, column: 18, scope: !3730)
!3739 = !DILocation(line: 40, column: 8, scope: !3730)
!3740 = !DILocation(line: 41, column: 19, scope: !3730)
!3741 = !DILocation(line: 41, column: 15, scope: !3730)
!3742 = !DILocation(line: 43, column: 7, scope: !3743)
!3743 = distinct !DILexicalBlock(scope: !3730, file: !3731, line: 43, column: 7)
!3744 = !DILocation(line: 43, column: 7, scope: !3730)
!3745 = !DILocation(line: 47, column: 15, scope: !3746)
!3746 = distinct !DILexicalBlock(scope: !3747, file: !3731, line: 47, column: 15)
!3747 = distinct !DILexicalBlock(scope: !3748, file: !3731, line: 46, column: 9)
!3748 = distinct !DILexicalBlock(scope: !3749, file: !3731, line: 45, column: 11)
!3749 = distinct !DILexicalBlock(scope: !3743, file: !3731, line: 44, column: 5)
!3750 = !DILocation(line: 47, column: 31, scope: !3746)
!3751 = !DILocation(line: 47, column: 36, scope: !3746)
!3752 = !DILocation(line: 47, column: 39, scope: !3746)
!3753 = !DILocation(line: 47, column: 59, scope: !3746)
!3754 = !DILocation(line: 47, column: 15, scope: !3747)
!3755 = !DILocation(line: 48, column: 13, scope: !3746)
!3756 = !DILocation(line: 71, column: 3, scope: !3730)
!3757 = distinct !DISubprogram(name: "locale_charset", scope: !3758, file: !3758, line: 687, type: !3759, isLocal: false, isDefinition: true, scopeLine: 688, flags: DIFlagPrototyped, isOptimized: true, unit: !194, retainedNodes: !3761)
!3758 = !DIFile(filename: "lib/localcharset.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!38}
!3761 = !{!3762}
!3762 = !DILocalVariable(name: "codeset", scope: !3757, file: !3758, line: 689, type: !38)
!3763 = !DILocation(line: 696, column: 13, scope: !3757)
!3764 = !DILocation(line: 689, column: 15, scope: !3757)
!3765 = !DILocation(line: 754, column: 15, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3757, file: !3758, line: 754, column: 7)
!3767 = !DILocation(line: 754, column: 7, scope: !3757)
!3768 = !DILocation(line: 907, column: 13, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !3758, line: 907, column: 13)
!3770 = distinct !DILexicalBlock(scope: !3771, file: !3758, line: 897, column: 7)
!3771 = distinct !DILexicalBlock(scope: !3757, file: !3758, line: 856, column: 3)
!3772 = !DILocation(line: 907, column: 24, scope: !3769)
!3773 = !DILocation(line: 907, column: 13, scope: !3770)
!3774 = !DILocation(line: 995, column: 3, scope: !3757)
!3775 = distinct !DISubprogram(name: "rpl_fclose", scope: !3776, file: !3776, line: 58, type: !3777, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !583, retainedNodes: !3813)
!3776 = !DIFile(filename: "lib/fclose.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3777 = !DISubroutineType(types: !3778)
!3778 = !{!41, !3779}
!3779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3780, size: 64)
!3780 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3114, line: 7, baseType: !3781)
!3781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3116, line: 49, size: 1728, elements: !3782)
!3782 = !{!3783, !3784, !3785, !3786, !3787, !3788, !3789, !3790, !3791, !3792, !3793, !3794, !3795, !3796, !3798, !3799, !3800, !3801, !3802, !3803, !3804, !3805, !3806, !3807, !3808, !3809, !3810, !3811, !3812}
!3783 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3781, file: !3116, line: 51, baseType: !41, size: 32)
!3784 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3781, file: !3116, line: 54, baseType: !26, size: 64, offset: 64)
!3785 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3781, file: !3116, line: 55, baseType: !26, size: 64, offset: 128)
!3786 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3781, file: !3116, line: 56, baseType: !26, size: 64, offset: 192)
!3787 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3781, file: !3116, line: 57, baseType: !26, size: 64, offset: 256)
!3788 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3781, file: !3116, line: 58, baseType: !26, size: 64, offset: 320)
!3789 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3781, file: !3116, line: 59, baseType: !26, size: 64, offset: 384)
!3790 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3781, file: !3116, line: 60, baseType: !26, size: 64, offset: 448)
!3791 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3781, file: !3116, line: 61, baseType: !26, size: 64, offset: 512)
!3792 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3781, file: !3116, line: 64, baseType: !26, size: 64, offset: 576)
!3793 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3781, file: !3116, line: 65, baseType: !26, size: 64, offset: 640)
!3794 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3781, file: !3116, line: 66, baseType: !26, size: 64, offset: 704)
!3795 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3781, file: !3116, line: 68, baseType: !3131, size: 64, offset: 768)
!3796 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3781, file: !3116, line: 70, baseType: !3797, size: 64, offset: 832)
!3797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3781, size: 64)
!3798 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3781, file: !3116, line: 72, baseType: !41, size: 32, offset: 896)
!3799 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3781, file: !3116, line: 73, baseType: !41, size: 32, offset: 928)
!3800 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3781, file: !3116, line: 74, baseType: !749, size: 64, offset: 960)
!3801 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3781, file: !3116, line: 77, baseType: !102, size: 16, offset: 1024)
!3802 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3781, file: !3116, line: 78, baseType: !3140, size: 8, offset: 1040)
!3803 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3781, file: !3116, line: 79, baseType: !3142, size: 8, offset: 1048)
!3804 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3781, file: !3116, line: 81, baseType: !3146, size: 64, offset: 1088)
!3805 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3781, file: !3116, line: 89, baseType: !3149, size: 64, offset: 1152)
!3806 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3781, file: !3116, line: 91, baseType: !3151, size: 64, offset: 1216)
!3807 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3781, file: !3116, line: 92, baseType: !3154, size: 64, offset: 1280)
!3808 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3781, file: !3116, line: 93, baseType: !3797, size: 64, offset: 1344)
!3809 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3781, file: !3116, line: 94, baseType: !25, size: 64, offset: 1408)
!3810 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3781, file: !3116, line: 95, baseType: !28, size: 64, offset: 1472)
!3811 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3781, file: !3116, line: 96, baseType: !41, size: 32, offset: 1536)
!3812 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3781, file: !3116, line: 98, baseType: !3161, size: 160, offset: 1568)
!3813 = !{!3814, !3815, !3816, !3817}
!3814 = !DILocalVariable(name: "fp", arg: 1, scope: !3775, file: !3776, line: 58, type: !3779)
!3815 = !DILocalVariable(name: "saved_errno", scope: !3775, file: !3776, line: 60, type: !41)
!3816 = !DILocalVariable(name: "fd", scope: !3775, file: !3776, line: 61, type: !41)
!3817 = !DILocalVariable(name: "result", scope: !3775, file: !3776, line: 62, type: !41)
!3818 = !DILocation(line: 58, column: 19, scope: !3775)
!3819 = !DILocation(line: 60, column: 7, scope: !3775)
!3820 = !DILocation(line: 62, column: 7, scope: !3775)
!3821 = !DILocation(line: 65, column: 8, scope: !3775)
!3822 = !DILocation(line: 61, column: 7, scope: !3775)
!3823 = !DILocation(line: 66, column: 10, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3775, file: !3776, line: 66, column: 7)
!3825 = !DILocation(line: 66, column: 7, scope: !3775)
!3826 = !DILocation(line: 67, column: 12, scope: !3824)
!3827 = !DILocation(line: 67, column: 5, scope: !3824)
!3828 = !DILocation(line: 72, column: 9, scope: !3829)
!3829 = distinct !DILexicalBlock(scope: !3775, file: !3776, line: 72, column: 7)
!3830 = !DILocation(line: 72, column: 23, scope: !3829)
!3831 = !DILocation(line: 72, column: 33, scope: !3829)
!3832 = !DILocation(line: 72, column: 26, scope: !3829)
!3833 = !DILocation(line: 72, column: 59, scope: !3829)
!3834 = !DILocation(line: 73, column: 7, scope: !3829)
!3835 = !DILocation(line: 73, column: 10, scope: !3829)
!3836 = !DILocation(line: 72, column: 7, scope: !3775)
!3837 = !DILocation(line: 100, column: 12, scope: !3775)
!3838 = !DILocation(line: 105, column: 7, scope: !3775)
!3839 = !DILocation(line: 74, column: 19, scope: !3829)
!3840 = !DILocation(line: 105, column: 19, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3775, file: !3776, line: 105, column: 7)
!3842 = !DILocation(line: 107, column: 13, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3841, file: !3776, line: 106, column: 5)
!3844 = !DILocation(line: 109, column: 5, scope: !3843)
!3845 = !DILocation(line: 0, scope: !3775)
!3846 = !DILocation(line: 112, column: 1, scope: !3775)
!3847 = distinct !DISubprogram(name: "rpl_fflush", scope: !3848, file: !3848, line: 129, type: !3849, isLocal: false, isDefinition: true, scopeLine: 130, flags: DIFlagPrototyped, isOptimized: true, unit: !585, retainedNodes: !3885)
!3848 = !DIFile(filename: "lib/fflush.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!41, !3851}
!3851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3852, size: 64)
!3852 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3114, line: 7, baseType: !3853)
!3853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3116, line: 49, size: 1728, elements: !3854)
!3854 = !{!3855, !3856, !3857, !3858, !3859, !3860, !3861, !3862, !3863, !3864, !3865, !3866, !3867, !3868, !3870, !3871, !3872, !3873, !3874, !3875, !3876, !3877, !3878, !3879, !3880, !3881, !3882, !3883, !3884}
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3853, file: !3116, line: 51, baseType: !41, size: 32)
!3856 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3853, file: !3116, line: 54, baseType: !26, size: 64, offset: 64)
!3857 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3853, file: !3116, line: 55, baseType: !26, size: 64, offset: 128)
!3858 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3853, file: !3116, line: 56, baseType: !26, size: 64, offset: 192)
!3859 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3853, file: !3116, line: 57, baseType: !26, size: 64, offset: 256)
!3860 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3853, file: !3116, line: 58, baseType: !26, size: 64, offset: 320)
!3861 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3853, file: !3116, line: 59, baseType: !26, size: 64, offset: 384)
!3862 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3853, file: !3116, line: 60, baseType: !26, size: 64, offset: 448)
!3863 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3853, file: !3116, line: 61, baseType: !26, size: 64, offset: 512)
!3864 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3853, file: !3116, line: 64, baseType: !26, size: 64, offset: 576)
!3865 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3853, file: !3116, line: 65, baseType: !26, size: 64, offset: 640)
!3866 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3853, file: !3116, line: 66, baseType: !26, size: 64, offset: 704)
!3867 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3853, file: !3116, line: 68, baseType: !3131, size: 64, offset: 768)
!3868 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3853, file: !3116, line: 70, baseType: !3869, size: 64, offset: 832)
!3869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3853, size: 64)
!3870 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3853, file: !3116, line: 72, baseType: !41, size: 32, offset: 896)
!3871 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3853, file: !3116, line: 73, baseType: !41, size: 32, offset: 928)
!3872 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3853, file: !3116, line: 74, baseType: !749, size: 64, offset: 960)
!3873 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3853, file: !3116, line: 77, baseType: !102, size: 16, offset: 1024)
!3874 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3853, file: !3116, line: 78, baseType: !3140, size: 8, offset: 1040)
!3875 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3853, file: !3116, line: 79, baseType: !3142, size: 8, offset: 1048)
!3876 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3853, file: !3116, line: 81, baseType: !3146, size: 64, offset: 1088)
!3877 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3853, file: !3116, line: 89, baseType: !3149, size: 64, offset: 1152)
!3878 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3853, file: !3116, line: 91, baseType: !3151, size: 64, offset: 1216)
!3879 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3853, file: !3116, line: 92, baseType: !3154, size: 64, offset: 1280)
!3880 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3853, file: !3116, line: 93, baseType: !3869, size: 64, offset: 1344)
!3881 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3853, file: !3116, line: 94, baseType: !25, size: 64, offset: 1408)
!3882 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3853, file: !3116, line: 95, baseType: !28, size: 64, offset: 1472)
!3883 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3853, file: !3116, line: 96, baseType: !41, size: 32, offset: 1536)
!3884 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3853, file: !3116, line: 98, baseType: !3161, size: 160, offset: 1568)
!3885 = !{!3886}
!3886 = !DILocalVariable(name: "stream", arg: 1, scope: !3847, file: !3848, line: 129, type: !3851)
!3887 = !DILocation(line: 129, column: 19, scope: !3847)
!3888 = !DILocation(line: 150, column: 14, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3847, file: !3848, line: 150, column: 7)
!3890 = !DILocation(line: 150, column: 22, scope: !3889)
!3891 = !DILocation(line: 150, column: 27, scope: !3889)
!3892 = !DILocation(line: 150, column: 7, scope: !3847)
!3893 = !DILocation(line: 151, column: 12, scope: !3889)
!3894 = !DILocation(line: 151, column: 5, scope: !3889)
!3895 = !DILocalVariable(name: "fp", arg: 1, scope: !3896, file: !3848, line: 41, type: !3851)
!3896 = distinct !DISubprogram(name: "clear_ungetc_buffer_preserving_position", scope: !3848, file: !3848, line: 41, type: !3897, isLocal: true, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !585, retainedNodes: !3899)
!3897 = !DISubroutineType(types: !3898)
!3898 = !{null, !3851}
!3899 = !{!3895}
!3900 = !DILocation(line: 41, column: 48, scope: !3896, inlinedAt: !3901)
!3901 = distinct !DILocation(line: 156, column: 3, scope: !3847)
!3902 = !DILocation(line: 43, column: 11, scope: !3903, inlinedAt: !3901)
!3903 = distinct !DILexicalBlock(scope: !3896, file: !3848, line: 43, column: 7)
!3904 = !DILocation(line: 43, column: 18, scope: !3903, inlinedAt: !3901)
!3905 = !DILocation(line: 43, column: 7, scope: !3896, inlinedAt: !3901)
!3906 = !DILocation(line: 45, column: 5, scope: !3903, inlinedAt: !3901)
!3907 = !DILocation(line: 158, column: 10, scope: !3847)
!3908 = !DILocation(line: 158, column: 3, scope: !3847)
!3909 = !DILocation(line: 0, scope: !3847)
!3910 = !DILocation(line: 232, column: 1, scope: !3847)
!3911 = distinct !DISubprogram(name: "rpl_fseeko", scope: !3912, file: !3912, line: 28, type: !3913, isLocal: false, isDefinition: true, scopeLine: 42, flags: DIFlagPrototyped, isOptimized: true, unit: !587, retainedNodes: !3950)
!3912 = !DIFile(filename: "lib/fseeko.c", directory: "/home/u/Desktop/go/src/github.com/decomp/testdata/coreutils/coreutils-8.30")
!3913 = !DISubroutineType(types: !3914)
!3914 = !{!41, !3915, !3949, !41}
!3915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3916, size: 64)
!3916 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !3114, line: 7, baseType: !3917)
!3917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !3116, line: 49, size: 1728, elements: !3918)
!3918 = !{!3919, !3920, !3921, !3922, !3923, !3924, !3925, !3926, !3927, !3928, !3929, !3930, !3931, !3932, !3934, !3935, !3936, !3937, !3938, !3939, !3940, !3941, !3942, !3943, !3944, !3945, !3946, !3947, !3948}
!3919 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !3917, file: !3116, line: 51, baseType: !41, size: 32)
!3920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !3917, file: !3116, line: 54, baseType: !26, size: 64, offset: 64)
!3921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !3917, file: !3116, line: 55, baseType: !26, size: 64, offset: 128)
!3922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !3917, file: !3116, line: 56, baseType: !26, size: 64, offset: 192)
!3923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !3917, file: !3116, line: 57, baseType: !26, size: 64, offset: 256)
!3924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !3917, file: !3116, line: 58, baseType: !26, size: 64, offset: 320)
!3925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !3917, file: !3116, line: 59, baseType: !26, size: 64, offset: 384)
!3926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !3917, file: !3116, line: 60, baseType: !26, size: 64, offset: 448)
!3927 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !3917, file: !3116, line: 61, baseType: !26, size: 64, offset: 512)
!3928 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !3917, file: !3116, line: 64, baseType: !26, size: 64, offset: 576)
!3929 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !3917, file: !3116, line: 65, baseType: !26, size: 64, offset: 640)
!3930 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !3917, file: !3116, line: 66, baseType: !26, size: 64, offset: 704)
!3931 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !3917, file: !3116, line: 68, baseType: !3131, size: 64, offset: 768)
!3932 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !3917, file: !3116, line: 70, baseType: !3933, size: 64, offset: 832)
!3933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3917, size: 64)
!3934 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !3917, file: !3116, line: 72, baseType: !41, size: 32, offset: 896)
!3935 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !3917, file: !3116, line: 73, baseType: !41, size: 32, offset: 928)
!3936 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !3917, file: !3116, line: 74, baseType: !749, size: 64, offset: 960)
!3937 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !3917, file: !3116, line: 77, baseType: !102, size: 16, offset: 1024)
!3938 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !3917, file: !3116, line: 78, baseType: !3140, size: 8, offset: 1040)
!3939 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !3917, file: !3116, line: 79, baseType: !3142, size: 8, offset: 1048)
!3940 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !3917, file: !3116, line: 81, baseType: !3146, size: 64, offset: 1088)
!3941 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !3917, file: !3116, line: 89, baseType: !3149, size: 64, offset: 1152)
!3942 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !3917, file: !3116, line: 91, baseType: !3151, size: 64, offset: 1216)
!3943 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !3917, file: !3116, line: 92, baseType: !3154, size: 64, offset: 1280)
!3944 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !3917, file: !3116, line: 93, baseType: !3933, size: 64, offset: 1344)
!3945 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !3917, file: !3116, line: 94, baseType: !25, size: 64, offset: 1408)
!3946 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !3917, file: !3116, line: 95, baseType: !28, size: 64, offset: 1472)
!3947 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !3917, file: !3116, line: 96, baseType: !41, size: 32, offset: 1536)
!3948 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !3917, file: !3116, line: 98, baseType: !3161, size: 160, offset: 1568)
!3949 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !3283, line: 63, baseType: !749)
!3950 = !{!3951, !3952, !3953, !3954}
!3951 = !DILocalVariable(name: "fp", arg: 1, scope: !3911, file: !3912, line: 28, type: !3915)
!3952 = !DILocalVariable(name: "offset", arg: 2, scope: !3911, file: !3912, line: 28, type: !3949)
!3953 = !DILocalVariable(name: "whence", arg: 3, scope: !3911, file: !3912, line: 28, type: !41)
!3954 = !DILocalVariable(name: "pos", scope: !3955, file: !3912, line: 117, type: !3949)
!3955 = distinct !DILexicalBlock(scope: !3956, file: !3912, line: 113, column: 5)
!3956 = distinct !DILexicalBlock(scope: !3911, file: !3912, line: 52, column: 7)
!3957 = !DILocation(line: 28, column: 15, scope: !3911)
!3958 = !DILocation(line: 28, column: 25, scope: !3911)
!3959 = !DILocation(line: 28, column: 37, scope: !3911)
!3960 = !DILocation(line: 52, column: 11, scope: !3956)
!3961 = !{!3712, !628, i64 16}
!3962 = !DILocation(line: 52, column: 31, scope: !3956)
!3963 = !{!3712, !628, i64 8}
!3964 = !DILocation(line: 52, column: 24, scope: !3956)
!3965 = !DILocation(line: 53, column: 7, scope: !3956)
!3966 = !DILocation(line: 53, column: 14, scope: !3956)
!3967 = !{!3712, !628, i64 40}
!3968 = !DILocation(line: 53, column: 35, scope: !3956)
!3969 = !{!3712, !628, i64 32}
!3970 = !DILocation(line: 53, column: 28, scope: !3956)
!3971 = !DILocation(line: 54, column: 7, scope: !3956)
!3972 = !DILocation(line: 54, column: 14, scope: !3956)
!3973 = !{!3712, !628, i64 72}
!3974 = !DILocation(line: 54, column: 28, scope: !3956)
!3975 = !DILocation(line: 52, column: 7, scope: !3911)
!3976 = !DILocation(line: 117, column: 26, scope: !3955)
!3977 = !DILocation(line: 117, column: 19, scope: !3955)
!3978 = !DILocation(line: 117, column: 13, scope: !3955)
!3979 = !DILocation(line: 118, column: 15, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3955, file: !3912, line: 118, column: 11)
!3981 = !DILocation(line: 118, column: 11, scope: !3955)
!3982 = !DILocation(line: 129, column: 11, scope: !3955)
!3983 = !DILocation(line: 129, column: 18, scope: !3955)
!3984 = !DILocation(line: 130, column: 11, scope: !3955)
!3985 = !DILocation(line: 130, column: 19, scope: !3955)
!3986 = !{!3712, !821, i64 144}
!3987 = !DILocation(line: 161, column: 7, scope: !3955)
!3988 = !DILocation(line: 163, column: 10, scope: !3911)
!3989 = !DILocation(line: 163, column: 3, scope: !3911)
!3990 = !DILocation(line: 0, scope: !3911)
!3991 = !DILocation(line: 164, column: 1, scope: !3911)
